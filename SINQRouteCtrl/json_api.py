
from pox.core import core
from pox.lib.revent import *
#from datetime import datetime
from threading import Thread, Timer
from pox.lib.util import dpid_to_str, str_to_dpid
from collections import defaultdict, namedtuple, OrderedDict
from pox.lib.addresses import IPAddr,EthAddr		# EthAddr() can only convert string type MAC address to EthAddr type object
from forwarding import NewFlow, getNumFlowRules
from eppsteinPaths import EppsteinShortestPathAlgorithm
from monitoring import get_monitored_linkTruputs
from datastructs import Path, Link, FlowPath, ofp_match_withHash, PriorityQueue
from datetime import datetime
from time import sleep
import pox.lib.packet as pkt
import networkx as nx
import numpy as np
import pox.openflow.libopenflow_01 as of
#import select
import socket
import sys
import json
import fcntl, os
import errno
import time
import struct
import itertools
import csv

#from numpy.ma.timer_comparison import cur
#import threading



log = core.getLogger()
API_DELAY = 1							# Response time of the controller API (socket listener sleep)

# State Variables. Not to be changed Manually-------------------------------------------------------------------------------------------------------------------------------
reroute = False							# Do NOT Change! To be changed from ResManager(over API) to enable rerouting. When rerouting is on, controller shutdown with "Ctrl+C" gives problems
topoChange = False						# Do NOT Change! This will be sent to ResManager(over API) to inform that a change has been occured in the substrate topology
ctrlStable = True						# Do NOT Change! True = STABLE, False = TRANSIENT. Unless the controller is in STABLE state, ResManager will discard information obtained over API
#---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
brknUniLinkSet = set()					# keeps broken unidirectional links temporarily until opposite link event is fired to treat once
maxEpPaths = 7							# Maximum number of alternative shortest paths that will be considered for each broken path (This number has no effect if it goes over max available paths) 
subLinkBwCap = 20						# Substrate link bandwidth capacity
qosToBw = {1:1, 2:2, 3:3, 4:4, 5:5}				# QoS class to bandwidth map. {class : bandwith-req}. QoS 1 is considered minimum and hardcoded in rerouteFlows(flowsToReroute, brknLink)
bwUnderAlloc = True						# If True, when there aren't any paths with sufficient bandwidth, highest available bandwidth path will be selected
minLatency = True						# If True, reroute will select on minimum latency path. Else minimum HOP count will be used
slrgBkups = True

bkupPathReroute = True
shotPathReroute = False
maxBkupCalcs = 5
bkupsPerFlowPath = defaultdict(lambda:defaultdict(lambda:None))	# keeps flowPathId to backup path mapping		usage: bkupsPerFlowPath[flowPathId][srcSwDpid] = pathObj
bkupsOnLink = defaultdict(lambda:defaultdict(lambda:None))	# keeps links to backup flowPaths mapping. 		usage: bkupsOnLink[linkObj][bkupPathId] = pathObj

#srlgPerFlow = defaultdict(set)					# flowPathId to Shared Risk Link Group map

flowsOnLnk = defaultdict(lambda:defaultdict(lambda:None))	# keeps links to flowPaths mapping. 			usage: flowsOnLink[linkObj][flowPathId] = flowPathObj
allocFlowIdToPath = defaultdict(set)				# keeps flowPathId to both flowPath mapping.		usage: allocFlowIdToPath[flowPathId].add(flowPath)
unAllocFlowPaths = set()
bwUnderFlowPath = {}						# keeps requested and allocated bandwidth as a tuple. 	usage: bwUnderFlowPath[flowPathId] = bwUnderTpl(req, alloc)
unAllocFlowsOnLink = defaultdict(lambda:defaultdict(lambda:None))# keeps brknLink to unallocated flowPath mapping.	usage: unAllocFlowsOnLink[brknLink][flowPathId] = brknFlowPath

switchConns = {}						# keeps switch dpid to connection object mapping.	usage: switchConns[SwDpid] = event.connection
adj = defaultdict(lambda:defaultdict(lambda:None))		# Adjacancy matrix that keeps interswitch connectivity.	usage: adj[srcSwDpid][dstSwDpid] = srcSwPort
linkDelay = {}							# Keeps links to current measured delay mapping. 	usage: linkDelay[linkObj] = linkDelay
linkAlocBw = {}							# Keeps links to allocated bandwidth mapping.		usage: linkAlocBw[linkObj] = totalAllocBw
linkCurTruput = {}						# Keeps links to current measured throughput mapping.	usage: 
epOpoPath = {}							# Temporarly holds Eppstein path to avoid recalculation for opposite direction

# Global variables used for measurements
totBwUsed = 0
totBwAvbl = 0
numPLsAvbl = 0
numVLsReq = 0





Payload = namedtuple('Payload', 'id timeSent')		#
pathTupl = namedtuple('pathTupl', 'qos nodeAry')		#
bwUnderTpl = namedtuple('bwUnderTpl', 'req alloc')

strDpidToId = {"00-00-00-00-00-01":1, "00-00-00-00-00-02":2, "00-00-00-00-00-03":3, "00-00-00-00-00-04":4, "00-00-00-00-00-05":5, "00-00-00-00-00-06":6, "00-00-00-00-00-07":7, "00-00-00-00-00-08":8, "00-00-00-00-00-09":9, "00-00-00-00-00-10":10, "00-00-00-00-00-11":11, "00-00-00-00-00-12":12, "00-00-00-00-00-13":13, "00-00-00-00-00-14":14, "00-00-00-00-00-15":15, "00-00-00-00-00-16":16, "00-00-00-00-00-17":17, "00-00-00-00-00-18":18, "00-00-00-00-00-19":19, "00-00-00-00-00-20":20}
idToStrDpid = {1:"00-00-00-00-00-01", 2:"00-00-00-00-00-02", 3:"00-00-00-00-00-03", 4:"00-00-00-00-00-04", 5:"00-00-00-00-00-05", 6:"00-00-00-00-00-06", 7:"00-00-00-00-00-07", 8:"00-00-00-00-00-08", 9:"00-00-00-00-00-09", 10:"00-00-00-00-00-10", 11:"00-00-00-00-00-11", 12:"00-00-00-00-00-12", 13:"00-00-00-00-00-13", 14:"00-00-00-00-00-14", 15:"00-00-00-00-00-15", 16:"00-00-00-00-00-16", 17:"00-00-00-00-00-17", 18:"00-00-00-00-00-18", 19:"00-00-00-00-00-19", 20:"00-00-00-00-00-20"}

def _measure_delay_ctrlChannel(dpid, swNum):				# Measure delay from control channel of each switch
	#threading.Timer(5.0, _measure_delay_ctrlChannel).start()		# to automatically run every 5 sec
	match = ofp_match_withHash()
	#match = of.ofp_match()
	match.dl_src = struct.pack("!Q", dpid)[2:] 	#convert dpid to EthAddr
	match.dl_dst = struct.pack("!Q", dpid)[2:]
	match.dl_type = pkt.ethernet.IP_TYPE
	match.nw_proto = 254 				# Use for experiment and testing
	match.nw_dst = IPAddr("224.0.1.252") 		#IANA Unassigned multicast address
	match.nw_src = IPAddr("224.0.1.253") 

	msg = of.ofp_flow_mod()
	msg.match = match
	msg.idle_timeout = 5
	msg.actions.append(of.ofp_action_output(port = of.OFPP_CONTROLLER))			# In each monitored parth, dst_switch must send the monitoring packet back to controller
	log.debug("Installing monitoring flow from switch %s to controller port", dpid_to_str(dpid))
	#print "Installing monitoring flow from switch %s to controller port" % dpid_to_str(dpid)
	switchConns[dpid].send(msg)

	ip_pck = pkt.ipv4(protocol=254, srcip = IPAddr("224.0.1.252"), dstip = IPAddr("224.0.1.253"))
	pl = Payload(swNum, time.time())
	ip_pck.set_payload(repr(pl))

	eth_packet = pkt.ethernet(type=pkt.ethernet.IP_TYPE)
	eth_packet.src = struct.pack("!Q", dpid)[2:]
	eth_packet.dst = struct.pack("!Q", dpid)[2:]
	eth_packet.set_payload(ip_pck)

	poutMsg = of.ofp_packet_out()
	poutMsg.actions.append(of.ofp_action_output(port = of.OFPP_CONTROLLER))
	poutMsg.data = eth_packet.pack()
	#print "Sending Round-trip monitoring packet from controller to switch %s " % dpid_to_str(dpid)
	switchConns[dpid].send(poutMsg)





