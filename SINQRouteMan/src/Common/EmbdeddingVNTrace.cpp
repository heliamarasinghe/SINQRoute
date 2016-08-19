/*
 * EmbdeddingVNTrace.cpp
 *
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */

#include "EmbdeddingVNTrace.h"

Embdedding_VN_Trace::Embdedding_VN_Trace()
{
 VNP_Id=0;
 Var_Index=0;
}

void Embdedding_VN_Trace::SetVNP_Id(IloInt id)
{
	VNP_Id=id;
}
IloInt Embdedding_VN_Trace::GetVNP_Id()
{
	return VNP_Id;
}

void Embdedding_VN_Trace::SetVar_Index(IloInt v)
{
	Var_Index=v;
}
IloInt Embdedding_VN_Trace::GetVar_Index()
{
	return Var_Index;
}



