/*
 * LinkQoSClass.h
 * A Structure to Represent Link Classes of service
 *
 *  Created on: Feb 6, 2016
 *      Author: openstack
 */

#ifndef TRAFFICGENERATOR_LINKQOSCLASS_H_
#define TRAFFICGENERATOR_LINKQOSCLASS_H_

#include "ConstantsCOMMON.h"

class LinkQoSClass {
	// QoS Class to Bandwidth (Mbps) map
	// 1		10
	// 2		20
	// 3		30
	// 4		40
	// 5		50
private:
	IloInt QoS_Class_Id;
	IloInt QoS_Class_Bandwidth;
	IloInt QoS_Class_Max_Hops;
public:
	LinkQoSClass();
	virtual ~LinkQoSClass();

	IloInt GetQoS_Class_Id();
	void SetQoS_Class_Id(IloInt class_id);

	IloInt getQosClsBw();
	void SetQoS_Class_Bandwidth(IloInt bw);

	IloInt GetQoS_Class_Max_Hops();
	void SetQoS_Class_Max_Hops(IloInt h);
};

#endif /* TRAFFICGENERATOR_LINKQOSCLASS_H_ */
