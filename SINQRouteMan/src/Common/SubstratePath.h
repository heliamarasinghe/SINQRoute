/*
 * SubstratePathStruct.h
 * A structure to save the selected substrate path for each virtual link
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */

#ifndef COMMON_SUBSTRATEPATH_H_
#define COMMON_SUBSTRATEPATH_H_
#include "ConstantsCOMMON.h"

class  SubstratePath
 {
  private:
    IloInt srcSnode;
	IloInt dstSnode;
	IloInt qosCls;
	IloInt vnpId;
	IloInt vlinkId;
	IloInt linkProfit;
	IloInt cost;
	IloInt period;

    int usedSnodeAry[3*MAX_SIZE];
    int actvSlinkAry[3*MAX_SIZE];
    int bkupSlinkAry[3*MAX_SIZE];

    public:
     SubstratePath();

     void setSrcSnode(IloInt s);
     IloInt getSrcSnode();

	 void setDstSnode(IloInt d);
     IloInt getDstSnode();

	 void setQosCls(IloInt q);
     IloInt getQosCls();

	 void setVnpId(IloInt v);
     IloInt getVnpId();

	 void setVlinkId(IloInt b);
     IloInt getVlinkId();

	 void setLinkProfit(IloInt p);
     IloInt getVlinkProfit();

	void setCost(IloInt c);
    IloInt getCost();

	void setPeriod(IloInt p);
    IloInt getPeriod();

     void setUsedSnodeAry(IloNumArray& snodeAry);
     void getUsedSnodeAry(IloNumArray& snodeAry);

     void setActvSlinkAry(IloNumArray& slinkAry);
     void getActvSlinkAry(IloNumArray& slinkAry);

     void setBkupSlinkAry(IloNumArray& slinkAry);
     void getBkupSlinkAry(IloNumArray& slinkAry);
 };

#endif /* COMMON_SUBSTRATEPATH_H_ */