def _measure_delay_interswitch(srcDpid, dstDpid, linkNum):					# Function that measure individual link latency values and output 
	
	# Construct match
	match = ofp_match_withHash()
	match.dl_src = struct.pack("!Q", srcDpid)[2:] 	# convert dpid to EthAddr.
	match.dl_dst = struct.pack("!Q", dstDpid)[2:] 	# EthAddr(dpid) can only convert string type MAC address to EthAddr type object
	match.dl_type = pkt.ethernet.IP_TYPE
	match.nw_proto = 254 				# Use for experiment and testing
	match.nw_dst = IPAddr("224.0.1.255") 		#IANA Unassigned multicast address
	match.nw_src = IPAddr("224.0.1.254") 
	
	# Install foward-to-control-channel rule in destination switch
	dstSwMsg = of.ofp_flow_mod()
	dstSwMsg.match = match
	dstSwMsg.idle_timeout = 10	
	dstSwMsg.actions.append(of.ofp_action_output(port = of.OFPP_CONTROLLER))# In each monitored parth, dst_switch must send the monitoring packet back to controller
	log.debug("Installing monitoring flow from switch %s to controller port", dpid_to_str(dstDpid))
	#print "Installing monitoring flow from switch %s to controller port"%dpid_to_str(dstDpid)
	switchConns[dstDpid].send(dstSwMsg)

	# Install foward-through-the-link rule in source switch
	srcSwMsg = of.ofp_flow_mod()
	srcSwMsg.match = match
	srcSwMsg.idle_timeout = 10
	log.debug("Installing monitoring flow from switch %s to switch %s output port %s", dpid_to_str(srcDpid), dpid_to_str(dstDpid), adj[srcDpid][dstDpid])
	#print "Installing monitoring flow from switch %s to switch %s output port %s"%(dpid_to_str(srcDpid), dpid_to_str(dstDpid), adj[srcDpid][dstDpid])
	srcSwMsg.actions.append(of.ofp_action_output(port = adj[srcDpid][dstDpid]))
	switchConns[srcDpid].send(srcSwMsg)
	
	# Construct delay monitoring packet
	ip_pck = pkt.ipv4(protocol=254, srcip = IPAddr("224.0.1.254"), dstip = IPAddr("224.0.1.255"))
	pl = Payload(str(linkNum), time.time())
	ip_pck.set_payload(repr(pl))	
	eth_packet = pkt.ethernet(type=pkt.ethernet.IP_TYPE) #use something that does not interfer with regular traffic
	eth_packet.src = struct.pack("!Q", srcDpid)[2:] #convert dpid to EthAddr
	eth_packet.dst = struct.pack("!Q", dstDpid)[2:]		
	eth_packet.set_payload(ip_pck)
	
	# Send the constructed delay monitoring packet to source switch via control channel
	pktOutMsg = of.ofp_packet_out()
	pktOutMsg.actions.append(of.ofp_action_output(port = adj[srcDpid][dstDpid]))
	pktOutMsg.data = eth_packet.pack()
	switchConns[srcDpid].send(pktOutMsg)
			
			

def addRemoveFlows(resManPaths, addPaths):
	global totBwUsed
	# Print paths requested by each VNP
	if addPaths: print "\tAdding VNPs"
	else: print "\tRemovint VNPs"
	for vnpId in resManPaths.keys():
		print "\n\tvnpId = %s"%vnpId,
		for pathNum in resManPaths[vnpId].keys():
			print "\n\t\tpathNum = %d\t"%pathNum,
			resManPath = resManPaths[vnpId][pathNum]
			print "\tqos = %d\t"%resManPath.qos,
			print "\tnodes =",
			for node in resManPath.nodeAry:
				print " %d"%node,
	print "\n"

	# lazy solution to the problem of not knowing MAC addresses of virtual machines created in each DC
	# When MAC addresses of VMs are available (obtained from node resource allocator), populate vmMacDict
	vmMacDict = defaultdict(lambda:defaultdict(lambda:None))
	for vnpId in resManPaths.keys():
		for pathNum in resManPaths[vnpId].keys():
			resManPath = resManPaths[vnpId][pathNum]
			
			vmMacDict[vnpId][resManPath.nodeAry[0]] = getVmMac(vnpId, resManPath.nodeAry[0])
			vmMacDict[vnpId][resManPath.nodeAry[len(resManPath.nodeAry)-1]] = getVmMac(vnpId, resManPath.nodeAry[len(resManPath.nodeAry)-1])			

	# Print VM Mac addresses requested by each VNP
	#for vnpId in vmMacDict.keys():
	#	print "\nvnpId = %s"%vnpId,
	#	for node in vmMacDict[vnpId].keys():
	#		print "\n\tnode = %d\t-->\tMAC = %s"%(node, vmMacDict[vnpId][node]),
	#print "\n"
	
	
	# Printint adjancy matrix
	#for srcDpid in adj.keys():
	#	print "From %s "%dpid_to_str(srcDpid)
	#	for dstDpid in adj[srcDpid].keys():
	#		print "\tport %d --> %s"%(adj[srcDpid][dstDpid], dpid_to_str(dstDpid))

	print "\n"

	# Installing flow rules to create paths requested by each VNP
	#vnpId = "0-16"
	#pathNum = 0
	for vnpId in resManPaths.keys():
		for pathNum in resManPaths[vnpId].keys():
			global numVLsReq
			numVLsReq = numVLsReq + 1

			resManPath = resManPaths[vnpId][pathNum]
			#allocVnpFlows[vnpId][pathNum] = resManPath				# Global Dictionary that keeps current state of 
		
	
			pathQos = resManPath.qos
			srcDc = resManPath.nodeAry[0]
			dstDc  = resManPath.nodeAry[len(resManPath.nodeAry)-1]

			srcVmMac = EthAddr(vmMacDict[vnpId][srcDc])
			dstVmMac = EthAddr(vmMacDict[vnpId][dstDc])
			srcSwDpid = str_to_dpid(idToStrDpid[srcDc])			
			secSwDpid = str_to_dpid(idToStrDpid[resManPath.nodeAry[1]])
			dstSwDpid = str_to_dpid(idToStrDpid[dstDc])
			befDstSwDpid = str_to_dpid(idToStrDpid[resManPath.nodeAry[len(resManPath.nodeAry)-2]])	# dpid of the switch before the destination switch in the path

			#srcDcMac = EthAddr(getDcMac(srcDc))
			#srcSwPort = core.opennetmon_forwarding.getPortForMac(srcDcMac, srcSwDpid)
			#dstDcMac = EthAddr(getDcMac(dstDc))
			#dstSwPort = core.opennetmon_forwarding.getPortForMac(dstDcMac, dstSwDpid)
			#print "srcSwDpid = %s, \t secSwDpid = %s"%(dpid_to_str(srcSwDpid), dpid_to_str(secSwDpid))

	
			fwFirstPort = adj[srcSwDpid][secSwDpid]	# fwFirstPort = adj[firstSw][secondSw]
			reFirstPort = adj[dstSwDpid][befDstSwDpid]
			fwMatch = ofp_match_withHash()				
			fwMatch.dl_src = srcVmMac
			fwMatch.dl_dst = dstVmMac
			reMatch = ofp_match_withHash()				
			reMatch.dl_src = dstVmMac
			reMatch.dl_dst = srcVmMac
			#print "VM MAC = %s \t connected port = %d \t of the switch = %s"%(srcVmMac, dstSwPort, dstSwDpid)

			fwPrevSwDict = {}			# Foward path dictionary ( equvilent to 'previous' in opennetmon-forwarding)
			rePrevSwDict = {}			# Reverse path dictionary
			fwPrevSwDict[srcSwDpid] = None
			rePrevSwDict[dstSwDpid] = None
			for index in range(len(resManPath.nodeAry)-1, 0, -1):
				currSwDpid = str_to_dpid(idToStrDpid[resManPath.nodeAry[index]])
				prevSwDpid = str_to_dpid(idToStrDpid[resManPath.nodeAry[index-1]])
				fwPrevSwDict[currSwDpid] = prevSwDpid
				rePrevSwDict[prevSwDpid] = currSwDpid

	
			flowPathId = vnpId+"-%d"%pathNum
			
			# --------------------------------------------------------------------- #
			# 				 Add Paths 				#
			# --------------------------------------------------------------------- #
			#changedPaths = {}			

			if(addPaths):	

				# Installing Foward flowPath
				fwPath = Path(srcSwDpid, dstSwDpid, fwPrevSwDict, fwFirstPort)
				fwFlowPath = FlowPath(fwMatch, fwPath, alocQos=pathQos, reqQos=pathQos)
				core.opennetmon_forwarding.installSinqroutePath(fwFlowPath)
				allocFlowIdToPath[flowPathId].add(fwFlowPath)
				#changedPaths[flowPathId] = fwPath
				for currSwDpid in fwPrevSwDict.keys():
					prevSwDpid = fwPrevSwDict[currSwDpid]
					if prevSwDpid is not None:
						fwLink = Link(prevSwDpid, adj[prevSwDpid][currSwDpid], currSwDpid)
						flowsOnLnk[fwLink][flowPathId] = fwFlowPath
						totBwUsed = totBwUsed + qosToBw[pathQos]
						if linkAlocBw[fwLink] is None:
							linkAlocBw[fwLink] = qosToBw[pathQos]
						else:
							linkAlocBw[fwLink] = linkAlocBw[fwLink] + qosToBw[pathQos]
						#srlgPerFlow[flowPathId].add(fwLink)
						 

				# Installing Reverse flowPath
				rePath = Path(dstSwDpid, srcSwDpid, rePrevSwDict, reFirstPort)
				reFlowPath = FlowPath(reMatch, rePath, alocQos=pathQos, reqQos=pathQos)
				core.opennetmon_forwarding.installSinqroutePath(reFlowPath)
				allocFlowIdToPath[flowPathId].add(reFlowPath)
				for currSwDpid in rePrevSwDict.keys():
					prevSwDpid = rePrevSwDict[currSwDpid]
					if prevSwDpid is not None:
						reLink = Link(prevSwDpid, adj[prevSwDpid][currSwDpid], currSwDpid)
						flowsOnLnk[reLink][flowPathId] = reFlowPath
						totBwUsed = totBwUsed + qosToBw[pathQos]
						if linkAlocBw[reLink] is None:
							linkAlocBw[reLink] = qosToBw[pathQos]
						else:
							linkAlocBw[reLink] = linkAlocBw[reLink] + qosToBw[pathQos]
						#srlgPerFlow[flowPathId].add(fwLink)

				
				
			# --------------------------------------------------------------------- #
			# 				 Remove Paths 				#
			# --------------------------------------------------------------------- #
			else:	
				# Removing Foward flowPath
				fwPath = Path(srcSwDpid, dstSwDpid, fwPrevSwDict, fwFirstPort)
				fwFlowPath = FlowPath(fwMatch, fwPath, alocQos=pathQos, reqQos=pathQos)
				core.opennetmon_forwarding.deleteSinqroutePath(fwFlowPath)
				allocFlowIdToPath[flowPathId].remove(fwFlowPath)

				for currSwDpid in fwPrevSwDict.keys():
					prevSwDpid = fwPrevSwDict[currSwDpid]
					if prevSwDpid is not None:
						fwLink = Link(prevSwDpid, adj[prevSwDpid][currSwDpid], currSwDpid)
						del flowsOnLnk[fwLink][flowPathId]	# Remove fwFlowPath from flowsOnLnk datastructure
						
						totBwUsed = totBwUsed - qosToBw[pathQos]
						linkAlocBw[fwLink] = linkAlocBw[fwLink] - qosToBw[pathQos]

				# Removing Reverse flowPath
				rePath = Path(dstSwDpid, srcSwDpid, rePrevSwDict, reFirstPort)
				reFlowPath = FlowPath(reMatch, rePath, alocQos=pathQos, reqQos=pathQos)
				core.opennetmon_forwarding.deleteSinqroutePath(reFlowPath)
				allocFlowIdToPath[flowPathId].remove(reFlowPath)
				del allocFlowIdToPath[flowPathId]	# Delete flowPathId from allocFlowIdToPath[] once both paths removed
				for currSwDpid in rePrevSwDict.keys():
					prevSwDpid = rePrevSwDict[currSwDpid]
					if prevSwDpid is not None:
						reLink = Link(prevSwDpid, adj[prevSwDpid][currSwDpid], currSwDpid)
						del flowsOnLnk[reLink][flowPathId]		# Remove reFlowPath from flowsOnLnk datastructure
						totBwUsed = totBwUsed - qosToBw[pathQos]
						linkAlocBw[reLink] = linkAlocBw[reLink] - qosToBw[pathQos]

			
				
	resultDict = {}
	resultDict["mesurPoint"] = "addRemoveFlows"
	saveMeasurements(resultDict)
	for link in flowsOnLnk.keys():
		print "\tFlowPathIds on %s : %d -> %s = "%(dpid_to_str(link.ssw), link.sp, dpid_to_str(link.dsw)),
		for flowPathId in flowsOnLnk[link].keys():
			print "\t%s"%flowPathId,
			#print "\t FlowPathId = %s \t path =  %s \t qos =  %s"%(flowPathId, flowsOnLnk[link][flowPathId].path, flowsOnLnk[link][flowPathId].qos)
		print


	

