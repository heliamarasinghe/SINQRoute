/*
 * Sommet.h
 * A Structure to Represent a Vertex
 *
 *  Created on: Feb 5, 2016
 *      Author: openstack
 */

#ifndef TRAFFICGENERATOR_SOMMET_H_
#define TRAFFICGENERATOR_SOMMET_H_

#include "ConstantsCOMMON.h"

class Vertice {
private:
	IloInt verticeId;
	IloInt current;		//may be parent
	IloInt predecesseur;
	IloInt preToCurCost;
	IloInt adjNodeAry[H_PATH];
public:
	Vertice();
	virtual ~Vertice();

	void setVerticeId(IloInt id);
	IloInt getVerticeId();

	void setCurrent(IloInt id);
	IloInt getCurrent();

	void setPrevious(IloInt pred);
	IloInt getPrevious();

	void setPreToCurCost(IloInt slCost);
	IloInt getPreToCurCost();

	void setAdjVertArray( IloNumArray& f_Tab);
	void getAdjNodeArray(IloNumArray& f_Tab);
};

#endif /* TRAFFICGENERATOR_SOMMET_H_ */
