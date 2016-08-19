/*
 * VNTopology.cpp
 *
 *  Created on: Feb 26, 2016
 *      Author: openstack
 */

#include "VNTopology.h"

  VN_Topology::VN_Topology()
  {
    VNP_Id=0;
	NB_Nodes=0;
    NB_Links=0;
	Period=0;

 }

VN_Topology::~VN_Topology() {
	// TODO Auto-generated destructor stub
}

void VN_Topology::SetVNP_Id(IloInt l)
{
	VNP_Id = l;
}
IloInt VN_Topology::GetVNP_Id()
{
	return VNP_Id;
}

void VN_Topology::SetNB_Nodes(IloInt n)
{
	NB_Nodes = n;
}
IloInt VN_Topology::GetNB_Nodes()
{
	return NB_Nodes;
}

void VN_Topology::SetNB_Links(IloInt l)
{
	NB_Links = l;
}
IloInt VN_Topology::GetNB_Links()
{
	return NB_Links;
}

void VN_Topology::SetPeriod(IloInt p)
{
	Period = p;
}
IloInt VN_Topology::GetPeriod()
{
	return Period;
}
