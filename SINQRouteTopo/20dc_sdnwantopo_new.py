#!/usr/bin/python

"""
Create a network with open ethernet ports to connect 24 external hosts that are in the form of VMs
"""
#import os
#import re
import sys
from mininet.topo import Topo
from mininet.cli import CLI
from mininet.log import setLogLevel, info, error
from mininet.node import OVSSwitch, RemoteController
from mininet.net import Mininet
from mininet.link import TCLink



def addQos(switch):
	# QoS Classes
	# Cls	BW(200)	Max Hops
	# 1	1	7
	# 2	2	6
	# 3	3	5
	# 4	4	6
	# 5	5	8
	
	# ovs-vsctl -- set Port s1-eth2 qos=@newqos  \
	# -- set Port s1-eth3 qos=@newqos  \
	# -- set Port s1-eth4 qos=@newqos  \
	# -- set Port s1-eth5 qos=@newqos  \
	# -- set Port s1-eth6 qos=@newqos  \
	# -- --id=@newqos create QoS type=linux-htb queues=0=@q0,1=@q1,2=@q2,3=@q3,4=@q4 \
	# -- --id=@q0 create Queue other-config:min-rate=10000000 other-config:max -rate=10000000 \
	# -- --id=@q1 create Queue other-config:min-rate=20000000 other-config:max-rate=20000000 \
	# -- --id=@q2 create Queue other-config:min-rate=30000000 other-config:max-rate=30000000 \
	# -- --id=@q3 create Queue other-config:min-rate=40000000 other-config:max-rate=40000000 \
	# -- --id=@q4 create Queue other-config:min-rate=50000000 other-config:max-rate=50000000 

	# Check by getting 'mininet>xterm s1' and entering following commands
	# ovs-vsctl list qos
	# ovs-vsctl list queue
	# ovs-vsctl list port s2-eth2 qos


	#switch.cmd('ovs-vsctl -- set port %s-eth2 qos=@newqos -- --id=@newqos create qoS type=linux-htb queues:0=@q0,1=@q1,2=@q2,3=@q3,4=@q4 -- --id=@q0 create queue other-config:min-rate=10000000 other-config:max-rate=10000000 -- --id=@q0 create queue other-config:min-rate=20000000 other-config:max-rate=20000000 -- --id=@q0 create queue other-config:min-rate=30000000 other-config:max-rate=30000000 -- --id=@q0 create queue other-config:min-rate=40000000 other-config:max-rate=40000000 -- --id=@q0 create queue other-config:min-rate=50000000 other-config:max-rate=50000000' %(switch)) 

	# ovs-vsctl -- set port s1-eth1 qos=@newqos -- --id=@newqos create qos type=linux-htb queues=0=@q0,1=@q1 -- --id=@q0 create queue other-config:min-rate=200000000 other-config:max-rate=800000000 -- --id=@q1 create queue other-config:min-rate=50000 other-config:max-rate=50000000
	
	# ovs-vsctl set port s1-eth2 qos=@newqos -- --id=@newqos create qos type=linux-htb other-config:max-rate=5000000 queues:0=@newqueue -- --id=@newqueue create queue other-config:min-rate=3000000 other-config:max-rate=3000000

	# ovs-vsctl set port s1-eth2 qos=@newqos -- --id=@newqos create qos type=linux-htb  queues:0=@newqueue -- --id=@newqueue create queue other-config:min-rate=3000000 other-config:max-rate=3000000
	for intfs in range(2, 9):
		switch.cmd('ovs-vsctl -- set Port %s-eth%d qos=@newqos -- --id=@newqos create QoS type=linux-htb'%(switch, intfs))
		switch.cmd('ovs-vsctl -- add QoS %s-eth%d Queue 1=@q1 -- --id=@q1 create Queue other-config:min-rate=1000000 other-config:max-rate=1000000' %(switch, intfs))	#q1 1Mbps
		switch.cmd('ovs-vsctl -- add QoS %s-eth%d Queue 2=@q2 -- --id=@q2 create Queue other-config:min-rate=2000000 other-config:max-rate=2000000' %(switch, intfs))	#q2 2Mbps
		switch.cmd('ovs-vsctl -- add QoS %s-eth%d Queue 3=@q3 -- --id=@q3 create Queue other-config:min-rate=3000000 other-config:max-rate=3000000' %(switch, intfs))	#q3 3Mbps
		switch.cmd('ovs-vsctl -- add QoS %s-eth%d Queue 4=@q4 -- --id=@q4 create Queue other-config:min-rate=4000000 other-config:max-rate=4000000' %(switch, intfs))	#q4 4Mbps
		switch.cmd('ovs-vsctl -- add QoS %s-eth%d Queue 5=@q5 -- --id=@q5 create Queue other-config:min-rate=5000000 other-config:max-rate=5000000' %(switch, intfs))	#q5 5Mbps

	#switch.cmd('ovs-vsctl -- set port s1-eth2 qos=@newqos -- --id=@newqos create qos type=linux-htb other-config:max-rate=1000000 queues:0=@newqueue -- --id=@newqueue create queue other-config:min-rate=1000000 other-config:max-rate=1000000')
	
