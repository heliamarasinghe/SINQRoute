/*
 * VirtualNodeRequirement.cpp
 *  A structure to Read Candidates VN Locations
 *
 *  Created on: Feb 6, 2016
 *      Author: openstack
 */

#include "VnodeRequest.h"

VnodeRequest::VnodeRequest() {
    Virtual_Node_Id=0;
    QoS_Class=0;
    VNP_Id=0;
	Period=0;
	IloInt i=0;
   for(i=0;i<MAX_NB_LOCATION;i++)
      Candidate_Location_Tab[i]=0;

}

VnodeRequest::~VnodeRequest() {
	// TODO Auto-generated destructor stub
}

IloInt VnodeRequest::GetVirtual_Node_Id()
{
	return Virtual_Node_Id;
}
    void VnodeRequest::SetVirtual_Node_Id(IloInt s)
    {
    	Virtual_Node_Id=s;
    }

    IloInt VnodeRequest::GetQoS_Class()
    {
    	return QoS_Class;
    }
    void VnodeRequest::SetQoS_Class(IloInt q)
    {
    	QoS_Class=q;
    }

    void VnodeRequest::SetVNP_Id(IloInt vpn)
    {
    	VNP_Id=vpn;}
    IloInt VnodeRequest::GetVNP_Id(){return VNP_Id;
    }

	void VnodeRequest::SetPeriod(IloInt p)
	{
		Period=p;
	}
    IloInt VnodeRequest::GetPeriod()
    {
    	return Period;
    }

	void VnodeRequest::SetCandidate_Location_Tab(IloNumArray& node_tab)
      {
        IloInt i;
        for(i=0;i<MAX_NB_LOCATION;i++)
          Candidate_Location_Tab[i]=(int)node_tab[i];
      }

     void VnodeRequest::GetCandidate_Location_Tab(IloNumArray& node_tab)
      {
        IloInt i;
        for(i=0;i<MAX_NB_LOCATION;i++)
          node_tab[i]= Candidate_Location_Tab[i];
      }
