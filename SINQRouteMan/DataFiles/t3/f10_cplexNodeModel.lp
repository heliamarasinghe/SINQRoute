\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1120 vnp1 + 527 vnp2 + 1200 vnp3 + 930 vnp4
      + [ - 64 vn4_vnp1_sn8 * vn1_vnp1_sn18 - 256 vn4_vnp1_sn8 * vn2_vnp1_sn1
      - 28 vn4_vnp1_sn8 * vn3_vnp1_sn17 - 110 vn4_vnp1_sn8 * vn3_vnp1_sn20
      - 140 vn1_vnp1_sn18 * vn2_vnp1_sn1 - 42 vn1_vnp1_sn18 * vn3_vnp1_sn17
      - 64 vn1_vnp1_sn18 * vn3_vnp1_sn20 - 112 vn2_vnp1_sn1 * vn3_vnp1_sn17
      - 154 vn2_vnp1_sn1 * vn3_vnp1_sn20 - 68 vn3_vnp2_sn4 * vn1_vnp2_sn17
      - 122 vn3_vnp2_sn4 * vn1_vnp2_sn13 - 332 vn3_vnp2_sn4 * vn4_vnp2_sn12
      - 186 vn3_vnp2_sn4 * vn4_vnp2_sn10 - 248 vn3_vnp2_sn4 * vn4_vnp2_sn6
      - 42 vn1_vnp2_sn17 * vn3_vnp2_sn7 - 58 vn1_vnp2_sn17 * vn3_vnp2_sn2
      - 124 vn1_vnp2_sn17 * vn2_vnp2_sn15 - 76 vn1_vnp2_sn17 * vn2_vnp2_sn9
      - 170 vn1_vnp2_sn13 * vn3_vnp2_sn7 - 140 vn1_vnp2_sn13 * vn3_vnp2_sn2
      - 274 vn1_vnp2_sn13 * vn2_vnp2_sn15 - 290 vn1_vnp2_sn13 * vn2_vnp2_sn9
      - 408 vn3_vnp2_sn7 * vn4_vnp2_sn12 - 262 vn3_vnp2_sn7 * vn4_vnp2_sn10
      - 260 vn3_vnp2_sn7 * vn4_vnp2_sn6 - 538 vn3_vnp2_sn2 * vn4_vnp2_sn12
      - 392 vn3_vnp2_sn2 * vn4_vnp2_sn10 - 302 vn3_vnp2_sn2 * vn4_vnp2_sn6
      - 78 vn4_vnp2_sn12 * vn2_vnp2_sn15 - 162 vn4_vnp2_sn12 * vn2_vnp2_sn9
      - 160 vn2_vnp2_sn15 * vn4_vnp2_sn10 - 230 vn2_vnp2_sn15 * vn4_vnp2_sn6
      - 92 vn2_vnp2_sn9 * vn4_vnp2_sn10 - 94 vn2_vnp2_sn9 * vn4_vnp2_sn6
      - 192 vn4_vnp3_sn8 * vn1_vnp3_sn2 - 282 vn4_vnp3_sn8 * vn1_vnp3_sn13
      - 244 vn4_vnp3_sn8 * vn2_vnp3_sn19 - 26 vn4_vnp3_sn8 * vn3_vnp3_sn20
      - 14 vn4_vnp3_sn8 * vn3_vnp3_sn16 - 372 vn1_vnp3_sn2 * vn4_vnp3_sn12
      - 78 vn1_vnp3_sn2 * vn2_vnp3_sn19 - 68 vn1_vnp3_sn2 * vn3_vnp3_sn20
      - 126 vn1_vnp3_sn2 * vn3_vnp3_sn16 - 102 vn1_vnp3_sn13 * vn4_vnp3_sn12
      - 312 vn1_vnp3_sn13 * vn2_vnp3_sn19 - 212 vn1_vnp3_sn13 * vn3_vnp3_sn20
      - 154 vn1_vnp3_sn13 * vn3_vnp3_sn16 - 334 vn4_vnp3_sn12 * vn2_vnp3_sn19
      - 74 vn4_vnp3_sn12 * vn3_vnp3_sn20 - 46 vn4_vnp3_sn12 * vn3_vnp3_sn16
      - 98 vn2_vnp3_sn19 * vn3_vnp3_sn20 - 150 vn2_vnp3_sn19 * vn3_vnp3_sn16
      - 142 vn4_vnp4_sn3 * vn1_vnp4_sn16 - 300 vn4_vnp4_sn3 * vn1_vnp4_sn7
      - 82 vn4_vnp4_sn3 * vn1_vnp4_sn17 - 168 vn4_vnp4_sn3 * vn2_vnp4_sn11
      - 168 vn4_vnp4_sn3 * vn2_vnp4_sn8 - 66 vn4_vnp4_sn3 * vn2_vnp4_sn4
      - 122 vn4_vnp4_sn3 * vn3_vnp4_sn5 - 168 vn4_vnp4_sn3 * vn3_vnp4_sn6
      - 174 vn4_vnp4_sn3 * vn3_vnp4_sn1 - 166 vn1_vnp4_sn16 * vn4_vnp4_sn12
      - 262 vn1_vnp4_sn16 * vn4_vnp4_sn10 - 368 vn1_vnp4_sn16 * vn2_vnp4_sn11
      - 64 vn1_vnp4_sn16 * vn2_vnp4_sn8 - 250 vn1_vnp4_sn16 * vn2_vnp4_sn4
      - 388 vn1_vnp4_sn7 * vn4_vnp4_sn12 - 236 vn1_vnp4_sn7 * vn4_vnp4_sn10
      - 446 vn1_vnp4_sn7 * vn2_vnp4_sn11 - 142 vn1_vnp4_sn7 * vn2_vnp4_sn8
      - 138 vn1_vnp4_sn7 * vn2_vnp4_sn4 - 234 vn1_vnp4_sn17 * vn4_vnp4_sn12
      - 338 vn1_vnp4_sn17 * vn4_vnp4_sn10 - 174 vn1_vnp4_sn17 * vn2_vnp4_sn11
      - 30 vn1_vnp4_sn17 * vn2_vnp4_sn8 - 216 vn1_vnp4_sn17 * vn2_vnp4_sn4
      - 90 vn4_vnp4_sn12 * vn2_vnp4_sn11 - 276 vn4_vnp4_sn12 * vn2_vnp4_sn8
      - 246 vn4_vnp4_sn12 * vn2_vnp4_sn4 - 306 vn4_vnp4_sn12 * vn3_vnp4_sn5
      - 304 vn4_vnp4_sn12 * vn3_vnp4_sn6 - 342 vn4_vnp4_sn12 * vn3_vnp4_sn1
      - 54 vn4_vnp4_sn10 * vn2_vnp4_sn11 - 162 vn4_vnp4_sn10 * vn2_vnp4_sn8
      - 132 vn4_vnp4_sn10 * vn2_vnp4_sn4 - 154 vn4_vnp4_sn10 * vn3_vnp4_sn5
      - 200 vn4_vnp4_sn10 * vn3_vnp4_sn6 - 326 vn4_vnp4_sn10 * vn3_vnp4_sn1
      ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn18 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn1 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn17
                                 + vn3_vnp1_sn20 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn8 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn17
                                 + vn1_vnp2_sn13 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn15
                                 + vn2_vnp2_sn9 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn4 + vn3_vnp2_sn7
                                 + vn3_vnp2_sn2 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#7: - vnp2 + vn4_vnp2_sn12
                                 + vn4_vnp2_sn10 + vn4_vnp2_sn6 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#8: - vnp3 + vn1_vnp3_sn2
                                 + vn1_vnp3_sn13 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#9: - vnp3 + vn2_vnp3_sn19 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#10: - vnp3 + vn3_vnp3_sn20
                                 + vn3_vnp3_sn16 <= 0
 _Embedding_clash_const_of_vnode4_vnp_3#11: - vnp3 + vn4_vnp3_sn8
                                 + vn4_vnp3_sn12 <= 0
 _Embedding_clash_const_of_vnode1_vnp_4#12: - vnp4 + vn1_vnp4_sn16
                                 + vn1_vnp4_sn7 + vn1_vnp4_sn17 <= 0
 _Embedding_clash_const_of_vnode2_vnp_4#13: - vnp4 + vn2_vnp4_sn11
                                 + vn2_vnp4_sn8 + vn2_vnp4_sn4 <= 0
 _Embedding_clash_const_of_vnode3_vnp_4#14: - vnp4 + vn3_vnp4_sn5
                                 + vn3_vnp4_sn6 + vn3_vnp4_sn1 <= 0
 _Embedding_clash_const_of_vnode4_vnp_4#15: - vnp4 + vn4_vnp4_sn3
                                 + vn4_vnp4_sn12 + vn4_vnp4_sn10 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn4_vnp1_sn8 * vn1_vnp1_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn1_vnp1_sn18 * vn2_vnp1_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn2_vnp1_sn1 * vn3_vnp1_sn17
                                 - vn2_vnp1_sn1 * vn3_vnp1_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn4_vnp1_sn8 * vn3_vnp1_sn17
                                 - vn4_vnp1_sn8 * vn3_vnp1_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_5#4: vnp1
                                 + [ - vn1_vnp1_sn18 * vn3_vnp1_sn17
                                 - vn1_vnp1_sn18 * vn3_vnp1_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_6#5: vnp1
                                 + [ - vn4_vnp1_sn8 * vn2_vnp1_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn3_vnp2_sn4 * vn1_vnp2_sn17
                                 - vn3_vnp2_sn4 * vn1_vnp2_sn13
                                 - vn1_vnp2_sn17 * vn3_vnp2_sn7
                                 - vn1_vnp2_sn17 * vn3_vnp2_sn2
                                 - vn1_vnp2_sn13 * vn3_vnp2_sn7
                                 - vn1_vnp2_sn13 * vn3_vnp2_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_8#7: vnp2
                                 + [ - vn4_vnp2_sn12 * vn2_vnp2_sn15
                                 - vn4_vnp2_sn12 * vn2_vnp2_sn9
                                 - vn2_vnp2_sn15 * vn4_vnp2_sn10
                                 - vn2_vnp2_sn15 * vn4_vnp2_sn6
                                 - vn2_vnp2_sn9 * vn4_vnp2_sn10
                                 - vn2_vnp2_sn9 * vn4_vnp2_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_9#8: vnp2
                                 + [ - vn3_vnp2_sn4 * vn4_vnp2_sn12
                                 - vn3_vnp2_sn4 * vn4_vnp2_sn10
                                 - vn3_vnp2_sn4 * vn4_vnp2_sn6
                                 - vn3_vnp2_sn7 * vn4_vnp2_sn12
                                 - vn3_vnp2_sn7 * vn4_vnp2_sn10
                                 - vn3_vnp2_sn7 * vn4_vnp2_sn6
                                 - vn3_vnp2_sn2 * vn4_vnp2_sn12
                                 - vn3_vnp2_sn2 * vn4_vnp2_sn10
                                 - vn3_vnp2_sn2 * vn4_vnp2_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_10#9: vnp2
                                 + [ - vn1_vnp2_sn17 * vn2_vnp2_sn15
                                 - vn1_vnp2_sn17 * vn2_vnp2_sn9
                                 - vn1_vnp2_sn13 * vn2_vnp2_sn15
                                 - vn1_vnp2_sn13 * vn2_vnp2_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_11#10: vnp3
                                 + [ - vn4_vnp3_sn8 * vn1_vnp3_sn2
                                 - vn4_vnp3_sn8 * vn1_vnp3_sn13
                                 - vn1_vnp3_sn2 * vn4_vnp3_sn12
                                 - vn1_vnp3_sn13 * vn4_vnp3_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_12#11: vnp3
                                 + [ - vn1_vnp3_sn2 * vn2_vnp3_sn19
                                 - vn1_vnp3_sn13 * vn2_vnp3_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_13#12: vnp3
                                 + [ - vn4_vnp3_sn8 * vn3_vnp3_sn20
                                 - vn4_vnp3_sn8 * vn3_vnp3_sn16
                                 - vn4_vnp3_sn12 * vn3_vnp3_sn20
                                 - vn4_vnp3_sn12 * vn3_vnp3_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_14#13: vnp3
                                 + [ - vn1_vnp3_sn2 * vn3_vnp3_sn20
                                 - vn1_vnp3_sn2 * vn3_vnp3_sn16
                                 - vn1_vnp3_sn13 * vn3_vnp3_sn20
                                 - vn1_vnp3_sn13 * vn3_vnp3_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_15#14: vnp3
                                 + [ - vn2_vnp3_sn19 * vn3_vnp3_sn20
                                 - vn2_vnp3_sn19 * vn3_vnp3_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_16#15: vnp3
                                 + [ - vn4_vnp3_sn8 * vn2_vnp3_sn19
                                 - vn4_vnp3_sn12 * vn2_vnp3_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_17#16: vnp4
                                 + [ - vn4_vnp4_sn3 * vn1_vnp4_sn16
                                 - vn4_vnp4_sn3 * vn1_vnp4_sn7
                                 - vn4_vnp4_sn3 * vn1_vnp4_sn17
                                 - vn1_vnp4_sn16 * vn4_vnp4_sn12
                                 - vn1_vnp4_sn16 * vn4_vnp4_sn10
                                 - vn1_vnp4_sn7 * vn4_vnp4_sn12
                                 - vn1_vnp4_sn7 * vn4_vnp4_sn10
                                 - vn1_vnp4_sn17 * vn4_vnp4_sn12
                                 - vn1_vnp4_sn17 * vn4_vnp4_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_18#17: vnp4
                                 + [ - vn4_vnp4_sn3 * vn2_vnp4_sn11
                                 - vn4_vnp4_sn3 * vn2_vnp4_sn8
                                 - vn4_vnp4_sn3 * vn2_vnp4_sn4
                                 - vn4_vnp4_sn12 * vn2_vnp4_sn11
                                 - vn4_vnp4_sn12 * vn2_vnp4_sn8
                                 - vn4_vnp4_sn12 * vn2_vnp4_sn4
                                 - vn4_vnp4_sn10 * vn2_vnp4_sn11
                                 - vn4_vnp4_sn10 * vn2_vnp4_sn8
                                 - vn4_vnp4_sn10 * vn2_vnp4_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_19#18: vnp4
                                 + [ - vn4_vnp4_sn3 * vn3_vnp4_sn5
                                 - vn4_vnp4_sn3 * vn3_vnp4_sn6
                                 - vn4_vnp4_sn3 * vn3_vnp4_sn1
                                 - vn4_vnp4_sn12 * vn3_vnp4_sn5
                                 - vn4_vnp4_sn12 * vn3_vnp4_sn6
                                 - vn4_vnp4_sn12 * vn3_vnp4_sn1
                                 - vn4_vnp4_sn10 * vn3_vnp4_sn5
                                 - vn4_vnp4_sn10 * vn3_vnp4_sn6
                                 - vn4_vnp4_sn10 * vn3_vnp4_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_20#19: vnp4
                                 + [ - vn1_vnp4_sn16 * vn2_vnp4_sn11
                                 - vn1_vnp4_sn16 * vn2_vnp4_sn8
                                 - vn1_vnp4_sn16 * vn2_vnp4_sn4
                                 - vn1_vnp4_sn7 * vn2_vnp4_sn11
                                 - vn1_vnp4_sn7 * vn2_vnp4_sn8
                                 - vn1_vnp4_sn7 * vn2_vnp4_sn4
                                 - vn1_vnp4_sn17 * vn2_vnp4_sn11
                                 - vn1_vnp4_sn17 * vn2_vnp4_sn8
                                 - vn1_vnp4_sn17 * vn2_vnp4_sn4 ] <= 0
 q21#20:                         - 1120 vnp1 - 527 vnp2 - 1200 vnp3 - 930 vnp4
                                 + [ 32 vn4_vnp1_sn8 * vn1_vnp1_sn18
                                 + 128 vn4_vnp1_sn8 * vn2_vnp1_sn1
                                 + 14 vn4_vnp1_sn8 * vn3_vnp1_sn17
                                 + 55 vn4_vnp1_sn8 * vn3_vnp1_sn20
                                 + 70 vn1_vnp1_sn18 * vn2_vnp1_sn1
                                 + 21 vn1_vnp1_sn18 * vn3_vnp1_sn17
                                 + 32 vn1_vnp1_sn18 * vn3_vnp1_sn20
                                 + 56 vn2_vnp1_sn1 * vn3_vnp1_sn17
                                 + 77 vn2_vnp1_sn1 * vn3_vnp1_sn20
                                 + 34 vn3_vnp2_sn4 * vn1_vnp2_sn17
                                 + 61 vn3_vnp2_sn4 * vn1_vnp2_sn13
                                 + 166 vn3_vnp2_sn4 * vn4_vnp2_sn12
                                 + 93 vn3_vnp2_sn4 * vn4_vnp2_sn10
                                 + 124 vn3_vnp2_sn4 * vn4_vnp2_sn6
                                 + 21 vn1_vnp2_sn17 * vn3_vnp2_sn7
                                 + 29 vn1_vnp2_sn17 * vn3_vnp2_sn2
                                 + 62 vn1_vnp2_sn17 * vn2_vnp2_sn15
                                 + 38 vn1_vnp2_sn17 * vn2_vnp2_sn9
                                 + 85 vn1_vnp2_sn13 * vn3_vnp2_sn7
                                 + 70 vn1_vnp2_sn13 * vn3_vnp2_sn2
                                 + 137 vn1_vnp2_sn13 * vn2_vnp2_sn15
                                 + 145 vn1_vnp2_sn13 * vn2_vnp2_sn9
                                 + 204 vn3_vnp2_sn7 * vn4_vnp2_sn12
                                 + 131 vn3_vnp2_sn7 * vn4_vnp2_sn10
                                 + 130 vn3_vnp2_sn7 * vn4_vnp2_sn6
                                 + 269 vn3_vnp2_sn2 * vn4_vnp2_sn12
                                 + 196 vn3_vnp2_sn2 * vn4_vnp2_sn10
                                 + 151 vn3_vnp2_sn2 * vn4_vnp2_sn6
                                 + 39 vn4_vnp2_sn12 * vn2_vnp2_sn15
                                 + 81 vn4_vnp2_sn12 * vn2_vnp2_sn9
                                 + 80 vn2_vnp2_sn15 * vn4_vnp2_sn10
                                 + 115 vn2_vnp2_sn15 * vn4_vnp2_sn6
                                 + 46 vn2_vnp2_sn9 * vn4_vnp2_sn10
                                 + 47 vn2_vnp2_sn9 * vn4_vnp2_sn6
                                 + 96 vn4_vnp3_sn8 * vn1_vnp3_sn2
                                 + 141 vn4_vnp3_sn8 * vn1_vnp3_sn13
                                 + 122 vn4_vnp3_sn8 * vn2_vnp3_sn19
                                 + 13 vn4_vnp3_sn8 * vn3_vnp3_sn20
                                 + 7 vn4_vnp3_sn8 * vn3_vnp3_sn16
                                 + 186 vn1_vnp3_sn2 * vn4_vnp3_sn12
                                 + 39 vn1_vnp3_sn2 * vn2_vnp3_sn19
                                 + 34 vn1_vnp3_sn2 * vn3_vnp3_sn20
                                 + 63 vn1_vnp3_sn2 * vn3_vnp3_sn16
                                 + 51 vn1_vnp3_sn13 * vn4_vnp3_sn12
                                 + 156 vn1_vnp3_sn13 * vn2_vnp3_sn19
                                 + 106 vn1_vnp3_sn13 * vn3_vnp3_sn20
                                 + 77 vn1_vnp3_sn13 * vn3_vnp3_sn16
                                 + 167 vn4_vnp3_sn12 * vn2_vnp3_sn19
                                 + 37 vn4_vnp3_sn12 * vn3_vnp3_sn20
                                 + 23 vn4_vnp3_sn12 * vn3_vnp3_sn16
                                 + 49 vn2_vnp3_sn19 * vn3_vnp3_sn20
                                 + 75 vn2_vnp3_sn19 * vn3_vnp3_sn16
                                 + 71 vn4_vnp4_sn3 * vn1_vnp4_sn16
                                 + 150 vn4_vnp4_sn3 * vn1_vnp4_sn7
                                 + 41 vn4_vnp4_sn3 * vn1_vnp4_sn17
                                 + 84 vn4_vnp4_sn3 * vn2_vnp4_sn11
                                 + 84 vn4_vnp4_sn3 * vn2_vnp4_sn8
                                 + 33 vn4_vnp4_sn3 * vn2_vnp4_sn4
                                 + 61 vn4_vnp4_sn3 * vn3_vnp4_sn5
                                 + 84 vn4_vnp4_sn3 * vn3_vnp4_sn6
                                 + 87 vn4_vnp4_sn3 * vn3_vnp4_sn1
                                 + 83 vn1_vnp4_sn16 * vn4_vnp4_sn12
                                 + 131 vn1_vnp4_sn16 * vn4_vnp4_sn10
                                 + 184 vn1_vnp4_sn16 * vn2_vnp4_sn11
                                 + 32 vn1_vnp4_sn16 * vn2_vnp4_sn8
                                 + 125 vn1_vnp4_sn16 * vn2_vnp4_sn4
                                 + 194 vn1_vnp4_sn7 * vn4_vnp4_sn12
                                 + 118 vn1_vnp4_sn7 * vn4_vnp4_sn10
                                 + 223 vn1_vnp4_sn7 * vn2_vnp4_sn11
                                 + 71 vn1_vnp4_sn7 * vn2_vnp4_sn8
                                 + 69 vn1_vnp4_sn7 * vn2_vnp4_sn4
                                 + 117 vn1_vnp4_sn17 * vn4_vnp4_sn12
                                 + 169 vn1_vnp4_sn17 * vn4_vnp4_sn10
                                 + 87 vn1_vnp4_sn17 * vn2_vnp4_sn11
                                 + 15 vn1_vnp4_sn17 * vn2_vnp4_sn8
                                 + 108 vn1_vnp4_sn17 * vn2_vnp4_sn4
                                 + 45 vn4_vnp4_sn12 * vn2_vnp4_sn11
                                 + 138 vn4_vnp4_sn12 * vn2_vnp4_sn8
                                 + 123 vn4_vnp4_sn12 * vn2_vnp4_sn4
                                 + 153 vn4_vnp4_sn12 * vn3_vnp4_sn5
                                 + 152 vn4_vnp4_sn12 * vn3_vnp4_sn6
                                 + 171 vn4_vnp4_sn12 * vn3_vnp4_sn1
                                 + 27 vn4_vnp4_sn10 * vn2_vnp4_sn11
                                 + 81 vn4_vnp4_sn10 * vn2_vnp4_sn8
                                 + 66 vn4_vnp4_sn10 * vn2_vnp4_sn4
                                 + 77 vn4_vnp4_sn10 * vn3_vnp4_sn5
                                 + 100 vn4_vnp4_sn10 * vn3_vnp4_sn6
                                 + 163 vn4_vnp4_sn10 * vn3_vnp4_sn1 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: 3 vn2_vnp1_sn1 + 3 vn3_vnp4_sn1 <= 6
 CPU_capacity_of_substrate_node_2#1: 3 vn3_vnp2_sn2 <= 1
 CPU_capacity_of_substrate_node_4#2: 3 vn3_vnp2_sn4 + 3 vn2_vnp4_sn4 <= 4
 CPU_capacity_of_substrate_node_5#3: 3 vn3_vnp4_sn5 <= 5
 CPU_capacity_of_substrate_node_6#4: 3 vn4_vnp2_sn6 + 3 vn3_vnp4_sn6 <= 7
 CPU_capacity_of_substrate_node_7#5: 3 vn3_vnp2_sn7 + vn1_vnp4_sn7 <= 8
 CPU_capacity_of_substrate_node_8#6: 3 vn4_vnp1_sn8 + 3 vn2_vnp4_sn8 <= 4
 CPU_capacity_of_substrate_node_9#7: 3 vn2_vnp2_sn9 <= 5
 CPU_capacity_of_substrate_node_10#8: 3 vn4_vnp2_sn10 <= 1
 CPU_capacity_of_substrate_node_11#9: 3 vn2_vnp4_sn11 <= 7
 CPU_capacity_of_substrate_node_12#10: 3 vn4_vnp2_sn12 <= 5
 CPU_capacity_of_substrate_node_13#11: 3 vn1_vnp2_sn13 <= 5
 CPU_capacity_of_substrate_node_15#12: 3 vn2_vnp2_sn15 <= 2
 CPU_capacity_of_substrate_node_16#13: vn3_vnp3_sn16 + vn1_vnp4_sn16 <= 1
 CPU_capacity_of_substrate_node_17#14: vn3_vnp1_sn17 + 3 vn1_vnp2_sn17
                                 + vn1_vnp4_sn17 <= 4
 CPU_capacity_of_substrate_node_18#15: 3 vn1_vnp1_sn18 <= 8
 CPU_capacity_of_substrate_node_19#16: 3 vn2_vnp3_sn19 <= 5
 CPU_capacity_of_substrate_node_20#17: vn3_vnp1_sn20 + vn3_vnp3_sn20 <= 1
Bounds
 0 <= vnp1 <= 1
 0 <= vn4_vnp1_sn8 <= 1
 0 <= vn1_vnp1_sn18 <= 1
 0 <= vn2_vnp1_sn1 <= 1
 0 <= vn3_vnp1_sn17 <= 1
 0 <= vn3_vnp1_sn20 <= 1
 0 <= vnp2 <= 1
 0 <= vn3_vnp2_sn4 <= 1
 0 <= vn1_vnp2_sn17 <= 1
 0 <= vn1_vnp2_sn13 <= 1
 0 <= vn3_vnp2_sn7 <= 1
 0 <= vn3_vnp2_sn2 <= 1
 0 <= vn4_vnp2_sn12 <= 1
 0 <= vn2_vnp2_sn15 <= 1
 0 <= vn2_vnp2_sn9 <= 1
 0 <= vn4_vnp2_sn10 <= 1
 0 <= vn4_vnp2_sn6 <= 1
 0 <= vnp3 <= 1
 0 <= vn4_vnp3_sn8 <= 1
 0 <= vn1_vnp3_sn2 <= 1
 0 <= vn1_vnp3_sn13 <= 1
 0 <= vn4_vnp3_sn12 <= 1
 0 <= vn2_vnp3_sn19 <= 1
 0 <= vn3_vnp3_sn20 <= 1
 0 <= vn3_vnp3_sn16 <= 1
 0 <= vnp4 <= 1
 0 <= vn4_vnp4_sn3 <= 1
 0 <= vn1_vnp4_sn16 <= 1
 0 <= vn1_vnp4_sn7 <= 1
 0 <= vn1_vnp4_sn17 <= 1
 0 <= vn4_vnp4_sn12 <= 1
 0 <= vn4_vnp4_sn10 <= 1
 0 <= vn2_vnp4_sn11 <= 1
 0 <= vn2_vnp4_sn8 <= 1
 0 <= vn2_vnp4_sn4 <= 1
 0 <= vn3_vnp4_sn5 <= 1
 0 <= vn3_vnp4_sn6 <= 1
 0 <= vn3_vnp4_sn1 <= 1
Binaries
 vnp1  vn4_vnp1_sn8  vn1_vnp1_sn18  vn2_vnp1_sn1  vn3_vnp1_sn17  vn3_vnp1_sn20 
 vnp2  vn3_vnp2_sn4  vn1_vnp2_sn17  vn1_vnp2_sn13  vn3_vnp2_sn7  vn3_vnp2_sn2 
 vn4_vnp2_sn12  vn2_vnp2_sn15  vn2_vnp2_sn9  vn4_vnp2_sn10  vn4_vnp2_sn6  vnp3 
 vn4_vnp3_sn8  vn1_vnp3_sn2  vn1_vnp3_sn13  vn4_vnp3_sn12  vn2_vnp3_sn19 
 vn3_vnp3_sn20  vn3_vnp3_sn16  vnp4  vn4_vnp4_sn3  vn1_vnp4_sn16  vn1_vnp4_sn7 
 vn1_vnp4_sn17  vn4_vnp4_sn12  vn4_vnp4_sn10  vn2_vnp4_sn11  vn2_vnp4_sn8 
 vn2_vnp4_sn4  vn3_vnp4_sn5  vn3_vnp4_sn6  vn3_vnp4_sn1 
End
