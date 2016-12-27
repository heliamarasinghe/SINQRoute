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

class Trace_vertice {
public:
	int priority;
	int previous;
	int current;

	Trace_vertice();
	virtual ~Trace_vertice();

	Trace_vertice(int pri, int pre, int per);
	friend bool operator < (Trace_vertice const& lhs, Trace_vertice const& rhs)
	{
		return lhs.priority > rhs.priority;
	};
};

#endif /* TRAFFICGENERATOR_TRACESOMMET_H_ */
