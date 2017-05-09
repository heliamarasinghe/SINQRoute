/*
 * LinkEmbedder.cpp
 *
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */

#include "../LinkEmbedder/LinkEmbedder.h"

//#include <queue>

//***************************************************************************************************
//                      Search for a node embedding                                                 *
//***************************************************************************************************

IloInt LinkEmbedder::search_node_embedding(Virtual_Node_Embedding_tab& emb_tab, IloInt& vnode, IloInt& num_vnp, IloInt& nbr_vnode)
{

	IloInt k=0, find_node=0, emb_node=0, current_vnode=0, current_vnp=0;

	while ((k< nbr_vnode)&&(find_node==0))
	{
		current_vnode = emb_tab[k].getVnodeId();
		current_vnp = emb_tab[k].getVnpId();

		IloBool equal_vnode = (current_vnode == vnode);
		IloBool equal_vnp = (current_vnp == num_vnp );

		if ((equal_vnode)&&(equal_vnp))
		{
			emb_node = emb_tab[k].getCandidSnodeId();
			find_node =1;
		}

		k++;
	}


	return emb_node;

}



//***************************************************************************************************
//                      Search the embedding Path for each virtual link                             *
//***************************************************************************************************

void LinkEmbedder::search_embedding_path(MetaSubPathAryType& path_tab, IloInt& nb_path,IloInt& path_id ,IloInt& vnp_num, IloInt& qos, IloInt& bid, SubstratePathAryType& embedding_tab,
		IloInt& current_nb_path,  IloNumArray& link_cost_tab, IloNumArray& node_cost_tab,  LinkQosClsAryType&  QoS_Vect, IloInt& s_cpu, IloInt& d_cpu, IloEnv& env_3)

{


	IloInt i=0,j=0, more_node=0, more_arc=0, length=MAX_SIZE, profit=0, bw=0, cost=0, link_cost=0;
	IloInt vlinkId=0, srcSnode=0, dstSnode=0, current_arc=0, current_path=0, find_path=0;

	IloNumArray node_list(env_3,length);
	IloNumArray arc_list(env_3,length);
	i=0;
	find_path=0;
	while ((i<nb_path)&&(find_path==0)){
		current_path =  path_tab[i].getMetaSpathId();

		IloBool equal_path = (current_path == path_id);

		if (equal_path){
			find_path=1;

			arrayZeroInitialize(node_list,length);
			arrayZeroInitialize(arc_list,length);

			vlinkId =  path_tab[i].getVlinkId();
			srcSnode =    path_tab[i].getSrcSnode();
			dstSnode =   path_tab[i].getDstSnode();

			embedding_tab[current_nb_path].setVlinkId(vlinkId);
			embedding_tab[current_nb_path].setSrcSnode(srcSnode);
			embedding_tab[current_nb_path].setDstSnode(dstSnode);
			embedding_tab[current_nb_path].setQosCls(qos);
			embedding_tab[current_nb_path].setVnpId(vnp_num);

			//cout<<"Virtual Link id:"<<current_vlink<<endl;
			//cout<<"Source:"<<current_src<<endl;
			//cout<<"Destination:"<<current_dest<<endl;
			if(LINK_DBG5) cout<<"\t"<< vlinkId <<"\t"<< path_id <<"\t"<< srcSnode <<"\t"<< dstSnode<<"\t[";


			path_tab[i].getUsedSnodeAry(node_list);
			embedding_tab[current_nb_path].setActvSnodeAry(node_list);

			j=0;
			more_node=0;

			while((j<length)&&(more_node==0)){
				IloBool  estvide=(node_list[j]==0);
				if  (!estvide){
					//cout<< "Num Node:"<< node_list[j]<<" ";
					if(LINK_DBG5)cout<<node_list[j]<<" ";
					j++;
				}
				else
					more_node=1;
			}

			path_tab[i].getUsedSlinkAry(arc_list);
			embedding_tab[current_nb_path].setActvSlinkAry(arc_list);

			bw = QoS_Vect[qos-1].getQosClsBw();

			if(LINK_DBG5) cout<<"]\t[";

			j=0;
			more_arc=0;
			cost =0;

			while ((j<length) && (more_arc==0)){
				current_arc = arc_list[j];
				IloBool  estzero=(current_arc==0);
				if  (!estzero)
				{
					//cout<< "Num Arc:"<< current_arc<<" ";
					if(LINK_DBG5)cout<<current_arc<<" ";
					link_cost = link_cost_tab[current_arc-1];
					cost+= bw*link_cost;
					j++;
				}
				else
					more_arc=1;
			}
			if(LINK_DBG5)cout<<"]"<<endl;

			cost+=  ( s_cpu* node_cost_tab[srcSnode-1] + d_cpu*node_cost_tab[dstSnode-1]);

			profit = bid - cost;

			embedding_tab[current_nb_path].setVlEmbdProfit(profit);
			embedding_tab[current_nb_path].setVlEmbdngCost(cost);

			current_nb_path++;

			//cout<<endl;
			//cout<<endl;

		}// end if

		i++;

	}// end for

	//----------------------------
	//    Free used Memory       -
	//----------------------------
	arc_list.end();
	node_list.end();
}


//***************************************************************************************************
//                      Search the embedding Path for each virtual link                             *
// 		searchEmbdAcbkPair do the same job as search_embedding_path for linkEmbedderWithBkup		*
//***************************************************************************************************
void LinkEmbedder::searchEmbdAcbkPair(MetaActvBkupPairAryType& actvBkupPathPairAry, IloInt& nb_path,IloInt& path_id ,IloInt& vnpId, IloInt& qos, IloInt& bid, SubstratePathAryType& newlyEmbdedVlinkAry,
		IloInt& embdVlItr,  IloNumArray& slinkBwUnitCostAry, IloNumArray& node_cost_tab,  LinkQosClsAryType&  QoS_Vect, IloInt& s_cpu, IloInt& d_cpu, IloEnv& env){


	IloInt acbkItr=0;
	IloInt find_path=0;

	while ((acbkItr<nb_path)&&(find_path==0)){
		IloInt acbkPairId =  actvBkupPathPairAry[acbkItr].getActvBkupPairId();

		if (acbkPairId == path_id){
			find_path=1;
			IloInt vlinkId =  actvBkupPathPairAry[acbkItr].getVlinkId();
			IloInt srcSnode = actvBkupPathPairAry[acbkItr].getSrcSnode();
			IloInt dstSnode = actvBkupPathPairAry[acbkItr].getDstSnode();

			newlyEmbdedVlinkAry[embdVlItr].setVlinkId(vlinkId);							// SAVE:	vlinkId
			newlyEmbdedVlinkAry[embdVlItr].setSrcSnode(srcSnode);						// SAVE:	srcSnode
			newlyEmbdedVlinkAry[embdVlItr].setDstSnode(dstSnode);						// SAVE:	dstSnode
			newlyEmbdedVlinkAry[embdVlItr].setQosCls(qos);								// SAVE:	qos
			newlyEmbdedVlinkAry[embdVlItr].setVnpId(vnpId);								// SAVE:	vnp_num

			if(LINK_DBG5) cout<<"\t"<<vnpId<<"\t"<< vlinkId <<"\t"<< path_id <<"\t"<< srcSnode <<"\t"<< dstSnode<<"\t[ ";

			newlyEmbdedVlinkAry[embdVlItr].setAcbkPairId(acbkPairId);
			IloInt numActvHops =  actvBkupPathPairAry[acbkItr].getNumActvHops();
			newlyEmbdedVlinkAry[embdVlItr].setNumActvHops(numActvHops);
			IloInt numBkupHops = actvBkupPathPairAry[acbkItr].getNumBkupHops();
			newlyEmbdedVlinkAry[embdVlItr].setNumBkupHops(numBkupHops);


			IloNumArray actvSnodeAry(env, MAX_SIZE);
			actvBkupPathPairAry[acbkItr].getActvSnodeAry(actvSnodeAry);
			newlyEmbdedVlinkAry[embdVlItr].setActvSnodeAry(actvSnodeAry);				// SAVE:	actvSnodeAry

			IloNumArray bkupSnodeAry(env, MAX_SIZE);
			actvBkupPathPairAry[acbkItr].getBkupSnodeAry(bkupSnodeAry);
			newlyEmbdedVlinkAry[embdVlItr].setBkupSnodeAry(bkupSnodeAry);				// SAVE:	bkupSnodeAry

			IloNumArray actvSlinkAry(env, MAX_SIZE);
			actvBkupPathPairAry[acbkItr].getActvSlinkAry(actvSlinkAry);
			newlyEmbdedVlinkAry[embdVlItr].setActvSlinkAry(actvSlinkAry);				// SAVE: 	actvSlinkAry

			IloInt bwUnitsReq = QoS_Vect[qos-1].getQosClsBw();
			IloNum actvPthcost = 0.0;

			IloInt actvSlinkCount = actvBkupPathPairAry[acbkItr].getNumActvHops();
			for(IloInt aslItr=0; aslItr<actvSlinkCount; aslItr++){
				IloInt actvSlink = actvSlinkAry[aslItr];
				if(LINK_DBG5)cout<<actvSlink<<" ";
				IloNum slBwUniCost = slinkBwUnitCostAry[actvSlink-1];
				actvPthcost += bwUnitsReq * slBwUniCost;
			}
			/*
							//---------- Active path embedding cost ----------//
				IloNum vlActvPthCost=0;
				IloNumArray actvSlinkAry(env, MAX_SIZE);
				actvBkupPathPairAry[yIndx].getActvSlinkAry(actvSlinkAry);

				IloInt actvSlinkCount = actvBkupPathPairAry[yIndx].getNumActvHops();
				for(IloInt aslItr=0; aslItr<actvSlinkCount; aslItr++){
					IloInt aslId = actvSlinkAry[aslItr];
					IloInt bwUniCost = bw_unit_cost_vect[aslId];
					vlActvPthCost += bwUniCost*vlReqBw;
				}


			*/
			if(LINK_DBG5){
				cout<<"]\t";
				if(actvSlinkCount<2) cout<<"\t";
				cout<<"[ ";
			}
			IloNumArray bkupSlinkAry(env, MAX_SIZE);
			actvBkupPathPairAry[acbkItr].getBkupSlinkAry(bkupSlinkAry);
			newlyEmbdedVlinkAry[embdVlItr].setBkupSlinkAry(bkupSlinkAry);				// SAVE:	bkupSlinkAry
			IloInt bkupSlinkCount = actvBkupPathPairAry[acbkItr].getNumBkupHops();
			for(IloInt bslItr=0; bslItr<bkupSlinkCount; bslItr++){
				IloInt bkupSlink = bkupSlinkAry[bslItr];
				if(LINK_DBG5)cout<<bkupSlink<<" ";
			}
			if(LINK_DBG5){
				cout<<"]\t";
				if(bkupSlinkCount<5) cout<<"\t";
			}

			//IloNum nodeCpuCost =  s_cpu* node_cost_tab[srcSnode-1] + d_cpu*node_cost_tab[dstSnode-1];
			//actvPthcost +=  nodeCpuCost;	// In our formulation, path cost does not include node cpu costs
			IloNum bkupPthCost = actvBkupPathPairAry[acbkItr].getBkupEpstinCost()*(BKUP_COST_PERCENT/100.0);
			IloNum acbkPairEmbdCost = actvPthcost + bkupPthCost;
			IloNum profit = bid - acbkPairEmbdCost;

			cout<<bid<<"\t"<<actvPthcost<<"+"<<bkupPthCost<<"\t\t"<<profit<<endl;

			newlyEmbdedVlinkAry[embdVlItr].setVlEmbdProfit(profit);						// SAVE:	profit
			newlyEmbdedVlinkAry[embdVlItr].setVlEmbdngCost(acbkPairEmbdCost);					// SAVE:	acbkPairEmbdCost

			embdVlItr++;


		}// end if

		acbkItr++;

	}// end for

	//----------------------------
	//    Free used Memory       -
	//----------------------------
	//arc_list.end();
	//node_list.end();
}

