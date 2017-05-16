\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1287 vnp1 + 357 vnp2 + 1364 vnp3 + 1268 vnp4 + 1002 vnp5
      + [ - 112 vn3_vnp1_sn2 * vn1_vnp1_sn9 - 210 vn3_vnp1_sn2 * vn4_vnp1_sn20
      - 156 vn3_vnp1_sn2 * vn2_vnp1_sn16 - 194 vn3_vnp1_sn2 * vn2_vnp1_sn17
      - 424 vn1_vnp1_sn9 * vn4_vnp1_sn20 - 264 vn4_vnp1_sn20 * vn2_vnp1_sn16
      - 116 vn4_vnp1_sn20 * vn2_vnp1_sn17 - 204 vn2_vnp2_sn13 * vn1_vnp2_sn19
      - 162 vn2_vnp2_sn13 * vn1_vnp2_sn2 - 104 vn2_vnp2_sn13 * vn3_vnp2_sn18
      - 40 vn2_vnp2_sn13 * vn3_vnp2_sn6 - 44 vn2_vnp2_sn13 * vn3_vnp2_sn16
      - 164 vn1_vnp2_sn19 * vn2_vnp2_sn15 - 106 vn1_vnp2_sn19 * vn2_vnp2_sn9
      - 36 vn1_vnp2_sn19 * vn3_vnp2_sn18 - 210 vn1_vnp2_sn19 * vn3_vnp2_sn6
      - 192 vn1_vnp2_sn19 * vn3_vnp2_sn16 - 210 vn1_vnp2_sn2 * vn2_vnp2_sn15
      - 64 vn1_vnp2_sn2 * vn2_vnp2_sn9 - 190 vn1_vnp2_sn2 * vn3_vnp2_sn18
      - 148 vn1_vnp2_sn2 * vn3_vnp2_sn6 - 184 vn1_vnp2_sn2 * vn3_vnp2_sn16
      - 84 vn2_vnp2_sn15 * vn3_vnp2_sn18 - 60 vn2_vnp2_sn15 * vn3_vnp2_sn6
      - 24 vn2_vnp2_sn15 * vn3_vnp2_sn16 - 34 vn2_vnp2_sn9 * vn3_vnp2_sn18
      - 52 vn2_vnp2_sn9 * vn3_vnp2_sn6 - 48 vn2_vnp2_sn9 * vn3_vnp2_sn16
      - 392 vn2_vnp3_sn17 * vn1_vnp3_sn6 - 78 vn2_vnp3_sn17 * vn4_vnp3_sn9
      - 94 vn2_vnp3_sn17 * vn4_vnp3_sn11 - 50 vn2_vnp3_sn17 * vn4_vnp3_sn8
      - 314 vn1_vnp3_sn6 * vn2_vnp3_sn18 - 220 vn1_vnp3_sn6 * vn2_vnp3_sn1
      - 120 vn1_vnp3_sn6 * vn4_vnp3_sn9 - 168 vn1_vnp3_sn6 * vn4_vnp3_sn11
      - 162 vn1_vnp3_sn6 * vn4_vnp3_sn8 - 122 vn1_vnp3_sn6 * vn3_vnp3_sn5
      - 290 vn1_vnp3_sn6 * vn3_vnp3_sn19 - 48 vn2_vnp3_sn18 * vn4_vnp3_sn9
      - 160 vn2_vnp3_sn18 * vn4_vnp3_sn11 - 20 vn2_vnp3_sn18 * vn4_vnp3_sn8
      - 46 vn2_vnp3_sn1 * vn4_vnp3_sn9 - 226 vn2_vnp3_sn1 * vn4_vnp3_sn11
      - 126 vn2_vnp3_sn1 * vn4_vnp3_sn8 - 88 vn4_vnp3_sn9 * vn3_vnp3_sn5
      - 368 vn4_vnp3_sn9 * vn3_vnp3_sn19 - 168 vn4_vnp3_sn11 * vn3_vnp3_sn5
      - 288 vn4_vnp3_sn11 * vn3_vnp3_sn19 - 158 vn4_vnp3_sn8 * vn3_vnp3_sn5
      - 108 vn4_vnp3_sn8 * vn3_vnp3_sn19 - 296 vn3_vnp4_sn16 * vn1_vnp4_sn7
      - 54 vn3_vnp4_sn16 * vn2_vnp4_sn15 - 156 vn3_vnp4_sn16 * vn2_vnp4_sn2
      - 352 vn3_vnp4_sn16 * vn4_vnp4_sn19 - 62 vn1_vnp4_sn7 * vn3_vnp4_sn1
      - 126 vn1_vnp4_sn7 * vn2_vnp4_sn15 - 54 vn1_vnp4_sn7 * vn2_vnp4_sn2
      - 66 vn1_vnp4_sn7 * vn4_vnp4_sn19 - 240 vn3_vnp4_sn1 * vn2_vnp4_sn15
      - 94 vn3_vnp4_sn1 * vn2_vnp4_sn2 - 178 vn3_vnp4_sn1 * vn4_vnp4_sn19
      - 176 vn2_vnp4_sn15 * vn4_vnp4_sn19 - 134 vn2_vnp4_sn2 * vn4_vnp4_sn19
      - 68 vn2_vnp5_sn13 * vn1_vnp5_sn16 - 330 vn2_vnp5_sn13 * vn3_vnp5_sn14
      - 94 vn2_vnp5_sn13 * vn4_vnp5_sn10 - 116 vn2_vnp5_sn13 * vn4_vnp5_sn4
      - 104 vn1_vnp5_sn16 * vn2_vnp5_sn19 - 48 vn1_vnp5_sn16 * vn2_vnp5_sn15
      - 108 vn1_vnp5_sn16 * vn3_vnp5_sn14 - 122 vn1_vnp5_sn16 * vn4_vnp5_sn10
      - 80 vn1_vnp5_sn16 * vn4_vnp5_sn4 - 330 vn2_vnp5_sn19 * vn3_vnp5_sn14
      - 154 vn2_vnp5_sn19 * vn4_vnp5_sn10 - 96 vn2_vnp5_sn19 * vn4_vnp5_sn4
      - 162 vn2_vnp5_sn15 * vn3_vnp5_sn14 - 78 vn2_vnp5_sn15 * vn4_vnp5_sn10
      - 84 vn2_vnp5_sn15 * vn4_vnp5_sn4 - 80 vn3_vnp5_sn14 * vn4_vnp5_sn10
      - 66 vn3_vnp5_sn14 * vn4_vnp5_sn4 ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn9 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn16
                                 + vn2_vnp1_sn17 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn2 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn20 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn19
                                 + vn1_vnp2_sn2 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn13
                                 + vn2_vnp2_sn15 + vn2_vnp2_sn9 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn18
                                 + vn3_vnp2_sn6 + vn3_vnp2_sn16 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#7: - vnp3 + vn1_vnp3_sn6 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#8: - vnp3 + vn2_vnp3_sn17
                                 + vn2_vnp3_sn18 + vn2_vnp3_sn1 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#9: - vnp3 + vn3_vnp3_sn5
                                 + vn3_vnp3_sn19 <= 0
 _Embedding_clash_const_of_vnode4_vnp_3#10: - vnp3 + vn4_vnp3_sn9
                                 + vn4_vnp3_sn11 + vn4_vnp3_sn8 <= 0
 _Embedding_clash_const_of_vnode1_vnp_4#11: - vnp4 + vn1_vnp4_sn7 <= 0
 _Embedding_clash_const_of_vnode2_vnp_4#12: - vnp4 + vn2_vnp4_sn15
                                 + vn2_vnp4_sn2 <= 0
 _Embedding_clash_const_of_vnode3_vnp_4#13: - vnp4 + vn3_vnp4_sn16
                                 + vn3_vnp4_sn1 <= 0
 _Embedding_clash_const_of_vnode4_vnp_4#14: - vnp4 + vn4_vnp4_sn19 <= 0
 _Embedding_clash_const_of_vnode1_vnp_5#15: - vnp5 + vn1_vnp5_sn16 <= 0
 _Embedding_clash_const_of_vnode2_vnp_5#16: - vnp5 + vn2_vnp5_sn13
                                 + vn2_vnp5_sn19 + vn2_vnp5_sn15 <= 0
 _Embedding_clash_const_of_vnode3_vnp_5#17: - vnp5 + vn3_vnp5_sn14 <= 0
 _Embedding_clash_const_of_vnode4_vnp_5#18: - vnp5 + vn4_vnp5_sn10
                                 + vn4_vnp5_sn4 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn3_vnp1_sn2 * vn1_vnp1_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn4_vnp1_sn20 * vn2_vnp1_sn16
                                 - vn4_vnp1_sn20 * vn2_vnp1_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn3_vnp1_sn2 * vn2_vnp1_sn16
                                 - vn3_vnp1_sn2 * vn2_vnp1_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn1_vnp1_sn9 * vn4_vnp1_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_5#4: vnp1
                                 + [ - vn3_vnp1_sn2 * vn4_vnp1_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn2_vnp2_sn13 * vn1_vnp2_sn19
                                 - vn2_vnp2_sn13 * vn1_vnp2_sn2
                                 - vn1_vnp2_sn19 * vn2_vnp2_sn15
                                 - vn1_vnp2_sn19 * vn2_vnp2_sn9
                                 - vn1_vnp2_sn2 * vn2_vnp2_sn15
                                 - vn1_vnp2_sn2 * vn2_vnp2_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn2_vnp2_sn13 * vn3_vnp2_sn18
                                 - vn2_vnp2_sn13 * vn3_vnp2_sn6
                                 - vn2_vnp2_sn13 * vn3_vnp2_sn16
                                 - vn2_vnp2_sn15 * vn3_vnp2_sn18
                                 - vn2_vnp2_sn15 * vn3_vnp2_sn6
                                 - vn2_vnp2_sn15 * vn3_vnp2_sn16
                                 - vn2_vnp2_sn9 * vn3_vnp2_sn18
                                 - vn2_vnp2_sn9 * vn3_vnp2_sn6
                                 - vn2_vnp2_sn9 * vn3_vnp2_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_8#7: vnp2
                                 + [ - vn1_vnp2_sn19 * vn3_vnp2_sn18
                                 - vn1_vnp2_sn19 * vn3_vnp2_sn6
                                 - vn1_vnp2_sn19 * vn3_vnp2_sn16
                                 - vn1_vnp2_sn2 * vn3_vnp2_sn18
                                 - vn1_vnp2_sn2 * vn3_vnp2_sn6
                                 - vn1_vnp2_sn2 * vn3_vnp2_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_9#8: vnp3
                                 + [ - vn2_vnp3_sn17 * vn1_vnp3_sn6
                                 - vn1_vnp3_sn6 * vn2_vnp3_sn18
                                 - vn1_vnp3_sn6 * vn2_vnp3_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_10#9: vnp3
                                 + [ - vn2_vnp3_sn17 * vn4_vnp3_sn9
                                 - vn2_vnp3_sn17 * vn4_vnp3_sn11
                                 - vn2_vnp3_sn17 * vn4_vnp3_sn8
                                 - vn2_vnp3_sn18 * vn4_vnp3_sn9
                                 - vn2_vnp3_sn18 * vn4_vnp3_sn11
                                 - vn2_vnp3_sn18 * vn4_vnp3_sn8
                                 - vn2_vnp3_sn1 * vn4_vnp3_sn9
                                 - vn2_vnp3_sn1 * vn4_vnp3_sn11
                                 - vn2_vnp3_sn1 * vn4_vnp3_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_11#10: vnp3
                                 + [ - vn1_vnp3_sn6 * vn3_vnp3_sn5
                                 - vn1_vnp3_sn6 * vn3_vnp3_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_12#11: vnp3
                                 + [ - vn4_vnp3_sn9 * vn3_vnp3_sn5
                                 - vn4_vnp3_sn9 * vn3_vnp3_sn19
                                 - vn4_vnp3_sn11 * vn3_vnp3_sn5
                                 - vn4_vnp3_sn11 * vn3_vnp3_sn19
                                 - vn4_vnp3_sn8 * vn3_vnp3_sn5
                                 - vn4_vnp3_sn8 * vn3_vnp3_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_13#12: vnp3
                                 + [ - vn1_vnp3_sn6 * vn4_vnp3_sn9
                                 - vn1_vnp3_sn6 * vn4_vnp3_sn11
                                 - vn1_vnp3_sn6 * vn4_vnp3_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_14#13: vnp4
                                 + [ - vn3_vnp4_sn16 * vn1_vnp4_sn7
                                 - vn1_vnp4_sn7 * vn3_vnp4_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_15#14: vnp4
                                 + [ - vn3_vnp4_sn16 * vn2_vnp4_sn15
                                 - vn3_vnp4_sn16 * vn2_vnp4_sn2
                                 - vn3_vnp4_sn1 * vn2_vnp4_sn15
                                 - vn3_vnp4_sn1 * vn2_vnp4_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_16#15: vnp4
                                 + [ - vn3_vnp4_sn16 * vn4_vnp4_sn19
                                 - vn3_vnp4_sn1 * vn4_vnp4_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_17#16: vnp4
                                 + [ - vn1_vnp4_sn7 * vn4_vnp4_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_18#17: vnp4
                                 + [ - vn1_vnp4_sn7 * vn2_vnp4_sn15
                                 - vn1_vnp4_sn7 * vn2_vnp4_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_19#18: vnp4
                                 + [ - vn2_vnp4_sn15 * vn4_vnp4_sn19
                                 - vn2_vnp4_sn2 * vn4_vnp4_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_20#19: vnp5
                                 + [ - vn2_vnp5_sn13 * vn1_vnp5_sn16
                                 - vn1_vnp5_sn16 * vn2_vnp5_sn19
                                 - vn1_vnp5_sn16 * vn2_vnp5_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_21#20: vnp5
                                 + [ - vn2_vnp5_sn13 * vn3_vnp5_sn14
                                 - vn2_vnp5_sn19 * vn3_vnp5_sn14
                                 - vn2_vnp5_sn15 * vn3_vnp5_sn14 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_22#21: vnp5
                                 + [ - vn1_vnp5_sn16 * vn3_vnp5_sn14 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_23#22: vnp5
                                 + [ - vn2_vnp5_sn13 * vn4_vnp5_sn10
                                 - vn2_vnp5_sn13 * vn4_vnp5_sn4
                                 - vn2_vnp5_sn19 * vn4_vnp5_sn10
                                 - vn2_vnp5_sn19 * vn4_vnp5_sn4
                                 - vn2_vnp5_sn15 * vn4_vnp5_sn10
                                 - vn2_vnp5_sn15 * vn4_vnp5_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_24#23: vnp5
                                 + [ - vn3_vnp5_sn14 * vn4_vnp5_sn10
                                 - vn3_vnp5_sn14 * vn4_vnp5_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_25#24: vnp5
                                 + [ - vn1_vnp5_sn16 * vn4_vnp5_sn10
                                 - vn1_vnp5_sn16 * vn4_vnp5_sn4 ] <= 0
 q26#25:                         - 1287 vnp1 - 357 vnp2 - 1364 vnp3 - 1268 vnp4
                                 - 1002 vnp5 + [ 56 vn3_vnp1_sn2 * vn1_vnp1_sn9
                                 + 105 vn3_vnp1_sn2 * vn4_vnp1_sn20
                                 + 78 vn3_vnp1_sn2 * vn2_vnp1_sn16
                                 + 97 vn3_vnp1_sn2 * vn2_vnp1_sn17
                                 + 212 vn1_vnp1_sn9 * vn4_vnp1_sn20
                                 + 132 vn4_vnp1_sn20 * vn2_vnp1_sn16
                                 + 58 vn4_vnp1_sn20 * vn2_vnp1_sn17
                                 + 102 vn2_vnp2_sn13 * vn1_vnp2_sn19
                                 + 81 vn2_vnp2_sn13 * vn1_vnp2_sn2
                                 + 52 vn2_vnp2_sn13 * vn3_vnp2_sn18
                                 + 20 vn2_vnp2_sn13 * vn3_vnp2_sn6
                                 + 22 vn2_vnp2_sn13 * vn3_vnp2_sn16
                                 + 82 vn1_vnp2_sn19 * vn2_vnp2_sn15
                                 + 53 vn1_vnp2_sn19 * vn2_vnp2_sn9
                                 + 18 vn1_vnp2_sn19 * vn3_vnp2_sn18
                                 + 105 vn1_vnp2_sn19 * vn3_vnp2_sn6
                                 + 96 vn1_vnp2_sn19 * vn3_vnp2_sn16
                                 + 105 vn1_vnp2_sn2 * vn2_vnp2_sn15
                                 + 32 vn1_vnp2_sn2 * vn2_vnp2_sn9
                                 + 95 vn1_vnp2_sn2 * vn3_vnp2_sn18
                                 + 74 vn1_vnp2_sn2 * vn3_vnp2_sn6
                                 + 92 vn1_vnp2_sn2 * vn3_vnp2_sn16
                                 + 42 vn2_vnp2_sn15 * vn3_vnp2_sn18
                                 + 30 vn2_vnp2_sn15 * vn3_vnp2_sn6
                                 + 12 vn2_vnp2_sn15 * vn3_vnp2_sn16
                                 + 17 vn2_vnp2_sn9 * vn3_vnp2_sn18
                                 + 26 vn2_vnp2_sn9 * vn3_vnp2_sn6
                                 + 24 vn2_vnp2_sn9 * vn3_vnp2_sn16
                                 + 196 vn2_vnp3_sn17 * vn1_vnp3_sn6
                                 + 39 vn2_vnp3_sn17 * vn4_vnp3_sn9
                                 + 47 vn2_vnp3_sn17 * vn4_vnp3_sn11
                                 + 25 vn2_vnp3_sn17 * vn4_vnp3_sn8
                                 + 157 vn1_vnp3_sn6 * vn2_vnp3_sn18
                                 + 110 vn1_vnp3_sn6 * vn2_vnp3_sn1
                                 + 60 vn1_vnp3_sn6 * vn4_vnp3_sn9
                                 + 84 vn1_vnp3_sn6 * vn4_vnp3_sn11
                                 + 81 vn1_vnp3_sn6 * vn4_vnp3_sn8
                                 + 61 vn1_vnp3_sn6 * vn3_vnp3_sn5
                                 + 145 vn1_vnp3_sn6 * vn3_vnp3_sn19
                                 + 24 vn2_vnp3_sn18 * vn4_vnp3_sn9
                                 + 80 vn2_vnp3_sn18 * vn4_vnp3_sn11
                                 + 10 vn2_vnp3_sn18 * vn4_vnp3_sn8
                                 + 23 vn2_vnp3_sn1 * vn4_vnp3_sn9
                                 + 113 vn2_vnp3_sn1 * vn4_vnp3_sn11
                                 + 63 vn2_vnp3_sn1 * vn4_vnp3_sn8
                                 + 44 vn4_vnp3_sn9 * vn3_vnp3_sn5
                                 + 184 vn4_vnp3_sn9 * vn3_vnp3_sn19
                                 + 84 vn4_vnp3_sn11 * vn3_vnp3_sn5
                                 + 144 vn4_vnp3_sn11 * vn3_vnp3_sn19
                                 + 79 vn4_vnp3_sn8 * vn3_vnp3_sn5
                                 + 54 vn4_vnp3_sn8 * vn3_vnp3_sn19
                                 + 148 vn3_vnp4_sn16 * vn1_vnp4_sn7
                                 + 27 vn3_vnp4_sn16 * vn2_vnp4_sn15
                                 + 78 vn3_vnp4_sn16 * vn2_vnp4_sn2
                                 + 176 vn3_vnp4_sn16 * vn4_vnp4_sn19
                                 + 31 vn1_vnp4_sn7 * vn3_vnp4_sn1
                                 + 63 vn1_vnp4_sn7 * vn2_vnp4_sn15
                                 + 27 vn1_vnp4_sn7 * vn2_vnp4_sn2
                                 + 33 vn1_vnp4_sn7 * vn4_vnp4_sn19
                                 + 120 vn3_vnp4_sn1 * vn2_vnp4_sn15
                                 + 47 vn3_vnp4_sn1 * vn2_vnp4_sn2
                                 + 89 vn3_vnp4_sn1 * vn4_vnp4_sn19
                                 + 88 vn2_vnp4_sn15 * vn4_vnp4_sn19
                                 + 67 vn2_vnp4_sn2 * vn4_vnp4_sn19
                                 + 34 vn2_vnp5_sn13 * vn1_vnp5_sn16
                                 + 165 vn2_vnp5_sn13 * vn3_vnp5_sn14
                                 + 47 vn2_vnp5_sn13 * vn4_vnp5_sn10
                                 + 58 vn2_vnp5_sn13 * vn4_vnp5_sn4
                                 + 52 vn1_vnp5_sn16 * vn2_vnp5_sn19
                                 + 24 vn1_vnp5_sn16 * vn2_vnp5_sn15
                                 + 54 vn1_vnp5_sn16 * vn3_vnp5_sn14
                                 + 61 vn1_vnp5_sn16 * vn4_vnp5_sn10
                                 + 40 vn1_vnp5_sn16 * vn4_vnp5_sn4
                                 + 165 vn2_vnp5_sn19 * vn3_vnp5_sn14
                                 + 77 vn2_vnp5_sn19 * vn4_vnp5_sn10
                                 + 48 vn2_vnp5_sn19 * vn4_vnp5_sn4
                                 + 81 vn2_vnp5_sn15 * vn3_vnp5_sn14
                                 + 39 vn2_vnp5_sn15 * vn4_vnp5_sn10
                                 + 42 vn2_vnp5_sn15 * vn4_vnp5_sn4
                                 + 40 vn3_vnp5_sn14 * vn4_vnp5_sn10
                                 + 33 vn3_vnp5_sn14 * vn4_vnp5_sn4 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: vn2_vnp3_sn1 + 3 vn3_vnp4_sn1 <= 8
 CPU_capacity_of_substrate_node_2#1: 3 vn3_vnp1_sn2 + vn1_vnp2_sn2
                                 + 3 vn2_vnp4_sn2 <= 2
 CPU_capacity_of_substrate_node_4#2: 3 vn4_vnp5_sn4 <= 1
 CPU_capacity_of_substrate_node_5#3: 3 vn3_vnp3_sn5 <= 8
 CPU_capacity_of_substrate_node_7#4: 3 vn1_vnp4_sn7 <= 2
 CPU_capacity_of_substrate_node_9#5: vn1_vnp1_sn9 + 3 vn2_vnp2_sn9 <= 8
 CPU_capacity_of_substrate_node_10#6: 3 vn4_vnp5_sn10 <= 4
 CPU_capacity_of_substrate_node_13#7: 3 vn2_vnp2_sn13 + 3 vn2_vnp5_sn13 <= 8
 CPU_capacity_of_substrate_node_15#8: 3 vn2_vnp2_sn15 + 3 vn2_vnp4_sn15
                                 + 3 vn2_vnp5_sn15 <= 8
 CPU_capacity_of_substrate_node_16#9: 3 vn2_vnp1_sn16 + 3 vn3_vnp4_sn16
                                 + 3 vn1_vnp5_sn16 <= 4
 CPU_capacity_of_substrate_node_17#10: 3 vn2_vnp1_sn17 + vn2_vnp3_sn17 <= 5
 CPU_capacity_of_substrate_node_18#11: vn2_vnp3_sn18 <= 7
 CPU_capacity_of_substrate_node_19#12: vn1_vnp2_sn19 + 3 vn3_vnp3_sn19
                                 + 3 vn4_vnp4_sn19 + 3 vn2_vnp5_sn19 <= 2
 CPU_capacity_of_substrate_node_20#13: 3 vn4_vnp1_sn20 <= 2
Bounds
 0 <= vnp1 <= 1
 0 <= vn3_vnp1_sn2 <= 1
 0 <= vn1_vnp1_sn9 <= 1
 0 <= vn4_vnp1_sn20 <= 1
 0 <= vn2_vnp1_sn16 <= 1
 0 <= vn2_vnp1_sn17 <= 1
 0 <= vnp2 <= 1
 0 <= vn2_vnp2_sn13 <= 1
 0 <= vn1_vnp2_sn19 <= 1
 0 <= vn1_vnp2_sn2 <= 1
 0 <= vn2_vnp2_sn15 <= 1
 0 <= vn2_vnp2_sn9 <= 1
 0 <= vn3_vnp2_sn18 <= 1
 0 <= vn3_vnp2_sn6 <= 1
 0 <= vn3_vnp2_sn16 <= 1
 0 <= vnp3 <= 1
 0 <= vn2_vnp3_sn17 <= 1
 0 <= vn1_vnp3_sn6 <= 1
 0 <= vn2_vnp3_sn18 <= 1
 0 <= vn2_vnp3_sn1 <= 1
 0 <= vn4_vnp3_sn9 <= 1
 0 <= vn4_vnp3_sn11 <= 1
 0 <= vn4_vnp3_sn8 <= 1
 0 <= vn3_vnp3_sn5 <= 1
 0 <= vn3_vnp3_sn19 <= 1
 0 <= vnp4 <= 1
 0 <= vn3_vnp4_sn16 <= 1
 0 <= vn1_vnp4_sn7 <= 1
 0 <= vn3_vnp4_sn1 <= 1
 0 <= vn2_vnp4_sn15 <= 1
 0 <= vn2_vnp4_sn2 <= 1
 0 <= vn4_vnp4_sn19 <= 1
 0 <= vnp5 <= 1
 0 <= vn2_vnp5_sn13 <= 1
 0 <= vn1_vnp5_sn16 <= 1
 0 <= vn2_vnp5_sn19 <= 1
 0 <= vn2_vnp5_sn15 <= 1
 0 <= vn3_vnp5_sn14 <= 1
 0 <= vn4_vnp5_sn10 <= 1
 0 <= vn4_vnp5_sn4 <= 1
Binaries
 vnp1  vn3_vnp1_sn2  vn1_vnp1_sn9  vn4_vnp1_sn20  vn2_vnp1_sn16  vn2_vnp1_sn17 
 vnp2  vn2_vnp2_sn13  vn1_vnp2_sn19  vn1_vnp2_sn2  vn2_vnp2_sn15  vn2_vnp2_sn9 
 vn3_vnp2_sn18  vn3_vnp2_sn6  vn3_vnp2_sn16  vnp3  vn2_vnp3_sn17  vn1_vnp3_sn6 
 vn2_vnp3_sn18  vn2_vnp3_sn1  vn4_vnp3_sn9  vn4_vnp3_sn11  vn4_vnp3_sn8 
 vn3_vnp3_sn5  vn3_vnp3_sn19  vnp4  vn3_vnp4_sn16  vn1_vnp4_sn7  vn3_vnp4_sn1 
 vn2_vnp4_sn15  vn2_vnp4_sn2  vn4_vnp4_sn19  vnp5  vn2_vnp5_sn13 
 vn1_vnp5_sn16  vn2_vnp5_sn19  vn2_vnp5_sn15  vn3_vnp5_sn14  vn4_vnp5_sn10 
 vn4_vnp5_sn4 
End
