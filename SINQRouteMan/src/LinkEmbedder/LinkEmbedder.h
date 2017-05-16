/*
 * LinkEmbedder.h
 *
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */

#ifndef LINKEMBEDDER_LINKEMBEDDER_H_
#define LINKEMBEDDER_LINKEMBEDDER_H_

#include "../Common/SDNInterDCQoS.h"
#include "../ConstantsSPECIFIC.h"
#include "../Common/FlowRequest.h"

//----------------------------------------------------DEBUG Switches-----------------------------------------------------//
const bool LINK_DBG0 = false;	// Reading Files
const bool LINK_DBG1 = false;	// Active path calculation
const bool LINK_DBG2 = false;	// Active/backup pair calculation
const bool LINK_DBG3 = false;	// Constraints
const bool LINK_DBG4 = false;	// Objective Function
const bool LINK_DBG5 = true;	// Embedding Result printing and saving
const bool LINK_DBG6 = false;	// Performance Evaluation


class LinkEmbedder: public SDNInterDCQoS{
public:
	//-----------------------------------------------------------------------------------------------------------------
	//                            Types definition                                                                    -
	//-----------------------------------------------------------------------------------------------------------------

	//typedef IloArray<Substrate_Node> Substrate_Graph_tab;                   // table to save a set of nodes
	//typedef IloArray<Substrate_Link> Substrate_Link_tab;                        // table to save a set of links
	//typedef IloArray<Meta_Substrate_Path> Meta_Substrate_Path_tab;             // table to save routing meta-paths
	//typedef IloArray<Sommet> Sommet_tab;                   // table to save a set of nodes
	//typedef IloArray<Virtual_Link_Request> VNP_traffic_tab;               // table to save traffic matrix
	//typedef IloArray<Meta_Embedding_Nodes> Meta_Embedding_Nodes_tab;               // table to save potantial src and est embdedding of virtual links

	//typedef IloArray<Link_QoS_Class> Link_QoS_Class_tab; //  table to save link class of service attributs
	//typedef IloArray<Node_QoS_Class> Node_QoS_Class_tab; //  table to save node class of service attributs

	//typedef IloArray<Virtual_Node_Requirement> VN_node_requirement_tab;               // table to save VN nodes location and required resources


	typedef IloArray<Embdedding_Virtual_Node_Trace> Virtual_Node_Embedding_tab; //  table to save trace of candidate substrate routing paths for VNP requests
	typedef IloArray<SubstratePath> SubstratePathAryType; //  table to save selected substrate embedding path attributs
	typedef IloArray<VNRequestTopology> VnReqTopoAryType; //  table to save vn topology attributs

	typedef IloArray<Embdedding_VLink_Trace> VLink_Embedding_Trace_Tab; //  table to save virtual link embedding attributs

	typedef IloArray<Embdedding_VN_Trace> VN_Embedding_Trace_Tab; //  table to save vn embedding attributs

	typedef IloArray<FlowRequest> flowRequest_Tab;					// Table to save all flow requests within given time slot 'tor'

	//------------------------------------------------------------------------------------------------------------------
	//                                                                                                                 -
	//                              Functions Declaration                                                          -
	//                                                                                                                 -
	//                                                                                                                 -
	//------------------------------------------------------------------------------------------------------------------

	//static char* embedInitLinks();
	static char* embedPeriodicLinks(int);
	static char* reEmbedBrokenLinks(int);
	static char* embedLinks_SharedBkup(int);
	static char* embedLinks_SlrgBkup(int);

	//void table_initialization(IloNumArray&, IloInt&);

	//void substrate_Graph_creation(Substrate_Graph_tab&, Substrate_Link_tab&, IloInt&, IloInt&, IloEnv&);
	//void adjacency_list_creation(Substrate_Graph_tab&, IloInt&, IloEnv& );

	//void substrate_graph_printing(Substrate_Graph_tab&, IloEnv, IloInt);
	//void traffic_matrix_printing(VNP_traffic_tab&, IloInt&);
	//void printing_meta_path(Meta_Substrate_Path_tab&, IloInt&, IloEnv&);

	static void shortest_path(bool, SnodesAryType&, MetaSubPathAryType&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, IloNumArray&, IloEnv&);
	static void shtstPathWeightedEdge(SnodesAryType&, MetaSubPathAryType&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, IloEnv&);
	//void search_parent_node_position(Sommet_tab&, IloInt& ,IloInt&, IloInt&);
	//IloInt search_common_arc(IloNumArray&, IloNumArray&);
	//void add_meta_path(Meta_Substrate_Path_tab&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, IloNumArray&, Substrate_Graph_tab&, IloInt&, IloEnv&);

	//IloInt search_vnp_request(VNP_traffic_tab&,IloInt&, IloInt&, IloInt&, IloInt&);
	//IloInt couple_unicity(VNP_traffic_tab&, IloInt&, IloInt&, IloInt&);
	//IloInt search_elt_in_table(IloInt&, IloNumArray&, IloInt&);
	//IloInt check_node_connected(VNP_traffic_tab&, IloInt&, IloInt&, IloInt&, IloInt&);

	static IloInt search_min_path_unit_cost(MetaSubPathAryType&, IloInt&, IloInt&, IloNumArray&, IloEnv&);
	static IloInt search_max_path_unit_cost(MetaSubPathAryType&, IloInt&, IloInt&, IloNumArray&, IloEnv&);

