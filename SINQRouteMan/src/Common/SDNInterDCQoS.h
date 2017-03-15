/*
 * SDNInterDCQoS.h
 *
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */

#ifndef COMMON_SDNINTERDCQOS_H_
#define COMMON_SDNINTERDCQOS_H_


#include "SubstrateNode.h"
#include "NodeQoSClass.h"
#include "SubstrateLink.h"
#include "LinkQoSClass.h"
#include "ResRangeCost.h"
#include "VNTopology.h"
#include "VNRequestTopology.h"
#include "MetaSubPath.h"
#include "MetaActvBkupPairs.h"
#include "MetaEmbeddingNodes.h"
#include "EmbdeddingVirtualNodeTrace.h"
#include "EmbdeddingVNTrace.h"
#include "EmbdeddingVLinkTrace.h"
#include "SubstratePath.h"
#include "TraceVertice.h"
#include "Vertice.h"
#include "VlinkRequest.h"
#include "VnodeRequest.h"

ILOSTLBEGIN

class SDNInterDCQoS{
public:
	//-------------------------------------------------------------------------------------------------------------------                                                                                                                 -
	//                             				Common Data Types                              							-                                                                                                                -
	//-------------------------------------------------------------------------------------------------------------------
	typedef IloArray<SubstrateNode> SnodesAryType;   				// table to save a set of nodes
	typedef IloArray<SubstrateLink> SubLinksAryType; 					// table to save a set of links
	typedef IloArray<MetaSubPath> MetaSubPathAryType;          // table to save routing meta-paths
	typedef IloArray<MetaActvBkupPairs> MetaActvBkupPairAryType;
	typedef IloArray<Vertice> VerticesAryType;                   					// table to save a set of nodes
	typedef IloArray<VlinkRequest> VlinkReqAryType;               	// table to save traffic matrix
	typedef IloArray<VnodeRequest> VnodeReqAryType;     // table to save VN nodes location and required resources
	typedef IloArray<Meta_Embedding_Nodes> Meta_Embedding_Nodes_tab;        // table to save potantial src and est embdedding of virtual links
	typedef IloArray<LinkQoSClass> LinkQosClsAryType; 					//  table to save link class of service attributs
	typedef IloArray<NodeQoSClass> NodeQosClsAryType; 					//  table to save node class of service attributs

	//-------------------------------------------------------------------------------------------------------------------                                                                                                                 -
	//                            		 Declarations of Common Functions                                      			-                                                                                                                -
	//-------------------------------------------------------------------------------------------------------------------
	static void arrayZeroInitialize(IloNumArray&, const IloInt&);
	static void substrate_Graph_creation(SnodesAryType&, SubLinksAryType&, IloInt&, IloInt&, IloEnv&);
	static void adjacency_list_creation(SnodesAryType&, IloInt&, IloEnv& );
	static void substrate_graph_printing(SnodesAryType&, IloEnv, IloInt);
	static void traffic_matrix_printing(VlinkReqAryType&, IloInt&);
	static void printing_meta_path(MetaSubPathAryType&, IloInt&, IloEnv&);

	static void search_parent_node_position(VerticesAryType&, IloInt&, IloInt&, IloInt&);
	static IloInt search_common_arc(IloNumArray&, IloNumArray&);
	static void add_meta_path(MetaSubPathAryType&, IloInt&, IloInt&, IloInt&, IloInt&, IloInt&, IloNumArray&, SnodesAryType&, IloInt&, IloEnv&);
	static IloInt search_vnp_request(VlinkReqAryType&,IloInt&, IloInt&, IloInt&, IloInt&);
	IloInt couple_unicity(VlinkReqAryType&, IloInt&, IloInt&, IloInt&);
	static IloInt findElementInVector(IloInt&, IloNumArray&, IloInt&);
	static IloInt check_node_connected(VlinkReqAryType&, IloInt&, IloInt&, IloInt&, IloInt&);
	static void  search_candidate_location(IloInt&, VnodeReqAryType&, IloInt&, IloNumArray&, IloInt&);
	static IloInt check_src_dest_adjanticity(IloInt&, IloInt&, SnodesAryType&, IloEnv&);
	static IloInt count_number_link(IloInt&, SnodesAryType&, IloEnv&);
	static IloInt  Check_nb_hops_in_shortest_path(SnodesAryType&, IloInt&, IloInt&, IloEnv&);

};



#endif /* COMMON_SDNINTERDCQOS_H_ */
