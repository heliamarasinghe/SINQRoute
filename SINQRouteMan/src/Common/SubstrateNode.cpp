/*
 * SubstrateNode.cpp
 * A Structure to Define a Node in Original Graph
 *
 *  Created on: Feb 5, 2016
 *      Author: openstack
 */

#include "SubstrateNode.h"

SubstrateNode::SubstrateNode() {
	IloInt j;
	snodeId = 0;

	for(j=0;j<MAX_SIZE;j++)
	{
		adjSlinkAry[j]=0;
		adjSnodeAry[j]=0;
	}//

}

SubstrateNode::~SubstrateNode() {
	// TODO Auto-generated destructor stub
}


void SubstrateNode::setSnodeId(IloInt n)
{
	snodeId = n;
}
IloInt SubstrateNode::getSnodeId()
{
	return snodeId;
}

void SubstrateNode::setConSlinkAry(IloNumArray& Arc_tab)
{
	IloInt i;
	for(i=0;i<MAX_SIZE;i++)
		adjSlinkAry[i]=(int) Arc_tab[i];

}
void  SubstrateNode::getConSlinkAry(IloNumArray& Arc_tab)
{
	IloInt i;
	for(i=0;i<MAX_SIZE;i++)
		Arc_tab[i]= adjSlinkAry[i];
}

void SubstrateNode::setAdjSnodeAry( IloNumArray& SAdj_Tab)
{
	IloInt j;
	for(j=0;j<MAX_SIZE;j++)
		adjSnodeAry[j]= (int) SAdj_Tab[j];

}
void SubstrateNode::getAdjSnodeAry(IloNumArray& GAdj_Tab)
{
	IloInt i;
	for(i=0;i<MAX_SIZE;i++)
		GAdj_Tab[i]= adjSnodeAry[i];
}

//adjSnodeToSlinkMap
void SubstrateNode::setAdjSnodeToSlinkMap(std::map<IloInt, IloInt> adjSnodeToSlinkMap){
	this->adjSnodeToSlinkMap = adjSnodeToSlinkMap;
}
std::map<IloInt, IloInt> SubstrateNode::getAdjSnodeToSlinkMap(){
	return this->adjSnodeToSlinkMap;
}

//ConSlinkCostMap
void SubstrateNode::setConSlinkCostMap(std::map<IloInt, IloNum> conSlinkCostMap){
	this->conSlinkCostMap = conSlinkCostMap;
}
std::map<IloInt, IloNum> SubstrateNode::getConSlinkCostMap(){
	return this->conSlinkCostMap;
}