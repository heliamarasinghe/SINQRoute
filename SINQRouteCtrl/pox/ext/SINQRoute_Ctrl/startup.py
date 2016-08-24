from datetime import datetime
from threading import Thread
import select
import socket
import sys
import json


def getSwitches():
	#switchesStr = '{"switch_count": "8", "dpids":[101, 102, 103, 104, 105, 106, 107, 108]}'
	switchesDict = dict()
	for num in range(10,20):
		if num<10:
			switchesDict[str(num)] = "00-00-00-00-00-0%d"% num
		else:
			switchesDict[str(num)] = "00-00-00-00-00-%d"% num
	switchesJson = json.dumps(switchesDict)
	return switchesJson

def listenToReq():
	sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	server_address = ('192.168.0.201', 6688)
	print >>sys.stderr, 'starting RequestListner on %s port %s' % server_address
	sock.bind(server_address)
	sock.listen(1)		#can check by "lsof -i tcp:6688" to kill manually "fuser -n tcp -k 6688"

	print >>sys.stderr, 'RequestListner:waiting for a connection'
	connection, client_address = sock.accept()
	try:
		print >>sys.stderr, 'RequestListner:client connected:', client_address
		while 1:
			data = connection.recv(1024)
			if len(data) == 0:
				print >>sys.stderr, 'RequestListner: Null received. Socket disconnecting'
				break
			print >>sys.stderr, 'RequestListner:received "%s"' % str(data)
			parsed_json = json.loads(data.decode('utf-8'))
			print"RequestListner:Printing decoded json"
			print(parsed_json)

			print('first key', parsed_json['method'])
			if parsed_json['method'] == u'get':
				if parsed_json['param'] == u'switches':
					switchesJson = getSwitches()
					connection.sendall(switchesJson)
				elif parsed_json['param'] == u'links':
					connection.sendall('{"link_count": "17"}')
				else:
					connection.sendall('{"error": "param"}')
					break
			
			else:
				connection.sendall('{"error": "method"}')
				break	
	except :
		e = sys.exc_info()
		print e
	finally:
		connection.close() 
		sys.exit(0)  





def launch (postfix=datetime.now().strftime("%Y%m%d%H%M%S")):
        
	#Openflow Forwarding
	#If l2_learning is used, enable spanning tree to avoid loops
	#from pox.forwarding.l2_learning import launch
	#launch()

        from openflow.keepalive import launch
        launch(interval=15) # 15 seconds

        from openflow.discovery import launch
        launch()

	#To display topology graph on a Gephi 0.8.2 installation, 
	print"Startup: Launching gephi topology visualization server"
	from misc.gephi_topo import launch
	launch()

        #OpenNetMon has solved the flooding-problem in l2_multi_withstate.
	#If standard pox.forwarding.l2_learning is used, uncomment this
	#print"Startup: Launching openflow.spanning_tree"
        #from openflow.spanning_tree import launch
        #launch(no_flood = True, hold_down = True)

	#OpenNetMon Forwarding
	print"Startup: Starting opennetmon.forwarding"
        from forwarding import launch
        launch(l3_matching=False)

	#OpenNetMon Monitoring
	print"Startup: Starting opennetmon.monitoring"
        from monitoring import launch
        launch(postfix=postfix)

	#Host tracker
	#print"Startup: Starting host_tracker"
	#from host_tracker import launch
	#launch()

	#cloudresman.json_api
	#print"Startup: Starting Link Delay Matrix Builder"
	#from delay_mat import launch
	#launch()
	
	#cloudresman.json_api
	print"Startup: Starting Cloud Resource Manager json API"
	from json_api import launch
	launch()

	#Display information about data packets received by POX from switches
	#from info.packet_dump import launch
	#launch()

	#from samples.pretty_log import launch
        #launch()

	#from log.level import launch
        #launch(DEBUG=True)


	
