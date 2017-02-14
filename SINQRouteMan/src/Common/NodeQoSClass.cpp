/*
 * NodeQoSClass.cpp
 * A structure to Read Node QoS classes of service
 *
 *  Created on: Feb 6, 2016
 *      Author: openstack
 */

#include "NodeQoSClass.h"

NodeQoSClass::NodeQoSClass() {
	Node_QoS_Class_Id=0;
	Required_CPU=0;
	Required_GPU=0;
	Required_Memory=0;
	Required_Storage=0;
	Required_Blade=0;
	IloInt i=0;
	for(i=0;i<MAX_NB_LOCATION;i++)
		Node_Location_Tab[i]=0;

}

NodeQoSClass::~NodeQoSClass() {
	// TODO Auto-generated destructor stub
}

IloInt NodeQoSClass::Get_Node_QoS_Class_Id()
{
	return Node_QoS_Class_Id;
}
void NodeQoSClass::SetNode_QoS_Class_Id(IloInt s)
{
	Node_QoS_Class_Id=s;
}

IloInt NodeQoSClass::getVnodeCpuReq()
{
	return Required_CPU;
}
void NodeQoSClass::SetRequired_CPU(IloInt d)
{
	Required_CPU=d;
}

IloInt NodeQoSClass::GetRequired_GPU()
{
	return Required_GPU;
}
void NodeQoSClass::SetRequired_GPU(IloInt d)
{
	Required_GPU=d;
}

IloInt NodeQoSClass::getVnodeMemReq()
{
	return Required_Memory;
}
void NodeQoSClass::SetRequired_Memory(IloInt d)
{
	Required_Memory=d;
}

IloInt NodeQoSClass::getVnodeStoReq()
{
	return Required_Storage;
}
void NodeQoSClass::SetRequired_storage(IloInt d)
{
	Required_Storage=d;
}

IloInt NodeQoSClass::GetRequired_Blade()
{
	return Required_Blade;
}
void NodeQoSClass::SetRequired_Blade(IloInt d)
{
	Required_Blade=d;
}


void NodeQoSClass::SetNode_Location_Tab(IloNumArray& node_tab)
{
	IloInt i;
	for(i=0;i<MAX_NB_LOCATION;i++)
		Node_Location_Tab[i]=(int)node_tab[i];
}

void NodeQoSClass::GetNode_Location_Tab(IloNumArray& node_tab)
{
	IloInt i;
	for(i=0;i<MAX_NB_LOCATION;i++)
		node_tab[i]= Node_Location_Tab[i];
}
