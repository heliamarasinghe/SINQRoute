/*
 * VNRequestTopology.h
 *Structure to Represent a link in Original Graph
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */

#ifndef COMPUTENODEEMBEDDER_VNREQUESTTOPOLOGY_H_
#define COMPUTENODEEMBEDDER_VNREQUESTTOPOLOGY_H_

#include "ConstantsCOMMON.h"

class VNRequestTopology
{
 private:
 IloInt vlinkCount;
 IloInt vnodeCount;
 IloInt vnpId;
 public:

 VNRequestTopology();

 IloInt getVlinkCount();
 void setVlinkCount(IloInt vlCount);

 IloInt getVNodeCount();
 void setVnodeCount(IloInt nodeCount);

 IloInt getVnpId();
 void setVnpId(IloInt id);
};

#endif /* COMPUTENODEEMBEDDER_VNREQUESTTOPOLOGY_H_ */
