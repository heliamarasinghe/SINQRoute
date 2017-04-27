\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 485 vnp1 + 856 vnp2 + 682 vnp3 + 1261 vnp4
      + [ - 190 vn3_vnp1_sn7 * vn1_vnp1_sn14 - 34 vn3_vnp1_sn7 * vn2_vnp1_sn2
      - 122 vn3_vnp1_sn7 * vn2_vnp1_sn11 - 288 vn1_vnp1_sn14 * vn2_vnp1_sn2
      - 152 vn1_vnp1_sn14 * vn2_vnp1_sn11 - 164 vn3_vnp2_sn20 * vn1_vnp2_sn12
      - 100 vn3_vnp2_sn20 * vn2_vnp2_sn1 - 312 vn3_vnp2_sn20 * vn2_vnp2_sn10
      - 458 vn1_vnp2_sn12 * vn3_vnp2_sn2 - 286 vn1_vnp2_sn12 * vn2_vnp2_sn1
      - 106 vn1_vnp2_sn12 * vn2_vnp2_sn10 - 134 vn3_vnp2_sn2 * vn2_vnp2_sn1
      - 396 vn3_vnp2_sn2 * vn2_vnp2_sn10 - 62 vn3_vnp3_sn9 * vn1_vnp3_sn16
      - 140 vn3_vnp3_sn9 * vn1_vnp3_sn6 - 166 vn3_vnp3_sn9 * vn2_vnp3_sn10
      - 158 vn3_vnp3_sn9 * vn2_vnp3_sn2 - 72 vn3_vnp3_sn9 * vn4_vnp3_sn11
      - 82 vn1_vnp3_sn16 * vn2_vnp3_sn10 - 82 vn1_vnp3_sn16 * vn2_vnp3_sn2
      - 88 vn1_vnp3_sn6 * vn2_vnp3_sn10 - 64 vn1_vnp3_sn6 * vn2_vnp3_sn2
      - 90 vn3_vnp4_sn15 * vn1_vnp4_sn1 - 70 vn3_vnp4_sn15 * vn1_vnp4_sn3
      - 60 vn3_vnp4_sn15 * vn4_vnp4_sn9 - 60 vn3_vnp4_sn15 * vn2_vnp4_sn12
      - 58 vn3_vnp4_sn15 * vn4_vnp4_sn16 - 46 vn1_vnp4_sn1 * vn3_vnp4_sn2
      - 350 vn1_vnp4_sn1 * vn2_vnp4_sn12 - 46 vn1_vnp4_sn3 * vn3_vnp4_sn2
      - 240 vn1_vnp4_sn3 * vn2_vnp4_sn12 - 68 vn3_vnp4_sn2 * vn4_vnp4_sn9
      - 282 vn3_vnp4_sn2 * vn2_vnp4_sn12 - 82 vn3_vnp4_sn2 * vn4_vnp4_sn16
      - 286 vn4_vnp4_sn9 * vn2_vnp4_sn12 - 142 vn2_vnp4_sn12 * vn4_vnp4_sn16
      ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn14 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn2
                                 + vn2_vnp1_sn11 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn7 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#3: - vnp2 + vn1_vnp2_sn12 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#4: - vnp2 + vn2_vnp2_sn1
                                 + vn2_vnp2_sn10 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#5: - vnp2 + vn3_vnp2_sn20
                                 + vn3_vnp2_sn2 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#6: - vnp3 + vn1_vnp3_sn16
                                 + vn1_vnp3_sn6 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#7: - vnp3 + vn2_vnp3_sn10
                                 + vn2_vnp3_sn2 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#8: - vnp3 + vn3_vnp3_sn9 <= 0
 _Embedding_clash_const_of_vnode4_vnp_3#9: - vnp3 + vn4_vnp3_sn11 <= 0
 _Embedding_clash_const_of_vnode1_vnp_4#10: - vnp4 + vn1_vnp4_sn1
                                 + vn1_vnp4_sn3 <= 0
 _Embedding_clash_const_of_vnode2_vnp_4#11: - vnp4 + vn2_vnp4_sn12 <= 0
 _Embedding_clash_const_of_vnode3_vnp_4#12: - vnp4 + vn3_vnp4_sn15
                                 + vn3_vnp4_sn2 <= 0
 _Embedding_clash_const_of_vnode4_vnp_4#13: - vnp4 + vn4_vnp4_sn9
                                 + vn4_vnp4_sn16 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn3_vnp1_sn7 * vn1_vnp1_sn14 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn3_vnp1_sn7 * vn2_vnp1_sn2
                                 - vn3_vnp1_sn7 * vn2_vnp1_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn1_vnp1_sn14 * vn2_vnp1_sn2
                                 - vn1_vnp1_sn14 * vn2_vnp1_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_4#3: vnp2
                                 + [ - vn3_vnp2_sn20 * vn1_vnp2_sn12
                                 - vn1_vnp2_sn12 * vn3_vnp2_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_5#4: vnp2
                                 + [ - vn3_vnp2_sn20 * vn2_vnp2_sn1
                                 - vn3_vnp2_sn20 * vn2_vnp2_sn10
                                 - vn3_vnp2_sn2 * vn2_vnp2_sn1
                                 - vn3_vnp2_sn2 * vn2_vnp2_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn1_vnp2_sn12 * vn2_vnp2_sn1
                                 - vn1_vnp2_sn12 * vn2_vnp2_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_7#6: vnp3
                                 + [ - vn3_vnp3_sn9 * vn1_vnp3_sn16
                                 - vn3_vnp3_sn9 * vn1_vnp3_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_8#7: vnp3
                                 + [ - vn1_vnp3_sn16 * vn2_vnp3_sn10
                                 - vn1_vnp3_sn16 * vn2_vnp3_sn2
                                 - vn1_vnp3_sn6 * vn2_vnp3_sn10
                                 - vn1_vnp3_sn6 * vn2_vnp3_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_9#8: vnp3
                                 + [ - vn3_vnp3_sn9 * vn2_vnp3_sn10
                                 - vn3_vnp3_sn9 * vn2_vnp3_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_10#9: vnp3
                                 + [ - vn3_vnp3_sn9 * vn4_vnp3_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_11#10: vnp4
                                 + [ - vn3_vnp4_sn15 * vn1_vnp4_sn1
                                 - vn3_vnp4_sn15 * vn1_vnp4_sn3
                                 - vn1_vnp4_sn1 * vn3_vnp4_sn2
                                 - vn1_vnp4_sn3 * vn3_vnp4_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_12#11: vnp4
                                 + [ - vn4_vnp4_sn9 * vn2_vnp4_sn12
                                 - vn2_vnp4_sn12 * vn4_vnp4_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_13#12: vnp4
                                 + [ - vn3_vnp4_sn15 * vn4_vnp4_sn9
                                 - vn3_vnp4_sn15 * vn4_vnp4_sn16
                                 - vn3_vnp4_sn2 * vn4_vnp4_sn9
                                 - vn3_vnp4_sn2 * vn4_vnp4_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_14#13: vnp4
                                 + [ - vn3_vnp4_sn15 * vn2_vnp4_sn12
                                 - vn3_vnp4_sn2 * vn2_vnp4_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_15#14: vnp4
                                 + [ - vn1_vnp4_sn1 * vn2_vnp4_sn12
                                 - vn1_vnp4_sn3 * vn2_vnp4_sn12 ] <= 0
 q16#15:                         - 485 vnp1 - 856 vnp2 - 682 vnp3 - 1261 vnp4
                                 + [ 95 vn3_vnp1_sn7 * vn1_vnp1_sn14
                                 + 17 vn3_vnp1_sn7 * vn2_vnp1_sn2
                                 + 61 vn3_vnp1_sn7 * vn2_vnp1_sn11
                                 + 144 vn1_vnp1_sn14 * vn2_vnp1_sn2
                                 + 76 vn1_vnp1_sn14 * vn2_vnp1_sn11
                                 + 82 vn3_vnp2_sn20 * vn1_vnp2_sn12
                                 + 50 vn3_vnp2_sn20 * vn2_vnp2_sn1
                                 + 156 vn3_vnp2_sn20 * vn2_vnp2_sn10
                                 + 229 vn1_vnp2_sn12 * vn3_vnp2_sn2
                                 + 143 vn1_vnp2_sn12 * vn2_vnp2_sn1
                                 + 53 vn1_vnp2_sn12 * vn2_vnp2_sn10
                                 + 67 vn3_vnp2_sn2 * vn2_vnp2_sn1
                                 + 198 vn3_vnp2_sn2 * vn2_vnp2_sn10
                                 + 31 vn3_vnp3_sn9 * vn1_vnp3_sn16
                                 + 70 vn3_vnp3_sn9 * vn1_vnp3_sn6
                                 + 83 vn3_vnp3_sn9 * vn2_vnp3_sn10
                                 + 79 vn3_vnp3_sn9 * vn2_vnp3_sn2
                                 + 36 vn3_vnp3_sn9 * vn4_vnp3_sn11
                                 + 41 vn1_vnp3_sn16 * vn2_vnp3_sn10
                                 + 41 vn1_vnp3_sn16 * vn2_vnp3_sn2
                                 + 44 vn1_vnp3_sn6 * vn2_vnp3_sn10
                                 + 32 vn1_vnp3_sn6 * vn2_vnp3_sn2
                                 + 45 vn3_vnp4_sn15 * vn1_vnp4_sn1
                                 + 35 vn3_vnp4_sn15 * vn1_vnp4_sn3
                                 + 30 vn3_vnp4_sn15 * vn4_vnp4_sn9
                                 + 30 vn3_vnp4_sn15 * vn2_vnp4_sn12
                                 + 29 vn3_vnp4_sn15 * vn4_vnp4_sn16
                                 + 23 vn1_vnp4_sn1 * vn3_vnp4_sn2
                                 + 175 vn1_vnp4_sn1 * vn2_vnp4_sn12
                                 + 23 vn1_vnp4_sn3 * vn3_vnp4_sn2
                                 + 120 vn1_vnp4_sn3 * vn2_vnp4_sn12
                                 + 34 vn3_vnp4_sn2 * vn4_vnp4_sn9
                                 + 141 vn3_vnp4_sn2 * vn2_vnp4_sn12
                                 + 41 vn3_vnp4_sn2 * vn4_vnp4_sn16
                                 + 143 vn4_vnp4_sn9 * vn2_vnp4_sn12
                                 + 71 vn2_vnp4_sn12 * vn4_vnp4_sn16 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: 3 vn2_vnp2_sn1 + 3 vn1_vnp4_sn1 <= 8
 CPU_capacity_of_substrate_node_2#1: 3 vn3_vnp2_sn2 + 3 vn2_vnp3_sn2
                                 + 3 vn3_vnp4_sn2 <= 8
 CPU_capacity_of_substrate_node_3#2: 3 vn1_vnp4_sn3 <= 2
 CPU_capacity_of_substrate_node_6#3: 3 vn1_vnp3_sn6 <= 8
 CPU_capacity_of_substrate_node_7#4: 3 vn3_vnp1_sn7 <= 5
 CPU_capacity_of_substrate_node_9#5: 3 vn4_vnp4_sn9 <= 8
 CPU_capacity_of_substrate_node_10#6: 3 vn2_vnp2_sn10 + 3 vn2_vnp3_sn10 <= 8
 CPU_capacity_of_substrate_node_11#7: 3 vn4_vnp3_sn11 <= 8
 CPU_capacity_of_substrate_node_12#8: 3 vn1_vnp2_sn12 + 3 vn2_vnp4_sn12 <= 8
 CPU_capacity_of_substrate_node_14#9: 3 vn1_vnp1_sn14 <= 8
 CPU_capacity_of_substrate_node_15#10: 3 vn3_vnp4_sn15 <= 2
 CPU_capacity_of_substrate_node_16#11: 3 vn1_vnp3_sn16 + 3 vn4_vnp4_sn16 <= 8
 CPU_capacity_of_substrate_node_20#12: 3 vn3_vnp2_sn20 <= 8
Bounds
 0 <= vnp1 <= 1
 0 <= vn3_vnp1_sn7 <= 1
 0 <= vn1_vnp1_sn14 <= 1
 0 <= vn2_vnp1_sn2 <= 1
 0 <= vn2_vnp1_sn11 <= 1
 0 <= vnp2 <= 1
 0 <= vn3_vnp2_sn20 <= 1
 0 <= vn1_vnp2_sn12 <= 1
 0 <= vn3_vnp2_sn2 <= 1
 0 <= vn2_vnp2_sn1 <= 1
 0 <= vn2_vnp2_sn10 <= 1
 0 <= vnp3 <= 1
 0 <= vn3_vnp3_sn9 <= 1
 0 <= vn1_vnp3_sn16 <= 1
 0 <= vn1_vnp3_sn6 <= 1
 0 <= vn2_vnp3_sn10 <= 1
 0 <= vn2_vnp3_sn2 <= 1
 0 <= vn4_vnp3_sn11 <= 1
 0 <= vnp4 <= 1
 0 <= vn3_vnp4_sn15 <= 1
 0 <= vn1_vnp4_sn1 <= 1
 0 <= vn1_vnp4_sn3 <= 1
 0 <= vn3_vnp4_sn2 <= 1
 0 <= vn4_vnp4_sn9 <= 1
 0 <= vn2_vnp4_sn12 <= 1
 0 <= vn4_vnp4_sn16 <= 1
Binaries
 vnp1  vn3_vnp1_sn7  vn1_vnp1_sn14  vn2_vnp1_sn2  vn2_vnp1_sn11  vnp2 
 vn3_vnp2_sn20  vn1_vnp2_sn12  vn3_vnp2_sn2  vn2_vnp2_sn1  vn2_vnp2_sn10  vnp3 
 vn3_vnp3_sn9  vn1_vnp3_sn16  vn1_vnp3_sn6  vn2_vnp3_sn10  vn2_vnp3_sn2 
 vn4_vnp3_sn11  vnp4  vn3_vnp4_sn15  vn1_vnp4_sn1  vn1_vnp4_sn3  vn3_vnp4_sn2 
 vn4_vnp4_sn9  vn2_vnp4_sn12  vn4_vnp4_sn16 
End
