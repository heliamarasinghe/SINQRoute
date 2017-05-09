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
const IloInt GN=20000;
const IloInt ACTV_PER_VL=6;			// Replaces MAX_PATH
const IloInt BKUP_PER_ACTV = 6;
const IloInt INFINI=100000;			// Used in calculating theta matrix

const IloNum BKUP_COST_PERCENT = 100.0;


/*
//----------------------------------------------------DEBUG Switches-----------------------------------------------------//
const IloBool LINK_DBG0 = false;	// Reading Files
const IloBool LINK_DBG1 = false;	// Active path calculation
const IloBool LINK_DBG2 = true;	// Active/backup pair calculation
const IloBool LINK_DBG3 = false;	// Constraints and Objective Function
const IloBool LINK_DBG4 = true;		// Embedding Result
const IloBool LINK_DBG5 = false;	// Performance Evaluation
*/



#endif /* TRAFFICGENERATOR_CONSTANTS_H_ */
