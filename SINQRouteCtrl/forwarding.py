# #Copyright (C) 2013, Delft University of Technology, Faculty of Electrical Engineering, Mathematics and Computer Science, Network Architectures and Services, Niels van Adrichem
#
# This file is part of OpenNetMon.
#
# OpenNetMon is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# OpenNetMon is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with OpenNetMon.  If not, see <http://www.gnu.org/licenses/>.

# Special thanks go to James McCauley and all people connected to the POX project, without their work and provided samples OpenNetMon could not have been created in the way it is now.

"""
OpenNetMon.Forwarding

Requires openflow.discovery
"""

from pox.lib.revent.revent import EventMixin, Event
from pox.lib.addresses import IPAddr
from pox.lib.packet.vlan import vlan
from pox.lib.packet.ipv4 import ipv4

import pox.lib.util as util
from pox.core import core

import pox.openflow.libopenflow_01 as of
from collections import defaultdict
import pox.lib.packet as pkt
from datastructs import ofp_match_withHash, Path
from collections import namedtuple

log = core.getLogger()

switches = {}
switch_ports = {}
adj = defaultdict(lambda:defaultdict(lambda:None))

mac_learning = {}

sinqrouteForwarding = True
autoForwarding = False

numFlowRules = 0

	
def _get_bellman_ford_path(src, dst):		#def _get_path(src, dst):	
	#Bellman-Ford algorithm
	keys = switches.keys()
	distance = {}
	previous = {}
	
	for dpid in keys:
		distance[dpid] = float("+inf")
		previous[dpid] = None

	distance[src] = 0
	for i in range(len(keys)-1):					# for each switch
		for u in adj.keys(): #nested dict			# -\ for each edge (u, v)   <-- assuming there can be more than one link between a pair of switches
			for v in adj[u].keys():				# -/
				w = 1					# weight of each edge is set to 1
				if distance[u] + w < distance[v]:	# check currently known cost of target node(v) is greater than the cost of source node(u) + edge weight(w) 
					distance[v] = distance[u] + w	# 	if so; 	update the current node cost in the distance dict
					previous[v] = u 		#		assign u as the predecessor of v (immediate predecessor in least cost path from src to v)

	for u in adj.keys(): #nested dict
		for v in adj[u].keys():
			w = 1
			if distance[u] + w < distance[v]:
				log.error("Graph contains a negative-weight cycle")
				return None
	
	first_port = None
	v = dst
	u = previous[v]
	while u is not None:			# find the port of src switch
		if u == src:
			first_port = adj[u][v]
		
		v = u
		u = previous[v]		
				
	return Path(src, dst, previous, first_port)  #path
	# Each path can be uniquly identified by src-dpid, dst-dpid, and out-port of first switch. 

def install_path(prev_path, match, qosQ):
	dst_sw = prev_path.dst
	cur_sw = prev_path.dst
	dst_pck = match.dl_dst
	prt = 1										# Output port has is hardcoded
	if dst_pck in mac_learning:
		prt = mac_learning[dst_pck].port
	
	
	msg = of.ofp_flow_mod()
	msg.match = match
	msg.idle_timeout = of.OFP_FLOW_PERMANENT
	msg.flags = of.OFPFF_SEND_FLOW_REM	
	if qosQ == 0: msg.actions.append(of.ofp_action_output(port=prt))
	else: msg.actions.append(of.ofp_action_enqueue(port=prt, queue_id=qosQ))
	log.debug("Installing forward from switch %s to output port %s", util.dpid_to_str(cur_sw), prt)
	#print "\t\tForwarding: Installing flow from switch %s to output port %s" %(util.dpid_to_str(cur_sw), prt)
	switches[dst_sw].connection.send(msg)
	global numFlowRules
	numFlowRules = numFlowRules + 1
	next_sw = cur_sw
	cur_sw = prev_path.prev[next_sw]
	while cur_sw is not None: #for switch in path.keys():
		msg = of.ofp_flow_mod()
		msg.match = match
		msg.idle_timeout = of.OFP_FLOW_PERMANENT
		msg.flags = of.OFPFF_SEND_FLOW_REM
		log.debug("Installing forward from switch %s to switch %s output port %s", util.dpid_to_str(cur_sw), util.dpid_to_str(next_sw), adj[cur_sw][next_sw])
		#print "\t\tForwarding: Installing forward from switch %s to switch %s output port %s"%(util.dpid_to_str(cur_sw), util.dpid_to_str(next_sw), adj[cur_sw][next_sw])
		if qosQ == 0: msg.actions.append(of.ofp_action_output(port = adj[cur_sw][next_sw]))
		else: msg.actions.append(of.ofp_action_enqueue(port = adj[cur_sw][next_sw], queue_id=qosQ))
		switches[cur_sw].connection.send(msg)
		next_sw = cur_sw
		
		cur_sw = prev_path.prev[next_sw]

		numFlowRules = numFlowRules + 1

