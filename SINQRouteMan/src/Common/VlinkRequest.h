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
	IloInt numAcbkPairs;
	int acbkPairYindxAry[(ACTV_PER_VL*BKUP_PER_ACTV)];	// yIndxAry of active/backup pairs calculated for this vlink
	//int acbkPairYindxAry[(MAX_SIZE*MAX_SIZE)];
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

	void setNumAcbkPairs(IloInt numPairs);
	IloInt getNumAcbkPairs();

	// yIndxAry of active/backup pairs calculated for this vlink
	void setAcbkPairYindxAry(IloNumArray& yIndxAry);
	void getAcbkPairYindxAry(IloNumArray& yIndxAry);

	//void setDeltaMat(IloNum deltaMat[MAX_SIZE][MAX_SIZE]);
	//void getDeltaMat(IloNum deltaMat[MAX_SIZE][MAX_SIZE]);
};

#endif /* TRAFFICGENERATOR_VIRTUALLINKREQUEST_H_ */
