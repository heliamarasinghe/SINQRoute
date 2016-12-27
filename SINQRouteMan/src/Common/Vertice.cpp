/*
 * Sommet.cpp
 * A Structure to Represent a Vertex
 *
 *  Created on: Feb 5, 2016
 *      Author: openstack
 */

#include "Vertice.h"

Sommet::Sommet()
{
	int j=0;
	Sommet_Id = 0;
	current=0;
	predecesseur=0;
	for(j=0;j<H_PATH;j++)
		Fils_tab[j]=0;
}

Sommet::~Sommet()
{
	// TODO Auto-generated destructor stub
}

void Sommet::SetVertice_Id(int id)
{
	Sommet_Id=id;
}

int Sommet::GetSommet_Id()
{
	return Sommet_Id;
}

void Sommet::setCurrent(int id)
{
	current=id;
}

int Sommet::getCurrent()
{
	return current;
}

void Sommet::setPrevious(int pred)
{
	predecesseur = pred;
}

int Sommet::getPrevious()
{
	return predecesseur;
}

void Sommet::SetFils_tab( IloNumArray& f_Tab)
{
	int j;
	for(j=0;j<H_PATH;j++)
		Fils_tab[j]= (int) f_Tab[j];
}

void Sommet::GetFils_tab(IloNumArray& f_Tab)
{
	int i;
	for(i=0;i<H_PATH;i++)
		f_Tab[i]= Fils_tab[i];
}
