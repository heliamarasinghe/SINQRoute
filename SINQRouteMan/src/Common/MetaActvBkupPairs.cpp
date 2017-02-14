/*
 * MetaActvBkupPairs.cpp
 *
 *  Created on: Feb 13, 2017
 *      Author: openstack
 */

#include "MetaActvBkupPairs.h"


	MetaActvBkupPairs::MetaActvBkupPairs() {
	IloInt k;
	actvBkupPairId = 0;
	srcVnode = 0;
	dstVnode = 0;
	vlinkId = 0;
	vnpId = 0;
	Candidate_Embdding_Nodes_Id=0;
	actvPathId = 0;
	bkupPathId = 0;
	numActvHops = 0;
	numBkupHops = 0;

	for(k=0;k<MAX_SIZE;k++){
		actvSnodeAry[k]=0;
		actvSlinkAry[k]=0;
		bkupSnodeAry[k]=0;
		bkupSlinkAry[k]=0;
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


void MetaActvBkupPairs::setSrcVnode(IloInt src){
	srcVnode = src;
}
IloInt MetaActvBkupPairs::getSrcVnode(){
	return srcVnode;
}


void MetaActvBkupPairs::setDstVnode(IloInt dst){
	dstVnode = dst;
}
IloInt MetaActvBkupPairs::getDstVnode(){
	return dstVnode;
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
	IloInt i;
	for(i=0;i<MAX_SIZE;i++)
		actvSnodeAry[i]=(int)snodeAry[i];
}
void MetaActvBkupPairs::getActvSnodeAry(IloNumArray& snodeAry){
	IloInt i;
	for(i=0;i<MAX_SIZE;i++)
		actvSnodeAry[i]= snodeAry[i];
}


void MetaActvBkupPairs::setBkupSnodeAry(IloNumArray& snodeAry){
	IloInt i;
	for(i=0;i<MAX_SIZE;i++)
		bkupSnodeAry[i]=(int)snodeAry[i];
}
void MetaActvBkupPairs::getBkupSnodeAry(IloNumArray& snodeAry){
	IloInt i;
	for(i=0;i<MAX_SIZE;i++)
		bkupSnodeAry[i]= snodeAry[i];
}


void MetaActvBkupPairs::setActvSlinkAry(IloNumArray& slinkAry){
	IloInt i;
	for(i=0;i<MAX_SIZE;i++)
		actvSlinkAry[i]=(int)slinkAry[i];
}
void MetaActvBkupPairs::getActvSlinkAry(IloNumArray& slinkAry){
	IloInt i;
	for(i=0;i<MAX_SIZE;i++)
		actvSlinkAry[i]= slinkAry[i];
}


void MetaActvBkupPairs::setBkupSlinkAry(IloNumArray& slinkAry){
	IloInt i;
	for(i=0;i<MAX_SIZE;i++)
		bkupSlinkAry[i]=(int)slinkAry[i];
}
void MetaActvBkupPairs::getBkupSlinkAry(IloNumArray& slinkAry){
	IloInt i;
	for(i=0;i<MAX_SIZE;i++)
		bkupSlinkAry[i]= slinkAry[i];
}




