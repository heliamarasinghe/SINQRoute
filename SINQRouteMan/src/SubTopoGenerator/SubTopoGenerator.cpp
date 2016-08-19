/*
 * SubTopoGenerator.cpp
 *
 *  Created on: Jun 10, 2016
 *      Author: openstack
 */

#include "SubTopoGenerator.h"
ILOSTLBEGIN


void SubTopoGenerator::generateSubTopo(vector<int>& switchVect, vector<string>& linkVect){
	cout<<"Generating substrate topology file"<<endl;

	multimap<int, int> linkMap;
	for (string linkId: linkVect){

		// Splitting links and putting src and dst switches into a vector
		vector <int> elems;
		stringstream ss(linkId);
		string item;
		while (getline(ss, item, '-')) {
			elems.push_back(stoi(item));
		}
		linkMap.insert(make_pair(elems[0],elems[1]));

	}

	int numSwitches = switchVect.size();
	int numLinks = linkMap.size();
	//cout<<"\tnumSwitches = "<<numSwitches<<"\tnumLinks"<<numLinks<<endl;
	try{
		const char*  f1_subTopo		= "DataFiles/init/f1_subTopo_auto.txt";			// init/f1_subTopo.txt
		cout<<"\tWriting Generated topology to "<<f1_subTopo<<endl;
		ofstream file1(f1_subTopo);

		if (!file1)
		  cerr << "ERROR: could not open file `"<< f1_subTopo << "`for writing"<< endl;

		file1<<numSwitches<<endl;
		file1<<numLinks<<endl;
		int linkCount = 1;
			for(multimap<int,int>::iterator itr=linkMap.begin(); itr != linkMap.end(); ++itr){
				//cout<<"\t"<<linkCount<<"\t"<<itr->first<<"\t"<<itr->second<<endl;
				file1<<linkCount<<"\t"<<itr->first<<"\t"<<itr->second<<endl;
						linkCount++;
			}

		file1.close();
	}
	catch (IloException& e)
	     {
			  cerr << "ERROR: " << e.getMessage()<< endl;
		 }

}

