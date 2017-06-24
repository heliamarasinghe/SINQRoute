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


const IloInt INFINI=100000;			// Used in calculating theta matrix

const IloNum BKUP_COST_PERCENT = 100.0;


// Used in SRLG and shared backups. Active paths per vlink snd backup paths per vlink defines max number of
// shortest paths that are calculated
const IloInt ACTV_PER_VL	= 4;			// Default: 5  Replaces MAX_PATH
const IloInt BKUP_PER_ACTV	= 4;		// Set them to <5 for t=0 and >5 for t=1,2,3...



#endif /* TRAFFICGENERATOR_CONSTANTS_H_ */
