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


class SubstrateNode {
private:
	IloInt snodeId;
	int adjSlinkAry[MAX_SIZE];             // list of incomming/outgoing links in original graph
	int adjSnodeAry[MAX_SIZE];     // list of adjacents nodes in original graph
	std::map<IloInt, IloInt> adjSnodeToSlinkMap;
	std::map<IloInt, IloNum> conSlinkCostMap;
public:
	SubstrateNode();
	virtual ~SubstrateNode();

	void setSnodeId(IloInt n);
	IloInt getSnodeId();
	void setConSlinkAry(IloNumArray& slinkAry);		//Connected substrate links to this node
	void getConSlinkAry(IloNumArray& slinkAry);
	void setAdjSnodeAry( IloNumArray& snodeAry);	//Adjacent substrate nodes to this node
	void getAdjSnodeAry(IloNumArray& snodeAry);

	//To conveniently map adjacent Snodes with Slinks goes to them
	void setAdjSnodeToSlinkMap(std::map<IloInt, IloInt> adjNodeCostMap);
	std::map<IloInt, IloInt> getAdjSnodeToSlinkMap();

	// For backup link costs (beta values)
	void setConSlinkCostMap(std::map<IloInt, IloNum> adjNodeCostMap);
	std::map<IloInt, IloNum> getConSlinkCostMap();
};

#endif /* TRAFFICGENERATOR_SUBSTRATENODE_H_ */
