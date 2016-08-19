/*
 * MetaEmbeddingNodes.cpp
 * A potential embedding couples of substrate node for virtual network links
 *
 *  Created on: Feb 6, 2016
 *      Author: openstack
 */

#include "MetaEmbeddingNodes.h"

Meta_Embedding_Nodes::Meta_Embedding_Nodes() {
	embeddingNodeCombinationId = 0;
	candidSrcSnode=0;
	candidDestSnode=0;
	vLinkId=0;
	vnpId=0;
	vLinkQosCls=0;
}

Meta_Embedding_Nodes::~Meta_Embedding_Nodes() {
	// TODO Auto-generated destructor stub
}

void Meta_Embedding_Nodes::setEmbeddingNodeCombinationId(IloInt n)
{
	embeddingNodeCombinationId=n;
}
IloInt Meta_Embedding_Nodes::getEmbeddingNodeCombinationId()
{
	return embeddingNodeCombinationId;
}

void Meta_Embedding_Nodes::setCandidSrcSnode(IloInt s)
{
	candidSrcSnode = s;
}
IloInt Meta_Embedding_Nodes::getCandidSrcSnode()
{
	return candidSrcSnode;
}

void Meta_Embedding_Nodes::setCandidDestSnode(IloInt d)
{
	candidDestSnode = d;
}

IloInt Meta_Embedding_Nodes::getCandidDestSnode()
{
	return candidDestSnode;
}


void Meta_Embedding_Nodes::setVlinkId(IloInt id)
{
	vLinkId=id;
}
IloInt Meta_Embedding_Nodes::getVlinkId()
{
	return vLinkId;
}

void Meta_Embedding_Nodes::setVnpId(IloInt id)
{
	vnpId=id;
}
IloInt Meta_Embedding_Nodes::getVnpId()
{
	return vnpId;
}

void Meta_Embedding_Nodes::setVlinkQosCls(IloInt cls)
{
	vLinkQosCls=cls;
}
IloInt Meta_Embedding_Nodes::getVlinkQosCls()
{
	return vLinkQosCls;
}
