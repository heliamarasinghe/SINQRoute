/*
 * Tracesommet.h
 * A Structure to track generated vertexes in H-Shortest Paths
 *
 *  Created on: Feb 5, 2016
 *      Author: openstack
 */

#ifndef TRAFFICGENERATOR_TRACESOMMET_H_
#define TRAFFICGENERATOR_TRACESOMMET_H_

#include "ConstantsCOMMON.h"

class Trace_sommet {
public:
	int priority;
	int previous;
	int current;

	Trace_sommet();
	virtual ~Trace_sommet();

	Trace_sommet(int pri, int pre, int per);
	friend bool operator < (Trace_sommet const& lhs, Trace_sommet const& rhs)
	{
		return lhs.priority > rhs.priority;
	};
};

#endif /* TRAFFICGENERATOR_TRACESOMMET_H_ */
