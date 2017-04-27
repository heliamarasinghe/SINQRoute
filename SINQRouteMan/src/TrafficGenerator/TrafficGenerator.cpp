/*
 * TrafficGenerator.cpp
 *
 *  Created on: Mar 3, 2016
 *      Author: openstack
 */

#include "TrafficGenerator.h"
#include <queue>


//**************************************************************************************************
  //                                          H-Shortest Path Algorithm                               *
  //***************************************************************************************************

   void  TrafficGenerator::H_paths(SnodesAryType& tab_OG,  MetaSubPathAryType& chemins_tab, IloInt& source,
                         IloInt& destination, IloInt& max_hops, IloInt& request_num, IloInt& vnp, IloInt& link_id ,IloInt& comp_path, IloEnv& env1)
    {


      IloInt i=0, j=0, l=0, find_src=0, current_node=0, more=0, label=0, valid_node=0, precedent=0, pere=0,  compteur_chemins=0;
      IloInt lab=0, compteur_noeud=0, nbre_node, parent_node=0, last_node=0, nbr_path=0, id_node=1, find_cycle=0, test_cycle=0;
      IloInt more_H_hops=0, length=MAX_SIZE, nb_in_out_link=0, max_paths=0;
  	IloInt adjacents_ind=0;
      VerticesAryType    node_arb(env1,GN);

      //IloInt selected_node=0;
  	//IloInt nbr_node=0;
  	//IloInt dest_not_one_link_node=0;

      IloNumArray table_adj(env1, length);
      IloNumArray node_tab(env1, length);

      priority_queue <Trace_vertice, vector<Trace_vertice>, less<vector<Trace_vertice>::value_type> > q;

      //---------------------------
      //  initialisation          -
      //---------------------------

  	arrayZeroInitialize(table_adj, length);
      tab_OG[(IloInt)(source-1)].getAdjSnodeAry(table_adj);

      node_arb[compteur_noeud].setVerticeId(id_node);
      node_arb[compteur_noeud].setCurrent(source);
      node_arb[compteur_noeud].setPrevious(0);
      node_arb[compteur_noeud].setAdjNodeArray(table_adj);

      id_node++;
      compteur_noeud++;

     lab=0;
     more=0 ;
     j=0;
     last_node = source;

     while ((j<length)&&( more==0))
       {
  	       IloInt current_node = (IloInt) table_adj[j];
  	       IloBool non_nul = (current_node !=0);
  		   if(non_nul)
  		    {
  		       j++;
  		       lab = 1;

  		       precedent = id_node - 1;
  		       pere = current_node;
  		       q.push(Trace_vertice((int)lab, (int)precedent,(int)pere));
  		    }
  		   else
  		       more=1;
  	  }// end while


        //------------------------------------------------------------------
  	 // Case where a node has only one incomming and/or outgoing link   -
  	 //------------------------------------------------------------------

        nb_in_out_link = (IloInt) count_number_link(destination,tab_OG, env1);
        adjacents_ind = (IloInt) check_src_dest_adjanticity(source, destination, tab_OG, env1);

  	  IloBool src_dest_are_adjacents =(adjacents_ind ==1);

  	 if ((src_dest_are_adjacents) && (nb_in_out_link == 1))
  	     max_paths = 1;
  	 else
  		 max_paths = ACTV_PER_VL;

      //-----------------------------------
      //   H shortest paths iteration     -
      //-----------------------------------

       while ((nbr_path <max_paths)&&(!q.empty()))
        {
  				valid_node=0;
  				while ((valid_node == 0)&&(!q.empty()))
  				 {
  					label = q.top().priority;
  					precedent = q.top().previous;
  					pere = q.top().current;

  					if ((pere != source) && (pere != last_node))
  					  valid_node=1;

  					q.pop();
  				  }
   				 last_node = pere;

  				if (pere == destination)
  				 nbr_path++;


  				node_arb[compteur_noeud].setVerticeId(id_node);
  				node_arb[compteur_noeud].setCurrent(pere);
  				node_arb[compteur_noeud].setPrevious(precedent);

  				arrayZeroInitialize(table_adj, length);

  				if (pere != destination)
  				 {

  					 tab_OG[(IloInt)(pere - 1)].getAdjSnodeAry(table_adj);
  					 more=0 ;
  					 j=0;

  					 while ((j<length)&&( more==0))
  					  {
  						 IloInt current_node =  (IloInt) table_adj[j];
  						 IloBool non_nul = (current_node !=0);

  						 if(non_nul)
  						  {
  							  j++;
  							  lab = label + 1;
  							  precedent = id_node;

  							  if  (current_node != source)
  							   {
  								 q.push(Trace_vertice((int)lab, (int)precedent, (int)current_node));

  							   }
  						  }
  						 else
  							  more=1;

  					  }// end while

  				   } // pere != destination

  				   node_arb[compteur_noeud].setAdjNodeArray(table_adj);
  				   compteur_noeud++;
  				   id_node++;

       } // end while nbr_path <2*H_PATH

       i=0;
       compteur_chemins =0;
       more_H_hops=0;


       while ((i<compteur_noeud) && (compteur_chemins < max_paths) && (more_H_hops ==0))
  	 {

  	    current_node = (IloInt) node_arb[i].getCurrent();
  	    if (current_node == destination)
  	    {

  		       find_src= 0;
  		       l=i;
  		       arrayZeroInitialize(node_tab, length);
  		     IloNumArray bkupSlinkBwReqAry(env1, MAX_SIZE);
  		     arrayZeroInitialize(bkupSlinkBwReqAry, MAX_SIZE);
  		       nbre_node=0;
  		       node_tab[nbre_node] = (IloNum)destination;
  		       nbre_node++;
  		       find_cycle=0;

  		       while ((find_src==0)&&(find_cycle==0))
  		        {
  				    precedent = (IloInt) node_arb[l].getPrevious();
  				    search_parent_node_position(node_arb,compteur_noeud ,precedent, l);
  				    parent_node = (IloInt) node_arb[l].getCurrent();

  				    if (parent_node == source)
  				      find_src=1;

  				    test_cycle = (IloInt) findElementInVector(parent_node, node_tab, nbre_node);

  				    if(test_cycle==0)
  				     {
  				       node_tab[nbre_node] =(IloNum) parent_node;
  				       nbre_node++;
  			         }
  			         else
  			           find_cycle=1;

  		         }// end while find src


  	    	  if ((nbre_node - 1) > max_hops)
  	    	         more_H_hops=1;
  	    	  else
  	    	   {
  	              if (find_cycle == 0)
  	                {
  	            	  	 IloInt sumSlinkCost = nbre_node-1; //sumSlinkCost = nbre_node-1. This is because when linkCost==1, pathCost == number of links
  	    	           add_meta_path(chemins_tab, source, destination, request_num, vnp, link_id, node_tab, tab_OG, comp_path, sumSlinkCost, bkupSlinkBwReqAry, env1);
  	    	           compteur_chemins++;
      	           }
      	       }

            }
            i++;
  	 }


  	  //----------------------------
        //    Free Used Memory       -
        //----------------------------
         		table_adj.end();


    }

   //***************************************************************************************************
     //    Search maximum path unit cost value for a given connection									*
     //***************************************************************************************************

     void TrafficGenerator::search_max_path_unit_cost(MetaSubPathAryType& path_vect, IloInt& nb_paths, IloInt& req_id, IloInt& num_vnp, IloNumArray& bw_cost_vect, IloNumArray& node_cost_vect,
     								 IloInt& bandwidth, IloInt& cpu_src, IloInt& cpu_dest, IloInt& max_unit_path_cost, IloInt& max_src_dest_cost,  IloEnv& env_0)

     {
      IloInt max_path_cost=0;
      //IloInt current_path_cost=0;

      IloInt k=0,h=0, length = MAX_SIZE, req_num=0, more_arc=0, u_arc=0, c_vnp=0;
      //IloInt find_arc=0;

      IloInt src_path=0, dest_path=0, src_cost=0, dest_cost=0, path_cost=0, src_dest_cost=0, unit_path_cost=0;

      IloNumArray  arc_list(env_0,length);

      while (k < nb_paths)
         {
     		    req_num = (IloInt) path_vect[k].getVlinkId();
     			c_vnp =  (IloInt) path_vect[k].getVnpId();

     			IloBool found_req = (req_num == req_id);
                 IloBool found_vnp = (c_vnp == num_vnp);

     			if ((found_req)&&(found_vnp))
     			 {
     				 arrayZeroInitialize(arc_list,length);
     	 			 path_vect[k].getUsedSlinkAry(arc_list);

     				 src_path = (IloInt)  path_vect[k].getSrcSnode();
     			     dest_path = (IloInt)  path_vect[k].getDstSnode();

     				 src_cost = (IloInt) node_cost_vect[src_path -1];
     				 dest_cost = (IloInt) node_cost_vect[dest_path -1];


     			     src_dest_cost = src_cost*cpu_src+ dest_cost*cpu_dest;

     				 more_arc =0;
     				 h=0;
     				 unit_path_cost=0;

     				 while ((more_arc ==0) && ( h < length))
     				   {
     						u_arc = (IloInt) arc_list[h];
     						IloBool not_nul = (u_arc != 0);
     						if (not_nul)
     						  unit_path_cost+= (IloInt) bw_cost_vect[u_arc-1];
     						else
     						  more_arc=1;

     						 h++;
     				   }

     				 path_cost =  src_dest_cost + (bandwidth*unit_path_cost);

     				 if (path_cost > max_path_cost)
     				 {
     					  max_path_cost = path_cost;
     					  max_unit_path_cost = unit_path_cost;
     					  max_src_dest_cost = src_dest_cost;

     				 }
     			   }

     			 k++;
     	  }


     }

     //***************************************************************************************************
     //    Search minimum path unit cost value for a given connection							        *
     //***************************************************************************************************

     void TrafficGenerator::search_min_path_unit_cost(MetaSubPathAryType& path_vect, IloInt& nb_paths, IloInt& req_id, IloInt& num_vnp, IloNumArray& bw_cost_vect, IloNumArray& node_cost_vect,
     							 IloInt& bandwidth,IloInt& cpu_src, IloInt& cpu_dest,  IloInt& min_unit_path_cost, IloInt& min_src_dest_cost, IloEnv& env_0)

     {
      IloInt  min_path_cost=10000;

      IloInt k=0,h=0, length = MAX_SIZE, req_num=0, more_arc=0, u_arc=0, c_vnp=0;
      //IloInt find_arc=0;
      IloInt src_path=0, dest_path=0, src_cost=0, dest_cost=0, path_cost=0, src_dest_cost=0, unit_path_cost=0;

      IloNumArray  arc_list(env_0,length);

      while (k < nb_paths)
        {
     		    req_num = (IloInt) path_vect[k].getVlinkId();
                 c_vnp =  (IloInt) path_vect[k].getVnpId();

     			IloBool found_req = (req_num == req_id);
                 IloBool found_vnp = (c_vnp == num_vnp);

     			if ((found_req)&&(found_vnp))
     			 {
     				 arrayZeroInitialize(arc_list,length);
     	 			 path_vect[k].getUsedSlinkAry(arc_list);

     				 src_path = (IloInt)  path_vect[k].getSrcSnode();
     			     dest_path = (IloInt)  path_vect[k].getDstSnode();

     				 src_cost = (IloInt) node_cost_vect[src_path -1];
     				 dest_cost = (IloInt) node_cost_vect[dest_path -1];

     				 src_dest_cost = src_cost*cpu_src+ dest_cost*cpu_dest;
     				 more_arc =0;
     				 h=0;
     				 unit_path_cost=0;

     				 while ((more_arc ==0) && ( h < length))
     				   {
     						u_arc = (IloInt) arc_list[h];
     						IloBool not_nul = (u_arc != 0);
     						if (not_nul)
     						  unit_path_cost+= (IloInt) bw_cost_vect[u_arc-1];
     						else
     						  more_arc=1;

     						 h++;
     				   }

     				  path_cost =  src_dest_cost + (bandwidth*unit_path_cost);


     				 if (path_cost < min_path_cost)
     				   {
     					  min_path_cost = path_cost;
     					  min_unit_path_cost = unit_path_cost;
     					  min_src_dest_cost = src_dest_cost;
     				   }
     			   }

     			 k++;
     	  }



     }

     //***************************************************************************************************
     //    Search QoS class of a virtual node													        *
     //***************************************************************************************************

     void TrafficGenerator::search_cpu_requirement_src_dest_nodes(IloInt& source, IloInt& destination, IloInt& vnp_num,
     										   VnodeReqAryType& loc_vect, NodeQosClsAryType& node_qos_vect, IloInt& src_cls, IloInt& dest_cls)

     {
     IloInt l=0, find_node=0, find_src=0, find_dest=0, c_vnode=0, vnp=0;

     while ((l < loc_vect.getSize()) && (find_node==0))
       {

          c_vnode = (IloInt) loc_vect[l].GetVirtual_Node_Id();
     	 vnp = (IloInt) loc_vect[l].GetVNP_Id();

     	 IloBool eq_vnp = (vnp == vnp_num);
     	 IloBool eq_src_node = (c_vnode == source );
     	 IloBool eq_dest_node = (c_vnode ==  destination);

     	 if ((eq_vnp)&&(eq_src_node))
     	  {
     		 src_cls = (IloInt)	loc_vect[l].GetQoS_Class();
     		 find_src=1;
     	  }

     	  if ((eq_vnp)&&(eq_dest_node))
     	   {
     		  dest_cls = (IloInt)	loc_vect[l].GetQoS_Class();
     		  find_dest =1;
     	   }

     	  if ((find_src ==1)&&(find_dest==1))
     		  find_node =1;

     	  l++;
       }
     }

     //***************************************************************************************************
       //                                      Search Parent Node Position                                 *
       //***************************************************************************************************

        void TrafficGenerator::search_parent_node_position(VerticesAryType& arbo_tab, IloInt& length_arbo ,IloInt& search_node, IloInt& position_node)

             {
                IloInt find_node=0, h=0 , node_id=0;

       	     while ((find_node ==0) && (h < length_arbo))
       	      {
       		     node_id = (IloInt) arbo_tab[h].getVerticeId();
       		     IloBool test_equal_node = (search_node == node_id);
       		     if (test_equal_node)
       		      {
       			       position_node =h;
       		           find_node=1;
       	          }
       		     else
       		        h++;

       		  }

            }

     //*****************************************************************************************************************
     //                          A structure to compare heap priority queues                                           *
     //*****************************************************************************************************************

//     bool operator< (const Trace_sommet& s1, const Trace_sommet &s2)
//       {
//       	return s1.priority > s2.priority;
//       };
