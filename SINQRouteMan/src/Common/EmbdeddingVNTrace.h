/*
 * EmbdeddingVNTrace.h
 *
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */

#ifndef COMMON_EMBDEDDINGVNTRACE_H_
#define COMMON_EMBDEDDINGVNTRACE_H_

#include "ConstantsCOMMON.h"

class Embdedding_VN_Trace
{
private:
	IloInt VNP_Id;
	IloInt Var_Index;
public:
	Embdedding_VN_Trace();

	void SetVNP_Id(IloInt id);
	IloInt getVnpId();

	void SetVar_Index(IloInt v);
	IloInt GetVar_Index();
};
#endif /* COMMON_EMBDEDDINGVNTRACE_H_ */