//***************************************************************************************************
//                      Search the Index of a Variable Associated to a Path and a Request           *
//***************************************************************************************************
// This function seems useless
IloInt LinkEmbedder::search_var_index(VLink_Embedding_Trace_Tab& vlink_trace_x, IloInt& vlink, IloInt& path_id, IloInt& x_size)

{
	IloInt index=0;
	IloInt find_var=0;
	IloInt s=0;
	IloInt current_vlink=0;
	IloInt current_path_num=0;

	while ((find_var == 0) && (s <x_size )){
		current_vlink=  vlink_trace_x[s].getVlinkId();
		current_path_num =  vlink_trace_x[s].getShortestPathId();

		if ((current_vlink == vlink) && (current_path_num == path_id)){
			index =  vlink_trace_x[s].GetVar_Index();
			find_var = 1;
		}
		else
			s++;
	}


	return index;

}

//***************************************************************************************************
//                      calculate the cost of potantial embedding shortestpath                      *
//***************************************************************************************************

IloInt LinkEmbedder::calculate_cost_potantial_emb_shortestpath(MetaSubPathAryType& emb_path_vect, IloInt& nb_path, IloInt& src, IloInt& dest,
		IloInt& vnp_num, IloInt& bandwidth, IloInt& vlink, IloNumArray& link_cost_tab,
		IloNumArray& node_cost_tab, IloEnv& env_0){

	IloInt emb_cost=0, no_more_substrate_link=0, src_request=0, dest_request=0, vlink_num=0, current_vnp=0;
	IloInt k=0,h=0, exit=0, length = MAX_SIZE, current_substrate_link=0, src_cost=0, dest_cost=0;
	IloNumArray used_arc_tab(env_0,length);
	arrayZeroInitialize(used_arc_tab, length);
	while ((k < nb_path)&&(exit==0)){
		src_request =  emb_path_vect[k].getSrcSnode();
		dest_request =  emb_path_vect[k].getDstSnode();
		current_vnp =  emb_path_vect[k].getVnpId();
		vlink_num =  emb_path_vect[k].getVlinkId();
		IloBool equal_src = (src_request == src);
		IloBool equal_dest = (dest_request == dest);
		IloBool equal_vnp_id = (current_vnp == vnp_num);
		IloBool equal_link_id = (vlink_num == vlink);

		if ((equal_src)&&(equal_dest)&&(equal_vnp_id)&&(equal_link_id)){
			emb_path_vect[k].getUsedSlinkAry(used_arc_tab);
			exit=1;
		}
		k++;
	}
	h=0;
	no_more_substrate_link=0;
	while ((h < length)&&(no_more_substrate_link==0)){
		current_substrate_link =  used_arc_tab[h];
		IloBool Not_nul = (current_substrate_link!=0);
		if(Not_nul)
			emb_cost+= bandwidth*link_cost_tab[current_substrate_link-1];
		//else
		//no_more_substrate_link;
		h++;
	}
	src_cost =  node_cost_tab[src-1];
	dest_cost =  node_cost_tab[dest-1];
	emb_cost+= src_cost + dest_cost;
	return emb_cost;
}
//***************************************************************************************************
//                       			Search an Arc in a Table                                        *
//***************************************************************************************************
bool LinkEmbedder::linkInAry(IloInt& sarc, IloNumArray& sarc_tab){
	bool linkFound=false;
			IloInt more_arc=0, l=0, current_arc=0;
	while ((l<MAX_SIZE)&&(more_arc==0)){
		current_arc = sarc_tab[l];
		//IloBool non_nul = (current_arc !=0);
		if (current_arc !=0){
			if (current_arc == sarc){
				more_arc=1;
				linkFound=1;
			}
			else
				l++;
		}
		else
			more_arc=1;
	}
	return linkFound;
}

// Duplicate of above linkInAry function that also return the index. Used in LinkEmbedder
IloInt LinkEmbedder::slinkIndxInAry(IloInt& sarc, IloNumArray& sarc_tab){
	IloInt slinkIndx=MAX_SIZE;
			IloInt more_arc=0, l=0, current_arc=0;
	while ((l<MAX_SIZE)&&(more_arc==0)){
		current_arc = sarc_tab[l];
		//IloBool non_nul = (current_arc !=0);
		if (current_arc !=0){
			if (current_arc == sarc){
				more_arc=1;
				slinkIndx=l;
			}
			else
				l++;
		}
		else
			more_arc=1;
	}
	return slinkIndx;
}

//***************************************************************************************************************************
//		                           Creation of path embdedding variables                                                    *
//***************************************************************************************************************************
IloInt LinkEmbedder::creation_path_embedding_var(VlinkReqAryType& vLinkReqVect, IloInt& numVlinkReq, MetaSubPathAryType& metaPathVect, IloInt& numPaths, IloNumVarArray& x, VLink_Embedding_Trace_Tab& path_embedding_trace_x, IloEnv& env){
	//IloInt k=0, l=0, current_request=0, more_path=0, request_id=0, var_index=0, vlink_id=0, current_vlink=0;
	//IloInt num_path=0,
	IloInt x_VECT_LENGTH=0;
	//---------------------------------------------------------------
	// Create one variable for each request and for each used path  -
	//---------------------------------------------------------------
	for(IloInt vlReqItr=0; vlReqItr<numVlinkReq; vlReqItr++){
		IloInt vlinkId = vLinkReqVect[vlReqItr].getVlinkId();
		for (IloInt l=0; l< numPaths; l++){
			IloInt vLinkForShortPath = metaPathVect[l].getVlinkId(); //pathVect contains multiple substrate shortest paths for each virtual link
			if ( vLinkForShortPath == vlinkId){
				IloInt shortestPathId =  metaPathVect[l].getMetaSpathId();
				char path_char[10];
				sprintf(path_char,"%ld",shortestPathId);
				char current_vlink_char[10];
				sprintf(current_vlink_char,"%ld",vlinkId);
				char var_name[50]= "pi";
				strcat(var_name,path_char);
				strcat(var_name, " k");
				strcat(var_name, current_vlink_char);
				x.add(IloNumVar(env,0,1,ILOINT, var_name));
				path_embedding_trace_x[x_VECT_LENGTH].setVlinkId(vlinkId);
				path_embedding_trace_x[x_VECT_LENGTH].setShortestPathId(shortestPathId);
				path_embedding_trace_x[x_VECT_LENGTH].SetXindx(x_VECT_LENGTH);
				x_VECT_LENGTH++;
			} // a path pi used by the current request k
		} // for all paths
	}// for all requests
	return x_VECT_LENGTH;
}

IloInt LinkEmbedder::createBinaryVarForActvBkupPairs(MetaActvBkupPairAryType& actvBkupPathPairAry, IloInt& numActvBkupPairs, IloNumVarArray& yAry, VLink_Embedding_Trace_Tab& traceYary, IloEnv& env){
	IloInt xIndx=0;
	while (xIndx< numActvBkupPairs){
		IloInt vlinkId = actvBkupPathPairAry[xIndx].getVlinkId();			// acbk = active/backup
		IloInt acbkPairId =  actvBkupPathPairAry[xIndx].getActvBkupPairId();
		//cout<<"\n\tacbkPairId = "<<acbkPairId<<" \txIndx = "<<xIndx<<endl;
		char cAcbkPair[10];
		sprintf(cAcbkPair,"%ld",acbkPairId);
		char cVlink[10];
		sprintf(cVlink,"%ld",vlinkId);
		char var_name[50]= "(π,ρ)";
		strcat(var_name,cAcbkPair);
		strcat(var_name, "↑e");			//in .lp file format, variable name cannot be started with e and cannot have ^ * or squre brackets [ ].
		strcat(var_name, cVlink);
		yAry.add(IloNumVar(env,0,1,ILOINT, var_name));
		traceYary[xIndx].setVlinkId(vlinkId);
		traceYary[xIndx].setShortestPathId(acbkPairId);
		traceYary[xIndx].SetXindx(xIndx);
		xIndx++;
	}
	return xIndx;
}

//------------------------------------------------------------------------------------------------------------------------------------//
//		                       			    Creation of flow embdedding variables                                                  	//
// 	Create one variable for each element in shortestPathVect																		//
//	Each variable represents whether each flow request embedded or not in each shortest path in substrrate							//
//	If the flow request f is embedded on the shortest path pi, the corresponding variable in x will be 1. Otherwier 0				//
// 	x = [ 	0,			0,			0,			0,			0,			0,			0,			0,			0,		..	]			//
// 		f1->pi0		f1->pi1		f1->pi2		f1->pi3		f1->pi4		f2->pi5		f3->pi6		f4->pi7		f4->pi8		..				//
//------------------------------------------------------------------------------------------------------------------------------------//
/*IloInt LinkEmbedder::creation_flow_embedding_var(flowRequest_Tab& flowReqVect, VlinkReqAryType& vLinkReqVect, IloInt& numVlinkReq, MetaSubPathAryType& pathVect, IloInt& numPaths, IloNumVarArray& x, VLink_Embedding_Trace_Tab& path_embedding_trace_x, IloEnv& env){
	IloInt x_VECT_LENGTH=0;
	//for(IloInt vLinkReqItr=0; vLinkReqItr<numVlinkReq; vLinkReqItr++){
	for(IloInt flowReqItr=0; flowReqItr<flowReqVect.getSize(); flowReqItr++){
		IloInt vLinkOfFlow = flowReqVect[flowReqItr].getVlinkId();
		for (IloInt l=0; l< numPaths; l++){
			IloInt vLinkForShortPath = pathVect[l].getVlinkId(); //pathVect contains multiple substrate shortest paths for each virtual link
			if ( vLinkForShortPath == vLinkOfFlow){
				IloInt shortestPathId =  pathVect[l].getMetaSpathId();
				char path_char[10];
				char current_vlink_char[10];
				char var_name[50]= "pi";
				sprintf(path_char,"%ld",shortestPathId);				// %ld for long. IloInt is a long integer
				sprintf(current_vlink_char,"%ld",vLinkOfFlow);
				strcat(var_name,path_char);
				strcat(var_name, " f");
				strcat(var_name, current_vlink_char);
				x.add(IloNumVar(env,0,1,ILOINT, var_name));
				path_embedding_trace_x[x_VECT_LENGTH].SetVirtual_Link_Id(vLinkOfFlow);
				path_embedding_trace_x[x_VECT_LENGTH].SetNum_Path(shortestPathId);
				path_embedding_trace_x[x_VECT_LENGTH].SetVar_Index(x_VECT_LENGTH);
				x_VECT_LENGTH++;
			} // a path pi used by the current request k
		} // for all paths
	}// for all requests
	return x_VECT_LENGTH;
}

 */
