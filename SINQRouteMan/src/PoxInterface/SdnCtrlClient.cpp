/*
 * SdnCtrlClient.cpp
 *
 *  Created on: Apr 20, 2016
 *      Author: openstack
 */
#include "SdnCtrlClient.h"


const char* NET_CTRL_IP = "192.168.0.201";			// Network controller IP pox1-ctrl1 = 192.168.0.201, contrail-pox1 = 192.168.0.210
/*
//--------------------------------------------------------------------------------------------------------------------------------------------------
//					 static maps that map dpids to switch numbers and vice versa to use in the embedder
//--------------------------------------------------------------------------------------------------------------------------------------------------
map<string,int> create_DpidToNumMap(){
	map<string,int> m;
	m["00-00-00-00-00-01"] = 1; m["00-00-00-00-00-02"] = 2; m["00-00-00-00-00-03"] = 3; m["00-00-00-00-00-04"] = 4; m["00-00-00-00-00-05"] = 5;
	m["00-00-00-00-00-06"] = 6; m["00-00-00-00-00-07"] = 7; m["00-00-00-00-00-08"] = 8; m["00-00-00-00-00-09"] = 9; m["00-00-00-00-00-10"] = 10;
	m["00-00-00-00-00-11"] = 11; m["00-00-00-00-00-12"] = 12; m["00-00-00-00-00-13"] = 13; m["00-00-00-00-00-14"] = 14; m["00-00-00-00-00-15"] = 15;
	m["00-00-00-00-00-16"] = 16; m["00-00-00-00-00-17"] = 17; m["00-00-00-00-00-18"] = 18; m["00-00-00-00-00-19"] = 19; m["00-00-00-00-00-20"] = 20;
	return m;
}
map<int,string> create_numToDpidMap(){
	map<int,string> m;
	m[1] = "00-00-00-00-00-01"; m[2] = "00-00-00-00-00-02"; m[3] = "00-00-00-00-00-03"; m[4] = "00-00-00-00-00-04"; m[5] =  "00-00-00-00-00-05";
	m[6] = "00-00-00-00-00-06"; m[7] = "00-00-00-00-00-07"; m[8] = "00-00-00-00-00-08"; m[9] = "00-00-00-00-00-09"; m[10] =  "00-00-00-00-00-10";
	m[11] = "00-00-00-00-00-11"; m[12] = "00-00-00-00-00-12"; m[13] = "00-00-00-00-00-13"; m[14] = "00-00-00-00-00-14"; m[15] =  "00-00-00-00-00-15";
	m[16] = "00-00-00-00-00-16"; m[17] = "00-00-00-00-00-17"; m[18] = "00-00-00-00-00-18"; m[19] = "00-00-00-00-00-19"; m[20] =  "00-00-00-00-00-20";
	return m;
}
map<string,int> dpidToNumMap = create_DpidToNumMap();
map<int,string> numToDpidMap = create_numToDpidMap();
*/

void SdnCtrlClient::setRerouteFlag(bool rerouteFlag){
	Json::Value rerouteJson;
	rerouteJson["method"] = "set-reroute-flag";
	rerouteJson["data"] = rerouteFlag;
	sendJsonToCtrlr(rerouteJson);
}

//--------------------------------------------------------------------------------------------------------------------------------------------------
vector<int> SdnCtrlClient::getSwitches(){
	cout<<"Get connected switches"<<endl;
	Json::Value getSwitchesJson;
	getSwitchesJson["method"] = "get-switches";
	//getSwitchesJson["data"] = "switches";
	string replyStr = sendJsonToCtrlr(getSwitchesJson);

	Json::Value replyJson;
	Json::Reader reader;
	reader.parse( replyStr.c_str(), replyJson );
	//	bool ctrlStable = replyJson.get("ctrl-stable", true).asBool();
	// 	if(ctrlStable)
	//		read data
	//	else
	//		send another request to controller

	//topoChange = replyJson.get("topo-change", false).asBool();

	vector<int> switchVect;
	for (const Json::Value& dataElement : replyJson["data"]) {
		int swId = dataElement.asInt();
		switchVect.push_back(swId);
	}

	return switchVect;



}
//--------------------------------------------------------------------------------------------------------------------------------------------------
vector<string> SdnCtrlClient::getLinks(){
	//cout<<dpidToNumMap["00-00-00-00-00-11"]<<endl;
	cout<<"Get connected links"<<endl;
	Json::Value getLinksJson;
	getLinksJson["method"] = "get-links";
	//getLinksJson["data"] = "links";
	string replyStr = sendJsonToCtrlr(getLinksJson);
	Json::Value replyJson;
	Json::Reader reader;
	reader.parse( replyStr.c_str(), replyJson );
	//topoChange = replyJson.get("topo-change", false).asBool();

	vector<string> linkVect;
	for (const Json::Value& dataElement : replyJson["data"]) {
		string linkId = dataElement.asString();
		linkVect.push_back(linkId);
	}
	return linkVect;
}

