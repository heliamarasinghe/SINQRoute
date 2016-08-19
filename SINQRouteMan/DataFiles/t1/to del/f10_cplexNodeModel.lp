\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 240 vnp1 + 767 vnp2 + 696 vnp3 + [ - 72 vn2_vnp1_sn13 * vn1_vnp1_sn4
      - 110 vn2_vnp1_sn13 * vn3_vnp1_sn8 - 32 vn2_vnp1_sn13 * vn3_vnp1_sn12
      - 56 vn2_vnp1_sn13 * vn3_vnp1_sn11 - 36 vn1_vnp1_sn4 * vn2_vnp1_sn1
      - 42 vn1_vnp1_sn4 * vn3_vnp1_sn8 - 44 vn1_vnp1_sn4 * vn3_vnp1_sn12
      - 66 vn1_vnp1_sn4 * vn3_vnp1_sn11 - 70 vn2_vnp1_sn1 * vn3_vnp1_sn8
      - 72 vn2_vnp1_sn1 * vn3_vnp1_sn12 - 90 vn2_vnp1_sn1 * vn3_vnp1_sn11
      - 60 vn4_vnp2_sn10 * vn1_vnp2_sn11 - 84 vn4_vnp2_sn10 * vn1_vnp2_sn9
      - 160 vn4_vnp2_sn10 * vn3_vnp2_sn15 - 306 vn1_vnp2_sn11 * vn2_vnp2_sn1
      - 216 vn1_vnp2_sn11 * vn2_vnp2_sn3 - 246 vn1_vnp2_sn11 * vn2_vnp2_sn18
      - 198 vn1_vnp2_sn9 * vn2_vnp2_sn1 - 144 vn1_vnp2_sn9 * vn2_vnp2_sn3
      - 156 vn1_vnp2_sn9 * vn2_vnp2_sn18 - 332 vn3_vnp2_sn15 * vn2_vnp2_sn1
      - 262 vn3_vnp2_sn15 * vn2_vnp2_sn3 - 246 vn3_vnp2_sn15 * vn2_vnp2_sn18
      - 132 vn4_vnp3_sn13 * vn1_vnp3_sn8 - 164 vn4_vnp3_sn13 * vn1_vnp3_sn4
      - 124 vn4_vnp3_sn13 * vn1_vnp3_sn14 - 140 vn4_vnp3_sn13 * vn2_vnp3_sn9
      - 280 vn4_vnp3_sn13 * vn2_vnp3_sn18 - 136 vn4_vnp3_sn13 * vn2_vnp3_sn11
      - 334 vn4_vnp3_sn13 * vn3_vnp3_sn6 - 272 vn4_vnp3_sn13 * vn3_vnp3_sn7
      - 300 vn4_vnp3_sn13 * vn3_vnp3_sn20 - 80 vn1_vnp3_sn8 * vn4_vnp3_sn16
      - 100 vn1_vnp3_sn8 * vn2_vnp3_sn9 - 116 vn1_vnp3_sn8 * vn2_vnp3_sn18
      - 196 vn1_vnp3_sn8 * vn2_vnp3_sn11 - 156 vn1_vnp3_sn4 * vn4_vnp3_sn16
      - 160 vn1_vnp3_sn4 * vn2_vnp3_sn9 - 264 vn1_vnp3_sn4 * vn2_vnp3_sn18
      - 256 vn1_vnp3_sn4 * vn2_vnp3_sn11 - 112 vn1_vnp3_sn14 * vn4_vnp3_sn16
      - 88 vn1_vnp3_sn14 * vn2_vnp3_sn9 - 216 vn1_vnp3_sn14 * vn2_vnp3_sn18
      - 104 vn1_vnp3_sn14 * vn2_vnp3_sn11 - 68 vn4_vnp3_sn16 * vn2_vnp3_sn9
      - 136 vn4_vnp3_sn16 * vn2_vnp3_sn18 - 156 vn4_vnp3_sn16 * vn2_vnp3_sn11
      - 228 vn4_vnp3_sn16 * vn3_vnp3_sn6 - 214 vn4_vnp3_sn16 * vn3_vnp3_sn7
      - 164 vn4_vnp3_sn16 * vn3_vnp3_sn20 ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn4 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn13
                                 + vn2_vnp1_sn1 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn8
                                 + vn3_vnp1_sn12 + vn3_vnp1_sn11 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#3: - vnp2 + vn1_vnp2_sn11
                                 + vn1_vnp2_sn9 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#4: - vnp2 + vn2_vnp2_sn1 + vn2_vnp2_sn3
                                 + vn2_vnp2_sn18 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#5: - vnp2 + vn3_vnp2_sn15 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#6: - vnp2 + vn4_vnp2_sn10 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#7: - vnp3 + vn1_vnp3_sn8 + vn1_vnp3_sn4
                                 + vn1_vnp3_sn14 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#8: - vnp3 + vn2_vnp3_sn9
                                 + vn2_vnp3_sn18 + vn2_vnp3_sn11 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#9: - vnp3 + vn3_vnp3_sn6 + vn3_vnp3_sn7
                                 + vn3_vnp3_sn20 <= 0
 _Embedding_clash_const_of_vnode4_vnp_3#10: - vnp3 + vn4_vnp3_sn13
                                 + vn4_vnp3_sn16 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn2_vnp1_sn13 * vn1_vnp1_sn4
                                 - vn1_vnp1_sn4 * vn2_vnp1_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn2_vnp1_sn13 * vn3_vnp1_sn8
                                 - vn2_vnp1_sn13 * vn3_vnp1_sn12
                                 - vn2_vnp1_sn13 * vn3_vnp1_sn11
                                 - vn2_vnp1_sn1 * vn3_vnp1_sn8
                                 - vn2_vnp1_sn1 * vn3_vnp1_sn12
                                 - vn2_vnp1_sn1 * vn3_vnp1_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn1_vnp1_sn4 * vn3_vnp1_sn8
                                 - vn1_vnp1_sn4 * vn3_vnp1_sn12
                                 - vn1_vnp1_sn4 * vn3_vnp1_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_4#3: vnp2
                                 + [ - vn4_vnp2_sn10 * vn1_vnp2_sn11
                                 - vn4_vnp2_sn10 * vn1_vnp2_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_5#4: vnp2
                                 + [ - vn3_vnp2_sn15 * vn2_vnp2_sn1
                                 - vn3_vnp2_sn15 * vn2_vnp2_sn3
                                 - vn3_vnp2_sn15 * vn2_vnp2_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn4_vnp2_sn10 * vn3_vnp2_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn1_vnp2_sn11 * vn2_vnp2_sn1
                                 - vn1_vnp2_sn11 * vn2_vnp2_sn3
                                 - vn1_vnp2_sn11 * vn2_vnp2_sn18
                                 - vn1_vnp2_sn9 * vn2_vnp2_sn1
                                 - vn1_vnp2_sn9 * vn2_vnp2_sn3
                                 - vn1_vnp2_sn9 * vn2_vnp2_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_8#7: vnp3
                                 + [ - vn4_vnp3_sn13 * vn1_vnp3_sn8
                                 - vn4_vnp3_sn13 * vn1_vnp3_sn4
                                 - vn4_vnp3_sn13 * vn1_vnp3_sn14
                                 - vn1_vnp3_sn8 * vn4_vnp3_sn16
                                 - vn1_vnp3_sn4 * vn4_vnp3_sn16
                                 - vn1_vnp3_sn14 * vn4_vnp3_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_9#8: vnp3
                                 + [ - vn4_vnp3_sn13 * vn2_vnp3_sn9
                                 - vn4_vnp3_sn13 * vn2_vnp3_sn18
                                 - vn4_vnp3_sn13 * vn2_vnp3_sn11
                                 - vn4_vnp3_sn16 * vn2_vnp3_sn9
                                 - vn4_vnp3_sn16 * vn2_vnp3_sn18
                                 - vn4_vnp3_sn16 * vn2_vnp3_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_10#9: vnp3
                                 + [ - vn4_vnp3_sn13 * vn3_vnp3_sn6
                                 - vn4_vnp3_sn13 * vn3_vnp3_sn7
                                 - vn4_vnp3_sn13 * vn3_vnp3_sn20
                                 - vn4_vnp3_sn16 * vn3_vnp3_sn6
                                 - vn4_vnp3_sn16 * vn3_vnp3_sn7
                                 - vn4_vnp3_sn16 * vn3_vnp3_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_11#10: vnp3
                                 + [ - vn1_vnp3_sn8 * vn2_vnp3_sn9
                                 - vn1_vnp3_sn8 * vn2_vnp3_sn18
                                 - vn1_vnp3_sn8 * vn2_vnp3_sn11
                                 - vn1_vnp3_sn4 * vn2_vnp3_sn9
                                 - vn1_vnp3_sn4 * vn2_vnp3_sn18
                                 - vn1_vnp3_sn4 * vn2_vnp3_sn11
                                 - vn1_vnp3_sn14 * vn2_vnp3_sn9
                                 - vn1_vnp3_sn14 * vn2_vnp3_sn18
                                 - vn1_vnp3_sn14 * vn2_vnp3_sn11 ] <= 0
 q12#11:                         - 240 vnp1 - 767 vnp2 - 696 vnp3
                                 + [ 36 vn2_vnp1_sn13 * vn1_vnp1_sn4
                                 + 55 vn2_vnp1_sn13 * vn3_vnp1_sn8
                                 + 16 vn2_vnp1_sn13 * vn3_vnp1_sn12
                                 + 28 vn2_vnp1_sn13 * vn3_vnp1_sn11
                                 + 18 vn1_vnp1_sn4 * vn2_vnp1_sn1
                                 + 21 vn1_vnp1_sn4 * vn3_vnp1_sn8
                                 + 22 vn1_vnp1_sn4 * vn3_vnp1_sn12
                                 + 33 vn1_vnp1_sn4 * vn3_vnp1_sn11
                                 + 35 vn2_vnp1_sn1 * vn3_vnp1_sn8
                                 + 36 vn2_vnp1_sn1 * vn3_vnp1_sn12
                                 + 45 vn2_vnp1_sn1 * vn3_vnp1_sn11
                                 + 30 vn4_vnp2_sn10 * vn1_vnp2_sn11
                                 + 42 vn4_vnp2_sn10 * vn1_vnp2_sn9
                                 + 80 vn4_vnp2_sn10 * vn3_vnp2_sn15
                                 + 153 vn1_vnp2_sn11 * vn2_vnp2_sn1
                                 + 108 vn1_vnp2_sn11 * vn2_vnp2_sn3
                                 + 123 vn1_vnp2_sn11 * vn2_vnp2_sn18
                                 + 99 vn1_vnp2_sn9 * vn2_vnp2_sn1
                                 + 72 vn1_vnp2_sn9 * vn2_vnp2_sn3
                                 + 78 vn1_vnp2_sn9 * vn2_vnp2_sn18
                                 + 166 vn3_vnp2_sn15 * vn2_vnp2_sn1
                                 + 131 vn3_vnp2_sn15 * vn2_vnp2_sn3
                                 + 123 vn3_vnp2_sn15 * vn2_vnp2_sn18
                                 + 66 vn4_vnp3_sn13 * vn1_vnp3_sn8
                                 + 82 vn4_vnp3_sn13 * vn1_vnp3_sn4
                                 + 62 vn4_vnp3_sn13 * vn1_vnp3_sn14
                                 + 70 vn4_vnp3_sn13 * vn2_vnp3_sn9
                                 + 140 vn4_vnp3_sn13 * vn2_vnp3_sn18
                                 + 68 vn4_vnp3_sn13 * vn2_vnp3_sn11
                                 + 167 vn4_vnp3_sn13 * vn3_vnp3_sn6
                                 + 136 vn4_vnp3_sn13 * vn3_vnp3_sn7
                                 + 150 vn4_vnp3_sn13 * vn3_vnp3_sn20
                                 + 40 vn1_vnp3_sn8 * vn4_vnp3_sn16
                                 + 50 vn1_vnp3_sn8 * vn2_vnp3_sn9
                                 + 58 vn1_vnp3_sn8 * vn2_vnp3_sn18
                                 + 98 vn1_vnp3_sn8 * vn2_vnp3_sn11
                                 + 78 vn1_vnp3_sn4 * vn4_vnp3_sn16
                                 + 80 vn1_vnp3_sn4 * vn2_vnp3_sn9
                                 + 132 vn1_vnp3_sn4 * vn2_vnp3_sn18
                                 + 128 vn1_vnp3_sn4 * vn2_vnp3_sn11
                                 + 56 vn1_vnp3_sn14 * vn4_vnp3_sn16
                                 + 44 vn1_vnp3_sn14 * vn2_vnp3_sn9
                                 + 108 vn1_vnp3_sn14 * vn2_vnp3_sn18
                                 + 52 vn1_vnp3_sn14 * vn2_vnp3_sn11
                                 + 34 vn4_vnp3_sn16 * vn2_vnp3_sn9
                                 + 68 vn4_vnp3_sn16 * vn2_vnp3_sn18
                                 + 78 vn4_vnp3_sn16 * vn2_vnp3_sn11
                                 + 114 vn4_vnp3_sn16 * vn3_vnp3_sn6
                                 + 107 vn4_vnp3_sn16 * vn3_vnp3_sn7
                                 + 82 vn4_vnp3_sn16 * vn3_vnp3_sn20 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: vn2_vnp1_sn1 + 3 vn2_vnp2_sn1 <= 8
 CPU_capacity_of_substrate_node_3#1: 3 vn2_vnp2_sn3 <= 8
 CPU_capacity_of_substrate_node_4#2: vn1_vnp1_sn4 + 2 vn1_vnp3_sn4 <= 8
 CPU_capacity_of_substrate_node_6#3: 5 vn3_vnp3_sn6 <= 8
 CPU_capacity_of_substrate_node_7#4: 5 vn3_vnp3_sn7 <= 8
 CPU_capacity_of_substrate_node_8#5: vn3_vnp1_sn8 + 2 vn1_vnp3_sn8 <= 8
 CPU_capacity_of_substrate_node_9#6: 3 vn1_vnp2_sn9 + 4 vn2_vnp3_sn9 <= 8
 CPU_capacity_of_substrate_node_10#7: 5 vn4_vnp2_sn10 <= 8
 CPU_capacity_of_substrate_node_11#8: vn3_vnp1_sn11 + 3 vn1_vnp2_sn11
                                 + 4 vn2_vnp3_sn11 <= 8
 CPU_capacity_of_substrate_node_12#9: vn3_vnp1_sn12 <= 8
 CPU_capacity_of_substrate_node_13#10: vn2_vnp1_sn13 + 4 vn4_vnp3_sn13 <= 8
 CPU_capacity_of_substrate_node_14#11: 2 vn1_vnp3_sn14 <= 8
 CPU_capacity_of_substrate_node_15#12: 4 vn3_vnp2_sn15 <= 8
 CPU_capacity_of_substrate_node_16#13: 4 vn4_vnp3_sn16 <= 8
 CPU_capacity_of_substrate_node_18#14: 3 vn2_vnp2_sn18 + 4 vn2_vnp3_sn18 <= 8
 CPU_capacity_of_substrate_node_20#15: 5 vn3_vnp3_sn20 <= 8
Bounds
 0 <= vnp1 <= 1
 0 <= vn2_vnp1_sn13 <= 1
 0 <= vn1_vnp1_sn4 <= 1
 0 <= vn2_vnp1_sn1 <= 1
 0 <= vn3_vnp1_sn8 <= 1
 0 <= vn3_vnp1_sn12 <= 1
 0 <= vn3_vnp1_sn11 <= 1
 0 <= vnp2 <= 1
 0 <= vn4_vnp2_sn10 <= 1
 0 <= vn1_vnp2_sn11 <= 1
 0 <= vn1_vnp2_sn9 <= 1
 0 <= vn3_vnp2_sn15 <= 1
 0 <= vn2_vnp2_sn1 <= 1
 0 <= vn2_vnp2_sn3 <= 1
 0 <= vn2_vnp2_sn18 <= 1
 0 <= vnp3 <= 1
 0 <= vn4_vnp3_sn13 <= 1
 0 <= vn1_vnp3_sn8 <= 1
 0 <= vn1_vnp3_sn4 <= 1
 0 <= vn1_vnp3_sn14 <= 1
 0 <= vn4_vnp3_sn16 <= 1
 0 <= vn2_vnp3_sn9 <= 1
 0 <= vn2_vnp3_sn18 <= 1
 0 <= vn2_vnp3_sn11 <= 1
 0 <= vn3_vnp3_sn6 <= 1
 0 <= vn3_vnp3_sn7 <= 1
 0 <= vn3_vnp3_sn20 <= 1
Binaries
 vnp1  vn2_vnp1_sn13  vn1_vnp1_sn4  vn2_vnp1_sn1  vn3_vnp1_sn8  vn3_vnp1_sn12 
 vn3_vnp1_sn11  vnp2  vn4_vnp2_sn10  vn1_vnp2_sn11  vn1_vnp2_sn9 
 vn3_vnp2_sn15  vn2_vnp2_sn1  vn2_vnp2_sn3  vn2_vnp2_sn18  vnp3  vn4_vnp3_sn13 
 vn1_vnp3_sn8  vn1_vnp3_sn4  vn1_vnp3_sn14  vn4_vnp3_sn16  vn2_vnp3_sn9 
 vn2_vnp3_sn18  vn2_vnp3_sn11  vn3_vnp3_sn6  vn3_vnp3_sn7  vn3_vnp3_sn20 
End