def addRemoveBkups(addedPathDict, rmvdPathDict):
	if rmvdPathDict is not None:
		for vnpId in rmvdPathDict.keys():
			for pathNum in rmvdPathDict[vnpId].keys():
				bkupPathId = vnpId+"-%d"%pathNum
				for srcDpid in bkupsPerFlowPath[bkupPathId].keys():
					pathObj = bkupsPerFlowPath[bkupPathId][srcDpid]
					linkList = pathObj.get_linkList(adj)
					for linkObj in linkList:
						del bkupsOnLink[linkObj][bkupPathId]
				del bkupsPerFlowPath[bkupPathId]
	
	numNoNetPath = 0
	meanRiskPcenPerVnptList = []
	stdivRiskPcenPerVnptList = []
	if addedPathDict is not None:
		
		for vnpId in addedPathDict.keys():
			riskPcntList = []
			for pathNum in addedPathDict[vnpId].keys():

				flowPathId = vnpId+"-%d"%pathNum	# Equivalent to flowPathId. But stored in Bkup datastructures
				
				# Populating addedLinkSet, which is intersected with shortest path link set to find path with minimum number of shared links
				adedBiDiPath = addedPathDict[vnpId][pathNum]
				srcSwDpid = str_to_dpid(idToStrDpid[adedBiDiPath.nodeAry[0]])
				secSwDpid = str_to_dpid(idToStrDpid[adedBiDiPath.nodeAry[1]])
				dstSwDpid = str_to_dpid(idToStrDpid[adedBiDiPath.nodeAry[len(adedBiDiPath.nodeAry)-1]])
				adedPrvSwDict = {}
				adedPrvSwDict[srcSwDpid] = None
				for index in range(len(adedBiDiPath.nodeAry)-1, 0, -1):
					currSwDpid = str_to_dpid(idToStrDpid[adedBiDiPath.nodeAry[index]])
					prevSwDpid = str_to_dpid(idToStrDpid[adedBiDiPath.nodeAry[index-1]])
					adedPrvSwDict[currSwDpid] = prevSwDpid
					
				#print "\n\tsrcSwDpid = %s"%dpid_to_str(srcSwDpid)
				#print "\tdstSwDpid = %s"%dpid_to_str(dstSwDpid)
				#print adedPrvSwDict
				#for curSwDpid in adedPrvSwDict.keys():
				#	print "\t\tprev[%s] = %s"%(dpid_to_str(curSwDpid), dpid_to_str(adedPrvSwDict[curSwDpid]))
				
				adedPathObj = Path(srcSwDpid, dstSwDpid, adedPrvSwDict, adj[srcSwDpid][secSwDpid])
				graph = createTopologyGraph()
				noNetPath, minSrlgPcnt = calcBiDiBkups(graph, flowPathId, adedPathObj)
				numNoNetPath += noNetPath
				riskPcntList.append(minSrlgPcnt)
			
			meanRiskPcenPerVnptList.append(np.mean(riskPcntList))
			stdivRiskPcenPerVnptList.append(np.std(riskPcntList))
	
	
	resultDict = {}
	resultDict["mesurPoint"] = "addRemoveFlows"
	resultDict["numNoNetPath"] = numNoNetPath
	resultDict["meanRiskPcenPerVnptList"] = meanRiskPcenPerVnptList
	resultDict["stdivRiskPcenPerVnptList"] = stdivRiskPcenPerVnptList
	saveMeasurements(resultDict)
	
	
def calcBiDiBkups(graph, flowPathId, pathObj):
	
	noNetPath = 0
	
	srcSwDpidStr = dpid_to_str(pathObj.src)
	dstSwDpidStr = dpid_to_str(pathObj.dst)
	adedLinkSet = set(pathObj.get_linkList(adj))
	
	
	graph.add_edge('s', srcSwDpidStr, weight=0)
	graph.add_edge(dstSwDpidStr, 't', weight=0)
	e=EppsteinShortestPathAlgorithm(graph)
	e._pre_process()
	
	bestBkupPath = None
	minSrlgPcnt = 200
	
	if slrgBkups:
		# For each epPath find the number of common links with allocated path.
		numBkup=0
		bkupPQ = PriorityQueue(maxQ=False)
		print "\tCalculating Backup paths from  %s\t%s"%(srcSwDpidStr, dstSwDpidStr)
		for cost, epPath in e.get_successive_shortest_paths():
			numBkup+=1
			if numBkup==maxBkupCalcs:
				break
			epLinkSet = set()
			for pre, cur in epPath:						
				if pre is not 's' and cur is not 't':
					epLink = Link(str_to_dpid(pre), adj[str_to_dpid(pre)][str_to_dpid(cur)], str_to_dpid(cur))
					epLinkSet.add(epLink)
			
			numShrdLinks = len(epLinkSet.intersection(adedLinkSet))		# shared links in allocated and backup paths will be minimized
			srlgPcnt = (numShrdLinks * 100)/float(len(adedLinkSet))
			#print "\t",srlgPcnt,"\t",epPath
			bkupPQ.push(srlgPcnt, epPath)
		
		graph.remove_edge('s', srcSwDpidStr)
		graph.remove_edge(dstSwDpidStr, 't')
		
		
		# Get the Eppstein shortest path with minimum intersection percentage with shared risk links
		minSrlgPcnt, bestBkupPath = bkupPQ.pop()
	
	else:
		for cost, epPath in e.get_successive_shortest_paths():
			numBkup+=1
			if numBkup==1:
				break
			bestBkupPath = epPath
	
	if len(bestBkupPath) != 0:
		print "\tSelected Path %.2f  "%minSrlgPcnt, bestBkupPath
		fwFstSw, fwSecSw = bestBkupPath[1]
		reFstSw, reSecSw = bestBkupPath[-2]
		#print "\tfwFstSw = %s \t fwSecSw = %s"%(fwFstSw,fwSecSw)
		#print "\treFstSw = %s \t reSecSw = %s"%(reFstSw,reSecSw)			
		fwFirstPort = adj[str_to_dpid(fwFstSw)][str_to_dpid(fwSecSw)]
		reFirstPort = adj[str_to_dpid(reFstSw)][str_to_dpid(reSecSw)]
	
		fwPrevSwDict = {}
		rePrevSwDict = {}
		fwPrevSwDict[pathObj.src] = None
		rePrevSwDict[pathObj.dst] = None
	
		for pre, cur in bestBkupPath:						
			if pre is not 's' and cur is not 't':
				fwPrevSwDict[str_to_dpid(cur)] = str_to_dpid(pre)
				rePrevSwDict[str_to_dpid(pre)] = str_to_dpid(cur)
	
		fwPath = Path(pathObj.src, pathObj.dst, fwPrevSwDict, fwFirstPort)
		rePath = Path(pathObj.dst, pathObj.src, rePrevSwDict, reFirstPort)
		bkupsPerFlowPath[flowPathId][pathObj.src] = fwPath
		bkupsPerFlowPath[flowPathId][pathObj.dst] = rePath
	
		# Associating calculated backup paths with links. If a link failed, broken backups must be recalculated
		for currSwDpid in fwPrevSwDict.keys():
			prevSwDpid = fwPrevSwDict[currSwDpid]
			if prevSwDpid is not None:
				fwLink = Link(prevSwDpid, adj[prevSwDpid][currSwDpid], currSwDpid)
				bkupsOnLink[fwLink][flowPathId] = fwPath
				
	
		for currSwDpid in rePrevSwDict.keys():
			prevSwDpid = rePrevSwDict[currSwDpid]
			if prevSwDpid is not None:
				reLink = Link(prevSwDpid, adj[prevSwDpid][currSwDpid], currSwDpid)
				bkupsOnLink[reLink][flowPathId] = rePath
			
	else:
		print "Unable to find a path for %s from %s to %s"%(flowPathId, srcSwDpidStr, dstSwDpidStr)
		noNetPath =1
		
	return noNetPath, minSrlgPcnt




