/*
 * PeriodicNodeEmbedder.h
 *
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */

#ifndef NODEEMBEDDER_NODEEMBEDDER_H_
#define NODEEMBEDDER_NODEEMBEDDER_H_

#include <cstdlib>
#include <stdio.h>
#include <math.h>
#include <queue>
#include <stdlib.h>
#include <time.h>
#include <ctime>
#include "../Common/SDNInterDCQoS.h"
#include "../ConstantsSPECIFIC.h"

class NodeEmbedder: public SDNInterDCQoS{
public:
 //-----------------------------------------------------------------------------------------------------------------
//                            Types definition                                                                    -
//-----------------------------------------------------------------------------------------------------------------

//typedef IloArray<Substrate_Node> Substrate_Graph_tab;                   		// table to save a set of nodes
//typedef IloArray<Substrate_Link> Substrate_Link_tab;                        // table to save a set of links
//typedef IloArray<Meta_Substrate_Path> Meta_Substrate_Path_tab;             // table to save routing meta-paths
//typedef IloArray<Sommet> Sommet_tab;                   						// table to save a set of nodes
//typedef IloArray<Virtual_Link_Request> VNP_traffic_tab;               		// table to save traffic matrix
//typedef IloArray<Virtual_Node_Requirement> VN_node_requirement_tab;               // table to save VN nodes location and required resources
//typedef IloArray<Meta_Embedding_Nodes> Meta_Embedding_Nodes_tab;               // table to save potantial src and est embdedding of virtual links
//typedef IloArray<Link_QoS_Class> Link_QoS_Class_tab; 							//  table to save link class of service attributs
//typedef IloArray<Node_QoS_Class> Node_QoS_Class_tab; 							//  table to save node class of service attributs



typedef IloArray<Embdedding_Virtual_Node_Trace> Virtual_Node_Embedding_tab; 	//  table to save trace of candidate substrate routing paths for VNP requests
typedef IloArray<SubstratePath> Routing_Path_Tab; 						//  table to save selected substrate embedding path attributs
typedef IloArray<VN_Request_Topology> VN_Request_Topology_Tab; 					//  table to save vn topology attributs


//------------------------------------------------------------------------------------------------------------------
//                                                                                                                 -
//                              Functions Declaration                                                          -
//                                                                                                                 -
//                                                                                                                 -
//------------------------------------------------------------------------------------------------------------------

static void embedInitNodes();
static void embedPeriodicNodes(int);
//void table_initialization(IloNumArray&, IloInt&);

//void substrate_Graph_creation(Substrate_Graph_tab&, Substrate_Link_tab&, IloInt&, IloInt&, IloEnv&);
//void adjacency_list_creation(Substrate_Graph_tab&, IloInt&, IloEnv& );

//void substrate_graph_printing(Substrate_Graph_tab&, IloEnv, IloInt);
//void traffic_matrix_printing(VNP_traffic_tab&, IloInt&);
//void printing_meta_path(Meta_Substrate_Path_tab&, IloInt&, IloEnv&);

static void shortest_path(SubNodesAryType&, MetaSubPathAryType&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, IloEnv&);
//static void search_parent_node_position(Sommet_tab&, IloInt& ,IloInt&, IloInt&);
//IloInt search_common_arc(IloNumArray&, IloNumArray&);
//void add_meta_path(Meta_Substrate_Path_tab&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, IloNumArray&, Substrate_Graph_tab&, IloInt&, IloEnv&);

//IloInt search_vnp_request(VNP_traffic_tab&,IloInt&, IloInt&, IloInt&, IloInt&);
//IloInt couple_unicity(VNP_traffic_tab&, IloInt&, IloInt&, IloInt&);
//IloInt search_elt_in_table(IloInt&, IloNumArray&, IloInt&);
//IloInt check_node_connected(VNP_traffic_tab&, IloInt&, IloInt&, IloInt&, IloInt&);

//void  search_candidate_location(IloInt&, VN_node_requirement_tab&, IloInt&, IloNumArray&, IloInt&);
static IloInt search_min_path_unit_cost(MetaSubPathAryType&, IloInt&, IloInt&, IloNumArray&, IloEnv&);
static IloInt search_max_path_unit_cost(MetaSubPathAryType&, IloInt&, IloInt&, IloNumArray&, IloEnv&);

//IloInt check_src_dest_adjanticity(IloInt&, IloInt&, Substrate_Graph_tab&, IloEnv&);
//IloInt count_number_link(IloInt&, Substrate_Graph_tab&, IloEnv&);


//IloInt Check_nb_hops_in_shortest_path(Substrate_Graph_tab&, IloInt&, IloInt&, IloEnv&);
static IloInt search_node_embedding(Virtual_Node_Embedding_tab&, IloInt&, IloInt&, IloInt&);

//------------------------------------------------------------------------------------------------------------------
//                                                                                                                 -
//                              ILP model constraints                                                              -
//                                                                                                                 -
//                                                                                                                 -
//------------------------------------------------------------------------------------------------------------------

static IloInt creation_node_embedding_var(VnodeReqAryType&, IloInt&, IloNumVarArray&, Virtual_Node_Embedding_tab&, IloEnv&);

static void no_partially_VN_embedding(VlinkReqAryType&, IloInt&, IloInt&, IloNumVarArray&, IloNumVarArray&, Meta_Embedding_Nodes_tab&,
								  IloInt&, IloModel&, Virtual_Node_Embedding_tab&, IloInt&, IloEnv&);

static void VNode_embedding_clash_constraint(VnodeReqAryType&, IloInt&, Virtual_Node_Embedding_tab&, IloNumVarArray&, IloInt&, IloNumVarArray&, IloModel&, IloEnv&);

static void initSnodeResConstraint(IloInt&, Virtual_Node_Embedding_tab&, IloNumVarArray&, IloInt&, IloCplex&, VnodeReqAryType&, IloInt&, NodeQosClsAryType&, IloEnv&);
static void  substrate_node_cpu_constraint(IloInt&, Virtual_Node_Embedding_tab&, IloNumVarArray&, IloInt&, IloCplex&, VnodeReqAryType&, IloInt&, NodeQosClsAryType&, IloNumArray&, IloEnv&);

static IloInt calculate_cost_potantial_emb_shortestpath(MetaSubPathAryType&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, IloNumArray&, IloNumArray&, IloInt&, IloInt&, IloNumArray&, IloInt&, IloInt&, IloNumArray&, IloInt&, IloInt&, IloEnv&);
static IloInt search_var_index(Virtual_Node_Embedding_tab& embed_trace_vect, IloInt& vnode, IloInt& emb_node, IloInt& vnp_id, IloInt& length_tab);

static IloInt search_vnode_class(IloInt&, IloInt&, VnodeReqAryType&, IloInt&);

static IloInt search_reserved_vnode(VlinkReqAryType&, IloInt&, IloInt&, IloInt&, IloInt&);
};

#endif /* NODEEMBEDDER_NODEEMBEDDER_H_ */
