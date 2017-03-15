/*
 * VirtualLinkRequest.h
 * A structure to Read the VNP Requests
 *
 *  Created on: Feb 6, 2016
 *      Author: openstack
 */

#ifndef TRAFFICGENERATOR_VIRTUALLINKREQUEST_H_
#define TRAFFICGENERATOR_VIRTUALLINKREQUEST_H_

#include "ConstantsCOMMON.h"

class VlinkRequest {
private:
	IloInt Virtual_Link_Source;
	IloInt Virtual_Link_Destination;
	IloInt Virtual_Link_Id;
	IloInt Class_QoS;
	IloInt VNP_Id;
	IloInt Bid;
	IloInt Period;
	int Candidate_Location_Tab[MAX_NB_LOCATION];
	//IloNum thetaMat[][];


public:
	VlinkRequest();
	virtual ~VlinkRequest();

	IloInt getSrcVnode();
	void setSrcVnode(IloInt s);

	IloInt getDestVnode();
	void setDestVnode(IloInt d);

	void setVlinkId(IloInt id);
	IloInt getVlinkId();

	void setVlinkQosCls(IloInt cls);
	IloInt getVlinkQosCls();

	void setVnpId(IloInt vpn);
	IloInt getVnpId();

	void SetBid(IloInt b);
	IloInt getBid();

	void SetPeriod(IloInt p);
	IloInt getPeriod();

	void SetCandidate_Location_Tab(IloNumArray& node_tab);
	void GetCandidate_Location_Tab(IloNumArray& node_tab);

	//void setDeltaMat(IloNum deltaMat[MAX_SIZE][MAX_SIZE]);
	//void getDeltaMat(IloNum deltaMat[MAX_SIZE][MAX_SIZE]);
};

#endif /* TRAFFICGENERATOR_VIRTUALLINKREQUEST_H_ */
