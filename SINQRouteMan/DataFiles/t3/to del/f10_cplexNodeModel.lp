\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1228 vnp1 + 1003 vnp2 + 655 vnp3 + 1030 vnp4 + 603 vnp5
      + [ - 122 vn3_vnp1_sn12 * vn1_vnp1_sn8 - 48 vn3_vnp1_sn12 * vn1_vnp1_sn20
      - 330 vn3_vnp1_sn12 * vn2_vnp1_sn3 - 264 vn3_vnp1_sn12 * vn2_vnp1_sn16
      - 160 vn3_vnp1_sn12 * vn4_vnp1_sn6 - 234 vn1_vnp1_sn8 * vn2_vnp1_sn3
      - 110 vn1_vnp1_sn8 * vn2_vnp1_sn16 - 192 vn1_vnp1_sn8 * vn4_vnp1_sn6
      - 214 vn1_vnp1_sn20 * vn2_vnp1_sn3 - 202 vn1_vnp1_sn20 * vn2_vnp1_sn16
      - 184 vn1_vnp1_sn20 * vn4_vnp1_sn6 - 250 vn2_vnp1_sn3 * vn4_vnp1_sn6
      - 404 vn2_vnp1_sn16 * vn4_vnp1_sn6 - 294 vn4_vnp2_sn6 * vn1_vnp2_sn15
      - 156 vn4_vnp2_sn6 * vn2_vnp2_sn10 - 240 vn4_vnp2_sn6 * vn2_vnp2_sn13
      - 252 vn4_vnp2_sn6 * vn2_vnp2_sn4 - 322 vn4_vnp2_sn6 * vn3_vnp2_sn8
      - 162 vn1_vnp2_sn15 * vn4_vnp2_sn16 - 118 vn1_vnp2_sn15 * vn2_vnp2_sn10
      - 158 vn1_vnp2_sn15 * vn2_vnp2_sn13 - 188 vn1_vnp2_sn15 * vn2_vnp2_sn4
      - 286 vn1_vnp2_sn15 * vn3_vnp2_sn8 - 196 vn4_vnp2_sn16 * vn2_vnp2_sn10
      - 214 vn4_vnp2_sn16 * vn2_vnp2_sn13 - 94 vn4_vnp2_sn16 * vn2_vnp2_sn4
      - 110 vn4_vnp2_sn16 * vn3_vnp2_sn8 - 80 vn2_vnp2_sn10 * vn3_vnp2_sn8
      - 108 vn2_vnp2_sn13 * vn3_vnp2_sn8 - 16 vn2_vnp2_sn4 * vn3_vnp2_sn8
      - 64 vn2_vnp3_sn8 * vn1_vnp3_sn9 - 192 vn2_vnp3_sn8 * vn3_vnp3_sn12
      - 80 vn2_vnp3_sn8 * vn3_vnp3_sn20 - 260 vn2_vnp3_sn8 * vn4_vnp3_sn11
      - 68 vn2_vnp3_sn8 * vn4_vnp3_sn18 - 172 vn2_vnp3_sn8 * vn4_vnp3_sn19
      - 92 vn1_vnp3_sn9 * vn2_vnp3_sn17 - 50 vn1_vnp3_sn9 * vn2_vnp3_sn5
      - 120 vn1_vnp3_sn9 * vn3_vnp3_sn12 - 160 vn1_vnp3_sn9 * vn3_vnp3_sn20
      - 104 vn1_vnp3_sn9 * vn4_vnp3_sn11 - 146 vn1_vnp3_sn9 * vn4_vnp3_sn18
      - 284 vn1_vnp3_sn9 * vn4_vnp3_sn19 - 108 vn2_vnp3_sn17 * vn3_vnp3_sn12
      - 64 vn2_vnp3_sn17 * vn3_vnp3_sn20 - 244 vn2_vnp3_sn17 * vn4_vnp3_sn11
      - 180 vn2_vnp3_sn17 * vn4_vnp3_sn18 - 132 vn2_vnp3_sn17 * vn4_vnp3_sn19
      - 104 vn2_vnp3_sn5 * vn3_vnp3_sn12 - 184 vn2_vnp3_sn5 * vn3_vnp3_sn20
      - 280 vn2_vnp3_sn5 * vn4_vnp3_sn11 - 280 vn2_vnp3_sn5 * vn4_vnp3_sn18
      - 320 vn2_vnp3_sn5 * vn4_vnp3_sn19 - 62 vn3_vnp3_sn12 * vn4_vnp3_sn11
      - 98 vn3_vnp3_sn12 * vn4_vnp3_sn18 - 104 vn3_vnp3_sn12 * vn4_vnp3_sn19
      - 68 vn3_vnp3_sn20 * vn4_vnp3_sn11 - 24 vn3_vnp3_sn20 * vn4_vnp3_sn18
      - 46 vn3_vnp3_sn20 * vn4_vnp3_sn19 - 198 vn2_vnp4_sn12 * vn1_vnp4_sn18
      - 162 vn2_vnp4_sn12 * vn1_vnp4_sn9 - 94 vn2_vnp4_sn12 * vn1_vnp4_sn15
      - 248 vn2_vnp4_sn12 * vn3_vnp4_sn6 - 84 vn2_vnp4_sn12 * vn4_vnp4_sn13
      - 68 vn2_vnp4_sn12 * vn4_vnp4_sn10 - 98 vn1_vnp4_sn18 * vn2_vnp4_sn7
      - 134 vn1_vnp4_sn18 * vn3_vnp4_sn6 - 110 vn1_vnp4_sn18 * vn4_vnp4_sn13
      - 96 vn1_vnp4_sn18 * vn4_vnp4_sn10 - 186 vn1_vnp4_sn9 * vn2_vnp4_sn7
      - 112 vn1_vnp4_sn9 * vn3_vnp4_sn6 - 102 vn1_vnp4_sn9 * vn4_vnp4_sn13
      - 74 vn1_vnp4_sn9 * vn4_vnp4_sn10 - 186 vn1_vnp4_sn15 * vn2_vnp4_sn7
      - 178 vn1_vnp4_sn15 * vn3_vnp4_sn6 - 68 vn1_vnp4_sn15 * vn4_vnp4_sn13
      - 60 vn1_vnp4_sn15 * vn4_vnp4_sn10 - 320 vn2_vnp4_sn7 * vn3_vnp4_sn6
      - 248 vn2_vnp4_sn7 * vn4_vnp4_sn13 - 192 vn2_vnp4_sn7 * vn4_vnp4_sn10
      - 270 vn3_vnp4_sn6 * vn4_vnp4_sn13 - 186 vn3_vnp4_sn6 * vn4_vnp4_sn10
      - 336 vn3_vnp5_sn5 * vn1_vnp5_sn16 - 296 vn3_vnp5_sn5 * vn1_vnp5_sn1
      - 100 vn3_vnp5_sn5 * vn2_vnp5_sn9 - 214 vn3_vnp5_sn5 * vn2_vnp5_sn11
      - 148 vn3_vnp5_sn5 * vn2_vnp5_sn12 - 304 vn3_vnp5_sn5 * vn4_vnp5_sn17
      - 240 vn3_vnp5_sn5 * vn4_vnp5_sn13 - 306 vn1_vnp5_sn16 * vn3_vnp5_sn19
      - 202 vn1_vnp5_sn16 * vn4_vnp5_sn17 - 314 vn1_vnp5_sn16 * vn4_vnp5_sn13
      - 136 vn1_vnp5_sn1 * vn3_vnp5_sn19 - 222 vn1_vnp5_sn1 * vn4_vnp5_sn17
      - 406 vn1_vnp5_sn1 * vn4_vnp5_sn13 - 220 vn3_vnp5_sn19 * vn2_vnp5_sn9
      - 142 vn3_vnp5_sn19 * vn2_vnp5_sn11 - 208 vn3_vnp5_sn19 * vn2_vnp5_sn12
      - 136 vn3_vnp5_sn19 * vn4_vnp5_sn17 - 320 vn3_vnp5_sn19 * vn4_vnp5_sn13
      ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn8
                                 + vn1_vnp1_sn20 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn3
                                 + vn2_vnp1_sn16 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn12 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn6 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn15 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn10
                                 + vn2_vnp2_sn13 + vn2_vnp2_sn4 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn8 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#7: - vnp2 + vn4_vnp2_sn6
                                 + vn4_vnp2_sn16 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#8: - vnp3 + vn1_vnp3_sn9 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#9: - vnp3 + vn2_vnp3_sn8
                                 + vn2_vnp3_sn17 + vn2_vnp3_sn5 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#10: - vnp3 + vn3_vnp3_sn12
                                 + vn3_vnp3_sn20 <= 0
 _Embedding_clash_const_of_vnode4_vnp_3#11: - vnp3 + vn4_vnp3_sn11
                                 + vn4_vnp3_sn18 + vn4_vnp3_sn19 <= 0
 _Embedding_clash_const_of_vnode1_vnp_4#12: - vnp4 + vn1_vnp4_sn18
                                 + vn1_vnp4_sn9 + vn1_vnp4_sn15 <= 0
 _Embedding_clash_const_of_vnode2_vnp_4#13: - vnp4 + vn2_vnp4_sn12
                                 + vn2_vnp4_sn7 <= 0
 _Embedding_clash_const_of_vnode3_vnp_4#14: - vnp4 + vn3_vnp4_sn6 <= 0
 _Embedding_clash_const_of_vnode4_vnp_4#15: - vnp4 + vn4_vnp4_sn13
                                 + vn4_vnp4_sn10 <= 0
 _Embedding_clash_const_of_vnode1_vnp_5#16: - vnp5 + vn1_vnp5_sn16
                                 + vn1_vnp5_sn1 <= 0
 _Embedding_clash_const_of_vnode2_vnp_5#17: - vnp5 + vn2_vnp5_sn9
                                 + vn2_vnp5_sn11 + vn2_vnp5_sn12 <= 0
 _Embedding_clash_const_of_vnode3_vnp_5#18: - vnp5 + vn3_vnp5_sn5
                                 + vn3_vnp5_sn19 <= 0
 _Embedding_clash_const_of_vnode4_vnp_5#19: - vnp5 + vn4_vnp5_sn17
                                 + vn4_vnp5_sn13 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn3_vnp1_sn12 * vn1_vnp1_sn8
                                 - vn3_vnp1_sn12 * vn1_vnp1_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn3_vnp1_sn12 * vn2_vnp1_sn3
                                 - vn3_vnp1_sn12 * vn2_vnp1_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn3_vnp1_sn12 * vn4_vnp1_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn1_vnp1_sn8 * vn4_vnp1_sn6
                                 - vn1_vnp1_sn20 * vn4_vnp1_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_5#4: vnp1
                                 + [ - vn2_vnp1_sn3 * vn4_vnp1_sn6
                                 - vn2_vnp1_sn16 * vn4_vnp1_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_6#5: vnp1
                                 + [ - vn1_vnp1_sn8 * vn2_vnp1_sn3
                                 - vn1_vnp1_sn8 * vn2_vnp1_sn16
                                 - vn1_vnp1_sn20 * vn2_vnp1_sn3
                                 - vn1_vnp1_sn20 * vn2_vnp1_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn4_vnp2_sn6 * vn1_vnp2_sn15
                                 - vn1_vnp2_sn15 * vn4_vnp2_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_8#7: vnp2
                                 + [ - vn4_vnp2_sn6 * vn2_vnp2_sn10
                                 - vn4_vnp2_sn6 * vn2_vnp2_sn13
                                 - vn4_vnp2_sn6 * vn2_vnp2_sn4
                                 - vn4_vnp2_sn16 * vn2_vnp2_sn10
                                 - vn4_vnp2_sn16 * vn2_vnp2_sn13
                                 - vn4_vnp2_sn16 * vn2_vnp2_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_9#8: vnp2
                                 + [ - vn2_vnp2_sn10 * vn3_vnp2_sn8
                                 - vn2_vnp2_sn13 * vn3_vnp2_sn8
                                 - vn2_vnp2_sn4 * vn3_vnp2_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_10#9: vnp2
                                 + [ - vn1_vnp2_sn15 * vn3_vnp2_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_11#10: vnp2
                                 + [ - vn4_vnp2_sn6 * vn3_vnp2_sn8
                                 - vn4_vnp2_sn16 * vn3_vnp2_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_12#11: vnp2
                                 + [ - vn1_vnp2_sn15 * vn2_vnp2_sn10
                                 - vn1_vnp2_sn15 * vn2_vnp2_sn13
                                 - vn1_vnp2_sn15 * vn2_vnp2_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_13#12: vnp3
                                 + [ - vn2_vnp3_sn8 * vn1_vnp3_sn9
                                 - vn1_vnp3_sn9 * vn2_vnp3_sn17
                                 - vn1_vnp3_sn9 * vn2_vnp3_sn5 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_14#13: vnp3
                                 + [ - vn2_vnp3_sn8 * vn3_vnp3_sn12
                                 - vn2_vnp3_sn8 * vn3_vnp3_sn20
                                 - vn2_vnp3_sn17 * vn3_vnp3_sn12
                                 - vn2_vnp3_sn17 * vn3_vnp3_sn20
                                 - vn2_vnp3_sn5 * vn3_vnp3_sn12
                                 - vn2_vnp3_sn5 * vn3_vnp3_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_15#14: vnp3
                                 + [ - vn1_vnp3_sn9 * vn3_vnp3_sn12
                                 - vn1_vnp3_sn9 * vn3_vnp3_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_16#15: vnp3
                                 + [ - vn3_vnp3_sn12 * vn4_vnp3_sn11
                                 - vn3_vnp3_sn12 * vn4_vnp3_sn18
                                 - vn3_vnp3_sn12 * vn4_vnp3_sn19
                                 - vn3_vnp3_sn20 * vn4_vnp3_sn11
                                 - vn3_vnp3_sn20 * vn4_vnp3_sn18
                                 - vn3_vnp3_sn20 * vn4_vnp3_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_17#16: vnp3
                                 + [ - vn2_vnp3_sn8 * vn4_vnp3_sn11
                                 - vn2_vnp3_sn8 * vn4_vnp3_sn18
                                 - vn2_vnp3_sn8 * vn4_vnp3_sn19
                                 - vn2_vnp3_sn17 * vn4_vnp3_sn11
                                 - vn2_vnp3_sn17 * vn4_vnp3_sn18
                                 - vn2_vnp3_sn17 * vn4_vnp3_sn19
                                 - vn2_vnp3_sn5 * vn4_vnp3_sn11
                                 - vn2_vnp3_sn5 * vn4_vnp3_sn18
                                 - vn2_vnp3_sn5 * vn4_vnp3_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_18#17: vnp3
                                 + [ - vn1_vnp3_sn9 * vn4_vnp3_sn11
                                 - vn1_vnp3_sn9 * vn4_vnp3_sn18
                                 - vn1_vnp3_sn9 * vn4_vnp3_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_19#18: vnp4
                                 + [ - vn2_vnp4_sn12 * vn1_vnp4_sn18
                                 - vn2_vnp4_sn12 * vn1_vnp4_sn9
                                 - vn2_vnp4_sn12 * vn1_vnp4_sn15
                                 - vn1_vnp4_sn18 * vn2_vnp4_sn7
                                 - vn1_vnp4_sn9 * vn2_vnp4_sn7
                                 - vn1_vnp4_sn15 * vn2_vnp4_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_20#19: vnp4
                                 + [ - vn2_vnp4_sn12 * vn3_vnp4_sn6
                                 - vn2_vnp4_sn7 * vn3_vnp4_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_21#20: vnp4
                                 + [ - vn3_vnp4_sn6 * vn4_vnp4_sn13
                                 - vn3_vnp4_sn6 * vn4_vnp4_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_22#21: vnp4
                                 + [ - vn2_vnp4_sn12 * vn4_vnp4_sn13
                                 - vn2_vnp4_sn12 * vn4_vnp4_sn10
                                 - vn2_vnp4_sn7 * vn4_vnp4_sn13
                                 - vn2_vnp4_sn7 * vn4_vnp4_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_23#22: vnp4
                                 + [ - vn1_vnp4_sn18 * vn4_vnp4_sn13
                                 - vn1_vnp4_sn18 * vn4_vnp4_sn10
                                 - vn1_vnp4_sn9 * vn4_vnp4_sn13
                                 - vn1_vnp4_sn9 * vn4_vnp4_sn10
                                 - vn1_vnp4_sn15 * vn4_vnp4_sn13
                                 - vn1_vnp4_sn15 * vn4_vnp4_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_24#23: vnp4
                                 + [ - vn1_vnp4_sn18 * vn3_vnp4_sn6
                                 - vn1_vnp4_sn9 * vn3_vnp4_sn6
                                 - vn1_vnp4_sn15 * vn3_vnp4_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_25#24: vnp5
                                 + [ - vn3_vnp5_sn5 * vn1_vnp5_sn16
                                 - vn3_vnp5_sn5 * vn1_vnp5_sn1
                                 - vn1_vnp5_sn16 * vn3_vnp5_sn19
                                 - vn1_vnp5_sn1 * vn3_vnp5_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_26#25: vnp5
                                 + [ - vn3_vnp5_sn5 * vn2_vnp5_sn9
                                 - vn3_vnp5_sn5 * vn2_vnp5_sn11
                                 - vn3_vnp5_sn5 * vn2_vnp5_sn12
                                 - vn3_vnp5_sn19 * vn2_vnp5_sn9
                                 - vn3_vnp5_sn19 * vn2_vnp5_sn11
                                 - vn3_vnp5_sn19 * vn2_vnp5_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_27#26: vnp5
                                 + [ - vn3_vnp5_sn5 * vn4_vnp5_sn17
                                 - vn3_vnp5_sn5 * vn4_vnp5_sn13
                                 - vn3_vnp5_sn19 * vn4_vnp5_sn17
                                 - vn3_vnp5_sn19 * vn4_vnp5_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_28#27: vnp5
                                 + [ - vn1_vnp5_sn16 * vn4_vnp5_sn17
                                 - vn1_vnp5_sn16 * vn4_vnp5_sn13
                                 - vn1_vnp5_sn1 * vn4_vnp5_sn17
                                 - vn1_vnp5_sn1 * vn4_vnp5_sn13 ] <= 0
 q29#28:                         - 1228 vnp1 - 1003 vnp2 - 655 vnp3 - 1030 vnp4
                                 - 603 vnp5 + [ 61 vn3_vnp1_sn12 * vn1_vnp1_sn8
                                 + 24 vn3_vnp1_sn12 * vn1_vnp1_sn20
                                 + 165 vn3_vnp1_sn12 * vn2_vnp1_sn3
                                 + 132 vn3_vnp1_sn12 * vn2_vnp1_sn16
                                 + 80 vn3_vnp1_sn12 * vn4_vnp1_sn6
                                 + 117 vn1_vnp1_sn8 * vn2_vnp1_sn3
                                 + 55 vn1_vnp1_sn8 * vn2_vnp1_sn16
                                 + 96 vn1_vnp1_sn8 * vn4_vnp1_sn6
                                 + 107 vn1_vnp1_sn20 * vn2_vnp1_sn3
                                 + 101 vn1_vnp1_sn20 * vn2_vnp1_sn16
                                 + 92 vn1_vnp1_sn20 * vn4_vnp1_sn6
                                 + 125 vn2_vnp1_sn3 * vn4_vnp1_sn6
                                 + 202 vn2_vnp1_sn16 * vn4_vnp1_sn6
                                 + 147 vn4_vnp2_sn6 * vn1_vnp2_sn15
                                 + 78 vn4_vnp2_sn6 * vn2_vnp2_sn10
                                 + 120 vn4_vnp2_sn6 * vn2_vnp2_sn13
                                 + 126 vn4_vnp2_sn6 * vn2_vnp2_sn4
                                 + 161 vn4_vnp2_sn6 * vn3_vnp2_sn8
                                 + 81 vn1_vnp2_sn15 * vn4_vnp2_sn16
                                 + 59 vn1_vnp2_sn15 * vn2_vnp2_sn10
                                 + 79 vn1_vnp2_sn15 * vn2_vnp2_sn13
                                 + 94 vn1_vnp2_sn15 * vn2_vnp2_sn4
                                 + 143 vn1_vnp2_sn15 * vn3_vnp2_sn8
                                 + 98 vn4_vnp2_sn16 * vn2_vnp2_sn10
                                 + 107 vn4_vnp2_sn16 * vn2_vnp2_sn13
                                 + 47 vn4_vnp2_sn16 * vn2_vnp2_sn4
                                 + 55 vn4_vnp2_sn16 * vn3_vnp2_sn8
                                 + 40 vn2_vnp2_sn10 * vn3_vnp2_sn8
                                 + 54 vn2_vnp2_sn13 * vn3_vnp2_sn8
                                 + 8 vn2_vnp2_sn4 * vn3_vnp2_sn8
                                 + 32 vn2_vnp3_sn8 * vn1_vnp3_sn9
                                 + 96 vn2_vnp3_sn8 * vn3_vnp3_sn12
                                 + 40 vn2_vnp3_sn8 * vn3_vnp3_sn20
                                 + 130 vn2_vnp3_sn8 * vn4_vnp3_sn11
                                 + 34 vn2_vnp3_sn8 * vn4_vnp3_sn18
                                 + 86 vn2_vnp3_sn8 * vn4_vnp3_sn19
                                 + 46 vn1_vnp3_sn9 * vn2_vnp3_sn17
                                 + 25 vn1_vnp3_sn9 * vn2_vnp3_sn5
                                 + 60 vn1_vnp3_sn9 * vn3_vnp3_sn12
                                 + 80 vn1_vnp3_sn9 * vn3_vnp3_sn20
                                 + 52 vn1_vnp3_sn9 * vn4_vnp3_sn11
                                 + 73 vn1_vnp3_sn9 * vn4_vnp3_sn18
                                 + 142 vn1_vnp3_sn9 * vn4_vnp3_sn19
                                 + 54 vn2_vnp3_sn17 * vn3_vnp3_sn12
                                 + 32 vn2_vnp3_sn17 * vn3_vnp3_sn20
                                 + 122 vn2_vnp3_sn17 * vn4_vnp3_sn11
                                 + 90 vn2_vnp3_sn17 * vn4_vnp3_sn18
                                 + 66 vn2_vnp3_sn17 * vn4_vnp3_sn19
                                 + 52 vn2_vnp3_sn5 * vn3_vnp3_sn12
                                 + 92 vn2_vnp3_sn5 * vn3_vnp3_sn20
                                 + 140 vn2_vnp3_sn5 * vn4_vnp3_sn11
                                 + 140 vn2_vnp3_sn5 * vn4_vnp3_sn18
                                 + 160 vn2_vnp3_sn5 * vn4_vnp3_sn19
                                 + 31 vn3_vnp3_sn12 * vn4_vnp3_sn11
                                 + 49 vn3_vnp3_sn12 * vn4_vnp3_sn18
                                 + 52 vn3_vnp3_sn12 * vn4_vnp3_sn19
                                 + 34 vn3_vnp3_sn20 * vn4_vnp3_sn11
                                 + 12 vn3_vnp3_sn20 * vn4_vnp3_sn18
                                 + 23 vn3_vnp3_sn20 * vn4_vnp3_sn19
                                 + 99 vn2_vnp4_sn12 * vn1_vnp4_sn18
                                 + 81 vn2_vnp4_sn12 * vn1_vnp4_sn9
                                 + 47 vn2_vnp4_sn12 * vn1_vnp4_sn15
                                 + 124 vn2_vnp4_sn12 * vn3_vnp4_sn6
                                 + 42 vn2_vnp4_sn12 * vn4_vnp4_sn13
                                 + 34 vn2_vnp4_sn12 * vn4_vnp4_sn10
                                 + 49 vn1_vnp4_sn18 * vn2_vnp4_sn7
                                 + 67 vn1_vnp4_sn18 * vn3_vnp4_sn6
                                 + 55 vn1_vnp4_sn18 * vn4_vnp4_sn13
                                 + 48 vn1_vnp4_sn18 * vn4_vnp4_sn10
                                 + 93 vn1_vnp4_sn9 * vn2_vnp4_sn7
                                 + 56 vn1_vnp4_sn9 * vn3_vnp4_sn6
                                 + 51 vn1_vnp4_sn9 * vn4_vnp4_sn13
                                 + 37 vn1_vnp4_sn9 * vn4_vnp4_sn10
                                 + 93 vn1_vnp4_sn15 * vn2_vnp4_sn7
                                 + 89 vn1_vnp4_sn15 * vn3_vnp4_sn6
                                 + 34 vn1_vnp4_sn15 * vn4_vnp4_sn13
                                 + 30 vn1_vnp4_sn15 * vn4_vnp4_sn10
                                 + 160 vn2_vnp4_sn7 * vn3_vnp4_sn6
                                 + 124 vn2_vnp4_sn7 * vn4_vnp4_sn13
                                 + 96 vn2_vnp4_sn7 * vn4_vnp4_sn10
                                 + 135 vn3_vnp4_sn6 * vn4_vnp4_sn13
                                 + 93 vn3_vnp4_sn6 * vn4_vnp4_sn10
                                 + 168 vn3_vnp5_sn5 * vn1_vnp5_sn16
                                 + 148 vn3_vnp5_sn5 * vn1_vnp5_sn1
                                 + 50 vn3_vnp5_sn5 * vn2_vnp5_sn9
                                 + 107 vn3_vnp5_sn5 * vn2_vnp5_sn11
                                 + 74 vn3_vnp5_sn5 * vn2_vnp5_sn12
                                 + 152 vn3_vnp5_sn5 * vn4_vnp5_sn17
                                 + 120 vn3_vnp5_sn5 * vn4_vnp5_sn13
                                 + 153 vn1_vnp5_sn16 * vn3_vnp5_sn19
                                 + 101 vn1_vnp5_sn16 * vn4_vnp5_sn17
                                 + 157 vn1_vnp5_sn16 * vn4_vnp5_sn13
                                 + 68 vn1_vnp5_sn1 * vn3_vnp5_sn19
                                 + 111 vn1_vnp5_sn1 * vn4_vnp5_sn17
                                 + 203 vn1_vnp5_sn1 * vn4_vnp5_sn13
                                 + 110 vn3_vnp5_sn19 * vn2_vnp5_sn9
                                 + 71 vn3_vnp5_sn19 * vn2_vnp5_sn11
                                 + 104 vn3_vnp5_sn19 * vn2_vnp5_sn12
                                 + 68 vn3_vnp5_sn19 * vn4_vnp5_sn17
                                 + 160 vn3_vnp5_sn19 * vn4_vnp5_sn13 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: 5 vn1_vnp5_sn1 <= 5
 CPU_capacity_of_substrate_node_3#1: vn2_vnp1_sn3 <= 4
 CPU_capacity_of_substrate_node_4#2: vn2_vnp2_sn4 <= 2
 CPU_capacity_of_substrate_node_5#3: 2 vn2_vnp3_sn5 + 2 vn3_vnp5_sn5 <= 3
 CPU_capacity_of_substrate_node_6#4: 3 vn4_vnp1_sn6 + 2 vn4_vnp2_sn6
                                 + 5 vn3_vnp4_sn6 <= 4
 CPU_capacity_of_substrate_node_7#5: 5 vn2_vnp4_sn7 <= 3
 CPU_capacity_of_substrate_node_8#6: 2 vn1_vnp1_sn8 + vn3_vnp2_sn8
                                 + 2 vn2_vnp3_sn8 <= 6
 CPU_capacity_of_substrate_node_9#7: 2 vn1_vnp3_sn9 + 5 vn1_vnp4_sn9
                                 + 3 vn2_vnp5_sn9 <= 4
 CPU_capacity_of_substrate_node_10#8: vn2_vnp2_sn10 + 4 vn4_vnp4_sn10 <= 3
 CPU_capacity_of_substrate_node_11#9: 4 vn4_vnp3_sn11 + 3 vn2_vnp5_sn11 <= 1
 CPU_capacity_of_substrate_node_12#10: 3 vn3_vnp1_sn12 + 2 vn3_vnp3_sn12
                                 + 5 vn2_vnp4_sn12 + 3 vn2_vnp5_sn12 <= 4
 CPU_capacity_of_substrate_node_13#11: vn2_vnp2_sn13 + 4 vn4_vnp4_sn13
                                 + 4 vn4_vnp5_sn13 <= 5
 CPU_capacity_of_substrate_node_15#12: vn1_vnp2_sn15 + 5 vn1_vnp4_sn15 <= 3
 CPU_capacity_of_substrate_node_16#13: vn2_vnp1_sn16 + 2 vn4_vnp2_sn16
                                 + 5 vn1_vnp5_sn16 <= 7
 CPU_capacity_of_substrate_node_17#14: 2 vn2_vnp3_sn17 + 4 vn4_vnp5_sn17 <= 0
 CPU_capacity_of_substrate_node_18#15: 4 vn4_vnp3_sn18 + 5 vn1_vnp4_sn18 <= 8
 CPU_capacity_of_substrate_node_19#16: 4 vn4_vnp3_sn19 + 2 vn3_vnp5_sn19 <= 2
 CPU_capacity_of_substrate_node_20#17: 2 vn1_vnp1_sn20 + 2 vn3_vnp3_sn20 <= 4
Bounds
 0 <= vnp1 <= 1
 0 <= vn3_vnp1_sn12 <= 1
 0 <= vn1_vnp1_sn8 <= 1
 0 <= vn1_vnp1_sn20 <= 1
 0 <= vn2_vnp1_sn3 <= 1
 0 <= vn2_vnp1_sn16 <= 1
 0 <= vn4_vnp1_sn6 <= 1
 0 <= vnp2 <= 1
 0 <= vn4_vnp2_sn6 <= 1
 0 <= vn1_vnp2_sn15 <= 1
 0 <= vn4_vnp2_sn16 <= 1
 0 <= vn2_vnp2_sn10 <= 1
 0 <= vn2_vnp2_sn13 <= 1
 0 <= vn2_vnp2_sn4 <= 1
 0 <= vn3_vnp2_sn8 <= 1
 0 <= vnp3 <= 1
 0 <= vn2_vnp3_sn8 <= 1
 0 <= vn1_vnp3_sn9 <= 1
 0 <= vn2_vnp3_sn17 <= 1
 0 <= vn2_vnp3_sn5 <= 1
 0 <= vn3_vnp3_sn12 <= 1
 0 <= vn3_vnp3_sn20 <= 1
 0 <= vn4_vnp3_sn11 <= 1
 0 <= vn4_vnp3_sn18 <= 1
 0 <= vn4_vnp3_sn19 <= 1
 0 <= vnp4 <= 1
 0 <= vn2_vnp4_sn12 <= 1
 0 <= vn1_vnp4_sn18 <= 1
 0 <= vn1_vnp4_sn9 <= 1
 0 <= vn1_vnp4_sn15 <= 1
 0 <= vn2_vnp4_sn7 <= 1
 0 <= vn3_vnp4_sn6 <= 1
 0 <= vn4_vnp4_sn13 <= 1
 0 <= vn4_vnp4_sn10 <= 1
 0 <= vnp5 <= 1
 0 <= vn3_vnp5_sn5 <= 1
 0 <= vn1_vnp5_sn16 <= 1
 0 <= vn1_vnp5_sn1 <= 1
 0 <= vn3_vnp5_sn19 <= 1
 0 <= vn2_vnp5_sn9 <= 1
 0 <= vn2_vnp5_sn11 <= 1
 0 <= vn2_vnp5_sn12 <= 1
 0 <= vn4_vnp5_sn17 <= 1
 0 <= vn4_vnp5_sn13 <= 1
Binaries
 vnp1  vn3_vnp1_sn12  vn1_vnp1_sn8  vn1_vnp1_sn20  vn2_vnp1_sn3  vn2_vnp1_sn16 
 vn4_vnp1_sn6  vnp2  vn4_vnp2_sn6  vn1_vnp2_sn15  vn4_vnp2_sn16  vn2_vnp2_sn10 
 vn2_vnp2_sn13  vn2_vnp2_sn4  vn3_vnp2_sn8  vnp3  vn2_vnp3_sn8  vn1_vnp3_sn9 
 vn2_vnp3_sn17  vn2_vnp3_sn5  vn3_vnp3_sn12  vn3_vnp3_sn20  vn4_vnp3_sn11 
 vn4_vnp3_sn18  vn4_vnp3_sn19  vnp4  vn2_vnp4_sn12  vn1_vnp4_sn18 
 vn1_vnp4_sn9  vn1_vnp4_sn15  vn2_vnp4_sn7  vn3_vnp4_sn6  vn4_vnp4_sn13 
 vn4_vnp4_sn10  vnp5  vn3_vnp5_sn5  vn1_vnp5_sn16  vn1_vnp5_sn1  vn3_vnp5_sn19 
 vn2_vnp5_sn9  vn2_vnp5_sn11  vn2_vnp5_sn12  vn4_vnp5_sn17  vn4_vnp5_sn13 
End
