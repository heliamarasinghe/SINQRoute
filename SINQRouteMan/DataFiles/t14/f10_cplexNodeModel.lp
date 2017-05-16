\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1026 vnp1 + 1003 vnp2 + [ - 56 vn3_vnp1_sn11 * vn1_vnp1_sn14
      - 90 vn3_vnp1_sn11 * vn1_vnp1_sn9 - 114 vn3_vnp1_sn11 * vn2_vnp1_sn7
      - 144 vn3_vnp1_sn11 * vn4_vnp1_sn3 - 58 vn3_vnp1_sn11 * vn4_vnp1_sn12
      - 228 vn1_vnp1_sn14 * vn2_vnp1_sn7 - 166 vn1_vnp1_sn14 * vn4_vnp1_sn3
      - 126 vn1_vnp1_sn14 * vn4_vnp1_sn12 - 192 vn1_vnp1_sn9 * vn2_vnp1_sn7
      - 134 vn1_vnp1_sn9 * vn4_vnp1_sn3 - 70 vn1_vnp1_sn9 * vn4_vnp1_sn12
      - 176 vn2_vnp1_sn7 * vn4_vnp1_sn3 - 332 vn2_vnp1_sn7 * vn4_vnp1_sn12
      - 212 vn3_vnp2_sn13 * vn1_vnp2_sn9 - 188 vn3_vnp2_sn13 * vn1_vnp2_sn17
      - 206 vn3_vnp2_sn13 * vn1_vnp2_sn20 - 100 vn3_vnp2_sn13 * vn4_vnp2_sn11
      - 358 vn3_vnp2_sn13 * vn2_vnp2_sn8 - 198 vn3_vnp2_sn13 * vn2_vnp2_sn6
      - 128 vn3_vnp2_sn13 * vn2_vnp2_sn12 - 180 vn1_vnp2_sn9 * vn3_vnp2_sn19
      - 66 vn1_vnp2_sn9 * vn2_vnp2_sn8 - 90 vn1_vnp2_sn9 * vn2_vnp2_sn6
      - 60 vn1_vnp2_sn9 * vn2_vnp2_sn12 - 42 vn1_vnp2_sn17 * vn3_vnp2_sn19
      - 30 vn1_vnp2_sn17 * vn2_vnp2_sn8 - 186 vn1_vnp2_sn17 * vn2_vnp2_sn6
      - 108 vn1_vnp2_sn17 * vn2_vnp2_sn12 - 114 vn1_vnp2_sn20 * vn3_vnp2_sn19
      - 78 vn1_vnp2_sn20 * vn2_vnp2_sn8 - 312 vn1_vnp2_sn20 * vn2_vnp2_sn6
      - 126 vn1_vnp2_sn20 * vn2_vnp2_sn12 - 162 vn3_vnp2_sn19 * vn4_vnp2_sn11
      - 186 vn3_vnp2_sn19 * vn2_vnp2_sn8 - 296 vn3_vnp2_sn19 * vn2_vnp2_sn6
      - 246 vn3_vnp2_sn19 * vn2_vnp2_sn12 - 120 vn4_vnp2_sn11 * vn2_vnp2_sn8
      - 152 vn4_vnp2_sn11 * vn2_vnp2_sn6 - 44 vn4_vnp2_sn11 * vn2_vnp2_sn12
      ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn14
                                 + vn1_vnp1_sn9 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn7 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn11 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn3
                                 + vn4_vnp1_sn12 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn9
                                 + vn1_vnp2_sn17 + vn1_vnp2_sn20 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn8 + vn2_vnp2_sn6
                                 + vn2_vnp2_sn12 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn13
                                 + vn3_vnp2_sn19 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#7: - vnp2 + vn4_vnp2_sn11 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn3_vnp1_sn11 * vn1_vnp1_sn14
                                 - vn3_vnp1_sn11 * vn1_vnp1_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn1_vnp1_sn14 * vn2_vnp1_sn7
                                 - vn1_vnp1_sn9 * vn2_vnp1_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn3_vnp1_sn11 * vn2_vnp1_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn2_vnp1_sn7 * vn4_vnp1_sn3
                                 - vn2_vnp1_sn7 * vn4_vnp1_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_5#4: vnp1
                                 + [ - vn3_vnp1_sn11 * vn4_vnp1_sn3
                                 - vn3_vnp1_sn11 * vn4_vnp1_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_6#5: vnp1
                                 + [ - vn1_vnp1_sn14 * vn4_vnp1_sn3
                                 - vn1_vnp1_sn14 * vn4_vnp1_sn12
                                 - vn1_vnp1_sn9 * vn4_vnp1_sn3
                                 - vn1_vnp1_sn9 * vn4_vnp1_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn3_vnp2_sn13 * vn1_vnp2_sn9
                                 - vn3_vnp2_sn13 * vn1_vnp2_sn17
                                 - vn3_vnp2_sn13 * vn1_vnp2_sn20
                                 - vn1_vnp2_sn9 * vn3_vnp2_sn19
                                 - vn1_vnp2_sn17 * vn3_vnp2_sn19
                                 - vn1_vnp2_sn20 * vn3_vnp2_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_8#7: vnp2
                                 + [ - vn4_vnp2_sn11 * vn2_vnp2_sn8
                                 - vn4_vnp2_sn11 * vn2_vnp2_sn6
                                 - vn4_vnp2_sn11 * vn2_vnp2_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_9#8: vnp2
                                 + [ - vn3_vnp2_sn13 * vn2_vnp2_sn8
                                 - vn3_vnp2_sn13 * vn2_vnp2_sn6
                                 - vn3_vnp2_sn13 * vn2_vnp2_sn12
                                 - vn3_vnp2_sn19 * vn2_vnp2_sn8
                                 - vn3_vnp2_sn19 * vn2_vnp2_sn6
                                 - vn3_vnp2_sn19 * vn2_vnp2_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_10#9: vnp2
                                 + [ - vn3_vnp2_sn13 * vn4_vnp2_sn11
                                 - vn3_vnp2_sn19 * vn4_vnp2_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_11#10: vnp2
                                 + [ - vn1_vnp2_sn9 * vn2_vnp2_sn8
                                 - vn1_vnp2_sn9 * vn2_vnp2_sn6
                                 - vn1_vnp2_sn9 * vn2_vnp2_sn12
                                 - vn1_vnp2_sn17 * vn2_vnp2_sn8
                                 - vn1_vnp2_sn17 * vn2_vnp2_sn6
                                 - vn1_vnp2_sn17 * vn2_vnp2_sn12
                                 - vn1_vnp2_sn20 * vn2_vnp2_sn8
                                 - vn1_vnp2_sn20 * vn2_vnp2_sn6
                                 - vn1_vnp2_sn20 * vn2_vnp2_sn12 ] <= 0
 q12#11:                         - 1026 vnp1 - 1003 vnp2
                                 + [ 28 vn3_vnp1_sn11 * vn1_vnp1_sn14
                                 + 45 vn3_vnp1_sn11 * vn1_vnp1_sn9
                                 + 57 vn3_vnp1_sn11 * vn2_vnp1_sn7
                                 + 72 vn3_vnp1_sn11 * vn4_vnp1_sn3
                                 + 29 vn3_vnp1_sn11 * vn4_vnp1_sn12
                                 + 114 vn1_vnp1_sn14 * vn2_vnp1_sn7
                                 + 83 vn1_vnp1_sn14 * vn4_vnp1_sn3
                                 + 63 vn1_vnp1_sn14 * vn4_vnp1_sn12
                                 + 96 vn1_vnp1_sn9 * vn2_vnp1_sn7
                                 + 67 vn1_vnp1_sn9 * vn4_vnp1_sn3
                                 + 35 vn1_vnp1_sn9 * vn4_vnp1_sn12
                                 + 88 vn2_vnp1_sn7 * vn4_vnp1_sn3
                                 + 166 vn2_vnp1_sn7 * vn4_vnp1_sn12
                                 + 106 vn3_vnp2_sn13 * vn1_vnp2_sn9
                                 + 94 vn3_vnp2_sn13 * vn1_vnp2_sn17
                                 + 103 vn3_vnp2_sn13 * vn1_vnp2_sn20
                                 + 50 vn3_vnp2_sn13 * vn4_vnp2_sn11
                                 + 179 vn3_vnp2_sn13 * vn2_vnp2_sn8
                                 + 99 vn3_vnp2_sn13 * vn2_vnp2_sn6
                                 + 64 vn3_vnp2_sn13 * vn2_vnp2_sn12
                                 + 90 vn1_vnp2_sn9 * vn3_vnp2_sn19
                                 + 33 vn1_vnp2_sn9 * vn2_vnp2_sn8
                                 + 45 vn1_vnp2_sn9 * vn2_vnp2_sn6
                                 + 30 vn1_vnp2_sn9 * vn2_vnp2_sn12
                                 + 21 vn1_vnp2_sn17 * vn3_vnp2_sn19
                                 + 15 vn1_vnp2_sn17 * vn2_vnp2_sn8
                                 + 93 vn1_vnp2_sn17 * vn2_vnp2_sn6
                                 + 54 vn1_vnp2_sn17 * vn2_vnp2_sn12
                                 + 57 vn1_vnp2_sn20 * vn3_vnp2_sn19
                                 + 39 vn1_vnp2_sn20 * vn2_vnp2_sn8
                                 + 156 vn1_vnp2_sn20 * vn2_vnp2_sn6
                                 + 63 vn1_vnp2_sn20 * vn2_vnp2_sn12
                                 + 81 vn3_vnp2_sn19 * vn4_vnp2_sn11
                                 + 93 vn3_vnp2_sn19 * vn2_vnp2_sn8
                                 + 148 vn3_vnp2_sn19 * vn2_vnp2_sn6
                                 + 123 vn3_vnp2_sn19 * vn2_vnp2_sn12
                                 + 60 vn4_vnp2_sn11 * vn2_vnp2_sn8
                                 + 76 vn4_vnp2_sn11 * vn2_vnp2_sn6
                                 + 22 vn4_vnp2_sn11 * vn2_vnp2_sn12 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_3#0: 3 vn4_vnp1_sn3 <= 2
 CPU_capacity_of_substrate_node_7#1: 3 vn2_vnp1_sn7 <= 1
 CPU_capacity_of_substrate_node_9#2: 3 vn1_vnp1_sn9 <= 5
 CPU_capacity_of_substrate_node_11#3: 3 vn3_vnp1_sn11 <= 7
 CPU_capacity_of_substrate_node_12#4: 3 vn4_vnp1_sn12 <= 7
 CPU_capacity_of_substrate_node_13#5: vn3_vnp2_sn13 <= 8
 CPU_capacity_of_substrate_node_14#6: 3 vn1_vnp1_sn14 <= 5
 CPU_capacity_of_substrate_node_19#7: vn3_vnp2_sn19 <= 1
Bounds
 0 <= vnp1 <= 1
 0 <= vn3_vnp1_sn11 <= 1
 0 <= vn1_vnp1_sn14 <= 1
 0 <= vn1_vnp1_sn9 <= 1
 0 <= vn2_vnp1_sn7 <= 1
 0 <= vn4_vnp1_sn3 <= 1
 0 <= vn4_vnp1_sn12 <= 1
 0 <= vnp2 <= 1
 0 <= vn3_vnp2_sn13 <= 1
 0 <= vn1_vnp2_sn9 <= 1
 0 <= vn1_vnp2_sn17 <= 1
 0 <= vn1_vnp2_sn20 <= 1
 0 <= vn3_vnp2_sn19 <= 1
 0 <= vn4_vnp2_sn11 <= 1
 0 <= vn2_vnp2_sn8 <= 1
 0 <= vn2_vnp2_sn6 <= 1
 0 <= vn2_vnp2_sn12 <= 1
Binaries
 vnp1  vn3_vnp1_sn11  vn1_vnp1_sn14  vn1_vnp1_sn9  vn2_vnp1_sn7  vn4_vnp1_sn3 
 vn4_vnp1_sn12  vnp2  vn3_vnp2_sn13  vn1_vnp2_sn9  vn1_vnp2_sn17 
 vn1_vnp2_sn20  vn3_vnp2_sn19  vn4_vnp2_sn11  vn2_vnp2_sn8  vn2_vnp2_sn6 
 vn2_vnp2_sn12 
End
