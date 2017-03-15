/*
 * Constants.h
 * Description: These Constants are used in common structs as well as other classes.
 * 				Hence any change to these conststants will result in recompilation of all structs and classses.
 *  Created on: Feb 5, 2016
 *      Author: openstack
 */

#ifndef TRAFFICGENERATOR_CONSTANTS_H_
#define TRAFFICGENERATOR_CONSTANTS_H_

#include <ilcplex/ilocplex.h>
#include <queue>
#include <map>
#include <set>


// Common Constants that result in rebuilding the whole project
const IloInt MAX_SIZE=20;

const IloInt MAX_NB_LOCATION=3;
const IloInt H_PATH=5;
const IloInt GN=10000;
const IloInt NB_MAX_PATH=5;			// Replaces MAX_PATH
const IloInt INFINI=100000;			// Used in calculating theta matrix




//----------------------------------------------------DEBUG Switches-----------------------------------------------------//
const IloBool LINK_DBG = false;


#endif /* TRAFFICGENERATOR_CONSTANTS_H_ */
