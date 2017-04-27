/*
 * MetaActvBkupPairs.cpp
 *
 *  Created on: Feb 13, 2017
 *      Author: openstack
 */

#include "MetaActvBkupPairs.h"


	MetaActvBkupPairs::MetaActvBkupPairs() {
	actvBkupPairId = 0;
	srcVnode = 0;
	dstVnode = 0;
	srcSnode = 0;
	dstSnode = 0;
	vlinkId = 0;
	vnpId = 0;
	Candidate_Embdding_Nodes_Id=0;
	actvPathId = 0;
	bkupPathId = 0;
	bkupEpstinCost = 0;
	numActvHops = 0;
	numBkupHops = 0;

	for(IloInt k=0;k<MAX_SIZE;k++){
		actvSnodeAry[k]=0;
		actvSlinkAry[k]=0;
		bkupSnodeAry[k]=0;
		bkupSlinkAry[k]=0;
		bkSlBwUnitsReqAry[k] = 0.0;
	}
}

MetaActvBkupPairs::~MetaActvBkupPairs() {
	// TODO Auto-generated destructor stub
}

void MetaActvBkupPairs::setActvBkupPairId(IloInt pairId){
	actvBkupPairId=pairId;
}
IloInt MetaActvBkupPairs::getActvBkupPairId(){
	return actvBkupPairId;
}


void MetaActvBkupPairs::setSrcVnode(IloInt vnode){
	srcVnode = vnode;
}
IloInt MetaActvBkupPairs::getSrcVnode(){
	return srcVnode;
}


void MetaActvBkupPairs::setDstVnode(IloInt vnode){
	dstVnode = vnode;
}
IloInt MetaActvBkupPairs::getDstVnode(){
	return dstVnode;
}

void MetaActvBkupPairs::setSrcSnode(IloInt snode){
	srcSnode = snode;
}
IloInt MetaActvBkupPairs::getSrcSnode(){
	return srcSnode;
}


void MetaActvBkupPairs::setDstSnode(IloInt snode){
	dstSnode = snode;
}
IloInt MetaActvBkupPairs::getDstSnode(){
	return dstSnode;
}

void MetaActvBkupPairs::setVlinkId(IloInt vlink){
	vlinkId=vlink;
}
IloInt MetaActvBkupPairs::getVlinkId(){
	return vlinkId;
}


void MetaActvBkupPairs::setVnpId(IloInt vnp){
	vnpId=vnp;
}
IloInt MetaActvBkupPairs::getVnpId(){
	return vnpId;
}


void MetaActvBkupPairs::setMetaSubPathReqId(IloInt id){
	Candidate_Embdding_Nodes_Id=id;
}
IloInt MetaActvBkupPairs::getCandidSnodeCombiId(){
	return Candidate_Embdding_Nodes_Id;
}


void MetaActvBkupPairs::setActvPathId(IloInt pathId){
	actvPathId=pathId;
}
IloInt MetaActvBkupPairs::getActvPathId(){
	return actvPathId;
}


void MetaActvBkupPairs::setBkupPathId(IloInt pathId){
	bkupPathId=pathId;
}
IloInt MetaActvBkupPairs::getBkupPathId(){
	return bkupPathId;
}

void MetaActvBkupPairs::setBkupEpstinCost(IloNum pathCost){
	bkupEpstinCost = pathCost;
}
IloNum MetaActvBkupPairs::getBkupEpstinCost(){
	return bkupEpstinCost;
}


void MetaActvBkupPairs::setNumActvHops(IloInt hops){
	numActvHops=hops;
}
IloInt MetaActvBkupPairs::getNumActvHops(){
	return numActvHops;
}


void MetaActvBkupPairs::setNumBkupHops(IloInt hops){
	numBkupHops=hops;
}
IloInt MetaActvBkupPairs::getNumBkupHops(){
	return numBkupHops;
}


void MetaActvBkupPairs::setActvSnodeAry(IloNumArray& snodeAry){
	for(IloInt i=0;i<MAX_SIZE;i++)
		actvSnodeAry[i]=(int)snodeAry[i];
}
void MetaActvBkupPairs::getActvSnodeAry(IloNumArray& snodeAry){
	for(IloInt i=0;i<MAX_SIZE;i++)
		snodeAry[i] = actvSnodeAry[i];
}


void MetaActvBkupPairs::setBkupSnodeAry(IloNumArray& snodeAry){
	for(IloInt i=0;i<MAX_SIZE;i++)
		bkupSnodeAry[i]=(int)snodeAry[i];
}
void MetaActvBkupPairs::getBkupSnodeAry(IloNumArray& snodeAry){
	for(IloInt i=0;i<MAX_SIZE;i++)
		snodeAry[i] = bkupSnodeAry[i];
}


void MetaActvBkupPairs::setActvSlinkAry(IloNumArray& slinkAry){
	for(IloInt i=0;i<MAX_SIZE;i++)
		actvSlinkAry[i]=(int)slinkAry[i];
}
void MetaActvBkupPairs::getActvSlinkAry(IloNumArray& slinkAry){
	for(IloInt i=0;i<MAX_SIZE;i++)
		slinkAry[i] = actvSlinkAry[i];
}


void MetaActvBkupPairs::setBkupSlinkAry(IloNumArray& slinkAry){
	for(IloInt i=0;i<MAX_SIZE;i++)
		bkupSlinkAry[i]=(int)slinkAry[i];
}
void MetaActvBkupPairs::getBkupSlinkAry(IloNumArray& slinkAry){
	for(IloInt i=0;i<MAX_SIZE;i++)
		slinkAry[i] = bkupSlinkAry[i];
}


void MetaActvBkupPairs::setBkSlBwUnitsReqAry(IloNumArray& bwUniReqAry){
	for(IloInt i=0;i<MAX_SIZE;i++)
		bkSlBwUnitsReqAry[i]=bwUniReqAry[i];
}
void MetaActvBkupPairs::getBkSlBwUnitsReqAry(IloNumArray& bwUniReqAry){
	for(IloInt i=0;i<MAX_SIZE;i++)
		bwUniReqAry[i] = bkSlBwUnitsReqAry[i];
}

