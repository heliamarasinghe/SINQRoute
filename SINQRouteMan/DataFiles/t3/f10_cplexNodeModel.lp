\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1278 vnp1 + 583 vnp2 + 644 vnp3 + 424 vnp4 + 1237 vnp5 + 1399 vnp6
      + [ - 154 vn3_vnp1_sn20 * vn1_vnp1_sn1 - 194 vn3_vnp1_sn20 * vn2_vnp1_sn2
      - 252 vn3_vnp1_sn20 * vn4_vnp1_sn9 - 190 vn1_vnp1_sn1 * vn3_vnp1_sn10
      - 98 vn1_vnp1_sn1 * vn4_vnp1_sn9 - 174 vn3_vnp1_sn10 * vn2_vnp1_sn2
      - 168 vn3_vnp1_sn10 * vn4_vnp1_sn9 - 88 vn2_vnp1_sn2 * vn4_vnp1_sn9
      - 540 vn3_vnp2_sn19 * vn1_vnp2_sn13 - 112 vn3_vnp2_sn19 * vn2_vnp2_sn12
      - 530 vn1_vnp2_sn13 * vn3_vnp2_sn8 - 226 vn1_vnp2_sn13 * vn3_vnp2_sn5
      - 102 vn1_vnp2_sn13 * vn2_vnp2_sn12 - 110 vn3_vnp2_sn8 * vn2_vnp2_sn12
      - 30 vn3_vnp2_sn5 * vn2_vnp2_sn12 - 60 vn3_vnp3_sn7 * vn1_vnp3_sn2
      - 32 vn3_vnp3_sn7 * vn2_vnp3_sn1 - 222 vn3_vnp3_sn7 * vn2_vnp3_sn6
      - 94 vn3_vnp3_sn7 * vn2_vnp3_sn8 - 80 vn1_vnp3_sn2 * vn3_vnp3_sn3
      - 68 vn1_vnp3_sn2 * vn2_vnp3_sn1 - 274 vn1_vnp3_sn2 * vn2_vnp3_sn6
      - 262 vn1_vnp3_sn2 * vn2_vnp3_sn8 - 56 vn3_vnp3_sn3 * vn2_vnp3_sn1
      - 78 vn3_vnp3_sn3 * vn2_vnp3_sn6 - 78 vn3_vnp3_sn3 * vn2_vnp3_sn8
      - 344 vn3_vnp4_sn10 * vn1_vnp4_sn4 - 56 vn3_vnp4_sn10 * vn1_vnp4_sn14
      - 360 vn3_vnp4_sn10 * vn1_vnp4_sn17 - 138 vn3_vnp4_sn10 * vn4_vnp4_sn7
      - 140 vn3_vnp4_sn10 * vn4_vnp4_sn2 - 78 vn3_vnp4_sn10 * vn4_vnp4_sn16
      - 46 vn1_vnp4_sn4 * vn4_vnp4_sn7 - 68 vn1_vnp4_sn4 * vn4_vnp4_sn2
      - 30 vn1_vnp4_sn4 * vn4_vnp4_sn16 - 118 vn1_vnp4_sn14 * vn4_vnp4_sn7
      - 106 vn1_vnp4_sn14 * vn4_vnp4_sn2 - 54 vn1_vnp4_sn14 * vn4_vnp4_sn16
      - 88 vn1_vnp4_sn17 * vn4_vnp4_sn7 - 104 vn1_vnp4_sn17 * vn4_vnp4_sn2
      - 30 vn1_vnp4_sn17 * vn4_vnp4_sn16 - 82 vn4_vnp4_sn7 * vn2_vnp4_sn19
      - 272 vn4_vnp4_sn7 * vn2_vnp4_sn15 - 136 vn4_vnp4_sn7 * vn2_vnp4_sn8
      - 142 vn2_vnp4_sn19 * vn4_vnp4_sn2 - 148 vn2_vnp4_sn19 * vn4_vnp4_sn16
      - 320 vn2_vnp4_sn15 * vn4_vnp4_sn2 - 74 vn2_vnp4_sn15 * vn4_vnp4_sn16
      - 190 vn2_vnp4_sn8 * vn4_vnp4_sn2 - 34 vn2_vnp4_sn8 * vn4_vnp4_sn16
      - 256 vn3_vnp5_sn2 * vn1_vnp5_sn5 - 474 vn3_vnp5_sn2 * vn1_vnp5_sn13
      - 394 vn3_vnp5_sn2 * vn1_vnp5_sn14 - 262 vn3_vnp5_sn2 * vn4_vnp5_sn16
      - 244 vn3_vnp5_sn2 * vn4_vnp5_sn20 - 122 vn1_vnp5_sn5 * vn3_vnp5_sn3
      - 272 vn1_vnp5_sn5 * vn2_vnp5_sn7 - 134 vn1_vnp5_sn5 * vn2_vnp5_sn8
      - 340 vn1_vnp5_sn13 * vn3_vnp5_sn3 - 286 vn1_vnp5_sn13 * vn2_vnp5_sn7
      - 304 vn1_vnp5_sn13 * vn2_vnp5_sn8 - 260 vn1_vnp5_sn14 * vn3_vnp5_sn3
      - 244 vn1_vnp5_sn14 * vn2_vnp5_sn7 - 118 vn1_vnp5_sn14 * vn2_vnp5_sn8
      - 184 vn3_vnp5_sn3 * vn4_vnp5_sn16 - 292 vn3_vnp5_sn3 * vn4_vnp5_sn20
      - 76 vn4_vnp5_sn16 * vn2_vnp5_sn7 - 12 vn4_vnp5_sn16 * vn2_vnp5_sn8
      - 106 vn2_vnp5_sn7 * vn4_vnp5_sn20 - 150 vn2_vnp5_sn8 * vn4_vnp5_sn20
      - 190 vn2_vnp6_sn11 * vn1_vnp6_sn15 - 114 vn2_vnp6_sn11 * vn1_vnp6_sn14
      - 334 vn2_vnp6_sn11 * vn1_vnp6_sn8 - 434 vn2_vnp6_sn11 * vn3_vnp6_sn7
      - 204 vn1_vnp6_sn15 * vn3_vnp6_sn7 - 316 vn1_vnp6_sn15 * vn4_vnp6_sn3
      - 236 vn1_vnp6_sn15 * vn4_vnp6_sn19 - 344 vn1_vnp6_sn15 * vn4_vnp6_sn6
      - 264 vn1_vnp6_sn14 * vn3_vnp6_sn7 - 236 vn1_vnp6_sn14 * vn4_vnp6_sn3
      - 380 vn1_vnp6_sn14 * vn4_vnp6_sn19 - 168 vn1_vnp6_sn14 * vn4_vnp6_sn6
      - 156 vn1_vnp6_sn8 * vn3_vnp6_sn7 - 156 vn1_vnp6_sn8 * vn4_vnp6_sn3
      - 244 vn1_vnp6_sn8 * vn4_vnp6_sn19 - 272 vn1_vnp6_sn8 * vn4_vnp6_sn6
      ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn1 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn2 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn20
                                 + vn3_vnp1_sn10 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn9 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn13 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn12 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn19
                                 + vn3_vnp2_sn8 + vn3_vnp2_sn5 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#7: - vnp3 + vn1_vnp3_sn2 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#8: - vnp3 + vn2_vnp3_sn1 + vn2_vnp3_sn6
                                 + vn2_vnp3_sn8 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#9: - vnp3 + vn3_vnp3_sn7 + vn3_vnp3_sn3
                                 <= 0
 _Embedding_clash_const_of_vnode1_vnp_4#10: - vnp4 + vn1_vnp4_sn4
                                 + vn1_vnp4_sn14 + vn1_vnp4_sn17 <= 0
 _Embedding_clash_const_of_vnode2_vnp_4#11: - vnp4 + vn2_vnp4_sn19
                                 + vn2_vnp4_sn15 + vn2_vnp4_sn8 <= 0
 _Embedding_clash_const_of_vnode3_vnp_4#12: - vnp4 + vn3_vnp4_sn10 <= 0
 _Embedding_clash_const_of_vnode4_vnp_4#13: - vnp4 + vn4_vnp4_sn7
                                 + vn4_vnp4_sn2 + vn4_vnp4_sn16 <= 0
 _Embedding_clash_const_of_vnode1_vnp_5#14: - vnp5 + vn1_vnp5_sn5
                                 + vn1_vnp5_sn13 + vn1_vnp5_sn14 <= 0
 _Embedding_clash_const_of_vnode2_vnp_5#15: - vnp5 + vn2_vnp5_sn7
                                 + vn2_vnp5_sn8 <= 0
 _Embedding_clash_const_of_vnode3_vnp_5#16: - vnp5 + vn3_vnp5_sn2
                                 + vn3_vnp5_sn3 <= 0
 _Embedding_clash_const_of_vnode4_vnp_5#17: - vnp5 + vn4_vnp5_sn16
                                 + vn4_vnp5_sn20 <= 0
 _Embedding_clash_const_of_vnode1_vnp_6#18: - vnp6 + vn1_vnp6_sn15
                                 + vn1_vnp6_sn14 + vn1_vnp6_sn8 <= 0
 _Embedding_clash_const_of_vnode2_vnp_6#19: - vnp6 + vn2_vnp6_sn11 <= 0
 _Embedding_clash_const_of_vnode3_vnp_6#20: - vnp6 + vn3_vnp6_sn7 <= 0
 _Embedding_clash_const_of_vnode4_vnp_6#21: - vnp6 + vn4_vnp6_sn3
                                 + vn4_vnp6_sn19 + vn4_vnp6_sn6 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn3_vnp1_sn20 * vn1_vnp1_sn1
                                 - vn1_vnp1_sn1 * vn3_vnp1_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn3_vnp1_sn20 * vn2_vnp1_sn2
                                 - vn3_vnp1_sn10 * vn2_vnp1_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn3_vnp1_sn20 * vn4_vnp1_sn9
                                 - vn3_vnp1_sn10 * vn4_vnp1_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn1_vnp1_sn1 * vn4_vnp1_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_5#4: vnp1
                                 + [ - vn2_vnp1_sn2 * vn4_vnp1_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn3_vnp2_sn19 * vn1_vnp2_sn13
                                 - vn1_vnp2_sn13 * vn3_vnp2_sn8
                                 - vn1_vnp2_sn13 * vn3_vnp2_sn5 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn1_vnp2_sn13 * vn2_vnp2_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_8#7: vnp2
                                 + [ - vn3_vnp2_sn19 * vn2_vnp2_sn12
                                 - vn3_vnp2_sn8 * vn2_vnp2_sn12
                                 - vn3_vnp2_sn5 * vn2_vnp2_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_9#8: vnp3
                                 + [ - vn3_vnp3_sn7 * vn1_vnp3_sn2
                                 - vn1_vnp3_sn2 * vn3_vnp3_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_10#9: vnp3
                                 + [ - vn1_vnp3_sn2 * vn2_vnp3_sn1
                                 - vn1_vnp3_sn2 * vn2_vnp3_sn6
                                 - vn1_vnp3_sn2 * vn2_vnp3_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_11#10: vnp3
                                 + [ - vn3_vnp3_sn7 * vn2_vnp3_sn1
                                 - vn3_vnp3_sn7 * vn2_vnp3_sn6
                                 - vn3_vnp3_sn7 * vn2_vnp3_sn8
                                 - vn3_vnp3_sn3 * vn2_vnp3_sn1
                                 - vn3_vnp3_sn3 * vn2_vnp3_sn6
                                 - vn3_vnp3_sn3 * vn2_vnp3_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_12#11: vnp4
                                 + [ - vn3_vnp4_sn10 * vn1_vnp4_sn4
                                 - vn3_vnp4_sn10 * vn1_vnp4_sn14
                                 - vn3_vnp4_sn10 * vn1_vnp4_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_13#12: vnp4
                                 + [ - vn4_vnp4_sn7 * vn2_vnp4_sn19
                                 - vn4_vnp4_sn7 * vn2_vnp4_sn15
                                 - vn4_vnp4_sn7 * vn2_vnp4_sn8
                                 - vn2_vnp4_sn19 * vn4_vnp4_sn2
                                 - vn2_vnp4_sn19 * vn4_vnp4_sn16
                                 - vn2_vnp4_sn15 * vn4_vnp4_sn2
                                 - vn2_vnp4_sn15 * vn4_vnp4_sn16
                                 - vn2_vnp4_sn8 * vn4_vnp4_sn2
                                 - vn2_vnp4_sn8 * vn4_vnp4_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_14#13: vnp4
                                 + [ - vn3_vnp4_sn10 * vn4_vnp4_sn7
                                 - vn3_vnp4_sn10 * vn4_vnp4_sn2
                                 - vn3_vnp4_sn10 * vn4_vnp4_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_15#14: vnp4
                                 + [ - vn1_vnp4_sn4 * vn4_vnp4_sn7
                                 - vn1_vnp4_sn4 * vn4_vnp4_sn2
                                 - vn1_vnp4_sn4 * vn4_vnp4_sn16
                                 - vn1_vnp4_sn14 * vn4_vnp4_sn7
                                 - vn1_vnp4_sn14 * vn4_vnp4_sn2
                                 - vn1_vnp4_sn14 * vn4_vnp4_sn16
                                 - vn1_vnp4_sn17 * vn4_vnp4_sn7
                                 - vn1_vnp4_sn17 * vn4_vnp4_sn2
                                 - vn1_vnp4_sn17 * vn4_vnp4_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_16#15: vnp5
                                 + [ - vn3_vnp5_sn2 * vn1_vnp5_sn5
                                 - vn3_vnp5_sn2 * vn1_vnp5_sn13
                                 - vn3_vnp5_sn2 * vn1_vnp5_sn14
                                 - vn1_vnp5_sn5 * vn3_vnp5_sn3
                                 - vn1_vnp5_sn13 * vn3_vnp5_sn3
                                 - vn1_vnp5_sn14 * vn3_vnp5_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_17#16: vnp5
                                 + [ - vn4_vnp5_sn16 * vn2_vnp5_sn7
                                 - vn4_vnp5_sn16 * vn2_vnp5_sn8
                                 - vn2_vnp5_sn7 * vn4_vnp5_sn20
                                 - vn2_vnp5_sn8 * vn4_vnp5_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_18#17: vnp5
                                 + [ - vn3_vnp5_sn2 * vn4_vnp5_sn16
                                 - vn3_vnp5_sn2 * vn4_vnp5_sn20
                                 - vn3_vnp5_sn3 * vn4_vnp5_sn16
                                 - vn3_vnp5_sn3 * vn4_vnp5_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_19#18: vnp5
                                 + [ - vn1_vnp5_sn5 * vn2_vnp5_sn7
                                 - vn1_vnp5_sn5 * vn2_vnp5_sn8
                                 - vn1_vnp5_sn13 * vn2_vnp5_sn7
                                 - vn1_vnp5_sn13 * vn2_vnp5_sn8
                                 - vn1_vnp5_sn14 * vn2_vnp5_sn7
                                 - vn1_vnp5_sn14 * vn2_vnp5_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_20#19: vnp6
                                 + [ - vn2_vnp6_sn11 * vn1_vnp6_sn15
                                 - vn2_vnp6_sn11 * vn1_vnp6_sn14
                                 - vn2_vnp6_sn11 * vn1_vnp6_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_21#20: vnp6
                                 + [ - vn2_vnp6_sn11 * vn3_vnp6_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_22#21: vnp6
                                 + [ - vn1_vnp6_sn15 * vn3_vnp6_sn7
                                 - vn1_vnp6_sn14 * vn3_vnp6_sn7
                                 - vn1_vnp6_sn8 * vn3_vnp6_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_23#22: vnp6
                                 + [ - vn1_vnp6_sn15 * vn4_vnp6_sn3
                                 - vn1_vnp6_sn15 * vn4_vnp6_sn19
                                 - vn1_vnp6_sn15 * vn4_vnp6_sn6
                                 - vn1_vnp6_sn14 * vn4_vnp6_sn3
                                 - vn1_vnp6_sn14 * vn4_vnp6_sn19
                                 - vn1_vnp6_sn14 * vn4_vnp6_sn6
                                 - vn1_vnp6_sn8 * vn4_vnp6_sn3
                                 - vn1_vnp6_sn8 * vn4_vnp6_sn19
                                 - vn1_vnp6_sn8 * vn4_vnp6_sn6 ] <= 0
 q24#23:                         - 1278 vnp1 - 583 vnp2 - 644 vnp3 - 424 vnp4
                                 - 1237 vnp5 - 1399 vnp6
                                 + [ 77 vn3_vnp1_sn20 * vn1_vnp1_sn1
                                 + 97 vn3_vnp1_sn20 * vn2_vnp1_sn2
                                 + 126 vn3_vnp1_sn20 * vn4_vnp1_sn9
                                 + 95 vn1_vnp1_sn1 * vn3_vnp1_sn10
                                 + 49 vn1_vnp1_sn1 * vn4_vnp1_sn9
                                 + 87 vn3_vnp1_sn10 * vn2_vnp1_sn2
                                 + 84 vn3_vnp1_sn10 * vn4_vnp1_sn9
                                 + 44 vn2_vnp1_sn2 * vn4_vnp1_sn9
                                 + 270 vn3_vnp2_sn19 * vn1_vnp2_sn13
                                 + 56 vn3_vnp2_sn19 * vn2_vnp2_sn12
                                 + 265 vn1_vnp2_sn13 * vn3_vnp2_sn8
                                 + 113 vn1_vnp2_sn13 * vn3_vnp2_sn5
                                 + 51 vn1_vnp2_sn13 * vn2_vnp2_sn12
                                 + 55 vn3_vnp2_sn8 * vn2_vnp2_sn12
                                 + 15 vn3_vnp2_sn5 * vn2_vnp2_sn12
                                 + 30 vn3_vnp3_sn7 * vn1_vnp3_sn2
                                 + 16 vn3_vnp3_sn7 * vn2_vnp3_sn1
                                 + 111 vn3_vnp3_sn7 * vn2_vnp3_sn6
                                 + 47 vn3_vnp3_sn7 * vn2_vnp3_sn8
                                 + 40 vn1_vnp3_sn2 * vn3_vnp3_sn3
                                 + 34 vn1_vnp3_sn2 * vn2_vnp3_sn1
                                 + 137 vn1_vnp3_sn2 * vn2_vnp3_sn6
                                 + 131 vn1_vnp3_sn2 * vn2_vnp3_sn8
                                 + 28 vn3_vnp3_sn3 * vn2_vnp3_sn1
                                 + 39 vn3_vnp3_sn3 * vn2_vnp3_sn6
                                 + 39 vn3_vnp3_sn3 * vn2_vnp3_sn8
                                 + 172 vn3_vnp4_sn10 * vn1_vnp4_sn4
                                 + 28 vn3_vnp4_sn10 * vn1_vnp4_sn14
                                 + 180 vn3_vnp4_sn10 * vn1_vnp4_sn17
                                 + 69 vn3_vnp4_sn10 * vn4_vnp4_sn7
                                 + 70 vn3_vnp4_sn10 * vn4_vnp4_sn2
                                 + 39 vn3_vnp4_sn10 * vn4_vnp4_sn16
                                 + 23 vn1_vnp4_sn4 * vn4_vnp4_sn7
                                 + 34 vn1_vnp4_sn4 * vn4_vnp4_sn2
                                 + 15 vn1_vnp4_sn4 * vn4_vnp4_sn16
                                 + 59 vn1_vnp4_sn14 * vn4_vnp4_sn7
                                 + 53 vn1_vnp4_sn14 * vn4_vnp4_sn2
                                 + 27 vn1_vnp4_sn14 * vn4_vnp4_sn16
                                 + 44 vn1_vnp4_sn17 * vn4_vnp4_sn7
                                 + 52 vn1_vnp4_sn17 * vn4_vnp4_sn2
                                 + 15 vn1_vnp4_sn17 * vn4_vnp4_sn16
                                 + 41 vn4_vnp4_sn7 * vn2_vnp4_sn19
                                 + 136 vn4_vnp4_sn7 * vn2_vnp4_sn15
                                 + 68 vn4_vnp4_sn7 * vn2_vnp4_sn8
                                 + 71 vn2_vnp4_sn19 * vn4_vnp4_sn2
                                 + 74 vn2_vnp4_sn19 * vn4_vnp4_sn16
                                 + 160 vn2_vnp4_sn15 * vn4_vnp4_sn2
                                 + 37 vn2_vnp4_sn15 * vn4_vnp4_sn16
                                 + 95 vn2_vnp4_sn8 * vn4_vnp4_sn2
                                 + 17 vn2_vnp4_sn8 * vn4_vnp4_sn16
                                 + 128 vn3_vnp5_sn2 * vn1_vnp5_sn5
                                 + 237 vn3_vnp5_sn2 * vn1_vnp5_sn13
                                 + 197 vn3_vnp5_sn2 * vn1_vnp5_sn14
                                 + 131 vn3_vnp5_sn2 * vn4_vnp5_sn16
                                 + 122 vn3_vnp5_sn2 * vn4_vnp5_sn20
                                 + 61 vn1_vnp5_sn5 * vn3_vnp5_sn3
                                 + 136 vn1_vnp5_sn5 * vn2_vnp5_sn7
                                 + 67 vn1_vnp5_sn5 * vn2_vnp5_sn8
                                 + 170 vn1_vnp5_sn13 * vn3_vnp5_sn3
                                 + 143 vn1_vnp5_sn13 * vn2_vnp5_sn7
                                 + 152 vn1_vnp5_sn13 * vn2_vnp5_sn8
                                 + 130 vn1_vnp5_sn14 * vn3_vnp5_sn3
                                 + 122 vn1_vnp5_sn14 * vn2_vnp5_sn7
                                 + 59 vn1_vnp5_sn14 * vn2_vnp5_sn8
                                 + 92 vn3_vnp5_sn3 * vn4_vnp5_sn16
                                 + 146 vn3_vnp5_sn3 * vn4_vnp5_sn20
                                 + 38 vn4_vnp5_sn16 * vn2_vnp5_sn7
                                 + 6 vn4_vnp5_sn16 * vn2_vnp5_sn8
                                 + 53 vn2_vnp5_sn7 * vn4_vnp5_sn20
                                 + 75 vn2_vnp5_sn8 * vn4_vnp5_sn20
                                 + 95 vn2_vnp6_sn11 * vn1_vnp6_sn15
                                 + 57 vn2_vnp6_sn11 * vn1_vnp6_sn14
                                 + 167 vn2_vnp6_sn11 * vn1_vnp6_sn8
                                 + 217 vn2_vnp6_sn11 * vn3_vnp6_sn7
                                 + 102 vn1_vnp6_sn15 * vn3_vnp6_sn7
                                 + 158 vn1_vnp6_sn15 * vn4_vnp6_sn3
                                 + 118 vn1_vnp6_sn15 * vn4_vnp6_sn19
                                 + 172 vn1_vnp6_sn15 * vn4_vnp6_sn6
                                 + 132 vn1_vnp6_sn14 * vn3_vnp6_sn7
                                 + 118 vn1_vnp6_sn14 * vn4_vnp6_sn3
                                 + 190 vn1_vnp6_sn14 * vn4_vnp6_sn19
                                 + 84 vn1_vnp6_sn14 * vn4_vnp6_sn6
                                 + 78 vn1_vnp6_sn8 * vn3_vnp6_sn7
                                 + 78 vn1_vnp6_sn8 * vn4_vnp6_sn3
                                 + 122 vn1_vnp6_sn8 * vn4_vnp6_sn19
                                 + 136 vn1_vnp6_sn8 * vn4_vnp6_sn6 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: 3 vn2_vnp3_sn1 <= 8
 CPU_capacity_of_substrate_node_2#1: 3 vn2_vnp1_sn2 + 3 vn1_vnp3_sn2
                                 + 3 vn4_vnp4_sn2 + 3 vn3_vnp5_sn2 <= 8
 CPU_capacity_of_substrate_node_3#2: 3 vn3_vnp5_sn3 + 3 vn4_vnp6_sn3 <= 5
 CPU_capacity_of_substrate_node_4#3: vn1_vnp4_sn4 <= 8
 CPU_capacity_of_substrate_node_5#4: 3 vn3_vnp2_sn5 + vn1_vnp5_sn5 <= 8
 CPU_capacity_of_substrate_node_6#5: 3 vn2_vnp3_sn6 + 3 vn4_vnp6_sn6 <= 8
 CPU_capacity_of_substrate_node_7#6: 3 vn4_vnp4_sn7 + 3 vn3_vnp6_sn7 <= 5
 CPU_capacity_of_substrate_node_8#7: 3 vn3_vnp2_sn8 + 3 vn2_vnp3_sn8
                                 + vn2_vnp4_sn8 + 3 vn1_vnp6_sn8 <= 7
 CPU_capacity_of_substrate_node_9#8: 3 vn4_vnp1_sn9 <= 8
 CPU_capacity_of_substrate_node_10#9: 3 vn3_vnp1_sn10 + 3 vn3_vnp4_sn10 <= 8
 CPU_capacity_of_substrate_node_11#10: 3 vn2_vnp6_sn11 <= 8
 CPU_capacity_of_substrate_node_12#11: vn2_vnp2_sn12 <= 8
 CPU_capacity_of_substrate_node_13#12: vn1_vnp2_sn13 + vn1_vnp5_sn13 <= 8
 CPU_capacity_of_substrate_node_14#13: vn1_vnp4_sn14 + vn1_vnp5_sn14
                                 + 3 vn1_vnp6_sn14 <= 8
 CPU_capacity_of_substrate_node_15#14: vn2_vnp4_sn15 + 3 vn1_vnp6_sn15 <= 2
 CPU_capacity_of_substrate_node_16#15: 3 vn4_vnp4_sn16 + vn4_vnp5_sn16 <= 8
 CPU_capacity_of_substrate_node_17#16: vn1_vnp4_sn17 <= 8
 CPU_capacity_of_substrate_node_19#17: 3 vn3_vnp2_sn19 + vn2_vnp4_sn19
                                 + 3 vn4_vnp6_sn19 <= 2
 CPU_capacity_of_substrate_node_20#18: 3 vn3_vnp1_sn20 + vn4_vnp5_sn20 <= 8
Bounds
 0 <= vnp1 <= 1
 0 <= vn3_vnp1_sn20 <= 1
 0 <= vn1_vnp1_sn1 <= 1
 0 <= vn3_vnp1_sn10 <= 1
 0 <= vn2_vnp1_sn2 <= 1
 0 <= vn4_vnp1_sn9 <= 1
 0 <= vnp2 <= 1
 0 <= vn3_vnp2_sn19 <= 1
 0 <= vn1_vnp2_sn13 <= 1
 0 <= vn3_vnp2_sn8 <= 1
 0 <= vn3_vnp2_sn5 <= 1
 0 <= vn2_vnp2_sn12 <= 1
 0 <= vnp3 <= 1
 0 <= vn3_vnp3_sn7 <= 1
 0 <= vn1_vnp3_sn2 <= 1
 0 <= vn3_vnp3_sn3 <= 1
 0 <= vn2_vnp3_sn1 <= 1
 0 <= vn2_vnp3_sn6 <= 1
 0 <= vn2_vnp3_sn8 <= 1
 0 <= vnp4 <= 1
 0 <= vn3_vnp4_sn10 <= 1
 0 <= vn1_vnp4_sn4 <= 1
 0 <= vn1_vnp4_sn14 <= 1
 0 <= vn1_vnp4_sn17 <= 1
 0 <= vn4_vnp4_sn7 <= 1
 0 <= vn2_vnp4_sn19 <= 1
 0 <= vn2_vnp4_sn15 <= 1
 0 <= vn2_vnp4_sn8 <= 1
 0 <= vn4_vnp4_sn2 <= 1
 0 <= vn4_vnp4_sn16 <= 1
 0 <= vnp5 <= 1
 0 <= vn3_vnp5_sn2 <= 1
 0 <= vn1_vnp5_sn5 <= 1
 0 <= vn1_vnp5_sn13 <= 1
 0 <= vn1_vnp5_sn14 <= 1
 0 <= vn3_vnp5_sn3 <= 1
 0 <= vn4_vnp5_sn16 <= 1
 0 <= vn2_vnp5_sn7 <= 1
 0 <= vn2_vnp5_sn8 <= 1
 0 <= vn4_vnp5_sn20 <= 1
 0 <= vnp6 <= 1
 0 <= vn2_vnp6_sn11 <= 1
 0 <= vn1_vnp6_sn15 <= 1
 0 <= vn1_vnp6_sn14 <= 1
 0 <= vn1_vnp6_sn8 <= 1
 0 <= vn3_vnp6_sn7 <= 1
 0 <= vn4_vnp6_sn3 <= 1
 0 <= vn4_vnp6_sn19 <= 1
 0 <= vn4_vnp6_sn6 <= 1
Binaries
 vnp1  vn3_vnp1_sn20  vn1_vnp1_sn1  vn3_vnp1_sn10  vn2_vnp1_sn2  vn4_vnp1_sn9 
 vnp2  vn3_vnp2_sn19  vn1_vnp2_sn13  vn3_vnp2_sn8  vn3_vnp2_sn5  vn2_vnp2_sn12 
 vnp3  vn3_vnp3_sn7  vn1_vnp3_sn2  vn3_vnp3_sn3  vn2_vnp3_sn1  vn2_vnp3_sn6 
 vn2_vnp3_sn8  vnp4  vn3_vnp4_sn10  vn1_vnp4_sn4  vn1_vnp4_sn14  vn1_vnp4_sn17 
 vn4_vnp4_sn7  vn2_vnp4_sn19  vn2_vnp4_sn15  vn2_vnp4_sn8  vn4_vnp4_sn2 
 vn4_vnp4_sn16  vnp5  vn3_vnp5_sn2  vn1_vnp5_sn5  vn1_vnp5_sn13  vn1_vnp5_sn14 
 vn3_vnp5_sn3  vn4_vnp5_sn16  vn2_vnp5_sn7  vn2_vnp5_sn8  vn4_vnp5_sn20  vnp6 
 vn2_vnp6_sn11  vn1_vnp6_sn15  vn1_vnp6_sn14  vn1_vnp6_sn8  vn3_vnp6_sn7 
 vn4_vnp6_sn3  vn4_vnp6_sn19  vn4_vnp6_sn6 
End
