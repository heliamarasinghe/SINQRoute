/*
 * VNRequestTopology.cpp
 * Structure to Represent a link in Original Graph
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */
#include "VNRequestTopology.h"

VNRequestTopology::VNRequestTopology(){
  vlinkCount=0;
  vnodeCount=0;
  vnpId=0;
 }

 IloInt VNRequestTopology::getVlinkCount(){
	 return vlinkCount;
 }

 void VNRequestTopology::setVlinkCount(IloInt vlCount){
	 vlinkCount=vlCount;
 }

 IloInt VNRequestTopology::getVNodeCount(){
	 return vnodeCount;
 }

 void VNRequestTopology::setVnodeCount(IloInt nodeCount){
	 vnodeCount=nodeCount;
 }

 IloInt VNRequestTopology::getVnpId(){
	 return vnpId;
 }

 void VNRequestTopology::setVnpId(IloInt id){
	 vnpId = id;
 }
