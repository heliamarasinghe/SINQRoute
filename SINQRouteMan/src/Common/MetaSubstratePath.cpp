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

#include "MetaSubstratePath.h"

Meta_Substrate_Path::Meta_Substrate_Path() {
	IloInt k;
	Meta_substrate_path_Id = 0;
	Src_path=0;
	Dest_path=0;
	Virtual_Link_Id=0;
	VNP_Id=0;
	Candidate_Embdding_Nodes_Id=0;
	NB_Hops = 0;

	for(k=0;k<MAX_INCIDENCE;k++)
	{
		Used_Node_Tab[k]=0;
		Used_Arc_Tab[k]=0;
	}

}

Meta_Substrate_Path::~Meta_Substrate_Path() {
	// TODO Auto-generated destructor stub
}

void Meta_Substrate_Path::SetMeta_substrate_path_Id(IloInt n)
{
	Meta_substrate_path_Id=n;
}
IloInt Meta_Substrate_Path::getCandidShortestPathId()
{
	return Meta_substrate_path_Id;
}

void Meta_Substrate_Path::SetSrc_path(IloInt s)
{
	Src_path = s;
}

IloInt Meta_Substrate_Path::getSrcSnodeOfPath()
{
	return Src_path;
}

void Meta_Substrate_Path::SetDest_path(IloInt d)
{
	Dest_path = d;
}

IloInt Meta_Substrate_Path::getDestSnodeOfPath()
{
	return Dest_path;
}


void Meta_Substrate_Path::SetVirtual_Link_Id(IloInt id)
{
	Virtual_Link_Id=id;
}

IloInt Meta_Substrate_Path::getCorrespVlinkId()
{
	return Virtual_Link_Id;
}

void Meta_Substrate_Path::SetVNP_Id(IloInt id)
{
	VNP_Id=id;
}

IloInt Meta_Substrate_Path::GetVNP_Id()
{
	return VNP_Id;
}

void Meta_Substrate_Path::SetCandidate_Embdding_Nodes_Id(IloInt id)
{
	Candidate_Embdding_Nodes_Id=id;
}

IloInt Meta_Substrate_Path::getCandidSnodeCombiId()
{
	return Candidate_Embdding_Nodes_Id;
}

void Meta_Substrate_Path::SetNB_Hops(IloInt h)
{
	NB_Hops=h;
}

IloInt Meta_Substrate_Path::getNumOfHopsInShortestPath()
{
	return NB_Hops;
}

void Meta_Substrate_Path::SetUsed_Node_Tab(IloNumArray& node_tab)
{
	IloInt i;
	for(i=0;i<MAX_INCIDENCE;i++)
		Used_Node_Tab[i]=(int)node_tab[i];
}

void Meta_Substrate_Path::GetUsed_Node_Tab(IloNumArray& node_used_tab)
{
	IloInt i;
	for(i=0;i<MAX_INCIDENCE;i++)
		node_used_tab[i]= Used_Node_Tab[i];
}

void Meta_Substrate_Path::SetUsed_Arc_Tab(IloNumArray& arc_tab)
{
	IloInt i;
	for(i=0;i<MAX_INCIDENCE;i++)
		Used_Arc_Tab[i]=(int)arc_tab[i];
}

void Meta_Substrate_Path::GetUsed_Arc_Tab(IloNumArray& arc_used_tab)
{
	IloInt i;
	for(i=0;i<MAX_INCIDENCE;i++)
		arc_used_tab[i]= Used_Arc_Tab[i];
}




