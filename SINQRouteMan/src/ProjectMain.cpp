#include "TrafficGenerator/TrafficGenerator.h"
#include "LinkEmbedder/LinkEmbedder.h"
#include "NodeEmbedder/NodeEmbedder.h"
#include "PoxInterface/SdnCtrlClient.h"
#include "PoxInterface/UpdateNetState.h"
#include "SubTopoGenerator/SubTopoGenerator.h"
#include <unistd.h>


ILOSTLBEGIN

//------------------------------------------------------------------------------------------------------------------
//                     Main Function                                                                    -
//------------------------------------------------------------------------------------------------------------------

int main (int  argc, char** argv){

	// ------------------------- Switches ----------------------------
	/*1*/
	//bool getSwitches = false;
	//bool getLinks = false;
	bool initGenTopo = false;
	/*2*/
	bool ctrlReroute = true;
	/*3*/
	bool getCurrFlowAlloc = false;
	/*4*/
	bool updateSubTopo = false;
	bool updateCurrAloc = false;
	/*5*/
	bool updateReq = false;				// If ctrlReroute is FALSE,  Add unallocated virtual links as new requests
	/*6*/
	bool allocate = true;


	/* 1. Discover switches and links and generate substrate topology */
	if(initGenTopo){
		//if(getSwitches)
		vector<int> switchVect = SdnCtrlClient::getSwitches();
		//if(getLinks)
		vector<string> linkVect = SdnCtrlClient::getLinks();
		SubTopoGenerator::generateSubTopo(switchVect, linkVect);
	}


	/* 2. Setting Controller reroute ON or OFF. If OFF resourceManager will reallocate broken virtual links in the following tSlot */
	if(ctrlReroute)		SdnCtrlClient::setRerouteFlag(true);


	int MAXTSLOT = 1, currTslot = 0;
	while(currTslot<MAXTSLOT){
		cout<<"\n\t ------------ TIME SLOT :  "<<currTslot<<"--------------"<<endl;

	/* 3. Getting Current Flow Allocation from Controller */
		bool topoChange = false;
		multimap <string, Path> currPathsMmap;
		if(getCurrFlowAlloc){
			SdnCtrlClient::getCurrFlowAlloc(topoChange, currPathsMmap);
			cout<<"\tcurrPathsMmap received from SDN controller"<<endl;
			multimap <string, Path>::iterator itr;
			for (itr = currPathsMmap.begin();itr != currPathsMmap.end();++itr){
				cout <<"\t"<< itr->first << '\t' << itr->second.qos << '\t';
				for(int node : itr->second.nodesVect)
					cout<<node<<" ";
				cout<<endl;
			}
		}

	/* 4. If topology change has been detected, Update current network state in resourceManager */
		if(currTslot>0)
			if(updateSubTopo){
				vector<int> switchVect = SdnCtrlClient::getSwitches();
				vector<string> linkVect = SdnCtrlClient::getLinks();
				SubTopoGenerator::generateSubTopo(switchVect, linkVect);
			}
		if(updateCurrAloc)
			UpdateNetState::updateVlinks(currTslot, currPathsMmap);	// Updating vLinks in f15_ctrlUpdatedEmbedding file

	/* 5. If ctrlReroute is FALSE,  Modify requests to treat unallocated virtual links as new requests*/


	/* 6. Allocate Node and Link resources using Optimizer */
		if(allocate){
			char* f14_ph2RemovedAddedPaths;
			if(currTslot==0){
				//TrafficGenerator::generateInitTraffic();
				//NodeEmbedder::embedInitNodes();
				f14_ph2RemovedAddedPaths = LinkEmbedder::embedInitLinks();
			}
			else{
				//TrafficGenerator::generatePeriodicTraffic(currTslot);
				//NodeEmbedder::embedPeriodicNodes(currTslot);
				f14_ph2RemovedAddedPaths = LinkEmbedder::embedPeriodicLinks(currTslot);
			}
			SdnCtrlClient::addRemovePaths(f14_ph2RemovedAddedPaths);
		}

		currTslot++;
	}



	//else 			SdnCtrlClient::setRerouteFlag(false);
	//NodeEmbedder::embedPeriodicNodes(currTslot);
	//	int rmOldNodeData = system("rm DataFiles/initNodeIn/*.txt");
	//	if(rmOldNodeData==0){
	//		cout<<"\n\t\t Old Node embedding data files were removed"<<endl;
	//		system("cp DataFiles/trafIn/*.txt DataFiles/initNodeIn/");
	//		system("cp DataFiles/trafOut/*.txt DataFiles/initNodeIn/");
	//	}


	cout<<endl<<"\tEnd of Main"<<endl;

	return 0;

} //END main
//********************************************************************************************************************************************************************************
