/*
 * SubstratePathStruct.cpp
 * A structure to save the selected substrate path for each virtual link
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */
#include "SubstratePath.h"



SubstratePath::SubstratePath(){
	srcSnode		= 0;
	dstSnode		= 0;
	qosCls			= 0;
	vnpId			= 0;
	vlinkId			= 0;
	vlEmbdProfit	= 0.0;
	vlEmbdngCost	= 0.0;
	period			= 0;

	acbkPairId		= 0;
	numActvHops		= 0;
	numBkupHops		= 0;

	//actvPthCost	= 0;
	//bkupPthCost	= 0;

	for(IloInt k=0; k<MAX_SIZE; k++){
		actvSnodeAry[k]=0;
		bkupSnodeAry[k]=0;
		actvSlinkAry[k]=0;
		bkupSlinkAry[k]=0;
	}
}

void SubstratePath::setSrcSnode(IloInt s){
	srcSnode = s;
}
IloInt SubstratePath::getSrcSnode(){
	return srcSnode;
}

void SubstratePath::setDstSnode(IloInt d) {
	dstSnode = d;
}
IloInt SubstratePath::getDstSnode() {
	return dstSnode;
}

void SubstratePath::setQosCls(IloInt q){
	qosCls = q;
}
IloInt SubstratePath::getQosCls() {
	return qosCls;
}

void SubstratePath::setVnpId(IloInt v){
	vnpId = v;
}
IloInt SubstratePath::getVnpId(){
	return vnpId;
}

void SubstratePath::setVlinkId(IloInt b){
	vlinkId = b;
}
IloInt SubstratePath::getVlinkId()
{return vlinkId;}

void SubstratePath::setVlEmbdProfit(IloNum vlProfit){
	vlEmbdProfit = vlProfit;
}
IloNum SubstratePath::getVlEmbdProfit(){
	return vlEmbdProfit;
}

void SubstratePath::setVlEmbdngCost(IloNum vlCost){
	vlEmbdngCost = vlCost;
}
IloNum SubstratePath::getVlEmbdngCost(){
	return vlEmbdngCost;
}

void SubstratePath::setPeriod(IloInt p){
	period=p;
}
IloInt SubstratePath::getPeriod(){
	return period;
}

// ------------------ Actve/backup additions---------------

void SubstratePath::setAcbkPairId(IloInt acbkId){
	acbkPairId=acbkId;
}
IloInt SubstratePath::getAcbkPairId(){
	return acbkPairId;
}

void SubstratePath::setNumActvHops(IloInt acHops){
	numActvHops=acHops;
}
IloInt SubstratePath::getNumActvHops(){
	return numActvHops;
}


void SubstratePath::setNumBkupHops(IloInt bkHops){
	numBkupHops=bkHops;
}
IloInt SubstratePath::getNumBkupHops(){
	return numBkupHops;
}


/*void SubstratePath::setVlEmbdngCost(IloInt acCost){
		actvPthCost=acCost;
	}
    IloInt SubstratePath::getVlEmbdngCost(){
    	return actvPthCost;
    }


    void SubstratePath::setBkupPthCost(IloInt bkCost){
		bkupPthCost=bkCost;
	}
    IloInt SubstratePath::getBkupPthCost(){
    	return bkupPthCost;
    }*/



void SubstratePath::setActvSnodeAry(IloNumArray& snodeAry){
	for(IloInt i=0; i<MAX_SIZE; i++)
		actvSnodeAry[i]=(int)snodeAry[i];
}
void SubstratePath::getActvSnodeAry(IloNumArray& snodeAry){
	for(IloInt i=0; i<MAX_SIZE; i++)
		snodeAry[i]= actvSnodeAry[i];
}

void SubstratePath::setBkupSnodeAry(IloNumArray& snodeAry){
	for(IloInt i=0; i<MAX_SIZE; i++)
		bkupSnodeAry[i]=(int)snodeAry[i];
}
void SubstratePath::getBkupSnodeAry(IloNumArray& snodeAry){
	for(IloInt i=0; i<MAX_SIZE; i++)
		snodeAry[i]= bkupSnodeAry[i];
}

void SubstratePath::setActvSlinkAry(IloNumArray& slinkAry){
	for(IloInt i=0; i<MAX_SIZE; i++)
		actvSlinkAry[i]=(int)slinkAry[i];
}
void SubstratePath::getActvSlinkAry(IloNumArray& slinkAry){
	for(IloInt i=0; i<MAX_SIZE; i++)
		slinkAry[i]= actvSlinkAry[i];
}

void SubstratePath::setBkupSlinkAry(IloNumArray& slinkAry){
	for(IloInt i=0; i<MAX_SIZE; i++)
		bkupSlinkAry[i]=(int)slinkAry[i];
}
void SubstratePath::getBkupSlinkAry(IloNumArray& slinkAry){
	for(IloInt i=0; i<MAX_SIZE; i++)
		slinkAry[i]= bkupSlinkAry[i];
}
