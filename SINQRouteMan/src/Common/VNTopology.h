/*
 * VNTopology.h
 *
 *  Created on: Feb 26, 2016
 *      Author: openstack
 */

#ifndef TRAFFICGENERATOR_VNTOPOLOGY_H_
#define TRAFFICGENERATOR_VNTOPOLOGY_H_

#include "ConstantsCOMMON.h"

class VN_Topology {
private:
	IloInt VNP_Id;
	IloInt NB_Nodes;
    IloInt NB_Links;
	IloInt Period;
public:
	VN_Topology();
	virtual ~VN_Topology();
	void SetVNP_Id(IloInt l);
	IloInt GetVNP_Id();

	void SetNB_Nodes(IloInt n);
	IloInt GetNB_Nodes();

	void SetNB_Links(IloInt l);
	IloInt GetNB_Links();

	void SetPeriod(IloInt p);
	IloInt GetPeriod();
};

#endif /* TRAFFICGENERATOR_VNTOPOLOGY_H_ */
