\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 506 vnp1 + 777 vnp2 + 1287 vnp3 + 442 vnp4 + 466 vnp5
      + [ - 16 vn3_vnp1_sn10 * vn1_vnp1_sn9 - 70 vn3_vnp1_sn10 * vn2_vnp1_sn18
      - 90 vn3_vnp1_sn10 * vn2_vnp1_sn17 - 190 vn3_vnp1_sn10 * vn2_vnp1_sn13
      - 44 vn1_vnp1_sn9 * vn3_vnp1_sn3 - 80 vn1_vnp1_sn9 * vn3_vnp1_sn6
      - 60 vn1_vnp1_sn9 * vn2_vnp1_sn18 - 116 vn1_vnp1_sn9 * vn2_vnp1_sn17
      - 188 vn1_vnp1_sn9 * vn2_vnp1_sn13 - 450 vn3_vnp1_sn3 * vn2_vnp1_sn18
      - 210 vn3_vnp1_sn3 * vn2_vnp1_sn17 - 140 vn3_vnp1_sn3 * vn2_vnp1_sn13
      - 230 vn3_vnp1_sn6 * vn2_vnp1_sn18 - 250 vn3_vnp1_sn6 * vn2_vnp1_sn17
      - 50 vn3_vnp1_sn6 * vn2_vnp1_sn13 - 130 vn3_vnp2_sn2 * vn1_vnp2_sn7
      - 184 vn3_vnp2_sn2 * vn1_vnp2_sn18 - 98 vn3_vnp2_sn2 * vn1_vnp2_sn11
      - 198 vn3_vnp2_sn2 * vn2_vnp2_sn17 - 160 vn3_vnp2_sn2 * vn4_vnp2_sn10
      - 432 vn3_vnp2_sn2 * vn4_vnp2_sn8 - 254 vn3_vnp2_sn2 * vn4_vnp2_sn20
      - 218 vn1_vnp2_sn7 * vn3_vnp2_sn6 - 170 vn1_vnp2_sn7 * vn3_vnp2_sn5
      - 160 vn1_vnp2_sn7 * vn4_vnp2_sn10 - 106 vn1_vnp2_sn7 * vn4_vnp2_sn8
      - 136 vn1_vnp2_sn7 * vn4_vnp2_sn20 - 100 vn1_vnp2_sn18 * vn3_vnp2_sn6
      - 100 vn1_vnp2_sn18 * vn3_vnp2_sn5 - 74 vn1_vnp2_sn18 * vn4_vnp2_sn10
      - 20 vn1_vnp2_sn18 * vn4_vnp2_sn8 - 146 vn1_vnp2_sn18 * vn4_vnp2_sn20
      - 90 vn1_vnp2_sn11 * vn3_vnp2_sn6 - 74 vn1_vnp2_sn11 * vn3_vnp2_sn5
      - 70 vn1_vnp2_sn11 * vn4_vnp2_sn10 - 196 vn1_vnp2_sn11 * vn4_vnp2_sn8
      - 106 vn1_vnp2_sn11 * vn4_vnp2_sn20 - 174 vn3_vnp2_sn6 * vn2_vnp2_sn17
      - 136 vn3_vnp2_sn6 * vn4_vnp2_sn10 - 238 vn3_vnp2_sn6 * vn4_vnp2_sn8
      - 280 vn3_vnp2_sn6 * vn4_vnp2_sn20 - 192 vn3_vnp2_sn5 * vn2_vnp2_sn17
      - 100 vn3_vnp2_sn5 * vn4_vnp2_sn10 - 202 vn3_vnp2_sn5 * vn4_vnp2_sn8
      - 324 vn3_vnp2_sn5 * vn4_vnp2_sn20 - 212 vn2_vnp3_sn15 * vn1_vnp3_sn13
      - 194 vn2_vnp3_sn15 * vn1_vnp3_sn14 - 272 vn2_vnp3_sn15 * vn1_vnp3_sn2
      - 116 vn2_vnp3_sn15 * vn4_vnp3_sn9 - 36 vn2_vnp3_sn15 * vn4_vnp3_sn20
      - 180 vn2_vnp3_sn15 * vn4_vnp3_sn3 - 238 vn2_vnp3_sn15 * vn3_vnp3_sn6
      - 250 vn1_vnp3_sn13 * vn2_vnp3_sn10 - 576 vn1_vnp3_sn13 * vn2_vnp3_sn18
      - 118 vn1_vnp3_sn13 * vn4_vnp3_sn9 - 110 vn1_vnp3_sn13 * vn4_vnp3_sn20
      - 86 vn1_vnp3_sn13 * vn4_vnp3_sn3 - 76 vn1_vnp3_sn13 * vn3_vnp3_sn6
      - 232 vn1_vnp3_sn14 * vn2_vnp3_sn10 - 298 vn1_vnp3_sn14 * vn2_vnp3_sn18
      - 24 vn1_vnp3_sn14 * vn4_vnp3_sn9 - 92 vn1_vnp3_sn14 * vn4_vnp3_sn20
      - 56 vn1_vnp3_sn14 * vn4_vnp3_sn3 - 250 vn1_vnp3_sn14 * vn3_vnp3_sn6
      - 160 vn1_vnp3_sn2 * vn2_vnp3_sn10 - 416 vn1_vnp3_sn2 * vn2_vnp3_sn18
      - 74 vn1_vnp3_sn2 * vn4_vnp3_sn9 - 110 vn1_vnp3_sn2 * vn4_vnp3_sn20
      - 42 vn1_vnp3_sn2 * vn4_vnp3_sn3 - 132 vn1_vnp3_sn2 * vn3_vnp3_sn6
      - 38 vn2_vnp3_sn10 * vn4_vnp3_sn9 - 182 vn2_vnp3_sn10 * vn4_vnp3_sn20
      - 102 vn2_vnp3_sn10 * vn4_vnp3_sn3 - 136 vn2_vnp3_sn10 * vn3_vnp3_sn6
      - 54 vn2_vnp3_sn18 * vn4_vnp3_sn9 - 182 vn2_vnp3_sn18 * vn4_vnp3_sn20
      - 366 vn2_vnp3_sn18 * vn4_vnp3_sn3 - 242 vn2_vnp3_sn18 * vn3_vnp3_sn6
      - 120 vn4_vnp4_sn19 * vn1_vnp4_sn18 - 72 vn4_vnp4_sn19 * vn1_vnp4_sn16
      - 216 vn4_vnp4_sn19 * vn1_vnp4_sn6 - 90 vn4_vnp4_sn19 * vn3_vnp4_sn1
      - 174 vn1_vnp4_sn18 * vn3_vnp4_sn1 - 12 vn1_vnp4_sn18 * vn2_vnp4_sn8
      - 228 vn1_vnp4_sn18 * vn2_vnp4_sn15 - 288 vn1_vnp4_sn16 * vn3_vnp4_sn1
      - 78 vn1_vnp4_sn16 * vn2_vnp4_sn8 - 66 vn1_vnp4_sn16 * vn2_vnp4_sn15
      - 162 vn1_vnp4_sn6 * vn3_vnp4_sn1 - 138 vn1_vnp4_sn6 * vn2_vnp4_sn8
      - 138 vn1_vnp4_sn6 * vn2_vnp4_sn15 - 70 vn3_vnp4_sn1 * vn2_vnp4_sn8
      - 68 vn3_vnp4_sn1 * vn2_vnp4_sn15 - 110 vn3_vnp5_sn12 * vn1_vnp5_sn11
      - 294 vn3_vnp5_sn12 * vn1_vnp5_sn14 - 126 vn3_vnp5_sn12 * vn2_vnp5_sn5
      - 162 vn3_vnp5_sn12 * vn2_vnp5_sn2 - 204 vn3_vnp5_sn12 * vn2_vnp5_sn4
      - 262 vn1_vnp5_sn11 * vn3_vnp5_sn17 - 394 vn1_vnp5_sn11 * vn3_vnp5_sn18
      - 32 vn1_vnp5_sn11 * vn2_vnp5_sn5 - 44 vn1_vnp5_sn11 * vn2_vnp5_sn2
      - 82 vn1_vnp5_sn11 * vn2_vnp5_sn4 - 190 vn1_vnp5_sn14 * vn3_vnp5_sn17
      - 242 vn1_vnp5_sn14 * vn3_vnp5_sn18 - 58 vn1_vnp5_sn14 * vn2_vnp5_sn5
      - 40 vn1_vnp5_sn14 * vn2_vnp5_sn2 - 50 vn1_vnp5_sn14 * vn2_vnp5_sn4
      - 162 vn3_vnp5_sn17 * vn2_vnp5_sn5 - 168 vn3_vnp5_sn17 * vn2_vnp5_sn2
      - 180 vn3_vnp5_sn17 * vn2_vnp5_sn4 - 108 vn3_vnp5_sn18 * vn2_vnp5_sn5
      - 234 vn3_vnp5_sn18 * vn2_vnp5_sn2 - 126 vn3_vnp5_sn18 * vn2_vnp5_sn4
      ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn9 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn18
                                 + vn2_vnp1_sn17 + vn2_vnp1_sn13 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn10
                                 + vn3_vnp1_sn3 + vn3_vnp1_sn6 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#3: - vnp2 + vn1_vnp2_sn7
                                 + vn1_vnp2_sn18 + vn1_vnp2_sn11 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#4: - vnp2 + vn2_vnp2_sn17 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#5: - vnp2 + vn3_vnp2_sn2 + vn3_vnp2_sn6
                                 + vn3_vnp2_sn5 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#6: - vnp2 + vn4_vnp2_sn10
                                 + vn4_vnp2_sn8 + vn4_vnp2_sn20 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#7: - vnp3 + vn1_vnp3_sn13
                                 + vn1_vnp3_sn14 + vn1_vnp3_sn2 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#8: - vnp3 + vn2_vnp3_sn15
                                 + vn2_vnp3_sn10 + vn2_vnp3_sn18 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#9: - vnp3 + vn3_vnp3_sn6 <= 0
 _Embedding_clash_const_of_vnode4_vnp_3#10: - vnp3 + vn4_vnp3_sn9
                                 + vn4_vnp3_sn20 + vn4_vnp3_sn3 <= 0
 _Embedding_clash_const_of_vnode1_vnp_4#11: - vnp4 + vn1_vnp4_sn18
                                 + vn1_vnp4_sn16 + vn1_vnp4_sn6 <= 0
 _Embedding_clash_const_of_vnode2_vnp_4#12: - vnp4 + vn2_vnp4_sn8
                                 + vn2_vnp4_sn15 <= 0
 _Embedding_clash_const_of_vnode3_vnp_4#13: - vnp4 + vn3_vnp4_sn1 <= 0
 _Embedding_clash_const_of_vnode4_vnp_4#14: - vnp4 + vn4_vnp4_sn19 <= 0
 _Embedding_clash_const_of_vnode1_vnp_5#15: - vnp5 + vn1_vnp5_sn11
                                 + vn1_vnp5_sn14 <= 0
 _Embedding_clash_const_of_vnode2_vnp_5#16: - vnp5 + vn2_vnp5_sn5
                                 + vn2_vnp5_sn2 + vn2_vnp5_sn4 <= 0
 _Embedding_clash_const_of_vnode3_vnp_5#17: - vnp5 + vn3_vnp5_sn12
                                 + vn3_vnp5_sn17 + vn3_vnp5_sn18 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn3_vnp1_sn10 * vn1_vnp1_sn9
                                 - vn1_vnp1_sn9 * vn3_vnp1_sn3
                                 - vn1_vnp1_sn9 * vn3_vnp1_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn1_vnp1_sn9 * vn2_vnp1_sn18
                                 - vn1_vnp1_sn9 * vn2_vnp1_sn17
                                 - vn1_vnp1_sn9 * vn2_vnp1_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn3_vnp1_sn10 * vn2_vnp1_sn18
                                 - vn3_vnp1_sn10 * vn2_vnp1_sn17
                                 - vn3_vnp1_sn10 * vn2_vnp1_sn13
                                 - vn3_vnp1_sn3 * vn2_vnp1_sn18
                                 - vn3_vnp1_sn3 * vn2_vnp1_sn17
                                 - vn3_vnp1_sn3 * vn2_vnp1_sn13
                                 - vn3_vnp1_sn6 * vn2_vnp1_sn18
                                 - vn3_vnp1_sn6 * vn2_vnp1_sn17
                                 - vn3_vnp1_sn6 * vn2_vnp1_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_4#3: vnp2
                                 + [ - vn3_vnp2_sn2 * vn1_vnp2_sn7
                                 - vn3_vnp2_sn2 * vn1_vnp2_sn18
                                 - vn3_vnp2_sn2 * vn1_vnp2_sn11
                                 - vn1_vnp2_sn7 * vn3_vnp2_sn6
                                 - vn1_vnp2_sn7 * vn3_vnp2_sn5
                                 - vn1_vnp2_sn18 * vn3_vnp2_sn6
                                 - vn1_vnp2_sn18 * vn3_vnp2_sn5
                                 - vn1_vnp2_sn11 * vn3_vnp2_sn6
                                 - vn1_vnp2_sn11 * vn3_vnp2_sn5 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_5#4: vnp2
                                 + [ - vn3_vnp2_sn2 * vn2_vnp2_sn17
                                 - vn3_vnp2_sn6 * vn2_vnp2_sn17
                                 - vn3_vnp2_sn5 * vn2_vnp2_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn3_vnp2_sn2 * vn4_vnp2_sn10
                                 - vn3_vnp2_sn2 * vn4_vnp2_sn8
                                 - vn3_vnp2_sn2 * vn4_vnp2_sn20
                                 - vn3_vnp2_sn6 * vn4_vnp2_sn10
                                 - vn3_vnp2_sn6 * vn4_vnp2_sn8
                                 - vn3_vnp2_sn6 * vn4_vnp2_sn20
                                 - vn3_vnp2_sn5 * vn4_vnp2_sn10
                                 - vn3_vnp2_sn5 * vn4_vnp2_sn8
                                 - vn3_vnp2_sn5 * vn4_vnp2_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn1_vnp2_sn7 * vn4_vnp2_sn10
                                 - vn1_vnp2_sn7 * vn4_vnp2_sn8
                                 - vn1_vnp2_sn7 * vn4_vnp2_sn20
                                 - vn1_vnp2_sn18 * vn4_vnp2_sn10
                                 - vn1_vnp2_sn18 * vn4_vnp2_sn8
                                 - vn1_vnp2_sn18 * vn4_vnp2_sn20
                                 - vn1_vnp2_sn11 * vn4_vnp2_sn10
                                 - vn1_vnp2_sn11 * vn4_vnp2_sn8
                                 - vn1_vnp2_sn11 * vn4_vnp2_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_8#7: vnp3
                                 + [ - vn2_vnp3_sn15 * vn1_vnp3_sn13
                                 - vn2_vnp3_sn15 * vn1_vnp3_sn14
                                 - vn2_vnp3_sn15 * vn1_vnp3_sn2
                                 - vn1_vnp3_sn13 * vn2_vnp3_sn10
                                 - vn1_vnp3_sn13 * vn2_vnp3_sn18
                                 - vn1_vnp3_sn14 * vn2_vnp3_sn10
                                 - vn1_vnp3_sn14 * vn2_vnp3_sn18
                                 - vn1_vnp3_sn2 * vn2_vnp3_sn10
                                 - vn1_vnp3_sn2 * vn2_vnp3_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_9#8: vnp3
                                 + [ - vn2_vnp3_sn15 * vn4_vnp3_sn9
                                 - vn2_vnp3_sn15 * vn4_vnp3_sn20
                                 - vn2_vnp3_sn15 * vn4_vnp3_sn3
                                 - vn2_vnp3_sn10 * vn4_vnp3_sn9
                                 - vn2_vnp3_sn10 * vn4_vnp3_sn20
                                 - vn2_vnp3_sn10 * vn4_vnp3_sn3
                                 - vn2_vnp3_sn18 * vn4_vnp3_sn9
                                 - vn2_vnp3_sn18 * vn4_vnp3_sn20
                                 - vn2_vnp3_sn18 * vn4_vnp3_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_10#9: vnp3
                                 + [ - vn2_vnp3_sn15 * vn3_vnp3_sn6
                                 - vn2_vnp3_sn10 * vn3_vnp3_sn6
                                 - vn2_vnp3_sn18 * vn3_vnp3_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_11#10: vnp3
                                 + [ - vn1_vnp3_sn13 * vn4_vnp3_sn9
                                 - vn1_vnp3_sn13 * vn4_vnp3_sn20
                                 - vn1_vnp3_sn13 * vn4_vnp3_sn3
                                 - vn1_vnp3_sn14 * vn4_vnp3_sn9
                                 - vn1_vnp3_sn14 * vn4_vnp3_sn20
                                 - vn1_vnp3_sn14 * vn4_vnp3_sn3
                                 - vn1_vnp3_sn2 * vn4_vnp3_sn9
                                 - vn1_vnp3_sn2 * vn4_vnp3_sn20
                                 - vn1_vnp3_sn2 * vn4_vnp3_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_12#11: vnp3
                                 + [ - vn1_vnp3_sn13 * vn3_vnp3_sn6
                                 - vn1_vnp3_sn14 * vn3_vnp3_sn6
                                 - vn1_vnp3_sn2 * vn3_vnp3_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_13#12: vnp4
                                 + [ - vn4_vnp4_sn19 * vn1_vnp4_sn18
                                 - vn4_vnp4_sn19 * vn1_vnp4_sn16
                                 - vn4_vnp4_sn19 * vn1_vnp4_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_14#13: vnp4
                                 + [ - vn3_vnp4_sn1 * vn2_vnp4_sn8
                                 - vn3_vnp4_sn1 * vn2_vnp4_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_15#14: vnp4
                                 + [ - vn4_vnp4_sn19 * vn3_vnp4_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_16#15: vnp4
                                 + [ - vn1_vnp4_sn18 * vn2_vnp4_sn8
                                 - vn1_vnp4_sn18 * vn2_vnp4_sn15
                                 - vn1_vnp4_sn16 * vn2_vnp4_sn8
                                 - vn1_vnp4_sn16 * vn2_vnp4_sn15
                                 - vn1_vnp4_sn6 * vn2_vnp4_sn8
                                 - vn1_vnp4_sn6 * vn2_vnp4_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_17#16: vnp4
                                 + [ - vn1_vnp4_sn18 * vn3_vnp4_sn1
                                 - vn1_vnp4_sn16 * vn3_vnp4_sn1
                                 - vn1_vnp4_sn6 * vn3_vnp4_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_18#17: vnp5
                                 + [ - vn3_vnp5_sn12 * vn1_vnp5_sn11
                                 - vn3_vnp5_sn12 * vn1_vnp5_sn14
                                 - vn1_vnp5_sn11 * vn3_vnp5_sn17
                                 - vn1_vnp5_sn11 * vn3_vnp5_sn18
                                 - vn1_vnp5_sn14 * vn3_vnp5_sn17
                                 - vn1_vnp5_sn14 * vn3_vnp5_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_19#18: vnp5
                                 + [ - vn3_vnp5_sn12 * vn2_vnp5_sn5
                                 - vn3_vnp5_sn12 * vn2_vnp5_sn2
                                 - vn3_vnp5_sn12 * vn2_vnp5_sn4
                                 - vn3_vnp5_sn17 * vn2_vnp5_sn5
                                 - vn3_vnp5_sn17 * vn2_vnp5_sn2
                                 - vn3_vnp5_sn17 * vn2_vnp5_sn4
                                 - vn3_vnp5_sn18 * vn2_vnp5_sn5
                                 - vn3_vnp5_sn18 * vn2_vnp5_sn2
                                 - vn3_vnp5_sn18 * vn2_vnp5_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_20#19: vnp5
                                 + [ - vn1_vnp5_sn11 * vn2_vnp5_sn5
                                 - vn1_vnp5_sn11 * vn2_vnp5_sn2
                                 - vn1_vnp5_sn11 * vn2_vnp5_sn4
                                 - vn1_vnp5_sn14 * vn2_vnp5_sn5
                                 - vn1_vnp5_sn14 * vn2_vnp5_sn2
                                 - vn1_vnp5_sn14 * vn2_vnp5_sn4 ] <= 0
 q21#20:                         - 506 vnp1 - 777 vnp2 - 1287 vnp3 - 442 vnp4
                                 - 466 vnp5 + [ 8 vn3_vnp1_sn10 * vn1_vnp1_sn9
                                 + 35 vn3_vnp1_sn10 * vn2_vnp1_sn18
                                 + 45 vn3_vnp1_sn10 * vn2_vnp1_sn17
                                 + 95 vn3_vnp1_sn10 * vn2_vnp1_sn13
                                 + 22 vn1_vnp1_sn9 * vn3_vnp1_sn3
                                 + 40 vn1_vnp1_sn9 * vn3_vnp1_sn6
                                 + 30 vn1_vnp1_sn9 * vn2_vnp1_sn18
                                 + 58 vn1_vnp1_sn9 * vn2_vnp1_sn17
                                 + 94 vn1_vnp1_sn9 * vn2_vnp1_sn13
                                 + 225 vn3_vnp1_sn3 * vn2_vnp1_sn18
                                 + 105 vn3_vnp1_sn3 * vn2_vnp1_sn17
                                 + 70 vn3_vnp1_sn3 * vn2_vnp1_sn13
                                 + 115 vn3_vnp1_sn6 * vn2_vnp1_sn18
                                 + 125 vn3_vnp1_sn6 * vn2_vnp1_sn17
                                 + 25 vn3_vnp1_sn6 * vn2_vnp1_sn13
                                 + 65 vn3_vnp2_sn2 * vn1_vnp2_sn7
                                 + 92 vn3_vnp2_sn2 * vn1_vnp2_sn18
                                 + 49 vn3_vnp2_sn2 * vn1_vnp2_sn11
                                 + 99 vn3_vnp2_sn2 * vn2_vnp2_sn17
                                 + 80 vn3_vnp2_sn2 * vn4_vnp2_sn10
                                 + 216 vn3_vnp2_sn2 * vn4_vnp2_sn8
                                 + 127 vn3_vnp2_sn2 * vn4_vnp2_sn20
                                 + 109 vn1_vnp2_sn7 * vn3_vnp2_sn6
                                 + 85 vn1_vnp2_sn7 * vn3_vnp2_sn5
                                 + 80 vn1_vnp2_sn7 * vn4_vnp2_sn10
                                 + 53 vn1_vnp2_sn7 * vn4_vnp2_sn8
                                 + 68 vn1_vnp2_sn7 * vn4_vnp2_sn20
                                 + 50 vn1_vnp2_sn18 * vn3_vnp2_sn6
                                 + 50 vn1_vnp2_sn18 * vn3_vnp2_sn5
                                 + 37 vn1_vnp2_sn18 * vn4_vnp2_sn10
                                 + 10 vn1_vnp2_sn18 * vn4_vnp2_sn8
                                 + 73 vn1_vnp2_sn18 * vn4_vnp2_sn20
                                 + 45 vn1_vnp2_sn11 * vn3_vnp2_sn6
                                 + 37 vn1_vnp2_sn11 * vn3_vnp2_sn5
                                 + 35 vn1_vnp2_sn11 * vn4_vnp2_sn10
                                 + 98 vn1_vnp2_sn11 * vn4_vnp2_sn8
                                 + 53 vn1_vnp2_sn11 * vn4_vnp2_sn20
                                 + 87 vn3_vnp2_sn6 * vn2_vnp2_sn17
                                 + 68 vn3_vnp2_sn6 * vn4_vnp2_sn10
                                 + 119 vn3_vnp2_sn6 * vn4_vnp2_sn8
                                 + 140 vn3_vnp2_sn6 * vn4_vnp2_sn20
                                 + 96 vn3_vnp2_sn5 * vn2_vnp2_sn17
                                 + 50 vn3_vnp2_sn5 * vn4_vnp2_sn10
                                 + 101 vn3_vnp2_sn5 * vn4_vnp2_sn8
                                 + 162 vn3_vnp2_sn5 * vn4_vnp2_sn20
                                 + 106 vn2_vnp3_sn15 * vn1_vnp3_sn13
                                 + 97 vn2_vnp3_sn15 * vn1_vnp3_sn14
                                 + 136 vn2_vnp3_sn15 * vn1_vnp3_sn2
                                 + 58 vn2_vnp3_sn15 * vn4_vnp3_sn9
                                 + 18 vn2_vnp3_sn15 * vn4_vnp3_sn20
                                 + 90 vn2_vnp3_sn15 * vn4_vnp3_sn3
                                 + 119 vn2_vnp3_sn15 * vn3_vnp3_sn6
                                 + 125 vn1_vnp3_sn13 * vn2_vnp3_sn10
                                 + 288 vn1_vnp3_sn13 * vn2_vnp3_sn18
                                 + 59 vn1_vnp3_sn13 * vn4_vnp3_sn9
                                 + 55 vn1_vnp3_sn13 * vn4_vnp3_sn20
                                 + 43 vn1_vnp3_sn13 * vn4_vnp3_sn3
                                 + 38 vn1_vnp3_sn13 * vn3_vnp3_sn6
                                 + 116 vn1_vnp3_sn14 * vn2_vnp3_sn10
                                 + 149 vn1_vnp3_sn14 * vn2_vnp3_sn18
                                 + 12 vn1_vnp3_sn14 * vn4_vnp3_sn9
                                 + 46 vn1_vnp3_sn14 * vn4_vnp3_sn20
                                 + 28 vn1_vnp3_sn14 * vn4_vnp3_sn3
                                 + 125 vn1_vnp3_sn14 * vn3_vnp3_sn6
                                 + 80 vn1_vnp3_sn2 * vn2_vnp3_sn10
                                 + 208 vn1_vnp3_sn2 * vn2_vnp3_sn18
                                 + 37 vn1_vnp3_sn2 * vn4_vnp3_sn9
                                 + 55 vn1_vnp3_sn2 * vn4_vnp3_sn20
                                 + 21 vn1_vnp3_sn2 * vn4_vnp3_sn3
                                 + 66 vn1_vnp3_sn2 * vn3_vnp3_sn6
                                 + 19 vn2_vnp3_sn10 * vn4_vnp3_sn9
                                 + 91 vn2_vnp3_sn10 * vn4_vnp3_sn20
                                 + 51 vn2_vnp3_sn10 * vn4_vnp3_sn3
                                 + 68 vn2_vnp3_sn10 * vn3_vnp3_sn6
                                 + 27 vn2_vnp3_sn18 * vn4_vnp3_sn9
                                 + 91 vn2_vnp3_sn18 * vn4_vnp3_sn20
                                 + 183 vn2_vnp3_sn18 * vn4_vnp3_sn3
                                 + 121 vn2_vnp3_sn18 * vn3_vnp3_sn6
                                 + 60 vn4_vnp4_sn19 * vn1_vnp4_sn18
                                 + 36 vn4_vnp4_sn19 * vn1_vnp4_sn16
                                 + 108 vn4_vnp4_sn19 * vn1_vnp4_sn6
                                 + 45 vn4_vnp4_sn19 * vn3_vnp4_sn1
                                 + 87 vn1_vnp4_sn18 * vn3_vnp4_sn1
                                 + 6 vn1_vnp4_sn18 * vn2_vnp4_sn8
                                 + 114 vn1_vnp4_sn18 * vn2_vnp4_sn15
                                 + 144 vn1_vnp4_sn16 * vn3_vnp4_sn1
                                 + 39 vn1_vnp4_sn16 * vn2_vnp4_sn8
                                 + 33 vn1_vnp4_sn16 * vn2_vnp4_sn15
                                 + 81 vn1_vnp4_sn6 * vn3_vnp4_sn1
                                 + 69 vn1_vnp4_sn6 * vn2_vnp4_sn8
                                 + 69 vn1_vnp4_sn6 * vn2_vnp4_sn15
                                 + 35 vn3_vnp4_sn1 * vn2_vnp4_sn8
                                 + 34 vn3_vnp4_sn1 * vn2_vnp4_sn15
                                 + 55 vn3_vnp5_sn12 * vn1_vnp5_sn11
                                 + 147 vn3_vnp5_sn12 * vn1_vnp5_sn14
                                 + 63 vn3_vnp5_sn12 * vn2_vnp5_sn5
                                 + 81 vn3_vnp5_sn12 * vn2_vnp5_sn2
                                 + 102 vn3_vnp5_sn12 * vn2_vnp5_sn4
                                 + 131 vn1_vnp5_sn11 * vn3_vnp5_sn17
                                 + 197 vn1_vnp5_sn11 * vn3_vnp5_sn18
                                 + 16 vn1_vnp5_sn11 * vn2_vnp5_sn5
                                 + 22 vn1_vnp5_sn11 * vn2_vnp5_sn2
                                 + 41 vn1_vnp5_sn11 * vn2_vnp5_sn4
                                 + 95 vn1_vnp5_sn14 * vn3_vnp5_sn17
                                 + 121 vn1_vnp5_sn14 * vn3_vnp5_sn18
                                 + 29 vn1_vnp5_sn14 * vn2_vnp5_sn5
                                 + 20 vn1_vnp5_sn14 * vn2_vnp5_sn2
                                 + 25 vn1_vnp5_sn14 * vn2_vnp5_sn4
                                 + 81 vn3_vnp5_sn17 * vn2_vnp5_sn5
                                 + 84 vn3_vnp5_sn17 * vn2_vnp5_sn2
                                 + 90 vn3_vnp5_sn17 * vn2_vnp5_sn4
                                 + 54 vn3_vnp5_sn18 * vn2_vnp5_sn5
                                 + 117 vn3_vnp5_sn18 * vn2_vnp5_sn2
                                 + 63 vn3_vnp5_sn18 * vn2_vnp5_sn4 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_2#0: 3 vn3_vnp2_sn2 + 3 vn1_vnp3_sn2 <= 4
 CPU_capacity_of_substrate_node_5#1: 3 vn3_vnp2_sn5 <= 5
 CPU_capacity_of_substrate_node_6#2: 3 vn3_vnp2_sn6 + 3 vn3_vnp3_sn6
                                 + 3 vn1_vnp4_sn6 <= 4
 CPU_capacity_of_substrate_node_7#3: vn1_vnp2_sn7 <= 7
 CPU_capacity_of_substrate_node_8#4: 3 vn4_vnp2_sn8 <= 8
 CPU_capacity_of_substrate_node_9#5: 3 vn1_vnp1_sn9 <= 5
 CPU_capacity_of_substrate_node_10#6: 3 vn4_vnp2_sn10 + 3 vn2_vnp3_sn10 <= 2
 CPU_capacity_of_substrate_node_11#7: vn1_vnp2_sn11 + 3 vn1_vnp5_sn11 <= 5
 CPU_capacity_of_substrate_node_12#8: 3 vn3_vnp5_sn12 <= 5
 CPU_capacity_of_substrate_node_13#9: 3 vn1_vnp3_sn13 <= 7
 CPU_capacity_of_substrate_node_14#10: 3 vn1_vnp3_sn14 + 3 vn1_vnp5_sn14 <= 5
 CPU_capacity_of_substrate_node_15#11: 3 vn2_vnp3_sn15 <= 8
 CPU_capacity_of_substrate_node_16#12: 3 vn1_vnp4_sn16 <= 7
 CPU_capacity_of_substrate_node_17#13: 3 vn2_vnp2_sn17 + 3 vn3_vnp5_sn17 <= 5
 CPU_capacity_of_substrate_node_18#14: vn1_vnp2_sn18 + 3 vn2_vnp3_sn18
                                 + 3 vn1_vnp4_sn18 + 3 vn3_vnp5_sn18 <= 5
 CPU_capacity_of_substrate_node_20#15: 3 vn4_vnp2_sn20 <= 5
Bounds
 0 <= vnp1 <= 1
 0 <= vn3_vnp1_sn10 <= 1
 0 <= vn1_vnp1_sn9 <= 1
 0 <= vn3_vnp1_sn3 <= 1
 0 <= vn3_vnp1_sn6 <= 1
 0 <= vn2_vnp1_sn18 <= 1
 0 <= vn2_vnp1_sn17 <= 1
 0 <= vn2_vnp1_sn13 <= 1
 0 <= vnp2 <= 1
 0 <= vn3_vnp2_sn2 <= 1
 0 <= vn1_vnp2_sn7 <= 1
 0 <= vn1_vnp2_sn18 <= 1
 0 <= vn1_vnp2_sn11 <= 1
 0 <= vn3_vnp2_sn6 <= 1
 0 <= vn3_vnp2_sn5 <= 1
 0 <= vn2_vnp2_sn17 <= 1
 0 <= vn4_vnp2_sn10 <= 1
 0 <= vn4_vnp2_sn8 <= 1
 0 <= vn4_vnp2_sn20 <= 1
 0 <= vnp3 <= 1
 0 <= vn2_vnp3_sn15 <= 1
 0 <= vn1_vnp3_sn13 <= 1
 0 <= vn1_vnp3_sn14 <= 1
 0 <= vn1_vnp3_sn2 <= 1
 0 <= vn2_vnp3_sn10 <= 1
 0 <= vn2_vnp3_sn18 <= 1
 0 <= vn4_vnp3_sn9 <= 1
 0 <= vn4_vnp3_sn20 <= 1
 0 <= vn4_vnp3_sn3 <= 1
 0 <= vn3_vnp3_sn6 <= 1
 0 <= vnp4 <= 1
 0 <= vn4_vnp4_sn19 <= 1
 0 <= vn1_vnp4_sn18 <= 1
 0 <= vn1_vnp4_sn16 <= 1
 0 <= vn1_vnp4_sn6 <= 1
 0 <= vn3_vnp4_sn1 <= 1
 0 <= vn2_vnp4_sn8 <= 1
 0 <= vn2_vnp4_sn15 <= 1
 0 <= vnp5 <= 1
 0 <= vn3_vnp5_sn12 <= 1
 0 <= vn1_vnp5_sn11 <= 1
 0 <= vn1_vnp5_sn14 <= 1
 0 <= vn3_vnp5_sn17 <= 1
 0 <= vn3_vnp5_sn18 <= 1
 0 <= vn2_vnp5_sn5 <= 1
 0 <= vn2_vnp5_sn2 <= 1
 0 <= vn2_vnp5_sn4 <= 1
Binaries
 vnp1  vn3_vnp1_sn10  vn1_vnp1_sn9  vn3_vnp1_sn3  vn3_vnp1_sn6  vn2_vnp1_sn18 
 vn2_vnp1_sn17  vn2_vnp1_sn13  vnp2  vn3_vnp2_sn2  vn1_vnp2_sn7  vn1_vnp2_sn18 
 vn1_vnp2_sn11  vn3_vnp2_sn6  vn3_vnp2_sn5  vn2_vnp2_sn17  vn4_vnp2_sn10 
 vn4_vnp2_sn8  vn4_vnp2_sn20  vnp3  vn2_vnp3_sn15  vn1_vnp3_sn13 
 vn1_vnp3_sn14  vn1_vnp3_sn2  vn2_vnp3_sn10  vn2_vnp3_sn18  vn4_vnp3_sn9 
 vn4_vnp3_sn20  vn4_vnp3_sn3  vn3_vnp3_sn6  vnp4  vn4_vnp4_sn19  vn1_vnp4_sn18 
 vn1_vnp4_sn16  vn1_vnp4_sn6  vn3_vnp4_sn1  vn2_vnp4_sn8  vn2_vnp4_sn15  vnp5 
 vn3_vnp5_sn12  vn1_vnp5_sn11  vn1_vnp5_sn14  vn3_vnp5_sn17  vn3_vnp5_sn18 
 vn2_vnp5_sn5  vn2_vnp5_sn2  vn2_vnp5_sn4 
End
