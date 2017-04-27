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
	IloNum vlEmbdProfit;
	IloNum vlEmbdngCost;
	IloInt period;

	IloInt acbkPairId;
	IloInt numActvHops;
	IloInt numBkupHops;
	//IloInt actvPthCost;
	//IloInt bkupPthCost;

	int actvSnodeAry[MAX_SIZE];		// previously 3*MAX_SIZE]
	int bkupSnodeAry[MAX_SIZE];
	int actvSlinkAry[MAX_SIZE];		// previously 3*MAX_SIZE]
	int bkupSlinkAry[MAX_SIZE];		// previously 3*MAX_SIZE]

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

	void setVlEmbdProfit(IloNum p);
	IloNum getVlEmbdProfit();

	void setVlEmbdngCost(IloNum cost);
	IloNum getVlEmbdngCost();

	void setPeriod(IloInt p);
	IloInt getPeriod();

	// ------------------ Actve/backup additions---------------

	void setAcbkPairId(IloInt acbkId);
	IloInt getAcbkPairId();

	void setNumActvHops(IloInt acHops);
	IloInt getNumActvHops();

	void setNumBkupHops(IloInt bkHops);
	IloInt getNumBkupHops();

	//void setActvPthCost(IloInt c);
	//IloInt getActvPthCost();

	//void setBkupPthCost(IloInt bkCost);
	//IloInt getBkupPthCost();


	void setActvSnodeAry(IloNumArray& snodeAry);
	void getActvSnodeAry(IloNumArray& snodeAry);

	void setBkupSnodeAry(IloNumArray& snodeAry);
	void getBkupSnodeAry(IloNumArray& snodeAry);

	void setActvSlinkAry(IloNumArray& slinkAry);
	void getActvSlinkAry(IloNumArray& slinkAry);

	void setBkupSlinkAry(IloNumArray& slinkAry);
	void getBkupSlinkAry(IloNumArray& slinkAry);
};

#endif /* COMMON_SUBSTRATEPATH_H_ */