//***************************************************************************************************************************
//                          				Creating VN request embedding variable                                                            *
//***************************************************************************************************************************
// 					vnp_variable_creation(embedding_trace_z, 								z, 					accepted_vnp_id_tab, 	nb_accepted_vnp, 	env);
void LinkEmbedder::vnp_variable_creation(VN_Embedding_Trace_Tab& traceZary, IloNumVarArray& zAry, IloNumArray& accepted_vnp_vect, IloInt& nunOfAccpetedVnps, IloEnv& env){
	//IloInt k=0, num_vnp=0;
	for(IloInt vnpItr=0; vnpItr<nunOfAccpetedVnps; vnpItr++){
		IloInt vnpId =  accepted_vnp_vect[vnpItr];
		char vnp_char[10];
		char var_name[50]= "vnp";

		sprintf(vnp_char,"%d", (int)vnpId);
		strcat(var_name, vnp_char);
		zAry.add(IloNumVar(env,0,1,ILOINT,var_name));

		traceZary[vnpItr].SetVar_Index(vnpItr);
		traceZary[vnpItr].SetVNP_Id(vnpId);
	}// all for VNP
}

//***************************************************************************************************************************
//                         At least one embedding path is selected for each link in accepted VN request                               *
//***************************************************************************************************************************
//	no_partially_VN_embedding				(				adedVlinkReqVect, adedVlinkCountInPhOne, 				actvPathAry, 				actvPathCount, 							traceyAry, 									yAry, 		xLength, 					zAry, 						traceZary, 					nb_accepted_vnp, 			ILP_model, 			env);
void LinkEmbedder::no_partially_VN_embedding(VlinkReqAryType& vLinkReqVect, IloInt& numVlinkReq, MetaSubPathAryType& shortestPathVect, IloInt& numShortestPaths, VLink_Embedding_Trace_Tab& vlink_embedding_trace_x, IloNumVarArray& x, IloInt& x_VECT_LENGTH, IloNumVarArray& z, VN_Embedding_Trace_Tab& embedding_trace_z, IloInt& nb_accepted_vnp, IloModel& ILP_model, IloEnv& env){
	IloInt path_var_index=0;
	for(IloInt vlItr=0; vlItr<numVlinkReq; vlItr++){
		IloInt vLinkId = vLinkReqVect[vlItr].getVlinkId();
		IloInt vnpId = vLinkReqVect[vlItr].getVnpId();
		IloInt exit_path=0, j=0, more_emb_path=0;

		while ((j < numShortestPaths) &&(more_emb_path==0)){
			IloInt cvlink = shortestPathVect[j].getVlinkId();
			if (cvlink == vLinkId){
				IloInt path_num = shortestPathVect[j].getMetaSpathId();
				path_var_index = search_var_index(vlink_embedding_trace_x, cvlink, path_num, x_VECT_LENGTH);
				exit_path=1;
				more_emb_path=1;
			}// embdedding path for virtual link
			j++;
		}// end while embedding paths

		if (exit_path==1){
			char constraint_name[100]= "Embedding clash const of vlink";
			char vlink_char[10];
			char vnp_char[10];

			sprintf(vlink_char,"%ld",vLinkId);
			sprintf(vnp_char,"%ld",vnpId);

			strcat(constraint_name, vlink_char);
			strcat(constraint_name, "_vnp_");
			strcat(constraint_name, vnp_char);
			IloExpr v(env);
			IloInt zIndexOfVnp = search_z_index(vnpId, embedding_trace_z, nb_accepted_vnp);
			v = z[zIndexOfVnp] - x[path_var_index];
			if(LINK_DBG3){
				cout<<"\n\tvLinkItr = "<<vlItr<<endl;
				cout<<"\tvLinkId = "<<vLinkId<<endl;
				cout<<"\tvnpId = "<<vnpId<<endl;
				cout<<"\tzIndexOfVnp = "<<zIndexOfVnp<<endl;
				cout<<"\tz[zIndexOfVnp] = "<<z[zIndexOfVnp]<<endl;
				cout<<"\tx[path_var_index] = "<<x[path_var_index]<<endl;
				cout<<"\tv = "<<v<<endl;
			}
			IloRange range_const(env,v,0,constraint_name);
			ILP_model.add(range_const);
		}// end if exit path
	}// end for virtual links
}


//--------------------------------------------------------------------------------------------------------------------------------------------------
// No_partial_VN_Embedding original source
//--------------------------------------------------------------------------------------------------------------------------------------------------
/*
 void no_partially_VN_embedding(VNP_traffic_tab& req_tab, IloInt& nbr_req, Meta_Substrate_Path_tab& path_tab, IloInt& nbr_path,
									  VLink_Embedding_Trace_Tab& embed_track_vect, IloNumVarArray& y, IloInt& y_length, IloNumVarArray& t,
									  VN_Embedding_Trace_Tab& embed_zvect, IloInt& nb_accept_vnp, IloModel& ilp_m, IloEnv& env_1){
   IloInt i=0, j=0,  num_vnp=0, path_num=0, cvlink=0, vlink_id=0, exit_path=0, more_emb_path=0, path_var_index=0, zindex=0;
   for(i=0;i<nbr_req;i++){
	   vlink_id = (IloInt) req_tab[i].GetVirtual_Link_Id();
	   num_vnp = (IloInt) req_tab[i].GetVNP_Id();
	  exit_path=0;
	  j=0;
      more_emb_path=0;
	  while ((j < nbr_path) &&(more_emb_path==0)){
				cvlink = (IloInt) path_tab[j].GetVirtual_Link_Id();
				IloBool equal_vlink_id = (cvlink == vlink_id);
				if (equal_vlink_id){
					 path_num = (IloInt) path_tab[j].GetMeta_substrate_path_Id();
					 path_var_index = (IloInt) search_var_index(embed_track_vect, vlink_id, path_num, y_length);
                     exit_path=1;
                     more_emb_path=1;
				 }// embdedding path for virtual link
				 j++;
		  }// end while embedding paths
	   if (exit_path==1) {
		   char constraint_name[100]= "Embedding clash const of vlink";
		   char vlink_char[4];
		   char vnp_char[4];

//		   sprintf_s(vlink_char,"%d",vlink_id);
//		   sprintf_s(vnp_char,"%d",num_vnp);
//
//		   strcat_s(constraint_name, vlink_char);
//		   strcat_s(constraint_name, "_vnp_");
//		   strcat_s(constraint_name, vnp_char);
		   sprintf(vlink_char,"%d",vlink_id);
		   sprintf(vnp_char,"%d",num_vnp);

		   strcat(constraint_name, vlink_char);
		   strcat(constraint_name, "_vnp_");
		   strcat(constraint_name, vnp_char);

		   IloExpr v(env_1);
		   zindex = (IloInt) search_z_index(num_vnp, embed_zvect, nb_accept_vnp);

		   v = t[zindex] - y[path_var_index];

		   IloRange range_const(env_1,v,0,constraint_name);
		   ilp_m.add(range_const);
	    }// end if exit path

    }// end for virtual links

}

*/



