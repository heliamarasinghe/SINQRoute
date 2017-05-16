\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 729 vnp1 + 749 vnp2 + [ - 172 vn2_vnp1_sn9 * vn1_vnp1_sn8
      - 114 vn2_vnp1_sn9 * vn1_vnp1_sn3 - 122 vn2_vnp1_sn9 * vn1_vnp1_sn4
      - 72 vn2_vnp1_sn9 * vn3_vnp1_sn5 - 74 vn2_vnp1_sn9 * vn3_vnp1_sn15
      - 184 vn2_vnp1_sn9 * vn3_vnp1_sn11 - 90 vn1_vnp1_sn8 * vn2_vnp1_sn18
      - 304 vn1_vnp1_sn8 * vn2_vnp1_sn10 - 236 vn1_vnp1_sn8 * vn3_vnp1_sn5
      - 54 vn1_vnp1_sn8 * vn3_vnp1_sn15 - 348 vn1_vnp1_sn8 * vn3_vnp1_sn11
      - 304 vn1_vnp1_sn3 * vn2_vnp1_sn18 - 150 vn1_vnp1_sn3 * vn2_vnp1_sn10
      - 82 vn1_vnp1_sn3 * vn3_vnp1_sn5 - 252 vn1_vnp1_sn3 * vn3_vnp1_sn15
      - 290 vn1_vnp1_sn3 * vn3_vnp1_sn11 - 192 vn1_vnp1_sn4 * vn2_vnp1_sn18
      - 254 vn1_vnp1_sn4 * vn2_vnp1_sn10 - 106 vn1_vnp1_sn4 * vn3_vnp1_sn5
      - 332 vn1_vnp1_sn4 * vn3_vnp1_sn15 - 298 vn1_vnp1_sn4 * vn3_vnp1_sn11
      - 278 vn2_vnp1_sn18 * vn3_vnp1_sn5 - 304 vn2_vnp1_sn18 * vn3_vnp1_sn15
      - 414 vn2_vnp1_sn18 * vn3_vnp1_sn11 - 92 vn2_vnp1_sn10 * vn3_vnp1_sn5
      - 166 vn2_vnp1_sn10 * vn3_vnp1_sn15 - 68 vn2_vnp1_sn10 * vn3_vnp1_sn11
      - 164 vn4_vnp2_sn20 * vn1_vnp2_sn4 - 176 vn1_vnp2_sn4 * vn3_vnp2_sn17
      - 90 vn1_vnp2_sn4 * vn2_vnp2_sn6 - 210 vn3_vnp2_sn17 * vn2_vnp2_sn6 ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn8 + vn1_vnp1_sn3
                                 + vn1_vnp1_sn4 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn9
                                 + vn2_vnp1_sn18 + vn2_vnp1_sn10 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn5
                                 + vn3_vnp1_sn15 + vn3_vnp1_sn11 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#3: - vnp2 + vn1_vnp2_sn4 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#4: - vnp2 + vn2_vnp2_sn6 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#5: - vnp2 + vn3_vnp2_sn17 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#6: - vnp2 + vn4_vnp2_sn20 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn2_vnp1_sn9 * vn1_vnp1_sn8
                                 - vn2_vnp1_sn9 * vn1_vnp1_sn3
                                 - vn2_vnp1_sn9 * vn1_vnp1_sn4
                                 - vn1_vnp1_sn8 * vn2_vnp1_sn18
                                 - vn1_vnp1_sn8 * vn2_vnp1_sn10
                                 - vn1_vnp1_sn3 * vn2_vnp1_sn18
                                 - vn1_vnp1_sn3 * vn2_vnp1_sn10
                                 - vn1_vnp1_sn4 * vn2_vnp1_sn18
                                 - vn1_vnp1_sn4 * vn2_vnp1_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn2_vnp1_sn9 * vn3_vnp1_sn5
                                 - vn2_vnp1_sn9 * vn3_vnp1_sn15
                                 - vn2_vnp1_sn9 * vn3_vnp1_sn11
                                 - vn2_vnp1_sn18 * vn3_vnp1_sn5
                                 - vn2_vnp1_sn18 * vn3_vnp1_sn15
                                 - vn2_vnp1_sn18 * vn3_vnp1_sn11
                                 - vn2_vnp1_sn10 * vn3_vnp1_sn5
                                 - vn2_vnp1_sn10 * vn3_vnp1_sn15
                                 - vn2_vnp1_sn10 * vn3_vnp1_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn1_vnp1_sn8 * vn3_vnp1_sn5
                                 - vn1_vnp1_sn8 * vn3_vnp1_sn15
                                 - vn1_vnp1_sn8 * vn3_vnp1_sn11
                                 - vn1_vnp1_sn3 * vn3_vnp1_sn5
                                 - vn1_vnp1_sn3 * vn3_vnp1_sn15
                                 - vn1_vnp1_sn3 * vn3_vnp1_sn11
                                 - vn1_vnp1_sn4 * vn3_vnp1_sn5
                                 - vn1_vnp1_sn4 * vn3_vnp1_sn15
                                 - vn1_vnp1_sn4 * vn3_vnp1_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_4#3: vnp2
                                 + [ - vn4_vnp2_sn20 * vn1_vnp2_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_5#4: vnp2
                                 + [ - vn3_vnp2_sn17 * vn2_vnp2_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn1_vnp2_sn4 * vn3_vnp2_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn1_vnp2_sn4 * vn2_vnp2_sn6 ] <= 0
 q8#7:                           - 729 vnp1 - 749 vnp2
                                 + [ 86 vn2_vnp1_sn9 * vn1_vnp1_sn8
                                 + 57 vn2_vnp1_sn9 * vn1_vnp1_sn3
                                 + 61 vn2_vnp1_sn9 * vn1_vnp1_sn4
                                 + 36 vn2_vnp1_sn9 * vn3_vnp1_sn5
                                 + 37 vn2_vnp1_sn9 * vn3_vnp1_sn15
                                 + 92 vn2_vnp1_sn9 * vn3_vnp1_sn11
                                 + 45 vn1_vnp1_sn8 * vn2_vnp1_sn18
                                 + 152 vn1_vnp1_sn8 * vn2_vnp1_sn10
                                 + 118 vn1_vnp1_sn8 * vn3_vnp1_sn5
                                 + 27 vn1_vnp1_sn8 * vn3_vnp1_sn15
                                 + 174 vn1_vnp1_sn8 * vn3_vnp1_sn11
                                 + 152 vn1_vnp1_sn3 * vn2_vnp1_sn18
                                 + 75 vn1_vnp1_sn3 * vn2_vnp1_sn10
                                 + 41 vn1_vnp1_sn3 * vn3_vnp1_sn5
                                 + 126 vn1_vnp1_sn3 * vn3_vnp1_sn15
                                 + 145 vn1_vnp1_sn3 * vn3_vnp1_sn11
                                 + 96 vn1_vnp1_sn4 * vn2_vnp1_sn18
                                 + 127 vn1_vnp1_sn4 * vn2_vnp1_sn10
                                 + 53 vn1_vnp1_sn4 * vn3_vnp1_sn5
                                 + 166 vn1_vnp1_sn4 * vn3_vnp1_sn15
                                 + 149 vn1_vnp1_sn4 * vn3_vnp1_sn11
                                 + 139 vn2_vnp1_sn18 * vn3_vnp1_sn5
                                 + 152 vn2_vnp1_sn18 * vn3_vnp1_sn15
                                 + 207 vn2_vnp1_sn18 * vn3_vnp1_sn11
                                 + 46 vn2_vnp1_sn10 * vn3_vnp1_sn5
                                 + 83 vn2_vnp1_sn10 * vn3_vnp1_sn15
                                 + 34 vn2_vnp1_sn10 * vn3_vnp1_sn11
                                 + 82 vn4_vnp2_sn20 * vn1_vnp2_sn4
                                 + 88 vn1_vnp2_sn4 * vn3_vnp2_sn17
                                 + 45 vn1_vnp2_sn4 * vn2_vnp2_sn6
                                 + 105 vn3_vnp2_sn17 * vn2_vnp2_sn6 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_3#0: 3 vn1_vnp1_sn3 <= 1
 CPU_capacity_of_substrate_node_4#1: 3 vn1_vnp1_sn4 + 3 vn1_vnp2_sn4 <= 1
 CPU_capacity_of_substrate_node_5#2: 3 vn3_vnp1_sn5 <= 8
 CPU_capacity_of_substrate_node_6#3: vn2_vnp2_sn6 <= 8
 CPU_capacity_of_substrate_node_8#4: 3 vn1_vnp1_sn8 <= 2
 CPU_capacity_of_substrate_node_9#5: vn2_vnp1_sn9 <= 8
 CPU_capacity_of_substrate_node_10#6: vn2_vnp1_sn10 <= 4
 CPU_capacity_of_substrate_node_11#7: 3 vn3_vnp1_sn11 <= 4
 CPU_capacity_of_substrate_node_15#8: 3 vn3_vnp1_sn15 <= 5
 CPU_capacity_of_substrate_node_17#9: vn3_vnp2_sn17 <= 2
 CPU_capacity_of_substrate_node_18#10: vn2_vnp1_sn18 <= 7
 CPU_capacity_of_substrate_node_20#11: vn4_vnp2_sn20 <= 3
Bounds
 0 <= vnp1 <= 1
 0 <= vn2_vnp1_sn9 <= 1
 0 <= vn1_vnp1_sn8 <= 1
 0 <= vn1_vnp1_sn3 <= 1
 0 <= vn1_vnp1_sn4 <= 1
 0 <= vn2_vnp1_sn18 <= 1
 0 <= vn2_vnp1_sn10 <= 1
 0 <= vn3_vnp1_sn5 <= 1
 0 <= vn3_vnp1_sn15 <= 1
 0 <= vn3_vnp1_sn11 <= 1
 0 <= vnp2 <= 1
 0 <= vn4_vnp2_sn20 <= 1
 0 <= vn1_vnp2_sn4 <= 1
 0 <= vn3_vnp2_sn17 <= 1
 0 <= vn2_vnp2_sn6 <= 1
Binaries
 vnp1  vn2_vnp1_sn9  vn1_vnp1_sn8  vn1_vnp1_sn3  vn1_vnp1_sn4  vn2_vnp1_sn18 
 vn2_vnp1_sn10  vn3_vnp1_sn5  vn3_vnp1_sn15  vn3_vnp1_sn11  vnp2 
 vn4_vnp2_sn20  vn1_vnp2_sn4  vn3_vnp2_sn17  vn2_vnp2_sn6 
End
