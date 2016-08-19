/*
 * EmbdeddingVirtualNodeTrace.cpp
 * A Structure to Save Embdedding of Virtual Nodes
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */

#include "EmbdeddingVirtualNodeTrace.h"

 Embdedding_Virtual_Node_Trace::Embdedding_Virtual_Node_Trace()
{
 Virtual_Node_Id=0;
 VNP_Id=0;
 Substrate_Node_Id=0;
 Var_Index=0;
 QoS_Class=0;
 Period=0;
}

 void Embdedding_Virtual_Node_Trace::SetVirtual_Node_Id(IloInt id)
 {
	 Virtual_Node_Id=id;
 }
 IloInt Embdedding_Virtual_Node_Trace::getVnodeId()
 {
	 return Virtual_Node_Id;
 }

 void Embdedding_Virtual_Node_Trace::SetVNP_Id(IloInt id)
 {
	 VNP_Id=id;
 }
 IloInt Embdedding_Virtual_Node_Trace::getVnpId()
 {
	 return VNP_Id;
 }

 void Embdedding_Virtual_Node_Trace::setCandidSnodeId(IloInt num)
 {
	 Substrate_Node_Id=num;
 }
 IloInt Embdedding_Virtual_Node_Trace::getCandidSnodeId()
 {
return Substrate_Node_Id;
 }

 void Embdedding_Virtual_Node_Trace::SetVar_Index(IloInt v)
 {
	 Var_Index=v;
 }
 IloInt Embdedding_Virtual_Node_Trace::getXindex()
 {
	 return Var_Index;
 }

 void Embdedding_Virtual_Node_Trace::SetQoS_Class(IloInt v)
 {
	 QoS_Class=v;
 }
 IloInt Embdedding_Virtual_Node_Trace::getQosCls()
 {
	 return QoS_Class;
 }

 void Embdedding_Virtual_Node_Trace::SetPeriod(IloInt p)
 {
	 Period=p;
 }
 IloInt Embdedding_Virtual_Node_Trace::GetPeriod()
 {
	 return Period;
 }