//	no_partially_VN_embedding				(				adedVlinkReqVect, adedVlinkCountInPhOne, 				actvPathAry, 				actvPathCount, 							traceYary, 									yAry, 		xLength, 					zAry, 						traceZary, 					nb_accepted_vnp, 			ILP_model, 			env);
void LinkEmbedder::allVlinksOfVnReqEmbdedOnAcbkPairs(VlinkReqAryType& vLinkReqVect, IloInt& numVlinkReq, MetaActvBkupPairAryType& actvBkupPathPairAry, IloInt& numActvBkupPairs, VLink_Embedding_Trace_Tab& traceYary, IloNumVarArray& yAry, IloInt& yAryLenght, IloNumVarArray& zAry, VN_Embedding_Trace_Tab& traceZary, IloInt& nb_accepted_vnp, IloModel& ILP_model, IloEnv& env){
	if(LINK_DBG3) {
		cout<<"\t\tActive/Backup pairs checked for each vlink"<<endl;
		cout<<"\t\tvlink\tacbk Count\tActive/Backup path IDs"<<endl;
	}
	for(IloInt vlItr=0; vlItr<numVlinkReq; vlItr++){
		IloInt vLinkId = vLinkReqVect[vlItr].getVlinkId();
		IloInt vnpId = vLinkReqVect[vlItr].getVnpId();
		IloNumArray acbkPairYindxAry(env, ACTV_PER_VL*BKUP_PER_ACTV);//if numAcbkPairs read first, can this array be created with that size?
		vLinkReqVect[vlItr].getAcbkPairYindxAry(acbkPairYindxAry);
		IloInt numAcbkPairs = vLinkReqVect[vlItr].getNumAcbkPairs();
		IloExpr sumYforVl(env);
		if(LINK_DBG3)cout<<"\t\t"<<vLinkId<<"\t"<<numAcbkPairs<<"\t\t[ ";

		for(IloInt acbkItr=0; acbkItr<numAcbkPairs; acbkItr++){
			IloInt yIndx = acbkPairYindxAry[acbkItr];
			IloInt acbkPairId = actvBkupPathPairAry[yIndx].getActvBkupPairId();
			IloInt yIndxOfAcbkPair = search_var_index(traceYary, vLinkId, acbkPairId, yAryLenght);	// x array index corresponding to active/backup pair
			sumYforVl += yAry[yIndxOfAcbkPair];
			if(LINK_DBG3)cout<<acbkPairId<<" ";
		}
		if(LINK_DBG3)cout<<"]"<<endl;

		char constraint_name[100]= "EmbdConstr";
		char cVnp[10];
		sprintf(cVnp,"_vnp%ld",vnpId);
		strcat(constraint_name, cVnp);
		char cVlink[10];
		sprintf(cVlink,"e%ld",vLinkId);


		strcat(constraint_name, cVlink);
		//strcat(constraint_name, "_vnp_");
		//strcat(constraint_name, cVnp);		// "Embedding clash const of vlink <vLinkId> _vnp_ <vnpId>"
		IloExpr vlEmbdConstrExp(env);
		IloInt zIndxOfVnp = search_z_index(vnpId, traceZary, nb_accepted_vnp);
		vlEmbdConstrExp = zAry[zIndxOfVnp] - sumYforVl;
		IloRange vlEmbdConstr(env, 0, vlEmbdConstrExp, 0, constraint_name);
		ILP_model.add(vlEmbdConstr);
	}

	//for each vlink
	//	get acbkpairs calculated for that vlink
	//
	// 1. Only one active/backup pair must be selected to a given virtual link e.
	// 2. For a VNP request to be considered as accepted, all vlinks of it must have been embedded on active/backup pairs.


	/*for(IloInt vlItr=0; vlItr<numVlinkReq; vlItr++){
		IloInt vLinkId = vLinkReqVect[vlItr].getVlinkId();
		IloInt vnpId = vLinkReqVect[vlItr].getVnpId();

		//if(vLinkId==7)
			SHOW = true;
		IloInt exit_path=0, j=0, more_emb_path=0;

		IloInt acbkPairId;
		while ((j < numActvBkupPairs) &&(more_emb_path==0)){
			IloInt acbkVlink = actvBkupPathPairAry[j].getVlinkId();
			if (acbkVlink == vLinkId){
				acbkPairId = actvBkupPathPairAry[j].getActvBkupPairId();
				if(SHOW)cout<<"\n\tsearch_xIndx of acbkPairId: "<<acbkPairId<<endl;
				yIndxOfAcbkPair = search_var_index(traceYary, vLinkId, acbkPairId, yAryLenght);	// y array index corresponding to active/backup pair
				if(SHOW)cout<<"\tyIndxOfAcbkPair = "<<yIndxOfAcbkPair<<endl;
				exit_path=1;
				more_emb_path=1;
			}// embdedding path for virtual link
			j++;
		}// end while embedding paths




		if (exit_path==1){
			if(SHOW)cout<<"\tFor vlink "<< vLinkId<<", acbkPair "<<acbkPairId<<" is tested"<<endl;
			char constraint_name[100]= "Embedding constraing of vlink ";
			char cVlink[10];
			sprintf(cVlink,"%ld",vLinkId);
			char cVnp[10];
			sprintf(cVnp,"%ld",vnpId);

			strcat(constraint_name, cVlink);
			strcat(constraint_name, "_vnp_");
			strcat(constraint_name, cVnp);		// "Embedding clash const of vlink <vLinkId> _vnp_ <vnpId>"
			IloExpr vlEmbdConstraint(env);
			IloInt zIndxOfVnp = search_z_index(vnpId, traceZary, nb_accepted_vnp);
			vlEmbdConstraint = zAry[zIndxOfVnp] - yAry[yIndxOfAcbkPair];
			if(LINK_DBG){
				cout<<"\n\tvLinkItr = "<<vlItr<<endl;
				cout<<"\tvLinkId = "<<vLinkId<<endl;
				cout<<"\tvnpId = "<<vnpId<<endl;
				cout<<"\tzIndexOfVnp = "<<zIndxOfVnp<<endl;
				cout<<"\tz[zIndexOfVnp] = "<<zAry[zIndxOfVnp]<<endl;
				cout<<"\tx[path_var_index] = "<<yAry[yIndxOfAcbkPair]<<endl;
				cout<<"\tv = "<<vlEmbdConstraint<<endl;
			}
			IloRange range_const(env, vlEmbdConstraint, 0, constraint_name);
			ILP_model.add(range_const);
			//-------------- NOTES--------------
			// If all vlinks in a VN request were embedded, zAry[zIndxOfVnp] == 1. If each vlink is embedded on acbkPair, yAry[xIndxOfAcbkPair] == 1.
			// Thus by applying the constraint  "zAry[zIndxOfVnp] - yAry[xIndxOfAcbkPair] <= 0;  e ∈ E, n ∈ N" successful selection of acbkPair for every vlink in each VN request is guaranteed.
			// ----------END OF NOTES-----------
		}// end if exit path
	}// end for virtual links
	*/


	/*
		for(IloInt vlItr=0; vlItr<numVlinkReq; vlItr++){
		IloInt vLinkId = vLinkReqVect[vlItr].getVlinkId();
		IloInt vnpId = vLinkReqVect[vlItr].getVnpId();

		//if(vLinkId==7)
			SHOW = true;
		IloInt exit_path=0, j=0, more_emb_path=0;

		IloInt acbkPairId;
		while ((j < numActvBkupPairs) &&(more_emb_path==0)){
			IloInt acbkVlink = actvBkupPathPairAry[j].getVlinkId();
			if (acbkVlink == vLinkId){
				acbkPairId = actvBkupPathPairAry[j].getActvBkupPairId();
				if(SHOW)cout<<"\n\tsearch_xIndx of acbkPairId: "<<acbkPairId<<endl;
				yIndxOfAcbkPair = search_var_index(traceYary, vLinkId, acbkPairId, yAryLenght);	// y array index corresponding to active/backup pair
				if(SHOW)cout<<"\tyIndxOfAcbkPair = "<<yIndxOfAcbkPair<<endl;
				exit_path=1;
				more_emb_path=1;
			}// embdedding path for virtual link
			j++;
		}// end while embedding paths

		if (exit_path==1){
			if(SHOW)cout<<"\tFor vlink "<< vLinkId<<", acbkPair "<<acbkPairId<<" is tested"<<endl;
			char constraint_name[100]= "Embedding constraing of vlink ";
			char cVlink[10];
			sprintf(cVlink,"%ld",vLinkId);
			char cVnp[10];
			sprintf(cVnp,"%ld",vnpId);

			strcat(constraint_name, cVlink);
			strcat(constraint_name, "_vnp_");
			strcat(constraint_name, cVnp);		// "Embedding clash const of vlink <vLinkId> _vnp_ <vnpId>"
			IloExpr vlEmbdConstraint(env);
			IloInt zIndxOfVnp = search_z_index(vnpId, traceZary, nb_accepted_vnp);
			vlEmbdConstraint = zAry[zIndxOfVnp] - yAry[yIndxOfAcbkPair];
			if(LINK_DBG){
				cout<<"\n\tvLinkItr = "<<vlItr<<endl;
				cout<<"\tvLinkId = "<<vLinkId<<endl;
				cout<<"\tvnpId = "<<vnpId<<endl;
				cout<<"\tzIndexOfVnp = "<<zIndxOfVnp<<endl;
				cout<<"\tz[zIndexOfVnp] = "<<zAry[zIndxOfVnp]<<endl;
				cout<<"\tx[path_var_index] = "<<yAry[yIndxOfAcbkPair]<<endl;
				cout<<"\tv = "<<vlEmbdConstraint<<endl;
			}
			IloRange range_const(env, vlEmbdConstraint, 0, constraint_name);
			ILP_model.add(range_const);
			//-------------- NOTES--------------
			// If all vlinks in a VN request were embedded, zAry[zIndxOfVnp] == 1. If each vlink is embedded on acbkPair, yAry[xIndxOfAcbkPair] == 1.
			// Thus by applying the constraint  "zAry[zIndxOfVnp] - yAry[xIndxOfAcbkPair] <= 0;  e ∈ E, n ∈ N" successful selection of acbkPair for every vlink in each VN request is guaranteed.
			// ----------END OF NOTES-----------
		}// end if exit path
	}// end for virtual links
	 */

}


//***************************************************************************************************************************
//									  A substrate link has a bandwidth capacity                                             *
//***************************************************************************************************************************

void LinkEmbedder::substrate_link_bw_constraint(SubLinksAryType& substrate_link_vect, IloInt& nbr_substrate_link, VlinkReqAryType& req_vect, IloInt& nb_req,
		MetaSubPathAryType& path_tab, IloInt& nbr_path, VLink_Embedding_Trace_Tab& trac_vect, LinkQosClsAryType&  class_vect,
		IloNumVarArray& y, IloInt& y_length, IloModel& ilp_m, IloEnv& env_1){
	IloInt i=0,j=0, k=0, current_substrate_link=0, cls=0, upper_bound=0, bw=0;
	IloInt virtual_link_id=0, used_link=0, more_emb_path=0, length= MAX_SIZE, find_link=0, cvlink=0;
	IloInt path_num=0, path_var_index=0;
	IloNumArray used_arc_tab(env_1,length);
	for(i=0;i<nbr_substrate_link;i++){
		current_substrate_link =  substrate_link_vect[i].getSlinkId();
		IloExpr v(env_1);
		used_link=0;

		for(j=0;j<nb_req;j++){
			virtual_link_id =  req_vect[j].getVlinkId();
			cls =  req_vect[j].getVlinkQosCls();
			bw =  class_vect[cls-1].getQosClsBw();
			k=0;
			more_emb_path=0;
			while ((k < nbr_path) &&(more_emb_path==0)){
				cvlink =  path_tab[k].getVlinkId();
				IloBool equal_vlink_id = (cvlink == virtual_link_id);
				if (equal_vlink_id){
					arrayZeroInitialize(used_arc_tab, length);
					path_tab[k].getUsedSlinkAry(used_arc_tab);
					find_link =  linkInAry(current_substrate_link, used_arc_tab);
					IloBool link_is_used = (find_link ==1);
					if (link_is_used){
						path_num =  path_tab[k].getMetaSpathId();
						path_var_index =  search_var_index(trac_vect, virtual_link_id, path_num, y_length);
						v+= bw*y[path_var_index];
						used_link=1;
						more_emb_path=1;
					}//substrate link is used
				}// embdedding path for virtual link
				k++;
			}// end while embedding paths
		}// end for requests
		if (used_link==1){
			char constraint_name[100]= "BW capacity of substrate link ";
			char slink_char[10];
			sprintf(slink_char,"%d",(int)current_substrate_link);
			strcat(constraint_name, slink_char);
			upper_bound =  SUBSTRATE_LINK_BW;
			IloRange range_const(env_1,v,upper_bound,constraint_name);
			ilp_m.add(range_const);
		}
	}// end of for substrate links
}

//***************************************************************************************************************************
//									  A substrate link has a bandwidth capacity                                             *
//***************************************************************************************************************************
//periodic_substrate_link_bw_constraint(subLinksAry, numSubLinks, adedVlinkReqVect, adedVlinkCountInPhOne, actvPathAry, actvPathCount, traceYary, linkQosClsAry, yAry, xLength, ILP_model, slinkResidualBwAry, env);

