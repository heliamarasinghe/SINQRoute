\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 781 vnp1 + 1195 vnp2 + 809 vnp3 + 882 vnp4 + 1178 vnp5 + 601 vnp6
      + 982 vnp7 + 1569 vnp8 + [ - 464 vn3_vnp1_sn1 * vn1_vnp1_sn15
      - 120 vn3_vnp1_sn1 * vn2_vnp1_sn17 - 20 vn3_vnp1_sn1 * vn2_vnp1_sn4
      - 206 vn1_vnp1_sn15 * vn3_vnp1_sn13 - 102 vn1_vnp1_sn15 * vn2_vnp1_sn17
      - 122 vn1_vnp1_sn15 * vn2_vnp1_sn4 - 176 vn3_vnp1_sn13 * vn2_vnp1_sn17
      - 168 vn3_vnp1_sn13 * vn2_vnp1_sn4 - 302 vn4_vnp2_sn1 * vn1_vnp2_sn11
      - 234 vn4_vnp2_sn1 * vn1_vnp2_sn13 - 98 vn4_vnp2_sn1 * vn1_vnp2_sn3
      - 22 vn4_vnp2_sn1 * vn2_vnp2_sn4 - 128 vn4_vnp2_sn1 * vn3_vnp2_sn17
      - 62 vn1_vnp2_sn11 * vn4_vnp2_sn15 - 168 vn1_vnp2_sn11 * vn4_vnp2_sn9
      - 272 vn1_vnp2_sn11 * vn3_vnp2_sn17 - 138 vn1_vnp2_sn13 * vn4_vnp2_sn15
      - 118 vn1_vnp2_sn13 * vn4_vnp2_sn9 - 404 vn1_vnp2_sn13 * vn3_vnp2_sn17
      - 236 vn1_vnp2_sn3 * vn4_vnp2_sn15 - 78 vn1_vnp2_sn3 * vn4_vnp2_sn9
      - 392 vn1_vnp2_sn3 * vn3_vnp2_sn17 - 102 vn4_vnp2_sn15 * vn2_vnp2_sn4
      - 124 vn4_vnp2_sn15 * vn3_vnp2_sn17 - 52 vn4_vnp2_sn9 * vn2_vnp2_sn4
      - 144 vn4_vnp2_sn9 * vn3_vnp2_sn17 - 104 vn3_vnp3_sn14 * vn1_vnp3_sn15
      - 62 vn3_vnp3_sn14 * vn2_vnp3_sn9 - 134 vn3_vnp3_sn14 * vn2_vnp3_sn18
      - 188 vn1_vnp3_sn15 * vn3_vnp3_sn2 - 192 vn1_vnp3_sn15 * vn2_vnp3_sn9
      - 242 vn1_vnp3_sn15 * vn2_vnp3_sn18 - 58 vn3_vnp3_sn2 * vn2_vnp3_sn9
      - 110 vn3_vnp3_sn2 * vn2_vnp3_sn18 - 104 vn2_vnp4_sn7 * vn1_vnp4_sn5
      - 236 vn2_vnp4_sn7 * vn1_vnp4_sn13 - 128 vn2_vnp4_sn7 * vn1_vnp4_sn17
      - 110 vn2_vnp4_sn7 * vn3_vnp4_sn15 - 86 vn2_vnp4_sn7 * vn4_vnp4_sn10
      - 136 vn1_vnp4_sn5 * vn2_vnp4_sn1 - 92 vn1_vnp4_sn5 * vn2_vnp4_sn8
      - 162 vn1_vnp4_sn5 * vn3_vnp4_sn15 - 168 vn1_vnp4_sn13 * vn2_vnp4_sn1
      - 228 vn1_vnp4_sn13 * vn2_vnp4_sn8 - 138 vn1_vnp4_sn13 * vn3_vnp4_sn15
      - 128 vn1_vnp4_sn17 * vn2_vnp4_sn1 - 92 vn1_vnp4_sn17 * vn2_vnp4_sn8
      - 162 vn1_vnp4_sn17 * vn3_vnp4_sn15 - 104 vn2_vnp4_sn1 * vn3_vnp4_sn15
      - 48 vn2_vnp4_sn1 * vn4_vnp4_sn10 - 72 vn2_vnp4_sn8 * vn3_vnp4_sn15
      - 48 vn2_vnp4_sn8 * vn4_vnp4_sn10 - 42 vn3_vnp4_sn15 * vn4_vnp4_sn10
      - 112 vn4_vnp5_sn18 * vn1_vnp5_sn2 - 264 vn4_vnp5_sn18 * vn2_vnp5_sn5
      - 534 vn4_vnp5_sn18 * vn2_vnp5_sn13 - 372 vn4_vnp5_sn18 * vn2_vnp5_sn3
      - 110 vn4_vnp5_sn18 * vn3_vnp5_sn19 - 248 vn4_vnp5_sn18 * vn3_vnp5_sn10
      - 242 vn4_vnp5_sn18 * vn3_vnp5_sn6 - 20 vn1_vnp5_sn2 * vn4_vnp5_sn4
      - 192 vn1_vnp5_sn2 * vn4_vnp5_sn11 - 40 vn1_vnp5_sn2 * vn3_vnp5_sn19
      - 60 vn1_vnp5_sn2 * vn3_vnp5_sn10 - 86 vn1_vnp5_sn2 * vn3_vnp5_sn6
      - 310 vn4_vnp5_sn4 * vn2_vnp5_sn5 - 390 vn4_vnp5_sn4 * vn2_vnp5_sn13
      - 158 vn4_vnp5_sn4 * vn2_vnp5_sn3 - 122 vn4_vnp5_sn4 * vn3_vnp5_sn19
      - 156 vn4_vnp5_sn4 * vn3_vnp5_sn10 - 150 vn4_vnp5_sn4 * vn3_vnp5_sn6
      - 242 vn4_vnp5_sn11 * vn2_vnp5_sn5 - 322 vn4_vnp5_sn11 * vn2_vnp5_sn13
      - 280 vn4_vnp5_sn11 * vn2_vnp5_sn3 - 310 vn4_vnp5_sn11 * vn3_vnp5_sn19
      - 128 vn4_vnp5_sn11 * vn3_vnp5_sn10 - 226 vn4_vnp5_sn11 * vn3_vnp5_sn6
      - 58 vn4_vnp6_sn10 * vn1_vnp6_sn16 - 72 vn4_vnp6_sn10 * vn1_vnp6_sn18
      - 40 vn1_vnp6_sn16 * vn2_vnp6_sn19 - 56 vn1_vnp6_sn16 * vn2_vnp6_sn4
      - 58 vn1_vnp6_sn16 * vn2_vnp6_sn2 - 68 vn1_vnp6_sn16 * vn3_vnp6_sn8
      - 32 vn1_vnp6_sn18 * vn2_vnp6_sn19 - 56 vn1_vnp6_sn18 * vn2_vnp6_sn4
      - 62 vn1_vnp6_sn18 * vn2_vnp6_sn2 - 68 vn1_vnp6_sn18 * vn3_vnp6_sn8
      - 132 vn2_vnp6_sn19 * vn3_vnp6_sn8 - 88 vn2_vnp6_sn4 * vn3_vnp6_sn8
      - 136 vn2_vnp6_sn2 * vn3_vnp6_sn8 - 162 vn4_vnp7_sn7 * vn1_vnp7_sn9
      - 182 vn4_vnp7_sn7 * vn1_vnp7_sn10 - 250 vn4_vnp7_sn7 * vn1_vnp7_sn13
      - 262 vn4_vnp7_sn7 * vn2_vnp7_sn15 - 162 vn4_vnp7_sn7 * vn2_vnp7_sn18
      - 76 vn4_vnp7_sn7 * vn3_vnp7_sn19 - 106 vn1_vnp7_sn9 * vn2_vnp7_sn15
      - 82 vn1_vnp7_sn9 * vn2_vnp7_sn18 - 62 vn1_vnp7_sn10 * vn2_vnp7_sn15
      - 86 vn1_vnp7_sn10 * vn2_vnp7_sn18 - 78 vn1_vnp7_sn13 * vn2_vnp7_sn15
      - 138 vn1_vnp7_sn13 * vn2_vnp7_sn18 - 264 vn4_vnp8_sn18 * vn1_vnp8_sn7
      - 292 vn4_vnp8_sn18 * vn1_vnp8_sn20 - 260 vn4_vnp8_sn18 * vn1_vnp8_sn5
      - 160 vn1_vnp8_sn7 * vn4_vnp8_sn9 - 166 vn1_vnp8_sn7 * vn4_vnp8_sn8
      - 250 vn1_vnp8_sn7 * vn2_vnp8_sn14 - 350 vn1_vnp8_sn7 * vn2_vnp8_sn10
      - 280 vn1_vnp8_sn7 * vn3_vnp8_sn3 - 508 vn1_vnp8_sn20 * vn4_vnp8_sn9
      - 334 vn1_vnp8_sn20 * vn4_vnp8_sn8 - 378 vn1_vnp8_sn20 * vn2_vnp8_sn14
      - 338 vn1_vnp8_sn20 * vn2_vnp8_sn10 - 408 vn1_vnp8_sn20 * vn3_vnp8_sn3
      - 86 vn1_vnp8_sn5 * vn4_vnp8_sn9 - 162 vn1_vnp8_sn5 * vn4_vnp8_sn8
      - 176 vn1_vnp8_sn5 * vn2_vnp8_sn14 - 116 vn1_vnp8_sn5 * vn2_vnp8_sn10
      - 216 vn1_vnp8_sn5 * vn3_vnp8_sn3 - 174 vn2_vnp8_sn14 * vn3_vnp8_sn3
      - 148 vn2_vnp8_sn10 * vn3_vnp8_sn3 ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn15 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn17
                                 + vn2_vnp1_sn4 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn1
                                 + vn3_vnp1_sn13 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#3: - vnp2 + vn1_vnp2_sn11
                                 + vn1_vnp2_sn13 + vn1_vnp2_sn3 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#4: - vnp2 + vn2_vnp2_sn4 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#5: - vnp2 + vn3_vnp2_sn17 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#6: - vnp2 + vn4_vnp2_sn1
                                 + vn4_vnp2_sn15 + vn4_vnp2_sn9 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#7: - vnp3 + vn1_vnp3_sn15 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#8: - vnp3 + vn2_vnp3_sn9
                                 + vn2_vnp3_sn18 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#9: - vnp3 + vn3_vnp3_sn14
                                 + vn3_vnp3_sn2 <= 0
 _Embedding_clash_const_of_vnode1_vnp_4#10: - vnp4 + vn1_vnp4_sn5
                                 + vn1_vnp4_sn13 + vn1_vnp4_sn17 <= 0
 _Embedding_clash_const_of_vnode2_vnp_4#11: - vnp4 + vn2_vnp4_sn7
                                 + vn2_vnp4_sn1 + vn2_vnp4_sn8 <= 0
 _Embedding_clash_const_of_vnode3_vnp_4#12: - vnp4 + vn3_vnp4_sn15 <= 0
 _Embedding_clash_const_of_vnode4_vnp_4#13: - vnp4 + vn4_vnp4_sn10 <= 0
 _Embedding_clash_const_of_vnode1_vnp_5#14: - vnp5 + vn1_vnp5_sn2 <= 0
 _Embedding_clash_const_of_vnode2_vnp_5#15: - vnp5 + vn2_vnp5_sn5
                                 + vn2_vnp5_sn13 + vn2_vnp5_sn3 <= 0
 _Embedding_clash_const_of_vnode3_vnp_5#16: - vnp5 + vn3_vnp5_sn19
                                 + vn3_vnp5_sn10 + vn3_vnp5_sn6 <= 0
 _Embedding_clash_const_of_vnode4_vnp_5#17: - vnp5 + vn4_vnp5_sn18
                                 + vn4_vnp5_sn4 + vn4_vnp5_sn11 <= 0
 _Embedding_clash_const_of_vnode1_vnp_6#18: - vnp6 + vn1_vnp6_sn16
                                 + vn1_vnp6_sn18 <= 0
 _Embedding_clash_const_of_vnode2_vnp_6#19: - vnp6 + vn2_vnp6_sn19
                                 + vn2_vnp6_sn4 + vn2_vnp6_sn2 <= 0
 _Embedding_clash_const_of_vnode3_vnp_6#20: - vnp6 + vn3_vnp6_sn8 <= 0
 _Embedding_clash_const_of_vnode4_vnp_6#21: - vnp6 + vn4_vnp6_sn10 <= 0
 _Embedding_clash_const_of_vnode1_vnp_7#22: - vnp7 + vn1_vnp7_sn9
                                 + vn1_vnp7_sn10 + vn1_vnp7_sn13 <= 0
 _Embedding_clash_const_of_vnode2_vnp_7#23: - vnp7 + vn2_vnp7_sn15
                                 + vn2_vnp7_sn18 <= 0
 _Embedding_clash_const_of_vnode3_vnp_7#24: - vnp7 + vn3_vnp7_sn19 <= 0
 _Embedding_clash_const_of_vnode4_vnp_7#25: - vnp7 + vn4_vnp7_sn7 <= 0
 _Embedding_clash_const_of_vnode1_vnp_8#26: - vnp8 + vn1_vnp8_sn7
                                 + vn1_vnp8_sn20 + vn1_vnp8_sn5 <= 0
 _Embedding_clash_const_of_vnode2_vnp_8#27: - vnp8 + vn2_vnp8_sn14
                                 + vn2_vnp8_sn10 <= 0
 _Embedding_clash_const_of_vnode3_vnp_8#28: - vnp8 + vn3_vnp8_sn3 <= 0
 _Embedding_clash_const_of_vnode4_vnp_8#29: - vnp8 + vn4_vnp8_sn18
                                 + vn4_vnp8_sn9 + vn4_vnp8_sn8 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn3_vnp1_sn1 * vn1_vnp1_sn15
                                 - vn1_vnp1_sn15 * vn3_vnp1_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn3_vnp1_sn1 * vn2_vnp1_sn17
                                 - vn3_vnp1_sn1 * vn2_vnp1_sn4
                                 - vn3_vnp1_sn13 * vn2_vnp1_sn17
                                 - vn3_vnp1_sn13 * vn2_vnp1_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn1_vnp1_sn15 * vn2_vnp1_sn17
                                 - vn1_vnp1_sn15 * vn2_vnp1_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_4#3: vnp2
                                 + [ - vn4_vnp2_sn1 * vn1_vnp2_sn11
                                 - vn4_vnp2_sn1 * vn1_vnp2_sn13
                                 - vn4_vnp2_sn1 * vn1_vnp2_sn3
                                 - vn1_vnp2_sn11 * vn4_vnp2_sn15
                                 - vn1_vnp2_sn11 * vn4_vnp2_sn9
                                 - vn1_vnp2_sn13 * vn4_vnp2_sn15
                                 - vn1_vnp2_sn13 * vn4_vnp2_sn9
                                 - vn1_vnp2_sn3 * vn4_vnp2_sn15
                                 - vn1_vnp2_sn3 * vn4_vnp2_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_5#4: vnp2
                                 + [ - vn4_vnp2_sn1 * vn2_vnp2_sn4
                                 - vn4_vnp2_sn15 * vn2_vnp2_sn4
                                 - vn4_vnp2_sn9 * vn2_vnp2_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn4_vnp2_sn1 * vn3_vnp2_sn17
                                 - vn4_vnp2_sn15 * vn3_vnp2_sn17
                                 - vn4_vnp2_sn9 * vn3_vnp2_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn1_vnp2_sn11 * vn3_vnp2_sn17
                                 - vn1_vnp2_sn13 * vn3_vnp2_sn17
                                 - vn1_vnp2_sn3 * vn3_vnp2_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_8#7: vnp3
                                 + [ - vn3_vnp3_sn14 * vn1_vnp3_sn15
                                 - vn1_vnp3_sn15 * vn3_vnp3_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_9#8: vnp3
                                 + [ - vn1_vnp3_sn15 * vn2_vnp3_sn9
                                 - vn1_vnp3_sn15 * vn2_vnp3_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_10#9: vnp3
                                 + [ - vn3_vnp3_sn14 * vn2_vnp3_sn9
                                 - vn3_vnp3_sn14 * vn2_vnp3_sn18
                                 - vn3_vnp3_sn2 * vn2_vnp3_sn9
                                 - vn3_vnp3_sn2 * vn2_vnp3_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_11#10: vnp4
                                 + [ - vn2_vnp4_sn7 * vn1_vnp4_sn5
                                 - vn2_vnp4_sn7 * vn1_vnp4_sn13
                                 - vn2_vnp4_sn7 * vn1_vnp4_sn17
                                 - vn1_vnp4_sn5 * vn2_vnp4_sn1
                                 - vn1_vnp4_sn5 * vn2_vnp4_sn8
                                 - vn1_vnp4_sn13 * vn2_vnp4_sn1
                                 - vn1_vnp4_sn13 * vn2_vnp4_sn8
                                 - vn1_vnp4_sn17 * vn2_vnp4_sn1
                                 - vn1_vnp4_sn17 * vn2_vnp4_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_12#11: vnp4
                                 + [ - vn2_vnp4_sn7 * vn3_vnp4_sn15
                                 - vn2_vnp4_sn1 * vn3_vnp4_sn15
                                 - vn2_vnp4_sn8 * vn3_vnp4_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_13#12: vnp4
                                 + [ - vn1_vnp4_sn5 * vn3_vnp4_sn15
                                 - vn1_vnp4_sn13 * vn3_vnp4_sn15
                                 - vn1_vnp4_sn17 * vn3_vnp4_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_14#13: vnp4
                                 + [ - vn2_vnp4_sn7 * vn4_vnp4_sn10
                                 - vn2_vnp4_sn1 * vn4_vnp4_sn10
                                 - vn2_vnp4_sn8 * vn4_vnp4_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_15#14: vnp4
                                 + [ - vn3_vnp4_sn15 * vn4_vnp4_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_16#15: vnp5
                                 + [ - vn4_vnp5_sn18 * vn1_vnp5_sn2
                                 - vn1_vnp5_sn2 * vn4_vnp5_sn4
                                 - vn1_vnp5_sn2 * vn4_vnp5_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_17#16: vnp5
                                 + [ - vn4_vnp5_sn18 * vn2_vnp5_sn5
                                 - vn4_vnp5_sn18 * vn2_vnp5_sn13
                                 - vn4_vnp5_sn18 * vn2_vnp5_sn3
                                 - vn4_vnp5_sn4 * vn2_vnp5_sn5
                                 - vn4_vnp5_sn4 * vn2_vnp5_sn13
                                 - vn4_vnp5_sn4 * vn2_vnp5_sn3
                                 - vn4_vnp5_sn11 * vn2_vnp5_sn5
                                 - vn4_vnp5_sn11 * vn2_vnp5_sn13
                                 - vn4_vnp5_sn11 * vn2_vnp5_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_18#17: vnp5
                                 + [ - vn1_vnp5_sn2 * vn3_vnp5_sn19
                                 - vn1_vnp5_sn2 * vn3_vnp5_sn10
                                 - vn1_vnp5_sn2 * vn3_vnp5_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_19#18: vnp5
                                 + [ - vn4_vnp5_sn18 * vn3_vnp5_sn19
                                 - vn4_vnp5_sn18 * vn3_vnp5_sn10
                                 - vn4_vnp5_sn18 * vn3_vnp5_sn6
                                 - vn4_vnp5_sn4 * vn3_vnp5_sn19
                                 - vn4_vnp5_sn4 * vn3_vnp5_sn10
                                 - vn4_vnp5_sn4 * vn3_vnp5_sn6
                                 - vn4_vnp5_sn11 * vn3_vnp5_sn19
                                 - vn4_vnp5_sn11 * vn3_vnp5_sn10
                                 - vn4_vnp5_sn11 * vn3_vnp5_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_20#19: vnp6
                                 + [ - vn4_vnp6_sn10 * vn1_vnp6_sn16
                                 - vn4_vnp6_sn10 * vn1_vnp6_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_21#20: vnp6
                                 + [ - vn1_vnp6_sn16 * vn2_vnp6_sn19
                                 - vn1_vnp6_sn16 * vn2_vnp6_sn4
                                 - vn1_vnp6_sn16 * vn2_vnp6_sn2
                                 - vn1_vnp6_sn18 * vn2_vnp6_sn19
                                 - vn1_vnp6_sn18 * vn2_vnp6_sn4
                                 - vn1_vnp6_sn18 * vn2_vnp6_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_22#21: vnp6
                                 + [ - vn1_vnp6_sn16 * vn3_vnp6_sn8
                                 - vn1_vnp6_sn18 * vn3_vnp6_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_23#22: vnp6
                                 + [ - vn2_vnp6_sn19 * vn3_vnp6_sn8
                                 - vn2_vnp6_sn4 * vn3_vnp6_sn8
                                 - vn2_vnp6_sn2 * vn3_vnp6_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_24#23: vnp7
                                 + [ - vn4_vnp7_sn7 * vn1_vnp7_sn9
                                 - vn4_vnp7_sn7 * vn1_vnp7_sn10
                                 - vn4_vnp7_sn7 * vn1_vnp7_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_25#24: vnp7
                                 + [ - vn4_vnp7_sn7 * vn2_vnp7_sn15
                                 - vn4_vnp7_sn7 * vn2_vnp7_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_26#25: vnp7
                                 + [ - vn4_vnp7_sn7 * vn3_vnp7_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_27#26: vnp7
                                 + [ - vn1_vnp7_sn9 * vn2_vnp7_sn15
                                 - vn1_vnp7_sn9 * vn2_vnp7_sn18
                                 - vn1_vnp7_sn10 * vn2_vnp7_sn15
                                 - vn1_vnp7_sn10 * vn2_vnp7_sn18
                                 - vn1_vnp7_sn13 * vn2_vnp7_sn15
                                 - vn1_vnp7_sn13 * vn2_vnp7_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_8_Virtual_Link_28#27: vnp8
                                 + [ - vn4_vnp8_sn18 * vn1_vnp8_sn7
                                 - vn4_vnp8_sn18 * vn1_vnp8_sn20
                                 - vn4_vnp8_sn18 * vn1_vnp8_sn5
                                 - vn1_vnp8_sn7 * vn4_vnp8_sn9
                                 - vn1_vnp8_sn7 * vn4_vnp8_sn8
                                 - vn1_vnp8_sn20 * vn4_vnp8_sn9
                                 - vn1_vnp8_sn20 * vn4_vnp8_sn8
                                 - vn1_vnp8_sn5 * vn4_vnp8_sn9
                                 - vn1_vnp8_sn5 * vn4_vnp8_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_8_Virtual_Link_29#28: vnp8
                                 + [ - vn1_vnp8_sn7 * vn2_vnp8_sn14
                                 - vn1_vnp8_sn7 * vn2_vnp8_sn10
                                 - vn1_vnp8_sn20 * vn2_vnp8_sn14
                                 - vn1_vnp8_sn20 * vn2_vnp8_sn10
                                 - vn1_vnp8_sn5 * vn2_vnp8_sn14
                                 - vn1_vnp8_sn5 * vn2_vnp8_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_8_Virtual_Link_30#29: vnp8
                                 + [ - vn1_vnp8_sn7 * vn3_vnp8_sn3
                                 - vn1_vnp8_sn20 * vn3_vnp8_sn3
                                 - vn1_vnp8_sn5 * vn3_vnp8_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_8_Virtual_Link_31#30: vnp8
                                 + [ - vn2_vnp8_sn14 * vn3_vnp8_sn3
                                 - vn2_vnp8_sn10 * vn3_vnp8_sn3 ] <= 0
 q32#31:                         781 vnp1 + 1195 vnp2 + 809 vnp3 + 882 vnp4
                                 + 1178 vnp5 + 601 vnp6 + 982 vnp7 + 1569 vnp8
                                 + [ - 232 vn3_vnp1_sn1 * vn1_vnp1_sn15
                                 - 60 vn3_vnp1_sn1 * vn2_vnp1_sn17
                                 - 10 vn3_vnp1_sn1 * vn2_vnp1_sn4
                                 - 103 vn1_vnp1_sn15 * vn3_vnp1_sn13
                                 - 51 vn1_vnp1_sn15 * vn2_vnp1_sn17
                                 - 61 vn1_vnp1_sn15 * vn2_vnp1_sn4
                                 - 88 vn3_vnp1_sn13 * vn2_vnp1_sn17
                                 - 84 vn3_vnp1_sn13 * vn2_vnp1_sn4
                                 - 151 vn4_vnp2_sn1 * vn1_vnp2_sn11
                                 - 117 vn4_vnp2_sn1 * vn1_vnp2_sn13
                                 - 49 vn4_vnp2_sn1 * vn1_vnp2_sn3
                                 - 11 vn4_vnp2_sn1 * vn2_vnp2_sn4
                                 - 64 vn4_vnp2_sn1 * vn3_vnp2_sn17
                                 - 31 vn1_vnp2_sn11 * vn4_vnp2_sn15
                                 - 84 vn1_vnp2_sn11 * vn4_vnp2_sn9
                                 - 136 vn1_vnp2_sn11 * vn3_vnp2_sn17
                                 - 69 vn1_vnp2_sn13 * vn4_vnp2_sn15
                                 - 59 vn1_vnp2_sn13 * vn4_vnp2_sn9
                                 - 202 vn1_vnp2_sn13 * vn3_vnp2_sn17
                                 - 118 vn1_vnp2_sn3 * vn4_vnp2_sn15
                                 - 39 vn1_vnp2_sn3 * vn4_vnp2_sn9
                                 - 196 vn1_vnp2_sn3 * vn3_vnp2_sn17
                                 - 51 vn4_vnp2_sn15 * vn2_vnp2_sn4
                                 - 62 vn4_vnp2_sn15 * vn3_vnp2_sn17
                                 - 26 vn4_vnp2_sn9 * vn2_vnp2_sn4
                                 - 72 vn4_vnp2_sn9 * vn3_vnp2_sn17
                                 - 52 vn3_vnp3_sn14 * vn1_vnp3_sn15
                                 - 31 vn3_vnp3_sn14 * vn2_vnp3_sn9
                                 - 67 vn3_vnp3_sn14 * vn2_vnp3_sn18
                                 - 94 vn1_vnp3_sn15 * vn3_vnp3_sn2
                                 - 96 vn1_vnp3_sn15 * vn2_vnp3_sn9
                                 - 121 vn1_vnp3_sn15 * vn2_vnp3_sn18
                                 - 29 vn3_vnp3_sn2 * vn2_vnp3_sn9
                                 - 55 vn3_vnp3_sn2 * vn2_vnp3_sn18
                                 - 52 vn2_vnp4_sn7 * vn1_vnp4_sn5
                                 - 118 vn2_vnp4_sn7 * vn1_vnp4_sn13
                                 - 64 vn2_vnp4_sn7 * vn1_vnp4_sn17
                                 - 55 vn2_vnp4_sn7 * vn3_vnp4_sn15
                                 - 43 vn2_vnp4_sn7 * vn4_vnp4_sn10
                                 - 68 vn1_vnp4_sn5 * vn2_vnp4_sn1
                                 - 46 vn1_vnp4_sn5 * vn2_vnp4_sn8
                                 - 81 vn1_vnp4_sn5 * vn3_vnp4_sn15
                                 - 84 vn1_vnp4_sn13 * vn2_vnp4_sn1
                                 - 114 vn1_vnp4_sn13 * vn2_vnp4_sn8
                                 - 69 vn1_vnp4_sn13 * vn3_vnp4_sn15
                                 - 64 vn1_vnp4_sn17 * vn2_vnp4_sn1
                                 - 46 vn1_vnp4_sn17 * vn2_vnp4_sn8
                                 - 81 vn1_vnp4_sn17 * vn3_vnp4_sn15
                                 - 52 vn2_vnp4_sn1 * vn3_vnp4_sn15
                                 - 24 vn2_vnp4_sn1 * vn4_vnp4_sn10
                                 - 36 vn2_vnp4_sn8 * vn3_vnp4_sn15
                                 - 24 vn2_vnp4_sn8 * vn4_vnp4_sn10
                                 - 21 vn3_vnp4_sn15 * vn4_vnp4_sn10
                                 - 56 vn4_vnp5_sn18 * vn1_vnp5_sn2
                                 - 132 vn4_vnp5_sn18 * vn2_vnp5_sn5
                                 - 267 vn4_vnp5_sn18 * vn2_vnp5_sn13
                                 - 186 vn4_vnp5_sn18 * vn2_vnp5_sn3
                                 - 55 vn4_vnp5_sn18 * vn3_vnp5_sn19
                                 - 124 vn4_vnp5_sn18 * vn3_vnp5_sn10
                                 - 121 vn4_vnp5_sn18 * vn3_vnp5_sn6
                                 - 10 vn1_vnp5_sn2 * vn4_vnp5_sn4
                                 - 96 vn1_vnp5_sn2 * vn4_vnp5_sn11
                                 - 20 vn1_vnp5_sn2 * vn3_vnp5_sn19
                                 - 30 vn1_vnp5_sn2 * vn3_vnp5_sn10
                                 - 43 vn1_vnp5_sn2 * vn3_vnp5_sn6
                                 - 155 vn4_vnp5_sn4 * vn2_vnp5_sn5
                                 - 195 vn4_vnp5_sn4 * vn2_vnp5_sn13
                                 - 79 vn4_vnp5_sn4 * vn2_vnp5_sn3
                                 - 61 vn4_vnp5_sn4 * vn3_vnp5_sn19
                                 - 78 vn4_vnp5_sn4 * vn3_vnp5_sn10
                                 - 75 vn4_vnp5_sn4 * vn3_vnp5_sn6
                                 - 121 vn4_vnp5_sn11 * vn2_vnp5_sn5
                                 - 161 vn4_vnp5_sn11 * vn2_vnp5_sn13
                                 - 140 vn4_vnp5_sn11 * vn2_vnp5_sn3
                                 - 155 vn4_vnp5_sn11 * vn3_vnp5_sn19
                                 - 64 vn4_vnp5_sn11 * vn3_vnp5_sn10
                                 - 113 vn4_vnp5_sn11 * vn3_vnp5_sn6
                                 - 29 vn4_vnp6_sn10 * vn1_vnp6_sn16
                                 - 36 vn4_vnp6_sn10 * vn1_vnp6_sn18
                                 - 20 vn1_vnp6_sn16 * vn2_vnp6_sn19
                                 - 28 vn1_vnp6_sn16 * vn2_vnp6_sn4
                                 - 29 vn1_vnp6_sn16 * vn2_vnp6_sn2
                                 - 34 vn1_vnp6_sn16 * vn3_vnp6_sn8
                                 - 16 vn1_vnp6_sn18 * vn2_vnp6_sn19
                                 - 28 vn1_vnp6_sn18 * vn2_vnp6_sn4
                                 - 31 vn1_vnp6_sn18 * vn2_vnp6_sn2
                                 - 34 vn1_vnp6_sn18 * vn3_vnp6_sn8
                                 - 66 vn2_vnp6_sn19 * vn3_vnp6_sn8
                                 - 44 vn2_vnp6_sn4 * vn3_vnp6_sn8
                                 - 68 vn2_vnp6_sn2 * vn3_vnp6_sn8
                                 - 81 vn4_vnp7_sn7 * vn1_vnp7_sn9
                                 - 91 vn4_vnp7_sn7 * vn1_vnp7_sn10
                                 - 125 vn4_vnp7_sn7 * vn1_vnp7_sn13
                                 - 131 vn4_vnp7_sn7 * vn2_vnp7_sn15
                                 - 81 vn4_vnp7_sn7 * vn2_vnp7_sn18
                                 - 38 vn4_vnp7_sn7 * vn3_vnp7_sn19
                                 - 53 vn1_vnp7_sn9 * vn2_vnp7_sn15
                                 - 41 vn1_vnp7_sn9 * vn2_vnp7_sn18
                                 - 31 vn1_vnp7_sn10 * vn2_vnp7_sn15
                                 - 43 vn1_vnp7_sn10 * vn2_vnp7_sn18
                                 - 39 vn1_vnp7_sn13 * vn2_vnp7_sn15
                                 - 69 vn1_vnp7_sn13 * vn2_vnp7_sn18
                                 - 132 vn4_vnp8_sn18 * vn1_vnp8_sn7
                                 - 146 vn4_vnp8_sn18 * vn1_vnp8_sn20
                                 - 130 vn4_vnp8_sn18 * vn1_vnp8_sn5
                                 - 80 vn1_vnp8_sn7 * vn4_vnp8_sn9
                                 - 83 vn1_vnp8_sn7 * vn4_vnp8_sn8
                                 - 125 vn1_vnp8_sn7 * vn2_vnp8_sn14
                                 - 175 vn1_vnp8_sn7 * vn2_vnp8_sn10
                                 - 140 vn1_vnp8_sn7 * vn3_vnp8_sn3
                                 - 254 vn1_vnp8_sn20 * vn4_vnp8_sn9
                                 - 167 vn1_vnp8_sn20 * vn4_vnp8_sn8
                                 - 189 vn1_vnp8_sn20 * vn2_vnp8_sn14
                                 - 169 vn1_vnp8_sn20 * vn2_vnp8_sn10
                                 - 204 vn1_vnp8_sn20 * vn3_vnp8_sn3
                                 - 43 vn1_vnp8_sn5 * vn4_vnp8_sn9
                                 - 81 vn1_vnp8_sn5 * vn4_vnp8_sn8
                                 - 88 vn1_vnp8_sn5 * vn2_vnp8_sn14
                                 - 58 vn1_vnp8_sn5 * vn2_vnp8_sn10
                                 - 108 vn1_vnp8_sn5 * vn3_vnp8_sn3
                                 - 87 vn2_vnp8_sn14 * vn3_vnp8_sn3
                                 - 74 vn2_vnp8_sn10 * vn3_vnp8_sn3 ] >= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: 2 vn3_vnp1_sn1 + 2 vn4_vnp2_sn1
                                 + 2 vn2_vnp4_sn1 <= 6
 CPU_capacity_of_substrate_node_2#1: 2 vn3_vnp3_sn2 + vn1_vnp5_sn2
                                 + 2 vn2_vnp6_sn2 <= 8
 CPU_capacity_of_substrate_node_3#2: 4 vn1_vnp2_sn3 + 4 vn2_vnp5_sn3
                                 + 4 vn3_vnp8_sn3 <= 8
 CPU_capacity_of_substrate_node_4#3: 3 vn2_vnp1_sn4 + 4 vn2_vnp2_sn4
                                 + 2 vn4_vnp5_sn4 + 2 vn2_vnp6_sn4 <= 6
 CPU_capacity_of_substrate_node_5#4: 4 vn1_vnp4_sn5 + 4 vn2_vnp5_sn5
                                 + 2 vn1_vnp8_sn5 <= 8
 CPU_capacity_of_substrate_node_6#5: 5 vn3_vnp5_sn6 <= 8
 CPU_capacity_of_substrate_node_7#6: 2 vn2_vnp4_sn7 + 5 vn4_vnp7_sn7
                                 + 2 vn1_vnp8_sn7 <= 4
 CPU_capacity_of_substrate_node_8#7: 2 vn2_vnp4_sn8 + 2 vn3_vnp6_sn8
                                 + 4 vn4_vnp8_sn8 <= 6
 CPU_capacity_of_substrate_node_9#8: 2 vn4_vnp2_sn9 + vn2_vnp3_sn9
                                 + 2 vn1_vnp7_sn9 + 4 vn4_vnp8_sn9 <= 8
 CPU_capacity_of_substrate_node_10#9: vn4_vnp4_sn10 + 5 vn3_vnp5_sn10
                                 + 3 vn4_vnp6_sn10 + 2 vn1_vnp7_sn10
                                 + 5 vn2_vnp8_sn10 <= 8
 CPU_capacity_of_substrate_node_11#10: 4 vn1_vnp2_sn11 + 2 vn4_vnp5_sn11 <= 8
 CPU_capacity_of_substrate_node_13#11: 2 vn3_vnp1_sn13 + 4 vn1_vnp2_sn13
                                 + 4 vn1_vnp4_sn13 + 4 vn2_vnp5_sn13
                                 + 2 vn1_vnp7_sn13 <= 8
 CPU_capacity_of_substrate_node_14#12: 2 vn3_vnp3_sn14 + 5 vn2_vnp8_sn14 <= 8
 CPU_capacity_of_substrate_node_15#13: 5 vn1_vnp1_sn15 + 2 vn4_vnp2_sn15
                                 + 4 vn1_vnp3_sn15 + 2 vn3_vnp4_sn15
                                 + 4 vn2_vnp7_sn15 <= 8
 CPU_capacity_of_substrate_node_16#14: vn1_vnp6_sn16 <= 7
 CPU_capacity_of_substrate_node_17#15: 3 vn2_vnp1_sn17 + 4 vn3_vnp2_sn17
                                 + 4 vn1_vnp4_sn17 <= 8
 CPU_capacity_of_substrate_node_18#16: vn2_vnp3_sn18 + 2 vn4_vnp5_sn18
                                 + vn1_vnp6_sn18 + 4 vn2_vnp7_sn18
                                 + 4 vn4_vnp8_sn18 <= 8
 CPU_capacity_of_substrate_node_19#17: 5 vn3_vnp5_sn19 + 2 vn2_vnp6_sn19
                                 + 5 vn3_vnp7_sn19 <= 3
 CPU_capacity_of_substrate_node_20#18: 2 vn1_vnp8_sn20 <= 8
Bounds
 0 <= vnp1 <= 1
 0 <= vn3_vnp1_sn1 <= 1
 0 <= vn1_vnp1_sn15 <= 1
 0 <= vn3_vnp1_sn13 <= 1
 0 <= vn2_vnp1_sn17 <= 1
 0 <= vn2_vnp1_sn4 <= 1
 0 <= vnp2 <= 1
 0 <= vn4_vnp2_sn1 <= 1
 0 <= vn1_vnp2_sn11 <= 1
 0 <= vn1_vnp2_sn13 <= 1
 0 <= vn1_vnp2_sn3 <= 1
 0 <= vn4_vnp2_sn15 <= 1
 0 <= vn4_vnp2_sn9 <= 1
 0 <= vn2_vnp2_sn4 <= 1
 0 <= vn3_vnp2_sn17 <= 1
 0 <= vnp3 <= 1
 0 <= vn3_vnp3_sn14 <= 1
 0 <= vn1_vnp3_sn15 <= 1
 0 <= vn3_vnp3_sn2 <= 1
 0 <= vn2_vnp3_sn9 <= 1
 0 <= vn2_vnp3_sn18 <= 1
 0 <= vnp4 <= 1
 0 <= vn2_vnp4_sn7 <= 1
 0 <= vn1_vnp4_sn5 <= 1
 0 <= vn1_vnp4_sn13 <= 1
 0 <= vn1_vnp4_sn17 <= 1
 0 <= vn2_vnp4_sn1 <= 1
 0 <= vn2_vnp4_sn8 <= 1
 0 <= vn3_vnp4_sn15 <= 1
 0 <= vn4_vnp4_sn10 <= 1
 0 <= vnp5 <= 1
 0 <= vn4_vnp5_sn18 <= 1
 0 <= vn1_vnp5_sn2 <= 1
 0 <= vn4_vnp5_sn4 <= 1
 0 <= vn4_vnp5_sn11 <= 1
 0 <= vn2_vnp5_sn5 <= 1
 0 <= vn2_vnp5_sn13 <= 1
 0 <= vn2_vnp5_sn3 <= 1
 0 <= vn3_vnp5_sn19 <= 1
 0 <= vn3_vnp5_sn10 <= 1
 0 <= vn3_vnp5_sn6 <= 1
 0 <= vnp6 <= 1
 0 <= vn4_vnp6_sn10 <= 1
 0 <= vn1_vnp6_sn16 <= 1
 0 <= vn1_vnp6_sn18 <= 1
 0 <= vn2_vnp6_sn19 <= 1
 0 <= vn2_vnp6_sn4 <= 1
 0 <= vn2_vnp6_sn2 <= 1
 0 <= vn3_vnp6_sn8 <= 1
 0 <= vnp7 <= 1
 0 <= vn4_vnp7_sn7 <= 1
 0 <= vn1_vnp7_sn9 <= 1
 0 <= vn1_vnp7_sn10 <= 1
 0 <= vn1_vnp7_sn13 <= 1
 0 <= vn2_vnp7_sn15 <= 1
 0 <= vn2_vnp7_sn18 <= 1
 0 <= vn3_vnp7_sn19 <= 1
 0 <= vnp8 <= 1
 0 <= vn4_vnp8_sn18 <= 1
 0 <= vn1_vnp8_sn7 <= 1
 0 <= vn1_vnp8_sn20 <= 1
 0 <= vn1_vnp8_sn5 <= 1
 0 <= vn4_vnp8_sn9 <= 1
 0 <= vn4_vnp8_sn8 <= 1
 0 <= vn2_vnp8_sn14 <= 1
 0 <= vn2_vnp8_sn10 <= 1
 0 <= vn3_vnp8_sn3 <= 1
Binaries
 vnp1  vn3_vnp1_sn1  vn1_vnp1_sn15  vn3_vnp1_sn13  vn2_vnp1_sn17  vn2_vnp1_sn4 
 vnp2  vn4_vnp2_sn1  vn1_vnp2_sn11  vn1_vnp2_sn13  vn1_vnp2_sn3  vn4_vnp2_sn15 
 vn4_vnp2_sn9  vn2_vnp2_sn4  vn3_vnp2_sn17  vnp3  vn3_vnp3_sn14  vn1_vnp3_sn15 
 vn3_vnp3_sn2  vn2_vnp3_sn9  vn2_vnp3_sn18  vnp4  vn2_vnp4_sn7  vn1_vnp4_sn5 
 vn1_vnp4_sn13  vn1_vnp4_sn17  vn2_vnp4_sn1  vn2_vnp4_sn8  vn3_vnp4_sn15 
 vn4_vnp4_sn10  vnp5  vn4_vnp5_sn18  vn1_vnp5_sn2  vn4_vnp5_sn4  vn4_vnp5_sn11 
 vn2_vnp5_sn5  vn2_vnp5_sn13  vn2_vnp5_sn3  vn3_vnp5_sn19  vn3_vnp5_sn10 
 vn3_vnp5_sn6  vnp6  vn4_vnp6_sn10  vn1_vnp6_sn16  vn1_vnp6_sn18 
 vn2_vnp6_sn19  vn2_vnp6_sn4  vn2_vnp6_sn2  vn3_vnp6_sn8  vnp7  vn4_vnp7_sn7 
 vn1_vnp7_sn9  vn1_vnp7_sn10  vn1_vnp7_sn13  vn2_vnp7_sn15  vn2_vnp7_sn18 
 vn3_vnp7_sn19  vnp8  vn4_vnp8_sn18  vn1_vnp8_sn7  vn1_vnp8_sn20  vn1_vnp8_sn5 
 vn4_vnp8_sn9  vn4_vnp8_sn8  vn2_vnp8_sn14  vn2_vnp8_sn10  vn3_vnp8_sn3 
End
