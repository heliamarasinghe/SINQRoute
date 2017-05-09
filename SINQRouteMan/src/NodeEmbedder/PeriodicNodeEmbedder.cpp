/*
 * PeriodicNodeEmbedder.cpp
 *
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */

#include "../NodeEmbedder/NodeEmbedder.h"

void NodeEmbedder::embedPeriodicNodes(int currTslot, int bkup){
	cout<<"\n\t--------------- PeriodicNodeEmbedder: Embedding virtual nodes in TIME SLOT: "<<currTslot<<" ---------------"<<endl;

	int prevTslot = currTslot-1;

	const char*  f1_subTopo="DataFiles/init/f1_subTopo.txt";					// init/f1_subTopo.txt
	const char*  f2_linkQoS="DataFiles/init/f2_linkQoS.txt";					// init/f2_linkQoS.txt
	const char*  f3_nodeQoS="DataFiles/init/f3_nodeQoS.txt";					// init/f3_nodeQoS.txt

	char f4_vnReqTopo[50];
	snprintf(f4_vnReqTopo, sizeof(char) * 50, "DataFiles/t%i/f4_vnReqTopo.txt", currTslot);					// currTslot/f4_vnReqTopo.txt
	char f5_subUnitCost[50];
	snprintf(f5_subUnitCost, sizeof(char) * 50, "DataFiles/t%i/f5_subUnitCost.txt", currTslot);				// currTslot/f5_subUnitCost.txt
	char f6_vnReqNode[50];
	snprintf(f6_vnReqNode, sizeof(char) * 50, "DataFiles/t%i/f6_vnReqNode.txt", currTslot);					// currTslot/f6_vnReqNode.txt
	//const char*  f11_ph2EmbeddedVnodes="DataFiles/t0/f11_ph2EmbeddedVnodes.txt";		

	char prv_f11_ph2EmbeddedVnodes[50];
	if(bkup==0) snprintf(prv_f11_ph2EmbeddedVnodes, sizeof(char) * 50, "DataFiles/t%i/f11_ph2EmbeddedVnodes.txt", prevTslot); // prevTslot/f11_ph2EmbeddedVnodes.txt
	else if(bkup==1) snprintf(prv_f11_ph2EmbeddedVnodes, sizeof(char) * 50, "DataFiles/t%i/f11_ph2EmbeddedVnodes.txt", prevTslot); // prevTslot/f11_ph2EmbeddedVnodes.txt
	else if (bkup==2) snprintf(prv_f11_ph2EmbeddedVnodes, sizeof(char) * 50, "DataFiles/t%i/fbk11_ph2EmbeddedVnodes.txt", prevTslot); // prevTslot/fbk11_ph2EmbeddedVnodes.txt


	char f7_vnReqLink[50];
	snprintf(f7_vnReqLink, sizeof(char) * 50, "DataFiles/t%i/f7_vnReqLink.txt", currTslot);					// currTslot/f7_vnReqLink.txt

	// Files being written
	char f8_ph1EmbeddedVnodes[50];
	snprintf(f8_ph1EmbeddedVnodes, sizeof(char) * 50, "DataFiles/t%i/f8_ph1EmbeddedVnodes.txt", currTslot);	//f8_ph1EmbeddedVnodes.txt
	char f9_ph1AcceptedVlinks[50];
	snprintf(f9_ph1AcceptedVlinks, sizeof(char) * 50, "DataFiles/t%i/f9_ph1AcceptedVlinks.txt", currTslot);	//f9_ph1AcceptedVlinks.txt
	char f10_cplexNodeModel[50];
	snprintf(f10_cplexNodeModel, sizeof(char) * 50, "DataFiles/t%i/f10_cplexNodeModel.lp", currTslot);

	IloEnv env;

	try
	{


		//********************************************************************************************************
		//                                             Variables Declaration                                     *
		//********************************************************************************************************


		if(NODE_DBG0)cout<<"\t Declaring and Initializing Variables"<<endl;
		IloInt NB_NODE=0, NB_LINK=0, NB_REQUEST=0, NB_NODE_CLASS=0, NB_LINK_CLASS=0, COUNT_PATH=0;
		IloInt NB_VNODE_SNODE=0, x_VECT_LENGTH=0, NB_VNP=0, NB_VNP_NODE=0, NB_POTANTIAL_EMBEDDING_NODES=0;

		IloInt i=0,j=0,k=0, l=0;
		IloInt src=0, dest=0, class_QoS=0, vnp_id=0, hops=0, bw=0;
		IloInt request_id=0;
		IloInt bid=0, no_more_emb_path=0, nb_vnodes=0, nb_vlinks=0, nb_accepted_vnode=0;
		IloInt cls=0, vnode=0, embdSnode=0;

		IloInt current_location=0;
		IloInt nb_candidate_embedding_nodes=0;

		IloInt src_candidate=0, dest_candidate=0, index=0, found=0;

		IloInt src_emb=0, dest_emb=0, emb_path_cost=0, src_emb_index=0, dest_emb_index=0;
		IloInt vn_node=0, link=0, virtual_link_id=0, num_candidate_embedding_nodes=0;

		IloInt current_virtual_link_id=0, current_vnp_id=0, vlink_src=0, vlink_dest=0, length=0;

		IloInt period=0, NB_RESERVED=0, NB_ADD=0, PIP_profit=0;

		IloInt exit_src=0, exit_dest=0, virtual_link_class=0, current_period=0, nb_accepted_req=0, nb_previous_vnode=0;
		IloInt vlink_src_cls=0, vlink_dest_cls =0, src_cpu=0, memory=0, storage=0, blade=0, dest_cpu=0, src_memory=0, src_storage=0, dest_memory=0, dest_storage=0, length_vect=0, loc=0, node_cls=0, cpu=0, Nb_reserved_vnode=0;

		//------------------------------------------------------------------------------------------
		//                     Reading of the topology of VN requests                                 -
		//------------------------------------------------------------------------------------------

		if(NODE_DBG0)cout<<"\t Reading VN requests topology from FILE: "<<f4_vnReqTopo<<endl;
		//const char*  filename1="C:/ILOG/CPLEX121/abdallah_work/data/vn_topology_history_us_metro20_p9.txt";
		ifstream file4(f4_vnReqTopo);

		if (!file4)
			cerr << "ERROR: could not open file `"<< f4_vnReqTopo << "`for reading"<< endl;

		//file1>>NB_TOTAL_VNP;
		file4>>NB_VNP;					// This NB_VNP reading seems important. Other parts of this file reading is not used.
		//cout<<"\n\tNB_VNP = "<<NB_VNP<<endl;
		VN_Request_Topology_Tab VN_Request_Topology_Vect(env, NB_VNP);

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
		if(NODE_DBG0)cout<<"\t Reading VN requests details from FILE: "<<f7_vnReqLink<<endl;
		//const char*  filename2="C:/ILOG/CPLEX121/abdallah_work/data/traffic_us_metro20_p9.txt";
		ifstream file7(f7_vnReqLink);

		if (!file7)
			cerr << "ERROR: could not open file `"<< f7_vnReqLink<< "`for reading"<< endl;

		file7>>current_period;
		file7>>NB_REQUEST;
		file7>>NB_RESERVED;
		file7>>NB_ADD;

		VlinkReqAryType  Reserved_Request_Vect(env,NB_RESERVED);
		VlinkReqAryType  Added_Request_Vect(env,NB_ADD);

		j=0;

		for(i=0;i<NB_REQUEST;i++)
		{
			file7>>src>>dest>>virtual_link_id>>class_QoS>>bid>>vnp_id>>period;

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

		file7.close();

		//----------------------------------------------------------------------------------
		//                             Reading of Network Substrate Topology               -
		//----------------------------------------------------------------------------------
		if(NODE_DBG0)cout<<"\t Reading Substrate Topology from FILE: "<<f1_subTopo<<endl;
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

		IloNumArray Available_cpu_vect(env,NB_NODE);

		for(i=0; i<NB_NODE;i++)
			Available_cpu_vect[i]= SUBSTRATE_NODE_CPU;

		//--------------------------------------------------------------------------------------------------------
		//                            Reading of Classes of Services requirements                                -
		//--------------------------------------------------------------------------------------------------------

		//---------- Link QoS classes------------------
		if(NODE_DBG0)cout<<"\t Reading Link QoS classes from FILE: "<<f2_linkQoS<<endl;
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
		if(NODE_DBG0) cout<<"\t Reading Node QoS classes from FILE: "<<f3_nodeQoS<<endl;
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
		//                          	     File 5: Reading substrate node and link unit costs  	   	   		                         -
		//------------------------------------------------------------------------------------------------------------
		if(NODE_DBG0) cout<<"\t Reading substrate unit costs from FILE: "<<f5_subUnitCost<<endl;
		//const char*  filename6="C:/ILOG/CPLEX121/abdallah_work/data/substrate_cost_us_metro20_p9.txt";
		ifstream file5(f5_subUnitCost);

		if (!file5)
			cerr << "ERROR: could not open file "<< f5_subUnitCost<< "for reading"<< endl;

		IloNumArray    bw_unit_cost_vect(env,NB_LINK);
		IloNumArray    cpu_unit_cost_vect(env,NB_NODE);
		IloNumArray     gpu_unit_cost_vect(env,NB_NODE);
		IloNumArray     storage_unit_cost_vect(env,NB_NODE);
		IloNumArray     ram_unit_cost_vect(env,NB_NODE);
		IloNumArray     blade_unit_cost_vect(env,NB_NODE);

		for(j=0;j<NB_LINK;j++){ file5>>bw_unit_cost_vect[j];}
		for(j=0;j<NB_NODE;j++){ file5>>cpu_unit_cost_vect[j];}
		for(j=0;j<NB_NODE;j++){ file5>>gpu_unit_cost_vect[j];}
		for(j=0;j<NB_NODE;j++){ file5>>storage_unit_cost_vect[j];}
		for(j=0;j<NB_NODE;j++){ file5>>ram_unit_cost_vect[j];}
		for(j=0;j<NB_NODE;j++){ file5>>blade_unit_cost_vect[j];}

		/*for(j=0;j<NB_LINK;j++)
			 {
				file6>>unit_cost;
                bw_unit_cost_vect[j] = (IloNum)unit_cost;

				//cout<<"BW unit cost of link:"<<j+1<<": "<<unit_cost<<endl;
			  }

            for(j=0;j<NB_NODE;j++)
			 {
				file6>>node_cost;
                cpu_unit_cost_vect[j] = (IloNum)node_cost;

				//cout<<"Substrate node:"<<j+1<<" has a cost of: "<<node_cost<<endl;
			  }*/

		file5.close();

		//------------------------------------------------------------------------------------------
		//                     Reading of potantial embedding location of Virtual Nodes            -
		//------------------------------------------------------------------------------------------

		//const char*  filename7="C:/ILOG/CPLEX121/abdallah_work/data/potantial_VNode_location_history_us_metro20_p9.txt";
		if(NODE_DBG0)cout<<"\t Reading potantial vNode embedding locations from FILE: "<<f6_vnReqNode<<endl;
		ifstream file6(f6_vnReqNode);

		if (!file6)
			cerr << "ERROR: could not open file `"<< f6_vnReqNode << "`for reading"<< endl;

		//file7>>NB_TOTAL_VNP_NODE;
		file6>>NB_VNP_NODE;

		VnodeReqAryType  VNode_Potantial_Location_Vect(env,NB_VNP_NODE);

		length = MAX_NB_LOCATION;

		IloNumArray vect_location(env,length);
		length= MAX_NB_LOCATION;


		for (i=0;i<NB_VNP_NODE;i++){
			file6>>vn_node>>node_cls>>vnp_id>>period;

			VNode_Potantial_Location_Vect[i].SetVirtual_Node_Id((IloInt)vn_node);
			VNode_Potantial_Location_Vect[i].SetQoS_Class((IloInt)node_cls);
			VNode_Potantial_Location_Vect[i].SetVNP_Id((IloInt)vnp_id);
			VNode_Potantial_Location_Vect[i].SetPeriod((IloInt)period);

			arrayZeroInitialize(vect_location,length);

			for (j=0;j<length;j++){
				file6>>current_location;
				vect_location[j] = (IloNum) current_location;
			}

			VNode_Potantial_Location_Vect[i].SetCandidate_Location_Tab(vect_location);
		}

		file6.close();


		//--------------------------------------------------------------------------------------------
		//             Reading of embedding paths of reserved requests                               -
		//--------------------------------------------------------------------------------------------

		//cout<<"period:"<<period<<endl;
		if(NODE_DBG0)cout<<"\tReading embedding paths of retained requests  from File: "<<prv_f11_ph2EmbeddedVnodes<<endl;

		//const char*  filename8="C:/ILOG/CPLEX121/abdallah_work/data/phaseII_embedding_us_metro20_p8.txt";
		ifstream prv_file11(prv_f11_ph2EmbeddedVnodes);

		if (!prv_file11)
			cerr << "ERROR: could not open file "<< prv_f11_ph2EmbeddedVnodes <<"for reading"<< endl;

		prv_file11>>nb_previous_vnode;

		Virtual_Node_Embedding_tab Previous_Node_Embedding_Vect(env,nb_previous_vnode);

		if(NODE_DBG0)cout<<"\tTotal vnodes embedded by the end of tSlot "<< prevTslot <<" = "<<nb_previous_vnode<<endl;
		if(NODE_DBG0)cout<<"\tperiod\tvnpId\tvNode\tembdedSnod\tQos\tRtnd-Rmvd"<<endl;

		for(i=0;i<nb_previous_vnode;i++){
			prv_file11>>vnode>>vnp_id>>embdSnode>>cls>>period;


			found = (IloInt) search_reserved_vnode(Reserved_Request_Vect, NB_RESERVED, vnode, vnp_id, period);

			if (found == 1){
				cpu = (IloInt) Node_Class_QoS_Vect[cls-1].getVnodeCpuReq();
				if(NODE_DBG0)cout<<"\t"<<period<<"\t"<<vnp_id<<"\t"<<vnode<<"\t"<<embdSnode<<"\t\t"<<cls<<"\tRTND"<<endl;

				Available_cpu_vect[embdSnode-1] = Available_cpu_vect[embdSnode-1] - cpu;

				Previous_Node_Embedding_Vect[Nb_reserved_vnode].SetVirtual_Node_Id(vnode);
				Previous_Node_Embedding_Vect[Nb_reserved_vnode].SetVNP_Id(vnp_id);
				Previous_Node_Embedding_Vect[Nb_reserved_vnode].setCandidSnodeId(embdSnode);
				Previous_Node_Embedding_Vect[Nb_reserved_vnode].SetQoS_Class(cls);
				Previous_Node_Embedding_Vect[Nb_reserved_vnode].SetPeriod(period);
				Nb_reserved_vnode++;

			}
			else
				if(NODE_DBG0)cout<<"\t"<<period<<"\t"<<vnp_id<<"\t"<<vnode<<"\t"<<embdSnode<<"\t"<<cls<<"\trmvd"<<endl;
		}
		prv_file11.close();
		if(NODE_DBG0)cout<<"\t File reading successful"<<endl;


		//------------------------------------------------------------------------------------------
		//                             Network definition                                          -
		//------------------------------------------------------------------------------------------
		if(NODE_DBG1)cout<<"\n\t Network definition"<<endl;

		SnodesAryType  Vect_Substrate_Graph(env,NB_NODE);

		substrate_Graph_creation(Vect_Substrate_Graph, Vect_Link, NB_LINK, NB_NODE, env);

		adjacency_list_creation(Vect_Substrate_Graph, NB_NODE, env);

		//  substrate_graph_printing(Vect_Substrate_Graph, env, NB_NODE);





		//------------------------------------------------------------------------------------------
		//                     Calculation of the all candidates embdedding substrate paths        -
		//------------------------------------------------------------------------------------------

		if(NODE_DBG1)cout<<"\n\t Calculating embdedding substrate paths"<<endl;
		NB_POTANTIAL_EMBEDDING_NODES = MAX_NB_LOCATION*MAX_NB_LOCATION*NB_ADD;

		Meta_Embedding_Nodes_tab  Potantial_Embedding_Nodes_Vect(env, NB_POTANTIAL_EMBEDDING_NODES);

		IloNumArray candidate_src_vect(env,MAX_NB_LOCATION);
		IloNumArray candidate_dest_vect(env,MAX_NB_LOCATION);
		cout<<"\n\t New vLinks during tSlot (NB_ADD) = "<<NB_ADD<<endl;
		//cout<<"\t Added_Request_Vect.size = "<<Added_Request_Vect.getSize()<<endl;
		//cout<<"\titerator\tsrc\tdest\tvnp_id\tvlinkclass\tvlinkid\t\thops"<<endl;
		for(j=0;j<NB_ADD;j++)
		{
			src = (IloInt) Added_Request_Vect[j].getSrcVnode();
			dest = (IloInt) Added_Request_Vect[j].getDestVnode();
			vnp_id = (IloInt) Added_Request_Vect[j].getVnpId();
			virtual_link_class = (IloInt) Added_Request_Vect[j].getVlinkQosCls();
			virtual_link_id = (IloInt)Added_Request_Vect[j].getVlinkId();

			if(Link_Class_QoS_Vect.getSize()<virtual_link_class)
				cerr<<"ERROR: Number of link QoS classes does not match. Check files:"<<f7_vnReqLink<<"\n\t and "<<f2_linkQoS;

			hops = (IloInt) Link_Class_QoS_Vect[virtual_link_class-1].GetQoS_Class_Max_Hops();

			//cout<<"\t"<<j<<"\t\t"<<src<<"\t"<<dest<<"\t"<<vnp_id<<"\t"<<virtual_link_class<<"\t\t"<<virtual_link_id<<"\t\t"<<hops<<endl;

			arrayZeroInitialize(candidate_src_vect,length);
			search_candidate_location(src, VNode_Potantial_Location_Vect, vnp_id, candidate_src_vect,NB_VNP_NODE);

			arrayZeroInitialize(candidate_dest_vect,length);
			search_candidate_location(dest, VNode_Potantial_Location_Vect, vnp_id, candidate_dest_vect,NB_VNP_NODE);

			//cout<<"\tvirtual_link_id:"<<virtual_link_id<<endl;

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
					//cout<<"\t\t src_not_nul"<<endl;
					while ((l<MAX_NB_LOCATION)&&(exit_dest ==0))
					{

						dest_candidate = (IloInt) candidate_dest_vect[l];
						IloBool dest_not_nul = (dest_candidate!=0);

						if (dest_not_nul)
						{
							if (src_candidate!=dest_candidate)
							{
								Potantial_Embedding_Nodes_Vect[nb_candidate_embedding_nodes].setCandidSrcSnode((IloInt)src_candidate);
								Potantial_Embedding_Nodes_Vect[nb_candidate_embedding_nodes].setCandidDestSnode((IloInt)dest_candidate);
								Potantial_Embedding_Nodes_Vect[nb_candidate_embedding_nodes].setVlinkId((IloInt) virtual_link_id);
								Potantial_Embedding_Nodes_Vect[nb_candidate_embedding_nodes].setVlinkQosCls(virtual_link_class);
								Potantial_Embedding_Nodes_Vect[nb_candidate_embedding_nodes].setVnpId((IloInt)vnp_id);
								Potantial_Embedding_Nodes_Vect[nb_candidate_embedding_nodes].setEmbeddingNodeCombinationId((IloInt)num_candidate_embedding_nodes);

								nb_candidate_embedding_nodes++;
								num_candidate_embedding_nodes++;


							}// src != dest

						}// dest not null
						else
							exit_dest=1;

						l++;
						//cout<<"\t\t\texit_dest = "<<exit_dest<<endl;
					}// while possible destination node
				}
				else
					exit_src=1;

				k++;

			}// while possible source node


		}// for all request


		// cout<<"nb_candidate_embdedding_nodes:"<<nb_candidate_embedding_nodes<<endl;

		//------------------------------------------------------------------------------------------
		//                               Calculation of the Shortest path                          -
		//------------------------------------------------------------------------------------------
		if(NODE_DBG1)cout<<"\n\t Calculating Shortest paths"<<endl;

		MetaSubPathAryType       Path_Vect(env, nb_candidate_embedding_nodes);

		for(j=0;j<nb_candidate_embedding_nodes;j++){
			src = (IloInt)  Potantial_Embedding_Nodes_Vect[j].getCandidSrcSnode();
			dest = (IloInt) Potantial_Embedding_Nodes_Vect[j].getCandidDestSnode();
			class_QoS = (IloInt) Potantial_Embedding_Nodes_Vect[j].getVlinkQosCls();
			request_id = (IloInt) Potantial_Embedding_Nodes_Vect[j].getEmbeddingNodeCombinationId();
			virtual_link_id = (IloInt) Potantial_Embedding_Nodes_Vect[j].getVlinkId();
			vnp_id = (IloInt) Potantial_Embedding_Nodes_Vect[j].getVnpId();
			shortest_path(Vect_Substrate_Graph, Path_Vect, src, dest, request_id, vnp_id, virtual_link_id, COUNT_PATH, env);
		}

		if(NODE_DBG1)cout<<"\t\tCOUNT_PATH:"<<COUNT_PATH<<endl;
		//cout<<"\t\tnb_candidate_embedding_nodes:"<<nb_candidate_embedding_nodes<<endl;

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

		NB_VNODE_SNODE = 2*NB_VNP_NODE*NB_NODE;

		IloNumVarArray x(env);   // used to decide on the embedding of VN on substrate nodes
		IloNumVarArray z(env);     // used to decide on the acceptance of VNP request

		Virtual_Node_Embedding_tab  embedding_trace_x(env, NB_VNODE_SNODE);

		//cout<<"\n\t\tNB_VNP_NODE:"<<NB_VNP_NODE<<endl;
		//cout<<"\t\tNB_VNODE_SNODE:"<<NB_VNODE_SNODE<<endl;

		//******************************************************************************************************
		//                      Declaration of ILP Solver                                                      *
		//******************************************************************************************************
		cout<<"\n\t Declaring of ILP Solver"<<endl;

		IloCplex ILP_solver(ILP_model);


		ILP_solver.setParam(IloCplex::PerInd,1);

		ILP_solver.setParam(IloCplex::EpGap,GAP);
		ILP_solver.setParam(IloCplex::FracCuts,1);
		//ILP_solver.setParam(IloCplex::IntSolLim,6);
		ILP_solver.setParam(IloCplex::MIQCPStrat,2);
		ILP_solver.setParam(IloCplex::TiLim,3600);
		ILP_solver.setParam(IloCplex::NodeSel,1);


		//*****************************************************************************************************
		//                       ILP Model definition                                                         *
		//*****************************************************************************************************

		//------------------------------------------------------------------------
		//  A- Creation of VN embedding variables								  -
		//------------------------------------------------------------------------
		cout<<"\t A- Creation of VN embedding variables xAry"<<endl;
		x_VECT_LENGTH = (IloInt) creation_node_embedding_var(VNode_Potantial_Location_Vect, NB_VNP_NODE, x, embedding_trace_x, env);
		if(NODE_DBG2)cout<<"\t\tx_VECT_LENGTH = "<<x_VECT_LENGTH<<endl;
		//------------------------------------------------------------------------
		//  B- no partially VN Embedding: accept all virtual links or block all  -
		//------------------------------------------------------------------------
		cout<<"\t B- no partially VN Embedding: accept all virtual links or block all"<<endl;
		no_partially_VN_embedding(Added_Request_Vect, NB_ADD, NB_VNP, x, z, Potantial_Embedding_Nodes_Vect, nb_candidate_embedding_nodes,ILP_model, embedding_trace_x, x_VECT_LENGTH, env);
		//-----------------------------------------------------------------------
		//  C- A virtual node can be assigned to only one substrate node      -
		//-----------------------------------------------------------------------
		cout<<"\t C- A virtual node can be assigned to only one substrate node"<<endl;
		VNode_embedding_clash_constraint(VNode_Potantial_Location_Vect, NB_VNP_NODE, embedding_trace_x, x, x_VECT_LENGTH,z, ILP_model, env);
		//-----------------------------------------------------------------------------
		// D-  Substrate Node CPU Capacity                                            -
		//-----------------------------------------------------------------------------
		cout<<"\t D- Allocated CPU must not exceed substrate Node CPU Capacity"<<endl;
		substrate_node_cpu_constraint(NB_NODE, embedding_trace_x, x, x_VECT_LENGTH, ILP_solver, VNode_Potantial_Location_Vect, NB_VNP_NODE, Node_Class_QoS_Vect, Available_cpu_vect, env);
		//--------------------------------------------------------------------------------
		// E- Calculation of the objective function Maximize the PIP Profit              -
		//--------------------------------------------------------------------------------
		cout<<"\t E- Calculation of the objective function Maximize the PIP Profit"<<endl;
		IloExpr substrate_network_revenue(env);
		IloExpr substrate_cost(env);
		for(i=0;i<NB_ADD;i++){
			bid = (IloInt) Added_Request_Vect[i].getBid();
			vnp_id = (IloInt) Added_Request_Vect[i].getVnpId();
			virtual_link_id = (IloInt) Added_Request_Vect[i].getVlinkId();

			//if(NODE_DBG3)cout<<"virtual_link_id:"<<virtual_link_id<<endl;
			vlink_src  = (IloInt) Added_Request_Vect[i].getSrcVnode();
			vlink_dest = (IloInt) Added_Request_Vect[i].getDestVnode();
			vlink_src_cls = (IloInt) search_vnode_class(vlink_src, vnp_id,VNode_Potantial_Location_Vect, NB_VNP_NODE);
			vlink_dest_cls = (IloInt) search_vnode_class(vlink_dest, vnp_id,VNode_Potantial_Location_Vect, NB_VNP_NODE);
			src_cpu= (IloInt) Node_Class_QoS_Vect[vlink_src_cls-1].getVnodeCpuReq();
			dest_cpu= (IloInt) Node_Class_QoS_Vect[vlink_dest_cls-1].getVnodeCpuReq();

			substrate_network_revenue+= bid*z[vnp_id-1];

			class_QoS = (IloInt) Added_Request_Vect[i].getVlinkQosCls();
			bw = (IloInt)Link_Class_QoS_Vect[class_QoS-1].getQosClsBw();

			j=0;
			no_more_emb_path=0;

			while ((j < nb_candidate_embedding_nodes)&& (no_more_emb_path == 0)){
				current_virtual_link_id = (IloInt) Potantial_Embedding_Nodes_Vect[j].getVlinkId();
				current_vnp_id = (IloInt) Potantial_Embedding_Nodes_Vect[j].getVnpId();

				IloBool equal_current_vlink =(current_virtual_link_id == virtual_link_id);
				IloBool equal_current_vnp_id =( current_vnp_id == vnp_id);

				if((equal_current_vnp_id)&&(equal_current_vlink)){
					src_emb = (IloInt)  Potantial_Embedding_Nodes_Vect[j].getCandidSrcSnode();
					dest_emb = (IloInt) Potantial_Embedding_Nodes_Vect[j].getCandidDestSnode();

					emb_path_cost = (IloInt) calculate_cost_potantial_emb_shortestpath(Path_Vect,COUNT_PATH, src_emb, dest_emb,
							vnp_id, bw, virtual_link_id, bw_unit_cost_vect, cpu_unit_cost_vect, src_cpu, dest_cpu, ram_unit_cost_vect, src_memory, dest_memory, storage_unit_cost_vect, src_storage, dest_storage,env);

					src_emb_index = (IloInt) search_var_index(embedding_trace_x, vlink_src, src_emb, vnp_id, x_VECT_LENGTH);
					dest_emb_index = (IloInt) search_var_index(embedding_trace_x, vlink_dest, dest_emb, vnp_id, x_VECT_LENGTH);

					//if(NODE_DBG3)cout<<"emb_path_cost:"<<emb_path_cost<<endl;
					substrate_cost+= emb_path_cost*x[src_emb_index]*x[dest_emb_index];
				}
				j++;
			}// go through the list of potantial embedding paths/nodes.
		}// go through the list of virtual links requests


		IloObjective obj_func(IloMaximize(env));
		ILP_model.add(obj_func);

		obj_func.setExpr(substrate_network_revenue - substrate_cost);

		IloRange range_const(env,-obj_func,0);
		ILP_model.add(range_const);

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
		cout<<"\t Solving ILP problem"<<endl;
		ILP_solver.exportModel(f10_cplexNodeModel);
		ILP_solver.solve();
		//cout<<"\n\t Done solving"<<endl;

		//****************************************************************************************************
		//								save of initiale solution		  								       *
		//*****************************************************************************************************

		IloNumArray xvals(env);
		IloNumArray zvals(env);

		if(NODE_DBG3)cout<<"\n\tgetting x values from solver"<<endl;
		ILP_solver.getValues(xvals, x);
		cout<<"\nxvals = "<<xvals<<endl;


		if(NODE_DBG3)cout<<"\n\tgetting z values from solver"<<endl;
		ILP_solver.getValues(zvals, z);				// ERROR(catch block): The referenced IloExtractable has not been extracted by the IloAlgorithm
		cout<<"\nzvals = "<<zvals<<endl<<endl;

		/*const char*  filename8="C:/ILOG/CPLEX121/abdallah_work/results/initiale_solution.txt";
        ofstream file8(filename8);
        file8<<vals<<endl;
        file8.close();*/

		//****************************************************************************************************
		//                      Printing of embedding solution details                                       *
		//****************************************************************************************************

		IloNumArray accepted_vnp_requests(env, NB_VNP);
		arrayZeroInitialize(accepted_vnp_requests, NB_VNP);

		Virtual_Node_Embedding_tab Vnode_Embedding_Vect(env,NB_VNODE_SNODE);

		for(i=0;i<x_VECT_LENGTH;i++){
			IloNum current_value = (IloNum) xvals[i];

			if (current_value > EPSELON_1) {
				l=0;
				found=0;

				while (found==0) {
					index = (IloInt) embedding_trace_x[l].getXindex();
					IloBool equal_index = (index == i);
					if (equal_index){
						found=1;

						vnode = (IloInt) embedding_trace_x[l].getVnodeId();
						embdSnode = embedding_trace_x[l].getCandidSnodeId();
						vnp_id = embedding_trace_x[l].getVnpId();
						if(NODE_DBG4)cout<<" virtual node: "<<vnode<<"belongining to VNP: "<< vnp_id<<"was embedded to substrate node: "<<embdSnode<<endl;

						Vnode_Embedding_Vect[nb_accepted_vnode].SetVirtual_Node_Id(vnode);
						Vnode_Embedding_Vect[nb_accepted_vnode].SetVNP_Id(vnp_id);
						Vnode_Embedding_Vect[nb_accepted_vnode].setCandidSnodeId(embdSnode);

						nb_accepted_vnode++;


						IloBool is_new_vnp = (accepted_vnp_requests[vnp_id-1]==0);
						if (is_new_vnp)
							accepted_vnp_requests[vnp_id-1]=1;
					}

					l++;
				}// end while

			}// end if non zero

		} // end for x var elements

		env.out() <<"\tSolution Status="<<ILP_solver.getStatus() <<endl;
		PIP_profit = (IloInt) ILP_solver.getObjValue();

		env.out() <<"\tPIP_profit ="<<PIP_profit<<endl;


		//**********************************************************************************************************
		//                             Save VN embedding solution                                                  *
		//**********************************************************************************************************

		cout<<"\n\tSaving phase 1 vNode embedding solution in file: "<<f8_ph1EmbeddedVnodes<<endl;
		//const char*  filename9="C:/ILOG/CPLEX121/abdallah_work/data/phaseI_embedding_us_metro20_p9.txt";
		ofstream file8(f8_ph1EmbeddedVnodes);

		if (!file8)
			cerr << "ERROR: could not open file "<< f8_ph1EmbeddedVnodes<< "for reading"<< endl;

		file8<<nb_accepted_vnode<<endl;
		cout<<"\tacptdVnodeCount: "<<nb_accepted_vnode<<endl;
		cout<<"\tperiod\tvnp_id\tvnode\tembdSnode\tqosCls"<<endl;
		for(i=0;i<nb_accepted_vnode;i++){
			vnode  = (IloInt) Vnode_Embedding_Vect[i].getVnodeId();
			vnp_id = (IloInt) Vnode_Embedding_Vect[i].getVnpId();
			embdSnode  = (IloInt) Vnode_Embedding_Vect[i].getCandidSnodeId();

			cls = (IloInt) search_vnode_class(vnode, vnp_id, VNode_Potantial_Location_Vect, NB_VNP_NODE);
			cout<<"\t"<<current_period<<"\t"<<vnp_id <<"\t"<<vnode<<"\t"<<embdSnode<<"\t\t"<<cls<<endl;

			//f8>>vnode>>vnp_id>>snode>>cls>>period;
			file8<<vnode<<"\t"<<vnp_id <<"\t"<<embdSnode<<"\t"<<cls<<"\t"<<current_period<<endl;
		}
		file8.close();

		//---------------------------------------------------------------
		// Update of traffic demand with respect to blocked demand      -
		//---------------------------------------------------------------

		nb_accepted_req=0;

		VlinkReqAryType  Updated_Request_Vect(env,NB_REQUEST);

		for(i=0;i<NB_ADD;i++){
			vnp_id = (IloInt) Added_Request_Vect[i].getVnpId();

			IloNum current_value = (IloNum) zvals[vnp_id-1];

			if (current_value > EPSELON_1) {
				src = (IloInt) Added_Request_Vect[i].getSrcVnode();
				dest = (IloInt) Added_Request_Vect[i].getDestVnode();
				virtual_link_id = (IloInt) Added_Request_Vect[i].getVlinkId();
				class_QoS = (IloInt) Added_Request_Vect[i].getVlinkQosCls();
				bid = (IloInt) Added_Request_Vect[i].getBid();
				period = (IloInt) Added_Request_Vect[i].getPeriod();

				Updated_Request_Vect[nb_accepted_req].setSrcVnode((IloInt)src);
				Updated_Request_Vect[nb_accepted_req].setDestVnode((IloInt)dest);
				Updated_Request_Vect[nb_accepted_req].setVlinkId((IloInt)virtual_link_id);
				Updated_Request_Vect[nb_accepted_req].setVlinkQosCls((IloInt)class_QoS);
				Updated_Request_Vect[nb_accepted_req].SetBid((IloInt)bid);
				Updated_Request_Vect[nb_accepted_req].setVnpId((IloInt)vnp_id);
				Updated_Request_Vect[nb_accepted_req].SetPeriod((IloInt)period);

				nb_accepted_req++;
			}
		}


		cout<<"\n\tSaving phase 1 accepted link details in file: "<<f9_ph1AcceptedVlinks<<endl;
		//const char*  filename10="C:/ILOG/CPLEX121/abdallah_work/data/PhaseI_accepted_traffic_us_metro20_p9.txt";
		ofstream file9(f9_ph1AcceptedVlinks);

		if (!file9)
			cerr << "ERROR: could not open file `"<< f9_ph1AcceptedVlinks << "`for reading"<< endl;

		NB_REQUEST =  NB_RESERVED + nb_accepted_req;

		file9<<current_period<<endl;
		file9<<NB_REQUEST<<endl;
		file9<<NB_RESERVED<<endl;
		file9<<nb_accepted_req<<endl;

		cout<<"\tcurrent_period: "<<current_period<<endl;
		cout<<"\tNB_REQUEST:     "<<NB_REQUEST<<endl;
		cout<<"\tNB_RESERVED:    "<<NB_RESERVED<<endl;
		cout<<"\tnb_accepted_req:"<<nb_accepted_req<<endl;

		cout<<"\tperiod\tvnpId\tvlinkId\tsrc\tdest\tqos\tbid"<<endl;
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

			cout<<"\t"<<period<<"\t"<<vnp_id<<"\t"<<virtual_link_id<<"\t"<<src<<"\t"<<dest<<"\t"<<class_QoS<<"\t"<<bid<<endl;
			file9 <<src<<"\t"<<dest<<"\t"<<virtual_link_id<<"\t"<<class_QoS<<"\t"<<bid<<"\t"<<vnp_id<<"\t"<<period<<endl;
		}

		file9.close();

		//-------------------------------------------------------------------------------------------------------------
		//                                   End of Cplex model                                                       -
		//-------------------------------------------------------------------------------------------------------------

		cout<<"\n\tDONE: Phase-I Node Embedding for TIME SLOT: "<<currTslot<<endl;
	}
	catch (IloException& e)
	{
		cerr << "ERROR(catch block): " << e.getMessage()<< endl;
	}

	env.end();

} // END main
