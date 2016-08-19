/*
 * VNRequestTopology.cpp
 * Structure to Represent a link in Original Graph
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */
#include "VNRequestTopology.h"

VN_Request_Topology::VN_Request_Topology()
 {
  VLink_Number=0;
  VNode_Number=0;
  VNP_Id=0;
 }

 IloInt VN_Request_Topology::GetVLink_Number()
 {
	 return VLink_Number;
 }

 void VN_Request_Topology::SetVLink_Number(IloInt arc)
 {
	 VLink_Number=arc;
 }

 IloInt VN_Request_Topology::GetVNode_Number()
 {
	 return VNode_Number;
 }

 void VN_Request_Topology::SetVNode_Number(IloInt s)
 {
	 VNode_Number=s;
 }

 IloInt VN_Request_Topology::GetVNP_Id()
 {
	 return VNP_Id;
 }

 void VN_Request_Topology::SetVNP_Id(IloInt d)
 {
	 VNP_Id=d;
 }
