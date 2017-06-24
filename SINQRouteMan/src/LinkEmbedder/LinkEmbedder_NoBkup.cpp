/*
 * PeriodicLinkEmbedder.cpp
 *
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */

#include "../LinkEmbedder/LinkEmbedder.h"


char* LinkEmbedder::embedLinks_NoBkup(int currTslot, bool shrdAsBase){
	cout<<"\n\n\t------------------------- Executing Link Embedder with NO Backups for TIME SLOT: "<<currTslot<<" --------------------------"<<endl;

	// Edge weights of the network topology graph used to calculate shortest paths
	bool SL_COST_FOR_EDGE = false;	// IF true:  slink costs are set as priority values
	// IF false: priority values are set as 1. After calculating min-hop shortest paths, cost of paths will be calculated by summing up link costs
	// Note: This shows a difference in effectiveness of Eppstein shortest path algirithm for SHRD and SRLG approaches.
	// TRUE:  SRLG-BKUP gives better shortest paths
	// FALSE: SHRD-BKUP gives better shortest paths

	int prevTslot = currTslot-1;
	//IloInt vect_length=MAX_SIZE;

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
		if(shrdAsBase)
			snprintf(prv_f11_ph2EmbeddedVnodes, sizeof(char) * 50, "DataFiles/t%i/f11_shrd_ph2EmbeddedVnodes.txt", currTslot-1);	// currTslot/f11_ph2EmbeddedVnodes.txt
		else
			snprintf(prv_f11_ph2EmbeddedVnodes, sizeof(char) * 50, "DataFiles/t%i/f11_nobk_ph2EmbeddedVnodes.txt", currTslot-1);	// currTslot/f11_ph2EmbeddedVnodes.txt
	else
		if(shrdAsBase)
			snprintf(prv_f11_ph2EmbeddedVnodes, sizeof(char) * 50, "DataFiles/init/f11_shrd_ph2EmbeddedVnodes.txt");
		else
			snprintf(prv_f11_ph2EmbeddedVnodes, sizeof(char) * 50, "DataFiles/init/f11_nobk_ph2EmbeddedVnodes.txt");
	//char f17_ctrlUpdatedNalocs[50];
	//snprintf(f17_ctrlUpdatedNalocs, sizeof(char) * 50, "DataFiles/t%i/f17_ctrlUpdatedNalocs.txt", prevTslot);		// currTslot/f12_ph2AcceptedVlinks.txt

	// Files being written
	char f11_nobk_ph2EmbeddedVnodes[50];
	snprintf(f11_nobk_ph2EmbeddedVnodes, sizeof(char) * 50, "DataFiles/t%i/f11_nobk_ph2EmbeddedVnodes.txt", currTslot);		// currTslot/f11_ph2EmbeddedVnodes.txt
	char f12_ph2AcceptedVlinks[50];
	snprintf(f12_ph2AcceptedVlinks, sizeof(char) * 50, "DataFiles/t%i/f12_ph2AcceptedVlinks.txt", currTslot);		// currTslot/f12_ph2AcceptedVlinks.txt
	char f13_cplexLinkModel[50];
	snprintf(f13_cplexLinkModel, sizeof(char) * 50, "DataFiles/t%i/f13_cplexLinkModel.lp", currTslot);				// currTslot/f13_cplexLinkModel.lp
	char* f14_ph2AddRemovePaths = new char[50];
	snprintf(f14_ph2AddRemovePaths, sizeof(char) * 50, "DataFiles/t%i/f14_ph2RemvdAddedPaths.txt", currTslot);		// Contains added and removed vlinks as a tab delimited intermediate physical switch IDs

	char* f22_nobk_ph2PerformanceResults = new char[50];
	snprintf(f22_nobk_ph2PerformanceResults, sizeof(char) * 50, "DataFiles/Performance/f22_nobk_ph2PerfRslts.txt");


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

		SubLinksAryType Vect_Link(env,numSubLinks);
		for(IloInt i=0;i<numSubLinks;i++){
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
		IloInt iaasReqPh1 = 0;
		IloInt vnodReqPh1 = 0;
		IloInt vlnkReqPh1 = 0;
		f4>>iaasReqPh1;			// In dthis whole file, iaasReqPh1 is useful
		VnReqTopoAryType VN_Request_Topology_Vect(env, iaasReqPh1);
		for(IloInt i=0;i<iaasReqPh1;i++){
			IloInt vnp_id=0, nb_vnodes=0, nb_vlinks=0, period=0;
			f4>>vnp_id>>nb_vnodes>>nb_vlinks>>period;
			VN_Request_Topology_Vect[i].setVlinkCount(nb_vlinks);
			vlnkReqPh1 += nb_vlinks;
			VN_Request_Topology_Vect[i].setVnodeCount(nb_vnodes);
			vnodReqPh1 += nb_vnodes;
			VN_Request_Topology_Vect[i].setVnpId(vnp_id);
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
		IloInt ph1EmbdVnodeCount=0;
		f8>>ph1EmbdVnodeCount;
		Virtual_Node_Embedding_tab  Preliminary_Node_Embedding_Vect(env, ph1EmbdVnodeCount);
		IloNumArray accepted_vnp_id_tab(env,iaasReqPh1 );
		arrayZeroInitialize(accepted_vnp_id_tab, iaasReqPh1);
		IloInt newIaasReqCount=0;
		if(LINK_DBG0){
			cout<<"\n\t ph1EmbdVnodeCount = "<<ph1EmbdVnodeCount<<endl;
			cout<<"\n\tPrinting Preliminary_Node_Embedding_Vect: \t\tsize = "<<Preliminary_Node_Embedding_Vect.getSize()<<endl;
			cout<<"\t\tvnode\tvnp_id\tsnode\tcls\tperiod"<<endl;
		}
		for(IloInt i=0;i<ph1EmbdVnodeCount;i++){
			IloInt vnode=0, vnp_id=0, snode=0, cls=0, period=0;
			f8>>vnode>>vnp_id>>snode>>cls>>period;
			if(LINK_DBG0)cout<<"\t\t"<<vnode<<"\t"<<vnp_id<<"\t"<<snode<<"\t"<<cls<<"\t"<<period<<endl;
			Preliminary_Node_Embedding_Vect[i].SetVirtual_Node_Id(vnode);
			Preliminary_Node_Embedding_Vect[i].SetVNP_Id(vnp_id);
			Preliminary_Node_Embedding_Vect[i].setCandidSnodeId(snode);
			Preliminary_Node_Embedding_Vect[i].SetQoS_Class(cls);
			Preliminary_Node_Embedding_Vect[i].SetPeriod(period);
			IloInt find = findElementInVector(vnp_id, accepted_vnp_id_tab, newIaasReqCount);
			IloBool is_new_elet = (find==0);
			if (is_new_elet){
				accepted_vnp_id_tab[newIaasReqCount]= (IloNum) vnp_id;
				newIaasReqCount++;
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
		IloInt current_period=0, totVlinkEmbedPh1=0, rtndVlinkCountFrmPrv=0, newVlinkEmbedPh1=0;
		f9>>current_period;
		f9>>totVlinkEmbedPh1;
		f9>>rtndVlinkCountFrmPrv;
		f9>>newVlinkEmbedPh1;
		VlinkReqAryType  retainedVlinkReqVect(env,rtndVlinkCountFrmPrv);
		VlinkReqAryType  addedVlinkReqVect(env,newVlinkEmbedPh1);
		if(LINK_DBG0){
			cout<<"\n\t Number of virtual link requests (NB_REQUEST) = "<<totVlinkEmbedPh1<<endl;
			cout<<"\n\tPrinting vLinkReqVect: \t\tsize = "<<addedVlinkReqVect.getSize()<<endl;
			cout<<"\t\titr\t vSrc\tvDest\tvLink\tclass\tbid\tvnp_id\tperiod"<<endl;
		}
		for(IloInt j=0, i=0;i<totVlinkEmbedPh1;i++){
			IloInt vLinkId=0, src=0, dest=0, clsQoS=0, bid=0, vnp_id=0, period=0;
			f9>>src>>dest>>vLinkId>>clsQoS>>bid>>vnp_id>>period;
			if(LINK_DBG0)cout<<"\t\t"<<i<<"\t"<<src<<"\t"<<dest<<"\t"<<vLinkId<<"\t"<<clsQoS<<"\t"<<bid<<"\t"<<vnp_id<<"\t"<<period<<endl;
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
		IloNumArray slinkResidualBwAry(env,numSubLinks);
		for(IloInt i=0; i<numSubLinks;i++)
			slinkResidualBwAry[i] = SUBSTRATE_LINK_BW;

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
		cout<<"\t\t Newly accepted Vlinks in current Tslot\t\t= "<<newVlinkEmbedPh1<<endl<<endl;
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
		IloInt rtndVlinkEmbdCount=0;
		IloInt rmvdVlinkCount = 0;

		//IloNumArray  node_list_prv(env,MAX_SIZE);
		//IloNumArray  arc_list(env, MAX_SIZE);
		if(LINK_DBG0)cout<<"\n\tReading "<<embdVlinksInPrv<<" vlinks embedded during previous tSlot "<<prevTslot<<endl;


		for(IloInt i=0;i<embdVlinksInPrv;i++){
			IloInt srcSnode=0, dstSnode=0, qosCls=0, vnpId=0, vlinkId=0, period=0, acbkPairId=0, numActvHops=0, numBkupHops=0;
			IloNum vlEmbdProfit=0.0, vlActvPthCost=0.0;
			IloNum vlBkupPthCost=0.0;					// Although vlBkupPthCost is read from f11, it is not used
			string newVl;
			prv_f11>>newVl;
			if(newVl!="vl")
				cerr<<"\n\tvlink reading in prv_fll is out of sync"<<endl;
			prv_f11>>srcSnode>>dstSnode>>qosCls>>vnpId>>vlinkId>>vlEmbdProfit>>vlActvPthCost>>vlBkupPthCost>>period>>acbkPairId>>numActvHops>>numBkupHops;
			if(LINK_DBG0)cout<<"\t"<<i<<"  Period:"<<period<<"  vnp:"<<vnpId<<"  vlinkId:"<<vlinkId<<endl;
			/*
				vl
				srcSnode
				dstSnode
				qosCls
				vnpId
				vlinkId
				vlImbdProfit
				vlActvPthCost
				vlBkupPthCost

				period
				acbkPairId
				numActvHops
				numBkupHops

				actvSnodeList
				bkupSnodeList
				actvSlinkList
				bkupSlinkList
			 */
			IloNumArray  prevEmbdActvSnodeList(env, MAX_SIZE);	// Used MAX_SIZE because Abdallahs link embedder use fixed size
			arrayZeroInitialize(prevEmbdActvSnodeList, MAX_SIZE);
			IloNumArray  prevEmbdBkupSnodeList(env, MAX_SIZE);
			arrayZeroInitialize(prevEmbdBkupSnodeList, MAX_SIZE);
			IloNumArray  prevEmbdActvSlinkList(env, MAX_SIZE);
			arrayZeroInitialize(prevEmbdActvSlinkList, MAX_SIZE);
			IloNumArray  prevEmbdBkupSlinkList(env, MAX_SIZE);
			arrayZeroInitialize(prevEmbdBkupSlinkList, MAX_SIZE);

			IloInt bw =  Link_Class_QoS_Vect[qosCls-1].getQosClsBw();
			IloInt found = searchRtndReqFrmPrv(retainedVlinkReqVect, rtndVlinkCountFrmPrv, vlinkId, vnpId, period);

			// Read Active path snodes from prv_f11
			for(IloInt asnItr=0; asnItr<=numActvHops; asnItr++)
				prv_f11>>prevEmbdActvSnodeList[asnItr];
			//cout<<"\t\tprevEmbdActvSnodeList: ";for(IloInt i=0; i<prevEmbdActvSnodeList.getSize(); i++)cout<<prevEmbdActvSnodeList[i]<<" "; cout<<endl;

			// Read Backup path snodes from prv_f11
			IloInt zeroBkupSnodeList=0;
			if(numBkupHops==0)  prv_f11>>zeroBkupSnodeList;	// To allow reading prv_f11 from nobk, srlg and shrd link embeddings
			else{
				cerr<<"\tNon zero read for backup path nodes in prv_f11_ph2EmbeddedVnodes"<<endl;
				for(IloInt bsnItr=0; bsnItr<=numBkupHops; bsnItr++)
					prv_f11>>prevEmbdBkupSnodeList[bsnItr];
				}
			//cout<<"\t\tprevEmbdBkupSnodeList: ";for(IloInt i=0; i<prevEmbdBkupSnodeList.getSize(); i++) cout<<prevEmbdBkupSnodeList[i]<<" "; cout<<endl;

			// Read Active path slinks from prv_f11
			for(IloInt aslItr=0; aslItr<numActvHops; aslItr++){
				IloNum actvSlink;
				prv_f11>>actvSlink;	//26 8
				prevEmbdActvSlinkList[aslItr] = actvSlink;
				if (found ==1)
					slinkResidualBwAry[actvSlink-1] = slinkResidualBwAry[actvSlink-1] - bw;
			}
			//cout<<"\t\tprevEmbdActvSlinkList: "; for(IloInt i=0; i<prevEmbdActvSlinkList.getSize(); i++) cout<<prevEmbdActvSlinkList[i]<<" "; cout<<endl;

			// Read Backup path slinks from prv_f11
			IloInt zeroBkupSlinkList=0;
			if(numBkupHops==0)  prv_f11>>zeroBkupSlinkList;	// To allow reading prv_f11 from nobk, srlg and shrd link embeddings
			else{
				cerr<<"\tNon zero read for backup path links in prv_f11_ph2EmbeddedVnodes"<<endl;
				for(IloInt bslItr=0; bslItr<numBkupHops; bslItr++)
					prv_f11>>prevEmbdBkupSlinkList[bslItr];
				}

			if (found == 1){
				if(LINK_DBG0)cout<<"\t\tvlink retained"<<endl;
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setSrcSnode(srcSnode);
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setDstSnode(dstSnode);
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setQosCls(qosCls);
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setVnpId(vnpId);
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setVlinkId(vlinkId);
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setVlEmbdProfit(vlEmbdProfit);
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setActvPthCost(vlActvPthCost);
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setPeriod(period);
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setAcbkPairId(acbkPairId);
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setNumActvHops(numActvHops);
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setNumBkupHops(numBkupHops);
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setActvSnodeAry(prevEmbdActvSnodeList);
				//rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setBkupSnodeAry(prevEmbdBkupSnodeList);
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setActvSlinkAry(prevEmbdActvSlinkList);
				//rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setBkupSlinkAry(prevEmbdBkupSlinkList);
				if(LINK_DBG0)cout<<"\t\tadded to rtndVlinkEmbeddingVect"<<endl;
				rtndVlinkEmbdCount++;
			}


			else if(found == 0){
				if(LINK_DBG0)cout<<"\t\tvlink removed"<<endl;
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setSrcSnode(srcSnode);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setDstSnode(dstSnode);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setQosCls(qosCls);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setVnpId(vnpId);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setVlinkId(vlinkId);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setVlEmbdProfit(vlEmbdProfit);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setActvPthCost(vlActvPthCost);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setPeriod(period);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setAcbkPairId(acbkPairId);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setNumActvHops(numActvHops);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setNumBkupHops(numBkupHops);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setActvSnodeAry(prevEmbdActvSnodeList);
				//rmvdVlinkEmbedingVect[rmvdVlinkCount].setBkupSnodeAry(prevEmbdBkupSnodeList);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setActvSlinkAry(prevEmbdActvSlinkList);
				//rmvdVlinkEmbedingVect[rmvdVlinkCount].setBkupSlinkAry(prevEmbdBkupSlinkList);
				if(LINK_DBG0)cout<<"\t\tadded to rmvdVlinkEmbedingVect"<<endl;
				rmvdVlinkCount++;
			}
		}// end for routing paths

		if(rmvdVlinkCount != prvEmbdRmvdCurr){
			cerr<<"\n\tRemoved path counts does not match. Making nbRemovedPaths = remPathCount\n";
			prvEmbdRmvdCurr = rmvdVlinkCount;
		}
		prv_f11.close();
		cout<<"\t\t Retained Vlink embedding entries found \t= "<<rtndVlinkEmbdCount<<endl;

		//********************************************************************************************************
		//                             Network definition
		//********************************************************************************************************
		cout<<"\n\t Network definition"<<endl;
		SnodesAryType  Vect_Substrate_Graph(env,numSubNodes);
		substrate_Graph_creation(Vect_Substrate_Graph, Vect_Link, numSubLinks, numSubNodes, env);
		adjacency_list_creation(Vect_Substrate_Graph, numSubNodes, env);
		//substrate_graph_printing(Vect_Substrate_Graph, env, numSubNodes);

		// bkupBwUnitsReqAry is only used in LinkEmbedderWithBkup
		IloNumArray bkupBwUnitsReqAry(env, numSubLinks);
		arrayZeroInitialize(bkupBwUnitsReqAry, numSubLinks);

		//------------------------------------------------------------------------------------------
		//                               Calculation of the Shortest path                          -
		//------------------------------------------------------------------------------------------
		cout<<"\n\t Calculating Shortest paths"<<endl;
		IloInt nb_candidate_embedding_nodes = newVlinkEmbedPh1*ACTV_PER_VL;
		MetaSubPathAryType Path_Vect(env, nb_candidate_embedding_nodes);
		IloInt numShortestPaths = 0;
		for(IloInt j=0;j<newVlinkEmbedPh1;j++){

			IloInt src_vlink = (IloInt)  addedVlinkReqVect[j].getSrcVnode();
			IloInt dest_vlink = (IloInt) addedVlinkReqVect[j].getDestVnode();
			IloInt request_id = j+1;
			IloInt virtual_link_id = (IloInt) addedVlinkReqVect[j].getVlinkId();
			IloInt vnp_id = (IloInt) addedVlinkReqVect[j].getVnpId();

			IloInt src = getCandidSnodeForVnode(Preliminary_Node_Embedding_Vect,ph1EmbdVnodeCount,src_vlink, vnp_id);
			IloInt dest = getCandidSnodeForVnode(Preliminary_Node_Embedding_Vect,ph1EmbdVnodeCount,dest_vlink, vnp_id);

			IloInt class_QoS = (IloInt) addedVlinkReqVect[j].getVlinkQosCls();
			IloInt hops = (IloInt) Link_Class_QoS_Vect[class_QoS-1].GetQoS_Class_Max_Hops();
			//cout<<"\t "<<j<<"\t "<<src_vlink<<"\t\t "<<dest_vlink<<"\t\t "<<virtual_link_id<<"\t\t "<<vnp_id<<"\t "<<src<<"\t\t "<<dest<<"\t\t "<<class_QoS<<"\t\t "<<hops<<endl;
			shortest_path(false, SL_COST_FOR_EDGE, currTslot, Vect_Substrate_Graph, Path_Vect, src, dest, hops, request_id, vnp_id, virtual_link_id, numShortestPaths, bkupBwUnitsReqAry, env);
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
		IloNumVarArray yAry(env);   // used to decide on the embedding of VN on substrate nodes
		IloNumVarArray zAry(env);     // used to decide on the acceptance of VNP request

		VLink_Embedding_Trace_Tab  traceYary(env, newVlinkEmbedPh1*ACTV_PER_VL);
		VN_Embedding_Trace_Tab    traceZary(env,newIaasReqCount);

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
		cout<<"\t A- Creation of VN embedding variables 'y' and 'z' "<<endl;

		IloInt yLength = creation_path_embedding_var(addedVlinkReqVect, newVlinkEmbedPh1, Path_Vect, numShortestPaths, yAry, traceYary, env);

		vnp_variable_creation(traceZary, zAry, accepted_vnp_id_tab, newIaasReqCount, env);

		//------------------------------------------------------------------------
		//  B- no partially VN Embedding: accept all virtual links or block all  -
		//------------------------------------------------------------------------
		cout<<"\t B- no partially VN Embedding: accept all virtual links or block all"<<endl;

		no_partially_VN_embedding(addedVlinkReqVect, newVlinkEmbedPh1, Path_Vect, numShortestPaths, traceYary, yAry, yLength,
				zAry, traceZary, newIaasReqCount, ILP_model, env);

		//----------------------------------------------------------------------
		// C- Substrate Link Bandwidth Capacity constraint                     -
		//----------------------------------------------------------------------
		cout<<"\t C- Substrate Link Bandwidth Capacity constraint"<<endl;

		periodic_substrate_link_bw_constraint(Vect_Link, numSubLinks, addedVlinkReqVect, newVlinkEmbedPh1, Path_Vect, numShortestPaths, traceYary,
				Link_Class_QoS_Vect, yAry, yLength, ILP_model, slinkResidualBwAry, env);


		//--------------------------------------------------------------------------------
		// E- Calculation of the objective function Maximize the PIP Profit              -
		//--------------------------------------------------------------------------------
		cout<<"\t E- Calculation of the objective function Maximize the PIP Profit"<<endl;
		IloExpr substrate_network_revenue(env);
		IloExpr substrate_cost(env);
		IloNumArray    arc_vect(env,MAX_SIZE);

		for(IloInt i=0;i<newVlinkEmbedPh1;i++){
			IloInt bid = (IloInt) addedVlinkReqVect[i].getBid();
			IloInt vnp_id = (IloInt) addedVlinkReqVect[i].getVnpId();
			IloInt virtual_link_id = (IloInt) addedVlinkReqVect[i].getVlinkId();
			IloInt vlink_src  = (IloInt) addedVlinkReqVect[i].getSrcVnode();
			IloInt vlink_dest = (IloInt) addedVlinkReqVect[i].getDestVnode();
			IloInt vlink_src_cls = (IloInt) search_vnode_class(vlink_src, vnp_id,Preliminary_Node_Embedding_Vect, ph1EmbdVnodeCount);
			IloInt vlink_dest_cls = (IloInt) search_vnode_class(vlink_dest, vnp_id,Preliminary_Node_Embedding_Vect, ph1EmbdVnodeCount);
			IloInt src_cpu= (IloInt) Node_Class_QoS_Vect[vlink_src_cls-1].getVnodeCpuReq();
			IloInt dest_cpu= (IloInt) Node_Class_QoS_Vect[vlink_dest_cls-1].getVnodeCpuReq();
			IloInt index = (IloInt) search_z_index(vnp_id, traceZary, newIaasReqCount);

			substrate_network_revenue+= bid*zAry[index];

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
					arrayZeroInitialize(arc_vect,MAX_SIZE);
					Path_Vect[j].getUsedSlinkAry(arc_vect);
					IloInt src_cost = (IloInt) cpu_unit_cost_vect[src_emb-1];
					IloInt dest_cost = (IloInt) cpu_unit_cost_vect[dest_emb-1];
					IloInt emb_path_cost=src_cost*src_cpu + dest_cost*dest_cpu;
					IloInt l=0, exit=0;

					while (l<MAX_SIZE){
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
					IloInt path_var_index = (IloInt) search_var_index(traceYary, virtual_link_id, num_path, yLength);
					substrate_cost+= emb_path_cost*yAry[path_var_index];
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

		IloNumArray yVals(env);
		ILP_solver.getValues(yVals, yAry);

		IloNumArray zVals(env);
		ILP_solver.getValues(zVals, zAry);

		//****************************************************************************************************
		//                      Printing of embedding solution details                                       *
		//****************************************************************************************************
		env.out()<<"zVals: Represents embedded VNP requests\n"<< zVals << endl;
		IloInt numVlFromAcptedVnp=0;
		IloInt acptdIaaSCount = 0;
		for(IloInt i=0;i<newIaasReqCount;i++) {
			IloNum current_value = (IloNum) zVals[i];
			if (current_value > EPSELON_1){
				IloInt vnp_id = (IloInt) traceZary[i].getVnpId();

				IloInt nb_vlinks = (IloInt) VN_Request_Topology_Vect[vnp_id-1].getVlinkCount();
				numVlFromAcptedVnp+=nb_vlinks;
				acptdIaaSCount++;
			}
		}


		env.out()<< "yVals: Represents selected active/backup pairs\n"<< yVals << endl;
		IloInt acptedVlinkCount = 0;
		for(IloInt i=0;i<yLength;i++)
			if ((IloNum) yVals[i] > EPSELON_1)
				acptedVlinkCount++;

		if(numVlFromAcptedVnp!=acptedVlinkCount){
			cerr<<"\t Number of vlinks in accepted requests do not match with number of accepted vlinks in yVals";
			acptedVlinkCount = numVlFromAcptedVnp;
		}

		SubstratePathAryType newlyEmbdedVlinkAry(env, numVlFromAcptedVnp);
		IloInt embdVlItr=0;

		if(LINK_DBG5){
			cout<<"\t\t\t------------------------------------------------------------------------------"<<endl;
			cout<<"\t\t\t------------------      PRINT & SAVE EMBEDDING SOLUTION     ------------------"<<endl;
			cout<<"\t\t\t------------------------------------------------------------------------------"<<endl;
			cout<<"\tVNP\tvLink\tpathId\tsSrc\tsDest\tactvSnodes\tactvSlinks\tvlBid\tembdCost\tProfit"<<endl;
		}

		//cout<<"\n\t\t\tEmbedding solution"<<endl;
		//cout<<"\tvLink\tsPath\tsSrc\tsDest\tUsed sNodes\tUsed sLinks"<<endl;

		for(IloInt i=0;i<yLength;i++){
			IloNum current_value =  (IloNum) yVals[i];

			if (current_value > EPSELON_1) {
				IloInt j=0, found=0;

				while ((j <yLength) &&(found==0)){
					IloInt index = (IloInt) traceYary[j].GetVar_Index();
					IloBool equal_index = (index == i);
					if (equal_index){
						found=1;
						IloInt class_QoS = 0;
						IloInt bid = 0;
						IloInt vnp_id = 0;
						IloInt vlink_src_cls = 0;
						IloInt vlink_dest_cls = 0;
						IloInt current_vlink = (IloInt) traceYary[j].getVlinkId();
						IloInt num_path = (IloInt) traceYary[j].getShortestPathId();

						//cout<<" virtual link: "<<current_vlink<<"was assigned to substrate path: "<<num_path<<endl;

						search_request(addedVlinkReqVect, newVlinkEmbedPh1, current_vlink, class_QoS, bid, vnp_id, vlink_src_cls, vlink_dest_cls, Preliminary_Node_Embedding_Vect, ph1EmbdVnodeCount);
						IloInt src_cpu= (IloInt) Node_Class_QoS_Vect[vlink_src_cls-1].getVnodeCpuReq();
						IloInt dest_cpu= (IloInt) Node_Class_QoS_Vect[vlink_dest_cls-1].getVnodeCpuReq();
						search_embedding_path(Path_Vect,numShortestPaths, num_path, vnp_id, class_QoS, bid, newlyEmbdedVlinkAry, embdVlItr, bw_unit_cost_vect, cpu_unit_cost_vect, Link_Class_QoS_Vect, src_cpu, dest_cpu, env);
					}
					j++;
				}// end while
			}// end if non zero
		} // end for x var elements

		//-------------------------------------
		//  Update node embedding details     -
		//-------------------------------------
		//cout<<"\n\t DONE:   Printing of embedding solution details"<<endl;
		Virtual_Node_Embedding_tab  Accepted_Node_Embedding_Vect(env, ph1EmbdVnodeCount);

		IloInt nb_accepted_vnode=0;

		//cout<<"\n\t ph1EmbdVnodeCount = "<<ph1EmbdVnodeCount<<endl;
		//cout<<"\t Preliminary_Node_Embedding_Vect.size = "<<Preliminary_Node_Embedding_Vect.getSize()<<endl;
		//cout<<"\t zvals.size = "<<zVals.getSize()<<",  \tzvals = "<<zVals<<endl;
		//int indedx_1=0;

		for(IloInt i=0;i<ph1EmbdVnodeCount;i++){
			IloInt vnp_id = (IloInt) Preliminary_Node_Embedding_Vect[i].getVnpId();
			IloInt index = (IloInt) search_z_index(vnp_id, traceZary, newIaasReqCount);

			IloNum current_value = (IloNum) zVals[index];

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

		IloNumArray actvSnodesUsedByEndOfT(env, numSubNodes);		// To calculate snode resource utilization by Active paths in performance evaluation
		arrayZeroInitialize(actvSnodesUsedByEndOfT, numSubNodes);
		IloNumArray bkupSnodesUsedByEndOfT(env, numSubNodes);		// To calculate snode resource utilization by Backup paths in performance evaluation
		arrayZeroInitialize(bkupSnodesUsedByEndOfT, numSubNodes);
		IloNumArray actvSlinksUsedByEndOfT(env, numSubLinks);		// To calculate slink resource utilization by Active paths in performance evaluation
		arrayZeroInitialize(actvSlinksUsedByEndOfT, numSubLinks);
		IloNumArray bkupSlinksUsedByEndOfT(env, numSubLinks);		// To calculate slink resource utilization by Backup paths in performance evaluation
		arrayZeroInitialize(bkupSlinksUsedByEndOfT, numSubLinks);


		//**********************************************************************************************************
		//                             Save VN embedding solution                                                  *
		//**********************************************************************************************************


		//const char*  filename9="C:/ILOG/CPLEX121/abdallah_work/data/phaseII_embedding_us_metro20_p9.txt";
		cout<<"\n\t Saving VN embedding solution in FILE: "<<f11_nobk_ph2EmbeddedVnodes<<endl;
		ofstream f11(f11_nobk_ph2EmbeddedVnodes);

		if (!f11)
			cerr << "ERROR: could not open file "<< f11_nobk_ph2EmbeddedVnodes<< "for reading"<< endl;

		ph1EmbdVnodeCount = rtndVnodeCount + nb_accepted_vnode;

		IloInt reserved_cpu=0;
		f11<<ph1EmbdVnodeCount<<endl;

		for(IloInt i=0;i<rtndVnodeCount;i++){
			IloInt vnode = (IloInt) rtndVnodeEmbeddingVect[i].getVnodeId();
			IloInt vnp_id= (IloInt) rtndVnodeEmbeddingVect[i].getVnpId();
			IloInt snode = (IloInt) rtndVnodeEmbeddingVect[i].getCandidSnodeId();
			IloInt cls = (IloInt) rtndVnodeEmbeddingVect[i].getQosCls();
			IloInt period = (IloInt) rtndVnodeEmbeddingVect[i].GetPeriod();
			IloInt c_cpu = (IloInt) Node_Class_QoS_Vect[cls-1].getVnodeCpuReq();
			reserved_cpu+=c_cpu;
			f11<<vnode<<"\t"<<vnp_id <<"\t"<<snode<<"\t"<<cls<<"\t"<<period<<endl;
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
			f11<<vnode<<"\t"<<vnp_id <<"\t"<<snode<<"\t"<<cls<<"\t"<<period<<endl;
		}

		IloInt totVlinksEmbded = rtndVlinkEmbdCount + embdVlItr;

		//VNP_traffic_tab  Updated_Add_Request_Vect(env, nb_embedding_path);

		f11<<totVlinksEmbded<<endl;

		IloNumArray used_arc_vect(env,numSubLinks);
		arrayZeroInitialize(used_arc_vect, numSubLinks);

		IloNumArray used_node_vect(env,numSubNodes);
		arrayZeroInitialize(used_node_vect, numSubNodes);

		//vect_length = MAX_SIZE;

		IloInt Reserved_PIP_profit=0;
		IloInt Reserved_PIP_cost=0;
		IloNum Reserved_PIP_cost_actv = 0.0, Reserved_PIP_cost_bkup = 0.0;
		IloInt rtnd_actv_bw =0;
		IloInt rtnd_total_actv_path_hops=0, rtnd_total_bkup_path_hops=0;
		//IloInt nb_reserved_total_path_hops=0;

		// ------------------------------ RETAINED vlinks from previous tslot -----------------------------//
		for(IloInt i=0;i<rtndVlinkEmbdCount;i++){
			IloInt qosCls = rtndVlinkEmbeddingVect[i].getQosCls();
			IloInt vlActvBwReq = Link_Class_QoS_Vect[qosCls-1].getQosClsBw();
			IloInt vlEmbdProfit = rtndVlinkEmbeddingVect[i].getVlEmbdProfit();
			IloInt actvPthCost = rtndVlinkEmbeddingVect[i].getActvPthCost();
			IloInt bkupPthCost = 0;
			IloNum vlEmbdCost 	= 	actvPthCost + bkupPthCost;
			IloInt numActvHops	=	rtndVlinkEmbeddingVect[i].getNumActvHops();
			IloInt numBkupHops	=	0;

			IloNumArray  rtndActvSnodeList(env, MAX_SIZE);
			rtndVlinkEmbeddingVect[i].getActvSnodeAry(rtndActvSnodeList);
			//IloNumArray  rtndBkupSnodeList(env, MAX_SIZE);
			//rtndVlinkEmbeddingVect[i].getBkupSnodeAry(rtndBkupSnodeList);

			IloNumArray  rtndActvSlinkList(env, MAX_SIZE);
			rtndVlinkEmbeddingVect[i].getActvSlinkAry(rtndActvSlinkList);
			//IloNumArray  rtndBkupSlinkList(env, MAX_SIZE);
			//rtndVlinkEmbeddingVect[i].getBkupSlinkAry(rtndBkupSlinkList);

			Reserved_PIP_profit+=vlEmbdProfit;
			Reserved_PIP_cost_actv+=actvPthCost;
			Reserved_PIP_cost_bkup += bkupPthCost;
			Reserved_PIP_cost	+=	vlEmbdCost;

			f11<<"vl"<<endl;
			f11<<rtndVlinkEmbeddingVect[i].getSrcSnode()<<endl;						//	f11 <<	srcSnode
			f11<<rtndVlinkEmbeddingVect[i].getDstSnode()<<endl;						//	f11 <<	dstSnode
			f11<<qosCls<<endl;														//	f11 <<	qosCls
			f11<<rtndVlinkEmbeddingVect[i].getVnpId()<<endl;						//	f11 <<	vnpId
			f11<<rtndVlinkEmbeddingVect[i].getVlinkId()<<endl;						//	f11 <<	vlinkId
			f11<<vlEmbdProfit<<endl;												//	f11 <<	vlEmbdProfit
			f11<<actvPthCost<<endl;													//	f11 <<	actvPthCost
			f11<<bkupPthCost<<endl;													//	f11 <<	bkupPthCost
			f11<<rtndVlinkEmbeddingVect[i].getPeriod()<<endl;						//	f11 <<	tSlot
			f11<<rtndVlinkEmbeddingVect[i].getAcbkPairId()<<endl;					//	f11 <<	acbkPairId
			f11<<numActvHops<<endl;													//	f11 <<	numActvHops
			f11<<numBkupHops<<endl;													//	f11 <<	numBkupHops

			/*vl
			srcSnode
			dstSnode
			qosCls
			vnpId
			vlinkId
			vlImbdProfit
			vlActvPthCost
			vlBkupPthCost

			period
			acbkPairId
			numActvHops
			numBkupHops

			actvSnodeList
			bkupSnodeList
			actvSlinkList
			bkupSlinkList
			*/


			// Save Active path snodes in file
			for(IloInt asnItr=0; asnItr<=numActvHops; asnItr++){
				IloInt asnInPth =  rtndActvSnodeList[asnItr];
				if (!valExistInArray(asnInPth, actvSnodesUsedByEndOfT, numSubNodes))
					actvSnodesUsedByEndOfT[asnInPth-1]= (IloNum) asnInPth;
				f11<<asnInPth<<" ";													// 	f11 <<	rtndActvSnodeList
			}
			f11<<endl;

			// Save Backup path snodes in file
			f11<<"0"<<endl;

			// Save Active path slinks in file
			for(IloInt aslItr=0; aslItr<numActvHops; aslItr++){
				IloInt aslInPth =  rtndActvSlinkList[aslItr];
				if (!valExistInArray(aslInPth, actvSlinksUsedByEndOfT, numSubLinks))
					actvSlinksUsedByEndOfT[aslInPth-1]= (IloNum) aslInPth;
				f11<<aslInPth<<" ";													// 	f11 <<	rtndActvLinkList
				rtnd_actv_bw+=vlActvBwReq;
				rtnd_total_actv_path_hops++;
			}
			f11<<endl;

			// Save Backup path slinks in file
			f11<<"0"<<endl;



		} // end while routing paths

		PIP_profit=0;															//check without
		//IloInt PIP_cost=0;
		//IloInt new_actv_bw =0;
		//IloInt total_actv_path_hops=0;
		VlinkReqAryType  Updated_Request_Vect(env,numVlFromAcptedVnp);
		IloInt cost=0, PIP_cost=0, new_actv_bw=0, total_actv_path_hops=0, total_bkup_path_hops=0;
		IloNum PIP_cost_actv = 0.0, PIP_cost_bkup = 0.0;
		IloInt nb_accepted_req=0;

		if(LINK_DBG5)cout<<"\t\tSaving retained vlinks: \tDONE"<<endl;

		// ------------------------------ EMBEDED vlinks from current tslot -----------------------------//
		for(IloInt i=0;i<embdVlItr; i++){
			//arrayZeroInitialize(node_list_prv,MAX_SIZE);
			//arrayZeroInitialize(arc_list, MAX_SIZE);
			IloInt qosCls 		=	newlyEmbdedVlinkAry[i].getQosCls();
			IloInt vlActvBwReq 	=	Link_Class_QoS_Vect[qosCls-1].getQosClsBw();
			IloInt vnpId 		=	newlyEmbdedVlinkAry[i].getVnpId();
			IloInt vlinkId 		=	newlyEmbdedVlinkAry[i].getVlinkId();
			IloNum vlEmbdProfit =	newlyEmbdedVlinkAry[i].getVlEmbdProfit();
			IloNum actvPthCost	=	newlyEmbdedVlinkAry[i].getActvPthCost();
			IloNum bkupPthCost	=	newlyEmbdedVlinkAry[i].getBkupPthCost();
			IloNum vlEmbdCost 	= 	actvPthCost + bkupPthCost;
			IloInt numActvHops	=	newlyEmbdedVlinkAry[i].getNumActvHops();
			IloInt numBkupHops	=	newlyEmbdedVlinkAry[i].getNumBkupHops();

			IloNumArray  embdActvSnodeList(env, MAX_SIZE);
			newlyEmbdedVlinkAry[i].getActvSnodeAry(embdActvSnodeList);
			//IloNumArray  embdBkupSnodeList(env, MAX_SIZE);
			//newlyEmbdedVlinkAry[i].getBkupSnodeAry(embdBkupSnodeList);

			IloNumArray  embdActvSlinkList(env, MAX_SIZE);
			newlyEmbdedVlinkAry[i].getActvSlinkAry(embdActvSlinkList);
			//IloNumArray  embdBkupSlinkList(env, MAX_SIZE);
			//newlyEmbdedVlinkAry[i].getBkupSlinkAry(embdBkupSlinkList);

			//newlyEmbdedVlinkAry[i].getActvSlinkAry(arc_list);
			//newlyEmbdedVlinkAry[i].getActvSnodeAry(node_list_prv);

			PIP_profit	+=	vlEmbdProfit;
			PIP_cost_actv += actvPthCost;
			PIP_cost_bkup += bkupPthCost;
			PIP_cost	+=	vlEmbdCost;

			f11<<"vl"<<endl;
			f11<<newlyEmbdedVlinkAry[i].getSrcSnode()<<endl;
			f11<<newlyEmbdedVlinkAry[i].getDstSnode()<<endl;
			f11<<qosCls<<endl;
			f11<<vnpId<<endl;
			f11<<vlinkId<<endl;
			f11<<vlEmbdProfit<<endl;
			f11<<actvPthCost<<endl;													//	f11 <<	actvPthCost
			f11<<bkupPthCost<<endl;													//	f11 <<	bkupPthCost
			f11<<current_period<<endl;
			f11<<newlyEmbdedVlinkAry[i].getAcbkPairId()<<endl;					//	f11 <<	acbkPairId
			f11<<numActvHops<<endl;									//	f11 <<	numActvHops
			f11<<numBkupHops<<endl;									//	f11 <<	numBkupHops

			// Save Active path snodes in file
			for(IloInt asnItr=0; asnItr<=numActvHops; asnItr++){
				IloInt asnInPth =  embdActvSnodeList[asnItr];
				if (!valExistInArray(asnInPth, actvSnodesUsedByEndOfT, numSubNodes))
					actvSnodesUsedByEndOfT[asnInPth-1]= (IloNum) asnInPth;
				f11<<asnInPth<<" ";													// 	f11 <<	embdActvSnodeList
			}
			f11<<endl;

			// Save Backup path snodes in file
			f11<<"0"<<endl;

			// Save Active path slinks in file
			for(IloInt aslItr=0; aslItr<numActvHops; aslItr++){
				IloInt aslInPth =  embdActvSlinkList[aslItr];
				if (!valExistInArray(aslInPth, actvSlinksUsedByEndOfT, numSubLinks))
					actvSlinksUsedByEndOfT[aslInPth-1]= (IloNum) aslInPth;
				f11<<aslInPth<<" ";													// 	f11 <<	embdActvLinkList
				new_actv_bw+=vlActvBwReq;
				total_actv_path_hops++;
			}
			f11<<endl;

			// Save Backup path slinks in file
			f11<<"0"<<endl;


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
		f14<<embdVlItr<<endl;

		// Writing removed paths to file from RemovedPathVect[]
		// During time slots t0, zero paths will be removed.
		for(IloInt i=0;i<prvEmbdRmvdCurr;i++){
			f14<<rmvdVlinkEmbedingVect[i].getPeriod()<<"\t"<<rmvdVlinkEmbedingVect[i].getVnpId()<<"\t"<<rmvdVlinkEmbedingVect[i].getQosCls()<<"\t";
			IloNumArray  node_list(env,MAX_SIZE);
			arrayZeroInitialize(node_list,MAX_SIZE);
			rmvdVlinkEmbedingVect[i].getActvSnodeAry(node_list);

			IloInt k=0;
			IloBool more_nodes = true;
			while ((k<MAX_SIZE) && (more_nodes)){
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
		for(IloInt i=0;i<embdVlItr;i++){
			f14<<current_period<<"\t"<<newlyEmbdedVlinkAry[i].getVnpId()<<"\t"<<newlyEmbdedVlinkAry[i].getQosCls()<<"\t";
			IloNumArray  node_list(env,MAX_SIZE);
			arrayZeroInitialize(node_list,MAX_SIZE);
			newlyEmbdedVlinkAry[i].getActvSnodeAry(node_list);

			IloInt k=0;
			IloBool more_nodes = true;
			while ((k<MAX_SIZE) && (more_nodes)){
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
		if(LINK_DBG6)cout<<"\n\t Performance Evaluation results of embedding solution"<<endl;

		ofstream f22(f22_nobk_ph2PerformanceResults, ofstream::app);

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

		IloNum bw_efficiency = (IloNum)((new_actv_bw + rtnd_actv_bw)/available_bw);
		IloNum cpu_efficiency = (IloNum)((used_cpu + reserved_cpu)/available_cpu);

		//IloNum nb_hop_per_path = (IloNum)(total_actv_path_hops + nb_reserved_total_path_hops)/(IloNum)(embdVlItr + rtndVlinkEmbdCount);
		IloNum nb_hop_per_actv = (IloNum)(total_actv_path_hops + rtnd_total_actv_path_hops)/(IloNum)(acptedVlinkCount + rtndVlinkEmbdCount);
		IloNum nb_hop_per_bkup = (IloNum)(total_bkup_path_hops + rtnd_total_bkup_path_hops)/(IloNum)(acptedVlinkCount + rtndVlinkEmbdCount);
		IloNum acceptance= (IloNum)acptedVlinkCount/(IloNum)newVlinkEmbedPh1;


		if(LINK_DBG6){
			cout<<"\t\t\t------------------------------------------------------------------------------"<<endl;
			cout<<"\t\t\t--------------- NO BKUP PERFORMANCE RESULTS FOR TSLOT: "<<currTslot<<"     -----------------"<<endl;
			cout<<"\t\t\t------------------------------------------------------------------------------"<<endl;
			cout<<"\t\tIaaS provider new profit:"<<PIP_profit<<endl;
			cout<<"\t\tIaaS provider reserved profit:"<<Reserved_PIP_profit<<endl;
			cout<<"\t\tIaaS provider total profit:"<<PIP_profit + Reserved_PIP_profit<<endl;

			cout<<"\t\tIaaS provider new cost:"<<PIP_cost<<endl;
			cout<<"\t\tIaaS provider reserved cost:"<<Reserved_PIP_cost<<endl;
			cout<<"\t\tIaaS provider cost:"<<PIP_cost + Reserved_PIP_cost<<endl;

			cout<<"\t\tNumber of accepted new vnodes:"<<nb_accepted_vnode<<endl;
			cout<<"\t\tN accepted reserved vnode:"<<rtndVnodeCount<<endl;

			cout<<"\t\tnb requests:"<<NB_REQUEST<<endl;
			cout<<"\t\tnb new requests:"<<newVlinkEmbedPh1<<endl;
			cout<<"\t\tnb reserved requests:"<<rtndVlinkCountFrmPrv<<endl;
			cout<<"\t\tnb accepted new requests:"<<acptedVlinkCount<<endl;
			cout<<"\t\tnb accepted reserved requests:"<<rtndVlinkEmbdCount<<endl;

			cout<<"\t\tblocking:"<<(1 - acceptance)*100<<"%"<<endl;

			cout<<"\t\tnew used bw:"<<new_actv_bw<<endl;
			cout<<"\t\treserved used bw:"<<rtnd_actv_bw<<endl;

			cout<<"\t\tnew used cpu:"<<used_cpu<<endl;
			cout<<"\t\treserved used cpu:"<<reserved_cpu<<endl;

			cout<<"\t\tbw efficiency:"<<bw_efficiency<<endl;
			cout<<"\t\tcpu efficiency:"<<cpu_efficiency<<endl;

			cout<<"\t\tIaaS provider profit unit of available bw:"<<PIP_profit_unit_available_bw<<endl;

			cout<<"\t\tIaaS provider profit unit of available cpu:"<<PIP_profit_unit_available_cpu<<endl;

			cout<<"\t\tnb average hops per active vlink:"<<nb_hop_per_actv<<endl;
		}
		if(currTslot==0)
			f22<<"tslot \tiaasReqPh1\tiaasAcpPh1\tiaasAcpPh2\tretIaaS "
			"\tvnodReqPh1\tvnodAcpPh1\tvnodAcpPh2\tretVnod "
			"\tvlnkReqPh1\tvlnkAcpPh1\tvlnkAcpPh2\tretVlnk "
			"\tnwCpu\tretCpu\tcpuEffi "
			"\tnwActvBw\trtActvBw\tnwBkupBw\trtBkupBw\tbwEffi "
			"\tacceptance "
			"\tnwPrft\tretPrft "
			"\tnwActvCost\tnwBkupCost\trtActvCost\trtBkupCost "
			"\tprftPerBw\tprftPerCpu "
			"\thopsPerActv\thopsPerBkup"<<endl;
		IloInt notCalcYet = 1000;

		f22<<currTslot<<"\t";

		f22<<iaasReqPh1<<"\t";					// iaasReqPh1
		f22<<newIaasReqCount<<"\t";				// iaasAcpPh1 = iaasReqPh2
		f22<<acptdIaaSCount<<"\t";				// iaasAcpPh2
		f22<<notCalcYet<<"\t";					// retIaaS

		f22<<vnodReqPh1<<"\t";					// vnodReqPh1
		f22<<ph1EmbdVnodeCount<<"\t";			// vnodAcpPh1
		f22<<nb_accepted_vnode<<"\t";				// vnodAcpPh2
		f22<<rtndVnodeCount<<"\t";				// retVnod

		f22<<vlnkReqPh1<<"\t";					// vlnkReqPh1
		f22<<newVlinkEmbedPh1<<"\t";			// vlnkAcpPh1
		f22<<acptedVlinkCount<<"\t";			// vlnkAcpPh2
		f22<<rtndVlinkCountFrmPrv<<"\t";		// retVlnk

		f22<<used_cpu<<"\t";					// nwCpu
		f22<<reserved_cpu<<"\t";				// retCpu
		f22<<cpu_efficiency<<"\t";				// cpuEffi

		f22<<new_actv_bw<<"\t";					// nwActvBw
		f22<<rtnd_actv_bw<<"\t";				// rtActvBw
		f22<<notCalcYet<<"\t";					// nwBkupBw
		f22<<notCalcYet<<"\t";					// rtBkupBw
		f22<<bw_efficiency<<"\t";				// bwEffi		//this must include backp bandwidth as well

		f22<<acceptance<<"\t";					// acceptance

		f22<<PIP_profit<<"\t";					// nwPrft
		f22<<Reserved_PIP_profit<<"\t";			// retPrft

		f22<<PIP_cost_actv<<"\t";				// nwActvCost
		f22<<PIP_cost_bkup<<"\t";				// nwBkupCost
		f22<<Reserved_PIP_cost_actv<<"\t";		// rtActvCost
		f22<<Reserved_PIP_cost_bkup<<"\t";		// rtBkupCost

		f22<<PIP_profit_unit_available_bw<<"\t";// prftPerBw
		f22<<PIP_profit_unit_available_cpu<<"\t";// prftPerCpu

		f22<<nb_hop_per_actv<<"\t";					// hopsPerActv
		f22<<nb_hop_per_bkup<<"\t";					// hopsPerBkup

		f22<<endl;
		f22.close();

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
