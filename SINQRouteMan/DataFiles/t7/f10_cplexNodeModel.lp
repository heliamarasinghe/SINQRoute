\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1498 vnp1 + 1000 vnp2 + 1070 vnp3 + 871 vnp4 + 598 vnp5 + 1109 vnp6
      + [ - 60 vn4_vnp1_sn20 * vn1_vnp1_sn15 - 412 vn4_vnp1_sn20 * vn1_vnp1_sn3
      - 142 vn4_vnp1_sn20 * vn1_vnp1_sn11 - 252 vn1_vnp1_sn15 * vn4_vnp1_sn7
      - 204 vn1_vnp1_sn15 * vn4_vnp1_sn8 - 354 vn1_vnp1_sn15 * vn3_vnp1_sn4
      - 110 vn1_vnp1_sn15 * vn2_vnp1_sn14 - 344 vn1_vnp1_sn15 * vn3_vnp1_sn10
      - 334 vn1_vnp1_sn15 * vn3_vnp1_sn1 - 284 vn1_vnp1_sn3 * vn4_vnp1_sn7
      - 92 vn1_vnp1_sn3 * vn4_vnp1_sn8 - 104 vn1_vnp1_sn3 * vn3_vnp1_sn4
      - 262 vn1_vnp1_sn3 * vn2_vnp1_sn14 - 144 vn1_vnp1_sn3 * vn3_vnp1_sn10
      - 174 vn1_vnp1_sn3 * vn3_vnp1_sn1 - 318 vn1_vnp1_sn11 * vn4_vnp1_sn7
      - 206 vn1_vnp1_sn11 * vn4_vnp1_sn8 - 336 vn1_vnp1_sn11 * vn3_vnp1_sn4
      - 88 vn1_vnp1_sn11 * vn2_vnp1_sn14 - 186 vn1_vnp1_sn11 * vn3_vnp1_sn10
      - 436 vn1_vnp1_sn11 * vn3_vnp1_sn1 - 244 vn3_vnp1_sn4 * vn2_vnp1_sn14
      - 148 vn2_vnp1_sn14 * vn3_vnp1_sn10 - 324 vn2_vnp1_sn14 * vn3_vnp1_sn1
      - 226 vn2_vnp2_sn5 * vn1_vnp2_sn16 - 230 vn2_vnp2_sn5 * vn1_vnp2_sn11
      - 48 vn2_vnp2_sn5 * vn4_vnp2_sn13 - 108 vn2_vnp2_sn5 * vn3_vnp2_sn19
      - 92 vn2_vnp2_sn5 * vn3_vnp2_sn15 - 284 vn1_vnp2_sn16 * vn2_vnp2_sn4
      - 74 vn1_vnp2_sn16 * vn2_vnp2_sn14 - 318 vn1_vnp2_sn11 * vn2_vnp2_sn4
      - 78 vn1_vnp2_sn11 * vn2_vnp2_sn14 - 98 vn2_vnp2_sn4 * vn4_vnp2_sn13
      - 74 vn2_vnp2_sn4 * vn3_vnp2_sn19 - 90 vn2_vnp2_sn4 * vn3_vnp2_sn15
      - 102 vn2_vnp2_sn14 * vn4_vnp2_sn13 - 86 vn2_vnp2_sn14 * vn3_vnp2_sn19
      - 42 vn2_vnp2_sn14 * vn3_vnp2_sn15 - 244 vn4_vnp2_sn13 * vn3_vnp2_sn19
      - 160 vn4_vnp2_sn13 * vn3_vnp2_sn15 - 130 vn3_vnp3_sn9 * vn1_vnp3_sn5
      - 60 vn3_vnp3_sn9 * vn1_vnp3_sn18 - 258 vn3_vnp3_sn9 * vn1_vnp3_sn13
      - 238 vn3_vnp3_sn9 * vn2_vnp3_sn2 - 120 vn1_vnp3_sn5 * vn3_vnp3_sn6
      - 144 vn1_vnp3_sn5 * vn3_vnp3_sn8 - 92 vn1_vnp3_sn5 * vn2_vnp3_sn2
      - 250 vn1_vnp3_sn18 * vn3_vnp3_sn6 - 34 vn1_vnp3_sn18 * vn3_vnp3_sn8
      - 98 vn1_vnp3_sn18 * vn2_vnp3_sn2 - 68 vn1_vnp3_sn13 * vn3_vnp3_sn6
      - 412 vn1_vnp3_sn13 * vn3_vnp3_sn8 - 108 vn1_vnp3_sn13 * vn2_vnp3_sn2
      - 374 vn3_vnp3_sn6 * vn2_vnp3_sn2 - 248 vn3_vnp3_sn8 * vn2_vnp3_sn2
      - 280 vn3_vnp4_sn13 * vn1_vnp4_sn10 - 216 vn3_vnp4_sn13 * vn1_vnp4_sn15
      - 256 vn3_vnp4_sn13 * vn1_vnp4_sn20 - 318 vn3_vnp4_sn13 * vn2_vnp4_sn4
      - 54 vn3_vnp4_sn13 * vn4_vnp4_sn5 - 38 vn3_vnp4_sn13 * vn4_vnp4_sn12
      - 160 vn1_vnp4_sn10 * vn3_vnp4_sn16 - 84 vn1_vnp4_sn10 * vn2_vnp4_sn4
      - 168 vn1_vnp4_sn15 * vn3_vnp4_sn16 - 106 vn1_vnp4_sn15 * vn2_vnp4_sn4
      - 312 vn1_vnp4_sn20 * vn3_vnp4_sn16 - 146 vn1_vnp4_sn20 * vn2_vnp4_sn4
      - 254 vn3_vnp4_sn16 * vn2_vnp4_sn4 - 88 vn3_vnp4_sn16 * vn4_vnp4_sn5
      - 92 vn3_vnp4_sn16 * vn4_vnp4_sn12 - 62 vn3_vnp5_sn7 * vn1_vnp5_sn18
      - 56 vn3_vnp5_sn7 * vn1_vnp5_sn19 - 90 vn3_vnp5_sn7 * vn1_vnp5_sn2
      - 188 vn3_vnp5_sn7 * vn2_vnp5_sn16 - 86 vn1_vnp5_sn18 * vn3_vnp5_sn1
      - 76 vn1_vnp5_sn18 * vn2_vnp5_sn16 - 62 vn1_vnp5_sn19 * vn3_vnp5_sn1
      - 66 vn1_vnp5_sn19 * vn2_vnp5_sn16 - 56 vn1_vnp5_sn2 * vn3_vnp5_sn1
      - 90 vn1_vnp5_sn2 * vn2_vnp5_sn16 - 280 vn3_vnp5_sn1 * vn2_vnp5_sn16
      - 178 vn4_vnp6_sn13 * vn1_vnp6_sn5 - 78 vn4_vnp6_sn13 * vn1_vnp6_sn6
      - 478 vn4_vnp6_sn13 * vn1_vnp6_sn1 - 466 vn4_vnp6_sn13 * vn2_vnp6_sn7
      - 334 vn4_vnp6_sn13 * vn2_vnp6_sn14 - 216 vn4_vnp6_sn13 * vn3_vnp6_sn2
      - 148 vn4_vnp6_sn13 * vn3_vnp6_sn20 - 188 vn4_vnp6_sn13 * vn3_vnp6_sn18
      - 254 vn1_vnp6_sn5 * vn4_vnp6_sn11 - 110 vn1_vnp6_sn5 * vn3_vnp6_sn2
      - 128 vn1_vnp6_sn5 * vn3_vnp6_sn20 - 80 vn1_vnp6_sn5 * vn3_vnp6_sn18
      - 334 vn1_vnp6_sn6 * vn4_vnp6_sn11 - 118 vn1_vnp6_sn6 * vn3_vnp6_sn2
      - 116 vn1_vnp6_sn6 * vn3_vnp6_sn20 - 88 vn1_vnp6_sn6 * vn3_vnp6_sn18
      - 454 vn1_vnp6_sn1 * vn4_vnp6_sn11 - 80 vn1_vnp6_sn1 * vn3_vnp6_sn2
      - 140 vn1_vnp6_sn1 * vn3_vnp6_sn20 - 110 vn1_vnp6_sn1 * vn3_vnp6_sn18
      - 410 vn4_vnp6_sn11 * vn2_vnp6_sn7 - 86 vn4_vnp6_sn11 * vn2_vnp6_sn14
      - 256 vn4_vnp6_sn11 * vn3_vnp6_sn2 - 108 vn4_vnp6_sn11 * vn3_vnp6_sn20
      - 148 vn4_vnp6_sn11 * vn3_vnp6_sn18 ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn15
                                 + vn1_vnp1_sn3 + vn1_vnp1_sn11 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn14 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn4
                                 + vn3_vnp1_sn10 + vn3_vnp1_sn1 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn20
                                 + vn4_vnp1_sn7 + vn4_vnp1_sn8 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn16
                                 + vn1_vnp2_sn11 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn5 + vn2_vnp2_sn4
                                 + vn2_vnp2_sn14 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn19
                                 + vn3_vnp2_sn15 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#7: - vnp2 + vn4_vnp2_sn13 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#8: - vnp3 + vn1_vnp3_sn5
                                 + vn1_vnp3_sn18 + vn1_vnp3_sn13 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#9: - vnp3 + vn2_vnp3_sn2 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#10: - vnp3 + vn3_vnp3_sn9
                                 + vn3_vnp3_sn6 + vn3_vnp3_sn8 <= 0
 _Embedding_clash_const_of_vnode1_vnp_4#11: - vnp4 + vn1_vnp4_sn10
                                 + vn1_vnp4_sn15 + vn1_vnp4_sn20 <= 0
 _Embedding_clash_const_of_vnode2_vnp_4#12: - vnp4 + vn2_vnp4_sn4 <= 0
 _Embedding_clash_const_of_vnode3_vnp_4#13: - vnp4 + vn3_vnp4_sn13
                                 + vn3_vnp4_sn16 <= 0
 _Embedding_clash_const_of_vnode4_vnp_4#14: - vnp4 + vn4_vnp4_sn5
                                 + vn4_vnp4_sn12 <= 0
 _Embedding_clash_const_of_vnode1_vnp_5#15: - vnp5 + vn1_vnp5_sn18
                                 + vn1_vnp5_sn19 + vn1_vnp5_sn2 <= 0
 _Embedding_clash_const_of_vnode2_vnp_5#16: - vnp5 + vn2_vnp5_sn16 <= 0
 _Embedding_clash_const_of_vnode3_vnp_5#17: - vnp5 + vn3_vnp5_sn7
                                 + vn3_vnp5_sn1 <= 0
 _Embedding_clash_const_of_vnode1_vnp_6#18: - vnp6 + vn1_vnp6_sn5
                                 + vn1_vnp6_sn6 + vn1_vnp6_sn1 <= 0
 _Embedding_clash_const_of_vnode2_vnp_6#19: - vnp6 + vn2_vnp6_sn7
                                 + vn2_vnp6_sn14 <= 0
 _Embedding_clash_const_of_vnode3_vnp_6#20: - vnp6 + vn3_vnp6_sn2
                                 + vn3_vnp6_sn20 + vn3_vnp6_sn18 <= 0
 _Embedding_clash_const_of_vnode4_vnp_6#21: - vnp6 + vn4_vnp6_sn13
                                 + vn4_vnp6_sn11 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn4_vnp1_sn20 * vn1_vnp1_sn15
                                 - vn4_vnp1_sn20 * vn1_vnp1_sn3
                                 - vn4_vnp1_sn20 * vn1_vnp1_sn11
                                 - vn1_vnp1_sn15 * vn4_vnp1_sn7
                                 - vn1_vnp1_sn15 * vn4_vnp1_sn8
                                 - vn1_vnp1_sn3 * vn4_vnp1_sn7
                                 - vn1_vnp1_sn3 * vn4_vnp1_sn8
                                 - vn1_vnp1_sn11 * vn4_vnp1_sn7
                                 - vn1_vnp1_sn11 * vn4_vnp1_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn3_vnp1_sn4 * vn2_vnp1_sn14
                                 - vn2_vnp1_sn14 * vn3_vnp1_sn10
                                 - vn2_vnp1_sn14 * vn3_vnp1_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn1_vnp1_sn15 * vn3_vnp1_sn4
                                 - vn1_vnp1_sn15 * vn3_vnp1_sn10
                                 - vn1_vnp1_sn15 * vn3_vnp1_sn1
                                 - vn1_vnp1_sn3 * vn3_vnp1_sn4
                                 - vn1_vnp1_sn3 * vn3_vnp1_sn10
                                 - vn1_vnp1_sn3 * vn3_vnp1_sn1
                                 - vn1_vnp1_sn11 * vn3_vnp1_sn4
                                 - vn1_vnp1_sn11 * vn3_vnp1_sn10
                                 - vn1_vnp1_sn11 * vn3_vnp1_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn1_vnp1_sn15 * vn2_vnp1_sn14
                                 - vn1_vnp1_sn3 * vn2_vnp1_sn14
                                 - vn1_vnp1_sn11 * vn2_vnp1_sn14 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_5#4: vnp2
                                 + [ - vn2_vnp2_sn5 * vn1_vnp2_sn16
                                 - vn2_vnp2_sn5 * vn1_vnp2_sn11
                                 - vn1_vnp2_sn16 * vn2_vnp2_sn4
                                 - vn1_vnp2_sn16 * vn2_vnp2_sn14
                                 - vn1_vnp2_sn11 * vn2_vnp2_sn4
                                 - vn1_vnp2_sn11 * vn2_vnp2_sn14 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn2_vnp2_sn5 * vn4_vnp2_sn13
                                 - vn2_vnp2_sn4 * vn4_vnp2_sn13
                                 - vn2_vnp2_sn14 * vn4_vnp2_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn2_vnp2_sn5 * vn3_vnp2_sn19
                                 - vn2_vnp2_sn5 * vn3_vnp2_sn15
                                 - vn2_vnp2_sn4 * vn3_vnp2_sn19
                                 - vn2_vnp2_sn4 * vn3_vnp2_sn15
                                 - vn2_vnp2_sn14 * vn3_vnp2_sn19
                                 - vn2_vnp2_sn14 * vn3_vnp2_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_8#7: vnp2
                                 + [ - vn4_vnp2_sn13 * vn3_vnp2_sn19
                                 - vn4_vnp2_sn13 * vn3_vnp2_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_9#8: vnp3
                                 + [ - vn3_vnp3_sn9 * vn1_vnp3_sn5
                                 - vn3_vnp3_sn9 * vn1_vnp3_sn18
                                 - vn3_vnp3_sn9 * vn1_vnp3_sn13
                                 - vn1_vnp3_sn5 * vn3_vnp3_sn6
                                 - vn1_vnp3_sn5 * vn3_vnp3_sn8
                                 - vn1_vnp3_sn18 * vn3_vnp3_sn6
                                 - vn1_vnp3_sn18 * vn3_vnp3_sn8
                                 - vn1_vnp3_sn13 * vn3_vnp3_sn6
                                 - vn1_vnp3_sn13 * vn3_vnp3_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_10#9: vnp3
                                 + [ - vn1_vnp3_sn5 * vn2_vnp3_sn2
                                 - vn1_vnp3_sn18 * vn2_vnp3_sn2
                                 - vn1_vnp3_sn13 * vn2_vnp3_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_11#10: vnp3
                                 + [ - vn3_vnp3_sn9 * vn2_vnp3_sn2
                                 - vn3_vnp3_sn6 * vn2_vnp3_sn2
                                 - vn3_vnp3_sn8 * vn2_vnp3_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_12#11: vnp4
                                 + [ - vn3_vnp4_sn13 * vn1_vnp4_sn10
                                 - vn3_vnp4_sn13 * vn1_vnp4_sn15
                                 - vn3_vnp4_sn13 * vn1_vnp4_sn20
                                 - vn1_vnp4_sn10 * vn3_vnp4_sn16
                                 - vn1_vnp4_sn15 * vn3_vnp4_sn16
                                 - vn1_vnp4_sn20 * vn3_vnp4_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_13#12: vnp4
                                 + [ - vn3_vnp4_sn13 * vn2_vnp4_sn4
                                 - vn3_vnp4_sn16 * vn2_vnp4_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_14#13: vnp4
                                 + [ - vn3_vnp4_sn13 * vn4_vnp4_sn5
                                 - vn3_vnp4_sn13 * vn4_vnp4_sn12
                                 - vn3_vnp4_sn16 * vn4_vnp4_sn5
                                 - vn3_vnp4_sn16 * vn4_vnp4_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_15#14: vnp4
                                 + [ - vn1_vnp4_sn10 * vn2_vnp4_sn4
                                 - vn1_vnp4_sn15 * vn2_vnp4_sn4
                                 - vn1_vnp4_sn20 * vn2_vnp4_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_16#15: vnp5
                                 + [ - vn3_vnp5_sn7 * vn1_vnp5_sn18
                                 - vn3_vnp5_sn7 * vn1_vnp5_sn19
                                 - vn3_vnp5_sn7 * vn1_vnp5_sn2
                                 - vn1_vnp5_sn18 * vn3_vnp5_sn1
                                 - vn1_vnp5_sn19 * vn3_vnp5_sn1
                                 - vn1_vnp5_sn2 * vn3_vnp5_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_17#16: vnp5
                                 + [ - vn3_vnp5_sn7 * vn2_vnp5_sn16
                                 - vn3_vnp5_sn1 * vn2_vnp5_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_18#17: vnp5
                                 + [ - vn1_vnp5_sn18 * vn2_vnp5_sn16
                                 - vn1_vnp5_sn19 * vn2_vnp5_sn16
                                 - vn1_vnp5_sn2 * vn2_vnp5_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_19#18: vnp6
                                 + [ - vn4_vnp6_sn13 * vn1_vnp6_sn5
                                 - vn4_vnp6_sn13 * vn1_vnp6_sn6
                                 - vn4_vnp6_sn13 * vn1_vnp6_sn1
                                 - vn1_vnp6_sn5 * vn4_vnp6_sn11
                                 - vn1_vnp6_sn6 * vn4_vnp6_sn11
                                 - vn1_vnp6_sn1 * vn4_vnp6_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_20#19: vnp6
                                 + [ - vn4_vnp6_sn13 * vn2_vnp6_sn7
                                 - vn4_vnp6_sn13 * vn2_vnp6_sn14
                                 - vn4_vnp6_sn11 * vn2_vnp6_sn7
                                 - vn4_vnp6_sn11 * vn2_vnp6_sn14 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_21#20: vnp6
                                 + [ - vn4_vnp6_sn13 * vn3_vnp6_sn2
                                 - vn4_vnp6_sn13 * vn3_vnp6_sn20
                                 - vn4_vnp6_sn13 * vn3_vnp6_sn18
                                 - vn4_vnp6_sn11 * vn3_vnp6_sn2
                                 - vn4_vnp6_sn11 * vn3_vnp6_sn20
                                 - vn4_vnp6_sn11 * vn3_vnp6_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_22#21: vnp6
                                 + [ - vn1_vnp6_sn5 * vn3_vnp6_sn2
                                 - vn1_vnp6_sn5 * vn3_vnp6_sn20
                                 - vn1_vnp6_sn5 * vn3_vnp6_sn18
                                 - vn1_vnp6_sn6 * vn3_vnp6_sn2
                                 - vn1_vnp6_sn6 * vn3_vnp6_sn20
                                 - vn1_vnp6_sn6 * vn3_vnp6_sn18
                                 - vn1_vnp6_sn1 * vn3_vnp6_sn2
                                 - vn1_vnp6_sn1 * vn3_vnp6_sn20
                                 - vn1_vnp6_sn1 * vn3_vnp6_sn18 ] <= 0
 q23#22:                         1498 vnp1 + 1000 vnp2 + 1070 vnp3 + 871 vnp4
                                 + 598 vnp5 + 1109 vnp6
                                 + [ - 30 vn4_vnp1_sn20 * vn1_vnp1_sn15
                                 - 206 vn4_vnp1_sn20 * vn1_vnp1_sn3
                                 - 71 vn4_vnp1_sn20 * vn1_vnp1_sn11
                                 - 126 vn1_vnp1_sn15 * vn4_vnp1_sn7
                                 - 102 vn1_vnp1_sn15 * vn4_vnp1_sn8
                                 - 177 vn1_vnp1_sn15 * vn3_vnp1_sn4
                                 - 55 vn1_vnp1_sn15 * vn2_vnp1_sn14
                                 - 172 vn1_vnp1_sn15 * vn3_vnp1_sn10
                                 - 167 vn1_vnp1_sn15 * vn3_vnp1_sn1
                                 - 142 vn1_vnp1_sn3 * vn4_vnp1_sn7
                                 - 46 vn1_vnp1_sn3 * vn4_vnp1_sn8
                                 - 52 vn1_vnp1_sn3 * vn3_vnp1_sn4
                                 - 131 vn1_vnp1_sn3 * vn2_vnp1_sn14
                                 - 72 vn1_vnp1_sn3 * vn3_vnp1_sn10
                                 - 87 vn1_vnp1_sn3 * vn3_vnp1_sn1
                                 - 159 vn1_vnp1_sn11 * vn4_vnp1_sn7
                                 - 103 vn1_vnp1_sn11 * vn4_vnp1_sn8
                                 - 168 vn1_vnp1_sn11 * vn3_vnp1_sn4
                                 - 44 vn1_vnp1_sn11 * vn2_vnp1_sn14
                                 - 93 vn1_vnp1_sn11 * vn3_vnp1_sn10
                                 - 218 vn1_vnp1_sn11 * vn3_vnp1_sn1
                                 - 122 vn3_vnp1_sn4 * vn2_vnp1_sn14
                                 - 74 vn2_vnp1_sn14 * vn3_vnp1_sn10
                                 - 162 vn2_vnp1_sn14 * vn3_vnp1_sn1
                                 - 113 vn2_vnp2_sn5 * vn1_vnp2_sn16
                                 - 115 vn2_vnp2_sn5 * vn1_vnp2_sn11
                                 - 24 vn2_vnp2_sn5 * vn4_vnp2_sn13
                                 - 54 vn2_vnp2_sn5 * vn3_vnp2_sn19
                                 - 46 vn2_vnp2_sn5 * vn3_vnp2_sn15
                                 - 142 vn1_vnp2_sn16 * vn2_vnp2_sn4
                                 - 37 vn1_vnp2_sn16 * vn2_vnp2_sn14
                                 - 159 vn1_vnp2_sn11 * vn2_vnp2_sn4
                                 - 39 vn1_vnp2_sn11 * vn2_vnp2_sn14
                                 - 49 vn2_vnp2_sn4 * vn4_vnp2_sn13
                                 - 37 vn2_vnp2_sn4 * vn3_vnp2_sn19
                                 - 45 vn2_vnp2_sn4 * vn3_vnp2_sn15
                                 - 51 vn2_vnp2_sn14 * vn4_vnp2_sn13
                                 - 43 vn2_vnp2_sn14 * vn3_vnp2_sn19
                                 - 21 vn2_vnp2_sn14 * vn3_vnp2_sn15
                                 - 122 vn4_vnp2_sn13 * vn3_vnp2_sn19
                                 - 80 vn4_vnp2_sn13 * vn3_vnp2_sn15
                                 - 65 vn3_vnp3_sn9 * vn1_vnp3_sn5
                                 - 30 vn3_vnp3_sn9 * vn1_vnp3_sn18
                                 - 129 vn3_vnp3_sn9 * vn1_vnp3_sn13
                                 - 119 vn3_vnp3_sn9 * vn2_vnp3_sn2
                                 - 60 vn1_vnp3_sn5 * vn3_vnp3_sn6
                                 - 72 vn1_vnp3_sn5 * vn3_vnp3_sn8
                                 - 46 vn1_vnp3_sn5 * vn2_vnp3_sn2
                                 - 125 vn1_vnp3_sn18 * vn3_vnp3_sn6
                                 - 17 vn1_vnp3_sn18 * vn3_vnp3_sn8
                                 - 49 vn1_vnp3_sn18 * vn2_vnp3_sn2
                                 - 34 vn1_vnp3_sn13 * vn3_vnp3_sn6
                                 - 206 vn1_vnp3_sn13 * vn3_vnp3_sn8
                                 - 54 vn1_vnp3_sn13 * vn2_vnp3_sn2
                                 - 187 vn3_vnp3_sn6 * vn2_vnp3_sn2
                                 - 124 vn3_vnp3_sn8 * vn2_vnp3_sn2
                                 - 140 vn3_vnp4_sn13 * vn1_vnp4_sn10
                                 - 108 vn3_vnp4_sn13 * vn1_vnp4_sn15
                                 - 128 vn3_vnp4_sn13 * vn1_vnp4_sn20
                                 - 159 vn3_vnp4_sn13 * vn2_vnp4_sn4
                                 - 27 vn3_vnp4_sn13 * vn4_vnp4_sn5
                                 - 19 vn3_vnp4_sn13 * vn4_vnp4_sn12
                                 - 80 vn1_vnp4_sn10 * vn3_vnp4_sn16
                                 - 42 vn1_vnp4_sn10 * vn2_vnp4_sn4
                                 - 84 vn1_vnp4_sn15 * vn3_vnp4_sn16
                                 - 53 vn1_vnp4_sn15 * vn2_vnp4_sn4
                                 - 156 vn1_vnp4_sn20 * vn3_vnp4_sn16
                                 - 73 vn1_vnp4_sn20 * vn2_vnp4_sn4
                                 - 127 vn3_vnp4_sn16 * vn2_vnp4_sn4
                                 - 44 vn3_vnp4_sn16 * vn4_vnp4_sn5
                                 - 46 vn3_vnp4_sn16 * vn4_vnp4_sn12
                                 - 31 vn3_vnp5_sn7 * vn1_vnp5_sn18
                                 - 28 vn3_vnp5_sn7 * vn1_vnp5_sn19
                                 - 45 vn3_vnp5_sn7 * vn1_vnp5_sn2
                                 - 94 vn3_vnp5_sn7 * vn2_vnp5_sn16
                                 - 43 vn1_vnp5_sn18 * vn3_vnp5_sn1
                                 - 38 vn1_vnp5_sn18 * vn2_vnp5_sn16
                                 - 31 vn1_vnp5_sn19 * vn3_vnp5_sn1
                                 - 33 vn1_vnp5_sn19 * vn2_vnp5_sn16
                                 - 28 vn1_vnp5_sn2 * vn3_vnp5_sn1
                                 - 45 vn1_vnp5_sn2 * vn2_vnp5_sn16
                                 - 140 vn3_vnp5_sn1 * vn2_vnp5_sn16
                                 - 89 vn4_vnp6_sn13 * vn1_vnp6_sn5
                                 - 39 vn4_vnp6_sn13 * vn1_vnp6_sn6
                                 - 239 vn4_vnp6_sn13 * vn1_vnp6_sn1
                                 - 233 vn4_vnp6_sn13 * vn2_vnp6_sn7
                                 - 167 vn4_vnp6_sn13 * vn2_vnp6_sn14
                                 - 108 vn4_vnp6_sn13 * vn3_vnp6_sn2
                                 - 74 vn4_vnp6_sn13 * vn3_vnp6_sn20
                                 - 94 vn4_vnp6_sn13 * vn3_vnp6_sn18
                                 - 127 vn1_vnp6_sn5 * vn4_vnp6_sn11
                                 - 55 vn1_vnp6_sn5 * vn3_vnp6_sn2
                                 - 64 vn1_vnp6_sn5 * vn3_vnp6_sn20
                                 - 40 vn1_vnp6_sn5 * vn3_vnp6_sn18
                                 - 167 vn1_vnp6_sn6 * vn4_vnp6_sn11
                                 - 59 vn1_vnp6_sn6 * vn3_vnp6_sn2
                                 - 58 vn1_vnp6_sn6 * vn3_vnp6_sn20
                                 - 44 vn1_vnp6_sn6 * vn3_vnp6_sn18
                                 - 227 vn1_vnp6_sn1 * vn4_vnp6_sn11
                                 - 40 vn1_vnp6_sn1 * vn3_vnp6_sn2
                                 - 70 vn1_vnp6_sn1 * vn3_vnp6_sn20
                                 - 55 vn1_vnp6_sn1 * vn3_vnp6_sn18
                                 - 205 vn4_vnp6_sn11 * vn2_vnp6_sn7
                                 - 43 vn4_vnp6_sn11 * vn2_vnp6_sn14
                                 - 128 vn4_vnp6_sn11 * vn3_vnp6_sn2
                                 - 54 vn4_vnp6_sn11 * vn3_vnp6_sn20
                                 - 74 vn4_vnp6_sn11 * vn3_vnp6_sn18 ] >= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: 5 vn3_vnp1_sn1 + 2 vn3_vnp5_sn1
                                 + 5 vn1_vnp6_sn1 <= 6
 CPU_capacity_of_substrate_node_2#1: vn2_vnp3_sn2 + 4 vn1_vnp5_sn2
                                 + 4 vn3_vnp6_sn2 <= 4
 CPU_capacity_of_substrate_node_3#2: vn1_vnp1_sn3 <= 8
 CPU_capacity_of_substrate_node_4#3: 5 vn3_vnp1_sn4 + 2 vn2_vnp2_sn4
                                 + 3 vn2_vnp4_sn4 <= 6
 CPU_capacity_of_substrate_node_5#4: 2 vn2_vnp2_sn5 + 3 vn1_vnp3_sn5
                                 + 3 vn4_vnp4_sn5 + 5 vn1_vnp6_sn5 <= 8
 CPU_capacity_of_substrate_node_6#5: 3 vn3_vnp3_sn6 + 5 vn1_vnp6_sn6 <= 8
 CPU_capacity_of_substrate_node_7#6: 4 vn4_vnp1_sn7 + 2 vn3_vnp5_sn7
                                 + 3 vn2_vnp6_sn7 <= 4
 CPU_capacity_of_substrate_node_8#7: 4 vn4_vnp1_sn8 + 3 vn3_vnp3_sn8 <= 2
 CPU_capacity_of_substrate_node_9#8: 3 vn3_vnp3_sn9 <= 8
 CPU_capacity_of_substrate_node_10#9: 5 vn3_vnp1_sn10 + 4 vn1_vnp4_sn10 <= 8
 CPU_capacity_of_substrate_node_11#10: vn1_vnp1_sn11 + 3 vn1_vnp2_sn11
                                 + 4 vn4_vnp6_sn11 <= 8
 CPU_capacity_of_substrate_node_12#11: 3 vn4_vnp4_sn12 <= 7
 CPU_capacity_of_substrate_node_13#12: 4 vn4_vnp2_sn13 + 3 vn1_vnp3_sn13
                                 + 4 vn3_vnp4_sn13 + 4 vn4_vnp6_sn13 <= 8
 CPU_capacity_of_substrate_node_14#13: 5 vn2_vnp1_sn14 + 2 vn2_vnp2_sn14
                                 + 3 vn2_vnp6_sn14 <= 8
 CPU_capacity_of_substrate_node_15#14: vn1_vnp1_sn15 + 2 vn3_vnp2_sn15
                                 + 4 vn1_vnp4_sn15 <= 8
 CPU_capacity_of_substrate_node_16#15: 3 vn1_vnp2_sn16 + 4 vn3_vnp4_sn16
                                 + vn2_vnp5_sn16 <= 7
 CPU_capacity_of_substrate_node_18#16: 3 vn1_vnp3_sn18 + 4 vn1_vnp5_sn18
                                 + 4 vn3_vnp6_sn18 <= 8
 CPU_capacity_of_substrate_node_19#17: 2 vn3_vnp2_sn19 + 4 vn1_vnp5_sn19 <= 1
 CPU_capacity_of_substrate_node_20#18: 4 vn4_vnp1_sn20 + 4 vn1_vnp4_sn20
                                 + 4 vn3_vnp6_sn20 <= 8
Bounds
 0 <= vnp1 <= 1
 0 <= vn4_vnp1_sn20 <= 1
 0 <= vn1_vnp1_sn15 <= 1
 0 <= vn1_vnp1_sn3 <= 1
 0 <= vn1_vnp1_sn11 <= 1
 0 <= vn4_vnp1_sn7 <= 1
 0 <= vn4_vnp1_sn8 <= 1
 0 <= vn3_vnp1_sn4 <= 1
 0 <= vn2_vnp1_sn14 <= 1
 0 <= vn3_vnp1_sn10 <= 1
 0 <= vn3_vnp1_sn1 <= 1
 0 <= vnp2 <= 1
 0 <= vn2_vnp2_sn5 <= 1
 0 <= vn1_vnp2_sn16 <= 1
 0 <= vn1_vnp2_sn11 <= 1
 0 <= vn2_vnp2_sn4 <= 1
 0 <= vn2_vnp2_sn14 <= 1
 0 <= vn4_vnp2_sn13 <= 1
 0 <= vn3_vnp2_sn19 <= 1
 0 <= vn3_vnp2_sn15 <= 1
 0 <= vnp3 <= 1
 0 <= vn3_vnp3_sn9 <= 1
 0 <= vn1_vnp3_sn5 <= 1
 0 <= vn1_vnp3_sn18 <= 1
 0 <= vn1_vnp3_sn13 <= 1
 0 <= vn3_vnp3_sn6 <= 1
 0 <= vn3_vnp3_sn8 <= 1
 0 <= vn2_vnp3_sn2 <= 1
 0 <= vnp4 <= 1
 0 <= vn3_vnp4_sn13 <= 1
 0 <= vn1_vnp4_sn10 <= 1
 0 <= vn1_vnp4_sn15 <= 1
 0 <= vn1_vnp4_sn20 <= 1
 0 <= vn3_vnp4_sn16 <= 1
 0 <= vn2_vnp4_sn4 <= 1
 0 <= vn4_vnp4_sn5 <= 1
 0 <= vn4_vnp4_sn12 <= 1
 0 <= vnp5 <= 1
 0 <= vn3_vnp5_sn7 <= 1
 0 <= vn1_vnp5_sn18 <= 1
 0 <= vn1_vnp5_sn19 <= 1
 0 <= vn1_vnp5_sn2 <= 1
 0 <= vn3_vnp5_sn1 <= 1
 0 <= vn2_vnp5_sn16 <= 1
 0 <= vnp6 <= 1
 0 <= vn4_vnp6_sn13 <= 1
 0 <= vn1_vnp6_sn5 <= 1
 0 <= vn1_vnp6_sn6 <= 1
 0 <= vn1_vnp6_sn1 <= 1
 0 <= vn4_vnp6_sn11 <= 1
 0 <= vn2_vnp6_sn7 <= 1
 0 <= vn2_vnp6_sn14 <= 1
 0 <= vn3_vnp6_sn2 <= 1
 0 <= vn3_vnp6_sn20 <= 1
 0 <= vn3_vnp6_sn18 <= 1
Binaries
 vnp1  vn4_vnp1_sn20  vn1_vnp1_sn15  vn1_vnp1_sn3  vn1_vnp1_sn11  vn4_vnp1_sn7 
 vn4_vnp1_sn8  vn3_vnp1_sn4  vn2_vnp1_sn14  vn3_vnp1_sn10  vn3_vnp1_sn1  vnp2 
 vn2_vnp2_sn5  vn1_vnp2_sn16  vn1_vnp2_sn11  vn2_vnp2_sn4  vn2_vnp2_sn14 
 vn4_vnp2_sn13  vn3_vnp2_sn19  vn3_vnp2_sn15  vnp3  vn3_vnp3_sn9  vn1_vnp3_sn5 
 vn1_vnp3_sn18  vn1_vnp3_sn13  vn3_vnp3_sn6  vn3_vnp3_sn8  vn2_vnp3_sn2  vnp4 
 vn3_vnp4_sn13  vn1_vnp4_sn10  vn1_vnp4_sn15  vn1_vnp4_sn20  vn3_vnp4_sn16 
 vn2_vnp4_sn4  vn4_vnp4_sn5  vn4_vnp4_sn12  vnp5  vn3_vnp5_sn7  vn1_vnp5_sn18 
 vn1_vnp5_sn19  vn1_vnp5_sn2  vn3_vnp5_sn1  vn2_vnp5_sn16  vnp6  vn4_vnp6_sn13 
 vn1_vnp6_sn5  vn1_vnp6_sn6  vn1_vnp6_sn1  vn4_vnp6_sn11  vn2_vnp6_sn7 
 vn2_vnp6_sn14  vn3_vnp6_sn2  vn3_vnp6_sn20  vn3_vnp6_sn18 
End
