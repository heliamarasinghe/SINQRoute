/*
 * LinkEmbedder_SlrgBkup.cpp
 *
 *  Created on: May 7, 2017
 *      Author: openstack
 */

#include "../LinkEmbedder/LinkEmbedder.h"



char* LinkEmbedder::embedLinks_SlrgBkup(int currTslot){
	cout<<"\n\t*** Executing Link Embedder with SLRG Backups ***"<<endl;

	//int prevTslot = currTslot-1;
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

	char prv_fbk11_ph2EmbeddedVnodes[50];
	if(currTslot>0)
		snprintf(prv_fbk11_ph2EmbeddedVnodes, sizeof(char) * 50, "DataFiles/t%i/fbk11_ph2EmbeddedVnodes.txt", currTslot-1);	// currTslot/f11_ph2EmbeddedVnodes.txt
	else
		snprintf(prv_fbk11_ph2EmbeddedVnodes, sizeof(char) * 50, "DataFiles/init/fbk11_ph2EmbeddedVnodes.txt");
	//char f17_ctrlUpdatedNalocs[50];
	//snprintf(f17_ctrlUpdatedNalocs, sizeof(char) * 50, "DataFiles/t%i/f17_ctrlUpdatedNalocs.txt", prevTslot);		// currTslot/f12_ph2AcceptedVlinks.txt

	// Files being written
	char fbk11_ph2EmbeddedVnodes[50];
	snprintf(fbk11_ph2EmbeddedVnodes, sizeof(char) * 50, "DataFiles/t%i/fbk11_ph2EmbeddedVnodes.txt", currTslot);		// currTslot/f11_ph2EmbeddedVnodes.txt
	char f12_ph2AcceptedVlinks[50];
	snprintf(f12_ph2AcceptedVlinks, sizeof(char) * 50, "DataFiles/t%i/f12_ph2AcceptedVlinks.txt", currTslot);		// currTslot/f12_ph2AcceptedVlinks.txt
	char fbk13_cplexLinkModel[50];
	snprintf(fbk13_cplexLinkModel, sizeof(char) * 50, "DataFiles/t%i/fbk13_cplexLinkModel.lp", currTslot);				// currTslot/f13_cplexLinkModel.lp
	char* fbk14_ph2AddRemovePaths = new char[50];
	snprintf(fbk14_ph2AddRemovePaths, sizeof(char) * 50, "DataFiles/t%i/fbk14_ph2RemvdAddedPaths.txt", currTslot);		// Contains added and removed vlinks as a tab delimited intermediate physical switch IDs

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
			IloInt vnpId=0, numOfVnodes=0, numOfVlinks=0, period=0;
			f4>>vnpId>>numOfVnodes>>numOfVlinks>>period;
			VnReqTopoAry[i].setVlinkCount(numOfVlinks);
			VnReqTopoAry[i].setVnodeCount(numOfVnodes);
			VnReqTopoAry[i].setVnpId(vnpId);
		}
		f4.close();

		//------------------------------------------------------------------------------------------------------------
		//                                   FILE 5: Reading of substrate bw unit cost  	   		                 -
		//------------------------------------------------------------------------------------------------------------
		cout<<"\tf5\t of substrate bw unit cost from File: "<<f5_subUnitCost<<endl;
		ifstream f5(f5_subUnitCost);
		if (!f5)
			cerr << "ERROR: could not open file "<< f5_subUnitCost<< "for reading"<< endl;
		//IloNumArray slinkBwUniCostAry(env, numSubLinks);
		//arrayZeroInitialize(slinkBwUniCostAry, numSubLinks);


		IloNumArray snodeCpuUnitCostAry(env, numSubNodes);
		IloNumArray slinkBwUnitCostAry(env, numSubLinks);

		for(IloInt j=0;j<numSubLinks;j++){
			IloInt bwUniCost=0;
			//f5>>slinkBwUnitCostAry[j];
			f5>>bwUniCost;
			//slinkBwUniCostAry[j] = bwUniCost;
			slinkBwUnitCostAry[j] = bwUniCost;
		}

		for(IloInt j=0;j<numSubNodes;j++)
			f5>>snodeCpuUnitCostAry[j];
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
		Virtual_Node_Embedding_tab  ph1EmbdVnodes(env, ph1EmbdVnodeCount);
		IloNumArray accepted_vnp_id_tab(env,NB_VNP );
		arrayZeroInitialize(accepted_vnp_id_tab, NB_VNP);
		IloInt newVnpReqCount=0;
		if(LINK_DBG0){
			cout<<"\n\t nb_vnode = "<<ph1EmbdVnodeCount<<endl;
			cout<<"\n\tPrinting Preliminary_Node_Embedding_Vect: \t\tsize = "<<ph1EmbdVnodes.getSize()<<endl;
			cout<<"\t\tvnode\tvnp_id\tsnode\tcls\tperiod"<<endl;
		}
		for(IloInt i=0;i<ph1EmbdVnodeCount;i++){
			IloInt vnode=0, vnp_id=0, snode=0, cls=0, period=0;
			f8>>vnode>>vnp_id>>snode>>cls>>period;
			if(LINK_DBG0)cout<<"\t\t"<<vnode<<"\t"<<vnp_id<<"\t"<<snode<<"\t"<<cls<<"\t"<<period<<endl;
			ph1EmbdVnodes[i].SetVirtual_Node_Id(vnode);
			ph1EmbdVnodes[i].SetVNP_Id(vnp_id);
			ph1EmbdVnodes[i].setCandidSnodeId(snode);
			ph1EmbdVnodes[i].SetQoS_Class(cls);
			ph1EmbdVnodes[i].SetPeriod(period);
			IloInt find = findElementInVector(vnp_id, accepted_vnp_id_tab, newVnpReqCount);
			IloBool is_new_elet = (find==0);
			if (is_new_elet){
				accepted_vnp_id_tab[newVnpReqCount]= (IloNum) vnp_id;
				newVnpReqCount++;
			}
		}

		//------------------------------------------------------------------------------------------------------------
		//              		        FILE 9:Reading New Vlink Requests (Accepted from Phase-I)                            -
		//------------------------------------------------------------------------------------------------------------
		cout<<"\tf9\t Accepted Vlinks in Phase-I from File: "<<f9_ph1AcceptedVlinks<<endl;
		//const char*  filename2="C:/ILOG/CPLEX121/abdallah_work/data/PhaseI_accepted_traffic_us_metro20_p9.txt";
		ifstream f9(f9_ph1AcceptedVlinks);
		if (!f9)
			cerr << "ERROR: could not open file `"<< f9_ph1AcceptedVlinks<< "`for reading"<< endl;
		IloInt curTslot=0, totVlinkEmbedPh1=0, rtndVlinkCountFrmPrv=0, newVlinkReqCount=0;
		f9>>curTslot;
		f9>>totVlinkEmbedPh1;
		f9>>rtndVlinkCountFrmPrv;
		f9>>newVlinkReqCount;
		VlinkReqAryType  rtndVlinkReqVect(env,rtndVlinkCountFrmPrv);	// Retained vlink requests from previous tslot
		VlinkReqAryType  newVlinkReqVect(env,newVlinkReqCount);			// New vlinks requests coming from Phase-I
		if(LINK_DBG0){
			cout<<"\n\t Number of virtual link requests (NB_REQUEST) = "<<totVlinkEmbedPh1<<endl;
			cout<<"\n\tPrinting newVlinkReqVect: \t\tsize = "<<newVlinkReqCount<<endl;
			cout<<"\t\titr\t vSrc\tvDest\tvLink\tclass\tbid\tvnp_id\tperiod"<<endl;
		}
		for(IloInt j=0, i=0;i<totVlinkEmbedPh1;i++){
			IloInt vLinkId=0, srcVnode=0, dstVnode=0, clsQoS=0, bid=0, vnp_id=0, period=0;
			f9>>srcVnode>>dstVnode>>vLinkId>>clsQoS>>bid>>vnp_id>>period;
			if(LINK_DBG0)cout<<"\t\t"<<i<<"\t"<<srcVnode<<"\t"<<dstVnode<<"\t"<<vLinkId<<"\t"<<clsQoS<<"\t"<<bid<<"\t"<<vnp_id<<"\t"<<period<<endl;
			if (i < rtndVlinkCountFrmPrv){
				rtndVlinkReqVect[i].setSrcVnode(srcVnode);
				rtndVlinkReqVect[i].setDestVnode(dstVnode);
				rtndVlinkReqVect[i].setVlinkId(vLinkId);
				rtndVlinkReqVect[i].setVlinkQosCls(clsQoS);
				rtndVlinkReqVect[i].SetBid(bid);
				rtndVlinkReqVect[i].setVnpId(vnp_id);
				rtndVlinkReqVect[i].SetPeriod(period);
			}
			else{
				newVlinkReqVect[j].setSrcVnode(srcVnode);
				newVlinkReqVect[j].setDestVnode(dstVnode);
				newVlinkReqVect[j].setVlinkId(vLinkId);
				newVlinkReqVect[j].setVlinkQosCls(clsQoS);
				newVlinkReqVect[j].SetBid(bid);
				newVlinkReqVect[j].setVnpId(vnp_id);
				newVlinkReqVect[j].SetPeriod(period);

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

		IloNumArray usedBkupBwAry(env, numSubLinks);
		arrayZeroInitialize(usedBkupBwAry, numSubLinks);

		//------------------------------------------------------------------------------------------------------------
		//         				FILE 11: 	Reading Embedding result of previous Tslot
		// 									Finding VN requests retained to current Tslot
		//------------------------------------------------------------------------------------------------------------
		cout<<"\tprv_f11\t Embedding result of previous Tslot from File: "<<prv_fbk11_ph2EmbeddedVnodes<<endl;
		ifstream prv_fbk11(prv_fbk11_ph2EmbeddedVnodes);
		if (!prv_fbk11)
			cerr << "ERROR: could not open file "<< prv_fbk11_ph2EmbeddedVnodes <<"for reading"<< endl;
		IloInt embdVnodesInPrv = 0;
		prv_fbk11>>embdVnodesInPrv;//35

		Virtual_Node_Embedding_tab rtndVnodeEmbeddingVect(env,embdVnodesInPrv);
		SubstratePathAryType  rtndVlinkEmbeddingVect(env, rtndVlinkCountFrmPrv);	//Retained link embedding vector

		IloInt rtndVnodeCount=0;
		for(IloInt i=0;i<embdVnodesInPrv;i++){
			IloInt vnode=0, vnp_id=0, snode=0, cls=0, period=0;
			prv_fbk11>>vnode>>vnp_id>>snode>>cls>>period;
			// check VN requests accepted and embedded in prevTslot (prv_f11_ph2EmbeddedVnodes) are still remain in currTslot after node embedding (f9_ph1AcceptedVlinks)
			IloInt found = search_reserved_vnode(rtndVlinkReqVect, rtndVlinkCountFrmPrv, vnode, vnp_id, period);
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
		cout<<"\t\t Embedded Vnodes in previous Tslot\t\t\t= "<<embdVnodesInPrv<<endl;
		cout<<"\t\t Retained Vnodes for current Tslot\t\t\t= "<<rtndVnodeCount<<endl<<endl;
		cout<<"\t\t Total Vlinks Embedded after Phse I\t\t\t= "<<totVlinkEmbedPh1<<endl;
		cout<<"\t\t Retained Vlinks from previous Tslot\t\t\t= "<<rtndVlinkCountFrmPrv<<endl;
		cout<<"\t\t Newly accepted Vlinks from Ph-I in current Tslot\t= "<<newVlinkReqCount<<endl<<endl;
		IloInt embdVlinksInPrv = 0;
		prv_fbk11>>embdVlinksInPrv;	//39
		IloInt prvEmbdRmvdCurr = embdVlinksInPrv-rtndVlinkCountFrmPrv;
		cout<<"\t\t Total Vlinks embedded in previous Tslot\t\t= "<<embdVlinksInPrv<<endl;
		cout<<"\t\t Vlinks retained to current Tslot\t\t\t= "<<rtndVlinkCountFrmPrv<<endl;
		cout<<"\t\t Previously embedded but removed Vlinks\t\t\t= "<<prvEmbdRmvdCurr<<endl;
		if (prvEmbdRmvdCurr<0){
			cerr<<"\n\tERROR:Number of Removed path count is less than zero\n";
			prvEmbdRmvdCurr = embdVlinksInPrv;									//Dirty work. Remove after correcting trafficgenerator link acceptance issue
			//return;
		}
		SubstratePathAryType  rmvdVlinkEmbedingVect(env, prvEmbdRmvdCurr);	// Removed vlinks due to vnp request departure in this tslot
		IloInt rtndVlinkEmbdCount=0;
		IloInt rmvdVlinkCount = 0;
		cout<<"\n\tReading vlinks from prv_fbk11"<<endl;

		for(IloInt i=0;i<embdVlinksInPrv;i++){
			IloInt srcSnode=0, dstSnode=0, qosCls=0, vnpId=0, vlinkId=0, period=0, acbkPairId=0, numActvHops=0, numBkupHops;
			IloNum vlEmbdProfit=0.0, vlEmbdngCost=0.0;
			string newVl;
			prv_fbk11>>newVl;
			if(newVl!="vl")
				cerr<<"\n\tvlink reading in prv_fll is out of sync"<<endl;
			prv_fbk11>>srcSnode>>dstSnode>>qosCls>>vnpId>>vlinkId>>vlEmbdProfit>>vlEmbdngCost>>period>>acbkPairId>>numActvHops>>numBkupHops;
			/*
				10		src
				3		dest
				3		cls
				2		vnpId
				7		vlinkId
				137.2	profit
				70.7	cost
				0		period
				0		acbkPairId
				0		numActvHops
				0		numBkupHops
			 */
			IloNumArray  prevEmbdActvSnodeList(env, MAX_SIZE);	// Used MAX_SIZE because Abdallahs link embedder use fixed size
			arrayZeroInitialize(prevEmbdActvSnodeList, MAX_SIZE);
			IloNumArray  prevEmbdBkupSnodeList(env, MAX_SIZE);
			arrayZeroInitialize(prevEmbdBkupSnodeList, MAX_SIZE);
			IloNumArray  prevEmbdActvSlinkList(env, MAX_SIZE);
			arrayZeroInitialize(prevEmbdActvSlinkList, MAX_SIZE);
			IloNumArray  prevEmbdBkupSlinkList(env, MAX_SIZE);
			arrayZeroInitialize(prevEmbdBkupSlinkList, MAX_SIZE);

			IloInt bw =  linkQosClsAry[qosCls-1].getQosClsBw();
			IloInt found = searchRtndReqFrmPrv(rtndVlinkReqVect, rtndVlinkCountFrmPrv, vlinkId, vnpId, period);

			// Read Active path snodes from prv_f11
			for(IloInt asnItr=0; asnItr<=numActvHops; asnItr++)
				prv_fbk11>>prevEmbdActvSnodeList[asnItr];
			//cout<<"\t\tprevEmbdActvSnodeList: ";for(IloInt i=0; i<prevEmbdActvSnodeList.getSize(); i++)cout<<prevEmbdActvSnodeList[i]<<" "; cout<<endl;

			// Read Backup path snodes from prv_f11
			for(IloInt bsnItr=0; bsnItr<=numBkupHops; bsnItr++)
				prv_fbk11>>prevEmbdBkupSnodeList[bsnItr];
			//cout<<"\t\tprevEmbdBkupSnodeList: ";for(IloInt i=0; i<prevEmbdBkupSnodeList.getSize(); i++) cout<<prevEmbdBkupSnodeList[i]<<" "; cout<<endl;

			// Read Active path slinks from prv_f11
			for(IloInt aslItr=0; aslItr<numActvHops; aslItr++){
				IloNum actvSlink;
				prv_fbk11>>actvSlink;	//26 8
				prevEmbdActvSlinkList[aslItr] = actvSlink;
				if (found ==1)
					slinkResidualBwAry[actvSlink-1] = slinkResidualBwAry[actvSlink-1] - bw;
			}
			//cout<<"\t\tprevEmbdActvSlinkList: "; for(IloInt i=0; i<prevEmbdActvSlinkList.getSize(); i++) cout<<prevEmbdActvSlinkList[i]<<" "; cout<<endl;

			// Read Backup path slinks from prv_f11
			for(IloInt bslItr=0; bslItr<numBkupHops; bslItr++){
				prv_fbk11>>prevEmbdBkupSlinkList[bslItr];
				// NOTE: BW reserved for backup were deducted from slink-capacity after finding δ matrix
			}
			//cout<<"\t\tprevEmbdBkupSlinkList: "; for(IloInt i=0; i<prevEmbdBkupSlinkList.getSize(); i++) cout<<prevEmbdBkupSlinkList[i]<<" "; cout<<endl;

			/*cerr<<"\n\t Cannot read active and backup paths from prv_f11 using WHILE loop terminated with 0"<<endl;
			// Reading Snode list along the active path
			IloInt k=0;
			IloBool moreElmnts=true;
			while ((k < MAX_SIZE) && (moreElmnts)){
				IloInt acPthSnode;
				prv_f11>>acPthSnode;	//10 9 3 0
				if (acPthSnode!=0){
					prevEmbdActvSnodeList[k] = (IloNum) acPthSnode;
					k++;
				}
				else
					moreElmnts=false;
			}
			// Reading Snode list along the backup path
			k=0;
			moreElmnts=true;
			while ((k < MAX_SIZE) && (moreElmnts)){
				IloInt bkPthSnode;
				prv_f11>>bkPthSnode;	//10 9 3 0
				if (bkPthSnode!=0){
					prevEmbdBkupSnodeList[k] = (IloNum) bkPthSnode;
					k++;
				}
				else
					moreElmnts=false;
			}

			// Reading active slink list along the path
			k=0;
			moreElmnts=true;
			//Srarch whether the vlink is retained from previous time slot

			while ((k < MAX_SIZE) && (moreElmnts)){
				IloInt actvSlink;
				prv_f11>>actvSlink;	//26 8 0
				if (actvSlink !=0){
					prevEmbdActvSlinkList[k] = (IloNum) actvSlink;
					if (found ==1)
						slinkResidualBwAry[actvSlink-1] = slinkResidualBwAry[actvSlink-1] - bw;
					k++;
				}
				else
					moreElmnts=false;
			}

			// Reading backup slink list along the path
			k=0;
			moreElmnts=true;
			while ((k < MAX_SIZE) && (moreElmnts)){
				IloInt bkupSlink;
				prv_f11>>bkupSlink;	//26 8 0
				if (bkupSlink !=0){
					prevEmbdBkupSlinkList[k] = bkupSlink;
					//if (found ==1)
					//	avlblActvBwAry[bkupSlink-1] = avlblActvBwAry[bkupSlink-1] - bw;
					k++;
				}
				else
					moreElmnts=false;
			}*/

			if (found == 1){
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setSrcSnode(srcSnode);
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setDstSnode(dstSnode);
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setQosCls(qosCls);
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setVnpId(vnpId);
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setVlinkId(vlinkId);
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setVlEmbdProfit(vlEmbdProfit);
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setVlEmbdngCost(vlEmbdngCost);
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setPeriod(period);
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setAcbkPairId(acbkPairId);
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setNumActvHops(numActvHops);
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setNumBkupHops(numBkupHops);
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setActvSnodeAry(prevEmbdActvSnodeList);
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setBkupSnodeAry(prevEmbdBkupSnodeList);
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setActvSlinkAry(prevEmbdActvSlinkList);
				rtndVlinkEmbeddingVect[rtndVlinkEmbdCount].setBkupSlinkAry(prevEmbdBkupSlinkList);

				rtndVlinkEmbdCount++;
			}

			else if(found == 0){
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setSrcSnode(srcSnode);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setDstSnode(dstSnode);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setQosCls(qosCls);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setVnpId(vnpId);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setVlinkId(vlinkId);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setVlEmbdProfit(vlEmbdProfit);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setVlEmbdngCost(vlEmbdngCost);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setPeriod(period);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setAcbkPairId(acbkPairId);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setNumActvHops(numActvHops);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setNumBkupHops(numBkupHops);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setActvSnodeAry(prevEmbdActvSnodeList);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setBkupSnodeAry(prevEmbdBkupSnodeList);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setActvSlinkAry(prevEmbdActvSlinkList);
				rmvdVlinkEmbedingVect[rmvdVlinkCount].setBkupSlinkAry(prevEmbdBkupSlinkList);

				rmvdVlinkCount++;
			}
		}// end for routing paths

		if(false){
			cout<<"\n\tPrinting residual bandwith array after deducting active bandwidth"<<endl;
			cout<<"\t\tslId\tresidualBw"<<endl;
			for(int slId=1; slId<=numSubLinks; slId++){
				cout<<"\t\t"<<slId<<"\t"<<slinkResidualBwAry[slId-1]<<endl;
			}
		}

		if(rmvdVlinkCount != prvEmbdRmvdCurr){
			cerr<<"\n\tRemoved path counts does not match. Making nbRemovedPaths = remPathCount\n";
			prvEmbdRmvdCurr = rmvdVlinkCount;
		}
		prv_fbk11.close();
		cout<<"\t\t Retained Vlink embedding entries found \t= "<<rtndVlinkEmbdCount<<endl;





		//**********************************************************************************************************
		cout<<"\n\t ---------------------------------  Network definition  ---------------------------------"<<endl;
		//**********************************************************************************************************
		//cout<<"\n\t Network definition"<<endl;
		SnodesAryType  subNetGraph(env,numSubNodes);
		substrate_Graph_creation(subNetGraph, subLinksAry, numSubLinks, numSubNodes, env); 	// subLinksAry <-- array of substrate links each with src/dst Snodes and id
		adjacency_list_creation(subNetGraph, numSubNodes, env);
		//substrate_graph_printing(Vect_Substrate_Graph, env, NB_NODE);


		//--------------------------------------------------------------------------------------------------------
		//									Caculating Delsta( δ ) matrix for t-1
		//--------------------------------------------------------------------------------------------------------
		//		For a given sub link l*, Delta^(l*)_l represent the sum of backup bandwidth allocated to
		//				existing vlinks whose active paths use the substrate link l.
		//--------------------------------------------------------------------------------------------------------
		cout<<"\n\t CCaculating Delta matrix for previous time slot"<<endl;
		// Defining and initializing deltaMat
		IloNum deltaMat [numSubLinks][numSubLinks];
		for (IloInt bsl =0; bsl<numSubLinks; bsl++)		// bsl = substrate link l* in backup path
			for (IloInt asl =0; asl<numSubLinks; asl++)	// asl = substrate link l in active path
				deltaMat [bsl][asl] = 0.0;



		// Iterating over vlinks retained and fill deltaMat with bandwidth values
		for(int vlItr=0; vlItr<rtndVlinkEmbdCount; vlItr++){



			//IloInt vlinkId = rtndVlinkEmbeddingVect[vlItr].getVlinkId();
			IloInt qosCls = rtndVlinkEmbeddingVect[vlItr].getQosCls();
			IloNum vlinkBw =  linkQosClsAry[qosCls-1].getQosClsBw();


			IloInt numActvHops = rtndVlinkEmbeddingVect[vlItr].getNumActvHops();
			IloInt numBkupHops = rtndVlinkEmbeddingVect[vlItr].getNumBkupHops();


			IloNumArray  embdActvSlinkList(env, MAX_SIZE);
			//arrayZeroInitialize(embdActvSlinkList, MAX_SIZE);
			rtndVlinkEmbeddingVect[vlItr].getActvSlinkAry(embdActvSlinkList);
			IloNumArray  embdBkupSlinkList(env, MAX_SIZE);
			//arrayZeroInitialize(embdBkupSlinkList, MAX_SIZE);
			rtndVlinkEmbeddingVect[vlItr].getBkupSlinkAry(embdBkupSlinkList);

			cout<<"\tnumActvHops:"<<numActvHops<<"\t numBkupHops"<<numBkupHops<<endl;
			cout<<"\tbslId:\taslIds"<<endl;
			for(IloInt bslItr=0; bslItr<numBkupHops; bslItr++){
				IloInt bslId = embdBkupSlinkList[bslItr];
				cout<<"\t"<<bslId<<":\t";
				for(IloInt aslItr=0; aslItr<numActvHops; aslItr++){
					IloInt aslId = embdActvSlinkList[aslItr];
					cout<<"  "<<aslId;
					deltaMat[bslId][aslId] += vlinkBw;
				}
				cout<<endl;
			}

			/*
			IloInt bslItr=0;
			IloBool moreBsl=true;
			while ((bslItr< MAX_SIZE) && (moreBsl)){				// Iterate over backup substrate links (bsl)
				IloInt bsl = embdBkupSlinkList[bslItr];
				if (bsl !=0){
					IloInt alItr=0;
					IloBool moreAsl=true;
					while ((alItr< MAX_SIZE) && (moreAsl)){		// Iterate over active substrate links (asl)
						IloInt asl = embdActvSlinkList[alItr];
						cout<<"\talItr:"<<alItr<<" \tasl:"<<asl<<endl;
						if (asl !=0){												// if there is no 0 at the end of active path, this becomes a never ending while loop
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
			}*/

			if(vlItr==8){
			//if(false){
				cout<<"\tvlItr: "<<vlItr;
				cout<<"\tnumSubLinks:"<<numSubLinks<<endl;

				cout<<"\tPrinting slinkBwUnitCostAry: ";
				for(IloInt slItr=0; slItr<numSubLinks; slItr++)
					cout<<slinkBwUnitCostAry[slItr]<<" ";
				cout<<endl;
			}
		}



		// Printing deltaMat
		if(true){
			cout<<"\n\tPrinting deltaMat"<<endl;
			for (IloInt bsl =0; bsl<numSubLinks; bsl++){
				for (IloInt asl =0; asl<numSubLinks; asl++) {
					cout << deltaMat[bsl][asl] << " ";
				}
				cout << endl;
			}
			cout << endl;
		}

		// Finding reserved backup bandwith for existing for each link in t-1
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

		// Deducting Reserved backup bandwidth from slinks to get available residual bandwidth Bₗʳ
		for (IloInt slItr = 0; slItr<numSubLinks; slItr++){
			slinkResidualBwAry[slItr] = slinkResidualBwAry[slItr] - bkupRsvdOnLink[slItr];
			if(slinkResidualBwAry[slItr]<0){
				cerr<<"\n\tResidual bandwidth on slink "<<slItr+1<<" is less than zero. i.e. "<<slinkResidualBwAry[slItr]<<endl;
				slinkResidualBwAry[slItr] = 0;
			}
		}

		if(false){
			cout<<"\n\tPrinting residual bandwith array after deducting backup bandwidth"<<endl;
			cout<<"\t\tslId\tresidualBw"<<endl;
			for(int slId=1; slId<=numSubLinks; slId++){
				cout<<"\t\t"<<slId<<"\t"<<slinkResidualBwAry[slId-1]<<endl;
			}
		}


		// ========================================================================================================
		//								Creating an Array of active-backup path pairs
		// ========================================================================================================
		IloInt maxMetaActvPaths = newVlinkReqCount*ACTV_PER_VL;
		IloInt maxMetaBkupPaths = maxMetaActvPaths * BKUP_PER_ACTV;
		MetaActvBkupPairAryType acbkPairAry(env, maxMetaBkupPaths);

		//------------------------------------------------------------------------------------------
		//                               Finding Active paths                      -
		//------------------------------------------------------------------------------------------review
		cout<<"\n\t Finding Active paths"<<endl;
		cout<<"\t req\t srcVnode\t destVnode\t vlinkId\t vnpId\t srcSnode\t destSnode\t class_QoS\t maxHops"<<endl;
		MetaSubPathAryType actvPathAry(env, maxMetaActvPaths);

		// For active paths, bkSlinkBwUnitsReq_betaAry has only zeros for each slink
		IloNumArray bkSlBwUnitsReqAry_beta(env, numSubLinks);
		arrayZeroInitialize(bkSlBwUnitsReqAry_beta, numSubLinks);

		IloInt actvPathCount = 0;
		for(IloInt j=0;j<newVlinkReqCount;j++){
			IloInt request_id = j+1;
			cout<<"\t "<<request_id;
			IloInt srcVnode =    newVlinkReqVect[j].getSrcVnode();
			IloInt destVnode =   newVlinkReqVect[j].getDestVnode();

			IloInt vlinkId =   newVlinkReqVect[j].getVlinkId();
			IloInt vnpId =   newVlinkReqVect[j].getVnpId();

			IloInt srcSnode = getCandidSnodeForVnode(ph1EmbdVnodes,ph1EmbdVnodeCount,srcVnode, vnpId);
			IloInt destSnode = getCandidSnodeForVnode(ph1EmbdVnodes,ph1EmbdVnodeCount,destVnode, vnpId);

			IloInt class_QoS =   newVlinkReqVect[j].getVlinkQosCls();
			IloInt maxHops =   linkQosClsAry[class_QoS-1].GetQoS_Class_Max_Hops();


			cout<<"\t "<<srcVnode<<"\t\t "<<destVnode<<"\t\t "<<vlinkId<<"\t\t "<<vnpId<<"\t "<<srcSnode<<"\t\t "<<destSnode<<"\t\t "<<class_QoS<<"\t\t "<<maxHops<<endl;
			shortest_path(false, subNetGraph, actvPathAry, srcSnode, destSnode, maxHops, request_id, vnpId, vlinkId, actvPathCount, bkSlBwUnitsReqAry_beta, env);
			//cout<<"\t Next"<<endl;

		}

		cout<<"\t\t numShortestPaths:"<<actvPathCount<<endl;
		cout<<"\t nb_candidate_embedding_nodes:"<<maxMetaActvPaths<<endl;

		if(LINK_DBG1)
		printing_meta_path(actvPathAry, actvPathCount, env);

		map<IloInt, set<IloInt>> vlinkToActvPthMap;
		for(IloInt aPthItr = 0; aPthItr< actvPathCount; aPthItr++){
			IloInt vlinkId = actvPathAry[aPthItr].getVlinkId();
			vlinkToActvPthMap[vlinkId].insert(aPthItr);
		}

		//--------------------------------------------------------------------------------------------------------
		//									Caculating θ matrix for New vlinks
		//--------------------------------------------------------------------------------------------------------
		//		For each new vlink request, calculate theta value matrix
		//		For a given new vlink e, for each substrate link l*, θ↑(l*)_l represent the backup bandwidth units
		//		required on l* for the backup path ρ↑(π), if l is used in active path π↑(e)
		//--------------------------------------------------------------------------------------------------------
		cout<<"\n\t Caculating Theta matrix"<<endl;
		cout<<"\n\tadedVlinkReqVect.size = "<<newVlinkReqVect.getSize()<<endl;
		cout<<"\tadedVlinkCountInPhOne = "<<newVlinkReqCount<<endl;
		IloInt numActvBkupPairs = 0;

		cout<<"\n\t\tvlinks and corresponding active path IDs for wich backups are calculated"<<endl;
		cout<<"\t\tXX shows that active path before it has a backup path that exceed maximum search iterations"<<endl;
		cout<<"\t\tvlinkId\tActive paths for which backups were calculated"<<endl;
		IloInt PRINT_AP = 0;	//ex 169

		for(IloInt avlItr=0; avlItr<newVlinkReqCount; avlItr++){				// For each vlink request

			// Defining and initializing thetaMat
			IloNum thetaMat [numSubLinks][numSubLinks];
			//IloNum bkBwUnitsReqMat [numSubLinks][numSubLinks];
			/*for(IloInt bsl=0; bsl<numSubLinks; bsl++)
				for(IloInt asl=0; asl<numSubLinks; asl++){
					if(bsl==asl)
						thetaMat [bsl][asl] = INFINI;
					else
						thetaMat [bsl][asl] = 0.0;
				}*/

			IloInt clsQoS = newVlinkReqVect[avlItr].getVlinkQosCls();
			IloInt vlinkReqBw = linkQosClsAry[clsQoS-1].getQosClsBw();


			if(LINK_DBG2)cout<<"\n\tCalculating theta values"<<endl;
			for (IloInt bsl =0; bsl<numSubLinks; bsl++){
				for (IloInt asl =0; asl<numSubLinks; asl++) {
					IloNum dlta = deltaMat[bsl][asl];
					IloNum dltaPlsReqBw = dlta + vlinkReqBw;
					IloNum rsvdBkupBw = bkupRsvdOnLink[bsl];
					if(asl == bsl){
						thetaMat[bsl][asl] = INFINI;
						//bkBwUnitsReqMat[bsl][asl] = 0.0;
					}
					else if(rsvdBkupBw >= dltaPlsReqBw){
						thetaMat[bsl][asl] = 0.0;
						//bkBwUnitsReqMat[bsl][asl] = 0.0;
					}
					else if(slinkResidualBwAry[bsl] >= (dltaPlsReqBw-rsvdBkupBw)){
						//thetaMat[bsl][asl] = slinkBwUnitCostAry[bsl]*(dltaPlsReqBw-rsvdBkupBw);
						thetaMat[bsl][asl] = dltaPlsReqBw-rsvdBkupBw;
						//bkBwUnitsReqMat[bsl][asl] = dltaPlsReqBw-rsvdBkupBw;
					}
					else{
						thetaMat[bsl][asl] = INFINI;
						//bkBwUnitsReqMat[bsl][asl] = 0.0;
					}
				}
			}

			if(LINK_DBG2){
				cout<<"\n\tPrinting theta matrix"<<endl;
				for (IloInt bsl =0; bsl<numSubLinks; bsl++){
					cout<<"\t";
					for (IloInt asl =0; asl<numSubLinks; asl++) {
						cout<<thetaMat[bsl][asl]<<"  ";

					}
					cout<<endl;
				}
				cout<<endl;
			}




			//Calculating beta values for each active path (cost of using each slink in disjoint backup)
			//cout<<"\n\tCaculating beta values for each active path"<<endl;

			IloInt vnpId = newVlinkReqVect[avlItr].getVnpId();
			IloInt vlinkId = newVlinkReqVect[avlItr].getVlinkId();			// beta values
			IloInt bkupPathCount = 0;
			MetaSubPathAryType bkupPathAry(env, maxMetaBkupPaths);
			//cout<<"\t\t"<<vlinkId<<"\t";
			for(IloInt actvPthId : vlinkToActvPthMap[vlinkId]){

				//MetaSubPath actvSpath = actvPathVect[actvPthId];
				//IloInt srcSnode = actvPathVect[actvPthId].getSrcSnode();
				//cout<<"\t\tsrcSnode = "<<srcSnode<<endl;
				IloInt numActvHops = actvPathAry[actvPthId].getNumHops();
				if(actvPthId == PRINT_AP){
					cout<<"\t------------------------------------------------------------------------------"<<endl;
					cout<<"\tBEGIN: etails of backup parth calculation for Active path ID:"<<actvPthId<<" with numHops:"<<numActvHops<<endl;
				}
				//cout<<"\t\t numHops = "<<numHops<<endl;

				IloNumArray actvPthSlinkAry(env, MAX_SIZE);									// numHops = numSlinks
				arrayZeroInitialize(actvPthSlinkAry, MAX_SIZE);
				actvPathAry[actvPthId].getUsedSlinkAry(actvPthSlinkAry);

				IloNumArray actvPthSnodeAry(env, MAX_SIZE);									// numHops = numSlinks
				arrayZeroInitialize(actvPthSnodeAry, MAX_SIZE);
				actvPathAry[actvPthId].getUsedSnodeAry(actvPthSnodeAry);


				//for(IloInt asnItr=0; asnItr<numHops; asnItr++){		// Iterate from src to node before dst in the path
				//	IloInt actvPthSnode = actvPthSnodeAry[asnItr];
				//	IloInt actvPthSlink = actvPthSlinkAry[asnItr];
				//}

//				cout<<"\t";
//				for(int i=0; i<(numHops); i++)
//					cout<<"\t"<<actvPthSlinkAry[i];
//				cout<<endl;

				//------------------------------- Calculating  β  values and  βcˡ_b  values---------------------------------
				// Calculating backup bandwith units required (and cost) on each substrate link, for each active path
				// ---------------------------------------------------------------------------------------------------------

				IloNumArray bkSlBwCostAry(env, numSubLinks);				// bkSlinkBwCost = β x bwUniCost
				arrayZeroInitialize(bkSlBwCostAry, numSubLinks);
				//IloNumArray bkupSlinkBwReqAry(env, numSubLinks);
				arrayZeroInitialize(bkSlBwUnitsReqAry_beta, numSubLinks);// bkSlinkBwUnitsReq_betaAry is used with zero initialized for Active paths


				//if(actvPthId == PRINT_AP)cout<<"\tnumHops = "<<numActvHops<<endl;
				for(IloInt aslItr = 0; aslItr<numActvHops; aslItr++){		// for each slink in active path

					IloInt slinkInActivePth = actvPthSlinkAry[aslItr];
					if(actvPthId == PRINT_AP)cout<<"\t\taslItr:"<<aslItr<<" slink ID:"<<slinkInActivePth<<endl;
					for(IloInt slinkInBkupPth = 0; slinkInBkupPth<numSubLinks; slinkInBkupPth++){		// For each slink in substrate toplogy
						//if(actvPthId == PRINT_AP)
							//cout<<slinkInBkupPth<<"("<<thetaMat[slinkInBkupPth][slinkInActivePth]<<") "<<endl;

						IloNum bwUnitsReq = thetaMat[slinkInBkupPth][slinkInActivePth-1];
						//cout<<"\tbwUnitsReq:"<<bwUnitsReq<<endl;
						IloNum bwUnitCost = slinkBwUnitCostAry[slinkInBkupPth];
						//cout<<"\tbwUnitCost:"<<bwUnitCost<<endl;
						// ------------------- Inter-demand and Intra-demand sharing ---------------------
						//NOTE: If β = Σθ, we does not consider intra-demand sharing
						//		Thus we used β = max(θ)  for every slink in active path ∀ l ∈
						// Previous code:
						//bkupBwUnitsReqAry[slinkInBkupPth] += bwUnitsReq;
						//betaSlinkCostAry[slinkInBkupPth] += bwUnitsReq * bwUnitCost;


						if(bkSlBwUnitsReqAry_beta[slinkInBkupPth] < bwUnitsReq){
							//cout<<"\tbkSlBwUnitsReqAry_beta[slinkInBkupPth]: "<<bkSlBwUnitsReqAry_beta[slinkInBkupPth]<<"\tbwUnitsReq:"<<bwUnitsReq<<endl;
							bkSlBwUnitsReqAry_beta[slinkInBkupPth] = bwUnitsReq;					// β = max(θ)
						//if(bkSlinkBwCostAry[slinkInBkupPth] < (bwUnitsReq * bwUnitCost))
							bkSlBwCostAry[slinkInBkupPth] = bwUnitsReq * bwUnitCost;				// bkSlinkBwCost = βcˡ_b
						}
					}
					//if(actvPthId == PRINT_AP)
				}


				if(actvPthId == PRINT_AP){
					cout<<"\tBeta array for active path \t"<<actvPthId<<" = ";
					for(int i=0; i<numSubLinks; i++)
						cout<<" "<<bkSlBwCostAry[i];
					cout<<endl;
				}

				//Update connected slink costs of each snode in subNetGraph to find least cost backup paths with Eppstein algorithm
				for(IloInt snItr=0; snItr<numSubNodes; snItr++){						// from-Snode
					map<IloInt, IloNum> conSlinkCostMap = subNetGraph[snItr].getConSlinkCostMap();					// Read and update conSlinkCostMap
					for(map<IloInt, IloNum>::iterator it = conSlinkCostMap.begin(); it != conSlinkCostMap.end(); ++it) {
						IloInt slinkId = it->first;
						it->second = bkSlBwCostAry[IloInt(slinkId-1)];
						//cout<<"\t" << it->first <<"\t"<<it->second<<endl;
					}
					subNetGraph[snItr].setConSlinkCostMap(conSlinkCostMap);

					//map<IloInt, IloNum> bkupBwUnitsReqMap = subNetGraph[snItr].getBkupBwUnitsReqMap();					// Read and update conSlinkCostMap
					//for(map<IloInt, IloNum>::iterator it = bkupBwUnitsReqMap.begin(); it != bkupBwUnitsReqMap.end(); ++it) {
					//	IloInt slinkId = it->first;
					//	it->second = bkupSlinkBwReqAry[IloInt(slinkId-1)];
					//	//cout<<"\t" << it->first <<"\t"<<it->second<<endl;
					//}
					//subNetGraph[snItr].setBkupBwUnitsReqMap(bkupBwUnitsReqMap);
				}

				if(actvPthId == PRINT_AP){
					//Printing conSlinkCostMap corresponding to active path
					IloNumArray actvPthSlinkAry(env, MAX_SIZE);									// numHops = numSlinks
					arrayZeroInitialize(actvPthSlinkAry, MAX_SIZE);
					actvPathAry[actvPthId].getUsedSlinkAry(actvPthSlinkAry);
					cout<<"\n\tconSlinkCostMap for active path: "<<actvPthId<<"\tfrom: "<<actvPathAry[actvPthId].getSrcSnode()<<"\tto: "<<actvPathAry[actvPthId].getDstSnode()<<"\t with slink array: [";
					for(int i=0; i<(numActvHops); i++)
						cout<<" "<<actvPthSlinkAry[i];
					cout<<" ]"<<endl;
					cout<<"\tsNode\tConnected slink (cost)"<<endl;
					for(IloInt snItr=0; snItr<numSubNodes; snItr++){
						map<IloInt, IloNum> conSlinkCostMap = subNetGraph[snItr].getConSlinkCostMap();
						cout<<"\t"<<(snItr+1)<<" \t";
						for(map<IloInt, IloNum>::iterator it = conSlinkCostMap.begin(); it != conSlinkCostMap.end(); ++it) {
							cout<<" "<< it->first <<"("<<it->second<<") ";
						}
						cout<<endl;
					}
					cout<<"\tEND: Details of backup parth calculation for Active path ID:"<<actvPthId<<" with numHops:"<<numActvHops<<endl;
					cout<<"\t-----------------------------------------------------------------------------"<<endl;
				}


				cout<<" "<<actvPthId;

				//IloInt srcVnode =    adedVlinkReqVect[avlItr].getSrcVnode();
				//IloInt destVnode =   adedVlinkReqVect[avlItr].getDestVnode();

				IloInt srcSnode = actvPathAry[actvPthId].getSrcSnode();
				IloInt dstSnode = actvPathAry[actvPthId].getDstSnode();

				IloInt class_QoS = newVlinkReqVect[avlItr].getVlinkQosCls();
				IloInt maxHops = linkQosClsAry[class_QoS-1].GetQoS_Class_Max_Hops();	// Max Hop constraint is used to filter shortest paths. Thus ot need as CPLEX constraint
				shortest_path(true, subNetGraph, bkupPathAry, srcSnode, dstSnode, maxHops, actvPthId, vnpId, vlinkId, bkupPathCount, bkSlBwUnitsReqAry_beta, env);

				//TODO: Each backup path in bkupPathAry must have a datastructure that store use of backup bandwith units
				// values from conSlinkCostMap cannot be directly used since available slink bandwidth constraint must be calculated without individual slink bandwidth unit costs
				//--------------------------------------------------------------------------
				//	Including bkupSlinkBwReqAry correspond to each backup path
				//--------------------------------------------------------------------------
				for (IloInt bpCount =0; bpCount<bkupPathCount; bpCount++){
					IloNumArray bkupSlinkAry(env, MAX_SIZE);
					bkupPathAry[bpCount].getUsedSlinkAry(bkupSlinkAry);

				}

			}//for each active path
			cout<<endl;

			// Polulating actvBkupPathPairs, which is an array of MetaActvBkupPairs type objects


			IloNumArray acbkPairYindxAryOfVl(env, (ACTV_PER_VL*BKUP_PER_ACTV));
			//arrayZeroInitialize(acbkPairIdsOfVl, (ACTV_PER_VL*BKUP_PER_ACTV));

			//-------------------------------------------------------------------------------------------------------------
			//			Populating the actvBkupPathPairAry which holds both active and backup path information
			//-------------------------------------------------------------------------------------------------------------
			IloInt bpCount;
			for (bpCount =0; bpCount<bkupPathCount; bpCount++){
				acbkPairYindxAryOfVl[bpCount] = numActvBkupPairs;

				acbkPairAry[numActvBkupPairs].setActvBkupPairId(numActvBkupPairs);					// id = index
				acbkPairAry[numActvBkupPairs].setSrcVnode(newVlinkReqVect[avlItr].getSrcVnode());
				acbkPairAry[numActvBkupPairs].setDstVnode(newVlinkReqVect[avlItr].getDestVnode());
				acbkPairAry[numActvBkupPairs].setSrcSnode(bkupPathAry[bpCount].getSrcSnode());
				acbkPairAry[numActvBkupPairs].setDstSnode(bkupPathAry[bpCount].getDstSnode());
				acbkPairAry[numActvBkupPairs].setVlinkId(vlinkId);
				acbkPairAry[numActvBkupPairs].setVnpId(vnpId);
				IloInt actvPthId = bkupPathAry[bpCount].getMetaSpathReqId();
				acbkPairAry[numActvBkupPairs].setActvPathId(actvPthId);
				acbkPairAry[numActvBkupPairs].setBkupPathId(bpCount);
				acbkPairAry[numActvBkupPairs].setBkupEpstinCost(bkupPathAry[bpCount].getEpstinPathCost());

				IloNumArray actvSnodeAry(env, MAX_SIZE);
				actvPathAry[actvPthId].getUsedSnodeAry(actvSnodeAry);
				acbkPairAry[numActvBkupPairs].setActvSnodeAry(actvSnodeAry);

				IloNumArray actvSlinkAry(env, MAX_SIZE);
				actvPathAry[actvPthId].getUsedSlinkAry(actvSlinkAry);
				acbkPairAry[numActvBkupPairs].setActvSlinkAry(actvSlinkAry);

				IloNumArray bkupSnodeAry(env, MAX_SIZE);
				bkupPathAry[bpCount].getUsedSnodeAry(bkupSnodeAry);
				acbkPairAry[numActvBkupPairs].setBkupSnodeAry(bkupSnodeAry);

				IloNumArray bkupSlinkAry(env, MAX_SIZE);
				bkupPathAry[bpCount].getUsedSlinkAry(bkupSlinkAry);
				acbkPairAry[numActvBkupPairs].setBkupSlinkAry(bkupSlinkAry);

				IloNumArray bkSlBwUnitsReqAry(env, MAX_SIZE);
				bkupPathAry[bpCount].getBkSlBwUnitsReqAry(bkSlBwUnitsReqAry);								// bkSlBwUnitsReqAry
				acbkPairAry[numActvBkupPairs].setBkSlBwUnitsReqAry(bkSlBwUnitsReqAry);
				//bkupBwUnitsReqAry

				acbkPairAry[numActvBkupPairs].setNumActvHops(actvPathAry[actvPthId].getNumHops());
				acbkPairAry[numActvBkupPairs].setNumBkupHops(bkupPathAry[bpCount].getNumHops());			// numActvBkupPairs
				numActvBkupPairs++;
			}

			newVlinkReqVect[avlItr].setNumAcbkPairs(bpCount);					// Number of active/backup pairs found for this vlink
			newVlinkReqVect[avlItr].setAcbkPairYindxAry(acbkPairYindxAryOfVl);	// corresponding yAry indexes of active/backup pairs fond for this vlink

			if(LINK_DBG2)
				printing_meta_path(bkupPathAry, bkupPathCount, env);
		}// for each vlink request


		//if(LINK_DBG2){
			cout<<"\n\tactvBkupPairId(actvPthId, bkupPthId)";
			for(IloInt i=0; i<numActvBkupPairs ; i++){
				if(i%10 == 0) cout<<endl;
				cout<<"\t"<<acbkPairAry[i].getActvBkupPairId()<<"("<<acbkPairAry[i].getActvPathId()<<","<<acbkPairAry[i].getBkupPathId()<<")"<<acbkPairAry[i].getBkupEpstinCost()<<" ";
			}
			cout<<endl;
		//}

		//******************************************************************************************************//
		//*											 CPLEX Model                                               *//
		//******************************************************************************************************//
		IloModel ILP_model(env);										// Declaration of Concert Technology Environment Model

		//------------------------------------- Declaration of ILP Decision Variables
		IloNumVarArray yAry(env);   									// yAry: to select best active/backup pair combinations
		IloNumVarArray zAry(env);     									// zAry: to decide on the acceptance of VNP request
		VLink_Embedding_Trace_Tab  traceYary(env, numActvBkupPairs);
		VN_Embedding_Trace_Tab    traceZary(env,newVnpReqCount);

		//------------------------------------- Declaration of ILP Solver
		IloCplex ILP_solver(ILP_model);
		ILP_solver.setParam(IloCplex::PerInd,1);
		ILP_solver.setParam(IloCplex::EpGap,GAP);
		ILP_solver.setParam(IloCplex::FracCuts,1);
		//ILP_solver.setParam(IloCplex::IntSolLim,6);
		ILP_solver.setParam(IloCplex::MIQCPStrat,2);
		ILP_solver.setParam(IloCplex::TiLim,1000);
		ILP_solver.setParam(IloCplex::NodeSel,1);


		cout<<"\t\t\t-----------------------------------------------------------------------------------"<<endl;
		cout<<"\t\t\t-                             ILP Model definition                                -"<<endl;
		cout<<"\t\t\t-----------------------------------------------------------------------------------"<<endl;

		//-----------------------------------------------------------------------------------------------------
		cout<<"\t A- Creation of VN embedding variables 'x' and 'z' "<<endl;
		//-----------------------------------------------------------------------------------------------------
		//IloInt x_VECT_LENGTH = creation_path_embedding_var(adedVlinkReqVect, adedVlinkCountInPhOne, actvPathAry, actvPathCount, x, vlink_embedding_trace_x, env);
		IloInt yLength = createBinaryVarForActvBkupPairs(acbkPairAry, numActvBkupPairs, yAry, traceYary, env);
		cout<<"\t\t\tLength of yAry (decision variable for active/backup path selection) = "<<yLength<<endl;
		vnp_variable_creation(traceZary, zAry, accepted_vnp_id_tab, newVnpReqCount, env);

		//-----------------------------------------------------------------------------------------------------
		cout<<"\n\t B- no partially VN Embedding: Accept all virtual links or block all"<<endl;
		//-----------------------------------------------------------------------------------------------------
		//no_partially_VN_embedding(adedVlinkReqVect, adedVlinkCountInPhOne, actvPathAry, actvPathCount, traceXary, xAry, xLength, zAry, traceZary, nb_accepted_vnp, ILP_model, env);
		allVlinksOfVnReqEmbdedOnAcbkPairs(newVlinkReqVect, newVlinkReqCount, acbkPairAry, numActvBkupPairs, traceYary, yAry, yLength, zAry, traceZary, newVnpReqCount, ILP_model, env);

		//-----------------------------------------------------------------------------------------------------
		cout<<"\t C- Substrate Link Bandwidth Capacity constraint"<<endl;
		//-----------------------------------------------------------------------------------------------------
		//periodic_substrate_link_bw_constraint(subLinksAry, numSubLinks, adedVlinkReqVect, adedVlinkCountInPhOne, actvPathAry, actvPathCount, traceXary, linkQosClsAry, xAry, xLength, ILP_model, slinkResidualBwAry, env);
		slinkBwCapacityconstraint(subLinksAry, numSubLinks, newVlinkReqVect, newVlinkReqCount, acbkPairAry, actvPathCount, traceYary, linkQosClsAry, yAry, yLength, ILP_model, slinkResidualBwAry, env);

		//-----------------------------------------------------------------------------------------------------
		cout<<"\t E- Calculating objective function: Maximize VNP Request Embedding Profit"<<endl;
		//-----------------------------------------------------------------------------------------------------
		IloExpr vlEmbdngProfit(env);
		if(LINK_DBG4)cout<<"\n\t\tacbkId\tvlId\tvlBid\t#asl(cost)\t#bsl(cost)\tvlProfit"<<endl;
		for(IloInt vlItr=0; vlItr<newVlinkReqCount; vlItr++){
			IloInt vlBid 		= newVlinkReqVect[vlItr].getBid();
			IloInt vnpId 	= newVlinkReqVect[vlItr].getVnpId();
			IloInt vlinkId 	= newVlinkReqVect[vlItr].getVlinkId();
			IloInt vnpZindx = search_z_index(vnpId, traceZary, newVnpReqCount);
			IloInt vlQosCls = newVlinkReqVect[vlItr].getVlinkQosCls();
			IloInt vlReqBw 	= linkQosClsAry[vlQosCls-1].getQosClsBw();

			//---------- Calculating Revenue generated by embedding vlink e = P^e z^n ---------//
			IloExpr vlEmbdngRevenue = vlBid*zAry[vnpZindx];

			//-----------------Calculating cost incurred by embedding vlink e -----------------//
			IloExpr vlEmbdngCost(env);
			IloNumArray acbkPairYindxAry(env, ACTV_PER_VL*BKUP_PER_ACTV);
			newVlinkReqVect[vlItr].getAcbkPairYindxAry(acbkPairYindxAry);
			IloInt vlAcbkPairCount = newVlinkReqVect[vlItr].getNumAcbkPairs();		// number of acbkPairs found for each
			for(IloInt acbkItr=0; acbkItr<vlAcbkPairCount; acbkItr++){
				IloInt yIndx = acbkPairYindxAry[acbkItr];
				IloInt acbkPairId = acbkPairAry[yIndx].getActvBkupPairId();
				IloInt yIndxOfAcbkPair = search_var_index(traceYary, vlinkId, acbkPairId, yLength);	// x array index corresponding to active/backup pair
				if(LINK_DBG4)cout<<"\t\t"<<acbkPairId<<"\t"<<vlinkId<<"\t"<<vlBid;
				//---------- Active path embedding cost ----------//
				IloNum vlActvPthCost=0;
				IloNumArray actvSlinkAry(env, MAX_SIZE);
				acbkPairAry[yIndx].getActvSlinkAry(actvSlinkAry);
				IloInt actvSlinkCount = acbkPairAry[yIndx].getNumActvHops();
				if(LINK_DBG4)cout<<"\t"<<actvSlinkCount;
				for(IloInt aslItr=0; aslItr<actvSlinkCount; aslItr++){
					IloInt aslId = actvSlinkAry[aslItr];
					IloInt bwUniCost = slinkBwUnitCostAry[aslId-1];
					vlActvPthCost += bwUniCost*vlReqBw;
				}
				if(LINK_DBG4)cout<<"("<<vlActvPthCost<<")";

				//---------- Backup path embedding cost ----------//
				if(LINK_DBG4)cout<<"\t\t"<<acbkPairAry[yIndx].getNumBkupHops();
				IloNum vlBkupPthCost = acbkPairAry[yIndx].getBkupEpstinCost()*(BKUP_COST_PERCENT/100.0);
				//if(LINK_DBG3)

				if(LINK_DBG4)cout<<"("<<vlBkupPthCost<<")\t\t"<<vlBid-(vlActvPthCost+vlBkupPthCost)<<endl;
				vlEmbdngCost += yAry[yIndxOfAcbkPair] * (vlActvPthCost + vlBkupPthCost);
			}
			vlEmbdngProfit += (vlEmbdngRevenue - vlEmbdngCost);
		}

		IloObjective obj_func(IloMaximize(env));
		ILP_model.add(obj_func);
		obj_func.setExpr(vlEmbdngProfit);

//		IloRange range_const(env,-obj_func,0);
//		ILP_model.add(range_const);

			/*
		//--------------------------------------------------------------------------------
		// E- Calculation of the objective function Maximize the PIP Profit              -
		//--------------------------------------------------------------------------------
		cout<<"\t E- Calculation of the objective function Maximize the PIP Profit"<<endl;
		IloExpr substrate_network_revenue(env);
		IloExpr substrate_cost(env);
		IloNumArray    arc_vect(env,vect_length);

		for(IloInt vlItr=0; vlItr<newVlinkReqCount; vlItr++){
			IloInt vlBid 		= newVlinkReqVect[vlItr].getBid();
			IloInt vnpId 	= newVlinkReqVect[vlItr].getVnpId();
			IloInt vlinkId 	= newVlinkReqVect[vlItr].getVlinkId();
			IloInt srcVnode = newVlinkReqVect[vlItr].getSrcVnode();
			IloInt dstVnode	= newVlinkReqVect[vlItr].getDestVnode();
			IloInt vlSrcCls = search_vnode_class(srcVnode, vnpId,ph1EmbdVnodes, ph1EmbdVnodeCount);
			IloInt vlDstCls = search_vnode_class(dstVnode, vnpId,ph1EmbdVnodes, ph1EmbdVnodeCount);
			IloInt vlSrcCpu	= nodeQosClsAry[vlSrcCls-1].getVnodeCpuReq();
			IloInt vlDstCpu	= nodeQosClsAry[vlDstCls-1].getVnodeCpuReq();
			IloInt vnpZindx = search_z_index(vnpId, traceZary, newVnpReqCount);
			IloInt vlQosCls = newVlinkReqVect[vlItr].getVlinkQosCls();
			IloInt vlReqBw 	= linkQosClsAry[vlQosCls-1].getQosClsBw();
			//---------- Calculating Revenue = P^e z^n ---------//
			substrate_network_revenue += vlBid*zAry[vnpZindx];	//		REVENUE
			//--------------------------------------------------//

			//---------------- Calculating Cost ----------------//
			IloInt j=0, no_more_emb_path=0;
			while ((j < actvPathCount)&& (no_more_emb_path == 0)){
				IloInt curVlinkId =   actvPathAry[j].getVlinkId();
				IloInt curVnpId =   actvPathAry[j].getVnpId();
				if((curVnpId == vnpId)&&(curVlinkId == vlinkId)){
					IloInt num_path =   actvPathAry[j].getMetaSpathId();
					IloInt src_emb =    actvPathAry[j].getSrcSnode();
					IloInt dest_emb =   actvPathAry[j].getDstSnode();
					arrayZeroInitialize(arc_vect,vect_length);
					actvPathAry[j].getUsedSlinkAry(arc_vect);
					IloInt src_cost =   cpu_unit_cost_vect[src_emb-1];
					IloInt dest_cost =   cpu_unit_cost_vect[dest_emb-1];
					IloInt emb_path_cost=src_cost*vlSrcCpu + dest_cost*vlDstCpu;
					IloInt l=0, exit=0;
					while (l<vect_length){
						IloInt current_arc =   arc_vect[l];
						IloBool not_nul = (current_arc !=0);
						if (not_nul) {
							IloInt link_cost=   bw_unit_cost_vect[current_arc-1];
							emb_path_cost+=vlReqBw*link_cost;
						}
						else
							exit=1;
						l++;
					}
					IloInt yIndx = search_var_index(traceYary, vlinkId, num_path, yLength);
					substrate_cost+= emb_path_cost*yAry[yIndx];
				}
				j++;
			}// go through the list of potantial embedding paths/nodes.

		}// go through the list of virtual links requests


		IloObjective obj_func(IloMaximize(env));
		ILP_model.add(obj_func);

		obj_func.setExpr(substrate_network_revenue - substrate_cost);

		IloRange range_const(env,-obj_func,0);
		ILP_model.add(range_const);
		*/


		//-----------------------------------------------------------------------------------------------------
		cout<<"\t E- Solving ILP Model"<<endl;
		//-----------------------------------------------------------------------------------------------------
		ILP_solver.exportModel(fbk13_cplexLinkModel);
		ILP_solver.solve();

		//-----------------------------------------------------------------------------------------------------
		//									Printing calculated ILP Solution
		//-----------------------------------------------------------------------------------------------------

		env.out() <<"Solution Status="<<ILP_solver.getStatus() <<endl;
		IloInt PIP_profit =   ILP_solver.getObjValue();
		env.out() <<"Objective Value ="<<PIP_profit<<endl;
		cout<<endl;

		//-----------------------------------------------------------------------------------------------------
		//										save of initiale solution
		//-----------------------------------------------------------------------------------------------------
		IloNumArray yVals(env);
		ILP_solver.getValues(yVals, yAry);

		IloNumArray zVals(env);
		ILP_solver.getValues(zVals, zAry);

		//-----------------------------------------------------------------------------------------------------
		//								 Printing of embedding solution details
		//-----------------------------------------------------------------------------------------------------
		env.out()<< "zVals: Represents embedded VNP requests\n" << zVals << endl;	// embedded VNP requests
		IloInt numVlFromAcptedVnp=0;
		for(IloInt i=0;i<newVnpReqCount;i++) {
			IloNum current_value = (IloNum) zVals[i];
			if (current_value > EPSELON_1){
				IloInt vnpId =   traceZary[i].getVnpId();
				IloInt vlPerVnp =   VnReqTopoAry[vnpId-1].getVlinkCount();
				numVlFromAcptedVnp += vlPerVnp;
			}
		}
		env.out()<< "yVals: Represents selected active/backup pairs\n" << yVals << endl;//selected active/backup pairs for vlinks
		IloInt acptedVlinkCount = 0;
		for(IloInt i=0;i<yLength;i++)
			if ((IloNum) yVals[i] > EPSELON_1)
				acptedVlinkCount++;

		if(numVlFromAcptedVnp!=acptedVlinkCount)
			cerr<<"\t Number of vlinks in accepted requests do not match with number of accepted vlinks in yVals";

		if(LINK_DBG5){
			cout<<"\t\t\t------------------------------------------------------------------------------"<<endl;
			cout<<"\t\t\t------------------      PRINT & SAVE EMBEDDING SOLUTION     ------------------"<<endl;
			cout<<"\t\t\t------------------------------------------------------------------------------"<<endl;
			cout<<"\tVNP\tvLink\tacbkId\tsSrc\tsDest\tactvSlinks\tbkupSlinks\t\tvlBid\tembdCost\tProfit"<<endl;
		}

		SubstratePathAryType newlyEmbdedVlinkAry(env, numVlFromAcptedVnp);// Embeedding solution saved in embdngResultSpathAry
		IloInt embdVlItr=0;
		for(IloInt i=0;i<yLength;i++){
			IloNum current_value =  (IloNum) yVals[i];

			if (current_value > EPSELON_1) {
				IloInt j=0, found=0;

				while ((j <yLength) &&(found==0)){
					IloInt index =   traceYary[j].GetVar_Index();
					IloBool equal_index = (index == i);
					if (equal_index){
						found=1;
						IloInt qosCls = 0;
						IloInt bid = 0;
						IloInt vnpId = 0;
						IloInt vlink_src_cls = 0;
						IloInt vlink_dest_cls = 0;
						IloInt current_vlink =   traceYary[j].getVlinkId();
						IloInt num_path =   traceYary[j].getShortestPathId();
						search_request(newVlinkReqVect, newVlinkReqCount, current_vlink, qosCls, bid, vnpId, vlink_src_cls, vlink_dest_cls, ph1EmbdVnodes, ph1EmbdVnodeCount);
						IloInt src_cpu=   nodeQosClsAry[vlink_src_cls-1].getVnodeCpuReq();
						IloInt dest_cpu=   nodeQosClsAry[vlink_dest_cls-1].getVnodeCpuReq();
						//search_embedding_path(actvPathAry,actvPathCount, num_path, vnpId, qosCls, bid, embdSubPathAry, nb_embedding_path, bw_unit_cost_vect, cpu_unit_cost_vect, linkQosClsAry, src_cpu, dest_cpu, env);
						searchEmbdAcbkPair(acbkPairAry, numActvBkupPairs, num_path, vnpId, qosCls, bid, newlyEmbdedVlinkAry, embdVlItr, slinkBwUnitCostAry, snodeCpuUnitCostAry, linkQosClsAry, src_cpu, dest_cpu, env);
					}
					j++;
				}// end while
			}// end if non zero
		} // end for x var elements



		//-------------------------------------
		//  Update node embedding details     -
		//-------------------------------------
		//cout<<"\n\t DONE:   Printing of embedding solution details"<<endl;
		Virtual_Node_Embedding_tab  acptdVnodeEmbdngVect(env, ph1EmbdVnodeCount);

		IloInt acptdVnodeCount=0;

		cout<<"\n\t nb_vnode = "<<ph1EmbdVnodeCount<<endl;
		cout<<"\t Preliminary_Node_Embedding_Vect.size = "<<ph1EmbdVnodes.getSize()<<endl;
		cout<<"\t zvals.size = "<<zVals.getSize()<<",  \tzvals = "<<zVals<<endl;

		for(IloInt vnodeItr=0; vnodeItr<ph1EmbdVnodeCount; vnodeItr++){
			IloInt vnpId =   ph1EmbdVnodes[vnodeItr].getVnpId();
			IloInt vnpZindx =   search_z_index(vnpId, traceZary, newVnpReqCount);
			IloNum zvalOfEmbdRsult = (IloNum) zVals[vnpZindx];

			if (zvalOfEmbdRsult > EPSELON_1){	// In the embedding result, if correspondg z value of VNP is greater thatn 0.0001, vnpReq is accepted
				acptdVnodeEmbdngVect[acptdVnodeCount].SetVirtual_Node_Id(ph1EmbdVnodes[vnodeItr].getVnodeId());
				acptdVnodeEmbdngVect[acptdVnodeCount].SetVNP_Id(ph1EmbdVnodes[vnodeItr].getVnpId());
				acptdVnodeEmbdngVect[acptdVnodeCount].setCandidSnodeId(ph1EmbdVnodes[vnodeItr].getCandidSnodeId());
				acptdVnodeEmbdngVect[acptdVnodeCount].SetQoS_Class(ph1EmbdVnodes[vnodeItr].getQosCls());
				acptdVnodeEmbdngVect[acptdVnodeCount].SetPeriod(ph1EmbdVnodes[vnodeItr].GetPeriod());
				acptdVnodeCount++;
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



		//***********************************************************************************************************
		//*										Save VN embedding solution in files									*
		//***********************************************************************************************************

		//-----------------------------------------------------------------------------------------------------
		cout<<"\n\t Saving VN embedding solution in FILE: "<<fbk11_ph2EmbeddedVnodes<<endl;
		//-----------------------------------------------------------------------------------------------------
		ofstream fbk11(fbk11_ph2EmbeddedVnodes);
		if (!fbk11)
			cerr << "ERROR: could not open file "<< fbk11_ph2EmbeddedVnodes<< "for reading"<< endl;
		IloInt ph2EmbdVnodeCount = rtndVnodeCount + acptdVnodeCount;
		IloInt reserved_cpu=0;
		fbk11<<ph2EmbdVnodeCount<<endl;
		for(IloInt i=0; i<rtndVnodeCount; i++){								//Include retained vnodes from previous tSlot
			IloInt vnodeId 		=   rtndVnodeEmbeddingVect[i].getVnodeId();
			IloInt vnpId		=   rtndVnodeEmbeddingVect[i].getVnpId();
			IloInt candidSnodeId=   rtndVnodeEmbeddingVect[i].getCandidSnodeId();
			IloInt qosCls 		=   rtndVnodeEmbeddingVect[i].getQosCls();
			IloInt period 		=   rtndVnodeEmbeddingVect[i].GetPeriod();
			IloInt vnodeCpuReq 	=   nodeQosClsAry[qosCls-1].getVnodeCpuReq();
			reserved_cpu += vnodeCpuReq;

			fbk11<<vnodeId<<"\t"<<vnpId <<"\t"<<candidSnodeId<<"\t"<<qosCls<<"\t"<<period<<endl;
		}
		IloInt used_cpu =0;

		//cout<<"\tnb_accepted_vnode: "<< nb_accepted_vnode <<endl;
		for(IloInt i=0; i<acptdVnodeCount; i++){							//Save newly accepted vnodes from current tSlot
			IloInt vnode 		=   acptdVnodeEmbdngVect[i].getVnodeId();
			IloInt vnpId		=   acptdVnodeEmbdngVect[i].getVnpId();
			IloInt snode 		=   acptdVnodeEmbdngVect[i].getCandidSnodeId();
			IloInt qosCls 		=   acptdVnodeEmbdngVect[i].getQosCls();
			IloInt vnodeCpuReq 	=   nodeQosClsAry[qosCls-1].getVnodeCpuReq();
			IloInt period 		=   acptdVnodeEmbdngVect[i].GetPeriod();
			used_cpu+=vnodeCpuReq;

			fbk11<<vnode<<"\t"<<vnpId <<"\t"<<snode<<"\t"<<qosCls<<"\t"<<period<<endl;
		}
		cout<<"\tDONE saving nodes in f11"<<endl;

		IloInt totVlinksEmbded = rtndVlinkEmbdCount + acptedVlinkCount;

		//VNP_traffic_tab  Updated_Add_Request_Vect(env, nb_embedding_path);

		fbk11<<totVlinksEmbded<<endl;

		IloInt Reserved_PIP_profit=0;
		IloInt Reserved_PIP_cost=0;
		IloInt reserved_bw =0;
		IloInt nb_reserved_total_path_hops=0;

		// ------------------------------ RETAINED vlinks from previous tslot -----------------------------//
		for(IloInt rvlItr=0; rvlItr<rtndVlinkEmbdCount; rvlItr++){				//First store embedding details of retained-vlinks(rvl) from previous tslots
			IloInt qosCls 	 	=	rtndVlinkEmbeddingVect[rvlItr].getQosCls();
			IloInt vlBwReq 	 	=	linkQosClsAry[qosCls-1].getQosClsBw();
			IloNum vlEmbdProfit =	rtndVlinkEmbeddingVect[rvlItr].getVlEmbdProfit();
			IloNum vlEmbdCost	=	rtndVlinkEmbeddingVect[rvlItr].getVlEmbdngCost();
			IloInt numActvHops	=	rtndVlinkEmbeddingVect[rvlItr].getNumActvHops();
			IloInt numBkupHops	=	rtndVlinkEmbeddingVect[rvlItr].getNumBkupHops();

			IloNumArray  rtndActvSnodeList(env, MAX_SIZE);
			rtndVlinkEmbeddingVect[rvlItr].getActvSnodeAry(rtndActvSnodeList);
			IloNumArray  rtndBkupSnodeList(env, MAX_SIZE);
			rtndVlinkEmbeddingVect[rvlItr].getBkupSnodeAry(rtndBkupSnodeList);
			//cout<<"\tgetting rtndActvSlinkList"<<endl;

			IloNumArray  rtndActvSlinkList(env, MAX_SIZE);
			rtndVlinkEmbeddingVect[rvlItr].getActvSlinkAry(rtndActvSlinkList);
			IloNumArray  rtndBkupSlinkList(env, MAX_SIZE);
			rtndVlinkEmbeddingVect[rvlItr].getBkupSlinkAry(rtndBkupSlinkList);

			Reserved_PIP_profit	+=	vlEmbdProfit;
			Reserved_PIP_cost	+=	vlEmbdCost;

			//cout<<"\tvl"<<endl;
			fbk11<<"vl"<<endl;
			fbk11<<rtndVlinkEmbeddingVect[rvlItr].getSrcSnode()<<endl;				//	f11 <<	srcSnode
			fbk11<<rtndVlinkEmbeddingVect[rvlItr].getDstSnode()<<endl;				//	f11 <<	dstSnode
			fbk11<<qosCls<<endl;														//	f11 <<	qosCls
			fbk11<<rtndVlinkEmbeddingVect[rvlItr].getVnpId()<<endl;					//	f11 <<	vnpId
			fbk11<<rtndVlinkEmbeddingVect[rvlItr].getVlinkId()<<endl;					//	f11 <<	vlinkId
			fbk11<<vlEmbdProfit<<endl;												//	f11 <<	vlEmbdProfit
			fbk11<<vlEmbdCost<<endl;													//	f11 <<	vlEmbdCost
			fbk11<<rtndVlinkEmbeddingVect[rvlItr].getPeriod()<<endl;					//	f11 <<	tSlot

			fbk11<<rtndVlinkEmbeddingVect[rvlItr].getAcbkPairId()<<endl;				//	f11 <<	acbkPairId
			fbk11<<numActvHops<<endl;													//	f11 <<	numActvHops
			fbk11<<numBkupHops<<endl;													//	f11 <<	numBkupHops

			// Save Active path snodes in file
			for(IloInt asnItr=0; asnItr<=numActvHops; asnItr++){
				IloInt asnInPth =  rtndActvSnodeList[asnItr];
				if (!valExistInArray(asnInPth, actvSnodesUsedByEndOfT, numSubNodes))
					actvSnodesUsedByEndOfT[asnInPth-1]= (IloNum) asnInPth;
				fbk11<<asnInPth<<" ";													// 	f11 <<	rtndActvSnodeList
			}
			fbk11<<endl;
			// Save Backup path snodes in file
			for(IloInt bsnItr=0; bsnItr<=numBkupHops; bsnItr++){
				IloInt bsnInPth =  rtndBkupSnodeList[bsnItr];
				if (!valExistInArray(bsnInPth, bkupSnodesUsedByEndOfT, numSubNodes))
					bkupSnodesUsedByEndOfT[bsnInPth-1]= (IloNum) bsnInPth;
				fbk11<<bsnInPth<<" ";													// 	f11 <<	rtndBkupSnodeList
			}
			fbk11<<endl;
			// Save Active path slinks in file
			for(IloInt aslItr=0; aslItr<numActvHops; aslItr++){
				IloInt aslInPth =  rtndActvSlinkList[aslItr];
				if (!valExistInArray(aslInPth, actvSlinksUsedByEndOfT, numSubLinks))
					actvSlinksUsedByEndOfT[aslInPth-1]= (IloNum) aslInPth;
				fbk11<<aslInPth<<" ";													// 	f11 <<	rtndActvLinkList
				reserved_bw+=vlBwReq;
				nb_reserved_total_path_hops++;
			}
			fbk11<<endl;
			// Save Backup path slinks in file
			for(IloInt bslItr=0; bslItr<numBkupHops; bslItr++){
				IloInt bslInPth =  rtndBkupSlinkList[bslItr];
				if (!valExistInArray(bslInPth, bkupSlinksUsedByEndOfT, numSubLinks))
					bkupSlinksUsedByEndOfT[bslInPth-1]= (IloNum) bslInPth;
				fbk11<<bslInPth<<" ";													// 	f11 <<	rtndActvSnodeList
			}
			fbk11<<endl;



/*			IloInt k=0;
			IloInt more_node=0;

			//cout<<"\tputting used_node"<<endl;
			while ((k< MAX_SIZE) && ( more_node==0)){
				IloInt used_node =  embdActvSnodeList[k];
				if (used_node !=0){
					 IloInt found = (int) findElementInVector(used_node, actvSnodesUsedByEndOfT, numSubNodes);

					if (found == 0)
						actvSnodesUsedByEndOfT[used_node-1]= (IloNum) used_node;

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

			//cout<<"\tputting actvSlink "  <<endl;
			while ((k< MAX_SIZE) && ( more_arc==0)){
				IloInt actvSlink =   embdActvSlinkList[k];
				IloBool non_nul = (actvSlink !=0);
				if (non_nul)
				{
					IloInt find_elt=0;
					find_elt = (int) findElementInVector(actvSlink, actvSlinksUsedByEndOfT, numSubLinks);
					IloBool not_find_link = (find_elt == 0);

					if (not_find_link)
						actvSlinksUsedByEndOfT[actvSlink-1]= (IloNum) actvSlink;

					f11<<actvSlink<<" ";
					reserved_bw+=vlBwReq;
					k++;
					nb_reserved_total_path_hops++;
				}
				else
				{
					f11<<0;
					more_arc=1;
				}

			}

			f11<<endl;*/

		} // end while routing paths

		PIP_profit=0;															//check without
		//IloInt PIP_cost=0;
		//IloInt used_bw =0;
		//IloInt nb_total_path_hops=0;
		VlinkReqAryType  Updated_Request_Vect(env,numVlFromAcptedVnp);
		IloInt  PIP_cost=0, used_bw=0, nb_total_path_hops=0;
		IloInt nb_accepted_req=0;
		/*
		cout<<"\n\tPrinting embdSubPathAry"<<endl;
		cout<<"\t\tvnpId\tvlinkId"<<endl;
		for(int i=0; i<nb_embedding_path; i++){
			cout<<"\t\t"<<embdSubPathAry[i].getVnpId()<<"\t"<<embdSubPathAry[i].getVlinkId()<<endl;
		}*/

		cout<<"\tDONE saving retained vlink embeddings"<<endl;

		// ------------------------------ EMBEDED vlinks from current tslot -----------------------------//
		for(IloInt evlItr=0; evlItr<acptedVlinkCount; evlItr++){
			IloInt qosCls 		=	newlyEmbdedVlinkAry[evlItr].getQosCls();
			IloInt vlBwReq 		=	linkQosClsAry[qosCls-1].getQosClsBw();
			IloInt vnpId 		=	newlyEmbdedVlinkAry[evlItr].getVnpId();
			IloInt vlinkId 		=	newlyEmbdedVlinkAry[evlItr].getVlinkId();
			IloNum vlEmbdProfit =	newlyEmbdedVlinkAry[evlItr].getVlEmbdProfit();
			IloNum vlEmbdCost 	=	newlyEmbdedVlinkAry[evlItr].getVlEmbdngCost();
			IloInt numActvHops	=	newlyEmbdedVlinkAry[evlItr].getNumActvHops();
			IloInt numBkupHops	=	newlyEmbdedVlinkAry[evlItr].getNumBkupHops();


			IloNumArray  embdActvSnodeList(env, MAX_SIZE);
			newlyEmbdedVlinkAry[evlItr].getActvSnodeAry(embdActvSnodeList);
			IloNumArray  embdBkupSnodeList(env, MAX_SIZE);
			newlyEmbdedVlinkAry[evlItr].getBkupSnodeAry(embdBkupSnodeList);

			IloNumArray  embdActvSlinkList(env, MAX_SIZE);
			newlyEmbdedVlinkAry[evlItr].getActvSlinkAry(embdActvSlinkList);
			IloNumArray  embdBkupSlinkList(env, MAX_SIZE);
			newlyEmbdedVlinkAry[evlItr].getBkupSlinkAry(embdBkupSlinkList);

			PIP_profit	+=	vlEmbdProfit;
			PIP_cost	+=	vlEmbdCost;

			//prv_f11>>srcSnode>>dstSnode>>qosCls>>vnpId>>vlinkId>>vlEmbdProfit>>vlEmbdngCost>>period>>acbkPairId>>numActvHops>>numBkupHops;
			fbk11<<"vl"<<endl;
			fbk11<<newlyEmbdedVlinkAry[evlItr].getSrcSnode()<<endl;
			fbk11<<newlyEmbdedVlinkAry[evlItr].getDstSnode()<<endl;
			fbk11<<qosCls<<endl;
			fbk11<<vnpId<<endl;
			fbk11<<vlinkId<<endl;
			fbk11<<vlEmbdProfit<<endl;
			fbk11<<vlEmbdCost<<endl;
			fbk11<<curTslot<<endl;
			fbk11<<newlyEmbdedVlinkAry[evlItr].getAcbkPairId()<<endl;					//	f11 <<	acbkPairId
			fbk11<<numActvHops<<endl;									//	f11 <<	numActvHops
			fbk11<<numBkupHops<<endl;									//	f11 <<	numBkupHops

			// Save Active path snodes in file
			for(IloInt asnItr=0; asnItr<=numActvHops; asnItr++){
				IloInt asnInPth =  embdActvSnodeList[asnItr];
				if (!valExistInArray(asnInPth, actvSnodesUsedByEndOfT, numSubNodes))
					actvSnodesUsedByEndOfT[asnInPth-1]= (IloNum) asnInPth;
				fbk11<<asnInPth<<" ";													// 	f11 <<	embdActvSnodeList
			}
			fbk11<<endl;
			// Save Backup path snodes in file
			for(IloInt bsnItr=0; bsnItr<=numBkupHops; bsnItr++){
				IloInt bsnInPth =  embdBkupSnodeList[bsnItr];
				if (!valExistInArray(bsnInPth, bkupSnodesUsedByEndOfT, numSubNodes))
					bkupSnodesUsedByEndOfT[bsnInPth-1]= (IloNum) bsnInPth;
				fbk11<<bsnInPth<<" ";													// 	f11 <<	embdBkupSnodeList
			}
			fbk11<<endl;
			// Save Active path slinks in file
			for(IloInt aslItr=0; aslItr<numActvHops; aslItr++){
				IloInt aslInPth =  embdActvSlinkList[aslItr];
				if (!valExistInArray(aslInPth, actvSlinksUsedByEndOfT, numSubLinks))
					actvSlinksUsedByEndOfT[aslInPth-1]= (IloNum) aslInPth;
				fbk11<<aslInPth<<" ";													// 	f11 <<	embdActvLinkList
				used_bw+=vlBwReq;
				nb_total_path_hops++;
			}
			fbk11<<endl;
			// Save Backup path slinks in file
			for(IloInt bslItr=0; bslItr<numBkupHops; bslItr++){
				IloInt bslInPth =  embdBkupSlinkList[bslItr];
				if (!valExistInArray(bslInPth, bkupSlinksUsedByEndOfT, numSubLinks))
					bkupSlinksUsedByEndOfT[bslInPth-1]= (IloNum) bslInPth;
				fbk11<<bslInPth<<" ";													// 	f11 <<	embdActvSnodeList
			}
			fbk11<<endl;


			/*IloInt k=0, more_node=0;
			//cout<<"\tputting used_node " <<endl;
			while ((k< MAX_SIZE) && ( more_node==0)){
				IloInt used_node =  embdActvSnodeList[k];
				if (used_node !=0){
					IloInt find_elt=0;
					find_elt = (int) findElementInVector(used_node, actvSnodesUsedByEndOfT, numSubNodes);
					if (find_elt == 0)
						actvSnodesUsedByEndOfT[used_node-1]= (IloNum) used_node;
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
			//cout<<"\tputting used_arc "<<endl;
			while ((k< MAX_SIZE) && ( more_arc==0)){
				IloInt used_arc =   embdActvSlinkList[k];
				if (used_arc !=0){
					IloInt find_elt=0;
					find_elt = (int) findElementInVector(used_arc, actvSlinksUsedByEndOfT, numSubLinks);

					if (find_elt == 0)
						actvSlinksUsedByEndOfT[used_arc-1]= (IloNum) used_arc;

					used_bw+= vlBwReq;
					nb_total_path_hops++;
					f11<<used_arc<<" ";
					k++;
				}
				else{
					f11<<0;
					more_arc=1;
				}
			}
			//cout<<"\tDONE putting used_arc"<<endl;

			f11<<endl;*/
			//cout<<"\tadedVlinkCountInPhOne: "<<newVlinkReqCount<<endl;
			//cout<<"\tsearch for vlinkId: "<<vlinkId<<" \tvnpId: "<<vnpId<<endl;
			IloInt index =   search_request_index(vlinkId, newVlinkReqVect, vnpId);			// ERROR: vnpId dont match with vlinkId

			//cout<<"\tindex: "<<index<<endl;
			IloInt srcVnode = newVlinkReqVect[index].getSrcVnode();

			IloInt destVnode = newVlinkReqVect[index].getDestVnode();
			vlinkId = newVlinkReqVect[index].getVlinkId();
			IloInt clsQoS = newVlinkReqVect[index].getVlinkQosCls();
			IloInt bid = newVlinkReqVect[index].getBid();
			vnpId = newVlinkReqVect[index].getVnpId();
			IloInt period = newVlinkReqVect[index].getPeriod();

			//cout<<"\tAdding vlinkId: "<<vlinkId<<" to Updated_Request_Vect["<<nb_accepted_req<<"]"<<endl;
			Updated_Request_Vect[nb_accepted_req].setSrcVnode(srcVnode);
			Updated_Request_Vect[nb_accepted_req].setDestVnode(destVnode);
			Updated_Request_Vect[nb_accepted_req].setVlinkId(vlinkId);
			Updated_Request_Vect[nb_accepted_req].setVlinkQosCls(clsQoS);
			Updated_Request_Vect[nb_accepted_req].SetBid(bid);
			Updated_Request_Vect[nb_accepted_req].setVnpId(vnpId);
			Updated_Request_Vect[nb_accepted_req].SetPeriod(period);

			nb_accepted_req++;
		} // end while routing paths

		fbk11.close();


		//------------------------------------------------------------------------------------------------------------------------
		// 		Saving phase 2 accepted virtual links in file -->  f12_ph2AcceptedVlinks (mainly used by the TrafficGenerator
		//------------------------------------------------------------------------------------------------------------------------
		cout<<"\t Saving phase 2 accepted link details in file: "<<f12_ph2AcceptedVlinks<<endl;
		//const char*  filename10="C:/ILOG/CPLEX121/abdallah_work/data/PhaseI_accepted_traffic_us_metro20_p9.txt";
		ofstream f12(f12_ph2AcceptedVlinks);

		if (!f12)
			cerr << "ERROR: could not open file `"<< f12_ph2AcceptedVlinks << "`for reading"<< endl;

		IloInt NB_REQUEST =  rtndVlinkCountFrmPrv + nb_accepted_req;

		f12<<curTslot<<endl;
		f12<<NB_REQUEST<<endl;
		f12<<rtndVlinkCountFrmPrv<<endl;
		f12<<nb_accepted_req<<endl;

		IloInt j=0;
		for (IloInt i=0;i<NB_REQUEST;i++){
			IloInt srcVnode=0, dstVnode=0, vlinkId=0, vlinkQosCls=0, bid=0, vnpId=0, period=0;
			if (i < rtndVlinkCountFrmPrv){

				srcVnode =   rtndVlinkReqVect[i].getSrcVnode();
				dstVnode =   rtndVlinkReqVect[i].getDestVnode();
				vlinkId =   rtndVlinkReqVect[i].getVlinkId();
				vlinkQosCls =   rtndVlinkReqVect[i].getVlinkQosCls();
				bid =   rtndVlinkReqVect[i].getBid();
				vnpId =   rtndVlinkReqVect[i].getVnpId();
				period =   rtndVlinkReqVect[i].getPeriod();
			}
			else {
				srcVnode =   Updated_Request_Vect[j].getSrcVnode();
				dstVnode =   Updated_Request_Vect[j].getDestVnode();
				vlinkId =   Updated_Request_Vect[j].getVlinkId();
				vlinkQosCls =   Updated_Request_Vect[j].getVlinkQosCls();
				bid =   Updated_Request_Vect[j].getBid();
				vnpId =   Updated_Request_Vect[j].getVnpId();
				period =   Updated_Request_Vect[j].getPeriod();
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
		cout<<"\t Saving added and removed paths (vlinks) into FILE: "<<fbk14_ph2AddRemovePaths<<endl;
		ofstream f14(fbk14_ph2AddRemovePaths);

		if (!f14)
			cerr << "ERROR: could not open file "<< fbk14_ph2AddRemovePaths<< "for writing"<< endl;

		f14<<prvEmbdRmvdCurr<<endl;
		f14<<acptedVlinkCount<<endl;

		// Writing removed paths to file from RemovedPathVect[]
		// During time slots t0, zero paths will be removed.
		for(IloInt i=0;i<prvEmbdRmvdCurr;i++){
			f14<<rmvdVlinkEmbedingVect[i].getPeriod()<<"\t"<<rmvdVlinkEmbedingVect[i].getVnpId()<<"\t"<<rmvdVlinkEmbedingVect[i].getQosCls()<<"\t";
			IloNumArray  node_list(env, MAX_SIZE);
			arrayZeroInitialize(node_list, MAX_SIZE);
			rmvdVlinkEmbedingVect[i].getActvSnodeAry(node_list);

			IloInt k=0;
			IloBool more_nodes = true;
			while ((k< MAX_SIZE) && (more_nodes)){
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
		for(IloInt i=0;i<acptedVlinkCount;i++){
			f14<<curTslot<<"\t"<<newlyEmbdedVlinkAry[i].getVnpId()<<"\t"<<newlyEmbdedVlinkAry[i].getQosCls()<<"\t";
			IloNumArray  node_list(env, MAX_SIZE);
			arrayZeroInitialize(node_list, MAX_SIZE);
			newlyEmbdedVlinkAry[i].getActvSnodeAry(node_list);

			IloInt k=0;
			IloBool more_nodes = true;
			while ((k< MAX_SIZE) && (more_nodes)){
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
		IloInt nb_used_arc = 0;
		for (IloInt l=0;l<numSubLinks;l++){
			IloInt current_value =  actvSlinksUsedByEndOfT[l];
			IloBool used_link = (current_value !=0);
			if (used_link)
				nb_used_arc++;
		}
		IloInt nb_used_node=0;
		for (IloInt l=0;l<numSubNodes;l++)
		{
			IloInt current_value =  actvSnodesUsedByEndOfT[l];
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

		IloNum nb_hop_per_path = (IloNum)(nb_total_path_hops + nb_reserved_total_path_hops)/(IloNum)(acptedVlinkCount + rtndVlinkEmbdCount);
		IloNum acceptance= (IloNum)acptedVlinkCount/(IloNum)newVlinkReqCount;
		if(LINK_DBG6){
			cout<<"\t\tPIP new profit:"<<PIP_profit<<endl;
			cout<<"\t\tPIP reserved profit:"<<Reserved_PIP_profit<<endl;
			cout<<"\t\tPIP profit:"<<PIP_profit + Reserved_PIP_profit<<endl;
			cout<<"\t\tPIP new cost:"<<PIP_cost<<endl;
			cout<<"\t\tPIP reserved cost:"<<Reserved_PIP_cost<<endl;
			cout<<"\t\tPIP cost:"<<PIP_cost + Reserved_PIP_cost<<endl;
			cout<<"\t\tnb accepted new vnode:"<<acptdVnodeCount<<endl;
			cout<<"\t\tnb accepted reserved vnode:"<<rtndVnodeCount<<endl;
			cout<<"\t\tnb requests:"<<NB_REQUEST<<endl;
			cout<<"\t\tnb new requests:"<<newVlinkReqCount<<endl;
			cout<<"\t\tnb reserved requests:"<<rtndVlinkCountFrmPrv<<endl;
			cout<<"\t\tnb accepted new requests:"<<acptedVlinkCount<<endl;
			cout<<"\t\tnb accepted reserved requests:"<<rtndVlinkEmbdCount<<endl;
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
	return fbk14_ph2AddRemovePaths;
}



