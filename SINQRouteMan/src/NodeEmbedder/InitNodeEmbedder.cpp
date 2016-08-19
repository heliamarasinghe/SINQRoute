#include "../NodeEmbedder/NodeEmbedder.h"



//------------------------------------------------------------------------------------------------------------------
//                                                                                                                 -
//                              Beginning of the Program                                                                -
//                                                                                                                 -
//                                                                                                                 -
//------------------------------------------------------------------------------------------------------------------


void NodeEmbedder::embedInitNodes(){
	cout<<"\n\t *** Initial Node Embedder ***"<<endl;
	//-------------------------------------
	//	 Concert Technology Environment  -
	//-------------------------------------

	IloEnv env;

	try
	{
		// Files being read
		const char*  f1_subTopo		="DataFiles/init/f1_subTopo.txt";			// init/f1_subTopo.txt
		const char*  f2_linkQoS		="DataFiles/init/f2_linkQoS.txt";			// init/f2_linkQoS.txt
		const char*  f3_nodeQoS		="DataFiles/init/f3_nodeQoS.txt";			// init/f3_nodeQoS.txt

		const char*  f4_vnReqTopo	="DataFiles/t0/f4_vnReqTopo.txt";			// t0/f4_vnReqTopo.txt
		const char*  f5_subUnitCost	="DataFiles/t0/f5_subUnitCost.txt";			// t0/f5_subUnitCost.txt
		const char*  f6_vnReqNode	="DataFiles/t0/f6_vnReqNode.txt";			// t0/f6_vnReqNode.txt
		const char*  f7_vnReqLink	="DataFiles/t0/f7_vnReqLink.txt";			// t0/f7_vnReqLink.txt

		// Files being written
		const char*  f8_EmbeddedVnodes="DataFiles/t0/f8_ph1EmbeddedVnodes.txt";	//f8_ph1EmbeddedVnodes.txt
		const char*  f9_AcceptedVlinks="DataFiles/t0/f9_ph1AcceptedVlinks.txt";	//f9_ph1AcceptedVlinks.txt
		const char*  f10_cplexNodeModel="DataFiles/t0/f10_cplexNodeModel.lp";


		//----------------------------------------------------------------------------------
		//                      File 1:  Reading Substrate Network Topology               -
		//							Link ids between Substrate nodes
		//----------------------------------------------------------------------------------
		cout<<"\n\t1) Reading Substrate Network Topology from file: "<<f1_subTopo<<endl;
		ifstream file1(f1_subTopo);

		if (!file1)
			cerr << "ERROR: could not open file"<< f1_subTopo << "for reading"<< endl;

		IloInt numOfSubNodes=0, numOfSubLinks=0;

		file1>> numOfSubNodes;		//20
		file1>> numOfSubLinks;		//30

		Substrate_Link_tab Vect_Link(env,numOfSubLinks);

		for(IloInt itr=0;itr<numOfSubLinks;itr++){
			IloInt subLink=0, src=0, dest=0;
			file1>>	subLink>>	src>>	dest;
			//		1->30 	1~20	1~20

			Vect_Link[itr].SetArc_Num(subLink);
			Vect_Link[itr].SetArc_Source(src);
			Vect_Link[itr].SetArc_Destination(dest);

		}

		file1.close();
		//cout<<"\t Done reading Substrate Network Topology"<<endl;
		//-------------------------------------------------------------------------------------------------------
		//                           File 2:  Reading Link QoS classes											-
		//-------------------------------------------------------------------------------------------------------


		cout<<"\t2) Reading Link QoS Classes from file: "<<f2_linkQoS<<endl;
		ifstream file2(f2_linkQoS);

		if (!file2)
			cerr << "ERROR: could not open file "<< f2_linkQoS << "for reading"<< endl;
		IloInt NB_LINK_CLASS=0;

		file2>>NB_LINK_CLASS;			//5

		Link_QoS_Class_tab  Link_Class_QoS_Vect(env,NB_LINK_CLASS);

		for(IloInt itr=0;itr<NB_LINK_CLASS;itr++){
			IloInt class_QoS = 0, bw=0, hops=0;
			file2>>class_QoS>>bw>>	hops;
			//		1->5	1->5	5~8

			Link_Class_QoS_Vect[itr].SetQoS_Class_Id(class_QoS);
			Link_Class_QoS_Vect[itr].SetQoS_Class_Bandwidth(bw);
			Link_Class_QoS_Vect[itr].SetQoS_Class_Max_Hops(hops);
		}

		//cout<<"\t Done reading Link QoS Classes"<<endl;
		file2.close();

		//-------------------------------------------------------------------------------------------------------
		//                           File 3:  Reading Link QoS classes											-
		//-------------------------------------------------------------------------------------------------------

		cout<<"\t3) Reading Node QoS Classes from file: "<<f3_nodeQoS<<endl;
		ifstream file3(f3_nodeQoS);

		if (!file3)
			cerr << "ERROR: could not open file "<< f3_nodeQoS << "for reading"<< endl;

		IloInt NB_NODE_CLASS=0;
		file3>>NB_NODE_CLASS;			//5

		Node_QoS_Class_tab  Node_Class_QoS_Vect(env,NB_NODE_CLASS);

		//length_vect = MAX_NB_LOCATION;

		IloNumArray location_vect(env,MAX_NB_LOCATION);

		for(IloInt itr=0;itr<NB_NODE_CLASS;itr++)
		{
			IloInt class_QoS = 0, cpu=0, memory=0, storage=0, blade=0;
			file3>>class_QoS>>cpu>>memory>>storage>>blade;
			//		 1->5	 1->5

			table_initialization(location_vect, MAX_NB_LOCATION);

			for(IloInt j=0;j<MAX_NB_LOCATION;j++)
			{
				//file3>>loc;
				//location_vect[j] = (IloNum) loc;
				file3>>location_vect[j];
			}

			Node_Class_QoS_Vect[itr].SetNode_QoS_Class_Id(class_QoS);
			Node_Class_QoS_Vect[itr].SetNode_Location_Tab(location_vect);
			Node_Class_QoS_Vect[itr].SetRequired_CPU(cpu);
			Node_Class_QoS_Vect[itr].SetRequired_Memory(memory);
			Node_Class_QoS_Vect[itr].SetRequired_storage(storage);


		}
		//cout<<"\t Done reading Node QoS Classes"<<endl;
		file3.close();


		//------------------------------------------------------------------------------------------
		//                     File 4: Reading topology data from VN requests                                 -
		//------------------------------------------------------------------------------------------

		cout<<"\t4) Reading Virtual Networks from file: "<<f4_vnReqTopo<<endl;
		ifstream file4(f4_vnReqTopo);

		if (!file4)
			cerr << "ERROR: could not open file `"<< f4_vnReqTopo << "`for reading"<< endl;

		IloInt numOfVnps=0;
		//file1>>NB_TOTAL_VNP;
		file4>>numOfVnps;		//20

		VN_Request_Topology_Tab VN_Request_Topology_Vect(env, numOfVnps);

		for(IloInt itr=0;itr<numOfVnps;itr++){
			IloInt vnp_id=0, nb_vnodes=0, nb_vlinks=0, period=0;
			file4>>vnp_id>>nb_vnodes>>nb_vlinks>>period;
			//	 1~20	 3~4		3~6			0

			VN_Request_Topology_Vect[itr].SetVLink_Number(nb_vlinks);
			VN_Request_Topology_Vect[itr].SetVNode_Number(nb_vnodes);
			VN_Request_Topology_Vect[itr].SetVNP_Id(vnp_id);

			//cout<<"\tvnp_id: "<<vnp_id<<"\tnb_vnodes: "<<nb_vnodes<<"\tnb_vlinks: "<<nb_vlinks<<endl;

		}

		file4.close();
		//cout<<"\t Done reading Virtual Networks"<<endl;


		//------------------------------------------------------------------------------------------------------------
		//                                     File 5: Reading substrate node and link unit costs  	   		                         -
		//------------------------------------------------------------------------------------------------------------


		cout<<"\t5) Reading substrate bw unit costs from file: "<<f5_subUnitCost<<endl;
		ifstream file5(f5_subUnitCost);

		if (!file5)
			cerr << "ERROR: could not open file "<< f5_subUnitCost<< "for reading"<< endl;

		IloNumArray    bw_unit_cost_vect(env,numOfSubLinks);
		IloNumArray    cpu_unit_cost_vect(env,numOfSubNodes);
		IloNumArray     gpu_unit_cost_vect(env,numOfSubNodes);
		IloNumArray     storage_unit_cost_vect(env,numOfSubNodes);
		IloNumArray     ram_unit_cost_vect(env,numOfSubNodes);
		IloNumArray     blade_unit_cost_vect(env,numOfSubNodes);

		for(IloInt j=0;j<numOfSubLinks;j++){ file5>>bw_unit_cost_vect[j];}
		for(IloInt j=0;j<numOfSubNodes;j++){ file5>>cpu_unit_cost_vect[j];}
		for(IloInt j=0;j<numOfSubNodes;j++){ file5>>gpu_unit_cost_vect[j];}
		for(IloInt j=0;j<numOfSubNodes;j++){ file5>>storage_unit_cost_vect[j];}
		for(IloInt j=0;j<numOfSubNodes;j++){ file5>>ram_unit_cost_vect[j];}
		for(IloInt j=0;j<numOfSubNodes;j++){ file5>>blade_unit_cost_vect[j];}

		file5.close();
		//cout<<"\t Done reading substrate bw unit costs"<<endl;

		//------------------------------------------------------------------------------------------
		//                      File 6: Reading potantial embedding location for Virtual Nodes            -
		//------------------------------------------------------------------------------------------


		cout<<"\t6) Reading potantial embedding location for Virtual Nodes from file: "<<f6_vnReqNode<<endl;
		ifstream file6(f6_vnReqNode);

		if (!file6)
			cerr << "ERROR: could not open file `"<< f6_vnReqNode << "`for reading"<< endl;

		//file7>>NB_TOTAL_VNP_NODE;
		IloInt newVnodesInTslot = 0;
		file6>>newVnodesInTslot;				//77

		VN_node_requirement_tab  VNode_Potantial_Location_Vect(env, newVnodesInTslot);

		//length = MAX_NB_LOCATION;

		IloNumArray vect_location(env,MAX_NB_LOCATION);
		//length= MAX_NB_LOCATION;

		for (IloInt itr=0;itr<newVnodesInTslot;itr++){
			IloInt vnp_id=0, vn_node=0, node_cls=0, period=0;
			file6>>vn_node>>node_cls>>vnp_id>>period;
			//		1		3		1		0

			VNode_Potantial_Location_Vect[itr].SetVirtual_Node_Id(vn_node);
			VNode_Potantial_Location_Vect[itr].SetQoS_Class(node_cls);
			VNode_Potantial_Location_Vect[itr].SetVNP_Id(vnp_id);
			VNode_Potantial_Location_Vect[itr].SetPeriod(period);

			table_initialization(vect_location,MAX_NB_LOCATION);

			for (IloInt j=0;j<MAX_NB_LOCATION;j++)
			{
				//file6>>current_location;
				//vect_location[j] = (IloNum) current_location;
				file6>>vect_location[j];
			}

			VNode_Potantial_Location_Vect[itr].SetCandidate_Location_Tab(vect_location);
		}

		file6.close();
		//cout<<"\t Done reading potantial embedding location for Virexaminorstual Nodes"<<endl;

		//------------------------------------------------------------------------------------------
		//                     File 7: Reading VN request Link details                                     -
		//------------------------------------------------------------------------------------------
		cout<<"\t7) Reading VN requests details from file: "<<f7_vnReqLink<<endl;
		ifstream file7(f7_vnReqLink);

		if (!file7)
			cerr << "ERROR: could not open file `"<< f7_vnReqLink<< "`for reading"<< endl;

		IloInt currentTslot=0, totNumOfvLinkReq=0, numOfRsvdVlinkReq=0, numOfAddedVlinkReq=0;

		file7>>currentTslot;
		file7>>totNumOfvLinkReq;
		file7>>numOfRsvdVlinkReq;
		file7>>numOfAddedVlinkReq;

		VNP_traffic_tab  vLinkReQVect(env,totNumOfvLinkReq);
		for(IloInt itr=0;itr<totNumOfvLinkReq;itr++){
			IloInt srcVnode=0, destVnode=0, vnp_id=0, vLinkId=0, vLinkQosCls = 0, bid=0, period=0;
			file7>>srcVnode>>destVnode>>vLinkId>>vLinkQosCls>>bid>>vnp_id>>period;

			vLinkReQVect[itr].setSrcVnode(srcVnode);
			vLinkReQVect[itr].setDestVnode(destVnode);
			vLinkReQVect[itr].setVlinkId(vLinkId);
			vLinkReQVect[itr].setVlinkQosCls(vLinkQosCls);
			vLinkReQVect[itr].SetBid(bid);
			vLinkReQVect[itr].setVnpId(vnp_id);
			vLinkReQVect[itr].SetPeriod(period);
		}

		file7.close();
		//cout<<"\t Done reading VN requests details"<<endl;

		//***************************************		Done Reading Files		****************************************

		cout<<"\t File reading complete."<<endl;


		cout<<"\n\t Defining Network"<<endl;
		//------------------------------------------------------------------------------------------
		//                             Network definition                                          -
		//------------------------------------------------------------------------------------------

		Substrate_Graph_tab  Vect_Substrate_Graph(env,numOfSubNodes);
		//cout<<"\n Creating Substrate Graph";
		substrate_Graph_creation(Vect_Substrate_Graph, Vect_Link, numOfSubLinks, numOfSubNodes, env);
		//cout<<"\t Done"<<endl;

		//cout<<"\n Creating Adjacency List";
		adjacency_list_creation(Vect_Substrate_Graph, numOfSubNodes, env);
		//cout<<"\t Done"<<endl;

		substrate_graph_printing(Vect_Substrate_Graph, env, numOfSubNodes);
		//cout<<"\t Done"<<endl;


		//------------------------------------------------------------------------------------------
		//                     Calculation of the all candidates embdedding substrate paths        -
		//------------------------------------------------------------------------------------------

		IloInt NB_POTANTIAL_EMBEDDING_NODES = MAX_NB_LOCATION*MAX_NB_LOCATION*totNumOfvLinkReq;
		cout<<endl<<"\tNB_POTANTIAL_EMBEDDING_NODES = "<<NB_POTANTIAL_EMBEDDING_NODES<<endl;

		IloInt numOfEmbeddingNodeCombinations = 0;


		//Meta_Embedding_Nodes_tab  Potantial_Embedding_Nodes_Vect(env, NB_POTANTIAL_EMBEDDING_NODES);
		Meta_Embedding_Nodes_tab  candidSnodeCombiVectForVlinks(env, NB_POTANTIAL_EMBEDDING_NODES);

		IloNumArray candidate_src_vect(env,MAX_NB_LOCATION);
		IloNumArray candidate_dest_vect(env,MAX_NB_LOCATION);

		cout<<"\n\tCalculating all candidates embdedding substrate paths"<<endl;

		cout<<"\n\ttotNumOfvLinkReq = "<<totNumOfvLinkReq<<endl;
		//cout<<"\t\tRequest\tsrc\tdest\tvnp_id\tvlink_class\tvlink_id\thops"<<endl;
		for(IloInt j=0;j<totNumOfvLinkReq;j++){			// number of link requests (NB_REQUEST) = 84
			IloInt srcVnode = vLinkReQVect[j].getSrcVnode();//cout<<"\t\t src = "<<src<<endl;
			IloInt destVnode = vLinkReQVect[j].getDestVnode();//cout<<"\t\t dest = "<<dest<<endl;
			IloInt vnpId = vLinkReQVect[j].getVnpId();//cout<<"\t\t vnp_id = "<<vnp_id<<endl;
			IloInt vLinkQosCls = vLinkReQVect[j].getVlinkQosCls();//cout<<"\t\t virtual_link_class = "<<virtual_link_class<<endl;
			IloInt vLinkId = vLinkReQVect[j].getVlinkId();//cout<<"\t\t vLinkId = "<<vLinkId<<endl;

			if(Link_Class_QoS_Vect.getSize()<vLinkQosCls)
				cerr<<"ERROR: Number of link QoS classes does not match. Check files:"<<f7_vnReqLink<<"\n\t and "<<f2_linkQoS;
			//IloInt hops = Link_Class_QoS_Vect[vLinkQosCls-1].GetQoS_Class_Max_Hops();//cout<<"\t\t hops = "<<hops<<endl;
			//cout<<"\t\t"<<j<<"\t"<<src<<"\t"<<dest<<"\t"<<vnp_id<<"\t"<<virtual_link_class<<"\t\t"<<vLinkId<<"\t\t"<<hops<<endl;

			table_initialization(candidate_src_vect,MAX_NB_LOCATION);
			search_candidate_location(srcVnode, VNode_Potantial_Location_Vect, vnpId, candidate_src_vect,newVnodesInTslot);//cout<<"\t search_candidate_location for src \tDone"<<endl;
			table_initialization(candidate_dest_vect,MAX_NB_LOCATION);
			search_candidate_location(destVnode, VNode_Potantial_Location_Vect, vnpId, candidate_dest_vect,newVnodesInTslot);//cout<<"\t search_candidate_location for dest \tDone"<<endl;

			IloInt k=0;
			IloInt exit_src=0;
			while ((k<MAX_NB_LOCATION)&&(exit_src==0)){
				IloInt candidSrcSnode = candidate_src_vect[k];
				//IloBool src_not_nul = (src_candidate!=0);

				if (candidSrcSnode!=0){
					IloInt l=0;
					IloInt exit_dest=0;

					while ((l<MAX_NB_LOCATION)&&(exit_dest ==0)){

						IloInt candidDestSnode = candidate_dest_vect[l];
						//IloBool dest_not_nul = (dest_candidate!=0);

						if (candidDestSnode!=0){
							if (candidSrcSnode!=candidDestSnode){
								candidSnodeCombiVectForVlinks[numOfEmbeddingNodeCombinations].setCandidSrcSnode(candidSrcSnode);
								candidSnodeCombiVectForVlinks[numOfEmbeddingNodeCombinations].setCandidDestSnode(candidDestSnode);
								candidSnodeCombiVectForVlinks[numOfEmbeddingNodeCombinations].setVlinkId( vLinkId);
								candidSnodeCombiVectForVlinks[numOfEmbeddingNodeCombinations].setVlinkQosCls(vLinkQosCls);
								candidSnodeCombiVectForVlinks[numOfEmbeddingNodeCombinations].setVnpId(vnpId);
								candidSnodeCombiVectForVlinks[numOfEmbeddingNodeCombinations].setEmbeddingNodeCombinationId(numOfEmbeddingNodeCombinations);

								numOfEmbeddingNodeCombinations++;
								//num_candidate_embedding_nodes++;
								//if(nb_candidate_embedding_nodes != num_candidate_embedding_nodes) cerr<<"nb_candidate_embedding_nodes != num_candidate_embedding_nodes"<<endl;
							}// src != dest
						}// dest not null
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
		cout<<"\n\tCalculated all candidates embdedding substrate paths"<<endl;


		//------------------------------------------------------------------------------------------
		//                               Calculating shortest paths                         -
		//------------------------------------------------------------------------------------------


		cout<<"\n\tCalculating shortest paths"<<endl;

		IloInt numOfShortestPaths = 0;
		Meta_Substrate_Path_tab candidShortestPathsVect(env, numOfEmbeddingNodeCombinations);

		cout<<"\n\t\tPrinting candidSnodeCombiVectForVlinks"<<endl;
		cout<<"\t\treqId\tvnp_id\tvLink\tsrc\tdest"<<endl;
		for(IloInt j=0;j<numOfEmbeddingNodeCombinations;j++){
			IloInt vnpId = candidSnodeCombiVectForVlinks[j].getVnpId();
			IloInt candidSnodeCombiId = candidSnodeCombiVectForVlinks[j].getEmbeddingNodeCombinationId();
			IloInt vLinkId = candidSnodeCombiVectForVlinks[j].getVlinkId();
			IloInt candidSrcSnode = candidSnodeCombiVectForVlinks[j].getCandidSrcSnode();
			IloInt candidDestSnode = candidSnodeCombiVectForVlinks[j].getCandidDestSnode();
			//IloInt class_QoS =  Potantial_Embedding_Nodes_Vect[j].GetQoS_Class();
			cout<<"\t\t"<<candidSnodeCombiId<<"\t"<<vnpId<<"\t"<<vLinkId<<"\t"<<candidSrcSnode<<"\t"<<candidDestSnode<<endl;
			shortest_path(Vect_Substrate_Graph, candidShortestPathsVect, candidSrcSnode, candidDestSnode, candidSnodeCombiId, vnpId, vLinkId, numOfShortestPaths, env);
		}


//		IloInt Meta_substrate_path_Id;
//		IloInt Src_path;
//		IloInt Dest_path;
//		IloInt vLinkId;
//		IloInt VNP_Id;
//		IloInt Candidate_Embdding_Nodes_Id;
//		IloInt NB_Hops;

		cout<<"\n\tPrinting Shortest paths"<<endl;
		cout<<"\t\tPathId\tvnpId\tvLinkId\tsrc\tdest\tnComb\tnumHops"<<endl;
		for(int i = 0; i<candidShortestPathsVect.getSize(); i++){
			IloInt candidShortestPathId = candidShortestPathsVect[i].getCandidShortestPathId();
			IloInt srcSnodeOfPath = candidShortestPathsVect[i].getSrcSnodeOfPath();
			IloInt destSnodeOfPath = candidShortestPathsVect[i].getDestSnodeOfPath();
			IloInt correspVlinkId = candidShortestPathsVect[i].getCorrespVlinkId();
			IloInt vnpId = candidShortestPathsVect[i].GetVNP_Id();
			IloInt candidSnodeCombiId = candidShortestPathsVect[i].getCandidSnodeCombiId();
			IloInt numHopsInShortestPath = candidShortestPathsVect[i].getNumOfHopsInShortestPath();
			cout<<"\t\t"<< candidShortestPathId <<"\t"<< vnpId <<"\t"<< correspVlinkId <<"\t"<< srcSnodeOfPath <<"\t"<< destSnodeOfPath <<"\t"<< candidSnodeCombiId <<"\t"<< numHopsInShortestPath <<endl;
		}

		//int Used_Node_Tab[MAX_INCIDENCE];
		//int Used_Arc_Tab[MAX_INCIDENCE];


		cout<<"\tCOUNT_PATH:"<<numOfShortestPaths<<endl;
		cout<<"\tnb_candidate_embedding_nodes:"<<numOfEmbeddingNodeCombinations<<endl;

		// printing_meta_path(Path_Vect, COUNT_PATH, env);

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

		IloInt NB_VNODE_SNODE = 2*newVnodesInTslot*numOfSubNodes;

		IloNumVarArray x(env);   // used to decide on the embedding of VN on substrate nodes
		IloNumVarArray z(env);     // used to decide on the acceptance of VNP request

		Virtual_Node_Embedding_tab  embedding_trace_x(env, NB_VNODE_SNODE);

		cout<<"\tNB_VNP_NODE:"<<newVnodesInTslot<<endl;
		cout<<"\tNB_VNODE_SNODE:"<<NB_VNODE_SNODE<<endl;

		//******************************************************************************************************
		//                      Declaration of ILP Solver                                                      *
		//******************************************************************************************************


		IloCplex ILP_solver(ILP_model);


		ILP_solver.setParam(IloCplex::PerInd,1);

		ILP_solver.setParam(IloCplex::EpGap,GAP);
		ILP_solver.setParam(IloCplex::FracCuts,1);
		ILP_solver.setParam(IloCplex::IntSolLim,3);
		ILP_solver.setParam(IloCplex::MIQCPStrat,2);
		//ILP_solver.setParam(IloCplex::TiLim,10000);
		ILP_solver.setParam(IloCplex::NodeSel,1);


		//*****************************************************************************************************
		//                       ILP Model definition                                                         *
		//*****************************************************************************************************

		//------------------------------------------------------------------------
		//  A- Creation of VN embedding variables								  -
		//------------------------------------------------------------------------
		cout<<"\n\tA) Creating VN embedding variables"<<endl;

		IloInt x_VECT_LENGTH =  creation_node_embedding_var(VNode_Potantial_Location_Vect, newVnodesInTslot, x, embedding_trace_x, env);
		// populates IloNumVarArray x by concatenating vnodeID + vnpId + potential embedding locations from f6_vnReqNode.
		// Each element of x is IloNumVar with range 0 to 1.
		// x =  vn1_vnp1_sn12[0..1]  vn2_vnp1_sn11[0..1]  vn2_vnp1_sn20[0..1]  vn3_vnp1_sn10[0..1]  vn4_vnp1_sn19[0..1]  vn1_vnp2_sn20[0..1] ....... vn3_vnp20_sn7[0..1]  vn4_vnp20_sn9[0..1]
		// embedding_trace_x = [ vnode | vnpId | candidSnode | xindex ]

//		cout<<"\n\tPrintint embedding_trace_x vector"<<endl;
//		cout<<"\t\tvnode\tQoS\tvnpId\tsNode\txindex"<<endl;
//		for(int i=0; i<embedding_trace_x.getSize(); i++){
//			cout<<"\t\t"<<embedding_trace_x[i].getVnodeId()<<"\t"<<embedding_trace_x[i].getQosCls()<<"\t"<<embedding_trace_x[i].getVnpId()<<"\t"<<embedding_trace_x[i].getCandidSnodeId()<<"\t"<<embedding_trace_x[i].getXindex()<<endl;
//		}


		//------------------------------------------------------------------------
		//  B- no partially VN Embedding: accept all virtual links or block all  -
		//------------------------------------------------------------------------
		cout<<"\n\tB) No partially VN Embedding: accept all virtual links or block all"<<endl;

		no_partially_VN_embedding(vLinkReQVect, totNumOfvLinkReq, numOfVnps, x, z, candidSnodeCombiVectForVlinks, numOfEmbeddingNodeCombinations, ILP_model, embedding_trace_x, x_VECT_LENGTH, env);
		// populates IloNumVarArray z =  vnp1[0..1]  vnp2[0..1]  vnp3[0..1]  vnp4[0..1]  vnp5[0..1] .... vnp20[0..1]


		//-----------------------------------------------------------------------
		//  C- A virtual node can be assigned to only one substrate node      -
		//-----------------------------------------------------------------------

		cout<<"\n\tC) A virtual node can be assigned to only one substrate node"<<endl;
		VNode_embedding_clash_constraint(VNode_Potantial_Location_Vect, newVnodesInTslot, embedding_trace_x, x, x_VECT_LENGTH,z, ILP_model, env);



		//-----------------------------------------------------------------------------
		// D-  Substrate Node CPU Capacity                                            -
		//-----------------------------------------------------------------------------
		cout<<"\n\tD) Substrate Node CPU Capacity "<<endl;
		initSnodeResConstraint(numOfSubNodes, embedding_trace_x, x, x_VECT_LENGTH, ILP_solver, VNode_Potantial_Location_Vect, newVnodesInTslot, Node_Class_QoS_Vect, env);


		//--------------------------------------------------------------------------------
		// E- Calculation of the objective function Maximize the PIP Profit              -
		//--------------------------------------------------------------------------------
		cout<<"\n\tE) Calculation of the objective function Maximize the PIP Profit "<<endl;
		IloExpr substrate_network_revenue(env);

		IloExpr substrate_cost(env);

		cout<<"\n\tPrinting Request_Vect. Size = "<<vLinkReQVect.getSize()<<endl;
		cout<<"\treqItr\tvnp\tvlink\tvlCls\tbid\t"
				"vlSrc\t[ class\tCPU\tMEM\tSTO]\t"
				"vlDst\t[ class\tCPU\tMEM\tSTO]\t"<<endl;
		for(IloInt itr=0;itr<totNumOfvLinkReq;itr++){
			IloInt vnp_id =  vLinkReQVect[itr].getVnpId();
			IloInt vLinkId =  vLinkReQVect[itr].getVlinkId();

			IloInt vlink_src  =  vLinkReQVect[itr].getSrcVnode();
			IloInt vlink_src_cls =  search_vnode_class(vlink_src, vnp_id,VNode_Potantial_Location_Vect, newVnodesInTslot);
			IloInt src_cpu=  Node_Class_QoS_Vect[vlink_src_cls-1].getVnodeCpuReq();
			IloInt src_memory=  Node_Class_QoS_Vect[vlink_src_cls-1].getVnodeMemReq();
			IloInt src_storage=  Node_Class_QoS_Vect[vlink_src_cls-1].getVnodeStoReq();

			IloInt vlink_dest =  vLinkReQVect[itr].getDestVnode();
			IloInt vlink_dest_cls =  search_vnode_class(vlink_dest, vnp_id, VNode_Potantial_Location_Vect, newVnodesInTslot);

			IloInt dest_cpu=  Node_Class_QoS_Vect[vlink_dest_cls-1].getVnodeCpuReq();
			IloInt dest_memory=  Node_Class_QoS_Vect[vlink_dest_cls-1].getVnodeMemReq();
			IloInt dest_storage=  Node_Class_QoS_Vect[vlink_dest_cls-1].getVnodeStoReq();

			IloInt class_QoS =  vLinkReQVect[itr].getVlinkQosCls();
			IloInt bw = Link_Class_QoS_Vect[class_QoS-1].GetQoS_Class_Bandwidth();
			IloInt bid =  vLinkReQVect[itr].GetBid();

			cout<<"\t"<<itr<<"\t"<<vnp_id<<"\t"<<vLinkId<<"\t"<<class_QoS<<"\t"<<bid<<"\t"
					<<vlink_src<<"\t[ "<<vlink_src_cls<<"\t"<<src_cpu<<"\t"<<src_memory<<"\t"<<src_storage<<"  ]\t"
					<<vlink_dest<<"\t[ "<<vlink_dest_cls<<"\t"<<dest_cpu<<"\t"<<dest_memory<<"\t"<<dest_storage<<"  ]\t"<<endl;

			substrate_network_revenue+= bid*z[vnp_id-1];

			IloInt j=0;
			IloInt no_more_emb_path=0;

			while ((j < numOfEmbeddingNodeCombinations)&& (no_more_emb_path == 0)){
				IloInt current_virtual_link_id =  candidSnodeCombiVectForVlinks[j].getVlinkId();
				IloInt current_vnp_id =  candidSnodeCombiVectForVlinks[j].getVnpId();

				IloBool equal_current_vlink =(current_virtual_link_id == vLinkId);
				IloBool equal_current_vnp_id =( current_vnp_id == vnp_id);

				if((equal_current_vnp_id)&&(equal_current_vlink)){
					IloInt candidSnode = candidSnodeCombiVectForVlinks[j].getCandidSrcSnode();
					IloInt candidDnode = candidSnodeCombiVectForVlinks[j].getCandidDestSnode();

					IloInt emb_path_cost = calculate_cost_potantial_emb_shortestpath(candidShortestPathsVect,numOfShortestPaths, candidSnode, candidDnode,
							vnp_id, bw, vLinkId, bw_unit_cost_vect, cpu_unit_cost_vect, src_cpu, dest_cpu, ram_unit_cost_vect, src_memory, dest_memory, storage_unit_cost_vect, src_storage, dest_storage, env);
					//cout<<"\t\t\t emb_path_cost: "<<emb_path_cost<<endl;

					IloInt src_emb_index = search_var_index(embedding_trace_x, vlink_src, candidSnode, vnp_id, x_VECT_LENGTH);
					IloInt dest_emb_index = search_var_index(embedding_trace_x, vlink_dest, candidDnode, vnp_id, x_VECT_LENGTH);

					// cout<<"emb_path_cost:"<<emb_path_cost<<endl;

					substrate_cost+= emb_path_cost*x[src_emb_index]*x[dest_emb_index];
					// cout<<"src_emb_index: "<<src_emb_index<<"dest_emb_index: "<<dest_emb_index<<endl;
				}

				j++;
				//cout<<"j: "<<j<<" \t Substrate_cost = "<<substrate_cost<<endl;

			}// go through the list of potantial embedding paths/nodes.

		}// go through the list of virtual links requests


		//IloObjective objFunc(IloMinimize(env));
		IloObjective objFunc(IloMaximize(env));							// Original
		ILP_model.add(objFunc);

		objFunc.setExpr(substrate_network_revenue - substrate_cost);		// Original
		//objFunc.setExpr(substrate_cost);


		//IloRange objRange(env, -obj_func, 0);							// Original
		IloRange objRange(env, 0, objFunc, IloInfinity);				// same as IloRange range_const(env, -obj_func, 0)
		ILP_model.add(objRange);



		//*****************************************************************************************************
		//								Reading of initial solution										   *
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

		cout<<"\tILP Model Solving"<<endl;
		ILP_solver.exportModel(f10_cplexNodeModel);

		ILP_solver.solve();


		//****************************************************************************************************
		//								save of initiale solution		  								       *
		//*****************************************************************************************************

		IloNumArray xvals(env);
		IloNumArray zvals(env);

		ILP_solver.getValues(xvals, x);
		ILP_solver.getValues(zvals, z);

		/*const char*  filename8="C:/ILOG/CPLEX121/abdallah_work/results/initiale_solution.txt";
        ofstream file8(filename8);
        file8<<vals<<endl;     
        file8.close();*/

		//****************************************************************************************************
		//                      Printing vNode embedding solution                                      *
		//****************************************************************************************************


		cout<<"\n\tPrinting vNode embedding solution"<<endl;
		IloInt nb_accepted_vnode=0;
		IloNumArray accepted_vnp_requests(env, numOfVnps);
		table_initialization(accepted_vnp_requests, numOfVnps);

		Virtual_Node_Embedding_tab Vnode_Embedding_Vect(env,NB_VNODE_SNODE);

		env.out()<< "\nz\t= \n" << zvals <<endl;
		env.out()<< "\nx\t= \n" << xvals <<endl;


		cout<<"\n\tvnp_id\tvnode\tembedded snode"<<endl;
		for(IloInt itr=0;itr<x_VECT_LENGTH;itr++)
		{
			IloNum current_value = (IloNum) xvals[itr];

			if (current_value > EPSELON_1)
			{
				IloInt l=0;
				IloInt found=0;

				while (found==0)
				{
					IloInt index = embedding_trace_x[l].getXindex();
					IloBool equal_index = (index == itr);
					if (equal_index)
					{
						found=1;

						IloInt vnode = embedding_trace_x[l].getVnodeId();
						IloInt snode = embedding_trace_x[l].getCandidSnodeId();
						IloInt vnp_id = embedding_trace_x[l].getVnpId();
						cout<<"\t"<<vnp_id<<"\t"<<vnode<<"\t"<<snode<<endl;

						Vnode_Embedding_Vect[nb_accepted_vnode].SetVirtual_Node_Id(vnode);
						Vnode_Embedding_Vect[nb_accepted_vnode].SetVNP_Id(vnp_id);
						Vnode_Embedding_Vect[nb_accepted_vnode].setCandidSnodeId(snode);

						nb_accepted_vnode++;


						IloBool is_new_vnp = (accepted_vnp_requests[vnp_id-1]==0);
						if (is_new_vnp)
							accepted_vnp_requests[vnp_id-1]=1;
					}

					l++;
				}// end while

			}// end if non zero

		} // end for x var elements





		env.out() <<"Solution Status="<<ILP_solver.getStatus() <<endl;

		IloInt PIP_profit = ILP_solver.getObjValue();

		env.out() <<"Objective Value ="<<PIP_profit<<endl;
		cout<<endl;


		//**********************************************************************************************************
		//                             Save VN embedding solution                                                  *
		//**********************************************************************************************************
		ofstream file8(f8_EmbeddedVnodes);

		if (!file8)
			cerr << "ERROR: could not open file "<< f8_EmbeddedVnodes<< "for reading"<< endl;

		file8<<nb_accepted_vnode<<endl;

		for(IloInt itr=0;itr<nb_accepted_vnode;itr++)
		{
			IloInt vnode  = Vnode_Embedding_Vect[itr].getVnodeId();
			IloInt vnp_id = Vnode_Embedding_Vect[itr].getVnpId();
			IloInt snode  = Vnode_Embedding_Vect[itr].getCandidSnodeId();

			IloInt cls = search_vnode_class(vnode, vnp_id, VNode_Potantial_Location_Vect, newVnodesInTslot);
			//IloInt c_cpu = Node_Class_QoS_Vect[cls-1].getVnodeCpuReq();

			file8<<vnode<<"    "<<vnp_id <<"    "<<snode<<"    "<<cls<<"    "<<currentTslot<<endl;

		}


		file8.close();

		//---------------------------------------------------------------
		// Update of traffic demand with respect to blocked demand      -
		//---------------------------------------------------------------

		IloInt nb_accepted_req=0;

		VNP_traffic_tab  Updated_Request_Vect(env,totNumOfvLinkReq);


		for(IloInt itr=0;itr<totNumOfvLinkReq;itr++){
			IloInt vnp_id = vLinkReQVect[itr].getVnpId();

			IloNum current_value = (IloNum) zvals[vnp_id-1];

			if (current_value > EPSELON_1){
				IloInt src = vLinkReQVect[itr].getSrcVnode();
				IloInt dest = vLinkReQVect[itr].getDestVnode();
				IloInt vLinkId = vLinkReQVect[itr].getVlinkId();
				IloInt class_QoS = vLinkReQVect[itr].getVlinkQosCls();
				IloInt bid = vLinkReQVect[itr].GetBid();
				IloInt period = vLinkReQVect[itr].GetPeriod();

				Updated_Request_Vect[nb_accepted_req].setSrcVnode(src);
				Updated_Request_Vect[nb_accepted_req].setDestVnode(dest);
				Updated_Request_Vect[nb_accepted_req].setVlinkId(vLinkId);
				Updated_Request_Vect[nb_accepted_req].setVlinkQosCls(class_QoS);
				Updated_Request_Vect[nb_accepted_req].SetBid(bid);
				Updated_Request_Vect[nb_accepted_req].setVnpId(vnp_id);
				Updated_Request_Vect[nb_accepted_req].SetPeriod(period);

				nb_accepted_req++;
			}
		}


		ofstream file9(f9_AcceptedVlinks);

		if (!file9)
			cerr << "ERROR: could not open file `"<< f9_AcceptedVlinks << "`for reading"<< endl;
		IloInt NB_RESERVED = 0;
		IloInt current_period = 0;
		IloInt NB_REQUEST =  NB_RESERVED + nb_accepted_req;

		file9<<current_period<<endl;
		file9<<NB_REQUEST<<endl;
		file9<<NB_RESERVED<<endl;
		file9<<nb_accepted_req<<endl;

		for (IloInt itr=0;itr<nb_accepted_req;itr++)
		{
			IloInt src = Updated_Request_Vect[itr].getSrcVnode();
			IloInt dest = Updated_Request_Vect[itr].getDestVnode();
			IloInt vLinkId = Updated_Request_Vect[itr].getVlinkId();
			IloInt class_QoS = Updated_Request_Vect[itr].getVlinkQosCls();
			IloInt bid = Updated_Request_Vect[itr].GetBid();
			IloInt vnp_id = Updated_Request_Vect[itr].getVnpId();
			IloInt period = Updated_Request_Vect[itr].GetPeriod();

			file9 <<src<<"\t"<<dest<<"\t"<<vLinkId<<"\t"<<class_QoS<<"\t"<<bid<<"\t"<<vnp_id<<"\t"<<period<<endl;
		}

		file9.close();

		//-------------------------------------------------------------------------------------------------------------
		//                                   End of Cplex model                                                       -
		//-------------------------------------------------------------------------------------------------------------


	}
	catch (IloException& e)
	{
		cerr << "ERROR: " << e.getMessage()<< endl;
	}

	env.end();

}





