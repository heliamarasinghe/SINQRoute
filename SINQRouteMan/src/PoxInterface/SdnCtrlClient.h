/*
 * SdnCtrlClient.h
 *
 *  Created on: Apr 20, 2016
 *      Author: openstack
 */

#ifndef POXINTERFACE_SDNCTRLCLIENT_H_
#define POXINTERFACE_SDNCTRLCLIENT_H_
//#include <stdio.h> //printf
//#include <string>    //strlen
#include <sys/socket.h>    //socket
#include <arpa/inet.h> //inet_addr
#include <unistd.h>    //write
#include <iostream>
#include <string>
#include <jsoncpp/json/json.h>		// Install jsoncpp in ubuntu '$sudo apt-get install libjsoncpp-dev'
									// Then add to GCC C++ Linker in Eclipse by going to 'Project -> Properties -> C/C++ Build -> Settings -> GCC C++ Linker -> Libraries' and add 'jsoncpp' into Libraries(-l)

#include "../Common/SDNInterDCQoS.h"

using namespace std;

typedef struct{
	int qos;
	vector<int> nodesVect;
}Path;

typedef struct {
	string id;
	int numPaths;
	vector<Path> pathsVect;
}Vnp;



class SdnCtrlClient {


public:
	//static void calculateLinkDelays();
	static void setRerouteFlag(bool);
	static vector<int> getSwitches();
	static vector<string> getLinks();
	static void checkNetState(bool&);
	static void getCurrFlowAlloc(bool&, multimap <string, Path>&);
	static void addRemovePaths(char* f14_ph2RemovedAddedPaths);
	static string sendJsonToCtrlr(Json::Value&);
	static void createAddRemPathJson(multimap <string, Path>&, multimap <string, Path>&, Json::Value&);
	//static void *get_in_addr(struct sockaddr *sa);
};



#endif /* POXINTERFACE_SDNCTRLCLIENT_H_ */
