/*
 * SDNInterDCQoS.cpp
 *
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */

#include "SDNInterDCQoS.h"
#include <queue>


//-----------------------------------------------------------------------------------------------------------------
//										Definition of Common Functions
//-----------------------------------------------------------------------------------------------------------------
/*
static void table_initialization(IloNumArray&, IloInt&);
static void substrate_Graph_creation(Substrate_Graph_tab&, Substrate_Link_tab&, IloInt&, IloInt&, IloEnv&);
static void adjacency_list_creation(Substrate_Graph_tab&, IloInt&, IloEnv& );
static void substrate_graph_printing(Substrate_Graph_tab&, IloEnv, IloInt);
static void traffic_matrix_printing(VNP_traffic_tab&, IloInt&);
static void printing_meta_path(Meta_Substrate_Path_tab&, IloInt&, IloEnv&);

static void search_parent_node_position(Sommet_tab&, IloInt&, IloInt&, IloInt&);
static IloInt search_common_arc(IloNumArray&, IloNumArray&);
static void add_meta_path(Meta_Substrate_Path_tab&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, IloNumArray&, Substrate_Graph_tab&, IloInt&, IloEnv&);
static IloInt search_vnp_request(VNP_traffic_tab&,IloInt&, IloInt&, IloInt&, IloInt&);
static IloInt search_elt_in_table(IloInt&, IloNumArray&, IloInt&);
static IloInt check_node_connected(VNP_traffic_tab&, IloInt&, IloInt&, IloInt&, IloInt&);					//ok
static void  search_candidate_location(IloInt&, VN_node_requirement_tab&, IloInt&, IloNumArray&, IloInt&);
static IloInt check_src_dest_adjanticity(IloInt&, IloInt&, Substrate_Graph_tab&, IloEnv&);
static IloInt count_number_link(IloInt&, Substrate_Graph_tab&, IloEnv&);
static IloInt  Check_nb_hops_in_shortest_path(Substrate_Graph_tab&, IloInt&, IloInt&, IloEnv&);

 */

//***********************************************************************************************************************
//            						      1 Table Initialisation                                                                               *
//***********************************************************************************************************************
void SDNInterDCQoS::arrayZeroInitialize(IloNumArray& table, const IloInt& length){
	for(int p=0;p<length;p++)
		table[p]=0;
}

//***************************************************************************************************
//                                  2  Original Graph nodes                                          *
//***************************************************************************************************

