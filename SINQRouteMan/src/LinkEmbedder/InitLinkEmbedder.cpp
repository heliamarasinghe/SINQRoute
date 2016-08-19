/*
 * InitLinkEmbedder.cpp
 *
 *  Created on: Feb 25, 2016
 *      Author: openstack
 */

#include "../LinkEmbedder/LinkEmbedder.h"


//------------------------------------------------------------------------------------------------------------------
//                                                                                                                 -
//                              Beginning of the Program                                                                -
//                                                                                                                 -
//                                                                                                                 -
//------------------------------------------------------------------------------------------------------------------


char* LinkEmbedder::embedInitLinks(){
	cout<<"\n\t *** Initial Link Embedder ***"<<endl;




	// Files being read
	const char*  f1_subTopo="DataFiles/init/f1_subTopo.txt";							//k init/f1_subTopo.txt
	const char*  f2_linkQoS="DataFiles/init/f2_linkQoS.txt";							//k init/f2_linkQoS.txt
	const char*  f3_nodeQoS="DataFiles/init/f3_nodeQoS.txt";							//k init/f3_nodeQoS.txt

	const char*  f4_vnReqTopo="DataFiles/t0/f4_vnReqTopo.txt";							//k t0/f4_vnReqTopo.txt
	const char*  f5_subUnitCost="DataFiles/t0/f5_subUnitCost.txt";						//k t0/f5_subUnitCost.txt
	// t0/f6_vnReqNode.txt
	// t0/f7_vnReqLink.txt
	const char*  f8_ph1EmbeddedVnodes="DataFiles/t0/f8_ph1EmbeddedVnodes.txt";			//k t0/f8_ph1EmbeddedVnodes.txt
	const char*  f9_ph1AcceptedVlinks="DataFiles/t0/f9_ph1AcceptedVlinks.txt";			//k t0/f9_ph1AcceptedVlinks.txt
	// t0/f10_cplexNodeModel.lp
	// Files being written
	const char*  f11_ph2EmbeddedVnodes="DataFiles/t0/f11_ph2EmbeddedVnodes.txt";		//k t0/f11_ph2EmbeddedVnodes.txt
	const char*  f12_ph2AcceptedVlinks="DataFiles/t0/f12_ph2AcceptedVlinks.txt";		// t0/f12_ph2AcceptedVlinks.txt
	const char*  f13_cplexLinkModel="DataFiles/t0/f13_cplexLinkModel.lp";				// t0/f13_cplexLinkModel.lp
	char*  f14_ph2RemovedAddedPaths = new char[50];	// Contains added and removed vlinks as a tab delimited intermediate physical switch IDs
	snprintf(f14_ph2RemovedAddedPaths, sizeof(char) * 50, "DataFiles/t0/f14_ph2RemovedAddedPaths.txt");
	IloEnv env;
	try
		{
		//********************************************************************************************************
		//                                             Variables Declaration                                     *
		//********************************************************************************************************

		//IloInt NB_NODE=0, NB_LINK=0, NB_REQUEST=0, NB_NODE_CLASS=0, NB_LINK_CLASS=0, COUNT_PATH=0;
		//IloInt NB_VNODE_SNODE=0, x_VECT_LENGTH=0, NB_PATHS=0, NB_VNP=20, NB_VNP_NODE=0, NB_POTANTIAL_EMBEDDING_NODES=0, NB_TOTAL_VNP=0;

		//IloInt i=0,j=0,k=0, l=0;
		//IloInt src=0, dest=0, clsQoS=0, vnp_id=0, hops=0, bw=0, find_elt=0;
		//IloInt request_id=0, no_more_arc=0, current_request=0, exit=0, current_val=0;
		//IloInt nb_accepted_vnode=0, nb_accepted_requests=0;
		//IloInt used_bw=0, nb_total_path_hops=0, used_cpu=0;

		//IloInt current_link=0, current_class=0,  used_link=0, request_profit=0, current_location=0;
		//IloInt used_node=0, used_arc=0, unit_cost=0, nb_candidate_embedding_nodes=0;

		//IloInt current_value=0, c_link=0, c_class=0, src_candidate=0, index=0, found=0;

		//IloInt src_emb=0, dest_emb=0, emb_path_cost=0;
		//IloInt vn_node=0, cpu_node_requirement=0, link=0, vLinkId=0, nb_hops=0, num_candidate_embedding_nodes=0;

		//IloInt current_virtual_link_id=0, current_vnp_id=0, vlink_src=0, vlink_dest=0, virtual_link_profit=0;

		//IloInt period=0, NB_RESERVED=0, NB_ADD=0, PIP_profit=0, nb_used_arc=0, nb_embedding_path=0;
		IloInt vect_length=MAX_INCIDENCE;

		//IloInt current_period=0, find=0, node_cost=0, path_var_index=0, src_cost=0, dest_cost=0, num_path=0;
		//IloInt nb_vnode=0, current_arc=0, current_vlink=0, link_cost=0, nb_accepted_vnp=0;
		//IloInt nb_accepted_req=0, cpu=0, loc=0, length_vect=0;



		//----------------------------------------------------------------------------------
		//                           FILE 1: Reading of Network Substrate Topology               -
		//----------------------------------------------------------------------------------
		cout<<"\t Reading of Network Substrate Topology from File: "<<f1_subTopo<<endl;
		ifstream f1(f1_subTopo);
		if (!f1)
			cerr << "ERROR: could not open file"<< f1_subTopo << "for reading"<< endl;
		IloInt NB_NODE=0, NB_LINK=0;
		f1>> NB_NODE;
		f1>> NB_LINK;
		Substrate_Link_tab Vect_Link(env,NB_LINK);
		for(IloInt i=0;i<NB_LINK;i++) {
			IloInt sLink=0, src=0, dest=0;
			f1>>sLink>>src>>dest;
			Vect_Link[i].SetArc_Num(sLink);
			Vect_Link[i].SetArc_Source(src);
			Vect_Link[i].SetArc_Destination(dest);
		}
		f1.close();


		//--------------------------------------------------------------------------------------------------------
		//                  			          FILE 2: Reading Link QoS classes                                -
		//--------------------------------------------------------------------------------------------------------
		cout<<"\t Reading Link QoS classes from File: "<<f2_linkQoS<<endl;
		ifstream f2(f2_linkQoS);
		if (!f2)
			cerr << "ERROR: could not open file "<< f2_linkQoS << "for reading"<< endl;
		IloInt NB_LINK_CLASS=0;
		f2>>NB_LINK_CLASS;
		Link_QoS_Class_tab  Link_Class_QoS_Vect(env,NB_LINK_CLASS);
		for(IloInt i=0;i<NB_LINK_CLASS;i++){
			IloInt clsQoS=0, bw=0,hops=0;
			f2>>clsQoS>>bw>>hops;
			Link_Class_QoS_Vect[i].SetQoS_Class_Id(clsQoS);
			Link_Class_QoS_Vect[i].SetQoS_Class_Bandwidth(bw);
			Link_Class_QoS_Vect[i].SetQoS_Class_Max_Hops(hops);
		}
		f2.close();


		//--------------------------------------------------------------------------------------------------------
		//                  			          FILE 3: Reading Node QoS classes                                -
		//--------------------------------------------------------------------------------------------------------
		cout<<"\t Reading Node QoS classes from File: "<<f3_nodeQoS<<endl;
		ifstream f3(f3_nodeQoS);
		if (!f3)
			cerr << "ERROR: could not open file "<< f3_nodeQoS << "for reading"<< endl;
		IloInt NB_NODE_CLASS=0, loc=0, cpu=0;
		f3>>NB_NODE_CLASS;
		Node_QoS_Class_tab  Node_Class_QoS_Vect(env,NB_NODE_CLASS);
		IloInt length_vect = MAX_NB_LOCATION;
		IloNumArray location_vect(env,length_vect);
		for(IloInt i=0;i<NB_NODE_CLASS;i++) {
			IloInt clsQoS=0;
			f3>>clsQoS>>cpu;
			table_initialization(location_vect, length_vect);
			for(IloInt j=0;j<MAX_NB_LOCATION;j++) {
				f3>>loc;
				location_vect[j] = (IloNum) loc;
			}
			Node_Class_QoS_Vect[i].SetNode_QoS_Class_Id(clsQoS);
			Node_Class_QoS_Vect[i].SetRequired_CPU(cpu);
			Node_Class_QoS_Vect[i].SetNode_Location_Tab(location_vect);
		}
		f3.close();

		//------------------------------------------------------------------------------------------
		//                     FILE 4: Reading of the topology of VN requests                                 -
		//------------------------------------------------------------------------------------------
		cout<<"\t Reading of the topology of VN requests from File: "<<f4_vnReqTopo<<endl;
		ifstream f4(f4_vnReqTopo);
		if (!f4)
			cerr << "ERROR: could not open file `"<< f4_vnReqTopo << "`for reading"<< endl;
		IloInt NB_VNP = 0;
		f4>>NB_VNP;
		VN_Request_Topology_Tab VN_Request_Topology_Vect(env, NB_VNP);
		for(IloInt i=0;i<NB_VNP;i++) {
			IloInt vnp_id=0, nb_vnodes=0, nb_vlinks=0, period=0;
			f4>>vnp_id>>nb_vnodes>>nb_vlinks>>period;
			VN_Request_Topology_Vect[i].SetVLink_Number(nb_vlinks);
			VN_Request_Topology_Vect[i].SetVNode_Number(nb_vnodes);
			VN_Request_Topology_Vect[i].SetVNP_Id(vnp_id);
		}
		f4.close();

		//------------------------------------------------------------------------------------------------------------
		//                                   FILE 5: Reading of substrate bw unit cost  	   		                         -
		//------------------------------------------------------------------------------------------------------------
		cout<<"\t Reading of substrate bw unit cost from File: "<<f5_subUnitCost<<endl;
		ifstream f5(f5_subUnitCost);
		if (!f5)
			cerr << "ERROR: could not open file "<< f5_subUnitCost<< "for reading"<< endl;
		IloInt unit_cost=0;
		IloNumArray    bw_unit_cost_vect(env,NB_LINK);
		IloNumArray    cpu_unit_cost_vect(env,NB_NODE);
		for(IloInt j=0;j<NB_LINK;j++) {
			f5>>unit_cost;
			bw_unit_cost_vect[j] = unit_cost;
			//cout<<"BW unit cost of link:"<<j+1<<": "<<unit_cost<<endl;
		}


		//cout<<"\n\t NB_NODE = "<<NB_NODE<<endl;
		//cout<<"\n\t cpu_unit_cost_vect.size = "<<cpu_unit_cost_vect.getSize()<<endl;
		for(IloInt j=0;j<NB_NODE;j++) {
			//f5>>node_cost;
			//cpu_unit_cost_vect[j] = (IloNum)node_cost;
			f5>>cpu_unit_cost_vect[j];
			// = (IloNum)node_cost;
			//cout<<"Substrate node:"<<j+1<<" has a cost of: "<<node_cost<<endl;
		}
		f5.close();
		//------------------------------------------------------------------------------------------
		//                              FILE 8: Reading of node embedding							             *
		//------------------------------------------------------------------------------------------
		cout<<"\t Reading of node embedding from File: "<<f8_ph1EmbeddedVnodes<<endl;

		ifstream f8(f8_ph1EmbeddedVnodes);
		if (!f8)
			cerr << "ERROR: could not open file "<< f8_ph1EmbeddedVnodes << "for reading"<< endl;
		IloInt nb_vnode=0;
		f8>>nb_vnode;
		Virtual_Node_Embedding_tab  Preliminary_Node_Embedding_Vect(env, nb_vnode);
		IloNumArray accepted_vnp_id_tab(env,NB_VNP );
		table_initialization(accepted_vnp_id_tab, NB_VNP);
		IloInt nb_accepted_vnp=0;

		if(LINK_DBG){
			cout<<"\n\t nb_vnode = "<<nb_vnode<<endl;
			cout<<"\n\tPrinting Preliminary_Node_Embedding_Vect: \t\tsize = "<<Preliminary_Node_Embedding_Vect.getSize()<<endl;
			cout<<"\t\tvnode\tvnp_id\tsnode\tcls\tperiod"<<endl;
		}
		for(IloInt i=0;i<nb_vnode;i++){
			IloInt vnode=0, vnp_id=0, snode=0, cls=0, period=0;
			// cout<<"\t\t i = "<<i<<endl;
			f8>>vnode>>vnp_id>>snode>>cls>>period;
			if(LINK_DBG)cout<<"\t\t"<<vnode<<"\t"<<vnp_id<<"\t"<<snode<<"\t"<<cls<<"\t"<<period<<endl;
			Preliminary_Node_Embedding_Vect[i].SetVirtual_Node_Id(vnode);
			Preliminary_Node_Embedding_Vect[i].SetVNP_Id(vnp_id);
			Preliminary_Node_Embedding_Vect[i].setCandidSnodeId(snode);
			Preliminary_Node_Embedding_Vect[i].SetQoS_Class(cls);
			Preliminary_Node_Embedding_Vect[i].SetPeriod(period);
			IloInt find = findElementInVector(vnp_id, accepted_vnp_id_tab, nb_accepted_vnp);
			IloBool is_new_elet = (find==0);
			if (is_new_elet)
			{
				accepted_vnp_id_tab[nb_accepted_vnp]= (IloNum) vnp_id;
				nb_accepted_vnp++;
			}
		}

		//------------------------------------------------------------------------------------------
		//                      FILE 9:Reading the VN requests details                                     -
		//------------------------------------------------------------------------------------------
		cout<<"\t Reading the VN requests details File: "<<f9_ph1AcceptedVlinks<<endl;
		ifstream file9(f9_ph1AcceptedVlinks);
		if (!file9)
			cerr << "ERROR: could not open file `"<< f9_ph1AcceptedVlinks<< "`for reading"<< endl;
		IloInt current_period=0, numVlinkReq=0, NB_RESERVED=0, NB_ADD=0;
		file9>>current_period;
		file9>>numVlinkReq;
		file9>>NB_RESERVED;
		file9>>NB_ADD;
		VNP_traffic_tab  vLinkReqVect(env,numVlinkReq);

		if(LINK_DBG){
			cout<<"\n\t Number of virtual link requests (NB_REQUEST) = "<<numVlinkReq<<endl;
			cout<<"\n\tPrinting vLinkReqVect: \t\tsize = "<<vLinkReqVect.getSize()<<endl;
			cout<<"\t\titr\t vSrc\tvDest\tvLink\tclass\tbid\tvnp_id\tperiod"<<endl;
		}
		for(IloInt i=0;i<numVlinkReq;i++){
			IloInt vLinkId=0, src=0, dest=0, clsQoS=0, bid=0, vnp_id=0, period=0;
			file9>>src>>dest>>vLinkId>>clsQoS>>bid>>vnp_id>>period;
			if(LINK_DBG)cout<<"\t\t"<<i<<"\t"<<src<<"\t"<<dest<<"\t"<<vLinkId<<"\t"<<clsQoS<<"\t"<<bid<<"\t"<<vnp_id<<"\t"<<period<<endl;
			vLinkReqVect[i].setSrcVnode(src);
			vLinkReqVect[i].setDestVnode(dest);
			vLinkReqVect[i].setVlinkId(vLinkId);
			vLinkReqVect[i].setVlinkQosCls(clsQoS);
			vLinkReqVect[i].SetBid(bid);
			vLinkReqVect[i].setVnpId(vnp_id);
			vLinkReqVect[i].SetPeriod(period);
		}

		file9.close();




		//********************************************************************************************************
		//                             Network definition
		//********************************************************************************************************
		cout<<"\n\t Network definition"<<endl;
		Substrate_Graph_tab  Vect_Substrate_Graph(env,NB_NODE);
		substrate_Graph_creation(Vect_Substrate_Graph, Vect_Link, NB_LINK, NB_NODE, env);
		adjacency_list_creation(Vect_Substrate_Graph, NB_NODE, env);
		//substrate_graph_printing(Vect_Substrate_Graph, env, NB_NODE);

		//------------------------------------------------------------------------------------------
		//                               Calculation of the Shortest path                          -
		//------------------------------------------------------------------------------------------

		cout<<"\t finding shortest_path func for: "<<numVlinkReq<<"  virtual links"<<endl;
		IloInt nb_candidate_embedding_nodes = numVlinkReq*NB_MAX_PATH;
		Meta_Substrate_Path_tab       shortestPathVect(env, nb_candidate_embedding_nodes);
		IloInt numShortestPaths=0;
		for(IloInt j=0;j<numVlinkReq;j++){

			IloInt vLinkSrcVnode = vLinkReqVect[j].getSrcVnode();
			IloInt vLinkDestVnode = vLinkReqVect[j].getDestVnode();
			IloInt request_id = j+1;
			IloInt vLinkId =  vLinkReqVect[j].getVlinkId();
			IloInt vnpId = vLinkReqVect[j].getVnpId();


			IloInt candidSrcSnode = getCandidSnodeForVnode(Preliminary_Node_Embedding_Vect,nb_vnode,vLinkSrcVnode, vnpId);
			IloInt candidDestSnode = getCandidSnodeForVnode(Preliminary_Node_Embedding_Vect,nb_vnode,vLinkDestVnode, vnpId);

			IloInt clsQoS = vLinkReqVect[j].getVlinkQosCls();
			IloInt hops = Link_Class_QoS_Vect[clsQoS-1].GetQoS_Class_Max_Hops();
			//cout<<"\t j = "<<j<<"\t virtual_link_id: "<<vLinkId<<endl;
			shortest_path(Vect_Substrate_Graph, shortestPathVect, candidSrcSnode, candidDestSnode, hops, request_id, vnpId, vLinkId, numShortestPaths, env);
			// Output: pathVect that contains multiple substrate shortest paths for each virtual link that satisfies maxHop requirements
		}

		cout<<"\n\t Number of shortest paths (COUNT_PATH):"<<numShortestPaths<<endl;
		cout<<"\t nb_candidate_embedding_nodes:"<<nb_candidate_embedding_nodes<<endl;
		cout<<"\t shortestPathVect.size ="<<shortestPathVect.getSize()<<endl;

		if(LINK_DBG)printing_meta_path(shortestPathVect, numShortestPaths, env);


		//------------------------------------------------------------------------------------------
		//                      Generate Flow Requests                                     -
		//------------------------------------------------------------------------------------------
		//IloInt numFlows = 0;

//		IloInt torSlot = 0;
//		flowRequest_Tab flowReqVect(env, vLinkReqVect.getSize());	// Initial size of flowReqVect is set to size of vLinkReqVect.  But after randomely generating, extra space is trimmed
//		generateFlowRequests(vLinkReqVect, Link_Class_QoS_Vect, Preliminary_Node_Embedding_Vect, torSlot, flowReqVect);
//
//		cout<<"\n\tPrintitg flowReqVect"<<endl;
//		cout<<"\t\tflowId\tvLink\ttorSlot"<<endl;
//		for(IloInt flowItr=0; flowItr<flowReqVect.getSize(); flowItr++){
//			IloInt flowId = flowReqVect[flowItr].getFlowReqId();
//			IloInt torSlot = flowReqVect[flowItr].getTorSlot();
//			IloInt vLinkId = flowReqVect[flowItr].getVlinkId();
//			cout<<"\t\t"<<flowId<<"\t"<< vLinkId <<"\t"<< torSlot <<endl;
//		}




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

		VLink_Embedding_Trace_Tab  vlink_embedding_trace_x(env, numVlinkReq*NB_MAX_PATH);
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
		cout<<"\n\t A- Creation of VN embedding variables 'x' and 'z' "<<endl;

		IloInt x_VECT_LENGTH =   creation_path_embedding_var(vLinkReqVect, numVlinkReq, shortestPathVect, numShortestPaths, x, vlink_embedding_trace_x, env);
		//IloInt x_VECT_LENGTH =   creation_flow_embedding_var(flowReqVect, vLinkReqVect, numVlinkReq, shortestPathVect, numShortestPaths, x, vlink_embedding_trace_x, env);
		// x = 1 ;  If shortestPath pi is selected for flow request f,
		//


		vnp_variable_creation(embedding_trace_z, z, accepted_vnp_id_tab, nb_accepted_vnp, env);

		//------------------------------------------------------------------------
		//  B- no partially VN Embedding: accept all virtual links or block all  -
		//------------------------------------------------------------------------
		cout<<"\n\t B- no partially VN Embedding: accept all virtual links or block all"<<endl;

		no_partially_VN_embedding(vLinkReqVect, numVlinkReq, shortestPathVect, numShortestPaths, vlink_embedding_trace_x, x, x_VECT_LENGTH, z, embedding_trace_z, nb_accepted_vnp, ILP_model, env);

		//----------------------------------------------------------------------
		// C- Substrate Link Bandwidth Capacity constraint                     -
		//----------------------------------------------------------------------

		cout<<"\n\t C- Substrate Link Bandwidth Capacity constraint"<<endl;

		substrate_link_bw_constraint(Vect_Link, NB_LINK, vLinkReqVect, numVlinkReq, shortestPathVect, numShortestPaths, vlink_embedding_trace_x,
				Link_Class_QoS_Vect, x, x_VECT_LENGTH, ILP_model, env);



		//--------------------------------------------------------------------------------
		// E- Calculation of the objective function Maximize the PIP Profit              -
		//--------------------------------------------------------------------------------
		cout<<"\n\t E- Calculation of the objective function Maximize the PIP Profit"<<endl;

		IloExpr substrate_network_revenue(env);

		IloExpr substrate_cost(env);

		IloNumArray    arc_vect(env,vect_length);

		//cout<<"NB_REQUEST = "<<NB_REQUEST<<endl;
		for(IloInt vLinkReqItr=0; vLinkReqItr<numVlinkReq; vLinkReqItr++){

			IloInt bidForVlink = vLinkReqVect[vLinkReqItr].GetBid();
			IloInt vnpId = vLinkReqVect[vLinkReqItr].getVnpId();
			IloInt vLinkId = vLinkReqVect[vLinkReqItr].getVlinkId();
			IloInt srcVnode  = vLinkReqVect[vLinkReqItr].getSrcVnode();
			IloInt destVnode = vLinkReqVect[vLinkReqItr].getDestVnode();
			IloInt srcVnodeCls = search_vnode_class(srcVnode, vnpId,Preliminary_Node_Embedding_Vect, nb_vnode);
			IloInt destVnodeCls = search_vnode_class(destVnode, vnpId,Preliminary_Node_Embedding_Vect, nb_vnode);
			IloInt srcVnodeCpuReq = Node_Class_QoS_Vect[srcVnodeCls-1].getVnodeCpuReq();
			IloInt destVnodeCpuReq = Node_Class_QoS_Vect[destVnodeCls-1].getVnodeCpuReq();

			IloInt zIndex = search_z_index(vnpId, embedding_trace_z, nb_accepted_vnp);

			substrate_network_revenue += bidForVlink * z[zIndex];					// revenue = sum of link bid values of accepted requests

			IloInt vLinkQosCls = vLinkReqVect[vLinkReqItr].getVlinkQosCls();
			IloInt vLinkBwReq = Link_Class_QoS_Vect[vLinkQosCls-1].GetQoS_Class_Bandwidth();

			IloInt j=0, no_more_emb_path=0;

			while ((j < numShortestPaths)&& (no_more_emb_path == 0)){
				IloInt current_virtual_link_id = shortestPathVect[j].getCorrespVlinkId();
				IloInt current_vnp_id = shortestPathVect[j].GetVNP_Id();

				IloBool equal_current_vlink =(current_virtual_link_id == vLinkId);
				IloBool equal_current_vnp_id =( current_vnp_id == vnpId);

				if((equal_current_vnp_id)&&(equal_current_vlink)){
					IloInt num_path = shortestPathVect[j].getCandidShortestPathId();
					IloInt src_emb = shortestPathVect[j].getSrcSnodeOfPath();
					IloInt dest_emb =   shortestPathVect[j].getDestSnodeOfPath();
					table_initialization(arc_vect,vect_length);
					shortestPathVect[j].GetUsed_Arc_Tab(arc_vect);

					IloInt src_cost = cpu_unit_cost_vect[src_emb-1];
					IloInt dest_cost = cpu_unit_cost_vect[dest_emb-1];

					IloInt emb_path_cost=src_cost*srcVnodeCpuReq + dest_cost*destVnodeCpuReq;

					IloInt l=0;
					IloInt exit=0;

					while (l<vect_length){
						IloInt current_arc = arc_vect[l];
						IloBool not_nul = (current_arc !=0);
						if (not_nul){
							IloInt link_cost= bw_unit_cost_vect[current_arc-1];
							emb_path_cost+=vLinkBwReq*link_cost;
						}
						else
							exit=1;
						l++;
					}
					IloInt path_var_index = search_var_index(vlink_embedding_trace_x, vLinkId, num_path, x_VECT_LENGTH);
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

		cout<<"\n\t"<<endl;

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

		IloInt PIP_profit = ILP_solver.getObjValue();

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

		IloInt new_accepted_vnp=0, nb_accepted_requests=0;

		for(IloInt i=0;i<nb_accepted_vnp;i++){
			IloNum current_value = (IloNum) zvals[i];
			if (current_value > EPSELON_1){
				IloInt vnp_id = embedding_trace_z[i].GetVNP_Id();
				IloInt nb_vlinks = VN_Request_Topology_Vect[vnp_id-1].GetVLink_Number();
				nb_accepted_requests+=nb_vlinks;
				new_accepted_vnp++;
			}
		}

		Routing_Path_Tab path_embedding_tab(env, nb_accepted_requests);

		env.out()<< "x        = " << xvals << endl;

		IloInt nb_embedding_path=0;

		cout<<"\n\tPrinting of embedding solution details"<<endl;
		cout<<"\n\tvLink\tsPath\tsSrc\tsDest\tUsed sNodes\tUsed sLinks"<<endl;

		for(IloInt i=0;i<x_VECT_LENGTH;i++){
			IloNum current_value =  (IloNum) xvals[i];

			if (current_value > EPSELON_1){
				IloInt j=0;
				IloInt found=0;

				while ((j <x_VECT_LENGTH) &&(found==0)){
					//cout<<" j = "<<j;
					IloInt index =   vlink_embedding_trace_x[j].GetVar_Index();
					IloBool equal_index = (index == i);
					if (equal_index){
						found=1;
						IloInt clsQoS = 0;
						IloInt bid = 0;
						IloInt vnp_id = 0;
						IloInt vlink_src_cls = 0;
						IloInt vlink_dest_cls = 0;
						IloInt current_vlink = vlink_embedding_trace_x[j].GetVirtual_Link_Id();
						IloInt num_path = vlink_embedding_trace_x[j].GetNum_Path();


						//cout<<"Virtual link: "<<current_vlink<<"  was assigned to substrate path: "<<num_path<<endl;

						search_request(vLinkReqVect, numVlinkReq, current_vlink, clsQoS, bid, vnp_id, vlink_src_cls, vlink_dest_cls, Preliminary_Node_Embedding_Vect, nb_vnode);

						IloInt src_cpu= Node_Class_QoS_Vect[vlink_src_cls-1].getVnodeCpuReq();
						IloInt dest_cpu= Node_Class_QoS_Vect[vlink_dest_cls-1].getVnodeCpuReq();

						search_embedding_path(shortestPathVect,numShortestPaths, num_path, vnp_id, clsQoS, bid, path_embedding_tab, nb_embedding_path, bw_unit_cost_vect, cpu_unit_cost_vect, Link_Class_QoS_Vect, src_cpu, dest_cpu, env);

					}

					j++;
				}// end while

			}// end if non zero

		} // end for x var elements

		//-------------------------------------
		//  Update node embedding details     -
		//-------------------------------------

		cout<<"\n\t DONE:   Printing of embedding solution details"<<endl;
		Virtual_Node_Embedding_tab  Accepted_Node_Embedding_Vect(env, nb_vnode);

		IloInt nb_accepted_vnode=0;


		cout<<"\n\tnb_vnode = "<<nb_vnode<<endl;
		cout<<"\t Preliminary_Node_Embedding_Vect.size = "<<Preliminary_Node_Embedding_Vect.getSize()<<endl;
		cout<<"\t\t zvals.size = "<<zvals.getSize()<<endl;
		cout<<zvals<<endl;
		int indedx_1=0;
		for(IloInt i=0;i<nb_vnode;i++){
			IloInt vnp_id = Preliminary_Node_Embedding_Vect[i].getVnpId();
			// Index = indedx_1
			indedx_1 =   search_z_index(vnp_id, embedding_trace_z, nb_accepted_vnp);

			//cout<<"\t\t vnp_id = "<<vnp_id<<endl;

			//cout<<"\t\t indedx_1 = "<<indedx_1<<endl;
			//IloNum current_value = (IloNum) zvals[vnp_id-1];
			IloNum current_value = (IloNum) zvals[indedx_1];


			//cout<<"\t current_value = "<<current_value<<endl;

			if (current_value > EPSELON_1){
				IloInt vnode  = Preliminary_Node_Embedding_Vect[i].getVnodeId();
				IloInt vnp_id = Preliminary_Node_Embedding_Vect[i].getVnpId();
				IloInt snode  = Preliminary_Node_Embedding_Vect[i].getCandidSnodeId();
				IloInt cls = Preliminary_Node_Embedding_Vect[i].getQosCls();
				//IloInt c_cpu = Node_Class_QoS_Vect[cls-1].getVnodeCpuReq();
				IloInt period = Preliminary_Node_Embedding_Vect[i].GetPeriod();


				Accepted_Node_Embedding_Vect[nb_accepted_vnode].SetVirtual_Node_Id(vnode);
				Accepted_Node_Embedding_Vect[nb_accepted_vnode].SetVNP_Id(vnp_id);
				Accepted_Node_Embedding_Vect[nb_accepted_vnode].setCandidSnodeId(snode);
				Accepted_Node_Embedding_Vect[nb_accepted_vnode].SetQoS_Class(cls);
				Accepted_Node_Embedding_Vect[nb_accepted_vnode].SetPeriod(period);
				nb_accepted_vnode++;
			}
		}

		cout<<"\tnb_vnode: "<<nb_vnode<<endl;
		cout<<"\tnb_accepted_vnode: "<<nb_accepted_vnode<<endl;

		//**********************************************************************************************************
		//                             Save VN embedding solution                                                  *
		//**********************************************************************************************************


		IloNumArray used_node_vect(env,NB_NODE);
		table_initialization(used_node_vect, NB_NODE);


		cout<<"\n\t Saving VN embedding solution in FILE: "<<f11_ph2EmbeddedVnodes<<endl;
		ofstream file11(f11_ph2EmbeddedVnodes);

		if (!file11)
			cerr << "ERROR: could not open file "<< f11_ph2EmbeddedVnodes<< "for writing"<< endl;
		IloInt used_cpu=0;

		file11<<nb_accepted_vnode<<endl;

		if(LINK_DBG){
			cout<<"\t nb_accepted_vnode = "<<nb_accepted_vnode<<endl;
			cout<<"\t vnode\t vnp_id\t snode\t c_cpu\t period"<<endl;
		}
		for(IloInt i=0;i<nb_accepted_vnode;i++){
			IloInt vnode  = Accepted_Node_Embedding_Vect[i].getVnodeId();
			IloInt vnp_id = Accepted_Node_Embedding_Vect[i].getVnpId();
			IloInt snode  = Accepted_Node_Embedding_Vect[i].getCandidSnodeId();

			IloInt found = findElementInVector(snode,used_node_vect, NB_NODE);
			IloBool not_found_node = (found ==0);

			if (not_found_node)
				used_node_vect[snode-1] = snode;

			IloInt cls = Accepted_Node_Embedding_Vect[i].getQosCls();

			IloInt c_cpu = Node_Class_QoS_Vect[cls-1].getVnodeCpuReq();

			IloInt period = Accepted_Node_Embedding_Vect[i].GetPeriod();



			if(LINK_DBG)cout<<"\t "<<vnode<<"\t "<<vnp_id <<"\t "<<snode<<"\t "<<cls<<"\t "<<period<<endl;
			file11<<vnode<<"\t"<<vnp_id <<"\t"<<snode<<"\t"<<cls<<"\t"<<period<<endl;
			used_cpu+=c_cpu;
		}

		file11<<nb_embedding_path<<endl;

		IloNumArray used_arc_vect(env,NB_LINK );
		table_initialization(used_arc_vect, NB_LINK);

		VNP_traffic_tab  Updated_Request_Vect(env,nb_accepted_requests);

		IloInt cost=0, PIP_cost=0, used_bw=0, nb_total_path_hops=0;
		IloInt nb_accepted_req=0;
		for(IloInt i=0;i<nb_embedding_path;i++){
			IloNumArray  node_list(env,vect_length);
			table_initialization(node_list,vect_length);
			IloNumArray  arc_list(env, vect_length);
			table_initialization(arc_list, vect_length);

			IloInt pathSrc = path_embedding_tab[i].GetSrc_path();
			IloInt pathDest = path_embedding_tab[i].GetDest_path();
			IloInt cls = path_embedding_tab[i].GetClass_QoS();
			IloInt vnp_id = path_embedding_tab[i].GetVNP_Id();
			IloInt vLinkId = path_embedding_tab[i].GetVirtual_Link_Id();
			cost = path_embedding_tab[i].GetCost();
			IloInt virtual_link_profit = path_embedding_tab[i].GetLink_profit();

			path_embedding_tab[i].GetUsed_Arc_Tab(arc_list);
			path_embedding_tab[i].GetUsed_Node_Tab(node_list);
			PIP_cost+=cost;

			file11<<pathSrc<<endl;
			file11<<pathDest<<endl;
			file11<<cls<<endl;
			file11<<vnp_id<<endl;
			file11<<vLinkId<<endl;
			file11<<virtual_link_profit<<endl;
			file11<<cost<<endl;
			file11<<current_period<<endl;

			IloInt k=0;
			IloInt more_node=0;

			while ((k<vect_length) && ( more_node==0)){
				IloInt used_node = node_list[k];
				IloBool non_nul = (used_node !=0);
				if (non_nul){
					file11<<used_node<<" ";
					k++;
				}
				else{
					file11<<0;
					more_node=1;
				}
			}

			file11<<endl;
			k=0;
			IloInt more_arc=0;

			while ((k<vect_length) && ( more_arc==0)){
				IloInt used_arc = arc_list[k];
				IloBool non_nul = (used_arc !=0);
				if (non_nul){

					//IloInt find_elt=0;
					IloInt find_elt = findElementInVector(used_arc, used_arc_vect, NB_LINK);
					IloBool not_find_link = (find_elt == 0);

					if (not_find_link)
						used_arc_vect[used_arc-1]= (IloNum) used_arc;

					used_bw+=cls;
					nb_total_path_hops++;

					file11<<used_arc<<" ";

					k++;
				}
				else{
					file11<<0;
					more_arc=1;
				}

			}

			file11<<endl;

			IloInt index =   search_request_index(vLinkId, vLinkReqVect, vnp_id);

			IloInt srcVnode = vLinkReqVect[index].getSrcVnode();
			IloInt destVnode = vLinkReqVect[index].getDestVnode();
			vLinkId = vLinkReqVect[index].getVlinkId();
			IloInt clsQoS = vLinkReqVect[index].getVlinkQosCls();
			IloInt bid = vLinkReqVect[index].GetBid();
			vnp_id = vLinkReqVect[index].getVnpId();
			IloInt period = vLinkReqVect[index].GetPeriod();

			Updated_Request_Vect[nb_accepted_req].setSrcVnode(srcVnode);
			Updated_Request_Vect[nb_accepted_req].setDestVnode(destVnode);
			Updated_Request_Vect[nb_accepted_req].setVlinkId(vLinkId);
			Updated_Request_Vect[nb_accepted_req].setVlinkQosCls(clsQoS);
			Updated_Request_Vect[nb_accepted_req].SetBid(bid);
			Updated_Request_Vect[nb_accepted_req].setVnpId(vnp_id);
			Updated_Request_Vect[nb_accepted_req].SetPeriod(period);

			nb_accepted_req++;
		} // end while routing paths

		file11.close();



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
		cout<<"\n\t Saving added and removed paths (vlinks) into FILE: "<<f14_ph2RemovedAddedPaths<<endl;
				ofstream file14(f14_ph2RemovedAddedPaths);

				if (!file14)
					cerr << "ERROR: could not open file "<< f14_ph2RemovedAddedPaths<< "for writing"<< endl;

				IloInt nb_removed_paths = 0;
				file14<<nb_removed_paths<<endl;
				file14<<nb_embedding_path<<endl;

				// Writing removed paths to file
				// During time slots t0, zero paths will be removed.


				// Writing added paths to file
				for(IloInt i=0;i<nb_embedding_path;i++){
					file14<<"0"<<"\t"<<path_embedding_tab[i].GetVNP_Id()<<"\t"<<path_embedding_tab[i].GetClass_QoS()<<"\t";
					IloNumArray  node_list(env,vect_length);
					table_initialization(node_list,vect_length);
					path_embedding_tab[i].GetUsed_Node_Tab(node_list);
					//cout<<"node_list.getSize() = "<<node_list.getSize()<<endl;

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

		cout<<"\n\t Performance Evaluation results of embedding solution"<<endl;
		IloInt nb_used_arc = 0;
		for (IloInt l=0;l<NB_LINK;l++){
			IloInt current_value =  used_arc_vect[l];
			IloBool used_link = (current_value !=0);
			if (used_link)
				nb_used_arc++;
		}


		IloInt nb_used_node=0;

		for (IloInt l=0;l<NB_NODE;l++){
			IloInt current_value =  used_node_vect[l];
			IloBool used_node = (current_value !=0);
			if (used_node)
				nb_used_node++;
		}


		IloNum available_bw = (IloNum) (nb_used_arc*SUBSTRATE_LINK_BW);
		IloNum available_cpu = (IloNum) (nb_used_node*SUBSTRATE_NODE_CPU);

		IloNum PIP_profit_unit_available_bw = (IloNum)(PIP_profit/available_bw);
		IloNum PIP_profit_unit_available_cpu = (IloNum)(PIP_profit/available_cpu);

		IloNum bw_efficiency = (IloNum)used_bw/(IloNum)available_bw;
		IloNum cpu_efficiency = (IloNum)used_cpu/(IloNum)available_cpu;

		IloNum nb_hop_per_path = (IloNum)(nb_total_path_hops)/(IloNum)(nb_accepted_requests);

		cout<<"\t\t PIP profit:"<<PIP_profit<<endl;
		cout<<"\t\t PIP Cost:"<<PIP_cost<<endl;
		cout<<"\t\t nb accepted_vnode:"<<nb_accepted_vnode<<endl;
		cout<<"\t\t nb accepted_requests:"<<nb_accepted_requests<<" of "<<numVlinkReq<<endl;

		cout<<"\t\t used bw:"<<used_bw<<endl;
		cout<<"\t\t used cpu:"<<used_cpu<<endl;

		cout<<"\t\t bw efficiency:"<<bw_efficiency<<endl;
		cout<<"\t\t PIP profit unit of available bw:"<<PIP_profit_unit_available_bw<<endl;

		cout<<"\t\t cpu efficiency:"<<cpu_efficiency<<endl;
		cout<<"\t\t PIP profit unit of available cpu:"<<PIP_profit_unit_available_cpu<<endl;

		cout<<"\t\t nb average hops per VN link:"<<nb_hop_per_path<<endl;


		//---------------------------------------------------------------
		// Update of traffic demand with respect to blocked demand      -
		//---------------------------------------------------------------

		cout<<"\t Updating of traffic demand with respect to blocked demand in FILE: "<<f12_ph2AcceptedVlinks<<endl;

		ofstream file12(f12_ph2AcceptedVlinks);

		if (!file12)
			cerr << "ERROR: could not open file `"<< f12_ph2AcceptedVlinks << "`for reading"<< endl;

		IloInt NB_REQUEST =  NB_RESERVED + nb_accepted_req;

		file12<<current_period<<endl;
		file12<<NB_REQUEST<<endl;
		file12<<NB_RESERVED<<endl;
		file12<<nb_accepted_req<<endl;
		if(LINK_DBG){
			cout<<"\n\tnb_accepted_req = "<<nb_accepted_req<<endl;
			cout<<"\t src\t dest\tvLinkId\t clsQoS\t bid\t vnp_id\t period"<<endl;
		}
		for (IloInt i=0;i<nb_accepted_req;i++){
			IloInt src = Updated_Request_Vect[i].getSrcVnode();
			IloInt dest = Updated_Request_Vect[i].getDestVnode();
			IloInt vLinkId = Updated_Request_Vect[i].getVlinkId();
			IloInt clsQoS = Updated_Request_Vect[i].getVlinkQosCls();
			IloInt bid = Updated_Request_Vect[i].GetBid();
			IloInt vnp_id = Updated_Request_Vect[i].getVnpId();
			IloInt period = Updated_Request_Vect[i].GetPeriod();

			if(LINK_DBG)cout<<"\t "<<src<<"\t "<<dest<<"\t"<<vLinkId<<"\t "<<clsQoS<<"\t "<<bid<<"\t "<<vnp_id<<"\t "<<period<<endl;
			file12 <<src<<"\t"<<dest<<"\t"<<vLinkId<<"\t"<<clsQoS<<"\t"<<bid<<"\t"<<vnp_id<<"\t"<<period<<endl;
		}

		file12.close();
		cout<<"\n\t***************************************************"<<endl;
		cout<<"\n\t********** DONE: Initial Link Embedding ***********"<<endl;
		cout<<"\n\t***************************************************\n"<<endl;
		//-------------------------------------------------------------------------------------------------------------
		//                                   End of Cplex model                                                       -
		//-------------------------------------------------------------------------------------------------------------


	}
	catch (IloException& e)
	{
		cerr << "ERROR: " << e.getMessage()<< endl;
	}

	env.end();
	return f14_ph2RemovedAddedPaths;
}




