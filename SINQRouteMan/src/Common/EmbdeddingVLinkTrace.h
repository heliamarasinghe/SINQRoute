/*
 * EmbdeddingVLinkTrace.h
 *
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */

#ifndef COMMON_EMBDEDDINGVLINKTRACE_H_
#define COMMON_EMBDEDDINGVLINKTRACE_H_

#include "ConstantsCOMMON.h"

class Embdedding_VLink_Trace
{
private:
IloInt Num_Path;
IloInt Virtual_Link_Id;
IloInt Var_Index;
public:
Embdedding_VLink_Trace();

void SetNum_Path(IloInt id);
IloInt GetNum_Path();

void SetVirtual_Link_Id(IloInt l);
IloInt GetVirtual_Link_Id();

void SetVar_Index(IloInt v);
IloInt GetVar_Index();
};



#endif /* COMMON_EMBDEDDINGVLINKTRACE_H_ */
