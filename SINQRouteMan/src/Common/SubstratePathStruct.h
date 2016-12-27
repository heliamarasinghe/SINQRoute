/*
 * SubstratePathStruct.h
 * A structure to save the selected substrate path for each virtual link
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */

#ifndef COMMON_SUBSTRATEPATHSTRUCT_H_
#define COMMON_SUBSTRATEPATHSTRUCT_H_
#include "ConstantsCOMMON.h"

class  Substrate_Path_Struct
 {
  private:
    IloInt Src_path;
	IloInt Dest_path;
	IloInt Class_QoS;
	IloInt VNP_Id;
	IloInt Virtual_Link_Id;
	IloInt Link_profit;
	IloInt Cost;
	IloInt Period;

    int Used_Node_Tab[3*MAX_SIZE];
    int Used_Arc_Tab[3*MAX_SIZE];

    public:
     Substrate_Path_Struct();

     void SetSrc_path(IloInt s);
     IloInt GetSrc_path();

	 void SetDest_path(IloInt d);
     IloInt GetDest_path();

	 void SetClass_QoS(IloInt q);
     IloInt GetClass_QoS();

	 void SetVNP_Id(IloInt v);
     IloInt GetVNP_Id();

	 void SetVirtual_Link_Id(IloInt b);
     IloInt GetVirtual_Link_Id();

	 void SetLink_profit(IloInt p);
     IloInt GetLink_profit();

	void SetCost(IloInt c);
    IloInt GetCost();

	void SetPeriod(IloInt p);
    IloInt GetPeriod();

     void SetUsed_Node_Tab(IloNumArray& node_tab);
     void GetUsed_Node_Tab(IloNumArray& node_used_tab);

     void SetUsed_Arc_Tab(IloNumArray& arc_tab);
     void GetUsed_Arc_Tab(IloNumArray& arc_used_tab);
 };

#endif /* COMMON_SUBSTRATEPATHSTRUCT_H_ */