void LinkEmbedder::periodic_substrate_link_bw_constraint(SubLinksAryType& substrate_link_vect, IloInt& nbr_substrate_link, VlinkReqAryType& req_vect, IloInt& nb_req,
		MetaSubPathAryType& path_tab, IloInt& nbr_path, VLink_Embedding_Trace_Tab& trac_vect, LinkQosClsAryType&  class_vect,
		IloNumVarArray& y, IloInt& y_length, IloModel& ilp_m, IloNumArray& avail_bw_tab , IloEnv& env_1){
	IloInt i=0,j=0, k=0, current_substrate_link=0, cls=0, upper_bound=0, bw=0;
	IloInt virtual_link_id=0, used_link=0, more_emb_path=0, length= MAX_SIZE, find_link=0, cvlink=0;
	IloInt path_num=0, path_var_index=0;
	IloNumArray used_arc_tab(env_1,length);
	for(i=0;i<nbr_substrate_link;i++){
		current_substrate_link =  substrate_link_vect[i].getSlinkId();
		IloExpr v(env_1);
		used_link=0;

		for(j=0;j<nb_req;j++){
			virtual_link_id =  req_vect[j].getVlinkId();
			cls =  req_vect[j].getVlinkQosCls();
			bw =  class_vect[cls-1].getQosClsBw();

			k=0;
			more_emb_path=0;
			while ((k < nbr_path) &&(more_emb_path==0)){
				cvlink =  path_tab[k].getVlinkId();
				IloBool equal_vlink_id = (cvlink == virtual_link_id);

				if (equal_vlink_id){
					arrayZeroInitialize(used_arc_tab, length);
					path_tab[k].getUsedSlinkAry(used_arc_tab);

					find_link =  linkInAry(current_substrate_link, used_arc_tab);

					IloBool link_is_used = (find_link ==1);
					if (link_is_used){
						path_num =  path_tab[k].getMetaSpathId();
						path_var_index =  search_var_index(trac_vect, virtual_link_id, path_num, y_length);
						v+= bw*y[path_var_index];
						used_link=1;
						more_emb_path=1;
					}//substrate link is used
				}// embdedding path for virtual link
				k++;
			}// end while embedding paths
		}// end for requests
		if (used_link==1){
			char constraint_name[100]= "BW capacity of substrate link ";
			char slink_char[4];
			sprintf(slink_char,"%d",(int)current_substrate_link);
			strcat(constraint_name, slink_char);
			upper_bound =  avail_bw_tab[current_substrate_link-1];
			IloRange range_const(env_1,v,upper_bound,constraint_name);
			ilp_m.add(range_const);
		}
	}// end of for substrate links
}
//---------------------------------------------------------------------------------------------------------------------------------------------
// Active and backup path bandwidth avaialbility constraint
//---------------------------------------------------------------------------------------------------------------------------------------------
//periodic_substrate_link_bw_constraint(subLinksAry, numSubLinks, adedVlinkReqVect, adedVlinkCountInPhOne, actvPathAry, actvPathCount, traceYary, linkQosClsAry, yAry, xLength, ILP_model, slinkResidualBwAry, env);
void LinkEmbedder::slinkBwCapacityconstraint(SubLinksAryType& subLinksAry, IloInt& numSubLinks, VlinkReqAryType& newVlinkReqVect, IloInt& newVlinkReqCount,
		MetaActvBkupPairAryType& acbkPairAry, IloInt& actvPathCount, VLink_Embedding_Trace_Tab& traceYary, LinkQosClsAryType&  linkQosClsAry,
		IloNumVarArray& yAry, IloInt& yLength, IloModel& ilpModel, IloNumArray& slinkResidualBwAry , IloEnv& env){

		//IloInt acbkPairCount = 469;		// Get this instead of actvPathCount
	bool SHOW = false;

	for(IloInt slItr=0; slItr<numSubLinks; slItr++){
		IloInt slinkId =  subLinksAry[slItr].getSlinkId();
		IloExpr totBwReqOnSlink(env);
		//IloExpr actvBwReqOnSlink(env);
		//IloExpr bkupBwReqOnSlink(env);
		bool slinkUsed = 0;




		for(IloInt vlItr=0;vlItr<newVlinkReqCount;vlItr++){
			IloInt vlinkId =  newVlinkReqVect[vlItr].getVlinkId();
			IloInt vlQosCls =  newVlinkReqVect[vlItr].getVlinkQosCls();
			IloInt vlBwReq =  linkQosClsAry[vlQosCls-1].getQosClsBw();


			//loNumArray adsf = adedVlinkReqVect[vlItr].get
			//IloNumArray acbkPairYindxAry(env, MAX_SIZE);
			IloInt numAcbkPairsOfVl = newVlinkReqVect[vlItr].getNumAcbkPairs();
			if(SHOW)cout<<"\tslinkId:"<<slinkId<<"  vlinkId:"<<vlinkId<<"  numAcbkPairsOfVl:"<<numAcbkPairsOfVl<<endl;
			IloNumArray acbkPairYindxAry(env, ACTV_PER_VL*BKUP_PER_ACTV);
			newVlinkReqVect[vlItr].getAcbkPairYindxAry(acbkPairYindxAry);	// acbkPairs of vlink

			for(IloInt acbkItr=0; acbkItr<numAcbkPairsOfVl; acbkItr++){
				if(SHOW)cout<<"\t\tacbkItr: "<<acbkItr;
				IloInt yIndx = acbkPairYindxAry[acbkItr];					//yIndx == acbk pairs

				IloInt acbkVlink =  acbkPairAry[yIndx].getVlinkId();
				//IloInt numBkSlinks = acbkPairAry[yIndx].getNumBkupHops();

				if (acbkVlink != vlinkId) cerr<<"\tvlIds do not match in Bandwidth capacity constraint";
				if(SHOW)cout<<"  acbkVlink:"<<acbkVlink<<"  vlinkId:"<<vlinkId<<endl;
				IloNumArray actvSlinkAry(env, MAX_SIZE);
				acbkPairAry[yIndx].getActvSlinkAry(actvSlinkAry);
				//bool slUsedInActvPath =  linkInAry(slinkId, actvSlinkAry);
				IloNum actvBwReqOnSlink = 0.0;
				if (linkInAry(slinkId, actvSlinkAry)){							// ---------------- Slink used in Actv Pth-----------
					if(SHOW)cout<<"\t\t\tslUsedInActvPath:"<<yIndx<<" \tvlBwReq:"<<vlBwReq<<endl;
					//actvBwReqOnSlink += vlBwReq * yAry[yIndx];	// Bandwidth required to host active path on each slink can be deducted directly.
					actvBwReqOnSlink = vlBwReq;
					slinkUsed = true;
				}

				IloNumArray bkupSlinkAry(env, MAX_SIZE);
				acbkPairAry[yIndx].getBkupSlinkAry(bkupSlinkAry);
				IloNumArray bkupSlinkBwReqAry(env, MAX_SIZE);
				acbkPairAry[yIndx].getBkSlBwUnitsReqAry(bkupSlinkBwReqAry);

				//IloInt slUsedInBkupPath =  linkInAry(slinkId, bkupSlinkAry);
				IloNum bkupBwReqOnSlink = 0.0;
				IloInt slinkIndx = MAX_SIZE;
				slinkIndx = slinkIndxInAry(slinkId, bkupSlinkAry);
				if (slinkIndx<MAX_SIZE){							// ---------------- Slink used in Bkup Pth-----------
					if(SHOW)cout<<"\t\t\tslUsedInBkupPath.";
					// Calculating additional backup bandwidth required by this acbkPair on this slink

					IloNum bkupBwReq = bkupSlinkBwReqAry[slinkIndx];
					if(SHOW)cout<<"\tbkupBwReq:"<<bkupBwReq<<endl;
					//bkupBwReqOnSlink += bkupBwReq * yAry[yIndx];
					bkupBwReqOnSlink = bkupBwReq;
					slinkUsed = true;
				}

				totBwReqOnSlink += yAry[yIndx] * (actvBwReqOnSlink + bkupBwReqOnSlink);	// totBwReqOnSlink = Σ_(π,ρ) y [ α(π)b + α(ρ)β ]


			}

			/*
			IloInt k=0;
			IloInt more_emb_path=0;
			while ((k < actvPathCount) &&(more_emb_path==0)){
				IloInt acbkVlink =  acbkPairAry[k].getVlinkId();

				if (acbkVlink == vlinkId){
					IloNumArray actvSlinkAry(env, MAX_SIZE);
					arrayZeroInitialize(actvSlinkAry, MAX_SIZE);
					acbkPairAry[k].getActvSlinkAry(actvSlinkAry);

					IloInt linkFound =  search_arc_in_table(slinkId, actvSlinkAry);
					if (linkFound ==1){
						IloInt acbkPairId =  acbkPairAry[k].getActvBkupPairId();
						IloInt yIndxOfAcbkPair =  search_var_index(traceYary, vlinkId, acbkPairId, yLength);
						vlBwReqOnSlink += vlBwReq * yAry[yIndxOfAcbkPair];
						used_link = 1;
						more_emb_path = 1;
					}//substrate link is used
				}// embdedding path for virtual link
				k++;
			}// end while embedding paths
			*/
			//cout<<" "<<vlItr;
		}// end for requests
		if(SHOW)cout<<endl;

		if (slinkUsed){
			if(SHOW)cout<<"\t\tAdding BW constraint on slink:"<<slinkId<<endl;
			char constraint_name[200]= "BwCapConstr_slink";
			char slink_char[4];
			sprintf(slink_char,"%d",(int)slinkId);
			strcat(constraint_name, slink_char);
			IloInt slinkResidualBw =  slinkResidualBwAry[slinkId-1];
			IloRange slBwCapConstraint(env, totBwReqOnSlink, slinkResidualBw,constraint_name);		// range_const(env, expression, upper_bound, const_name)
			ilpModel.add(slBwCapConstraint);
		}
	}// end of for substrate links
}





void LinkEmbedder::printVerticeAry(IloEnv& env, VerticesAryType& verticeAry){
	//IloInt vArySize = verticeAry.getSize();
	cout<<"\tprinting verticeAry"<<endl;
	cout<<"\tid\tcurrent\tprevious"<<endl;
	for(int i=0; i<10;i++){
		cout<<"\t"<<verticeAry[i].getVerticeId()<<"\t"<<verticeAry[i].getCurrent()<<"\t"<<verticeAry[i].getPrevious()<<"\t adj = ";
		IloNumArray adjNodeArray(env, MAX_SIZE);
		arrayZeroInitialize(adjNodeArray, MAX_SIZE);
		verticeAry[i].getAdjNodeArray(adjNodeArray);
		//arrayZeroInitialize(adjNodeArray, MAX_SIZE);
		for(int j=0;j<adjNodeArray.getSize(); j++){
			if(adjNodeArray[j]!=0)
				cout<<adjNodeArray[j]<<" ";
		}
		cout<<endl;
	}
}


