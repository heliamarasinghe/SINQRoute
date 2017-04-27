/*
 * MetaSubstratePath.cpp
 * A substrate path for each link belonging to each virtual network
 *
 *  Created on: Feb 5, 2016
 *      Author: openstack
 *
 *****************************************************************************************************************
                A substrate path for each link belonging to each virtual network                               *
 *****************************************************************************************************************
 */

#include "MetaSubPath.h"

MetaSubPath::MetaSubPath() {
	IloInt k;
	metaSpathId = 0;
	srcSnode=0;
	dstSnode=0;
	vlinkId=0;
	vnpId=0;
	pathReqId=0;
	numHops = 0;
	pathEpstinCost = 0.0;

	for(k=0;k<MAX_SIZE;k++)
	{
		usedSnodeAry[k]=0;
		usedSlinkAry[k]=0;
		bkSlBwUnitsReqAry[k] = 0.0;
	}

}

MetaSubPath::~MetaSubPath() {
	// TODO Auto-generated destructor stub
}

void MetaSubPath::setMetaSpathId(IloInt n)
{
	metaSpathId=n;
}
IloInt MetaSubPath::getMetaSpathId()
{
	return metaSpathId;
}

void MetaSubPath::setSrcSnode(IloInt s)
{
	srcSnode = s;
}

IloInt MetaSubPath::getSrcSnode()
{
	return srcSnode;
}

void MetaSubPath::setDstSnode(IloInt d)
{
	dstSnode = d;
}

IloInt MetaSubPath::getDstSnode()
{
	return dstSnode;
}


void MetaSubPath::setVlinkId(IloInt id)
{
	vlinkId=id;
}

IloInt MetaSubPath::getVlinkId()
{
	return vlinkId;
}

void MetaSubPath::setVnpId(IloInt id)
{
	vnpId=id;
}

IloInt MetaSubPath::getVnpId()
{
	return vnpId;
}

void MetaSubPath::setMetaSpathReqId(IloInt id)
{
	pathReqId=id;
}

IloInt MetaSubPath::getMetaSpathReqId()
{
	return pathReqId;
}

void MetaSubPath::setNumHops(IloInt h)
{
	numHops=h;
}

IloInt MetaSubPath::getNumHops()
{
	return numHops;
}

void MetaSubPath::setEpstinPathCost(IloNum cost){
	pathEpstinCost=cost;// This will return sum of slink cost considered in Eppstein shortest path algorithm
	// Value is meaningful only for backup paths. For active paths, cost of each link is one
}
IloNum MetaSubPath::getEpstinPathCost(){
	return pathEpstinCost;// This will return sum of slink cost considered in Eppstein shortest path algorithm
	// Value is meaningful only for backup paths. For active paths, cost of each link is one
}

void MetaSubPath::SetUsedSnodeAry(IloNumArray& node_tab)
{
	for(IloInt i=0;i<node_tab.getSize();i++)
		usedSnodeAry[i]=node_tab[i];
}

void MetaSubPath::getUsedSnodeAry(IloNumArray& node_used_tab)
{
	for(IloInt i=0;i<MAX_SIZE;i++)
		node_used_tab[i]= usedSnodeAry[i];
}

void MetaSubPath::setUsedSlinkAry(IloNumArray& arc_tab)
{
	for(IloInt i=0;i<MAX_SIZE;i++)
		usedSlinkAry[i]=(int)arc_tab[i];
}

void MetaSubPath::getUsedSlinkAry(IloNumArray& arc_used_tab){
	for(IloInt i=0;i<MAX_SIZE;i++)
		arc_used_tab[i]= usedSlinkAry[i];
}

void MetaSubPath::setBkSlBwUnitsReqAry(IloNumArray& bwUniReqAry){
	for(IloInt i=0;i<MAX_SIZE;i++)
		bkSlBwUnitsReqAry[i]=bwUniReqAry[i];
}

void MetaSubPath::getBkSlBwUnitsReqAry(IloNumArray& bwUniReqAry){
	for(IloInt i=0;i<MAX_SIZE;i++)
		bwUniReqAry[i]= bkSlBwUnitsReqAry[i];
}




