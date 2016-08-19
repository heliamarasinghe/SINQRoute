/*
 * LinkQoSClass.cpp
 * A Structure to Represent Link Classes of service
 *
 *  Created on: Feb 6, 2016
 *      Author: openstack
 */

#include "LinkQoSClass.h"

Link_QoS_Class::Link_QoS_Class() {
	QoS_Class_Id=0;
	QoS_Class_Bandwidth=0;
	QoS_Class_Max_Hops=0;

}

Link_QoS_Class::~Link_QoS_Class() {
	// TODO Auto-generated destructor stub
}

IloInt Link_QoS_Class::GetQoS_Class_Id()
{
	return QoS_Class_Id;
}
void Link_QoS_Class::SetQoS_Class_Id(IloInt class_id)
{
	QoS_Class_Id=class_id;
}

IloInt Link_QoS_Class::GetQoS_Class_Bandwidth()
{
	return QoS_Class_Bandwidth;
}
void Link_QoS_Class::SetQoS_Class_Bandwidth(IloInt bw)
{
	QoS_Class_Bandwidth=bw;
}

IloInt Link_QoS_Class::GetQoS_Class_Max_Hops()
{
	return QoS_Class_Max_Hops;
}
void Link_QoS_Class::SetQoS_Class_Max_Hops(IloInt h)
{
	QoS_Class_Max_Hops=h;
}
