\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 478 vnp1 + 1619 vnp2 + 1019 vnp3 + 1938 vnp4
      + [ - 120 vn3_vnp1_sn16 * vn1_vnp1_sn15
      - 240 vn3_vnp1_sn16 * vn1_vnp1_sn7 - 278 vn3_vnp1_sn16 * vn2_vnp1_sn3
      - 70 vn3_vnp1_sn16 * vn4_vnp1_sn1 - 22 vn2_vnp1_sn3 * vn4_vnp1_sn1
      - 300 vn3_vnp2_sn20 * vn1_vnp2_sn18 - 76 vn3_vnp2_sn20 * vn4_vnp2_sn7
      - 232 vn1_vnp2_sn18 * vn3_vnp2_sn9 - 606 vn1_vnp2_sn18 * vn2_vnp2_sn13
      - 140 vn3_vnp2_sn9 * vn4_vnp2_sn7 - 300 vn2_vnp2_sn13 * vn4_vnp2_sn7
      - 298 vn3_vnp3_sn20 * vn1_vnp3_sn11 - 38 vn3_vnp3_sn20 * vn4_vnp3_sn7
      - 440 vn1_vnp3_sn11 * vn3_vnp3_sn2 - 242 vn1_vnp3_sn11 * vn4_vnp3_sn7
      - 50 vn3_vnp3_sn2 * vn4_vnp3_sn7 - 308 vn4_vnp3_sn7 * vn2_vnp3_sn18
      - 240 vn4_vnp3_sn7 * vn2_vnp3_sn16 - 476 vn4_vnp4_sn20 * vn1_vnp4_sn10
      - 128 vn4_vnp4_sn20 * vn1_vnp4_sn7 - 310 vn4_vnp4_sn20 * vn1_vnp4_sn11
      - 444 vn4_vnp4_sn20 * vn3_vnp4_sn13 - 134 vn4_vnp4_sn20 * vn2_vnp4_sn4
      - 226 vn4_vnp4_sn20 * vn2_vnp4_sn9 - 166 vn4_vnp4_sn20 * vn2_vnp4_sn3
      - 256 vn1_vnp4_sn10 * vn3_vnp4_sn13 - 280 vn1_vnp4_sn10 * vn2_vnp4_sn4
      - 138 vn1_vnp4_sn10 * vn2_vnp4_sn9 - 338 vn1_vnp4_sn10 * vn2_vnp4_sn3
      - 588 vn1_vnp4_sn7 * vn3_vnp4_sn13 - 178 vn1_vnp4_sn7 * vn2_vnp4_sn4
      - 336 vn1_vnp4_sn7 * vn2_vnp4_sn9 - 226 vn1_vnp4_sn7 * vn2_vnp4_sn3
      - 162 vn1_vnp4_sn11 * vn3_vnp4_sn13 - 314 vn1_vnp4_sn11 * vn2_vnp4_sn4
      - 172 vn1_vnp4_sn11 * vn2_vnp4_sn9 - 372 vn1_vnp4_sn11 * vn2_vnp4_sn3
      - 302 vn3_vnp4_sn13 * vn2_vnp4_sn4 - 172 vn3_vnp4_sn13 * vn2_vnp4_sn9
      - 214 vn3_vnp4_sn13 * vn2_vnp4_sn3 ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn15
                                 + vn1_vnp1_sn7 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn3 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn16 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn1 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn18 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn13 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn20
                                 + vn3_vnp2_sn9 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#7: - vnp2 + vn4_vnp2_sn7 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#8: - vnp3 + vn1_vnp3_sn11 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#9: - vnp3 + vn2_vnp3_sn18
                                 + vn2_vnp3_sn16 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#10: - vnp3 + vn3_vnp3_sn20
                                 + vn3_vnp3_sn2 <= 0
 _Embedding_clash_const_of_vnode4_vnp_3#11: - vnp3 + vn4_vnp3_sn7 <= 0
 _Embedding_clash_const_of_vnode1_vnp_4#12: - vnp4 + vn1_vnp4_sn10
                                 + vn1_vnp4_sn7 + vn1_vnp4_sn11 <= 0
 _Embedding_clash_const_of_vnode2_vnp_4#13: - vnp4 + vn2_vnp4_sn4
                                 + vn2_vnp4_sn9 + vn2_vnp4_sn3 <= 0
 _Embedding_clash_const_of_vnode3_vnp_4#14: - vnp4 + vn3_vnp4_sn13 <= 0
 _Embedding_clash_const_of_vnode4_vnp_4#15: - vnp4 + vn4_vnp4_sn20 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn3_vnp1_sn16 * vn1_vnp1_sn15
                                 - vn3_vnp1_sn16 * vn1_vnp1_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn3_vnp1_sn16 * vn2_vnp1_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn3_vnp1_sn16 * vn4_vnp1_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn2_vnp1_sn3 * vn4_vnp1_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_5#4: vnp2
                                 + [ - vn3_vnp2_sn20 * vn1_vnp2_sn18
                                 - vn1_vnp2_sn18 * vn3_vnp2_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn1_vnp2_sn18 * vn2_vnp2_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn3_vnp2_sn20 * vn4_vnp2_sn7
                                 - vn3_vnp2_sn9 * vn4_vnp2_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_8#7: vnp2
                                 + [ - vn2_vnp2_sn13 * vn4_vnp2_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_9#8: vnp3
                                 + [ - vn3_vnp3_sn20 * vn1_vnp3_sn11
                                 - vn1_vnp3_sn11 * vn3_vnp3_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_10#9: vnp3
                                 + [ - vn4_vnp3_sn7 * vn2_vnp3_sn18
                                 - vn4_vnp3_sn7 * vn2_vnp3_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_11#10: vnp3
                                 + [ - vn3_vnp3_sn20 * vn4_vnp3_sn7
                                 - vn3_vnp3_sn2 * vn4_vnp3_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_12#11: vnp3
                                 + [ - vn1_vnp3_sn11 * vn4_vnp3_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_13#12: vnp4
                                 + [ - vn4_vnp4_sn20 * vn1_vnp4_sn10
                                 - vn4_vnp4_sn20 * vn1_vnp4_sn7
                                 - vn4_vnp4_sn20 * vn1_vnp4_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_14#13: vnp4
                                 + [ - vn3_vnp4_sn13 * vn2_vnp4_sn4
                                 - vn3_vnp4_sn13 * vn2_vnp4_sn9
                                 - vn3_vnp4_sn13 * vn2_vnp4_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_15#14: vnp4
                                 + [ - vn4_vnp4_sn20 * vn3_vnp4_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_16#15: vnp4
                                 + [ - vn4_vnp4_sn20 * vn2_vnp4_sn4
                                 - vn4_vnp4_sn20 * vn2_vnp4_sn9
                                 - vn4_vnp4_sn20 * vn2_vnp4_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_17#16: vnp4
                                 + [ - vn1_vnp4_sn10 * vn3_vnp4_sn13
                                 - vn1_vnp4_sn7 * vn3_vnp4_sn13
                                 - vn1_vnp4_sn11 * vn3_vnp4_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_18#17: vnp4
                                 + [ - vn1_vnp4_sn10 * vn2_vnp4_sn4
                                 - vn1_vnp4_sn10 * vn2_vnp4_sn9
                                 - vn1_vnp4_sn10 * vn2_vnp4_sn3
                                 - vn1_vnp4_sn7 * vn2_vnp4_sn4
                                 - vn1_vnp4_sn7 * vn2_vnp4_sn9
                                 - vn1_vnp4_sn7 * vn2_vnp4_sn3
                                 - vn1_vnp4_sn11 * vn2_vnp4_sn4
                                 - vn1_vnp4_sn11 * vn2_vnp4_sn9
                                 - vn1_vnp4_sn11 * vn2_vnp4_sn3 ] <= 0
 q19#18:                         - 478 vnp1 - 1619 vnp2 - 1019 vnp3 - 1938 vnp4
                                 + [ 60 vn3_vnp1_sn16 * vn1_vnp1_sn15
                                 + 120 vn3_vnp1_sn16 * vn1_vnp1_sn7
                                 + 139 vn3_vnp1_sn16 * vn2_vnp1_sn3
                                 + 35 vn3_vnp1_sn16 * vn4_vnp1_sn1
                                 + 11 vn2_vnp1_sn3 * vn4_vnp1_sn1
                                 + 150 vn3_vnp2_sn20 * vn1_vnp2_sn18
                                 + 38 vn3_vnp2_sn20 * vn4_vnp2_sn7
                                 + 116 vn1_vnp2_sn18 * vn3_vnp2_sn9
                                 + 303 vn1_vnp2_sn18 * vn2_vnp2_sn13
                                 + 70 vn3_vnp2_sn9 * vn4_vnp2_sn7
                                 + 150 vn2_vnp2_sn13 * vn4_vnp2_sn7
                                 + 149 vn3_vnp3_sn20 * vn1_vnp3_sn11
                                 + 19 vn3_vnp3_sn20 * vn4_vnp3_sn7
                                 + 220 vn1_vnp3_sn11 * vn3_vnp3_sn2
                                 + 121 vn1_vnp3_sn11 * vn4_vnp3_sn7
                                 + 25 vn3_vnp3_sn2 * vn4_vnp3_sn7
                                 + 154 vn4_vnp3_sn7 * vn2_vnp3_sn18
                                 + 120 vn4_vnp3_sn7 * vn2_vnp3_sn16
                                 + 238 vn4_vnp4_sn20 * vn1_vnp4_sn10
                                 + 64 vn4_vnp4_sn20 * vn1_vnp4_sn7
                                 + 155 vn4_vnp4_sn20 * vn1_vnp4_sn11
                                 + 222 vn4_vnp4_sn20 * vn3_vnp4_sn13
                                 + 67 vn4_vnp4_sn20 * vn2_vnp4_sn4
                                 + 113 vn4_vnp4_sn20 * vn2_vnp4_sn9
                                 + 83 vn4_vnp4_sn20 * vn2_vnp4_sn3
                                 + 128 vn1_vnp4_sn10 * vn3_vnp4_sn13
                                 + 140 vn1_vnp4_sn10 * vn2_vnp4_sn4
                                 + 69 vn1_vnp4_sn10 * vn2_vnp4_sn9
                                 + 169 vn1_vnp4_sn10 * vn2_vnp4_sn3
                                 + 294 vn1_vnp4_sn7 * vn3_vnp4_sn13
                                 + 89 vn1_vnp4_sn7 * vn2_vnp4_sn4
                                 + 168 vn1_vnp4_sn7 * vn2_vnp4_sn9
                                 + 113 vn1_vnp4_sn7 * vn2_vnp4_sn3
                                 + 81 vn1_vnp4_sn11 * vn3_vnp4_sn13
                                 + 157 vn1_vnp4_sn11 * vn2_vnp4_sn4
                                 + 86 vn1_vnp4_sn11 * vn2_vnp4_sn9
                                 + 186 vn1_vnp4_sn11 * vn2_vnp4_sn3
                                 + 151 vn3_vnp4_sn13 * vn2_vnp4_sn4
                                 + 86 vn3_vnp4_sn13 * vn2_vnp4_sn9
                                 + 107 vn3_vnp4_sn13 * vn2_vnp4_sn3 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_2#0: vn3_vnp3_sn2 <= 8
 CPU_capacity_of_substrate_node_3#1: vn2_vnp1_sn3 + vn2_vnp4_sn3 <= 2
 CPU_capacity_of_substrate_node_4#2: vn2_vnp4_sn4 <= 5
 CPU_capacity_of_substrate_node_7#3: 3 vn1_vnp1_sn7 + 3 vn4_vnp2_sn7
                                 + 3 vn4_vnp3_sn7 + 3 vn1_vnp4_sn7 <= 5
 CPU_capacity_of_substrate_node_9#4: 3 vn3_vnp2_sn9 + vn2_vnp4_sn9 <= 8
 CPU_capacity_of_substrate_node_10#5: 3 vn1_vnp4_sn10 <= 8
 CPU_capacity_of_substrate_node_11#6: 3 vn1_vnp3_sn11 + 3 vn1_vnp4_sn11 <= 8
 CPU_capacity_of_substrate_node_13#7: 3 vn2_vnp2_sn13 + 3 vn3_vnp4_sn13 <= 8
 CPU_capacity_of_substrate_node_15#8: 3 vn1_vnp1_sn15 <= 2
 CPU_capacity_of_substrate_node_16#9: 3 vn3_vnp1_sn16 + 3 vn2_vnp3_sn16 <= 8
 CPU_capacity_of_substrate_node_18#10: vn1_vnp2_sn18 + 3 vn2_vnp3_sn18 <= 5
 CPU_capacity_of_substrate_node_20#11: 3 vn3_vnp2_sn20 + vn3_vnp3_sn20
                                 + 3 vn4_vnp4_sn20 <= 8
Bounds
 0 <= vnp1 <= 1
 0 <= vn3_vnp1_sn16 <= 1
 0 <= vn1_vnp1_sn15 <= 1
 0 <= vn1_vnp1_sn7 <= 1
 0 <= vn2_vnp1_sn3 <= 1
 0 <= vn4_vnp1_sn1 <= 1
 0 <= vnp2 <= 1
 0 <= vn3_vnp2_sn20 <= 1
 0 <= vn1_vnp2_sn18 <= 1
 0 <= vn3_vnp2_sn9 <= 1
 0 <= vn2_vnp2_sn13 <= 1
 0 <= vn4_vnp2_sn7 <= 1
 0 <= vnp3 <= 1
 0 <= vn3_vnp3_sn20 <= 1
 0 <= vn1_vnp3_sn11 <= 1
 0 <= vn3_vnp3_sn2 <= 1
 0 <= vn4_vnp3_sn7 <= 1
 0 <= vn2_vnp3_sn18 <= 1
 0 <= vn2_vnp3_sn16 <= 1
 0 <= vnp4 <= 1
 0 <= vn4_vnp4_sn20 <= 1
 0 <= vn1_vnp4_sn10 <= 1
 0 <= vn1_vnp4_sn7 <= 1
 0 <= vn1_vnp4_sn11 <= 1
 0 <= vn3_vnp4_sn13 <= 1
 0 <= vn2_vnp4_sn4 <= 1
 0 <= vn2_vnp4_sn9 <= 1
 0 <= vn2_vnp4_sn3 <= 1
Binaries
 vnp1  vn3_vnp1_sn16  vn1_vnp1_sn15  vn1_vnp1_sn7  vn2_vnp1_sn3  vn4_vnp1_sn1 
 vnp2  vn3_vnp2_sn20  vn1_vnp2_sn18  vn3_vnp2_sn9  vn2_vnp2_sn13  vn4_vnp2_sn7 
 vnp3  vn3_vnp3_sn20  vn1_vnp3_sn11  vn3_vnp3_sn2  vn4_vnp3_sn7  vn2_vnp3_sn18 
 vn2_vnp3_sn16  vnp4  vn4_vnp4_sn20  vn1_vnp4_sn10  vn1_vnp4_sn7 
 vn1_vnp4_sn11  vn3_vnp4_sn13  vn2_vnp4_sn4  vn2_vnp4_sn9  vn2_vnp4_sn3 
End
