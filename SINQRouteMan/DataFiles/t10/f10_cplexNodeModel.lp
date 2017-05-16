\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 563 vnp1 + 1454 vnp2 + [ - 238 vn3_vnp1_sn4 * vn1_vnp1_sn3
      - 322 vn3_vnp1_sn4 * vn1_vnp1_sn20 - 130 vn3_vnp1_sn4 * vn2_vnp1_sn11
      - 98 vn3_vnp1_sn4 * vn2_vnp1_sn19 - 198 vn3_vnp1_sn4 * vn2_vnp1_sn13
      - 244 vn1_vnp1_sn3 * vn3_vnp1_sn16 - 182 vn1_vnp1_sn3 * vn2_vnp1_sn11
      - 230 vn1_vnp1_sn3 * vn2_vnp1_sn19 - 332 vn1_vnp1_sn3 * vn2_vnp1_sn13
      - 118 vn1_vnp1_sn20 * vn3_vnp1_sn16 - 170 vn1_vnp1_sn20 * vn2_vnp1_sn11
      - 128 vn1_vnp1_sn20 * vn2_vnp1_sn19 - 350 vn1_vnp1_sn20 * vn2_vnp1_sn13
      - 62 vn3_vnp1_sn16 * vn2_vnp1_sn11 - 74 vn3_vnp1_sn16 * vn2_vnp1_sn19
      - 112 vn3_vnp1_sn16 * vn2_vnp1_sn13 - 182 vn3_vnp2_sn3 * vn1_vnp2_sn19
      - 134 vn3_vnp2_sn3 * vn2_vnp2_sn1 - 178 vn3_vnp2_sn3 * vn2_vnp2_sn11
      - 140 vn3_vnp2_sn3 * vn2_vnp2_sn15 - 216 vn3_vnp2_sn3 * vn4_vnp2_sn8
      - 426 vn3_vnp2_sn3 * vn4_vnp2_sn13 - 194 vn3_vnp2_sn3 * vn4_vnp2_sn4
      - 300 vn1_vnp2_sn19 * vn3_vnp2_sn6 - 98 vn1_vnp2_sn19 * vn4_vnp2_sn8
      - 182 vn1_vnp2_sn19 * vn4_vnp2_sn13 - 78 vn1_vnp2_sn19 * vn4_vnp2_sn4
      - 252 vn3_vnp2_sn6 * vn2_vnp2_sn1 - 192 vn3_vnp2_sn6 * vn2_vnp2_sn11
      - 242 vn3_vnp2_sn6 * vn2_vnp2_sn15 - 258 vn3_vnp2_sn6 * vn4_vnp2_sn8
      - 172 vn3_vnp2_sn6 * vn4_vnp2_sn13 - 276 vn3_vnp2_sn6 * vn4_vnp2_sn4
      - 90 vn2_vnp2_sn1 * vn4_vnp2_sn8 - 316 vn2_vnp2_sn1 * vn4_vnp2_sn13
      - 68 vn2_vnp2_sn1 * vn4_vnp2_sn4 - 90 vn2_vnp2_sn11 * vn4_vnp2_sn8
      - 112 vn2_vnp2_sn11 * vn4_vnp2_sn13 - 192 vn2_vnp2_sn11 * vn4_vnp2_sn4
      - 56 vn2_vnp2_sn15 * vn4_vnp2_sn8 - 162 vn2_vnp2_sn15 * vn4_vnp2_sn13
      - 154 vn2_vnp2_sn15 * vn4_vnp2_sn4 ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn3
                                 + vn1_vnp1_sn20 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn11
                                 + vn2_vnp1_sn19 + vn2_vnp1_sn13 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn4
                                 + vn3_vnp1_sn16 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#3: - vnp2 + vn1_vnp2_sn19 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#4: - vnp2 + vn2_vnp2_sn1
                                 + vn2_vnp2_sn11 + vn2_vnp2_sn15 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#5: - vnp2 + vn3_vnp2_sn3 + vn3_vnp2_sn6
                                 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#6: - vnp2 + vn4_vnp2_sn8
                                 + vn4_vnp2_sn13 + vn4_vnp2_sn4 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn3_vnp1_sn4 * vn1_vnp1_sn3
                                 - vn3_vnp1_sn4 * vn1_vnp1_sn20
                                 - vn1_vnp1_sn3 * vn3_vnp1_sn16
                                 - vn1_vnp1_sn20 * vn3_vnp1_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn3_vnp1_sn4 * vn2_vnp1_sn11
                                 - vn3_vnp1_sn4 * vn2_vnp1_sn19
                                 - vn3_vnp1_sn4 * vn2_vnp1_sn13
                                 - vn3_vnp1_sn16 * vn2_vnp1_sn11
                                 - vn3_vnp1_sn16 * vn2_vnp1_sn19
                                 - vn3_vnp1_sn16 * vn2_vnp1_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn1_vnp1_sn3 * vn2_vnp1_sn11
                                 - vn1_vnp1_sn3 * vn2_vnp1_sn19
                                 - vn1_vnp1_sn3 * vn2_vnp1_sn13
                                 - vn1_vnp1_sn20 * vn2_vnp1_sn11
                                 - vn1_vnp1_sn20 * vn2_vnp1_sn19
                                 - vn1_vnp1_sn20 * vn2_vnp1_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_4#3: vnp2
                                 + [ - vn3_vnp2_sn3 * vn1_vnp2_sn19
                                 - vn1_vnp2_sn19 * vn3_vnp2_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_5#4: vnp2
                                 + [ - vn3_vnp2_sn3 * vn2_vnp2_sn1
                                 - vn3_vnp2_sn3 * vn2_vnp2_sn11
                                 - vn3_vnp2_sn3 * vn2_vnp2_sn15
                                 - vn3_vnp2_sn6 * vn2_vnp2_sn1
                                 - vn3_vnp2_sn6 * vn2_vnp2_sn11
                                 - vn3_vnp2_sn6 * vn2_vnp2_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn3_vnp2_sn3 * vn4_vnp2_sn8
                                 - vn3_vnp2_sn3 * vn4_vnp2_sn13
                                 - vn3_vnp2_sn3 * vn4_vnp2_sn4
                                 - vn3_vnp2_sn6 * vn4_vnp2_sn8
                                 - vn3_vnp2_sn6 * vn4_vnp2_sn13
                                 - vn3_vnp2_sn6 * vn4_vnp2_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn1_vnp2_sn19 * vn4_vnp2_sn8
                                 - vn1_vnp2_sn19 * vn4_vnp2_sn13
                                 - vn1_vnp2_sn19 * vn4_vnp2_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_8#7: vnp2
                                 + [ - vn2_vnp2_sn1 * vn4_vnp2_sn8
                                 - vn2_vnp2_sn1 * vn4_vnp2_sn13
                                 - vn2_vnp2_sn1 * vn4_vnp2_sn4
                                 - vn2_vnp2_sn11 * vn4_vnp2_sn8
                                 - vn2_vnp2_sn11 * vn4_vnp2_sn13
                                 - vn2_vnp2_sn11 * vn4_vnp2_sn4
                                 - vn2_vnp2_sn15 * vn4_vnp2_sn8
                                 - vn2_vnp2_sn15 * vn4_vnp2_sn13
                                 - vn2_vnp2_sn15 * vn4_vnp2_sn4 ] <= 0
 q9#8:                           - 563 vnp1 - 1454 vnp2
                                 + [ 119 vn3_vnp1_sn4 * vn1_vnp1_sn3
                                 + 161 vn3_vnp1_sn4 * vn1_vnp1_sn20
                                 + 65 vn3_vnp1_sn4 * vn2_vnp1_sn11
                                 + 49 vn3_vnp1_sn4 * vn2_vnp1_sn19
                                 + 99 vn3_vnp1_sn4 * vn2_vnp1_sn13
                                 + 122 vn1_vnp1_sn3 * vn3_vnp1_sn16
                                 + 91 vn1_vnp1_sn3 * vn2_vnp1_sn11
                                 + 115 vn1_vnp1_sn3 * vn2_vnp1_sn19
                                 + 166 vn1_vnp1_sn3 * vn2_vnp1_sn13
                                 + 59 vn1_vnp1_sn20 * vn3_vnp1_sn16
                                 + 85 vn1_vnp1_sn20 * vn2_vnp1_sn11
                                 + 64 vn1_vnp1_sn20 * vn2_vnp1_sn19
                                 + 175 vn1_vnp1_sn20 * vn2_vnp1_sn13
                                 + 31 vn3_vnp1_sn16 * vn2_vnp1_sn11
                                 + 37 vn3_vnp1_sn16 * vn2_vnp1_sn19
                                 + 56 vn3_vnp1_sn16 * vn2_vnp1_sn13
                                 + 91 vn3_vnp2_sn3 * vn1_vnp2_sn19
                                 + 67 vn3_vnp2_sn3 * vn2_vnp2_sn1
                                 + 89 vn3_vnp2_sn3 * vn2_vnp2_sn11
                                 + 70 vn3_vnp2_sn3 * vn2_vnp2_sn15
                                 + 108 vn3_vnp2_sn3 * vn4_vnp2_sn8
                                 + 213 vn3_vnp2_sn3 * vn4_vnp2_sn13
                                 + 97 vn3_vnp2_sn3 * vn4_vnp2_sn4
                                 + 150 vn1_vnp2_sn19 * vn3_vnp2_sn6
                                 + 49 vn1_vnp2_sn19 * vn4_vnp2_sn8
                                 + 91 vn1_vnp2_sn19 * vn4_vnp2_sn13
                                 + 39 vn1_vnp2_sn19 * vn4_vnp2_sn4
                                 + 126 vn3_vnp2_sn6 * vn2_vnp2_sn1
                                 + 96 vn3_vnp2_sn6 * vn2_vnp2_sn11
                                 + 121 vn3_vnp2_sn6 * vn2_vnp2_sn15
                                 + 129 vn3_vnp2_sn6 * vn4_vnp2_sn8
                                 + 86 vn3_vnp2_sn6 * vn4_vnp2_sn13
                                 + 138 vn3_vnp2_sn6 * vn4_vnp2_sn4
                                 + 45 vn2_vnp2_sn1 * vn4_vnp2_sn8
                                 + 158 vn2_vnp2_sn1 * vn4_vnp2_sn13
                                 + 34 vn2_vnp2_sn1 * vn4_vnp2_sn4
                                 + 45 vn2_vnp2_sn11 * vn4_vnp2_sn8
                                 + 56 vn2_vnp2_sn11 * vn4_vnp2_sn13
                                 + 96 vn2_vnp2_sn11 * vn4_vnp2_sn4
                                 + 28 vn2_vnp2_sn15 * vn4_vnp2_sn8
                                 + 81 vn2_vnp2_sn15 * vn4_vnp2_sn13
                                 + 77 vn2_vnp2_sn15 * vn4_vnp2_sn4 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: 3 vn2_vnp2_sn1 <= 5
 CPU_capacity_of_substrate_node_3#1: vn1_vnp1_sn3 + 3 vn3_vnp2_sn3 <= 4
 CPU_capacity_of_substrate_node_4#2: 3 vn3_vnp1_sn4 + vn4_vnp2_sn4 <= 1
 CPU_capacity_of_substrate_node_6#3: 3 vn3_vnp2_sn6 <= 8
 CPU_capacity_of_substrate_node_8#4: vn4_vnp2_sn8 <= 5
 CPU_capacity_of_substrate_node_11#5: 3 vn2_vnp1_sn11 + 3 vn2_vnp2_sn11 <= 4
 CPU_capacity_of_substrate_node_13#6: 3 vn2_vnp1_sn13 + vn4_vnp2_sn13 <= 5
 CPU_capacity_of_substrate_node_15#7: 3 vn2_vnp2_sn15 <= 8
 CPU_capacity_of_substrate_node_16#8: 3 vn3_vnp1_sn16 <= 4
 CPU_capacity_of_substrate_node_19#9: 3 vn2_vnp1_sn19 + 3 vn1_vnp2_sn19 <= 2
 CPU_capacity_of_substrate_node_20#10: vn1_vnp1_sn20 <= 2
Bounds
 0 <= vnp1 <= 1
 0 <= vn3_vnp1_sn4 <= 1
 0 <= vn1_vnp1_sn3 <= 1
 0 <= vn1_vnp1_sn20 <= 1
 0 <= vn3_vnp1_sn16 <= 1
 0 <= vn2_vnp1_sn11 <= 1
 0 <= vn2_vnp1_sn19 <= 1
 0 <= vn2_vnp1_sn13 <= 1
 0 <= vnp2 <= 1
 0 <= vn3_vnp2_sn3 <= 1
 0 <= vn1_vnp2_sn19 <= 1
 0 <= vn3_vnp2_sn6 <= 1
 0 <= vn2_vnp2_sn1 <= 1
 0 <= vn2_vnp2_sn11 <= 1
 0 <= vn2_vnp2_sn15 <= 1
 0 <= vn4_vnp2_sn8 <= 1
 0 <= vn4_vnp2_sn13 <= 1
 0 <= vn4_vnp2_sn4 <= 1
Binaries
 vnp1  vn3_vnp1_sn4  vn1_vnp1_sn3  vn1_vnp1_sn20  vn3_vnp1_sn16  vn2_vnp1_sn11 
 vn2_vnp1_sn19  vn2_vnp1_sn13  vnp2  vn3_vnp2_sn3  vn1_vnp2_sn19  vn3_vnp2_sn6 
 vn2_vnp2_sn1  vn2_vnp2_sn11  vn2_vnp2_sn15  vn4_vnp2_sn8  vn4_vnp2_sn13 
 vn4_vnp2_sn4 
End
