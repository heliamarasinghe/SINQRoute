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

void Embdedding_VLink_Trace::setShortestPathId(IloInt id)
{
	Num_Path=id;
}
IloInt Embdedding_VLink_Trace::getShortestPathId()
{
	return Num_Path;
}

void Embdedding_VLink_Trace::setVlinkId(IloInt l)
{
	Virtual_Link_Id=l;
}
IloInt Embdedding_VLink_Trace::getVlinkId()
{
	return Virtual_Link_Id;
}

void Embdedding_VLink_Trace::SetXindx(IloInt v)
{
	Var_Index=v;
}
IloInt Embdedding_VLink_Trace::GetVar_Index()
{
	return Var_Index;
}

