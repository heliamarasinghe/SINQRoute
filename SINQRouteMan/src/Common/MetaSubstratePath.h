/*
 * MetaSubstratePath.h
 * A substrate path for each link belonging to each virtual network
 *
 *  Created on: Feb 5, 2016
 *      Author: openstack
 */

#ifndef TRAFFICGENERATOR_METASUBSTRATEPATH_H_
#define TRAFFICGENERATOR_METASUBSTRATEPATH_H_

#include "ConstantsCOMMON.h"

class Meta_Substrate_Path {
private:
	IloInt Meta_substrate_path_Id;
	IloInt Src_path;
	IloInt Dest_path;
	IloInt Virtual_Link_Id;
	IloInt VNP_Id;
	IloInt Candidate_Embdding_Nodes_Id;
	IloInt NB_Hops;

	int Used_Node_Tab[MAX_SIZE];
	int Used_Arc_Tab[MAX_SIZE];

public:
	Meta_Substrate_Path();
	virtual ~Meta_Substrate_Path();

	void setMetaSubPathId(IloInt n);
	IloInt getCandidShortestPathId();

	void setMetaSubPathSrc(IloInt s);
	IloInt getSrcSnodeOfPath();

	void setMetaSubPathDst(IloInt d);
	IloInt getDestSnodeOfPath();


	void setMetaSubPathVlinkId(IloInt id);
	IloInt getCorrespVlinkId();

	void setMetaSubPathVnpId(IloInt id);
	IloInt GetVNP_Id();

	void setMetaSubPathReqId(IloInt id);
	IloInt getCandidSnodeCombiId();

	 void SetNB_Hops(IloInt h);
	 IloInt getNumOfHopsInShortestPath();

	void SetUsed_Node_Tab(IloNumArray& node_tab);
	void GetUsed_Node_Tab(IloNumArray& node_used_tab);
	void SetUsed_Arc_Tab(IloNumArray& arc_tab);
	void GetUsed_Arc_Tab(IloNumArray& arc_used_tab);
};

#endif /* TRAFFICGENERATOR_METASUBSTRATEPATH_H_ */
