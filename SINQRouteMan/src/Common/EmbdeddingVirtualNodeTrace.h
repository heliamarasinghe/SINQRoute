/*
 * EmbdeddingVirtualNodeTrace.h
 * A Structure to Save Embdedding of Virtual Nodes
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */

#ifndef COMMON_EMBDEDDINGVIRTUALNODETRACE_H_
#define COMMON_EMBDEDDINGVIRTUALNODETRACE_H_

#include "ConstantsCOMMON.h"

class Embdedding_Virtual_Node_Trace
{
private:
IloInt Virtual_Node_Id;
IloInt VNP_Id;
IloInt Substrate_Node_Id;
IloInt Var_Index;
IloInt QoS_Class;
IloInt Period;

public:
Embdedding_Virtual_Node_Trace();

void SetVirtual_Node_Id(IloInt id);
IloInt getVnodeId();

void SetVNP_Id(IloInt id);
IloInt getVnpId();

void setCandidSnodeId(IloInt num);
IloInt getCandidSnodeId();

void SetVar_Index(IloInt v);
IloInt getXindex();

void SetQoS_Class(IloInt v);
IloInt getQosCls();

 void SetPeriod(IloInt p);
   IloInt GetPeriod();

};




#endif /* COMMON_EMBDEDDINGVIRTUALNODETRACE_H_ */