//***************************************************************************************************
//                        Original H-Shortest Path Algorithm by Abdallah                            *
//***************************************************************************************************
//					shortest_path(					subNetGraph, 					metaShtstPathVect, 			srcSnode, 		destSnode, 			maxHops, 		request_id, 		vnpId, 			vlinkId, 		shtstPathCount, 		env);
void  LinkEmbedder::shortest_path(bool bkupPath, SnodesAryType& subNetGraph,  MetaSubPathAryType& metaShtstPathVect, IloInt& srcSnode, IloInt& destSnode, IloInt& maxHops, IloInt& requestId, IloInt& vnpId, IloInt& vlinkId ,IloInt& shtstPathCount, IloNumArray& bkupBwUnitsReqAry, IloEnv& env){

	bool SHOW = false;
	bool SHOW_MORE = false;
	//if(!bkupPath && requestId==0) SHOW=true;
	if(bkupPath && requestId==0) {
		SHOW = true;
		//SHOW_MORE = true;
	}

	bool SL_COST_FOR_EDGE = false;	// IF true:  slink costs are set as priority values
									// IF false: priority values are set as 1. After calculating min-hop shortest paths, cost of paths will be calculated by summing up link costs

	if(SHOW)cout<<"\n\tShortest paths for vlink:"<<vlinkId<<" from src:"<<srcSnode<<" to dst:"<<destSnode<<" with maxHops:"<<maxHops<<endl;																//Original SPAl




	priority_queue <Trace_vertice, vector<Trace_vertice>, less<vector<Trace_vertice>::value_type> > prioQ;
	// template <class T, class Container = std::vector<T>, class Compare = std::less<T> >
	// class Compare     bool operator< is overloaded with   lhs.priority > rhs.priority

	// get adjacency nodeId vector for source node = [9, 14, 11, 12, 0,..., 0, 0, 0,]; size of adjNodeArray = MAX_INCIDENCE
	IloNumArray adjVertArray(env, MAX_SIZE);
	arrayZeroInitialize(adjVertArray, MAX_SIZE);
	subNetGraph[(srcSnode-1)].getAdjSnodeAry(adjVertArray);
	map<IloInt, IloInt> adjVertToEdgekMap = subNetGraph[(srcSnode-1)].getAdjSnodeToSlinkMap();
	map<IloInt, IloNum> conSlinkCostMap = subNetGraph[(srcSnode-1)].getConSlinkCostMap();		// Map slink -->
	//map<IloInt, IloNum> bkupBwUnitsReqMap = subNetGraph[(srcSnode-1)].getBkupBwUnitsReqMap();	// Map slink --> backup bandwidth units required for active path
	if(SHOW){
		cout<<"\n\tPrinting adjSnodeToSlinkMap for snode:"<<srcSnode<<endl;
		for(map<IloInt, IloInt>::iterator it = adjVertToEdgekMap.begin(); it != adjVertToEdgekMap.end(); ++it)
			cout<<"\t" << it->first <<"\t"<<it->second<<endl;

		cout<<"\n\tPrinting conSlinkCostMap: "<<srcSnode<<endl;
		for(map<IloInt, IloNum>::iterator it = conSlinkCostMap.begin(); it != conSlinkCostMap.end(); ++it)
			cout<<"\t" <<it->first <<"\t"<<it->second<<endl;

		//cout<<"\n\tPrinting bkupBwUnitsReqMap: "<<srcSnode<<endl;
		//for(map<IloInt, IloNum>::iterator it = bkupBwUnitsReqMap.begin(); it != bkupBwUnitsReqMap.end(); ++it)
		//	cout<<"\t" <<it->first <<"\t"<<it->second<<endl;
		//cout<<endl;
	}


	//std::string ssd[2] = {"one", "two"};


	// Create an array of vertices and put src node into first index
	VerticesAryType verticeAry(env, GN);								 // verticeAry size GN = 10 000
	IloInt vertCount=0, vertRef=1;
	verticeAry[vertCount].setVerticeId(vertRef);
	verticeAry[vertCount].setCurrent(srcSnode);
	verticeAry[vertCount].setPrevious(0);
	verticeAry[vertCount].setPreToCurCost(0);
	verticeAry[vertCount].setAdjVertArray(adjVertArray);
	vertRef++;
	vertCount++;

	// ---------1 Add adjacent vertices of source to priority queue
	IloInt srcAdjItr=0;
	if(SHOW_MORE)cout<<"\n\tPutting Adjacent nodes of Source: "<<srcSnode<<" to prioQ ----------------------"<<endl;
	if(SHOW_MORE)cout<<"\tAdjacent nodes of "<<srcSnode<<"\tslinkToAdj\tedgeCost\tpriority\tpredVertRef\tcurrVertId";
	while ((srcAdjItr<MAX_SIZE)&&( adjVertArray[srcAdjItr]!=0)){
		int adjVertId =  adjVertArray[srcAdjItr];
		IloInt slinkToAdj = adjVertToEdgekMap[adjVertId];

		int edgeCost = 1;
		if(SL_COST_FOR_EDGE) edgeCost = conSlinkCostMap[slinkToAdj];
		else if (conSlinkCostMap[slinkToAdj]>=INFINI) edgeCost = conSlinkCostMap[slinkToAdj]; // Removing active path links will still improve SPF results
		int priority = edgeCost;

		int predVertRef = vertRef - 1;					// 	predecessor node ref = 1
		if(SHOW_MORE) cout<<"\n\t\t"<<adjVertId<<" \t\t"<<slinkToAdj<<"\t\t"<<edgeCost<<"\t\t"<<priority<<"\t\t"<<predVertRef<<"\t\t"<<srcSnode;
		prioQ.push(Trace_vertice(priority, predVertRef, adjVertId));
		srcAdjItr++;
	}
	if(SHOW_MORE)cout<<endl;
	adjVertToEdgekMap.clear();		// REUSED: Must be cleared after each use
	conSlinkCostMap.clear();			// REUSED: Must be cleared after each use


	// ---------2 Determine number of shortest paths to be calculated
	IloInt nb_in_out_link =  count_number_link(destSnode, subNetGraph, env);
	IloInt adjacents_ind =  check_src_dest_adjanticity(srcSnode, destSnode, subNetGraph, env);		// adjacents_ind can be 1 or 0 if src and dest are adjacent
	IloInt max_paths = 0;
	if (adjacents_ind ==1 && nb_in_out_link == 1) max_paths = 1;// If src and dst are adjacent (and has only one link betweeen them) algorithm must only give 1 path between them
	else if(!bkupPath) max_paths = ACTV_PER_VL;	// If finding active paths, max active paths per vlink
	else
		max_paths = BKUP_PER_ACTV;	// If finding backup paths, max backup paths per vlink

	IloInt MAX_ITR = 19999;
	IloInt numPathsFound=0;
	IloInt prevVertId = srcSnode;																// Start with src by setting it as nextNod
	while (numPathsFound <max_paths && !prioQ.empty() &&  vertCount<MAX_ITR){								// While max paths not reached and priority queue is not empty
		IloInt valid_node=0, prePrio=0, predVertRef=0, currVertId=0;

		// --------- 1 Take top vert from the prioQ
		while ((valid_node == 0)&&(!prioQ.empty())){
			prePrio = prioQ.top().priority;
			predVertRef = prioQ.top().predNodeRef;
			currVertId = prioQ.top().currNodeId;
			//if(SHOW) cout<<"\t"<<prePrio<<"\t\t"<<previous<<"\t\t"<<current;
			if ((currVertId != srcSnode) && (currVertId != prevVertId))
				valid_node=1;
			prioQ.pop();
			//if(SHOW)cout<<"\n\tvalid_node = "<<valid_node<<endl;
		}
		if(SHOW_MORE)cout<<endl;

		IloInt predVertIndx;
		searchPredecessorVertIndx(verticeAry, vertCount, predVertRef, predVertIndx);// OUTPUT: predVertIndx
		IloInt predVertId =  verticeAry[predVertIndx].getCurrent();
		if(SHOW_MORE)cout<<"\tcurrNodeId: "<<currVertId<<"\tpredVertId: "<<predVertId<<endl;
		//cout<<"\tcurrent = "<<current<<endl;
		if (currVertId == destSnode)																// If current node is the destination, new path found. Increment numOfPaths
			numPathsFound++;

		verticeAry[vertCount].setVerticeId(vertRef);
		verticeAry[vertCount].setCurrent(currVertId);
		verticeAry[vertCount].setPrevious(predVertRef);
		verticeAry[vertCount].setPreToCurCost(prePrio);
		if(SHOW_MORE)cout<<"\tvertice "<<currVertId<<" put into verticeAry["<<vertCount<<"]"<<endl;
		arrayZeroInitialize(adjVertArray, MAX_SIZE);
		if (currVertId != destSnode){															// If destination not reached							//Original SPAl
			subNetGraph[(currVertId - 1)].getAdjSnodeAry(adjVertArray);
			adjVertToEdgekMap = subNetGraph[currVertId-1].getAdjSnodeToSlinkMap();
			conSlinkCostMap = subNetGraph[currVertId-1].getConSlinkCostMap();
			//more=0 ;
			IloInt adjItr=0;
			if(SHOW_MORE)cout<<"\tAdjacent nodes of "<<currVertId<<"\tslinkToAdj\tedgeCost\tpriority\tpredVertRef\tcurrVertId";
			while ((adjItr<MAX_SIZE)&&( adjVertArray[adjItr]!=0)){
				IloInt adjNodeId =   adjVertArray[adjItr];
				IloInt slinkToAdj = adjVertToEdgekMap[adjNodeId];

				int edgeCost = 1;
				if(SL_COST_FOR_EDGE) edgeCost = conSlinkCostMap[slinkToAdj];
				else if (conSlinkCostMap[slinkToAdj]>=INFINI) edgeCost = conSlinkCostMap[slinkToAdj]; // Removing active path links will still improve SPF results
				//if (edgeCost ==0) edgeCost = 1;
				int priority = prePrio + edgeCost;
				predVertRef = vertRef;
				if  (adjNodeId != srcSnode && adjNodeId != predVertId){
					if(SHOW_MORE) cout<<"\n\t\t"<<adjNodeId<<" \t\t"<<slinkToAdj<<"\t\t"<<edgeCost<<"\t\t"<<priority<<"\t\t"<<predVertRef<<"\t\t"<<currVertId;
					prioQ.push(Trace_vertice(priority, (int)predVertRef, (int)adjNodeId));
				}
				adjItr++;
			}// end while
		} // pere != destination
		else{
			if(SHOW_MORE) cout<<"\t------------------------------- destSnode:"<<destSnode<<" reached----------------------------"<<endl;
		}
		verticeAry[vertCount].setAdjVertArray(adjVertArray);
		vertCount++;
		if(vertCount>=MAX_ITR)
			cerr<<"XX";
		if(SHOW_MORE && bkupPath && vertCount == 500)
			sleep(2);
		prevVertId = currVertId;					// current vertice will become previous vertice for the next Iteration
		vertRef++;
	} //END while((numPathsFound <max_paths && (!prioQ.empty()))

	if(SHOW){
		cout<<"\n\tverticeAry = \t";
		int i=0;
		while(verticeAry[i].getCurrent() != 0){
			cout<<verticeAry[i].getCurrent()<<" ";
			i++;
		}
		cout<<endl;
	}

	//adjSnodeToSlinkMap.clear();// Reusing these two to find backup path costs in following while loop
	//conSlinkCostMap.clear();

	if(SHOW)cout<<"\tChecking for loops in obtained shortest paths"<<endl;
	IloInt i=0, calculatedPaths =0;
	//IloInt more_H_hops=0;
	bool hopLimExceed = false;

	while ((i<vertCount) && (calculatedPaths < max_paths) && !hopLimExceed){									//Original SPAl
		IloInt vertice =  verticeAry[i].getCurrent();
		if (vertice == destSnode){
			if(SHOW)cout<<"\tdest-found. Adding nodes: ";
			IloInt find_src= 0;
			IloInt predVertIndx=i;
			IloNumArray shotstPthAry(env, MAX_SIZE);
			arrayZeroInitialize(shotstPthAry, MAX_SIZE);
			IloNumArray bkupSlinkBwReqAry(env, MAX_SIZE);
			arrayZeroInitialize(bkupSlinkBwReqAry, MAX_SIZE);

			IloInt shPthVertCount=0;
			shotstPthAry[shPthVertCount] = vertice;
			if(SHOW)cout<<" "<<vertice;
			//adjSnodeToSlinkMap = subNetGraph[destSnode-1].getAdjSnodeToSlinkMap();
			//conSlinkCostMap = subNetGraph[destSnode-1].getConSlinkCostMap();

			IloInt sumSlinkCost = verticeAry[predVertIndx].getPreToCurCost();		// sumSlinkCost == shortest path cost
			shPthVertCount++;
			IloInt find_cycle=0;
			//if(calculatedPaths<6)cout<<"\tpreToCurCost:"<<sumSlinkCost;
			while ((find_src==0)&&(find_cycle==0)){
				IloInt currVertId = verticeAry[predVertIndx].getCurrent();
				IloInt predVertRef = verticeAry[predVertIndx].getPrevious();
				adjVertToEdgekMap.clear();
				//IloInt costToPrv = verticeAry[vertIndx].getPreToCurCost();
				//cout<<" "<<costToPrv;
				searchPredecessorVertIndx(verticeAry, vertCount, predVertRef, predVertIndx);		// This function changes vertIndx
				IloInt predVertId =  verticeAry[predVertIndx].getCurrent();				// parentSnode is same as prvSnode. But finding it through index reveals its parent as well
				adjVertToEdgekMap = subNetGraph[currVertId-1].getAdjSnodeToSlinkMap();
				IloInt slinkCurToPrv = adjVertToEdgekMap[predVertId];
				if (predVertId == srcSnode)
					find_src=1;
				IloInt test_cycle =  findElementInVector(predVertId, shotstPthAry, shPthVertCount);	// putting nodes one by one onto loopCheckAry and check for loops
				if(test_cycle==0){
					//cout<<"\tsnodeCount:"<<snodeCount;
					shotstPthAry[shPthVertCount] = predVertId;
					//sumSlinkCost += costToPrv;


					//cout<<"\tslinkCurToPrv:"<<slinkCurToPrv;
					bkupSlinkBwReqAry[shPthVertCount-1] = bkupBwUnitsReqAry[slinkCurToPrv-1];
					//cout<<"\tbwUnitsReq:"<<bkupBwUnitsReqAry[slinkCurToPrv-1]<<endl;
					shPthVertCount++;
					if(SHOW)cout<<" "<<predVertId<<"("<<slinkCurToPrv<<":"<<bkupBwUnitsReqAry[slinkCurToPrv-1]<<")";
				}
				else{
					if(SHOW)cout<<" "<<predVertId<<"("<<slinkCurToPrv<<":"<<bkupBwUnitsReqAry[slinkCurToPrv-1]<<")"<<"----Cycle";
					find_cycle=1;
					sumSlinkCost = 0;
				}

			}// end while find src
			if(SHOW)cout<<endl;

			adjVertToEdgekMap.clear();
			conSlinkCostMap.clear();

			if ((shPthVertCount - 1) > maxHops){	//If number of snodes in the shortest path is more than maxHops in request QoS class, path is ignored.
				//more_H_hops=1;
				hopLimExceed = true;
			}
			else{
				if (find_cycle == 0){
					//cout<<"\t\tadd_meta_path for virtual link :"<<vlinkId<<" active path: "<<requestId<<endl;

					if(SHOW){
						cout<<"\t\tAdding meta path: "<<calculatedPaths<<"  [ ";
						for(IloInt lcItr=0; lcItr<shPthVertCount; lcItr++) cout<<shotstPthAry[lcItr]<<" ";
						cout<<"] for vlink:"<<vlinkId<<endl;
					}

					if(SHOW){
						cout<<"\t\tbkupSlinkBwReqAry: [ ";
						for(int bkbwItr = 0; bkbwItr<shPthVertCount-1; bkbwItr++){
							cout<<bkupSlinkBwReqAry[bkbwItr]<<" ";
						}
						cout<<"]"<<endl;
					}

					// if !SL_COST_FOR_EDGE i.e. edge costs are considered equal to 1 during shortest path calculation, sumSlinkCost must be manually calculated
					if(!SL_COST_FOR_EDGE){
						sumSlinkCost = 0;
						for(IloInt lcItr=0; lcItr<shPthVertCount-1; lcItr++){
							IloInt currVertId = shotstPthAry[lcItr];
							IloInt nextVertId = shotstPthAry[lcItr+1];
							adjVertToEdgekMap = subNetGraph[currVertId-1].getAdjSnodeToSlinkMap();
							IloInt slinkToAdj = adjVertToEdgekMap[nextVertId];
							conSlinkCostMap = subNetGraph[currVertId-1].getConSlinkCostMap();
							sumSlinkCost +=  conSlinkCostMap[slinkToAdj];
						}


					}


					add_meta_path(metaShtstPathVect, srcSnode, destSnode, requestId, vnpId, vlinkId, shotstPthAry, subNetGraph, shtstPathCount, sumSlinkCost, bkupSlinkBwReqAry, env);			//Original SPAl


					calculatedPaths++;
				}
			}
		}
		i++;
	}
	adjVertArray.end();
}