def createTopologyGraph():
	graph = nx.DiGraph() # Directed Graph
	graph.add_node('s', name = "source", index= 's')
	graph.add_node('t', name = "destination",index='t')
	
	for dpid in switchConns.keys():
		strDpid = dpid_to_str(dpid)
		graph.add_node(strDpid, name=strDpid, index=strDpid)
	edges = []
	for linkObj in linkDelay.keys():
		src = dpid_to_str(linkObj.ssw)
		dst = dpid_to_str(linkObj.dsw)
		if minLatency: edges.append((src, dst, linkDelay[linkObj]))
		else: edges.append((src, dst, 1))
	graph.add_weighted_edges_from(edges)
	return graph


def delBrknFlows(brknLink):
	brknFlows = {}
	if len(flowsOnLnk[brknLink].keys())>0: 		# If atleast one flow was available in the broken link
		# Populating brknFlows dictionary
		print "\tFlows in %s that are to be deleted :"%brknLink,
		for flowPathId in flowsOnLnk[brknLink].keys():
			print "\t %s"%flowPathId,
			brknFlows[flowPathId] = flowsOnLnk[brknLink][flowPathId]
		print ""
		for flowPathId in brknFlows.keys():
			brknFlowPath = brknFlows[flowPathId]
			brknQos = brknFlowPath.alocQos
			brknPath = brknFlowPath.path
			
			# Delete flow-rules from switches in the brknFlowPath
			print "\tDeleting %s"%flowPathId
			core.opennetmon_forwarding.deleteSinqroutePath(brknFlowPath)
			if flowPathId in allocFlowIdToPath.keys():
				del allocFlowIdToPath[flowPathId]
			# Delete flow from all substrate links of flowsOnLnk datastructure and Freeing qos in other good links in the broken path
			del flowsOnLnk[brknLink][flowPathId]
			for curSw in brknPath.prev.keys():
				preSw = brknPath.prev[curSw]
				if preSw is not None:
					if adj[preSw][curSw] is not None:	# deleting flows from good links in the broken path (broken link is alredy deleted from adj).
						linkInBrknPath = Link(preSw, adj[preSw][curSw], curSw)
						del flowsOnLnk[linkInBrknPath][flowPathId] 
						global totBwUsed
						totBwUsed = totBwUsed - qosToBw[brknQos]
						linkAlocBw[linkInBrknPath] = linkAlocBw[linkInBrknPath] - qosToBw[brknQos]
	return brknFlows


def delBrknBkups(brknLink):
	brknBkups = {}
	if len(bkupsOnLink[brknLink].keys())>0: 		# If atleast one bkup was available in the broken link
		# Populating brknBkups dictionary
		print "\tBackups in %s that are to be deleted :"%brknLink,
		for bkupPathId in bkupsOnLink[brknLink].keys():
			print "\t %s"%bkupPathId,
			brknBkups[bkupPathId] = bkupsOnLink[brknLink][bkupPathId]
		print ""

		#print "\tbkupPathIds to delete"
		for bkupPathId in brknBkups.keys():
			#print "\t\t",bkupPathId
			brknBkup = brknBkups[bkupPathId]
			# Delete bkups from bkupsPerFlowPath data-structure
			if bkupPathId in bkupsPerFlowPath.keys():
				del bkupsPerFlowPath[bkupPathId]
			
			# Delete bkups from all substrate links of bkupsOnLink datastructure
			del bkupsOnLink[brknLink][bkupPathId]
			for curSw in brknBkup.prev.keys():
				preSw = brknBkup.prev[curSw]
				if preSw is not None:
					if adj[preSw][curSw] is not None:	# deleting bkups from good links in the broken path
						linkInBrknBkup = Link(preSw, adj[preSw][curSw], curSw)
						if bkupPathId in bkupsOnLink[linkInBrknBkup].keys():
							del bkupsOnLink[linkInBrknBkup][bkupPathId] 
						
	return brknBkups

#-------------------------------------- Measured Throughput code --------------------------------------- 
# linkCurTruput = get_monitored_linkTruputs()
# monitored_truput = linkCurTruput[brknLink]

# linkCurTruput dictionary contains instantaneous throughput values of links used by measured flows
# We can use monitored throughput data of affected flows and other flows of the network to temporarly reroute new replacement flows.
# However, this technique might trigger more reroutes if throughput variation is high in the network
# For this work, we use static allocated bandwith values to select least latency paths with sufficient bandwidth
#-------------------------------------- Measured Throughput code --------------------------------------- 

