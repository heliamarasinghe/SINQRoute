\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 441 vnp1 + 1122 vnp2 + 306 vnp3 + 738 vnp4
      + [ - 80 vn2_vnp1_sn6 * vn1_vnp1_sn3 - 144 vn2_vnp1_sn6 * vn4_vnp1_sn10
      - 246 vn2_vnp1_sn6 * vn4_vnp1_sn18 - 212 vn2_vnp1_sn6 * vn3_vnp1_sn4
      - 298 vn2_vnp1_sn6 * vn3_vnp1_sn2 - 36 vn1_vnp1_sn3 * vn3_vnp1_sn4
      - 62 vn1_vnp1_sn3 * vn3_vnp1_sn2 - 306 vn2_vnp2_sn13 * vn1_vnp2_sn5
      - 260 vn2_vnp2_sn13 * vn3_vnp2_sn9 - 636 vn2_vnp2_sn13 * vn3_vnp2_sn2
      - 356 vn1_vnp2_sn5 * vn2_vnp2_sn20 - 430 vn1_vnp2_sn5 * vn2_vnp2_sn18
      - 56 vn1_vnp2_sn5 * vn3_vnp2_sn9 - 220 vn1_vnp2_sn5 * vn3_vnp2_sn2
      - 400 vn2_vnp2_sn20 * vn3_vnp2_sn9 - 316 vn2_vnp2_sn20 * vn3_vnp2_sn2
      - 374 vn2_vnp2_sn18 * vn3_vnp2_sn9 - 230 vn2_vnp2_sn18 * vn3_vnp2_sn2
      - 78 vn3_vnp3_sn13 * vn1_vnp3_sn10 - 222 vn3_vnp3_sn13 * vn2_vnp3_sn9
      - 100 vn3_vnp3_sn13 * vn2_vnp3_sn12 - 136 vn1_vnp3_sn10 * vn3_vnp3_sn18
      - 134 vn1_vnp3_sn10 * vn2_vnp3_sn9 - 102 vn1_vnp3_sn10 * vn2_vnp3_sn12
      - 284 vn3_vnp3_sn18 * vn2_vnp3_sn9 - 294 vn3_vnp3_sn18 * vn2_vnp3_sn12
      - 222 vn3_vnp4_sn11 * vn1_vnp4_sn10 - 392 vn3_vnp4_sn11 * vn1_vnp4_sn8
      - 292 vn3_vnp4_sn11 * vn1_vnp4_sn16 - 252 vn3_vnp4_sn11 * vn2_vnp4_sn12
      - 702 vn3_vnp4_sn11 * vn2_vnp4_sn2 - 172 vn3_vnp4_sn11 * vn2_vnp4_sn15
      - 458 vn1_vnp4_sn10 * vn3_vnp4_sn7 - 204 vn1_vnp4_sn10 * vn3_vnp4_sn5
      - 86 vn1_vnp4_sn10 * vn2_vnp4_sn12 - 158 vn1_vnp4_sn10 * vn2_vnp4_sn2
      - 116 vn1_vnp4_sn10 * vn2_vnp4_sn15 - 208 vn1_vnp4_sn8 * vn3_vnp4_sn7
      - 284 vn1_vnp4_sn8 * vn3_vnp4_sn5 - 160 vn1_vnp4_sn8 * vn2_vnp4_sn12
      - 188 vn1_vnp4_sn8 * vn2_vnp4_sn2 - 106 vn1_vnp4_sn8 * vn2_vnp4_sn15
      - 198 vn1_vnp4_sn16 * vn3_vnp4_sn7 - 194 vn1_vnp4_sn16 * vn3_vnp4_sn5
      - 134 vn1_vnp4_sn16 * vn2_vnp4_sn12 - 154 vn1_vnp4_sn16 * vn2_vnp4_sn2
      - 84 vn1_vnp4_sn16 * vn2_vnp4_sn15 - 578 vn3_vnp4_sn7 * vn2_vnp4_sn12
      - 228 vn3_vnp4_sn7 * vn2_vnp4_sn2 - 218 vn3_vnp4_sn7 * vn2_vnp4_sn15
      - 294 vn3_vnp4_sn5 * vn2_vnp4_sn12 - 384 vn3_vnp4_sn5 * vn2_vnp4_sn2
      - 484 vn3_vnp4_sn5 * vn2_vnp4_sn15 ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn3 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn6 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn4 + vn3_vnp1_sn2
                                 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn10
                                 + vn4_vnp1_sn18 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn5 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn13
                                 + vn2_vnp2_sn20 + vn2_vnp2_sn18 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn9 + vn3_vnp2_sn2
                                 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#7: - vnp3 + vn1_vnp3_sn10 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#8: - vnp3 + vn2_vnp3_sn9
                                 + vn2_vnp3_sn12 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#9: - vnp3 + vn3_vnp3_sn13
                                 + vn3_vnp3_sn18 <= 0
 _Embedding_clash_const_of_vnode1_vnp_4#10: - vnp4 + vn1_vnp4_sn10
                                 + vn1_vnp4_sn8 + vn1_vnp4_sn16 <= 0
 _Embedding_clash_const_of_vnode2_vnp_4#11: - vnp4 + vn2_vnp4_sn12
                                 + vn2_vnp4_sn2 + vn2_vnp4_sn15 <= 0
 _Embedding_clash_const_of_vnode3_vnp_4#12: - vnp4 + vn3_vnp4_sn11
                                 + vn3_vnp4_sn7 + vn3_vnp4_sn5 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn2_vnp1_sn6 * vn1_vnp1_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn2_vnp1_sn6 * vn4_vnp1_sn10
                                 - vn2_vnp1_sn6 * vn4_vnp1_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn2_vnp1_sn6 * vn3_vnp1_sn4
                                 - vn2_vnp1_sn6 * vn3_vnp1_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn1_vnp1_sn3 * vn3_vnp1_sn4
                                 - vn1_vnp1_sn3 * vn3_vnp1_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_5#4: vnp2
                                 + [ - vn2_vnp2_sn13 * vn1_vnp2_sn5
                                 - vn1_vnp2_sn5 * vn2_vnp2_sn20
                                 - vn1_vnp2_sn5 * vn2_vnp2_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn2_vnp2_sn13 * vn3_vnp2_sn9
                                 - vn2_vnp2_sn13 * vn3_vnp2_sn2
                                 - vn2_vnp2_sn20 * vn3_vnp2_sn9
                                 - vn2_vnp2_sn20 * vn3_vnp2_sn2
                                 - vn2_vnp2_sn18 * vn3_vnp2_sn9
                                 - vn2_vnp2_sn18 * vn3_vnp2_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn1_vnp2_sn5 * vn3_vnp2_sn9
                                 - vn1_vnp2_sn5 * vn3_vnp2_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_8#7: vnp3
                                 + [ - vn3_vnp3_sn13 * vn1_vnp3_sn10
                                 - vn1_vnp3_sn10 * vn3_vnp3_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_9#8: vnp3
                                 + [ - vn1_vnp3_sn10 * vn2_vnp3_sn9
                                 - vn1_vnp3_sn10 * vn2_vnp3_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_10#9: vnp3
                                 + [ - vn3_vnp3_sn13 * vn2_vnp3_sn9
                                 - vn3_vnp3_sn13 * vn2_vnp3_sn12
                                 - vn3_vnp3_sn18 * vn2_vnp3_sn9
                                 - vn3_vnp3_sn18 * vn2_vnp3_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_11#10: vnp4
                                 + [ - vn3_vnp4_sn11 * vn1_vnp4_sn10
                                 - vn3_vnp4_sn11 * vn1_vnp4_sn8
                                 - vn3_vnp4_sn11 * vn1_vnp4_sn16
                                 - vn1_vnp4_sn10 * vn3_vnp4_sn7
                                 - vn1_vnp4_sn10 * vn3_vnp4_sn5
                                 - vn1_vnp4_sn8 * vn3_vnp4_sn7
                                 - vn1_vnp4_sn8 * vn3_vnp4_sn5
                                 - vn1_vnp4_sn16 * vn3_vnp4_sn7
                                 - vn1_vnp4_sn16 * vn3_vnp4_sn5 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_12#11: vnp4
                                 + [ - vn3_vnp4_sn11 * vn2_vnp4_sn12
                                 - vn3_vnp4_sn11 * vn2_vnp4_sn2
                                 - vn3_vnp4_sn11 * vn2_vnp4_sn15
                                 - vn3_vnp4_sn7 * vn2_vnp4_sn12
                                 - vn3_vnp4_sn7 * vn2_vnp4_sn2
                                 - vn3_vnp4_sn7 * vn2_vnp4_sn15
                                 - vn3_vnp4_sn5 * vn2_vnp4_sn12
                                 - vn3_vnp4_sn5 * vn2_vnp4_sn2
                                 - vn3_vnp4_sn5 * vn2_vnp4_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_13#12: vnp4
                                 + [ - vn1_vnp4_sn10 * vn2_vnp4_sn12
                                 - vn1_vnp4_sn10 * vn2_vnp4_sn2
                                 - vn1_vnp4_sn10 * vn2_vnp4_sn15
                                 - vn1_vnp4_sn8 * vn2_vnp4_sn12
                                 - vn1_vnp4_sn8 * vn2_vnp4_sn2
                                 - vn1_vnp4_sn8 * vn2_vnp4_sn15
                                 - vn1_vnp4_sn16 * vn2_vnp4_sn12
                                 - vn1_vnp4_sn16 * vn2_vnp4_sn2
                                 - vn1_vnp4_sn16 * vn2_vnp4_sn15 ] <= 0
 q14#13:                         - 441 vnp1 - 1122 vnp2 - 306 vnp3 - 738 vnp4
                                 + [ 40 vn2_vnp1_sn6 * vn1_vnp1_sn3
                                 + 72 vn2_vnp1_sn6 * vn4_vnp1_sn10
                                 + 123 vn2_vnp1_sn6 * vn4_vnp1_sn18
                                 + 106 vn2_vnp1_sn6 * vn3_vnp1_sn4
                                 + 149 vn2_vnp1_sn6 * vn3_vnp1_sn2
                                 + 18 vn1_vnp1_sn3 * vn3_vnp1_sn4
                                 + 31 vn1_vnp1_sn3 * vn3_vnp1_sn2
                                 + 153 vn2_vnp2_sn13 * vn1_vnp2_sn5
                                 + 130 vn2_vnp2_sn13 * vn3_vnp2_sn9
                                 + 318 vn2_vnp2_sn13 * vn3_vnp2_sn2
                                 + 178 vn1_vnp2_sn5 * vn2_vnp2_sn20
                                 + 215 vn1_vnp2_sn5 * vn2_vnp2_sn18
                                 + 28 vn1_vnp2_sn5 * vn3_vnp2_sn9
                                 + 110 vn1_vnp2_sn5 * vn3_vnp2_sn2
                                 + 200 vn2_vnp2_sn20 * vn3_vnp2_sn9
                                 + 158 vn2_vnp2_sn20 * vn3_vnp2_sn2
                                 + 187 vn2_vnp2_sn18 * vn3_vnp2_sn9
                                 + 115 vn2_vnp2_sn18 * vn3_vnp2_sn2
                                 + 39 vn3_vnp3_sn13 * vn1_vnp3_sn10
                                 + 111 vn3_vnp3_sn13 * vn2_vnp3_sn9
                                 + 50 vn3_vnp3_sn13 * vn2_vnp3_sn12
                                 + 68 vn1_vnp3_sn10 * vn3_vnp3_sn18
                                 + 67 vn1_vnp3_sn10 * vn2_vnp3_sn9
                                 + 51 vn1_vnp3_sn10 * vn2_vnp3_sn12
                                 + 142 vn3_vnp3_sn18 * vn2_vnp3_sn9
                                 + 147 vn3_vnp3_sn18 * vn2_vnp3_sn12
                                 + 111 vn3_vnp4_sn11 * vn1_vnp4_sn10
                                 + 196 vn3_vnp4_sn11 * vn1_vnp4_sn8
                                 + 146 vn3_vnp4_sn11 * vn1_vnp4_sn16
                                 + 126 vn3_vnp4_sn11 * vn2_vnp4_sn12
                                 + 351 vn3_vnp4_sn11 * vn2_vnp4_sn2
                                 + 86 vn3_vnp4_sn11 * vn2_vnp4_sn15
                                 + 229 vn1_vnp4_sn10 * vn3_vnp4_sn7
                                 + 102 vn1_vnp4_sn10 * vn3_vnp4_sn5
                                 + 43 vn1_vnp4_sn10 * vn2_vnp4_sn12
                                 + 79 vn1_vnp4_sn10 * vn2_vnp4_sn2
                                 + 58 vn1_vnp4_sn10 * vn2_vnp4_sn15
                                 + 104 vn1_vnp4_sn8 * vn3_vnp4_sn7
                                 + 142 vn1_vnp4_sn8 * vn3_vnp4_sn5
                                 + 80 vn1_vnp4_sn8 * vn2_vnp4_sn12
                                 + 94 vn1_vnp4_sn8 * vn2_vnp4_sn2
                                 + 53 vn1_vnp4_sn8 * vn2_vnp4_sn15
                                 + 99 vn1_vnp4_sn16 * vn3_vnp4_sn7
                                 + 97 vn1_vnp4_sn16 * vn3_vnp4_sn5
                                 + 67 vn1_vnp4_sn16 * vn2_vnp4_sn12
                                 + 77 vn1_vnp4_sn16 * vn2_vnp4_sn2
                                 + 42 vn1_vnp4_sn16 * vn2_vnp4_sn15
                                 + 289 vn3_vnp4_sn7 * vn2_vnp4_sn12
                                 + 114 vn3_vnp4_sn7 * vn2_vnp4_sn2
                                 + 109 vn3_vnp4_sn7 * vn2_vnp4_sn15
                                 + 147 vn3_vnp4_sn5 * vn2_vnp4_sn12
                                 + 192 vn3_vnp4_sn5 * vn2_vnp4_sn2
                                 + 242 vn3_vnp4_sn5 * vn2_vnp4_sn15 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_2#0: vn3_vnp1_sn2 + vn3_vnp2_sn2
                                 + 5 vn2_vnp4_sn2 <= 8
 CPU_capacity_of_substrate_node_3#1: 4 vn1_vnp1_sn3 <= 8
 CPU_capacity_of_substrate_node_4#2: vn3_vnp1_sn4 <= 7
 CPU_capacity_of_substrate_node_5#3: 2 vn1_vnp2_sn5 + 3 vn3_vnp4_sn5 <= 5
 CPU_capacity_of_substrate_node_6#4: 5 vn2_vnp1_sn6 <= 8
 CPU_capacity_of_substrate_node_7#5: 3 vn3_vnp4_sn7 <= 5
 CPU_capacity_of_substrate_node_8#6: 5 vn1_vnp4_sn8 <= 7
 CPU_capacity_of_substrate_node_9#7: vn3_vnp2_sn9 + 4 vn2_vnp3_sn9 <= 4
 CPU_capacity_of_substrate_node_10#8: 3 vn4_vnp1_sn10 + vn1_vnp3_sn10
                                 + 5 vn1_vnp4_sn10 <= 3
 CPU_capacity_of_substrate_node_11#9: 3 vn3_vnp4_sn11 <= 8
 CPU_capacity_of_substrate_node_12#10: 4 vn2_vnp3_sn12 + 5 vn2_vnp4_sn12 <= 3
 CPU_capacity_of_substrate_node_13#11: 3 vn2_vnp2_sn13 + 5 vn3_vnp3_sn13 <= 8
 CPU_capacity_of_substrate_node_15#12: 5 vn2_vnp4_sn15 <= 5
 CPU_capacity_of_substrate_node_16#13: 5 vn1_vnp4_sn16 <= 7
 CPU_capacity_of_substrate_node_18#14: 3 vn4_vnp1_sn18 + 3 vn2_vnp2_sn18
                                 + 5 vn3_vnp3_sn18 <= 4
 CPU_capacity_of_substrate_node_20#15: 3 vn2_vnp2_sn20 <= 7
Bounds
 0 <= vnp1 <= 1
 0 <= vn2_vnp1_sn6 <= 1
 0 <= vn1_vnp1_sn3 <= 1
 0 <= vn4_vnp1_sn10 <= 1
 0 <= vn4_vnp1_sn18 <= 1
 0 <= vn3_vnp1_sn4 <= 1
 0 <= vn3_vnp1_sn2 <= 1
 0 <= vnp2 <= 1
 0 <= vn2_vnp2_sn13 <= 1
 0 <= vn1_vnp2_sn5 <= 1
 0 <= vn2_vnp2_sn20 <= 1
 0 <= vn2_vnp2_sn18 <= 1
 0 <= vn3_vnp2_sn9 <= 1
 0 <= vn3_vnp2_sn2 <= 1
 0 <= vnp3 <= 1
 0 <= vn3_vnp3_sn13 <= 1
 0 <= vn1_vnp3_sn10 <= 1
 0 <= vn3_vnp3_sn18 <= 1
 0 <= vn2_vnp3_sn9 <= 1
 0 <= vn2_vnp3_sn12 <= 1
 0 <= vnp4 <= 1
 0 <= vn3_vnp4_sn11 <= 1
 0 <= vn1_vnp4_sn10 <= 1
 0 <= vn1_vnp4_sn8 <= 1
 0 <= vn1_vnp4_sn16 <= 1
 0 <= vn3_vnp4_sn7 <= 1
 0 <= vn3_vnp4_sn5 <= 1
 0 <= vn2_vnp4_sn12 <= 1
 0 <= vn2_vnp4_sn2 <= 1
 0 <= vn2_vnp4_sn15 <= 1
Binaries
 vnp1  vn2_vnp1_sn6  vn1_vnp1_sn3  vn4_vnp1_sn10  vn4_vnp1_sn18  vn3_vnp1_sn4 
 vn3_vnp1_sn2  vnp2  vn2_vnp2_sn13  vn1_vnp2_sn5  vn2_vnp2_sn20  vn2_vnp2_sn18 
 vn3_vnp2_sn9  vn3_vnp2_sn2  vnp3  vn3_vnp3_sn13  vn1_vnp3_sn10  vn3_vnp3_sn18 
 vn2_vnp3_sn9  vn2_vnp3_sn12  vnp4  vn3_vnp4_sn11  vn1_vnp4_sn10  vn1_vnp4_sn8 
 vn1_vnp4_sn16  vn3_vnp4_sn7  vn3_vnp4_sn5  vn2_vnp4_sn12  vn2_vnp4_sn2 
 vn2_vnp4_sn15 
End
