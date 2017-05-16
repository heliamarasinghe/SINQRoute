\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1223 vnp1 + 891 vnp2 + 887 vnp3 + 820 vnp4 + 909 vnp5 + 1216 vnp6
      + [ - 220 vn4_vnp1_sn2 * vn1_vnp1_sn9 - 168 vn4_vnp1_sn2 * vn3_vnp1_sn1
      - 360 vn4_vnp1_sn2 * vn2_vnp1_sn7 - 108 vn1_vnp1_sn9 * vn3_vnp1_sn1
      - 92 vn1_vnp1_sn9 * vn2_vnp1_sn7 - 132 vn3_vnp1_sn1 * vn2_vnp1_sn7
      - 314 vn4_vnp2_sn10 * vn1_vnp2_sn17 - 162 vn4_vnp2_sn10 * vn1_vnp2_sn4
      - 204 vn4_vnp2_sn10 * vn3_vnp2_sn5 - 240 vn4_vnp2_sn10 * vn3_vnp2_sn1
      - 254 vn4_vnp2_sn10 * vn3_vnp2_sn15 - 78 vn1_vnp2_sn17 * vn4_vnp2_sn19
      - 90 vn1_vnp2_sn17 * vn3_vnp2_sn5 - 230 vn1_vnp2_sn17 * vn2_vnp2_sn9
      - 78 vn1_vnp2_sn17 * vn3_vnp2_sn1 - 62 vn1_vnp2_sn17 * vn3_vnp2_sn15
      - 294 vn1_vnp2_sn4 * vn4_vnp2_sn19 - 72 vn1_vnp2_sn4 * vn3_vnp2_sn5
      - 78 vn1_vnp2_sn4 * vn2_vnp2_sn9 - 72 vn1_vnp2_sn4 * vn3_vnp2_sn1
      - 112 vn1_vnp2_sn4 * vn3_vnp2_sn15 - 302 vn4_vnp2_sn19 * vn3_vnp2_sn5
      - 198 vn4_vnp2_sn19 * vn3_vnp2_sn1 - 282 vn4_vnp2_sn19 * vn3_vnp2_sn15
      - 118 vn3_vnp2_sn5 * vn2_vnp2_sn9 - 84 vn2_vnp2_sn9 * vn3_vnp2_sn1
      - 78 vn2_vnp2_sn9 * vn3_vnp2_sn15 - 192 vn3_vnp3_sn8 * vn1_vnp3_sn20
      - 90 vn3_vnp3_sn8 * vn1_vnp3_sn17 - 378 vn3_vnp3_sn8 * vn1_vnp3_sn13
      - 114 vn3_vnp3_sn8 * vn2_vnp3_sn7 - 54 vn3_vnp3_sn8 * vn2_vnp3_sn18
      - 216 vn3_vnp3_sn8 * vn2_vnp3_sn6 - 190 vn3_vnp3_sn8 * vn4_vnp3_sn5
      - 182 vn3_vnp3_sn8 * vn4_vnp3_sn12 - 406 vn1_vnp3_sn20 * vn4_vnp3_sn5
      - 206 vn1_vnp3_sn20 * vn4_vnp3_sn12 - 330 vn1_vnp3_sn17 * vn4_vnp3_sn5
      - 300 vn1_vnp3_sn17 * vn4_vnp3_sn12 - 200 vn1_vnp3_sn13 * vn4_vnp3_sn5
      - 100 vn1_vnp3_sn13 * vn4_vnp3_sn12 - 268 vn2_vnp3_sn7 * vn4_vnp3_sn5
      - 358 vn2_vnp3_sn7 * vn4_vnp3_sn12 - 296 vn2_vnp3_sn18 * vn4_vnp3_sn5
      - 316 vn2_vnp3_sn18 * vn4_vnp3_sn12 - 130 vn2_vnp3_sn6 * vn4_vnp3_sn5
      - 170 vn2_vnp3_sn6 * vn4_vnp3_sn12 - 304 vn4_vnp4_sn18 * vn1_vnp4_sn12
      - 186 vn4_vnp4_sn18 * vn1_vnp4_sn10 - 142 vn4_vnp4_sn18 * vn1_vnp4_sn16
      - 92 vn4_vnp4_sn18 * vn2_vnp4_sn13 - 66 vn4_vnp4_sn18 * vn2_vnp4_sn15
      - 56 vn4_vnp4_sn18 * vn2_vnp4_sn19 - 50 vn4_vnp4_sn18 * vn3_vnp4_sn20
      - 60 vn4_vnp4_sn18 * vn3_vnp4_sn4 - 68 vn1_vnp4_sn12 * vn2_vnp4_sn13
      - 98 vn1_vnp4_sn12 * vn2_vnp4_sn15 - 236 vn1_vnp4_sn12 * vn2_vnp4_sn19
      - 98 vn1_vnp4_sn12 * vn3_vnp4_sn20 - 120 vn1_vnp4_sn12 * vn3_vnp4_sn4
      - 124 vn1_vnp4_sn10 * vn2_vnp4_sn13 - 154 vn1_vnp4_sn10 * vn2_vnp4_sn15
      - 262 vn1_vnp4_sn10 * vn2_vnp4_sn19 - 136 vn1_vnp4_sn10 * vn3_vnp4_sn20
      - 86 vn1_vnp4_sn10 * vn3_vnp4_sn4 - 156 vn1_vnp4_sn16 * vn2_vnp4_sn13
      - 54 vn1_vnp4_sn16 * vn2_vnp4_sn15 - 138 vn1_vnp4_sn16 * vn2_vnp4_sn19
      - 120 vn1_vnp4_sn16 * vn3_vnp4_sn20 - 154 vn1_vnp4_sn16 * vn3_vnp4_sn4
      - 290 vn2_vnp4_sn13 * vn3_vnp4_sn20 - 424 vn2_vnp4_sn13 * vn3_vnp4_sn4
      - 112 vn2_vnp4_sn15 * vn3_vnp4_sn20 - 286 vn2_vnp4_sn15 * vn3_vnp4_sn4
      - 96 vn2_vnp4_sn19 * vn3_vnp4_sn20 - 370 vn2_vnp4_sn19 * vn3_vnp4_sn4
      - 114 vn3_vnp5_sn9 * vn1_vnp5_sn15 - 58 vn3_vnp5_sn9 * vn1_vnp5_sn4
      - 166 vn3_vnp5_sn9 * vn2_vnp5_sn2 - 68 vn3_vnp5_sn9 * vn2_vnp5_sn3
      - 494 vn1_vnp5_sn15 * vn2_vnp5_sn2 - 286 vn1_vnp5_sn15 * vn2_vnp5_sn3
      - 134 vn1_vnp5_sn15 * vn4_vnp5_sn10 - 392 vn1_vnp5_sn4 * vn2_vnp5_sn2
      - 134 vn1_vnp5_sn4 * vn2_vnp5_sn3 - 106 vn1_vnp5_sn4 * vn4_vnp5_sn10
      - 140 vn2_vnp6_sn20 * vn1_vnp6_sn10 - 132 vn2_vnp6_sn20 * vn1_vnp6_sn1
      - 360 vn2_vnp6_sn20 * vn4_vnp6_sn6 - 200 vn2_vnp6_sn20 * vn3_vnp6_sn3
      - 106 vn1_vnp6_sn10 * vn2_vnp6_sn4 - 236 vn1_vnp6_sn10 * vn3_vnp6_sn3
      - 118 vn1_vnp6_sn1 * vn2_vnp6_sn4 - 44 vn1_vnp6_sn1 * vn3_vnp6_sn3
      - 354 vn2_vnp6_sn4 * vn4_vnp6_sn6 - 114 vn2_vnp6_sn4 * vn3_vnp6_sn3
      - 228 vn4_vnp6_sn6 * vn3_vnp6_sn3 ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn9 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn7 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn1 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn2 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn17
                                 + vn1_vnp2_sn4 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn9 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn5 + vn3_vnp2_sn1
                                 + vn3_vnp2_sn15 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#7: - vnp2 + vn4_vnp2_sn10
                                 + vn4_vnp2_sn19 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#8: - vnp3 + vn1_vnp3_sn20
                                 + vn1_vnp3_sn17 + vn1_vnp3_sn13 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#9: - vnp3 + vn2_vnp3_sn7
                                 + vn2_vnp3_sn18 + vn2_vnp3_sn6 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#10: - vnp3 + vn3_vnp3_sn8 <= 0
 _Embedding_clash_const_of_vnode4_vnp_3#11: - vnp3 + vn4_vnp3_sn5
                                 + vn4_vnp3_sn12 <= 0
 _Embedding_clash_const_of_vnode1_vnp_4#12: - vnp4 + vn1_vnp4_sn12
                                 + vn1_vnp4_sn10 + vn1_vnp4_sn16 <= 0
 _Embedding_clash_const_of_vnode2_vnp_4#13: - vnp4 + vn2_vnp4_sn13
                                 + vn2_vnp4_sn15 + vn2_vnp4_sn19 <= 0
 _Embedding_clash_const_of_vnode3_vnp_4#14: - vnp4 + vn3_vnp4_sn20
                                 + vn3_vnp4_sn4 <= 0
 _Embedding_clash_const_of_vnode4_vnp_4#15: - vnp4 + vn4_vnp4_sn18 <= 0
 _Embedding_clash_const_of_vnode1_vnp_5#16: - vnp5 + vn1_vnp5_sn15
                                 + vn1_vnp5_sn4 <= 0
 _Embedding_clash_const_of_vnode2_vnp_5#17: - vnp5 + vn2_vnp5_sn2
                                 + vn2_vnp5_sn3 <= 0
 _Embedding_clash_const_of_vnode3_vnp_5#18: - vnp5 + vn3_vnp5_sn9 <= 0
 _Embedding_clash_const_of_vnode4_vnp_5#19: - vnp5 + vn4_vnp5_sn10 <= 0
 _Embedding_clash_const_of_vnode1_vnp_6#20: - vnp6 + vn1_vnp6_sn10
                                 + vn1_vnp6_sn1 <= 0
 _Embedding_clash_const_of_vnode2_vnp_6#21: - vnp6 + vn2_vnp6_sn20
                                 + vn2_vnp6_sn4 <= 0
 _Embedding_clash_const_of_vnode3_vnp_6#22: - vnp6 + vn3_vnp6_sn3 <= 0
 _Embedding_clash_const_of_vnode4_vnp_6#23: - vnp6 + vn4_vnp6_sn6 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn4_vnp1_sn2 * vn1_vnp1_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn3_vnp1_sn1 * vn2_vnp1_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn4_vnp1_sn2 * vn3_vnp1_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn1_vnp1_sn9 * vn3_vnp1_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_5#4: vnp1
                                 + [ - vn4_vnp1_sn2 * vn2_vnp1_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_6#5: vnp1
                                 + [ - vn1_vnp1_sn9 * vn2_vnp1_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn4_vnp2_sn10 * vn1_vnp2_sn17
                                 - vn4_vnp2_sn10 * vn1_vnp2_sn4
                                 - vn1_vnp2_sn17 * vn4_vnp2_sn19
                                 - vn1_vnp2_sn4 * vn4_vnp2_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_8#7: vnp2
                                 + [ - vn3_vnp2_sn5 * vn2_vnp2_sn9
                                 - vn2_vnp2_sn9 * vn3_vnp2_sn1
                                 - vn2_vnp2_sn9 * vn3_vnp2_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_9#8: vnp2
                                 + [ - vn1_vnp2_sn17 * vn3_vnp2_sn5
                                 - vn1_vnp2_sn17 * vn3_vnp2_sn1
                                 - vn1_vnp2_sn17 * vn3_vnp2_sn15
                                 - vn1_vnp2_sn4 * vn3_vnp2_sn5
                                 - vn1_vnp2_sn4 * vn3_vnp2_sn1
                                 - vn1_vnp2_sn4 * vn3_vnp2_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_10#9: vnp2
                                 + [ - vn4_vnp2_sn10 * vn3_vnp2_sn5
                                 - vn4_vnp2_sn10 * vn3_vnp2_sn1
                                 - vn4_vnp2_sn10 * vn3_vnp2_sn15
                                 - vn4_vnp2_sn19 * vn3_vnp2_sn5
                                 - vn4_vnp2_sn19 * vn3_vnp2_sn1
                                 - vn4_vnp2_sn19 * vn3_vnp2_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_11#10: vnp2
                                 + [ - vn1_vnp2_sn17 * vn2_vnp2_sn9
                                 - vn1_vnp2_sn4 * vn2_vnp2_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_12#11: vnp3
                                 + [ - vn3_vnp3_sn8 * vn1_vnp3_sn20
                                 - vn3_vnp3_sn8 * vn1_vnp3_sn17
                                 - vn3_vnp3_sn8 * vn1_vnp3_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_13#12: vnp3
                                 + [ - vn3_vnp3_sn8 * vn2_vnp3_sn7
                                 - vn3_vnp3_sn8 * vn2_vnp3_sn18
                                 - vn3_vnp3_sn8 * vn2_vnp3_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_14#13: vnp3
                                 + [ - vn3_vnp3_sn8 * vn4_vnp3_sn5
                                 - vn3_vnp3_sn8 * vn4_vnp3_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_15#14: vnp3
                                 + [ - vn1_vnp3_sn20 * vn4_vnp3_sn5
                                 - vn1_vnp3_sn20 * vn4_vnp3_sn12
                                 - vn1_vnp3_sn17 * vn4_vnp3_sn5
                                 - vn1_vnp3_sn17 * vn4_vnp3_sn12
                                 - vn1_vnp3_sn13 * vn4_vnp3_sn5
                                 - vn1_vnp3_sn13 * vn4_vnp3_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_16#15: vnp3
                                 + [ - vn2_vnp3_sn7 * vn4_vnp3_sn5
                                 - vn2_vnp3_sn7 * vn4_vnp3_sn12
                                 - vn2_vnp3_sn18 * vn4_vnp3_sn5
                                 - vn2_vnp3_sn18 * vn4_vnp3_sn12
                                 - vn2_vnp3_sn6 * vn4_vnp3_sn5
                                 - vn2_vnp3_sn6 * vn4_vnp3_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_17#16: vnp4
                                 + [ - vn4_vnp4_sn18 * vn1_vnp4_sn12
                                 - vn4_vnp4_sn18 * vn1_vnp4_sn10
                                 - vn4_vnp4_sn18 * vn1_vnp4_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_18#17: vnp4
                                 + [ - vn1_vnp4_sn12 * vn2_vnp4_sn13
                                 - vn1_vnp4_sn12 * vn2_vnp4_sn15
                                 - vn1_vnp4_sn12 * vn2_vnp4_sn19
                                 - vn1_vnp4_sn10 * vn2_vnp4_sn13
                                 - vn1_vnp4_sn10 * vn2_vnp4_sn15
                                 - vn1_vnp4_sn10 * vn2_vnp4_sn19
                                 - vn1_vnp4_sn16 * vn2_vnp4_sn13
                                 - vn1_vnp4_sn16 * vn2_vnp4_sn15
                                 - vn1_vnp4_sn16 * vn2_vnp4_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_19#18: vnp4
                                 + [ - vn2_vnp4_sn13 * vn3_vnp4_sn20
                                 - vn2_vnp4_sn13 * vn3_vnp4_sn4
                                 - vn2_vnp4_sn15 * vn3_vnp4_sn20
                                 - vn2_vnp4_sn15 * vn3_vnp4_sn4
                                 - vn2_vnp4_sn19 * vn3_vnp4_sn20
                                 - vn2_vnp4_sn19 * vn3_vnp4_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_20#19: vnp4
                                 + [ - vn4_vnp4_sn18 * vn2_vnp4_sn13
                                 - vn4_vnp4_sn18 * vn2_vnp4_sn15
                                 - vn4_vnp4_sn18 * vn2_vnp4_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_21#20: vnp4
                                 + [ - vn1_vnp4_sn12 * vn3_vnp4_sn20
                                 - vn1_vnp4_sn12 * vn3_vnp4_sn4
                                 - vn1_vnp4_sn10 * vn3_vnp4_sn20
                                 - vn1_vnp4_sn10 * vn3_vnp4_sn4
                                 - vn1_vnp4_sn16 * vn3_vnp4_sn20
                                 - vn1_vnp4_sn16 * vn3_vnp4_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_22#21: vnp4
                                 + [ - vn4_vnp4_sn18 * vn3_vnp4_sn20
                                 - vn4_vnp4_sn18 * vn3_vnp4_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_23#22: vnp5
                                 + [ - vn3_vnp5_sn9 * vn1_vnp5_sn15
                                 - vn3_vnp5_sn9 * vn1_vnp5_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_24#23: vnp5
                                 + [ - vn1_vnp5_sn15 * vn2_vnp5_sn2
                                 - vn1_vnp5_sn15 * vn2_vnp5_sn3
                                 - vn1_vnp5_sn4 * vn2_vnp5_sn2
                                 - vn1_vnp5_sn4 * vn2_vnp5_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_25#24: vnp5
                                 + [ - vn3_vnp5_sn9 * vn2_vnp5_sn2
                                 - vn3_vnp5_sn9 * vn2_vnp5_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_26#25: vnp5
                                 + [ - vn1_vnp5_sn15 * vn4_vnp5_sn10
                                 - vn1_vnp5_sn4 * vn4_vnp5_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_27#26: vnp6
                                 + [ - vn2_vnp6_sn20 * vn1_vnp6_sn10
                                 - vn2_vnp6_sn20 * vn1_vnp6_sn1
                                 - vn1_vnp6_sn10 * vn2_vnp6_sn4
                                 - vn1_vnp6_sn1 * vn2_vnp6_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_28#27: vnp6
                                 + [ - vn2_vnp6_sn20 * vn4_vnp6_sn6
                                 - vn2_vnp6_sn4 * vn4_vnp6_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_29#28: vnp6
                                 + [ - vn2_vnp6_sn20 * vn3_vnp6_sn3
                                 - vn2_vnp6_sn4 * vn3_vnp6_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_30#29: vnp6
                                 + [ - vn1_vnp6_sn10 * vn3_vnp6_sn3
                                 - vn1_vnp6_sn1 * vn3_vnp6_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_31#30: vnp6
                                 + [ - vn4_vnp6_sn6 * vn3_vnp6_sn3 ] <= 0
 q32#31:                         - 1223 vnp1 - 891 vnp2 - 887 vnp3 - 820 vnp4
                                 - 909 vnp5 - 1216 vnp6
                                 + [ 110 vn4_vnp1_sn2 * vn1_vnp1_sn9
                                 + 84 vn4_vnp1_sn2 * vn3_vnp1_sn1
                                 + 180 vn4_vnp1_sn2 * vn2_vnp1_sn7
                                 + 54 vn1_vnp1_sn9 * vn3_vnp1_sn1
                                 + 46 vn1_vnp1_sn9 * vn2_vnp1_sn7
                                 + 66 vn3_vnp1_sn1 * vn2_vnp1_sn7
                                 + 157 vn4_vnp2_sn10 * vn1_vnp2_sn17
                                 + 81 vn4_vnp2_sn10 * vn1_vnp2_sn4
                                 + 102 vn4_vnp2_sn10 * vn3_vnp2_sn5
                                 + 120 vn4_vnp2_sn10 * vn3_vnp2_sn1
                                 + 127 vn4_vnp2_sn10 * vn3_vnp2_sn15
                                 + 39 vn1_vnp2_sn17 * vn4_vnp2_sn19
                                 + 45 vn1_vnp2_sn17 * vn3_vnp2_sn5
                                 + 115 vn1_vnp2_sn17 * vn2_vnp2_sn9
                                 + 39 vn1_vnp2_sn17 * vn3_vnp2_sn1
                                 + 31 vn1_vnp2_sn17 * vn3_vnp2_sn15
                                 + 147 vn1_vnp2_sn4 * vn4_vnp2_sn19
                                 + 36 vn1_vnp2_sn4 * vn3_vnp2_sn5
                                 + 39 vn1_vnp2_sn4 * vn2_vnp2_sn9
                                 + 36 vn1_vnp2_sn4 * vn3_vnp2_sn1
                                 + 56 vn1_vnp2_sn4 * vn3_vnp2_sn15
                                 + 151 vn4_vnp2_sn19 * vn3_vnp2_sn5
                                 + 99 vn4_vnp2_sn19 * vn3_vnp2_sn1
                                 + 141 vn4_vnp2_sn19 * vn3_vnp2_sn15
                                 + 59 vn3_vnp2_sn5 * vn2_vnp2_sn9
                                 + 42 vn2_vnp2_sn9 * vn3_vnp2_sn1
                                 + 39 vn2_vnp2_sn9 * vn3_vnp2_sn15
                                 + 96 vn3_vnp3_sn8 * vn1_vnp3_sn20
                                 + 45 vn3_vnp3_sn8 * vn1_vnp3_sn17
                                 + 189 vn3_vnp3_sn8 * vn1_vnp3_sn13
                                 + 57 vn3_vnp3_sn8 * vn2_vnp3_sn7
                                 + 27 vn3_vnp3_sn8 * vn2_vnp3_sn18
                                 + 108 vn3_vnp3_sn8 * vn2_vnp3_sn6
                                 + 95 vn3_vnp3_sn8 * vn4_vnp3_sn5
                                 + 91 vn3_vnp3_sn8 * vn4_vnp3_sn12
                                 + 203 vn1_vnp3_sn20 * vn4_vnp3_sn5
                                 + 103 vn1_vnp3_sn20 * vn4_vnp3_sn12
                                 + 165 vn1_vnp3_sn17 * vn4_vnp3_sn5
                                 + 150 vn1_vnp3_sn17 * vn4_vnp3_sn12
                                 + 100 vn1_vnp3_sn13 * vn4_vnp3_sn5
                                 + 50 vn1_vnp3_sn13 * vn4_vnp3_sn12
                                 + 134 vn2_vnp3_sn7 * vn4_vnp3_sn5
                                 + 179 vn2_vnp3_sn7 * vn4_vnp3_sn12
                                 + 148 vn2_vnp3_sn18 * vn4_vnp3_sn5
                                 + 158 vn2_vnp3_sn18 * vn4_vnp3_sn12
                                 + 65 vn2_vnp3_sn6 * vn4_vnp3_sn5
                                 + 85 vn2_vnp3_sn6 * vn4_vnp3_sn12
                                 + 152 vn4_vnp4_sn18 * vn1_vnp4_sn12
                                 + 93 vn4_vnp4_sn18 * vn1_vnp4_sn10
                                 + 71 vn4_vnp4_sn18 * vn1_vnp4_sn16
                                 + 46 vn4_vnp4_sn18 * vn2_vnp4_sn13
                                 + 33 vn4_vnp4_sn18 * vn2_vnp4_sn15
                                 + 28 vn4_vnp4_sn18 * vn2_vnp4_sn19
                                 + 25 vn4_vnp4_sn18 * vn3_vnp4_sn20
                                 + 30 vn4_vnp4_sn18 * vn3_vnp4_sn4
                                 + 34 vn1_vnp4_sn12 * vn2_vnp4_sn13
                                 + 49 vn1_vnp4_sn12 * vn2_vnp4_sn15
                                 + 118 vn1_vnp4_sn12 * vn2_vnp4_sn19
                                 + 49 vn1_vnp4_sn12 * vn3_vnp4_sn20
                                 + 60 vn1_vnp4_sn12 * vn3_vnp4_sn4
                                 + 62 vn1_vnp4_sn10 * vn2_vnp4_sn13
                                 + 77 vn1_vnp4_sn10 * vn2_vnp4_sn15
                                 + 131 vn1_vnp4_sn10 * vn2_vnp4_sn19
                                 + 68 vn1_vnp4_sn10 * vn3_vnp4_sn20
                                 + 43 vn1_vnp4_sn10 * vn3_vnp4_sn4
                                 + 78 vn1_vnp4_sn16 * vn2_vnp4_sn13
                                 + 27 vn1_vnp4_sn16 * vn2_vnp4_sn15
                                 + 69 vn1_vnp4_sn16 * vn2_vnp4_sn19
                                 + 60 vn1_vnp4_sn16 * vn3_vnp4_sn20
                                 + 77 vn1_vnp4_sn16 * vn3_vnp4_sn4
                                 + 145 vn2_vnp4_sn13 * vn3_vnp4_sn20
                                 + 212 vn2_vnp4_sn13 * vn3_vnp4_sn4
                                 + 56 vn2_vnp4_sn15 * vn3_vnp4_sn20
                                 + 143 vn2_vnp4_sn15 * vn3_vnp4_sn4
                                 + 48 vn2_vnp4_sn19 * vn3_vnp4_sn20
                                 + 185 vn2_vnp4_sn19 * vn3_vnp4_sn4
                                 + 57 vn3_vnp5_sn9 * vn1_vnp5_sn15
                                 + 29 vn3_vnp5_sn9 * vn1_vnp5_sn4
                                 + 83 vn3_vnp5_sn9 * vn2_vnp5_sn2
                                 + 34 vn3_vnp5_sn9 * vn2_vnp5_sn3
                                 + 247 vn1_vnp5_sn15 * vn2_vnp5_sn2
                                 + 143 vn1_vnp5_sn15 * vn2_vnp5_sn3
                                 + 67 vn1_vnp5_sn15 * vn4_vnp5_sn10
                                 + 196 vn1_vnp5_sn4 * vn2_vnp5_sn2
                                 + 67 vn1_vnp5_sn4 * vn2_vnp5_sn3
                                 + 53 vn1_vnp5_sn4 * vn4_vnp5_sn10
                                 + 70 vn2_vnp6_sn20 * vn1_vnp6_sn10
                                 + 66 vn2_vnp6_sn20 * vn1_vnp6_sn1
                                 + 180 vn2_vnp6_sn20 * vn4_vnp6_sn6
                                 + 100 vn2_vnp6_sn20 * vn3_vnp6_sn3
                                 + 53 vn1_vnp6_sn10 * vn2_vnp6_sn4
                                 + 118 vn1_vnp6_sn10 * vn3_vnp6_sn3
                                 + 59 vn1_vnp6_sn1 * vn2_vnp6_sn4
                                 + 22 vn1_vnp6_sn1 * vn3_vnp6_sn3
                                 + 177 vn2_vnp6_sn4 * vn4_vnp6_sn6
                                 + 57 vn2_vnp6_sn4 * vn3_vnp6_sn3
                                 + 114 vn4_vnp6_sn6 * vn3_vnp6_sn3 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: 3 vn3_vnp1_sn1 + 3 vn3_vnp2_sn1
                                 + 3 vn1_vnp6_sn1 <= 5
 CPU_capacity_of_substrate_node_2#1: 3 vn4_vnp1_sn2 + vn2_vnp5_sn2 <= 5
 CPU_capacity_of_substrate_node_3#2: vn2_vnp5_sn3 + 3 vn3_vnp6_sn3 <= 1
 CPU_capacity_of_substrate_node_4#3: vn1_vnp2_sn4 + 3 vn3_vnp4_sn4
                                 + 3 vn1_vnp5_sn4 + 3 vn2_vnp6_sn4 <= 1
 CPU_capacity_of_substrate_node_5#4: 3 vn3_vnp2_sn5 + vn4_vnp3_sn5 <= 8
 CPU_capacity_of_substrate_node_6#5: 3 vn2_vnp3_sn6 + 3 vn4_vnp6_sn6 <= 8
 CPU_capacity_of_substrate_node_7#6: 3 vn2_vnp1_sn7 + 3 vn2_vnp3_sn7 <= 2
 CPU_capacity_of_substrate_node_8#7: 3 vn3_vnp3_sn8 <= 2
 CPU_capacity_of_substrate_node_9#8: vn1_vnp1_sn9 + 3 vn2_vnp2_sn9
                                 + 3 vn3_vnp5_sn9 <= 8
 CPU_capacity_of_substrate_node_10#9: 3 vn4_vnp2_sn10 + vn1_vnp4_sn10
                                 + 3 vn4_vnp5_sn10 + 3 vn1_vnp6_sn10 <= 4
 CPU_capacity_of_substrate_node_12#10: vn4_vnp3_sn12 + vn1_vnp4_sn12 <= 3
 CPU_capacity_of_substrate_node_13#11: 3 vn1_vnp3_sn13 + 3 vn2_vnp4_sn13 <= 8
 CPU_capacity_of_substrate_node_15#12: 3 vn3_vnp2_sn15 + 3 vn2_vnp4_sn15
                                 + 3 vn1_vnp5_sn15 <= 5
 CPU_capacity_of_substrate_node_16#13: vn1_vnp4_sn16 <= 1
 CPU_capacity_of_substrate_node_17#14: vn1_vnp2_sn17 + 3 vn1_vnp3_sn17 <= 1
 CPU_capacity_of_substrate_node_18#15: 3 vn2_vnp3_sn18 + vn4_vnp4_sn18 <= 7
 CPU_capacity_of_substrate_node_19#16: 3 vn4_vnp2_sn19 + 3 vn2_vnp4_sn19 <= 2
 CPU_capacity_of_substrate_node_20#17: 3 vn1_vnp3_sn20 + 3 vn3_vnp4_sn20
                                 + 3 vn2_vnp6_sn20 <= 3
Bounds
 0 <= vnp1 <= 1
 0 <= vn4_vnp1_sn2 <= 1
 0 <= vn1_vnp1_sn9 <= 1
 0 <= vn3_vnp1_sn1 <= 1
 0 <= vn2_vnp1_sn7 <= 1
 0 <= vnp2 <= 1
 0 <= vn4_vnp2_sn10 <= 1
 0 <= vn1_vnp2_sn17 <= 1
 0 <= vn1_vnp2_sn4 <= 1
 0 <= vn4_vnp2_sn19 <= 1
 0 <= vn3_vnp2_sn5 <= 1
 0 <= vn2_vnp2_sn9 <= 1
 0 <= vn3_vnp2_sn1 <= 1
 0 <= vn3_vnp2_sn15 <= 1
 0 <= vnp3 <= 1
 0 <= vn3_vnp3_sn8 <= 1
 0 <= vn1_vnp3_sn20 <= 1
 0 <= vn1_vnp3_sn17 <= 1
 0 <= vn1_vnp3_sn13 <= 1
 0 <= vn2_vnp3_sn7 <= 1
 0 <= vn2_vnp3_sn18 <= 1
 0 <= vn2_vnp3_sn6 <= 1
 0 <= vn4_vnp3_sn5 <= 1
 0 <= vn4_vnp3_sn12 <= 1
 0 <= vnp4 <= 1
 0 <= vn4_vnp4_sn18 <= 1
 0 <= vn1_vnp4_sn12 <= 1
 0 <= vn1_vnp4_sn10 <= 1
 0 <= vn1_vnp4_sn16 <= 1
 0 <= vn2_vnp4_sn13 <= 1
 0 <= vn2_vnp4_sn15 <= 1
 0 <= vn2_vnp4_sn19 <= 1
 0 <= vn3_vnp4_sn20 <= 1
 0 <= vn3_vnp4_sn4 <= 1
 0 <= vnp5 <= 1
 0 <= vn3_vnp5_sn9 <= 1
 0 <= vn1_vnp5_sn15 <= 1
 0 <= vn1_vnp5_sn4 <= 1
 0 <= vn2_vnp5_sn2 <= 1
 0 <= vn2_vnp5_sn3 <= 1
 0 <= vn4_vnp5_sn10 <= 1
 0 <= vnp6 <= 1
 0 <= vn2_vnp6_sn20 <= 1
 0 <= vn1_vnp6_sn10 <= 1
 0 <= vn1_vnp6_sn1 <= 1
 0 <= vn2_vnp6_sn4 <= 1
 0 <= vn4_vnp6_sn6 <= 1
 0 <= vn3_vnp6_sn3 <= 1
Binaries
 vnp1  vn4_vnp1_sn2  vn1_vnp1_sn9  vn3_vnp1_sn1  vn2_vnp1_sn7  vnp2 
 vn4_vnp2_sn10  vn1_vnp2_sn17  vn1_vnp2_sn4  vn4_vnp2_sn19  vn3_vnp2_sn5 
 vn2_vnp2_sn9  vn3_vnp2_sn1  vn3_vnp2_sn15  vnp3  vn3_vnp3_sn8  vn1_vnp3_sn20 
 vn1_vnp3_sn17  vn1_vnp3_sn13  vn2_vnp3_sn7  vn2_vnp3_sn18  vn2_vnp3_sn6 
 vn4_vnp3_sn5  vn4_vnp3_sn12  vnp4  vn4_vnp4_sn18  vn1_vnp4_sn12 
 vn1_vnp4_sn10  vn1_vnp4_sn16  vn2_vnp4_sn13  vn2_vnp4_sn15  vn2_vnp4_sn19 
 vn3_vnp4_sn20  vn3_vnp4_sn4  vnp5  vn3_vnp5_sn9  vn1_vnp5_sn15  vn1_vnp5_sn4 
 vn2_vnp5_sn2  vn2_vnp5_sn3  vn4_vnp5_sn10  vnp6  vn2_vnp6_sn20  vn1_vnp6_sn10 
 vn1_vnp6_sn1  vn2_vnp6_sn4  vn4_vnp6_sn6  vn3_vnp6_sn3 
End