def rerouteFlows(flowsToReroute, brknLink, remEvnt):
		
	graph = createTopologyGraph()		
	# Calculating new flowPaths for deleted FlowPaths and verifying sufficient bandwidth is available
	for flowPathId in flowsToReroute.keys():
		print "\tRerouting %s"%flowPathId
		brknFlowPath =flowsToReroute[flowPathId]
		brknMatch = brknFlowPath.match
		curQos = brknFlowPath.alocQos
		brknPath = brknFlowPath.path

		#--------------------------------------------------------------------------------------------------------
		# Each substrate link failure will generate two unidirectional link remove events. 
		# Eppstein shortest paths are calculated only once and opposite path is stored in epOpoPath dictionary
		#--------------------------------------------------------------------------------------------------------
		epPrevSwDict = {}
		#reqQos = qosToBw[brknQos]
		reqQos = brknFlowPath.reqQos
		print "\tKeys in epOpoPath = ",
		for flowPath in epOpoPath.keys():
			print flowPath,"\t",
		print ""
		if flowPathId not in epOpoPath.keys():	# Eppstein paths has NOT been calculated previously.
			print "\tflowPathId %s not in epOpoPath.keys()"%flowPathId
			srcSwDpidStr = dpid_to_str(brknPath.src)
			dstSwDpidStr = dpid_to_str(brknPath.dst)
			graph.add_edge('s', srcSwDpidStr, weight=0)
			graph.add_edge(dstSwDpidStr, 't', weight=0)
	
			e=EppsteinShortestPathAlgorithm(graph)
			e._pre_process()
			counter=0
			
			epOpoPrevSwDict = {}
			#print "\tsrcSwDpidStr = %s"%srcSwDpidStr
			#print "\tdstSwDpidStr = %s"%dstSwDpidStr
			epPrevSwDict.clear()
			epPrevSwDict[brknPath.src] = None
			epOpoPrevSwDict[brknPath.dst] = None

			bwPQ = PriorityQueue(maxQ=True)

			for cost, epPath in e.get_successive_shortest_paths():			# outputs minimum path cost first (Can be latency or hop count)
				# maximum number of alternative paths to check
				counter+=1
				if counter==maxEpPaths:
					break
				# checking for sufficient bandwidth
				suficntBw = False
				#print "Check bandwith in path = ",epPath
				epPathBw = subLinkBwCap						# epPathBw is the min(available linkBw)

				
				for pre, cur in epPath:						# Finding path-bandwidth for each EpPath
					if pre is not 's' and cur is not 't':
						ptnlEmbLink = Link(str_to_dpid(pre), adj[str_to_dpid(pre)][str_to_dpid(cur)], str_to_dpid(cur)) # Potential Embedding Link
						linkAvlblBw = subLinkBwCap - linkAlocBw[ptnlEmbLink]
						if epPathBw > linkAvlblBw:
							epPathBw = linkAvlblBw

			
				if epPathBw >= reqQos:					# path has sufficient bandwidth. Create prevDict
					for pre, cur in epPath:
						if pre is not 's' and cur is not 't':
							epPrevSwDict[str_to_dpid(cur)] = str_to_dpid(pre)
							epOpoPrevSwDict[str_to_dpid(pre)] = str_to_dpid(cur)
					suficntBw = True
					print "\tSufficient BW:",
					print epPath,
					print "\tAvlbl = %d, Req = %d"%(epPathBw, reqQos)
					epOpoPath[flowPathId] = epOpoPrevSwDict			# Include opposit path in epOpoPath
					break							# We dont need other paths when sufficient bandwith path found
				elif epPathBw <1:
					print "\tPath: ",epPath," has NO BW available"
				else:
					print "\tInsufficient BW:",
					print epPath, 
					print "\tAvlbl = %d, Req = %d"%(epPathBw, reqQos)
					bwPQ.push(epPathBw, epPath)	# if bwUnderAlloc is True: path with max available bandwidth will be selected 

			graph.remove_edge('s', srcSwDpidStr)
			graph.remove_edge(dstSwDpidStr, 't')

			if not suficntBw:
				print "\tNone of the paths has sufficient bandwidth"
				if bwUnderAlloc and len(bwPQ)>0:
					print "\tProceeding with bandwidth under-allocation"
					bestEpPathBw, bestEpPath = bwPQ.pop()# HeapQ will pop max bw path first. If two paths have same bw, pop will be on inserted order (hence min latency)
					for pre, cur in bestEpPath:
						if pre is not 's' and cur is not 't':
							#print"%s:%s"%(cur, pre),
							epPrevSwDict[str_to_dpid(cur)] = str_to_dpid(pre)
							epOpoPrevSwDict[str_to_dpid(pre)] = str_to_dpid(cur)
					epOpoPath[flowPathId] = epOpoPrevSwDict
				
					
					bwUnderFlowPath[flowPathId] = bwUnderTpl(req=reqQos, alloc=bestEpPathBw)
					curQos = bestEpPathBw
				else:
					epOpoPath[flowPathId] = None

		elif epOpoPath[flowPathId] is None:	# Eppstein paths has been previously calculated. But was unable to find one with sufficient bandwidth
			print "\tepOpoPath[%s] is \tNone"%flowPathId
			del epOpoPath[flowPathId]
			epPrevSwDict.clear()
			
		else:					# Pre-calculated Eppstein path is available for the opposite direction. Using its opposite
			print "\tepOpoPath[%s] is available"%flowPathId
			epPrevSwDict = epOpoPath[flowPathId]
			del epOpoPath[flowPathId]
		
		
	
		# Creating new Eppstein path object from selected shortest path
		if len(epPrevSwDict) >1:	# If shortest path is discovered with sufficient bandwidth, epPrevSwDict must have more than one value

			# Finding second switch of the new path to obtain srcPort
			secSwDpid = None
			for currSwDpid in epPrevSwDict.keys():
				prevSwDpid = epPrevSwDict[currSwDpid]
				if epPrevSwDict[currSwDpid] is brknPath.src:
					secSwDpid = currSwDpid
	
			newEpPath = Path(brknPath.src, brknPath.dst, epPrevSwDict, adj[brknPath.src][secSwDpid])
			log.debug( "\tsrc = %s"%dpid_to_str(brknPath.src))
			log.debug("\tdst = %s"%dpid_to_str(brknPath.dst))

			# Installing flow-rules in switches for new Eppstein path
			newFlowPath = FlowPath(brknMatch, newEpPath, alocQos=curQos, reqQos=reqQos)
			print"\tInstalling flowPath ",flowPathId
			core.opennetmon_forwarding.installSinqroutePath(newFlowPath)
			allocFlowIdToPath[flowPathId].add(newFlowPath)
			#if flowPathId in unAllocFlowsOnLink[brknLink].keys():
			#	del unAllocFlowsOnLink[brknLink][flowPathId]
		
			# Adding new path to flowsOnLnk and adding used bandwidth to linkAlocBw
			for currSwDpid in epPrevSwDict.keys():
				prevSwDpid = epPrevSwDict[currSwDpid]
			
				if prevSwDpid is not None:
					epPathLink = Link(prevSwDpid, adj[prevSwDpid][currSwDpid], currSwDpid)
					flowsOnLnk[epPathLink][flowPathId] = newFlowPath
					print "\tepPathLink: ",epPathLink
					global totBwUsed
					totBwUsed = totBwUsed + reqQos
					if linkAlocBw[epPathLink] is None:
						linkAlocBw[epPathLink] = reqQos
					else:
						linkAlocBw[epPathLink] = linkAlocBw[epPathLink] + reqQos
		
		
		else:
			print"\t---Unable to find Eppstein shortest path for %s"%flowPathId
			unAllocFlowPaths.add(flowPathId)
			#epOpoPath[flowPathId] = None
			print "\t---Adding %s to unAllocFlowsOnLink"%flowPathId
			unAllocFlowsOnLink[brknLink][flowPathId] = brknFlowPath
	
	
		
			
			
		#for linkObj in linkTruputs.keys():
		#	print "Throughput of link from "+dpid_to_str(linkObj.ssw)+" to "+dpid_to_str(linkObj.dsw)+" \t= "+str(linkTruputs[linkObj])

	

def installBkup(flowsToInstlBkups, brknLink, remEvnt=True):
	instldBkups = {}
	numZeroBkupBw = numNoBkupPath = numBwUnderBkup = amtBwUnderBkup = 0
	for flowPathId in flowsToInstlBkups.keys():
		print "\tInstalling Backups for %s"%flowPathId
		brknFlowPath =flowsToInstlBkups[flowPathId]
		brknMatch = brknFlowPath.match
		brknAlocBw = brknFlowPath.alocQos
		brknReqBw = brknFlowPath.reqQos
		brknPath = brknFlowPath.path
		#bkupPath = None
		
		if flowPathId in bkupsPerFlowPath.keys():
			print "\tBackup path found for %s"%flowPathId
			for linkSrc in bkupsPerFlowPath[flowPathId]:
				print "\t\tlinkSrc =",dpid_to_str(linkSrc),"\t",bkupsPerFlowPath[flowPathId][linkSrc]
			bkupPath = bkupsPerFlowPath[flowPathId][brknPath.src]
			bkupPathLinks = bkupPath.get_linkList(adj)
			print "bkupPathLinks = ",bkupPathLinks
			# Finding path bandwidth
			newPathBw = subLinkBwCap
			
			listEmpty = True
			for linkObj in bkupPathLinks:
				listEmpty = False
				linkBw = subLinkBwCap - linkAlocBw[linkObj]
				if newPathBw > linkBw:
					newPathBw = linkBw
			alocBw = 0
			if not listEmpty and newPathBw>0:
				if newPathBw >= brknReqBw:
					alocBw = brknReqBw
					if flowPathId in bwUnderFlowPath.keys():
						del bwUnderFlowPath[flowPathId]
			
				else:
					alocBw = newPathBw
					bwUnderFlowPath[flowPathId] = bwUnderTpl(req=brknReqBw, alloc=alocBw)
					numBwUnderBkup +=1
					amtBwUnderBkup += (brknReqBw-alocBw) 
	
				# Installing flow-rules in switches for backup path
				newFlowPath = FlowPath(brknMatch, bkupPath, alocQos=alocBw, reqQos=brknReqBw)
				print"\tInstalling Backup flowPath ",flowPathId
				core.opennetmon_forwarding.installSinqroutePath(newFlowPath)
				allocFlowIdToPath[flowPathId].add(newFlowPath)
	
				# Adding new path to flowsOnLnk and adding used bandwidth to linkAlocBw
				for bkupLink in bkupPathLinks:
					
					flowsOnLnk[bkupLink][flowPathId] = newFlowPath
					print "\tbkupPathLink: ",bkupLink
					global totBwUsed
					totBwUsed = totBwUsed + alocBw
					if linkAlocBw[bkupLink] is None:
						linkAlocBw[bkupLink] = alocBw
					else:
						linkAlocBw[bkupLink] = linkAlocBw[bkupLink] + alocBw
						
				instldBkups[flowPathId] = bkupPath	
					
			else:
				numZeroBkupBw +=1
				print "\tZero BW in backup path. Not allocated"
				unAllocFlowPaths.add(flowPathId)
				print "\t---Adding %s to unAllocFlowsOnLink"%flowPathId
				unAllocFlowsOnLink[brknLink][flowPathId] = brknFlowPath

		else:
			numNoBkupPath +=1
			print "\tUnable to find backup path"
			unAllocFlowPaths.add(flowPathId)
			print "\t---Adding %s to unAllocFlowsOnLink"%flowPathId
			unAllocFlowsOnLink[brknLink][flowPathId] = brknFlowPath
	return instldBkups, numZeroBkupBw, numNoBkupPath, numBwUnderBkup, amtBwUnderBkup
				

