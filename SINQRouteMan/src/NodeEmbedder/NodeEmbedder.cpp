/*
 * NodeEmbedder.cpp
 *
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */
#include "../NodeEmbedder/NodeEmbedder.h"

//**************************************************************************************************
//                                          H-Shortest Path Algorithm                               *
//***************************************************************************************************

void  NodeEmbedder::shortest_path(SnodesAryType& Vect_Substrate_Graph,  MetaSubPathAryType& Path_Vect, IloInt& candidSrcSnode, IloInt& candidDestSnode, IloInt& request_id, IloInt& vnpId, IloInt& vLinkId ,IloInt& numOfShortestPaths, IloEnv& env){
	//				shortest_path(						Vect_Substrate_Graph, 				candidShortestPathsVect, candidSrcSnode, candidDestSnode, candidSnodeCombiId, vnpId, 			vLinkId, 			numOfShortestPaths, 	env);


	IloInt i=0, j=0, l=0, find_src=0, current_node=0, more=0, label=0, valid_node=0, precedent=0, pere=0,  compteur_chemins=0;
	IloInt lab=0, compteur_noeud=0, parent_node=0, last_node=0, nbr_path=0, id_node=1, find_cycle=0, test_cycle=0;
	IloInt nb_in_out_link=0, max_paths=0;
	IloInt adjacents_ind=0;
	VerticesAryType    node_arb(env,GN);

	IloNumArray table_adj(env, MAX_SIZE);


	priority_queue <Trace_vertice, vector<Trace_vertice>, less<vector<Trace_vertice>::value_type> > q;

	//---------------------------
	//  initialisation          -
	//---------------------------

	arrayZeroInitialize(table_adj, MAX_SIZE);
	Vect_Substrate_Graph[(IloInt)(candidSrcSnode-1)].getAdjSnodeAry(table_adj);

	node_arb[compteur_noeud].setVerticeId((int)id_node);
	node_arb[compteur_noeud].setCurrent((int)candidSrcSnode);
	node_arb[compteur_noeud].setPrevious(0);
	node_arb[compteur_noeud].setAdjNodeArray(table_adj);

	id_node++;
	compteur_noeud++;

	lab=0;
	more=0 ;
	j=0;
	last_node = candidSrcSnode;

	while ((j<MAX_SIZE)&&( more==0))
	{
		IloInt current_node = (IloInt) table_adj[j];
		IloBool non_nul = (current_node !=0);
		if(non_nul)
		{
			j++;
			lab = 1;

			precedent = id_node - 1;
			pere = current_node;
			q.push(Trace_vertice((int)lab, (int)precedent,(int)pere));
		}
		else
			more=1;
	}// end while


		//------------------------------------------------------------------
		// Case where a node has only one incomming and/or outgoing link   -
	//------------------------------------------------------------------

	nb_in_out_link = (IloInt) count_number_link(candidDestSnode,Vect_Substrate_Graph, env);
	adjacents_ind = (IloInt) check_src_dest_adjanticity(candidSrcSnode, candidDestSnode, Vect_Substrate_Graph, env);

	IloBool src_dest_are_adjacents =(adjacents_ind ==1);

	if ((src_dest_are_adjacents) && (nb_in_out_link == 1))
		max_paths = 1;
	else
		max_paths = NB_MAX_PATH;

	//-----------------------------------
	//   H shortest paths iteration     -
	//-----------------------------------

	while ((nbr_path <max_paths)&&(!q.empty()))
	{
		valid_node=0;
		while ((valid_node == 0)&&(!q.empty()))
		{
			label = q.top().priority;
			precedent = q.top().previous;
			pere = q.top().current;

			if ((pere != candidSrcSnode) && (pere != last_node))
				valid_node=1;

			q.pop();
		}
		last_node = pere;

		if (pere == candidDestSnode)
			nbr_path++;


		node_arb[compteur_noeud].setVerticeId((int)id_node);
		node_arb[compteur_noeud].setCurrent((int)pere);
		node_arb[compteur_noeud].setPrevious((int)precedent);

		arrayZeroInitialize(table_adj, MAX_SIZE);

		if (pere != candidDestSnode)
		{

			Vect_Substrate_Graph[(IloInt)(pere - 1)].getAdjSnodeAry(table_adj);
			more=0 ;
			j=0;

			while ((j<MAX_SIZE)&&( more==0))
			{
				IloInt current_node =  (IloInt) table_adj[j];
				IloBool non_nul = (current_node !=0);

				if(non_nul)
				{
					j++;
					lab = label + 1;
					precedent = id_node;

					if  (current_node != candidSrcSnode)
					{
						q.push(Trace_vertice((int)lab, (int)precedent, (int)current_node));

					}
				}
				else
					more=1;

			}// end while

		} // pere != destination

		node_arb[compteur_noeud].setAdjNodeArray(table_adj);
		compteur_noeud++;
		id_node++;

	} // end while nbr_path <2*H_PATH

	i=0;
	compteur_chemins =0;
	//more_H_hops=0;


	while ((i<compteur_noeud) && (compteur_chemins < 1))
	{

		current_node = (IloInt) node_arb[i].getCurrent();
		if (current_node == candidDestSnode)
		{

			find_src= 0;
			l=i;
			IloNumArray node_tab(env, MAX_SIZE);
			arrayZeroInitialize(node_tab, MAX_SIZE);
			IloInt nbre_node=0;
			node_tab[nbre_node] = (IloNum)candidDestSnode;
			nbre_node++;
			find_cycle=0;

			while ((find_src==0)&&(find_cycle==0))
			{
				precedent = (IloInt) node_arb[l].getPrevious();
				search_parent_node_position(node_arb,compteur_noeud ,precedent, l);
				parent_node = (IloInt) node_arb[l].getCurrent();

				if (parent_node == candidSrcSnode)
					find_src=1;

				test_cycle = (IloInt) findElementInVector(parent_node, node_tab, nbre_node);

				if(test_cycle==0)
				{
					node_tab[nbre_node] =(IloNum) parent_node;
					nbre_node++;
				}
				else
					find_cycle=1;

			}// end while find src



			if (find_cycle == 0)
			{
				add_meta_path(Path_Vect, candidSrcSnode, candidDestSnode, request_id, vnpId, vLinkId, node_tab, Vect_Substrate_Graph, numOfShortestPaths, env);
				compteur_chemins++;
			}

		}
		i++;
	}


	//----------------------------
	//    Free Used Memory       -
	//----------------------------
	table_adj.end();


}