void SdnCtrlClient::checkNetState(bool& topoChange){
	cout<<"Check for network topology changes"<<endl;
}

void SdnCtrlClient::addRemovePaths(char* f14_ph2RemovedAddedPaths){
	cout<<"\n\tSdnCtrlClient.addRemovePaths()"<<endl;

	int nb_removed_paths = 0, nb_embedding_path=0;
	cout<<"\t\tReading file:"<<f14_ph2RemovedAddedPaths<<endl;
	ifstream file14(f14_ph2RemovedAddedPaths);
	if (!file14)
		cerr << "ERROR: could not open file"<< f14_ph2RemovedAddedPaths << "for reading"<< endl;

	file14>>nb_removed_paths;
	file14>>nb_embedding_path;

	multimap <string, Path> remPathsMmap;
	cout<<"\n\tPaths Removed"<<endl;
	cout<<"\ttSlot\tcurrVnp\tpathQos\tnodesStr"<<endl;
	for(int remItr=0; remItr<nb_removed_paths; remItr++){			// Read file and group paths belong to same VNP in a multimap
		int tSlot = 0, currVnp=0;
		string nodesStr;
		Path path;
		file14>>tSlot>>currVnp>>path.qos>>nodesStr;
		cout<<"\t"<<tSlot<<"\t"<<currVnp<<"\t"<<path.qos<<"\t"<<nodesStr<<endl;
		stringstream ssVnpId;
		ssVnpId<<tSlot<<"-"<<currVnp;
		string vnpId = ssVnpId.str();

		stringstream ssNodes(nodesStr);
		int i;
		while (ssNodes >> i){
			path.nodesVect.push_back(i);
			if (ssNodes.peek() == ','|| ssNodes.peek() == ' ')
				ssNodes.ignore();
		}
		remPathsMmap.insert(make_pair(vnpId, path));		// Multimap that will group paths belong to same VNP
	}

	multimap <string, Path> addPathsMmap;
	cout<<"\n\tPaths Added"<<endl;
	cout<<"\ttSlot\tcurrVnp\tpathQos\tnodesStr"<<endl;
	//cout<<"\n\t Printing path vector"<<endl;
	for(int addItr=0; addItr<nb_embedding_path; addItr++){			// Read file and group paths belong to same VNP in a multimap
		int tSlot = 0, currVnp=0;
		string nodesStr;
		Path path;
		file14>>tSlot>>currVnp>>path.qos>>nodesStr;
		cout<<"\t"<<tSlot<<"\t"<<currVnp<<"\t"<<path.qos<<"\t";
		stringstream ssVnpId;
		ssVnpId<<tSlot<<"-"<<currVnp;
		string vnpId = ssVnpId.str();

		stringstream ssNodes(nodesStr);
		int i;
		while (ssNodes >> i){
			path.nodesVect.push_back(i);
			if (ssNodes.peek() == ','|| ssNodes.peek() == ' ')
				ssNodes.ignore();
		}
		addPathsMmap.insert(make_pair(vnpId, path));		// Multimap that will group paths belong to same VNP

		for(vector<int>::iterator nodesItr = path.nodesVect.begin(); nodesItr != path.nodesVect.end(); nodesItr++) {
			cout<<" "<<*nodesItr;
		}
		cout<<endl;
	}

	file14.close();

	Json::Value addRemPathJson;
	createAddRemPathJson(remPathsMmap, addPathsMmap, addRemPathJson);	//output --> addRemPathJson
	sendJsonToCtrlr(addRemPathJson);
}

//--------------------------------------------------------------------------------------------------------------------------------------------------

