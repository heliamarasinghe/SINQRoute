/*
 * SubstrateLink.cpp
 * Structure to Represent a link in Original Graph
 *
 *  Created on: Feb 5, 2016
 *      Author: openstack
 */

#include "SubstrateLink.h"

Substrate_Link::Substrate_Link() {
	Arc_Num=0;
	Arc_Source=0;
	Arc_Destination=0;

}

Substrate_Link::~Substrate_Link() {
	// TODO Auto-generated destructor stub
}

IloInt Substrate_Link::GetArc_Num()
{
	return Arc_Num;
}

void Substrate_Link::SetArc_Num(IloInt arc)
{
	Arc_Num=arc;
}

IloInt Substrate_Link::GetArc_Source()
{
	return Arc_Source;
}

void Substrate_Link::SetArc_Source(IloInt s)
{
	Arc_Source=s;
}

IloInt Substrate_Link::GetArc_Destination()
{
	return Arc_Destination;
}

void Substrate_Link::SetArc_Destination(IloInt d)
{
	Arc_Destination=d;
}