def delete_path(prev_path, match):

	#for connection in core.openflow.connections:     
        #	connection.send(of.ofp_flow_mod(command=of.OFPFC_DELETE_STRICT, action=of.ofp_action_output(port=3),priority=32,match=of.ofp_match(dl_type=0x800,nw_src="10.0.0.1",nw_dst="10.0.0.3"))) 

	dst_sw = prev_path.dst
	cur_sw = prev_path.dst
	dst_pck = match.dl_dst
	prt = 1
	if dst_pck in mac_learning:
		prt = mac_learning[dst_pck].port
	
	
	msg = of.ofp_flow_mod()
	msg.command = of.OFPFC_DELETE_STRICT
	msg.actions.append(of.ofp_action_output(port=prt))
	msg.match = match
	#msg.flags = of.OFPFF_SEND_FLOW_REM
	log.debug("Deleting flow from switch %s on output port %s", util.dpid_to_str(cur_sw), prt)
	#print "\t\tForwarding: Deleting flow from switch %s on output port %s" %(util.dpid_to_str(cur_sw), prt)
	switches[dst_sw].connection.send(msg)
	global numFlowRules
	numFlowRules = numFlowRules - 1
	next_sw = cur_sw
	cur_sw = prev_path.prev[next_sw]
	while cur_sw is not None: #for switch in path.keys():
		msg = of.ofp_flow_mod()
		msg.command = of.OFPFC_DELETE_STRICT
		msg.actions.append(of.ofp_action_output(port = adj[cur_sw][next_sw]))
		msg.match = match
		#msg.flags = of.OFPFF_SEND_FLOW_REM
		log.debug("Deleting flow from switch %s to switch %s on output port %s", util.dpid_to_str(cur_sw), util.dpid_to_str(next_sw), adj[cur_sw][next_sw])
		#print "\t\tForwarding: Deleting flow from switch %s to switch %s on output port %s"%(util.dpid_to_str(cur_sw), util.dpid_to_str(next_sw), adj[cur_sw][next_sw])
		
		switches[cur_sw].connection.send(msg)
		next_sw = cur_sw
		cur_sw = prev_path.prev[next_sw]
		numFlowRules = numFlowRules - 1
	

		
def _print_rev_path(dst_pck, src, dst, prev_path):
	str = "Reverse path from %s to %s over: [%s->dst over port %s]" % (util.dpid_to_str(src), util.dpid_to_str(dst), util.dpid_to_str(dst), mac_learning[dst_pck].port)
	next_sw = dst
	cur_sw = prev_path[next_sw]
	while cur_sw != None: #for switch in path.keys():
		str += "[%s->%s over port %s]" % (util.dpid_to_str(cur_sw), util.dpid_to_str(next_sw), adj[cur_sw][next_sw])
		next_sw = cur_sw
		cur_sw = prev_path[next_sw]
		
	log.debug(str)
	
