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
	preToCurCost=0;
	for(j=0;j<H_PATH;j++)
		adjNodeAry[j]=0;
}

Vertice::~Vertice(){
	// TODO Auto-generated destructor stub
}

void Vertice::setVerticeId(IloInt id){
	verticeId=id;
}
IloInt Vertice::getVerticeId(){
	return verticeId;
}

void Vertice::setCurrent(IloInt id){
	current=id;
}
IloInt Vertice::getCurrent(){
	return current;
}

void Vertice::setPrevious(IloInt pred){
	predecesseur = pred;
}
IloInt Vertice::getPrevious(){
	return predecesseur;
}

void Vertice::setPreToCurCost(IloInt slCost){
	preToCurCost = slCost;
}
IloInt Vertice::getPreToCurCost(){
	return preToCurCost;
}

void Vertice::setAdjNodeArray(IloNumArray& f_Tab){
	for(int j=0;j<H_PATH;j++)
		adjNodeAry[j]= f_Tab[j];
}
void Vertice::getAdjNodeArray(IloNumArray& f_Tab){
	for(int i=0;i<H_PATH;i++)
		f_Tab[i]= adjNodeAry[i];
}
