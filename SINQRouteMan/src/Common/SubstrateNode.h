/*
 * SubstrateNode.h
 * A Structure to Define a Node in Original Graph
 *
 *  Created on: Feb 5, 2016
 *      Author: openstack
 */

#ifndef TRAFFICGENERATOR_SUBSTRATENODE_H_
#define TRAFFICGENERATOR_SUBSTRATENODE_H_

#include "ConstantsCOMMON.h"
#include <map>

class SubstrateNode {
private:
	IloInt Node_Id;
	int Arc_List[MAX_SIZE];             // list of incomming/outgoing links in original graph
	int Node_Adjacent_Table[MAX_SIZE];     // list of adjacents nodes in original graph
	std::map<IloInt, IloNum> adjNodeCostMap;
public:
	SubstrateNode();
	virtual ~SubstrateNode();

	void setNodeId(IloInt n);
	IloInt GetNode_Id();
	void setLinkAry(IloNumArray& Arc_tab);
	void  GetArc_List(IloNumArray& Arc_tab);
	void SetNode_Adjacent_Table( IloNumArray& SAdj_Tab);
	void getAdjNodeArray(IloNumArray& GAdj_Tab);
	void setAdjNodeCostMap(std::map<IloInt, IloNum> adjNodeCostMap);
	std::map<IloInt, IloNum> getAdjNodeCostMap();
};

#endif /* TRAFFICGENERATOR_SUBSTRATENODE_H_ */
