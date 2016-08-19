\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 710 vnp1 + 1250 vnp2 + 746 vnp3 + 847 vnp4 + 472 vnp5
      + [ - 80 vn4_vnp1_sn12 * vn1_vnp1_sn11 - 12 vn4_vnp1_sn12 * vn2_vnp1_sn10
      - 124 vn4_vnp1_sn12 * vn2_vnp1_sn7 - 94 vn4_vnp1_sn12 * vn3_vnp1_sn6
      - 114 vn4_vnp1_sn12 * vn3_vnp1_sn9 - 164 vn4_vnp1_sn12 * vn3_vnp1_sn1
      - 116 vn1_vnp1_sn11 * vn4_vnp1_sn19 - 84 vn1_vnp1_sn11 * vn2_vnp1_sn10
      - 140 vn1_vnp1_sn11 * vn2_vnp1_sn7 - 214 vn1_vnp1_sn11 * vn3_vnp1_sn6
      - 204 vn1_vnp1_sn11 * vn3_vnp1_sn9 - 292 vn1_vnp1_sn11 * vn3_vnp1_sn1
      - 74 vn4_vnp1_sn19 * vn2_vnp1_sn10 - 66 vn4_vnp1_sn19 * vn2_vnp1_sn7
      - 308 vn4_vnp1_sn19 * vn3_vnp1_sn6 - 268 vn4_vnp1_sn19 * vn3_vnp1_sn9
      - 178 vn4_vnp1_sn19 * vn3_vnp1_sn1 - 224 vn4_vnp2_sn7 * vn1_vnp2_sn15
      - 130 vn4_vnp2_sn7 * vn1_vnp2_sn3 - 228 vn4_vnp2_sn7 * vn3_vnp2_sn2
      - 174 vn4_vnp2_sn7 * vn2_vnp2_sn18 - 438 vn4_vnp2_sn7 * vn2_vnp2_sn11
      - 248 vn4_vnp2_sn7 * vn3_vnp2_sn5 - 162 vn4_vnp2_sn7 * vn3_vnp2_sn8
      - 86 vn1_vnp2_sn15 * vn4_vnp2_sn17 - 256 vn1_vnp2_sn15 * vn3_vnp2_sn2
      - 338 vn1_vnp2_sn15 * vn2_vnp2_sn18 - 58 vn1_vnp2_sn15 * vn2_vnp2_sn11
      - 180 vn1_vnp2_sn15 * vn3_vnp2_sn5 - 110 vn1_vnp2_sn15 * vn3_vnp2_sn8
      - 216 vn1_vnp2_sn3 * vn4_vnp2_sn17 - 86 vn1_vnp2_sn3 * vn3_vnp2_sn2
      - 400 vn1_vnp2_sn3 * vn2_vnp2_sn18 - 336 vn1_vnp2_sn3 * vn2_vnp2_sn11
      - 106 vn1_vnp2_sn3 * vn3_vnp2_sn5 - 260 vn1_vnp2_sn3 * vn3_vnp2_sn8
      - 314 vn4_vnp2_sn17 * vn3_vnp2_sn2 - 212 vn4_vnp2_sn17 * vn2_vnp2_sn18
      - 188 vn4_vnp2_sn17 * vn2_vnp2_sn11 - 422 vn4_vnp2_sn17 * vn3_vnp2_sn5
      - 144 vn4_vnp2_sn17 * vn3_vnp2_sn8 - 116 vn3_vnp2_sn2 * vn2_vnp2_sn18
      - 102 vn3_vnp2_sn2 * vn2_vnp2_sn11 - 154 vn2_vnp2_sn18 * vn3_vnp2_sn5
      - 80 vn2_vnp2_sn18 * vn3_vnp2_sn8 - 92 vn2_vnp2_sn11 * vn3_vnp2_sn5
      - 126 vn2_vnp2_sn11 * vn3_vnp2_sn8 - 176 vn3_vnp3_sn18 * vn1_vnp3_sn2
      - 312 vn3_vnp3_sn18 * vn1_vnp3_sn13 - 164 vn3_vnp3_sn18 * vn4_vnp3_sn1
      - 240 vn3_vnp3_sn18 * vn4_vnp3_sn15 - 186 vn3_vnp3_sn18 * vn4_vnp3_sn16
      - 148 vn1_vnp3_sn2 * vn3_vnp3_sn14 - 76 vn1_vnp3_sn2 * vn3_vnp3_sn6
      - 344 vn1_vnp3_sn2 * vn2_vnp3_sn4 - 160 vn1_vnp3_sn2 * vn2_vnp3_sn9
      - 156 vn1_vnp3_sn13 * vn3_vnp3_sn14 - 120 vn1_vnp3_sn13 * vn3_vnp3_sn6
      - 432 vn1_vnp3_sn13 * vn2_vnp3_sn4 - 288 vn1_vnp3_sn13 * vn2_vnp3_sn9
      - 214 vn3_vnp3_sn14 * vn4_vnp3_sn1 - 14 vn3_vnp3_sn14 * vn4_vnp3_sn15
      - 122 vn3_vnp3_sn14 * vn4_vnp3_sn16 - 102 vn3_vnp3_sn6 * vn4_vnp3_sn1
      - 232 vn3_vnp3_sn6 * vn4_vnp3_sn15 - 202 vn3_vnp3_sn6 * vn4_vnp3_sn16
      - 138 vn4_vnp3_sn1 * vn2_vnp3_sn4 - 102 vn4_vnp3_sn1 * vn2_vnp3_sn9
      - 196 vn2_vnp3_sn4 * vn4_vnp3_sn15 - 124 vn2_vnp3_sn4 * vn4_vnp3_sn16
      - 142 vn2_vnp3_sn9 * vn4_vnp3_sn15 - 82 vn2_vnp3_sn9 * vn4_vnp3_sn16
      - 64 vn2_vnp4_sn10 * vn1_vnp4_sn8 - 58 vn2_vnp4_sn10 * vn4_vnp4_sn2
      - 54 vn1_vnp4_sn8 * vn2_vnp4_sn17 - 42 vn1_vnp4_sn8 * vn2_vnp4_sn4
      - 264 vn1_vnp4_sn8 * vn4_vnp4_sn2 - 372 vn1_vnp4_sn8 * vn3_vnp4_sn13
      - 240 vn1_vnp4_sn8 * vn3_vnp4_sn3 - 98 vn2_vnp4_sn17 * vn4_vnp4_sn2
      - 82 vn2_vnp4_sn4 * vn4_vnp4_sn2 - 420 vn4_vnp4_sn2 * vn3_vnp4_sn13
      - 82 vn4_vnp4_sn2 * vn3_vnp4_sn3 - 218 vn3_vnp5_sn6 * vn1_vnp5_sn9
      - 18 vn3_vnp5_sn6 * vn2_vnp5_sn10 - 82 vn3_vnp5_sn6 * vn2_vnp5_sn7
      - 164 vn1_vnp5_sn9 * vn3_vnp5_sn4 - 284 vn1_vnp5_sn9 * vn4_vnp5_sn13
      - 114 vn1_vnp5_sn9 * vn4_vnp5_sn12 - 50 vn3_vnp5_sn4 * vn2_vnp5_sn10
      - 56 vn3_vnp5_sn4 * vn2_vnp5_sn7 - 130 vn4_vnp5_sn13 * vn2_vnp5_sn10
      - 380 vn4_vnp5_sn13 * vn2_vnp5_sn7 - 28 vn2_vnp5_sn10 * vn4_vnp5_sn12
      - 278 vn2_vnp5_sn7 * vn4_vnp5_sn12 ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn11 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn10
                                 + vn2_vnp1_sn7 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn6 + vn3_vnp1_sn9
                                 + vn3_vnp1_sn1 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn12
                                 + vn4_vnp1_sn19 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn15
                                 + vn1_vnp2_sn3 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn18
                                 + vn2_vnp2_sn11 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn2 + vn3_vnp2_sn5
                                 + vn3_vnp2_sn8 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#7: - vnp2 + vn4_vnp2_sn7
                                 + vn4_vnp2_sn17 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#8: - vnp3 + vn1_vnp3_sn2
                                 + vn1_vnp3_sn13 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#9: - vnp3 + vn2_vnp3_sn4 + vn2_vnp3_sn9
                                 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#10: - vnp3 + vn3_vnp3_sn18
                                 + vn3_vnp3_sn14 + vn3_vnp3_sn6 <= 0
 _Embedding_clash_const_of_vnode4_vnp_3#11: - vnp3 + vn4_vnp3_sn1
                                 + vn4_vnp3_sn15 + vn4_vnp3_sn16 <= 0
 _Embedding_clash_const_of_vnode1_vnp_4#12: - vnp4 + vn1_vnp4_sn8 <= 0
 _Embedding_clash_const_of_vnode2_vnp_4#13: - vnp4 + vn2_vnp4_sn10
                                 + vn2_vnp4_sn17 + vn2_vnp4_sn4 <= 0
 _Embedding_clash_const_of_vnode3_vnp_4#14: - vnp4 + vn3_vnp4_sn13
                                 + vn3_vnp4_sn3 <= 0
 _Embedding_clash_const_of_vnode4_vnp_4#15: - vnp4 + vn4_vnp4_sn2 <= 0
 _Embedding_clash_const_of_vnode1_vnp_5#16: - vnp5 + vn1_vnp5_sn9 <= 0
 _Embedding_clash_const_of_vnode2_vnp_5#17: - vnp5 + vn2_vnp5_sn10
                                 + vn2_vnp5_sn7 <= 0
 _Embedding_clash_const_of_vnode3_vnp_5#18: - vnp5 + vn3_vnp5_sn6
                                 + vn3_vnp5_sn4 <= 0
 _Embedding_clash_const_of_vnode4_vnp_5#19: - vnp5 + vn4_vnp5_sn13
                                 + vn4_vnp5_sn12 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn4_vnp1_sn12 * vn1_vnp1_sn11
                                 - vn1_vnp1_sn11 * vn4_vnp1_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn1_vnp1_sn11 * vn2_vnp1_sn10
                                 - vn1_vnp1_sn11 * vn2_vnp1_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn1_vnp1_sn11 * vn3_vnp1_sn6
                                 - vn1_vnp1_sn11 * vn3_vnp1_sn9
                                 - vn1_vnp1_sn11 * vn3_vnp1_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn4_vnp1_sn12 * vn3_vnp1_sn6
                                 - vn4_vnp1_sn12 * vn3_vnp1_sn9
                                 - vn4_vnp1_sn12 * vn3_vnp1_sn1
                                 - vn4_vnp1_sn19 * vn3_vnp1_sn6
                                 - vn4_vnp1_sn19 * vn3_vnp1_sn9
                                 - vn4_vnp1_sn19 * vn3_vnp1_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_5#4: vnp1
                                 + [ - vn4_vnp1_sn12 * vn2_vnp1_sn10
                                 - vn4_vnp1_sn12 * vn2_vnp1_sn7
                                 - vn4_vnp1_sn19 * vn2_vnp1_sn10
                                 - vn4_vnp1_sn19 * vn2_vnp1_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn4_vnp2_sn7 * vn1_vnp2_sn15
                                 - vn4_vnp2_sn7 * vn1_vnp2_sn3
                                 - vn1_vnp2_sn15 * vn4_vnp2_sn17
                                 - vn1_vnp2_sn3 * vn4_vnp2_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn3_vnp2_sn2 * vn2_vnp2_sn18
                                 - vn3_vnp2_sn2 * vn2_vnp2_sn11
                                 - vn2_vnp2_sn18 * vn3_vnp2_sn5
                                 - vn2_vnp2_sn18 * vn3_vnp2_sn8
                                 - vn2_vnp2_sn11 * vn3_vnp2_sn5
                                 - vn2_vnp2_sn11 * vn3_vnp2_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_8#7: vnp2
                                 + [ - vn4_vnp2_sn7 * vn3_vnp2_sn2
                                 - vn4_vnp2_sn7 * vn3_vnp2_sn5
                                 - vn4_vnp2_sn7 * vn3_vnp2_sn8
                                 - vn4_vnp2_sn17 * vn3_vnp2_sn2
                                 - vn4_vnp2_sn17 * vn3_vnp2_sn5
                                 - vn4_vnp2_sn17 * vn3_vnp2_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_9#8: vnp2
                                 + [ - vn1_vnp2_sn15 * vn2_vnp2_sn18
                                 - vn1_vnp2_sn15 * vn2_vnp2_sn11
                                 - vn1_vnp2_sn3 * vn2_vnp2_sn18
                                 - vn1_vnp2_sn3 * vn2_vnp2_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_10#9: vnp2
                                 + [ - vn1_vnp2_sn15 * vn3_vnp2_sn2
                                 - vn1_vnp2_sn15 * vn3_vnp2_sn5
                                 - vn1_vnp2_sn15 * vn3_vnp2_sn8
                                 - vn1_vnp2_sn3 * vn3_vnp2_sn2
                                 - vn1_vnp2_sn3 * vn3_vnp2_sn5
                                 - vn1_vnp2_sn3 * vn3_vnp2_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_11#10: vnp2
                                 + [ - vn4_vnp2_sn7 * vn2_vnp2_sn18
                                 - vn4_vnp2_sn7 * vn2_vnp2_sn11
                                 - vn4_vnp2_sn17 * vn2_vnp2_sn18
                                 - vn4_vnp2_sn17 * vn2_vnp2_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_12#11: vnp3
                                 + [ - vn3_vnp3_sn18 * vn1_vnp3_sn2
                                 - vn3_vnp3_sn18 * vn1_vnp3_sn13
                                 - vn1_vnp3_sn2 * vn3_vnp3_sn14
                                 - vn1_vnp3_sn2 * vn3_vnp3_sn6
                                 - vn1_vnp3_sn13 * vn3_vnp3_sn14
                                 - vn1_vnp3_sn13 * vn3_vnp3_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_13#12: vnp3
                                 + [ - vn4_vnp3_sn1 * vn2_vnp3_sn4
                                 - vn4_vnp3_sn1 * vn2_vnp3_sn9
                                 - vn2_vnp3_sn4 * vn4_vnp3_sn15
                                 - vn2_vnp3_sn4 * vn4_vnp3_sn16
                                 - vn2_vnp3_sn9 * vn4_vnp3_sn15
                                 - vn2_vnp3_sn9 * vn4_vnp3_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_14#13: vnp3
                                 + [ - vn3_vnp3_sn18 * vn4_vnp3_sn1
                                 - vn3_vnp3_sn18 * vn4_vnp3_sn15
                                 - vn3_vnp3_sn18 * vn4_vnp3_sn16
                                 - vn3_vnp3_sn14 * vn4_vnp3_sn1
                                 - vn3_vnp3_sn14 * vn4_vnp3_sn15
                                 - vn3_vnp3_sn14 * vn4_vnp3_sn16
                                 - vn3_vnp3_sn6 * vn4_vnp3_sn1
                                 - vn3_vnp3_sn6 * vn4_vnp3_sn15
                                 - vn3_vnp3_sn6 * vn4_vnp3_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_15#14: vnp3
                                 + [ - vn1_vnp3_sn2 * vn2_vnp3_sn4
                                 - vn1_vnp3_sn2 * vn2_vnp3_sn9
                                 - vn1_vnp3_sn13 * vn2_vnp3_sn4
                                 - vn1_vnp3_sn13 * vn2_vnp3_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_16#15: vnp4
                                 + [ - vn2_vnp4_sn10 * vn1_vnp4_sn8
                                 - vn1_vnp4_sn8 * vn2_vnp4_sn17
                                 - vn1_vnp4_sn8 * vn2_vnp4_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_17#16: vnp4
                                 + [ - vn2_vnp4_sn10 * vn4_vnp4_sn2
                                 - vn2_vnp4_sn17 * vn4_vnp4_sn2
                                 - vn2_vnp4_sn4 * vn4_vnp4_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_18#17: vnp4
                                 + [ - vn1_vnp4_sn8 * vn3_vnp4_sn13
                                 - vn1_vnp4_sn8 * vn3_vnp4_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_19#18: vnp4
                                 + [ - vn4_vnp4_sn2 * vn3_vnp4_sn13
                                 - vn4_vnp4_sn2 * vn3_vnp4_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_20#19: vnp4
                                 + [ - vn1_vnp4_sn8 * vn4_vnp4_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_21#20: vnp5
                                 + [ - vn3_vnp5_sn6 * vn1_vnp5_sn9
                                 - vn1_vnp5_sn9 * vn3_vnp5_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_22#21: vnp5
                                 + [ - vn4_vnp5_sn13 * vn2_vnp5_sn10
                                 - vn4_vnp5_sn13 * vn2_vnp5_sn7
                                 - vn2_vnp5_sn10 * vn4_vnp5_sn12
                                 - vn2_vnp5_sn7 * vn4_vnp5_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_23#22: vnp5
                                 + [ - vn3_vnp5_sn6 * vn2_vnp5_sn10
                                 - vn3_vnp5_sn6 * vn2_vnp5_sn7
                                 - vn3_vnp5_sn4 * vn2_vnp5_sn10
                                 - vn3_vnp5_sn4 * vn2_vnp5_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_24#23: vnp5
                                 + [ - vn1_vnp5_sn9 * vn4_vnp5_sn13
                                 - vn1_vnp5_sn9 * vn4_vnp5_sn12 ] <= 0
 q25#24:                         - 710 vnp1 - 1250 vnp2 - 746 vnp3 - 847 vnp4
                                 - 472 vnp5
                                 + [ 40 vn4_vnp1_sn12 * vn1_vnp1_sn11
                                 + 6 vn4_vnp1_sn12 * vn2_vnp1_sn10
                                 + 62 vn4_vnp1_sn12 * vn2_vnp1_sn7
                                 + 47 vn4_vnp1_sn12 * vn3_vnp1_sn6
                                 + 57 vn4_vnp1_sn12 * vn3_vnp1_sn9
                                 + 82 vn4_vnp1_sn12 * vn3_vnp1_sn1
                                 + 58 vn1_vnp1_sn11 * vn4_vnp1_sn19
                                 + 42 vn1_vnp1_sn11 * vn2_vnp1_sn10
                                 + 70 vn1_vnp1_sn11 * vn2_vnp1_sn7
                                 + 107 vn1_vnp1_sn11 * vn3_vnp1_sn6
                                 + 102 vn1_vnp1_sn11 * vn3_vnp1_sn9
                                 + 146 vn1_vnp1_sn11 * vn3_vnp1_sn1
                                 + 37 vn4_vnp1_sn19 * vn2_vnp1_sn10
                                 + 33 vn4_vnp1_sn19 * vn2_vnp1_sn7
                                 + 154 vn4_vnp1_sn19 * vn3_vnp1_sn6
                                 + 134 vn4_vnp1_sn19 * vn3_vnp1_sn9
                                 + 89 vn4_vnp1_sn19 * vn3_vnp1_sn1
                                 + 112 vn4_vnp2_sn7 * vn1_vnp2_sn15
                                 + 65 vn4_vnp2_sn7 * vn1_vnp2_sn3
                                 + 114 vn4_vnp2_sn7 * vn3_vnp2_sn2
                                 + 87 vn4_vnp2_sn7 * vn2_vnp2_sn18
                                 + 219 vn4_vnp2_sn7 * vn2_vnp2_sn11
                                 + 124 vn4_vnp2_sn7 * vn3_vnp2_sn5
                                 + 81 vn4_vnp2_sn7 * vn3_vnp2_sn8
                                 + 43 vn1_vnp2_sn15 * vn4_vnp2_sn17
                                 + 128 vn1_vnp2_sn15 * vn3_vnp2_sn2
                                 + 169 vn1_vnp2_sn15 * vn2_vnp2_sn18
                                 + 29 vn1_vnp2_sn15 * vn2_vnp2_sn11
                                 + 90 vn1_vnp2_sn15 * vn3_vnp2_sn5
                                 + 55 vn1_vnp2_sn15 * vn3_vnp2_sn8
                                 + 108 vn1_vnp2_sn3 * vn4_vnp2_sn17
                                 + 43 vn1_vnp2_sn3 * vn3_vnp2_sn2
                                 + 200 vn1_vnp2_sn3 * vn2_vnp2_sn18
                                 + 168 vn1_vnp2_sn3 * vn2_vnp2_sn11
                                 + 53 vn1_vnp2_sn3 * vn3_vnp2_sn5
                                 + 130 vn1_vnp2_sn3 * vn3_vnp2_sn8
                                 + 157 vn4_vnp2_sn17 * vn3_vnp2_sn2
                                 + 106 vn4_vnp2_sn17 * vn2_vnp2_sn18
                                 + 94 vn4_vnp2_sn17 * vn2_vnp2_sn11
                                 + 211 vn4_vnp2_sn17 * vn3_vnp2_sn5
                                 + 72 vn4_vnp2_sn17 * vn3_vnp2_sn8
                                 + 58 vn3_vnp2_sn2 * vn2_vnp2_sn18
                                 + 51 vn3_vnp2_sn2 * vn2_vnp2_sn11
                                 + 77 vn2_vnp2_sn18 * vn3_vnp2_sn5
                                 + 40 vn2_vnp2_sn18 * vn3_vnp2_sn8
                                 + 46 vn2_vnp2_sn11 * vn3_vnp2_sn5
                                 + 63 vn2_vnp2_sn11 * vn3_vnp2_sn8
                                 + 88 vn3_vnp3_sn18 * vn1_vnp3_sn2
                                 + 156 vn3_vnp3_sn18 * vn1_vnp3_sn13
                                 + 82 vn3_vnp3_sn18 * vn4_vnp3_sn1
                                 + 120 vn3_vnp3_sn18 * vn4_vnp3_sn15
                                 + 93 vn3_vnp3_sn18 * vn4_vnp3_sn16
                                 + 74 vn1_vnp3_sn2 * vn3_vnp3_sn14
                                 + 38 vn1_vnp3_sn2 * vn3_vnp3_sn6
                                 + 172 vn1_vnp3_sn2 * vn2_vnp3_sn4
                                 + 80 vn1_vnp3_sn2 * vn2_vnp3_sn9
                                 + 78 vn1_vnp3_sn13 * vn3_vnp3_sn14
                                 + 60 vn1_vnp3_sn13 * vn3_vnp3_sn6
                                 + 216 vn1_vnp3_sn13 * vn2_vnp3_sn4
                                 + 144 vn1_vnp3_sn13 * vn2_vnp3_sn9
                                 + 107 vn3_vnp3_sn14 * vn4_vnp3_sn1
                                 + 7 vn3_vnp3_sn14 * vn4_vnp3_sn15
                                 + 61 vn3_vnp3_sn14 * vn4_vnp3_sn16
                                 + 51 vn3_vnp3_sn6 * vn4_vnp3_sn1
                                 + 116 vn3_vnp3_sn6 * vn4_vnp3_sn15
                                 + 101 vn3_vnp3_sn6 * vn4_vnp3_sn16
                                 + 69 vn4_vnp3_sn1 * vn2_vnp3_sn4
                                 + 51 vn4_vnp3_sn1 * vn2_vnp3_sn9
                                 + 98 vn2_vnp3_sn4 * vn4_vnp3_sn15
                                 + 62 vn2_vnp3_sn4 * vn4_vnp3_sn16
                                 + 71 vn2_vnp3_sn9 * vn4_vnp3_sn15
                                 + 41 vn2_vnp3_sn9 * vn4_vnp3_sn16
                                 + 32 vn2_vnp4_sn10 * vn1_vnp4_sn8
                                 + 29 vn2_vnp4_sn10 * vn4_vnp4_sn2
                                 + 27 vn1_vnp4_sn8 * vn2_vnp4_sn17
                                 + 21 vn1_vnp4_sn8 * vn2_vnp4_sn4
                                 + 132 vn1_vnp4_sn8 * vn4_vnp4_sn2
                                 + 186 vn1_vnp4_sn8 * vn3_vnp4_sn13
                                 + 120 vn1_vnp4_sn8 * vn3_vnp4_sn3
                                 + 49 vn2_vnp4_sn17 * vn4_vnp4_sn2
                                 + 41 vn2_vnp4_sn4 * vn4_vnp4_sn2
                                 + 210 vn4_vnp4_sn2 * vn3_vnp4_sn13
                                 + 41 vn4_vnp4_sn2 * vn3_vnp4_sn3
                                 + 109 vn3_vnp5_sn6 * vn1_vnp5_sn9
                                 + 9 vn3_vnp5_sn6 * vn2_vnp5_sn10
                                 + 41 vn3_vnp5_sn6 * vn2_vnp5_sn7
                                 + 82 vn1_vnp5_sn9 * vn3_vnp5_sn4
                                 + 142 vn1_vnp5_sn9 * vn4_vnp5_sn13
                                 + 57 vn1_vnp5_sn9 * vn4_vnp5_sn12
                                 + 25 vn3_vnp5_sn4 * vn2_vnp5_sn10
                                 + 28 vn3_vnp5_sn4 * vn2_vnp5_sn7
                                 + 65 vn4_vnp5_sn13 * vn2_vnp5_sn10
                                 + 190 vn4_vnp5_sn13 * vn2_vnp5_sn7
                                 + 14 vn2_vnp5_sn10 * vn4_vnp5_sn12
                                 + 139 vn2_vnp5_sn7 * vn4_vnp5_sn12 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: 5 vn3_vnp1_sn1 + 2 vn4_vnp3_sn1 <= 1
 CPU_capacity_of_substrate_node_2#1: 3 vn3_vnp2_sn2 + 4 vn1_vnp3_sn2
                                 + 4 vn4_vnp4_sn2 <= 5
 CPU_capacity_of_substrate_node_3#2: 5 vn1_vnp2_sn3 + 3 vn3_vnp4_sn3 <= 4
 CPU_capacity_of_substrate_node_4#3: 3 vn2_vnp3_sn4 + 4 vn2_vnp4_sn4
                                 + vn3_vnp5_sn4 <= 4
 CPU_capacity_of_substrate_node_5#4: 3 vn3_vnp2_sn5 <= 2
 CPU_capacity_of_substrate_node_6#5: 5 vn3_vnp1_sn6 + 2 vn3_vnp3_sn6
                                 + vn3_vnp5_sn6 <= 4
 CPU_capacity_of_substrate_node_7#6: 2 vn2_vnp1_sn7 + 3 vn4_vnp2_sn7
                                 + 2 vn2_vnp5_sn7 <= 1
 CPU_capacity_of_substrate_node_8#7: 3 vn3_vnp2_sn8 + 2 vn1_vnp4_sn8 <= 1
 CPU_capacity_of_substrate_node_9#8: 5 vn3_vnp1_sn9 + 3 vn2_vnp3_sn9
                                 + 3 vn1_vnp5_sn9 <= 4
 CPU_capacity_of_substrate_node_10#9: 2 vn2_vnp1_sn10 + 4 vn2_vnp4_sn10
                                 + 2 vn2_vnp5_sn10 <= 7
 CPU_capacity_of_substrate_node_11#10: 5 vn1_vnp1_sn11 + 4 vn2_vnp2_sn11 <= 0
 CPU_capacity_of_substrate_node_12#11: vn4_vnp1_sn12 + 3 vn4_vnp5_sn12 <= 3
 CPU_capacity_of_substrate_node_13#12: 4 vn1_vnp3_sn13 + 3 vn3_vnp4_sn13
                                 + 3 vn4_vnp5_sn13 <= 2
 CPU_capacity_of_substrate_node_14#13: 2 vn3_vnp3_sn14 <= 3
 CPU_capacity_of_substrate_node_15#14: 5 vn1_vnp2_sn15 + 2 vn4_vnp3_sn15 <= 1
 CPU_capacity_of_substrate_node_16#15: 2 vn4_vnp3_sn16 <= 3
 CPU_capacity_of_substrate_node_17#16: 3 vn4_vnp2_sn17 + 4 vn2_vnp4_sn17 <= 7
 CPU_capacity_of_substrate_node_18#17: 4 vn2_vnp2_sn18 + 2 vn3_vnp3_sn18 <= 1
 CPU_capacity_of_substrate_node_19#18: vn4_vnp1_sn19 <= 3
Bounds
 0 <= vnp1 <= 1
 0 <= vn4_vnp1_sn12 <= 1
 0 <= vn1_vnp1_sn11 <= 1
 0 <= vn4_vnp1_sn19 <= 1
 0 <= vn2_vnp1_sn10 <= 1
 0 <= vn2_vnp1_sn7 <= 1
 0 <= vn3_vnp1_sn6 <= 1
 0 <= vn3_vnp1_sn9 <= 1
 0 <= vn3_vnp1_sn1 <= 1
 0 <= vnp2 <= 1
 0 <= vn4_vnp2_sn7 <= 1
 0 <= vn1_vnp2_sn15 <= 1
 0 <= vn1_vnp2_sn3 <= 1
 0 <= vn4_vnp2_sn17 <= 1
 0 <= vn3_vnp2_sn2 <= 1
 0 <= vn2_vnp2_sn18 <= 1
 0 <= vn2_vnp2_sn11 <= 1
 0 <= vn3_vnp2_sn5 <= 1
 0 <= vn3_vnp2_sn8 <= 1
 0 <= vnp3 <= 1
 0 <= vn3_vnp3_sn18 <= 1
 0 <= vn1_vnp3_sn2 <= 1
 0 <= vn1_vnp3_sn13 <= 1
 0 <= vn3_vnp3_sn14 <= 1
 0 <= vn3_vnp3_sn6 <= 1
 0 <= vn4_vnp3_sn1 <= 1
 0 <= vn2_vnp3_sn4 <= 1
 0 <= vn2_vnp3_sn9 <= 1
 0 <= vn4_vnp3_sn15 <= 1
 0 <= vn4_vnp3_sn16 <= 1
 0 <= vnp4 <= 1
 0 <= vn2_vnp4_sn10 <= 1
 0 <= vn1_vnp4_sn8 <= 1
 0 <= vn2_vnp4_sn17 <= 1
 0 <= vn2_vnp4_sn4 <= 1
 0 <= vn4_vnp4_sn2 <= 1
 0 <= vn3_vnp4_sn13 <= 1
 0 <= vn3_vnp4_sn3 <= 1
 0 <= vnp5 <= 1
 0 <= vn3_vnp5_sn6 <= 1
 0 <= vn1_vnp5_sn9 <= 1
 0 <= vn3_vnp5_sn4 <= 1
 0 <= vn4_vnp5_sn13 <= 1
 0 <= vn2_vnp5_sn10 <= 1
 0 <= vn2_vnp5_sn7 <= 1
 0 <= vn4_vnp5_sn12 <= 1
Binaries
 vnp1  vn4_vnp1_sn12  vn1_vnp1_sn11  vn4_vnp1_sn19  vn2_vnp1_sn10 
 vn2_vnp1_sn7  vn3_vnp1_sn6  vn3_vnp1_sn9  vn3_vnp1_sn1  vnp2  vn4_vnp2_sn7 
 vn1_vnp2_sn15  vn1_vnp2_sn3  vn4_vnp2_sn17  vn3_vnp2_sn2  vn2_vnp2_sn18 
 vn2_vnp2_sn11  vn3_vnp2_sn5  vn3_vnp2_sn8  vnp3  vn3_vnp3_sn18  vn1_vnp3_sn2 
 vn1_vnp3_sn13  vn3_vnp3_sn14  vn3_vnp3_sn6  vn4_vnp3_sn1  vn2_vnp3_sn4 
 vn2_vnp3_sn9  vn4_vnp3_sn15  vn4_vnp3_sn16  vnp4  vn2_vnp4_sn10  vn1_vnp4_sn8 
 vn2_vnp4_sn17  vn2_vnp4_sn4  vn4_vnp4_sn2  vn3_vnp4_sn13  vn3_vnp4_sn3  vnp5 
 vn3_vnp5_sn6  vn1_vnp5_sn9  vn3_vnp5_sn4  vn4_vnp5_sn13  vn2_vnp5_sn10 
 vn2_vnp5_sn7  vn4_vnp5_sn12 
End
