\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1553 vnp1 + 1285 vnp2 + 1993 vnp3 + 2627 vnp4 + 1350 vnp5
      + [ - 326 vn3_vnp1_sn3 * vn1_vnp1_sn13 - 260 vn3_vnp1_sn3 * vn1_vnp1_sn17
      - 242 vn3_vnp1_sn3 * vn1_vnp1_sn12 - 110 vn3_vnp1_sn3 * vn4_vnp1_sn1
      - 370 vn3_vnp1_sn3 * vn2_vnp1_sn14 - 486 vn3_vnp1_sn3 * vn2_vnp1_sn11
      - 240 vn3_vnp1_sn3 * vn2_vnp1_sn2 - 228 vn3_vnp1_sn3 * vn4_vnp1_sn20
      - 160 vn3_vnp1_sn3 * vn4_vnp1_sn16 - 348 vn4_vnp1_sn1 * vn2_vnp1_sn14
      - 262 vn4_vnp1_sn1 * vn2_vnp1_sn11 - 132 vn4_vnp1_sn1 * vn2_vnp1_sn2
      - 198 vn2_vnp1_sn14 * vn4_vnp1_sn20 - 84 vn2_vnp1_sn14 * vn4_vnp1_sn16
      - 244 vn2_vnp1_sn11 * vn4_vnp1_sn20 - 196 vn2_vnp1_sn11 * vn4_vnp1_sn16
      - 312 vn2_vnp1_sn2 * vn4_vnp1_sn20 - 348 vn2_vnp1_sn2 * vn4_vnp1_sn16
      - 262 vn2_vnp2_sn11 * vn1_vnp2_sn4 - 86 vn2_vnp2_sn11 * vn3_vnp2_sn17
      - 104 vn2_vnp2_sn11 * vn3_vnp2_sn9 - 126 vn1_vnp2_sn4 * vn3_vnp2_sn17
      - 94 vn1_vnp2_sn4 * vn3_vnp2_sn9 - 184 vn1_vnp2_sn4 * vn4_vnp2_sn19
      - 160 vn1_vnp2_sn4 * vn4_vnp2_sn8 - 248 vn1_vnp2_sn4 * vn4_vnp2_sn14
      - 510 vn3_vnp3_sn4 * vn1_vnp3_sn11 - 130 vn3_vnp3_sn4 * vn4_vnp3_sn8
      - 516 vn1_vnp3_sn11 * vn3_vnp3_sn3 - 242 vn1_vnp3_sn11 * vn2_vnp3_sn1
      - 170 vn1_vnp3_sn11 * vn2_vnp3_sn5 - 208 vn1_vnp3_sn11 * vn4_vnp3_sn8
      - 198 vn3_vnp3_sn3 * vn4_vnp3_sn8 - 308 vn2_vnp4_sn20 * vn1_vnp4_sn10
      - 86 vn2_vnp4_sn20 * vn3_vnp4_sn16 - 540 vn2_vnp4_sn20 * vn4_vnp4_sn6
      - 612 vn2_vnp4_sn20 * vn4_vnp4_sn5 - 208 vn2_vnp4_sn20 * vn4_vnp4_sn9
      - 194 vn1_vnp4_sn10 * vn3_vnp4_sn16 - 196 vn1_vnp4_sn10 * vn4_vnp4_sn6
      - 84 vn1_vnp4_sn10 * vn4_vnp4_sn5 - 152 vn1_vnp4_sn10 * vn4_vnp4_sn9
      - 478 vn3_vnp4_sn16 * vn4_vnp4_sn6 - 366 vn3_vnp4_sn16 * vn4_vnp4_sn5
      - 174 vn3_vnp4_sn16 * vn4_vnp4_sn9 - 312 vn3_vnp5_sn13 * vn1_vnp5_sn19
      - 474 vn3_vnp5_sn13 * vn1_vnp5_sn3 - 304 vn3_vnp5_sn13 * vn1_vnp5_sn17
      - 30 vn3_vnp5_sn13 * vn4_vnp5_sn12 - 394 vn3_vnp5_sn13 * vn4_vnp5_sn1
      - 496 vn1_vnp5_sn19 * vn3_vnp5_sn10 - 216 vn1_vnp5_sn19 * vn2_vnp5_sn20
      - 208 vn1_vnp5_sn3 * vn3_vnp5_sn10 - 518 vn1_vnp5_sn3 * vn2_vnp5_sn20
      - 328 vn1_vnp5_sn17 * vn3_vnp5_sn10 - 78 vn1_vnp5_sn17 * vn2_vnp5_sn20
      - 108 vn3_vnp5_sn10 * vn4_vnp5_sn12 - 292 vn3_vnp5_sn10 * vn4_vnp5_sn1
      - 264 vn4_vnp5_sn12 * vn2_vnp5_sn20 - 238 vn2_vnp5_sn20 * vn4_vnp5_sn1
      ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn13
                                 + vn1_vnp1_sn17 + vn1_vnp1_sn12 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn14
                                 + vn2_vnp1_sn11 + vn2_vnp1_sn2 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn3 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn1
                                 + vn4_vnp1_sn20 + vn4_vnp1_sn16 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn4 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn11 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn17
                                 + vn3_vnp2_sn9 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#7: - vnp2 + vn4_vnp2_sn19
                                 + vn4_vnp2_sn8 + vn4_vnp2_sn14 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#8: - vnp3 + vn1_vnp3_sn11 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#9: - vnp3 + vn2_vnp3_sn1 + vn2_vnp3_sn5
                                 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#10: - vnp3 + vn3_vnp3_sn4
                                 + vn3_vnp3_sn3 <= 0
 _Embedding_clash_const_of_vnode4_vnp_3#11: - vnp3 + vn4_vnp3_sn8 <= 0
 _Embedding_clash_const_of_vnode1_vnp_4#12: - vnp4 + vn1_vnp4_sn10 <= 0
 _Embedding_clash_const_of_vnode2_vnp_4#13: - vnp4 + vn2_vnp4_sn20 <= 0
 _Embedding_clash_const_of_vnode3_vnp_4#14: - vnp4 + vn3_vnp4_sn16 <= 0
 _Embedding_clash_const_of_vnode4_vnp_4#15: - vnp4 + vn4_vnp4_sn6
                                 + vn4_vnp4_sn5 + vn4_vnp4_sn9 <= 0
 _Embedding_clash_const_of_vnode1_vnp_5#16: - vnp5 + vn1_vnp5_sn19
                                 + vn1_vnp5_sn3 + vn1_vnp5_sn17 <= 0
 _Embedding_clash_const_of_vnode2_vnp_5#17: - vnp5 + vn2_vnp5_sn20 <= 0
 _Embedding_clash_const_of_vnode3_vnp_5#18: - vnp5 + vn3_vnp5_sn13
                                 + vn3_vnp5_sn10 <= 0
 _Embedding_clash_const_of_vnode4_vnp_5#19: - vnp5 + vn4_vnp5_sn12
                                 + vn4_vnp5_sn1 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn3_vnp1_sn3 * vn1_vnp1_sn13
                                 - vn3_vnp1_sn3 * vn1_vnp1_sn17
                                 - vn3_vnp1_sn3 * vn1_vnp1_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn4_vnp1_sn1 * vn2_vnp1_sn14
                                 - vn4_vnp1_sn1 * vn2_vnp1_sn11
                                 - vn4_vnp1_sn1 * vn2_vnp1_sn2
                                 - vn2_vnp1_sn14 * vn4_vnp1_sn20
                                 - vn2_vnp1_sn14 * vn4_vnp1_sn16
                                 - vn2_vnp1_sn11 * vn4_vnp1_sn20
                                 - vn2_vnp1_sn11 * vn4_vnp1_sn16
                                 - vn2_vnp1_sn2 * vn4_vnp1_sn20
                                 - vn2_vnp1_sn2 * vn4_vnp1_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn3_vnp1_sn3 * vn2_vnp1_sn14
                                 - vn3_vnp1_sn3 * vn2_vnp1_sn11
                                 - vn3_vnp1_sn3 * vn2_vnp1_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn3_vnp1_sn3 * vn4_vnp1_sn1
                                 - vn3_vnp1_sn3 * vn4_vnp1_sn20
                                 - vn3_vnp1_sn3 * vn4_vnp1_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_5#4: vnp2
                                 + [ - vn2_vnp2_sn11 * vn1_vnp2_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn2_vnp2_sn11 * vn3_vnp2_sn17
                                 - vn2_vnp2_sn11 * vn3_vnp2_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn1_vnp2_sn4 * vn3_vnp2_sn17
                                 - vn1_vnp2_sn4 * vn3_vnp2_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_8#7: vnp2
                                 + [ - vn1_vnp2_sn4 * vn4_vnp2_sn19
                                 - vn1_vnp2_sn4 * vn4_vnp2_sn8
                                 - vn1_vnp2_sn4 * vn4_vnp2_sn14 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_9#8: vnp3
                                 + [ - vn3_vnp3_sn4 * vn1_vnp3_sn11
                                 - vn1_vnp3_sn11 * vn3_vnp3_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_10#9: vnp3
                                 + [ - vn1_vnp3_sn11 * vn2_vnp3_sn1
                                 - vn1_vnp3_sn11 * vn2_vnp3_sn5 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_11#10: vnp3
                                 + [ - vn3_vnp3_sn4 * vn4_vnp3_sn8
                                 - vn3_vnp3_sn3 * vn4_vnp3_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_12#11: vnp3
                                 + [ - vn1_vnp3_sn11 * vn4_vnp3_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_13#12: vnp4
                                 + [ - vn2_vnp4_sn20 * vn1_vnp4_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_14#13: vnp4
                                 + [ - vn2_vnp4_sn20 * vn3_vnp4_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_15#14: vnp4
                                 + [ - vn3_vnp4_sn16 * vn4_vnp4_sn6
                                 - vn3_vnp4_sn16 * vn4_vnp4_sn5
                                 - vn3_vnp4_sn16 * vn4_vnp4_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_16#15: vnp4
                                 + [ - vn1_vnp4_sn10 * vn4_vnp4_sn6
                                 - vn1_vnp4_sn10 * vn4_vnp4_sn5
                                 - vn1_vnp4_sn10 * vn4_vnp4_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_17#16: vnp4
                                 + [ - vn1_vnp4_sn10 * vn3_vnp4_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_18#17: vnp4
                                 + [ - vn2_vnp4_sn20 * vn4_vnp4_sn6
                                 - vn2_vnp4_sn20 * vn4_vnp4_sn5
                                 - vn2_vnp4_sn20 * vn4_vnp4_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_19#18: vnp5
                                 + [ - vn3_vnp5_sn13 * vn1_vnp5_sn19
                                 - vn3_vnp5_sn13 * vn1_vnp5_sn3
                                 - vn3_vnp5_sn13 * vn1_vnp5_sn17
                                 - vn1_vnp5_sn19 * vn3_vnp5_sn10
                                 - vn1_vnp5_sn3 * vn3_vnp5_sn10
                                 - vn1_vnp5_sn17 * vn3_vnp5_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_20#19: vnp5
                                 + [ - vn4_vnp5_sn12 * vn2_vnp5_sn20
                                 - vn2_vnp5_sn20 * vn4_vnp5_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_21#20: vnp5
                                 + [ - vn3_vnp5_sn13 * vn4_vnp5_sn12
                                 - vn3_vnp5_sn13 * vn4_vnp5_sn1
                                 - vn3_vnp5_sn10 * vn4_vnp5_sn12
                                 - vn3_vnp5_sn10 * vn4_vnp5_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_22#21: vnp5
                                 + [ - vn1_vnp5_sn19 * vn2_vnp5_sn20
                                 - vn1_vnp5_sn3 * vn2_vnp5_sn20
                                 - vn1_vnp5_sn17 * vn2_vnp5_sn20 ] <= 0
 q23#22:                         1553 vnp1 + 1285 vnp2 + 1993 vnp3 + 2627 vnp4
                                 + 1350 vnp5
                                 + [ - 163 vn3_vnp1_sn3 * vn1_vnp1_sn13
                                 - 130 vn3_vnp1_sn3 * vn1_vnp1_sn17
                                 - 121 vn3_vnp1_sn3 * vn1_vnp1_sn12
                                 - 55 vn3_vnp1_sn3 * vn4_vnp1_sn1
                                 - 185 vn3_vnp1_sn3 * vn2_vnp1_sn14
                                 - 243 vn3_vnp1_sn3 * vn2_vnp1_sn11
                                 - 120 vn3_vnp1_sn3 * vn2_vnp1_sn2
                                 - 114 vn3_vnp1_sn3 * vn4_vnp1_sn20
                                 - 80 vn3_vnp1_sn3 * vn4_vnp1_sn16
                                 - 174 vn4_vnp1_sn1 * vn2_vnp1_sn14
                                 - 131 vn4_vnp1_sn1 * vn2_vnp1_sn11
                                 - 66 vn4_vnp1_sn1 * vn2_vnp1_sn2
                                 - 99 vn2_vnp1_sn14 * vn4_vnp1_sn20
                                 - 42 vn2_vnp1_sn14 * vn4_vnp1_sn16
                                 - 122 vn2_vnp1_sn11 * vn4_vnp1_sn20
                                 - 98 vn2_vnp1_sn11 * vn4_vnp1_sn16
                                 - 156 vn2_vnp1_sn2 * vn4_vnp1_sn20
                                 - 174 vn2_vnp1_sn2 * vn4_vnp1_sn16
                                 - 131 vn2_vnp2_sn11 * vn1_vnp2_sn4
                                 - 43 vn2_vnp2_sn11 * vn3_vnp2_sn17
                                 - 52 vn2_vnp2_sn11 * vn3_vnp2_sn9
                                 - 63 vn1_vnp2_sn4 * vn3_vnp2_sn17
                                 - 47 vn1_vnp2_sn4 * vn3_vnp2_sn9
                                 - 92 vn1_vnp2_sn4 * vn4_vnp2_sn19
                                 - 80 vn1_vnp2_sn4 * vn4_vnp2_sn8
                                 - 124 vn1_vnp2_sn4 * vn4_vnp2_sn14
                                 - 255 vn3_vnp3_sn4 * vn1_vnp3_sn11
                                 - 65 vn3_vnp3_sn4 * vn4_vnp3_sn8
                                 - 258 vn1_vnp3_sn11 * vn3_vnp3_sn3
                                 - 121 vn1_vnp3_sn11 * vn2_vnp3_sn1
                                 - 85 vn1_vnp3_sn11 * vn2_vnp3_sn5
                                 - 104 vn1_vnp3_sn11 * vn4_vnp3_sn8
                                 - 99 vn3_vnp3_sn3 * vn4_vnp3_sn8
                                 - 154 vn2_vnp4_sn20 * vn1_vnp4_sn10
                                 - 43 vn2_vnp4_sn20 * vn3_vnp4_sn16
                                 - 270 vn2_vnp4_sn20 * vn4_vnp4_sn6
                                 - 306 vn2_vnp4_sn20 * vn4_vnp4_sn5
                                 - 104 vn2_vnp4_sn20 * vn4_vnp4_sn9
                                 - 97 vn1_vnp4_sn10 * vn3_vnp4_sn16
                                 - 98 vn1_vnp4_sn10 * vn4_vnp4_sn6
                                 - 42 vn1_vnp4_sn10 * vn4_vnp4_sn5
                                 - 76 vn1_vnp4_sn10 * vn4_vnp4_sn9
                                 - 239 vn3_vnp4_sn16 * vn4_vnp4_sn6
                                 - 183 vn3_vnp4_sn16 * vn4_vnp4_sn5
                                 - 87 vn3_vnp4_sn16 * vn4_vnp4_sn9
                                 - 156 vn3_vnp5_sn13 * vn1_vnp5_sn19
                                 - 237 vn3_vnp5_sn13 * vn1_vnp5_sn3
                                 - 152 vn3_vnp5_sn13 * vn1_vnp5_sn17
                                 - 15 vn3_vnp5_sn13 * vn4_vnp5_sn12
                                 - 197 vn3_vnp5_sn13 * vn4_vnp5_sn1
                                 - 248 vn1_vnp5_sn19 * vn3_vnp5_sn10
                                 - 108 vn1_vnp5_sn19 * vn2_vnp5_sn20
                                 - 104 vn1_vnp5_sn3 * vn3_vnp5_sn10
                                 - 259 vn1_vnp5_sn3 * vn2_vnp5_sn20
                                 - 164 vn1_vnp5_sn17 * vn3_vnp5_sn10
                                 - 39 vn1_vnp5_sn17 * vn2_vnp5_sn20
                                 - 54 vn3_vnp5_sn10 * vn4_vnp5_sn12
                                 - 146 vn3_vnp5_sn10 * vn4_vnp5_sn1
                                 - 132 vn4_vnp5_sn12 * vn2_vnp5_sn20
                                 - 119 vn2_vnp5_sn20 * vn4_vnp5_sn1 ] >= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: 3 vn4_vnp1_sn1 + 4 vn2_vnp3_sn1
                                 + 2 vn4_vnp5_sn1 <= 4
 CPU_capacity_of_substrate_node_2#1: 4 vn2_vnp1_sn2 <= 8
 CPU_capacity_of_substrate_node_3#2: 2 vn3_vnp1_sn3 + 2 vn3_vnp3_sn3
                                 + 2 vn1_vnp5_sn3 <= 4
 CPU_capacity_of_substrate_node_4#3: 5 vn1_vnp2_sn4 + 2 vn3_vnp3_sn4 <= 6
 CPU_capacity_of_substrate_node_5#4: 4 vn2_vnp3_sn5 + 2 vn4_vnp4_sn5 <= 8
 CPU_capacity_of_substrate_node_6#5: 2 vn4_vnp4_sn6 <= 8
 CPU_capacity_of_substrate_node_8#6: vn4_vnp2_sn8 + vn4_vnp3_sn8 <= 6
 CPU_capacity_of_substrate_node_9#7: 4 vn3_vnp2_sn9 + 2 vn4_vnp4_sn9 <= 6
 CPU_capacity_of_substrate_node_10#8: 2 vn1_vnp4_sn10 + vn3_vnp5_sn10 <= 8
 CPU_capacity_of_substrate_node_11#9: 4 vn2_vnp1_sn11 + 2 vn2_vnp2_sn11
                                 + vn1_vnp3_sn11 <= 8
 CPU_capacity_of_substrate_node_12#10: 5 vn1_vnp1_sn12 + 2 vn4_vnp5_sn12 <= 7
 CPU_capacity_of_substrate_node_13#11: 5 vn1_vnp1_sn13 + vn3_vnp5_sn13 <= 8
 CPU_capacity_of_substrate_node_14#12: 4 vn2_vnp1_sn14 + vn4_vnp2_sn14 <= 4
 CPU_capacity_of_substrate_node_16#13: 3 vn4_vnp1_sn16 + 2 vn3_vnp4_sn16 <= 3
 CPU_capacity_of_substrate_node_17#14: 5 vn1_vnp1_sn17 + 4 vn3_vnp2_sn17
                                 + 2 vn1_vnp5_sn17 <= 8
 CPU_capacity_of_substrate_node_19#15: vn4_vnp2_sn19 + 2 vn1_vnp5_sn19 <= 3
 CPU_capacity_of_substrate_node_20#16: 3 vn4_vnp1_sn20 + 5 vn2_vnp4_sn20
                                 + 4 vn2_vnp5_sn20 <= 8
Bounds
 0 <= vnp1 <= 1
 0 <= vn3_vnp1_sn3 <= 1
 0 <= vn1_vnp1_sn13 <= 1
 0 <= vn1_vnp1_sn17 <= 1
 0 <= vn1_vnp1_sn12 <= 1
 0 <= vn4_vnp1_sn1 <= 1
 0 <= vn2_vnp1_sn14 <= 1
 0 <= vn2_vnp1_sn11 <= 1
 0 <= vn2_vnp1_sn2 <= 1
 0 <= vn4_vnp1_sn20 <= 1
 0 <= vn4_vnp1_sn16 <= 1
 0 <= vnp2 <= 1
 0 <= vn2_vnp2_sn11 <= 1
 0 <= vn1_vnp2_sn4 <= 1
 0 <= vn3_vnp2_sn17 <= 1
 0 <= vn3_vnp2_sn9 <= 1
 0 <= vn4_vnp2_sn19 <= 1
 0 <= vn4_vnp2_sn8 <= 1
 0 <= vn4_vnp2_sn14 <= 1
 0 <= vnp3 <= 1
 0 <= vn3_vnp3_sn4 <= 1
 0 <= vn1_vnp3_sn11 <= 1
 0 <= vn3_vnp3_sn3 <= 1
 0 <= vn2_vnp3_sn1 <= 1
 0 <= vn2_vnp3_sn5 <= 1
 0 <= vn4_vnp3_sn8 <= 1
 0 <= vnp4 <= 1
 0 <= vn2_vnp4_sn20 <= 1
 0 <= vn1_vnp4_sn10 <= 1
 0 <= vn3_vnp4_sn16 <= 1
 0 <= vn4_vnp4_sn6 <= 1
 0 <= vn4_vnp4_sn5 <= 1
 0 <= vn4_vnp4_sn9 <= 1
 0 <= vnp5 <= 1
 0 <= vn3_vnp5_sn13 <= 1
 0 <= vn1_vnp5_sn19 <= 1
 0 <= vn1_vnp5_sn3 <= 1
 0 <= vn1_vnp5_sn17 <= 1
 0 <= vn3_vnp5_sn10 <= 1
 0 <= vn4_vnp5_sn12 <= 1
 0 <= vn2_vnp5_sn20 <= 1
 0 <= vn4_vnp5_sn1 <= 1
Binaries
 vnp1  vn3_vnp1_sn3  vn1_vnp1_sn13  vn1_vnp1_sn17  vn1_vnp1_sn12  vn4_vnp1_sn1 
 vn2_vnp1_sn14  vn2_vnp1_sn11  vn2_vnp1_sn2  vn4_vnp1_sn20  vn4_vnp1_sn16 
 vnp2  vn2_vnp2_sn11  vn1_vnp2_sn4  vn3_vnp2_sn17  vn3_vnp2_sn9  vn4_vnp2_sn19 
 vn4_vnp2_sn8  vn4_vnp2_sn14  vnp3  vn3_vnp3_sn4  vn1_vnp3_sn11  vn3_vnp3_sn3 
 vn2_vnp3_sn1  vn2_vnp3_sn5  vn4_vnp3_sn8  vnp4  vn2_vnp4_sn20  vn1_vnp4_sn10 
 vn3_vnp4_sn16  vn4_vnp4_sn6  vn4_vnp4_sn5  vn4_vnp4_sn9  vnp5  vn3_vnp5_sn13 
 vn1_vnp5_sn19  vn1_vnp5_sn3  vn1_vnp5_sn17  vn3_vnp5_sn10  vn4_vnp5_sn12 
 vn2_vnp5_sn20  vn4_vnp5_sn1 
End