#------------------------------------------------------------------------------------------------------------------------------------------------------ #
#						dcMac and vmMac (Emulating VMs created for each request)						#
#						""""""""""""""""""""""""""""""""""""""""""""""""""""""""						#
# When creating flow rules for each path from a srcVm to a dstVm, dl_src and dl_dst fields are used to match packets and actions specifies to which 	#
# output port to be forwarded. 																#
# In the Experimantal implementation, each datacenter has one provider edge openflow switch (dcSwitch) and one mininet host (dcHost).    		#
# The inter-DC network is composed of these dcSwitches. 												#
# 																			#
# Its important to have unique MAC addresses for each VM, since it will allow POX controller to create unique QoS-flows for each virtual path.		#
# However in the implementation, each dcHost has one MAC address (dcMac). 										#
# Thus we have to emulate multiple VMs reside in that DC, such that each VM has their own MAC addresses.						#
# We use 'PackEth' packet generator in each dcHost to generate ethernet frames with MAC addresses that emulate communication between different VMs.	#
#																			#
# Thus, when matching packets, each flow rule pair that constitutes a bidirectional path between two VMs will consider srcVmMac and dstVmMac.		#
# But when forwarding from the last switch in a path to corresponding VM, we determine output port using dcMac.						#
#------------------------------------------------------------------------------------------------------------------------------------------------------ #
def getDcMac(dcNodeId):			
	if dcNodeId<10: 
		return "00:0%d:00:00:00:00"%dcNodeId
	else:
		return "00:%d:00:00:00:00"%dcNodeId	

def opoLink(linkObj):
		o_ssw = linkObj.dsw
		o_dsw = linkObj.ssw
		o_sp = adj[o_ssw][o_dsw]
		return Link(ssw=o_ssw, sp=o_sp, dsw=o_dsw)
	

def getVmMac(vnpId, dcNodeId):			# This function is a dirty fix to use instead of having actual VM MAC address list belong to each VNP
	#timeVnp = vnpId.strip().split("-")
	vnpIdSplit = [int(x) for x in vnpId.split("-")]
	strDcNode = ""
	if dcNodeId<10: 
		strDcNode = "0%d"%dcNodeId
	else:
		strDcNode = "%d"%dcNodeId
	strTSlot = ""
	if vnpIdSplit[0]<10: 
		strTSlot = "0%d"%vnpIdSplit[0]
	else:
		strTSlot = "%d"%vnpIdSplit[0]
	strVnpId = ""
	if vnpIdSplit[1]<10: 
		strVnpId = "0%d"%vnpIdSplit[1]
	else:
		strVnpId = "%d"%vnpIdSplit[1]

	vmMac = "00:%s:00:00:%s:%s"%(strDcNode, strTSlot, strVnpId)

	if vnpId == "0-10":
		vmMac = "00:%s:00:00:00:00"%strDcNode
		print "vnp 0-10 vm Mac addresses are set to DC MACs for testing"
	return vmMac




def _update_delay_oneLink(adj, link): 
	print "Updating single link"

def saveMeasurements(resultDict):
	#global totBwUsed, totBwAvbl, numPLsAvbl, numVLsReq
	numPLsUsed = len(flowsOnLnk.keys())
	numVLsAloc = len(allocFlowIdToPath.keys())
	numVLsUnAloc = len(unAllocFlowPaths)
	numVLsUdrAloc = len(bwUnderFlowPath.keys())
	sumUdrAlocDifr = 0
	pcntBwUdrList = []
	for floPth in bwUnderFlowPath.keys():
		req = bwUnderFlowPath[floPth].req
		alloc = bwUnderFlowPath[floPth].alloc
		dif = req - alloc
		pcntBwUnder = (dif*100)/float(req)
		pcntBwUdrList.append(pcntBwUnder)
		sumUdrAlocDifr = sumUdrAlocDifr + dif

	numFlowRules = getNumFlowRules()

	meanBwUdrPcnt = np.mean(pcntBwUdrList)
	stDivBwUdrPcnt = np.std(pcntBwUdrList)
	
	#dataFile.write("\nreroute\t%r\n"%reroute)
	#dataFile.write("bkup\t%r\n"%bkupPathReroute)
	#dataFile.write("shortest\t%r\n"%shotPathReroute)
	#dataFile.write("bwUnderAlloc\t%r\n"%bwUnderAlloc)
	#dataFile.write("mesurPoint\t%s\n"%mesurPoint)
	#dataFile.write("numPLsAvbl\t%d\n"%numPLsAvbl)
	#dataFile.write("numPLsUsed\t%d\n"%numPLsUsed)								

	#dataFile.write("totBwAvbl\t%d\n"%totBwAvbl)								# bwUtilzn
	#dataFile.write("totBwUsed\t%d\n"%totBwUsed)								# bwUtilzn

	#dataFile.write("numVLsReq\t%d\n"%numVLsReq)								# vLBlokinRatio, pcntOfVLsUdrAloc
	#dataFile.write("numVLsAloc\t%d\n"%numVLsAloc)
	#dataFile.write("numVLsUnAloc\t%d\n"%numVLsUnAloc)							# vLBlokinRatio
	#dataFile.write("numVLsUdrAloc\t%d\n"%numVLsUdrAloc)						# pcntOfVLsUdrAloc
	#dataFile.write("sumUdrAlocDifr\t%d\n"%sumUdrAlocDifr)						# aveUdrAlocBw
	
	# Graph results
	
	#dataFile.write("numFlowRules\t%d\n"%numFlowRules)
	pathAllocTime = 0
	if "pathAllocTime" in resultDict.keys():
		pathAllocTime = resultDict["pathAllocTime"]
		
	pathCmputTime = 0
	if "pathCmputTime" in resultDict.keys():
		pathCmputTime = resultDict["pathCmputTime"]
	
	#bwUtilzn = 0
	#if totBwAvbl>0:
	bwUtilzn = (totBwUsed*100)/float(totBwAvbl)
	#dataFile.write("bwUtilzn\t%.2f\n"%bwUtilzn)								# Bandwidth utilization
	#TODO: calculate vLBlokinRatio	
	vLBlokinRatio = numVLsUnAloc/float(numVLsReq)
	#bwUnderLinkPcnt = 0
	#if numVLsReq>0:
	bwUnderLinkPcnt = (numVLsUdrAloc*100)/float(numVLsAloc)
	#	dataFile.write("bwUnderLinkPcnt\t%.2f\n"%bwUnderLinkPcnt)				# Percentage of virtual links with bandwidth under allocation
	aveUdrAlocBw = 0
	if numVLsUdrAloc>0:
		aveUdrAlocBw = sumUdrAlocDifr/float(numVLsUdrAloc)
	#dataFile.write("aveUdrAlocBw\t%.2f\n"%aveUdrAlocBw)						# Mean under allocated bandwidth


	dataFile = open("ext/results/measurements.csv", "a")
	dataFile.write("\n%d,%.2f,%.2f,%.2f,%.2f,%.2f,%d,%.4f,%.4f"%(numPLsAvbl,bwUtilzn,vLBlokinRatio,bwUnderLinkPcnt,meanBwUdrPcnt,stDivBwUdrPcnt,numFlowRules,pathAllocTime,pathCmputTime))
	dataFile.close()	
		





