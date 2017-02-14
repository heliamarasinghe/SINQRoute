/*
 * LinkQoSClass.cpp
 * A Structure to Represent Link Classes of service
 *
 *  Created on: Feb 6, 2016
 *      Author: openstack
 */

#include "LinkQoSClass.h"

LinkQoSClass::LinkQoSClass() {
	QoS_Class_Id=0;
	QoS_Class_Bandwidth=0;
	QoS_Class_Max_Hops=0;

}

LinkQoSClass::~LinkQoSClass() {
	// TODO Auto-generated destructor stub
}

IloInt LinkQoSClass::GetQoS_Class_Id()
{
	return QoS_Class_Id;
}
void LinkQoSClass::SetQoS_Class_Id(IloInt class_id)
{
	QoS_Class_Id=class_id;
}

IloInt LinkQoSClass::getQosClsBw()
{
	return QoS_Class_Bandwidth;
}
void LinkQoSClass::SetQoS_Class_Bandwidth(IloInt bw)
{
	QoS_Class_Bandwidth=bw;
}

IloInt LinkQoSClass::GetQoS_Class_Max_Hops()
{
	return QoS_Class_Max_Hops;
}
void LinkQoSClass::SetQoS_Class_Max_Hops(IloInt h)
{
	QoS_Class_Max_Hops=h;
}
