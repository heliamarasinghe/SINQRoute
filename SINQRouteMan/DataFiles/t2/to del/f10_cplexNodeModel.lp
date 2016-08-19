\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 440 vnp1 + 487 vnp2 + [ - 228 vn3_vnp1_sn8 * vn1_vnp1_sn3
      - 202 vn3_vnp1_sn8 * vn1_vnp1_sn10 - 122 vn3_vnp1_sn8 * vn1_vnp1_sn7
      - 82 vn3_vnp1_sn8 * vn2_vnp1_sn5 - 184 vn3_vnp1_sn8 * vn4_vnp1_sn1
      - 280 vn3_vnp1_sn8 * vn4_vnp1_sn15 - 136 vn3_vnp1_sn8 * vn4_vnp1_sn4
      - 42 vn1_vnp1_sn3 * vn2_vnp1_sn5 - 56 vn1_vnp1_sn10 * vn2_vnp1_sn5
      - 48 vn1_vnp1_sn7 * vn2_vnp1_sn5 - 180 vn2_vnp2_sn3 * vn1_vnp2_sn17
      - 254 vn2_vnp2_sn3 * vn3_vnp2_sn11 - 118 vn1_vnp2_sn17 * vn3_vnp2_sn11
      ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn3
                                 + vn1_vnp1_sn10 + vn1_vnp1_sn7 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn5 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn8 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn1
                                 + vn4_vnp1_sn15 + vn4_vnp1_sn4 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn17 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn3 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn11 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn3_vnp1_sn8 * vn1_vnp1_sn3
                                 - vn3_vnp1_sn8 * vn1_vnp1_sn10
                                 - vn3_vnp1_sn8 * vn1_vnp1_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn3_vnp1_sn8 * vn2_vnp1_sn5 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn3_vnp1_sn8 * vn4_vnp1_sn1
                                 - vn3_vnp1_sn8 * vn4_vnp1_sn15
                                 - vn3_vnp1_sn8 * vn4_vnp1_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn1_vnp1_sn3 * vn2_vnp1_sn5
                                 - vn1_vnp1_sn10 * vn2_vnp1_sn5
                                 - vn1_vnp1_sn7 * vn2_vnp1_sn5 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_5#4: vnp2
                                 + [ - vn2_vnp2_sn3 * vn1_vnp2_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn2_vnp2_sn3 * vn3_vnp2_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn1_vnp2_sn17 * vn3_vnp2_sn11 ] <= 0
 q8#7:                           - 440 vnp1 - 487 vnp2
                                 + [ 114 vn3_vnp1_sn8 * vn1_vnp1_sn3
                                 + 101 vn3_vnp1_sn8 * vn1_vnp1_sn10
                                 + 61 vn3_vnp1_sn8 * vn1_vnp1_sn7
                                 + 41 vn3_vnp1_sn8 * vn2_vnp1_sn5
                                 + 92 vn3_vnp1_sn8 * vn4_vnp1_sn1
                                 + 140 vn3_vnp1_sn8 * vn4_vnp1_sn15
                                 + 68 vn3_vnp1_sn8 * vn4_vnp1_sn4
                                 + 21 vn1_vnp1_sn3 * vn2_vnp1_sn5
                                 + 28 vn1_vnp1_sn10 * vn2_vnp1_sn5
                                 + 24 vn1_vnp1_sn7 * vn2_vnp1_sn5
                                 + 90 vn2_vnp2_sn3 * vn1_vnp2_sn17
                                 + 127 vn2_vnp2_sn3 * vn3_vnp2_sn11
                                 + 59 vn1_vnp2_sn17 * vn3_vnp2_sn11 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: 4 vn4_vnp1_sn1 <= 5
 CPU_capacity_of_substrate_node_3#1: 2 vn1_vnp1_sn3 + 3 vn2_vnp2_sn3 <= 7
 CPU_capacity_of_substrate_node_4#2: 4 vn4_vnp1_sn4 <= 2
 CPU_capacity_of_substrate_node_5#3: 4 vn2_vnp1_sn5 <= 3
 CPU_capacity_of_substrate_node_7#4: 2 vn1_vnp1_sn7 <= 2
 CPU_capacity_of_substrate_node_8#5: 4 vn3_vnp1_sn8 <= 6
 CPU_capacity_of_substrate_node_10#6: 2 vn1_vnp1_sn10 <= 3
 CPU_capacity_of_substrate_node_11#7: 3 vn3_vnp2_sn11 <= 4
 CPU_capacity_of_substrate_node_15#8: 4 vn4_vnp1_sn15 <= 3
 CPU_capacity_of_substrate_node_17#9: 2 vn1_vnp2_sn17 <= 2
Bounds
 0 <= vnp1 <= 1
 0 <= vn3_vnp1_sn8 <= 1
 0 <= vn1_vnp1_sn3 <= 1
 0 <= vn1_vnp1_sn10 <= 1
 0 <= vn1_vnp1_sn7 <= 1
 0 <= vn2_vnp1_sn5 <= 1
 0 <= vn4_vnp1_sn1 <= 1
 0 <= vn4_vnp1_sn15 <= 1
 0 <= vn4_vnp1_sn4 <= 1
 0 <= vnp2 <= 1
 0 <= vn2_vnp2_sn3 <= 1
 0 <= vn1_vnp2_sn17 <= 1
 0 <= vn3_vnp2_sn11 <= 1
Binaries
 vnp1  vn3_vnp1_sn8  vn1_vnp1_sn3  vn1_vnp1_sn10  vn1_vnp1_sn7  vn2_vnp1_sn5 
 vn4_vnp1_sn1  vn4_vnp1_sn15  vn4_vnp1_sn4  vnp2  vn2_vnp2_sn3  vn1_vnp2_sn17 
 vn3_vnp2_sn11 
End
