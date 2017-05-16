\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 864 vnp1 + 1996 vnp2 + [ - 422 vn4_vnp1_sn6 * vn1_vnp1_sn19
      - 122 vn4_vnp1_sn6 * vn3_vnp1_sn3 - 84 vn4_vnp1_sn6 * vn3_vnp1_sn13
      - 196 vn4_vnp1_sn6 * vn3_vnp1_sn20 - 268 vn1_vnp1_sn19 * vn4_vnp1_sn14
      - 170 vn1_vnp1_sn19 * vn4_vnp1_sn1 - 36 vn1_vnp1_sn19 * vn2_vnp1_sn7
      - 144 vn4_vnp1_sn14 * vn3_vnp1_sn3 - 154 vn4_vnp1_sn14 * vn3_vnp1_sn13
      - 70 vn4_vnp1_sn14 * vn3_vnp1_sn20 - 70 vn4_vnp1_sn1 * vn3_vnp1_sn3
      - 216 vn4_vnp1_sn1 * vn3_vnp1_sn13 - 144 vn4_vnp1_sn1 * vn3_vnp1_sn20
      - 198 vn3_vnp1_sn3 * vn2_vnp1_sn7 - 442 vn2_vnp1_sn7 * vn3_vnp1_sn13
      - 180 vn2_vnp1_sn7 * vn3_vnp1_sn20 - 168 vn4_vnp2_sn9 * vn1_vnp2_sn6
      - 84 vn4_vnp2_sn9 * vn1_vnp2_sn10 - 144 vn4_vnp2_sn9 * vn1_vnp2_sn20
      - 334 vn4_vnp2_sn9 * vn2_vnp2_sn13 - 226 vn4_vnp2_sn9 * vn2_vnp2_sn12
      - 316 vn4_vnp2_sn9 * vn3_vnp2_sn19 - 120 vn4_vnp2_sn9 * vn3_vnp2_sn14
      - 250 vn4_vnp2_sn9 * vn3_vnp2_sn1 - 144 vn1_vnp2_sn6 * vn4_vnp2_sn5
      - 126 vn1_vnp2_sn6 * vn2_vnp2_sn13 - 222 vn1_vnp2_sn6 * vn2_vnp2_sn12
      - 532 vn1_vnp2_sn6 * vn3_vnp2_sn19 - 470 vn1_vnp2_sn6 * vn3_vnp2_sn14
      - 368 vn1_vnp2_sn6 * vn3_vnp2_sn1 - 96 vn1_vnp2_sn10 * vn4_vnp2_sn5
      - 180 vn1_vnp2_sn10 * vn2_vnp2_sn13 - 108 vn1_vnp2_sn10 * vn2_vnp2_sn12
      - 210 vn1_vnp2_sn10 * vn3_vnp2_sn19 - 118 vn1_vnp2_sn10 * vn3_vnp2_sn14
      - 406 vn1_vnp2_sn10 * vn3_vnp2_sn1 - 294 vn1_vnp2_sn20 * vn4_vnp2_sn5
      - 210 vn1_vnp2_sn20 * vn2_vnp2_sn13 - 138 vn1_vnp2_sn20 * vn2_vnp2_sn12
      - 180 vn1_vnp2_sn20 * vn3_vnp2_sn19 - 168 vn1_vnp2_sn20 * vn3_vnp2_sn14
      - 356 vn1_vnp2_sn20 * vn3_vnp2_sn1 - 304 vn4_vnp2_sn5 * vn2_vnp2_sn13
      - 244 vn4_vnp2_sn5 * vn2_vnp2_sn12 - 262 vn4_vnp2_sn5 * vn3_vnp2_sn19
      - 210 vn4_vnp2_sn5 * vn3_vnp2_sn14 - 132 vn4_vnp2_sn5 * vn3_vnp2_sn1
      - 502 vn2_vnp2_sn13 * vn3_vnp2_sn19 - 360 vn2_vnp2_sn13 * vn3_vnp2_sn14
      - 518 vn2_vnp2_sn13 * vn3_vnp2_sn1 - 374 vn2_vnp2_sn12 * vn3_vnp2_sn19
      - 322 vn2_vnp2_sn12 * vn3_vnp2_sn14 - 640 vn2_vnp2_sn12 * vn3_vnp2_sn1
      ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn19 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn7 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn3
                                 + vn3_vnp1_sn13 + vn3_vnp1_sn20 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn6
                                 + vn4_vnp1_sn14 + vn4_vnp1_sn1 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn6
                                 + vn1_vnp2_sn10 + vn1_vnp2_sn20 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn13
                                 + vn2_vnp2_sn12 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn19
                                 + vn3_vnp2_sn14 + vn3_vnp2_sn1 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#7: - vnp2 + vn4_vnp2_sn9 + vn4_vnp2_sn5
                                 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn4_vnp1_sn6 * vn1_vnp1_sn19
                                 - vn1_vnp1_sn19 * vn4_vnp1_sn14
                                 - vn1_vnp1_sn19 * vn4_vnp1_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn3_vnp1_sn3 * vn2_vnp1_sn7
                                 - vn2_vnp1_sn7 * vn3_vnp1_sn13
                                 - vn2_vnp1_sn7 * vn3_vnp1_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn4_vnp1_sn6 * vn3_vnp1_sn3
                                 - vn4_vnp1_sn6 * vn3_vnp1_sn13
                                 - vn4_vnp1_sn6 * vn3_vnp1_sn20
                                 - vn4_vnp1_sn14 * vn3_vnp1_sn3
                                 - vn4_vnp1_sn14 * vn3_vnp1_sn13
                                 - vn4_vnp1_sn14 * vn3_vnp1_sn20
                                 - vn4_vnp1_sn1 * vn3_vnp1_sn3
                                 - vn4_vnp1_sn1 * vn3_vnp1_sn13
                                 - vn4_vnp1_sn1 * vn3_vnp1_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn1_vnp1_sn19 * vn2_vnp1_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_5#4: vnp2
                                 + [ - vn4_vnp2_sn9 * vn1_vnp2_sn6
                                 - vn4_vnp2_sn9 * vn1_vnp2_sn10
                                 - vn4_vnp2_sn9 * vn1_vnp2_sn20
                                 - vn1_vnp2_sn6 * vn4_vnp2_sn5
                                 - vn1_vnp2_sn10 * vn4_vnp2_sn5
                                 - vn1_vnp2_sn20 * vn4_vnp2_sn5 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn4_vnp2_sn9 * vn2_vnp2_sn13
                                 - vn4_vnp2_sn9 * vn2_vnp2_sn12
                                 - vn4_vnp2_sn5 * vn2_vnp2_sn13
                                 - vn4_vnp2_sn5 * vn2_vnp2_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn1_vnp2_sn6 * vn3_vnp2_sn19
                                 - vn1_vnp2_sn6 * vn3_vnp2_sn14
                                 - vn1_vnp2_sn6 * vn3_vnp2_sn1
                                 - vn1_vnp2_sn10 * vn3_vnp2_sn19
                                 - vn1_vnp2_sn10 * vn3_vnp2_sn14
                                 - vn1_vnp2_sn10 * vn3_vnp2_sn1
                                 - vn1_vnp2_sn20 * vn3_vnp2_sn19
                                 - vn1_vnp2_sn20 * vn3_vnp2_sn14
                                 - vn1_vnp2_sn20 * vn3_vnp2_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_8#7: vnp2
                                 + [ - vn1_vnp2_sn6 * vn2_vnp2_sn13
                                 - vn1_vnp2_sn6 * vn2_vnp2_sn12
                                 - vn1_vnp2_sn10 * vn2_vnp2_sn13
                                 - vn1_vnp2_sn10 * vn2_vnp2_sn12
                                 - vn1_vnp2_sn20 * vn2_vnp2_sn13
                                 - vn1_vnp2_sn20 * vn2_vnp2_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_9#8: vnp2
                                 + [ - vn2_vnp2_sn13 * vn3_vnp2_sn19
                                 - vn2_vnp2_sn13 * vn3_vnp2_sn14
                                 - vn2_vnp2_sn13 * vn3_vnp2_sn1
                                 - vn2_vnp2_sn12 * vn3_vnp2_sn19
                                 - vn2_vnp2_sn12 * vn3_vnp2_sn14
                                 - vn2_vnp2_sn12 * vn3_vnp2_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_10#9: vnp2
                                 + [ - vn4_vnp2_sn9 * vn3_vnp2_sn19
                                 - vn4_vnp2_sn9 * vn3_vnp2_sn14
                                 - vn4_vnp2_sn9 * vn3_vnp2_sn1
                                 - vn4_vnp2_sn5 * vn3_vnp2_sn19
                                 - vn4_vnp2_sn5 * vn3_vnp2_sn14
                                 - vn4_vnp2_sn5 * vn3_vnp2_sn1 ] <= 0
 q11#10:                         - 864 vnp1 - 1996 vnp2
                                 + [ 211 vn4_vnp1_sn6 * vn1_vnp1_sn19
                                 + 61 vn4_vnp1_sn6 * vn3_vnp1_sn3
                                 + 42 vn4_vnp1_sn6 * vn3_vnp1_sn13
                                 + 98 vn4_vnp1_sn6 * vn3_vnp1_sn20
                                 + 134 vn1_vnp1_sn19 * vn4_vnp1_sn14
                                 + 85 vn1_vnp1_sn19 * vn4_vnp1_sn1
                                 + 18 vn1_vnp1_sn19 * vn2_vnp1_sn7
                                 + 72 vn4_vnp1_sn14 * vn3_vnp1_sn3
                                 + 77 vn4_vnp1_sn14 * vn3_vnp1_sn13
                                 + 35 vn4_vnp1_sn14 * vn3_vnp1_sn20
                                 + 35 vn4_vnp1_sn1 * vn3_vnp1_sn3
                                 + 108 vn4_vnp1_sn1 * vn3_vnp1_sn13
                                 + 72 vn4_vnp1_sn1 * vn3_vnp1_sn20
                                 + 99 vn3_vnp1_sn3 * vn2_vnp1_sn7
                                 + 221 vn2_vnp1_sn7 * vn3_vnp1_sn13
                                 + 90 vn2_vnp1_sn7 * vn3_vnp1_sn20
                                 + 84 vn4_vnp2_sn9 * vn1_vnp2_sn6
                                 + 42 vn4_vnp2_sn9 * vn1_vnp2_sn10
                                 + 72 vn4_vnp2_sn9 * vn1_vnp2_sn20
                                 + 167 vn4_vnp2_sn9 * vn2_vnp2_sn13
                                 + 113 vn4_vnp2_sn9 * vn2_vnp2_sn12
                                 + 158 vn4_vnp2_sn9 * vn3_vnp2_sn19
                                 + 60 vn4_vnp2_sn9 * vn3_vnp2_sn14
                                 + 125 vn4_vnp2_sn9 * vn3_vnp2_sn1
                                 + 72 vn1_vnp2_sn6 * vn4_vnp2_sn5
                                 + 63 vn1_vnp2_sn6 * vn2_vnp2_sn13
                                 + 111 vn1_vnp2_sn6 * vn2_vnp2_sn12
                                 + 266 vn1_vnp2_sn6 * vn3_vnp2_sn19
                                 + 235 vn1_vnp2_sn6 * vn3_vnp2_sn14
                                 + 184 vn1_vnp2_sn6 * vn3_vnp2_sn1
                                 + 48 vn1_vnp2_sn10 * vn4_vnp2_sn5
                                 + 90 vn1_vnp2_sn10 * vn2_vnp2_sn13
                                 + 54 vn1_vnp2_sn10 * vn2_vnp2_sn12
                                 + 105 vn1_vnp2_sn10 * vn3_vnp2_sn19
                                 + 59 vn1_vnp2_sn10 * vn3_vnp2_sn14
                                 + 203 vn1_vnp2_sn10 * vn3_vnp2_sn1
                                 + 147 vn1_vnp2_sn20 * vn4_vnp2_sn5
                                 + 105 vn1_vnp2_sn20 * vn2_vnp2_sn13
                                 + 69 vn1_vnp2_sn20 * vn2_vnp2_sn12
                                 + 90 vn1_vnp2_sn20 * vn3_vnp2_sn19
                                 + 84 vn1_vnp2_sn20 * vn3_vnp2_sn14
                                 + 178 vn1_vnp2_sn20 * vn3_vnp2_sn1
                                 + 152 vn4_vnp2_sn5 * vn2_vnp2_sn13
                                 + 122 vn4_vnp2_sn5 * vn2_vnp2_sn12
                                 + 131 vn4_vnp2_sn5 * vn3_vnp2_sn19
                                 + 105 vn4_vnp2_sn5 * vn3_vnp2_sn14
                                 + 66 vn4_vnp2_sn5 * vn3_vnp2_sn1
                                 + 251 vn2_vnp2_sn13 * vn3_vnp2_sn19
                                 + 180 vn2_vnp2_sn13 * vn3_vnp2_sn14
                                 + 259 vn2_vnp2_sn13 * vn3_vnp2_sn1
                                 + 187 vn2_vnp2_sn12 * vn3_vnp2_sn19
                                 + 161 vn2_vnp2_sn12 * vn3_vnp2_sn14
                                 + 320 vn2_vnp2_sn12 * vn3_vnp2_sn1 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: vn4_vnp1_sn1 + 3 vn3_vnp2_sn1 <= 4
 CPU_capacity_of_substrate_node_3#1: 3 vn3_vnp1_sn3 <= 5
 CPU_capacity_of_substrate_node_5#2: 3 vn4_vnp2_sn5 <= 5
 CPU_capacity_of_substrate_node_6#3: vn4_vnp1_sn6 + 3 vn1_vnp2_sn6 <= 8
 CPU_capacity_of_substrate_node_7#4: vn2_vnp1_sn7 <= 2
 CPU_capacity_of_substrate_node_9#5: 3 vn4_vnp2_sn9 <= 5
 CPU_capacity_of_substrate_node_10#6: 3 vn1_vnp2_sn10 <= 5
 CPU_capacity_of_substrate_node_12#7: 3 vn2_vnp2_sn12 <= 7
 CPU_capacity_of_substrate_node_13#8: 3 vn3_vnp1_sn13 + 3 vn2_vnp2_sn13 <= 8
 CPU_capacity_of_substrate_node_14#9: vn4_vnp1_sn14 + 3 vn3_vnp2_sn14 <= 5
 CPU_capacity_of_substrate_node_19#10: 3 vn1_vnp1_sn19 + 3 vn3_vnp2_sn19 <= 4
 CPU_capacity_of_substrate_node_20#11: 3 vn3_vnp1_sn20 + 3 vn1_vnp2_sn20 <= 3
Bounds
 0 <= vnp1 <= 1
 0 <= vn4_vnp1_sn6 <= 1
 0 <= vn1_vnp1_sn19 <= 1
 0 <= vn4_vnp1_sn14 <= 1
 0 <= vn4_vnp1_sn1 <= 1
 0 <= vn3_vnp1_sn3 <= 1
 0 <= vn2_vnp1_sn7 <= 1
 0 <= vn3_vnp1_sn13 <= 1
 0 <= vn3_vnp1_sn20 <= 1
 0 <= vnp2 <= 1
 0 <= vn4_vnp2_sn9 <= 1
 0 <= vn1_vnp2_sn6 <= 1
 0 <= vn1_vnp2_sn10 <= 1
 0 <= vn1_vnp2_sn20 <= 1
 0 <= vn4_vnp2_sn5 <= 1
 0 <= vn2_vnp2_sn13 <= 1
 0 <= vn2_vnp2_sn12 <= 1
 0 <= vn3_vnp2_sn19 <= 1
 0 <= vn3_vnp2_sn14 <= 1
 0 <= vn3_vnp2_sn1 <= 1
Binaries
 vnp1  vn4_vnp1_sn6  vn1_vnp1_sn19  vn4_vnp1_sn14  vn4_vnp1_sn1  vn3_vnp1_sn3 
 vn2_vnp1_sn7  vn3_vnp1_sn13  vn3_vnp1_sn20  vnp2  vn4_vnp2_sn9  vn1_vnp2_sn6 
 vn1_vnp2_sn10  vn1_vnp2_sn20  vn4_vnp2_sn5  vn2_vnp2_sn13  vn2_vnp2_sn12 
 vn3_vnp2_sn19  vn3_vnp2_sn14  vn3_vnp2_sn1 
End
