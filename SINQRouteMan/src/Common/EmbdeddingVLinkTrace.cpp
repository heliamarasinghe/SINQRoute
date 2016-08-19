/*
 * EmbdeddingVLinkTrace.cpp
 *
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */
#include "EmbdeddingVLinkTrace.h"

Embdedding_VLink_Trace::Embdedding_VLink_Trace()
{
Num_Path=0;
Virtual_Link_Id=0;
Var_Index=0;

}

void Embdedding_VLink_Trace::SetNum_Path(IloInt id)
{
	Num_Path=id;
}
IloInt Embdedding_VLink_Trace::GetNum_Path()
{
	return Num_Path;
}

void Embdedding_VLink_Trace::SetVirtual_Link_Id(IloInt l)
{
	Virtual_Link_Id=l;
}
IloInt Embdedding_VLink_Trace::GetVirtual_Link_Id()
{
	return Virtual_Link_Id;
}

void Embdedding_VLink_Trace::SetVar_Index(IloInt v)
{
	Var_Index=v;
}
IloInt Embdedding_VLink_Trace::GetVar_Index()
{
	return Var_Index;
}

