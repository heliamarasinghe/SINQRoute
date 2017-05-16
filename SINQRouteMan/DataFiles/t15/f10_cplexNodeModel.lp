\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 511 vnp1 + 498 vnp2 + 457 vnp3 + [ - 74 vn2_vnp1_sn6 * vn1_vnp1_sn3
      - 188 vn2_vnp1_sn6 * vn3_vnp1_sn16 - 82 vn1_vnp1_sn3 * vn2_vnp1_sn18
      - 72 vn1_vnp1_sn3 * vn3_vnp1_sn16 - 80 vn2_vnp1_sn18 * vn3_vnp1_sn16
      - 380 vn4_vnp2_sn6 * vn1_vnp2_sn4 - 400 vn4_vnp2_sn6 * vn1_vnp2_sn2
      - 124 vn4_vnp2_sn6 * vn2_vnp2_sn3 - 216 vn4_vnp2_sn6 * vn2_vnp2_sn20
      - 170 vn4_vnp2_sn6 * vn2_vnp2_sn16 - 480 vn1_vnp2_sn4 * vn4_vnp2_sn13
      - 370 vn1_vnp2_sn4 * vn4_vnp2_sn15 - 32 vn1_vnp2_sn4 * vn2_vnp2_sn3
      - 108 vn1_vnp2_sn4 * vn2_vnp2_sn20 - 50 vn1_vnp2_sn4 * vn2_vnp2_sn16
      - 40 vn1_vnp2_sn4 * vn3_vnp2_sn5 - 54 vn1_vnp2_sn4 * vn3_vnp2_sn10
      - 500 vn1_vnp2_sn2 * vn4_vnp2_sn13 - 590 vn1_vnp2_sn2 * vn4_vnp2_sn15
      - 36 vn1_vnp2_sn2 * vn2_vnp2_sn3 - 102 vn1_vnp2_sn2 * vn2_vnp2_sn20
      - 96 vn1_vnp2_sn2 * vn2_vnp2_sn16 - 44 vn1_vnp2_sn2 * vn3_vnp2_sn5
      - 64 vn1_vnp2_sn2 * vn3_vnp2_sn10 - 164 vn4_vnp2_sn13 * vn2_vnp2_sn3
      - 176 vn4_vnp2_sn13 * vn2_vnp2_sn20 - 138 vn4_vnp2_sn13 * vn2_vnp2_sn16
      - 132 vn4_vnp2_sn15 * vn2_vnp2_sn3 - 68 vn4_vnp2_sn15 * vn2_vnp2_sn20
      - 30 vn4_vnp2_sn15 * vn2_vnp2_sn16 - 80 vn3_vnp3_sn7 * vn1_vnp3_sn19
      - 106 vn3_vnp3_sn7 * vn2_vnp3_sn14 - 46 vn3_vnp3_sn7 * vn2_vnp3_sn4
      - 530 vn1_vnp3_sn19 * vn2_vnp3_sn14 - 250 vn1_vnp3_sn19 * vn2_vnp3_sn4
      ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn3 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn6
                                 + vn2_vnp1_sn18 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn16 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#3: - vnp2 + vn1_vnp2_sn4 + vn1_vnp2_sn2
                                 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#4: - vnp2 + vn2_vnp2_sn3
                                 + vn2_vnp2_sn20 + vn2_vnp2_sn16 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#5: - vnp2 + vn3_vnp2_sn5
                                 + vn3_vnp2_sn10 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#6: - vnp2 + vn4_vnp2_sn6
                                 + vn4_vnp2_sn13 + vn4_vnp2_sn15 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#7: - vnp3 + vn1_vnp3_sn19 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#8: - vnp3 + vn2_vnp3_sn14
                                 + vn2_vnp3_sn4 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#9: - vnp3 + vn3_vnp3_sn7 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn2_vnp1_sn6 * vn1_vnp1_sn3
                                 - vn1_vnp1_sn3 * vn2_vnp1_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn2_vnp1_sn6 * vn3_vnp1_sn16
                                 - vn2_vnp1_sn18 * vn3_vnp1_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn1_vnp1_sn3 * vn3_vnp1_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_4#3: vnp2
                                 + [ - vn4_vnp2_sn6 * vn1_vnp2_sn4
                                 - vn4_vnp2_sn6 * vn1_vnp2_sn2
                                 - vn1_vnp2_sn4 * vn4_vnp2_sn13
                                 - vn1_vnp2_sn4 * vn4_vnp2_sn15
                                 - vn1_vnp2_sn2 * vn4_vnp2_sn13
                                 - vn1_vnp2_sn2 * vn4_vnp2_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_5#4: vnp2
                                 + [ - vn4_vnp2_sn6 * vn2_vnp2_sn3
                                 - vn4_vnp2_sn6 * vn2_vnp2_sn20
                                 - vn4_vnp2_sn6 * vn2_vnp2_sn16
                                 - vn4_vnp2_sn13 * vn2_vnp2_sn3
                                 - vn4_vnp2_sn13 * vn2_vnp2_sn20
                                 - vn4_vnp2_sn13 * vn2_vnp2_sn16
                                 - vn4_vnp2_sn15 * vn2_vnp2_sn3
                                 - vn4_vnp2_sn15 * vn2_vnp2_sn20
                                 - vn4_vnp2_sn15 * vn2_vnp2_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn1_vnp2_sn4 * vn3_vnp2_sn5
                                 - vn1_vnp2_sn4 * vn3_vnp2_sn10
                                 - vn1_vnp2_sn2 * vn3_vnp2_sn5
                                 - vn1_vnp2_sn2 * vn3_vnp2_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn1_vnp2_sn4 * vn2_vnp2_sn3
                                 - vn1_vnp2_sn4 * vn2_vnp2_sn20
                                 - vn1_vnp2_sn4 * vn2_vnp2_sn16
                                 - vn1_vnp2_sn2 * vn2_vnp2_sn3
                                 - vn1_vnp2_sn2 * vn2_vnp2_sn20
                                 - vn1_vnp2_sn2 * vn2_vnp2_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_8#7: vnp3
                                 + [ - vn3_vnp3_sn7 * vn1_vnp3_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_9#8: vnp3
                                 + [ - vn3_vnp3_sn7 * vn2_vnp3_sn14
                                 - vn3_vnp3_sn7 * vn2_vnp3_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_10#9: vnp3
                                 + [ - vn1_vnp3_sn19 * vn2_vnp3_sn14
                                 - vn1_vnp3_sn19 * vn2_vnp3_sn4 ] <= 0
 q11#10:                         - 511 vnp1 - 498 vnp2 - 457 vnp3
                                 + [ 37 vn2_vnp1_sn6 * vn1_vnp1_sn3
                                 + 94 vn2_vnp1_sn6 * vn3_vnp1_sn16
                                 + 41 vn1_vnp1_sn3 * vn2_vnp1_sn18
                                 + 36 vn1_vnp1_sn3 * vn3_vnp1_sn16
                                 + 40 vn2_vnp1_sn18 * vn3_vnp1_sn16
                                 + 190 vn4_vnp2_sn6 * vn1_vnp2_sn4
                                 + 200 vn4_vnp2_sn6 * vn1_vnp2_sn2
                                 + 62 vn4_vnp2_sn6 * vn2_vnp2_sn3
                                 + 108 vn4_vnp2_sn6 * vn2_vnp2_sn20
                                 + 85 vn4_vnp2_sn6 * vn2_vnp2_sn16
                                 + 240 vn1_vnp2_sn4 * vn4_vnp2_sn13
                                 + 185 vn1_vnp2_sn4 * vn4_vnp2_sn15
                                 + 16 vn1_vnp2_sn4 * vn2_vnp2_sn3
                                 + 54 vn1_vnp2_sn4 * vn2_vnp2_sn20
                                 + 25 vn1_vnp2_sn4 * vn2_vnp2_sn16
                                 + 20 vn1_vnp2_sn4 * vn3_vnp2_sn5
                                 + 27 vn1_vnp2_sn4 * vn3_vnp2_sn10
                                 + 250 vn1_vnp2_sn2 * vn4_vnp2_sn13
                                 + 295 vn1_vnp2_sn2 * vn4_vnp2_sn15
                                 + 18 vn1_vnp2_sn2 * vn2_vnp2_sn3
                                 + 51 vn1_vnp2_sn2 * vn2_vnp2_sn20
                                 + 48 vn1_vnp2_sn2 * vn2_vnp2_sn16
                                 + 22 vn1_vnp2_sn2 * vn3_vnp2_sn5
                                 + 32 vn1_vnp2_sn2 * vn3_vnp2_sn10
                                 + 82 vn4_vnp2_sn13 * vn2_vnp2_sn3
                                 + 88 vn4_vnp2_sn13 * vn2_vnp2_sn20
                                 + 69 vn4_vnp2_sn13 * vn2_vnp2_sn16
                                 + 66 vn4_vnp2_sn15 * vn2_vnp2_sn3
                                 + 34 vn4_vnp2_sn15 * vn2_vnp2_sn20
                                 + 15 vn4_vnp2_sn15 * vn2_vnp2_sn16
                                 + 40 vn3_vnp3_sn7 * vn1_vnp3_sn19
                                 + 53 vn3_vnp3_sn7 * vn2_vnp3_sn14
                                 + 23 vn3_vnp3_sn7 * vn2_vnp3_sn4
                                 + 265 vn1_vnp3_sn19 * vn2_vnp3_sn14
                                 + 125 vn1_vnp3_sn19 * vn2_vnp3_sn4 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_3#0: 3 vn2_vnp2_sn3 <= 2
 CPU_capacity_of_substrate_node_4#1: 3 vn2_vnp3_sn4 <= 3
 CPU_capacity_of_substrate_node_6#2: 3 vn2_vnp1_sn6 <= 8
 CPU_capacity_of_substrate_node_7#3: 3 vn3_vnp3_sn7 <= 1
 CPU_capacity_of_substrate_node_14#4: 3 vn2_vnp3_sn14 <= 5
 CPU_capacity_of_substrate_node_16#5: 3 vn3_vnp1_sn16 + 3 vn2_vnp2_sn16 <= 7
 CPU_capacity_of_substrate_node_18#6: 3 vn2_vnp1_sn18 <= 8
 CPU_capacity_of_substrate_node_19#7: 3 vn1_vnp3_sn19 <= 1
 CPU_capacity_of_substrate_node_20#8: 3 vn2_vnp2_sn20 <= 3
Bounds
 0 <= vnp1 <= 1
 0 <= vn2_vnp1_sn6 <= 1
 0 <= vn1_vnp1_sn3 <= 1
 0 <= vn2_vnp1_sn18 <= 1
 0 <= vn3_vnp1_sn16 <= 1
 0 <= vnp2 <= 1
 0 <= vn4_vnp2_sn6 <= 1
 0 <= vn1_vnp2_sn4 <= 1
 0 <= vn1_vnp2_sn2 <= 1
 0 <= vn4_vnp2_sn13 <= 1
 0 <= vn4_vnp2_sn15 <= 1
 0 <= vn2_vnp2_sn3 <= 1
 0 <= vn2_vnp2_sn20 <= 1
 0 <= vn2_vnp2_sn16 <= 1
 0 <= vn3_vnp2_sn5 <= 1
 0 <= vn3_vnp2_sn10 <= 1
 0 <= vnp3 <= 1
 0 <= vn3_vnp3_sn7 <= 1
 0 <= vn1_vnp3_sn19 <= 1
 0 <= vn2_vnp3_sn14 <= 1
 0 <= vn2_vnp3_sn4 <= 1
Binaries
 vnp1  vn2_vnp1_sn6  vn1_vnp1_sn3  vn2_vnp1_sn18  vn3_vnp1_sn16  vnp2 
 vn4_vnp2_sn6  vn1_vnp2_sn4  vn1_vnp2_sn2  vn4_vnp2_sn13  vn4_vnp2_sn15 
 vn2_vnp2_sn3  vn2_vnp2_sn20  vn2_vnp2_sn16  vn3_vnp2_sn5  vn3_vnp2_sn10  vnp3 
 vn3_vnp3_sn7  vn1_vnp3_sn19  vn2_vnp3_sn14  vn2_vnp3_sn4 
End