	//IloInt check_src_dest_adjanticity(IloInt&, IloInt&, Substrate_Graph_tab&, IloEnv&);
	//IloInt count_number_link(IloInt&, Substrate_Graph_tab&, IloEnv&);


	//IloInt Check_nb_hops_in_shortest_path(Substrate_Graph_tab&, IloInt&, IloInt&, IloEnv&);
	static IloInt search_node_embedding(Virtual_Node_Embedding_tab&, IloInt&, IloInt&, IloInt&);

	static void search_request(VlinkReqAryType&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, Virtual_Node_Embedding_tab&, IloInt&);
	//static void find_next_nodes(IloNumArray& ,IloInt& ,IloInt& , IloInt& , SnodesAryType& , IloEnv&);
	static bool linkInAry(IloInt&, IloNumArray&);
	static IloInt slinkIndxInAry(IloInt&, IloNumArray&);

	static IloInt search_reserved_vnode(VlinkReqAryType&, IloInt&, IloInt&, IloInt&, IloInt&);
	static IloInt searchRtndReqFrmPrv(VlinkReqAryType&, IloInt&, IloInt&, IloInt&, IloInt&);

	static void generateFlowRequests(VlinkReqAryType&, LinkQosClsAryType&, Virtual_Node_Embedding_tab&, IloInt&, flowRequest_Tab&);

	//------------------------------------------------------------------------------------------------------------------
	//                                                                                                                 -
	//                             				 ILP model constraints                                                 -
	//                                                                                                                 -
	//                                                                                                                 -
	//------------------------------------------------------------------------------------------------------------------

	static IloInt creation_path_embedding_var(VlinkReqAryType&, IloInt&, MetaSubPathAryType&, IloInt&, IloNumVarArray&, VLink_Embedding_Trace_Tab&, IloEnv&);
	static IloInt createBinaryVarForActvBkupPairs(MetaActvBkupPairAryType&, IloInt&, IloNumVarArray&, VLink_Embedding_Trace_Tab&, IloEnv&);
	static IloInt creation_flow_embedding_var(flowRequest_Tab&, VlinkReqAryType&, IloInt&, MetaSubPathAryType&, IloInt&, IloNumVarArray&, VLink_Embedding_Trace_Tab&, IloEnv&);

	static void vnp_variable_creation(VN_Embedding_Trace_Tab&, IloNumVarArray&, IloNumArray&, IloInt&, IloEnv&);


	static void no_partially_VN_embedding(VlinkReqAryType&, IloInt&, MetaSubPathAryType&, IloInt&, VLink_Embedding_Trace_Tab&, IloNumVarArray&, IloInt&, IloNumVarArray&,
										VN_Embedding_Trace_Tab&, IloInt&,  IloModel&, IloEnv&);
	static void allVlinksOfVnReqEmbdedOnAcbkPairs(VlinkReqAryType&, IloInt&, MetaActvBkupPairAryType&, IloInt&, VLink_Embedding_Trace_Tab&, IloNumVarArray&, IloInt&, IloNumVarArray&,
			VN_Embedding_Trace_Tab&, IloInt&,  IloModel&, IloEnv&);

	static void substrate_link_bw_constraint(SubLinksAryType&, IloInt&, VlinkReqAryType&, IloInt&, MetaSubPathAryType&, IloInt&, VLink_Embedding_Trace_Tab&,
									  LinkQosClsAryType&, IloNumVarArray&, IloInt&, IloModel&,IloEnv&);

	static void periodic_substrate_link_bw_constraint(SubLinksAryType&, IloInt&, VlinkReqAryType&, IloInt&, MetaSubPathAryType&, IloInt&, VLink_Embedding_Trace_Tab&,
									  LinkQosClsAryType&, IloNumVarArray&, IloInt&, IloModel&, IloNumArray&, IloEnv&);
	static void slinkBwCapacityconstraint(SubLinksAryType&, IloInt&, VlinkReqAryType&, IloInt&, MetaActvBkupPairAryType&, IloInt&, VLink_Embedding_Trace_Tab&,
			  LinkQosClsAryType&, IloNumVarArray&, IloInt&, IloModel&, IloNumArray&, IloEnv&);

	static IloInt calculate_cost_potantial_emb_shortestpath(MetaSubPathAryType&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, IloNumArray&, IloNumArray&, IloEnv&);

	static IloInt search_var_index(VLink_Embedding_Trace_Tab&, IloInt&, IloInt&, IloInt&);

	static void search_embedding_path(MetaSubPathAryType&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, SubstratePathAryType&, IloInt&,  IloNumArray&, IloNumArray&,  LinkQosClsAryType&, IloInt&, IloInt&, IloEnv&);
	static void  searchEmbdAcbkPair(MetaActvBkupPairAryType&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, SubstratePathAryType&, IloInt&,  IloNumArray&, IloNumArray&,  LinkQosClsAryType&, IloInt&, IloInt&, IloEnv&);

	static IloInt search_z_index(IloInt&, VN_Embedding_Trace_Tab&, IloInt&);

	static IloInt getCandidSnodeForVnode(Virtual_Node_Embedding_tab&, IloInt&, IloInt&, IloInt&);

	static IloInt search_request_index(IloInt&, VlinkReqAryType&, IloInt&);

	static IloInt search_vnode_class(IloInt&, IloInt&, Virtual_Node_Embedding_tab&, IloInt&);

	static void printVerticeAry(IloEnv&, VerticesAryType&);


};

#endif /* LINKEMBEDDER_LINKEMBEDDER_H_ */
