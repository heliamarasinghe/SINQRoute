/*
 * SubstrateNode.cpp
 * A Structure to Define a Node in Original Graph
 *
 *  Created on: Feb 5, 2016
 *      Author: openstack
 */

#include "SubstrateNode.h"

Substrate_Node::Substrate_Node() {
	IloInt j;
	Node_Id = 0;

	for(j=0;j<MAX_SIZE;j++)
	{
		Arc_List[j]=0;
		Node_Adjacent_Table[j]=0;
	}

}

Substrate_Node::~Substrate_Node() {
	// TODO Auto-generated destructor stub
}


void Substrate_Node::SetNode_Id(IloInt n)
{
	Node_Id = n;
}
IloInt Substrate_Node::GetNode_Id()
{
	return Node_Id;
}

void Substrate_Node::SetArc_List(IloNumArray& Arc_tab)
{
	IloInt i;
	for(i=0;i<MAX_SIZE;i++)
		Arc_List[i]=(int) Arc_tab[i];

}
void  Substrate_Node::GetArc_List(IloNumArray& Arc_tab)
{
	IloInt i;
	for(i=0;i<MAX_SIZE;i++)
		Arc_tab[i]= Arc_List[i];
}

void Substrate_Node::SetNode_Adjacent_Table( IloNumArray& SAdj_Tab)
{
	IloInt j;
	for(j=0;j<MAX_SIZE;j++)
		Node_Adjacent_Table[j]= (int) SAdj_Tab[j];

}
void Substrate_Node::GetNode_Adjacent_Table(IloNumArray& GAdj_Tab)
{
	IloInt i;
	for(i=0;i<MAX_SIZE;i++)
		GAdj_Tab[i]= Node_Adjacent_Table[i];
}
