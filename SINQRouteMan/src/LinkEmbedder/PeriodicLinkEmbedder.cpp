/*
 * PeriodicLinkEmbedder.cpp
 *
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */

#include "../LinkEmbedder/LinkEmbedder.h"

char* LinkEmbedder::embedPeriodicLinks(int currTslot){
	cout<<"\n\t*** Executing Periodic Link Embedder ***"<<endl;

	//int prevTslot = currTslot-1;
	IloInt vect_length=MAX_SIZE;

	// Files being read
	const char*  f1_subTopo="DataFiles/init/f1_subTopo.txt";														// init/f1_subTopo.txt
	const char*  f2_linkQoS="DataFiles/init/f2_linkQoS.txt";														// init/f2_linkQoS.txt
	const char*  f3_nodeQoS="DataFiles/init/f3_nodeQoS.txt";														// init/f3_nodeQoS.txt

	char f4_vnReqTopo[50];
	snprintf(f4_vnReqTopo, sizeof(char) * 50, "DataFiles/t%i/f4_vnReqTopo.txt", currTslot);							// currTslot/f4_vnReqTopo.txt

	char f5_subUnitCost[50];
	snprintf(f5_subUnitCost, sizeof(char) * 50, "DataFiles/t%i/f5_subUnitCost.txt", currTslot);						// currTslot/f5_subUnitCost.txt

	char f8_ph1EmbeddedVnodes[50];
	snprintf(f8_ph1EmbeddedVnodes, sizeof(char) * 50, "DataFiles/t%i/f8_ph1EmbeddedVnodes.txt", currTslot);			// currTslot/f8_ph1EmbeddedVnodes.txt

	char f9_ph1AcceptedVlinks[50];
	snprintf(f9_ph1AcceptedVlinks, sizeof(char) * 50, "DataFiles/t%i/f9_ph1AcceptedVlinks.txt", currTslot);			// currTslot/f9_ph1AcceptedVlinks.txt

	char prv_f11_ph2EmbeddedVnodes[50];
	if(currTslot>0)
		snprintf(prv_f11_ph2EmbeddedVnodes, sizeof(char) * 50, "DataFiles/t%i/f11_ph2EmbeddedVnodes.txt", currTslot-1);	// currTslot/f11_ph2EmbeddedVnodes.txt
	else
		snprintf(prv_f11_ph2EmbeddedVnodes, sizeof(char) * 50, "DataFiles/init/f11_ph2EmbeddedVnodes.txt");
	//char f17_ctrlUpdatedNalocs[50];
	//snprintf(f17_ctrlUpdatedNalocs, sizeof(char) * 50, "DataFiles/t%i/f17_ctrlUpdatedNalocs.txt", prevTslot);		// currTslot/f12_ph2AcceptedVlinks.txt

	// Files being written
	char f11_ph2EmbeddedVnodes[50];
	snprintf(f11_ph2EmbeddedVnodes, sizeof(char) * 50, "DataFiles/t%i/f11_ph2EmbeddedVnodes.txt", currTslot);		// currTslot/f11_ph2EmbeddedVnodes.txt
	char f12_ph2AcceptedVlinks[50];
	snprintf(f12_ph2AcceptedVlinks, sizeof(char) * 50, "DataFiles/t%i/f12_ph2AcceptedVlinks.txt", currTslot);		// currTslot/f12_ph2AcceptedVlinks.txt
	char f13_cplexLinkModel[50];
	snprintf(f13_cplexLinkModel, sizeof(char) * 50, "DataFiles/t%i/f13_cplexLinkModel.lp", currTslot);				// currTslot/f13_cplexLinkModel.lp
	char* f14_ph2AddRemovePaths = new char[50];
	snprintf(f14_ph2AddRemovePaths, sizeof(char) * 50, "DataFiles/t%i/f14_ph2RemvdAddedPaths.txt", currTslot);		// Contains added and removed vlinks as a tab delimited intermediate physical switch IDs

	IloEnv env;

	try{
		cout<<"\tReading Input Files: "<<endl;
		//---------------------------------------------------------------------------------------------------------
		//            			               FILE 1: Reading of Network Substrate Topology            		  -
		//---------------------------------------------------------------------------------------------------------
		cout<<"\tf1\t Substrate Network Topology from File: "<<f1_subTopo<<endl;
		ifstream f1(f1_subTopo);
		if (!f1)
			cerr << "ERROR: could not open file"<< f1_subTopo << "for reading"<< endl;
		IloInt NB_NODE=0, NB_LINK=0;
		f1>> NB_NODE;
		f1>> NB_LINK;

		SubLinksAryType Vect_Link(env,NB_LINK);
		for(IloInt i=0;i<NB_LINK;i++){
			IloInt sLink=0, src=0, dest=0;
			f1>>sLink>>src>>dest;
			Vect_Link[i].setSlinkId(sLink);
			Vect_Link[i].setSrcSnode(src);
			Vect_Link[i].setDstSnode(dest);
		}
		f1.close();


		//--------------------------------------------------------------------------------------------------------
		//                  			          FILE 2: Reading Link QoS classes                               -
		//--------------------------------------------------------------------------------------------------------
		cout<<"\tf2\t Link QoS classes from File: "<<f2_linkQoS<<endl;
		ifstream f2(f2_linkQoS);

		if (!f2)
			cerr << "ERROR: could not open file "<< f2_linkQoS << "for reading"<< endl;
		IloInt NB_LINK_CLASS=0;
		f2>>NB_LINK_CLASS;

		LinkQosClsAryType  Link_Class_QoS_Vect(env,NB_LINK_CLASS);

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
		cout<<"\tf3\t Node QoS classes from File: "<<f3_nodeQoS<<endl;
		ifstream f3(f3_nodeQoS);
		if (!f3)
			cerr << "ERROR: could not open file "<< f3_nodeQoS << "for reading"<< endl;
		IloInt NB_NODE_CLASS=0, loc=0, cpu=0;
		f3>>NB_NODE_CLASS;
		NodeQosClsAryType  Node_Class_QoS_Vect(env,NB_NODE_CLASS);
		IloInt length_vect = MAX_NB_LOCATION;
		IloNumArray location_vect(env,length_vect);
		for(IloInt i=0;i<NB_NODE_CLASS;i++){
			IloInt clsQoS=0;
			f3 >> clsQoS >> cpu;
			arrayZeroInitialize(location_vect, length_vect);
			for(IloInt j=0;j<MAX_NB_LOCATION;j++){
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
		cout<<"\tf4\t of the topology of VN requests from File: "<<f4_vnReqTopo<<endl;
		ifstream f4(f4_vnReqTopo);
		if (!f4)
			cerr << "ERROR: could not open file `"<< f4_vnReqTopo << "`for reading"<< endl;
		IloInt NB_VNP = 0;
		f4>>NB_VNP;			// In dthis whole file, NB_VNP is useful
		VnReqTopoAryType VN_Request_Topology_Vect(env, NB_VNP);
		for(IloInt i=0;i<NB_VNP;i++){
			IloInt vnp_id=0, nb_vnodes=0, nb_vlinks=0, period=0;
			f4>>vnp_id>>nb_vnodes>>nb_vlinks>>period;
			VN_Request_Topology_Vect[i].SetVLink_Number(nb_vlinks);
			VN_Request_Topology_Vect[i].SetVNode_Number(nb_vnodes);
			VN_Request_Topology_Vect[i].SetVNP_Id(vnp_id);
		}
		f4.close();

		//------------------------------------------------------------------------------------------------------------
		//                                   FILE 5: Reading of substrate bw unit cost  	   		                 -
		//------------------------------------------------------------------------------------------------------------
		cout<<"\tf5\t of substrate bw unit cost from File: "<<f5_subUnitCost<<endl;
		ifstream f5(f5_subUnitCost);
		if (!f5)
			cerr << "ERROR: could not open file "<< f5_subUnitCost<< "for reading"<< endl;
		IloNumArray    bw_unit_cost_vect(env,NB_LINK);
		IloNumArray    cpu_unit_cost_vect(env,NB_NODE);
		for(IloInt j=0;j<NB_LINK;j++)
			f5>>bw_unit_cost_vect[j];

		for(IloInt j=0;j<NB_NODE;j++)
			f5>>cpu_unit_cost_vect[j];
		f5.close();

		//------------------------------------------------------------------------------------------------------------
		//                              FILE 8: Reading Embedded Vnodes in Phase-I
		//------------------------------------------------------------------------------------------------------------
		cout<<"\tf8\t Embedded Vnodes in Phase-I from File: "<<f8_ph1EmbeddedVnodes<<endl;
		ifstream f8(f8_ph1EmbeddedVnodes);
		if (!f8)
			cerr << "ERROR: could not open file "<< f8_ph1EmbeddedVnodes << "for reading"<< endl;
		IloInt nb_vnode=0;
		f8>>nb_vnode;
		Virtual_Node_Embedding_tab  Preliminary_Node_Embedding_Vect(env, nb_vnode);
		IloNumArray accepted_vnp_id_tab(env,NB_VNP );
		arrayZeroInitialize(accepted_vnp_id_tab, NB_VNP);
		IloInt nb_accepted_vnp=0;
		if(LINK_DBG){
			cout<<"\n\t nb_vnode = "<<nb_vnode<<endl;
			cout<<"\n\tPrinting Preliminary_Node_Embedding_Vect: \t\tsize = "<<Preliminary_Node_Embedding_Vect.getSize()<<endl;
			cout<<"\t\tvnode\tvnp_id\tsnode\tcls\tperiod"<<endl;
		}
		for(IloInt i=0;i<nb_vnode;i++){
			IloInt vnode=0, vnp_id=0, snode=0, cls=0, period=0;
			f8>>vnode>>vnp_id>>snode>>cls>>period;
			if(LINK_DBG)cout<<"\t\t"<<vnode<<"\t"<<vnp_id<<"\t"<<snode<<"\t"<<cls<<"\t"<<period<<endl;
			Preliminary_Node_Embedding_Vect[i].SetVirtual_Node_Id(vnode);
			Preliminary_Node_Embedding_Vect[i].SetVNP_Id(vnp_id);
			Preliminary_Node_Embedding_Vect[i].setCandidSnodeId(snode);
			Preliminary_Node_Embedding_Vect[i].SetQoS_Class(cls);
			Preliminary_Node_Embedding_Vect[i].SetPeriod(period);
			IloInt find = findElementInVector(vnp_id, accepted_vnp_id_tab, nb_accepted_vnp);
			IloBool is_new_elet = (find==0);
			if (is_new_elet){
				accepted_vnp_id_tab[nb_accepted_vnp]= (IloNum) vnp_id;
				nb_accepted_vnp++;
			}
		}

		//------------------------------------------------------------------------------------------------------------
		//              		        FILE 9:Reading Accepted Vlinks in Phase-I                            -
		//------------------------------------------------------------------------------------------------------------
		cout<<"\tf9\t Accepted Vlinks in Phase-I from File: "<<f9_ph1AcceptedVlinks<<endl;
		//const char*  filename2="C:/ILOG/CPLEX121/abdallah_work/data/PhaseI_accepted_traffic_us_metro20_p9.txt";
		ifstream f9(f9_ph1AcceptedVlinks);
		if (!f9)
			cerr << "ERROR: could not open file `"<< f9_ph1AcceptedVlinks<< "`for reading"<< endl;
		IloInt current_period=0, totVlinkEmbedPh1=0, rtndVlinkCountFrmPrv=0, acptdVlinkInCur=0;
		f9>>current_period;
		f9>>totVlinkEmbedPh1;
		f9>>rtndVlinkCountFrmPrv;
		f9>>acptdVlinkInCur;
		VlinkReqAryType  retainedVlinkReqVect(env,rtndVlinkCountFrmPrv);
		VlinkReqAryType  addedVlinkReqVect(env,acptdVlinkInCur);
		if(LINK_DBG){
			cout<<"\n\t Number of virtual link requests (NB_REQUEST) = "<<totVlinkEmbedPh1<<endl;
			cout<<"\n\tPrinting vLinkReqVect: \t\tsize = "<<addedVlinkReqVect.getSize()<<endl;
			cout<<"\t\titr\t vSrc\tvDest\tvLink\tclass\tbid\tvnp_id\tperiod"<<endl;
		}
		for(IloInt j=0, i=0;i<totVlinkEmbedPh1;i++){
			IloInt vLinkId=0, src=0, dest=0, clsQoS=0, bid=0, vnp_id=0, period=0;
			f9>>src>>dest>>vLinkId>>clsQoS>>bid>>vnp_id>>period;
			if(LINK_DBG)cout<<"\t\t"<<i<<"\t"<<src<<"\t"<<dest<<"\t"<<vLinkId<<"\t"<<clsQoS<<"\t"<<bid<<"\t"<<vnp_id<<"\t"<<period<<endl;
			if (i < rtndVlinkCountFrmPrv){
				retainedVlinkReqVect[i].setSrcVnode(src);
				retainedVlinkReqVect[i].setDestVnode(dest);
				retainedVlinkReqVect[i].setVlinkId(vLinkId);
				retainedVlinkReqVect[i].setVlinkQosCls(clsQoS);
				retainedVlinkReqVect[i].SetBid(bid);
				retainedVlinkReqVect[i].setVnpId(vnp_id);
				retainedVlinkReqVect[i].SetPeriod(period);
			}
			else{
				addedVlinkReqVect[j].setSrcVnode(src);
				addedVlinkReqVect[j].setDestVnode(dest);
				addedVlinkReqVect[j].setVlinkId(vLinkId);
				addedVlinkReqVect[j].setVlinkQosCls(clsQoS);
				addedVlinkReqVect[j].SetBid(bid);
				addedVlinkReqVect[j].setVnpId(vnp_id);
				addedVlinkReqVect[j].SetPeriod(period);

				j++;
			}
		}
		f9.close();

		//------------------------------------------------------------------------------------------------------------
		//                             initialization of Available Substrate Resources     -
		//------------------------------------------------------------------------------------------------------------
		IloNumArray Available_bw_vect(env,NB_LINK);
		for(IloInt i=0; i<NB_LINK;i++)
			Available_bw_vect[i] = SUBSTRATE_LINK_BW;

		//------------------------------------------------------------------------------------------------------------
		//         				FILE 11: 	Reading Embedding result of previous Tslot
		// 									Finding VN requests retained to current Tslot
		//------------------------------------------------------------------------------------------------------------
		cout<<"\tprv_f11\t Embedding result of previous Tslot from File: "<<prv_f11_ph2EmbeddedVnodes<<endl;
		ifstream prv_f11(prv_f11_ph2EmbeddedVnodes);
		if (!prv_f11)
			cerr << "ERROR: could not open file "<< prv_f11_ph2EmbeddedVnodes <<"for reading"<< endl;
		IloInt embdVnodesInPrv = 0;
		prv_f11>>embdVnodesInPrv;//35

		Virtual_Node_Embedding_tab rtndVnodeEmbeddingVect(env,embdVnodesInPrv);
		SubstratePathAryType  rtndVlinkEmbeddingVect(env, rtndVlinkCountFrmPrv);	//Retained link embedding vector

		IloInt rtndVnodeCount=0;
		for(IloInt i=0;i<embdVnodesInPrv;i++){
			IloInt vnode=0, vnp_id=0, snode=0, cls=0, period=0;
			prv_f11>>vnode>>vnp_id>>snode>>cls>>period;
			// check VN requests accepted and embedded in prevTslot (prv_f11_ph2EmbeddedVnodes) are still remain in currTslot after node embedding (f9_ph1AcceptedVlinks)
			IloInt found = search_reserved_vnode(retainedVlinkReqVect, rtndVlinkCountFrmPrv, vnode, vnp_id, period);
			if (found == 1){
				rtndVnodeEmbeddingVect[rtndVnodeCount].SetVirtual_Node_Id(vnode);
				rtndVnodeEmbeddingVect[rtndVnodeCount].SetVNP_Id(vnp_id);
				rtndVnodeEmbeddingVect[rtndVnodeCount].setCandidSnodeId(snode);
				rtndVnodeEmbeddingVect[rtndVnodeCount].SetQoS_Class(cls);
				rtndVnodeEmbeddingVect[rtndVnodeCount].SetPeriod(period);
				rtndVnodeCount++;
			}
		}
		cout<<"\n\tFinding retained Vnode and Vlink embedding from previous Tslot"<<endl;
		cout<<"\t\t Embedded Vnodes in previous Tslot\t\t= "<<embdVnodesInPrv<<endl;
		cout<<"\t\t Retained Vnodes for current Tslot\t\t= "<<rtndVnodeCount<<endl<<endl;
		cout<<"\t\t Total Vlinks Embedded after Phse I\t\t= "<<totVlinkEmbedPh1<<endl;
		cout<<"\t\t Retained Vlinks from previous Tslot\t\t= "<<rtndVlinkCountFrmPrv<<endl;
		cout<<"\t\t Newly accepted Vlinks in current Tslot\t\t= "<<acptdVlinkInCur<<endl<<endl;
		IloInt embdVlinksInPrv = 0;
		prv_f11>>embdVlinksInPrv;	//39
		IloInt prvEmbdRmvdCurr = embdVlinksInPrv-rtndVlinkCountFrmPrv;
		cout<<"\t\t Total Vlinks embedded in previous Tslot\t= "<<embdVlinksInPrv<<endl;
		cout<<"\t\t Vlinks retained to current Tslot\t\t= "<<rtndVlinkCountFrmPrv<<endl;
		cout<<"\t\t Previously embedded but removed Vlinks\t\t= "<<prvEmbdRmvdCurr<<endl;
		if (prvEmbdRmvdCurr<0){
			cerr<<"\n\tERROR:Number of Removed path count is less than zero\n";
			prvEmbdRmvdCurr = embdVlinksInPrv;									//Dirty work. Remove after correcting trafficgenerator link acceptance issue
			//return;
		}
		SubstratePathAryType  rmvdVlinkEmbedingVect(env, prvEmbdRmvdCurr);
		IloInt numRtndVlinkEmbdFound=0;
		IloInt rmvdVlinkCount = 0;

		IloNumArray  node_list_prv(env,vect_length);
		IloNumArray  arc_list(env, vect_length);

		for(IloInt i=0;i<embdVlinksInPrv;i++){
			IloInt src=0, dest=0, cls=0, vnp_id=0, virtual_link_id=0, virtual_link_profit=0, cost=0, period=0;
			prv_f11>>src>>dest>>cls>>vnp_id>>virtual_link_id>>virtual_link_profit>>cost>>period;
			/*
				10
				3
				3
				2
				7
				137
				70
				0
			 */
			arrayZeroInitialize(node_list_prv,vect_length);
			arrayZeroInitialize(arc_list, vect_length);

			IloInt bw =  Link_Class_QoS_Vect[cls-1].getQosClsBw();
			IloInt k=0, more_node=0;

			while ((k<vect_length) && ( more_node==0)){
				IloInt used_node;
				prv_f11>>used_node;	//10 9 3 0
				IloBool non_nul = (used_node!=0);
				if (non_nul){
					node_list_prv[k] = (IloNum) used_node;
					k++;
				}
				else
					more_node=1;
			}
			k=0;
			IloInt more_arc=0;
			IloInt found = searchRtndReqFrmPrv(retainedVlinkReqVect, rtndVlinkCountFrmPrv, virtual_link_id, vnp_id, period);
			while ((k<vect_length) && ( more_arc==0)){
				IloInt used_arc;
				prv_f11>>used_arc;	//26 8 0
				IloBool non_nul = (used_arc !=0);
				if (non_nul){
					arc_list[k] = (IloNum) used_arc;
					if (found ==1)
						Available_bw_vect[used_arc-1] = Available_bw_vect[used_arc-1] - bw;
					k++;
				}
				else
					more_arc=1;
			}

			if (found == 1){
				rtndVlinkEmbeddingVect[numRtndVlinkEmbdFound].setSrcSnode(src);
				rtndVlinkEmbeddingVect[numRtndVlinkEmbdFound].setDstSnode(dest);
				rtndVlinkEmbeddingVect[numRtndVlinkEmbdFound].setQosCls(cls);
				rtndVlinkEmbeddingVect[numRtndVlinkEmbdFound].setVnpId(vnp_id);
				rtndVlinkEmbeddingVect[numRtndVlinkEmbdFound].setVlinkId(virtual_link_id);
				rtndVlinkEmbeddingVect[numRtndVlinkEmbdFound].setLinkProfit(virtual_link_profit);
				rtndVlinkEmbeddingVect[numRtndVlinkEmbdFound].setCost(cost);
				rtndVlinkEmbeddingVect[numRtndVlinkEmbdFound].setPeriod(period);
				rtndVlinkEmbeddingVect[numRtndVlinkEmbdFound].setActvSlinkAry(arc_list);
				rtndVlinkEmbeddingVect[numRtndVlinkEmbdFound].setUsedSnodeAry(node_list_prv);
				numRtndVlinkEmbdFound++;
			}

			else if(found == 0){
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setSrcSnode(src);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setDstSnode(dest);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setQosCls(cls);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setVnpId(vnp_id);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setVlinkId(virtual_link_id);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setLinkProfit(virtual_link_profit);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setCost(cost);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setPeriod(period);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setActvSlinkAry(arc_list);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setUsedSnodeAry(node_list_prv);
				rmvdVlinkCount++;
			}
		}// end for routing paths

		if(rmvdVlinkCount != prvEmbdRmvdCurr){
			cerr<<"\n\tRemoved path counts does not match. Making nbRemovedPaths = remPathCount\n";
			prvEmbdRmvdCurr = rmvdVlinkCount;
		}
		prv_f11.close();
		cout<<"\t\t Retained Vlink embedding entries found \t= "<<numRtndVlinkEmbdFound<<endl;

		//********************************************************************************************************
		//                             Network definition
		//********************************************************************************************************
		cout<<"\n\t Network definition"<<endl;
		SnodesAryType  Vect_Substrate_Graph(env,NB_NODE);
		substrate_Graph_creation(Vect_Substrate_Graph, Vect_Link, NB_LINK, NB_NODE, env);
		adjacency_list_creation(Vect_Substrate_Graph, NB_NODE, env);
		//substrate_graph_printing(Vect_Substrate_Graph, env, NB_NODE);

		//------------------------------------------------------------------------------------------
		//                               Calculation of the Shortest path                          -
		//------------------------------------------------------------------------------------------
		cout<<"\n\t Calculating Shortest paths"<<endl;
		IloInt nb_candidate_embedding_nodes = acptdVlinkInCur*NB_MAX_PATH;
		MetaSubPathAryType       Path_Vect(env, nb_candidate_embedding_nodes);
		IloInt numShortestPaths = 0;
		for(IloInt j=0;j<acptdVlinkInCur;j++){

			IloInt src_vlink = (IloInt)  addedVlinkReqVect[j].getSrcVnode();
			IloInt dest_vlink = (IloInt) addedVlinkReqVect[j].getDestVnode();
			IloInt request_id = j+1;
			IloInt virtual_link_id = (IloInt) addedVlinkReqVect[j].getVlinkId();
			IloInt vnp_id = (IloInt) addedVlinkReqVect[j].getVnpId();

			IloInt src = getCandidSnodeForVnode(Preliminary_Node_Embedding_Vect,nb_vnode,src_vlink, vnp_id);
			IloInt dest = getCandidSnodeForVnode(Preliminary_Node_Embedding_Vect,nb_vnode,dest_vlink, vnp_id);

			IloInt class_QoS = (IloInt) addedVlinkReqVect[j].getVlinkQosCls();
			IloInt hops = (IloInt) Link_Class_QoS_Vect[class_QoS-1].GetQoS_Class_Max_Hops();
			//cout<<"\t "<<j<<"\t "<<src_vlink<<"\t\t "<<dest_vlink<<"\t\t "<<virtual_link_id<<"\t\t "<<vnp_id<<"\t "<<src<<"\t\t "<<dest<<"\t\t "<<class_QoS<<"\t\t "<<hops<<endl;
			shortest_path(Vect_Substrate_Graph, Path_Vect, src, dest, hops, request_id, vnp_id, virtual_link_id, numShortestPaths, env);
			//cout<<"\t Next"<<endl;
		}

		cout<<"\t\t numShortestPaths:"<<numShortestPaths<<endl;
		cout<<"\t nb_candidate_embedding_nodes:"<<nb_candidate_embedding_nodes<<endl;

		printing_meta_path(Path_Vect, numShortestPaths, env);

		//------------------------------------------------------------------------------------------------------
		//                                           CPLEX Model                                               -
		//------------------------------------------------------------------------------------------------------
		//                        Declaration of Concert Technology Environment Model                          *
		//******************************************************************************************************
		IloModel ILP_model(env);

		//******************************************************************************************************
		//                        Declaration of ILP Decision Variables                                        *
		//******************************************************************************************************
		IloNumVarArray x(env);   // used to decide on the embedding of VN on substrate nodes
		IloNumVarArray z(env);     // used to decide on the acceptance of VNP request

		VLink_Embedding_Trace_Tab  vlink_embedding_trace_x(env, acptdVlinkInCur*NB_MAX_PATH);
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
		cout<<"\n\t\t\t ILP Model definition "<<endl;
		//------------------------------------------------------------------------
		//  A- Creation of VN embedding variables								  -
		//------------------------------------------------------------------------
		cout<<"\t A- Creation of VN embedding variables 'x' and 'z' "<<endl;

		IloInt x_VECT_LENGTH = creation_path_embedding_var(addedVlinkReqVect, acptdVlinkInCur, Path_Vect, numShortestPaths, x, vlink_embedding_trace_x, env);

		vnp_variable_creation(embedding_trace_z, z, accepted_vnp_id_tab, nb_accepted_vnp, env);

		//------------------------------------------------------------------------
		//  B- no partially VN Embedding: accept all virtual links or block all  -
		//------------------------------------------------------------------------
		cout<<"\t B- no partially VN Embedding: accept all virtual links or block all"<<endl;

		no_partially_VN_embedding(addedVlinkReqVect, acptdVlinkInCur, Path_Vect, numShortestPaths, vlink_embedding_trace_x, x, x_VECT_LENGTH,
				z, embedding_trace_z, nb_accepted_vnp, ILP_model, env);

		//----------------------------------------------------------------------
		// C- Substrate Link Bandwidth Capacity constraint                     -
		//----------------------------------------------------------------------
		cout<<"\t C- Substrate Link Bandwidth Capacity constraint"<<endl;

		periodic_substrate_link_bw_constraint(Vect_Link, NB_LINK, addedVlinkReqVect, acptdVlinkInCur, Path_Vect, numShortestPaths, vlink_embedding_trace_x,
				Link_Class_QoS_Vect, x, x_VECT_LENGTH, ILP_model, Available_bw_vect, env);


		//--------------------------------------------------------------------------------
		// E- Calculation of the objective function Maximize the PIP Profit              -
		//--------------------------------------------------------------------------------
		cout<<"\t E- Calculation of the objective function Maximize the PIP Profit"<<endl;
		IloExpr substrate_network_revenue(env);
		IloExpr substrate_cost(env);
		IloNumArray    arc_vect(env,vect_length);

		for(IloInt i=0;i<acptdVlinkInCur;i++){
			IloInt bid = (IloInt) addedVlinkReqVect[i].getBid();
			IloInt vnp_id = (IloInt) addedVlinkReqVect[i].getVnpId();
			IloInt virtual_link_id = (IloInt) addedVlinkReqVect[i].getVlinkId();
			IloInt vlink_src  = (IloInt) addedVlinkReqVect[i].getSrcVnode();
			IloInt vlink_dest = (IloInt) addedVlinkReqVect[i].getDestVnode();
			IloInt vlink_src_cls = (IloInt) search_vnode_class(vlink_src, vnp_id,Preliminary_Node_Embedding_Vect, nb_vnode);
			IloInt vlink_dest_cls = (IloInt) search_vnode_class(vlink_dest, vnp_id,Preliminary_Node_Embedding_Vect, nb_vnode);
			IloInt src_cpu= (IloInt) Node_Class_QoS_Vect[vlink_src_cls-1].getVnodeCpuReq();
			IloInt dest_cpu= (IloInt) Node_Class_QoS_Vect[vlink_dest_cls-1].getVnodeCpuReq();
			IloInt index = (IloInt) search_z_index(vnp_id, embedding_trace_z, nb_accepted_vnp);

			substrate_network_revenue+= bid*z[index];

			IloInt class_QoS = (IloInt) addedVlinkReqVect[i].getVlinkQosCls();
			IloInt bw = (IloInt)Link_Class_QoS_Vect[class_QoS-1].getQosClsBw();
			IloInt j=0, no_more_emb_path=0;

			while ((j < numShortestPaths)&& (no_more_emb_path == 0)){
				IloInt current_virtual_link_id = (IloInt) Path_Vect[j].getVlinkId();
				IloInt current_vnp_id = (IloInt) Path_Vect[j].getVnpId();

				IloBool equal_current_vlink =(current_virtual_link_id == virtual_link_id);
				IloBool equal_current_vnp_id =( current_vnp_id == vnp_id);

				if((equal_current_vnp_id)&&(equal_current_vlink)){
					IloInt num_path = (IloInt) Path_Vect[j].getMetaSpathId();
					IloInt src_emb = (IloInt)  Path_Vect[j].getSrcSnode();
					IloInt dest_emb = (IloInt) Path_Vect[j].getDstSnode();
					arrayZeroInitialize(arc_vect,vect_length);
					Path_Vect[j].getUsedSlinkAry(arc_vect);
					IloInt src_cost = (IloInt) cpu_unit_cost_vect[src_emb-1];
					IloInt dest_cost = (IloInt) cpu_unit_cost_vect[dest_emb-1];
					IloInt emb_path_cost=src_cost*src_cpu + dest_cost*dest_cpu;
					IloInt l=0, exit=0;

					while (l<vect_length){
						IloInt current_arc = (IloInt) arc_vect[l];
						IloBool not_nul = (current_arc !=0);
						if (not_nul) {
							IloInt link_cost= (IloInt) bw_unit_cost_vect[current_arc-1];
							emb_path_cost+=bw*link_cost;
						}
						else
							exit=1;
						l++;
					}
					IloInt path_var_index = (IloInt) search_var_index(vlink_embedding_trace_x, virtual_link_id, num_path, x_VECT_LENGTH);
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

		//*****************************************************************************************************
		//                   		           Solving  ILP Model                                             *
		//*****************************************************************************************************
		cout<<"\n\t Solving ILP Model"<<endl;
		ILP_solver.exportModel(f13_cplexLinkModel);
		ILP_solver.solve();

		//*******************************************************************************************************
		//                             Printing of the calculated ILP Solution                                  *
		//*******************************************************************************************************

		env.out() <<"Solution Status="<<ILP_solver.getStatus() <<endl;
		IloInt PIP_profit = (IloInt) ILP_solver.getObjValue();
		env.out() <<"Objective Value ="<<PIP_profit<<endl;
		cout<<endl;

		//****************************************************************************************************
		//								save of initiale solution		  								       *
		//*****************************************************************************************************

		IloNumArray xvals(env);
		ILP_solver.getValues(xvals, x);

		IloNumArray zvals(env);
		ILP_solver.getValues(zvals, z);

		//****************************************************************************************************
		//                      Printing of embedding solution details                                       *
		//****************************************************************************************************
		env.out()<< "z        = " << zvals << endl;
		IloInt nb_accepted_requests=0;
		for(IloInt i=0;i<nb_accepted_vnp;i++) {
			IloNum current_value = (IloNum) zvals[i];
			if (current_value > EPSELON_1){
				IloInt vnp_id = (IloInt) embedding_trace_z[i].GetVNP_Id();

				IloInt nb_vlinks = (IloInt) VN_Request_Topology_Vect[vnp_id-1].GetVLink_Number();
				nb_accepted_requests+=nb_vlinks;
			}
		}
		SubstratePathAryType path_embedding_tab(env, nb_accepted_requests);

		env.out()<< "x        = " << xvals << endl;
		IloInt nb_embedding_path=0;

		cout<<"\n\t\t\tEmbedding solution"<<endl;
		cout<<"\tvLink\tsPath\tsSrc\tsDest\tUsed sNodes\tUsed sLinks"<<endl;

		for(IloInt i=0;i<x_VECT_LENGTH;i++){
			IloNum current_value =  (IloNum) xvals[i];

			if (current_value > EPSELON_1) {
				IloInt j=0, found=0;

				while ((j <x_VECT_LENGTH) &&(found==0)){
					IloInt index = (IloInt) vlink_embedding_trace_x[j].GetVar_Index();
					IloBool equal_index = (index == i);
					if (equal_index){
						found=1;
						IloInt class_QoS = 0;
						IloInt bid = 0;
						IloInt vnp_id = 0;
						IloInt vlink_src_cls = 0;
						IloInt vlink_dest_cls = 0;
						IloInt current_vlink = (IloInt) vlink_embedding_trace_x[j].getVlinkId();
						IloInt num_path = (IloInt) vlink_embedding_trace_x[j].getShortestPathId();

						//cout<<" virtual link: "<<current_vlink<<"was assigned to substrate path: "<<num_path<<endl;

						search_request(addedVlinkReqVect, acptdVlinkInCur, current_vlink, class_QoS, bid, vnp_id, vlink_src_cls, vlink_dest_cls, Preliminary_Node_Embedding_Vect, nb_vnode);
						IloInt src_cpu= (IloInt) Node_Class_QoS_Vect[vlink_src_cls-1].getVnodeCpuReq();
						IloInt dest_cpu= (IloInt) Node_Class_QoS_Vect[vlink_dest_cls-1].getVnodeCpuReq();
						search_embedding_path(Path_Vect,numShortestPaths, num_path, vnp_id, class_QoS, bid, path_embedding_tab, nb_embedding_path,
								bw_unit_cost_vect, cpu_unit_cost_vect, Link_Class_QoS_Vect, src_cpu, dest_cpu, env);
					}
					j++;
				}// end while
			}// end if non zero
		} // end for x var elements

		//-------------------------------------
		//  Update node embedding details     -
		//-------------------------------------
		//cout<<"\n\t DONE:   Printing of embedding solution details"<<endl;
		Virtual_Node_Embedding_tab  Accepted_Node_Embedding_Vect(env, nb_vnode);

		IloInt nb_accepted_vnode=0;

		cout<<"\n\t nb_vnode = "<<nb_vnode<<endl;
		cout<<"\t Preliminary_Node_Embedding_Vect.size = "<<Preliminary_Node_Embedding_Vect.getSize()<<endl;
		cout<<"\t zvals.size = "<<zvals.getSize()<<",  \tzvals = "<<zvals<<endl;
		//int indedx_1=0;

		for(IloInt i=0;i<nb_vnode;i++){
			IloInt vnp_id = (IloInt) Preliminary_Node_Embedding_Vect[i].getVnpId();
			IloInt index = (IloInt) search_z_index(vnp_id, embedding_trace_z, nb_accepted_vnp);

			IloNum current_value = (IloNum) zvals[index];

			if (current_value > EPSELON_1){
				IloInt vnode  = (IloInt) Preliminary_Node_Embedding_Vect[i].getVnodeId();
				IloInt vnp_id = (IloInt) Preliminary_Node_Embedding_Vect[i].getVnpId();
				IloInt snode  = (IloInt) Preliminary_Node_Embedding_Vect[i].getCandidSnodeId();
				IloInt cls = (IloInt) Preliminary_Node_Embedding_Vect[i].getQosCls();
				//c_cpu = (IloInt) Node_Class_QoS_Vect[cls-1].getVnodeCpuReq();

				IloInt period = (IloInt) Preliminary_Node_Embedding_Vect[i].GetPeriod();


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
		cout<<"\n\t Saving VN embedding solution in FILE: "<<f11_ph2EmbeddedVnodes<<endl;
		ofstream f11(f11_ph2EmbeddedVnodes);

		if (!f11)
			cerr << "ERROR: could not open file "<< f11_ph2EmbeddedVnodes<< "for reading"<< endl;

		nb_vnode = rtndVnodeCount + nb_accepted_vnode;

		IloInt reserved_cpu=0;
		f11<<nb_vnode<<endl;

		for(IloInt i=0;i<rtndVnodeCount;i++){
			IloInt vnode = (IloInt) rtndVnodeEmbeddingVect[i].getVnodeId();
			IloInt vnp_id= (IloInt) rtndVnodeEmbeddingVect[i].getVnpId();
			IloInt snode = (IloInt) rtndVnodeEmbeddingVect[i].getCandidSnodeId();
			IloInt cls = (IloInt) rtndVnodeEmbeddingVect[i].getQosCls();
			IloInt period = (IloInt) rtndVnodeEmbeddingVect[i].GetPeriod();

			IloInt c_cpu = (IloInt) Node_Class_QoS_Vect[cls-1].getVnodeCpuReq();

			reserved_cpu+=c_cpu;

			f11<<vnode<<"    "<<vnp_id <<"    "<<snode<<"    "<<cls<<"    "<<period<<endl;

		}

		IloInt used_cpu =0;

		for(IloInt i=0;i<nb_accepted_vnode;i++){
			IloInt vnode = (IloInt) Accepted_Node_Embedding_Vect[i].getVnodeId();
			IloInt vnp_id= (IloInt) Accepted_Node_Embedding_Vect[i].getVnpId();
			IloInt snode = (IloInt) Accepted_Node_Embedding_Vect[i].getCandidSnodeId();
			IloInt cls = (IloInt) Accepted_Node_Embedding_Vect[i].getQosCls();

			IloInt c_cpu = (IloInt) Node_Class_QoS_Vect[cls-1].getVnodeCpuReq();
			used_cpu+=c_cpu;

			IloInt period = (IloInt) Accepted_Node_Embedding_Vect[i].GetPeriod();

			f11<<vnode<<"    "<<vnp_id <<"    "<<snode<<"    "<<cls<<"   "<<period<<endl;

		}

		IloInt nb_new_requests = numRtndVlinkEmbdFound + nb_embedding_path;

		//VNP_traffic_tab  Updated_Add_Request_Vect(env, nb_embedding_path);

		f11<<nb_new_requests<<endl;

		IloNumArray used_arc_vect(env,NB_LINK);
		arrayZeroInitialize(used_arc_vect, NB_LINK);

		IloNumArray used_node_vect(env,NB_NODE);
		arrayZeroInitialize(used_node_vect, NB_NODE);

		vect_length = MAX_SIZE;

		IloInt Reserved_PIP_profit=0;
		IloInt Reserved_PIP_cost=0;
		IloInt reserved_bw =0;
		IloInt nb_reserved_total_path_hops=0;

		for(IloInt i=0;i<numRtndVlinkEmbdFound;i++){
			arrayZeroInitialize(node_list_prv,vect_length);
			arrayZeroInitialize(arc_list, vect_length);

			IloInt src = (IloInt) rtndVlinkEmbeddingVect[i].getSrcSnode();
			IloInt dest = (IloInt) rtndVlinkEmbeddingVect[i].getDstSnode();
			IloInt cls = (IloInt) rtndVlinkEmbeddingVect[i].getQosCls();

			IloInt bw = (IloInt) Link_Class_QoS_Vect[cls-1].getQosClsBw();

			IloInt vnp_id = (IloInt) rtndVlinkEmbeddingVect[i].getVnpId();
			IloInt virtual_link_id = (IloInt) rtndVlinkEmbeddingVect[i].getVlinkId();
			IloInt virtual_link_profit = (IloInt) rtndVlinkEmbeddingVect[i].getVlinkProfit();
			IloInt cost = (IloInt) rtndVlinkEmbeddingVect[i].getCost();
			IloInt period = (IloInt) rtndVlinkEmbeddingVect[i].getPeriod();
			rtndVlinkEmbeddingVect[i].getActvSlinkAry(arc_list);
			rtndVlinkEmbeddingVect[i].getUsedSnodeAry(node_list_prv);

			Reserved_PIP_profit+=virtual_link_profit;
			Reserved_PIP_cost+=cost;

			f11<<src<<endl;
			f11<<dest<<endl;
			f11<<cls<<endl;
			f11<<vnp_id<<endl;
			f11<<virtual_link_id<<endl;
			f11<<virtual_link_profit<<endl;
			f11<<cost<<endl;
			f11<<period<<endl;
			IloInt k=0;
			IloInt more_node=0;

			while ((k<vect_length) && ( more_node==0))
			{
				IloInt used_node = (IloInt)node_list_prv[k];
				IloBool non_nul = (used_node !=0);
				if (non_nul)
				{
					IloInt find_elt=0;
					find_elt = (int) findElementInVector(used_node, used_node_vect, NB_NODE);
					IloBool not_find_node = (find_elt == 0);

					if (not_find_node)
						used_node_vect[used_node-1]= (IloNum) used_node;

					f11<<used_node<<" ";
					k++;
				}
				else
				{
					f11<<0;
					more_node=1;
				}
			}

			f11<<endl;
			k=0;
			IloInt more_arc=0;

			while ((k<vect_length) && ( more_arc==0)){
				IloInt used_arc = (IloInt) arc_list[k];
				IloBool non_nul = (used_arc !=0);
				if (non_nul)
				{
					IloInt find_elt=0;
					find_elt = (int) findElementInVector(used_arc, used_arc_vect, NB_LINK);
					IloBool not_find_link = (find_elt == 0);

					if (not_find_link)
						used_arc_vect[used_arc-1]= (IloNum) used_arc;

					f11<<used_arc<<" ";
					reserved_bw+=bw;
					k++;
					nb_reserved_total_path_hops++;
				}
				else
				{
					f11<<0;
					more_arc=1;
				}

			}

			f11<<endl;

		} // end while routing paths

		PIP_profit=0;															//check without
		//IloInt PIP_cost=0;
		//IloInt used_bw =0;
		//IloInt nb_total_path_hops=0;
		VlinkReqAryType  Updated_Request_Vect(env,nb_accepted_requests);
		IloInt cost=0, PIP_cost=0, used_bw=0, nb_total_path_hops=0;
		IloInt nb_accepted_req=0;
		for(IloInt i=0;i<nb_embedding_path; i++){
			arrayZeroInitialize(node_list_prv,vect_length);
			arrayZeroInitialize(arc_list, vect_length);

			IloInt src = (IloInt) path_embedding_tab[i].getSrcSnode();
			IloInt dest = (IloInt) path_embedding_tab[i].getDstSnode();
			IloInt cls = (IloInt) path_embedding_tab[i].getQosCls();

			IloInt bw = (IloInt) Link_Class_QoS_Vect[cls-1].getQosClsBw();

			IloInt vnp_id = (IloInt) path_embedding_tab[i].getVnpId();
			IloInt virtual_link_id = (IloInt) path_embedding_tab[i].getVlinkId();
			IloInt virtual_link_profit = (IloInt) path_embedding_tab[i].getVlinkProfit();
			cost = (IloInt) path_embedding_tab[i].getCost();
			path_embedding_tab[i].getActvSlinkAry(arc_list);
			path_embedding_tab[i].getUsedSnodeAry(node_list_prv);

			PIP_profit+=virtual_link_profit;
			PIP_cost+=cost;

			f11<<src<<endl;
			f11<<dest<<endl;
			f11<<cls<<endl;
			f11<<vnp_id<<endl;
			f11<<virtual_link_id<<endl;
			f11<<virtual_link_profit<<endl;
			f11<<cost<<endl;
			f11<<current_period<<endl;

			IloInt k=0, more_node=0;

			while ((k<vect_length) && ( more_node==0))
			{
				IloInt used_node = (IloInt)node_list_prv[k];
				IloBool non_nul = (used_node !=0);
				if (non_nul)
				{
					IloInt find_elt=0;
					find_elt = (int) findElementInVector(used_node, used_node_vect, NB_NODE);
					IloBool not_find_node = (find_elt == 0);

					if (not_find_node)
						used_node_vect[used_node-1]= (IloNum) used_node;

					f11<<used_node<<" ";
					k++;
				}
				else
				{
					f11<<0;
					more_node=1;
				}
			}

			f11<<endl;
			k=0;
			IloInt more_arc=0;

			while ((k<vect_length) && ( more_arc==0))
			{
				IloInt used_arc = (IloInt) arc_list[k];
				IloBool non_nul = (used_arc !=0);
				if (non_nul)
				{

					IloInt find_elt=0;
					find_elt = (int) findElementInVector(used_arc, used_arc_vect, NB_LINK);
					IloBool not_find_link = (find_elt == 0);

					if (not_find_link)
						used_arc_vect[used_arc-1]= (IloNum) used_arc;

					used_bw+= bw;
					nb_total_path_hops++;

					f11<<used_arc<<" ";

					k++;
				}
				else
				{
					f11<<0;
					more_arc=1;
				}

			}

			f11<<endl;

			IloInt index =   search_request_index(virtual_link_id, addedVlinkReqVect, vnp_id);

			IloInt srcVnode = addedVlinkReqVect[index].getSrcVnode();
			IloInt destVnode = addedVlinkReqVect[index].getDestVnode();
			virtual_link_id = addedVlinkReqVect[index].getVlinkId();
			IloInt clsQoS = addedVlinkReqVect[index].getVlinkQosCls();
			IloInt bid = addedVlinkReqVect[index].getBid();
			vnp_id = addedVlinkReqVect[index].getVnpId();
			IloInt period = addedVlinkReqVect[index].getPeriod();

			Updated_Request_Vect[nb_accepted_req].setSrcVnode(srcVnode);
			Updated_Request_Vect[nb_accepted_req].setDestVnode(destVnode);
			Updated_Request_Vect[nb_accepted_req].setVlinkId(virtual_link_id);
			Updated_Request_Vect[nb_accepted_req].setVlinkQosCls(clsQoS);
			Updated_Request_Vect[nb_accepted_req].SetBid(bid);
			Updated_Request_Vect[nb_accepted_req].setVnpId(vnp_id);
			Updated_Request_Vect[nb_accepted_req].SetPeriod(period);

			nb_accepted_req++;
		} // end while routing paths

		f11.close();


		//------------------------------------------------------------------------------------------------------------------------
		// 						Saving phase 2 accepted virtual links in file -->  f12_ph2AcceptedVlinks
		//------------------------------------------------------------------------------------------------------------------------
		cout<<"\t Saving phase 2 accepted link details in file: "<<f12_ph2AcceptedVlinks<<endl;
		//const char*  filename10="C:/ILOG/CPLEX121/abdallah_work/data/PhaseI_accepted_traffic_us_metro20_p9.txt";
		ofstream f12(f12_ph2AcceptedVlinks);

		if (!f12)
			cerr << "ERROR: could not open file `"<< f12_ph2AcceptedVlinks << "`for reading"<< endl;

		IloInt NB_REQUEST =  rtndVlinkCountFrmPrv + nb_accepted_req;

		f12<<current_period<<endl;
		f12<<NB_REQUEST<<endl;
		f12<<rtndVlinkCountFrmPrv<<endl;
		f12<<nb_accepted_req<<endl;

		IloInt j=0;
		for (IloInt i=0;i<NB_REQUEST;i++){
			IloInt src=0, dest=0, virtual_link_id=0, class_QoS=0, bid=0, vnp_id=0, period=0;
			if (i < rtndVlinkCountFrmPrv){

				src = (IloInt) retainedVlinkReqVect[i].getSrcVnode();
				dest = (IloInt) retainedVlinkReqVect[i].getDestVnode();
				virtual_link_id = (IloInt) retainedVlinkReqVect[i].getVlinkId();
				class_QoS = (IloInt) retainedVlinkReqVect[i].getVlinkQosCls();
				bid = (IloInt) retainedVlinkReqVect[i].getBid();
				vnp_id = (IloInt) retainedVlinkReqVect[i].getVnpId();
				period = (IloInt) retainedVlinkReqVect[i].getPeriod();
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

			f12 <<src<<"\t"<<dest<<"\t"<<virtual_link_id<<"\t"<<class_QoS<<"\t"<<bid<<"\t"<<vnp_id<<"\t"<<period<<endl;
		}

		f12.close();


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
		cout<<"\t Saving added and removed paths (vlinks) into FILE: "<<f14_ph2AddRemovePaths<<endl;
		ofstream f14(f14_ph2AddRemovePaths);

		if (!f14)
			cerr << "ERROR: could not open file "<< f14_ph2AddRemovePaths<< "for writing"<< endl;

		f14<<prvEmbdRmvdCurr<<endl;
		f14<<nb_embedding_path<<endl;

		// Writing removed paths to file from RemovedPathVect[]
		// During time slots t0, zero paths will be removed.
		for(IloInt i=0;i<prvEmbdRmvdCurr;i++){
			f14<<rmvdVlinkEmbedingVect[i].getPeriod()<<"\t"<<rmvdVlinkEmbedingVect[i].getVnpId()<<"\t"<<rmvdVlinkEmbedingVect[i].getQosCls()<<"\t";
			IloNumArray  node_list(env,vect_length);
			arrayZeroInitialize(node_list,vect_length);
			rmvdVlinkEmbedingVect[i].getUsedSnodeAry(node_list);

			IloInt k=0;
			IloBool more_nodes = true;
			while ((k<vect_length) && (more_nodes)){
				IloInt used_node = node_list[k];
				if (used_node !=0){
					f14<<used_node;
					k++;
					if(node_list[k]!=0) f14<<",";
				}
				else more_nodes=false;
			}
			f14<<endl;
		}


		// Writing added paths to file
		for(IloInt i=0;i<nb_embedding_path;i++){
			f14<<current_period<<"\t"<<path_embedding_tab[i].getVnpId()<<"\t"<<path_embedding_tab[i].getQosCls()<<"\t";
			IloNumArray  node_list(env,vect_length);
			arrayZeroInitialize(node_list,vect_length);
			path_embedding_tab[i].getUsedSnodeAry(node_list);

			IloInt k=0;
			IloBool more_nodes = true;
			while ((k<vect_length) && (more_nodes)){
				IloInt used_node = node_list[k];
				if (used_node !=0){
					f14<<used_node;
					k++;
					if(node_list[k]!=0) f14<<",";
				}
				else more_nodes=false;
			}
			f14<<endl;
		}
		f14.close();

		//---------------------------------------------------------------
		//              Performance Evaluation of Embedding solution    -
		//---------------------------------------------------------------
		cout<<"\n\t Performance Evaluation results of embedding solution"<<endl;
		IloInt nb_used_arc = 0;
		for (IloInt l=0;l<NB_LINK;l++){
			IloInt current_value =(IloInt) used_arc_vect[l];
			IloBool used_link = (current_value !=0);
			if (used_link)
				nb_used_arc++;
		}
		IloInt nb_used_node=0;
		for (IloInt l=0;l<NB_NODE;l++)
		{
			IloInt current_value =(IloInt) used_node_vect[l];
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

		IloNum nb_hop_per_path = (IloNum)(nb_total_path_hops + nb_reserved_total_path_hops)/(IloNum)(nb_embedding_path + numRtndVlinkEmbdFound);

		cout<<"\t\tPIP new profit:"<<PIP_profit<<endl;
		cout<<"\t\tPIP reserved profit:"<<Reserved_PIP_profit<<endl;
		cout<<"\t\tPIP profit:"<<PIP_profit + Reserved_PIP_profit<<endl;
		cout<<"\t\tPIP new cost:"<<PIP_cost<<endl;
		cout<<"\t\tPIP reserved cost:"<<Reserved_PIP_cost<<endl;
		cout<<"\t\tPIP cost:"<<PIP_cost + Reserved_PIP_cost<<endl;
		cout<<"\t\tnb accepted new vnode:"<<nb_accepted_vnode<<endl;
		cout<<"\t\tnb accepted reserved vnode:"<<rtndVnodeCount<<endl;
		cout<<"\t\tnb requests:"<<NB_REQUEST<<endl;
		cout<<"\t\tnb new requests:"<<acptdVlinkInCur<<endl;
		cout<<"\t\tnb reserved requests:"<<rtndVlinkCountFrmPrv<<endl;
		cout<<"\t\tnb accepted new requests:"<<nb_embedding_path<<endl;
		cout<<"\t\tnb accepted reserved requests:"<<numRtndVlinkEmbdFound<<endl;
		IloNum acceptance= (IloNum)nb_embedding_path/(IloNum)acptdVlinkInCur;
		cout<<"\t\tblocking:"<<(1 - acceptance)*100<<"%"<<endl;
		cout<<"\t\tnew used bw:"<<used_bw<<endl;
		cout<<"\t\treserved used bw:"<<reserved_bw<<endl;
		cout<<"\t\tnew used cpu:"<<used_cpu<<endl;
		cout<<"\t\treserved used cpu:"<<reserved_cpu<<endl;
		cout<<"\t\tbw efficiency:"<<bw_efficiency<<endl;
		cout<<"\t\tPIP profit unit of available bw:"<<PIP_profit_unit_available_bw<<endl;
		cout<<"\t\tcpu efficiency:"<<cpu_efficiency<<endl;
		cout<<"\t\tPIP profit unit of available cpu:"<<PIP_profit_unit_available_cpu<<endl;
		cout<<"\t\tnb average hops per VN link:"<<nb_hop_per_path<<endl;

		//-------------------------------------------------------------------------------------------------------------
		//                                   End of Cplex model                                                       -
		//-------------------------------------------------------------------------------------------------------------
	}
	catch (IloException& e){
		cerr << "ERROR: " << e.getMessage()<< endl;
	}
	env.end();
	return f14_ph2AddRemovePaths;
}
