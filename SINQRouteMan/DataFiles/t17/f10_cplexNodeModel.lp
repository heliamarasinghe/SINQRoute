\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 657 vnp1 + 1367 vnp2 + 1326 vnp3 + [ - 122 vn2_vnp1_sn17 * vn1_vnp1_sn14
      - 222 vn2_vnp1_sn17 * vn4_vnp1_sn5 - 166 vn2_vnp1_sn17 * vn4_vnp1_sn11
      - 386 vn2_vnp1_sn17 * vn4_vnp1_sn2 - 54 vn1_vnp1_sn14 * vn2_vnp1_sn3
      - 50 vn1_vnp1_sn14 * vn3_vnp1_sn4 - 154 vn1_vnp1_sn14 * vn3_vnp1_sn7
      - 82 vn2_vnp1_sn3 * vn4_vnp1_sn5 - 306 vn2_vnp1_sn3 * vn4_vnp1_sn11
      - 134 vn2_vnp1_sn3 * vn4_vnp1_sn2 - 50 vn4_vnp1_sn5 * vn3_vnp1_sn4
      - 232 vn4_vnp1_sn5 * vn3_vnp1_sn7 - 128 vn4_vnp1_sn11 * vn3_vnp1_sn4
      - 316 vn4_vnp1_sn11 * vn3_vnp1_sn7 - 216 vn4_vnp1_sn2 * vn3_vnp1_sn4
      - 254 vn4_vnp1_sn2 * vn3_vnp1_sn7 - 84 vn2_vnp2_sn15 * vn1_vnp2_sn19
      - 90 vn2_vnp2_sn15 * vn1_vnp2_sn3 - 274 vn2_vnp2_sn15 * vn3_vnp2_sn8
      - 88 vn2_vnp2_sn15 * vn3_vnp2_sn12 - 314 vn2_vnp2_sn15 * vn3_vnp2_sn6
      - 326 vn2_vnp2_sn15 * vn4_vnp2_sn7 - 174 vn2_vnp2_sn15 * vn4_vnp2_sn10
      - 262 vn2_vnp2_sn15 * vn4_vnp2_sn4 - 76 vn1_vnp2_sn19 * vn2_vnp2_sn11
      - 248 vn1_vnp2_sn19 * vn3_vnp2_sn8 - 354 vn1_vnp2_sn19 * vn3_vnp2_sn12
      - 408 vn1_vnp2_sn19 * vn3_vnp2_sn6 - 132 vn1_vnp2_sn19 * vn4_vnp2_sn7
      - 318 vn1_vnp2_sn19 * vn4_vnp2_sn10 - 150 vn1_vnp2_sn19 * vn4_vnp2_sn4
      - 86 vn1_vnp2_sn3 * vn2_vnp2_sn11 - 340 vn1_vnp2_sn3 * vn3_vnp2_sn8
      - 326 vn1_vnp2_sn3 * vn3_vnp2_sn12 - 140 vn1_vnp2_sn3 * vn3_vnp2_sn6
      - 204 vn1_vnp2_sn3 * vn4_vnp2_sn7 - 156 vn1_vnp2_sn3 * vn4_vnp2_sn10
      - 132 vn1_vnp2_sn3 * vn4_vnp2_sn4 - 314 vn2_vnp2_sn11 * vn3_vnp2_sn8
      - 184 vn2_vnp2_sn11 * vn3_vnp2_sn12 - 410 vn2_vnp2_sn11 * vn3_vnp2_sn6
      - 462 vn2_vnp2_sn11 * vn4_vnp2_sn7 - 174 vn2_vnp2_sn11 * vn4_vnp2_sn10
      - 166 vn2_vnp2_sn11 * vn4_vnp2_sn4 - 150 vn3_vnp2_sn8 * vn4_vnp2_sn7
      - 240 vn3_vnp2_sn8 * vn4_vnp2_sn10 - 96 vn3_vnp2_sn8 * vn4_vnp2_sn4
      - 336 vn3_vnp2_sn12 * vn4_vnp2_sn7 - 114 vn3_vnp2_sn12 * vn4_vnp2_sn10
      - 180 vn3_vnp2_sn12 * vn4_vnp2_sn4 - 306 vn3_vnp2_sn6 * vn4_vnp2_sn7
      - 120 vn3_vnp2_sn6 * vn4_vnp2_sn10 - 78 vn3_vnp2_sn6 * vn4_vnp2_sn4
      - 352 vn3_vnp3_sn13 * vn1_vnp3_sn14 - 378 vn3_vnp3_sn13 * vn1_vnp3_sn16
      - 444 vn3_vnp3_sn13 * vn4_vnp3_sn8 - 316 vn1_vnp3_sn14 * vn3_vnp3_sn19
      - 66 vn1_vnp3_sn14 * vn2_vnp3_sn9 - 148 vn1_vnp3_sn14 * vn4_vnp3_sn8
      - 252 vn1_vnp3_sn16 * vn3_vnp3_sn19 - 184 vn1_vnp3_sn16 * vn2_vnp3_sn9
      - 102 vn1_vnp3_sn16 * vn4_vnp3_sn8 - 318 vn3_vnp3_sn19 * vn4_vnp3_sn8
      - 210 vn2_vnp3_sn9 * vn4_vnp3_sn8 ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn14 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn17
                                 + vn2_vnp1_sn3 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn4 + vn3_vnp1_sn7
                                 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn5
                                 + vn4_vnp1_sn11 + vn4_vnp1_sn2 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn19
                                 + vn1_vnp2_sn3 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn15
                                 + vn2_vnp2_sn11 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn8
                                 + vn3_vnp2_sn12 + vn3_vnp2_sn6 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#7: - vnp2 + vn4_vnp2_sn7
                                 + vn4_vnp2_sn10 + vn4_vnp2_sn4 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#8: - vnp3 + vn1_vnp3_sn14
                                 + vn1_vnp3_sn16 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#9: - vnp3 + vn2_vnp3_sn9 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#10: - vnp3 + vn3_vnp3_sn13
                                 + vn3_vnp3_sn19 <= 0
 _Embedding_clash_const_of_vnode4_vnp_3#11: - vnp3 + vn4_vnp3_sn8 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn2_vnp1_sn17 * vn1_vnp1_sn14
                                 - vn1_vnp1_sn14 * vn2_vnp1_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn2_vnp1_sn17 * vn4_vnp1_sn5
                                 - vn2_vnp1_sn17 * vn4_vnp1_sn11
                                 - vn2_vnp1_sn17 * vn4_vnp1_sn2
                                 - vn2_vnp1_sn3 * vn4_vnp1_sn5
                                 - vn2_vnp1_sn3 * vn4_vnp1_sn11
                                 - vn2_vnp1_sn3 * vn4_vnp1_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn4_vnp1_sn5 * vn3_vnp1_sn4
                                 - vn4_vnp1_sn5 * vn3_vnp1_sn7
                                 - vn4_vnp1_sn11 * vn3_vnp1_sn4
                                 - vn4_vnp1_sn11 * vn3_vnp1_sn7
                                 - vn4_vnp1_sn2 * vn3_vnp1_sn4
                                 - vn4_vnp1_sn2 * vn3_vnp1_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn1_vnp1_sn14 * vn3_vnp1_sn4
                                 - vn1_vnp1_sn14 * vn3_vnp1_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_5#4: vnp2
                                 + [ - vn2_vnp2_sn15 * vn1_vnp2_sn19
                                 - vn2_vnp2_sn15 * vn1_vnp2_sn3
                                 - vn1_vnp2_sn19 * vn2_vnp2_sn11
                                 - vn1_vnp2_sn3 * vn2_vnp2_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn2_vnp2_sn15 * vn3_vnp2_sn8
                                 - vn2_vnp2_sn15 * vn3_vnp2_sn12
                                 - vn2_vnp2_sn15 * vn3_vnp2_sn6
                                 - vn2_vnp2_sn11 * vn3_vnp2_sn8
                                 - vn2_vnp2_sn11 * vn3_vnp2_sn12
                                 - vn2_vnp2_sn11 * vn3_vnp2_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn3_vnp2_sn8 * vn4_vnp2_sn7
                                 - vn3_vnp2_sn8 * vn4_vnp2_sn10
                                 - vn3_vnp2_sn8 * vn4_vnp2_sn4
                                 - vn3_vnp2_sn12 * vn4_vnp2_sn7
                                 - vn3_vnp2_sn12 * vn4_vnp2_sn10
                                 - vn3_vnp2_sn12 * vn4_vnp2_sn4
                                 - vn3_vnp2_sn6 * vn4_vnp2_sn7
                                 - vn3_vnp2_sn6 * vn4_vnp2_sn10
                                 - vn3_vnp2_sn6 * vn4_vnp2_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_8#7: vnp2
                                 + [ - vn1_vnp2_sn19 * vn4_vnp2_sn7
                                 - vn1_vnp2_sn19 * vn4_vnp2_sn10
                                 - vn1_vnp2_sn19 * vn4_vnp2_sn4
                                 - vn1_vnp2_sn3 * vn4_vnp2_sn7
                                 - vn1_vnp2_sn3 * vn4_vnp2_sn10
                                 - vn1_vnp2_sn3 * vn4_vnp2_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_9#8: vnp2
                                 + [ - vn1_vnp2_sn19 * vn3_vnp2_sn8
                                 - vn1_vnp2_sn19 * vn3_vnp2_sn12
                                 - vn1_vnp2_sn19 * vn3_vnp2_sn6
                                 - vn1_vnp2_sn3 * vn3_vnp2_sn8
                                 - vn1_vnp2_sn3 * vn3_vnp2_sn12
                                 - vn1_vnp2_sn3 * vn3_vnp2_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_10#9: vnp2
                                 + [ - vn2_vnp2_sn15 * vn4_vnp2_sn7
                                 - vn2_vnp2_sn15 * vn4_vnp2_sn10
                                 - vn2_vnp2_sn15 * vn4_vnp2_sn4
                                 - vn2_vnp2_sn11 * vn4_vnp2_sn7
                                 - vn2_vnp2_sn11 * vn4_vnp2_sn10
                                 - vn2_vnp2_sn11 * vn4_vnp2_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_11#10: vnp3
                                 + [ - vn3_vnp3_sn13 * vn1_vnp3_sn14
                                 - vn3_vnp3_sn13 * vn1_vnp3_sn16
                                 - vn1_vnp3_sn14 * vn3_vnp3_sn19
                                 - vn1_vnp3_sn16 * vn3_vnp3_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_12#11: vnp3
                                 + [ - vn1_vnp3_sn14 * vn2_vnp3_sn9
                                 - vn1_vnp3_sn16 * vn2_vnp3_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_13#12: vnp3
                                 + [ - vn3_vnp3_sn13 * vn4_vnp3_sn8
                                 - vn3_vnp3_sn19 * vn4_vnp3_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_14#13: vnp3
                                 + [ - vn2_vnp3_sn9 * vn4_vnp3_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_15#14: vnp3
                                 + [ - vn1_vnp3_sn14 * vn4_vnp3_sn8
                                 - vn1_vnp3_sn16 * vn4_vnp3_sn8 ] <= 0
 q16#15:                         - 657 vnp1 - 1367 vnp2 - 1326 vnp3
                                 + [ 61 vn2_vnp1_sn17 * vn1_vnp1_sn14
                                 + 111 vn2_vnp1_sn17 * vn4_vnp1_sn5
                                 + 83 vn2_vnp1_sn17 * vn4_vnp1_sn11
                                 + 193 vn2_vnp1_sn17 * vn4_vnp1_sn2
                                 + 27 vn1_vnp1_sn14 * vn2_vnp1_sn3
                                 + 25 vn1_vnp1_sn14 * vn3_vnp1_sn4
                                 + 77 vn1_vnp1_sn14 * vn3_vnp1_sn7
                                 + 41 vn2_vnp1_sn3 * vn4_vnp1_sn5
                                 + 153 vn2_vnp1_sn3 * vn4_vnp1_sn11
                                 + 67 vn2_vnp1_sn3 * vn4_vnp1_sn2
                                 + 25 vn4_vnp1_sn5 * vn3_vnp1_sn4
                                 + 116 vn4_vnp1_sn5 * vn3_vnp1_sn7
                                 + 64 vn4_vnp1_sn11 * vn3_vnp1_sn4
                                 + 158 vn4_vnp1_sn11 * vn3_vnp1_sn7
                                 + 108 vn4_vnp1_sn2 * vn3_vnp1_sn4
                                 + 127 vn4_vnp1_sn2 * vn3_vnp1_sn7
                                 + 42 vn2_vnp2_sn15 * vn1_vnp2_sn19
                                 + 45 vn2_vnp2_sn15 * vn1_vnp2_sn3
                                 + 137 vn2_vnp2_sn15 * vn3_vnp2_sn8
                                 + 44 vn2_vnp2_sn15 * vn3_vnp2_sn12
                                 + 157 vn2_vnp2_sn15 * vn3_vnp2_sn6
                                 + 163 vn2_vnp2_sn15 * vn4_vnp2_sn7
                                 + 87 vn2_vnp2_sn15 * vn4_vnp2_sn10
                                 + 131 vn2_vnp2_sn15 * vn4_vnp2_sn4
                                 + 38 vn1_vnp2_sn19 * vn2_vnp2_sn11
                                 + 124 vn1_vnp2_sn19 * vn3_vnp2_sn8
                                 + 177 vn1_vnp2_sn19 * vn3_vnp2_sn12
                                 + 204 vn1_vnp2_sn19 * vn3_vnp2_sn6
                                 + 66 vn1_vnp2_sn19 * vn4_vnp2_sn7
                                 + 159 vn1_vnp2_sn19 * vn4_vnp2_sn10
                                 + 75 vn1_vnp2_sn19 * vn4_vnp2_sn4
                                 + 43 vn1_vnp2_sn3 * vn2_vnp2_sn11
                                 + 170 vn1_vnp2_sn3 * vn3_vnp2_sn8
                                 + 163 vn1_vnp2_sn3 * vn3_vnp2_sn12
                                 + 70 vn1_vnp2_sn3 * vn3_vnp2_sn6
                                 + 102 vn1_vnp2_sn3 * vn4_vnp2_sn7
                                 + 78 vn1_vnp2_sn3 * vn4_vnp2_sn10
                                 + 66 vn1_vnp2_sn3 * vn4_vnp2_sn4
                                 + 157 vn2_vnp2_sn11 * vn3_vnp2_sn8
                                 + 92 vn2_vnp2_sn11 * vn3_vnp2_sn12
                                 + 205 vn2_vnp2_sn11 * vn3_vnp2_sn6
                                 + 231 vn2_vnp2_sn11 * vn4_vnp2_sn7
                                 + 87 vn2_vnp2_sn11 * vn4_vnp2_sn10
                                 + 83 vn2_vnp2_sn11 * vn4_vnp2_sn4
                                 + 75 vn3_vnp2_sn8 * vn4_vnp2_sn7
                                 + 120 vn3_vnp2_sn8 * vn4_vnp2_sn10
                                 + 48 vn3_vnp2_sn8 * vn4_vnp2_sn4
                                 + 168 vn3_vnp2_sn12 * vn4_vnp2_sn7
                                 + 57 vn3_vnp2_sn12 * vn4_vnp2_sn10
                                 + 90 vn3_vnp2_sn12 * vn4_vnp2_sn4
                                 + 153 vn3_vnp2_sn6 * vn4_vnp2_sn7
                                 + 60 vn3_vnp2_sn6 * vn4_vnp2_sn10
                                 + 39 vn3_vnp2_sn6 * vn4_vnp2_sn4
                                 + 176 vn3_vnp3_sn13 * vn1_vnp3_sn14
                                 + 189 vn3_vnp3_sn13 * vn1_vnp3_sn16
                                 + 222 vn3_vnp3_sn13 * vn4_vnp3_sn8
                                 + 158 vn1_vnp3_sn14 * vn3_vnp3_sn19
                                 + 33 vn1_vnp3_sn14 * vn2_vnp3_sn9
                                 + 74 vn1_vnp3_sn14 * vn4_vnp3_sn8
                                 + 126 vn1_vnp3_sn16 * vn3_vnp3_sn19
                                 + 92 vn1_vnp3_sn16 * vn2_vnp3_sn9
                                 + 51 vn1_vnp3_sn16 * vn4_vnp3_sn8
                                 + 159 vn3_vnp3_sn19 * vn4_vnp3_sn8
                                 + 105 vn2_vnp3_sn9 * vn4_vnp3_sn8 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_2#0: vn4_vnp1_sn2 <= 2
 CPU_capacity_of_substrate_node_3#1: vn2_vnp1_sn3 + 3 vn1_vnp2_sn3 <= 2
 CPU_capacity_of_substrate_node_4#2: vn3_vnp1_sn4 + 3 vn4_vnp2_sn4 <= 3
 CPU_capacity_of_substrate_node_5#3: vn4_vnp1_sn5 <= 5
 CPU_capacity_of_substrate_node_6#4: 3 vn3_vnp2_sn6 <= 5
 CPU_capacity_of_substrate_node_7#5: vn3_vnp1_sn7 + 3 vn4_vnp2_sn7 <= 1
 CPU_capacity_of_substrate_node_8#6: 3 vn3_vnp2_sn8 + 3 vn4_vnp3_sn8 <= 5
 CPU_capacity_of_substrate_node_9#7: 3 vn2_vnp3_sn9 <= 5
 CPU_capacity_of_substrate_node_10#8: 3 vn4_vnp2_sn10 <= 2
 CPU_capacity_of_substrate_node_11#9: vn4_vnp1_sn11 <= 7
 CPU_capacity_of_substrate_node_12#10: 3 vn3_vnp2_sn12 <= 3
 CPU_capacity_of_substrate_node_13#11: vn3_vnp3_sn13 <= 7
 CPU_capacity_of_substrate_node_14#12: 3 vn1_vnp1_sn14 + 3 vn1_vnp3_sn14 <= 5
 CPU_capacity_of_substrate_node_16#13: 3 vn1_vnp3_sn16 <= 1
 CPU_capacity_of_substrate_node_17#14: vn2_vnp1_sn17 <= 1
 CPU_capacity_of_substrate_node_19#15: 3 vn1_vnp2_sn19 + vn3_vnp3_sn19 <= 1
Bounds
 0 <= vnp1 <= 1
 0 <= vn2_vnp1_sn17 <= 1
 0 <= vn1_vnp1_sn14 <= 1
 0 <= vn2_vnp1_sn3 <= 1
 0 <= vn4_vnp1_sn5 <= 1
 0 <= vn4_vnp1_sn11 <= 1
 0 <= vn4_vnp1_sn2 <= 1
 0 <= vn3_vnp1_sn4 <= 1
 0 <= vn3_vnp1_sn7 <= 1
 0 <= vnp2 <= 1
 0 <= vn2_vnp2_sn15 <= 1
 0 <= vn1_vnp2_sn19 <= 1
 0 <= vn1_vnp2_sn3 <= 1
 0 <= vn2_vnp2_sn11 <= 1
 0 <= vn3_vnp2_sn8 <= 1
 0 <= vn3_vnp2_sn12 <= 1
 0 <= vn3_vnp2_sn6 <= 1
 0 <= vn4_vnp2_sn7 <= 1
 0 <= vn4_vnp2_sn10 <= 1
 0 <= vn4_vnp2_sn4 <= 1
 0 <= vnp3 <= 1
 0 <= vn3_vnp3_sn13 <= 1
 0 <= vn1_vnp3_sn14 <= 1
 0 <= vn1_vnp3_sn16 <= 1
 0 <= vn3_vnp3_sn19 <= 1
 0 <= vn2_vnp3_sn9 <= 1
 0 <= vn4_vnp3_sn8 <= 1
Binaries
 vnp1  vn2_vnp1_sn17  vn1_vnp1_sn14  vn2_vnp1_sn3  vn4_vnp1_sn5  vn4_vnp1_sn11 
 vn4_vnp1_sn2  vn3_vnp1_sn4  vn3_vnp1_sn7  vnp2  vn2_vnp2_sn15  vn1_vnp2_sn19 
 vn1_vnp2_sn3  vn2_vnp2_sn11  vn3_vnp2_sn8  vn3_vnp2_sn12  vn3_vnp2_sn6 
 vn4_vnp2_sn7  vn4_vnp2_sn10  vn4_vnp2_sn4  vnp3  vn3_vnp3_sn13  vn1_vnp3_sn14 
 vn1_vnp3_sn16  vn3_vnp3_sn19  vn2_vnp3_sn9  vn4_vnp3_sn8 
End
