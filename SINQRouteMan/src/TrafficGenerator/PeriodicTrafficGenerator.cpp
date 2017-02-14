/*
 * PeriodicTrafficGenerator.cpp
 *
 *  Created on: Feb 25, 2016
 *      Author: openstack
 */

#include "TrafficGenerator.h"
#include <sstream>


//------------------------------------------------------------------------------------------------------------------
//                     Program Beginning                                                                           -
//------------------------------------------------------------------------------------------------------------------
void TrafficGenerator::generatePeriodicTraffic(int currTslot){

	int prevTslot = currTslot-1;
	// Files being read
	const char* f1_subTopo="DataFiles/init/f1_subTopo.txt";					//lp_us_metro20_topology.txt								// init/f1_subTopo.txt
	const char* f2_linkQoS="DataFiles/init/f2_linkQoS.txt";					//link_qos_class.txt								// init/f2_linkQoS.txt
	const char* f3_nodeQoS="DataFiles/init/f3_nodeQoS.txt";					//node_qos_class.txt								// init/f3_nodeQoS.txt

	//char prv_f9_ph1AcceptedVlinks[50];
	//snprintf(prv_f9_ph1AcceptedVlinks, sizeof(char) * 50, "DataFiles/t%i/f9_ph1AcceptedVlinks.txt", prevTslot);	//f9_ph1AcceptedVlinks.txt

	// * Verify whether the periodicTrafficGenerator require f9_ph1AcceptedVlinks.txt or f12_ph2AcceptedVlinks.txt
	char prv_f12_ph2AcceptedVlinks[50];
	snprintf(prv_f12_ph2AcceptedVlinks, sizeof(char) * 50, "DataFiles/t%i/f12_ph2AcceptedVlinks.txt", prevTslot);		// currTslot/f12_ph2AcceptedVlinks.txt
	//char f17_ctrlUpdatedNalocs[50];
	//snprintf(f17_ctrlUpdatedNalocs, sizeof(char) * 50, "DataFiles/t%i/f17_ctrlUpdatedNalocs.txt", prevTslot);		// currTslot/f12_ph2AcceptedVlinks.txt

	// Files being written
	char f4_vnReqTopo[50];
	snprintf(f4_vnReqTopo, sizeof(char) * 50, "DataFiles/t%i/f4_vnReqTopo.txt", currTslot);					// t1/f4_vnReqTopo.txt
	char f5_subUnitCost[50];
	snprintf(f5_subUnitCost, sizeof(char) * 50, "DataFiles/t%i/f5_subUnitCost.txt", currTslot);				// t1/f5_subUnitCost.txt
	char f6_vnReqNode[50];
	snprintf(f6_vnReqNode, sizeof(char) * 50, "DataFiles/t%i/f6_vnReqNode.txt", currTslot);					// t1/f6_vnReqNode.txt
	char f7_vnReqLink[50];
	snprintf(f7_vnReqLink, sizeof(char) * 50, "DataFiles/t%i/f7_vnReqLink.txt", currTslot);					// t1/f7_vnReqLink.txt


	IloEnv env;

		try
		 {

			IloInt i=0 , j=0, k=0,  h=0, src=0, dest=0, class_QoS=0, find=0, nb_loc=0;
			IloInt request_id=0, bw=0, hops=0, link=0, vn_node=0, dest_candidate=0, src_candidate=0;

			IloInt NB_VNP_NODE=0, NB_REQUEST=0, NB_NODE=0, NB_LINK=0;
			IloInt NB_LINK_CLASS=0, NB_NODE_CLASS=0, COUNT_PATH=0, NB_POTANTIAL_EMBEDDING_NODES=0, length = MAX_NB_LOCATION;
	        IloInt nb_vnp_sd_counter=0, cvnp_nb_node=0, cvnp_nb_link=0, upper_bound=0, is_connected=0, node=0, current_location=0;
			IloNum selected_ppp=0.0, decimal_selected_ppp=0.0;
			IloInt average_path_unit_cost=0,  generated_unit_path_cost_part1=0, generated_unit_path_cost_part2=0, nb_hops=0, nb_link_current_vnp=0;

			IloInt virtual_link_class=0, min_path_unit_cost=0, max_path_unit_cost=0, selected_path_unit_cost=0, bid=0;
			IloInt vnp_id=0, virtual_link_id=1, rand_nb_node=0, rand_nb_links=0, comp_vn_node=0, num_candidate_embdedding_nodes=1;
			IloInt embedding_node_location=0, nb_candidate_embdedding_nodes=0;

			IloInt period=0, nb_dropped_vnp_requests=0, nb_added_vnp_requests=0, current_number=0, num_demand=0, found=0;

			IloInt link_unit_cost=0, node_cpu_unit_cost=0, node_gpu_unit_cost=0, node_ram_unit_cost=0, node_storage_unit_cost=0, node_blade_unit_cost=0;

			IloInt previous_period=0, NB_PREVIOUS_REQUEST=0, NB_ADD_REQUEST=0, NB_RESERVED_REQUEST=0;

			IloInt exit_src=0, exit_dest=0, current_period=0, selected_src_dest_cost=0, max_src_dest_cost=0, min_src_dest_cost=0;
	        IloInt src_cpu_cls=0, dest_cpu_cls=0, length_vect=0, cpu=0, gpu=0, memory=0, storage=0, loc=0, node_cls=0, src_cls=0, dest_cls=0, blades=0;
	        //IloInt nb_period=0, Unit_cost=0, nb_tot_vnp_requests=0, nb_previous_vnp_requests=0, current_nb_vnp_requests=0;
			IloInt 	used_node=0;

			//IloInt allowed_loc=0;

			srand((int)time(NULL));

			//----------------------------------------------------------------------------------
		    //                             Reading of Network Substrate Topology               -
		    //----------------------------------------------------------------------------------
			ifstream file1(f1_subTopo);

			if (!file1)
			cerr << "ERROR: could not open file"<< f1_subTopo << "for reading"<< endl;

			file1>> NB_NODE;
			file1>> NB_LINK;

			SubLinksAryType Vect_Link(env,NB_LINK);

			for(i=0;i<NB_LINK;i++)
			 {
			   file1>>link>>src>>dest;

			   Vect_Link[i].setSlinkId((IloInt)link);
			   Vect_Link[i].setSrcSnode((IloInt)src);
			   Vect_Link[i].setDstSnode((IloInt)dest);

			 }

		     file1.close();

	       //-------------------------------------------------------------------------------------------------------
	       //                            Reading Link QoS classes                                -
	       //-------------------------------------------------------------------------------------------------------
			 ifstream file2(f2_linkQoS);

			 if (!file2)
			  cerr << "ERROR: could not open file "<< f2_linkQoS << "for reading"<< endl;

			 file2>>NB_LINK_CLASS;

			 LinkQosClsAryType  Link_Class_QoS_Vect(env,NB_LINK_CLASS);

			 for(i=0;i<NB_LINK_CLASS;i++)
			  {
			   file2>>class_QoS>>bw>>hops;

			   Link_Class_QoS_Vect[i].SetQoS_Class_Id((IloInt)class_QoS);
			   Link_Class_QoS_Vect[i].SetQoS_Class_Bandwidth((IloInt)bw);
			   Link_Class_QoS_Vect[i].SetQoS_Class_Max_Hops(hops);
			  }

			 file2.close();
		      //--------------------------------------------------------------------------------------------------------
		      //                            Reading Node QoS classes                                -
		      //-------------------------------------------------------------------------------------------------------
			 ifstream file3(f3_nodeQoS);

			 if (!file3)
			  cerr << "ERROR: could not open file "<< f3_nodeQoS << "for reading"<< endl;

			  file3>>NB_NODE_CLASS;

			  NodeQosClsAryType  Node_Class_QoS_Vect(env,NB_NODE_CLASS);

			  length_vect = MAX_NB_LOCATION;

			  IloNumArray location_vect(env,length_vect);

			  for(i=0;i<NB_NODE_CLASS;i++)
			  {
			     file3>>class_QoS>>cpu>>gpu>>memory>>storage>>blades;

	            arrayZeroInitialize(location_vect, length_vect);

			    for(j=0;j<MAX_NB_LOCATION;j++)
				 {
				  file3>>loc;
				  location_vect[j] = (IloNum) loc;
				 }

			  	 Node_Class_QoS_Vect[i].SetNode_QoS_Class_Id((IloInt)class_QoS);
			     Node_Class_QoS_Vect[i].SetRequired_CPU((IloInt)cpu);
				 Node_Class_QoS_Vect[i].SetRequired_GPU((IloInt)gpu);
			     Node_Class_QoS_Vect[i].SetNode_Location_Tab(location_vect);
				 Node_Class_QoS_Vect[i].SetRequired_Memory((IloInt)memory);
				 Node_Class_QoS_Vect[i].SetRequired_storage((IloInt)storage);
				 Node_Class_QoS_Vect[i].SetRequired_Blade((IloInt)blades);

			  }

			  file3.close();

	         //--------------------------------------------------------------------------------------------------------
		 	 //							Reading of previous period traffic								              -
		 	 //--------------------------------------------------------------------------------------------------------
	    	   ifstream prv_file12(prv_f12_ph2AcceptedVlinks);				// This reads wrong file. f12_ph2AcceptedVlinks must be read instead

			   if (!prv_file12)
				  cerr << "ERROR: could not open file `"<< prv_f12_ph2AcceptedVlinks << "`for reading"<< endl;

			   IloInt NB_PREVIOUS_ADD=0, NB_PREVIOUS_RESERVED=0;
			   cout<<"Reading from file: f9_ph1AcceptedVlinks"<<endl;
			   prv_file12>>previous_period;
			   prv_file12>>NB_PREVIOUS_REQUEST;
			   prv_file12>>NB_PREVIOUS_RESERVED;
	   		   prv_file12>>NB_PREVIOUS_ADD;

			   VlinkReqAryType  Previous_Request_Vect(env, NB_PREVIOUS_REQUEST);

			   current_period = previous_period+1;

			   cout<<previous_period<<endl;
			   cout<<NB_PREVIOUS_REQUEST<<endl;
			   cout<<NB_PREVIOUS_RESERVED<<endl;
			   cout<<NB_PREVIOUS_ADD<<endl;

			   for (i=0;i<NB_PREVIOUS_REQUEST;i++)
				{
					  prv_file12>>src>>dest>>virtual_link_id>>class_QoS>>bid>>vnp_id>>period;

					  cout<<src<<"\t"<<dest<<"\t\t"<<virtual_link_id<<"\t\t"<<class_QoS<<"\t"<<bid<<"\t"<<vnp_id<<"\t"<<period<<endl;

					  Previous_Request_Vect[i].setSrcVnode((IloInt)src);//
					  Previous_Request_Vect[i].setDestVnode((IloInt)dest);
					  Previous_Request_Vect[i].setVlinkId((IloInt) virtual_link_id);
					  Previous_Request_Vect[i].setVlinkQosCls((IloInt)class_QoS);
					  Previous_Request_Vect[i].setVnpId((IloInt)vnp_id);
					  Previous_Request_Vect[i].SetBid((IloInt)bid);
					  Previous_Request_Vect[i].SetPeriod((IloInt)period);

				  }

				 prv_file12.close();

	    //----------------------------------------------------------------------------------------
		//		  				Generation of dropped traffic			                         -
		//----------------------------------------------------------------------------------------

	          srand(time(NULL));

		      for( i = 0; i < 100000; i++ )
	          current_number+= rand();

	          nb_dropped_vnp_requests = DROP_LOWER_BOUND + (int)((double)rand()/((double)RAND_MAX + 1) * DROP_UPPER_BOUND);

			  cout<<"nb_dropped_requests:"<<nb_dropped_vnp_requests<<endl;

			  IloNumArray   Dropped_VNP_Request_Vect(env,nb_dropped_vnp_requests);
			  arrayZeroInitialize(Dropped_VNP_Request_Vect, nb_dropped_vnp_requests);

			  h=0;

			  while (h < nb_dropped_vnp_requests)
			   {
					  num_demand = 1 + (int)((double)rand() / ((double)RAND_MAX + 1) * NB_VNP);

					  find=0;
					  find = (IloInt) findElementInVector(num_demand,Dropped_VNP_Request_Vect,h);

					  if (find==0)
					   {
						 Dropped_VNP_Request_Vect[h] = (IloNum) num_demand ;
					  	 h++;
						 cout<<"num dropped VN:"<<num_demand<<endl;
					   }
			    }

		//----------------------------------------------------------------------------------------
		// 				Calculation of active old requests in current period		             -
		//----------------------------------------------------------------------------------------

	     VlinkReqAryType  Reserved_Request_Vect(env, NB_PREVIOUS_REQUEST);

	     for(i=0;i<NB_PREVIOUS_REQUEST;i++)
	      {
		     vnp_id = (IloInt) Previous_Request_Vect[i].getVnpId();

		     found = (IloInt) findElementInVector(vnp_id, Dropped_VNP_Request_Vect, nb_dropped_vnp_requests);
		     // If vnpId is not found in Dropped_VNP_Request_Vect, add the VNP to Reserved_Request_Vect
		     if (found == 0)
		      {
			     src = (IloInt) Previous_Request_Vect[i].getSrcVnode();
				 dest = (IloInt) Previous_Request_Vect[i].getDestVnode();
				 virtual_link_id = (IloInt) Previous_Request_Vect[i].getVlinkId();
				 class_QoS = (IloInt) Previous_Request_Vect[i].getVlinkQosCls();
				 bid = (IloInt) Previous_Request_Vect[i].getBid();
	             period = (IloInt) Previous_Request_Vect[i].getPeriod();

	             //cout<<src<<"\t"<<dest<<"\t\t"<<virtual_link_id<<"\t\t"<<class_QoS<<"\t"<<bid<<"\t"<<vnp_id<<"\t"<<period<<endl;

			     Reserved_Request_Vect[NB_RESERVED_REQUEST].setSrcVnode(src);
				 Reserved_Request_Vect[NB_RESERVED_REQUEST].setDestVnode(dest);
				 Reserved_Request_Vect[NB_RESERVED_REQUEST].setVlinkQosCls(class_QoS);
	             Reserved_Request_Vect[NB_RESERVED_REQUEST].setVlinkId(virtual_link_id);
				 Reserved_Request_Vect[NB_RESERVED_REQUEST].setVnpId(vnp_id);
				 Reserved_Request_Vect[NB_RESERVED_REQUEST].SetBid(bid);
				 Reserved_Request_Vect[NB_RESERVED_REQUEST].SetPeriod(period);

	     	     NB_RESERVED_REQUEST++;
		      }
		     else
		      {
			     cout<<"Dropped request num:"<<i+1<<endl;
		         cout<<"src:"<< Previous_Request_Vect[i].getSrcVnode()<<endl;
			     cout<<"dest:"<<Previous_Request_Vect[i].getDestVnode()<<endl;
			     cout<<"class_QoS:"<<Previous_Request_Vect[i].getVlinkQosCls()<<endl;
				 cout<<"vpn_id:"<<Previous_Request_Vect[i].getVnpId()<<endl;
			  }

		  }// end for


		 //------------------------------------------------------------------------------------------
	     //                  Random generation of new traffic (#virtual_node, #virtual_link)      -
	     //------------------------------------------------------------------------------------------

		//----------------------------------------------------------------------------------------
		//		  				Generation of added traffic			                             -
		//----------------------------------------------------------------------------------------

	          srand(time(NULL));

		      for( i = 0; i < 100000; i++ )
	          current_number+= rand();

	          nb_added_vnp_requests = DROP_LOWER_BOUND + (int)((double)rand()/((double)RAND_MAX + 1) * DROP_UPPER_BOUND);

			  cout<<"nb_added_vnp_requests:"<<nb_added_vnp_requests<<endl;


			 IloNumArray     vect_vnp_nb_nodes(env,nb_added_vnp_requests);
			 IloNumArray     vect_vnp_nb_links(env,nb_added_vnp_requests);

			 for(i=0;i<nb_added_vnp_requests;i++)
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
	                NB_ADD_REQUEST+=rand_nb_node;
				  else
	                NB_ADD_REQUEST+=rand_nb_links;

			   }



				cout<<"NB_ADD_REQUEST:"<<NB_ADD_REQUEST<<endl;
				cout<<"NB_VNP_NODE:"<<NB_VNP_NODE<<endl;

			    VnodeReqAryType  VNode_Location_Vect(env,NB_VNP_NODE);

			  //---------------------------------------------------------------------------------------------------------
			  //                                 Random Generation of VN location                                        -
			  //---------------------------------------------------------------------------------------------------------

	 		   IloNumArray    vect_location(env,length);
			   IloNumArray    vect_forbidden_location(env,length);
			   length = MAX_NB_LOCATION;

	 		   for(i=0;i<nb_added_vnp_requests;i++)
				 {
					  vnp_id=i+1;
					  rand_nb_node = (IloInt) vect_vnp_nb_nodes[i];
	                  IloInt nbr_elet= length*rand_nb_node;
					  IloNumArray    vect_VNP_node_location(env,nbr_elet);


					  arrayZeroInitialize(vect_VNP_node_location,nbr_elet);
					  h=0;
					  for(k=0; k<rand_nb_node;k++)
					    {
						   vn_node = k+1;
	 					   arrayZeroInitialize(vect_location,length);
						   nb_loc = 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * MAX_NB_LOCATION);
						   node_cls = 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) *NB_NODE_CLASS);

					       j=0;
						   while(j < nb_loc)
							{
								   embedding_node_location= 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * NB_NODE);

								   used_node = (IloInt) findElementInVector(embedding_node_location, vect_VNP_node_location, h);

								   arrayZeroInitialize(vect_forbidden_location,length);
							       Node_Class_QoS_Vect[node_cls-1].GetNode_Location_Tab(vect_forbidden_location);

								   //allowed_loc = (IloInt) search_elt_in_table(embedding_node_location, vect_forbidden_location, length);

								   IloBool is_new_location = (used_node == 0);


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

			     }// end if NB_VNP

				//------------------------------------------------------------------------------------------
				//                     Random generation of virtual network topology                       -
				//------------------------------------------------------------------------------------------


					VlinkReqAryType  Add_Request_Vect(env,NB_ADD_REQUEST);
					virtual_link_id=1;

					for(j=0;j<nb_added_vnp_requests;j++)
					 {
						cvnp_nb_node  = (IloInt) vect_vnp_nb_nodes[j];
						cvnp_nb_link = (IloInt) vect_vnp_nb_links[j];
						vnp_id = j+1;

						cout<<"VNP Id:"<<vnp_id<<endl;
						cout<<"cvnp_nb_node:"<<cvnp_nb_node<<endl;
						cout<<"cvnp_nb_link:"<<cvnp_nb_link<<endl;

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
										   is_connected = (IloInt) check_node_connected(Add_Request_Vect, cvnp_nb_node, vnp_id, node, nb_vnp_sd_counter);
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

										}// end else

								   }// end else

								  find = (IloInt) search_vnp_request(Add_Request_Vect, src, dest, vnp_id, nb_vnp_sd_counter);

								  if ((find==0)&& (src!=dest))
								   {
										  virtual_link_class = 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * NB_LINK_CLASS);

	 									  Add_Request_Vect[nb_vnp_sd_counter].setSrcVnode((IloInt)src);
										  Add_Request_Vect[nb_vnp_sd_counter].setDestVnode((IloInt)dest);
										  Add_Request_Vect[nb_vnp_sd_counter].setVlinkId((IloInt) virtual_link_id);
										  Add_Request_Vect[nb_vnp_sd_counter].setVnpId((IloInt)vnp_id);
										  Add_Request_Vect[nb_vnp_sd_counter].setVlinkQosCls((IloInt)virtual_link_class);
										  Add_Request_Vect[nb_vnp_sd_counter].SetPeriod((IloInt)current_period);

										  cout<<endl;
										  cout<<"src:"<<src<<endl;
										  cout<<"dest:"<<dest<<endl;
										  cout<<"virtual link id:"<<virtual_link_id<<endl;
										  nb_link_current_vnp++;

										  nb_vnp_sd_counter++;
										  virtual_link_id++;
										  i++;

									 }// end if

							  }// end while generate randomly vn topology

	                           vect_vnp_nb_links[j]= (IloNum) nb_link_current_vnp;

					 }// generate traffic for a vnp



	                //------------------------------------------------------------------------------------------
					//                     save of current VN topology requests                                -
					//------------------------------------------------------------------------------------------
	    				   ofstream file4(f4_vnReqTopo);

							if (!file4)
							  cerr << "ERROR: could not open file `"<< f4_vnReqTopo << "`for reading"<< endl;

							file4<<nb_added_vnp_requests<<endl;

							for(i=0;i<nb_added_vnp_requests;i++)
							  {
								vnp_id = i+1;
								rand_nb_node = (IloInt) vect_vnp_nb_nodes[i];
								rand_nb_links = (IloInt) vect_vnp_nb_links[i];

								file4<<vnp_id<<"       "<<rand_nb_node<<"       "<<rand_nb_links<<"      "<<current_period<<endl;

							  }

							file4.close();


	        //********************************************************************************************************
		 	//                      Calculation of the link bandwidth and node cpu unit cost                         *
		 	//********************************************************************************************************

	           IloNumArray  used_bw_vect(env,NB_LINK);
	           arrayZeroInitialize(used_bw_vect,NB_LINK);

			   IloNumArray  bw_unit_cost_vect(env,NB_LINK);
	           arrayZeroInitialize(bw_unit_cost_vect,NB_LINK);

			   RES_RANGE_COST_Tab BW_RANGE_COST_Vect(env,NB_LINK);

			   IloNumArray  used_cpu_vect(env,NB_NODE);
	           arrayZeroInitialize(used_cpu_vect,NB_NODE);

			   IloNumArray  cpu_unit_cost_vect(env,NB_NODE);
	           arrayZeroInitialize(cpu_unit_cost_vect,NB_NODE);

			   RES_RANGE_COST_Tab CPU_RANGE_COST_Vect(env,NB_NODE);

			   IloNumArray  used_gpu_vect(env,NB_NODE);
	           arrayZeroInitialize(used_gpu_vect,NB_NODE);

			   IloNumArray  gpu_unit_cost_vect(env,NB_NODE);
	           arrayZeroInitialize(gpu_unit_cost_vect,NB_NODE);

			   RES_RANGE_COST_Tab GPU_RANGE_COST_Vect(env,NB_NODE);

			   IloNumArray  used_storage_vect(env,NB_NODE);
	           arrayZeroInitialize(used_storage_vect,NB_NODE);

			   IloNumArray     storage_unit_cost_vect(env,NB_NODE);
			   arrayZeroInitialize(storage_unit_cost_vect,NB_NODE);

			   RES_RANGE_COST_Tab STORAGE_RANGE_COST_Vect(env,NB_NODE);

			   IloNumArray  used_blades_vect(env,NB_NODE);
	           arrayZeroInitialize(used_blades_vect,NB_NODE);

			   IloNumArray     blades_unit_cost_vect(env,NB_NODE);
			   arrayZeroInitialize(blades_unit_cost_vect,NB_NODE);

			   RES_RANGE_COST_Tab BLADES_RANGE_COST_Vect(env,NB_NODE);


			   IloNumArray  used_ram_vect(env,NB_NODE);
	           arrayZeroInitialize(used_ram_vect,NB_NODE);

			   IloNumArray     ram_unit_cost_vect(env,NB_NODE);
			   arrayZeroInitialize(ram_unit_cost_vect,NB_NODE);

			   RES_RANGE_COST_Tab RAM_RANGE_COST_Vect(env,NB_NODE);



		       //--------------------------------------------------------------------------------------------
		 	   //  a- Reading of the history bw usage of each link and cpu, ram, storage usage of each node -
		 	   //--------------------------------------------------------------------------------------------
			   /* ifstream file7(filename7);

			    if (!file7)
			     cerr << "ERROR: could not open file "<< filename7 << "for reading"<< endl;

				file7>>file_updated;
				file7>>previous_period;

			    for(j=0;j<NB_LINK;j++)
			     {
				   file7>>bw;
				   used_bw_vect[j] = (IloNum) bw;
			     }

				 for(j=0;j<NB_NODE;j++)
			     {
				   file7>>cpu;
				   used_cpu_vect[j] = (IloNum) cpu;
			     }

				 for(j=0;j<NB_NODE;j++)
			     {
				   file7>>gpu;
				   used_gpu_vect[j] = (IloNum) gpu;
			     }

				  for(j=0;j<NB_NODE;j++)
			     {
				   file7>>memory;
				   used_ram_vect[j] = (IloNum) memory;
			     }

				  for(j=0;j<NB_NODE;j++)
			     {
				   file7>>storage;
				   used_storage_vect[j] = (IloNum) storage;
			     }
				  for(j=0;j<NB_NODE;j++)
			     {
				   file7>>blades;
				   used_blades_vect[j] = (IloNum) blades;
			     }
				file7.close();
				*/
				//------------------------------------------------
		 	    //  b- Read of the bw/cpu unit cost curve        -
		 	    //------------------------------------------------

				/*const char*  filename8="C:/ILOG/CPLEX121/abdallah_work/data/bw_cpu_unit_cost_curve.txt";
			    ifstream file8(filename8);

			    if (!file8)
			     cerr << "ERROR: could not open file "<< filename8 << "for reading"<< endl;

				file8>>NB_BW_RANGE;

				for(i=0;i<NB_BW_RANGE;i++)
			     {
					 file8>>LB_Range>>UB_Range>>Unit_Cost;

					 BW_RANGE_COST_Vect[i].SetLBR((IloInt)LB_Range);
	                 BW_RANGE_COST_Vect[i].SetUBR((IloInt)UB_Range);
					 BW_RANGE_COST_Vect[i].SetUNIT_COST((IloInt)Unit_Cost);

				 }

				 file8>>NB_CPU_RANGE;

				 for(i=0;i<NB_CPU_RANGE;i++)
			     {
					 file8>>LB_Range>>UB_Range>>Unit_Cost;

					 CPU_RANGE_COST_Vect[i].SetLBR((IloInt)LB_Range);
	                 CPU_RANGE_COST_Vect[i].SetUBR((IloInt)UB_Range);
					 CPU_RANGE_COST_Vect[i].SetUNIT_COST((IloInt)Unit_Cost);

				 }
				 file8.close();*/

				 //--------------------------------------------------------
		 	     //   Calculation of link bw unit cost based on history   -
		 	     //--------------------------------------------------------


				 //nb_period = previous_period+1;

				 /*calculate_res_unit_cost(used_bw_vect, bw_unit_cost_vect, BW_RANGE_COST_Vect, NB_LINK, nb_period);

	             calculate_res_unit_cost(used_cpu_vect, cpu_unit_cost_vect, CPU_RANGE_COST_Vect, NB_NODE, nb_period);*/

	             //--------------------------------------------------------------------------------
				 //  c- Save of substrate bw unit cost and node cost				             -
				 //--------------------------------------------------------------------------------
						 ofstream file5(f5_subUnitCost);



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
							node_gpu_unit_cost = 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * MAX_SUBSTRATE_NODE_GPU_COST);
							 gpu_unit_cost_vect[j] = (IloNum) node_gpu_unit_cost;

							file5<<node_gpu_unit_cost<<endl;

							cout<<"GPU unit cost of node:"<<j+1<<": "<<node_gpu_unit_cost<<endl;

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

							for(j=0;j<NB_NODE;j++)
						  {
							node_blade_unit_cost = 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * MAX_BLADE_COST);
							blades_unit_cost_vect[j] = (IloNum) node_blade_unit_cost;

							file5<<node_blade_unit_cost<<endl;

							cout<<"Blades unit cost of node:"<<j+1<<": "<<node_blade_unit_cost<<endl;

						  }

						  file5.close();

				 //------------------------------------------------------------------------------------------
		 		 //                             Network definition                                          -
		 		 //------------------------------------------------------------------------------------------


						   SubNodesAryType  Vect_Substrate_Graph(env,NB_NODE);

						   substrate_Graph_creation(Vect_Substrate_Graph, Vect_Link, NB_LINK, NB_NODE, env);
						   adjacency_list_creation(Vect_Substrate_Graph, NB_NODE, env);

						   substrate_graph_printing(Vect_Substrate_Graph, env, NB_NODE);

						//------------------------------------------------------------------------------------------
		 				//                     Calculation of the all candidates embdedding substrate paths        -
		 				//------------------------------------------------------------------------------------------

						   NB_POTANTIAL_EMBEDDING_NODES = MAX_NB_LOCATION*MAX_NB_LOCATION*NB_ADD_REQUEST;

						   Meta_Embedding_Nodes_tab  Potantial_Embedding_Nodes_Vect(env, NB_POTANTIAL_EMBEDDING_NODES);

						   IloNumArray candidate_src_vect(env,MAX_NB_LOCATION);
						   IloNumArray candidate_dest_vect(env,MAX_NB_LOCATION);

						    length = MAX_NB_LOCATION;

						   for(j=0;j<NB_ADD_REQUEST;j++)
						    {
		        						 src = (IloInt) Add_Request_Vect[j].getSrcVnode();
		        						 dest = (IloInt) Add_Request_Vect[j].getDestVnode();
										 vnp_id = (IloInt) Add_Request_Vect[j].getVnpId();
										 virtual_link_class = (IloInt) Add_Request_Vect[j].getVlinkQosCls();
										 virtual_link_id = (IloInt) Add_Request_Vect[j].getVlinkId();

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
												  int l=0;
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


								   MetaSubPathAryType       Path_Vect(env, nb_candidate_embdedding_nodes*NB_MAX_PATH);

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

								  // printing_meta_path(Path_Vect, COUNT_PATH, env);



						//------------------------------------------------------------------------------------------
		 				//                                D- Bid generation                                        -
		 				//------------------------------------------------------------------------------------------

						 srand((int)time(NULL));

		 				 for(k=0;k<NB_ADD_REQUEST;k++)
						  {
							             class_QoS = (IloInt) Add_Request_Vect[k].getVlinkQosCls();
										 virtual_link_id = (IloInt) Add_Request_Vect[k].getVlinkId();

										 src = (IloInt) Add_Request_Vect[k].getSrcVnode();
		        						 dest = (IloInt) Add_Request_Vect[k].getDestVnode();
										 vnp_id = (IloInt) Add_Request_Vect[k].getVnpId();

										 search_cpu_requirement_src_dest_nodes(src, dest, vnp_id, VNode_Location_Vect, Node_Class_QoS_Vect, src_cls, dest_cls);

										 bw = (IloInt) Link_Class_QoS_Vect[class_QoS-1].getQosClsBw();

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

										 decimal_selected_ppp =(IloNum) ( 1+(IloInt)((double)rand() / ((double)RAND_MAX + 1) * decim_ppp_max ));

										 selected_ppp = (IloNum) (decimal_selected_ppp/10.0);

										 if (min_src_dest_cost < max_src_dest_cost)
										    selected_src_dest_cost =  min_src_dest_cost + 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * (max_src_dest_cost - min_src_dest_cost));
										 else
	                                        selected_src_dest_cost =  max_src_dest_cost + 1 + (IloInt)((double)rand() / ((double)RAND_MAX + 1) * (min_src_dest_cost - max_src_dest_cost));

										 bid = (IloInt)((selected_src_dest_cost + bw*selected_path_unit_cost)*(1 + selected_ppp));

										 Add_Request_Vect[k].SetBid((IloInt)bid);

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

					     }// boucle for requests*/


					  cout<<"NB REQUEST: "<<NB_ADD_REQUEST+NB_RESERVED_REQUEST<<endl;
					  cout<<"NB ADD REQUEST: "<<NB_ADD_REQUEST<<endl;
	                  cout<<"NB RESERVED REQUEST: "<<NB_RESERVED_REQUEST<<endl;
						//-------------------------------------------------------------------------------------------------------
						//   								Calulation of the new traffic matrix					            -
						//-------------------------------------------------------------------------------------------------------

								NB_REQUEST = NB_RESERVED_REQUEST + NB_ADD_REQUEST;

								VlinkReqAryType  New_Request_Vect(env, NB_REQUEST);

								int reqItr=0;
								//cout<<"src\tdest\tvirtual_link_id\t  class_QoS\tbid\tvnp_id\tperiod"<<endl;
								for (i=0;i<NB_RESERVED_REQUEST;i++)
									{
										  src = (IloInt) Reserved_Request_Vect[i].getSrcVnode();
										  dest = (IloInt) Reserved_Request_Vect[i].getDestVnode();
										  class_QoS = (IloInt) Reserved_Request_Vect[i].getVlinkQosCls();
	                                      virtual_link_id = (IloInt) Reserved_Request_Vect[i].getVlinkId();
										  vnp_id = (IloInt) Reserved_Request_Vect[i].getVnpId();
										  bid = (IloInt) Reserved_Request_Vect[i].getBid();
										  period = (IloInt) Reserved_Request_Vect[i].getPeriod();

										  //cout<<src<<"\t"<<dest<<"\t\t"<<virtual_link_id<<"\t\t"<<class_QoS<<"\t"<<bid<<"\t"<<vnp_id<<"\t"<<period<<endl;

										  New_Request_Vect[reqItr].setSrcVnode((IloInt)src);
										  New_Request_Vect[reqItr].setDestVnode((IloInt)dest);
										  New_Request_Vect[reqItr].setVlinkQosCls((IloInt)class_QoS);
										  New_Request_Vect[reqItr].setVlinkId((IloInt)virtual_link_id);
										  New_Request_Vect[reqItr].setVnpId((IloInt)vnp_id);
										  New_Request_Vect[reqItr].SetBid((IloInt)bid);
	                                      New_Request_Vect[reqItr].SetPeriod((IloInt)period);

	                                      reqItr++;
									   }

									 for (i=0;i<NB_ADD_REQUEST;i++)
									   {
										  src = (IloInt) Add_Request_Vect[i].getSrcVnode();
		        						  dest = (IloInt) Add_Request_Vect[i].getDestVnode();
										  vnp_id = (IloInt) Add_Request_Vect[i].getVnpId();
										  class_QoS = (IloInt) Add_Request_Vect[i].getVlinkQosCls();
										  virtual_link_id = (IloInt)Add_Request_Vect[i].getVlinkId();
						                  bid = (IloInt) Add_Request_Vect[i].getBid();
										  period = (IloInt) Add_Request_Vect[i].getPeriod();

										  New_Request_Vect[reqItr].setSrcVnode((IloInt)src);
										  New_Request_Vect[reqItr].setDestVnode((IloInt)dest);
										  New_Request_Vect[reqItr].setVlinkQosCls((IloInt)class_QoS);
										  New_Request_Vect[reqItr].setVlinkId((IloInt)virtual_link_id);
										  New_Request_Vect[reqItr].setVnpId((IloInt)vnp_id);
										  New_Request_Vect[reqItr].SetBid((IloInt)bid);
	                                      New_Request_Vect[reqItr].SetPeriod((IloInt)period);

	                                      reqItr++;
									   }


						//------------------------------------------------------------------------------------------
						//                    Save embedding location of Virtual Nodes							   -
						//------------------------------------------------------------------------------------------
	    						ofstream file6(f6_vnReqNode);

								if (!file6)
								  cerr << "ERROR: could not open file `"<< f6_vnReqNode<< "`for reading"<< endl;

								file6<<comp_vn_node<<endl;

								for (i=0;i<comp_vn_node;i++)
								 {
									  arrayZeroInitialize(vect_location,length);

									  vn_node = (IloInt)VNode_Location_Vect[i].GetVirtual_Node_Id();
									  node_cls = (IloInt)VNode_Location_Vect[i].GetQoS_Class();
									  vnp_id = (IloInt) VNode_Location_Vect[i].GetVNP_Id();
									  period = (IloInt) VNode_Location_Vect[i].GetPeriod();

									  VNode_Location_Vect[i].GetCandidate_Location_Tab(vect_location);

									  file6<<vn_node<<"       "<<node_cls<<"         "<<vnp_id<<"        "<<period<<endl;

									  for (j=0;j<length;j++)
									  {
	                                    current_location = (IloInt)vect_location[j];

									    file6<<current_location<<"    ";
									  }
									   file6<<endl;

								   }

								file6.close();


						//------------------------------------------------------------------------------------------
						//                     Save the traffic matrix into file: traffic.txt                       -
						//------------------------------------------------------------------------------------------
								cout<<"\nwriting to file: f7_vnReqLink = "<<f7_vnReqLink<<endl;
								ofstream file7(f7_vnReqLink);

						 		if (!file7)
								  cerr << "ERROR: could not open file `"<< f7_vnReqLink << "`for reading"<< endl;

								file7<<current_period<<endl;
								file7<<NB_REQUEST<<endl;
	                            file7<<NB_RESERVED_REQUEST<<endl;
								file7<<NB_ADD_REQUEST<<endl;

								cout<<current_period<<endl;
								cout<<NB_REQUEST<<endl;
								cout<<NB_RESERVED_REQUEST<<endl;
								cout<<NB_ADD_REQUEST<<endl;
								cout<<"\tsrc\tdest\tvirtual_link_id\t  class_QoS\tbid\tvnp_id\tperiod"<<endl;
								for (i=0;i<NB_REQUEST;i++)
								   {
									  src = (IloInt) New_Request_Vect[i].getSrcVnode();
									  dest = (IloInt) New_Request_Vect[i].getDestVnode();
									  virtual_link_id = (IloInt) New_Request_Vect[i].getVlinkId();
									  class_QoS = (IloInt) New_Request_Vect[i].getVlinkQosCls();
									  bid = (IloInt) New_Request_Vect[i].getBid();
									  vnp_id = (IloInt) New_Request_Vect[i].getVnpId();
	                                  period = (IloInt)New_Request_Vect[i].getPeriod();

									  //cout<<New_Request_Vect<<endl;
									  cout<<"\t"<<src<<"\t"<<dest<<"\t\t"<<virtual_link_id<<"\t\t"<<class_QoS<<"\t"<<bid<<"\t"<<vnp_id<<"\t"<<period<<endl;
									  file7 <<src<<"         "<<dest<<"         "<<virtual_link_id<<"        "<<class_QoS<<"       "<<bid<<"      "<<vnp_id<<"     "<<period<<endl;
								   }

							    file7.close();



							    cout<<"\nDONE: Traffic Generation for TIME SLOT: "<<currTslot<<endl;
		}

	   catch (IloException& e)
	     {
			  cerr << "ERROR: " << e.getMessage()<< endl;
		 }

	   env.end();
	  }

