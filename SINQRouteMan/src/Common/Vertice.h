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

class Sommet {
private:
	int Sommet_Id;
	int current;		//may be parent
	int predecesseur;
	int Fils_tab[H_PATH];
public:
	Sommet();
	virtual ~Sommet();

	void SetVertice_Id(int id);
	int GetSommet_Id();
	void setCurrent(int id);
	int getCurrent();
	void setPrevious(int pred);
	int getPrevious();
	void SetFils_tab( IloNumArray& f_Tab);
	void GetFils_tab(IloNumArray& f_Tab);
};

#endif /* TRAFFICGENERATOR_SOMMET_H_ */
