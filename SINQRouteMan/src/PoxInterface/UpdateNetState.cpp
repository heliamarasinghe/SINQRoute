/*
 * UpdateNetState.cpp
 *
 *  Created on: Aug 9, 2016
 *      Author: openstack
 */

#include "UpdateNetState.h"
void UpdateNetState::updateVlinks(int currTslot, multimap <string, Path> currPathsMmap){
	cout<<"\tUpdating Vlinks fron current NetState"<<endl;
	int prevTslot = currTslot - 1;

	// Input file
	char prv_f11_ph2EmbeddedVnodes[50];
	snprintf(prv_f11_ph2EmbeddedVnodes, sizeof(char) * 50, "DataFiles/t%i/f11_ph2EmbeddedVnodes.txt", prevTslot);	// currTslot/f11_ph2EmbeddedVnodes.txt

	// Output file
	char f15_ctrlUpdatedEmbedding[50];
	snprintf(f15_ctrlUpdatedEmbedding, sizeof(char) * 50, "DataFiles/t%i/f15_ctrlUpdatedEmbedding.txt", currTslot);


	ifstream in_f11(prv_f11_ph2EmbeddedVnodes);
	if (!in_f11)
		cerr << "ERROR: could not open input file "<< prv_f11_ph2EmbeddedVnodes <<"for reading"<< endl;

	ofstream out_f15(f15_ctrlUpdatedEmbedding);
	if (!out_f15)
		cerr << "ERROR: could not open output file "<< f15_ctrlUpdatedEmbedding<< "for writing"<< endl;

	IloInt numNodes;
	in_f11>>numNodes;
	out_f15<<numNodes<<endl;



	for(int i=0;i<numNodes;i++){
		int vnode, vnp_id, snode, cls, period;
		in_f11>>vnode>>vnp_id>>snode>>cls>>period;
		out_f15<<vnode<<"\t"<<vnp_id<<"\t"<<snode<<"\t"<<cls<<"\t"<<period<<endl;
	}

	IloInt numVlinks;
	in_f11>>numVlinks;
	out_f15<<numVlinks<<endl;

//	multimap <string, Path>::iterator itr;
//	for (itr = currPathsMmap.begin();itr != currPathsMmap.end();++itr){
//		cout << itr->first << '\t' << itr->second.qos << '\t';
//		for(int node : itr->second.nodesVect)
//			cout<<node<<" ";
//		cout<<endl;
//	}

	//multimap <string, Path> prevPathsMap;

	for(int i=0;i<numVlinks;i++){
		int prevSrc, prevDest, cls, vnp_id, virtual_link_id, virtual_link_profit, cost, period;
		in_f11>>prevSrc>>prevDest>>cls>>vnp_id>>virtual_link_id>>virtual_link_profit>>cost>>period;
		out_f15<<prevSrc<<endl<<prevDest<<endl<<cls<<endl<<vnp_id<<endl<<virtual_link_id<<endl<<virtual_link_profit<<endl<<cost<<endl<<period<<endl;

		stringstream ssVnpId;
		ssVnpId<<period<<"-"<<vnp_id;
		string vnpId = ssVnpId.str();

		Path prevPath;
		prevPath.qos = cls;

		int nxtNode;
		in_f11>>nxtNode;

		while (nxtNode != 0){
			prevPath.nodesVect.push_back(nxtNode);
			in_f11>>nxtNode;
		}

		Path newPath;
		bool pathFound = false;
		bool inverted = false;

		std::pair <std::multimap<string,Path>::iterator, std::multimap<string,Path>::iterator> ret;
		ret = currPathsMmap.equal_range(vnpId);
		for (std::multimap<string,Path>::iterator it=ret.first; it!=ret.second; ++it){
			int curPthSrc = it->second.nodesVect[0];
			int curPthDst = it->second.nodesVect.back();
			if(curPthSrc == prevSrc && curPthDst == prevDest){
				newPath = it->second;
				pathFound = true;
				break;
			}
			else if(curPthSrc == prevDest && curPthDst == prevSrc){
				newPath = it->second;
				pathFound = true;
				inverted = true;
				break;
			}
		}

		if(pathFound){
			if(inverted){
				for(int i = newPath.nodesVect.size(); i>0; i--){
					out_f15<<newPath.nodesVect[i-1]<<" ";
				}
			}
			else
				for(int newNode: newPath.nodesVect){
					out_f15<<newNode<<" ";

					//cout<<"\tNew path found";
				}
			out_f15<<0<<endl;
		}
		if(!pathFound){
			out_f15<<"0 0 0"<<endl;
			cout<<"\tPath NOT found for \t";
			for(int prvNode: prevPath.nodesVect){
				cout<<prvNode<<" ";
			}
			cout<<endl;
		}


		vector<int> prevLinksInVlink;
		int nxtLink;
		in_f11>>nxtLink;
		out_f15<<nxtLink<<" ";
		while (nxtLink != 0){
			prevLinksInVlink.push_back(nxtLink);
			in_f11>>nxtLink;
			out_f15<<nxtLink<<" ";		// we want to print 0 at the end too
		}
		out_f15<<endl;
	}

	in_f11.close();
	out_f15.close();
}