//------------------------------------------------------------------------------------------------------------------------------------------------------------------
//															Shortest path algorithm with weighted edges
//------------------------------------------------------------------------------------------------------------------------------------------------------------------
//					shortest_path(				subNetGraph, 							metaShtstPathVect, 			src, 		dest, 			hops, 			request_id, 		vnp_id, 	virtual_link_id, shtstPathCount, 		env);
void  LinkEmbedder::shtstPathWeightedEdge(SnodesAryType& subNetGraph,  MetaSubPathAryType& metaShtstPathVect, IloInt& src, IloInt& dst, IloInt& max_hops, IloInt& request_num, IloInt& vnp, IloInt& link_id ,IloInt& shtstPathCount, IloEnv& env){


}

//***************************************************************************************************
//                            Find Next Node in a List of Nodes                                     *
//***************************************************************************************************
/*
void LinkEmbedder::find_next_nodes(IloNumArray& arc_vect ,IloInt& current_node,IloInt& node_suivant, IloInt& c_arc,
		SnodesAryType& vect_OG, IloEnv& env_3){
	IloInt  k=0, p=0, taille = MAX_SIZE, find_node=0, c_node=0, find_commun_arc=0;
	IloInt find_current_node=0, c_temp_arc=0, more_arc=0, find_arc=0, length= arc_vect.getSize();
	c_arc=0;
	IloNumArray  arc_out(env_3, taille);
	IloNumArray  arc_in(env_3, taille);

	while (find_current_node ==0){
		c_node =  vect_OG[k].getSnodeId();
		if (c_node == current_node){
			arrayZeroInitialize(arc_out, taille);
			vect_OG[k].getConSlinkAry(arc_out);
			find_current_node=1;
		}
		else
			k++;
	}
	k=0;
	while ((find_commun_arc ==0) && (k < length)){
		c_arc =  arc_vect[k];
		more_arc=0;
		p=0;
		while ((more_arc == 0) && ( p < taille )){
			c_temp_arc =  arc_out[p];
			if (c_temp_arc !=0){
				if (c_temp_arc == c_arc){
					more_arc=1;
					find_commun_arc =1;
				}
				else
					p++;
			}
			else
				more_arc=1;
		}
		k++;
	}
	k=0;
	find_node=0;
	while (find_node ==0){
		arrayZeroInitialize(arc_in, taille);
		vect_OG[k].getConSlinkAry(arc_in);
		find_arc=0;

		find_arc =  findElementInVector(c_arc, arc_in, taille);
		if (find_arc==1){
			node_suivant =  vect_OG[k].getSnodeId();
			find_node=1;
		}
		else
			k++;
	}
	arc_in.end();
	arc_out.end();
}*/

//***************************************************************************************************
//    Search maximum path unit cost value for a given connection									*
//***************************************************************************************************
IloInt LinkEmbedder::search_max_path_unit_cost(MetaSubPathAryType& path_vect, IloInt& nb_paths, IloInt& req_id, IloNumArray& bw_cost_vect, IloEnv& env_0){
	IloInt current_path_cost=0, max_path_cost=0;
	IloInt k=0,h=0, length = 3*MAX_SIZE, req_num=0, more_arc=0, u_arc=0;
	IloNumArray  arc_list(env_0,length);
	while (k < nb_paths){
		req_num =  path_vect[k].getVlinkId();
		IloBool found_req = (req_num == req_id) ;
		if(found_req){
			arrayZeroInitialize(arc_list,length);
			path_vect[k].getUsedSlinkAry(arc_list);
			more_arc =0;
			h=0;
			current_path_cost=0;
			while ((more_arc ==0) && ( h < length)){
				u_arc = (int) arc_list[h];
				IloBool not_nul = (u_arc != 0);
				if (not_nul)
					current_path_cost+= (int) bw_cost_vect[u_arc-1];
				else
					more_arc=1;
				h++;
			}
			if (current_path_cost > max_path_cost)
				max_path_cost = current_path_cost;
		}
		k++;
	}
	return max_path_cost;

}

