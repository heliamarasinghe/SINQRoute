/*
 * LinkEmbedderWithBkup.cpp
 *
 *  Created on: Dec 19, 2016
 *      Author: openstack
 */


#include "../LinkEmbedder/LinkEmbedder.h"

char* LinkEmbedder::embedLinksWithBkup(int currTslot){
	cout<<"\n\t*** Executing Link Embedder with Backups ***"<<endl;

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
		IloInt numSubNodes=0, numSubLinks=0;
		f1>> numSubNodes;
		f1>> numSubLinks;

		SubLinksAryType subLinksAry(env,numSubLinks);
		for(IloInt i=0;i<numSubLinks;i++){
			IloInt slinkId=0, srcSnode=0, dstSnode=0;
			f1>>slinkId>>srcSnode>>dstSnode;
			subLinksAry[i].setSlinkId(slinkId);
			subLinksAry[i].setSrcSnode(srcSnode);
			subLinksAry[i].setDstSnode(dstSnode);
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

		LinkQosClsAryType  linkQosClsAry(env,NB_LINK_CLASS);

		for(IloInt i=0;i<NB_LINK_CLASS;i++){
			IloInt clsQoS=0, bw=0,hops=0;
			f2>>clsQoS>>bw>>hops;
			linkQosClsAry[i].SetQoS_Class_Id(clsQoS);
			linkQosClsAry[i].SetQoS_Class_Bandwidth(bw);
			linkQosClsAry[i].SetQoS_Class_Max_Hops(hops);
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
		NodeQosClsAryType  nodeQosClsAry(env,NB_NODE_CLASS);
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
			nodeQosClsAry[i].SetNode_QoS_Class_Id(clsQoS);
			nodeQosClsAry[i].SetRequired_CPU(cpu);
			nodeQosClsAry[i].SetNode_Location_Tab(location_vect);
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
		VnReqTopoAryType VnReqTopoAry(env, NB_VNP);
		for(IloInt i=0;i<NB_VNP;i++){
			IloInt vnp_id=0, nb_vnodes=0, nb_vlinks=0, period=0;
			f4>>vnp_id>>nb_vnodes>>nb_vlinks>>period;
			VnReqTopoAry[i].SetVLink_Number(nb_vlinks);
			VnReqTopoAry[i].SetVNode_Number(nb_vnodes);
			VnReqTopoAry[i].SetVNP_Id(vnp_id);
		}
		f4.close();

		//------------------------------------------------------------------------------------------------------------
		//                                   FILE 5: Reading of substrate bw unit cost  	   		                 -
		//------------------------------------------------------------------------------------------------------------
		cout<<"\tf5\t of substrate bw unit cost from File: "<<f5_subUnitCost<<endl;
		ifstream f5(f5_subUnitCost);
		if (!f5)
			cerr << "ERROR: could not open file "<< f5_subUnitCost<< "for reading"<< endl;
		IloNumArray    bw_unit_cost_vect(env,numSubLinks);
		IloNumArray    cpu_unit_cost_vect(env,numSubNodes);
		for(IloInt j=0;j<numSubLinks;j++)
			f5>>bw_unit_cost_vect[j];

		for(IloInt j=0;j<numSubNodes;j++)
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
		IloNumArray avlblActvBwAry(env,numSubLinks);
		for(IloInt i=0; i<numSubLinks;i++)
			avlblActvBwAry[i] = SUBSTRATE_LINK_BW;

		IloNumArray usedBkupBwAry(env, numSubLinks);
		arrayZeroInitialize(usedBkupBwAry, numSubLinks);

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

		IloNumArray  embdSnodeList(env,vect_length);
		IloNumArray  embdActvSlinkList(env, vect_length);
		IloNumArray  embdBkupSlinkList(env, vect_length);

		for(IloInt i=0;i<embdVlinksInPrv;i++){
			IloInt src=0, dest=0, cls=0, vnpId=0, vlinkId=0, profit=0, cost=0, period=0;
			prv_f11>>src>>dest>>cls>>vnpId>>vlinkId>>profit>>cost>>period;
			/*
				10		src
				3		dest
				3		cls
				2		vnpId
				7		vlinkId
				137		profit
				70		cost
				0		period
			 */
			arrayZeroInitialize(embdSnodeList,vect_length);
			arrayZeroInitialize(embdActvSlinkList, vect_length);
			arrayZeroInitialize(embdBkupSlinkList, vect_length);

			IloInt bw =  linkQosClsAry[cls-1].getQosClsBw();
			// Reading Snode list along the path
			IloInt k=0;
			IloBool moreElmnts=true;
			while ((k<vect_length) && (moreElmnts)){
				IloInt used_node;
				prv_f11>>used_node;	//10 9 3 0
				if (used_node!=0){
					embdSnodeList[k] = (IloNum) used_node;
					k++;
				}
				else
					moreElmnts=false;
			}
			// Reading active slink list along the path
			k=0;
			moreElmnts=true;
			//Srarch whether the vlink is retained from previous time slot
			IloInt found = searchRtndReqFrmPrv(retainedVlinkReqVect, rtndVlinkCountFrmPrv, vlinkId, vnpId, period);
			while ((k<vect_length) && (moreElmnts)){
				IloInt actvSlink;
				prv_f11>>actvSlink;	//26 8 0
				if (actvSlink !=0){
					embdActvSlinkList[k] = (IloNum) actvSlink;
					if (found ==1)
						avlblActvBwAry[actvSlink-1] = avlblActvBwAry[actvSlink-1] - bw;
					k++;
				}
				else
					moreElmnts=false;
			}

			// Reading backup slink list along the path
			k=0;
			moreElmnts=true;
			while ((k<vect_length) && (moreElmnts)){
				IloInt bkupSlink;
				prv_f11>>bkupSlink;	//26 8 0
				if (bkupSlink !=0){
					embdBkupSlinkList[k] = bkupSlink;
					//if (found ==1)
					//	avlblActvBwAry[bkupSlink-1] = avlblActvBwAry[bkupSlink-1] - bw;
					k++;
				}
				else
					moreElmnts=false;
			}

			if (found == 1){
				rtndVlinkEmbeddingVect[numRtndVlinkEmbdFound].setSrcSnode(src);
				rtndVlinkEmbeddingVect[numRtndVlinkEmbdFound].setDstSnode(dest);
				rtndVlinkEmbeddingVect[numRtndVlinkEmbdFound].setQosCls(cls);
				rtndVlinkEmbeddingVect[numRtndVlinkEmbdFound].setVnpId(vnpId);
				rtndVlinkEmbeddingVect[numRtndVlinkEmbdFound].setVlinkId(vlinkId);
				rtndVlinkEmbeddingVect[numRtndVlinkEmbdFound].setLinkProfit(profit);
				rtndVlinkEmbeddingVect[numRtndVlinkEmbdFound].setCost(cost);
				rtndVlinkEmbeddingVect[numRtndVlinkEmbdFound].setPeriod(period);
				rtndVlinkEmbeddingVect[numRtndVlinkEmbdFound].setActvSlinkAry(embdActvSlinkList);
				rtndVlinkEmbeddingVect[numRtndVlinkEmbdFound].setBkupSlinkAry(embdBkupSlinkList);
				rtndVlinkEmbeddingVect[numRtndVlinkEmbdFound].setUsedSnodeAry(embdSnodeList);
				numRtndVlinkEmbdFound++;
			}

			else if(found == 0){
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setSrcSnode(src);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setDstSnode(dest);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setQosCls(cls);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setVnpId(vnpId);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setVlinkId(vlinkId);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setLinkProfit(profit);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setCost(cost);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setPeriod(period);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setActvSlinkAry(embdActvSlinkList);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setBkupSlinkAry(embdBkupSlinkList);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setUsedSnodeAry(embdSnodeList);

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
		//                      		       Network definition
		//********************************************************************************************************
		cout<<"\n\t Network definition"<<endl;
		SubNodesAryType  subNetGraph(env,numSubNodes);
		substrate_Graph_creation(subNetGraph, subLinksAry, numSubLinks, numSubNodes, env);
		adjacency_list_creation(subNetGraph, numSubNodes, env);
		//substrate_graph_printing(Vect_Substrate_Graph, env, NB_NODE);


		//--------------------------------------------------------------------------------------------------------
		//									Caculating Delta matrix for t-1
		//--------------------------------------------------------------------------------------------------------
		//		For a given sub link l*, Delta^(l*)_l represent the sum of backup bandwidth allocated to
		//				existing vlinks whose active paths use the substrate link l.
		//--------------------------------------------------------------------------------------------------------

		// Defining and initializing deltaMat
		IloNum deltaMat [numSubLinks][numSubLinks];
		for (IloInt bsl =0; bsl<numSubLinks; bsl++)		// bsl = substrate link l* in backup path
			for (IloInt asl =0; asl<numSubLinks; asl++)	// asl = substrate link l in active path
				deltaMat [bsl][asl] = 0.0;


		// Iterating over vlinks retained and fill deltaMat with bandwidth values
		for(int vlItr=0; vlItr<numRtndVlinkEmbdFound; vlItr++){

			//IloInt vlinkId = rtndVlinkEmbeddingVect[vlItr].getVlinkId();
			IloInt qosCls = rtndVlinkEmbeddingVect[vlItr].getQosCls();
			IloNum vlinkBw =  linkQosClsAry[qosCls-1].getQosClsBw();

			arrayZeroInitialize(embdActvSlinkList, vect_length);
			rtndVlinkEmbeddingVect[vlItr].getActvSlinkAry(embdActvSlinkList);
			arrayZeroInitialize(embdBkupSlinkList, vect_length);
			rtndVlinkEmbeddingVect[vlItr].getBkupSlinkAry(embdBkupSlinkList);

			IloInt bslItr=0;
			IloBool moreBsl=true;
			while ((bslItr<vect_length) && (moreBsl)){				// Iterate over backup substrate links (bsl)
				IloInt bsl = embdBkupSlinkList[bslItr];
				if (bsl !=0){
					IloInt alItr=0;
					IloBool moreAsl=true;
					while ((alItr<vect_length) && (moreAsl)){		// Iterate over active substrate links (asl)
						IloInt asl = embdActvSlinkList[alItr];
						if (asl !=0){
							deltaMat[bsl][asl] += vlinkBw;
							alItr++;
						}
						else
							moreAsl = false;
					}
					bslItr++;
				}
				else
					moreBsl=false;
			}
		}

		// Printing deltaMat
		cout<<"\n\tPrinting deltaMat"<<endl;
		for (IloInt bsl =0; bsl<numSubLinks; bsl++){
			for (IloInt asl =0; asl<numSubLinks; asl++) {
				cout << deltaMat[bsl][asl] << " ";
			}
			cout << endl;
		}
		cout << endl;

		// Finding resetved backup bandwith for existing for each link in t-1
		IloNum bkupRsvdOnLink [numSubLinks];
		for (IloInt bsl = 0; bsl<numSubLinks; bsl++){
			IloNum max = 0;
			for (IloInt asl =0; asl<numSubLinks; asl++) {
				IloNum cur = deltaMat[bsl][asl];
				if(cur>max){
					max = cur;
				}
			}
			bkupRsvdOnLink[bsl] = max;
		}




		//------------------------------------------------------------------------------------------
		//                               Finding Active paths                      -
		//------------------------------------------------------------------------------------------
		cout<<"\n\t Calculating Shortest paths"<<endl;
		IloInt nb_candidate_embedding_nodes = acptdVlinkInCur*NB_MAX_PATH;
		MetaSubPathAryType       actvPathVect(env, nb_candidate_embedding_nodes);
		IloInt actvPathCount = 0;
		for(IloInt j=0;j<acptdVlinkInCur;j++){

			IloInt srcVnode = (IloInt)  addedVlinkReqVect[j].getSrcVnode();
			IloInt destVnode = (IloInt) addedVlinkReqVect[j].getDestVnode();
			IloInt request_id = j+1;
			IloInt vlinkId = (IloInt) addedVlinkReqVect[j].getVlinkId();
			IloInt vnpId = (IloInt) addedVlinkReqVect[j].getVnpId();

			IloInt srcSnode = getCandidSnodeForVnode(Preliminary_Node_Embedding_Vect,nb_vnode,srcVnode, vnpId);
			IloInt destSnode = getCandidSnodeForVnode(Preliminary_Node_Embedding_Vect,nb_vnode,destVnode, vnpId);

			IloInt class_QoS = (IloInt) addedVlinkReqVect[j].getVlinkQosCls();
			IloInt maxHops = (IloInt) linkQosClsAry[class_QoS-1].GetQoS_Class_Max_Hops();
			//cout<<"\t "<<j<<"\t "<<src_vlink<<"\t\t "<<dest_vlink<<"\t\t "<<virtual_link_id<<"\t\t "<<vnp_id<<"\t "<<src<<"\t\t "<<dest<<"\t\t "<<class_QoS<<"\t\t "<<hops<<endl;
			shortest_path(subNetGraph, actvPathVect, srcSnode, destSnode, maxHops, request_id, vnpId, vlinkId, actvPathCount, env);
			//cout<<"\t Next"<<endl;
		}

		cout<<"\t\t numShortestPaths:"<<actvPathCount<<endl;
		cout<<"\t nb_candidate_embedding_nodes:"<<nb_candidate_embedding_nodes<<endl;

		//if(LINK_DBG)
		printing_meta_path(actvPathVect, actvPathCount, env);

		//--------------------------------------------------------------------------------------------------------
		//									Caculating Theta matrix for New vlinks
		//--------------------------------------------------------------------------------------------------------
		//		For each  vlink request, calculate theta value matrix
		//		For a given new vlink, for each substrate link l*, Theta^(l*)_l represent the backup bandwidth cost on l*, if l is used in active path
		//--------------------------------------------------------------------------------------------------------

		for(IloInt actvItr=0; actvItr<actvPathCount; actvItr++){
			IloNumArray actvPthSlinkAry(env, actvPathCount);
			actvPathVect[actvItr].getUsedSlinkAry(actvPthSlinkAry);

			IloNum thetaMat [numSubLinks][numSubLinks];
			for(IloInt bsl=0; bsl<numSubLinks; bsl++)
				for(IloInt asl=0; asl<numSubLinks; asl++){
					if(bsl==asl)
						thetaMat [bsl][asl] = INFINI;
					else
						thetaMat [bsl][asl] = 0;
				}

			for()


		}





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

		IloInt x_VECT_LENGTH = creation_path_embedding_var(addedVlinkReqVect, acptdVlinkInCur, actvPathVect, actvPathCount, x, vlink_embedding_trace_x, env);

		vnp_variable_creation(embedding_trace_z, z, accepted_vnp_id_tab, nb_accepted_vnp, env);

		//------------------------------------------------------------------------
		//  B- no partially VN Embedding: accept all virtual links or block all  -
		//------------------------------------------------------------------------
		cout<<"\t B- no partially VN Embedding: accept all virtual links or block all"<<endl;

		no_partially_VN_embedding(addedVlinkReqVect, acptdVlinkInCur, actvPathVect, actvPathCount, vlink_embedding_trace_x, x, x_VECT_LENGTH,
				z, embedding_trace_z, nb_accepted_vnp, ILP_model, env);

		//----------------------------------------------------------------------
		// C- Substrate Link Bandwidth Capacity constraint                     -
		//----------------------------------------------------------------------
		cout<<"\t C- Substrate Link Bandwidth Capacity constraint"<<endl;

		periodic_substrate_link_bw_constraint(subLinksAry, numSubLinks, addedVlinkReqVect, acptdVlinkInCur, actvPathVect, actvPathCount, vlink_embedding_trace_x,
				linkQosClsAry, x, x_VECT_LENGTH, ILP_model, avlblActvBwAry, env);


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
			IloInt src_cpu= (IloInt) nodeQosClsAry[vlink_src_cls-1].getVnodeCpuReq();
			IloInt dest_cpu= (IloInt) nodeQosClsAry[vlink_dest_cls-1].getVnodeCpuReq();
			IloInt index = (IloInt) search_z_index(vnp_id, embedding_trace_z, nb_accepted_vnp);

			substrate_network_revenue+= bid*z[index];

			IloInt class_QoS = (IloInt) addedVlinkReqVect[i].getVlinkQosCls();
			IloInt bw = (IloInt)linkQosClsAry[class_QoS-1].getQosClsBw();
			IloInt j=0, no_more_emb_path=0;

			while ((j < actvPathCount)&& (no_more_emb_path == 0)){
				IloInt current_virtual_link_id = (IloInt) actvPathVect[j].getCorrespVlinkId();
				IloInt current_vnp_id = (IloInt) actvPathVect[j].GetVNP_Id();

				IloBool equal_current_vlink =(current_virtual_link_id == virtual_link_id);
				IloBool equal_current_vnp_id =( current_vnp_id == vnp_id);

				if((equal_current_vnp_id)&&(equal_current_vlink)){
					IloInt num_path = (IloInt) actvPathVect[j].getCandidShortestPathId();
					IloInt src_emb = (IloInt)  actvPathVect[j].getSrcSnodeOfPath();
					IloInt dest_emb = (IloInt) actvPathVect[j].getDestSnodeOfPath();
					arrayZeroInitialize(arc_vect,vect_length);
					actvPathVect[j].getUsedSlinkAry(arc_vect);
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

				IloInt nb_vlinks = (IloInt) VnReqTopoAry[vnp_id-1].GetVLink_Number();
				nb_accepted_requests+=nb_vlinks;
			}
		}
		SubstratePathAryType embdSubPathAry(env, nb_accepted_requests);

		env.out()<< "x        = " << xvals << endl;
		IloInt nb_embedding_path=0;

		if(LINK_DBG)cout<<"\n\t\t\tEmbedding solution"<<endl;
		if(LINK_DBG)cout<<"\tvLink\tsPath\tsSrc\tsDest\tUsed sNodes\tUsed sLinks"<<endl;

		for(IloInt i=0;i<x_VECT_LENGTH;i++){
			IloNum current_value =  (IloNum) xvals[i];

			if (current_value > EPSELON_1) {
				IloInt j=0, found=0;

				while ((j <x_VECT_LENGTH) &&(found==0)){
					IloInt index = (IloInt) vlink_embedding_trace_x[j].GetVar_Index();
					IloBool equal_index = (index == i);
					if (equal_index){
						found=1;
						IloInt qosCls = 0;
						IloInt bid = 0;
						IloInt vnpId = 0;
						IloInt vlink_src_cls = 0;
						IloInt vlink_dest_cls = 0;
						IloInt current_vlink = (IloInt) vlink_embedding_trace_x[j].GetVirtual_Link_Id();
						IloInt num_path = (IloInt) vlink_embedding_trace_x[j].GetNum_Path();

						//cout<<" virtual link: "<<current_vlink<<"was assigned to substrate path: "<<num_path<<endl;

						search_request(addedVlinkReqVect, acptdVlinkInCur, current_vlink, qosCls, bid, vnpId, vlink_src_cls, vlink_dest_cls, Preliminary_Node_Embedding_Vect, nb_vnode);
						IloInt src_cpu= (IloInt) nodeQosClsAry[vlink_src_cls-1].getVnodeCpuReq();
						IloInt dest_cpu= (IloInt) nodeQosClsAry[vlink_dest_cls-1].getVnodeCpuReq();
						search_embedding_path(actvPathVect,actvPathCount, num_path, vnpId, qosCls, bid, embdSubPathAry, nb_embedding_path,
								bw_unit_cost_vect, cpu_unit_cost_vect, linkQosClsAry, src_cpu, dest_cpu, env);
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

		for(IloInt i=0;i<rtndVnodeCount;i++){	//Include retained VN data from previous tSlot
			IloInt vnodeId = (IloInt) rtndVnodeEmbeddingVect[i].getVnodeId();
			IloInt vnpId= (IloInt) rtndVnodeEmbeddingVect[i].getVnpId();
			IloInt candidSnodeId = (IloInt) rtndVnodeEmbeddingVect[i].getCandidSnodeId();
			IloInt qosCls = (IloInt) rtndVnodeEmbeddingVect[i].getQosCls();
			IloInt period = (IloInt) rtndVnodeEmbeddingVect[i].GetPeriod();

			IloInt vnodeCpuReq = (IloInt) nodeQosClsAry[qosCls-1].getVnodeCpuReq();

			reserved_cpu+=vnodeCpuReq;

			f11<<vnodeId<<"\t"<<vnpId <<"\t"<<candidSnodeId<<"\t"<<qosCls<<"\t"<<period<<endl;

		}

		IloInt used_cpu =0;

		for(IloInt i=0;i<nb_accepted_vnode;i++){
			IloInt vnode = (IloInt) Accepted_Node_Embedding_Vect[i].getVnodeId();
			IloInt vnpId= (IloInt) Accepted_Node_Embedding_Vect[i].getVnpId();
			IloInt snode = (IloInt) Accepted_Node_Embedding_Vect[i].getCandidSnodeId();
			IloInt qosCls = (IloInt) Accepted_Node_Embedding_Vect[i].getQosCls();

			IloInt vnodeCpuReq = (IloInt) nodeQosClsAry[qosCls-1].getVnodeCpuReq();
			used_cpu+=vnodeCpuReq;

			IloInt period = (IloInt) Accepted_Node_Embedding_Vect[i].GetPeriod();

			f11<<vnode<<"\t"<<vnpId <<"\t"<<snode<<"\t"<<qosCls<<"\t"<<period<<endl;

		}

		IloInt nb_new_requests = numRtndVlinkEmbdFound + nb_embedding_path;

		//VNP_traffic_tab  Updated_Add_Request_Vect(env, nb_embedding_path);

		f11<<nb_new_requests<<endl;

		IloNumArray used_arc_vect(env,numSubLinks);
		arrayZeroInitialize(used_arc_vect, numSubLinks);

		IloNumArray used_node_vect(env,numSubNodes);
		arrayZeroInitialize(used_node_vect, numSubNodes);

		vect_length = MAX_SIZE;

		IloInt Reserved_PIP_profit=0;
		IloInt Reserved_PIP_cost=0;
		IloInt reserved_bw =0;
		IloInt nb_reserved_total_path_hops=0;

		for(IloInt i=0;i<numRtndVlinkEmbdFound;i++){
			arrayZeroInitialize(embdSnodeList,vect_length);
			arrayZeroInitialize(embdActvSlinkList, vect_length);

			IloInt src = (IloInt) rtndVlinkEmbeddingVect[i].getSrcSnode();
			IloInt dest = (IloInt) rtndVlinkEmbeddingVect[i].getDstSnode();
			IloInt cls = (IloInt) rtndVlinkEmbeddingVect[i].getQosCls();

			IloInt bw = (IloInt) linkQosClsAry[cls-1].getQosClsBw();

			IloInt vnp_id = (IloInt) rtndVlinkEmbeddingVect[i].getVnpId();
			IloInt virtual_link_id = (IloInt) rtndVlinkEmbeddingVect[i].getVlinkId();
			IloInt virtual_link_profit = (IloInt) rtndVlinkEmbeddingVect[i].getVlinkProfit();
			IloInt cost = (IloInt) rtndVlinkEmbeddingVect[i].getCost();
			IloInt period = (IloInt) rtndVlinkEmbeddingVect[i].getPeriod();
			rtndVlinkEmbeddingVect[i].getActvSlinkAry(embdActvSlinkList);
			rtndVlinkEmbeddingVect[i].getUsedSnodeAry(embdSnodeList);

			arrayZeroInitialize(embdBkupSlinkList, vect_length);
			embdSubPathAry[i].getActvSlinkAry(embdBkupSlinkList);

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
				IloInt used_node = (IloInt)embdSnodeList[k];
				IloBool non_nul = (used_node !=0);
				if (non_nul)
				{
					IloInt find_elt=0;
					find_elt = (int) findElementInVector(used_node, used_node_vect, numSubNodes);
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
				IloInt actvSlink = (IloInt) embdActvSlinkList[k];
				IloBool non_nul = (actvSlink !=0);
				if (non_nul)
				{
					IloInt find_elt=0;
					find_elt = (int) findElementInVector(actvSlink, used_arc_vect, numSubLinks);
					IloBool not_find_link = (find_elt == 0);

					if (not_find_link)
						used_arc_vect[actvSlink-1]= (IloNum) actvSlink;

					f11<<actvSlink<<" ";
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
		IloInt  PIP_cost=0, used_bw=0, nb_total_path_hops=0;
		IloInt nb_accepted_req=0;
		for(IloInt i=0;i<nb_embedding_path; i++){
			IloInt srcSnode =  embdSubPathAry[i].getSrcSnode();
			IloInt dstSnode =  embdSubPathAry[i].getDstSnode();
			IloInt qosCls =  embdSubPathAry[i].getQosCls();
			IloInt bw =  linkQosClsAry[qosCls-1].getQosClsBw();
			IloInt vnpId =  embdSubPathAry[i].getVnpId();
			IloInt vlinkId =  embdSubPathAry[i].getVlinkId();
			IloInt vlinkProfit =  embdSubPathAry[i].getVlinkProfit();
			IloInt cost =  embdSubPathAry[i].getCost();

			arrayZeroInitialize(embdSnodeList,vect_length);
			embdSubPathAry[i].getUsedSnodeAry(embdSnodeList);

			arrayZeroInitialize(embdActvSlinkList, vect_length);
			embdSubPathAry[i].getActvSlinkAry(embdActvSlinkList);

			arrayZeroInitialize(embdBkupSlinkList, vect_length);
			embdSubPathAry[i].getActvSlinkAry(embdBkupSlinkList);

			PIP_profit+=vlinkProfit;
			PIP_cost+=cost;

			f11<<srcSnode<<endl;
			f11<<dstSnode<<endl;
			f11<<qosCls<<endl;
			f11<<vnpId<<endl;
			f11<<vlinkId<<endl;
			f11<<vlinkProfit<<endl;
			f11<<cost<<endl;
			f11<<current_period<<endl;

			IloInt k=0, more_node=0;

			while ((k<vect_length) && ( more_node==0)){
				IloInt used_node = (IloInt)embdSnodeList[k];
				if (used_node !=0){
					IloInt find_elt=0;
					find_elt = (int) findElementInVector(used_node, used_node_vect, numSubNodes);
					if (find_elt == 0)
						used_node_vect[used_node-1]= (IloNum) used_node;
					f11<<used_node<<" ";
					k++;
				}
				else{
					f11<<0;
					more_node=1;
				}
			}
			f11<<endl;

			k=0;
			IloInt more_arc=0;
			while ((k<vect_length) && ( more_arc==0)){
				IloInt used_arc = (IloInt) embdActvSlinkList[k];
				if (used_arc !=0){
					IloInt find_elt=0;
					find_elt = (int) findElementInVector(used_arc, used_arc_vect, numSubLinks);

					if (find_elt == 0)
						used_arc_vect[used_arc-1]= (IloNum) used_arc;

					used_bw+= bw;
					nb_total_path_hops++;
					f11<<used_arc<<" ";
					k++;
				}
				else{
					f11<<0;
					more_arc=1;
				}
			}

			f11<<endl;

			IloInt index =   search_request_index(vlinkId, addedVlinkReqVect, vnpId);

			IloInt srcVnode = addedVlinkReqVect[index].getSrcVnode();
			IloInt destVnode = addedVlinkReqVect[index].getDestVnode();
			vlinkId = addedVlinkReqVect[index].getVlinkId();
			IloInt clsQoS = addedVlinkReqVect[index].getVlinkQosCls();
			IloInt bid = addedVlinkReqVect[index].getBid();
			vnpId = addedVlinkReqVect[index].getVnpId();
			IloInt period = addedVlinkReqVect[index].getPeriod();

			Updated_Request_Vect[nb_accepted_req].setSrcVnode(srcVnode);
			Updated_Request_Vect[nb_accepted_req].setDestVnode(destVnode);
			Updated_Request_Vect[nb_accepted_req].setVlinkId(vlinkId);
			Updated_Request_Vect[nb_accepted_req].setVlinkQosCls(clsQoS);
			Updated_Request_Vect[nb_accepted_req].SetBid(bid);
			Updated_Request_Vect[nb_accepted_req].setVnpId(vnpId);
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
			IloInt srcVnode=0, dstVnode=0, vlinkId=0, vlinkQosCls=0, bid=0, vnpId=0, period=0;
			if (i < rtndVlinkCountFrmPrv){

				srcVnode = (IloInt) retainedVlinkReqVect[i].getSrcVnode();
				dstVnode = (IloInt) retainedVlinkReqVect[i].getDestVnode();
				vlinkId = (IloInt) retainedVlinkReqVect[i].getVlinkId();
				vlinkQosCls = (IloInt) retainedVlinkReqVect[i].getVlinkQosCls();
				bid = (IloInt) retainedVlinkReqVect[i].getBid();
				vnpId = (IloInt) retainedVlinkReqVect[i].getVnpId();
				period = (IloInt) retainedVlinkReqVect[i].getPeriod();
			}
			else {
				srcVnode = (IloInt) Updated_Request_Vect[j].getSrcVnode();
				dstVnode = (IloInt) Updated_Request_Vect[j].getDestVnode();
				vlinkId = (IloInt) Updated_Request_Vect[j].getVlinkId();
				vlinkQosCls = (IloInt) Updated_Request_Vect[j].getVlinkQosCls();
				bid = (IloInt) Updated_Request_Vect[j].getBid();
				vnpId = (IloInt) Updated_Request_Vect[j].getVnpId();
				period = (IloInt) Updated_Request_Vect[j].getPeriod();
				j++;
			}

			f12 <<srcVnode<<"\t"<<dstVnode<<"\t"<<vlinkId<<"\t"<<vlinkQosCls<<"\t"<<bid<<"\t"<<vnpId<<"\t"<<period<<endl;
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
			f14<<current_period<<"\t"<<embdSubPathAry[i].getVnpId()<<"\t"<<embdSubPathAry[i].getQosCls()<<"\t";
			IloNumArray  node_list(env,vect_length);
			arrayZeroInitialize(node_list,vect_length);
			embdSubPathAry[i].getUsedSnodeAry(node_list);

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
		if(LINK_DBG)cout<<"\n\t Performance Evaluation results of embedding solution"<<endl;
		IloInt nb_used_arc = 0;
		for (IloInt l=0;l<numSubLinks;l++){
			IloInt current_value =(IloInt) used_arc_vect[l];
			IloBool used_link = (current_value !=0);
			if (used_link)
				nb_used_arc++;
		}
		IloInt nb_used_node=0;
		for (IloInt l=0;l<numSubNodes;l++)
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
		IloNum acceptance= (IloNum)nb_embedding_path/(IloNum)acptdVlinkInCur;
		if(LINK_DBG){
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
		}
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
