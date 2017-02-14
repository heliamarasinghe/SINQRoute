/*
 * VirtualNodeRequirement.h
 *  A structure to Read Candidates VN Locations
 *
 *  Created on: Feb 6, 2016
 *      Author: openstack
 */

#ifndef TRAFFICGENERATOR_VIRTUALNODEREQUIREMENT_H_
#define TRAFFICGENERATOR_VIRTUALNODEREQUIREMENT_H_

#include "ConstantsCOMMON.h"

class VnodeRequest {
private:

	IloInt Virtual_Node_Id;
	IloInt VNP_Id;
	IloInt QoS_Class;
	IloInt Period;
	int Candidate_Location_Tab[MAX_NB_LOCATION];
public:
	VnodeRequest();
	virtual ~VnodeRequest();

	IloInt GetVirtual_Node_Id();
	void SetVirtual_Node_Id(IloInt s);

	IloInt GetQoS_Class();
	void SetQoS_Class(IloInt q);

	void SetVNP_Id(IloInt vpn);
	IloInt GetVNP_Id();

	void SetPeriod(IloInt p);
	IloInt GetPeriod();

	void SetCandidate_Location_Tab(IloNumArray& node_tab);

	void GetCandidate_Location_Tab(IloNumArray& node_tab);
};

#endif /* TRAFFICGENERATOR_VIRTUALNODEREQUIREMENT_H_ */