class NewFlow(Event):
	def __init__(self, prev_path, match, adj):
		Event.__init__(self)
		self.match = match
		self.prev_path = prev_path
		self.adj = adj

def getNumFlowRules():
	global numFlowRules
	return numFlowRules


# Switch class called at Forwarding._handle_ConnectionUp(self, event):
class Switch(EventMixin):
	_eventMixin_events = set([NewFlow,])

	def __init__(self, connection, l3_matching=False):
		self.connection = connection
		self.l3_matching = l3_matching
		connection.addListeners(self)
		for p in self.connection.ports.itervalues(): #Enable flooding on all ports until they are classified as links
			self.enable_flooding(p.port_no)
	
	def __repr__(self):
		return util.dpid_to_str(self.connection.dpid) 
	
	
	def disable_flooding(self, port):
		msg = of.ofp_port_mod(port_no = port,
						hw_addr = self.connection.ports[port].hw_addr,
						config = of.OFPPC_NO_FLOOD,
						mask = of.OFPPC_NO_FLOOD)
	
		self.connection.send(msg)
	

	def enable_flooding(self, port):
		msg = of.ofp_port_mod(port_no = port,
							hw_addr = self.connection.ports[port].hw_addr,
							config = 0, # opposite of of.OFPPC_NO_FLOOD,
							mask = of.OFPPC_NO_FLOOD)
	
		self.connection.send(msg)
	
	def _handle_PacketIn(self, event):
		def forward(port):
			"""Tell the switch to forward the packet"""
			msg = of.ofp_packet_out()
			msg.actions.append(of.ofp_action_output(port = port))	
			if event.ofp.buffer_id is not None:
				msg.buffer_id = event.ofp.buffer_id
			else:
				msg.data = event.ofp.data
			msg.in_port = event.port
			self.connection.send(msg)
				
		def flood():
			"""Tell all switches to flood the packet, remember that we disable inter-switch flooding at startup"""
			#forward(of.OFPP_FLOOD)
			for (dpid,switch) in switches.iteritems():
				msg = of.ofp_packet_out()
				if switch == self:
					if event.ofp.buffer_id is not None:
						msg.buffer_id = event.ofp.buffer_id
					else:
						msg.data = event.ofp.data
					msg.in_port = event.port
				else:
					msg.data = event.ofp.data
				ports = [p for p in switch.connection.ports if (dpid,p) not in switch_ports]
				if len(ports) > 0:
					for p in ports:
						msg.actions.append(of.ofp_action_output(port = p))
					switches[dpid].connection.send(msg)
				
				
		def drop():
			"""Tell the switch to drop the packet"""
			if event.ofp.buffer_id is not None: #nothing to drop because the packet is not in the Switch buffer
				msg = of.ofp_packet_out()
				msg.buffer_id = event.ofp.buffer_id 
				event.ofp.buffer_id = None # Mark as dead, copied from James McCauley, not sure what it does but it does not work otherwise
				msg.in_port = event.port
				self.connection.send(msg)
		
		log.debug("Received PacketIn")		
		packet = event.parsed
				
		SwitchPort = namedtuple('SwitchPoint', 'dpid port')
		
		
		if (event.dpid, event.port) not in switch_ports:	# Packet is coming from a host or a VM. Only relearn locations if they arrived from non-interswitch links
			if packet.src in mac_learning.keys():
				if event.dpid is not mac_learning[packet.src].dpid or event.port is not mac_learning[packet.src].port:
					mac_learning[packet.src] = SwitchPort(event.dpid, event.port)	#relearn the location of the mac-address
					print "MAC to port mapped: %s --> %d \t| Received from the switch %s"%(packet.src, event.port, util.dpid_to_str(event.dpid))
			else:
				mac_learning[packet.src] = SwitchPort(event.dpid, event.port)	#relearn the location of the mac-address
				print "MAC to port mapped: %s --> %d \t| Received from the switch %s"%(packet.src, event.port, util.dpid_to_str(event.dpid))
			
			
		
		if packet.effective_ethertype == packet.LLDP_TYPE:
			print "\t\tLLDP_TYPE"
			drop()
			log.debug("Switch %s dropped LLDP packet", self)
		#elif packet.dst.is_multicast:
		#	print "\t\tdst multicast"
		#	flood()
		#	log.debug("Switch %s flooded multicast 0x%0.4X type packet", self, packet.effective_ethertype)
		#elif packet.dst not in mac_learning:
		#	print "\t\tpacket.dst not in mac_learning"
		#	flood() #Let's first learn the location of the recipient before generating and installing any rules for this. 
		#		# We might flood this but that leads to further complications if half way the flood through the network the path has been learned.
		#	log.debug("Switch %s flooded unicast 0x%0.4X type packet, due to unlearned MAC address", self, packet.effective_ethertype)
		elif packet.effective_ethertype == packet.ARP_TYPE:
			print "\t\tARP_TYPE"
			#These packets are sent so not-often that they don't deserve a flow
			#Instead of flooding them, we drop it at the current switch and have it resend by the switch to which the recipient is connected.
			if packet.dst not in mac_learning.keys():
				flood()
			else:
				drop()
				dst = mac_learning[packet.dst]
				msg = of.ofp_packet_out()
				msg.data = event.ofp.data
				msg.actions.append(of.ofp_action_output(port = dst.port))
				switches[dst.dpid].connection.send(msg)
				log.debug("Switch %s processed unicast ARP (0x0806) packet, send to recipient by switch %s", self, util.dpid_to_str(dst.dpid))
		
		elif autoForwarding:	#OpenNetMon solution: Flows are automatically created based on Bellman Ford shortest paths
			print "\t\tautoForwarding"
			# -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
			# Regular Data packets between VMs
			# Forwarding module will install necessory flows to route them through shortest path over the network and at the same time will triger monitoring module by raising NewFlow event.
			# Monitoring module will install a parallel flow to send monitoring packets along the same path to measure network delay. Throughput and packet loss will be measured by 
			#	requesting flow statistics from first and last switches.
			#
			# This part must be handled by createFlowRules(addedPaths)
			# -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
			
			log.debug("Switch %s received PacketIn of type 0x%0.4X, received from %s.%s", self, packet.effective_ethertype, util.dpid_to_str(event.dpid), event.port)
			dst = mac_learning[packet.dst]
			prev_path = _get_bellman_ford_path(self.connection.dpid, dst.dpid)	# gives shortest path from src to dest using belman ford algorithm
			if prev_path is None:
				flood()
				return
			log.debug("Path from %s to %s over path %s", packet.src, packet.dst, prev_path)
			if self.l3_matching == True: #only match on l2-properties, useful when doing experiments with UDP streams as you can insert a flow using ping and then start sending udp.
			
				match = ofp_match_withHash()

				match.dl_src = packet.src
				match.dl_dst = packet.dst
				match.dl_type = packet.type
				p = packet.next
				if isinstance(p, vlan):
					match.dl_type = p.eth_type
					match.dl_vlan = p.id
					match.dl_vlan_pcp = p.pcp
					p = p.next

				if isinstance(p, ipv4):
					match.nw_src = p.srcip
					match.nw_dst = p.dstip
					match.nw_proto = p.protocol
					match.nw_tos = p.tos
					p = p.next
				else:
					match.dl_vlan = of.OFP_VLAN_NONE
					match.dl_vlan_pcp = 0
			
			else:
				match = ofp_match_withHash.from_packet(packet)
		
			install_path(prev_path, match, 0)			# install flow-rules to allow subsequent packets of same type to travel over the network
		
			#forward the current packet directly from the last switch, there is no need to have the packet run through the complete network.
			drop()
			dst = mac_learning[packet.dst]
			msg = of.ofp_packet_out()
			msg.data = event.ofp.data
			msg.actions.append(of.ofp_action_output(port = dst.port))
			switches[dst.dpid].connection.send(msg)
			self.raiseEvent(NewFlow(prev_path, match, adj))	# Trigger monitoring module measure throughput, packet-loss and path latency by installing monitoring flows
			log.debug("Switch %s processed unicast 0x%0.4x type packet, send to recipient by switch %s", self, packet.effective_ethertype, util.dpid_to_str(dst.dpid))
		elif sinqrouteForwarding:
			print "\t\tsinqrouteForwarding"

		
		else:
			print "\t\tpackets drpoed"
			drop()

		
	def _handle_ConnectionDown(self, event):
		log.debug("Switch %s going down", util.dpid_to_str(self.connection.dpid))
		del switches[self.connection.dpid]
		#pprint(switches)

		
