\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1489 vnp1 + 1700 vnp2 + 1129 vnp3 + [ - 400 vn3_vnp1_sn14 * vn1_vnp1_sn18
      - 490 vn3_vnp1_sn14 * vn1_vnp1_sn6 - 314 vn3_vnp1_sn14 * vn4_vnp1_sn7
      - 280 vn3_vnp1_sn14 * vn4_vnp1_sn19 - 88 vn1_vnp1_sn18 * vn4_vnp1_sn7
      - 88 vn1_vnp1_sn18 * vn4_vnp1_sn19 - 278 vn1_vnp1_sn6 * vn4_vnp1_sn7
      - 266 vn1_vnp1_sn6 * vn4_vnp1_sn19 - 90 vn4_vnp1_sn7 * vn2_vnp1_sn17
      - 64 vn2_vnp1_sn17 * vn4_vnp1_sn19 - 100 vn2_vnp2_sn6 * vn1_vnp2_sn9
      - 72 vn2_vnp2_sn6 * vn1_vnp2_sn5 - 102 vn2_vnp2_sn6 * vn3_vnp2_sn8
      - 90 vn2_vnp2_sn6 * vn3_vnp2_sn11 - 24 vn2_vnp2_sn6 * vn3_vnp2_sn13
      - 192 vn2_vnp2_sn6 * vn4_vnp2_sn14 - 78 vn1_vnp2_sn9 * vn2_vnp2_sn16
      - 62 vn1_vnp2_sn9 * vn3_vnp2_sn8 - 98 vn1_vnp2_sn9 * vn3_vnp2_sn11
      - 116 vn1_vnp2_sn9 * vn3_vnp2_sn13 - 180 vn1_vnp2_sn9 * vn4_vnp2_sn14
      - 106 vn1_vnp2_sn5 * vn2_vnp2_sn16 - 90 vn1_vnp2_sn5 * vn3_vnp2_sn8
      - 78 vn1_vnp2_sn5 * vn3_vnp2_sn11 - 88 vn1_vnp2_sn5 * vn3_vnp2_sn13
      - 320 vn1_vnp2_sn5 * vn4_vnp2_sn14 - 50 vn2_vnp2_sn16 * vn3_vnp2_sn8
      - 50 vn2_vnp2_sn16 * vn3_vnp2_sn11 - 82 vn2_vnp2_sn16 * vn3_vnp2_sn13
      - 74 vn2_vnp2_sn16 * vn4_vnp2_sn14 - 132 vn3_vnp2_sn8 * vn4_vnp2_sn14
      - 98 vn3_vnp2_sn11 * vn4_vnp2_sn14 - 180 vn3_vnp2_sn13 * vn4_vnp2_sn14
      - 248 vn4_vnp3_sn16 * vn1_vnp3_sn12 - 68 vn4_vnp3_sn16 * vn2_vnp3_sn9
      - 68 vn4_vnp3_sn16 * vn3_vnp3_sn10 - 128 vn4_vnp3_sn16 * vn3_vnp3_sn6
      - 62 vn1_vnp3_sn12 * vn2_vnp3_sn9 - 78 vn1_vnp3_sn12 * vn3_vnp3_sn10
      - 74 vn1_vnp3_sn12 * vn3_vnp3_sn6 - 32 vn2_vnp3_sn9 * vn3_vnp3_sn10
      - 212 vn2_vnp3_sn9 * vn3_vnp3_sn6 ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn18
                                 + vn1_vnp1_sn6 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn17 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn14 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn7
                                 + vn4_vnp1_sn19 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn9 + vn1_vnp2_sn5
                                 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn6
                                 + vn2_vnp2_sn16 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn8
                                 + vn3_vnp2_sn11 + vn3_vnp2_sn13 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#7: - vnp2 + vn4_vnp2_sn14 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#8: - vnp3 + vn1_vnp3_sn12 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#9: - vnp3 + vn2_vnp3_sn9 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#10: - vnp3 + vn3_vnp3_sn10
                                 + vn3_vnp3_sn6 <= 0
 _Embedding_clash_const_of_vnode4_vnp_3#11: - vnp3 + vn4_vnp3_sn16 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn3_vnp1_sn14 * vn1_vnp1_sn18
                                 - vn3_vnp1_sn14 * vn1_vnp1_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn4_vnp1_sn7 * vn2_vnp1_sn17
                                 - vn2_vnp1_sn17 * vn4_vnp1_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn3_vnp1_sn14 * vn4_vnp1_sn7
                                 - vn3_vnp1_sn14 * vn4_vnp1_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn1_vnp1_sn18 * vn4_vnp1_sn7
                                 - vn1_vnp1_sn18 * vn4_vnp1_sn19
                                 - vn1_vnp1_sn6 * vn4_vnp1_sn7
                                 - vn1_vnp1_sn6 * vn4_vnp1_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_5#4: vnp2
                                 + [ - vn2_vnp2_sn6 * vn1_vnp2_sn9
                                 - vn2_vnp2_sn6 * vn1_vnp2_sn5
                                 - vn1_vnp2_sn9 * vn2_vnp2_sn16
                                 - vn1_vnp2_sn5 * vn2_vnp2_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn2_vnp2_sn6 * vn3_vnp2_sn8
                                 - vn2_vnp2_sn6 * vn3_vnp2_sn11
                                 - vn2_vnp2_sn6 * vn3_vnp2_sn13
                                 - vn2_vnp2_sn16 * vn3_vnp2_sn8
                                 - vn2_vnp2_sn16 * vn3_vnp2_sn11
                                 - vn2_vnp2_sn16 * vn3_vnp2_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn1_vnp2_sn9 * vn3_vnp2_sn8
                                 - vn1_vnp2_sn9 * vn3_vnp2_sn11
                                 - vn1_vnp2_sn9 * vn3_vnp2_sn13
                                 - vn1_vnp2_sn5 * vn3_vnp2_sn8
                                 - vn1_vnp2_sn5 * vn3_vnp2_sn11
                                 - vn1_vnp2_sn5 * vn3_vnp2_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_8#7: vnp2
                                 + [ - vn3_vnp2_sn8 * vn4_vnp2_sn14
                                 - vn3_vnp2_sn11 * vn4_vnp2_sn14
                                 - vn3_vnp2_sn13 * vn4_vnp2_sn14 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_9#8: vnp2
                                 + [ - vn2_vnp2_sn6 * vn4_vnp2_sn14
                                 - vn2_vnp2_sn16 * vn4_vnp2_sn14 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_10#9: vnp2
                                 + [ - vn1_vnp2_sn9 * vn4_vnp2_sn14
                                 - vn1_vnp2_sn5 * vn4_vnp2_sn14 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_11#10: vnp3
                                 + [ - vn4_vnp3_sn16 * vn1_vnp3_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_12#11: vnp3
                                 + [ - vn1_vnp3_sn12 * vn2_vnp3_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_13#12: vnp3
                                 + [ - vn1_vnp3_sn12 * vn3_vnp3_sn10
                                 - vn1_vnp3_sn12 * vn3_vnp3_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_14#13: vnp3
                                 + [ - vn2_vnp3_sn9 * vn3_vnp3_sn10
                                 - vn2_vnp3_sn9 * vn3_vnp3_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_15#14: vnp3
                                 + [ - vn4_vnp3_sn16 * vn3_vnp3_sn10
                                 - vn4_vnp3_sn16 * vn3_vnp3_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_16#15: vnp3
                                 + [ - vn4_vnp3_sn16 * vn2_vnp3_sn9 ] <= 0
 q17#16:                         1489 vnp1 + 1700 vnp2 + 1129 vnp3
                                 + [ - 200 vn3_vnp1_sn14 * vn1_vnp1_sn18
                                 - 245 vn3_vnp1_sn14 * vn1_vnp1_sn6
                                 - 157 vn3_vnp1_sn14 * vn4_vnp1_sn7
                                 - 140 vn3_vnp1_sn14 * vn4_vnp1_sn19
                                 - 44 vn1_vnp1_sn18 * vn4_vnp1_sn7
                                 - 44 vn1_vnp1_sn18 * vn4_vnp1_sn19
                                 - 139 vn1_vnp1_sn6 * vn4_vnp1_sn7
                                 - 133 vn1_vnp1_sn6 * vn4_vnp1_sn19
                                 - 45 vn4_vnp1_sn7 * vn2_vnp1_sn17
                                 - 32 vn2_vnp1_sn17 * vn4_vnp1_sn19
                                 - 50 vn2_vnp2_sn6 * vn1_vnp2_sn9
                                 - 36 vn2_vnp2_sn6 * vn1_vnp2_sn5
                                 - 51 vn2_vnp2_sn6 * vn3_vnp2_sn8
                                 - 45 vn2_vnp2_sn6 * vn3_vnp2_sn11
                                 - 12 vn2_vnp2_sn6 * vn3_vnp2_sn13
                                 - 96 vn2_vnp2_sn6 * vn4_vnp2_sn14
                                 - 39 vn1_vnp2_sn9 * vn2_vnp2_sn16
                                 - 31 vn1_vnp2_sn9 * vn3_vnp2_sn8
                                 - 49 vn1_vnp2_sn9 * vn3_vnp2_sn11
                                 - 58 vn1_vnp2_sn9 * vn3_vnp2_sn13
                                 - 90 vn1_vnp2_sn9 * vn4_vnp2_sn14
                                 - 53 vn1_vnp2_sn5 * vn2_vnp2_sn16
                                 - 45 vn1_vnp2_sn5 * vn3_vnp2_sn8
                                 - 39 vn1_vnp2_sn5 * vn3_vnp2_sn11
                                 - 44 vn1_vnp2_sn5 * vn3_vnp2_sn13
                                 - 160 vn1_vnp2_sn5 * vn4_vnp2_sn14
                                 - 25 vn2_vnp2_sn16 * vn3_vnp2_sn8
                                 - 25 vn2_vnp2_sn16 * vn3_vnp2_sn11
                                 - 41 vn2_vnp2_sn16 * vn3_vnp2_sn13
                                 - 37 vn2_vnp2_sn16 * vn4_vnp2_sn14
                                 - 66 vn3_vnp2_sn8 * vn4_vnp2_sn14
                                 - 49 vn3_vnp2_sn11 * vn4_vnp2_sn14
                                 - 90 vn3_vnp2_sn13 * vn4_vnp2_sn14
                                 - 124 vn4_vnp3_sn16 * vn1_vnp3_sn12
                                 - 34 vn4_vnp3_sn16 * vn2_vnp3_sn9
                                 - 34 vn4_vnp3_sn16 * vn3_vnp3_sn10
                                 - 64 vn4_vnp3_sn16 * vn3_vnp3_sn6
                                 - 31 vn1_vnp3_sn12 * vn2_vnp3_sn9
                                 - 39 vn1_vnp3_sn12 * vn3_vnp3_sn10
                                 - 37 vn1_vnp3_sn12 * vn3_vnp3_sn6
                                 - 16 vn2_vnp3_sn9 * vn3_vnp3_sn10
                                 - 106 vn2_vnp3_sn9 * vn3_vnp3_sn6 ] >= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_5#0: 3 vn1_vnp2_sn5 <= 8
 CPU_capacity_of_substrate_node_6#1: 5 vn1_vnp1_sn6 + vn2_vnp2_sn6
                                 + vn3_vnp3_sn6 <= 8
 CPU_capacity_of_substrate_node_7#2: vn4_vnp1_sn7 <= 4
 CPU_capacity_of_substrate_node_8#3: 3 vn3_vnp2_sn8 <= 2
 CPU_capacity_of_substrate_node_9#4: 3 vn1_vnp2_sn9 + vn2_vnp3_sn9 <= 8
 CPU_capacity_of_substrate_node_10#5: vn3_vnp3_sn10 <= 3
 CPU_capacity_of_substrate_node_11#6: 3 vn3_vnp2_sn11 <= 5
 CPU_capacity_of_substrate_node_12#7: 3 vn1_vnp3_sn12 <= 7
 CPU_capacity_of_substrate_node_13#8: 3 vn3_vnp2_sn13 <= 4
 CPU_capacity_of_substrate_node_14#9: 5 vn3_vnp1_sn14 + 2 vn4_vnp2_sn14 <= 4
 CPU_capacity_of_substrate_node_16#10: vn2_vnp2_sn16 + 2 vn4_vnp3_sn16 <= 3
 CPU_capacity_of_substrate_node_17#11: 4 vn2_vnp1_sn17 <= 4
 CPU_capacity_of_substrate_node_18#12: 5 vn1_vnp1_sn18 <= 2
 CPU_capacity_of_substrate_node_19#13: vn4_vnp1_sn19 <= 2
Bounds
 0 <= vnp1 <= 1
 0 <= vn3_vnp1_sn14 <= 1
 0 <= vn1_vnp1_sn18 <= 1
 0 <= vn1_vnp1_sn6 <= 1
 0 <= vn4_vnp1_sn7 <= 1
 0 <= vn2_vnp1_sn17 <= 1
 0 <= vn4_vnp1_sn19 <= 1
 0 <= vnp2 <= 1
 0 <= vn2_vnp2_sn6 <= 1
 0 <= vn1_vnp2_sn9 <= 1
 0 <= vn1_vnp2_sn5 <= 1
 0 <= vn2_vnp2_sn16 <= 1
 0 <= vn3_vnp2_sn8 <= 1
 0 <= vn3_vnp2_sn11 <= 1
 0 <= vn3_vnp2_sn13 <= 1
 0 <= vn4_vnp2_sn14 <= 1
 0 <= vnp3 <= 1
 0 <= vn4_vnp3_sn16 <= 1
 0 <= vn1_vnp3_sn12 <= 1
 0 <= vn2_vnp3_sn9 <= 1
 0 <= vn3_vnp3_sn10 <= 1
 0 <= vn3_vnp3_sn6 <= 1
Binaries
 vnp1  vn3_vnp1_sn14  vn1_vnp1_sn18  vn1_vnp1_sn6  vn4_vnp1_sn7  vn2_vnp1_sn17 
 vn4_vnp1_sn19  vnp2  vn2_vnp2_sn6  vn1_vnp2_sn9  vn1_vnp2_sn5  vn2_vnp2_sn16 
 vn3_vnp2_sn8  vn3_vnp2_sn11  vn3_vnp2_sn13  vn4_vnp2_sn14  vnp3 
 vn4_vnp3_sn16  vn1_vnp3_sn12  vn2_vnp3_sn9  vn3_vnp3_sn10  vn3_vnp3_sn6 
End