class ResManIntfs(EventMixin):

	def __init__ (self):
		self.pktNum = 0
		#self.swNum = 0
		#self.linkEventSet = set()
		self.bkupsToRecalc = {}
		
		dataFile = open("ext/results/measurements.csv", "a")
		dataFile.write("\nreroute\t%r\n"%reroute)
		dataFile.write("bkup\t%r\n"%bkupPathReroute)
		dataFile.write("slrgBkups\t%r\n"%slrgBkups)
		dataFile.write("shortest\t%r\n"%shotPathReroute)
		dataFile.write("bwUnderAlloc\t%r\n"%bwUnderAlloc)
		dataFile.write("numPLsAvbl,bwUtilzn,vLBlokinRatio,bwUnderLinkPcnt,meanBwUdrPcnt,stDivBwUdrPcnt,numFlowRules,pathAllocTime,pathCmputTime")
		dataFile.close()
		
		def startup():
			core.openflow.addListeners(self)
			core.openflow_discovery.addListeners(self)
	
		def apiThread():
			log.debug("json_api started")
			resManListnerTrd = Timer(5, self.resManListner)		# create thread with a timer
			resManListnerTrd.setDaemon(True)
			resManListnerTrd.start()

		core.call_when_ready(startup, ('openflow','openflow_discovery'))
		core.call_when_ready(apiThread, ('opennetmon_monitoring'))		# Start API listner in a seperate thread
		


	def _handle_ConnectionUp (self, event):
		#self.swNum+=1
		switchConns[event.dpid] = event.connection
		#_measure_delay_ctrlChannel(self.swNum, event.dpid)
		
		#swDpid = dpid_to_str(event.dpid)
		#global numSw
		#numSw +=1
		#switchDict[str(numSw)] = swDpid

	
			# Combine unidirectional link events and call rerouteFlows() once
	def _handle_LinkEvent(self, event):	
		global totBwAvbl, numPLsAvbl, subLinkBwCap
		link = event.link
		global topoChange
		topoChange = True
		ctrlStable = False
		if event.added:
			print "\nResManIntfs: Link Added from %s to %s over port %d"%(dpid_to_str(link.dpid1), dpid_to_str(link.dpid2), link.port1)
			log.debug("ResManIntfs: Link Added from %s to %s over port %d"%(dpid_to_str(link.dpid1), dpid_to_str(link.dpid2), link.port1))
			
			addedLink = Link(link.dpid1, link.port1, link.dpid2)
			adj[link.dpid1][link.dpid2] = link.port1
			linkDelay[addedLink] = 0.05
			linkAlocBw[addedLink] = 0
			if addedLink in unAllocFlowsOnLink.keys():
				print " + + + + + + + + + + + + Adding previously existed but unallocated flows back to %s + + + + + + + + + + + + "%addedLink
				_measure_delay_interswitch(link.dpid1, link.dpid2, 1)
				flowsToReroute = unAllocFlowsOnLink[addedLink]
				print "\tRerouting ",
				for flowPathId in flowsToReroute.keys():
					print "\t%s"%flowPathId,
					#del epOpoPath[flowPathId]
				print "\twith reconnected link"
				del unAllocFlowsOnLink[addedLink]
				#del unAllocFlowsOnLink[opoLink(addedLink)]
				rerouteFlows(flowsToReroute, addedLink, remEvnt=False)	# Unallocated links are reallocated with the new link
				
			
			totBwAvbl = totBwAvbl + subLinkBwCap
			numPLsAvbl = numPLsAvbl + 1
			ctrlStable = True
			

		elif event.removed:
			# Each physical link removal will fire two removed events. One for foward parth and another for reverse parth
			print "\nResManIntfs: Link Removed from %s to %s over port %d"%(dpid_to_str(link.dpid1), dpid_to_str(link.dpid2), link.port1)
			log.debug("ResManIntfs: Link Removed from %s to %s over port %d", dpid_to_str(link.dpid1), dpid_to_str(link.dpid2), link.port1)
			t_linkRmv = time.time()
			brknLink = Link(link.dpid1, link.port1, link.dpid2)
			del adj[link.dpid1][link.dpid2]
			del linkDelay[brknLink]
			linkAlocBw[brknLink]=None
			print " - - - - - - - - - - - - Deleting and allocating alternative paths for flows on broken-link %s  - - - - - - - - - - - - "%brknLink
			flowsToReroute = delBrknFlows(brknLink)
			brknBkups = delBrknBkups(brknLink)
			instldBkups = None
			numZeroBkupBw = numNoBkupPath = numBwUnderBkup = amtBwUnderBkup = numBkupsReCalc = numNoNetPath = 0
			riskPcntList = []
			if reroute and len(flowsToReroute.keys())>0: 	# If atleast one flow is deleted as a result of the link failure
				if bkupPathReroute:
					instldBkups, numZeroBkupBw, numNoBkupPath, numBwUnderBkup, amtBwUnderBkup = installBkup(flowsToReroute, brknLink, remEvnt=True)
				elif shotPathReroute:
					rerouteFlows(flowsToReroute, brknLink, remEvnt=True)
				else:
					for flowPathId in flowsToReroute.keys():
						unAllocFlowPaths.add(flowPathId)
			else:
				print "\tNo Flows available in the disconnected link to reroute"
			t_flwIntld = time.time()
			# New backups are calculated for broken and allocated flows once every pair of unidirectional links 
			if brknBkups is not None:
				self.bkupsToRecalc.update(brknBkups)
			if instldBkups is not None:
				self.bkupsToRecalc.update(instldBkups)
			#print "\tbrknUniLinkSet=",brknUniLinkSet
			
			if  brknLink in brknUniLinkSet:
				print "\tKeys of bkupsToRecalc"
				for key in self.bkupsToRecalc.keys():
					print "\t\t",key
				numBkupsReCalc = len(self.bkupsToRecalc)
				brknUniLinkSet.remove(brknLink)
				print "Recalculating backups for deleted and installed backups"
				graph = createTopologyGraph()
				#graph.remove_edge(dpid_to_str(link.dpid1), dpid_to_str(link.dpid2))
				#graph.remove_edge(dpid_to_str(link.dpid2), dpid_to_str(link.dpid1))
				
				print "Recalculate backup for "
				for flowPathId in self.bkupsToRecalc.keys():
					print "\t\t",flowPathId
					noNetPath, minSrlgPcnt = calcBiDiBkups(graph, flowPathId, self.bkupsToRecalc[flowPathId])
					numNoNetPath += noNetPath
					riskPcntList.append(minSrlgPcnt)
				self.bkupsToRecalc.clear()
			else:
				brknUniLinkSet.add(opoLink(brknLink))

			t_pathCmputd = time.time()
			# -------------------------Measurements-----------------------------
			pathAllocTime = t_flwIntld - t_linkRmv
			pathCmputTime = t_pathCmputd - t_linkRmv
			numBrknBkups = 0
			if brknBkups is not None: numBrknBkups = len(brknBkups)
			numInstldBkups = 0
			if instldBkups is not None: numInstldBkups = len(instldBkups)
			# numZeroBkupBw, numNoBkupPath, numBwUnderBkup, amtBwUnderBkup
			# numBkupsReCalc
			# numNoNetPath
			# riskPcntList
			resultDict = {}
			resultDict["mesurPoint"] = "linkEvent"
			resultDict["numBrknBkups"] = numBrknBkups
			resultDict["numInstldBkups"] = numInstldBkups
			resultDict["numZeroBkupBw"] = numZeroBkupBw
			resultDict["numNoBkupPath"] = numNoBkupPath
			resultDict["numBwUnderBkup"] = numBwUnderBkup
			resultDict["amtBwUnderBkup"] = amtBwUnderBkup
			resultDict["numBkupsReCalc"] = numBkupsReCalc
			resultDict["numNoNetPath"] = numNoNetPath
			resultDict["riskPcntList"] = riskPcntList
			resultDict["pathAllocTime"] = pathAllocTime
			resultDict["pathCmputTime"] = pathCmputTime
			#csvFile = csv.writer(open("output.csv", "w"))
			#for key, val in resultDict.items():
			#	csvFile.writerow([key, val])
			
			totBwAvbl = totBwAvbl - subLinkBwCap
			numPLsAvbl = numPLsAvbl - 1
			saveMeasurements(resultDict)
			ctrlStable = True
		else:
			print "Link event fired. But not removed or added"

		
			
	

	def _handle_PacketIn(self, event):
		packet = event.parsed
		def drop (duration = None):
			"""
			Drops this packet and optionally installs a flow to continue
			dropping similar ones for a while
			"""
			if duration is not None:
				if not isinstance(duration, tuple):
					duration = (duration, duration)
				msg = of.ofp_flow_mod()
				msg.match = ofp_match_withHash.from_packet(packet)
				msg.idle_timeout = duration[0]
				msg.hard_timeout = duration[1]
				msg.buffer_id = event.ofp.buffer_id
				switchConns[event.dpid].send(msg)
			elif event.ofp.buffer_id is not None:
				msg = of.ofp_packet_out()
				msg.buffer_id = event.ofp.buffer_id
				msg.in_port = event.port
				switchConns[event.dpid].send(msg)

		#log.debug("Incoming packet")
		timeRecv = time.time()
		
		if packet.effective_ethertype != pkt.ethernet.IP_TYPE:
			return
		ip_pck = packet.find(pkt.ipv4)
		if ip_pck is None or not ip_pck.parsed:
			log.error("No IP packet in IP_TYPE packet")
			return EventHalt

		if ip_pck.protocol != 254:
			#log.debug("Packet is not ours, give packet back to regular packet manager")
			#return
			print "\tUntreated packet. Installing Drop rule"
			drop(10)
		else:
			self.pktNum+=1
			payload = eval(ip_pck.payload)
			flowPathDelay = 0
			rttDelay = 0
			swRttToCtrl = {}
			#log.debug("Received monitoring packet, with payload %s."%(ip_pck.payload))
			
			if ip_pck.srcip == IPAddr("224.0.1.252"):
				swDpid = str_to_dpid(str(packet.src).replace(":", "-"))
				ctrlChnlDly = round(timeRecv - payload.timeSent, 5)/2
				log.debug("ResManIntfs: Round Trip delay monitoring PKT-%d received from %s with delay %s" % (self.pktNum, dpid_to_str(swDpid), str(ctrlChnlDly)))
				swRttToCtrl[swDpid] = ctrlChnlDly
				return EventHalt
			elif ip_pck.srcip == IPAddr("224.0.1.254"):
				#print "ResManIntfs: Individual link delay discovery PKT received"

				srcDpid = str_to_dpid(str(packet.src).replace(":", "-"))
				dstDpid = str_to_dpid(str(packet.dst).replace(":", "-"))
				flowPathDelay = round(timeRecv - payload.timeSent, 6)
				#interSwDelay = flowPathDelay - swRttToCtrl[srcDpid] - swRttToCtrl[dstDpid]
				if srcDpid not in swRttToCtrl:
					swRttToCtrl[srcDpid] = 0.001
				interSwDelay = abs(flowPathDelay - swRttToCtrl[srcDpid])				# only considered source control channel delay to avoid negative link delays
				log.debug( "ResManIntfs: Link delay monitoring PKT-%d received from %s to %s with delay %s" % (self.pktNum, dpid_to_str(srcDpid), dpid_to_str(dstDpid), str(interSwDelay)))
				linkObj = Link(srcDpid, adj[srcDpid][dstDpid], dstDpid)
				linkDelay[linkObj] = interSwDelay		
				return EventHalt
			else:
				print "Protocol 254 packet source unrecognized"
				return EventHalt
				
			
			


	def resManListner(self):		# Deamon Process that listens to API requests from resource manager over JSON socket
		sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
		server_address = ('192.168.0.201', 6688)
		sock.bind(server_address)
		fcntl.fcntl(sock, fcntl.F_SETFL, os.O_NONBLOCK)
		sock.listen(1)
		dot = True
		spinner = itertools.cycle(['-', '/', '|', '\\'])
		print "\nlistning on port 6688 for requests \n",
		while True:
		    try:
				connection, addr = sock.accept()
				rawData = connection.recv(4096)
		    except socket.error, e:
				err = e.args[0]
				if err == errno.EAGAIN or err == errno.EWOULDBLOCK:
 					sleep(API_DELAY)
 					# Spinner Cursor code. Works only in consoles that support \b
					#stdout.write(spinner.next())
					#stdout.flush()
					#stdout.write('\b')
				else:
					print 'A real error occurred'
					print e
					sys.exit(1)
		    else:
				# got a message, do something :)
				print >>sys.stderr,'\n\tRequestListner:Json Request:\t "%s"' % str(rawData)
				#jsonReq = json.loads(rawData.decode('utf-8'))
				jsonReq = json.loads(rawData.decode('utf-8'))
				global ctrlStable, topoChange
			
				responceDict = OrderedDict()
				responceDict["ctrl-stable"] = ctrlStable
				responceDict["topo-change"] = topoChange
				responceDict["method"] = jsonReq['method']
				
	
				if jsonReq['method'] == u'set-reroute-flag':		# Set reroute from ResManager to enable rerouting. When rerouting is on, controller shutdown with "Ctrl+C" gives problems
					global reroute
					reroute = bool(jsonReq['data'])
					print "\t\treroute-flag set to = %r"%reroute,
					if reroute:
						swNum = 0
						for dpid in switchConns.keys():
							swNum+=1
							_measure_delay_ctrlChannel(dpid, swNum)
						linkNum = 0
						for srcDpid in adj.keys():
							for dstDpid in adj[srcDpid].keys():
								linkNum = linkNum+1
								_measure_delay_interswitch(srcDpid, dstDpid, linkNum)	# Measuring inter-switch link delays since rerouting is based on min-latency path
						print "\tController Rerouting ON"
					else:
						print "\tController Rerouting OFF"
					#responceDict["method"] = "set-reroute-flag"
					responceDict["data"] = reroute
						
				elif jsonReq['method'] == u'get-switches':
					switchList = []
					numSw = 0
					for dpid in switchConns.keys():
						switchId = strDpidToId[dpid_to_str(dpid)]
						switchList.append(switchId)
					#responceDict["method"] = "get-switches"
					responceDict["data"] = switchList
					
				# In legacy networks, centralized resource allocator does not have accurate link latency values as in SDN. Thus Latency values are not sent to ResMan
				elif jsonReq['method'] == u'get-links':
					linkList = []
					biPaths = defaultdict(lambda:defaultdict(lambda:None))
					# large json over network result in fragmentation and delays. 
					# Thus responce is made as small as possible by creating bidirectional links that are identified by src and dst switch ids.
					for linkObj in linkDelay.keys():
						srcSwId = strDpidToId[dpid_to_str(linkObj.ssw)]
						dstSwId = strDpidToId[dpid_to_str(linkObj.dsw)]
						if biPaths[dstSwId][srcSwId] is None:
							biPaths[srcSwId][dstSwId] = "%s-%s"%(srcSwId, dstSwId)
	
					for srcSw in biPaths.keys():
						for dstSw in biPaths[srcSw].keys():
							if biPaths[srcSw][dstSw] is not None:
								#print "\tsrc=%s\tdst=%s\tlink=%s"%(srcSw, dstSw, biPaths[srcSw][dstSw])
								linkList.append(biPaths[srcSw][dstSw])
					#responceDict["method"] = "get-links"
					responceDict["data"] = linkList
				
	
				elif jsonReq['method'] == u'add-rem-paths':
					#addCount = int(jsonReq['data']['add-count'])
					#remCount = int(jsonReq['data']['rem-count'])
					#resManRemPaths = defaultdict(lambda:defaultdict(lambda:None))
					#remCount = len(jsonReq['data']['rem-vnps'])
					#resManAddPaths = defaultdict(lambda:defaultdict(lambda:None))
					#addCount = len(jsonReq['data']['add-vnps'])
					#responceDict["method"] = "add-rem-paths"
					dataDict = {}
	
					# Removing paths
					rmvdPaths = defaultdict(lambda:defaultdict(lambda:None))
					if jsonReq['data']['rem-vnps'] is not None:
						for vnp in jsonReq['data']['rem-vnps']:
							vnpId = vnp["id"]
							pathNum = 0
							for path in vnp["paths"]:
								rmvdPaths[vnpId][pathNum] = pathTupl(qos=path["q"], nodeAry=path["p"])
								pathNum+=1
						#deleteFlowRules(resManRemPaths)
						addRemoveFlows(rmvdPaths, addPaths=False)
						dataDict["rem-count"] = len(jsonReq['data']['rem-vnps'])
					else:
						dataDict["rem-count"] = 0
	
					# Adding paths
					addedPaths = defaultdict(lambda:defaultdict(lambda:None))
					if jsonReq['data']['add-vnps'] is not None:
						for vnp in jsonReq['data']['add-vnps']:
							vnpId = vnp["id"]
							pathNum = 0
							for path in vnp["paths"]:
								addedPaths[vnpId][pathNum] = pathTupl(qos=path["q"], nodeAry=path["p"])
								pathNum+=1
						addRemoveFlows(addedPaths, addPaths=True)
						dataDict["add-count"] = len(jsonReq['data']['add-vnps'])
					else:
						dataDict["add-count"] = 0
	
					responceDict["data"] = 	dataDict
	
					if bkupPathReroute:
						addRemoveBkups(addedPaths, rmvdPaths)
						
						
	
				elif jsonReq['method'] == u'get-flow-alloc':
					print "\treceived resMan request get-flow-alloc"
					pathsPerVnp = defaultdict(lambda:defaultdict(lambda:None))
					
					print "\tadding flowpathIds and flowpaths to pathsPerVnp dictionary"
					for flowPathId in allocFlowIdToPath.keys():
						floPthSplt = flowPathId.split('-')
						vnpId = "%s-%s"%(floPthSplt[0],floPthSplt[1])
						pathNum = floPthSplt[2]
						pathsPerVnp[vnpId][pathNum] = next(iter(allocFlowIdToPath[flowPathId]))
						#print "\t\t %s   \tadded"%flowPathId
					
					vnpList = []
					for vnpId in pathsPerVnp.keys():
						pathList = []
						for pathNum in pathsPerVnp[vnpId].keys():
							flowPathObj = pathsPerVnp[vnpId][pathNum]
							qos = flowPathObj.alocQos
							path = flowPathObj.path
							prevSwDict = path.prev
							nodeList = []
							watchDogCount = 0
							#print prevSwDict
							currSw = path.dst		#15
							prevSw = prevSwDict[currSw]	#17
							nodeList.append(strDpidToId[dpid_to_str(currSw)])
							while prevSw is not None:	
								nodeList.append(strDpidToId[dpid_to_str(prevSw)])
	
								currSw = prevSw
								prevSw =  prevSwDict[currSw]
								if watchDogCount > 20:
									print "watchdog exit"
									break
								else:
									watchDogCount = watchDogCount+1
							#print nodeList
							onePath = {"q":qos, "p":nodeList}
							pathList.append(onePath)
						oneVnp = {"id":vnpId, "paths":pathList}
						vnpList.append(oneVnp)
					dataDict = {"vnps":vnpList}
					responceDict["data"] = 	dataDict	
	
					topoChange = False 	# topoChange can be reseted only by reading current flow allocation
					
				else:
					responceDict["method"] = "error"
		
				responceJson = json.dumps(responceDict)
				print "\tResponse to ResMan ",responceJson
				encodedJson = responceJson.encode('utf-8')
				msg = encodedJson
				MSGLEN = len(encodedJson)
				#MSGLEN = 1024
				print "\t\tMSGLEN = %d"%MSGLEN,
				totalsent = 0
	        		while totalsent < MSGLEN:
	           			sent = connection.send(msg[totalsent:])
	            			if sent == 0:
	                			raise RuntimeError("socket connection broken")
	            			totalsent = totalsent + sent
					print "\tsent = %d \t totalsent = %d"%(sent, totalsent)
	
	
				#connection.sendall(encodedJson)
			


def launch ():
	print "ResManIntfs: Launching ResManIntfs"
	core.registerNew(ResManIntfs)

	#resManListnerTrd = Timer(8, core.ResManIntfs.resManListner)#Start json listner after discovering
	#resManListnerTrd.setDaemon(True)
	#resManListnerTrd.start()
	
	