class NewSwitch(Event):
	def __init__(self, switch):
		Event.__init__(self)
		self.switch = switch

class Forwarding(EventMixin):
	_core_name = "opennetmon_forwarding" # we want to be core.opennetmon_forwarding
	_eventMixin_events = set([NewSwitch, NewFlow,]) # defining this variable tells the revent library what kind of events Forwarding class can raise.
	
	def __init__ (self, l3_matching):
		log.debug("Forwarding coming up")
				
		def startup():
			core.openflow.addListeners(self)
			core.openflow_discovery.addListeners(self)
			log.debug("Forwarding started")
		
		self.l3_matching = l3_matching
		core.call_when_ready(startup, 'openflow', 'openflow_discovery')
			
	def _handle_LinkEvent(self, event):
		link = event.link
		if event.added:
			log.debug("Received LinkEvent, Link Added from %s to %s over port %d", util.dpid_to_str(link.dpid1), util.dpid_to_str(link.dpid2), link.port1)
			adj[link.dpid1][link.dpid2] = link.port1
			switch_ports[link.dpid1,link.port1] = link
			#switches[link.dpid1].disable_flooding(link.port1)
			#pprint(adj)

		else:
			log.debug("Received LinkEvent, Link Removed from %s to %s over port %d", util.dpid_to_str(link.dpid1), util.dpid_to_str(link.dpid2), link.port1)
			##Disabled those two lines to prevent interference with experiment due to falsely identified disconnected links.
			#del adj[link.dpid1][link.dpid2]
			#del switch_ports[link.dpid1,link.port1]
			
			
			#switches[link.dpid1].enable_flooding(link.port1)
			
		
		self._calc_ForwardingMatrix()
		
	def _calc_ForwardingMatrix(self):
		log.debug("Calculating forwarding matrix")
		
	def _handle_ConnectionUp(self, event):
		log.debug("New switch connection: %s", event.connection)
		sw = Switch(event.connection, l3_matching=self.l3_matching)
		switches[event.dpid] = sw;
		self.raiseEvent(NewSwitch(sw))
		
	# getPortForMac(dstDcMac, dstSwDpid)
	def getPortForMac(self, mac, swDpid):
		swPort = 1
		if mac in mac_learning:
			swPort = mac_learning[mac].port
			print "\t mac_learning:  %s found. Port = %d ****************"%(mac, swPort)
		#else:
			# print "\t MAC %s is not in mac_learning table. Use default port = 1"%mac
			# TODO: generate ARP from destination swith using swDpid and update the mac_learning dictionary
		return swPort

	

	def installSinqroutePath(self, flowPath):
		install_path(flowPath.path, flowPath.match, flowPath.qos)
		monitoring = False
		if monitoring:
			self.raiseEvent(NewFlow(flowPath.path, flowPath.match, adj))	# Trigger monitoring module measure throughput, packet-loss and path latency by installing monitoring flows

	def deleteSinqroutePath(self, flowPath):
		delete_path(flowPath.path, flowPath.match)

		
def launch (l3_matching=False):
	
	core.registerNew(Forwarding, l3_matching)
	
