/*
 * SubstrateLink.cpp
 * Structure to Represent a link in Original Graph
 *
 *  Created on: Feb 5, 2016
 *      Author: openstack
 */

#include "SubstrateLink.h"

SubstrateLink::SubstrateLink() {
	slinkId=0;
	srcSnode=0;
	dstSnode=0;

}

SubstrateLink::~SubstrateLink() {
	// TODO Auto-generated destructor stub
}

IloInt SubstrateLink::getSlinkId()
{
	return slinkId;
}

void SubstrateLink::setSlinkId(IloInt arc)
{
	slinkId=arc;
}

IloInt SubstrateLink::getSrcSnode()
{
	return srcSnode;
}

void SubstrateLink::setSrcSnode(IloInt s)
{
	srcSnode=s;
}

IloInt SubstrateLink::getDstSnode()
{
	return dstSnode;
}

void SubstrateLink::setDstSnode(IloInt d)
{
	dstSnode=d;
}
