\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1273 vnp1 + 955 vnp2 + 1267 vnp3 + 1131 vnp4
      + [ - 56 vn2_vnp1_sn14 * vn1_vnp1_sn9 - 306 vn2_vnp1_sn14 * vn4_vnp1_sn18
      - 258 vn2_vnp1_sn14 * vn4_vnp1_sn8 - 210 vn2_vnp1_sn14 * vn4_vnp1_sn2
      - 96 vn2_vnp1_sn14 * vn3_vnp1_sn6 - 64 vn2_vnp1_sn14 * vn3_vnp1_sn15
      - 88 vn2_vnp1_sn14 * vn3_vnp1_sn3 - 138 vn1_vnp1_sn9 * vn4_vnp1_sn18
      - 90 vn1_vnp1_sn9 * vn4_vnp1_sn8 - 126 vn1_vnp1_sn9 * vn4_vnp1_sn2
      - 106 vn1_vnp1_sn9 * vn3_vnp1_sn6 - 212 vn1_vnp1_sn9 * vn3_vnp1_sn15
      - 134 vn1_vnp1_sn9 * vn3_vnp1_sn3 - 204 vn4_vnp1_sn18 * vn3_vnp1_sn6
      - 234 vn4_vnp1_sn18 * vn3_vnp1_sn15 - 258 vn4_vnp1_sn18 * vn3_vnp1_sn3
      - 156 vn4_vnp1_sn8 * vn3_vnp1_sn6 - 180 vn4_vnp1_sn8 * vn3_vnp1_sn15
      - 222 vn4_vnp1_sn8 * vn3_vnp1_sn3 - 120 vn4_vnp1_sn2 * vn3_vnp1_sn6
      - 276 vn4_vnp1_sn2 * vn3_vnp1_sn15 - 54 vn4_vnp1_sn2 * vn3_vnp1_sn3
      - 80 vn4_vnp2_sn7 * vn1_vnp2_sn2 - 104 vn4_vnp2_sn7 * vn1_vnp2_sn17
      - 72 vn4_vnp2_sn7 * vn1_vnp2_sn5 - 148 vn4_vnp2_sn7 * vn3_vnp2_sn1
      - 190 vn4_vnp2_sn7 * vn3_vnp2_sn19 - 82 vn1_vnp2_sn2 * vn4_vnp2_sn14
      - 72 vn1_vnp2_sn2 * vn2_vnp2_sn4 - 56 vn1_vnp2_sn2 * vn3_vnp2_sn1
      - 170 vn1_vnp2_sn2 * vn3_vnp2_sn19 - 84 vn1_vnp2_sn17 * vn4_vnp2_sn14
      - 144 vn1_vnp2_sn17 * vn2_vnp2_sn4 - 214 vn1_vnp2_sn17 * vn3_vnp2_sn1
      - 136 vn1_vnp2_sn17 * vn3_vnp2_sn19 - 62 vn1_vnp2_sn5 * vn4_vnp2_sn14
      - 78 vn1_vnp2_sn5 * vn2_vnp2_sn4 - 116 vn1_vnp2_sn5 * vn3_vnp2_sn1
      - 230 vn1_vnp2_sn5 * vn3_vnp2_sn19 - 328 vn4_vnp2_sn14 * vn3_vnp2_sn1
      - 250 vn4_vnp2_sn14 * vn3_vnp2_sn19 - 84 vn2_vnp2_sn4 * vn3_vnp2_sn1
      - 262 vn2_vnp2_sn4 * vn3_vnp2_sn19 - 88 vn3_vnp3_sn5 * vn1_vnp3_sn8
      - 128 vn3_vnp3_sn5 * vn1_vnp3_sn20 - 26 vn3_vnp3_sn5 * vn4_vnp3_sn9
      - 78 vn3_vnp3_sn5 * vn4_vnp3_sn4 - 86 vn3_vnp3_sn5 * vn4_vnp3_sn7
      - 118 vn1_vnp3_sn8 * vn3_vnp3_sn10 - 138 vn1_vnp3_sn8 * vn3_vnp3_sn15
      - 316 vn1_vnp3_sn8 * vn2_vnp3_sn14 - 204 vn1_vnp3_sn8 * vn2_vnp3_sn3
      - 94 vn1_vnp3_sn8 * vn4_vnp3_sn9 - 166 vn1_vnp3_sn8 * vn4_vnp3_sn4
      - 70 vn1_vnp3_sn8 * vn4_vnp3_sn7 - 118 vn1_vnp3_sn20 * vn3_vnp3_sn10
      - 70 vn1_vnp3_sn20 * vn3_vnp3_sn15 - 180 vn1_vnp3_sn20 * vn2_vnp3_sn14
      - 276 vn1_vnp3_sn20 * vn2_vnp3_sn3 - 390 vn1_vnp3_sn20 * vn4_vnp3_sn9
      - 230 vn1_vnp3_sn20 * vn4_vnp3_sn4 - 182 vn1_vnp3_sn20 * vn4_vnp3_sn7
      - 56 vn3_vnp3_sn10 * vn4_vnp3_sn9 - 104 vn3_vnp3_sn10 * vn4_vnp3_sn4
      - 108 vn3_vnp3_sn10 * vn4_vnp3_sn7 - 112 vn3_vnp3_sn15 * vn4_vnp3_sn9
      - 236 vn3_vnp3_sn15 * vn4_vnp3_sn4 - 188 vn3_vnp3_sn15 * vn4_vnp3_sn7
      - 110 vn2_vnp3_sn14 * vn4_vnp3_sn9 - 206 vn2_vnp3_sn14 * vn4_vnp3_sn4
      - 230 vn2_vnp3_sn14 * vn4_vnp3_sn7 - 110 vn2_vnp3_sn3 * vn4_vnp3_sn9
      - 102 vn2_vnp3_sn3 * vn4_vnp3_sn4 - 214 vn2_vnp3_sn3 * vn4_vnp3_sn7
      - 74 vn3_vnp4_sn10 * vn1_vnp4_sn6 - 78 vn3_vnp4_sn10 * vn1_vnp4_sn2
      - 214 vn3_vnp4_sn10 * vn2_vnp4_sn8 - 100 vn3_vnp4_sn10 * vn2_vnp4_sn5
      - 248 vn3_vnp4_sn10 * vn2_vnp4_sn4 - 96 vn3_vnp4_sn10 * vn4_vnp4_sn12
      - 108 vn1_vnp4_sn6 * vn3_vnp4_sn20 - 124 vn1_vnp4_sn6 * vn2_vnp4_sn8
      - 48 vn1_vnp4_sn6 * vn2_vnp4_sn5 - 138 vn1_vnp4_sn6 * vn2_vnp4_sn4
      - 76 vn1_vnp4_sn6 * vn4_vnp4_sn12 - 86 vn1_vnp4_sn2 * vn3_vnp4_sn20
      - 146 vn1_vnp4_sn2 * vn2_vnp4_sn8 - 62 vn1_vnp4_sn2 * vn2_vnp4_sn5
      - 104 vn1_vnp4_sn2 * vn2_vnp4_sn4 - 88 vn1_vnp4_sn2 * vn4_vnp4_sn12
      - 326 vn3_vnp4_sn20 * vn2_vnp4_sn8 - 302 vn3_vnp4_sn20 * vn2_vnp4_sn5
      - 490 vn3_vnp4_sn20 * vn2_vnp4_sn4 - 110 vn3_vnp4_sn20 * vn4_vnp4_sn12
      - 420 vn2_vnp4_sn8 * vn4_vnp4_sn12 - 166 vn2_vnp4_sn5 * vn4_vnp4_sn12
      - 314 vn2_vnp4_sn4 * vn4_vnp4_sn12 ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn9 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn14 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn6
                                 + vn3_vnp1_sn15 + vn3_vnp1_sn3 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn18
                                 + vn4_vnp1_sn8 + vn4_vnp1_sn2 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn2
                                 + vn1_vnp2_sn17 + vn1_vnp2_sn5 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn4 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn1
                                 + vn3_vnp2_sn19 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#7: - vnp2 + vn4_vnp2_sn7
                                 + vn4_vnp2_sn14 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#8: - vnp3 + vn1_vnp3_sn8
                                 + vn1_vnp3_sn20 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#9: - vnp3 + vn2_vnp3_sn14
                                 + vn2_vnp3_sn3 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#10: - vnp3 + vn3_vnp3_sn5
                                 + vn3_vnp3_sn10 + vn3_vnp3_sn15 <= 0
 _Embedding_clash_const_of_vnode4_vnp_3#11: - vnp3 + vn4_vnp3_sn9
                                 + vn4_vnp3_sn4 + vn4_vnp3_sn7 <= 0
 _Embedding_clash_const_of_vnode1_vnp_4#12: - vnp4 + vn1_vnp4_sn6
                                 + vn1_vnp4_sn2 <= 0
 _Embedding_clash_const_of_vnode2_vnp_4#13: - vnp4 + vn2_vnp4_sn8
                                 + vn2_vnp4_sn5 + vn2_vnp4_sn4 <= 0
 _Embedding_clash_const_of_vnode3_vnp_4#14: - vnp4 + vn3_vnp4_sn10
                                 + vn3_vnp4_sn20 <= 0
 _Embedding_clash_const_of_vnode4_vnp_4#15: - vnp4 + vn4_vnp4_sn12 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn2_vnp1_sn14 * vn1_vnp1_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn2_vnp1_sn14 * vn4_vnp1_sn18
                                 - vn2_vnp1_sn14 * vn4_vnp1_sn8
                                 - vn2_vnp1_sn14 * vn4_vnp1_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn1_vnp1_sn9 * vn3_vnp1_sn6
                                 - vn1_vnp1_sn9 * vn3_vnp1_sn15
                                 - vn1_vnp1_sn9 * vn3_vnp1_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn1_vnp1_sn9 * vn4_vnp1_sn18
                                 - vn1_vnp1_sn9 * vn4_vnp1_sn8
                                 - vn1_vnp1_sn9 * vn4_vnp1_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_5#4: vnp1
                                 + [ - vn2_vnp1_sn14 * vn3_vnp1_sn6
                                 - vn2_vnp1_sn14 * vn3_vnp1_sn15
                                 - vn2_vnp1_sn14 * vn3_vnp1_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_6#5: vnp1
                                 + [ - vn4_vnp1_sn18 * vn3_vnp1_sn6
                                 - vn4_vnp1_sn18 * vn3_vnp1_sn15
                                 - vn4_vnp1_sn18 * vn3_vnp1_sn3
                                 - vn4_vnp1_sn8 * vn3_vnp1_sn6
                                 - vn4_vnp1_sn8 * vn3_vnp1_sn15
                                 - vn4_vnp1_sn8 * vn3_vnp1_sn3
                                 - vn4_vnp1_sn2 * vn3_vnp1_sn6
                                 - vn4_vnp1_sn2 * vn3_vnp1_sn15
                                 - vn4_vnp1_sn2 * vn3_vnp1_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn4_vnp2_sn7 * vn1_vnp2_sn2
                                 - vn4_vnp2_sn7 * vn1_vnp2_sn17
                                 - vn4_vnp2_sn7 * vn1_vnp2_sn5
                                 - vn1_vnp2_sn2 * vn4_vnp2_sn14
                                 - vn1_vnp2_sn17 * vn4_vnp2_sn14
                                 - vn1_vnp2_sn5 * vn4_vnp2_sn14 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_8#7: vnp2
                                 + [ - vn1_vnp2_sn2 * vn2_vnp2_sn4
                                 - vn1_vnp2_sn17 * vn2_vnp2_sn4
                                 - vn1_vnp2_sn5 * vn2_vnp2_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_9#8: vnp2
                                 + [ - vn1_vnp2_sn2 * vn3_vnp2_sn1
                                 - vn1_vnp2_sn2 * vn3_vnp2_sn19
                                 - vn1_vnp2_sn17 * vn3_vnp2_sn1
                                 - vn1_vnp2_sn17 * vn3_vnp2_sn19
                                 - vn1_vnp2_sn5 * vn3_vnp2_sn1
                                 - vn1_vnp2_sn5 * vn3_vnp2_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_10#9: vnp2
                                 + [ - vn2_vnp2_sn4 * vn3_vnp2_sn1
                                 - vn2_vnp2_sn4 * vn3_vnp2_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_11#10: vnp2
                                 + [ - vn4_vnp2_sn7 * vn3_vnp2_sn1
                                 - vn4_vnp2_sn7 * vn3_vnp2_sn19
                                 - vn4_vnp2_sn14 * vn3_vnp2_sn1
                                 - vn4_vnp2_sn14 * vn3_vnp2_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_12#11: vnp3
                                 + [ - vn3_vnp3_sn5 * vn1_vnp3_sn8
                                 - vn3_vnp3_sn5 * vn1_vnp3_sn20
                                 - vn1_vnp3_sn8 * vn3_vnp3_sn10
                                 - vn1_vnp3_sn8 * vn3_vnp3_sn15
                                 - vn1_vnp3_sn20 * vn3_vnp3_sn10
                                 - vn1_vnp3_sn20 * vn3_vnp3_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_13#12: vnp3
                                 + [ - vn1_vnp3_sn8 * vn2_vnp3_sn14
                                 - vn1_vnp3_sn8 * vn2_vnp3_sn3
                                 - vn1_vnp3_sn20 * vn2_vnp3_sn14
                                 - vn1_vnp3_sn20 * vn2_vnp3_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_14#13: vnp3
                                 + [ - vn3_vnp3_sn5 * vn4_vnp3_sn9
                                 - vn3_vnp3_sn5 * vn4_vnp3_sn4
                                 - vn3_vnp3_sn5 * vn4_vnp3_sn7
                                 - vn3_vnp3_sn10 * vn4_vnp3_sn9
                                 - vn3_vnp3_sn10 * vn4_vnp3_sn4
                                 - vn3_vnp3_sn10 * vn4_vnp3_sn7
                                 - vn3_vnp3_sn15 * vn4_vnp3_sn9
                                 - vn3_vnp3_sn15 * vn4_vnp3_sn4
                                 - vn3_vnp3_sn15 * vn4_vnp3_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_15#14: vnp3
                                 + [ - vn2_vnp3_sn14 * vn4_vnp3_sn9
                                 - vn2_vnp3_sn14 * vn4_vnp3_sn4
                                 - vn2_vnp3_sn14 * vn4_vnp3_sn7
                                 - vn2_vnp3_sn3 * vn4_vnp3_sn9
                                 - vn2_vnp3_sn3 * vn4_vnp3_sn4
                                 - vn2_vnp3_sn3 * vn4_vnp3_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_16#15: vnp3
                                 + [ - vn1_vnp3_sn8 * vn4_vnp3_sn9
                                 - vn1_vnp3_sn8 * vn4_vnp3_sn4
                                 - vn1_vnp3_sn8 * vn4_vnp3_sn7
                                 - vn1_vnp3_sn20 * vn4_vnp3_sn9
                                 - vn1_vnp3_sn20 * vn4_vnp3_sn4
                                 - vn1_vnp3_sn20 * vn4_vnp3_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_17#16: vnp4
                                 + [ - vn3_vnp4_sn10 * vn1_vnp4_sn6
                                 - vn3_vnp4_sn10 * vn1_vnp4_sn2
                                 - vn1_vnp4_sn6 * vn3_vnp4_sn20
                                 - vn1_vnp4_sn2 * vn3_vnp4_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_18#17: vnp4
                                 + [ - vn1_vnp4_sn6 * vn2_vnp4_sn8
                                 - vn1_vnp4_sn6 * vn2_vnp4_sn5
                                 - vn1_vnp4_sn6 * vn2_vnp4_sn4
                                 - vn1_vnp4_sn2 * vn2_vnp4_sn8
                                 - vn1_vnp4_sn2 * vn2_vnp4_sn5
                                 - vn1_vnp4_sn2 * vn2_vnp4_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_19#18: vnp4
                                 + [ - vn3_vnp4_sn10 * vn2_vnp4_sn8
                                 - vn3_vnp4_sn10 * vn2_vnp4_sn5
                                 - vn3_vnp4_sn10 * vn2_vnp4_sn4
                                 - vn3_vnp4_sn20 * vn2_vnp4_sn8
                                 - vn3_vnp4_sn20 * vn2_vnp4_sn5
                                 - vn3_vnp4_sn20 * vn2_vnp4_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_20#19: vnp4
                                 + [ - vn2_vnp4_sn8 * vn4_vnp4_sn12
                                 - vn2_vnp4_sn5 * vn4_vnp4_sn12
                                 - vn2_vnp4_sn4 * vn4_vnp4_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_21#20: vnp4
                                 + [ - vn3_vnp4_sn10 * vn4_vnp4_sn12
                                 - vn3_vnp4_sn20 * vn4_vnp4_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_22#21: vnp4
                                 + [ - vn1_vnp4_sn6 * vn4_vnp4_sn12
                                 - vn1_vnp4_sn2 * vn4_vnp4_sn12 ] <= 0
 q23#22:                         - 1273 vnp1 - 955 vnp2 - 1267 vnp3 - 1131 vnp4
                                 + [ 28 vn2_vnp1_sn14 * vn1_vnp1_sn9
                                 + 153 vn2_vnp1_sn14 * vn4_vnp1_sn18
                                 + 129 vn2_vnp1_sn14 * vn4_vnp1_sn8
                                 + 105 vn2_vnp1_sn14 * vn4_vnp1_sn2
                                 + 48 vn2_vnp1_sn14 * vn3_vnp1_sn6
                                 + 32 vn2_vnp1_sn14 * vn3_vnp1_sn15
                                 + 44 vn2_vnp1_sn14 * vn3_vnp1_sn3
                                 + 69 vn1_vnp1_sn9 * vn4_vnp1_sn18
                                 + 45 vn1_vnp1_sn9 * vn4_vnp1_sn8
                                 + 63 vn1_vnp1_sn9 * vn4_vnp1_sn2
                                 + 53 vn1_vnp1_sn9 * vn3_vnp1_sn6
                                 + 106 vn1_vnp1_sn9 * vn3_vnp1_sn15
                                 + 67 vn1_vnp1_sn9 * vn3_vnp1_sn3
                                 + 102 vn4_vnp1_sn18 * vn3_vnp1_sn6
                                 + 117 vn4_vnp1_sn18 * vn3_vnp1_sn15
                                 + 129 vn4_vnp1_sn18 * vn3_vnp1_sn3
                                 + 78 vn4_vnp1_sn8 * vn3_vnp1_sn6
                                 + 90 vn4_vnp1_sn8 * vn3_vnp1_sn15
                                 + 111 vn4_vnp1_sn8 * vn3_vnp1_sn3
                                 + 60 vn4_vnp1_sn2 * vn3_vnp1_sn6
                                 + 138 vn4_vnp1_sn2 * vn3_vnp1_sn15
                                 + 27 vn4_vnp1_sn2 * vn3_vnp1_sn3
                                 + 40 vn4_vnp2_sn7 * vn1_vnp2_sn2
                                 + 52 vn4_vnp2_sn7 * vn1_vnp2_sn17
                                 + 36 vn4_vnp2_sn7 * vn1_vnp2_sn5
                                 + 74 vn4_vnp2_sn7 * vn3_vnp2_sn1
                                 + 95 vn4_vnp2_sn7 * vn3_vnp2_sn19
                                 + 41 vn1_vnp2_sn2 * vn4_vnp2_sn14
                                 + 36 vn1_vnp2_sn2 * vn2_vnp2_sn4
                                 + 28 vn1_vnp2_sn2 * vn3_vnp2_sn1
                                 + 85 vn1_vnp2_sn2 * vn3_vnp2_sn19
                                 + 42 vn1_vnp2_sn17 * vn4_vnp2_sn14
                                 + 72 vn1_vnp2_sn17 * vn2_vnp2_sn4
                                 + 107 vn1_vnp2_sn17 * vn3_vnp2_sn1
                                 + 68 vn1_vnp2_sn17 * vn3_vnp2_sn19
                                 + 31 vn1_vnp2_sn5 * vn4_vnp2_sn14
                                 + 39 vn1_vnp2_sn5 * vn2_vnp2_sn4
                                 + 58 vn1_vnp2_sn5 * vn3_vnp2_sn1
                                 + 115 vn1_vnp2_sn5 * vn3_vnp2_sn19
                                 + 164 vn4_vnp2_sn14 * vn3_vnp2_sn1
                                 + 125 vn4_vnp2_sn14 * vn3_vnp2_sn19
                                 + 42 vn2_vnp2_sn4 * vn3_vnp2_sn1
                                 + 131 vn2_vnp2_sn4 * vn3_vnp2_sn19
                                 + 44 vn3_vnp3_sn5 * vn1_vnp3_sn8
                                 + 64 vn3_vnp3_sn5 * vn1_vnp3_sn20
                                 + 13 vn3_vnp3_sn5 * vn4_vnp3_sn9
                                 + 39 vn3_vnp3_sn5 * vn4_vnp3_sn4
                                 + 43 vn3_vnp3_sn5 * vn4_vnp3_sn7
                                 + 59 vn1_vnp3_sn8 * vn3_vnp3_sn10
                                 + 69 vn1_vnp3_sn8 * vn3_vnp3_sn15
                                 + 158 vn1_vnp3_sn8 * vn2_vnp3_sn14
                                 + 102 vn1_vnp3_sn8 * vn2_vnp3_sn3
                                 + 47 vn1_vnp3_sn8 * vn4_vnp3_sn9
                                 + 83 vn1_vnp3_sn8 * vn4_vnp3_sn4
                                 + 35 vn1_vnp3_sn8 * vn4_vnp3_sn7
                                 + 59 vn1_vnp3_sn20 * vn3_vnp3_sn10
                                 + 35 vn1_vnp3_sn20 * vn3_vnp3_sn15
                                 + 90 vn1_vnp3_sn20 * vn2_vnp3_sn14
                                 + 138 vn1_vnp3_sn20 * vn2_vnp3_sn3
                                 + 195 vn1_vnp3_sn20 * vn4_vnp3_sn9
                                 + 115 vn1_vnp3_sn20 * vn4_vnp3_sn4
                                 + 91 vn1_vnp3_sn20 * vn4_vnp3_sn7
                                 + 28 vn3_vnp3_sn10 * vn4_vnp3_sn9
                                 + 52 vn3_vnp3_sn10 * vn4_vnp3_sn4
                                 + 54 vn3_vnp3_sn10 * vn4_vnp3_sn7
                                 + 56 vn3_vnp3_sn15 * vn4_vnp3_sn9
                                 + 118 vn3_vnp3_sn15 * vn4_vnp3_sn4
                                 + 94 vn3_vnp3_sn15 * vn4_vnp3_sn7
                                 + 55 vn2_vnp3_sn14 * vn4_vnp3_sn9
                                 + 103 vn2_vnp3_sn14 * vn4_vnp3_sn4
                                 + 115 vn2_vnp3_sn14 * vn4_vnp3_sn7
                                 + 55 vn2_vnp3_sn3 * vn4_vnp3_sn9
                                 + 51 vn2_vnp3_sn3 * vn4_vnp3_sn4
                                 + 107 vn2_vnp3_sn3 * vn4_vnp3_sn7
                                 + 37 vn3_vnp4_sn10 * vn1_vnp4_sn6
                                 + 39 vn3_vnp4_sn10 * vn1_vnp4_sn2
                                 + 107 vn3_vnp4_sn10 * vn2_vnp4_sn8
                                 + 50 vn3_vnp4_sn10 * vn2_vnp4_sn5
                                 + 124 vn3_vnp4_sn10 * vn2_vnp4_sn4
                                 + 48 vn3_vnp4_sn10 * vn4_vnp4_sn12
                                 + 54 vn1_vnp4_sn6 * vn3_vnp4_sn20
                                 + 62 vn1_vnp4_sn6 * vn2_vnp4_sn8
                                 + 24 vn1_vnp4_sn6 * vn2_vnp4_sn5
                                 + 69 vn1_vnp4_sn6 * vn2_vnp4_sn4
                                 + 38 vn1_vnp4_sn6 * vn4_vnp4_sn12
                                 + 43 vn1_vnp4_sn2 * vn3_vnp4_sn20
                                 + 73 vn1_vnp4_sn2 * vn2_vnp4_sn8
                                 + 31 vn1_vnp4_sn2 * vn2_vnp4_sn5
                                 + 52 vn1_vnp4_sn2 * vn2_vnp4_sn4
                                 + 44 vn1_vnp4_sn2 * vn4_vnp4_sn12
                                 + 163 vn3_vnp4_sn20 * vn2_vnp4_sn8
                                 + 151 vn3_vnp4_sn20 * vn2_vnp4_sn5
                                 + 245 vn3_vnp4_sn20 * vn2_vnp4_sn4
                                 + 55 vn3_vnp4_sn20 * vn4_vnp4_sn12
                                 + 210 vn2_vnp4_sn8 * vn4_vnp4_sn12
                                 + 83 vn2_vnp4_sn5 * vn4_vnp4_sn12
                                 + 157 vn2_vnp4_sn4 * vn4_vnp4_sn12 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: 3 vn3_vnp2_sn1 <= 5
 CPU_capacity_of_substrate_node_2#1: 3 vn4_vnp1_sn2 + vn1_vnp2_sn2
                                 + 3 vn1_vnp4_sn2 <= 5
 CPU_capacity_of_substrate_node_3#2: 3 vn3_vnp1_sn3 + vn2_vnp3_sn3 <= 1
 CPU_capacity_of_substrate_node_4#3: vn2_vnp2_sn4 + 3 vn2_vnp4_sn4 <= 1
 CPU_capacity_of_substrate_node_5#4: vn1_vnp2_sn5 + 3 vn3_vnp3_sn5
                                 + 3 vn2_vnp4_sn5 <= 8
 CPU_capacity_of_substrate_node_6#5: 3 vn3_vnp1_sn6 + 3 vn1_vnp4_sn6 <= 8
 CPU_capacity_of_substrate_node_7#6: 3 vn4_vnp2_sn7 <= 2
 CPU_capacity_of_substrate_node_8#7: 3 vn4_vnp1_sn8 + 3 vn1_vnp3_sn8
                                 + 3 vn2_vnp4_sn8 <= 2
 CPU_capacity_of_substrate_node_9#8: 3 vn1_vnp1_sn9 <= 8
 CPU_capacity_of_substrate_node_10#9: 3 vn3_vnp3_sn10 + 3 vn3_vnp4_sn10 <= 4
 CPU_capacity_of_substrate_node_14#10: 3 vn2_vnp1_sn14 + 3 vn4_vnp2_sn14
                                 + vn2_vnp3_sn14 <= 1
 CPU_capacity_of_substrate_node_15#11: 3 vn3_vnp1_sn15 + 3 vn3_vnp3_sn15 <= 5
 CPU_capacity_of_substrate_node_17#12: vn1_vnp2_sn17 <= 1
 CPU_capacity_of_substrate_node_18#13: 3 vn4_vnp1_sn18 <= 7
 CPU_capacity_of_substrate_node_19#14: 3 vn3_vnp2_sn19 <= 2
 CPU_capacity_of_substrate_node_20#15: 3 vn1_vnp3_sn20 + 3 vn3_vnp4_sn20 <= 3
Bounds
 0 <= vnp1 <= 1
 0 <= vn2_vnp1_sn14 <= 1
 0 <= vn1_vnp1_sn9 <= 1
 0 <= vn4_vnp1_sn18 <= 1
 0 <= vn4_vnp1_sn8 <= 1
 0 <= vn4_vnp1_sn2 <= 1
 0 <= vn3_vnp1_sn6 <= 1
 0 <= vn3_vnp1_sn15 <= 1
 0 <= vn3_vnp1_sn3 <= 1
 0 <= vnp2 <= 1
 0 <= vn4_vnp2_sn7 <= 1
 0 <= vn1_vnp2_sn2 <= 1
 0 <= vn1_vnp2_sn17 <= 1
 0 <= vn1_vnp2_sn5 <= 1
 0 <= vn4_vnp2_sn14 <= 1
 0 <= vn2_vnp2_sn4 <= 1
 0 <= vn3_vnp2_sn1 <= 1
 0 <= vn3_vnp2_sn19 <= 1
 0 <= vnp3 <= 1
 0 <= vn3_vnp3_sn5 <= 1
 0 <= vn1_vnp3_sn8 <= 1
 0 <= vn1_vnp3_sn20 <= 1
 0 <= vn3_vnp3_sn10 <= 1
 0 <= vn3_vnp3_sn15 <= 1
 0 <= vn2_vnp3_sn14 <= 1
 0 <= vn2_vnp3_sn3 <= 1
 0 <= vn4_vnp3_sn9 <= 1
 0 <= vn4_vnp3_sn4 <= 1
 0 <= vn4_vnp3_sn7 <= 1
 0 <= vnp4 <= 1
 0 <= vn3_vnp4_sn10 <= 1
 0 <= vn1_vnp4_sn6 <= 1
 0 <= vn1_vnp4_sn2 <= 1
 0 <= vn3_vnp4_sn20 <= 1
 0 <= vn2_vnp4_sn8 <= 1
 0 <= vn2_vnp4_sn5 <= 1
 0 <= vn2_vnp4_sn4 <= 1
 0 <= vn4_vnp4_sn12 <= 1
Binaries
 vnp1  vn2_vnp1_sn14  vn1_vnp1_sn9  vn4_vnp1_sn18  vn4_vnp1_sn8  vn4_vnp1_sn2 
 vn3_vnp1_sn6  vn3_vnp1_sn15  vn3_vnp1_sn3  vnp2  vn4_vnp2_sn7  vn1_vnp2_sn2 
 vn1_vnp2_sn17  vn1_vnp2_sn5  vn4_vnp2_sn14  vn2_vnp2_sn4  vn3_vnp2_sn1 
 vn3_vnp2_sn19  vnp3  vn3_vnp3_sn5  vn1_vnp3_sn8  vn1_vnp3_sn20  vn3_vnp3_sn10 
 vn3_vnp3_sn15  vn2_vnp3_sn14  vn2_vnp3_sn3  vn4_vnp3_sn9  vn4_vnp3_sn4 
 vn4_vnp3_sn7  vnp4  vn3_vnp4_sn10  vn1_vnp4_sn6  vn1_vnp4_sn2  vn3_vnp4_sn20 
 vn2_vnp4_sn8  vn2_vnp4_sn5  vn2_vnp4_sn4  vn4_vnp4_sn12 
End
