/*
 * MetaSubstratePath.h
 * A substrate path for each link belonging to each virtual network
 *
 *  Created on: Feb 5, 2016
 *      Author: openstack
 */

#ifndef TRAFFICGENERATOR_METASUBSTRATEPATH_H_
#define TRAFFICGENERATOR_METASUBSTRATEPATH_H_

#include "ConstantsCOMMON.h"

class MetaSubPath {
private:
	IloInt metaSpathId;
	IloInt srcSnode;
	IloInt dstSnode;
	IloInt vlinkId;
	IloInt vnpId;
	IloInt pathReqId;
	IloInt numHops;
	IloNum pathCost;

	int usedSnodeAry[MAX_SIZE];
	int usedSlinkAry[MAX_SIZE];

public:
	MetaSubPath();
	virtual ~MetaSubPath();

	void setMetaSpathId(IloInt n);
	IloInt getMetaSpathId();

	void setSrcSnode(IloInt s);
	IloInt getSrcSnode();

	void setDstSnode(IloInt d);
	IloInt getDstSnode();


	void setVlinkId(IloInt id);
	IloInt getVlinkId();

	void setVnpId(IloInt id);
	IloInt getVnpId();

	void setMetaSpathReqId(IloInt id);
	IloInt getMetaSpathReqId();

	 void setNumHops(IloInt h);
	 IloInt getNumHops();

	 void setPathCost(IloNum cost);
	 IloNum getPathCost();

	void SetUsedSnodeAry(IloNumArray& node_tab);
	void getUsedSnodeAry(IloNumArray& node_used_tab);
	void setUsedSlinkAry(IloNumArray& arc_tab);
	void getUsedSlinkAry(IloNumArray& arc_used_tab);
};

#endif /* TRAFFICGENERATOR_METASUBSTRATEPATH_H_ */
