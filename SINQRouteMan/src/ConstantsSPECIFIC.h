/*
 * ConstantsRUNTIME.h
 * Description: Following constants are used in TrafficGenerator, NodeEmbedder and LinkEmbedder.
 * 				Thus changes will anly trigger recompilation of those classes.
 * 				Check "../Common/ConstantsCOMMON" for remaining constants. Changes to them will recompile whole project.
 *
 *  Created on: Mar 17, 2016
 *      Author: openstack
 */

#ifndef CONSTANTSSPECIFIC_H_
#define CONSTANTSSPECIFIC_H_

//const IloInt NB_SUBSTRATE_NODES=20;
//const IloInt NB_SUBSTRATE_LINKS=30;
const IloInt NB_MAX_VNODES=4;

const IloInt NB_VNP =20;

const IloInt MAX_BW_UNIT_COST=20;
const IloInt MAX_BLADE_UNIT_COST=00;
const IloInt MAX_SUBSTRATE_NODE_COST=5;
const IloInt MAX_MEMORY_NODE_COST=3;
const IloInt MAX_STORAGE_NODE_COST=3;

const IloInt MAX_VN_NODE_CPU=5;

const IloNum decim_ppp_max=20;
const IloNum decim_ppp_min=5;

const IloNum alpha=0.9;
const IloNum beta=0.1;

const IloNum GAP = 0.0e-2;
const IloNum EPSELON_1= 0.0001;
const int MAX_ARC_NODE = 100;
const IloInt SUBSTRATE_LINK_BW = 20;		// 20	= 20 Mbps		// periodic parameter for eu link
const IloInt SUBSTRATE_NODE_CPU = 8;		// 8	= 8 Cores		// periodic parameter for eu node
const IloInt SUBSTRATE_NODE_MEM = 8;		// 8	= 8 Gb
const IloInt SUBSTRATE_NODE_STO = 8;		// 8	= 80 Gb

//constants unique to periodic traffic generator
const IloInt MAX_SUBSTRATE_NODE_GPU_COST=10;
const IloInt MAX_BLADE_COST=2;
const IloNum DROP_LOWER_BOUND=2;
const IloNum DROP_UPPER_BOUND=7;

// Constants used for flow embedding
const IloInt NUM_OF_TOR_SLOTS = 5;
const double FLOW_REQ_GEN_PROB_PCENT = 0.50;



#endif /* CONSTANTSSPECIFIC_H_ */

/* Following constants are defined in "../Common/ConstantsCOMMON" result in rebuilding the whole project
 *
 * const IloInt MAX_INCIDENCE=20;
 * const IloInt MAX_NB_LOCATION=3;
 * const IloInt H_PATH=5;
 * const IloInt GN=10000;
 * const IloInt NB_MAX_PATH=5;
 */
