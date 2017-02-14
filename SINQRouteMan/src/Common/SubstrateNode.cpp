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
	Node_Id = 0;

	for(j=0;j<MAX_SIZE;j++)
	{
		Arc_List[j]=0;
		Node_Adjacent_Table[j]=0;
	}//

}

SubstrateNode::~SubstrateNode() {
	// TODO Auto-generated destructor stub
}


void SubstrateNode::setNodeId(IloInt n)
{
	Node_Id = n;
}
IloInt SubstrateNode::GetNode_Id()
{
	return Node_Id;
}

void SubstrateNode::setLinkAry(IloNumArray& Arc_tab)
{
	IloInt i;
	for(i=0;i<MAX_SIZE;i++)
		Arc_List[i]=(int) Arc_tab[i];

}
void  SubstrateNode::GetArc_List(IloNumArray& Arc_tab)
{
	IloInt i;
	for(i=0;i<MAX_SIZE;i++)
		Arc_tab[i]= Arc_List[i];
}

void SubstrateNode::SetNode_Adjacent_Table( IloNumArray& SAdj_Tab)
{
	IloInt j;
	for(j=0;j<MAX_SIZE;j++)
		Node_Adjacent_Table[j]= (int) SAdj_Tab[j];

}
void SubstrateNode::getAdjNodeArray(IloNumArray& GAdj_Tab)
{
	IloInt i;
	for(i=0;i<MAX_SIZE;i++)
		GAdj_Tab[i]= Node_Adjacent_Table[i];
}
void SubstrateNode::setAdjNodeCostMap(std::map<IloInt, IloNum> adjNodeCostMap){
	this->adjNodeCostMap = adjNodeCostMap;
}
std::map<IloInt, IloNum> SubstrateNode::getAdjNodeCostMap(){
	return this->adjNodeCostMap;
}