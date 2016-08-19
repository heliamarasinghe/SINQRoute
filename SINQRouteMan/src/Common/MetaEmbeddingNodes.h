/*
 * MetaEmbeddingNodes.h
 * A potential embedding couples of substrate node for virtual network links
 *
 *  Created on: Feb 6, 2016
 *      Author: openstack
 */

#ifndef TRAFFICGENERATOR_METAEMBEDDINGNODES_H_
#define TRAFFICGENERATOR_METAEMBEDDINGNODES_H_

#include "ConstantsCOMMON.h"

class Meta_Embedding_Nodes {
private:
	IloInt embeddingNodeCombinationId;
	IloInt candidSrcSnode;
	IloInt candidDestSnode;
	IloInt vLinkId;
	IloInt vnpId;
	IloInt vLinkQosCls;
public:
	Meta_Embedding_Nodes();
	virtual ~Meta_Embedding_Nodes();

	void setEmbeddingNodeCombinationId(IloInt n);
	IloInt getEmbeddingNodeCombinationId();

	void setCandidSrcSnode(IloInt s);
	IloInt getCandidSrcSnode();

	void setCandidDestSnode(IloInt d);
	IloInt getCandidDestSnode();


	void setVlinkId(IloInt id);
	IloInt getVlinkId();

	void setVnpId(IloInt id);
	IloInt getVnpId();

	void setVlinkQosCls(IloInt cls);
	IloInt getVlinkQosCls();
};

#endif /* TRAFFICGENERATOR_METAEMBEDDINGNODES_H_ */
