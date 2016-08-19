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

class Substrate_Link {
private:
	IloInt Arc_Num;
	IloInt Arc_Source;
	IloInt Arc_Destination;

public:
	Substrate_Link();
	virtual ~Substrate_Link();

	IloInt GetArc_Num();
	void SetArc_Num(IloInt arc);
	IloInt GetArc_Source();
	void SetArc_Source(IloInt s);
	IloInt GetArc_Destination();
	void SetArc_Destination(IloInt d);

};

#endif /* TRAFFICGENERATOR_SUBSTRATELINK_H_ */
