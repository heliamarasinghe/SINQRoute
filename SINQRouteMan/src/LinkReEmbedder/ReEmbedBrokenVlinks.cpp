/*
 * PeriodicLinkEmbedder.cpp
 *
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */

#include "../LinkEmbedder/LinkEmbedder.h"

char* LinkEmbedder::reEmbedBrokenLinks(int currSubTslot){

	cout<<"\n\t *** Periodic Link Embedder ***"<<endl;
	// Files being read

	int prevSubTslot = currSubTslot-1;

	//const char*  f1_subTopo="DataFiles/t%i/reEmbed/f1_subTopo.txt";														// init/f1_subTopo.txt
	char f1_subTopo[50];
		snprintf(f1_subTopo, sizeof(char) * 50, "DataFiles/t%i/reEmbed/f1_subTopo.txt", currSubTslot);							// currTslot/f4_vnReqTopo.txt
	//const char*  f2_linkQoS="DataFiles/t%i/reEmbed/f2_linkQoS.txt";														// init/f2_linkQoS.txt
	char f2_linkQoS[50];
		snprintf(f2_linkQoS, sizeof(char) * 50, "DataFiles/t%i/reEmbed/f2_linkQoS.txt", currSubTslot);							// currTslot/f4_vnReqTopo.txt
	//const char*  f3_nodeQoS="DataFiles/t%i/reEmbed/f3_nodeQoS.txt";														// init/f3_nodeQoS.txt
	char f3_nodeQoS[50];
		snprintf(f3_nodeQoS, sizeof(char) * 50, "DataFiles/t%i/reEmbed/f3_nodeQoS.txt", currSubTslot);							// currTslot/f4_vnReqTopo.txt

	char f4_vnReqTopo[50];
	snprintf(f4_vnReqTopo, sizeof(char) * 50, "DataFiles/t%i/reEmbed/f4_vnReqTopo.txt", currSubTslot);							// currTslot/f4_vnReqTopo.txt

	char f5_subUnitCost[50];
	snprintf(f5_subUnitCost, sizeof(char) * 50, "DataFiles/t%i/reEmbed/f5_subUnitCost.txt", currSubTslot);						// currTslot/f5_subUnitCost.txt

	char f8_ph1EmbeddedVnodes[50];
	snprintf(f8_ph1EmbeddedVnodes, sizeof(char) * 50, "DataFiles/t%i/reEmbed/f8_ph1EmbeddedVnodes.txt", currSubTslot);			// currTslot/f8_ph1EmbeddedVnodes.txt

	char f9_ph1AcceptedVlinks[50];
	snprintf(f9_ph1AcceptedVlinks, sizeof(char) * 50, "DataFiles/t%i/reEmbed/f9_ph1AcceptedVlinks.txt", currSubTslot);			// currTslot/f9_ph1AcceptedVlinks.txt

	char prv_f11_ph2EmbeddedVnodes[50];
		snprintf(prv_f11_ph2EmbeddedVnodes, sizeof(char) * 50, "DataFiles/t%i/reEmbed/f11_ph2EmbeddedVnodes.txt", prevSubTslot);	// currTslot/f11_ph2EmbeddedVnodes.txt

	char f17_ctrlUpdatedNalocs[50];
	snprintf(f17_ctrlUpdatedNalocs, sizeof(char) * 50, "DataFiles/t%i/reEmbed/f17_ctrlUpdatedNalocs.txt", prevSubTslot);		// currTslot/f12_ph2AcceptedVlinks.txt

	// Files being written
	char f11_ph2EmbeddedVnodes[50];
	snprintf(f11_ph2EmbeddedVnodes, sizeof(char) * 50, "DataFiles/t%i/reEmbed/f11_ph2EmbeddedVnodes.txt", currSubTslot);		// currTslot/f11_ph2EmbeddedVnodes.txt
	char f12_ph2AcceptedVlinks[50];
	snprintf(f12_ph2AcceptedVlinks, sizeof(char) * 50, "DataFiles/t%i/reEmbed/f12_ph2AcceptedVlinks.txt", currSubTslot);		// currTslot/f12_ph2AcceptedVlinks.txt
	char f13_cplexLinkModel[50];
	snprintf(f13_cplexLinkModel, sizeof(char) * 50, "DataFiles/t%i/reEmbed/f13_cplexLinkModel.lp", currSubTslot);				// currTslot/f13_cplexLinkModel.lp
	char* f14_ph2AddRemovePaths = new char[50];
	snprintf(f14_ph2AddRemovePaths, sizeof(char) * 50, "DataFiles/t%i/reEmbed/f14_ph2RemvdAddedPaths.txt", currSubTslot);		// Contains added and removed vlinks as a tab delimited intermediate physical switch IDs

 IloEnv env;

 try{


   //********************************************************************************************************
   //                                             Variables Declaration                                     *
   //********************************************************************************************************


	    IloInt NB_NODE=0, NB_LINK=0, NB_REQUEST=0, NB_NODE_CLASS=0, NB_LINK_CLASS=0, NB_REQUEST_PATH=0, COUNT_PATH=0;
	    IloInt NB_VNODE_SNODE=0, x_VECT_LENGTH=0,  NB_TOTAL_VNP=0, NB_PATHS=0, NB_VNP=20, NB_VNP_NODE=0, NB_POTANTIAL_EMBEDDING_NODES=0;

		IloInt i=0,j=0,k=0, l=0;
	    IloInt arc=0, source=0, destination=0, src=0, dest=0, class_QoS=0, vnp_id=0, hops=0, bw=0, find_elt=0;
	    IloInt nb_max_hops=0, request_id=0, no_more_arc=0, current_request=0, exit=0, current_val=0;
	    IloInt Num_path=0, var_index=0, bid=0, no_more_emb_path=0, nb_vnodes=0, nb_vlinks=0, nb_accepted_vnode=0, nb_accepted_requests=0;
	    IloInt used_bw=0, cls=0, nb_total_path_hops=0, vnode=0, snode=0, used_cpu=0, c_cpu=0;

	    IloInt current_link=0, current_class=0,  used_link=0, request_profit=0, current_location=0;
	    IloInt used_node=0, more_arc=0, used_arc=0, more_node=0, unit_cost=0, nb_candidate_embedding_nodes=0;

	    IloInt current_value=0, c_link=0, c_class=0, src_candidate=0, dest_candidate=0, index=0, found=0;

	    IloInt src_emb=0, dest_emb=0, emb_path_cost=0, src_emb_index=0, dest_emb_index=0, next_virtual_link_id=0;
	    IloInt vn_node=0, cpu_node_requirement=0, link=0, virtual_link_id=0, nb_hops=0, num_candidate_embedding_nodes=0;

		IloInt current_virtual_link_id=0, current_vnp_id=0, vlink_src=0, vlink_dest=0, length=0, next_virtual_link=0;
		IloNum cost=0.0, virtual_link_profit=0.0;

		IloInt period=0, NB_RESERVED=0, NB_ADD=0, PIP_profit=0, PIP_cost=0, nb_used_node=0, nb_used_arc=0, nb_embedding_path=0, vect_length=MAX_SIZE;

		IloInt exit_src=0, exit_dest=0, virtual_link_class=0, current_period=0, find=0, node_cost=0, path_var_index=0, src_cost=0, dest_cost=0, num_path=0;
		IloInt nb_vnode=0, reserved_cpu=0, current_arc=0, src_vlink=0, dest_vlink=0, current_vlink=0, link_cost=0, nb_accepted_vnp=0;
	    IloInt nb_accepted_req=0, cpu=0, loc=0, src_cpu=0, dest_cpu=0, memory=0, storage=0, blade=0, length_vect=0, vlink_src_cls=0, vlink_dest_cls=0;

		IloInt  nb_cand_vnp_vlink=0, nb_cand_vnp_vnode=0, served_vnp_id=0, nb_previous_vnode=0, nb_new_requests=0;
		IloInt   Reserved_PIP_profit=0, Reserved_PIP_cost=0, reserved_bw =0, nb_reserved_total_path_hops=0, Nb_reserved_vnode=0, nb_previous_requests=0;


    //------------------------------------------------------------------------------------------
        //                     Reading of the topology of VN requests                                 -
        //------------------------------------------------------------------------------------------


    		//const char*  filename1="C:/ILOG/CPLEX121/abdallah_work/data/vn_topology_history_us_metro20_p9.txt";
        	ifstream file4(f4_vnReqTopo);

    		if (!file4)
    		  cerr << "ERROR: could not open file `"<< f4_vnReqTopo << "`for reading"<< endl;

    		//file1>>NB_TOTAL_VNP;
            file4>>NB_VNP;			// In dthis whole file, NB_VNP is useful

    		VnReqTopoAryType VN_Request_Topology_Vect(env, NB_VNP);

    		for(i=0;i<NB_VNP;i++)
    		  {
                  file4>>vnp_id>>nb_vnodes>>nb_vlinks>>period;

    			  VN_Request_Topology_Vect[i].setVlinkCount((IloInt)nb_vlinks);
    			  VN_Request_Topology_Vect[i].setVnodeCount((IloInt)nb_vnodes);
    			  VN_Request_Topology_Vect[i].setVnpId((IloInt)vnp_id);

    	       }

    		file4.close();

    	//------------------------------------------------------------------------------------------
        //                     Reading the VN requests details                                     -
        //------------------------------------------------------------------------------------------


    		//const char*  filename2="C:/ILOG/CPLEX121/abdallah_work/data/PhaseI_accepted_traffic_us_metro20_p9.txt";
        	ifstream file9(f9_ph1AcceptedVlinks);

    		if (!file9)
    		  cerr << "ERROR: could not open file `"<< f9_ph1AcceptedVlinks<< "`for reading"<< endl;

    		file9>>current_period;
    		file9>>NB_REQUEST;
            file9>>NB_RESERVED;
    		file9>>NB_ADD;

    		VlinkReqAryType  Reserved_Request_Vect(env,NB_RESERVED);
            VlinkReqAryType  Added_Request_Vect(env,NB_ADD);

    		j=0;
    		for(i=0;i<NB_REQUEST;i++)
    		 {
                  file9>>src>>dest>>virtual_link_id>>class_QoS>>bid>>vnp_id>>period;

    			  if (i < NB_RESERVED)
    			   {
    				  Reserved_Request_Vect[i].setSrcVnode((IloInt)src);
    				  Reserved_Request_Vect[i].setDestVnode((IloInt)dest);
    				  Reserved_Request_Vect[i].setVlinkId((IloInt)virtual_link_id);
    				  Reserved_Request_Vect[i].setVlinkQosCls((IloInt)class_QoS);
    				  Reserved_Request_Vect[i].SetBid((IloInt)bid);
    				  Reserved_Request_Vect[i].setVnpId((IloInt)vnp_id);
    				  Reserved_Request_Vect[i].SetPeriod((IloInt)period);
    			   }
    			  else
    			   {
    				  Added_Request_Vect[j].setSrcVnode((IloInt)src);
    				  Added_Request_Vect[j].setDestVnode((IloInt)dest);
    				  Added_Request_Vect[j].setVlinkId((IloInt)virtual_link_id);
    				  Added_Request_Vect[j].setVlinkQosCls((IloInt)class_QoS);
    				  Added_Request_Vect[j].SetBid((IloInt)bid);
    				  Added_Request_Vect[j].setVnpId((IloInt)vnp_id);
    				  Added_Request_Vect[j].SetPeriod((IloInt)period);

    				  j++;
    				}
    	       }

    		file9.close();

          //----------------------------------------------------------------------------------
         //                             Reading of Network Substrate Topology               -
         //----------------------------------------------------------------------------------


    		//const char*  filename3="C:/ILOG/CPLEX121/abdallah_work/data/us_metro20_topology.txt";

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


    		//----------------------------------------------------------------------------------
            //                             initialization of Available Substrate Resources     -
            //----------------------------------------------------------------------------------

             IloNumArray Available_bw_vect(env,NB_LINK);

    		 for(i=0; i<NB_LINK;i++)
              Available_bw_vect[i] = SUBSTRATE_LINK_BW;

           //--------------------------------------------------------------------------------------------------------
           //                            Reading of Classes of Services requirements                                -
           //--------------------------------------------------------------------------------------------------------

    		 //---------- Link QoS classes------------------

    		 //const char*  filename4="C:/ILOG/CPLEX121/abdallah_work/data/link_qos_class_us_metro20.txt";
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

            //---------- Node QoS classes------------------
    		 //const char*  filename5="C:/ILOG/CPLEX121/abdallah_work/data/node_qos_class_us_metro20.txt";
    		 ifstream file3(f3_nodeQoS);

    		 if (!file3)
    		  cerr << "ERROR: could not open file "<< f3_nodeQoS << "for reading"<< endl;

    		  file3>>NB_NODE_CLASS;

    		  NodeQosClsAryType  Node_Class_QoS_Vect(env,NB_NODE_CLASS);

    		  length_vect = MAX_NB_LOCATION;

    		  IloNumArray location_vect(env,length_vect);

    		  for(i=0;i<NB_NODE_CLASS;i++)
    		  {
    		    //file5>>class_QoS>>cpu;
    			  file3 >> class_QoS >> cpu >> memory >> storage >> blade;
                arrayZeroInitialize(location_vect, length_vect);

    		    for(j=0;j<MAX_NB_LOCATION;j++)
    			 {
    			  file3>>loc;
    			  location_vect[j] = (IloNum) loc;
    			 }

    		  	 Node_Class_QoS_Vect[i].SetNode_QoS_Class_Id((IloInt)class_QoS);
    		     Node_Class_QoS_Vect[i].SetRequired_CPU((IloInt)cpu);
    		     Node_Class_QoS_Vect[i].SetNode_Location_Tab(location_vect);

    		  }
    		 file3.close();

            //------------------------------------------------------------------------------------------------------------
            //                                    Reading of substrate bw unit cost  	   		                         -
            //------------------------------------------------------------------------------------------------------------


               //const char*  filename6="C:/ILOG/CPLEX121/abdallah_work/data/substrate_cost_us_metro20_p9.txt";
    		   ifstream file5(f5_subUnitCost);

    		   if (!file5)
    			   cerr << "ERROR: could not open file "<< f5_subUnitCost<< "for reading"<< endl;

    		   IloNumArray    bw_unit_cost_vect(env,NB_LINK);
               IloNumArray    cpu_unit_cost_vect(env,NB_NODE);

    		   for(j=0;j<NB_LINK;j++)
    			 {
    				file5>>unit_cost;
                    bw_unit_cost_vect[j] = (IloNum)unit_cost;

    				//cout<<"BW unit cost of link:"<<j+1<<": "<<unit_cost<<endl;
    			  }

                for(j=0;j<NB_NODE;j++)
    			 {
    				file5>>node_cost;
                    cpu_unit_cost_vect[j] = (IloNum)node_cost;

    				//cout<<"Substrate node:"<<j+1<<" has a cost of: "<<node_cost<<endl;
    			  }

    			file5.close();

             //------------------------------------------------------------------------------------------
    	 	 //                             Network definition                                          -
    	 	 //------------------------------------------------------------------------------------------


    		  SnodesAryType  Vect_Substrate_Graph(env,NB_NODE);

    	      substrate_Graph_creation(Vect_Substrate_Graph, Vect_Link, NB_LINK, NB_NODE, env);

    	      adjacency_list_creation(Vect_Substrate_Graph, NB_NODE, env);

    		  //substrate_graph_printing(Vect_Substrate_Graph, env, NB_NODE);


    	//********************************************************************************************************
     	//                                       Reading of node embedding							             *
     	//********************************************************************************************************


    	 //const char*  filename7="C:/ILOG/CPLEX121/abdallah_work/data/phaseI_embedding_us_metro20_p9.txt";
    	 ifstream file8(f8_ph1EmbeddedVnodes);

    	 if (!file8)
    	   cerr << "ERROR: could not open file "<< f8_ph1EmbeddedVnodes << "for reading"<< endl;

    	 file8>>nb_vnode;

    	  Virtual_Node_Embedding_tab  Preliminary_Node_Embedding_Vect(env, nb_vnode);

    	 IloNumArray accepted_vnp_id_tab(env,NB_VNP );
         arrayZeroInitialize(accepted_vnp_id_tab, NB_VNP);


    	 for(i=0;i<nb_vnode;i++)
    	  {
            file8>>vnode>>vnp_id>>snode>>cls>>period;


    		Preliminary_Node_Embedding_Vect[i].SetVirtual_Node_Id(vnode);
            Preliminary_Node_Embedding_Vect[i].SetVNP_Id(vnp_id);
    	    Preliminary_Node_Embedding_Vect[i].setCandidSnodeId(snode);
       		Preliminary_Node_Embedding_Vect[i].SetQoS_Class(cls);
            Preliminary_Node_Embedding_Vect[i].SetPeriod(period);

    		find = (IloInt) findElementInVector(vnp_id, accepted_vnp_id_tab, nb_accepted_vnp);
    		IloBool is_new_elet = (find==0);

    		if (is_new_elet)
    		 {
    		   accepted_vnp_id_tab[nb_accepted_vnp]= (IloNum) vnp_id;
    		   nb_accepted_vnp++;
    		 }

    	  }

    	 cout<<"\t nb_accepted_vnp:"<<nb_accepted_vnp<<endl;

    	 //--------------------------------------------------------------------------------------------
     	 //             Reading of embedding paths of reserved requests                               -
     	 //--------------------------------------------------------------------------------------------



    	 //cout<<"period:"<<period<<endl;

    	 //const char*  filename8="C:/ILOG/CPLEX121/abdallah_work/data/phaseII_embedding_us_metro20_p8.txt";
    	 ifstream prv_file11(prv_f11_ph2EmbeddedVnodes);

    	 if (!prv_file11)
    	   cerr << "ERROR: could not open file "<< prv_f11_ph2EmbeddedVnodes <<"for reading"<< endl;

    	 prv_file11>>nb_previous_vnode;//50

    	 Virtual_Node_Embedding_tab Previous_Node_Embedding_Vect(env,nb_previous_vnode);
    	 SubstratePathAryType  Reserved_embedding_Vect(env, NB_RESERVED);


    	 for(i=0;i<nb_previous_vnode;i++){
    			prv_file11>>vnode>>vnp_id>>snode>>cls>>period;

    			found = (IloInt) search_reserved_vnode(Reserved_Request_Vect, NB_RESERVED, vnode, vnp_id, period);
    			 //cout<<"found vnode:"<<found<<endl;
    			if (found == 1)
    			 {
    				 Previous_Node_Embedding_Vect[Nb_reserved_vnode].SetVirtual_Node_Id(vnode);
    				 Previous_Node_Embedding_Vect[Nb_reserved_vnode].SetVNP_Id(vnp_id);
    				 Previous_Node_Embedding_Vect[Nb_reserved_vnode].setCandidSnodeId(snode);
    				 Previous_Node_Embedding_Vect[Nb_reserved_vnode].SetQoS_Class(cls);
    				 Previous_Node_Embedding_Vect[Nb_reserved_vnode].SetPeriod(period);
    				 Nb_reserved_vnode++;

    			 }
    		  }

    	 cout<<"\t nb_previous_vnode: "<<nb_previous_vnode<<endl;
    	 cout<<"\t Nb_reserved_vnode: "<<Nb_reserved_vnode<<endl;

    	 prv_file11>>nb_previous_requests;	//56
    	 IloInt nbRemovedPaths = nb_previous_requests-NB_RESERVED;
    	 cout<<"\t nb_previous_requests = "<<nb_previous_requests<<"\t\t NB_RESERVED ="<<NB_RESERVED<<endl;
    	 cout<<"\t nbRemovedPaths = "<<nbRemovedPaths<<endl;
    	 if (nbRemovedPaths<0){
    		 cerr<<"\n\tERROR:Number of Removed path count is less than zero\n";
    		 nbRemovedPaths = nb_previous_requests;									//Dirty work. Remove after correcting trafficgenerator link acceptance issue
    		 //return;
    	 }
    	 SubstratePathAryType  Removed_request_Vect(env, nbRemovedPaths);
    	 IloInt NB_Reserved_Requests=0;
    	 IloInt remPathCount = 0;

         vect_length = MAX_SIZE;	//20

    	 IloNumArray  node_list_prv(env,vect_length);
    	 IloNumArray  arc_list(env, vect_length);

           cout<<"\tnb_previous_requests:"<<nb_previous_requests<<endl;

    	  for(i=0;i<nb_previous_requests;i++){

    	  	  prv_file11>>src>>dest>>cls>>vnp_id>>virtual_link_id>>virtual_link_profit>>cost>>period;

    		  arrayZeroInitialize(node_list_prv,vect_length);
    		  arrayZeroInitialize(arc_list, vect_length);

    		  bw = (IloInt) Link_Class_QoS_Vect[cls-1].getQosClsBw();
    		  k=0;
    	      more_node=0;

    		  while ((k<vect_length) && ( more_node==0))
    		   {
    				  prv_file11>>used_node;
    				  IloBool non_nul = (used_node!=0);
    				  if (non_nul)
    				   {
    					  node_list_prv[k] = (IloNum) used_node;
    					  k++;
    				   }
    				  else
    					more_node=1;
    			}

    		   k=0;
    		   more_arc=0;

    		    found = (IloInt) searchRtndReqFrmPrv(Reserved_Request_Vect, NB_RESERVED, virtual_link_id, vnp_id, period);
    			   //cout<<"found reserved request:"<<found<<endl;

    		   while ((k<vect_length) && ( more_arc==0)){
    				  prv_file11>>used_arc;
    				  IloBool non_nul = (used_arc !=0);
    				  if (non_nul)
    				   {
    					 arc_list[k] = (IloNum) used_arc;
    					 if (found ==1)
    					  Available_bw_vect[used_arc-1] = Available_bw_vect[used_arc-1] - bw;
    					 k++;
    				   }
    			      else
    					more_arc=1;
    			  }

    			   if (found == 1){
    					Reserved_embedding_Vect[NB_Reserved_Requests].setSrcSnode(src);
    					Reserved_embedding_Vect[NB_Reserved_Requests].setDstSnode(dest);
    					Reserved_embedding_Vect[NB_Reserved_Requests].setQosCls(cls);
    					Reserved_embedding_Vect[NB_Reserved_Requests].setVnpId(vnp_id);
    					Reserved_embedding_Vect[NB_Reserved_Requests].setVlinkId(virtual_link_id);
    					Reserved_embedding_Vect[NB_Reserved_Requests].setVlEmbdProfit(virtual_link_profit);
    					Reserved_embedding_Vect[NB_Reserved_Requests].setActvPthCost(cost);
    					Reserved_embedding_Vect[NB_Reserved_Requests].setPeriod(period);

    					Reserved_embedding_Vect[NB_Reserved_Requests].setActvSlinkAry(arc_list);
    					Reserved_embedding_Vect[NB_Reserved_Requests].setActvSnodeAry(node_list_prv);

    					NB_Reserved_Requests++;

    				 }

    			   else if(found == 0){
    				   Removed_request_Vect[remPathCount].setSrcSnode(src);
    				   Removed_request_Vect[remPathCount].setDstSnode(dest);
    				   Removed_request_Vect[remPathCount].setQosCls(cls);
    				   Removed_request_Vect[remPathCount].setVnpId(vnp_id);
    				   Removed_request_Vect[remPathCount].setVlinkId(virtual_link_id);
    				   Removed_request_Vect[remPathCount].setVlEmbdProfit(virtual_link_profit);
    				   Removed_request_Vect[remPathCount].setActvPthCost(cost);
    				   Removed_request_Vect[remPathCount].setPeriod(period);
    				   Removed_request_Vect[remPathCount].setActvSlinkAry(arc_list);
    				   Removed_request_Vect[remPathCount].setActvSnodeAry(node_list_prv);
    				   remPathCount++;
    			   }



    		  }// end for routing paths

    	  	  if(remPathCount != nbRemovedPaths){
    	  		  cerr<<"\n\tRemoved path counts does not match. Making nbRemovedPaths = remPathCount\n";
    	  		nbRemovedPaths = remPathCount;
    	  	  }


      	      prv_file11.close();

             cout<<"\tnb_previous_requests:"<<NB_Reserved_Requests<<endl;

             // bkupBwUnitsReqAry is only used in LinkEmbedderWithBkup
             IloNumArray bkupBwUnitsReqAry(env, NB_LINK);
             arrayZeroInitialize(bkupBwUnitsReqAry, NB_LINK);

     	    //------------------------------------------------------------------------------------------
    	 	//                               Calculation of the Shortest path                          -
    	 	//------------------------------------------------------------------------------------------

             cout<<"\n\t Calculating Shortest paths"<<endl;
    	       nb_candidate_embedding_nodes = NB_ADD*ACTV_PER_VL;
    	       MetaSubPathAryType       Path_Vect(env, nb_candidate_embedding_nodes);

    	       //cout<<"\t Path_Vect.size = "<<Path_Vect.getSize()<<endl;

    	       //cout<<"\n\t NB_ADD = "<<NB_ADD<<endl;
    	       //cout<<"\t Added_Request_Vect.size = "<<Added_Request_Vect.getSize()<<endl;
    	       //cout<<"\t Preliminary_Node_Embedding_Vect.size = "<<Preliminary_Node_Embedding_Vect.getSize()<<endl;
    	       //cout<<"\t itr\t vLinkSrc\t vLinkDest\t vLinkId\t vnp_id\t srcSubNode\t destSubNode\t class_QoS\t hops"<<endl;
    	       for(j=0;j<NB_ADD;j++){

    				 src_vlink = (IloInt)  Added_Request_Vect[j].getSrcVnode();
    	        	 dest_vlink = (IloInt) Added_Request_Vect[j].getDestVnode();
                     request_id = j+1;
                     virtual_link_id = (IloInt) Added_Request_Vect[j].getVlinkId();
    	        	 vnp_id = (IloInt) Added_Request_Vect[j].getVnpId();


    				 src = getCandidSnodeForVnode(Preliminary_Node_Embedding_Vect,nb_vnode,src_vlink, vnp_id);
                     dest = getCandidSnodeForVnode(Preliminary_Node_Embedding_Vect,nb_vnode,dest_vlink, vnp_id);

                     class_QoS = (IloInt) Added_Request_Vect[j].getVlinkQosCls();
    				 hops = (IloInt) Link_Class_QoS_Vect[class_QoS-1].GetQoS_Class_Max_Hops();
    				 //cout<<"\t "<<j<<"\t "<<src_vlink<<"\t\t "<<dest_vlink<<"\t\t "<<virtual_link_id<<"\t\t "<<vnp_id<<"\t "<<src<<"\t\t "<<dest<<"\t\t "<<class_QoS<<"\t\t "<<hops<<endl;



    	        	 shortest_path(false, Vect_Substrate_Graph, Path_Vect, src, dest, hops, request_id, vnp_id, virtual_link_id, COUNT_PATH, bkupBwUnitsReqAry, env);
    	        	 //cout<<"\t Next"<<endl;
    	          }

    		    cout<<"\t COUNT_PATH:"<<COUNT_PATH<<endl;
                cout<<"\t nb_candidate_embedding_nodes:"<<nb_candidate_embedding_nodes<<endl;

    	        printing_meta_path(Path_Vect, COUNT_PATH, env);


    	 //-------------------------------------------------------------------------------------------------------------
         //                                           CPLEX Model                                                      -
         //-------------------------------------------------------------------------------------------------------------

          //******************************************************************************************************
          //                        Declaration of Concert Technology Environment Model                          *
          //******************************************************************************************************

           IloModel ILP_model(env);

         //******************************************************************************************************
         //                        Declaration of ILP Decision Variables                                        *
         //******************************************************************************************************

    	   IloNumVarArray x(env);   // used to decide on the embedding of VN on substrate nodes
    	   IloNumVarArray z(env);     // used to decide on the acceptance of VNP request

    	   VLink_Embedding_Trace_Tab  vlink_embedding_trace_x(env, NB_ADD*ACTV_PER_VL);
            VN_Embedding_Trace_Tab    embedding_trace_z(env,nb_accepted_vnp);

         //******************************************************************************************************
         //                      Declaration of ILP Solver                                                      *
         //******************************************************************************************************


          IloCplex ILP_solver(ILP_model);


          ILP_solver.setParam(IloCplex::PerInd,1);

          ILP_solver.setParam(IloCplex::EpGap,GAP);
    	  ILP_solver.setParam(IloCplex::FracCuts,1);
    	  //ILP_solver.setParam(IloCplex::IntSolLim,6);
    	  ILP_solver.setParam(IloCplex::MIQCPStrat,2);
          ILP_solver.setParam(IloCplex::TiLim,1000);
     	  ILP_solver.setParam(IloCplex::NodeSel,1);


         //*****************************************************************************************************
         //                       ILP Model definition                                                         *
         //*****************************************************************************************************

    	         //------------------------------------------------------------------------
                 //  A- Creation of VN embedding variables								  -
                 //------------------------------------------------------------------------
                     cout<<"test1"<<endl;

                  x_VECT_LENGTH = (IloInt) creation_path_embedding_var(Added_Request_Vect, NB_ADD, Path_Vect, COUNT_PATH, x, vlink_embedding_trace_x, env);

    			  vnp_variable_creation(embedding_trace_z, z, accepted_vnp_id_tab, nb_accepted_vnp, env);

                 //------------------------------------------------------------------------
                 //  B- no partially VN Embedding: accept all virtual links or block all  -
                 //------------------------------------------------------------------------
                     cout<<"test2"<<endl;

                 no_partially_VN_embedding(Added_Request_Vect, NB_ADD, Path_Vect, COUNT_PATH, vlink_embedding_trace_x, x, x_VECT_LENGTH,
    				                       z, embedding_trace_z, nb_accepted_vnp, ILP_model, env);

    	         //----------------------------------------------------------------------
                 // C- Substrate Link Bandwidth Capacity constraint                     -
                 //----------------------------------------------------------------------

    				cout<<"test5"<<endl;

    	          periodic_substrate_link_bw_constraint(Vect_Link, NB_LINK, Added_Request_Vect, NB_ADD, Path_Vect, COUNT_PATH, vlink_embedding_trace_x,
    				  Link_Class_QoS_Vect, x, x_VECT_LENGTH, ILP_model, Available_bw_vect, env);

    			  cout<<"test6"<<endl;

    	         //--------------------------------------------------------------------------------
                 // E- Calculation of the objective function Maximize the PIP Profit              -
                 //--------------------------------------------------------------------------------

                   IloExpr substrate_network_revenue(env);

                   IloExpr substrate_cost(env);

    			   IloNumArray    arc_vect(env,vect_length);


                   for(i=0;i<NB_ADD;i++)
                     {
    					 bid = (IloInt) Added_Request_Vect[i].getBid();
    					 vnp_id = (IloInt) Added_Request_Vect[i].getVnpId();
                         virtual_link_id = (IloInt) Added_Request_Vect[i].getVlinkId();

    					 //cout<<"virtual_link_id:"<<virtual_link_id<<endl;

    					 vlink_src  = (IloInt) Added_Request_Vect[i].getSrcVnode();
                         vlink_dest = (IloInt) Added_Request_Vect[i].getDestVnode();

    					  vlink_src  = (IloInt) Added_Request_Vect[i].getSrcVnode();
                         vlink_dest = (IloInt) Added_Request_Vect[i].getDestVnode();

    					 vlink_src_cls = (IloInt) search_vnode_class(vlink_src, vnp_id,Preliminary_Node_Embedding_Vect, nb_vnode);
                         vlink_dest_cls = (IloInt) search_vnode_class(vlink_dest, vnp_id,Preliminary_Node_Embedding_Vect, nb_vnode);

    					 src_cpu= (IloInt) Node_Class_QoS_Vect[vlink_src_cls-1].getVnodeCpuReq();
                         dest_cpu= (IloInt) Node_Class_QoS_Vect[vlink_dest_cls-1].getVnodeCpuReq();



    					 index = (IloInt) search_z_index(vnp_id, embedding_trace_z, nb_accepted_vnp);

    	                 substrate_network_revenue+= bid*z[index];

    	                 class_QoS = (IloInt) Added_Request_Vect[i].getVlinkQosCls();
                         bw = (IloInt)Link_Class_QoS_Vect[class_QoS-1].getQosClsBw();

                   		 j=0;
                         no_more_emb_path=0;

                         while ((j < COUNT_PATH)&& (no_more_emb_path == 0))
                           {
    	                         current_virtual_link_id = (IloInt) Path_Vect[j].getVlinkId();
    							 current_vnp_id = (IloInt) Path_Vect[j].getVnpId();

    							 IloBool equal_current_vlink =(current_virtual_link_id == virtual_link_id);
    							 IloBool equal_current_vnp_id =( current_vnp_id == vnp_id);

    							 if((equal_current_vnp_id)&&(equal_current_vlink))
    							  {
    								 num_path = (IloInt) Path_Vect[j].getMetaSpathId();
    								 src_emb = (IloInt)  Path_Vect[j].getSrcSnode();
    	        	                 dest_emb = (IloInt) Path_Vect[j].getDstSnode();
                                     arrayZeroInitialize(arc_vect,vect_length);
    								 Path_Vect[j].getUsedSlinkAry(arc_vect);

    								 src_cost = (IloInt) cpu_unit_cost_vect[src_emb-1];
    								 dest_cost = (IloInt) cpu_unit_cost_vect[dest_emb-1];

                                     emb_path_cost=src_cost*src_cpu + dest_cost*dest_cpu;

    								 l=0;
                                     exit=0;

    								 while (l<vect_length)
    								   {
                                           current_arc = (IloInt) arc_vect[l];
    									   IloBool not_nul = (current_arc !=0);
    									   if (not_nul)
    									    {
    										   link_cost= (IloInt) bw_unit_cost_vect[current_arc-1];
    										   emb_path_cost+=bw*link_cost;
    									    }
    									   else
    										   exit=1;

    										   l++;
    								    }

    								   path_var_index = (IloInt) search_var_index(vlink_embedding_trace_x, virtual_link_id, num_path, x_VECT_LENGTH);

    								   substrate_cost+= emb_path_cost*x[path_var_index];

    							   }

    							 j++;

                           }// go through the list of potantial embedding paths/nodes.

                	    }// go through the list of virtual links requests


                     IloObjective obj_func(IloMaximize(env));
                     ILP_model.add(obj_func);

                     obj_func.setExpr(substrate_network_revenue - substrate_cost);

    				 IloRange range_const(env,-obj_func,0);
    		         ILP_model.add(range_const);

                  cout<<"test8"<<endl;

         //*****************************************************************************************************
         //								Reading of initiale solution										   *
         //*****************************************************************************************************



    		/*IloNumArray  x0(env,x_VECT_LENGTH);
    	 	const char*  filename7="C:/ILOG/CPLEX121/abdallah_work/results/initiale_solution.txt";
    		ifstream file7(filename7);

    	 	file7>>x0;

    		ILP_solver.setVectors(x0,0,x,0,0,0);
    		ILP_solver.setParam(IloCplex::AdvInd,1);*/



         //*****************************************************************************************************
         //                               ILP Model Solving                                                    *
         //*****************************************************************************************************

            ILP_solver.exportModel(f13_cplexLinkModel);

     	    ILP_solver.solve();

    	 //*******************************************************************************************************
         //                             Printing of the calculated ILP Solution                                  *
    	 //*******************************************************************************************************



    	   env.out() <<"Solution Status="<<ILP_solver.getStatus() <<endl;

    	   PIP_profit = (IloInt) ILP_solver.getObjValue();

           env.out() <<"Objective Value ="<<PIP_profit<<endl;
    	   cout<<endl;

          //****************************************************************************************************
         //								save of initiale solution		  								       *
         //*****************************************************************************************************

    	   IloNumArray xvals(env);
           ILP_solver.getValues(xvals, x);

    	   IloNumArray zvals(env);
           ILP_solver.getValues(zvals, z);

    	   /*const char*  filename8="C:/ILOG/CPLEX121/abdallah_work/results/initiale_solution.txt";
            ofstream file8(filename8);
            file8<<vals<<endl;
            file8.close();*/

          //****************************************************************************************************
          //                      Printing of embedding solution details                                       *
          //****************************************************************************************************


    	   env.out()<< "z        = " << zvals << endl;

    		for(i=0;i<nb_accepted_vnp;i++) {
    			 IloNum current_value = (IloNum) zvals[i];
    			if (current_value > EPSELON_1){
    				 vnp_id = (IloInt) embedding_trace_z[i].getVnpId();

                    nb_vlinks = (IloInt) VN_Request_Topology_Vect[vnp_id-1].getVlinkCount();
    				nb_accepted_requests+=nb_vlinks;
    			 }
    		 }

    		SubstratePathAryType path_embedding_tab(env, nb_accepted_requests);

    		env.out()<< "x        = " << xvals << endl;

    		for(i=0;i<x_VECT_LENGTH;i++){
              IloNum current_value =  (IloNum) xvals[i];

    		  if (current_value > EPSELON_1) {
                   j=0;
    			   found=0;

    			   while ((j <x_VECT_LENGTH) &&(found==0)){
                       index = (IloInt) vlink_embedding_trace_x[j].GetVar_Index();
                       IloBool equal_index = (index == i);
    				   if (equal_index){
    						  found=1;
    						  current_vlink = (IloInt) vlink_embedding_trace_x[j].getVlinkId();
    						  num_path = (IloInt) vlink_embedding_trace_x[j].getShortestPathId();

    						  cout<<" virtual link: "<<current_vlink<<"was assigned to substrate path: "<<num_path<<endl;

    						  search_request(Added_Request_Vect, NB_ADD, current_vlink, class_QoS, bid, vnp_id, vlink_src_cls, vlink_dest_cls, Preliminary_Node_Embedding_Vect, nb_vnode);

    						   src_cpu= (IloInt) Node_Class_QoS_Vect[vlink_src_cls-1].getVnodeCpuReq();
                               dest_cpu= (IloInt) Node_Class_QoS_Vect[vlink_dest_cls-1].getVnodeCpuReq();

    					      search_embedding_path(Path_Vect,COUNT_PATH, num_path, vnp_id, class_QoS, bid, path_embedding_tab, nb_embedding_path,
    						  bw_unit_cost_vect, cpu_unit_cost_vect, Link_Class_QoS_Vect, src_cpu, dest_cpu, env);
    		              }
    					j++;
    			      }// end while

    		      }// end if non zero

    		   } // end for x var elements

    	    //-------------------------------------
    		//  Update node embedding details     -
    		//-------------------------------------

         Virtual_Node_Embedding_tab  Accepted_Node_Embedding_Vect(env, nb_vnode);

    	 nb_accepted_vnode=0;

    	 cout<<"nb_accepted_vnp: "<<nb_accepted_vnp<<endl;

    	 for(i=0;i<nb_vnode;i++)
    	   {
    	 	 vnp_id = (IloInt) Preliminary_Node_Embedding_Vect[i].getVnpId();
    		 index = (IloInt) search_z_index(vnp_id, embedding_trace_z, nb_accepted_vnp);

               IloNum current_value = (IloNum) zvals[index];

    			if (current_value > EPSELON_1)
    		    {
    		      vnode  = (IloInt) Preliminary_Node_Embedding_Vect[i].getVnodeId();
                  vnp_id = (IloInt) Preliminary_Node_Embedding_Vect[i].getVnpId();
    	          snode  = (IloInt) Preliminary_Node_Embedding_Vect[i].getCandidSnodeId();
                  cls = (IloInt) Preliminary_Node_Embedding_Vect[i].getQosCls();
    	          c_cpu = (IloInt) Node_Class_QoS_Vect[cls-1].getVnodeCpuReq();

                  period = (IloInt) Preliminary_Node_Embedding_Vect[i].GetPeriod();


    			 Accepted_Node_Embedding_Vect[nb_accepted_vnode].SetVirtual_Node_Id(vnode);
    			 Accepted_Node_Embedding_Vect[nb_accepted_vnode].SetVNP_Id(vnp_id);
    			 Accepted_Node_Embedding_Vect[nb_accepted_vnode].setCandidSnodeId(snode);
    			 Accepted_Node_Embedding_Vect[nb_accepted_vnode].SetQoS_Class(cls);
    			 Accepted_Node_Embedding_Vect[nb_accepted_vnode].SetPeriod(period);
    			 nb_accepted_vnode++;
    		 }
    	  }



          //**********************************************************************************************************
          //                             Save VN embedding solution                                                  *
    	  //**********************************************************************************************************


    	 //const char*  filename9="C:/ILOG/CPLEX121/abdallah_work/data/phaseII_embedding_us_metro20_p9.txt";
    	 ofstream file11(f11_ph2EmbeddedVnodes);

    	 if (!file11)
    	   cerr << "ERROR: could not open file "<< f11_ph2EmbeddedVnodes<< "for reading"<< endl;

    	 nb_vnode = Nb_reserved_vnode + nb_accepted_vnode;

    	 reserved_cpu=0;
    	 file11<<nb_vnode<<endl;

         for(i=0;i<Nb_reserved_vnode;i++){
            vnode = (IloInt) Previous_Node_Embedding_Vect[i].getVnodeId();
            vnp_id= (IloInt) Previous_Node_Embedding_Vect[i].getVnpId();
    	    snode = (IloInt) Previous_Node_Embedding_Vect[i].getCandidSnodeId();
    		cls = (IloInt) Previous_Node_Embedding_Vect[i].getQosCls();
    		period = (IloInt) Previous_Node_Embedding_Vect[i].GetPeriod();

    		c_cpu = (IloInt) Node_Class_QoS_Vect[cls-1].getVnodeCpuReq();

            reserved_cpu+=c_cpu;

    		file11<<vnode<<"    "<<vnp_id <<"    "<<snode<<"    "<<cls<<"    "<<period<<endl;

    	  }

         used_cpu =0;

    	 for(i=0;i<nb_accepted_vnode;i++)
    	  {
            vnode = (IloInt) Accepted_Node_Embedding_Vect[i].getVnodeId();
            vnp_id= (IloInt) Accepted_Node_Embedding_Vect[i].getVnpId();
    	    snode = (IloInt) Accepted_Node_Embedding_Vect[i].getCandidSnodeId();
    		cls = (IloInt) Accepted_Node_Embedding_Vect[i].getQosCls();

    		c_cpu = (IloInt) Node_Class_QoS_Vect[cls-1].getVnodeCpuReq();
            used_cpu+=c_cpu;

    		period = (IloInt) Accepted_Node_Embedding_Vect[i].GetPeriod();

            file11<<vnode<<"    "<<vnp_id <<"    "<<snode<<"    "<<cls<<"   "<<period<<endl;

    	  }

         nb_new_requests = NB_Reserved_Requests + nb_embedding_path;

    	 //VNP_traffic_tab  Updated_Add_Request_Vect(env, nb_embedding_path);

    	 file11<<nb_new_requests<<endl;

    	 IloNumArray used_arc_vect(env,NB_LINK);
         arrayZeroInitialize(used_arc_vect, NB_LINK);

    	 IloNumArray used_node_vect(env,NB_NODE);
         arrayZeroInitialize(used_node_vect, NB_NODE);

    	 vect_length = MAX_SIZE;

         Reserved_PIP_profit=0;
         Reserved_PIP_cost=0;
         reserved_bw =0;
         nb_reserved_total_path_hops=0;

       	 for( i=0;i<NB_Reserved_Requests;i++){
    		      arrayZeroInitialize(node_list_prv,vect_length);
    			  arrayZeroInitialize(arc_list, vect_length);

    		      src = (IloInt) Reserved_embedding_Vect[i].getSrcSnode();
    			  dest = (IloInt) Reserved_embedding_Vect[i].getDstSnode();
    			  cls = (IloInt) Reserved_embedding_Vect[i].getQosCls();

    			  bw = (IloInt) Link_Class_QoS_Vect[cls-1].getQosClsBw();

    			  vnp_id = (IloInt) Reserved_embedding_Vect[i].getVnpId();
                  virtual_link_id = (IloInt) Reserved_embedding_Vect[i].getVlinkId();
                  virtual_link_profit = (IloInt) Reserved_embedding_Vect[i].getVlEmbdProfit();
    			  cost = (IloInt) Reserved_embedding_Vect[i].getActvPthCost();
    			  period = (IloInt) Reserved_embedding_Vect[i].getPeriod();
    			  Reserved_embedding_Vect[i].getActvSlinkAry(arc_list);
    			  Reserved_embedding_Vect[i].getActvSnodeAry(node_list_prv);

    			  Reserved_PIP_profit+=virtual_link_profit;
    			  Reserved_PIP_cost+=cost;

    			  file11<<src<<endl;
    			  file11<<dest<<endl;
    			  file11<<cls<<endl;
    			  file11<<vnp_id<<endl;
                  file11<<virtual_link_id<<endl;
    			  file11<<virtual_link_profit<<endl;
    			  file11<<cost<<endl;
    			  file11<<period<<endl;
    			  k=0;
    			  more_node=0;

    			  while ((k<vect_length) && ( more_node==0))
    			 	 {
    			         used_node = (IloInt)node_list_prv[k];
    			         IloBool non_nul = (used_node !=0);
    			         if (non_nul)
    			          {
                            find_elt=0;
    						find_elt = (int) findElementInVector(used_node, used_node_vect, NB_NODE);
    						IloBool not_find_node = (find_elt == 0);

    						if (not_find_node)
    							  used_node_vect[used_node-1]= (IloNum) used_node;

    			            file11<<used_node<<" ";
    			            k++;
    		              }
    		             else
    			          {
    			             file11<<0;
    			             more_node=1;
    			          }
    			      }

    			   file11<<endl;
    			   k=0;
    			   more_arc=0;

    			   while ((k<vect_length) && ( more_arc==0)){
    			          used_arc = (IloInt) arc_list[k];
    			          IloBool non_nul = (used_arc !=0);
    			          if (non_nul)
    					  {
                            find_elt=0;
    						find_elt = (int) findElementInVector(used_arc, used_arc_vect, NB_LINK);
    						IloBool not_find_link = (find_elt == 0);

    						if (not_find_link)
    							  used_arc_vect[used_arc-1]= (IloNum) used_arc;

    			            file11<<used_arc<<" ";
    						reserved_bw+=bw;
    			            k++;
    						nb_reserved_total_path_hops++;
    			          }
    			         else
    			          {
    			             file11<<0;
    			             more_arc=1;
    			          }

    			      }

    			     file11<<endl;

               } // end while routing paths

    		 PIP_profit=0;
    		 PIP_cost=0;
    		 used_bw =0;
             nb_total_path_hops=0;
             VlinkReqAryType  Updated_Request_Vect(env,nb_accepted_requests);

    	     for(i=0;i<nb_embedding_path; i++){
    		      arrayZeroInitialize(node_list_prv,vect_length);
    			  arrayZeroInitialize(arc_list, vect_length);

    		      src = (IloInt) path_embedding_tab[i].getSrcSnode();
    			  dest = (IloInt) path_embedding_tab[i].getDstSnode();
    			  cls = (IloInt) path_embedding_tab[i].getQosCls();

    			  bw = (IloInt) Link_Class_QoS_Vect[cls-1].getQosClsBw();

    			  vnp_id = (IloInt) path_embedding_tab[i].getVnpId();
                  virtual_link_id = (IloInt) path_embedding_tab[i].getVlinkId();
                  virtual_link_profit = (IloInt) path_embedding_tab[i].getVlEmbdProfit();
    			  cost = (IloInt) path_embedding_tab[i].getActvPthCost();
    			  path_embedding_tab[i].getActvSlinkAry(arc_list);
    			  path_embedding_tab[i].getActvSnodeAry(node_list_prv);

    			  PIP_profit+=virtual_link_profit;
    			  PIP_cost+=cost;

    			  file11<<src<<endl;
    			  file11<<dest<<endl;
    			  file11<<cls<<endl;
    			  file11<<vnp_id<<endl;
                  file11<<virtual_link_id<<endl;
    			  file11<<virtual_link_profit<<endl;
    			  file11<<cost<<endl;
    			  file11<<current_period<<endl;

    			  k=0;
    			  more_node=0;

    			  while ((k<vect_length) && ( more_node==0))
    			 	 {
    			         used_node = (IloInt)node_list_prv[k];
    			         IloBool non_nul = (used_node !=0);
    			         if (non_nul)
    			          {
                            find_elt=0;
    						find_elt = (int) findElementInVector(used_node, used_node_vect, NB_NODE);
    						IloBool not_find_node = (find_elt == 0);

    						if (not_find_node)
    							  used_node_vect[used_node-1]= (IloNum) used_node;

    			            file11<<used_node<<" ";
    			            k++;
    		              }
    		             else
    			          {
    			             file11<<0;
    			             more_node=1;
    			          }
    			      }

    			   file11<<endl;
    			   k=0;
    			   more_arc=0;

    			   while ((k<vect_length) && ( more_arc==0))
    			  	 {
    			          used_arc = (IloInt) arc_list[k];
    			          IloBool non_nul = (used_arc !=0);
    			          if (non_nul)
    					  {

                            find_elt=0;
    						find_elt = (int) findElementInVector(used_arc, used_arc_vect, NB_LINK);
    						IloBool not_find_link = (find_elt == 0);

    						if (not_find_link)
    							  used_arc_vect[used_arc-1]= (IloNum) used_arc;

    						used_bw+= bw;
      					    nb_total_path_hops++;

    			            file11<<used_arc<<" ";

    			            k++;
    			          }
    			         else
    			          {
    			             file11<<0;
    			             more_arc=1;
    			          }

    			      }

    			     file11<<endl;

    			     IloInt index =   search_request_index(virtual_link_id, Added_Request_Vect, vnp_id);

    			     			IloInt srcVnode = Added_Request_Vect[index].getSrcVnode();
    			     			IloInt destVnode = Added_Request_Vect[index].getDestVnode();
    			     			virtual_link_id = Added_Request_Vect[index].getVlinkId();
    			     			IloInt clsQoS = Added_Request_Vect[index].getVlinkQosCls();
    			     			IloInt bid = Added_Request_Vect[index].getBid();
    			     			vnp_id = Added_Request_Vect[index].getVnpId();
    			     			IloInt period = Added_Request_Vect[index].getPeriod();

    			     			Updated_Request_Vect[nb_accepted_req].setSrcVnode(srcVnode);
    			     			Updated_Request_Vect[nb_accepted_req].setDestVnode(destVnode);
    			     			Updated_Request_Vect[nb_accepted_req].setVlinkId(virtual_link_id);
    			     			Updated_Request_Vect[nb_accepted_req].setVlinkQosCls(clsQoS);
    			     			Updated_Request_Vect[nb_accepted_req].SetBid(bid);
    			     			Updated_Request_Vect[nb_accepted_req].setVnpId(vnp_id);
    			     			Updated_Request_Vect[nb_accepted_req].SetPeriod(period);

    			     			nb_accepted_req++;
               } // end while routing paths

    	    file11.close();


    	    //------------------------------------------------------------------------------------------------------------------------
    	   	// 						Saving phase 2 accepted virtual links in file -->  f12_ph2AcceptedVlinks
    	   	//------------------------------------------------------------------------------------------------------------------------
    	    cout<<"\nSaving phase 2 accepted link details in file: "<<f12_ph2AcceptedVlinks<<endl;
    	    		//const char*  filename10="C:/ILOG/CPLEX121/abdallah_work/data/PhaseI_accepted_traffic_us_metro20_p9.txt";
    	        	ofstream file12(f12_ph2AcceptedVlinks);

    	    		if (!file12)
    	    			cerr << "ERROR: could not open file `"<< f12_ph2AcceptedVlinks << "`for reading"<< endl;

    	    		    NB_REQUEST =  NB_RESERVED + nb_accepted_req;

    	                file12<<current_period<<endl;
    	                file12<<NB_REQUEST<<endl;
    	    			file12<<NB_RESERVED<<endl;
    	    			file12<<nb_accepted_req<<endl;

    	                j=0;
    	    			for (i=0;i<NB_REQUEST;i++){
    	    			     if (i < NB_RESERVED){

    	    					   src = (IloInt) Reserved_Request_Vect[i].getSrcVnode();
    	    					   dest = (IloInt) Reserved_Request_Vect[i].getDestVnode();
    	    					   virtual_link_id = (IloInt) Reserved_Request_Vect[i].getVlinkId();
    	    					   class_QoS = (IloInt) Reserved_Request_Vect[i].getVlinkQosCls();
    	    					   bid = (IloInt) Reserved_Request_Vect[i].getBid();
    	    					   vnp_id = (IloInt) Reserved_Request_Vect[i].getVnpId();
    	    					   period = (IloInt) Reserved_Request_Vect[i].getPeriod();
    	    				  }
    	    				 else {
    	    					   src = (IloInt) Updated_Request_Vect[j].getSrcVnode();
    	    					   dest = (IloInt) Updated_Request_Vect[j].getDestVnode();
    	    					   virtual_link_id = (IloInt) Updated_Request_Vect[j].getVlinkId();
    	    					   class_QoS = (IloInt) Updated_Request_Vect[j].getVlinkQosCls();
    	    					   bid = (IloInt) Updated_Request_Vect[j].getBid();
    	    					   vnp_id = (IloInt) Updated_Request_Vect[j].getVnpId();
    	    					   period = (IloInt) Updated_Request_Vect[j].getPeriod();
    	    					   j++;
    	    				  }

    	    				  file12 <<src<<"\t"<<dest<<"\t"<<virtual_link_id<<"\t"<<class_QoS<<"\t"<<bid<<"\t"<<vnp_id<<"\t"<<period<<endl;
    	    			  }

    	    			file12.close();


    		//----------------------------------------------------------------------------------------------------------
    		//										creating f14_ph2VlinkChanges.txt
    		// File Format;	____________________________________________________
    		//				| <nb_removed_path>									|
    		//				| <nb_embedding_path>								|
    		//				| <vnp_id>  \t  <QoS_cls>  \t  <node_list dlmt(,)>	|
    		//				| <vnp_id>  \t  <QoS_cls>  \t  <node_list dlmt(,)>	|
    		//				| <vnp_id>  \t  <QoS_cls>  \t  <node_list dlmt(,)>	|
    		//				-----------------------------------------------------
    		//----------------------------------------------------------------------------------------------------------
    		cout<<"\n\t Saving added and removed paths (vlinks) into FILE: "<<f14_ph2AddRemovePaths<<endl;
    				ofstream file14(f14_ph2AddRemovePaths);

    				if (!file14)
    					cerr << "ERROR: could not open file "<< f14_ph2AddRemovePaths<< "for writing"<< endl;

    				file14<<nbRemovedPaths<<endl;
    				file14<<nb_embedding_path<<endl;

    				// Writing removed paths to file from RemovedPathVect[]
    				// During time slots t0, zero paths will be removed.
    				for(IloInt i=0;i<nbRemovedPaths;i++){
						file14<<Removed_request_Vect[i].getPeriod()<<"\t"<<Removed_request_Vect[i].getVnpId()<<"\t"<<Removed_request_Vect[i].getQosCls()<<"\t";
						IloNumArray  node_list(env,vect_length);
						arrayZeroInitialize(node_list,vect_length);
						Removed_request_Vect[i].getActvSnodeAry(node_list);

						IloInt k=0;
						IloBool more_nodes = true;
						while ((k<vect_length) && (more_nodes)){
							IloInt used_node = node_list[k];
							if (used_node !=0){
								file14<<used_node;
								k++;
								if(node_list[k]!=0) file14<<",";
							}
							else more_nodes=false;
						}
						file14<<endl;
					}


    				// Writing added paths to file
    				for(IloInt i=0;i<nb_embedding_path;i++){
    					file14<<current_period<<"\t"<<path_embedding_tab[i].getVnpId()<<"\t"<<path_embedding_tab[i].getQosCls()<<"\t";
    					IloNumArray  node_list(env,vect_length);
    					arrayZeroInitialize(node_list,vect_length);
    					path_embedding_tab[i].getActvSnodeAry(node_list);

    					IloInt k=0;
    					IloBool more_nodes = true;
    					while ((k<vect_length) && (more_nodes)){
    						IloInt used_node = node_list[k];
    						if (used_node !=0){
    							file14<<used_node;
    							k++;
    							if(node_list[k]!=0) file14<<",";
    						}
    						else more_nodes=false;
    					}
    					file14<<endl;
    				}
    				file14.close();

    		//---------------------------------------------------------------
    		//              Performance Evaluation of Embedding solution    -
    		//---------------------------------------------------------------

    	   for (l=0;l<NB_LINK;l++)
    	    {
    			current_value =(IloInt) used_arc_vect[l];
    			IloBool used_link = (current_value !=0);
                if (used_link)
    			  nb_used_arc++;
    	    }

    	    for (l=0;l<NB_NODE;l++)
    	    {
    			current_value =(IloInt) used_node_vect[l];
    			IloBool used_node = (current_value !=0);
                if (used_node)
    			  nb_used_node++;
    	    }

    	    IloNum available_bw = (IloNum) (nb_used_arc*SUBSTRATE_LINK_BW);
            IloNum available_cpu = (IloNum) (nb_used_node*SUBSTRATE_NODE_CPU);

    	    IloNum PIP_profit_unit_available_bw = (IloNum)((PIP_profit + Reserved_PIP_profit)/available_bw);
            IloNum PIP_profit_unit_available_cpu = (IloNum)((PIP_profit + Reserved_PIP_profit)/available_cpu);

    	    IloNum bw_efficiency = (IloNum)((used_bw + reserved_bw)/available_bw);
            IloNum cpu_efficiency = (IloNum)((used_cpu + reserved_cpu)/available_cpu);

    	    IloNum nb_hop_per_path = (IloNum)(nb_total_path_hops + nb_reserved_total_path_hops)/(IloNum)(nb_embedding_path + NB_Reserved_Requests);

    		cout<<endl;
            cout<<"PIP new profit:"<<PIP_profit<<endl;
    		cout<<"PIP reserved profit:"<<Reserved_PIP_profit<<endl;
    		cout<<"PIP profit:"<<PIP_profit + Reserved_PIP_profit<<endl;
            cout<<endl;
    		cout<<"PIP new cost:"<<PIP_cost<<endl;
            cout<<"PIP reserved cost:"<<Reserved_PIP_cost<<endl;
    		cout<<"PIP cost:"<<PIP_cost + Reserved_PIP_cost<<endl;
            cout<<endl;
    		cout<<"nb accepted new vnode:"<<nb_accepted_vnode<<endl;
            cout<<"nb accepted reserved vnode:"<<Nb_reserved_vnode<<endl;
    		cout<<endl;
    		cout<<"nb requests:"<<NB_REQUEST<<endl;
    		cout<<"nb new requests:"<<NB_ADD<<endl;
            cout<<"nb reserved requests:"<<NB_RESERVED<<endl;
            cout<<endl;
    		cout<<"nb accepted new requests:"<<nb_embedding_path<<endl;
    		cout<<"nb accepted reserved requests:"<<NB_Reserved_Requests<<endl;
            cout<<endl;
    		IloNum acceptance= (IloNum)nb_embedding_path/(IloNum)NB_ADD;
            cout<<"blocking:"<<(1 - acceptance)*100<<"%"<<endl;
            cout<<endl;
    		cout<<"new used bw:"<<used_bw<<endl;
            cout<<"reserved used bw:"<<reserved_bw<<endl;
            cout<<endl;
            cout<<"new used cpu:"<<used_cpu<<endl;
            cout<<"reserved used cpu:"<<reserved_cpu<<endl;
            cout<<endl;
    		cout<<"bw efficiency:"<<bw_efficiency<<endl;
            cout<<"PIP profit unit of available bw:"<<PIP_profit_unit_available_bw<<endl;
            cout<<endl;
    		cout<<"cpu efficiency:"<<cpu_efficiency<<endl;
    	    cout<<"PIP profit unit of available cpu:"<<PIP_profit_unit_available_cpu<<endl;
            cout<<endl;
    		cout<<"nb average hops per VN link:"<<nb_hop_per_path<<endl;

         //-------------------------------------------------------------------------------------------------------------
         //                                   End of Cplex model                                                       -
         //-------------------------------------------------------------------------------------------------------------


  }
catch (IloException& e)
  {
      cerr << "ERROR: " << e.getMessage()<< endl;
  }

  env.end();
  return f14_ph2AddRemovePaths;
} // END main
