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
	bool ctrlReroute = false;		// Must be false if resManReroute = true
	/*3*/
	bool resManReroute = true;		// Must be false if ctrlReroute = true
	/*4*/
	bool getCurrFlowAlloc = false;
	/*5*/
	bool updateSubTopo = false;
	bool updateCurrAloc = false;
	/*6*/
	bool updateReq = false;				// If ctrlReroute is FALSE,  Add unallocated virtual links as new requests
	/*7*/
	bool embedding = true;
	/*8*/
	bool deployOnNet = false;

	// ---------------- vlink Embedding with Backup --------------------
	int bkup = 2;		//		0 - No backup
						//		1 - with SLRG aware backup
						//		2 - with shared backup
	// -----------------------------------------------------------------


	int MAXTSLOT = 3, currTslot = 2;
	/* 1. Discover switches and links and generate substrate topology */
	if(initGenTopo){
		//if(getSwitches)
		vector<int> switchVect = SdnCtrlClient::getSwitches();
		//if(getLinks)
		vector<string> linkVect = SdnCtrlClient::getLinks();
		SubTopoGenerator::generateSubTopo(switchVect, linkVect, currTslot);
	}


	/* 2. Setting Controller reroute ON or OFF. If OFF resourceManager will reallocate broken virtual links in the following tSlot */
	if(ctrlReroute)		SdnCtrlClient::setRerouteFlag(true);



	while(currTslot<MAXTSLOT){
		cout<<"\n\t====================================   TIME SLOT :  "<<currTslot<<"   ====================================\n"<<endl;

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
				SubTopoGenerator::generateSubTopo(switchVect, linkVect, currTslot);
			}
		if(updateCurrAloc)
			UpdateNetState::updateVlinks(currTslot, currPathsMmap);	// Updating vLinks in f15_ctrlUpdatedEmbedding file

	/* 5. If ctrlReroute is FALSE,  Modify requests to treat unallocated virtual links as new requests*/
		//TODO: Implement resourceManager reallocation

	/* 6. Allocate Node and Link resources using Optimizer */
		if(embedding){
			char* f14_ph2RemovedAddedPaths;
			if(currTslot==0){
				//TrafficGenerator::generateInitTraffic();
				//NodeEmbedder::embedInitNodes();
			}
			else{
				TrafficGenerator::generatePeriodicTraffic(currTslot);
				NodeEmbedder::embedPeriodicNodes(currTslot, bkup);
			}
			// Link embedding Works with both init and periodic
			if(bkup==0)f14_ph2RemovedAddedPaths = LinkEmbedder::embedPeriodicLinks(currTslot);		// Embedding without backup paths
			else if(bkup==1)f14_ph2RemovedAddedPaths = LinkEmbedder::embedLinks_SlrgBkup(currTslot);	// Embeding with SLRG aware backups
			else if(bkup==2)f14_ph2RemovedAddedPaths = LinkEmbedder::embedLinks_SharedBkup(currTslot);	// Embedding with shared backups

			if(deployOnNet)SdnCtrlClient::addRemovePaths(f14_ph2RemovedAddedPaths);
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
