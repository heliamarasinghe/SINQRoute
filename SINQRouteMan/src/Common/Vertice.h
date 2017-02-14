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
	int verticeId;
	int current;		//may be parent
	int predecesseur;
	int Fils_tab[H_PATH];
public:
	Vertice();
	virtual ~Vertice();

	void setVerticeId(int id);
	int getVerticeId();
	void setCurrent(int id);
	int getCurrent();
	void setPrevious(int pred);
	int getPrevious();
	void setAdjNodeArray( IloNumArray& f_Tab);
	void getAdjNodeArray(IloNumArray& f_Tab);
};

#endif /* TRAFFICGENERATOR_SOMMET_H_ */
