/*
 * SubstratePathStruct.cpp
 * A structure to save the selected substrate path for each virtual link
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */
#include "SubstratePath.h"



SubstratePath::SubstratePath(){
     IloInt k;
     srcSnode= 0;
	 dstSnode=0;
	 qosCls=0;
	 vnpId=0;
	 vlinkId=0;
     linkProfit=0;
	 cost=0;
	 period=0;

     for(k=0;k<MAX_SIZE;k++){
        usedSnodeAry[k]=0;
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

	 void SubstratePath::setLinkProfit(IloInt p){
		 linkProfit = p;
	 }
     IloInt SubstratePath::getVlinkProfit(){
    	 return linkProfit;
     }

	void SubstratePath::setCost(IloInt c){
		cost=c;
	}
    IloInt SubstratePath::getCost(){
    	return cost;
    }

	void SubstratePath::setPeriod(IloInt p){
		period=p;
	}
    IloInt SubstratePath::getPeriod(){
    	return period;
    }

     void SubstratePath::setUsedSnodeAry(IloNumArray& snodeAry)
     {
        IloInt i;
        for(i=0;i<MAX_SIZE;i++)
          usedSnodeAry[i]=(int)snodeAry[i];
      }

     void SubstratePath::getUsedSnodeAry(IloNumArray& snodeAry)
      {
        IloInt i;
        for(i=0;i<MAX_SIZE;i++)
        	snodeAry[i]= usedSnodeAry[i];
      }

     void SubstratePath::setActvSlinkAry(IloNumArray& slinkAry){
        IloInt i;
        for(i=0;i<MAX_SIZE;i++)
          actvSlinkAry[i]=(int)slinkAry[i];
      }

     void SubstratePath::getActvSlinkAry(IloNumArray& slinkAry){
        IloInt i;
        for(i=0;i<MAX_SIZE;i++)
        	slinkAry[i]= actvSlinkAry[i];
      }
     void SubstratePath::setBkupSlinkAry(IloNumArray& slinkAry){
             IloInt i;
             for(i=0;i<MAX_SIZE;i++)
            	 bkupSlinkAry[i]=(int)slinkAry[i];
           }

          void SubstratePath::getBkupSlinkAry(IloNumArray& slinkAry){
             IloInt i;
             for(i=0;i<MAX_SIZE;i++)
             	slinkAry[i]= bkupSlinkAry[i];
           }