void SdnCtrlClient::createAddRemPathJson(multimap <string, Path>& remPathsMmap,  multimap <string, Path>& addPathsMmap, Json::Value& addRemPathJson){

	//int numRemVnps = 0;
	//int numAddVnps = 0;

	Json::Value data;
	Json::Value remVnps;
	Json::Value addVnps;
	Json::Value addVnpsArray;
	Json::Value remVnpsArray;
	Json::Value oneVnp;

	addRemPathJson["method"] = "add-rem-paths";

	cout<<"\n\t Converting Removed VNPs into JSON"<<endl;
	for (multimap<string, Path>::iterator vnpItr = remPathsMmap.begin(); vnpItr != remPathsMmap.end(); vnpItr = remPathsMmap.upper_bound(vnpItr->first)){
		pair <multimap<string, Path>::iterator, multimap<string, Path>::iterator> pathSet;
		pathSet = remPathsMmap.equal_range((*vnpItr).first);
		oneVnp["id"] = (*vnpItr).first;
		Json::Value pathsArray;
		for (multimap<string, Path>::iterator pathItr=pathSet.first; pathItr!=pathSet.second; ++pathItr){
			Json::Value onePath;
			onePath["q"] = pathItr->second.qos;
			Json::Value nodesArray;
			for(vector<int>::iterator nodesItr = pathItr->second.nodesVect.begin(); nodesItr != pathItr->second.nodesVect.end(); nodesItr++) {
				nodesArray.append(*nodesItr);
			}
			onePath["p"] = nodesArray;
			pathsArray.append(onePath);
		}
		oneVnp["paths"] = pathsArray;
		remVnpsArray.append(oneVnp);
		//numRemVnps++;
	}
	//addRemPathJson["remCount"] = numRemVnps;
	data["rem-vnps"] = remVnpsArray;


	cout<<"\n\t Converting Added VNPs into JSON"<<endl;
	for (multimap<string, Path>::iterator vnpItr = addPathsMmap.begin(); vnpItr != addPathsMmap.end(); vnpItr = addPathsMmap.upper_bound(vnpItr->first)){
		pair <multimap<string, Path>::iterator, multimap<string, Path>::iterator> pathSet;
		pathSet = addPathsMmap.equal_range((*vnpItr).first);
		oneVnp["id"] = (*vnpItr).first;
		Json::Value pathsArray;
		for (multimap<string, Path>::iterator pathItr=pathSet.first; pathItr!=pathSet.second; ++pathItr){
			Json::Value onePath;
			onePath["q"] = pathItr->second.qos;
			Json::Value nodesArray;
			for(vector<int>::iterator nodesItr = pathItr->second.nodesVect.begin(); nodesItr != pathItr->second.nodesVect.end(); nodesItr++) {
				nodesArray.append(*nodesItr);
			}
			onePath["p"] = nodesArray;
			pathsArray.append(onePath);
		}
		oneVnp["paths"] = pathsArray;
		addVnpsArray.append(oneVnp);
		//numAddVnps++;
	}
	//addRemPathJson["addCount"] = numAddVnps;
	data["add-vnps"] = addVnpsArray;
	addRemPathJson["data"] = data;

	// ---------------------- Pretty-print json -----------------------
	//cout<<"\n\t Printing JSON to remove and add paths"<<endl;
	//Json::StyledWriter writer;
	//cout << writer.write(addRemPathJson) << "\n";
	// ----------------------------------------------------------------
/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
{
	"method":"add-rem-paths",
	"data":{
		"add-vnps":[
			{"id":"0-10","paths":[{"p":[13,12,10,9,4],"q":4},{"p":[1,4,9,10,12,13],"q":4},{"p":[4,8,16],"q":5},{"p":[4,1],"q":1},{"p":[1,4,8,16],"q":5}]},
			{"id":"0-12","paths":[{"p":[15,17,18],"q":3},{"p":[18,19],"q":4},{"p":[15,17,19],"q":4}]},
			{"id":"0-13","paths":[{"p":[2,1,19,20],"q":1},{"p":[20,15,12],"q":3},{"p":[12,10,5,3,2],"q":1}]},
			{"id":"0-15","paths":[{"p":[3,2],"q":2},{"p":[2,1,7,8],"q":3},{"p":[14,9,3,2],"q":2},{"p":[3,9,8],"q":1},{"p":[14,9,3],"q":1}]},
			{
				"id":"0-16",
				"paths":[
					{"p":[15,17,19],"q":5},
					{"p":[19,7,8],"q":5},
					{"p":[7,8,17,15],"q":2},
					{"p":[7,19],"q":4}
				]
			},
			{"id":"0-18","paths":[{"p":[6,5,3,2],"q":2},{"p":[1,3,5,6],"q":2},{"p":[2,1],"q":5}]},
			{"id":"0-2","paths":[{"p":[10,9,3],"q":3},{"p":[3,4],"q":2},{"p":[10,9,4],"q":1}]},
			{"id":"0-20","paths":[{"p":[14,9,3,2],"q":1},{"p":[12,10,5,3,2],"q":5},{"p":[6,5,10,12],"q":4},{"p":[12,15,14],"q":1},{"p":[2,3,5,6],"q":5},{"p":[6,5,10,14],"q":5}]},
			{"id":"0-3","paths":[{"p":[5,9],"q":4},{"p":[9,14,11],"q":1},{"p":[11,10,5],"q":1},{"p":[17,16,9,5],"q":3}]},
			{"id":"0-7","paths":[{"p":[9,8,7],"q":5},{"p":[5,9],"q":5},{"p":[5,3,4,7],"q":5}]}
		],
		"rem-vnps":null
	}
}
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
}

