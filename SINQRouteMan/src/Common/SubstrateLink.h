/*
 * SubstrateLink.h
 * Structure to Represent a link in Original Graph
 *
 *  Created on: Feb 5, 2016
 *      Author: openstack
 */

#ifndef TRAFFICGENERATOR_SUBSTRATELINK_H_
#define TRAFFICGENERATOR_SUBSTRATELINK_H_

#include <ilcplex/ilocplex.h>

class SubstrateLink {
private:
	IloInt slinkId;
	IloInt srcSnode;
	IloInt dstSnode;

public:
	SubstrateLink();
	virtual ~SubstrateLink();

	IloInt getSlinkId();
	void setSlinkId(IloInt arc);
	IloInt getSrcSnode();
	void setSrcSnode(IloInt s);
	IloInt getDstSnode();
	void setDstSnode(IloInt d);

};

#endif /* TRAFFICGENERATOR_SUBSTRATELINK_H_ */
