/*
 * TrafficGenerator.cpp
 *
 *  Created on: Feb 6, 2016
 *      Author: openstack
 */

#include "TrafficGenerator.h"


void TrafficGenerator::generateInitTraffic(){
	IloEnv env;
	try
	 {
		// Files being read
		const char*  f1_subTopo		= "DataFiles/init/f1_subTopo.txt";			// init/f1_subTopo.txt
		const char*  f2_linkQoS		= "DataFiles/init/f2_linkQoS.txt";			// init/f2_linkQoS.txt
		const char*  f3_nodeQoS		= "DataFiles/init/f3_nodeQoS.txt";			// init/f3_nodeQoS.txt
		// Files being written
		const char*  f4_vnReqTopo	= "DataFiles/t0/f4_vnReqTopo.txt";			// t0/f4_vnReqTopo.txt
		const char*  f5_subUnitCost	= "DataFiles/t0/f5_subUnitCost.txt";		// t0/f5_subUnitCost.txt
		const char*  f6_vnReqNode	= "DataFiles/t0/f6_vnReqNode.txt";			// t0/f6_vnReqNode.txt
		const char*  outF7_vnReqLink	= "DataFiles/t0/f7_vnReqLink.txt";			// t0/f7_vnReqLink.txt

		IloInt i=0 , j=0, k=0, l=0, h=0, src=0, dest=0, class_QoS=0, find=0;
		IloInt request_id=0, bw=0, hops=0, link=0, vn_node=0, dest_candidate=0, src_candidate=0;

		IloInt NB_VNP_NODE=0, NB_REQUEST=0, NB_NODE=0, NB_LINK=0;
		IloInt NB_LINK_CLASS=0, NB_NODE_CLASS=0, COUNT_PATH=0, NB_POTANTIAL_EMBEDDING_NODES=0, length = MAX_NB_LOCATION;
        IloInt nb_vnp_sd_counter=0, cvnp_nb_node=0, cvnp_nb_link=0, upper_bound=0, is_connected=0, node=0, current_location=0;
		IloNum selected_ppp=0.0, decimal_selected_ppp=0.0;
		IloInt average_path_unit_cost=0, used_node=0, generated_unit_path_cost_part1=0, generated_unit_path_cost_part2=0, nb_hops=0, nb_link_current_vnp=0;

		IloInt virtual_link_class=0, min_path_unit_cost=0, max_path_unit_cost=0, selected_path_unit_cost=0, bid=0;
		IloInt vnp_id=0, virtual_link_id=1, rand_nb_node=0, rand_nb_links=0, link_unit_cost=0, blade_unit_cost=0, comp_vn_node=0, num_candidate_embdedding_nodes=1;
		IloInt embedding_node_location=0, nb_candidate_embdedding_nodes=0, current_period=0;
        IloInt nb_loc=0, exit_src=0, exit_dest=0, node_cpu_unit_cost=0, node_gpu_unit_cost=0, node_ram_unit_cost=0, node_storage_unit_cost=0, selected_src_dest_cost=0, max_src_dest_cost=0, min_src_dest_cost=0;
        IloInt src_cpu_cls=0, dest_cpu_cls=0, length_vect=0, period=0, cpu=0, memory=0, storage=0, blade=0, loc=0, node_cls=0, src_cls=0, dest_cls=0;
        srand((int)time(NULL));

		//-----------------------------------------------------------------------------------------------
	    //                            FILE 1: Reading of Network Substrate Topology               -
	    //-----------------------------------------------------------------------------------------------
		ifstream file1(f1_subTopo);
		if (!file1)
		cerr << "ERROR: could not open file"<< f1_subTopo << "for reading"<< endl;
		file1>> NB_NODE;
		file1>> NB_LINK;
		Substrate_Link_tab Vect_Link(env,NB_LINK);
		for(i=0;i<NB_LINK;i++)
		 {
		   file1>>link>>src>>dest;
		   Vect_Link[i].SetArc_Num((IloInt)link);
		   Vect_Link[i].SetArc_Source((IloInt)src);
		   Vect_Link[i].SetArc_Destination((IloInt)dest);
		 }
	     file1.close();

       //--------------------------------------------------------------------------------------------------------
       //                            FILE 2: Reading Link QoS classes                               -
       //--------------------------------------------------------------------------------------------------------
		 ifstream file2(f2_linkQoS);
		 if (!file2)
		 cerr << "ERROR: could not open file "<< f2_linkQoS << "for reading"<< endl;
		 file2>>NB_LINK_CLASS;
		 Link_QoS_Class_tab  Link_Class_QoS_Vect(env,NB_LINK_CLASS);
		 for(i=0;i<NB_LINK_CLASS;i++)
		  {
		   file2>>class_QoS>>bw>>hops;
		   Link_Class_QoS_Vect[i].SetQoS_Class_Id((IloInt)class_QoS);
		   Link_Class_QoS_Vect[i].SetQoS_Class_Bandwidth((IloInt)bw);
		   Link_Class_QoS_Vect[i].SetQoS_Class_Max_Hops(hops);
		  }
		 file2.close();

	     //--------------------------------------------------------------------------------------------------------
	     //                            FILE 3: Reading Node QoS classes                               -
	     //--------------------------------------------------------------------------------------------------------
		 ifstream file3(f3_nodeQoS);
		 if (!file3)
		  cerr << "ERROR: could not open file "<< f3_nodeQoS << "for reading"<< endl;
		  file3>>NB_NODE_CLASS;
		  Node_QoS_Class_tab  Node_Class_QoS_Vect(env,NB_NODE_CLASS);
		  length_vect = MAX_NB_LOCATION;
		  IloNumArray location_vect(env,length_vect);
		  for(i=0;i<NB_NODE_CLASS;i++)
		  {
		    file3 >> class_QoS >> cpu >> memory >> storage >> blade;

		   arrayZeroInitialize(location_vect, length_vect);
		    for(j=0;j<MAX_NB_LOCATION;j++)
			 {
			  file3>>loc;
			  location_vect[j] = loc;
			 }

		  	 Node_Class_QoS_Vect[i].SetNode_QoS_Class_Id((IloInt)class_QoS);
		     Node_Class_QoS_Vect[i].SetRequired_CPU((IloInt)cpu);
		     Node_Class_QoS_Vect[i].SetNode_Location_Tab(location_vect);
			 Node_Class_QoS_Vect[i].SetRequired_Memory((IloInt)memory);
			 Node_Class_QoS_Vect[i].SetRequired_storage((IloInt)storage);
			 Node_Class_QoS_Vect[i].SetRequired_Blade((IloInt)blade);
		  }
		  file3.close();
		//***************************************		Done Reading Files		****************************************




        //------------------------------------------------------------------------------------------
        //                     Random generation of (#virtual_node, #virtual_link) for each VNP    -
        //------------------------------------------------------------------------------------------

		   IloNumArray     vect_vnp_nb_nodes(env,NB_VNP);
		   IloNumArray     vect_vnp_nb_links(env,NB_VNP);
		   cout<<"loop_2_enterCheck ";
		   for(i=0;i<NB_VNP;i++)
			{
		      //------------------------------------
              // Random Generation of #VN and #VL  -
			  //------------------------------------
                  rand_nb_node = 3 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * NB_MAX_VNODES);
				  if (rand_nb_node < NB_MAX_VNODES)
				  rand_nb_links = (rand_nb_node - 1);
				  else{
					  rand_nb_node=NB_MAX_VNODES;
				  rand_nb_links = (rand_nb_node - 1) + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * NB_MAX_VNODES);
				  }
				  vect_vnp_nb_nodes[i] = (IloNum)rand_nb_node;
				  vect_vnp_nb_links[i] = (IloNum)rand_nb_links;

				  cout<<"rand_nb_node:"<<rand_nb_node<<endl;
				  cout<<"rand_nb_links:"<<rand_nb_links<<endl;

				  NB_VNP_NODE+=rand_nb_node;

				  if (rand_nb_links < rand_nb_node)
				   NB_REQUEST+=rand_nb_node;
				  else
				   NB_REQUEST+=rand_nb_links;

				  cout<<"loopCheck_2 ["<<i<<"] ";
			}



			cout<<"NB_REQUEST:"<<NB_REQUEST<<endl;
			cout<<"NB_VNP_NODE:"<<NB_VNP_NODE<<endl;
			//cin.get();
		   VN_node_requirement_tab  VNode_Location_Vect(env,NB_VNP_NODE);

		  //---------------------------------------------------------------------------------------------------------
		  //                                 Random Generation of VN location                                        -
		  //---------------------------------------------------------------------------------------------------------


 		   IloNumArray    vect_location(env,length);
		   IloNumArray    vect_forbidden_location(env,length);
		   length = MAX_NB_LOCATION;

 		   for(i=0;i<NB_VNP;i++)
			 {

				  vnp_id=i+1;
				  rand_nb_node = (IloInt) vect_vnp_nb_nodes[i];

				  IloNumArray    vect_VNP_node_location(env,length*rand_nb_node);
			      IloInt nbr_elet= length*rand_nb_node;

				  arrayZeroInitialize(vect_VNP_node_location,nbr_elet);
				  h=0;
				  cout<<"debug"<<vect_VNP_node_location[0]<<endl;
		          ////cin.get();
			      for(k=0; k<rand_nb_node;k++)
				   {

						 vn_node = k+1;
 					     arrayZeroInitialize(vect_location,length);
					     nb_loc = 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * MAX_NB_LOCATION);
					     node_cls = 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) *NB_NODE_CLASS);

				         j=0;
						 cout<<"nb: "<<nb_loc<<endl;
					     while(j < nb_loc)
					  	   {
							   embedding_node_location= 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * NB_NODE);
						 	   used_node = (IloInt) findElementInVector(embedding_node_location, vect_VNP_node_location, h);
					                   cout<<"embedding_node_location: "<<embedding_node_location<<endl;

							   arrayZeroInitialize(vect_forbidden_location,length);
							   Node_Class_QoS_Vect[node_cls-1].GetNode_Location_Tab(vect_forbidden_location);

							   //allowed_loc = (IloInt) search_elt_in_table(embedding_node_location, vect_forbidden_location, length);

							   IloBool is_new_location = (used_node == 0);



							   ////cin.get();
							   if ((is_new_location))
								{
								  vect_location[j] = (IloNum) embedding_node_location;
								  vect_VNP_node_location[h] = (IloNum) embedding_node_location;
								  h++;
								  j++;
							    }
 							 }// end while

						   VNode_Location_Vect[comp_vn_node].SetVirtual_Node_Id((IloInt)vn_node);
						   VNode_Location_Vect[comp_vn_node].SetQoS_Class((IloInt)node_cls);
						   VNode_Location_Vect[comp_vn_node].SetVNP_Id((IloInt)vnp_id);
						   VNode_Location_Vect[comp_vn_node].SetCandidate_Location_Tab(vect_location);
						   VNode_Location_Vect[comp_vn_node].SetPeriod((IloInt)current_period);

						  comp_vn_node++;

		           } // end for rand_nb_node


			   }// for NB_VNP

			//------------------------------------------------------------------------------------------
			//                     Random generation of virtual network topology                       -
			//------------------------------------------------------------------------------------------


					VNP_traffic_tab  Request_Vect(env,NB_REQUEST);
					for(j=0;j<NB_VNP;j++)
					 {
						cvnp_nb_node  = (IloInt) vect_vnp_nb_nodes[j];
						cvnp_nb_link = (IloInt) vect_vnp_nb_links[j];
						vnp_id = j+1;

						cout<<"VNP Id:"<<vnp_id<<endl;
						cout<<"cvnp_nb_node:"<<cvnp_nb_node<<endl;
						cout<<"cvnp_nb_link:"<<cvnp_nb_link<<endl;
						//cin.get();

						i=0;
						nb_link_current_vnp=0;
						if (cvnp_nb_link < cvnp_nb_node)
						   upper_bound = cvnp_nb_node;
						else
						   upper_bound = cvnp_nb_link;
						while (i < upper_bound)
 						 {
							  if (i < (cvnp_nb_node -1))
							   {
									  src = i+1;
									  dest = 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * cvnp_nb_node);
							   }
							  else
							   {

								   if (i == cvnp_nb_node-1)
									{
									   node = cvnp_nb_node;
									   is_connected = (IloInt) check_node_connected(Request_Vect, cvnp_nb_node, vnp_id, node, nb_vnp_sd_counter);
									   IloBool  node_not_connected = (is_connected == 0);

									   if (node_not_connected)
										{
											  src = cvnp_nb_node;
											  dest = 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * cvnp_nb_node);
										}
 									   else
										{
            								  src  = 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * cvnp_nb_node);
											  dest = 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * cvnp_nb_node);
										}
									 }
									 else
									  {
            						  	 src  = 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * cvnp_nb_node);
										 dest = 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * cvnp_nb_node);
									   }
									}

									 find = (IloInt) search_vnp_request(Request_Vect, src, dest, vnp_id, nb_vnp_sd_counter);
									  if ((find==0)&& (src!=dest))
 								       {
									     virtual_link_class = 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * NB_LINK_CLASS);

 									     Request_Vect[nb_vnp_sd_counter].setSrcVnode((IloInt)src);
									     Request_Vect[nb_vnp_sd_counter].setDestVnode((IloInt)dest);
									     Request_Vect[nb_vnp_sd_counter].setVlinkId((IloInt) virtual_link_id);
									     Request_Vect[nb_vnp_sd_counter].setVnpId((IloInt)vnp_id);
									     Request_Vect[nb_vnp_sd_counter].setVlinkQosCls((IloInt)virtual_link_class);

									     cout<<endl;
									     cout<<"src:"<<src<<endl;
										 cout<<"dest:"<<dest<<endl;
										 cout<<"virtual link id:"<<virtual_link_id<<endl;
										 nb_link_current_vnp++;

										 nb_vnp_sd_counter++;
										 virtual_link_id++;
										 i++;
										}

								  }// generate randomly vn topology

								   vect_vnp_nb_links[j]= (IloNum) nb_link_current_vnp;

					     }// generate traffic for a vnp


				   //------------------------------------------------------------------------------------------
				   //                     FILE 4: Save VN topology requests                                        -
				   //------------------------------------------------------------------------------------------
    					ofstream file4(f4_vnReqTopo);

						if (!file4)
						  cerr << "ERROR: could not open file `"<< f4_vnReqTopo << "`for writing"<< endl;

						file4<<NB_VNP<<endl;
						for(i=0;i<NB_VNP;i++)
						  {
							vnp_id = i+1;
							rand_nb_node = (IloInt) vect_vnp_nb_nodes[i];
							rand_nb_links = (IloInt) vect_vnp_nb_links[i];

							file4<<vnp_id<<"       "<<rand_nb_node<<"       "<<rand_nb_links<<"        "<<current_period<<endl;
						  }

						file4.close();

				 //---------------------------------------------------------------------
				 //       FILE 5:  Generation of substrate bw unit cost and node cost       -
				 //---------------------------------------------------------------------
					 ofstream file5(f5_subUnitCost);

					 if (!file5)
					   cerr << "ERROR: could not open file "<< f5_subUnitCost<< "for writing"<< endl;

					 IloNumArray     bw_unit_cost_vect(env,NB_LINK);
					 IloNumArray     cpu_unit_cost_vect(env,NB_NODE);
					 IloNumArray     gpu_unit_cost_vect(env,NB_NODE);
					 IloNumArray     storage_unit_cost_vect(env,NB_NODE);
					 IloNumArray     ram_unit_cost_vect(env,NB_NODE);
					 IloNumArray     blade_unit_cost_vect(env,NB_NODE);

					 for(j=0;j<NB_LINK;j++)
					  {
						link_unit_cost = 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * MAX_BW_UNIT_COST);
						bw_unit_cost_vect[j] = (IloNum) link_unit_cost;

						file5<<link_unit_cost<<endl;

						cout<<"BW unit cost of link:"<<j+1<<": "<<link_unit_cost<<endl;
					  }

					  for(j=0;j<NB_NODE;j++)
					  {
						node_cpu_unit_cost = 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * MAX_SUBSTRATE_NODE_COST);
						 cpu_unit_cost_vect[j] = (IloNum) node_cpu_unit_cost;

						file5<<node_cpu_unit_cost<<endl;

						cout<<"CPU unit cost of node:"<<j+1<<": "<<node_cpu_unit_cost<<endl;

					  }
					   for(j=0;j<NB_NODE;j++)
					  {
						node_gpu_unit_cost = 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * MAX_SUBSTRATE_NODE_COST);
						//node_gpu_unit_cost = node_gpu_unit_cost;

						gpu_unit_cost_vect[j] = (IloNum) node_gpu_unit_cost;

						file5<<node_gpu_unit_cost<<endl;


						cout<<"GPU unit cost of node:"<<j+1<<": "<<node_gpu_unit_cost<<endl;

					  }

					    for(j=0;j<NB_NODE;j++)
					  {
						blade_unit_cost = 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * MAX_BLADE_UNIT_COST);


						blade_unit_cost_vect[j] = (IloNum) blade_unit_cost;

						file5<<blade_unit_cost<<endl;
						blade_unit_cost = 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * MAX_BLADE_UNIT_COST);
						cout<<"Blade unit cost of MSPP Blade:"<<j+1<<": "<<blade_unit_cost<<endl;

					  }
					   for(j=0;j<NB_NODE;j++)
					  {
						node_ram_unit_cost = 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * MAX_MEMORY_NODE_COST);
						 ram_unit_cost_vect[j] = (IloNum) node_ram_unit_cost;

						file5<<node_ram_unit_cost<<endl;

						cout<<"RAM unit cost of node:"<<j+1<<": "<<node_ram_unit_cost<<endl;

					  }
					    for(j=0;j<NB_NODE;j++)
					  {
						node_storage_unit_cost = 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * MAX_STORAGE_NODE_COST);
						 storage_unit_cost_vect[j] = (IloNum) node_storage_unit_cost;

						file5<<node_storage_unit_cost<<endl;

						cout<<"Storage unit cost of node:"<<j+1<<": "<<node_storage_unit_cost<<endl;

					  }
					  //cin.get();
					  file5.close();



					 //------------------------------------------------------------------------------------------
	 				 //                             Network definition                                          -
	 				 //------------------------------------------------------------------------------------------


					   Substrate_Graph_tab  Vect_Substrate_Graph(env,NB_NODE);

					   substrate_Graph_creation(Vect_Substrate_Graph, Vect_Link, NB_LINK, NB_NODE, env);
					   adjacency_list_creation(Vect_Substrate_Graph, NB_NODE, env);

					  // substrate_graph_printing(Vect_Substrate_Graph, env, NB_NODE);

					//------------------------------------------------------------------------------------------
	 				//                     Calculation of the all candidates embdedding substrate paths        -
	 				//------------------------------------------------------------------------------------------

					   NB_POTANTIAL_EMBEDDING_NODES = MAX_NB_LOCATION*MAX_NB_LOCATION*NB_REQUEST;

					   Meta_Embedding_Nodes_tab  Potantial_Embedding_Nodes_Vect(env, NB_POTANTIAL_EMBEDDING_NODES);

					   IloNumArray candidate_src_vect(env,MAX_NB_LOCATION);
					   IloNumArray candidate_dest_vect(env,MAX_NB_LOCATION);

					   length =	(IloInt)MAX_NB_LOCATION;

					   for(j=0;j<NB_REQUEST;j++)
					    {
	        						 src = (IloInt) Request_Vect[j].getSrcVnode();
	        						 dest = (IloInt) Request_Vect[j].getDestVnode();
									 vnp_id = (IloInt) Request_Vect[j].getVnpId();
									 virtual_link_class = (IloInt) Request_Vect[j].getVlinkQosCls();
									 virtual_link_id = (IloInt)Request_Vect[j].getVlinkId();

									 hops = (IloInt) Link_Class_QoS_Vect[virtual_link_class-1].GetQoS_Class_Max_Hops();

									 arrayZeroInitialize(candidate_src_vect,length);
	 								 search_candidate_location(src, VNode_Location_Vect, vnp_id, candidate_src_vect,NB_VNP_NODE);

									 arrayZeroInitialize(candidate_dest_vect,length);
									 search_candidate_location(dest, VNode_Location_Vect, vnp_id, candidate_dest_vect,NB_VNP_NODE);


									 //cout<<"virtual_link_id:"<<virtual_link_id<<endl;

									 k=0;
									 exit_src=0;
									 while ((k<MAX_NB_LOCATION)&&(exit_src==0))
									  {
										 src_candidate = (IloInt) candidate_src_vect[k];
                                         IloBool src_not_nul = (src_candidate!=0);

										 if (src_not_nul)
										  {
											  l=0;
											  exit_dest=0;

											  while ((l<MAX_NB_LOCATION)&&(exit_dest ==0))
											   {

												  dest_candidate = (IloInt) candidate_dest_vect[l];
												  IloBool dest_not_nul = (dest_candidate!=0);

												  if (dest_not_nul)
												   {
													 if (src_candidate!=dest_candidate)
													  {
														  nb_hops = (IloInt) Check_nb_hops_in_shortest_path(Vect_Substrate_Graph,  src_candidate, dest_candidate, env);

														  IloBool  respect_Max_hops = (nb_hops <= hops );

														  if (respect_Max_hops)
														   {

                 												Potantial_Embedding_Nodes_Vect[nb_candidate_embdedding_nodes].setCandidSrcSnode((IloInt)src_candidate);
																Potantial_Embedding_Nodes_Vect[nb_candidate_embdedding_nodes].setCandidDestSnode((IloInt)dest_candidate);
																Potantial_Embedding_Nodes_Vect[nb_candidate_embdedding_nodes].setVlinkId((IloInt) virtual_link_id);
																Potantial_Embedding_Nodes_Vect[nb_candidate_embdedding_nodes].setVlinkQosCls(virtual_link_class);
																Potantial_Embedding_Nodes_Vect[nb_candidate_embdedding_nodes].setVnpId((IloInt)vnp_id);
																Potantial_Embedding_Nodes_Vect[nb_candidate_embdedding_nodes].setEmbeddingNodeCombinationId((IloInt)num_candidate_embdedding_nodes);

																nb_candidate_embdedding_nodes++;
																num_candidate_embdedding_nodes++;

															}	// respect max hops

														}// src != dest
													}
												  else
												   exit_dest=1;

												  l++;

											   }// while possible destination node
									       }
									      else
										   exit_src=1;

									     k++;

									 }// while possible source node


								   }// for all request


							  cout<<"nb_candidate_embdedding_nodes:"<<nb_candidate_embdedding_nodes<<endl;

							//------------------------------------------------------------------------------------------
	 						//                                C- Calculation of the H-paths                            -
	 						//------------------------------------------------------------------------------------------


							   Meta_Substrate_Path_tab       Path_Vect(env, nb_candidate_embdedding_nodes*NB_MAX_PATH);

							   for(j=0;j<nb_candidate_embdedding_nodes;j++)
								  {
	        						 src = (IloInt)  Potantial_Embedding_Nodes_Vect[j].getCandidSrcSnode();
	        						 dest = (IloInt) Potantial_Embedding_Nodes_Vect[j].getCandidDestSnode();
	        						 class_QoS = (IloInt) Potantial_Embedding_Nodes_Vect[j].getVlinkQosCls();
									 request_id = (IloInt) Potantial_Embedding_Nodes_Vect[j].getEmbeddingNodeCombinationId();
									 virtual_link_id = (IloInt) Potantial_Embedding_Nodes_Vect[j].getVlinkId();
	        						 vnp_id = (IloInt) Potantial_Embedding_Nodes_Vect[j].getVnpId();

	        						 hops = (IloInt) Link_Class_QoS_Vect[class_QoS-1].GetQoS_Class_Max_Hops();


	        						 H_paths(Vect_Substrate_Graph, Path_Vect, src, dest, hops, request_id, vnp_id, virtual_link_id, COUNT_PATH, env);


								  }

							   cout<<"COUNT_PATH:"<<COUNT_PATH<<endl;

							   //printing_meta_path(Path_Vect, COUNT_PATH, env);

					          cout<<"test"<<endl;

							 //------------------------------------------------------------------------------------------
	 						 //                                D- Bid generation                                        -
	 						 //------------------------------------------------------------------------------------------

							  srand((int)time(NULL));

	 						 for(k=0;k<NB_REQUEST;k++)
							   {
									 class_QoS = (IloInt) Request_Vect[k].getVlinkQosCls();
									 virtual_link_id = (IloInt) Request_Vect[k].getVlinkId();

									 src = (IloInt) Request_Vect[k].getSrcVnode();
	        						 dest = (IloInt) Request_Vect[k].getDestVnode();
									 vnp_id = (IloInt) Request_Vect[k].getVnpId();

									 search_cpu_requirement_src_dest_nodes(src, dest, vnp_id, VNode_Location_Vect, Node_Class_QoS_Vect, src_cls, dest_cls);

									 bw = (IloInt) Link_Class_QoS_Vect[class_QoS-1].GetQoS_Class_Bandwidth();

									 src_cpu_cls = (IloInt) Node_Class_QoS_Vect[src_cls-1].getVnodeCpuReq();
									 dest_cpu_cls = (IloInt) Node_Class_QoS_Vect[dest_cls-1].getVnodeCpuReq();

									 search_min_path_unit_cost(Path_Vect, COUNT_PATH, virtual_link_id,vnp_id , bw_unit_cost_vect, cpu_unit_cost_vect, bw,src_cpu_cls, dest_cpu_cls, min_path_unit_cost, min_src_dest_cost, env);
									 search_max_path_unit_cost(Path_Vect, COUNT_PATH, virtual_link_id, vnp_id, bw_unit_cost_vect, cpu_unit_cost_vect, bw, src_cpu_cls, dest_cpu_cls, max_path_unit_cost, max_src_dest_cost, env);

									 average_path_unit_cost = (IloInt)((max_path_unit_cost + min_path_unit_cost)/2);

									 for(j=0;j<10;j++)
									  generated_unit_path_cost_part1 = min_path_unit_cost + 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * (average_path_unit_cost - min_path_unit_cost));

									 for(j=0;j<10;j++)
									  generated_unit_path_cost_part2 = average_path_unit_cost + 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * (max_path_unit_cost - average_path_unit_cost));

									 selected_path_unit_cost = (IloInt)(alpha*generated_unit_path_cost_part1 + beta*generated_unit_path_cost_part2);

									 decimal_selected_ppp =(IloNum) ( decim_ppp_min+(IloInt)((double)rand() / ((double)RAND_MAX + 1) * (decim_ppp_max- decim_ppp_min) ));

									 selected_ppp = (IloNum) (decimal_selected_ppp/10.0);

									 if (min_src_dest_cost < max_src_dest_cost)
									    selected_src_dest_cost =  min_src_dest_cost + 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * (max_src_dest_cost - min_src_dest_cost));
									 else
                                        selected_src_dest_cost =  max_src_dest_cost + 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * (min_src_dest_cost - max_src_dest_cost));

									 bid = (IloInt)((selected_src_dest_cost + bw*selected_path_unit_cost)*(1 + selected_ppp));

									 Request_Vect[k].SetBid((IloInt)bid);

									 cout<<endl;

									 cout<<"virtual_link_id:"<<k+1<<endl;

									 cout<<"QoS_class:"<<class_QoS<<endl;
									 cout<<"bw:"<<bw<<endl;

									 cout<<"min_src_dest_cost:"<<min_src_dest_cost<<endl;
									 cout<<"max_src_dest_cost:"<<max_src_dest_cost<<endl;
                                     cout<<"selected_src_dest_cost:"<<selected_src_dest_cost<<endl;

									 cout<<"min_path_unit_cost:"<<min_path_unit_cost<<endl;
									 cout<<"max_path_unit_cost:"<<max_path_unit_cost<<endl;
									 cout<<"selected_bw_unit_cost:"<<selected_path_unit_cost<<endl;

									 cout<<"selected_ppp:"<<selected_ppp<<endl;
									 cout<<"request_bid:"<<bid<<endl;

							  }// boucle for requests


					//------------------------------------------------------------------------------------------
					//				    FILE 6: Save of potantial embedding location of Virtual Nodes	               -
					//------------------------------------------------------------------------------------------
    						ofstream file6(f6_vnReqNode);

							if (!file6)
							  cerr << "ERROR: could not open file `"<< f6_vnReqNode<< "`for writing"<< endl;

							file6<<comp_vn_node<<endl;

							length = MAX_NB_LOCATION;

							for (i=0;i<comp_vn_node;i++)
							 {
								  arrayZeroInitialize(vect_location,length);

								  vn_node = (IloInt)VNode_Location_Vect[i].GetVirtual_Node_Id();
								  node_cls = (IloInt)VNode_Location_Vect[i].GetQoS_Class();
								  vnp_id = (IloInt) VNode_Location_Vect[i].GetVNP_Id();
                                  period = (IloInt) VNode_Location_Vect[i].GetPeriod();

								  VNode_Location_Vect[i].GetCandidate_Location_Tab(vect_location);

								  file6<<vn_node<<"       "<<node_cls<<"         "<<vnp_id<<"     "<<period<<endl;

                                  for (j=0;j<MAX_NB_LOCATION;j++)
								  {
                                    current_location = (IloInt)vect_location[j];

								    file6<<current_location<<"    ";
								  }
								   file6<<endl;

							 }

							file6.close();

					//------------------------------------------------------------------------------------------
					//                     FILE 7: Save the traffic matrix into file: traffic.txt                       -
					//------------------------------------------------------------------------------------------
    						ofstream file7(outF7_vnReqLink);

							if (!file7)
							  cerr << "ERROR: could not open file `"<< outF7_vnReqLink << "`for writing"<< endl;

                           file7<<0<<endl;
                           file7<<NB_REQUEST<<endl;
						   file7<<0<<endl;
						   file7<<0<<endl;

							for (i=0;i<NB_REQUEST;i++)
							   {
								  src = (IloInt) Request_Vect[i].getSrcVnode();
								  dest = (IloInt) Request_Vect[i].getDestVnode();
								  virtual_link_id = (IloInt) Request_Vect[i].getVlinkId();
								  class_QoS = (IloInt) Request_Vect[i].getVlinkQosCls();
								  bid = (IloInt) Request_Vect[i].GetBid();
								  vnp_id = (IloInt) Request_Vect[i].getVnpId();

								  file7 <<src<<"         "<<dest<<"         "<<virtual_link_id<<"        "<<class_QoS<<"       "<<bid<<"       "<<vnp_id<<"     "<<current_period<<endl;
							   }

							file7.close();

	}

   catch (IloException& e)
     {
		  cerr << "ERROR: " << e.getMessage()<< endl;
	 }

   env.end();
}



