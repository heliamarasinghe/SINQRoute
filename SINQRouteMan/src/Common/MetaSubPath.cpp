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
	Meta_substrate_path_Id = 0;
	Src_path=0;
	Dest_path=0;
	Virtual_Link_Id=0;
	VNP_Id=0;
	Candidate_Embdding_Nodes_Id=0;
	NB_Hops = 0;

	for(k=0;k<MAX_SIZE;k++)
	{
		Used_Node_Tab[k]=0;
		Used_Arc_Tab[k]=0;
	}

}

MetaSubPath::~MetaSubPath() {
	// TODO Auto-generated destructor stub
}

void MetaSubPath::setMetaSubPathId(IloInt n)
{
	Meta_substrate_path_Id=n;
}
IloInt MetaSubPath::getCandidShortestPathId()
{
	return Meta_substrate_path_Id;
}

void MetaSubPath::setMetaSubPathSrc(IloInt s)
{
	Src_path = s;
}

IloInt MetaSubPath::getSrcSnodeOfPath()
{
	return Src_path;
}

void MetaSubPath::setMetaSubPathDst(IloInt d)
{
	Dest_path = d;
}

IloInt MetaSubPath::getDestSnodeOfPath()
{
	return Dest_path;
}


void MetaSubPath::setMetaSubPathVlinkId(IloInt id)
{
	Virtual_Link_Id=id;
}

IloInt MetaSubPath::getCorrespVlinkId()
{
	return Virtual_Link_Id;
}

void MetaSubPath::setMetaSubPathVnpId(IloInt id)
{
	VNP_Id=id;
}

IloInt MetaSubPath::GetVNP_Id()
{
	return VNP_Id;
}

void MetaSubPath::setMetaSubPathReqId(IloInt id)
{
	Candidate_Embdding_Nodes_Id=id;
}

IloInt MetaSubPath::getCandidSnodeCombiId()
{
	return Candidate_Embdding_Nodes_Id;
}

void MetaSubPath::SetNB_Hops(IloInt h)
{
	NB_Hops=h;
}

IloInt MetaSubPath::getNumOfHopsInShortestPath()
{
	return NB_Hops;
}

void MetaSubPath::SetUsed_Node_Tab(IloNumArray& node_tab)
{
	IloInt i;
	for(i=0;i<MAX_SIZE;i++)
		Used_Node_Tab[i]=(int)node_tab[i];
}

void MetaSubPath::getUsedSnodeAry(IloNumArray& node_used_tab)
{
	IloInt i;
	for(i=0;i<MAX_SIZE;i++)
		node_used_tab[i]= Used_Node_Tab[i];
}

void MetaSubPath::SetUsed_Arc_Tab(IloNumArray& arc_tab)
{
	IloInt i;
	for(i=0;i<MAX_SIZE;i++)
		Used_Arc_Tab[i]=(int)arc_tab[i];
}

void MetaSubPath::getUsedSlinkAry(IloNumArray& arc_used_tab)
{
	IloInt i;
	for(i=0;i<MAX_SIZE;i++)
		arc_used_tab[i]= Used_Arc_Tab[i];
}




