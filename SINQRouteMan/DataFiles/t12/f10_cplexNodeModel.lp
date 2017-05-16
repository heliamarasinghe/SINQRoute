\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1106 vnp1 + 1838 vnp2 + [ - 112 vn4_vnp1_sn15 * vn1_vnp1_sn4
      - 272 vn4_vnp1_sn15 * vn3_vnp1_sn7 - 378 vn4_vnp1_sn15 * vn3_vnp1_sn6
      - 258 vn4_vnp1_sn15 * vn3_vnp1_sn13 - 200 vn1_vnp1_sn4 * vn2_vnp1_sn16
      - 68 vn1_vnp1_sn4 * vn2_vnp1_sn1 - 180 vn1_vnp1_sn4 * vn2_vnp1_sn2
      - 50 vn1_vnp1_sn4 * vn3_vnp1_sn7 - 172 vn1_vnp1_sn4 * vn3_vnp1_sn6
      - 220 vn1_vnp1_sn4 * vn3_vnp1_sn13 - 228 vn4_vnp2_sn20 * vn1_vnp2_sn6
      - 94 vn4_vnp2_sn20 * vn1_vnp2_sn17 - 156 vn4_vnp2_sn20 * vn3_vnp2_sn2
      - 90 vn4_vnp2_sn20 * vn2_vnp2_sn7 - 180 vn4_vnp2_sn20 * vn2_vnp2_sn15
      - 200 vn4_vnp2_sn20 * vn2_vnp2_sn3 - 264 vn4_vnp2_sn20 * vn3_vnp2_sn13
      - 336 vn4_vnp2_sn20 * vn3_vnp2_sn5 - 254 vn1_vnp2_sn6 * vn3_vnp2_sn2
      - 334 vn1_vnp2_sn6 * vn2_vnp2_sn7 - 270 vn1_vnp2_sn6 * vn2_vnp2_sn15
      - 142 vn1_vnp2_sn6 * vn2_vnp2_sn3 - 144 vn1_vnp2_sn6 * vn3_vnp2_sn13
      - 130 vn1_vnp2_sn6 * vn3_vnp2_sn5 - 196 vn1_vnp2_sn17 * vn3_vnp2_sn2
      - 48 vn1_vnp2_sn17 * vn2_vnp2_sn7 - 144 vn1_vnp2_sn17 * vn2_vnp2_sn15
      - 288 vn1_vnp2_sn17 * vn2_vnp2_sn3 - 406 vn1_vnp2_sn17 * vn3_vnp2_sn13
      - 402 vn1_vnp2_sn17 * vn3_vnp2_sn5 - 178 vn3_vnp2_sn2 * vn2_vnp2_sn7
      - 378 vn3_vnp2_sn2 * vn2_vnp2_sn15 - 78 vn3_vnp2_sn2 * vn2_vnp2_sn3
      - 478 vn2_vnp2_sn7 * vn3_vnp2_sn13 - 244 vn2_vnp2_sn7 * vn3_vnp2_sn5
      - 228 vn2_vnp2_sn15 * vn3_vnp2_sn13 - 374 vn2_vnp2_sn15 * vn3_vnp2_sn5
      - 308 vn2_vnp2_sn3 * vn3_vnp2_sn13 - 94 vn2_vnp2_sn3 * vn3_vnp2_sn5 ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn4 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn16
                                 + vn2_vnp1_sn1 + vn2_vnp1_sn2 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn7 + vn3_vnp1_sn6
                                 + vn3_vnp1_sn13 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn15 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn6
                                 + vn1_vnp2_sn17 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn7
                                 + vn2_vnp2_sn15 + vn2_vnp2_sn3 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn2
                                 + vn3_vnp2_sn13 + vn3_vnp2_sn5 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#7: - vnp2 + vn4_vnp2_sn20 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn4_vnp1_sn15 * vn1_vnp1_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn1_vnp1_sn4 * vn2_vnp1_sn16
                                 - vn1_vnp1_sn4 * vn2_vnp1_sn1
                                 - vn1_vnp1_sn4 * vn2_vnp1_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn4_vnp1_sn15 * vn3_vnp1_sn7
                                 - vn4_vnp1_sn15 * vn3_vnp1_sn6
                                 - vn4_vnp1_sn15 * vn3_vnp1_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn1_vnp1_sn4 * vn3_vnp1_sn7
                                 - vn1_vnp1_sn4 * vn3_vnp1_sn6
                                 - vn1_vnp1_sn4 * vn3_vnp1_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_5#4: vnp2
                                 + [ - vn4_vnp2_sn20 * vn1_vnp2_sn6
                                 - vn4_vnp2_sn20 * vn1_vnp2_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn3_vnp2_sn2 * vn2_vnp2_sn7
                                 - vn3_vnp2_sn2 * vn2_vnp2_sn15
                                 - vn3_vnp2_sn2 * vn2_vnp2_sn3
                                 - vn2_vnp2_sn7 * vn3_vnp2_sn13
                                 - vn2_vnp2_sn7 * vn3_vnp2_sn5
                                 - vn2_vnp2_sn15 * vn3_vnp2_sn13
                                 - vn2_vnp2_sn15 * vn3_vnp2_sn5
                                 - vn2_vnp2_sn3 * vn3_vnp2_sn13
                                 - vn2_vnp2_sn3 * vn3_vnp2_sn5 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn1_vnp2_sn6 * vn3_vnp2_sn2
                                 - vn1_vnp2_sn6 * vn3_vnp2_sn13
                                 - vn1_vnp2_sn6 * vn3_vnp2_sn5
                                 - vn1_vnp2_sn17 * vn3_vnp2_sn2
                                 - vn1_vnp2_sn17 * vn3_vnp2_sn13
                                 - vn1_vnp2_sn17 * vn3_vnp2_sn5 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_8#7: vnp2
                                 + [ - vn1_vnp2_sn6 * vn2_vnp2_sn7
                                 - vn1_vnp2_sn6 * vn2_vnp2_sn15
                                 - vn1_vnp2_sn6 * vn2_vnp2_sn3
                                 - vn1_vnp2_sn17 * vn2_vnp2_sn7
                                 - vn1_vnp2_sn17 * vn2_vnp2_sn15
                                 - vn1_vnp2_sn17 * vn2_vnp2_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_9#8: vnp2
                                 + [ - vn4_vnp2_sn20 * vn2_vnp2_sn7
                                 - vn4_vnp2_sn20 * vn2_vnp2_sn15
                                 - vn4_vnp2_sn20 * vn2_vnp2_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_10#9: vnp2
                                 + [ - vn4_vnp2_sn20 * vn3_vnp2_sn2
                                 - vn4_vnp2_sn20 * vn3_vnp2_sn13
                                 - vn4_vnp2_sn20 * vn3_vnp2_sn5 ] <= 0
 q11#10:                         - 1106 vnp1 - 1838 vnp2
                                 + [ 56 vn4_vnp1_sn15 * vn1_vnp1_sn4
                                 + 136 vn4_vnp1_sn15 * vn3_vnp1_sn7
                                 + 189 vn4_vnp1_sn15 * vn3_vnp1_sn6
                                 + 129 vn4_vnp1_sn15 * vn3_vnp1_sn13
                                 + 100 vn1_vnp1_sn4 * vn2_vnp1_sn16
                                 + 34 vn1_vnp1_sn4 * vn2_vnp1_sn1
                                 + 90 vn1_vnp1_sn4 * vn2_vnp1_sn2
                                 + 25 vn1_vnp1_sn4 * vn3_vnp1_sn7
                                 + 86 vn1_vnp1_sn4 * vn3_vnp1_sn6
                                 + 110 vn1_vnp1_sn4 * vn3_vnp1_sn13
                                 + 114 vn4_vnp2_sn20 * vn1_vnp2_sn6
                                 + 47 vn4_vnp2_sn20 * vn1_vnp2_sn17
                                 + 78 vn4_vnp2_sn20 * vn3_vnp2_sn2
                                 + 45 vn4_vnp2_sn20 * vn2_vnp2_sn7
                                 + 90 vn4_vnp2_sn20 * vn2_vnp2_sn15
                                 + 100 vn4_vnp2_sn20 * vn2_vnp2_sn3
                                 + 132 vn4_vnp2_sn20 * vn3_vnp2_sn13
                                 + 168 vn4_vnp2_sn20 * vn3_vnp2_sn5
                                 + 127 vn1_vnp2_sn6 * vn3_vnp2_sn2
                                 + 167 vn1_vnp2_sn6 * vn2_vnp2_sn7
                                 + 135 vn1_vnp2_sn6 * vn2_vnp2_sn15
                                 + 71 vn1_vnp2_sn6 * vn2_vnp2_sn3
                                 + 72 vn1_vnp2_sn6 * vn3_vnp2_sn13
                                 + 65 vn1_vnp2_sn6 * vn3_vnp2_sn5
                                 + 98 vn1_vnp2_sn17 * vn3_vnp2_sn2
                                 + 24 vn1_vnp2_sn17 * vn2_vnp2_sn7
                                 + 72 vn1_vnp2_sn17 * vn2_vnp2_sn15
                                 + 144 vn1_vnp2_sn17 * vn2_vnp2_sn3
                                 + 203 vn1_vnp2_sn17 * vn3_vnp2_sn13
                                 + 201 vn1_vnp2_sn17 * vn3_vnp2_sn5
                                 + 89 vn3_vnp2_sn2 * vn2_vnp2_sn7
                                 + 189 vn3_vnp2_sn2 * vn2_vnp2_sn15
                                 + 39 vn3_vnp2_sn2 * vn2_vnp2_sn3
                                 + 239 vn2_vnp2_sn7 * vn3_vnp2_sn13
                                 + 122 vn2_vnp2_sn7 * vn3_vnp2_sn5
                                 + 114 vn2_vnp2_sn15 * vn3_vnp2_sn13
                                 + 187 vn2_vnp2_sn15 * vn3_vnp2_sn5
                                 + 154 vn2_vnp2_sn3 * vn3_vnp2_sn13
                                 + 47 vn2_vnp2_sn3 * vn3_vnp2_sn5 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: 3 vn2_vnp1_sn1 <= 7
 CPU_capacity_of_substrate_node_2#1: 3 vn2_vnp1_sn2 + 3 vn3_vnp2_sn2 <= 5
 CPU_capacity_of_substrate_node_4#2: vn1_vnp1_sn4 <= 4
 CPU_capacity_of_substrate_node_5#3: 3 vn3_vnp2_sn5 <= 5
 CPU_capacity_of_substrate_node_6#4: 3 vn3_vnp1_sn6 + vn1_vnp2_sn6 <= 8
 CPU_capacity_of_substrate_node_7#5: 3 vn3_vnp1_sn7 <= 5
 CPU_capacity_of_substrate_node_13#6: 3 vn3_vnp1_sn13 + 3 vn3_vnp2_sn13 <= 8
 CPU_capacity_of_substrate_node_15#7: 3 vn4_vnp1_sn15 <= 8
 CPU_capacity_of_substrate_node_16#8: 3 vn2_vnp1_sn16 <= 7
 CPU_capacity_of_substrate_node_17#9: vn1_vnp2_sn17 <= 5
 CPU_capacity_of_substrate_node_20#10: 3 vn4_vnp2_sn20 <= 6
Bounds
 0 <= vnp1 <= 1
 0 <= vn4_vnp1_sn15 <= 1
 0 <= vn1_vnp1_sn4 <= 1
 0 <= vn2_vnp1_sn16 <= 1
 0 <= vn2_vnp1_sn1 <= 1
 0 <= vn2_vnp1_sn2 <= 1
 0 <= vn3_vnp1_sn7 <= 1
 0 <= vn3_vnp1_sn6 <= 1
 0 <= vn3_vnp1_sn13 <= 1
 0 <= vnp2 <= 1
 0 <= vn4_vnp2_sn20 <= 1
 0 <= vn1_vnp2_sn6 <= 1
 0 <= vn1_vnp2_sn17 <= 1
 0 <= vn3_vnp2_sn2 <= 1
 0 <= vn2_vnp2_sn7 <= 1
 0 <= vn2_vnp2_sn15 <= 1
 0 <= vn2_vnp2_sn3 <= 1
 0 <= vn3_vnp2_sn13 <= 1
 0 <= vn3_vnp2_sn5 <= 1
Binaries
 vnp1  vn4_vnp1_sn15  vn1_vnp1_sn4  vn2_vnp1_sn16  vn2_vnp1_sn1  vn2_vnp1_sn2 
 vn3_vnp1_sn7  vn3_vnp1_sn6  vn3_vnp1_sn13  vnp2  vn4_vnp2_sn20  vn1_vnp2_sn6 
 vn1_vnp2_sn17  vn3_vnp2_sn2  vn2_vnp2_sn7  vn2_vnp2_sn15  vn2_vnp2_sn3 
 vn3_vnp2_sn13  vn3_vnp2_sn5 
End
