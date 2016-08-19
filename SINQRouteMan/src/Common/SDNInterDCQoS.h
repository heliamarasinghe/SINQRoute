/*
 * SDNInterDCQoS.h
 *
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */

#ifndef COMMON_SDNINTERDCQOS_H_
#define COMMON_SDNINTERDCQOS_H_

#include "Sommet.h"
#include "Tracesommet.h"
#include "SubstrateLink.h"
#include "SubstrateNode.h"
#include "MetaSubstratePath.h"
#include "MetaEmbeddingNodes.h"
#include "VirtualLinkRequest.h"
#include "VirtualNodeRequirement.h"
#include "NodeQoSClass.h"
#include "LinkQoSClass.h"
#include "ResRangeCost.h"
#include "VNTopology.h"
#include "VNRequestTopology.h"
#include "SubstratePathStruct.h"
#include "EmbdeddingVirtualNodeTrace.h"
#include "EmbdeddingVNTrace.h"
#include "EmbdeddingVLinkTrace.h"

ILOSTLBEGIN

class SDNInterDCQoS{
public:
	//-------------------------------------------------------------------------------------------------------------------                                                                                                                 -
	//                             				Common Data Types                              							-                                                                                                                -
	//-------------------------------------------------------------------------------------------------------------------
	typedef IloArray<Substrate_Node> Substrate_Graph_tab;   				// table to save a set of nodes
	typedef IloArray<Substrate_Link> Substrate_Link_tab; 					// table to save a set of links
	typedef IloArray<Meta_Substrate_Path> Meta_Substrate_Path_tab;          // table to save routing meta-paths
	typedef IloArray<Sommet> Sommet_tab;                   					// table to save a set of nodes
	typedef IloArray<Virtual_Link_Request> VNP_traffic_tab;               	// table to save traffic matrix
	typedef IloArray<Virtual_Node_Requirement> VN_node_requirement_tab;     // table to save VN nodes location and required resources
	typedef IloArray<Meta_Embedding_Nodes> Meta_Embedding_Nodes_tab;        // table to save potantial src and est embdedding of virtual links
	typedef IloArray<Link_QoS_Class> Link_QoS_Class_tab; 					//  table to save link class of service attributs
	typedef IloArray<Node_QoS_Class> Node_QoS_Class_tab; 					//  table to save node class of service attributs

	//-------------------------------------------------------------------------------------------------------------------                                                                                                                 -
	//                            		 Declarations of Common Functions                                      			-                                                                                                                -
	//-------------------------------------------------------------------------------------------------------------------
	static void table_initialization(IloNumArray&, const IloInt&);
	static void substrate_Graph_creation(Substrate_Graph_tab&, Substrate_Link_tab&, IloInt&, IloInt&, IloEnv&);
	static void adjacency_list_creation(Substrate_Graph_tab&, IloInt&, IloEnv& );
	static void substrate_graph_printing(Substrate_Graph_tab&, IloEnv, IloInt);
	static void traffic_matrix_printing(VNP_traffic_tab&, IloInt&);
	static void printing_meta_path(Meta_Substrate_Path_tab&, IloInt&, IloEnv&);

	static void search_parent_node_position(Sommet_tab&, IloInt&, IloInt&, IloInt&);
	static IloInt search_common_arc(IloNumArray&, IloNumArray&);
	static void add_meta_path(Meta_Substrate_Path_tab&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, IloNumArray&, Substrate_Graph_tab&, IloInt&, IloEnv&);
	static IloInt search_vnp_request(VNP_traffic_tab&,IloInt&, IloInt&, IloInt&, IloInt&);
	IloInt couple_unicity(VNP_traffic_tab&, IloInt&, IloInt&, IloInt&);
	static IloInt findElementInVector(IloInt&, IloNumArray&, IloInt&);
	static IloInt check_node_connected(VNP_traffic_tab&, IloInt&, IloInt&, IloInt&, IloInt&);
	static void  search_candidate_location(IloInt&, VN_node_requirement_tab&, IloInt&, IloNumArray&, IloInt&);
	static IloInt check_src_dest_adjanticity(IloInt&, IloInt&, Substrate_Graph_tab&, IloEnv&);
	static IloInt count_number_link(IloInt&, Substrate_Graph_tab&, IloEnv&);
	static IloInt  Check_nb_hops_in_shortest_path(Substrate_Graph_tab&, IloInt&, IloInt&, IloEnv&);

};



#endif /* COMMON_SDNINTERDCQOS_H_ */
