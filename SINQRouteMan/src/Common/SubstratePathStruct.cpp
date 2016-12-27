/*
 * SubstratePathStruct.cpp
 * A structure to save the selected substrate path for each virtual link
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */
#include "SubstratePathStruct.h"



Substrate_Path_Struct::Substrate_Path_Struct()
  {
     IloInt k;
     Src_path= 0;
	 Dest_path=0;
	 Class_QoS=0;
	 VNP_Id=0;
	 Virtual_Link_Id=0;
     Link_profit=0;
	 Cost=0;
	 Period=0;

     for(k=0;k<MAX_SIZE;k++)
      {
        Used_Node_Tab[k]=0;
        Used_Arc_Tab[k]=0;
      }
 }

     void Substrate_Path_Struct::SetSrc_path(IloInt s)
     {
    	 Src_path = s;
     }
     IloInt Substrate_Path_Struct::GetSrc_path()
     {
    	 return Src_path;
     }

	 void Substrate_Path_Struct::SetDest_path(IloInt d)
	 {
		 Dest_path = d;
	 }
     IloInt Substrate_Path_Struct::GetDest_path()
     {
    	 return Dest_path;
     }

	 void Substrate_Path_Struct::SetClass_QoS(IloInt q)
	 {
		 Class_QoS = q;
	 }
     IloInt Substrate_Path_Struct::GetClass_QoS()
     {
    	 return Class_QoS;
     }

	 void Substrate_Path_Struct::SetVNP_Id(IloInt v)
	 {
		 VNP_Id = v;
	 }
     IloInt Substrate_Path_Struct::GetVNP_Id()
     {
    	 return VNP_Id;
     }

	 void Substrate_Path_Struct::SetVirtual_Link_Id(IloInt b)
	 {
		 Virtual_Link_Id = b;
	 }
     IloInt Substrate_Path_Struct::GetVirtual_Link_Id()
     {return Virtual_Link_Id;}

	 void Substrate_Path_Struct::SetLink_profit(IloInt p)
	 {
		 Link_profit = p;
	 }
     IloInt Substrate_Path_Struct::GetLink_profit()
     {
    	 return Link_profit;
     }

	void Substrate_Path_Struct::SetCost(IloInt c)
	{
		Cost=c;
	}
    IloInt Substrate_Path_Struct::GetCost()
    {
    	return Cost;
    }

	void Substrate_Path_Struct::SetPeriod(IloInt p)
	{
		Period=p;
	}
    IloInt Substrate_Path_Struct::GetPeriod()
    {
    	return Period;
    }

     void Substrate_Path_Struct::SetUsed_Node_Tab(IloNumArray& node_tab)
      {
        IloInt i;
        for(i=0;i<MAX_SIZE;i++)
          Used_Node_Tab[i]=(int)node_tab[i];
      }

     void Substrate_Path_Struct::GetUsed_Node_Tab(IloNumArray& node_used_tab)
      {
        IloInt i;
        for(i=0;i<MAX_SIZE;i++)
          node_used_tab[i]= Used_Node_Tab[i];
      }

     void Substrate_Path_Struct::SetUsed_Arc_Tab(IloNumArray& arc_tab)
      {
        IloInt i;
        for(i=0;i<MAX_SIZE;i++)
          Used_Arc_Tab[i]=(int)arc_tab[i];
      }

     void Substrate_Path_Struct::GetUsed_Arc_Tab(IloNumArray& arc_used_tab)
      {
        IloInt i;
        for(i=0;i<MAX_SIZE;i++)
          arc_used_tab[i]= Used_Arc_Tab[i];
      }
