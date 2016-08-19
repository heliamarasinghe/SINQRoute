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

class Substrate_Node {
private:
	IloInt Node_Id;
	int Arc_List[MAX_INCIDENCE];             // list of incomming/outgoing links in original graph
	int Node_Adjacent_Table[MAX_INCIDENCE];     // list of adjacents nodes in original graph
public:
	Substrate_Node();
	virtual ~Substrate_Node();

	void SetNode_Id(IloInt n);
	IloInt GetNode_Id();
	void SetArc_List(IloNumArray& Arc_tab);
	void  GetArc_List(IloNumArray& Arc_tab);
	void SetNode_Adjacent_Table( IloNumArray& SAdj_Tab);
	void GetNode_Adjacent_Table(IloNumArray& GAdj_Tab);
};

#endif /* TRAFFICGENERATOR_SUBSTRATENODE_H_ */
