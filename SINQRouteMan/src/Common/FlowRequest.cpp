/*
 * FlowRequest.cpp
 *
 *  Created on: Mar 30, 2016
 *      Author: openstack
 */

#include "FlowRequest.h"

FlowRequest::FlowRequest() {
	flowReqId=0;
	torSlot=0;
	vLinkId=0;
}

FlowRequest::~FlowRequest() {
	// TODO Auto-generated destructor stub
}

void FlowRequest::setFlowReqId(IloInt flowId){
	flowReqId=flowId;
}
IloInt FlowRequest::getFlowReqId(){
	return flowReqId;
}

void FlowRequest::setTorSlot(IloInt tor){
	torSlot=tor;
}

IloInt FlowRequest::getTorSlot(){
	return torSlot;
}


void FlowRequest::setVlinkId(IloInt vLink){
	vLinkId=vLink;
}
IloInt FlowRequest::getVlinkId(){
	return vLinkId;
}

/*
FlowRequest::FlowRequest() {
	flowSrcVnode=0;
	flowDestVnode=0;
	flowReqId=0;
	flowQosCls=0;
	iaasReqId=0;
	offeredBidForVlink=0;
	flowTslot=0;
	for(IloInt i=0;i<MAX_NB_LOCATION;i++)
		Candidate_Location_Tab[i]=0;

}
FlowRequest::~FlowRequest() {
	// TODO Auto-generated destructor stub
}

IloInt FlowRequest::getFlowSrcVnode(){
	return flowSrcVnode;
}
void FlowRequest::setFlowSrcVnode(IloInt s){
	flowSrcVnode=s;
}

IloInt FlowRequest::getFlowDestVnode(){
	return flowDestVnode;
}
void FlowRequest::setFlowDestVnode(IloInt d){
	flowDestVnode=d;
}

void FlowRequest::setFlowReqId(IloInt id){
	flowReqId=id;
}
IloInt FlowRequest::getFlowReqId(){
	return flowReqId;
}

void FlowRequest::setFlowQosCls(IloInt cls){
	flowQosCls=cls;
}
IloInt FlowRequest::getFlowQosCls(){
	return flowQosCls;
}

void FlowRequest::setIaasReqId(IloInt iaas){
	iaasReqId=iaas;
}
IloInt FlowRequest::getIaasReqId(){
	return iaasReqId;
}

void FlowRequest::setOfferedBidForVlink(IloInt b){
	offeredBidForVlink=b;
}
IloInt FlowRequest::getOfferedBidForVlink(){
	return offeredBidForVlink;
}

void FlowRequest::setFlowTslot(IloInt p){
	flowTslot=p;
}
IloInt FlowRequest::getFlowTslot(){
	return flowTslot;
}

void FlowRequest::SetCandidate_Location_Tab(IloNumArray& node_tab){
	for(IloInt i=0;i<MAX_NB_LOCATION;i++)
		Candidate_Location_Tab[i]=(int)node_tab[i];
}

void FlowRequest::GetCandidate_Location_Tab(IloNumArray& node_tab){
	for(IloInt i=0;i<MAX_NB_LOCATION;i++)
		node_tab[i]= Candidate_Location_Tab[i];
}
 */