//***************************************************************************************************
//    Search minimum path unit cost value for a given connection							        *
//***************************************************************************************************
IloInt LinkEmbedder::search_min_path_unit_cost(MetaSubPathAryType& path_vect, IloInt& nb_paths, IloInt& req_id, IloNumArray& bw_cost_vect, IloEnv& env_0){
	IloInt current_path_cost=0, min_path_cost=10000;
	IloInt k=0,h=0, length = 3*MAX_SIZE, req_num=0, more_arc=0, u_arc=0;
	IloNumArray  arc_list(env_0,length);
	while (k < nb_paths){
		req_num = (int) path_vect[k].getVlinkId();
		IloBool found_req = (req_num == req_id) ;
		if(found_req){
			arrayZeroInitialize(arc_list,length);
			path_vect[k].getUsedSlinkAry(arc_list);
			more_arc =0;
			h=0;
			current_path_cost=0;
			while ((more_arc ==0) && ( h < length)){
				u_arc =  arc_list[h];
				IloBool not_nul = (u_arc != 0);
				if (not_nul)
					current_path_cost+=  bw_cost_vect[u_arc-1];
				else
					more_arc=1;
				h++;
			}
			if (current_path_cost < min_path_cost)
				min_path_cost = current_path_cost;
		}
		k++;
	}
	return min_path_cost;
}

//***************************************************************************************************
//                      Search for vnode QoS class										            *
//***************************************************************************************************
IloInt LinkEmbedder::search_vnode_class(IloInt& vnode_id, IloInt& vnp_id,  Virtual_Node_Embedding_tab&  vnode_vect, IloInt& nbr_vnode){
	IloInt node_qos=0, find=0, m=0, cvnode=0, cvnp_id=0;
	while ((m<nbr_vnode)&&(find==0)){
		cvnode = vnode_vect[m].getVnodeId();
		cvnp_id = vnode_vect[m].getVnpId();
		IloBool eq_vnode = (cvnode == vnode_id );
		IloBool eq_vnp = (cvnp_id == vnp_id);
		if ((eq_vnode)&&(eq_vnp)){
			node_qos =  vnode_vect[m].getQosCls();
			find=1;
		}
		m++;
	}
	return node_qos;
}
//************************************************************************************
//   Search the preselected embedding substrate node for a virtual node              *
//************************************************************************************
IloInt LinkEmbedder::getCandidSnodeForVnode(Virtual_Node_Embedding_tab& Node_Embed_tab, IloInt& nbr_vnode, IloInt& src, IloInt& vnp_num){
	IloInt snode=0, l=0, find=0, current_vnode=0, current_vnp=0;
	while ((find==0)&&(l<nbr_vnode)){
		current_vnode=  Node_Embed_tab[l].getVnodeId();
		current_vnp =   Node_Embed_tab[l].getVnpId();
		IloBool equal_vnode = (current_vnode == src);
		IloBool equal_vnp = (current_vnp == vnp_num);
		if ((equal_vnode)&&(equal_vnp)){
			snode =  Node_Embed_tab[l].getCandidSnodeId();
			find=1;
		}
		else
			l++;
	}
	return snode;
}

//************************************************************************************
//								Search a request									 *
//************************************************************************************
void LinkEmbedder::search_request(VlinkReqAryType& req_tab, IloInt& nb_req, IloInt& vlink, IloInt& cls, IloInt& req_bid, IloInt& vnp_num,
		IloInt& s_cls, IloInt& d_cls, Virtual_Node_Embedding_tab& node_emb_Vect, IloInt& nb_vnode){
	IloInt h=0, find=0, current_vlink=0, vlink_src=0, vlink_dest=0;
	while ((h < nb_req)&&(find==0)){
		current_vlink =  req_tab[h].getVlinkId();
		//IloBool equal_vlink = (current_vlink == vlink);
		if (current_vlink == vlink){
			cls = req_tab[h].getVlinkQosCls();
			req_bid = req_tab[h].getBid();
			vnp_num = req_tab[h].getVnpId();
			vlink_src  = req_tab[h].getSrcVnode();
			vlink_dest = req_tab[h].getDestVnode();
			s_cls = search_vnode_class(vlink_src, vnp_num, node_emb_Vect, nb_vnode);
			d_cls = search_vnode_class(vlink_dest, vnp_num, node_emb_Vect, nb_vnode);
			find=1;
		}
		else
			h++;
	}
}

//***************************************************************************************************
//                      Search the Index of a Variable Associated to a Path and a Request           *
//***************************************************************************************************
IloInt LinkEmbedder::search_z_index(IloInt& vnp_num, VN_Embedding_Trace_Tab& emb_trace_z, IloInt& nbr_vnp){
	IloInt index=0;
	IloInt find_var=0;
	IloInt s=0;
	IloInt current_vnp_id=0;
	while ((find_var == 0) && (s <nbr_vnp )){
		current_vnp_id =  emb_trace_z[s].getVnpId();
		IloBool equal_vnp = (current_vnp_id == vnp_num);
		if (equal_vnp){
			index =  emb_trace_z[s].GetVar_Index();
			find_var = 1;
		}
		else
			s++;
	}
	return index;
}

//************************************************************************************
//                          Search for a request					                 *
//************************************************************************************
IloInt LinkEmbedder::search_request_index(IloInt& vlink, VlinkReqAryType& req_tab, IloInt& vnp_num){
	IloInt ind=0, l=0, find=0, current_link=0,current_vnp=0;
	while (find==0 && l<req_tab.getSize()){
		//cout<<"\t\tl = "<<l<<endl;
		current_link =  req_tab[l].getVlinkId();
		//cout<<"\t\tcurrent_link: "<<current_link<<endl;
		current_vnp =  req_tab[l].getVnpId();
		//cout<<"\t\tcurrent_vnp: "<<current_vnp<<endl;
		//IloBool equal_vlink = (current_link == vlink);
		//IloBool equal_vnp = (current_vnp == vnp_num );
		if ((current_link == vlink) &&(current_vnp == vnp_num)){
			find=1;
			ind=l;
		}
		else
			l++;
		if (l>=req_tab.getSize()) cerr<<"\tUnable to find vlink:"<<vlink<<" and vnp:"<<vnp_num<<" combination in VNP request array"<<endl;
	}
	return ind;
}

//************************************************************************************
//                          Search a request in rerserved demand matrix              *
//************************************************************************************
IloInt LinkEmbedder::searchRtndReqFrmPrv(VlinkReqAryType& requestVect, IloInt& nbr_demand, IloInt& vlink, IloInt& vnp_num, IloInt& cperiod){
	//found = (IloInt) search_reserved_request(			Reserved_Request_Vect, 		NB_RESERVED, 		virtual_link_id, 	vnp_id,			period);
	IloInt find_req=0, s=0;
	IloInt c_vnp=0, c_vlink=0, c_period=0;
	while ((s < nbr_demand ) && (find_req ==0)){
		c_vnp =   requestVect[s].getVnpId();
		c_vlink =  requestVect[s].getVlinkId();
		c_period =  requestVect[s].getPeriod();
		IloBool equal_vlink = (c_vlink == vlink);
		IloBool equal_vnp = (c_vnp == vnp_num);
		IloBool equal_period = (c_period == cperiod);
		if ((equal_vlink)&&(equal_vnp)&&(equal_period))
			find_req=1;
		else
			s++;
	}
	return find_req;
}
//************************************************************************************
//                          Search a request in rerserved demand matrix              *
//************************************************************************************
// found = (IloInt) search_reserved_vnode(		Reserved_Request_Vect, 		   NB_RESERVED, 	    vnode, 		   vnp_id, 			period);
IloInt LinkEmbedder::search_reserved_vnode(VlinkReqAryType& demand_mat, IloInt& nbr_demand, IloInt& vnode, IloInt& vnp_num, IloInt& cperiod){
	IloInt find_req=0, s=0;
	while ((s < nbr_demand ) && (find_req ==0)){
		IloInt c_vnp =  demand_mat[s].getVnpId();
		IloInt c_vlink_src = demand_mat[s].getSrcVnode();
		IloInt c_vlink_dest = demand_mat[s].getDestVnode();
		IloInt c_period = demand_mat[s].getPeriod();
		IloBool equal_vlink_src = (c_vlink_src == vnode);
		IloBool equal_vlink_dest = (c_vlink_dest == vnode);
		IloBool equal_vnp = (c_vnp == vnp_num);
		IloBool equal_period = (c_period == cperiod);
		if (((equal_vlink_src)&&(equal_vnp)&&(equal_period)) ||  ((equal_vlink_dest)&&(equal_vnp)&&(equal_period)))
			find_req=1;
		else
			s++;
	}
	return find_req;
}

//*******************************************************************************************
//										generateFlowRequests
//*******************************************************************************************
void LinkEmbedder::generateFlowRequests(VlinkReqAryType&  vLinkReqVect, LinkQosClsAryType&  Link_Class_QoS_Vect, Virtual_Node_Embedding_tab&  Preliminary_Node_Embedding_Vect, IloInt& torSlot, flowRequest_Tab& flowReqVect){
	srand(static_cast<int>(time(0)));	// This initialize random number generator with current time as seed. If not same sequence of flows will be generated.
	IloInt numFlows = 0;
	cout<<"\n\nGenerating Flow for vLink:";
	for(IloInt vLinkItr=0; vLinkItr<vLinkReqVect.getSize(); vLinkItr++){
		double flowRandVal = (double)rand() / RAND_MAX;
		//IloBool genFlowReq = (double)(rand()/(RAND_MAX))<FLOW_REQ_GEN_PROB_PCENT;
		if(flowRandVal<FLOW_REQ_GEN_PROB_PCENT){
			//IloInt srcVnode = vLinkReqVect[vLinkItr].getSrcVnode();
			//IloInt destVnode = vLinkReqVect[vLinkItr].getDestVnode();
			IloInt vLinkId = vLinkReqVect[vLinkItr].getVlinkId();		//vLinkItr != vLinkId since some vlinks were rejected at node embedding
			cout<<"  "<<vLinkId;
			/*Following four lines can be used to set different bandwidth values for flow requests with vLink bandwidth as max
			IloInt vLinkQosCls = vLinkReqVect[vLinkItr].getVlinkQosCls();
			IloInt vLinkMaxBW = Link_Class_QoS_Vect[vLinkQosCls-1].GetQoS_Class_Bandwidth();
			IloNum randValForBw = (IloNum)rand()/RAND_MAX;
			if (randValForBw<0.01)randValForBw+=0.01;
			IloNum reqFlowBw = vLinkMaxBW*randValForBw;*/
			flowReqVect[numFlows].setFlowReqId(numFlows);
			flowReqVect[numFlows].setTorSlot(torSlot);
			flowReqVect[numFlows].setVlinkId(vLinkId);
			numFlows++;
		}
		//cout<<endl;
	}
	cout<<"\n\n\tTotal number of flow requests = "<<numFlows<<endl;
	flowReqVect.setSize(numFlows);
}
