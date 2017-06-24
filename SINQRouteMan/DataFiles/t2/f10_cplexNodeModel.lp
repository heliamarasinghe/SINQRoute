\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 753 vnp1 + 715 vnp2 + 790 vnp3 + [ - 86 vn3_vnp1_sn16 * vn1_vnp1_sn3
      - 94 vn3_vnp1_sn16 * vn2_vnp1_sn4 - 106 vn3_vnp1_sn16 * vn2_vnp1_sn11
      - 82 vn3_vnp1_sn16 * vn2_vnp1_sn9 - 38 vn1_vnp1_sn3 * vn3_vnp1_sn1
      - 112 vn1_vnp1_sn3 * vn3_vnp1_sn12 - 44 vn1_vnp1_sn3 * vn2_vnp1_sn4
      - 258 vn1_vnp1_sn3 * vn2_vnp1_sn11 - 44 vn1_vnp1_sn3 * vn2_vnp1_sn9
      - 70 vn3_vnp1_sn1 * vn2_vnp1_sn4 - 144 vn3_vnp1_sn1 * vn2_vnp1_sn11
      - 42 vn3_vnp1_sn1 * vn2_vnp1_sn9 - 102 vn3_vnp1_sn12 * vn2_vnp1_sn4
      - 58 vn3_vnp1_sn12 * vn2_vnp1_sn11 - 62 vn3_vnp1_sn12 * vn2_vnp1_sn9
      - 88 vn4_vnp2_sn5 * vn1_vnp2_sn1 - 68 vn4_vnp2_sn5 * vn1_vnp2_sn14
      - 52 vn4_vnp2_sn5 * vn1_vnp2_sn9 - 210 vn4_vnp2_sn5 * vn2_vnp2_sn2
      - 136 vn4_vnp2_sn5 * vn2_vnp2_sn7 - 128 vn1_vnp2_sn1 * vn4_vnp2_sn18
      - 60 vn1_vnp2_sn1 * vn4_vnp2_sn10 - 182 vn1_vnp2_sn1 * vn3_vnp2_sn8
      - 110 vn1_vnp2_sn1 * vn3_vnp2_sn4 - 156 vn1_vnp2_sn14 * vn4_vnp2_sn18
      - 100 vn1_vnp2_sn14 * vn4_vnp2_sn10 - 142 vn1_vnp2_sn14 * vn3_vnp2_sn8
      - 138 vn1_vnp2_sn14 * vn3_vnp2_sn4 - 124 vn1_vnp2_sn9 * vn4_vnp2_sn18
      - 48 vn1_vnp2_sn9 * vn4_vnp2_sn10 - 110 vn1_vnp2_sn9 * vn3_vnp2_sn8
      - 122 vn1_vnp2_sn9 * vn3_vnp2_sn4 - 280 vn4_vnp2_sn18 * vn2_vnp2_sn2
      - 194 vn4_vnp2_sn18 * vn2_vnp2_sn7 - 300 vn4_vnp2_sn10 * vn2_vnp2_sn2
      - 220 vn4_vnp2_sn10 * vn2_vnp2_sn7 - 110 vn2_vnp2_sn2 * vn3_vnp2_sn8
      - 70 vn2_vnp2_sn2 * vn3_vnp2_sn4 - 88 vn2_vnp2_sn7 * vn3_vnp2_sn8
      - 56 vn2_vnp2_sn7 * vn3_vnp2_sn4 - 268 vn2_vnp3_sn7 * vn1_vnp3_sn16
      - 60 vn2_vnp3_sn7 * vn1_vnp3_sn1 - 196 vn2_vnp3_sn7 * vn3_vnp3_sn12
      - 150 vn2_vnp3_sn7 * vn3_vnp3_sn9 - 194 vn2_vnp3_sn7 * vn3_vnp3_sn20
      - 252 vn1_vnp3_sn16 * vn3_vnp3_sn12 - 176 vn1_vnp3_sn16 * vn3_vnp3_sn9
      - 268 vn1_vnp3_sn16 * vn3_vnp3_sn20 - 346 vn1_vnp3_sn1 * vn3_vnp3_sn12
      - 72 vn1_vnp3_sn1 * vn3_vnp3_sn9 - 284 vn1_vnp3_sn1 * vn3_vnp3_sn20 ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn3 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn4
                                 + vn2_vnp1_sn11 + vn2_vnp1_sn9 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn16
                                 + vn3_vnp1_sn1 + vn3_vnp1_sn12 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#3: - vnp2 + vn1_vnp2_sn1
                                 + vn1_vnp2_sn14 + vn1_vnp2_sn9 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#4: - vnp2 + vn2_vnp2_sn2 + vn2_vnp2_sn7
                                 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#5: - vnp2 + vn3_vnp2_sn8 + vn3_vnp2_sn4
                                 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#6: - vnp2 + vn4_vnp2_sn5
                                 + vn4_vnp2_sn18 + vn4_vnp2_sn10 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#7: - vnp3 + vn1_vnp3_sn16
                                 + vn1_vnp3_sn1 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#8: - vnp3 + vn2_vnp3_sn7 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#9: - vnp3 + vn3_vnp3_sn12
                                 + vn3_vnp3_sn9 + vn3_vnp3_sn20 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn3_vnp1_sn16 * vn1_vnp1_sn3
                                 - vn1_vnp1_sn3 * vn3_vnp1_sn1
                                 - vn1_vnp1_sn3 * vn3_vnp1_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn1_vnp1_sn3 * vn2_vnp1_sn4
                                 - vn1_vnp1_sn3 * vn2_vnp1_sn11
                                 - vn1_vnp1_sn3 * vn2_vnp1_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn3_vnp1_sn16 * vn2_vnp1_sn4
                                 - vn3_vnp1_sn16 * vn2_vnp1_sn11
                                 - vn3_vnp1_sn16 * vn2_vnp1_sn9
                                 - vn3_vnp1_sn1 * vn2_vnp1_sn4
                                 - vn3_vnp1_sn1 * vn2_vnp1_sn11
                                 - vn3_vnp1_sn1 * vn2_vnp1_sn9
                                 - vn3_vnp1_sn12 * vn2_vnp1_sn4
                                 - vn3_vnp1_sn12 * vn2_vnp1_sn11
                                 - vn3_vnp1_sn12 * vn2_vnp1_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_4#3: vnp2
                                 + [ - vn4_vnp2_sn5 * vn1_vnp2_sn1
                                 - vn4_vnp2_sn5 * vn1_vnp2_sn14
                                 - vn4_vnp2_sn5 * vn1_vnp2_sn9
                                 - vn1_vnp2_sn1 * vn4_vnp2_sn18
                                 - vn1_vnp2_sn1 * vn4_vnp2_sn10
                                 - vn1_vnp2_sn14 * vn4_vnp2_sn18
                                 - vn1_vnp2_sn14 * vn4_vnp2_sn10
                                 - vn1_vnp2_sn9 * vn4_vnp2_sn18
                                 - vn1_vnp2_sn9 * vn4_vnp2_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_5#4: vnp2
                                 + [ - vn4_vnp2_sn5 * vn2_vnp2_sn2
                                 - vn4_vnp2_sn5 * vn2_vnp2_sn7
                                 - vn4_vnp2_sn18 * vn2_vnp2_sn2
                                 - vn4_vnp2_sn18 * vn2_vnp2_sn7
                                 - vn4_vnp2_sn10 * vn2_vnp2_sn2
                                 - vn4_vnp2_sn10 * vn2_vnp2_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn2_vnp2_sn2 * vn3_vnp2_sn8
                                 - vn2_vnp2_sn2 * vn3_vnp2_sn4
                                 - vn2_vnp2_sn7 * vn3_vnp2_sn8
                                 - vn2_vnp2_sn7 * vn3_vnp2_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn1_vnp2_sn1 * vn3_vnp2_sn8
                                 - vn1_vnp2_sn1 * vn3_vnp2_sn4
                                 - vn1_vnp2_sn14 * vn3_vnp2_sn8
                                 - vn1_vnp2_sn14 * vn3_vnp2_sn4
                                 - vn1_vnp2_sn9 * vn3_vnp2_sn8
                                 - vn1_vnp2_sn9 * vn3_vnp2_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_8#7: vnp3
                                 + [ - vn2_vnp3_sn7 * vn1_vnp3_sn16
                                 - vn2_vnp3_sn7 * vn1_vnp3_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_9#8: vnp3
                                 + [ - vn2_vnp3_sn7 * vn3_vnp3_sn12
                                 - vn2_vnp3_sn7 * vn3_vnp3_sn9
                                 - vn2_vnp3_sn7 * vn3_vnp3_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_10#9: vnp3
                                 + [ - vn1_vnp3_sn16 * vn3_vnp3_sn12
                                 - vn1_vnp3_sn16 * vn3_vnp3_sn9
                                 - vn1_vnp3_sn16 * vn3_vnp3_sn20
                                 - vn1_vnp3_sn1 * vn3_vnp3_sn12
                                 - vn1_vnp3_sn1 * vn3_vnp3_sn9
                                 - vn1_vnp3_sn1 * vn3_vnp3_sn20 ] <= 0
 q11#10:                         753 vnp1 + 715 vnp2 + 790 vnp3
                                 + [ - 43 vn3_vnp1_sn16 * vn1_vnp1_sn3
                                 - 47 vn3_vnp1_sn16 * vn2_vnp1_sn4
                                 - 53 vn3_vnp1_sn16 * vn2_vnp1_sn11
                                 - 41 vn3_vnp1_sn16 * vn2_vnp1_sn9
                                 - 19 vn1_vnp1_sn3 * vn3_vnp1_sn1
                                 - 56 vn1_vnp1_sn3 * vn3_vnp1_sn12
                                 - 22 vn1_vnp1_sn3 * vn2_vnp1_sn4
                                 - 129 vn1_vnp1_sn3 * vn2_vnp1_sn11
                                 - 22 vn1_vnp1_sn3 * vn2_vnp1_sn9
                                 - 35 vn3_vnp1_sn1 * vn2_vnp1_sn4
                                 - 72 vn3_vnp1_sn1 * vn2_vnp1_sn11
                                 - 21 vn3_vnp1_sn1 * vn2_vnp1_sn9
                                 - 51 vn3_vnp1_sn12 * vn2_vnp1_sn4
                                 - 29 vn3_vnp1_sn12 * vn2_vnp1_sn11
                                 - 31 vn3_vnp1_sn12 * vn2_vnp1_sn9
                                 - 44 vn4_vnp2_sn5 * vn1_vnp2_sn1
                                 - 34 vn4_vnp2_sn5 * vn1_vnp2_sn14
                                 - 26 vn4_vnp2_sn5 * vn1_vnp2_sn9
                                 - 105 vn4_vnp2_sn5 * vn2_vnp2_sn2
                                 - 68 vn4_vnp2_sn5 * vn2_vnp2_sn7
                                 - 64 vn1_vnp2_sn1 * vn4_vnp2_sn18
                                 - 30 vn1_vnp2_sn1 * vn4_vnp2_sn10
                                 - 91 vn1_vnp2_sn1 * vn3_vnp2_sn8
                                 - 55 vn1_vnp2_sn1 * vn3_vnp2_sn4
                                 - 78 vn1_vnp2_sn14 * vn4_vnp2_sn18
                                 - 50 vn1_vnp2_sn14 * vn4_vnp2_sn10
                                 - 71 vn1_vnp2_sn14 * vn3_vnp2_sn8
                                 - 69 vn1_vnp2_sn14 * vn3_vnp2_sn4
                                 - 62 vn1_vnp2_sn9 * vn4_vnp2_sn18
                                 - 24 vn1_vnp2_sn9 * vn4_vnp2_sn10
                                 - 55 vn1_vnp2_sn9 * vn3_vnp2_sn8
                                 - 61 vn1_vnp2_sn9 * vn3_vnp2_sn4
                                 - 140 vn4_vnp2_sn18 * vn2_vnp2_sn2
                                 - 97 vn4_vnp2_sn18 * vn2_vnp2_sn7
                                 - 150 vn4_vnp2_sn10 * vn2_vnp2_sn2
                                 - 110 vn4_vnp2_sn10 * vn2_vnp2_sn7
                                 - 55 vn2_vnp2_sn2 * vn3_vnp2_sn8
                                 - 35 vn2_vnp2_sn2 * vn3_vnp2_sn4
                                 - 44 vn2_vnp2_sn7 * vn3_vnp2_sn8
                                 - 28 vn2_vnp2_sn7 * vn3_vnp2_sn4
                                 - 134 vn2_vnp3_sn7 * vn1_vnp3_sn16
                                 - 30 vn2_vnp3_sn7 * vn1_vnp3_sn1
                                 - 98 vn2_vnp3_sn7 * vn3_vnp3_sn12
                                 - 75 vn2_vnp3_sn7 * vn3_vnp3_sn9
                                 - 97 vn2_vnp3_sn7 * vn3_vnp3_sn20
                                 - 126 vn1_vnp3_sn16 * vn3_vnp3_sn12
                                 - 88 vn1_vnp3_sn16 * vn3_vnp3_sn9
                                 - 134 vn1_vnp3_sn16 * vn3_vnp3_sn20
                                 - 173 vn1_vnp3_sn1 * vn3_vnp3_sn12
                                 - 36 vn1_vnp3_sn1 * vn3_vnp3_sn9
                                 - 142 vn1_vnp3_sn1 * vn3_vnp3_sn20 ] >= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: 4 vn3_vnp1_sn1 + 4 vn1_vnp2_sn1
                                 + 4 vn1_vnp3_sn1 <= 8
 CPU_capacity_of_substrate_node_2#1: 5 vn2_vnp2_sn2 <= 8
 CPU_capacity_of_substrate_node_3#2: 2 vn1_vnp1_sn3 <= 6
 CPU_capacity_of_substrate_node_4#3: 2 vn2_vnp1_sn4 + 3 vn3_vnp2_sn4 <= 5
 CPU_capacity_of_substrate_node_5#4: 2 vn4_vnp2_sn5 <= 8
 CPU_capacity_of_substrate_node_7#5: 5 vn2_vnp2_sn7 + vn2_vnp3_sn7 <= 8
 CPU_capacity_of_substrate_node_8#6: 3 vn3_vnp2_sn8 <= 2
 CPU_capacity_of_substrate_node_9#7: 2 vn2_vnp1_sn9 + 4 vn1_vnp2_sn9
                                 + 5 vn3_vnp3_sn9 <= 8
 CPU_capacity_of_substrate_node_10#8: 2 vn4_vnp2_sn10 <= 3
 CPU_capacity_of_substrate_node_11#9: 2 vn2_vnp1_sn11 <= 8
 CPU_capacity_of_substrate_node_12#10: 4 vn3_vnp1_sn12 + 5 vn3_vnp3_sn12 <= 7
 CPU_capacity_of_substrate_node_14#11: 4 vn1_vnp2_sn14 <= 4
 CPU_capacity_of_substrate_node_16#12: 4 vn3_vnp1_sn16 + 4 vn1_vnp3_sn16 <= 3
 CPU_capacity_of_substrate_node_18#13: 2 vn4_vnp2_sn18 <= 2
 CPU_capacity_of_substrate_node_20#14: 5 vn3_vnp3_sn20 <= 5
Bounds
 0 <= vnp1 <= 1
 0 <= vn3_vnp1_sn16 <= 1
 0 <= vn1_vnp1_sn3 <= 1
 0 <= vn3_vnp1_sn1 <= 1
 0 <= vn3_vnp1_sn12 <= 1
 0 <= vn2_vnp1_sn4 <= 1
 0 <= vn2_vnp1_sn11 <= 1
 0 <= vn2_vnp1_sn9 <= 1
 0 <= vnp2 <= 1
 0 <= vn4_vnp2_sn5 <= 1
 0 <= vn1_vnp2_sn1 <= 1
 0 <= vn1_vnp2_sn14 <= 1
 0 <= vn1_vnp2_sn9 <= 1
 0 <= vn4_vnp2_sn18 <= 1
 0 <= vn4_vnp2_sn10 <= 1
 0 <= vn2_vnp2_sn2 <= 1
 0 <= vn2_vnp2_sn7 <= 1
 0 <= vn3_vnp2_sn8 <= 1
 0 <= vn3_vnp2_sn4 <= 1
 0 <= vnp3 <= 1
 0 <= vn2_vnp3_sn7 <= 1
 0 <= vn1_vnp3_sn16 <= 1
 0 <= vn1_vnp3_sn1 <= 1
 0 <= vn3_vnp3_sn12 <= 1
 0 <= vn3_vnp3_sn9 <= 1
 0 <= vn3_vnp3_sn20 <= 1
Binaries
 vnp1  vn3_vnp1_sn16  vn1_vnp1_sn3  vn3_vnp1_sn1  vn3_vnp1_sn12  vn2_vnp1_sn4 
 vn2_vnp1_sn11  vn2_vnp1_sn9  vnp2  vn4_vnp2_sn5  vn1_vnp2_sn1  vn1_vnp2_sn14 
 vn1_vnp2_sn9  vn4_vnp2_sn18  vn4_vnp2_sn10  vn2_vnp2_sn2  vn2_vnp2_sn7 
 vn3_vnp2_sn8  vn3_vnp2_sn4  vnp3  vn2_vnp3_sn7  vn1_vnp3_sn16  vn1_vnp3_sn1 
 vn3_vnp3_sn12  vn3_vnp3_sn9  vn3_vnp3_sn20 
End
