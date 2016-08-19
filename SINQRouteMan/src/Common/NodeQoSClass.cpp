/*
 * NodeQoSClass.cpp
 * A structure to Read Node QoS classes of service
 *
 *  Created on: Feb 6, 2016
 *      Author: openstack
 */

#include "NodeQoSClass.h"

Node_QoS_Class::Node_QoS_Class() {
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

Node_QoS_Class::~Node_QoS_Class() {
	// TODO Auto-generated destructor stub
}

IloInt Node_QoS_Class::Get_Node_QoS_Class_Id()
{
	return Node_QoS_Class_Id;
}
void Node_QoS_Class::SetNode_QoS_Class_Id(IloInt s)
{
	Node_QoS_Class_Id=s;
}

IloInt Node_QoS_Class::getVnodeCpuReq()
{
	return Required_CPU;
}
void Node_QoS_Class::SetRequired_CPU(IloInt d)
{
	Required_CPU=d;
}

IloInt Node_QoS_Class::GetRequired_GPU()
{
	return Required_GPU;
}
void Node_QoS_Class::SetRequired_GPU(IloInt d)
{
	Required_GPU=d;
}

IloInt Node_QoS_Class::getVnodeMemReq()
{
	return Required_Memory;
}
void Node_QoS_Class::SetRequired_Memory(IloInt d)
{
	Required_Memory=d;
}

IloInt Node_QoS_Class::getVnodeStoReq()
{
	return Required_Storage;
}
void Node_QoS_Class::SetRequired_storage(IloInt d)
{
	Required_Storage=d;
}

IloInt Node_QoS_Class::GetRequired_Blade()
{
	return Required_Blade;
}
void Node_QoS_Class::SetRequired_Blade(IloInt d)
{
	Required_Blade=d;
}


void Node_QoS_Class::SetNode_Location_Tab(IloNumArray& node_tab)
{
	IloInt i;
	for(i=0;i<MAX_NB_LOCATION;i++)
		Node_Location_Tab[i]=(int)node_tab[i];
}

void Node_QoS_Class::GetNode_Location_Tab(IloNumArray& node_tab)
{
	IloInt i;
	for(i=0;i<MAX_NB_LOCATION;i++)
		node_tab[i]= Node_Location_Tab[i];
}
