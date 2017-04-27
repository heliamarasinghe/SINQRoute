/*
 * VirtualLinkRequest.cpp
 * A structure to Read the VNP Requests
 *
 *  Created on: Feb 6, 2016
 *      Author: openstack
 */

#include "VlinkRequest.h"

VlinkRequest::VlinkRequest() {
	Virtual_Link_Source=0;
	Virtual_Link_Destination=0;
	Virtual_Link_Id=0;
	Class_QoS=0;
	VNP_Id=0;
	Bid=0;
	Period=0;
	numAcbkPairs = 0;
	for(IloInt i=0;i<(ACTV_PER_VL*BKUP_PER_ACTV);i++)
		acbkPairYindxAry[i]=0;

}

VlinkRequest::~VlinkRequest() {
	// TODO Auto-generated destructor stub
}

IloInt VlinkRequest::getSrcVnode()
{
	return Virtual_Link_Source;
}
void VlinkRequest::setSrcVnode(IloInt s)
{
	Virtual_Link_Source=s;
}

IloInt VlinkRequest::getDestVnode()
{
	return Virtual_Link_Destination;
}
void VlinkRequest::setDestVnode(IloInt d)
{
	Virtual_Link_Destination=d;
}

void VlinkRequest::setVlinkId(IloInt id)
{
	Virtual_Link_Id=id;
}
IloInt VlinkRequest::getVlinkId()
{
	return Virtual_Link_Id;
}

void VlinkRequest::setVlinkQosCls(IloInt cls)
{
	Class_QoS=cls;
}
IloInt VlinkRequest::getVlinkQosCls()
{
	return Class_QoS;
}

void VlinkRequest::setVnpId(IloInt vpn)
{
	VNP_Id=vpn;
}
IloInt VlinkRequest::getVnpId()
{
	return VNP_Id;
}

void VlinkRequest::SetBid(IloInt b)
{
	Bid=b;
}
IloInt VlinkRequest::getBid()
{
	return Bid;
}

void VlinkRequest::SetPeriod(IloInt p)
{
	Period=p;
}
IloInt VlinkRequest::getPeriod()
{
	return Period;
}

void VlinkRequest::setNumAcbkPairs(IloInt numPairs){
	numAcbkPairs= numPairs;
}
IloInt VlinkRequest::getNumAcbkPairs(){
	return numAcbkPairs;
}

void VlinkRequest::setAcbkPairYindxAry(IloNumArray& yIndxAry)
{
	for(IloInt i=0;i<(ACTV_PER_VL*BKUP_PER_ACTV);i++)
		acbkPairYindxAry[i]=yIndxAry[i];
}

void VlinkRequest::getAcbkPairYindxAry(IloNumArray& yIndxAry)
{
	for(IloInt i=0;i<(ACTV_PER_VL*BKUP_PER_ACTV);i++)
		yIndxAry[i]= acbkPairYindxAry[i];
}
