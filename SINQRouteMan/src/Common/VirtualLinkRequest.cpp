/*
 * VirtualLinkRequest.cpp
 * A structure to Read the VNP Requests
 *
 *  Created on: Feb 6, 2016
 *      Author: openstack
 */

#include "VirtualLinkRequest.h"

Virtual_Link_Request::Virtual_Link_Request() {
	Virtual_Link_Source=0;
	Virtual_Link_Destination=0;
	Virtual_Link_Id=0;
	Class_QoS=0;
	VNP_Id=0;
	Bid=0;
	Period=0;
	IloInt i=0;
	for(i=0;i<MAX_NB_LOCATION;i++)
		Candidate_Location_Tab[i]=0;

}

Virtual_Link_Request::~Virtual_Link_Request() {
	// TODO Auto-generated destructor stub
}

IloInt Virtual_Link_Request::getSrcVnode()
{
	return Virtual_Link_Source;
}
void Virtual_Link_Request::setSrcVnode(IloInt s)
{
	Virtual_Link_Source=s;
}

IloInt Virtual_Link_Request::getDestVnode()
{
	return Virtual_Link_Destination;
}
void Virtual_Link_Request::setDestVnode(IloInt d)
{
	Virtual_Link_Destination=d;
}

void Virtual_Link_Request::setVlinkId(IloInt id)
{
	Virtual_Link_Id=id;
}
IloInt Virtual_Link_Request::getVlinkId()
{
	return Virtual_Link_Id;
}

void Virtual_Link_Request::setVlinkQosCls(IloInt cls)
{
	Class_QoS=cls;
}
IloInt Virtual_Link_Request::getVlinkQosCls()
{
	return Class_QoS;
}

void Virtual_Link_Request::setVnpId(IloInt vpn)
{
	VNP_Id=vpn;
}
IloInt Virtual_Link_Request::getVnpId()
{
	return VNP_Id;
}

void Virtual_Link_Request::SetBid(IloInt b)
{
	Bid=b;
}
IloInt Virtual_Link_Request::GetBid()
{
	return Bid;
}

void Virtual_Link_Request::SetPeriod(IloInt p)
{
	Period=p;
}
IloInt Virtual_Link_Request::GetPeriod()
{
	return Period;
}

void Virtual_Link_Request::SetCandidate_Location_Tab(IloNumArray& node_tab)
{
	IloInt i;
	for(i=0;i<MAX_NB_LOCATION;i++)
		Candidate_Location_Tab[i]=(int)node_tab[i];
}

void Virtual_Link_Request::GetCandidate_Location_Tab(IloNumArray& node_tab)
{
	IloInt i;
	for(i=0;i<MAX_NB_LOCATION;i++)
		node_tab[i]= Candidate_Location_Tab[i];
}
