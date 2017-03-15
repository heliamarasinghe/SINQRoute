/*
 * Sommet.cpp
 * A Structure to Represent a Vertex
 *
 *  Created on: Feb 5, 2016
 *      Author: openstack
 */

#include "Vertice.h"

Vertice::Vertice()
{
	int j=0;
	verticeId = 0;
	current=0;
	predecesseur=0;
	for(j=0;j<H_PATH;j++)
		adjNodeAry[j]=0;
}

Vertice::~Vertice()
{
	// TODO Auto-generated destructor stub
}

void Vertice::setVerticeId(int id)
{
	verticeId=id;
}

int Vertice::getVerticeId()
{
	return verticeId;
}

void Vertice::setCurrent(int id)
{
	current=id;
}

int Vertice::getCurrent()
{
	return current;
}

void Vertice::setPrevious(int pred)
{
	predecesseur = pred;
}

int Vertice::getPrevious()
{
	return predecesseur;
}

void Vertice::setAdjNodeArray( IloNumArray& f_Tab)
{
	int j;
	for(j=0;j<H_PATH;j++)
		adjNodeAry[j]= (int) f_Tab[j];
}

void Vertice::getAdjNodeArray(IloNumArray& f_Tab)
{
	int i;
	for(i=0;i<H_PATH;i++)
		f_Tab[i]= adjNodeAry[i];
}
