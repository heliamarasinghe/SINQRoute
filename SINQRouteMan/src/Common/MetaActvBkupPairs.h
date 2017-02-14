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
	IloInt vlinkId;
	IloInt vnpId;
	IloInt Candidate_Embdding_Nodes_Id;
	IloInt actvPathId;
	IloInt bkupPathId;
	IloInt numActvHops;
	IloInt numBkupHops;

	int actvSnodeAry[MAX_SIZE];
	int actvSlinkAry[MAX_SIZE];
	int bkupSnodeAry[MAX_SIZE];
	int bkupSlinkAry[MAX_SIZE];

public:
	MetaActvBkupPairs();
	virtual ~MetaActvBkupPairs();

	void setActvBkupPairId(IloInt pairId);
	IloInt getActvBkupPairId();

	void setSrcVnode(IloInt src);
	IloInt getSrcVnode();

	void setDstVnode(IloInt dst);
	IloInt getDstVnode();

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
};

#endif /* COMMON_METAACTVBKUPPAIRS_H_ */