void SDNInterDCQoS::substrate_Graph_creation(Substrate_Graph_tab& orig_graph_tab, Substrate_Link_tab& Vlink, IloInt& nbr_link, IloInt& nbr_node, IloEnv& env_0)
{

	IloInt i=0,j=0,k=0, length=MAX_SIZE;
	IloNumArray table_link(env_0, length);


	for(i=0;i<nbr_node;i++)
	{
		k=0;
		arrayZeroInitialize(table_link,length);

		for(j=0;j<nbr_link;j++)
		{

			IloBool test_dest = ((IloInt)Vlink[j].GetArc_Destination()== i+1);
			IloBool test_src = ((IloInt)Vlink[j].GetArc_Source()==i+1);

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
//***************************************************************************************************
//                               3 Adjacency List for each Node                                      *
//***************************************************************************************************

void SDNInterDCQoS::adjacency_list_creation(Substrate_Graph_tab& orig_graph_tab, IloInt& nbr_node, IloEnv& env_0)
{

	IloInt i=0,j=0,k=0,h=0, more_arc_in=0, more_arc_out=0, length=MAX_SIZE;

	IloNumArray  table_in(env_0, length);
	IloNumArray  table_out(env_0, length);
	IloNumArray  table_adjacent(env_0, length);


	for(i=0;i<nbr_node;i++)
	{
		arrayZeroInitialize(table_adjacent, length);
		arrayZeroInitialize(table_out, length);
		orig_graph_tab[i].GetArc_List(table_out);

		for(j=0;j<nbr_node;j++)
		{
			IloBool test_different = (j!=i);
			if (test_different)
			{
				arrayZeroInitialize(table_in, length);
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
								IloBool same_arc =((IloInt)table_in[h] == (IloInt)table_out[k]);
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

//***************************************************************************************************
//                                       4  Printing Original Graph Nodes Table                      *
//***************************************************************************************************

void SDNInterDCQoS::substrate_graph_printing(Substrate_Graph_tab& Vect_Graph , IloEnv env1, IloInt Node_Number)
{

	IloNumArray table_L(env1,MAX_SIZE);
	IloNumArray table_A(env1,MAX_SIZE);

	IloInt s=0,h=0,c=0;
	cout<<"\n\t\tPrinting substrate topology graph"<<endl;
	cout<<"\t\tNode\tIn/Out Arcs\t\t\tAdjacent Nodes"<<endl;
	for(s=0;s<Node_Number;s++)
	{
		for(h=0;h<MAX_SIZE;h++)
		{
			table_L[h]=0;
			table_A[h]=0;
		}

		cout<<"\t\t"<<  Vect_Graph[s].GetNode_Id();
		Vect_Graph[s].GetArc_List(table_L);
		Vect_Graph[s].GetNode_Adjacent_Table(table_A);

		int ec =0;
		cout<<"\t[";
		for(c=0;c<MAX_SIZE;c++)
		{
			IloBool  non_vide =(table_L[c]!=0);
			if  (non_vide){
				cout<< table_L[c]<<",";
				ec++;
			}
		}
		cout<<"]    ";
		if(ec<3) cout<<"\t\t";
		else if(ec<6) cout<<"\t";
		cout<<"\t[";
		for(h=0;h<MAX_SIZE;h++)
		{
			IloBool  non_nul=(table_A[h]!=0);
			if  (non_nul)
				cout<<table_A[h]<<",";
		}
		cout<<"]"<< endl;

	}

	//----------------------------
	//    Free Used Memory       -
	//----------------------------
	table_L.end();
	table_A.end();
}

//***************************************************************************************************
//                             5  Printing Generated Traffic Matrix                                  *
//***************************************************************************************************/


void SDNInterDCQoS::traffic_matrix_printing(VNP_traffic_tab& Connection_Vect, IloInt& nb_connection)
{
	IloInt i=0, src=0, dest=0, virtual_link_id=0, vnp_id=0, bid=0, class_QoS=0;

	for(i=0;i<nb_connection;i++)
	{
		src = (IloInt) Connection_Vect[i].getSrcVnode();
		dest = (IloInt) Connection_Vect[i].getDestVnode();
		virtual_link_id = (IloInt) Connection_Vect[i].getVlinkId();
		class_QoS = (IloInt) Connection_Vect[i].getVlinkQosCls();
		bid = (IloInt) Connection_Vect[i].GetBid();
		vnp_id = (IloInt) Connection_Vect[i].getVnpId();

		cout<<"Connection source :"<<src<<"      ";
		cout<<"Connection destination :"<<dest<<"    ";
		cout<<"Connection QoS class :"<<class_QoS<<"      ";
		cout<<"Connection  virtual link Id:"<<virtual_link_id<<"    "<<endl;
		cout<<"Connection  VPN Id:"<<vnp_id<<"    "<<endl;
		cout<<"Connection  Bid:"<<bid<<"    "<<endl;
	}

}

//*************************************************************************************************
//                                         6 Metas Paths Printing                                  *
//*************************************************************************************************
// 					printing_meta_path(							Path_Vect, 		COUNT_PATH, 		env);
void SDNInterDCQoS::printing_meta_path(Meta_Substrate_Path_tab& path_vect, IloInt& Nb_path, IloEnv& env_3)
{

	IloInt i=0,j=0, more_node=0, more_arc=0, length=MAX_SIZE;
	IloNumArray node_list(env_3,length);
	IloNumArray arc_list(env_3,length);


	cout<<"\n\tPrinting Meta substrate routing paths"<<endl;
	cout<<"\t\tpathid\tvLinkid\tsSrc\tsDest \t Node-numbers \t Arc-Numbers"<<endl;
	for(i=0;i<Nb_path;i++)
	{
		arrayZeroInitialize(node_list,length);
		arrayZeroInitialize(arc_list,length);


		cout<<"\t\t"<<path_vect[i].getCandidShortestPathId()<<"\t";
		cout<<path_vect[i].getCorrespVlinkId()<<"\t";
		cout<<path_vect[i].getSrcSnodeOfPath()<<"\t";
		cout<<path_vect[i].getDestSnodeOfPath()<<"\t";


		path_vect[i].GetUsed_Node_Tab(node_list);

		j=0;
		more_node=0;
		cout<<"[";
		while((j<length)&&(more_node==0))
		{
			IloBool  estvide=(node_list[j]==0);
			if  (!estvide)
			{
				cout<< node_list[j]<<" ";
				j++;
			}
			else
				more_node=1;
		}

		path_vect[i].GetUsed_Arc_Tab(arc_list);
		cout<<"] \t [";

		j=0;
		more_arc=0;

		while ((j<length) && (more_arc==0))
		{
			IloBool  estzero=(arc_list[j]==0);
			if  (!estzero)
			{
				cout<< arc_list[j]<<" ";
				j++;
			}
			else
				more_arc=1;
		}

		cout<<"]"<<endl;
	}
	//----------------------------
	//    Free used Memory       -
	//----------------------------
	arc_list.end();
	node_list.end();

}
//***************************************************************************************************
//                                     7 Search Parent Node Position                                 *
//***************************************************************************************************

void SDNInterDCQoS::search_parent_node_position(Vertices_tab& arbo_tab, IloInt& length_arbo ,IloInt& search_node, IloInt& position_node)

{
	IloInt find_node=0, h=0 , node_id=0;

	while ((find_node ==0) && (h < length_arbo))
	{
		node_id = (IloInt) arbo_tab[h].GetSommet_Id();
		IloBool test_equal_node = (search_node == node_id);
		if (test_equal_node)
		{
			position_node =h;
			find_node=1;
		}
		else
			h++;

	}

}

//***************************************************************************************************
//                		   8  Calulate Used Arcs by a Shotest Meta_Path                                    *
//***************************************************************************************************

IloInt  SDNInterDCQoS::search_common_arc(IloNumArray& tab_o, IloNumArray& tab_i)
{
	IloInt arc_c=0, k=0, p=0, current_arc_out=0;
	IloInt more_arc_in=0, more_arc_out=0;

	while ((k < MAX_SIZE)&&(more_arc_out==0))
	{
		IloBool non_zero = ( tab_o[k] !=0);
		if (non_zero)
		{
			current_arc_out = (IloInt) tab_o[k];
			p=0;
			more_arc_in=0;

			while ((p < MAX_SIZE)&&(more_arc_in==0))
			{
				IloBool non_nul = (tab_i[p] !=0);
				if (non_nul)
				{
					IloBool arc_in_equal_arc_out = ( current_arc_out == (IloInt) tab_i[p]);
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
//***************************************************************************************************
//                                       9 Add Meta_Path                                             *
//***************************************************************************************************

void SDNInterDCQoS::add_meta_path(Meta_Substrate_Path_tab& metaShtstPathVect, IloInt& candidSrcSnode, IloInt& candidDestSnode, IloInt& request_id, IloInt& vnp_id, IloInt& vLinkId, IloNumArray& node_tab, Substrate_Graph_tab& Vect_Substrate_Graph, IloInt& COUNT_PATH,  IloEnv& env){
	//				add_meta_path(							metaShtstPathVect, 			src, 						dest, 				request_id, 		vnp_id, 	virtual_link_id, 		node_tab, 				Vect_Substrate_Graph, 	COUNT_PATH, 		env1);
	//cout<<"in add_meta_path"<<endl;

	IloInt comp_node=0, find_src=0, find_dest=0, h=0, current_arc=0;
	IloInt src_arc=0, dest_arc=0, length=MAX_SIZE, nb_hops=0;

	IloNumArray used_arc_tab(env, length);
	IloNumArray temp_tab(env, length);
	IloNumArray tab_in(env, length);
	IloNumArray tab_out(env, length);

	//cout<<"PPath_tab.size = "<<PPath_tab.getSize()<<endl;
	//cout<<"comp_path = "<<comp_path<<endl;

	metaShtstPathVect[COUNT_PATH].setMetaSubPathId(COUNT_PATH);
	metaShtstPathVect[COUNT_PATH].setMetaSubPathSrc(candidSrcSnode);
	metaShtstPathVect[COUNT_PATH].setMetaSubPathDst(candidDestSnode);
	metaShtstPathVect[COUNT_PATH].setMetaSubPathVlinkId(vLinkId);
	metaShtstPathVect[COUNT_PATH].setMetaSubPathVnpId(vnp_id);
	metaShtstPathVect[COUNT_PATH].setMetaSubPathReqId(request_id);

	while ((find_src ==0) && (h < length))
	{
		IloBool est_nul = (node_tab[h] ==0);
		if (est_nul)
			find_src=1;
		else
			h++;
	}

	h--;

	//cout<<"temp_tab.size = "<<temp_tab.getSize()<<endl;
	//cout<<"comp_path = "<<comp_path<<endl;
	while ((find_dest ==0)&&(h>=0))
	{
		temp_tab[comp_node] = (IloNum) node_tab[h];
		comp_node++;

		IloBool est_dest = (candidDestSnode == (IloInt) node_tab[h]);
		if (est_dest)
			find_dest=1;
		else
			h--;
	}

	//cout<<"PPath_tab.size = "<<PPath_tab.getSize()<<endl;
	metaShtstPathVect[COUNT_PATH].SetUsed_Node_Tab(temp_tab);

	arrayZeroInitialize(tab_in, length);
	arrayZeroInitialize(tab_out, length);
	arrayZeroInitialize(used_arc_tab, length);

	h=0;

	while (h < comp_node - 1)
	{
		src_arc =(IloInt) temp_tab[h];
		dest_arc =(IloInt) temp_tab[h+1];

		Vect_Substrate_Graph[src_arc-1].GetArc_List(tab_out);
		Vect_Substrate_Graph[dest_arc-1].GetArc_List(tab_in);

		current_arc = (IloInt) search_common_arc(tab_out, tab_in);
		used_arc_tab[h] = (IloNum) current_arc;

		h++;
	}

	metaShtstPathVect[COUNT_PATH].SetUsed_Arc_Tab(used_arc_tab);

	nb_hops = comp_node - 1;

	metaShtstPathVect[COUNT_PATH].SetNB_Hops((IloInt)nb_hops);
	COUNT_PATH++;

	//----------------------------
	//    Free Used Memory       -
	//----------------------------
	used_arc_tab.end();
	temp_tab.end();
	tab_out.end();
	tab_in.end();

	//cout<<"out add_meta_path"<<endl;
}
//-----------------------------------------------------------------------------------//
//                  		       10  search request                                           //
//-----------------------------------------------------------------------------------//

IloInt SDNInterDCQoS::search_vnp_request(VNP_traffic_tab& traf_vect, IloInt& source, IloInt& destination, IloInt& vnp, IloInt& length_vect)
{
	IloInt exit=0, find=0, j=0, cvnp =0;
	IloInt srce=0, desti=0;

	while ((exit==0)&& (j < length_vect))
	{
		srce= (IloInt) traf_vect[j].getSrcVnode();
		desti= (IloInt) traf_vect[j].getDestVnode();
		cvnp = (IloInt) traf_vect[j].getVnpId();

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

//-----------------------------------------------------------------------------------//
//       					      11 Search an element in a Table                                         //
//-----------------------------------------------------------------------------------//
IloInt SDNInterDCQoS::findElementInVector(IloInt& element, IloNumArray& findInVector,  IloInt& vectLength)

{

	IloInt find=0;

	IloInt h=0;
	IloInt current_elt=0;

	while ((h < vectLength) && ( find ==0))
	{
		current_elt = (IloInt)findInVector[h];
		IloBool find_elt = (current_elt == element);

		if (find_elt)
			find=1;

		h++;

	}

	return  find;
}
//-----------------------------------------------------------------------------------//
//      				        12  Search a virtual node connectivity                                   //
//-----------------------------------------------------------------------------------//

IloInt SDNInterDCQoS::check_node_connected(VNP_traffic_tab& req_vect, IloInt& nb_node, IloInt& vnp_num, IloInt& cnode, IloInt& tab_length)
{
	IloInt find_node=0, csrc=0, cdest=0, cvnp=0;
	IloInt l=0;

	while ((l < tab_length)&&(find_node==0))
	{
		cdest= (IloInt) req_vect[l].getDestVnode();
		csrc= (IloInt) req_vect[l].getSrcVnode();
		cvnp = (IloInt) req_vect[l].getVnpId();

		IloBool test_dest = (cdest == cnode);
		IloBool test_src = (csrc == cnode);
		IloBool test_vnp = (cvnp == vnp_num);

		if (((test_src)&&(test_vnp)) || ((test_dest)&&(test_vnp)))
			find_node=1;

		l++;
	}

	return find_node;
}
//-----------------------------------------------------------------------------------//
//               	           13  search_candidate_location                                //
//-----------------------------------------------------------------------------------//

void  SDNInterDCQoS::search_candidate_location(IloInt& node_id, VN_node_requirement_tab& VNode_Loc_Vect, IloInt& vnp_num, IloNumArray& location_tab, IloInt& length)
{
	IloInt i=0, find_node=0, c_vnode=0, c_vnp_id=0;

	while ((i<length)&&(find_node ==0))
	{
		c_vnode = (IloInt) VNode_Loc_Vect[i].GetVirtual_Node_Id();
		c_vnp_id = (IloInt) VNode_Loc_Vect[i].GetVNP_Id();

		IloBool test_node = ( c_vnode == node_id);
		IloBool test_vnp = ( c_vnp_id == vnp_num);

		if ((test_node)&&(test_vnp))
		{
			VNode_Loc_Vect[i].GetCandidate_Location_Tab(location_tab);
			find_node =1;
		}

		i++;
	}

}
//***************************************************************************************************
//                                   14   check_src_dest_adjanticity                                *
//***************************************************************************************************

IloInt SDNInterDCQoS::check_src_dest_adjanticity(IloInt& srce, IloInt& desti, Substrate_Graph_tab& tab_graph,IloEnv& env_1 )
{

	IloInt length= MAX_SIZE, more_arc_src=0, more_arc_dest=0, h=0, k=0, node_are_adj=0, current_arc_in=0, current_arc_out=0;

	IloNumArray table_link_src(env_1, length);
	arrayZeroInitialize(table_link_src, length);

	tab_graph[(IloInt)(srce-1)].GetArc_List(table_link_src);

	IloNumArray table_link_dest(env_1, length);
	arrayZeroInitialize(table_link_dest, length);

	tab_graph[(IloInt)(desti-1)].GetArc_List(table_link_dest);

	k=0;
	more_arc_src=0;

	while ((k<length)&&(more_arc_src==0)&&(node_are_adj==0))
	{
		current_arc_out = (IloInt) table_link_src[k];

		IloBool non_nul = (current_arc_out !=0);
		if (non_nul)
		{
			h=0;
			more_arc_dest=0;

			while ((h<length) && (more_arc_dest==0) && (node_are_adj==0))
			{
				current_arc_in = (IloInt) table_link_dest[h];
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
//***************************************************************************************************
//                                    15  Search Parent Node Position                                 *
//***************************************************************************************************

IloInt SDNInterDCQoS::count_number_link(IloInt& desti, Substrate_Graph_tab& tab_graph, IloEnv& env_1)
{


	IloInt nb_link=0, j=0, more=0, length= MAX_SIZE;
	IloNumArray table_link(env_1, length);

	arrayZeroInitialize(table_link, length);
	tab_graph[(IloInt)(desti-1)].GetArc_List(table_link);

	while ((j<length)&&( more==0))
	{
		IloInt current_link =  (IloInt) table_link[j];
		IloBool non_nul = (current_link !=0);

		if(non_nul)
		{
			nb_link++;
			more=1;
		}

		j++;

	}// end while

		return nb_link;
}

//**************************************************************************************************
//                                        16  Check #hops in Shortest Path                            *
//***************************************************************************************************

IloInt  SDNInterDCQoS::Check_nb_hops_in_shortest_path(Substrate_Graph_tab& tab_OG,  IloInt& source, IloInt& destination, IloEnv& env1)
{


	IloInt i=0, j=0, l=0, find_src=0, current_node=0, more=0, label=0, valid_node=0, precedent=0, pere=0,  compteur_chemins=0;
	IloInt lab=0, compteur_noeud=0, nbre_node, parent_node=0, last_node=0, nbr_path=0, id_node=1, find_cycle=0, test_cycle=0;
	IloInt length=MAX_SIZE, nb_in_out_link=0, max_paths=0, adjacents_ind=0;
	Vertices_tab    node_arb(env1,GN);

	IloNumArray table_adj(env1, length);
	IloNumArray node_tab(env1, length);

	priority_queue <Trace_vertice, vector<Trace_vertice>, less<vector<Trace_vertice>::value_type> > q;

	//---------------------------
	//  initialisation          -
	//---------------------------

	arrayZeroInitialize(table_adj, length);
	tab_OG[(IloInt)(source-1)].GetNode_Adjacent_Table(table_adj);

	node_arb[compteur_noeud].SetVertice_Id((int)id_node);
	node_arb[compteur_noeud].setCurrent((int)source);
	node_arb[compteur_noeud].setPrevious(0);
	node_arb[compteur_noeud].SetFils_tab(table_adj);

	id_node++;
	compteur_noeud++;

	lab=0;
	more=0 ;
	j=0;
	last_node = source;

	while ((j<length)&&( more==0))
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

		nb_in_out_link = (IloInt) count_number_link(destination,tab_OG, env1);
	adjacents_ind = (IloInt) check_src_dest_adjanticity(source, destination, tab_OG, env1);

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

			if ((pere != source) && (pere != last_node))
				valid_node=1;

			q.pop();
		}
		last_node = pere;

		if (pere == destination)
			nbr_path++;


		node_arb[compteur_noeud].SetVertice_Id((int)id_node);
		node_arb[compteur_noeud].setCurrent((int)pere);
		node_arb[compteur_noeud].setPrevious((int)precedent);

		arrayZeroInitialize(table_adj, length);

		if (pere != destination)
		{

			tab_OG[(IloInt)(pere - 1)].GetNode_Adjacent_Table(table_adj);
			more=0 ;
			j=0;

			while ((j<length)&&( more==0))
			{
				IloInt current_node =  (IloInt) table_adj[j];
				IloBool non_nul = (current_node !=0);

				if(non_nul)
				{
					j++;
					lab = label + 1;
					precedent = id_node;

					if  (current_node != source)
					{
						q.push(Trace_vertice((int)lab, (int)precedent, (int)current_node));

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

		current_node = (IloInt) node_arb[i].getCurrent();
		if (current_node == destination)
		{

			find_src= 0;
			l=i;
			arrayZeroInitialize(node_tab, length);
			nbre_node=0;
			node_tab[nbre_node] = (IloNum)destination;
			nbre_node++;
			find_cycle=0;

			while ((find_src==0)&&(find_cycle==0))
			{
				precedent = (IloInt) node_arb[l].getPrevious();
				search_parent_node_position(node_arb,compteur_noeud ,precedent, l);
				parent_node = (IloInt) node_arb[l].getCurrent();

				if (parent_node == source)
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
				compteur_chemins++;


		} // current node is the destination
		i++;
	}


	//----------------------------
	//    Free Used Memory       -
	//----------------------------
	table_adj.end();


	return nbre_node;

}
