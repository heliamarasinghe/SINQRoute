/*
 * RESRANGECOST.cpp
 *
 *  Created on: Feb 26, 2016
 *      Author: openstack
 */

#include "ResRangeCost.h"

RES_RANGE_COST::RES_RANGE_COST()
{
	LBR=0;
	UBR=0;
	UNIT_COST=0;

}

RES_RANGE_COST::~RES_RANGE_COST() {
	// TODO Auto-generated destructor stub
}

void RES_RANGE_COST::SetLBR(IloInt l)
{
	LBR = l;
}
IloInt RES_RANGE_COST::GetLBR()
{
	return LBR;
}

void RES_RANGE_COST::SetUBR(IloInt u)
{
	UBR = u;
}
IloInt RES_RANGE_COST::GetUBR()
{
	return UBR;
}

void RES_RANGE_COST::SetUNIT_COST(IloInt c)
{
	UNIT_COST = c;
}
IloInt RES_RANGE_COST::GetUNIT_COST()
{
	return UNIT_COST;
}
