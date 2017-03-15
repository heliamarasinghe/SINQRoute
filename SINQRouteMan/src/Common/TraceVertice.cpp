/*
 * Tracesommet.cpp
 * A Structure to track generated vertexes in H-Shortest Paths
 *
 *  Created on: Feb 5, 2016
 *      Author: openstack
 */

#include "TraceVertice.h"

Trace_vertice::~Trace_vertice() {
	// TODO Auto-generated destructor stub
}

Trace_vertice::Trace_vertice()
{
	priority = 0;
	previous = 0;
	current = 0;
}

Trace_vertice::Trace_vertice(int pri, int pre, int per)
{
	priority = pri;
	previous = pre;
	current = per;
}
//Trace_sommet::Trace_sommet(): priority(0), precedent(0), pere(0){}
//Trace_sommet::Trace_sommet(int pri, int pre, int per): priority(pri), precedent(pre), pere(per){}