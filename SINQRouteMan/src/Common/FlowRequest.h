/*
 * FlowRequest.h
 *
 *  Created on: Mar 30, 2016
 *      Author: openstack
 */

#ifndef COMMON_FLOWREQUEST_H_
#define COMMON_FLOWREQUEST_H_

#include "ConstantsCOMMON.h"

struct FlowRequest {

private:
	IloInt flowReqId;
	IloInt torSlot;
	IloInt vLinkId;

public:
	FlowRequest();
	virtual ~FlowRequest();

	void setFlowReqId(IloInt flowId);
	IloInt getFlowReqId();

	IloInt getTorSlot();
	void setTorSlot(IloInt tor);

	IloInt getVlinkId();
	void setVlinkId(IloInt vLink);



/*private:
	IloInt flowSrcVnode;
	IloInt flowDestVnode;
	IloInt flowReqId;
	IloInt flowQosCls;
	IloInt iaasReqId;
	IloInt offeredBidForVlink;
	IloInt flowTslot;
	int Candidate_Location_Tab[MAX_NB_LOCATION];

public:
	FlowRequest();
	virtual ~FlowRequest();

	IloInt getFlowSrcVnode();
	void setFlowSrcVnode(IloInt flowSrc);

	IloInt getFlowDestVnode();
	void setFlowDestVnode(IloInt flowDest);

	void setFlowReqId(IloInt flowId);
	IloInt getFlowReqId();

	void setFlowQosCls(IloInt flowCls);
	IloInt getFlowQosCls();

	void setIaasReqId(IloInt iaas);
	IloInt getIaasReqId();

	void setOfferedBidForVlink(IloInt bid);
	IloInt getOfferedBidForVlink();

	void setFlowTslot(IloInt p);
	IloInt getFlowTslot();

	void SetCandidate_Location_Tab(IloNumArray& node_tab);
	void GetCandidate_Location_Tab(IloNumArray& node_tab);*/
};


#endif /* COMMON_FLOWREQUEST_H_ */
