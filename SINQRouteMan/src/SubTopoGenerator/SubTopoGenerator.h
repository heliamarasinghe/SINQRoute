/*
 * SubTopoGenerator.h
 *
 *  Created on: Jun 10, 2016
 *      Author: openstack
 */

#ifndef SUBTOPOGENERATOR_SUBTOPOGENERATOR_H_
#define SUBTOPOGENERATOR_SUBTOPOGENERATOR_H_
#include "../Common/SDNInterDCQoS.h"
#include <vector>
#include <map>


class SubTopoGenerator {

public:
	static void generateSubTopo(vector <int>&, vector <string>&, int);

};

#endif /* SUBTOPOGENERATOR_SUBTOPOGENERATOR_H_ */