//***************************************************************************************************
//    Search minimum path unit cost value for a given connection							        *
//***************************************************************************************************

IloInt NodeEmbedder::search_min_path_unit_cost(MetaSubPathAryType& path_vect, IloInt& nb_paths, IloInt& req_id, IloNumArray& bw_cost_vect, IloEnv& env_0)

{
	IloInt current_path_cost=0, min_path_cost=10000;

	IloInt find_arc=0, k=0,h=0, length = 3*MAX_SIZE, req_num=0, more_arc=0, u_arc=0;

	IloNumArray  arc_list(env_0,length);

	while (k < nb_paths)
	{
		req_num = (int) path_vect[k].getVlinkId();
		IloBool found_req = (req_num == req_id) ;

		if(found_req)
		{
			arrayZeroInitialize(arc_list,length);
			path_vect[k].getUsedSlinkAry(arc_list);

			more_arc =0;
			h=0;
			current_path_cost=0;

			while ((more_arc ==0) && ( h < length))
			{
				u_arc = (IloInt) arc_list[h];
				IloBool not_nul = (u_arc != 0);
				if (not_nul)
					current_path_cost+= (IloInt) bw_cost_vect[u_arc-1];
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
//    Search maximum path unit cost value for a given connection									*
//***************************************************************************************************

IloInt NodeEmbedder::search_max_path_unit_cost(MetaSubPathAryType& path_vect, IloInt& nb_paths, IloInt& req_id, IloNumArray& bw_cost_vect, IloEnv& env_0)

{
	IloInt current_path_cost=0, max_path_cost=0;

	IloInt find_arc=0, k=0,h=0, length = 3*MAX_SIZE, req_num=0, more_arc=0, u_arc=0;

	IloNumArray  arc_list(env_0,length);

	while (k < nb_paths)
	{
		req_num = (IloInt) path_vect[k].getVlinkId();
		IloBool found_req = (req_num == req_id) ;

		if(found_req)
		{
			arrayZeroInitialize(arc_list,length);
			path_vect[k].getUsedSlinkAry(arc_list);

			more_arc =0;
			h=0;
			current_path_cost=0;

			while ((more_arc ==0) && ( h < length))
			{
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
//                      Search for a node embedding                                                 *
//***************************************************************************************************

IloInt NodeEmbedder::search_node_embedding(Virtual_Node_Embedding_tab& emb_tab, IloInt& vnode, IloInt& num_vnp, IloInt& nbr_vnode)
{

	IloInt k=0, find_node=0, emb_node=0, current_vnode=0, current_vnp=0;

	while ((k< nbr_vnode)&&(find_node==0))
	{
		current_vnode = (IloInt)emb_tab[k].getVnodeId();
		current_vnp = (IloInt)emb_tab[k].getVnpId();

		IloBool equal_vnode = (current_vnode == vnode);
		IloBool equal_vnp = (current_vnp == num_vnp );

		if ((equal_vnode)&&(equal_vnp))
		{
			emb_node = (IloInt)emb_tab[k].getCandidSnodeId();
			find_node =1;
		}

		k++;
	}


	return emb_node;

}

//***************************************************************************************************************************
//		                           Creation of node embdedding variables                                                    *
//***************************************************************************************************************************
IloInt NodeEmbedder::creation_node_embedding_var(VnodeReqAryType& VNode_Potantial_Location_Vect, IloInt& NB_VNP_NODE, IloNumVarArray& x, Virtual_Node_Embedding_tab& embedding_trace_x, IloEnv& env_1){
	//				creation_node_embedding_var(					VNode_Potantial_Location_Vect, 				NB_VNP_NODE, 				x, 								embedding_trace_x, 			env)

	IloInt k=0,h=0,vnpId=0, vnode=0, more_location=0;
	IloInt candidSnode=0, xIndex=0;

	//--------------------------------------------------------------------------------------------
	// Create one variable for each couple of virtual node and a possible embedding substrate node			                              -
	//--------------------------------------------------------------------------------------------

	IloNumArray  vect_location(env_1,MAX_NB_LOCATION);

	for(k=0;k<NB_VNP_NODE;k++){					//NB_VNP_NODE = number of virtual nodes from file:f6_vnReqNode. Ex 77

		vnode = (IloInt)VNode_Potantial_Location_Vect[k].GetVirtual_Node_Id();
		vnpId = (IloInt)VNode_Potantial_Location_Vect[k].GetVNP_Id();

		VNode_Potantial_Location_Vect[k].GetCandidate_Location_Tab(vect_location);		//Each virtual node in f6_vnReqNode has about 3 potential embedding sumbstrate nodes

		more_location=0;
		h=0;

		while ((h < MAX_NB_LOCATION)&&(more_location==0)){
			candidSnode = (IloInt) vect_location[h];

			IloBool not_null = (candidSnode !=0);

			if (not_null){
				char vnode_char[10];
				char emb_node_char[10];
				char vnp_char[10];

				char var_name[50]= "vn";

				sprintf(vnode_char,"%d",vnode);
				sprintf(emb_node_char,"%d",candidSnode);
				sprintf(vnp_char,"%d",vnpId);

				strcat(var_name, vnode_char);
				strcat(var_name, "_vnp");
				strcat(var_name, vnp_char);
				strcat(var_name, "_sn");
				strcat(var_name, emb_node_char);

				x.add(IloNumVar(env_1,0,1,ILOINT, var_name));

				embedding_trace_x[xIndex].SetVirtual_Node_Id((IloInt)vnode);
				embedding_trace_x[xIndex].SetVNP_Id((IloInt)vnpId);
				embedding_trace_x[xIndex].setCandidSnodeId((IloInt)candidSnode);
				embedding_trace_x[xIndex].SetVar_Index((IloInt)xIndex);

				xIndex++;

			}// if more location
			else
				more_location=1;

			h++;

		}// while more embedding location
	} // for all virtual node


	return xIndex;
}

//***************************************************************************************************************************
//                          No partially embdedding of a VN                                                                 *
//***************************************************************************************************************************
void NodeEmbedder::no_partially_VN_embedding(VlinkReqAryType& vLinkReQVect, IloInt& totNumOfvLinkReq, IloInt& numOfVnps, IloNumVarArray& x, IloNumVarArray& z,
		Meta_Embedding_Nodes_tab& candidSnodeCombiVectForVlinks, 	IloInt& numOfEmbeddingNodeCombinations, 	IloModel& ILP_model, Virtual_Node_Embedding_tab& embedding_trace_x, IloInt& x_VECT_LENGTH , IloEnv& env){

//no_partially_VN_embedding(vLinkReQVect, totNumOfvLinkReq, numOfVnps, x, z, candidSnodeCombiVectForVlinks, numOfEmbeddingNodeCombinations, ILP_model, embedding_trace_x, x_VECT_LENGTH, env);
	cout<<"\n\t\tFrom func: no_partially_VN_embedding"<<endl;
	cout<<"\t\tnbr_vnp:"<<numOfVnps<<endl;
	cout<<"\t\tnumber of link requests (NB_REQUEST):"<<totNumOfvLinkReq<<endl;
	cout<<"\t\tnbr_cand_emb_nodes:"<<numOfEmbeddingNodeCombinations<<endl;

	cout<<"\tx = "; for(int i = 0; i<x.getSize();i++) cout<<" "<<x[i]; cout<<endl;	// Print x vector

	for(IloInt k=0;k<numOfVnps;k++){		//nbr_vnp (number of VNPs) = 20
		IloInt vnpItr= k+1;

		char vnp_char[4];
		char var_name[20]= "vnp";
		sprintf(vnp_char,"%d", (int)vnpItr);
		strcat(var_name, vnp_char);
		z.add(IloNumVar(env,0,1,ILOINT,var_name));
		//z =  vnp1[0..1]  vnp2[0..1]  vnp3[0..1]  vnp4[0..1]  vnp5[0..1]  vnp6[0..1]  vnp7[0..1].... vnp20[0..1]

		IloInt exit_link=0;

		//while (l < totNumOfvLinkReq){			// number of link requests NB_REQUEST = 84
		for(int l = 0; l<totNumOfvLinkReq; l++){
			IloInt vLinkId = (IloInt) vLinkReQVect[l].getVlinkId();
			IloInt vnpId = (IloInt) vLinkReQVect[l].getVnpId();

			if (vnpId == vnpItr){
				IloInt srcVnode = (IloInt) vLinkReQVect[l].getSrcVnode();
				IloInt destVnode = (IloInt) vLinkReQVect[l].getDestVnode();

				IloExpr v(env);
				//IloInt h=0;

				//while (h < numOfEmbeddingNodeCombinations){		// nb_candidate_embedding_nodes = 314
				for (int h=0; h<numOfEmbeddingNodeCombinations; h++){
					IloInt current_vlink = (IloInt) candidSnodeCombiVectForVlinks[h].getVlinkId();

					if (current_vlink == vLinkId){
						IloInt candidSrcSnode = (IloInt)  candidSnodeCombiVectForVlinks[h].getCandidSrcSnode();
						IloInt candidDestSnode = (IloInt) candidSnodeCombiVectForVlinks[h].getCandidDestSnode();
						IloInt index_var_src = (IloInt) search_var_index(embedding_trace_x, srcVnode, candidSrcSnode, vnpItr, x_VECT_LENGTH);
						IloInt index_var_dest = (IloInt) search_var_index(embedding_trace_x, destVnode, candidDestSnode, vnpItr, x_VECT_LENGTH);

						if ((index_var_dest!=GN) && (index_var_src!=GN)){
							v = v + (x[index_var_src]*x[index_var_dest]);
							exit_link=1;
						}
					}// if equal link
					//h++;
				}// while more possible embedding paths

				if (exit_link==1){
					char constraint_name[200]= "No partial embedding of Virtual Network ";
					char vlink_char[10];
					char vnp_char[10];

					sprintf(vlink_char,"%d",vLinkId);
					sprintf(vnp_char,"%d",vnpId);

					strcat(constraint_name, vnp_char);
					strcat(constraint_name, " Virtual Link ");
					strcat(constraint_name, vlink_char);

					IloExpr w(env);
					w = z[k] - v;

					IloRange range_const(env,w,0,constraint_name);
					ILP_model.add(range_const);
				}

			} // if current virtual link request belong to the current VNP.

			//l++;

		} // while all virtual link requests


	}// all for VNP

	cout<<"\tz = "; for(int i = 0; i<z.getSize();i++) cout<<" "<<z[i]; cout<<endl;	// Print x vector
}

//***************************************************************************************************************************
//                          A virtual node is be embendded only on one substrate node                                       *
//***************************************************************************************************************************

void NodeEmbedder::VNode_embedding_clash_constraint(VnodeReqAryType& VNode_loc_vect, IloInt& nbr_vnode,	Virtual_Node_Embedding_tab& embed_track_vect,
		IloNumVarArray& y, IloInt& x_length, IloNumVarArray& t, IloModel& ilp_m, IloEnv& env_1)

{
	//IloInt vn_node=0, vnp_id=0, num_vnp=0, comp_var=0, current_vnode_id=0, exit_path=0;

	for(IloInt i=0;i<nbr_vnode;i++){
		IloInt vn_node = (IloInt) VNode_loc_vect[i].GetVirtual_Node_Id();
		IloInt vnp_id = (IloInt) VNode_loc_vect[i].GetVNP_Id();

		//cout<<"vn_node:"<<vn_node<<endl;
		//cout<<"vnp_id:"<<vnp_id<<endl;

		IloExpr v(env_1);
		IloInt exit_path=0;

		for(IloInt j=0;j<x_length;j++){
			IloInt current_vnode_id = (IloInt) embed_track_vect[j].getVnodeId();
			IloInt num_vnp = (IloInt) embed_track_vect[j].getVnpId();

			IloBool equal_vnode = (current_vnode_id == vn_node);
			IloBool equal_vnp_id = (num_vnp == vnp_id);

			if ((equal_vnode)&&(equal_vnp_id))
			{
				//snode_emb = (IloInt) embed_track_vect[j].getCandidSnodeId();
				//comp_var = ;
				v+=y[(IloInt) embed_track_vect[j].getXindex()];
				exit_path=1;
				//cout<<"snode_emb:"<<snode_emb<<endl;
				//cout<<"comp_var:"<<comp_var<<endl;
			}

		}// end for embedding track vector

		if (exit_path==1){
			char constraint_name[100]= "Embedding clash const of vnode";
			char vnode_char[4];
			char vnp_char[4];

			sprintf(vnode_char,"%d",vn_node);
			sprintf(vnp_char,"%d",vnp_id);

			strcat(constraint_name, vnode_char);
			strcat(constraint_name, "_vnp_");
			strcat(constraint_name, vnp_char);

			IloExpr w(env_1);

			w = v - t[vnp_id-1];

			IloRange range_const(env_1,w,0,constraint_name);
			ilp_m.add(range_const);
		}
	}// end for virtual nodes

}

//***************************************************************************************************************************
//			                          A substrate node has a CPU capacity													*
//***************************************************************************************************************************

void  NodeEmbedder::substrate_node_cpu_constraint(IloInt& nbr_node, Virtual_Node_Embedding_tab& trac_vect, IloNumVarArray& y, IloInt& y_length,
		IloCplex& ilp_sol, VnodeReqAryType& location_vect, IloInt& nbr_vnode,
		NodeQosClsAryType& node_qos_tab, IloNumArray& avail_cpu_tab, IloEnv& env_1)
{

	IloInt i=0,j=0, current_substrate_node=0, num_vnp=0, cpu_vnode=0, vnode=0, node_emb=0, var_index=0, cls=0, upper_bound=0, used_node=0;

	for(i=0;i<nbr_node;i++)
	{
		current_substrate_node = i+1;
		used_node=0;
		IloExpr v(env_1);

		for(j=0;j<y_length;j++)
		{
			node_emb = (IloInt) trac_vect[j].getCandidSnodeId();

			IloBool equal_substrate_node_id = (node_emb == current_substrate_node);

			if (equal_substrate_node_id)
			{
				vnode = (IloInt) trac_vect[j].getVnodeId();
				num_vnp = (IloInt)trac_vect[j].getVnpId();

				cls = (IloInt) search_vnode_class(vnode, num_vnp, location_vect, nbr_vnode);

				cpu_vnode= (IloInt) node_qos_tab[cls-1].getVnodeCpuReq();

				var_index = (IloInt) trac_vect[j].getXindex();

				v+= cpu_vnode*y[var_index];
				used_node =1;
			}
		}
		if (used_node ==1)
		{
			char constraint_name[100]= "CPU capacity of substrate node ";
			char snode_char[4];

			sprintf(snode_char,"%d",current_substrate_node);

			strcat(constraint_name, snode_char);
			upper_bound = (IloInt) avail_cpu_tab[current_substrate_node-1];

			IloRange range_const(env_1,v,upper_bound,constraint_name);
			ilp_sol.addLazyConstraint(range_const);
		}
	}

}

//***************************************************************************************************
//                       Search an Arc in a Table                                                   *
//***************************************************************************************************

IloInt NodeEmbedder::calculate_cost_potantial_emb_shortestpath(MetaSubPathAryType& emb_path_vect, IloInt& nb_path, IloInt& src, IloInt& dest,
		IloInt& vnp_num, IloInt& bandwidth, IloInt& vlink, IloNumArray& link_cost_tab,
		IloNumArray& cpu_unit_cost_tab, IloInt& s_cpu, IloInt& d_cpu, IloNumArray& ram_unit_cost_vect, IloInt& s_mem, IloInt& d_mem, IloNumArray& storage_unit_cost_vect, IloInt& s_sto, IloInt& d_sto, IloEnv& env_0)
{

	IloInt emb_cost=0, src_request=0, dest_request=0, vlink_num=0, current_vnp=0, nb_hops=0;
	IloInt k=0,l=0, current_arc=0, more_arc=0, path_cost=0, exit=0, length = MAX_SIZE;

	IloNumArray used_arc_tab(env_0,MAX_SIZE);
	arrayZeroInitialize(used_arc_tab, MAX_SIZE);

	while ((k < nb_path)&&(exit==0)){
		src_request = (IloInt) emb_path_vect[k].getSrcSnode();
		dest_request = (IloInt) emb_path_vect[k].getDstSnode();
		current_vnp = (IloInt) emb_path_vect[k].getVnpId();
		vlink_num = (IloInt) emb_path_vect[k].getVlinkId();

		IloBool equal_src = (src_request == src);
		IloBool equal_dest = (dest_request == dest);
		IloBool equal_vnp_id = (current_vnp == vnp_num);
		IloBool equal_link_id = (vlink_num == vlink);

		if ((equal_src)&&(equal_dest)&&(equal_vnp_id)&&(equal_link_id)){
			emb_path_vect[k].getUsedSlinkAry(used_arc_tab);
			l=0;
			more_arc=0;
			while ((l<MAX_SIZE)&&(more_arc==0)){
				current_arc = (IloInt)used_arc_tab[l];
				IloBool non_nul = (current_arc !=0);
				if (non_nul)
					path_cost+= (IloInt) link_cost_tab[current_arc-1];
				else
					more_arc=1;
				l++;
			}
			nb_hops = (IloInt) emb_path_vect[k].getNumHops();
			exit=1;
		}
		else
			k++;
	}
	IloInt srcCpuUnitCost = (IloInt) cpu_unit_cost_tab[src-1];
	IloInt srcRamUnitCost = (IloInt) ram_unit_cost_vect[src-1];
	IloInt srcStoUnitCost = (IloInt) storage_unit_cost_vect[src-1];

	IloInt destCpuUnitCost = (IloInt) cpu_unit_cost_tab[dest-1];
	IloInt destRamUnitCost = (IloInt) ram_unit_cost_vect[dest-1];
	IloInt destStoUnitCost = (IloInt) storage_unit_cost_vect[dest-1];

	IloInt srcNodeCost = srcCpuUnitCost* s_cpu + srcRamUnitCost* s_mem + srcStoUnitCost* s_sto;
	IloInt destNodeCost = destCpuUnitCost* d_cpu + destRamUnitCost* d_mem + destStoUnitCost* d_sto;

	emb_cost =  srcNodeCost + destNodeCost + (bandwidth*path_cost);

	return emb_cost;
}

//***************************************************************************************************
//                      Search the Index of a Variable Associated to a Path and a Request           *
//***************************************************************************************************
//					search_var_index(							embedding_trace_x, 		srcVnode, 		candidSrcSnode, 	num_vnp, 	x_VECT_LENGTH);
IloInt NodeEmbedder::search_var_index(Virtual_Node_Embedding_tab& embed_trace_vect, IloInt& vnode, IloInt& emb_node, IloInt& vnp_id, IloInt& length_tab)

{
	IloInt index=GN;
	IloInt find_var=0;
	IloInt s=0;
	IloInt current_vnode=0;
	IloInt current_emb_node=0;
	IloInt current_vnp_id=0;

	while ((find_var == 0) && (s <length_tab )){

		current_vnode= (IloInt) embed_trace_vect[s].getVnodeId();
		current_vnp_id = (IloInt) embed_trace_vect[s].getVnpId();
		current_emb_node = (IloInt) embed_trace_vect[s].getCandidSnodeId();

		IloBool equal_vnode = (current_vnode == vnode);
		IloBool equal_emb_node = (current_emb_node == emb_node);
		IloBool equal_vnp = (current_vnp_id == vnp_id);

		if ((equal_vnode) && (equal_emb_node) && (equal_vnp))
		{
			index = (IloInt) embed_trace_vect[s].getXindex();;
			find_var = 1;
		}
		else
			s++;
	}


	return index;

}
//***************************************************************************************************
//                      Search for vnode QoS class										            *
//***************************************************************************************************

IloInt NodeEmbedder::search_vnode_class(IloInt& vnode_id, IloInt& vnp_id,  VnodeReqAryType&  vnode_vect, IloInt& nbr_vnode)
{
	IloInt node_qos=0, find=0, m=0, cvnode=0, cvnp_id=0, cperiod_id=0;

	while ((m<nbr_vnode)&&(find==0))
	{

		cvnode = (IloInt)vnode_vect[m].GetVirtual_Node_Id();
		cvnp_id = (IloInt)vnode_vect[m].GetVNP_Id();

		IloBool eq_vnode = (cvnode == vnode_id );
		IloBool eq_vnp = (cvnp_id == vnp_id);

		if ((eq_vnode)&&(eq_vnp))
		{
			node_qos = (IloInt) vnode_vect[m].GetQoS_Class();
			find=1;
		}

		m++;

	}
	return node_qos;
}

//************************************************************************************
//                          Search a request in rerserved demand matrix              *
//************************************************************************************

IloInt NodeEmbedder::search_reserved_vnode(VlinkReqAryType& demand_mat, IloInt& nbr_demand, IloInt& vnode, IloInt& vnp_num, IloInt& cperiod)

{

	IloInt find_req=0, s=0;
	IloInt c_src=0, c_dest=0, c_vnp=0, c_vlink_src=0, c_vlink_dest=0, more_demand=0, c_period=0;

	while ((s < nbr_demand ) && (find_req ==0))
	{

		c_vnp =  (IloInt) demand_mat[s].getVnpId();
		c_vlink_src = (IloInt) demand_mat[s].getSrcVnode();
		c_vlink_dest = (IloInt) demand_mat[s].getDestVnode();
		c_period = (IloInt) demand_mat[s].getPeriod();

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

//***************************************************************************************************************************
//			                          INIT - substrate node has a CPU capacity													*
//***************************************************************************************************************************

void  NodeEmbedder::initSnodeResConstraint(IloInt& numOfSubNodes, Virtual_Node_Embedding_tab& embedding_trace_x, IloNumVarArray& x, IloInt& x_VECT_LENGTH, IloCplex& ILP_solver, VnodeReqAryType& VNode_Potantial_Location_Vect, IloInt& newVnodesInTslot, NodeQosClsAryType& Node_Class_QoS_Vect, IloEnv& env){
//						substrate_node_cpu_constraint(IloInt& nbr_node, 		Virtual_Node_Embedding_tab& trac_vect, 		IloNumVarArray& y, 	IloInt& y_length, 		IloCplex& ilp_sol, 	VN_node_requirement_tab& location_vect, 				IloInt& nbr_vnode, 		Node_QoS_Class_tab& node_qos_tab, IloNumArray& avail_cpu_tab, IloEnv& env_1)


	for(IloInt nodeItr=1; nodeItr<=numOfSubNodes; nodeItr++){
		IloInt used_node = 0;
		IloExpr v(env);
		IloExpr mem(env);
		IloExpr sto(env);
		//cout<<"\tx_VECT_LENGTH = "<<x_VECT_LENGTH<<endl;
		for(IloInt traceItr=0; traceItr<x_VECT_LENGTH; traceItr++){
			if (nodeItr == embedding_trace_x[traceItr].getCandidSnodeId()){
				IloInt vNode = embedding_trace_x[traceItr].getVnodeId();
				IloInt vnpId = embedding_trace_x[traceItr].getVnpId();
				//cout<<"\t\t\t vnode = "<<vnode<<"\tnum_vnp = "<<num_vnp<<endl;

				IloInt vNodeQosCls = search_vnode_class(vNode, vnpId, VNode_Potantial_Location_Vect, newVnodesInTslot);

				if(vNodeQosCls>Node_Class_QoS_Vect.getSize())
					cerr<<"ERROR: Number of node classes mismatch. CHECK potentioal_VNode_location and Node QoS files"<<endl;

				IloInt vNodeCpuReq = Node_Class_QoS_Vect[vNodeQosCls - 1].getVnodeCpuReq();
				IloInt vNodeMemReq = Node_Class_QoS_Vect[vNodeQosCls - 1].getVnodeMemReq();
				IloInt vNodeStoReq = Node_Class_QoS_Vect[vNodeQosCls - 1].getVnodeStoReq();
				//cout<<"\t\t cpu_vnode = "<<cpu_vnode<<endl;


				//cout<<"\t\t trac_vect.getSize() = "<<trac_vect.getSize()<<endl;
				IloInt xIndex = embedding_trace_x[traceItr].getXindex();
				//cout<<"\t var_index = "<<var_index<<endl;

				v += vNodeCpuReq*x[xIndex];
				mem += vNodeMemReq*x[xIndex];
				sto += vNodeStoReq*x[xIndex];
				used_node =1;
			}
		}
		if (used_node ==1){
			char cpuConstraintName[100]= "CPU capacity of substrate node ";
			char memConstraintName[100]= "MEM capacity of substrate node ";
			char stoConstraintName[100]= "STO capacity of substrate node ";
			char charSnode[4];

			sprintf(charSnode,"%d",nodeItr);
			strcat(cpuConstraintName, charSnode);
			strcat(memConstraintName, charSnode);
			strcat(stoConstraintName, charSnode);



			IloRange range_const(env,v, SUBSTRATE_NODE_CPU, cpuConstraintName);
			ILP_solver.addLazyConstraint(range_const);
			IloRange memRangeConstr(env,v, SUBSTRATE_NODE_MEM, memConstraintName);
			ILP_solver.addLazyConstraint(memRangeConstr);
			IloRange stoRangeConstr(env,v, SUBSTRATE_NODE_STO, stoConstraintName);
			ILP_solver.addLazyConstraint(stoRangeConstr);
		}
	}

}
