/*
 * VirtualNodeRequirement.cpp
 *  A structure to Read Candidates VN Locations
 *
 *  Created on: Feb 6, 2016
 *      Author: openstack
 */

#include "VirtualNodeRequirement.h"

Virtual_Node_Requirement::Virtual_Node_Requirement() {
    Virtual_Node_Id=0;
    QoS_Class=0;
    VNP_Id=0;
	Period=0;
	IloInt i=0;
   for(i=0;i<MAX_NB_LOCATION;i++)
      Candidate_Location_Tab[i]=0;

}

Virtual_Node_Requirement::~Virtual_Node_Requirement() {
	// TODO Auto-generated destructor stub
}

IloInt Virtual_Node_Requirement::GetVirtual_Node_Id()
{
	return Virtual_Node_Id;
}
    void Virtual_Node_Requirement::SetVirtual_Node_Id(IloInt s)
    {
    	Virtual_Node_Id=s;
    }

    IloInt Virtual_Node_Requirement::GetQoS_Class()
    {
    	return QoS_Class;
    }
    void Virtual_Node_Requirement::SetQoS_Class(IloInt q)
    {
    	QoS_Class=q;
    }

    void Virtual_Node_Requirement::SetVNP_Id(IloInt vpn)
    {
    	VNP_Id=vpn;}
    IloInt Virtual_Node_Requirement::GetVNP_Id(){return VNP_Id;
    }

	void Virtual_Node_Requirement::SetPeriod(IloInt p)
	{
		Period=p;
	}
    IloInt Virtual_Node_Requirement::GetPeriod()
    {
    	return Period;
    }

	void Virtual_Node_Requirement::SetCandidate_Location_Tab(IloNumArray& node_tab)
      {
        IloInt i;
        for(i=0;i<MAX_NB_LOCATION;i++)
          Candidate_Location_Tab[i]=(int)node_tab[i];
      }

     void Virtual_Node_Requirement::GetCandidate_Location_Tab(IloNumArray& node_tab)
      {
        IloInt i;
        for(i=0;i<MAX_NB_LOCATION;i++)
          node_tab[i]= Candidate_Location_Tab[i];
      }
