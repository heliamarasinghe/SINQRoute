\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 334 vnp1 + 288 vnp2 + 471 vnp3 + 779 vnp4 + 728 vnp5 + 504 vnp6
      + [ - 120 vn3_vnp1_sn13 * vn1_vnp1_sn11
      - 294 vn3_vnp1_sn13 * vn1_vnp1_sn4 - 86 vn3_vnp1_sn13 * vn2_vnp1_sn17
      - 106 vn3_vnp1_sn13 * vn2_vnp1_sn3 - 58 vn3_vnp1_sn13 * vn2_vnp1_sn15
      - 86 vn1_vnp1_sn11 * vn2_vnp1_sn17 - 174 vn1_vnp1_sn11 * vn2_vnp1_sn3
      - 36 vn1_vnp1_sn11 * vn2_vnp1_sn15 - 58 vn1_vnp1_sn4 * vn2_vnp1_sn17
      - 10 vn1_vnp1_sn4 * vn2_vnp1_sn3 - 96 vn1_vnp1_sn4 * vn2_vnp1_sn15
      - 50 vn3_vnp2_sn16 * vn1_vnp2_sn8 - 62 vn3_vnp2_sn16 * vn1_vnp2_sn10
      - 76 vn3_vnp2_sn16 * vn1_vnp2_sn17 - 52 vn3_vnp2_sn16 * vn2_vnp2_sn20
      - 24 vn3_vnp2_sn16 * vn2_vnp2_sn14 - 64 vn3_vnp2_sn16 * vn2_vnp2_sn13
      - 72 vn1_vnp2_sn8 * vn3_vnp2_sn5 - 58 vn1_vnp2_sn8 * vn2_vnp2_sn20
      - 78 vn1_vnp2_sn8 * vn2_vnp2_sn14 - 296 vn1_vnp2_sn8 * vn2_vnp2_sn13
      - 56 vn1_vnp2_sn10 * vn3_vnp2_sn5 - 236 vn1_vnp2_sn10 * vn2_vnp2_sn20
      - 166 vn1_vnp2_sn10 * vn2_vnp2_sn14 - 264 vn1_vnp2_sn10 * vn2_vnp2_sn13
      - 82 vn1_vnp2_sn17 * vn3_vnp2_sn5 - 44 vn1_vnp2_sn17 * vn2_vnp2_sn20
      - 184 vn1_vnp2_sn17 * vn2_vnp2_sn14 - 282 vn1_vnp2_sn17 * vn2_vnp2_sn13
      - 80 vn3_vnp2_sn5 * vn2_vnp2_sn20 - 50 vn3_vnp2_sn5 * vn2_vnp2_sn14
      - 104 vn3_vnp2_sn5 * vn2_vnp2_sn13 - 112 vn2_vnp3_sn13 * vn1_vnp3_sn8
      - 46 vn2_vnp3_sn13 * vn1_vnp3_sn11 - 62 vn2_vnp3_sn13 * vn1_vnp3_sn17
      - 368 vn2_vnp3_sn13 * vn3_vnp3_sn2 - 128 vn2_vnp3_sn13 * vn3_vnp3_sn20
      - 116 vn2_vnp3_sn13 * vn3_vnp3_sn6 - 66 vn1_vnp3_sn8 * vn2_vnp3_sn10
      - 18 vn1_vnp3_sn8 * vn2_vnp3_sn7 - 62 vn1_vnp3_sn8 * vn3_vnp3_sn2
      - 14 vn1_vnp3_sn8 * vn3_vnp3_sn20 - 72 vn1_vnp3_sn8 * vn3_vnp3_sn6
      - 22 vn1_vnp3_sn11 * vn2_vnp3_sn10 - 50 vn1_vnp3_sn11 * vn2_vnp3_sn7
      - 82 vn1_vnp3_sn11 * vn3_vnp3_sn2 - 26 vn1_vnp3_sn11 * vn3_vnp3_sn20
      - 78 vn1_vnp3_sn11 * vn3_vnp3_sn6 - 112 vn1_vnp3_sn17 * vn2_vnp3_sn10
      - 46 vn1_vnp3_sn17 * vn2_vnp3_sn7 - 60 vn1_vnp3_sn17 * vn3_vnp3_sn2
      - 12 vn1_vnp3_sn17 * vn3_vnp3_sn20 - 78 vn1_vnp3_sn17 * vn3_vnp3_sn6
      - 304 vn2_vnp3_sn10 * vn3_vnp3_sn2 - 100 vn2_vnp3_sn10 * vn3_vnp3_sn20
      - 184 vn2_vnp3_sn10 * vn3_vnp3_sn6 - 140 vn2_vnp3_sn7 * vn3_vnp3_sn2
      - 170 vn2_vnp3_sn7 * vn3_vnp3_sn20 - 284 vn2_vnp3_sn7 * vn3_vnp3_sn6
      - 234 vn2_vnp4_sn12 * vn1_vnp4_sn19 - 210 vn2_vnp4_sn12 * vn3_vnp4_sn7
      - 216 vn2_vnp4_sn12 * vn3_vnp4_sn3 - 90 vn2_vnp4_sn12 * vn3_vnp4_sn20
      - 78 vn1_vnp4_sn19 * vn3_vnp4_sn7 - 182 vn1_vnp4_sn19 * vn3_vnp4_sn3
      - 164 vn1_vnp4_sn19 * vn3_vnp4_sn20 - 372 vn3_vnp5_sn10 * vn1_vnp5_sn4
      - 290 vn3_vnp5_sn10 * vn1_vnp5_sn8 - 382 vn3_vnp5_sn10 * vn4_vnp5_sn19
      - 162 vn3_vnp5_sn10 * vn4_vnp5_sn15 - 54 vn1_vnp5_sn4 * vn4_vnp5_sn19
      - 34 vn1_vnp5_sn4 * vn2_vnp5_sn1 - 68 vn1_vnp5_sn4 * vn2_vnp5_sn14
      - 170 vn1_vnp5_sn4 * vn4_vnp5_sn15 - 36 vn1_vnp5_sn8 * vn4_vnp5_sn19
      - 42 vn1_vnp5_sn8 * vn2_vnp5_sn1 - 30 vn1_vnp5_sn8 * vn2_vnp5_sn14
      - 56 vn1_vnp5_sn8 * vn4_vnp5_sn15 - 14 vn4_vnp5_sn19 * vn2_vnp5_sn1
      - 144 vn4_vnp5_sn19 * vn2_vnp5_sn14 - 90 vn2_vnp5_sn1 * vn4_vnp5_sn15
      - 40 vn2_vnp5_sn14 * vn4_vnp5_sn15 - 156 vn3_vnp6_sn11 * vn1_vnp6_sn1
      - 188 vn3_vnp6_sn11 * vn2_vnp6_sn19 - 34 vn1_vnp6_sn1 * vn2_vnp6_sn19
      ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn11
                                 + vn1_vnp1_sn4 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn17
                                 + vn2_vnp1_sn3 + vn2_vnp1_sn15 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn13 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#3: - vnp2 + vn1_vnp2_sn8
                                 + vn1_vnp2_sn10 + vn1_vnp2_sn17 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#4: - vnp2 + vn2_vnp2_sn20
                                 + vn2_vnp2_sn14 + vn2_vnp2_sn13 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#5: - vnp2 + vn3_vnp2_sn16
                                 + vn3_vnp2_sn5 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#6: - vnp3 + vn1_vnp3_sn8
                                 + vn1_vnp3_sn11 + vn1_vnp3_sn17 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#7: - vnp3 + vn2_vnp3_sn13
                                 + vn2_vnp3_sn10 + vn2_vnp3_sn7 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#8: - vnp3 + vn3_vnp3_sn2
                                 + vn3_vnp3_sn20 + vn3_vnp3_sn6 <= 0
 _Embedding_clash_const_of_vnode1_vnp_4#9: - vnp4 + vn1_vnp4_sn19 <= 0
 _Embedding_clash_const_of_vnode2_vnp_4#10: - vnp4 + vn2_vnp4_sn12 <= 0
 _Embedding_clash_const_of_vnode3_vnp_4#11: - vnp4 + vn3_vnp4_sn7
                                 + vn3_vnp4_sn3 + vn3_vnp4_sn20 <= 0
 _Embedding_clash_const_of_vnode1_vnp_5#12: - vnp5 + vn1_vnp5_sn4
                                 + vn1_vnp5_sn8 <= 0
 _Embedding_clash_const_of_vnode2_vnp_5#13: - vnp5 + vn2_vnp5_sn1
                                 + vn2_vnp5_sn14 <= 0
 _Embedding_clash_const_of_vnode3_vnp_5#14: - vnp5 + vn3_vnp5_sn10 <= 0
 _Embedding_clash_const_of_vnode4_vnp_5#15: - vnp5 + vn4_vnp5_sn19
                                 + vn4_vnp5_sn15 <= 0
 _Embedding_clash_const_of_vnode1_vnp_6#16: - vnp6 + vn1_vnp6_sn1 <= 0
 _Embedding_clash_const_of_vnode2_vnp_6#17: - vnp6 + vn2_vnp6_sn19 <= 0
 _Embedding_clash_const_of_vnode3_vnp_6#18: - vnp6 + vn3_vnp6_sn11 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn3_vnp1_sn13 * vn1_vnp1_sn11
                                 - vn3_vnp1_sn13 * vn1_vnp1_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn3_vnp1_sn13 * vn2_vnp1_sn17
                                 - vn3_vnp1_sn13 * vn2_vnp1_sn3
                                 - vn3_vnp1_sn13 * vn2_vnp1_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn1_vnp1_sn11 * vn2_vnp1_sn17
                                 - vn1_vnp1_sn11 * vn2_vnp1_sn3
                                 - vn1_vnp1_sn11 * vn2_vnp1_sn15
                                 - vn1_vnp1_sn4 * vn2_vnp1_sn17
                                 - vn1_vnp1_sn4 * vn2_vnp1_sn3
                                 - vn1_vnp1_sn4 * vn2_vnp1_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_4#3: vnp2
                                 + [ - vn3_vnp2_sn16 * vn1_vnp2_sn8
                                 - vn3_vnp2_sn16 * vn1_vnp2_sn10
                                 - vn3_vnp2_sn16 * vn1_vnp2_sn17
                                 - vn1_vnp2_sn8 * vn3_vnp2_sn5
                                 - vn1_vnp2_sn10 * vn3_vnp2_sn5
                                 - vn1_vnp2_sn17 * vn3_vnp2_sn5 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_5#4: vnp2
                                 + [ - vn1_vnp2_sn8 * vn2_vnp2_sn20
                                 - vn1_vnp2_sn8 * vn2_vnp2_sn14
                                 - vn1_vnp2_sn8 * vn2_vnp2_sn13
                                 - vn1_vnp2_sn10 * vn2_vnp2_sn20
                                 - vn1_vnp2_sn10 * vn2_vnp2_sn14
                                 - vn1_vnp2_sn10 * vn2_vnp2_sn13
                                 - vn1_vnp2_sn17 * vn2_vnp2_sn20
                                 - vn1_vnp2_sn17 * vn2_vnp2_sn14
                                 - vn1_vnp2_sn17 * vn2_vnp2_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn3_vnp2_sn16 * vn2_vnp2_sn20
                                 - vn3_vnp2_sn16 * vn2_vnp2_sn14
                                 - vn3_vnp2_sn16 * vn2_vnp2_sn13
                                 - vn3_vnp2_sn5 * vn2_vnp2_sn20
                                 - vn3_vnp2_sn5 * vn2_vnp2_sn14
                                 - vn3_vnp2_sn5 * vn2_vnp2_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_7#6: vnp3
                                 + [ - vn2_vnp3_sn13 * vn1_vnp3_sn8
                                 - vn2_vnp3_sn13 * vn1_vnp3_sn11
                                 - vn2_vnp3_sn13 * vn1_vnp3_sn17
                                 - vn1_vnp3_sn8 * vn2_vnp3_sn10
                                 - vn1_vnp3_sn8 * vn2_vnp3_sn7
                                 - vn1_vnp3_sn11 * vn2_vnp3_sn10
                                 - vn1_vnp3_sn11 * vn2_vnp3_sn7
                                 - vn1_vnp3_sn17 * vn2_vnp3_sn10
                                 - vn1_vnp3_sn17 * vn2_vnp3_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_8#7: vnp3
                                 + [ - vn2_vnp3_sn13 * vn3_vnp3_sn2
                                 - vn2_vnp3_sn13 * vn3_vnp3_sn20
                                 - vn2_vnp3_sn13 * vn3_vnp3_sn6
                                 - vn2_vnp3_sn10 * vn3_vnp3_sn2
                                 - vn2_vnp3_sn10 * vn3_vnp3_sn20
                                 - vn2_vnp3_sn10 * vn3_vnp3_sn6
                                 - vn2_vnp3_sn7 * vn3_vnp3_sn2
                                 - vn2_vnp3_sn7 * vn3_vnp3_sn20
                                 - vn2_vnp3_sn7 * vn3_vnp3_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_9#8: vnp3
                                 + [ - vn1_vnp3_sn8 * vn3_vnp3_sn2
                                 - vn1_vnp3_sn8 * vn3_vnp3_sn20
                                 - vn1_vnp3_sn8 * vn3_vnp3_sn6
                                 - vn1_vnp3_sn11 * vn3_vnp3_sn2
                                 - vn1_vnp3_sn11 * vn3_vnp3_sn20
                                 - vn1_vnp3_sn11 * vn3_vnp3_sn6
                                 - vn1_vnp3_sn17 * vn3_vnp3_sn2
                                 - vn1_vnp3_sn17 * vn3_vnp3_sn20
                                 - vn1_vnp3_sn17 * vn3_vnp3_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_10#9: vnp4
                                 + [ - vn2_vnp4_sn12 * vn1_vnp4_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_11#10: vnp4
                                 + [ - vn2_vnp4_sn12 * vn3_vnp4_sn7
                                 - vn2_vnp4_sn12 * vn3_vnp4_sn3
                                 - vn2_vnp4_sn12 * vn3_vnp4_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_12#11: vnp4
                                 + [ - vn1_vnp4_sn19 * vn3_vnp4_sn7
                                 - vn1_vnp4_sn19 * vn3_vnp4_sn3
                                 - vn1_vnp4_sn19 * vn3_vnp4_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_13#12: vnp5
                                 + [ - vn3_vnp5_sn10 * vn1_vnp5_sn4
                                 - vn3_vnp5_sn10 * vn1_vnp5_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_14#13: vnp5
                                 + [ - vn4_vnp5_sn19 * vn2_vnp5_sn1
                                 - vn4_vnp5_sn19 * vn2_vnp5_sn14
                                 - vn2_vnp5_sn1 * vn4_vnp5_sn15
                                 - vn2_vnp5_sn14 * vn4_vnp5_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_15#14: vnp5
                                 + [ - vn3_vnp5_sn10 * vn4_vnp5_sn19
                                 - vn3_vnp5_sn10 * vn4_vnp5_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_16#15: vnp5
                                 + [ - vn1_vnp5_sn4 * vn2_vnp5_sn1
                                 - vn1_vnp5_sn4 * vn2_vnp5_sn14
                                 - vn1_vnp5_sn8 * vn2_vnp5_sn1
                                 - vn1_vnp5_sn8 * vn2_vnp5_sn14 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_17#16: vnp5
                                 + [ - vn1_vnp5_sn4 * vn4_vnp5_sn19
                                 - vn1_vnp5_sn4 * vn4_vnp5_sn15
                                 - vn1_vnp5_sn8 * vn4_vnp5_sn19
                                 - vn1_vnp5_sn8 * vn4_vnp5_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_18#17: vnp6
                                 + [ - vn3_vnp6_sn11 * vn1_vnp6_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_19#18: vnp6
                                 + [ - vn1_vnp6_sn1 * vn2_vnp6_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_20#19: vnp6
                                 + [ - vn3_vnp6_sn11 * vn2_vnp6_sn19 ] <= 0
 q21#20:                         - 334 vnp1 - 288 vnp2 - 471 vnp3 - 779 vnp4
                                 - 728 vnp5 - 504 vnp6
                                 + [ 60 vn3_vnp1_sn13 * vn1_vnp1_sn11
                                 + 147 vn3_vnp1_sn13 * vn1_vnp1_sn4
                                 + 43 vn3_vnp1_sn13 * vn2_vnp1_sn17
                                 + 53 vn3_vnp1_sn13 * vn2_vnp1_sn3
                                 + 29 vn3_vnp1_sn13 * vn2_vnp1_sn15
                                 + 43 vn1_vnp1_sn11 * vn2_vnp1_sn17
                                 + 87 vn1_vnp1_sn11 * vn2_vnp1_sn3
                                 + 18 vn1_vnp1_sn11 * vn2_vnp1_sn15
                                 + 29 vn1_vnp1_sn4 * vn2_vnp1_sn17
                                 + 5 vn1_vnp1_sn4 * vn2_vnp1_sn3
                                 + 48 vn1_vnp1_sn4 * vn2_vnp1_sn15
                                 + 25 vn3_vnp2_sn16 * vn1_vnp2_sn8
                                 + 31 vn3_vnp2_sn16 * vn1_vnp2_sn10
                                 + 38 vn3_vnp2_sn16 * vn1_vnp2_sn17
                                 + 26 vn3_vnp2_sn16 * vn2_vnp2_sn20
                                 + 12 vn3_vnp2_sn16 * vn2_vnp2_sn14
                                 + 32 vn3_vnp2_sn16 * vn2_vnp2_sn13
                                 + 36 vn1_vnp2_sn8 * vn3_vnp2_sn5
                                 + 29 vn1_vnp2_sn8 * vn2_vnp2_sn20
                                 + 39 vn1_vnp2_sn8 * vn2_vnp2_sn14
                                 + 148 vn1_vnp2_sn8 * vn2_vnp2_sn13
                                 + 28 vn1_vnp2_sn10 * vn3_vnp2_sn5
                                 + 118 vn1_vnp2_sn10 * vn2_vnp2_sn20
                                 + 83 vn1_vnp2_sn10 * vn2_vnp2_sn14
                                 + 132 vn1_vnp2_sn10 * vn2_vnp2_sn13
                                 + 41 vn1_vnp2_sn17 * vn3_vnp2_sn5
                                 + 22 vn1_vnp2_sn17 * vn2_vnp2_sn20
                                 + 92 vn1_vnp2_sn17 * vn2_vnp2_sn14
                                 + 141 vn1_vnp2_sn17 * vn2_vnp2_sn13
                                 + 40 vn3_vnp2_sn5 * vn2_vnp2_sn20
                                 + 25 vn3_vnp2_sn5 * vn2_vnp2_sn14
                                 + 52 vn3_vnp2_sn5 * vn2_vnp2_sn13
                                 + 56 vn2_vnp3_sn13 * vn1_vnp3_sn8
                                 + 23 vn2_vnp3_sn13 * vn1_vnp3_sn11
                                 + 31 vn2_vnp3_sn13 * vn1_vnp3_sn17
                                 + 184 vn2_vnp3_sn13 * vn3_vnp3_sn2
                                 + 64 vn2_vnp3_sn13 * vn3_vnp3_sn20
                                 + 58 vn2_vnp3_sn13 * vn3_vnp3_sn6
                                 + 33 vn1_vnp3_sn8 * vn2_vnp3_sn10
                                 + 9 vn1_vnp3_sn8 * vn2_vnp3_sn7
                                 + 31 vn1_vnp3_sn8 * vn3_vnp3_sn2
                                 + 7 vn1_vnp3_sn8 * vn3_vnp3_sn20
                                 + 36 vn1_vnp3_sn8 * vn3_vnp3_sn6
                                 + 11 vn1_vnp3_sn11 * vn2_vnp3_sn10
                                 + 25 vn1_vnp3_sn11 * vn2_vnp3_sn7
                                 + 41 vn1_vnp3_sn11 * vn3_vnp3_sn2
                                 + 13 vn1_vnp3_sn11 * vn3_vnp3_sn20
                                 + 39 vn1_vnp3_sn11 * vn3_vnp3_sn6
                                 + 56 vn1_vnp3_sn17 * vn2_vnp3_sn10
                                 + 23 vn1_vnp3_sn17 * vn2_vnp3_sn7
                                 + 30 vn1_vnp3_sn17 * vn3_vnp3_sn2
                                 + 6 vn1_vnp3_sn17 * vn3_vnp3_sn20
                                 + 39 vn1_vnp3_sn17 * vn3_vnp3_sn6
                                 + 152 vn2_vnp3_sn10 * vn3_vnp3_sn2
                                 + 50 vn2_vnp3_sn10 * vn3_vnp3_sn20
                                 + 92 vn2_vnp3_sn10 * vn3_vnp3_sn6
                                 + 70 vn2_vnp3_sn7 * vn3_vnp3_sn2
                                 + 85 vn2_vnp3_sn7 * vn3_vnp3_sn20
                                 + 142 vn2_vnp3_sn7 * vn3_vnp3_sn6
                                 + 117 vn2_vnp4_sn12 * vn1_vnp4_sn19
                                 + 105 vn2_vnp4_sn12 * vn3_vnp4_sn7
                                 + 108 vn2_vnp4_sn12 * vn3_vnp4_sn3
                                 + 45 vn2_vnp4_sn12 * vn3_vnp4_sn20
                                 + 39 vn1_vnp4_sn19 * vn3_vnp4_sn7
                                 + 91 vn1_vnp4_sn19 * vn3_vnp4_sn3
                                 + 82 vn1_vnp4_sn19 * vn3_vnp4_sn20
                                 + 186 vn3_vnp5_sn10 * vn1_vnp5_sn4
                                 + 145 vn3_vnp5_sn10 * vn1_vnp5_sn8
                                 + 191 vn3_vnp5_sn10 * vn4_vnp5_sn19
                                 + 81 vn3_vnp5_sn10 * vn4_vnp5_sn15
                                 + 27 vn1_vnp5_sn4 * vn4_vnp5_sn19
                                 + 17 vn1_vnp5_sn4 * vn2_vnp5_sn1
                                 + 34 vn1_vnp5_sn4 * vn2_vnp5_sn14
                                 + 85 vn1_vnp5_sn4 * vn4_vnp5_sn15
                                 + 18 vn1_vnp5_sn8 * vn4_vnp5_sn19
                                 + 21 vn1_vnp5_sn8 * vn2_vnp5_sn1
                                 + 15 vn1_vnp5_sn8 * vn2_vnp5_sn14
                                 + 28 vn1_vnp5_sn8 * vn4_vnp5_sn15
                                 + 7 vn4_vnp5_sn19 * vn2_vnp5_sn1
                                 + 72 vn4_vnp5_sn19 * vn2_vnp5_sn14
                                 + 45 vn2_vnp5_sn1 * vn4_vnp5_sn15
                                 + 20 vn2_vnp5_sn14 * vn4_vnp5_sn15
                                 + 78 vn3_vnp6_sn11 * vn1_vnp6_sn1
                                 + 94 vn3_vnp6_sn11 * vn2_vnp6_sn19
                                 + 17 vn1_vnp6_sn1 * vn2_vnp6_sn19 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: 3 vn2_vnp5_sn1 + 3 vn1_vnp6_sn1 <= 4
 CPU_capacity_of_substrate_node_3#1: 3 vn2_vnp1_sn3 + 3 vn3_vnp4_sn3 <= 8
 CPU_capacity_of_substrate_node_4#2: vn1_vnp5_sn4 <= 8
 CPU_capacity_of_substrate_node_5#3: 3 vn3_vnp2_sn5 <= 5
 CPU_capacity_of_substrate_node_7#4: vn2_vnp3_sn7 + 3 vn3_vnp4_sn7 <= 8
 CPU_capacity_of_substrate_node_8#5: 3 vn1_vnp2_sn8 + vn1_vnp3_sn8
                                 + vn1_vnp5_sn8 <= 8
 CPU_capacity_of_substrate_node_10#6: 3 vn1_vnp2_sn10 + vn2_vnp3_sn10
                                 + 3 vn3_vnp5_sn10 <= 8
 CPU_capacity_of_substrate_node_11#7: vn1_vnp3_sn11 + vn3_vnp6_sn11 <= 8
 CPU_capacity_of_substrate_node_12#8: 3 vn2_vnp4_sn12 <= 8
 CPU_capacity_of_substrate_node_13#9: 3 vn3_vnp1_sn13 + vn2_vnp2_sn13
                                 + vn2_vnp3_sn13 <= 8
 CPU_capacity_of_substrate_node_14#10: vn2_vnp2_sn14 + 3 vn2_vnp5_sn14 <= 8
 CPU_capacity_of_substrate_node_15#11: 3 vn2_vnp1_sn15 <= 8
 CPU_capacity_of_substrate_node_16#12: 3 vn3_vnp2_sn16 <= 8
 CPU_capacity_of_substrate_node_17#13: 3 vn2_vnp1_sn17 + 3 vn1_vnp2_sn17
                                 + vn1_vnp3_sn17 <= 8
 CPU_capacity_of_substrate_node_19#14: vn2_vnp6_sn19 <= 8
 CPU_capacity_of_substrate_node_20#15: vn2_vnp2_sn20 + 3 vn3_vnp4_sn20 <= 8
Bounds
 0 <= vnp1 <= 1
 0 <= vn3_vnp1_sn13 <= 1
 0 <= vn1_vnp1_sn11 <= 1
 0 <= vn1_vnp1_sn4 <= 1
 0 <= vn2_vnp1_sn17 <= 1
 0 <= vn2_vnp1_sn3 <= 1
 0 <= vn2_vnp1_sn15 <= 1
 0 <= vnp2 <= 1
 0 <= vn3_vnp2_sn16 <= 1
 0 <= vn1_vnp2_sn8 <= 1
 0 <= vn1_vnp2_sn10 <= 1
 0 <= vn1_vnp2_sn17 <= 1
 0 <= vn3_vnp2_sn5 <= 1
 0 <= vn2_vnp2_sn20 <= 1
 0 <= vn2_vnp2_sn14 <= 1
 0 <= vn2_vnp2_sn13 <= 1
 0 <= vnp3 <= 1
 0 <= vn2_vnp3_sn13 <= 1
 0 <= vn1_vnp3_sn8 <= 1
 0 <= vn1_vnp3_sn11 <= 1
 0 <= vn1_vnp3_sn17 <= 1
 0 <= vn2_vnp3_sn10 <= 1
 0 <= vn2_vnp3_sn7 <= 1
 0 <= vn3_vnp3_sn2 <= 1
 0 <= vn3_vnp3_sn20 <= 1
 0 <= vn3_vnp3_sn6 <= 1
 0 <= vnp4 <= 1
 0 <= vn2_vnp4_sn12 <= 1
 0 <= vn1_vnp4_sn19 <= 1
 0 <= vn3_vnp4_sn7 <= 1
 0 <= vn3_vnp4_sn3 <= 1
 0 <= vn3_vnp4_sn20 <= 1
 0 <= vnp5 <= 1
 0 <= vn3_vnp5_sn10 <= 1
 0 <= vn1_vnp5_sn4 <= 1
 0 <= vn1_vnp5_sn8 <= 1
 0 <= vn4_vnp5_sn19 <= 1
 0 <= vn2_vnp5_sn1 <= 1
 0 <= vn2_vnp5_sn14 <= 1
 0 <= vn4_vnp5_sn15 <= 1
 0 <= vnp6 <= 1
 0 <= vn3_vnp6_sn11 <= 1
 0 <= vn1_vnp6_sn1 <= 1
 0 <= vn2_vnp6_sn19 <= 1
Binaries
 vnp1  vn3_vnp1_sn13  vn1_vnp1_sn11  vn1_vnp1_sn4  vn2_vnp1_sn17  vn2_vnp1_sn3 
 vn2_vnp1_sn15  vnp2  vn3_vnp2_sn16  vn1_vnp2_sn8  vn1_vnp2_sn10 
 vn1_vnp2_sn17  vn3_vnp2_sn5  vn2_vnp2_sn20  vn2_vnp2_sn14  vn2_vnp2_sn13 
 vnp3  vn2_vnp3_sn13  vn1_vnp3_sn8  vn1_vnp3_sn11  vn1_vnp3_sn17 
 vn2_vnp3_sn10  vn2_vnp3_sn7  vn3_vnp3_sn2  vn3_vnp3_sn20  vn3_vnp3_sn6  vnp4 
 vn2_vnp4_sn12  vn1_vnp4_sn19  vn3_vnp4_sn7  vn3_vnp4_sn3  vn3_vnp4_sn20  vnp5 
 vn3_vnp5_sn10  vn1_vnp5_sn4  vn1_vnp5_sn8  vn4_vnp5_sn19  vn2_vnp5_sn1 
 vn2_vnp5_sn14  vn4_vnp5_sn15  vnp6  vn3_vnp6_sn11  vn1_vnp6_sn1 
 vn2_vnp6_sn19 
End
