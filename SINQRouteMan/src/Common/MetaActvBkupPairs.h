/*
 * MetaActvBkupPairs.h
 *
 *  Created on: Feb 13, 2017
 *      Author: openstack
 */

#ifndef COMMON_METAACTVBKUPPAIRS_H_
#define COMMON_METAACTVBKUPPAIRS_H_


#include "ConstantsCOMMON.h"

class MetaActvBkupPairs {
private:
	IloInt actvBkupPairId;
	IloInt srcVnode;
	IloInt dstVnode;
	IloInt srcSnode;
	IloInt dstSnode;
	IloInt vlinkId;
	IloInt vnpId;
	IloInt Candidate_Embdding_Nodes_Id;
	IloInt actvPathId;
	IloInt bkupPathId;
	IloNum bkupEpstinCost;
	IloInt numActvHops;
	IloInt numBkupHops;

	int actvSnodeAry[MAX_SIZE];
	int actvSlinkAry[MAX_SIZE];
	int bkupSnodeAry[MAX_SIZE];
	int bkupSlinkAry[MAX_SIZE];
	IloNum bkSlBwUnitsReqAry[MAX_SIZE];
	//

public:
	MetaActvBkupPairs();
	virtual ~MetaActvBkupPairs();

	void setActvBkupPairId(IloInt pairId);
	IloInt getActvBkupPairId();

	void setSrcVnode(IloInt vnode);
	IloInt getSrcVnode();

	void setDstVnode(IloInt vnode);
	IloInt getDstVnode();

	void setSrcSnode(IloInt snode);
	IloInt getSrcSnode();

	void setDstSnode(IloInt snode);
	IloInt getDstSnode();

	void setVlinkId(IloInt vlinkId);
	IloInt getVlinkId();

	void setVnpId(IloInt vnp);
	IloInt getVnpId();

	void setMetaSubPathReqId(IloInt id);
	IloInt getCandidSnodeCombiId();

	void setActvPathId(IloInt pathId);
	IloInt getActvPathId();

	void setBkupPathId(IloInt pathId);
	IloInt getBkupPathId();

	void setBkupEpstinCost(IloNum pathCost);
	IloNum getBkupEpstinCost();

	void setNumActvHops(IloInt hops);
	IloInt getNumActvHops();

	void setNumBkupHops(IloInt hops);
	IloInt getNumBkupHops();

	void setActvSnodeAry(IloNumArray& snodeAry);
	void getActvSnodeAry(IloNumArray& snodeAry);

	void setBkupSnodeAry(IloNumArray& snodeAry);
	void getBkupSnodeAry(IloNumArray& snodeAry);

	void setActvSlinkAry(IloNumArray& slinkAry);
	void getActvSlinkAry(IloNumArray& slinkAry);

	void setBkupSlinkAry(IloNumArray& slinkAry);
	void getBkupSlinkAry(IloNumArray& slinkAry);

	void setBkSlBwUnitsReqAry(IloNumArray& bwUniReqAry);
	void getBkSlBwUnitsReqAry(IloNumArray& bwUniReqAry);
};

#endif /* COMMON_METAACTVBKUPPAIRS_H_ */
