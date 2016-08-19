\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1365 vnp1 + 901 vnp2 + [ - 456 vn3_vnp1_sn1 * vn1_vnp1_sn14
      - 274 vn3_vnp1_sn1 * vn1_vnp1_sn10 - 240 vn3_vnp1_sn1 * vn4_vnp1_sn18
      - 178 vn3_vnp1_sn1 * vn2_vnp1_sn5 - 94 vn3_vnp1_sn1 * vn2_vnp1_sn3
      - 250 vn3_vnp1_sn1 * vn2_vnp1_sn6 - 214 vn3_vnp1_sn1 * vn4_vnp1_sn7
      - 262 vn1_vnp1_sn14 * vn3_vnp1_sn19 - 344 vn1_vnp1_sn14 * vn4_vnp1_sn18
      - 320 vn1_vnp1_sn14 * vn2_vnp1_sn5 - 284 vn1_vnp1_sn14 * vn2_vnp1_sn3
      - 256 vn1_vnp1_sn14 * vn2_vnp1_sn6 - 404 vn1_vnp1_sn14 * vn4_vnp1_sn7
      - 430 vn1_vnp1_sn10 * vn3_vnp1_sn19 - 196 vn1_vnp1_sn10 * vn4_vnp1_sn18
      - 68 vn1_vnp1_sn10 * vn2_vnp1_sn5 - 136 vn1_vnp1_sn10 * vn2_vnp1_sn3
      - 140 vn1_vnp1_sn10 * vn2_vnp1_sn6 - 256 vn1_vnp1_sn10 * vn4_vnp1_sn7
      - 56 vn3_vnp1_sn19 * vn4_vnp1_sn18 - 336 vn3_vnp1_sn19 * vn2_vnp1_sn5
      - 252 vn3_vnp1_sn19 * vn2_vnp1_sn3 - 408 vn3_vnp1_sn19 * vn2_vnp1_sn6
      - 220 vn3_vnp1_sn19 * vn4_vnp1_sn7 - 94 vn4_vnp1_sn18 * vn2_vnp1_sn5
      - 80 vn4_vnp1_sn18 * vn2_vnp1_sn3 - 112 vn4_vnp1_sn18 * vn2_vnp1_sn6
      - 104 vn2_vnp1_sn5 * vn4_vnp1_sn7 - 78 vn2_vnp1_sn3 * vn4_vnp1_sn7
      - 122 vn2_vnp1_sn6 * vn4_vnp1_sn7 - 326 vn2_vnp2_sn6 * vn1_vnp2_sn1
      - 546 vn2_vnp2_sn6 * vn1_vnp2_sn7 - 306 vn2_vnp2_sn6 * vn1_vnp2_sn9
      - 144 vn2_vnp2_sn6 * vn3_vnp2_sn10 - 174 vn1_vnp2_sn1 * vn3_vnp2_sn10
      - 134 vn1_vnp2_sn7 * vn3_vnp2_sn10 - 34 vn1_vnp2_sn9 * vn3_vnp2_sn10
      ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn14
                                 + vn1_vnp1_sn10 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn5 + vn2_vnp1_sn3
                                 + vn2_vnp1_sn6 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn1
                                 + vn3_vnp1_sn19 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn18
                                 + vn4_vnp1_sn7 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn1 + vn1_vnp2_sn7
                                 + vn1_vnp2_sn9 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn6 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn10 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn3_vnp1_sn1 * vn1_vnp1_sn14
                                 - vn3_vnp1_sn1 * vn1_vnp1_sn10
                                 - vn1_vnp1_sn14 * vn3_vnp1_sn19
                                 - vn1_vnp1_sn10 * vn3_vnp1_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn4_vnp1_sn18 * vn2_vnp1_sn5
                                 - vn4_vnp1_sn18 * vn2_vnp1_sn3
                                 - vn4_vnp1_sn18 * vn2_vnp1_sn6
                                 - vn2_vnp1_sn5 * vn4_vnp1_sn7
                                 - vn2_vnp1_sn3 * vn4_vnp1_sn7
                                 - vn2_vnp1_sn6 * vn4_vnp1_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn3_vnp1_sn1 * vn2_vnp1_sn5
                                 - vn3_vnp1_sn1 * vn2_vnp1_sn3
                                 - vn3_vnp1_sn1 * vn2_vnp1_sn6
                                 - vn3_vnp1_sn19 * vn2_vnp1_sn5
                                 - vn3_vnp1_sn19 * vn2_vnp1_sn3
                                 - vn3_vnp1_sn19 * vn2_vnp1_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn1_vnp1_sn14 * vn4_vnp1_sn18
                                 - vn1_vnp1_sn14 * vn4_vnp1_sn7
                                 - vn1_vnp1_sn10 * vn4_vnp1_sn18
                                 - vn1_vnp1_sn10 * vn4_vnp1_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_5#4: vnp1
                                 + [ - vn1_vnp1_sn14 * vn2_vnp1_sn5
                                 - vn1_vnp1_sn14 * vn2_vnp1_sn3
                                 - vn1_vnp1_sn14 * vn2_vnp1_sn6
                                 - vn1_vnp1_sn10 * vn2_vnp1_sn5
                                 - vn1_vnp1_sn10 * vn2_vnp1_sn3
                                 - vn1_vnp1_sn10 * vn2_vnp1_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_6#5: vnp1
                                 + [ - vn3_vnp1_sn1 * vn4_vnp1_sn18
                                 - vn3_vnp1_sn1 * vn4_vnp1_sn7
                                 - vn3_vnp1_sn19 * vn4_vnp1_sn18
                                 - vn3_vnp1_sn19 * vn4_vnp1_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn2_vnp2_sn6 * vn1_vnp2_sn1
                                 - vn2_vnp2_sn6 * vn1_vnp2_sn7
                                 - vn2_vnp2_sn6 * vn1_vnp2_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_8#7: vnp2
                                 + [ - vn2_vnp2_sn6 * vn3_vnp2_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_9#8: vnp2
                                 + [ - vn1_vnp2_sn1 * vn3_vnp2_sn10
                                 - vn1_vnp2_sn7 * vn3_vnp2_sn10
                                 - vn1_vnp2_sn9 * vn3_vnp2_sn10 ] <= 0
 q10#9:                          - 1365 vnp1 - 901 vnp2
                                 + [ 228 vn3_vnp1_sn1 * vn1_vnp1_sn14
                                 + 137 vn3_vnp1_sn1 * vn1_vnp1_sn10
                                 + 120 vn3_vnp1_sn1 * vn4_vnp1_sn18
                                 + 89 vn3_vnp1_sn1 * vn2_vnp1_sn5
                                 + 47 vn3_vnp1_sn1 * vn2_vnp1_sn3
                                 + 125 vn3_vnp1_sn1 * vn2_vnp1_sn6
                                 + 107 vn3_vnp1_sn1 * vn4_vnp1_sn7
                                 + 131 vn1_vnp1_sn14 * vn3_vnp1_sn19
                                 + 172 vn1_vnp1_sn14 * vn4_vnp1_sn18
                                 + 160 vn1_vnp1_sn14 * vn2_vnp1_sn5
                                 + 142 vn1_vnp1_sn14 * vn2_vnp1_sn3
                                 + 128 vn1_vnp1_sn14 * vn2_vnp1_sn6
                                 + 202 vn1_vnp1_sn14 * vn4_vnp1_sn7
                                 + 215 vn1_vnp1_sn10 * vn3_vnp1_sn19
                                 + 98 vn1_vnp1_sn10 * vn4_vnp1_sn18
                                 + 34 vn1_vnp1_sn10 * vn2_vnp1_sn5
                                 + 68 vn1_vnp1_sn10 * vn2_vnp1_sn3
                                 + 70 vn1_vnp1_sn10 * vn2_vnp1_sn6
                                 + 128 vn1_vnp1_sn10 * vn4_vnp1_sn7
                                 + 28 vn3_vnp1_sn19 * vn4_vnp1_sn18
                                 + 168 vn3_vnp1_sn19 * vn2_vnp1_sn5
                                 + 126 vn3_vnp1_sn19 * vn2_vnp1_sn3
                                 + 204 vn3_vnp1_sn19 * vn2_vnp1_sn6
                                 + 110 vn3_vnp1_sn19 * vn4_vnp1_sn7
                                 + 47 vn4_vnp1_sn18 * vn2_vnp1_sn5
                                 + 40 vn4_vnp1_sn18 * vn2_vnp1_sn3
                                 + 56 vn4_vnp1_sn18 * vn2_vnp1_sn6
                                 + 52 vn2_vnp1_sn5 * vn4_vnp1_sn7
                                 + 39 vn2_vnp1_sn3 * vn4_vnp1_sn7
                                 + 61 vn2_vnp1_sn6 * vn4_vnp1_sn7
                                 + 163 vn2_vnp2_sn6 * vn1_vnp2_sn1
                                 + 273 vn2_vnp2_sn6 * vn1_vnp2_sn7
                                 + 153 vn2_vnp2_sn6 * vn1_vnp2_sn9
                                 + 72 vn2_vnp2_sn6 * vn3_vnp2_sn10
                                 + 87 vn1_vnp2_sn1 * vn3_vnp2_sn10
                                 + 67 vn1_vnp2_sn7 * vn3_vnp2_sn10
                                 + 17 vn1_vnp2_sn9 * vn3_vnp2_sn10 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: vn3_vnp1_sn1 + 5 vn1_vnp2_sn1 <= 1
 CPU_capacity_of_substrate_node_3#1: vn2_vnp1_sn3 <= 4
 CPU_capacity_of_substrate_node_5#2: vn2_vnp1_sn5 <= 2
 CPU_capacity_of_substrate_node_6#3: vn2_vnp1_sn6 + 2 vn2_vnp2_sn6 <= 4
 CPU_capacity_of_substrate_node_7#4: 2 vn4_vnp1_sn7 + 5 vn1_vnp2_sn7 <= 1
 CPU_capacity_of_substrate_node_9#5: 5 vn1_vnp2_sn9 <= 4
 CPU_capacity_of_substrate_node_10#6: 3 vn1_vnp1_sn10 + 2 vn3_vnp2_sn10 <= 7
 CPU_capacity_of_substrate_node_14#7: 3 vn1_vnp1_sn14 <= 1
 CPU_capacity_of_substrate_node_18#8: 2 vn4_vnp1_sn18 <= 1
 CPU_capacity_of_substrate_node_19#9: vn3_vnp1_sn19 <= 3
Bounds
 0 <= vnp1 <= 1
 0 <= vn3_vnp1_sn1 <= 1
 0 <= vn1_vnp1_sn14 <= 1
 0 <= vn1_vnp1_sn10 <= 1
 0 <= vn3_vnp1_sn19 <= 1
 0 <= vn4_vnp1_sn18 <= 1
 0 <= vn2_vnp1_sn5 <= 1
 0 <= vn2_vnp1_sn3 <= 1
 0 <= vn2_vnp1_sn6 <= 1
 0 <= vn4_vnp1_sn7 <= 1
 0 <= vnp2 <= 1
 0 <= vn2_vnp2_sn6 <= 1
 0 <= vn1_vnp2_sn1 <= 1
 0 <= vn1_vnp2_sn7 <= 1
 0 <= vn1_vnp2_sn9 <= 1
 0 <= vn3_vnp2_sn10 <= 1
Binaries
 vnp1  vn3_vnp1_sn1  vn1_vnp1_sn14  vn1_vnp1_sn10  vn3_vnp1_sn19 
 vn4_vnp1_sn18  vn2_vnp1_sn5  vn2_vnp1_sn3  vn2_vnp1_sn6  vn4_vnp1_sn7  vnp2 
 vn2_vnp2_sn6  vn1_vnp2_sn1  vn1_vnp2_sn7  vn1_vnp2_sn9  vn3_vnp2_sn10 
End
