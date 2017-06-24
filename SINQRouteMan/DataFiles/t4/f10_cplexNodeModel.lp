\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 490 vnp1 + 1175 vnp2 + 2199 vnp3 + [ - 498 vn2_vnp1_sn3 * vn1_vnp1_sn12
      - 58 vn2_vnp1_sn3 * vn1_vnp1_sn1 - 62 vn2_vnp1_sn3 * vn3_vnp1_sn19
      - 78 vn2_vnp1_sn3 * vn3_vnp1_sn13 - 60 vn2_vnp1_sn3 * vn3_vnp1_sn17
      - 52 vn1_vnp1_sn12 * vn3_vnp1_sn19 - 50 vn1_vnp1_sn12 * vn3_vnp1_sn13
      - 56 vn1_vnp1_sn12 * vn3_vnp1_sn17 - 52 vn1_vnp1_sn1 * vn3_vnp1_sn19
      - 84 vn1_vnp1_sn1 * vn3_vnp1_sn13 - 50 vn1_vnp1_sn1 * vn3_vnp1_sn17
      - 318 vn4_vnp2_sn19 * vn1_vnp2_sn5 - 192 vn4_vnp2_sn19 * vn1_vnp2_sn1
      - 110 vn4_vnp2_sn19 * vn2_vnp2_sn9 - 118 vn4_vnp2_sn19 * vn2_vnp2_sn13
      - 84 vn4_vnp2_sn19 * vn2_vnp2_sn12 - 186 vn1_vnp2_sn5 * vn4_vnp2_sn2
      - 322 vn1_vnp2_sn5 * vn4_vnp2_sn7 - 154 vn1_vnp2_sn5 * vn3_vnp2_sn20
      - 112 vn1_vnp2_sn5 * vn3_vnp2_sn14 - 140 vn1_vnp2_sn5 * vn3_vnp2_sn11
      - 60 vn1_vnp2_sn1 * vn4_vnp2_sn2 - 172 vn1_vnp2_sn1 * vn4_vnp2_sn7
      - 140 vn1_vnp2_sn1 * vn3_vnp2_sn20 - 142 vn1_vnp2_sn1 * vn3_vnp2_sn14
      - 194 vn1_vnp2_sn1 * vn3_vnp2_sn11 - 78 vn4_vnp2_sn2 * vn2_vnp2_sn9
      - 110 vn4_vnp2_sn2 * vn2_vnp2_sn13 - 156 vn4_vnp2_sn2 * vn2_vnp2_sn12
      - 84 vn4_vnp2_sn7 * vn2_vnp2_sn9 - 138 vn4_vnp2_sn7 * vn2_vnp2_sn13
      - 96 vn4_vnp2_sn7 * vn2_vnp2_sn12 - 318 vn2_vnp2_sn9 * vn3_vnp2_sn20
      - 56 vn2_vnp2_sn9 * vn3_vnp2_sn14 - 144 vn2_vnp2_sn9 * vn3_vnp2_sn11
      - 276 vn2_vnp2_sn13 * vn3_vnp2_sn20 - 350 vn2_vnp2_sn13 * vn3_vnp2_sn14
      - 270 vn2_vnp2_sn13 * vn3_vnp2_sn11 - 140 vn2_vnp2_sn12 * vn3_vnp2_sn20
      - 214 vn2_vnp2_sn12 * vn3_vnp2_sn14 - 134 vn2_vnp2_sn12 * vn3_vnp2_sn11
      - 34 vn4_vnp3_sn3 * vn1_vnp3_sn2 - 320 vn4_vnp3_sn3 * vn2_vnp3_sn18
      - 202 vn4_vnp3_sn3 * vn3_vnp3_sn9 - 520 vn4_vnp3_sn3 * vn3_vnp3_sn12
      - 118 vn1_vnp3_sn2 * vn4_vnp3_sn13 - 184 vn1_vnp3_sn2 * vn2_vnp3_sn18
      - 84 vn1_vnp3_sn2 * vn3_vnp3_sn9 - 154 vn1_vnp3_sn2 * vn3_vnp3_sn12
      - 400 vn4_vnp3_sn13 * vn2_vnp3_sn18 - 366 vn4_vnp3_sn13 * vn3_vnp3_sn9
      - 234 vn4_vnp3_sn13 * vn3_vnp3_sn12 - 122 vn2_vnp3_sn18 * vn3_vnp3_sn9
      - 120 vn2_vnp3_sn18 * vn3_vnp3_sn12 ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn12
                                 + vn1_vnp1_sn1 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn3 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn19
                                 + vn3_vnp1_sn13 + vn3_vnp1_sn17 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#3: - vnp2 + vn1_vnp2_sn5 + vn1_vnp2_sn1
                                 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#4: - vnp2 + vn2_vnp2_sn9
                                 + vn2_vnp2_sn13 + vn2_vnp2_sn12 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#5: - vnp2 + vn3_vnp2_sn20
                                 + vn3_vnp2_sn14 + vn3_vnp2_sn11 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#6: - vnp2 + vn4_vnp2_sn19
                                 + vn4_vnp2_sn2 + vn4_vnp2_sn7 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#7: - vnp3 + vn1_vnp3_sn2 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#8: - vnp3 + vn2_vnp3_sn18 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#9: - vnp3 + vn3_vnp3_sn9
                                 + vn3_vnp3_sn12 <= 0
 _Embedding_clash_const_of_vnode4_vnp_3#10: - vnp3 + vn4_vnp3_sn3
                                 + vn4_vnp3_sn13 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn2_vnp1_sn3 * vn1_vnp1_sn12
                                 - vn2_vnp1_sn3 * vn1_vnp1_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn2_vnp1_sn3 * vn3_vnp1_sn19
                                 - vn2_vnp1_sn3 * vn3_vnp1_sn13
                                 - vn2_vnp1_sn3 * vn3_vnp1_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn1_vnp1_sn12 * vn3_vnp1_sn19
                                 - vn1_vnp1_sn12 * vn3_vnp1_sn13
                                 - vn1_vnp1_sn12 * vn3_vnp1_sn17
                                 - vn1_vnp1_sn1 * vn3_vnp1_sn19
                                 - vn1_vnp1_sn1 * vn3_vnp1_sn13
                                 - vn1_vnp1_sn1 * vn3_vnp1_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_4#3: vnp2
                                 + [ - vn4_vnp2_sn19 * vn1_vnp2_sn5
                                 - vn4_vnp2_sn19 * vn1_vnp2_sn1
                                 - vn1_vnp2_sn5 * vn4_vnp2_sn2
                                 - vn1_vnp2_sn5 * vn4_vnp2_sn7
                                 - vn1_vnp2_sn1 * vn4_vnp2_sn2
                                 - vn1_vnp2_sn1 * vn4_vnp2_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_5#4: vnp2
                                 + [ - vn4_vnp2_sn19 * vn2_vnp2_sn9
                                 - vn4_vnp2_sn19 * vn2_vnp2_sn13
                                 - vn4_vnp2_sn19 * vn2_vnp2_sn12
                                 - vn4_vnp2_sn2 * vn2_vnp2_sn9
                                 - vn4_vnp2_sn2 * vn2_vnp2_sn13
                                 - vn4_vnp2_sn2 * vn2_vnp2_sn12
                                 - vn4_vnp2_sn7 * vn2_vnp2_sn9
                                 - vn4_vnp2_sn7 * vn2_vnp2_sn13
                                 - vn4_vnp2_sn7 * vn2_vnp2_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn1_vnp2_sn5 * vn3_vnp2_sn20
                                 - vn1_vnp2_sn5 * vn3_vnp2_sn14
                                 - vn1_vnp2_sn5 * vn3_vnp2_sn11
                                 - vn1_vnp2_sn1 * vn3_vnp2_sn20
                                 - vn1_vnp2_sn1 * vn3_vnp2_sn14
                                 - vn1_vnp2_sn1 * vn3_vnp2_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn2_vnp2_sn9 * vn3_vnp2_sn20
                                 - vn2_vnp2_sn9 * vn3_vnp2_sn14
                                 - vn2_vnp2_sn9 * vn3_vnp2_sn11
                                 - vn2_vnp2_sn13 * vn3_vnp2_sn20
                                 - vn2_vnp2_sn13 * vn3_vnp2_sn14
                                 - vn2_vnp2_sn13 * vn3_vnp2_sn11
                                 - vn2_vnp2_sn12 * vn3_vnp2_sn20
                                 - vn2_vnp2_sn12 * vn3_vnp2_sn14
                                 - vn2_vnp2_sn12 * vn3_vnp2_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_8#7: vnp3
                                 + [ - vn4_vnp3_sn3 * vn1_vnp3_sn2
                                 - vn1_vnp3_sn2 * vn4_vnp3_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_9#8: vnp3
                                 + [ - vn4_vnp3_sn3 * vn2_vnp3_sn18
                                 - vn4_vnp3_sn13 * vn2_vnp3_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_10#9: vnp3
                                 + [ - vn4_vnp3_sn3 * vn3_vnp3_sn9
                                 - vn4_vnp3_sn3 * vn3_vnp3_sn12
                                 - vn4_vnp3_sn13 * vn3_vnp3_sn9
                                 - vn4_vnp3_sn13 * vn3_vnp3_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_11#10: vnp3
                                 + [ - vn2_vnp3_sn18 * vn3_vnp3_sn9
                                 - vn2_vnp3_sn18 * vn3_vnp3_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_12#11: vnp3
                                 + [ - vn1_vnp3_sn2 * vn2_vnp3_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_13#12: vnp3
                                 + [ - vn1_vnp3_sn2 * vn3_vnp3_sn9
                                 - vn1_vnp3_sn2 * vn3_vnp3_sn12 ] <= 0
 q14#13:                         490 vnp1 + 1175 vnp2 + 2199 vnp3
                                 + [ - 249 vn2_vnp1_sn3 * vn1_vnp1_sn12
                                 - 29 vn2_vnp1_sn3 * vn1_vnp1_sn1
                                 - 31 vn2_vnp1_sn3 * vn3_vnp1_sn19
                                 - 39 vn2_vnp1_sn3 * vn3_vnp1_sn13
                                 - 30 vn2_vnp1_sn3 * vn3_vnp1_sn17
                                 - 26 vn1_vnp1_sn12 * vn3_vnp1_sn19
                                 - 25 vn1_vnp1_sn12 * vn3_vnp1_sn13
                                 - 28 vn1_vnp1_sn12 * vn3_vnp1_sn17
                                 - 26 vn1_vnp1_sn1 * vn3_vnp1_sn19
                                 - 42 vn1_vnp1_sn1 * vn3_vnp1_sn13
                                 - 25 vn1_vnp1_sn1 * vn3_vnp1_sn17
                                 - 159 vn4_vnp2_sn19 * vn1_vnp2_sn5
                                 - 96 vn4_vnp2_sn19 * vn1_vnp2_sn1
                                 - 55 vn4_vnp2_sn19 * vn2_vnp2_sn9
                                 - 59 vn4_vnp2_sn19 * vn2_vnp2_sn13
                                 - 42 vn4_vnp2_sn19 * vn2_vnp2_sn12
                                 - 93 vn1_vnp2_sn5 * vn4_vnp2_sn2
                                 - 161 vn1_vnp2_sn5 * vn4_vnp2_sn7
                                 - 77 vn1_vnp2_sn5 * vn3_vnp2_sn20
                                 - 56 vn1_vnp2_sn5 * vn3_vnp2_sn14
                                 - 70 vn1_vnp2_sn5 * vn3_vnp2_sn11
                                 - 30 vn1_vnp2_sn1 * vn4_vnp2_sn2
                                 - 86 vn1_vnp2_sn1 * vn4_vnp2_sn7
                                 - 70 vn1_vnp2_sn1 * vn3_vnp2_sn20
                                 - 71 vn1_vnp2_sn1 * vn3_vnp2_sn14
                                 - 97 vn1_vnp2_sn1 * vn3_vnp2_sn11
                                 - 39 vn4_vnp2_sn2 * vn2_vnp2_sn9
                                 - 55 vn4_vnp2_sn2 * vn2_vnp2_sn13
                                 - 78 vn4_vnp2_sn2 * vn2_vnp2_sn12
                                 - 42 vn4_vnp2_sn7 * vn2_vnp2_sn9
                                 - 69 vn4_vnp2_sn7 * vn2_vnp2_sn13
                                 - 48 vn4_vnp2_sn7 * vn2_vnp2_sn12
                                 - 159 vn2_vnp2_sn9 * vn3_vnp2_sn20
                                 - 28 vn2_vnp2_sn9 * vn3_vnp2_sn14
                                 - 72 vn2_vnp2_sn9 * vn3_vnp2_sn11
                                 - 138 vn2_vnp2_sn13 * vn3_vnp2_sn20
                                 - 175 vn2_vnp2_sn13 * vn3_vnp2_sn14
                                 - 135 vn2_vnp2_sn13 * vn3_vnp2_sn11
                                 - 70 vn2_vnp2_sn12 * vn3_vnp2_sn20
                                 - 107 vn2_vnp2_sn12 * vn3_vnp2_sn14
                                 - 67 vn2_vnp2_sn12 * vn3_vnp2_sn11
                                 - 17 vn4_vnp3_sn3 * vn1_vnp3_sn2
                                 - 160 vn4_vnp3_sn3 * vn2_vnp3_sn18
                                 - 101 vn4_vnp3_sn3 * vn3_vnp3_sn9
                                 - 260 vn4_vnp3_sn3 * vn3_vnp3_sn12
                                 - 59 vn1_vnp3_sn2 * vn4_vnp3_sn13
                                 - 92 vn1_vnp3_sn2 * vn2_vnp3_sn18
                                 - 42 vn1_vnp3_sn2 * vn3_vnp3_sn9
                                 - 77 vn1_vnp3_sn2 * vn3_vnp3_sn12
                                 - 200 vn4_vnp3_sn13 * vn2_vnp3_sn18
                                 - 183 vn4_vnp3_sn13 * vn3_vnp3_sn9
                                 - 117 vn4_vnp3_sn13 * vn3_vnp3_sn12
                                 - 61 vn2_vnp3_sn18 * vn3_vnp3_sn9
                                 - 60 vn2_vnp3_sn18 * vn3_vnp3_sn12 ] >= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: vn1_vnp1_sn1 + 3 vn1_vnp2_sn1 <= 4
 CPU_capacity_of_substrate_node_2#1: 3 vn4_vnp2_sn2 + 3 vn1_vnp3_sn2 <= 8
 CPU_capacity_of_substrate_node_3#2: 5 vn2_vnp1_sn3 + 4 vn4_vnp3_sn3 <= 4
 CPU_capacity_of_substrate_node_5#3: 3 vn1_vnp2_sn5 <= 8
 CPU_capacity_of_substrate_node_7#4: 3 vn4_vnp2_sn7 <= 8
 CPU_capacity_of_substrate_node_9#5: 3 vn2_vnp2_sn9 + 4 vn3_vnp3_sn9 <= 6
 CPU_capacity_of_substrate_node_11#6: 5 vn3_vnp2_sn11 <= 8
 CPU_capacity_of_substrate_node_12#7: vn1_vnp1_sn12 + 3 vn2_vnp2_sn12
                                 + 4 vn3_vnp3_sn12 <= 7
 CPU_capacity_of_substrate_node_13#8: vn3_vnp1_sn13 + 3 vn2_vnp2_sn13
                                 + 4 vn4_vnp3_sn13 <= 8
 CPU_capacity_of_substrate_node_14#9: 5 vn3_vnp2_sn14 <= 4
 CPU_capacity_of_substrate_node_17#10: vn3_vnp1_sn17 <= 8
 CPU_capacity_of_substrate_node_18#11: 4 vn2_vnp3_sn18 <= 2
 CPU_capacity_of_substrate_node_19#12: vn3_vnp1_sn19 + 3 vn4_vnp2_sn19 <= 3
 CPU_capacity_of_substrate_node_20#13: 5 vn3_vnp2_sn20 <= 5
Bounds
 0 <= vnp1 <= 1
 0 <= vn2_vnp1_sn3 <= 1
 0 <= vn1_vnp1_sn12 <= 1
 0 <= vn1_vnp1_sn1 <= 1
 0 <= vn3_vnp1_sn19 <= 1
 0 <= vn3_vnp1_sn13 <= 1
 0 <= vn3_vnp1_sn17 <= 1
 0 <= vnp2 <= 1
 0 <= vn4_vnp2_sn19 <= 1
 0 <= vn1_vnp2_sn5 <= 1
 0 <= vn1_vnp2_sn1 <= 1
 0 <= vn4_vnp2_sn2 <= 1
 0 <= vn4_vnp2_sn7 <= 1
 0 <= vn2_vnp2_sn9 <= 1
 0 <= vn2_vnp2_sn13 <= 1
 0 <= vn2_vnp2_sn12 <= 1
 0 <= vn3_vnp2_sn20 <= 1
 0 <= vn3_vnp2_sn14 <= 1
 0 <= vn3_vnp2_sn11 <= 1
 0 <= vnp3 <= 1
 0 <= vn4_vnp3_sn3 <= 1
 0 <= vn1_vnp3_sn2 <= 1
 0 <= vn4_vnp3_sn13 <= 1
 0 <= vn2_vnp3_sn18 <= 1
 0 <= vn3_vnp3_sn9 <= 1
 0 <= vn3_vnp3_sn12 <= 1
Binaries
 vnp1  vn2_vnp1_sn3  vn1_vnp1_sn12  vn1_vnp1_sn1  vn3_vnp1_sn19  vn3_vnp1_sn13 
 vn3_vnp1_sn17  vnp2  vn4_vnp2_sn19  vn1_vnp2_sn5  vn1_vnp2_sn1  vn4_vnp2_sn2 
 vn4_vnp2_sn7  vn2_vnp2_sn9  vn2_vnp2_sn13  vn2_vnp2_sn12  vn3_vnp2_sn20 
 vn3_vnp2_sn14  vn3_vnp2_sn11  vnp3  vn4_vnp3_sn3  vn1_vnp3_sn2  vn4_vnp3_sn13 
 vn2_vnp3_sn18  vn3_vnp3_sn9  vn3_vnp3_sn12 
End
