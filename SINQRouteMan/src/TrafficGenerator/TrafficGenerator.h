/*
 * InitTrafficGenerator.h
 *
 *  Created on: Feb 6, 2016
 *      Author: openstack
 */

#ifndef TRAFFICGENERATOR_TRAFFICGENERATOR_H_
#define TRAFFICGENERATOR_TRAFFICGENERATOR_H_

#include "../Common/SDNInterDCQoS.h"
#include "../ConstantsSPECIFIC.h"


//----------------------------------------------------DEBUG Switches-----------------------------------------------------//
const bool TRAF_DBG0 = false;	// Reading Files
const bool TRAF_DBG1 = false;	// Generating VN Topologies
const bool TRAF_DBG2 = false;	// Generating substrate bw unit cost and node costs and Saving in FILE 5
const bool TRAF_DBG3 = false;	// Smart BID generation with the knowledge of shortest path costs between embedding locations
const bool TRAF_DBG4 = false;	// Save

// Calculating offered BID values for each vlink request
// decimal_selected_ppp = decim_ppp_min+ (rand() / (RAND_MAX + 1) * (decim_ppp_max- decim_ppp_min) )
// bid = (selected_src_dest_cost + bw*selected_path_unit_cost) * (1 + (decimal_selected_ppp/10.0));
const IloNum DECIM_PPP_MAX=30;			// Original 20
const IloNum DECIM_PPP_MIN=10;			// Original 5


class TrafficGenerator: public SDNInterDCQoS{
public:

//	typedef IloArray<Substrate_Node> Substrate_Graph_tab;                   // table to save a set of nodes
//	typedef IloArray<Substrate_Link> Substrate_Link_tab;                    // table to save a set of links
//	typedef IloArray<Meta_Substrate_Path> Meta_Substrate_Path_tab;          // table to save routing meta-paths
//	typedef IloArray<Sommet> Sommet_tab;                   					// table to save a set of nodes
//	typedef IloArray<Virtual_Link_Request> VNP_traffic_tab;               	// table to save traffic matrix
//	typedef IloArray<Virtual_Node_Requirement> VN_node_requirement_tab;     // table to save VN nodes location and required resources
//	typedef IloArray<Meta_Embedding_Nodes> Meta_Embedding_Nodes_tab;        // table to save potantial src and est embdedding of virtual links
//	typedef IloArray<Link_QoS_Class> Link_QoS_Class_tab; 					//  table to save link class of service attributs
//	typedef IloArray<Node_QoS_Class> Node_QoS_Class_tab; 					//  table to save node class of service attributs


	typedef IloArray<RES_RANGE_COST> RES_RANGE_COST_Tab; 					//  table to save the curve unit cost of BW on each link and CPU on each node
	typedef IloArray<VN_Topology> VN_Topology_Tab; 							//  table to save the topology of VNs


	//------------------------------------------------------------------------------------------------------------------
	//                                                                                                                 -
	//                              Functions Declaration                                                          -                                                                                                                -
	//------------------------------------------------------------------------------------------------------------------
	TrafficGenerator();
	virtual ~TrafficGenerator();

    //*****************************************************************************************************************
    //                          A structure to compare heap priority queues                                           *
    //*****************************************************************************************************************

     //operator< (const Trace_sommet& s1, const Trace_sommet &s2);
//     {
//       	return s1.priority > s2.priority;
//       };

	static void generateInitTraffic();
	static void generatePeriodicTraffic(int currTslot, int bkup, bool shrdAsBase);

	//static void table_initialization(IloNumArray&, IloInt&);


	//static void substrate_Graph_creation(Substrate_Graph_tab&, Substrate_Link_tab&, IloInt&, IloInt&, IloEnv&);
	//static void adjacency_list_creation(Substrate_Graph_tab&, IloInt&, IloEnv& );

	//static void substrate_graph_printing(Substrate_Graph_tab&, IloEnv, IloInt);
	//static void traffic_matrix_printing(VNP_traffic_tab&, IloInt&);
	//static void printing_meta_path(Meta_Substrate_Path_tab&, IloInt&, IloEnv&);

	static void  H_paths(SnodesAryType&, MetaSubPathAryType&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, IloEnv&);
	//static void search_parent_node_position(Sommet_tab&, IloInt& ,IloInt&, IloInt&);
	//static IloInt search_common_arc(IloNumArray&, IloNumArray&);
	//static void add_meta_path(Meta_Substrate_Path_tab&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, IloNumArray&, Substrate_Graph_tab&, IloInt&, IloEnv&);

	//static IloInt search_vnp_request(VNP_traffic_tab&,IloInt&, IloInt&, IloInt&, IloInt&);
	//IloInt couple_unicity(VNP_traffic_tab&, IloInt&, IloInt&, IloInt&);
	//static IloInt search_elt_in_table(IloInt&, IloNumArray&, IloInt&);
	//static IloInt check_node_connected(VNP_traffic_tab&, IloInt&, IloInt&, IloInt&, IloInt&);

	//static void  search_candidate_location(IloInt&, VN_node_requirement_tab&, IloInt&, IloNumArray&, IloInt&);

	static void search_min_path_unit_cost(MetaSubPathAryType&, IloInt&, IloInt&, IloInt&, IloNumArray&, IloNumArray&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, IloEnv& env_0);
	static void search_max_path_unit_cost(MetaSubPathAryType&, IloInt&, IloInt&, IloInt&, IloNumArray&, IloNumArray&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, IloEnv& env_0);

	//static IloInt check_src_dest_adjanticity(IloInt&, IloInt&, Substrate_Graph_tab&, IloEnv&);
	//static IloInt count_number_link(IloInt&, Substrate_Graph_tab&, IloEnv&);


	//static IloInt  Check_nb_hops_in_shortest_path(Substrate_Graph_tab&, IloInt&, IloInt&, IloEnv&);
	static void search_cpu_requirement_src_dest_nodes(IloInt&, IloInt&, IloInt&, VnodeReqAryType&, NodeQosClsAryType&, IloInt&, IloInt&);
	static void search_parent_node_position(VerticesAryType&, IloInt&, IloInt&, IloInt& );
	static void find_next_node(IloNumArray& arc_vect ,IloInt& current_node,IloInt& node_suivant, IloInt& c_arc,SnodesAryType& vect_OG, IloEnv& env_3);


	//unique unctions for PeriodicTrafficGenerator
	//void  search_candidate_location(IloInt& node_id, VN_node_requirement_tab& VNode_Loc_Vect, IloInt& vnp_num, IloNumArray& location_tab, IloInt& length);
	//void  search_candidate_location(IloInt&, VN_node_requirement_tab&, IloInt&, IloNumArray&, IloInt&);


	//void  search_candidate_location(IloInt&, VN_node_requirement_tab&, IloInt&, IloNumArray&, IloInt&);





};

#endif /* TRAFFICGENERATOR_TRAFFICGENERATOR_H_ */