void SdnCtrlClient::getCurrFlowAlloc(bool& topoChange, multimap <string, Path>& currPathsMmap){
	cout<<"\tGet current flow allocation"<<endl;
	Json::Value getFlowAllocJson;
	getFlowAllocJson["method"] = "get-flow-alloc";
	currPathsMmap.clear();
	//getSwitchesJson["data"] = "switches";
	string replyStr = sendJsonToCtrlr(getFlowAllocJson);
	Json::Value replyJson;
	Json::Reader reader;
	reader.parse( replyStr.c_str(), replyJson );
	topoChange = replyJson.get("topo-change", false).asBool();

		for (const Json::Value& vnpJson : replyJson["data"]["vnps"]) {
			//
			string vnpId = vnpJson["id"].asString();

			for (const Json::Value& pathJson : vnpJson["paths"]) {
				Path path;
				int qos = pathJson["q"].asInt();
				path.qos = qos;
				for (const Json::Value& nodeJson : pathJson["p"]) {
					int swId = nodeJson.asInt();
					path.nodesVect.push_back(swId);
				}
				//cout<<"adding vnpId "<<vnpId<<" to currPathsMmap"<<endl;
				currPathsMmap.insert(make_pair(vnpId, path));
			}

		}
}

string SdnCtrlClient::sendJsonToCtrlr(Json::Value& jsonSentToCtrlr){

	int sock;
	struct sockaddr_in server;
	char message[4096];


	Json::FastWriter fastWriter;
	std::string jsonString = fastWriter.write(jsonSentToCtrlr);

	cout<<"\n\t Network Controller IP = \t"<<NET_CTRL_IP<<endl;
	cout<<"\n\tJson Sent To Ctrlr = ";
	cout<<jsonString<<endl;
	//Create socket
	sock = socket(AF_INET , SOCK_STREAM , 0);
	if (sock == -1)
	{
		printf("Could not create socket");
	}
	puts("Socket created");


	server.sin_addr.s_addr = inet_addr(NET_CTRL_IP);
	server.sin_family = AF_INET;
	server.sin_port = htons( 6688 );

	//Connect to remote server
	if (connect(sock , (struct sockaddr *)&server , sizeof(server)) < 0){
		perror("connect failed. Error");
		return "error";
	}

	puts("Connected\n");

	strncpy(message, jsonString.c_str(), sizeof(message));

	//Send some data
	cout<<"Sending Request: "<<message<<endl;
	if( send(sock , message , strlen(message) , 0) < 0){
		puts("Send failed");
		return "failed";
	}

	//Receive a reply from the server
	/*
	if( recv(sock , server_reply , 1024 , 0) < 0){
		puts("recv failed");
		//break;
	}
	*/
	// create the buffer with space for the data
	const unsigned int MAX_BUF_LENGTH = 2048;
	std::vector<char> buffer(MAX_BUF_LENGTH);
	std::string rcv;
	int bytesReceived = 0;
	do {
	    bytesReceived = recv(sock, buffer.data(), buffer.size(), 0);
	    // append string from buffer.
	    if ( bytesReceived == -1 ) {
	        cerr<<"ERROR while receiving SDN controller responce over socket "<<endl;
	    } else {
	        rcv.append( buffer.cbegin(), buffer.cend());
	    }
	    //sleep(1);
	} while ( bytesReceived == MAX_BUF_LENGTH );
	// At this point we have the available data (which may not be a complete
	// application level message).

	cout<<"Server reply : "<<rcv<<endl;
	//}

	//shutdown(sock, 0);
	close(sock);
	cout<<"Socket closed"<<endl;


	return rcv;
}