def addEth10(switch):
	switch.cmd('ip tuntap add mode tap %s-eth10' %(switch)) 
	switch.cmd('ip link set %s-eth10 up' %(switch)) 
	switch.cmd('ovs-vsctl add-port %s %s-eth10' %(switch, switch)) 

class interDcSdnTopo(Topo):
	#def __init__( self):
	def build(self):

		info( '*** Initialize topology\n' )
		#Topo.__init__( self)

		info( '*** Adding DC Switches\n' )
		s1  = self.addSwitch( 's1', dpid='0000000000000001')
		s2  = self.addSwitch( 's2', dpid='0000000000000002')
		s3  = self.addSwitch( 's3', dpid='0000000000000003')
		s4  = self.addSwitch( 's4', dpid='0000000000000004')
		s5  = self.addSwitch( 's5', dpid='0000000000000005')
		s6  = self.addSwitch( 's6', dpid='0000000000000006')
		s7  = self.addSwitch( 's7', dpid='0000000000000007')
		s8  = self.addSwitch( 's8', dpid='0000000000000008')
		s9  = self.addSwitch( 's9', dpid='0000000000000009')
		s10  = self.addSwitch( 's10', dpid='0000000000000010')
		s11  = self.addSwitch( 's11', dpid='0000000000000011')
		s12  = self.addSwitch( 's12', dpid='0000000000000012')
		s13  = self.addSwitch( 's13', dpid='0000000000000013')
		s14  = self.addSwitch( 's14', dpid='0000000000000014')
		s15  = self.addSwitch( 's15', dpid='0000000000000015')
		s16  = self.addSwitch( 's16', dpid='0000000000000016')
		s17  = self.addSwitch( 's17', dpid='0000000000000017')
		s18  = self.addSwitch( 's18', dpid='0000000000000018')
		s19  = self.addSwitch( 's19', dpid='0000000000000019')
		s20  = self.addSwitch( 's20', dpid='0000000000000020')

		info( '*** Adding Datacenters\n' )
		dc1 = self.addHost( 'dc1', mac='00:01:00:00:00:00', ip='192.168.101.01/24')
		dc2 = self.addHost( 'dc2', mac='00:02:00:00:00:00', ip='192.168.101.02/24')
		dc3 = self.addHost( 'dc3', mac='00:03:00:00:00:00', ip='192.168.101.03/24')
		dc4 = self.addHost( 'dc4', mac='00:04:00:00:00:00', ip='192.168.101.04/24')
		dc5 = self.addHost( 'dc5', mac='00:05:00:00:00:00', ip='192.168.101.05/24')
		dc6 = self.addHost( 'dc6', mac='00:06:00:00:00:00', ip='192.168.101.06/24')
		dc7 = self.addHost( 'dc7', mac='00:07:00:00:00:00', ip='192.168.101.07/24')
		dc8 = self.addHost( 'dc8', mac='00:08:00:00:00:00', ip='192.168.101.08/24')
		dc9 = self.addHost( 'dc9', mac='00:09:00:00:00:00', ip='192.168.101.09/24')
		dc10 = self.addHost( 'dc10', mac='00:10:00:00:00:00', ip='192.168.101.10/24')
		dc11 = self.addHost( 'dc11', mac='00:11:00:00:00:00', ip='192.168.101.11/24')
		dc12 = self.addHost( 'dc12', mac='00:12:00:00:00:00', ip='192.168.101.12/24')
		dc13 = self.addHost( 'dc13', mac='00:13:00:00:00:00', ip='192.168.101.13/24')
		dc14 = self.addHost( 'dc14', mac='00:14:00:00:00:00', ip='192.168.101.14/24')
		dc15 = self.addHost( 'dc15', mac='00:15:00:00:00:00', ip='192.168.101.15/24')
		dc16 = self.addHost( 'dc16', mac='00:16:00:00:00:00', ip='192.168.101.16/24')
		dc17 = self.addHost( 'dc17', mac='00:17:00:00:00:00', ip='192.168.101.17/24')
		dc18 = self.addHost( 'dc18', mac='00:18:00:00:00:00', ip='192.168.101.18/24')
		dc19 = self.addHost( 'dc19', mac='00:19:00:00:00:00', ip='192.168.101.19/24')
		dc20 = self.addHost( 'dc20', mac='00:20:00:00:00:00', ip='192.168.101.20/24')

		info( '*** Connecting Datacenters to WAN switches over eth1\n' )
		# self.addLink(src, dst, srcport, dstport)
		self.addLink(s1, dc1, 1, 0)		   
		self.addLink(s2, dc2, 1, 0)
		self.addLink(s3, dc3, 1, 0)
		self.addLink(s4, dc4, 1, 0)
		self.addLink(s5, dc5, 1, 0)
		self.addLink(s6, dc6, 1, 0)   
		self.addLink(s7, dc7, 1, 0)
		self.addLink(s8, dc8, 1, 0)
		self.addLink(s9, dc9, 1, 0)
		self.addLink(s10, dc10, 1, 0)
		self.addLink(s11, dc11, 1, 0)   
		self.addLink(s12, dc12, 1, 0)
		self.addLink(s13, dc13, 1, 0)
		self.addLink(s14, dc14, 1, 0)
		self.addLink(s15, dc15, 1, 0)
		self.addLink(s16, dc16, 1, 0)   
		self.addLink(s17, dc17, 1, 0)
		self.addLink(s18, dc18, 1, 0)
		self.addLink(s19, dc19, 1, 0)
		self.addLink(s20, dc20, 1, 0)





		"""
		self.addLink( node1, node2, bw=10, delay='5ms', max_queue_size=1000, loss=10, use_htb=True): adds a bidirectional link with bandwidth, delay and loss characteristics, with a maximum queue size of 1000 packets using the Hierarchical Token Bucket rate limiter and netem delay/loss emulator. The parameter bw is expressed as a number in Mbit; delay is expressed as a string with units in place (e.g. '5ms', '100us', '1s'); loss is expressed as a percentage (between 0 and 100); and max_queue_size is expressed in packets.

		You may find it useful to create a Python dictionary to make it easy to pass the same parameters into multiple method calls, for example:

		     linkopts = dict(bw=10, delay='5ms', loss=10, max_queue_size=1000, use_htb=True)
		     # (or you can use brace syntax: linkopts = {'bw':10, 'delay':'5ms', ... } )
		     self.addLink(node1, node2, **linkopts)
		"""

	 	# Inter-DC links
		linkopts = dict(bw=20, delay='50ms', loss=0, max_queue_size=10000, use_htb=True)
		info( '*** Adding Inter-DC links\n' )
		self.addLink(s1, s2, **linkopts)		#1
		self.addLink(s2, s3, **linkopts)		#2
		self.addLink(s3, s5, **linkopts)		#3
		self.addLink(s5, s6, **linkopts)		#4
		self.addLink(s1, s3, **linkopts)		#5
		self.addLink(s1, s4, **linkopts)		#6
		self.addLink(s3, s4, **linkopts)		#7
		self.addLink(s3, s9, **linkopts)		#8
		self.addLink(s4, s9, **linkopts)		#9
		self.addLink(s5, s9, **linkopts)		#10

		self.addLink(s5, s10, **linkopts)		#11
		self.addLink(s4, s8, **linkopts)		#12
		self.addLink(s4, s7, **linkopts)		#13
		self.addLink(s1, s7, **linkopts)		#14
		self.addLink(s1, s19, **linkopts)		#15
		self.addLink(s7, s19, **linkopts)		#16
		self.addLink(s7, s18, **linkopts)		#17
		self.addLink(s18, s19, **linkopts)		#18
		self.addLink(s8, s18, **linkopts)		#19
		self.addLink(s7, s8, **linkopts)		#20

		self.addLink(s8, s17, **linkopts)		#21
		self.addLink(s8, s9, **linkopts)		#22
		self.addLink(s8, s16, **linkopts)		#23
		self.addLink(s9, s16, **linkopts)		#24
		self.addLink(s9, s14, **linkopts)		#25
		self.addLink(s9, s10, **linkopts)		#26
		self.addLink(s10, s14, **linkopts)		#27
		self.addLink(s14, s16, **linkopts)		#28
		self.addLink(s15, s16, **linkopts)		#29
		self.addLink(s16, s17, **linkopts)		#30

		self.addLink(s15, s17, **linkopts)		#31
		self.addLink(s17, s18, **linkopts)		#32
		self.addLink(s17, s19, **linkopts)		#33
		self.addLink(s19, s20, **linkopts)		#34
		self.addLink(s17, s20, **linkopts)		#35
		self.addLink(s15, s20, **linkopts)		#36
		self.addLink(s14, s15, **linkopts)		#37
		self.addLink(s11, s14, **linkopts)		#38
		self.addLink(s11, s15, **linkopts)		#39
		self.addLink(s12, s15, **linkopts)		#40

		self.addLink(s10, s11, **linkopts)		#41
		self.addLink(s10, s12, **linkopts)		#42
	 	self.addLink(s11, s12, **linkopts)		#43
		self.addLink(s12, s13, **linkopts)		#44



		

def interDcSdn():
        info( '*** Creating Network\n' )
        topo = interDcSdnTopo()
        net = Mininet(topo, build=False, link=TCLink)
	#net = Mininet(topo, link=TCLink)
	info( '*** Adding remote Controller\n' )
	net.addController(name='ctrl1_pox1', controller=RemoteController, ip='192.168.0.201', port=6633)
        net.start()

	#info( '*** Adding interfaces to access layer switches to connect external hosts\n' )
	#for switch in s1, s4, s13, s16: 
	#	addEth0(switch)

	info( '*** Adding QoS Queues to switch ports eth2 to eth 8\n' )
	s1, s2, s3, s4, s5, s6, s7, s8, s9, s10 = net.get('s1', 's2', 's3', 's4', 's5', 's6', 's7', 's8', 's9', 's10')
	s11, s12, s13, s14, s15, s16, s17, s18, s19, s20 = net.get('s11', 's12', 's13', 's14', 's15', 's16', 's17', 's18', 's19', 's20')
	for switch in s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19, s20: 
		addQos(switch)
		

	CLI(net)
    	net.stop()

if __name__ == '__main__':
	setLogLevel( 'info' )
	#sdnInterDc()
	interDcSdn()
    
