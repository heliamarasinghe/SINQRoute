/*
 * VNRequestTopology.h
 *Structure to Represent a link in Original Graph
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */

#ifndef COMPUTENODEEMBEDDER_VNREQUESTTOPOLOGY_H_
#define COMPUTENODEEMBEDDER_VNREQUESTTOPOLOGY_H_

#include "ConstantsCOMMON.h"

class VN_Request_Topology
{
 private:
 IloInt VLink_Number;
 IloInt VNode_Number;
 IloInt VNP_Id;
 public:

 VN_Request_Topology();

 IloInt GetVLink_Number();
 void SetVLink_Number(IloInt arc);

 IloInt GetVNode_Number();
 void SetVNode_Number(IloInt s);

 IloInt GetVNP_Id();
 void SetVNP_Id(IloInt d);
};

#endif /* COMPUTENODEEMBEDDER_VNREQUESTTOPOLOGY_H_ */
