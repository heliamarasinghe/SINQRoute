/*
 * RESRANGECOST.h
 *
 *  Created on: Feb 26, 2016
 *      Author: openstack
 */

#ifndef TRAFFICGENERATOR_RESRANGECOST_H_
#define TRAFFICGENERATOR_RESRANGECOST_H_

#include "ConstantsCOMMON.h"

class RES_RANGE_COST {
private:
	IloInt LBR;
	IloInt UBR;
	IloInt UNIT_COST;
public:
	RES_RANGE_COST();
	virtual ~RES_RANGE_COST();

	void SetLBR(IloInt l);
	IloInt GetLBR();

	void SetUBR(IloInt u);
	IloInt GetUBR();

	void SetUNIT_COST(IloInt c);
	IloInt GetUNIT_COST();
};

#endif /* TRAFFICGENERATOR_RESRANGECOST_H_ */
