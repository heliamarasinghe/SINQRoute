/*
 * NodeQoSClass.h
 * A structure to Read Node QoS classes of service
 *
 *  Created on: Feb 6, 2016
 *      Author: openstack
 */

#ifndef TRAFFICGENERATOR_NODEQOSCLASS_H_
#define TRAFFICGENERATOR_NODEQOSCLASS_H_

#include "ConstantsCOMMON.h"

class NodeQoSClass {
private:

	IloInt Node_QoS_Class_Id;
	IloInt Required_CPU;
	IloInt Required_GPU;
	int Node_Location_Tab[MAX_NB_LOCATION];
	//Cloud variables
	IloInt Required_Memory;
	IloInt Required_Storage;
	IloInt Required_Blade;
public:
	NodeQoSClass();
	virtual ~NodeQoSClass();

	IloInt Get_Node_QoS_Class_Id();
	void SetNode_QoS_Class_Id(IloInt s);

	IloInt getVnodeCpuReq();
	void SetRequired_CPU(IloInt d);

	IloInt GetRequired_GPU();
	void SetRequired_GPU(IloInt d);

	IloInt getVnodeMemReq();
	void SetRequired_Memory(IloInt d);

	IloInt getVnodeStoReq();
	void SetRequired_storage(IloInt d);

	IloInt GetRequired_Blade();
	void SetRequired_Blade(IloInt d);


	void SetNode_Location_Tab(IloNumArray& node_tab);

	void GetNode_Location_Tab(IloNumArray& node_tab);
};

#endif /* TRAFFICGENERATOR_NODEQOSCLASS_H_ */
