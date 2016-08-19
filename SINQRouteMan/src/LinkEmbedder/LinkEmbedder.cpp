/*
 * LinkEmbedder.cpp
 *
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */

#include "../LinkEmbedder/LinkEmbedder.h"

#include <queue>

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

void LinkEmbedder::search_embedding_path(Meta_Substrate_Path_tab& path_tab, IloInt& nb_path,IloInt& path_id ,IloInt& vnp_num, IloInt& qos, IloInt& bid, Routing_Path_Tab& embedding_tab,
		IloInt& current_nb_path,  IloNumArray& link_cost_tab, IloNumArray& node_cost_tab,  Link_QoS_Class_tab&  QoS_Vect, IloInt& s_cpu, IloInt& d_cpu, IloEnv& env_3)

{


	IloInt i=0,j=0,k=0, more_node=0, more_arc=0, length=MAX_INCIDENCE, profit=0, bw=0, cost=0, link_cost=0;
	IloInt current_vlink=0, current_src=0, current_dest=0, current_arc=0, current_path=0, find_path=0;

	IloNumArray node_list(env_3,length);
	IloNumArray arc_list(env_3,length);
	i=0;
	find_path=0;
	while ((i<nb_path)&&(find_path==0)){
		current_path =  path_tab[i].getCandidShortestPathId();

		IloBool equal_path = (current_path == path_id);

		if (equal_path){
			find_path=1;

			table_initialization(node_list,length);
			table_initialization(arc_list,length);

			current_vlink =  path_tab[i].getCorrespVlinkId();
			current_src =    path_tab[i].getSrcSnodeOfPath();
			current_dest =   path_tab[i].getDestSnodeOfPath();

			embedding_tab[current_nb_path].SetVirtual_Link_Id(current_vlink);
			embedding_tab[current_nb_path].SetSrc_path(current_src);
			embedding_tab[current_nb_path].SetDest_path(current_dest);
			embedding_tab[current_nb_path].SetClass_QoS(qos);
			embedding_tab[current_nb_path].SetVNP_Id(vnp_num);

			//cout<<"Virtual Link id:"<<current_vlink<<endl;
			//cout<<"Source:"<<current_src<<endl;
			//cout<<"Destination:"<<current_dest<<endl;
			cout<<"\t"<< current_vlink <<"\t"<< path_id <<"\t"<< current_src <<"\t"<< current_dest<<"\t[";


			path_tab[i].GetUsed_Node_Tab(node_list);
			embedding_tab[current_nb_path].SetUsed_Node_Tab(node_list);

			j=0;
			more_node=0;

			while((j<length)&&(more_node==0)){
				IloBool  estvide=(node_list[j]==0);
				if  (!estvide){
					//cout<< "Num Node:"<< node_list[j]<<" ";
					cout<<node_list[j]<<" ";
					j++;
				}
				else
					more_node=1;
			}

			path_tab[i].GetUsed_Arc_Tab(arc_list);
			embedding_tab[current_nb_path].SetUsed_Arc_Tab(arc_list);

			bw = QoS_Vect[qos-1].GetQoS_Class_Bandwidth();

			cout<<"]\t[";

			j=0;
			more_arc=0;
			cost =0;

			while ((j<length) && (more_arc==0)){
				current_arc = arc_list[j];
				IloBool  estzero=(current_arc==0);
				if  (!estzero)
				{
					//cout<< "Num Arc:"<< current_arc<<" ";
					cout<<current_arc<<" ";
					link_cost = link_cost_tab[current_arc-1];
					cost+= bw*link_cost;
					j++;
				}
				else
					more_arc=1;
			}
			cout<<"]"<<endl;

			cost+=  ( s_cpu* node_cost_tab[current_src-1] + d_cpu*node_cost_tab[current_dest-1]);

			profit = bid - cost;

			embedding_tab[current_nb_path].SetLink_profit(profit);
			embedding_tab[current_nb_path].SetCost(cost);

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
//                      Search the Index of a Variable Associated to a Path and a Request           *
//***************************************************************************************************

IloInt LinkEmbedder::search_var_index(VLink_Embedding_Trace_Tab& vlink_trace_x, IloInt& vlink, IloInt& path_id, IloInt& x_size)

{
	IloInt index=0;
	IloInt find_var=0;
	IloInt s=0;
	IloInt current_vlink=0;
	IloInt current_path_num=0;

	while ((find_var == 0) && (s <x_size ))
	{
		current_vlink=  vlink_trace_x[s].GetVirtual_Link_Id();
		current_path_num =  vlink_trace_x[s].GetNum_Path();

		IloBool equal_vlink = (current_vlink == vlink);
		IloBool equal_path_num = (current_path_num == path_id);

		if ((equal_vlink) && (equal_path_num))
		{
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

IloInt LinkEmbedder::calculate_cost_potantial_emb_shortestpath(Meta_Substrate_Path_tab& emb_path_vect, IloInt& nb_path, IloInt& src, IloInt& dest,
		IloInt& vnp_num, IloInt& bandwidth, IloInt& vlink, IloNumArray& link_cost_tab,
		IloNumArray& node_cost_tab, IloEnv& env_0)
{

	IloInt emb_cost=0, no_more_substrate_link=0, src_request=0, dest_request=0, vlink_num=0, current_vnp=0;
	IloInt k=0,h=0, find_link=0, exit=0, length = MAX_INCIDENCE, current_substrate_link=0, src_cost=0, dest_cost=0;

	IloNumArray used_arc_tab(env_0,length);
	table_initialization(used_arc_tab, length);

	while ((k < nb_path)&&(exit==0))
	{
		src_request =  emb_path_vect[k].getSrcSnodeOfPath();
		dest_request =  emb_path_vect[k].getDestSnodeOfPath();
		current_vnp =  emb_path_vect[k].GetVNP_Id();
		vlink_num =  emb_path_vect[k].getCorrespVlinkId();

		IloBool equal_src = (src_request == src);
		IloBool equal_dest = (dest_request == dest);
		IloBool equal_vnp_id = (current_vnp == vnp_num);
		IloBool equal_link_id = (vlink_num == vlink);

		if ((equal_src)&&(equal_dest)&&(equal_vnp_id)&&(equal_link_id))
		{
			emb_path_vect[k].GetUsed_Arc_Tab(used_arc_tab);
			exit=1;
		}

		k++;
	}

	h=0;
	no_more_substrate_link=0;

	while ((h < length)&&(no_more_substrate_link==0))
	{
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
//                       Search an Arc in a Table                                                   *
//***************************************************************************************************

IloInt LinkEmbedder::search_arc_in_table(IloInt& sarc, IloNumArray& sarc_tab, IloInt& length)
{
	IloInt find_arc=0, more_arc=0, l=0, current_arc=0;

	while ((l<length)&&(more_arc==0))
	{
		current_arc = sarc_tab[l];
		IloBool non_nul = (current_arc !=0);
		if (non_nul)
		{  if (current_arc == sarc)
		{
			more_arc=1;
			find_arc=1;
		}
		else
			l++;
		}
		else
			more_arc=1;
	}


	return find_arc;
}


//***************************************************************************************************************************
//		                           Creation of path embdedding variables                                                    *
//***************************************************************************************************************************

IloInt LinkEmbedder::creation_path_embedding_var(VNP_traffic_tab& vLinkReqVect, IloInt& numVlinkReq, Meta_Substrate_Path_tab& pathVect, IloInt& numPaths, IloNumVarArray& x, VLink_Embedding_Trace_Tab& path_embedding_trace_x, IloEnv& env){

	//IloInt k=0, l=0, current_request=0, more_path=0, request_id=0, var_index=0, vlink_id=0, current_vlink=0;
	//IloInt num_path=0,
	IloInt x_VECT_LENGTH=0;

	//---------------------------------------------------------------
	// Create one variable for each request and for each used path  -
	//---------------------------------------------------------------

	for(IloInt vLinkReqItr=0; vLinkReqItr<numVlinkReq; vLinkReqItr++){
		IloInt current_vlink = vLinkReqVect[vLinkReqItr].getVlinkId();

		for (IloInt l=0; l< numPaths; l++){
			IloInt vLinkForShortPath = pathVect[l].getCorrespVlinkId(); //pathVect contains multiple substrate shortest paths for each virtual link

			if ( vLinkForShortPath == current_vlink){

				IloInt shortestPathId =  pathVect[l].getCandidShortestPathId();

				char path_char[10];
				char current_vlink_char[10];
				char var_name[50]= "pi";

				sprintf(path_char,"%ld",shortestPathId);
				sprintf(current_vlink_char,"%ld",current_vlink);
				strcat(var_name,path_char);
				strcat(var_name, " k");
				strcat(var_name, current_vlink_char);

				x.add(IloNumVar(env,0,1,ILOINT, var_name));

				path_embedding_trace_x[x_VECT_LENGTH].SetVirtual_Link_Id(current_vlink);
				path_embedding_trace_x[x_VECT_LENGTH].SetNum_Path(shortestPathId);
				path_embedding_trace_x[x_VECT_LENGTH].SetVar_Index(x_VECT_LENGTH);

				x_VECT_LENGTH++;

			} // a path pi used by the current request k
		} // for all paths
	}// for all requests

	return x_VECT_LENGTH;
}

//------------------------------------------------------------------------------------------------------------------------------------//
//		                       			    Creation of flow embdedding variables                                                  	//
// 	Create one variable for each element in shortestPathVect																		//
//	Each variable represents whether each flow request embedded or not in each shortest path in substrrate							//
//	If the flow request f is embedded on the shortest path pi, the corresponding variable in x will be 1. Otherwier 0				//
// 	x = [ 	0,			0,			0,			0,			0,			0,			0,			0,			0,		..	]			//
// 		f1->pi0		f1->pi1		f1->pi2		f1->pi3		f1->pi4		f2->pi5		f3->pi6		f4->pi7		f4->pi8		..				//
//------------------------------------------------------------------------------------------------------------------------------------//

IloInt LinkEmbedder::creation_flow_embedding_var(flowRequest_Tab& flowReqVect, VNP_traffic_tab& vLinkReqVect, IloInt& numVlinkReq, Meta_Substrate_Path_tab& pathVect, IloInt& numPaths, IloNumVarArray& x, VLink_Embedding_Trace_Tab& path_embedding_trace_x, IloEnv& env){

	IloInt x_VECT_LENGTH=0;

	//for(IloInt vLinkReqItr=0; vLinkReqItr<numVlinkReq; vLinkReqItr++){
	for(IloInt flowReqItr=0; flowReqItr<flowReqVect.getSize(); flowReqItr++){
		IloInt vLinkOfFlow = flowReqVect[flowReqItr].getVlinkId();

		for (IloInt l=0; l< numPaths; l++){
			IloInt vLinkForShortPath = pathVect[l].getCorrespVlinkId(); //pathVect contains multiple substrate shortest paths for each virtual link

			if ( vLinkForShortPath == vLinkOfFlow){

				IloInt shortestPathId =  pathVect[l].getCandidShortestPathId();

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


//***************************************************************************************************************************
//                          No partially embdedding of a VN                                                                 *
//***************************************************************************************************************************
// 					vnp_variable_creation(embedding_trace_z, 								z, 					accepted_vnp_id_tab, 	nb_accepted_vnp, 	env);
void LinkEmbedder::vnp_variable_creation(VN_Embedding_Trace_Tab& ztrace_tab, IloNumVarArray& z, IloNumArray& accepted_vnp_vect, IloInt& nunOfAccpetedVnps, IloEnv& env)
{

	//IloInt k=0, num_vnp=0;

	for(IloInt vnpItr=0; vnpItr<nunOfAccpetedVnps; vnpItr++){
		IloInt vnpId =  accepted_vnp_vect[vnpItr];

		char vnp_char[10];
		char var_name[50]= "vnp";

		sprintf(vnp_char,"%d", vnpId);
		strcat(var_name, vnp_char);
		z.add(IloNumVar(env,0,1,ILOINT,var_name));

		ztrace_tab[vnpItr].SetVar_Index(vnpItr);
		ztrace_tab[vnpItr].SetVNP_Id(vnpId);
	}// all for VNP
}

//***************************************************************************************************************************
//                         At least on embedding path is selected for an accepted VN request                               *
//***************************************************************************************************************************

void LinkEmbedder::no_partially_VN_embedding(VNP_traffic_tab& vLinkReqVect, IloInt& numVlinkReq, Meta_Substrate_Path_tab& shortestPathVect, IloInt& numShortestPaths, VLink_Embedding_Trace_Tab& vlink_embedding_trace_x, IloNumVarArray& x, IloInt& x_VECT_LENGTH, IloNumVarArray& z, VN_Embedding_Trace_Tab& embedding_trace_z, IloInt& nb_accepted_vnp, IloModel& ILP_model, IloEnv& env){
	//				no_partially_VN_embedding(					vLinkReqVect, 			numVlinkReq, 						shortestPathVect, 			numShortestPaths, 							vlink_embedding_trace_x, 				x, 			x_VECT_LENGTH, 					z, 							embedding_trace_z, 		nb_accepted_vnp, 		ILP_model, 			env);


	   IloInt path_var_index=0;

	   for(IloInt vLinkItr=0; vLinkItr<numVlinkReq; vLinkItr++){
		   IloInt vLinkId = vLinkReqVect[vLinkItr].getVlinkId();
		   IloInt vnpId = vLinkReqVect[vLinkItr].getVnpId();

		   IloInt exit_path=0, j=0, more_emb_path=0;

		  while ((j < numShortestPaths) &&(more_emb_path==0)){
			  IloInt cvlink = shortestPathVect[j].getCorrespVlinkId();
				IloBool equal_vlink_id = (cvlink == vLinkId);
				if (equal_vlink_id){
					IloInt path_num = shortestPathVect[j].getCandidShortestPathId();
					 path_var_index = search_var_index(vlink_embedding_trace_x, vLinkId, path_num, x_VECT_LENGTH);
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

			   if(LINK_DBG){
				   cout<<"\n\tvLinkItr = "<<vLinkItr<<endl;
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


/*	IloInt shPathItr=0, more_emb_path=0, exit_path=0, path_var_index=0;
	for(IloInt vLinkItr=0; vLinkItr<numVlinkReq; vLinkItr++){							// Iterate over all vLinks from nodeEmbedded requests


		IloInt vLinkId =  vLinkReqVect[vLinkItr].getVlinkId();
		IloInt vnpId =  vLinkReqVect[vLinkItr].getVnpId();

		while ((shPathItr < numShortestPaths) &&(more_emb_path==0)){
			IloInt correspVlink =  shortestPathVect[shPathItr].getCorrespVlinkId();
			if (correspVlink == vLinkId){
				IloInt candidShortestPath =  shortestPathVect[shPathItr].getCandidShortestPathId();
				path_var_index =  search_var_index(vlink_embedding_trace_x, vLinkId, candidShortestPath, x_VECT_LENGTH);				//index of the bool corresponding to a flow-->shortestPath entry in x vector
				exit_path=1;
				more_emb_path=1;
			}// embdedding path for virtual link
			shPathItr++;
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
			IloInt zIndexOfVnp =  search_z_index(vnpId, embedding_trace_z, nb_accepted_vnp);
			cout<<"\n\tvLinkItr = "<<vLinkItr<<endl;
			cout<<"\tvLinkId = "<<vLinkId<<endl;
			cout<<"\tvnpId = "<<vnpId<<endl;
			cout<<"\tzIndexOfVnp = "<<zIndexOfVnp<<endl;
			cout<<"\tz[zIndexOfVnp] = "<<z[zIndexOfVnp]<<endl;
			cout<<"\tx[path_var_index] = "<<x[path_var_index]<<endl;


			v = z[zIndexOfVnp] - x[path_var_index];
			cout<<"\tv = "<<v<<endl;

			IloRange range_const(env,v,0,constraint_name);
			ILP_model.add(range_const);
		}// end if exit path
	}// end for virtual links
	*/
}


//***************************************************************************************************************************
//									  A substrate link has a bandwidth capacity                                             *
//***************************************************************************************************************************

void LinkEmbedder::substrate_link_bw_constraint(Substrate_Link_tab& substrate_link_vect, IloInt& nbr_substrate_link, VNP_traffic_tab& req_vect, IloInt& nb_req,
		Meta_Substrate_Path_tab& path_tab, IloInt& nbr_path, VLink_Embedding_Trace_Tab& trac_vect, Link_QoS_Class_tab&  class_vect,
		IloNumVarArray& y, IloInt& y_length, IloModel& ilp_m, IloEnv& env_1)
{
	IloInt i=0,j=0, k=0, current_substrate_link=0, vnp_id=0, reserved_bw=0, vlink_src=0, vlink_dest=0, src_emb=0, dest_emb=0, cls=0, used=0, upper_bound=0, bw=0;
	IloInt virtual_link_id=0, used_link=0, more_emb_path=0, next_vlink=0, length= MAX_INCIDENCE, find_link=0, cvlink=0;
	IloInt path_num=0, path_var_index=0;

	IloNumArray used_arc_tab(env_1,length);

	for(i=0;i<nbr_substrate_link;i++)
	{
		current_substrate_link =  substrate_link_vect[i].GetArc_Num();
		IloExpr v(env_1);
		used_link=0;

		for(j=0;j<nb_req;j++)
		{
			virtual_link_id =  req_vect[j].getVlinkId();
			vnp_id =  req_vect[j].getVnpId();
			cls =  req_vect[j].getVlinkQosCls();
			bw =  class_vect[cls-1].GetQoS_Class_Bandwidth();

			k=0;
			more_emb_path=0;

			while ((k < nbr_path) &&(more_emb_path==0))
			{
				cvlink =  path_tab[k].getCorrespVlinkId();
				IloBool equal_vlink_id = (cvlink == virtual_link_id);

				if (equal_vlink_id)
				{
					table_initialization(used_arc_tab, length);
					path_tab[k].GetUsed_Arc_Tab(used_arc_tab);

					find_link =  search_arc_in_table(current_substrate_link, used_arc_tab, length);

					IloBool link_is_used = (find_link ==1);
					if (link_is_used)
					{
						path_num =  path_tab[k].getCandidShortestPathId();

						path_var_index =  search_var_index(trac_vect, virtual_link_id, path_num, y_length);

						v+= bw*y[path_var_index];

						used_link=1;
						more_emb_path=1;

					}//substrate link is used

				}// embdedding path for virtual link

				k++;

			}// end while embedding paths

		}// end for requests

		if (used_link==1)
		{
			char constraint_name[100]= "BW capacity of substrate link ";
			char slink_char[10];

			sprintf(slink_char,"%d",current_substrate_link);

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

void LinkEmbedder::periodic_substrate_link_bw_constraint(Substrate_Link_tab& substrate_link_vect, IloInt& nbr_substrate_link, VNP_traffic_tab& req_vect, IloInt& nb_req,
		Meta_Substrate_Path_tab& path_tab, IloInt& nbr_path, VLink_Embedding_Trace_Tab& trac_vect, Link_QoS_Class_tab&  class_vect,
		IloNumVarArray& y, IloInt& y_length, IloModel& ilp_m, IloNumArray& avail_bw_tab , IloEnv& env_1)
{
	IloInt i=0,j=0, k=0, current_substrate_link=0, vnp_id=0, reserved_bw=0, vlink_src=0, vlink_dest=0, src_emb=0, dest_emb=0, cls=0, used=0, upper_bound=0, bw=0;
	IloInt virtual_link_id=0, used_link=0, more_emb_path=0, next_vlink=0, length= MAX_INCIDENCE, find_link=0, cvlink=0;
	IloInt path_num=0, path_var_index=0;

	IloNumArray used_arc_tab(env_1,length);

	for(i=0;i<nbr_substrate_link;i++)
	{
		current_substrate_link =  substrate_link_vect[i].GetArc_Num();
		IloExpr v(env_1);
		used_link=0;

		for(j=0;j<nb_req;j++)
		{
			virtual_link_id =  req_vect[j].getVlinkId();
			vnp_id =  req_vect[j].getVnpId();
			cls =  req_vect[j].getVlinkQosCls();
			bw =  class_vect[cls-1].GetQoS_Class_Bandwidth();

			k=0;
			more_emb_path=0;

			while ((k < nbr_path) &&(more_emb_path==0))
			{
				cvlink =  path_tab[k].getCorrespVlinkId();
				IloBool equal_vlink_id = (cvlink == virtual_link_id);

				if (equal_vlink_id)
				{
					table_initialization(used_arc_tab, length);
					path_tab[k].GetUsed_Arc_Tab(used_arc_tab);

					find_link =  search_arc_in_table(current_substrate_link, used_arc_tab, length);

					IloBool link_is_used = (find_link ==1);
					if (link_is_used)
					{
						path_num =  path_tab[k].getCandidShortestPathId();

						path_var_index =  search_var_index(trac_vect, virtual_link_id, path_num, y_length);

						v+= bw*y[path_var_index];

						used_link=1;
						more_emb_path=1;

					}//substrate link is used

				}// embdedding path for virtual link

				k++;

			}// end while embedding paths

		}// end for requests

		if (used_link==1)
		{
			char constraint_name[100]= "BW capacity of substrate link ";
			char slink_char[4];

			sprintf(slink_char,"%d",current_substrate_link);

			strcat(constraint_name, slink_char);

			upper_bound =  avail_bw_tab[current_substrate_link-1];

			IloRange range_const(env_1,v,upper_bound,constraint_name);
			ilp_m.add(range_const);
		}
	}// end of for substrate links

}

//-----------------------------------------------------------------------------------//
//                          search request                                           //
//-----------------------------------------------------------------------------------//

/*
IloInt search_vnp_request(VNP_traffic_tab& traf_vect, IloInt& source, IloInt& destination, IloInt& vnp, IloInt& length_vect)
	{
		  IloInt exit=0, find=0, j=0, cvnp =0;
		  IloInt srce=0, desti=0;

		  while ((exit==0)&& (j < length_vect))
		   {
		   	 srce=  traf_vect[j].GetVirtual_Link_Source();
		     desti=  traf_vect[j].GetVirtual_Link_Destination();
		     cvnp =  traf_vect[j].GetVNP_Id();

		     IloBool test_src_src = (srce == source);
			 IloBool test_dest_dest = (desti == destination);
		     IloBool test_src_dest = (srce == destination);
			 IloBool test_dest_src = (desti == source);

			 IloBool test_vnp_id = (vnp==cvnp);


		     if (((test_src_src)&&(test_dest_dest)&&(test_vnp_id)) || ((test_src_dest)&&(test_dest_src)&&(test_vnp_id)))
		      {
			      find=1;
		          exit=1;
		       }

		       j++;

		   }

		  return find;

    }
 */


//-----------------------------------------------------------------------------------//
//              Search a virtual node connectivity                                   //
//-----------------------------------------------------------------------------------//

/*IloInt check_node_connected(VNP_traffic_tab& req_vect, IloInt& nb_node, IloInt& vnp_num, IloInt& cnode, IloInt& tab_length)
{
  IloInt find_node=0, csrc=0, cdest=0, cvnp=0;
  IloInt l=0;

   while ((l < tab_length)&&(find_node==0))
    {
		  cdest=  req_vect[l].GetVirtual_Link_Destination();
          csrc=  req_vect[l].GetVirtual_Link_Source();
		  cvnp =  req_vect[l].GetVNP_Id();

          IloBool test_dest = (cdest == cnode);
          IloBool test_src = (csrc == cnode);
          IloBool test_vnp = (cvnp == vnp_num);

          if (((test_src)&&(test_vnp)) || ((test_dest)&&(test_vnp)))
             find_node=1;

	      l++;
   }

 return find_node;
}*/

//-----------------------------------------------------------------------------------//
//              Search an element in a Table                                         //
//-----------------------------------------------------------------------------------//
/*IloInt search_elt_in_table(IloInt& elt, IloNumArray& vect_temp,  IloInt& vect_length)
{

IloInt find=0;

IloInt h=0;
IloInt current_elt=0;

 while ((h < vect_length) && ( find ==0))
  {
	   current_elt = vect_temp[h];
	   IloBool find_elt = (current_elt == elt);

       if (find_elt)
           find=1;

       h++;

  }

  return  find;
}*/



//***********************************************************************************************************************
//                   Table Initialisation                                                                               *
//***********************************************************************************************************************

/*  void table_initialization(IloNumArray& table, IloInt& length)
   {
 	  IloInt p;
  	  for(p=0;p<length;p++)
  		table[p]=0;
 	}*/


//*************************************************************************************************
//                                          Metas Paths Printing                                  *
//*************************************************************************************************

/*
 void printing_meta_path(Meta_Substrate_Path_tab& path_vect, IloInt& Nb_path, IloEnv& env_3)
  {

   IloInt i=0,j=0, more_node=0, more_arc=0, length=MAX_INCIDENCE;
   IloNumArray node_list(env_3,length);
   IloNumArray arc_list(env_3,length);


   for(i=0;i<Nb_path;i++)
    {
      table_initialization(node_list,length);
      table_initialization(arc_list,length);


      cout<<"Meta substrate routing path id:"<<path_vect[i].GetMeta_substrate_path_Id()<<endl;
      cout<<"Virtual Link id:"<<path_vect[i].GetVirtual_Link_Id()<<endl;
      cout<<"Source:"<<path_vect[i].GetSrc_path()<<endl;
      cout<<"Destination:"<<path_vect[i].GetDest_path()<<endl;

      path_vect[i].GetUsed_Node_Tab(node_list);

      j=0;
      more_node=0;

      while((j<length)&&(more_node==0))
       {
	      IloBool  estvide=(node_list[j]==0);
    	  if  (!estvide)
    	   {
    	     cout<< "Num Node:"<< node_list[j]<<" ";
    	     j++;
    	   }
    	  else
    	     more_node=1;
        }

      path_vect[i].GetUsed_Arc_Tab(arc_list);
      cout<<endl;

      j=0;
      more_arc=0;

      while ((j<length) && (more_arc==0))
        {
	        IloBool  estzero=(arc_list[j]==0);
   	        if  (!estzero)
    	     {
   	           cout<< "Num Arc:"<< arc_list[j]<<" ";
   	           j++;
   	         }
    	    else
    	        more_arc=1;
        }

      cout<<endl;
      cout<<endl;
   }
       //----------------------------
       //    Free used Memory       -
       //----------------------------
       		arc_list.end();
       		node_list.end();

 }

 */




//***************************************************************************************************
//                                    Original Graph nodes                                          *
//***************************************************************************************************
/*

  void substrate_Graph_creation(Substrate_Graph_tab& orig_graph_tab, Substrate_Link_tab& Vlink, IloInt& nbr_link, IloInt& nbr_node, IloEnv& env_0)
	{

		IloInt i=0,j=0,k=0,h=0, length=MAX_INCIDENCE;
		IloNumArray table_link(env_0, length);


		for(i=0;i<nbr_node;i++)
  		 {
       		k=0; h=0;
       		table_initialization(table_link,length);

    		for(j=0;j<nbr_link;j++)
     		 	{

       			IloBool test_dest = (Vlink[j].GetArc_Destination()== i+1);
       			IloBool test_src = (Vlink[j].GetArc_Source()==i+1);

       			if ((test_dest)||(test_src))
         		 {
           			table_link[k]=(IloNum) Vlink[j].GetArc_Num();
           			k++;
         		 }

    		 }

      		orig_graph_tab[i].SetNode_Id(i+1);
      		orig_graph_tab[i].SetArc_List(table_link);

 	 	  }
 	 	  	//----------------------------
       		//    Free Used Memory       -
       		//----------------------------
       			table_link.end();

	 }
 */

//***************************************************************************************************
//                                Adjacency List for each Node                                      *
//***************************************************************************************************

/*void adjacency_list_creation(Substrate_Graph_tab& orig_graph_tab, IloInt& nbr_node, IloEnv& env_0)
    {

		IloInt i=0,j=0,k=0,h=0, more_arc_in=0, more_arc_out=0, length=MAX_INCIDENCE;

		IloNumArray  table_in(env_0, length);
		IloNumArray  table_out(env_0, length);
		IloNumArray  table_adjacent(env_0, length);


		for(i=0;i<nbr_node;i++)
  		 {
    		table_initialization(table_adjacent, length);
    		table_initialization(table_out, length);
    		orig_graph_tab[i].GetArc_List(table_out);

    		for(j=0;j<nbr_node;j++)
     		 {
        		IloBool test_different = (j!=i);
	    		if (test_different)
    	 		 {
	          		table_initialization(table_in, length);
	          		orig_graph_tab[j].GetArc_List(table_in);

	          		k=0;
              		more_arc_out=0;

	          		while ((k<length)&&(more_arc_out==0))
                	  {
	              		IloBool non_nul = (table_out[k]!=0);
	              		if (non_nul)
	               		 {
		               		 h=0;
		               		 more_arc_in=0;

                      		 while ((h<length) && (more_arc_in==0))
                        	  {
	                        	 IloBool non_zero = ( table_in[h] !=0);
	                        	 if (non_zero)
                                  {
	                       		     IloBool same_arc =(table_in[h] == table_out[k]);
                           		     if (same_arc)
	                        		    table_adjacent[k]= (IloNum)(j+1);

	                        	      h++;
                                  }
                                 else
                                      more_arc_in=1;

                              }

                               k++;
	                	   }
	                	  else
	                	       more_arc_out=1;
                      }
	     		 }
      		  }

      		orig_graph_tab[i].SetNode_Adjacent_Table(table_adjacent);
  		  }

  		  //----------------------------
          //    Free Used Memory       -
          //----------------------------
       		table_in.end();
       		table_out.end();
       		table_adjacent.end();
     }
 */
//***************************************************************************************************
//                                         Printing Original Graph Nodes Table                      *
//***************************************************************************************************

/* void substrate_graph_printing(Substrate_Graph_tab& Vect_Graph , IloEnv env1, IloInt Node_Number)
    {

	    IloNumArray table_L(env1,MAX_INCIDENCE);
   		IloNumArray table_A(env1,MAX_INCIDENCE);

   		IloInt s=0,h=0,c=0;

   		for(s=0;s<Node_Number;s++)
    	 {
      		for(h=0;h<MAX_INCIDENCE;h++)
       		 {
         		table_L[h]=0;
         		table_A[h]=0;
        	 }

       		cout<<"Node:"<<  Vect_Graph[s].GetNode_Id()<< endl;
       		Vect_Graph[s].GetArc_List(table_L);
       		Vect_Graph[s].GetNode_Adjacent_Table(table_A);

       		for(c=0;c<MAX_INCIDENCE;c++)
    	 	 {
	       		IloBool  non_vide =(table_L[c]!=0);
    	   		if  (non_vide)
    	     		cout<< "Incomming/outgoing Arc Number:"<< table_L[c]<< endl;
    	 	 }

         	for(h=0;h<MAX_INCIDENCE;h++)
    	   	 {
	           IloBool  non_nul=(table_A[h]!=0);
   	           if  (non_nul)
    	          cout<< "Adjacent Node Number:"<< table_A[h]<< endl;
    	     }

         }

         //----------------------------
         //    Free Used Memory       -
         //----------------------------
       		table_L.end();
       		table_A.end();
   }*/

//***************************************************************************************************
//                               Printing Generated Traffic Matrix                                  *
//***************************************************************************************************


/* void traffic_matrix_printing(VNP_traffic_tab& Connection_Vect, IloInt& nb_connection)
    {
		IloInt i=0, src=0, dest=0, virtual_link_id=0, vnp_id=0, bid=0, class_QoS=0;

		for(i=0;i<nb_connection;i++)
  		 {
			  src =  Connection_Vect[i].GetVirtual_Link_Source();
			  dest =  Connection_Vect[i].GetVirtual_Link_Destination();
			  virtual_link_id =  Connection_Vect[i].GetVirtual_Link_Id();
			  class_QoS =  Connection_Vect[i].GetClass_QoS();
			  bid =  Connection_Vect[i].GetBid();
			  vnp_id =  Connection_Vect[i].GetVNP_Id();

   			cout<<"Connection source :"<<src<<"      ";
   			cout<<"Connection destination :"<<dest<<"    ";
   			cout<<"Connection QoS class :"<<class_QoS<<"      ";
   			cout<<"Connection  virtual link Id:"<<virtual_link_id<<"    "<<endl;
			cout<<"Connection  VPN Id:"<<vnp_id<<"    "<<endl;
   			cout<<"Connection  Bid:"<<bid<<"    "<<endl;
  		 }

    }*/





//**************************************************************************************************
//                                          H-Shortest Path Algorithm                               *
//***************************************************************************************************
//shortest_path(Vect_Substrate_Graph, Path_Vect, srcSubNode, destSubNode, hops, request_id, vnp_id, vLinkId, COUNT_PATH, env);
void  LinkEmbedder::shortest_path(Substrate_Graph_tab& tab_OG,  Meta_Substrate_Path_tab& chemins_tab, IloInt& src,
		IloInt& dst, IloInt& max_hops, IloInt& request_num, IloInt& vnp, IloInt& link_id ,IloInt& comp_path, IloEnv& env1)
{

	//cout<<"Shortest paths from src = "<<src<<" \t to dst = "<<dst<<endl;
	IloInt i=0, find_src=0, current_node=0, calculatedPaths=0;
	IloInt selected_node=0, nbre_node, parent_node=0, find_cycle=0, test_cycle=0;
	IloInt more_H_hops=0, nb_in_out_link=0, max_paths=0;
	IloInt dest_not_one_link_node=0, adjacents_ind=0;
	Sommet_tab node_arb(env1, GN);	// Create an array of Sommet objects with the size GN = 10 000

	IloNumArray table_adj(env1, MAX_INCIDENCE);
	IloNumArray node_tab(env1, MAX_INCIDENCE);

	priority_queue <Trace_sommet, vector<Trace_sommet>, less<vector<Trace_sommet>::value_type> > prioQ;
	// template <class T, class Container = std::vector<T>, class Compare = std::less<T> >
	// class Compare     bool operator< is overloaded with   lhs.priority > rhs.priority

	//---------------------------
	//cout<<" initialisation"<<endl;
	//---------------------------

	table_initialization(table_adj, MAX_INCIDENCE);

	// get adjacency nodeId vector for source node = [9, 14, 11, 12, 0,..., 0, 0, 0,]; size of table_adj = MAX_INCIDENCE
	tab_OG[(src-1)].GetNode_Adjacent_Table(table_adj);		// typedef IloArray<Substrate_Node> Substrate_Graph_tab;

	IloInt compute_node=0, id_node=1;
	node_arb[compute_node].SetSommet_Id((int)id_node);
	node_arb[compute_node].setCurrent((int)src);
	node_arb[compute_node].setPrevious(0);
	node_arb[compute_node].SetFils_tab(table_adj);

	id_node++;
	compute_node++;


	IloInt more=0, j=0;


	// For src node adjacency vector, set priority = 1 for each directly connected node, set  and add to priority queue
	//cout<<"\t j = ";
	while ((j<MAX_INCIDENCE)&&( more==0)){

		IloInt current_node =  table_adj[j];
		//cout<<j<<"["<<table_adj[j]<<"]  ";
		if(current_node !=0){
			j++;
			int priority = 1;
			int previous = id_node - 1;
			int current = current_node;
			//cout<<"\tpriority = "<<priority<<"\t previous = "<<previous<<"\t current = "<<current<<endl;
			prioQ.push(Trace_sommet(priority, previous, current));
		}
		else
			more=1;
	}// end while
	//cout<<endl;

	// If src and dst are adjacent (and has only one link betweeen them) algorithm must only give 1 path between them. Otherwise 5 paths will be found
	nb_in_out_link =  count_number_link(dst, tab_OG, env1);
	adjacents_ind =  check_src_dest_adjanticity(src, dst, tab_OG, env1);		// adjacents_ind can be 1 or 0 if src and dest are adjacent

	if (adjacents_ind ==1 && nb_in_out_link == 1)
		max_paths = 1;
	else
		max_paths = NB_MAX_PATH;

	//-----------------------------------
	//cout<<"H shortest paths iteration"<<endl;
	//-----------------------------------

	IloInt nbr_path=0;
	IloInt last_node = src;

	while (nbr_path <max_paths && (!prioQ.empty()) ){
		IloInt valid_node=0, prePrio=0, previous=0, current=0;
		while ((valid_node == 0)&&(!prioQ.empty())){
			prePrio = prioQ.top().priority;
			previous = prioQ.top().previous;
			current = prioQ.top().current;

			if ((current != src) && (current != last_node))
				valid_node=1;

			prioQ.pop();
		}
		last_node = current;
		//cout<<"\tcurrent = "<<current<<endl;
		if (current == dst)
			nbr_path++;


		node_arb[compute_node].SetSommet_Id((int)id_node);
		node_arb[compute_node].setCurrent((int)current);
		node_arb[compute_node].setPrevious((int)previous);

		table_initialization(table_adj, MAX_INCIDENCE);

		if (current != dst){

			tab_OG[(current - 1)].GetNode_Adjacent_Table(table_adj);
			more=0 ;
			j=0;

			while ((j<MAX_INCIDENCE)&&( more==0)){
				IloInt current_node =   table_adj[j];
				IloBool non_nul = (current_node !=0);

				if(non_nul){
					j++;
					int priority = prePrio + 1;
					previous = id_node;

					if  (current_node != src){
						//cout<<"\t\tpriority = "<<priority<<"\t previous = "<<previous<<"\t current = "<<current_node<<endl;
						prioQ.push(Trace_sommet(priority, (int)previous, (int)current_node));
					}
				}
				else
					more=1;

			}// end while

		} // pere != destination

		node_arb[compute_node].SetFils_tab(table_adj);
		compute_node++;
		id_node++;

	}
	// cout<<"end while nbr_path <2*H_PATH"<<endl;

	i=0;
	calculatedPaths =0;
	more_H_hops=0;

	while ((i<compute_node) && (calculatedPaths < max_paths) && (more_H_hops ==0)){

		current_node =  node_arb[i].getCurrent();
		if (current_node == dst){

			find_src= 0;
			IloInt l=i;
			table_initialization(node_tab, MAX_INCIDENCE);
			nbre_node=0;
			node_tab[nbre_node] = (IloNum)dst;
			nbre_node++;
			find_cycle=0;

			while ((find_src==0)&&(find_cycle==0)){
				IloInt previous =  node_arb[l].getPrevious();
				search_parent_node_position(node_arb, compute_node, previous, l);
				parent_node =  node_arb[l].getCurrent();

				if (parent_node == src)
					find_src=1;

				test_cycle =  findElementInVector(parent_node, node_tab, nbre_node);

				if(test_cycle==0)
				{
					node_tab[nbre_node] =(IloNum) parent_node;
					nbre_node++;
				}
				else
					find_cycle=1;

			}// end while find src


			if ((nbre_node - 1) > max_hops)
				more_H_hops=1;
			else
			{
				if (find_cycle == 0)
				{
					//cout<<"\t\tadd_meta_path for virtual link :"<<link_id<<endl;
					add_meta_path(chemins_tab, src, dst, request_num, vnp, link_id, node_tab, tab_OG, comp_path, env1);
					// cout<<"\t compteur_chemins = "<<compteur_chemins<<endl;
					calculatedPaths++;

				}
			}

		}
		i++;
	}


	//----------------------------
	// cout<<"Free Used Memory"<<endl;
	//----------------------------
	table_adj.end();


}

//**************************************************************************************************
//                                          Check #hops in Shortest Path                            *
//***************************************************************************************************

/*IloInt  Check_nb_hops_in_shortest_path(Substrate_Graph_tab& tab_OG,  IloInt& source, IloInt& destination, IloEnv& env1)
  {


    IloInt i=0, j=0, l=0, find_src=0, current_node=0, more=0, label=0, valid_node=0, precedent=0, pere=0,  compteur_chemins=0;
    IloInt lab=0, selected_node=0, compteur_noeud=0, nbre_node, parent_node=0, last_node=0, nbr_path=0, id_node=1, find_cycle=0, test_cycle=0;
    IloInt nbr_node=0, length=MAX_INCIDENCE, nb_in_out_link=0, max_paths=0;
	IloInt dest_not_one_link_node=0, adjacents_ind=0;
    Sommet_tab    node_arb(env1,GN);

    IloNumArray table_adj(env1, length);
    IloNumArray node_tab(env1, length);

    priority_queue <Trace_sommet, vector<Trace_sommet>, less<vector<Trace_sommet>::value_type> > q;

    //---------------------------
    //  initialisation          -
    //---------------------------

	table_initialization(table_adj, length);
    tab_OG[(source-1)].GetNode_Adjacent_Table(table_adj);

    node_arb[compteur_noeud].SetSommet_Id((int)id_node);
    node_arb[compteur_noeud].SetPere((int)source);
    node_arb[compteur_noeud].SetPredecesseur(0);
    node_arb[compteur_noeud].SetFils_tab(table_adj);

    id_node++;
    compteur_noeud++;

   lab=0;
   more=0 ;
   j=0;
   last_node = source;

   while ((j<length)&&( more==0))
     {
	       IloInt current_node =  table_adj[j];
	       IloBool non_nul = (current_node !=0);
		   if(non_nul)
		    {
		       j++;
		       lab = 1;

		       precedent = id_node - 1;
		       pere = current_node;
		       q.push(Trace_sommet((int)lab, (int)precedent,(int)pere));
		    }
		   else
		       more=1;
	  }// end while


     //------------------------------------------------------------------
	 // Case where a node has only one incomming and/or outgoing link   -
	 //------------------------------------------------------------------

      nb_in_out_link =  count_number_link(destination,tab_OG, env1);
      adjacents_ind =  check_src_dest_adjanticity(source, destination, tab_OG, env1);

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
					precedent = q.top().precedent;
					pere = q.top().pere;

					if ((pere != source) && (pere != last_node))
					  valid_node=1;

					q.pop();
				  }
 				 last_node = pere;

				if (pere == destination)
				 nbr_path++;


				node_arb[compteur_noeud].SetSommet_Id((int)id_node);
				node_arb[compteur_noeud].SetPere((int)pere);
				node_arb[compteur_noeud].SetPredecesseur((int)precedent);

				table_initialization(table_adj, length);

				if (pere != destination)
				 {

					 tab_OG[(pere - 1)].GetNode_Adjacent_Table(table_adj);
					 more=0 ;
					 j=0;

					 while ((j<length)&&( more==0))
					  {
						 IloInt current_node =   table_adj[j];
						 IloBool non_nul = (current_node !=0);

						 if(non_nul)
						  {
							  j++;
							  lab = label + 1;
							  precedent = id_node;

							  if  (current_node != source)
							   {
								 q.push(Trace_sommet((int)lab, (int)precedent, (int)current_node));

							   }
						  }
						 else
							  more=1;

					  }// end while

				   } // pere != destination

				   node_arb[compteur_noeud].SetFils_tab(table_adj);
				   compteur_noeud++;
				   id_node++;

     } // end while nbr_path <max_paths

     i=0;
     compteur_chemins =0;

     while ((i<compteur_noeud) && (compteur_chemins < 1))
	 {

	    current_node =  node_arb[i].GetPere();
	    if (current_node == destination)
	    {

		       find_src= 0;
		       l=i;
		       table_initialization(node_tab, length);
		       nbre_node=0;
		       node_tab[nbre_node] = (IloNum)destination;
		       nbre_node++;
		       find_cycle=0;

		       while ((find_src==0)&&(find_cycle==0))
		        {
				    precedent =  node_arb[l].GetPredecesseur();
				    search_parent_node_position(node_arb,compteur_noeud ,precedent, l);
				    parent_node =  node_arb[l].GetPere();

				    if (parent_node == source)
				      find_src=1;

				    test_cycle =  search_elt_in_table(parent_node, node_tab, nbre_node);

				    if(test_cycle==0)
				     {
				       node_tab[nbre_node] =(IloNum) parent_node;
				       nbre_node++;
			         }
			         else
			           find_cycle=1;

		         }// end while find src

		          if (find_cycle == 0)
				     compteur_chemins++;


          } // current node is the destination
          i++;
	  }


	  //----------------------------
      //    Free Used Memory       -
      //----------------------------
       		table_adj.end();


   return nbre_node;

  }*/
//***************************************************************************************************
//                                      Search Parent Node Position                                 *
//***************************************************************************************************

/*IloInt count_number_link(IloInt& desti, Substrate_Graph_tab& tab_graph, IloEnv& env_1)
 {


	IloInt nb_link=0, j=0, more=0, length= MAX_INCIDENCE, current_link=0;
    IloNumArray table_link(env_1, length);

	table_initialization(table_link, length);
    tab_graph[(desti-1)].GetArc_List(table_link);

	while ((j<length)&&( more==0))
	 {
	    	 IloInt current_link =   table_link[j];
			 IloBool non_nul = (current_link !=0);

			 if(non_nul)
			  {
			    nb_link++;
			    more=1;
			  }

			 j++;

	  }// end while

	return nb_link;
 }*/

//***************************************************************************************************
//                                      Search Parent Node Position                                 *
//***************************************************************************************************

/*IloInt check_src_dest_adjanticity(IloInt& srce, IloInt& desti, Substrate_Graph_tab& tab_graph,IloEnv& env_1 )
  {

	IloInt length= MAX_INCIDENCE, more_arc_src=0, more_arc_dest=0, h=0, k=0, node_are_adj=0, current_arc_in=0, current_arc_out=0;

    IloNumArray table_link_src(env_1, length);
    table_initialization(table_link_src, length);

    tab_graph[(srce-1)].GetArc_List(table_link_src);

	IloNumArray table_link_dest(env_1, length);
	table_initialization(table_link_dest, length);

    tab_graph[(desti-1)].GetArc_List(table_link_dest);

	k=0;
    more_arc_src=0;

	while ((k<length)&&(more_arc_src==0)&&(node_are_adj==0))
      {
		   current_arc_out =  table_link_src[k];

	       IloBool non_nul = (current_arc_out !=0);
	       if (non_nul)
	        {
		       h=0;
		       more_arc_dest=0;

               while ((h<length) && (more_arc_dest==0) && (node_are_adj==0))
                 {
	              	current_arc_in =  table_link_dest[h];
	                IloBool non_zero = (current_arc_in !=0);
	              	 if (non_zero)
                      {
	               	     IloBool same_arc =(current_arc_in == current_arc_out);
                         if (same_arc)
							 node_are_adj=1;
						 h++;
					  }
					 else
                       more_arc_dest=1;


			     }// end while dest
              k++;
			 }
	        else
	          more_arc_src=1;

         } // end while src

	  return node_are_adj;
	 }
 */
//***************************************************************************************************
//                                      Search Parent Node Position                                 *
//***************************************************************************************************

/*void search_parent_node_position(Sommet_tab& arbo_tab, IloInt& length_arbo ,IloInt& search_node, IloInt& position_node)

      {
         IloInt find_node=0, h=0 , node_id=0;

	     while ((find_node ==0) && (h < length_arbo))
	      {
		     node_id =  arbo_tab[h].GetSommet_Id();
		     IloBool test_equal_node = (search_node == node_id);
		     if (test_equal_node)
		      {
			       position_node =h;
		           find_node=1;
	          }
		     else
		        h++;

		  }

     }*/
//***************************************************************************************************
//                                        Add Meta_Path                                             *
//***************************************************************************************************

/*void add_meta_path(Meta_Substrate_Path_tab& PPath_tab, IloInt& src_request, IloInt& dest_request, IloInt& request_number, IloInt& vnp_num, IloInt& link_num, IloNumArray& used_n_tab,
                            Substrate_Graph_tab& vect_OG, IloInt& comp_path, IloEnv& env2)
    {

       IloInt comp_node=0, find_src=0, find_dest=0, h=0, current_arc=0;
	   IloInt src_arc=0, dest_arc=0, length=MAX_INCIDENCE;

       IloNumArray used_arc_tab(env2, length);
	   IloNumArray temp_tab(env2, length);
	   IloNumArray tab_in(env2, length);
	   IloNumArray tab_out(env2, length);

	   PPath_tab[comp_path].SetMeta_substrate_path_Id(comp_path);
       PPath_tab[comp_path].SetSrc_path(src_request);
       PPath_tab[comp_path].SetDest_path(dest_request);
       PPath_tab[comp_path].SetVirtual_Link_Id(link_num);
	   PPath_tab[comp_path].SetVNP_Id(vnp_num);
	   PPath_tab[comp_path].SetCandidate_Embdding_Nodes_Id(request_number);




       while ((find_src ==0) && (h < length))
	     {
		     IloBool est_nul = (used_n_tab[h] ==0);
		     if (est_nul)
			    find_src=1;
	         else
		        h++;
	    }

       h--;

       while ((find_dest ==0)&&(h>=0))
	     {
		     temp_tab[comp_node] = (IloNum) used_n_tab[h];
		     comp_node++;

		     IloBool est_dest = (dest_request ==  used_n_tab[h]);
		     if (est_dest)
			    find_dest=1;
	         else
			    h--;
  	     }

       PPath_tab[comp_path].SetUsed_Node_Tab(temp_tab);

       table_initialization(tab_in, length);
       table_initialization(tab_out, length);
       table_initialization(used_arc_tab, length);

       h=0;
       while (h < comp_node - 1)
	    {
		  src_arc = temp_tab[h];
		  dest_arc = temp_tab[h+1];

		  vect_OG[src_arc-1].GetArc_List(tab_out);
		  vect_OG[dest_arc-1].GetArc_List(tab_in);

		  current_arc =  search_common_arc(tab_out, tab_in);
		  used_arc_tab[h] = (IloNum) current_arc;

		  h++;
  	    }

       PPath_tab[comp_path].SetUsed_Arc_Tab(used_arc_tab);
       comp_path++;

       //----------------------------
       //    Free Used Memory       -
       //----------------------------
       		used_arc_tab.end();
       		temp_tab.end();
       		tab_out.end();
       		tab_in.end();
    }
 */
//***************************************************************************************************
//                     Calulate Used Arcs by a Shotest Meta_Path                                    *
//***************************************************************************************************

/* IloInt  search_common_arc(IloNumArray& tab_o, IloNumArray& tab_i)
     {
          IloInt arc_c=0, find_arc=0, k=0, p=0, current_arc_out=0;
          IloInt more_arc_in=0, more_arc_out=0;

  		  while ((k < MAX_INCIDENCE)&&(more_arc_out==0))
    		{
	    		IloBool non_zero = ( tab_o[k] !=0);
	    		if (non_zero)
	     		 {
		    		current_arc_out =  tab_o[k];
            		p=0;
        			more_arc_in=0;

        			while ((p < MAX_INCIDENCE)&&(more_arc_in==0))
         	 		  {
	       				  IloBool non_nul = (tab_i[p] !=0);
	       				  if (non_nul)
	       		 		   {
		           			  IloBool arc_in_equal_arc_out = ( current_arc_out ==  tab_i[p]);
		           			  if (arc_in_equal_arc_out)
		             		   {
			             		    more_arc_in =1;
		               			    more_arc_out =1;
		               				arc_c = current_arc_out;
	                   		   }
		       	    		  p++;
		       	  			}
	       				  else
	       		   			  more_arc_in=1;
         	 		  }

         			k++;
          		}
        	   else
           			more_arc_out=1;
     		}

  		return arc_c;
	 }
 */

//***************************************************************************************************
//                            Find Next Node in a List of Nodes                                     *
//***************************************************************************************************

void LinkEmbedder::find_next_node(IloNumArray& arc_vect ,IloInt& current_node,IloInt& node_suivant, IloInt& c_arc,
		Substrate_Graph_tab& vect_OG, IloEnv& env_3)
{

	IloInt  k=0, p=0, taille = MAX_INCIDENCE, find_node=0, c_node=0, find_commun_arc=0;
	IloInt find_current_node=0, c_temp_arc=0, more_arc=0, find_arc=0, length= arc_vect.getSize();
	c_arc=0;


	IloNumArray  arc_out(env_3, taille);
	IloNumArray  arc_in(env_3, taille);

	while (find_current_node ==0)
	{
		c_node =  vect_OG[k].GetNode_Id();
		if (c_node == current_node)
		{
			table_initialization(arc_out, taille);
			vect_OG[k].GetArc_List(arc_out);
			find_current_node=1;
		}
		else
			k++;
	}

	k=0;
	while ((find_commun_arc ==0) && (k < length))
	{
		c_arc =  arc_vect[k];
		more_arc=0;
		p=0;
		while ((more_arc == 0) && ( p < taille ))
		{
			c_temp_arc =  arc_out[p];
			if (c_temp_arc !=0)
			{
				if (c_temp_arc == c_arc)
				{
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

	while (find_node ==0)
	{
		table_initialization(arc_in, taille);
		vect_OG[k].GetArc_List(arc_in);
		find_arc=0;

		find_arc =  findElementInVector(c_arc, arc_in, taille);
		if (find_arc==1)
		{
			node_suivant =  vect_OG[k].GetNode_Id();
			find_node=1;
		}
		else
			k++;
	}

	arc_in.end();
	arc_out.end();


}

//***************************************************************************************************
//    Search maximum path unit cost value for a given connection									*
//***************************************************************************************************

IloInt LinkEmbedder::search_max_path_unit_cost(Meta_Substrate_Path_tab& path_vect, IloInt& nb_paths, IloInt& req_id, IloNumArray& bw_cost_vect, IloEnv& env_0)

{
	IloInt current_path_cost=0, max_path_cost=0;

	IloInt find_arc=0, k=0,h=0, length = 3*MAX_INCIDENCE, req_num=0, more_arc=0, u_arc=0;

	IloNumArray  arc_list(env_0,length);

	while (k < nb_paths)
	{
		req_num =  path_vect[k].getCorrespVlinkId();
		IloBool found_req = (req_num == req_id) ;

		if(found_req)
		{
			table_initialization(arc_list,length);
			path_vect[k].GetUsed_Arc_Tab(arc_list);

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
//    Search minimum path unit cost value for a given connection							        *
//***************************************************************************************************

IloInt LinkEmbedder::search_min_path_unit_cost(Meta_Substrate_Path_tab& path_vect, IloInt& nb_paths, IloInt& req_id, IloNumArray& bw_cost_vect, IloEnv& env_0)

{
	IloInt current_path_cost=0, min_path_cost=10000;

	IloInt find_arc=0, k=0,h=0, length = 3*MAX_INCIDENCE, req_num=0, more_arc=0, u_arc=0;

	IloNumArray  arc_list(env_0,length);

	while (k < nb_paths)
	{
		req_num = (int) path_vect[k].getCorrespVlinkId();
		IloBool found_req = (req_num == req_id) ;

		if(found_req)
		{
			table_initialization(arc_list,length);
			path_vect[k].GetUsed_Arc_Tab(arc_list);

			more_arc =0;
			h=0;
			current_path_cost=0;

			while ((more_arc ==0) && ( h < length))
			{
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

IloInt LinkEmbedder::search_vnode_class(IloInt& vnode_id, IloInt& vnp_id,  Virtual_Node_Embedding_tab&  vnode_vect, IloInt& nbr_vnode)
{
	IloInt node_qos=0, find=0, m=0, cvnode=0, cvnp_id=0, cperiod_id=0;

	while ((m<nbr_vnode)&&(find==0))
	{

		cvnode = vnode_vect[m].getVnodeId();
		cvnp_id = vnode_vect[m].getVnpId();

		IloBool eq_vnode = (cvnode == vnode_id );
		IloBool eq_vnp = (cvnp_id == vnp_id);

		if ((eq_vnode)&&(eq_vnp))
		{
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

IloInt LinkEmbedder::getCandidSnodeForVnode(Virtual_Node_Embedding_tab& Node_Embed_tab, IloInt& nbr_vnode, IloInt& src, IloInt& vnp_num)
{
	IloInt snode=0, l=0, find=0, current_vnode=0, current_vnp=0;

	while ((find==0)&&(l<nbr_vnode))
	{
		current_vnode=  Node_Embed_tab[l].getVnodeId();
		current_vnp =   Node_Embed_tab[l].getVnpId();

		IloBool equal_vnode = (current_vnode == src);
		IloBool equal_vnp = (current_vnp == vnp_num);

		if ((equal_vnode)&&(equal_vnp))
		{
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

void LinkEmbedder::search_request(VNP_traffic_tab& req_tab, IloInt& nb_req, IloInt& vlink, IloInt& cls, IloInt& req_bid, IloInt& vnp_num,
		IloInt& s_cls, IloInt& d_cls, Virtual_Node_Embedding_tab& node_emb_Vect, IloInt& nb_vnode){

	IloInt h=0, find=0, current_vlink=0, vlink_src=0, vlink_dest=0;

	while ((h < nb_req)&&(find==0)){
		current_vlink =  req_tab[h].getVlinkId();
		//IloBool equal_vlink = (current_vlink == vlink);
		if (current_vlink == vlink){
			cls = req_tab[h].getVlinkQosCls();
			req_bid = req_tab[h].GetBid();
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


IloInt LinkEmbedder::search_z_index(IloInt& vnp_num, VN_Embedding_Trace_Tab& emb_trace_z, IloInt& nbr_vnp)
{
	IloInt index=0;
	IloInt find_var=0;
	IloInt s=0;
	IloInt current_vnp_id=0;

	while ((find_var == 0) && (s <nbr_vnp ))
	{

		current_vnp_id =  emb_trace_z[s].GetVNP_Id();

		IloBool equal_vnp = (current_vnp_id == vnp_num);

		if (equal_vnp)
		{
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

IloInt LinkEmbedder::search_request_index(IloInt& vlink, VNP_traffic_tab& req_tab, IloInt& vnp_num)
{
	IloInt ind=0, l=0, find=0, current_link=0,current_vnp=0;

	while (find==0)
	{
		current_link =  req_tab[l].getVlinkId();
		current_vnp =  req_tab[l].getVnpId();

		IloBool equal_vlink = (current_link == vlink);
		IloBool equal_vnp = (current_vnp == vnp_num );

		if ((equal_vlink) &&(equal_vnp))
		{
			find=1;
			ind=l;
		}
		else
			l++;
	}

	return ind;
}


//************************************************************************************
//                          Search a request in rerserved demand matrix              *
//************************************************************************************

IloInt LinkEmbedder::search_reserved_request(VNP_traffic_tab& requestVect, IloInt& nbr_demand, IloInt& vlink, IloInt& vnp_num, IloInt& cperiod){
//found = (IloInt) search_reserved_request(			Reserved_Request_Vect, 		NB_RESERVED, 		virtual_link_id, 	vnp_id,			period);

	IloInt find_req=0, s=0;
	IloInt c_src=0, c_dest=0, c_vnp=0, c_vlink=0, more_demand=0, c_period=0;

	while ((s < nbr_demand ) && (find_req ==0))
	{

		c_vnp =   requestVect[s].getVnpId();
		c_vlink =  requestVect[s].getVlinkId();
		c_period =  requestVect[s].GetPeriod();

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

IloInt LinkEmbedder::search_reserved_vnode(VNP_traffic_tab& demand_mat, IloInt& nbr_demand, IloInt& vnode, IloInt& vnp_num, IloInt& cperiod){

	IloInt find_req=0, s=0;
	while ((s < nbr_demand ) && (find_req ==0)){

		IloInt c_vnp =  demand_mat[s].getVnpId();
		IloInt c_vlink_src = demand_mat[s].getSrcVnode();
		IloInt c_vlink_dest = demand_mat[s].getDestVnode();
		IloInt c_period = demand_mat[s].GetPeriod();

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
void LinkEmbedder::generateFlowRequests(VNP_traffic_tab&  vLinkReqVect, Link_QoS_Class_tab&  Link_Class_QoS_Vect, Virtual_Node_Embedding_tab&  Preliminary_Node_Embedding_Vect, IloInt& torSlot, flowRequest_Tab& flowReqVect){


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

