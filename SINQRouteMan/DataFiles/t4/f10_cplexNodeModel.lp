\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1041 vnp1 + 1141 vnp2 + 927 vnp3 + 674 vnp4 + 713 vnp5 + 1066 vnp6
      + 630 vnp7 + [ - 62 vn4_vnp1_sn5 * vn1_vnp1_sn16
      - 34 vn4_vnp1_sn5 * vn1_vnp1_sn10 - 102 vn4_vnp1_sn5 * vn1_vnp1_sn13
      - 104 vn4_vnp1_sn5 * vn2_vnp1_sn12 - 136 vn4_vnp1_sn5 * vn2_vnp1_sn8
      - 246 vn4_vnp1_sn5 * vn3_vnp1_sn11 - 230 vn4_vnp1_sn5 * vn3_vnp1_sn17
      - 62 vn1_vnp1_sn16 * vn4_vnp1_sn4 - 66 vn1_vnp1_sn16 * vn2_vnp1_sn12
      - 36 vn1_vnp1_sn16 * vn2_vnp1_sn8 - 38 vn1_vnp1_sn10 * vn4_vnp1_sn4
      - 10 vn1_vnp1_sn10 * vn2_vnp1_sn12 - 26 vn1_vnp1_sn10 * vn2_vnp1_sn8
      - 158 vn1_vnp1_sn13 * vn4_vnp1_sn4 - 40 vn1_vnp1_sn13 * vn2_vnp1_sn12
      - 106 vn1_vnp1_sn13 * vn2_vnp1_sn8 - 120 vn4_vnp1_sn4 * vn2_vnp1_sn12
      - 32 vn4_vnp1_sn4 * vn2_vnp1_sn8 - 366 vn4_vnp1_sn4 * vn3_vnp1_sn11
      - 126 vn4_vnp1_sn4 * vn3_vnp1_sn17 - 158 vn2_vnp1_sn12 * vn3_vnp1_sn11
      - 182 vn2_vnp1_sn12 * vn3_vnp1_sn17 - 470 vn2_vnp1_sn8 * vn3_vnp1_sn11
      - 94 vn2_vnp1_sn8 * vn3_vnp1_sn17 - 90 vn4_vnp2_sn15 * vn1_vnp2_sn2
      - 54 vn4_vnp2_sn15 * vn1_vnp2_sn14 - 88 vn4_vnp2_sn15 * vn1_vnp2_sn11
      - 88 vn4_vnp2_sn15 * vn3_vnp2_sn12 - 446 vn4_vnp2_sn15 * vn2_vnp2_sn3
      - 374 vn4_vnp2_sn15 * vn2_vnp2_sn8 - 74 vn4_vnp2_sn15 * vn3_vnp2_sn4
      - 170 vn4_vnp2_sn15 * vn3_vnp2_sn13 - 78 vn1_vnp2_sn2 * vn4_vnp2_sn7
      - 60 vn1_vnp2_sn2 * vn4_vnp2_sn1 - 60 vn1_vnp2_sn2 * vn3_vnp2_sn12
      - 66 vn1_vnp2_sn2 * vn2_vnp2_sn3 - 276 vn1_vnp2_sn2 * vn2_vnp2_sn8
      - 46 vn1_vnp2_sn2 * vn3_vnp2_sn4 - 144 vn1_vnp2_sn2 * vn3_vnp2_sn13
      - 88 vn1_vnp2_sn14 * vn4_vnp2_sn7 - 126 vn1_vnp2_sn14 * vn4_vnp2_sn1
      - 74 vn1_vnp2_sn14 * vn3_vnp2_sn12 - 204 vn1_vnp2_sn14 * vn2_vnp2_sn3
      - 144 vn1_vnp2_sn14 * vn2_vnp2_sn8 - 68 vn1_vnp2_sn14 * vn3_vnp2_sn4
      - 122 vn1_vnp2_sn14 * vn3_vnp2_sn13 - 184 vn1_vnp2_sn11 * vn4_vnp2_sn7
      - 160 vn1_vnp2_sn11 * vn4_vnp2_sn1 - 68 vn1_vnp2_sn11 * vn3_vnp2_sn12
      - 312 vn1_vnp2_sn11 * vn2_vnp2_sn3 - 306 vn1_vnp2_sn11 * vn2_vnp2_sn8
      - 116 vn1_vnp2_sn11 * vn3_vnp2_sn4 - 110 vn1_vnp2_sn11 * vn3_vnp2_sn13
      - 86 vn4_vnp2_sn7 * vn3_vnp2_sn12 - 292 vn4_vnp2_sn7 * vn2_vnp2_sn3
      - 230 vn4_vnp2_sn7 * vn2_vnp2_sn8 - 40 vn4_vnp2_sn7 * vn3_vnp2_sn4
      - 168 vn4_vnp2_sn7 * vn3_vnp2_sn13 - 220 vn4_vnp2_sn1 * vn3_vnp2_sn12
      - 178 vn4_vnp2_sn1 * vn2_vnp2_sn3 - 156 vn4_vnp2_sn1 * vn2_vnp2_sn8
      - 82 vn4_vnp2_sn1 * vn3_vnp2_sn4 - 322 vn4_vnp2_sn1 * vn3_vnp2_sn13
      - 256 vn3_vnp2_sn12 * vn2_vnp2_sn3 - 156 vn3_vnp2_sn12 * vn2_vnp2_sn8
      - 98 vn2_vnp2_sn3 * vn3_vnp2_sn4 - 490 vn2_vnp2_sn3 * vn3_vnp2_sn13
      - 22 vn2_vnp2_sn8 * vn3_vnp2_sn4 - 438 vn2_vnp2_sn8 * vn3_vnp2_sn13
      - 198 vn3_vnp3_sn11 * vn1_vnp3_sn5 - 258 vn3_vnp3_sn11 * vn1_vnp3_sn9
      - 144 vn3_vnp3_sn11 * vn1_vnp3_sn12 - 316 vn3_vnp3_sn11 * vn2_vnp3_sn20
      - 476 vn3_vnp3_sn11 * vn2_vnp3_sn8 - 260 vn3_vnp3_sn11 * vn4_vnp3_sn1
      - 124 vn3_vnp3_sn11 * vn4_vnp3_sn10 - 102 vn3_vnp3_sn11 * vn4_vnp3_sn14
      - 342 vn1_vnp3_sn5 * vn2_vnp3_sn20 - 114 vn1_vnp3_sn5 * vn2_vnp3_sn8
      - 258 vn1_vnp3_sn9 * vn2_vnp3_sn20 - 84 vn1_vnp3_sn9 * vn2_vnp3_sn8
      - 216 vn1_vnp3_sn12 * vn2_vnp3_sn20 - 186 vn1_vnp3_sn12 * vn2_vnp3_sn8
      - 38 vn4_vnp4_sn12 * vn1_vnp4_sn4 - 76 vn4_vnp4_sn12 * vn2_vnp4_sn15
      - 126 vn4_vnp4_sn12 * vn2_vnp4_sn18 - 172 vn4_vnp4_sn12 * vn2_vnp4_sn19
      - 12 vn1_vnp4_sn4 * vn4_vnp4_sn8 - 150 vn1_vnp4_sn4 * vn4_vnp4_sn13
      - 134 vn1_vnp4_sn4 * vn2_vnp4_sn15 - 126 vn1_vnp4_sn4 * vn2_vnp4_sn18
      - 198 vn1_vnp4_sn4 * vn2_vnp4_sn19 - 72 vn1_vnp4_sn4 * vn3_vnp4_sn17
      - 148 vn4_vnp4_sn8 * vn2_vnp4_sn15 - 50 vn4_vnp4_sn8 * vn2_vnp4_sn18
      - 140 vn4_vnp4_sn8 * vn2_vnp4_sn19 - 158 vn4_vnp4_sn13 * vn2_vnp4_sn15
      - 208 vn4_vnp4_sn13 * vn2_vnp4_sn18 - 254 vn4_vnp4_sn13 * vn2_vnp4_sn19
      - 246 vn3_vnp5_sn15 * vn1_vnp5_sn5 - 372 vn3_vnp5_sn15 * vn1_vnp5_sn6
      - 246 vn3_vnp5_sn15 * vn1_vnp5_sn4 - 40 vn3_vnp5_sn15 * vn2_vnp5_sn16
      - 88 vn3_vnp5_sn15 * vn2_vnp5_sn3 - 134 vn3_vnp5_sn15 * vn4_vnp5_sn12
      - 166 vn3_vnp5_sn15 * vn4_vnp5_sn11 - 226 vn1_vnp5_sn5 * vn3_vnp5_sn1
      - 54 vn1_vnp5_sn5 * vn3_vnp5_sn9 - 64 vn1_vnp5_sn5 * vn4_vnp5_sn12
      - 120 vn1_vnp5_sn5 * vn4_vnp5_sn11 - 346 vn1_vnp5_sn6 * vn3_vnp5_sn1
      - 174 vn1_vnp5_sn6 * vn3_vnp5_sn9 - 190 vn1_vnp5_sn6 * vn4_vnp5_sn12
      - 202 vn1_vnp5_sn6 * vn4_vnp5_sn11 - 100 vn1_vnp5_sn4 * vn3_vnp5_sn1
      - 54 vn1_vnp5_sn4 * vn3_vnp5_sn9 - 72 vn1_vnp5_sn4 * vn4_vnp5_sn12
      - 180 vn1_vnp5_sn4 * vn4_vnp5_sn11 - 70 vn3_vnp5_sn1 * vn2_vnp5_sn16
      - 36 vn3_vnp5_sn1 * vn2_vnp5_sn3 - 378 vn3_vnp5_sn1 * vn4_vnp5_sn12
      - 410 vn3_vnp5_sn1 * vn4_vnp5_sn11 - 36 vn3_vnp5_sn9 * vn2_vnp5_sn16
      - 24 vn3_vnp5_sn9 * vn2_vnp5_sn3 - 70 vn3_vnp5_sn9 * vn4_vnp5_sn12
      - 286 vn3_vnp5_sn9 * vn4_vnp5_sn11 - 178 vn2_vnp6_sn8 * vn1_vnp6_sn14
      - 220 vn2_vnp6_sn8 * vn4_vnp6_sn2 - 96 vn2_vnp6_sn8 * vn3_vnp6_sn20
      - 132 vn2_vnp6_sn8 * vn3_vnp6_sn12 - 154 vn1_vnp6_sn14 * vn2_vnp6_sn11
      - 220 vn1_vnp6_sn14 * vn2_vnp6_sn5 - 436 vn2_vnp6_sn11 * vn4_vnp6_sn2
      - 188 vn2_vnp6_sn11 * vn3_vnp6_sn20 - 112 vn2_vnp6_sn11 * vn3_vnp6_sn12
      - 238 vn2_vnp6_sn5 * vn4_vnp6_sn2 - 278 vn2_vnp6_sn5 * vn3_vnp6_sn20
      - 82 vn2_vnp6_sn5 * vn3_vnp6_sn12 - 204 vn4_vnp6_sn2 * vn3_vnp6_sn20
      - 216 vn4_vnp6_sn2 * vn3_vnp6_sn12 - 66 vn4_vnp7_sn12 * vn1_vnp7_sn4
      - 62 vn4_vnp7_sn12 * vn1_vnp7_sn5 - 96 vn4_vnp7_sn12 * vn1_vnp7_sn2
      - 112 vn4_vnp7_sn12 * vn3_vnp7_sn11 - 208 vn4_vnp7_sn12 * vn3_vnp7_sn6
      - 56 vn1_vnp7_sn4 * vn4_vnp7_sn10 - 72 vn1_vnp7_sn4 * vn4_vnp7_sn17
      - 444 vn1_vnp7_sn4 * vn3_vnp7_sn11 - 324 vn1_vnp7_sn4 * vn3_vnp7_sn6
      - 52 vn1_vnp7_sn5 * vn4_vnp7_sn10 - 98 vn1_vnp7_sn5 * vn4_vnp7_sn17
      - 294 vn1_vnp7_sn5 * vn3_vnp7_sn11 - 244 vn1_vnp7_sn5 * vn3_vnp7_sn6
      - 86 vn1_vnp7_sn2 * vn4_vnp7_sn10 - 114 vn1_vnp7_sn2 * vn4_vnp7_sn17
      - 536 vn1_vnp7_sn2 * vn3_vnp7_sn11 - 486 vn1_vnp7_sn2 * vn3_vnp7_sn6
      - 124 vn4_vnp7_sn10 * vn3_vnp7_sn11 - 144 vn4_vnp7_sn10 * vn3_vnp7_sn6
      - 152 vn4_vnp7_sn17 * vn3_vnp7_sn11 - 224 vn4_vnp7_sn17 * vn3_vnp7_sn6
      - 88 vn3_vnp7_sn11 * vn2_vnp7_sn15 - 160 vn2_vnp7_sn15 * vn3_vnp7_sn6
      ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn16
                                 + vn1_vnp1_sn10 + vn1_vnp1_sn13 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn12
                                 + vn2_vnp1_sn8 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn11
                                 + vn3_vnp1_sn17 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn5 + vn4_vnp1_sn4
                                 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn2
                                 + vn1_vnp2_sn14 + vn1_vnp2_sn11 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn3 + vn2_vnp2_sn8
                                 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn12
                                 + vn3_vnp2_sn4 + vn3_vnp2_sn13 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#7: - vnp2 + vn4_vnp2_sn15
                                 + vn4_vnp2_sn7 + vn4_vnp2_sn1 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#8: - vnp3 + vn1_vnp3_sn5 + vn1_vnp3_sn9
                                 + vn1_vnp3_sn12 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#9: - vnp3 + vn2_vnp3_sn20
                                 + vn2_vnp3_sn8 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#10: - vnp3 + vn3_vnp3_sn11 <= 0
 _Embedding_clash_const_of_vnode4_vnp_3#11: - vnp3 + vn4_vnp3_sn1
                                 + vn4_vnp3_sn10 + vn4_vnp3_sn14 <= 0
 _Embedding_clash_const_of_vnode1_vnp_4#12: - vnp4 + vn1_vnp4_sn4 <= 0
 _Embedding_clash_const_of_vnode2_vnp_4#13: - vnp4 + vn2_vnp4_sn15
                                 + vn2_vnp4_sn18 + vn2_vnp4_sn19 <= 0
 _Embedding_clash_const_of_vnode3_vnp_4#14: - vnp4 + vn3_vnp4_sn17 <= 0
 _Embedding_clash_const_of_vnode4_vnp_4#15: - vnp4 + vn4_vnp4_sn12
                                 + vn4_vnp4_sn8 + vn4_vnp4_sn13 <= 0
 _Embedding_clash_const_of_vnode1_vnp_5#16: - vnp5 + vn1_vnp5_sn5
                                 + vn1_vnp5_sn6 + vn1_vnp5_sn4 <= 0
 _Embedding_clash_const_of_vnode2_vnp_5#17: - vnp5 + vn2_vnp5_sn16
                                 + vn2_vnp5_sn3 <= 0
 _Embedding_clash_const_of_vnode3_vnp_5#18: - vnp5 + vn3_vnp5_sn15
                                 + vn3_vnp5_sn1 + vn3_vnp5_sn9 <= 0
 _Embedding_clash_const_of_vnode4_vnp_5#19: - vnp5 + vn4_vnp5_sn12
                                 + vn4_vnp5_sn11 <= 0
 _Embedding_clash_const_of_vnode1_vnp_6#20: - vnp6 + vn1_vnp6_sn14 <= 0
 _Embedding_clash_const_of_vnode2_vnp_6#21: - vnp6 + vn2_vnp6_sn8
                                 + vn2_vnp6_sn11 + vn2_vnp6_sn5 <= 0
 _Embedding_clash_const_of_vnode3_vnp_6#22: - vnp6 + vn3_vnp6_sn20
                                 + vn3_vnp6_sn12 <= 0
 _Embedding_clash_const_of_vnode4_vnp_6#23: - vnp6 + vn4_vnp6_sn2 <= 0
 _Embedding_clash_const_of_vnode1_vnp_7#24: - vnp7 + vn1_vnp7_sn4
                                 + vn1_vnp7_sn5 + vn1_vnp7_sn2 <= 0
 _Embedding_clash_const_of_vnode2_vnp_7#25: - vnp7 + vn2_vnp7_sn15 <= 0
 _Embedding_clash_const_of_vnode3_vnp_7#26: - vnp7 + vn3_vnp7_sn11
                                 + vn3_vnp7_sn6 <= 0
 _Embedding_clash_const_of_vnode4_vnp_7#27: - vnp7 + vn4_vnp7_sn12
                                 + vn4_vnp7_sn10 + vn4_vnp7_sn17 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn4_vnp1_sn5 * vn1_vnp1_sn16
                                 - vn4_vnp1_sn5 * vn1_vnp1_sn10
                                 - vn4_vnp1_sn5 * vn1_vnp1_sn13
                                 - vn1_vnp1_sn16 * vn4_vnp1_sn4
                                 - vn1_vnp1_sn10 * vn4_vnp1_sn4
                                 - vn1_vnp1_sn13 * vn4_vnp1_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn4_vnp1_sn5 * vn2_vnp1_sn12
                                 - vn4_vnp1_sn5 * vn2_vnp1_sn8
                                 - vn4_vnp1_sn4 * vn2_vnp1_sn12
                                 - vn4_vnp1_sn4 * vn2_vnp1_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn4_vnp1_sn5 * vn3_vnp1_sn11
                                 - vn4_vnp1_sn5 * vn3_vnp1_sn17
                                 - vn4_vnp1_sn4 * vn3_vnp1_sn11
                                 - vn4_vnp1_sn4 * vn3_vnp1_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn2_vnp1_sn12 * vn3_vnp1_sn11
                                 - vn2_vnp1_sn12 * vn3_vnp1_sn17
                                 - vn2_vnp1_sn8 * vn3_vnp1_sn11
                                 - vn2_vnp1_sn8 * vn3_vnp1_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_5#4: vnp1
                                 + [ - vn1_vnp1_sn16 * vn2_vnp1_sn12
                                 - vn1_vnp1_sn16 * vn2_vnp1_sn8
                                 - vn1_vnp1_sn10 * vn2_vnp1_sn12
                                 - vn1_vnp1_sn10 * vn2_vnp1_sn8
                                 - vn1_vnp1_sn13 * vn2_vnp1_sn12
                                 - vn1_vnp1_sn13 * vn2_vnp1_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn4_vnp2_sn15 * vn1_vnp2_sn2
                                 - vn4_vnp2_sn15 * vn1_vnp2_sn14
                                 - vn4_vnp2_sn15 * vn1_vnp2_sn11
                                 - vn1_vnp2_sn2 * vn4_vnp2_sn7
                                 - vn1_vnp2_sn2 * vn4_vnp2_sn1
                                 - vn1_vnp2_sn14 * vn4_vnp2_sn7
                                 - vn1_vnp2_sn14 * vn4_vnp2_sn1
                                 - vn1_vnp2_sn11 * vn4_vnp2_sn7
                                 - vn1_vnp2_sn11 * vn4_vnp2_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn3_vnp2_sn12 * vn2_vnp2_sn3
                                 - vn3_vnp2_sn12 * vn2_vnp2_sn8
                                 - vn2_vnp2_sn3 * vn3_vnp2_sn4
                                 - vn2_vnp2_sn3 * vn3_vnp2_sn13
                                 - vn2_vnp2_sn8 * vn3_vnp2_sn4
                                 - vn2_vnp2_sn8 * vn3_vnp2_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_8#7: vnp2
                                 + [ - vn1_vnp2_sn2 * vn3_vnp2_sn12
                                 - vn1_vnp2_sn2 * vn3_vnp2_sn4
                                 - vn1_vnp2_sn2 * vn3_vnp2_sn13
                                 - vn1_vnp2_sn14 * vn3_vnp2_sn12
                                 - vn1_vnp2_sn14 * vn3_vnp2_sn4
                                 - vn1_vnp2_sn14 * vn3_vnp2_sn13
                                 - vn1_vnp2_sn11 * vn3_vnp2_sn12
                                 - vn1_vnp2_sn11 * vn3_vnp2_sn4
                                 - vn1_vnp2_sn11 * vn3_vnp2_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_9#8: vnp2
                                 + [ - vn4_vnp2_sn15 * vn2_vnp2_sn3
                                 - vn4_vnp2_sn15 * vn2_vnp2_sn8
                                 - vn4_vnp2_sn7 * vn2_vnp2_sn3
                                 - vn4_vnp2_sn7 * vn2_vnp2_sn8
                                 - vn4_vnp2_sn1 * vn2_vnp2_sn3
                                 - vn4_vnp2_sn1 * vn2_vnp2_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_10#9: vnp2
                                 + [ - vn1_vnp2_sn2 * vn2_vnp2_sn3
                                 - vn1_vnp2_sn2 * vn2_vnp2_sn8
                                 - vn1_vnp2_sn14 * vn2_vnp2_sn3
                                 - vn1_vnp2_sn14 * vn2_vnp2_sn8
                                 - vn1_vnp2_sn11 * vn2_vnp2_sn3
                                 - vn1_vnp2_sn11 * vn2_vnp2_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_11#10: vnp2
                                 + [ - vn4_vnp2_sn15 * vn3_vnp2_sn12
                                 - vn4_vnp2_sn15 * vn3_vnp2_sn4
                                 - vn4_vnp2_sn15 * vn3_vnp2_sn13
                                 - vn4_vnp2_sn7 * vn3_vnp2_sn12
                                 - vn4_vnp2_sn7 * vn3_vnp2_sn4
                                 - vn4_vnp2_sn7 * vn3_vnp2_sn13
                                 - vn4_vnp2_sn1 * vn3_vnp2_sn12
                                 - vn4_vnp2_sn1 * vn3_vnp2_sn4
                                 - vn4_vnp2_sn1 * vn3_vnp2_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_12#11: vnp3
                                 + [ - vn3_vnp3_sn11 * vn1_vnp3_sn5
                                 - vn3_vnp3_sn11 * vn1_vnp3_sn9
                                 - vn3_vnp3_sn11 * vn1_vnp3_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_13#12: vnp3
                                 + [ - vn3_vnp3_sn11 * vn2_vnp3_sn20
                                 - vn3_vnp3_sn11 * vn2_vnp3_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_14#13: vnp3
                                 + [ - vn3_vnp3_sn11 * vn4_vnp3_sn1
                                 - vn3_vnp3_sn11 * vn4_vnp3_sn10
                                 - vn3_vnp3_sn11 * vn4_vnp3_sn14 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_15#14: vnp3
                                 + [ - vn1_vnp3_sn5 * vn2_vnp3_sn20
                                 - vn1_vnp3_sn5 * vn2_vnp3_sn8
                                 - vn1_vnp3_sn9 * vn2_vnp3_sn20
                                 - vn1_vnp3_sn9 * vn2_vnp3_sn8
                                 - vn1_vnp3_sn12 * vn2_vnp3_sn20
                                 - vn1_vnp3_sn12 * vn2_vnp3_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_16#15: vnp4
                                 + [ - vn4_vnp4_sn12 * vn1_vnp4_sn4
                                 - vn1_vnp4_sn4 * vn4_vnp4_sn8
                                 - vn1_vnp4_sn4 * vn4_vnp4_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_17#16: vnp4
                                 + [ - vn1_vnp4_sn4 * vn2_vnp4_sn15
                                 - vn1_vnp4_sn4 * vn2_vnp4_sn18
                                 - vn1_vnp4_sn4 * vn2_vnp4_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_18#17: vnp4
                                 + [ - vn1_vnp4_sn4 * vn3_vnp4_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_19#18: vnp4
                                 + [ - vn4_vnp4_sn12 * vn2_vnp4_sn15
                                 - vn4_vnp4_sn12 * vn2_vnp4_sn18
                                 - vn4_vnp4_sn12 * vn2_vnp4_sn19
                                 - vn4_vnp4_sn8 * vn2_vnp4_sn15
                                 - vn4_vnp4_sn8 * vn2_vnp4_sn18
                                 - vn4_vnp4_sn8 * vn2_vnp4_sn19
                                 - vn4_vnp4_sn13 * vn2_vnp4_sn15
                                 - vn4_vnp4_sn13 * vn2_vnp4_sn18
                                 - vn4_vnp4_sn13 * vn2_vnp4_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_20#19: vnp5
                                 + [ - vn3_vnp5_sn15 * vn1_vnp5_sn5
                                 - vn3_vnp5_sn15 * vn1_vnp5_sn6
                                 - vn3_vnp5_sn15 * vn1_vnp5_sn4
                                 - vn1_vnp5_sn5 * vn3_vnp5_sn1
                                 - vn1_vnp5_sn5 * vn3_vnp5_sn9
                                 - vn1_vnp5_sn6 * vn3_vnp5_sn1
                                 - vn1_vnp5_sn6 * vn3_vnp5_sn9
                                 - vn1_vnp5_sn4 * vn3_vnp5_sn1
                                 - vn1_vnp5_sn4 * vn3_vnp5_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_21#20: vnp5
                                 + [ - vn3_vnp5_sn15 * vn2_vnp5_sn16
                                 - vn3_vnp5_sn15 * vn2_vnp5_sn3
                                 - vn3_vnp5_sn1 * vn2_vnp5_sn16
                                 - vn3_vnp5_sn1 * vn2_vnp5_sn3
                                 - vn3_vnp5_sn9 * vn2_vnp5_sn16
                                 - vn3_vnp5_sn9 * vn2_vnp5_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_22#21: vnp5
                                 + [ - vn3_vnp5_sn15 * vn4_vnp5_sn12
                                 - vn3_vnp5_sn15 * vn4_vnp5_sn11
                                 - vn3_vnp5_sn1 * vn4_vnp5_sn12
                                 - vn3_vnp5_sn1 * vn4_vnp5_sn11
                                 - vn3_vnp5_sn9 * vn4_vnp5_sn12
                                 - vn3_vnp5_sn9 * vn4_vnp5_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_23#22: vnp5
                                 + [ - vn1_vnp5_sn5 * vn4_vnp5_sn12
                                 - vn1_vnp5_sn5 * vn4_vnp5_sn11
                                 - vn1_vnp5_sn6 * vn4_vnp5_sn12
                                 - vn1_vnp5_sn6 * vn4_vnp5_sn11
                                 - vn1_vnp5_sn4 * vn4_vnp5_sn12
                                 - vn1_vnp5_sn4 * vn4_vnp5_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_24#23: vnp6
                                 + [ - vn2_vnp6_sn8 * vn1_vnp6_sn14
                                 - vn1_vnp6_sn14 * vn2_vnp6_sn11
                                 - vn1_vnp6_sn14 * vn2_vnp6_sn5 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_25#24: vnp6
                                 + [ - vn2_vnp6_sn8 * vn4_vnp6_sn2
                                 - vn2_vnp6_sn11 * vn4_vnp6_sn2
                                 - vn2_vnp6_sn5 * vn4_vnp6_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_26#25: vnp6
                                 + [ - vn4_vnp6_sn2 * vn3_vnp6_sn20
                                 - vn4_vnp6_sn2 * vn3_vnp6_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_27#26: vnp6
                                 + [ - vn2_vnp6_sn8 * vn3_vnp6_sn20
                                 - vn2_vnp6_sn8 * vn3_vnp6_sn12
                                 - vn2_vnp6_sn11 * vn3_vnp6_sn20
                                 - vn2_vnp6_sn11 * vn3_vnp6_sn12
                                 - vn2_vnp6_sn5 * vn3_vnp6_sn20
                                 - vn2_vnp6_sn5 * vn3_vnp6_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_28#27: vnp7
                                 + [ - vn4_vnp7_sn12 * vn1_vnp7_sn4
                                 - vn4_vnp7_sn12 * vn1_vnp7_sn5
                                 - vn4_vnp7_sn12 * vn1_vnp7_sn2
                                 - vn1_vnp7_sn4 * vn4_vnp7_sn10
                                 - vn1_vnp7_sn4 * vn4_vnp7_sn17
                                 - vn1_vnp7_sn5 * vn4_vnp7_sn10
                                 - vn1_vnp7_sn5 * vn4_vnp7_sn17
                                 - vn1_vnp7_sn2 * vn4_vnp7_sn10
                                 - vn1_vnp7_sn2 * vn4_vnp7_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_29#28: vnp7
                                 + [ - vn3_vnp7_sn11 * vn2_vnp7_sn15
                                 - vn2_vnp7_sn15 * vn3_vnp7_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_30#29: vnp7
                                 + [ - vn4_vnp7_sn12 * vn3_vnp7_sn11
                                 - vn4_vnp7_sn12 * vn3_vnp7_sn6
                                 - vn4_vnp7_sn10 * vn3_vnp7_sn11
                                 - vn4_vnp7_sn10 * vn3_vnp7_sn6
                                 - vn4_vnp7_sn17 * vn3_vnp7_sn11
                                 - vn4_vnp7_sn17 * vn3_vnp7_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_31#30: vnp7
                                 + [ - vn1_vnp7_sn4 * vn3_vnp7_sn11
                                 - vn1_vnp7_sn4 * vn3_vnp7_sn6
                                 - vn1_vnp7_sn5 * vn3_vnp7_sn11
                                 - vn1_vnp7_sn5 * vn3_vnp7_sn6
                                 - vn1_vnp7_sn2 * vn3_vnp7_sn11
                                 - vn1_vnp7_sn2 * vn3_vnp7_sn6 ] <= 0
 q32#31:                         - 1041 vnp1 - 1141 vnp2 - 927 vnp3 - 674 vnp4
                                 - 713 vnp5 - 1066 vnp6 - 630 vnp7
                                 + [ 31 vn4_vnp1_sn5 * vn1_vnp1_sn16
                                 + 17 vn4_vnp1_sn5 * vn1_vnp1_sn10
                                 + 51 vn4_vnp1_sn5 * vn1_vnp1_sn13
                                 + 52 vn4_vnp1_sn5 * vn2_vnp1_sn12
                                 + 68 vn4_vnp1_sn5 * vn2_vnp1_sn8
                                 + 123 vn4_vnp1_sn5 * vn3_vnp1_sn11
                                 + 115 vn4_vnp1_sn5 * vn3_vnp1_sn17
                                 + 31 vn1_vnp1_sn16 * vn4_vnp1_sn4
                                 + 33 vn1_vnp1_sn16 * vn2_vnp1_sn12
                                 + 18 vn1_vnp1_sn16 * vn2_vnp1_sn8
                                 + 19 vn1_vnp1_sn10 * vn4_vnp1_sn4
                                 + 5 vn1_vnp1_sn10 * vn2_vnp1_sn12
                                 + 13 vn1_vnp1_sn10 * vn2_vnp1_sn8
                                 + 79 vn1_vnp1_sn13 * vn4_vnp1_sn4
                                 + 20 vn1_vnp1_sn13 * vn2_vnp1_sn12
                                 + 53 vn1_vnp1_sn13 * vn2_vnp1_sn8
                                 + 60 vn4_vnp1_sn4 * vn2_vnp1_sn12
                                 + 16 vn4_vnp1_sn4 * vn2_vnp1_sn8
                                 + 183 vn4_vnp1_sn4 * vn3_vnp1_sn11
                                 + 63 vn4_vnp1_sn4 * vn3_vnp1_sn17
                                 + 79 vn2_vnp1_sn12 * vn3_vnp1_sn11
                                 + 91 vn2_vnp1_sn12 * vn3_vnp1_sn17
                                 + 235 vn2_vnp1_sn8 * vn3_vnp1_sn11
                                 + 47 vn2_vnp1_sn8 * vn3_vnp1_sn17
                                 + 45 vn4_vnp2_sn15 * vn1_vnp2_sn2
                                 + 27 vn4_vnp2_sn15 * vn1_vnp2_sn14
                                 + 44 vn4_vnp2_sn15 * vn1_vnp2_sn11
                                 + 44 vn4_vnp2_sn15 * vn3_vnp2_sn12
                                 + 223 vn4_vnp2_sn15 * vn2_vnp2_sn3
                                 + 187 vn4_vnp2_sn15 * vn2_vnp2_sn8
                                 + 37 vn4_vnp2_sn15 * vn3_vnp2_sn4
                                 + 85 vn4_vnp2_sn15 * vn3_vnp2_sn13
                                 + 39 vn1_vnp2_sn2 * vn4_vnp2_sn7
                                 + 30 vn1_vnp2_sn2 * vn4_vnp2_sn1
                                 + 30 vn1_vnp2_sn2 * vn3_vnp2_sn12
                                 + 33 vn1_vnp2_sn2 * vn2_vnp2_sn3
                                 + 138 vn1_vnp2_sn2 * vn2_vnp2_sn8
                                 + 23 vn1_vnp2_sn2 * vn3_vnp2_sn4
                                 + 72 vn1_vnp2_sn2 * vn3_vnp2_sn13
                                 + 44 vn1_vnp2_sn14 * vn4_vnp2_sn7
                                 + 63 vn1_vnp2_sn14 * vn4_vnp2_sn1
                                 + 37 vn1_vnp2_sn14 * vn3_vnp2_sn12
                                 + 102 vn1_vnp2_sn14 * vn2_vnp2_sn3
                                 + 72 vn1_vnp2_sn14 * vn2_vnp2_sn8
                                 + 34 vn1_vnp2_sn14 * vn3_vnp2_sn4
                                 + 61 vn1_vnp2_sn14 * vn3_vnp2_sn13
                                 + 92 vn1_vnp2_sn11 * vn4_vnp2_sn7
                                 + 80 vn1_vnp2_sn11 * vn4_vnp2_sn1
                                 + 34 vn1_vnp2_sn11 * vn3_vnp2_sn12
                                 + 156 vn1_vnp2_sn11 * vn2_vnp2_sn3
                                 + 153 vn1_vnp2_sn11 * vn2_vnp2_sn8
                                 + 58 vn1_vnp2_sn11 * vn3_vnp2_sn4
                                 + 55 vn1_vnp2_sn11 * vn3_vnp2_sn13
                                 + 43 vn4_vnp2_sn7 * vn3_vnp2_sn12
                                 + 146 vn4_vnp2_sn7 * vn2_vnp2_sn3
                                 + 115 vn4_vnp2_sn7 * vn2_vnp2_sn8
                                 + 20 vn4_vnp2_sn7 * vn3_vnp2_sn4
                                 + 84 vn4_vnp2_sn7 * vn3_vnp2_sn13
                                 + 110 vn4_vnp2_sn1 * vn3_vnp2_sn12
                                 + 89 vn4_vnp2_sn1 * vn2_vnp2_sn3
                                 + 78 vn4_vnp2_sn1 * vn2_vnp2_sn8
                                 + 41 vn4_vnp2_sn1 * vn3_vnp2_sn4
                                 + 161 vn4_vnp2_sn1 * vn3_vnp2_sn13
                                 + 128 vn3_vnp2_sn12 * vn2_vnp2_sn3
                                 + 78 vn3_vnp2_sn12 * vn2_vnp2_sn8
                                 + 49 vn2_vnp2_sn3 * vn3_vnp2_sn4
                                 + 245 vn2_vnp2_sn3 * vn3_vnp2_sn13
                                 + 11 vn2_vnp2_sn8 * vn3_vnp2_sn4
                                 + 219 vn2_vnp2_sn8 * vn3_vnp2_sn13
                                 + 99 vn3_vnp3_sn11 * vn1_vnp3_sn5
                                 + 129 vn3_vnp3_sn11 * vn1_vnp3_sn9
                                 + 72 vn3_vnp3_sn11 * vn1_vnp3_sn12
                                 + 158 vn3_vnp3_sn11 * vn2_vnp3_sn20
                                 + 238 vn3_vnp3_sn11 * vn2_vnp3_sn8
                                 + 130 vn3_vnp3_sn11 * vn4_vnp3_sn1
                                 + 62 vn3_vnp3_sn11 * vn4_vnp3_sn10
                                 + 51 vn3_vnp3_sn11 * vn4_vnp3_sn14
                                 + 171 vn1_vnp3_sn5 * vn2_vnp3_sn20
                                 + 57 vn1_vnp3_sn5 * vn2_vnp3_sn8
                                 + 129 vn1_vnp3_sn9 * vn2_vnp3_sn20
                                 + 42 vn1_vnp3_sn9 * vn2_vnp3_sn8
                                 + 108 vn1_vnp3_sn12 * vn2_vnp3_sn20
                                 + 93 vn1_vnp3_sn12 * vn2_vnp3_sn8
                                 + 19 vn4_vnp4_sn12 * vn1_vnp4_sn4
                                 + 38 vn4_vnp4_sn12 * vn2_vnp4_sn15
                                 + 63 vn4_vnp4_sn12 * vn2_vnp4_sn18
                                 + 86 vn4_vnp4_sn12 * vn2_vnp4_sn19
                                 + 6 vn1_vnp4_sn4 * vn4_vnp4_sn8
                                 + 75 vn1_vnp4_sn4 * vn4_vnp4_sn13
                                 + 67 vn1_vnp4_sn4 * vn2_vnp4_sn15
                                 + 63 vn1_vnp4_sn4 * vn2_vnp4_sn18
                                 + 99 vn1_vnp4_sn4 * vn2_vnp4_sn19
                                 + 36 vn1_vnp4_sn4 * vn3_vnp4_sn17
                                 + 74 vn4_vnp4_sn8 * vn2_vnp4_sn15
                                 + 25 vn4_vnp4_sn8 * vn2_vnp4_sn18
                                 + 70 vn4_vnp4_sn8 * vn2_vnp4_sn19
                                 + 79 vn4_vnp4_sn13 * vn2_vnp4_sn15
                                 + 104 vn4_vnp4_sn13 * vn2_vnp4_sn18
                                 + 127 vn4_vnp4_sn13 * vn2_vnp4_sn19
                                 + 123 vn3_vnp5_sn15 * vn1_vnp5_sn5
                                 + 186 vn3_vnp5_sn15 * vn1_vnp5_sn6
                                 + 123 vn3_vnp5_sn15 * vn1_vnp5_sn4
                                 + 20 vn3_vnp5_sn15 * vn2_vnp5_sn16
                                 + 44 vn3_vnp5_sn15 * vn2_vnp5_sn3
                                 + 67 vn3_vnp5_sn15 * vn4_vnp5_sn12
                                 + 83 vn3_vnp5_sn15 * vn4_vnp5_sn11
                                 + 113 vn1_vnp5_sn5 * vn3_vnp5_sn1
                                 + 27 vn1_vnp5_sn5 * vn3_vnp5_sn9
                                 + 32 vn1_vnp5_sn5 * vn4_vnp5_sn12
                                 + 60 vn1_vnp5_sn5 * vn4_vnp5_sn11
                                 + 173 vn1_vnp5_sn6 * vn3_vnp5_sn1
                                 + 87 vn1_vnp5_sn6 * vn3_vnp5_sn9
                                 + 95 vn1_vnp5_sn6 * vn4_vnp5_sn12
                                 + 101 vn1_vnp5_sn6 * vn4_vnp5_sn11
                                 + 50 vn1_vnp5_sn4 * vn3_vnp5_sn1
                                 + 27 vn1_vnp5_sn4 * vn3_vnp5_sn9
                                 + 36 vn1_vnp5_sn4 * vn4_vnp5_sn12
                                 + 90 vn1_vnp5_sn4 * vn4_vnp5_sn11
                                 + 35 vn3_vnp5_sn1 * vn2_vnp5_sn16
                                 + 18 vn3_vnp5_sn1 * vn2_vnp5_sn3
                                 + 189 vn3_vnp5_sn1 * vn4_vnp5_sn12
                                 + 205 vn3_vnp5_sn1 * vn4_vnp5_sn11
                                 + 18 vn3_vnp5_sn9 * vn2_vnp5_sn16
                                 + 12 vn3_vnp5_sn9 * vn2_vnp5_sn3
                                 + 35 vn3_vnp5_sn9 * vn4_vnp5_sn12
                                 + 143 vn3_vnp5_sn9 * vn4_vnp5_sn11
                                 + 89 vn2_vnp6_sn8 * vn1_vnp6_sn14
                                 + 110 vn2_vnp6_sn8 * vn4_vnp6_sn2
                                 + 48 vn2_vnp6_sn8 * vn3_vnp6_sn20
                                 + 66 vn2_vnp6_sn8 * vn3_vnp6_sn12
                                 + 77 vn1_vnp6_sn14 * vn2_vnp6_sn11
                                 + 110 vn1_vnp6_sn14 * vn2_vnp6_sn5
                                 + 218 vn2_vnp6_sn11 * vn4_vnp6_sn2
                                 + 94 vn2_vnp6_sn11 * vn3_vnp6_sn20
                                 + 56 vn2_vnp6_sn11 * vn3_vnp6_sn12
                                 + 119 vn2_vnp6_sn5 * vn4_vnp6_sn2
                                 + 139 vn2_vnp6_sn5 * vn3_vnp6_sn20
                                 + 41 vn2_vnp6_sn5 * vn3_vnp6_sn12
                                 + 102 vn4_vnp6_sn2 * vn3_vnp6_sn20
                                 + 108 vn4_vnp6_sn2 * vn3_vnp6_sn12
                                 + 33 vn4_vnp7_sn12 * vn1_vnp7_sn4
                                 + 31 vn4_vnp7_sn12 * vn1_vnp7_sn5
                                 + 48 vn4_vnp7_sn12 * vn1_vnp7_sn2
                                 + 56 vn4_vnp7_sn12 * vn3_vnp7_sn11
                                 + 104 vn4_vnp7_sn12 * vn3_vnp7_sn6
                                 + 28 vn1_vnp7_sn4 * vn4_vnp7_sn10
                                 + 36 vn1_vnp7_sn4 * vn4_vnp7_sn17
                                 + 222 vn1_vnp7_sn4 * vn3_vnp7_sn11
                                 + 162 vn1_vnp7_sn4 * vn3_vnp7_sn6
                                 + 26 vn1_vnp7_sn5 * vn4_vnp7_sn10
                                 + 49 vn1_vnp7_sn5 * vn4_vnp7_sn17
                                 + 147 vn1_vnp7_sn5 * vn3_vnp7_sn11
                                 + 122 vn1_vnp7_sn5 * vn3_vnp7_sn6
                                 + 43 vn1_vnp7_sn2 * vn4_vnp7_sn10
                                 + 57 vn1_vnp7_sn2 * vn4_vnp7_sn17
                                 + 268 vn1_vnp7_sn2 * vn3_vnp7_sn11
                                 + 243 vn1_vnp7_sn2 * vn3_vnp7_sn6
                                 + 62 vn4_vnp7_sn10 * vn3_vnp7_sn11
                                 + 72 vn4_vnp7_sn10 * vn3_vnp7_sn6
                                 + 76 vn4_vnp7_sn17 * vn3_vnp7_sn11
                                 + 112 vn4_vnp7_sn17 * vn3_vnp7_sn6
                                 + 44 vn3_vnp7_sn11 * vn2_vnp7_sn15
                                 + 80 vn2_vnp7_sn15 * vn3_vnp7_sn6 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: 3 vn4_vnp2_sn1 + 3 vn4_vnp3_sn1
                                 + vn3_vnp5_sn1 <= 7
 CPU_capacity_of_substrate_node_2#1: 3 vn1_vnp2_sn2 + 3 vn4_vnp6_sn2
                                 + 3 vn1_vnp7_sn2 <= 5
 CPU_capacity_of_substrate_node_3#2: 3 vn2_vnp2_sn3 <= 7
 CPU_capacity_of_substrate_node_4#3: 3 vn4_vnp1_sn4 + vn3_vnp2_sn4
                                 + vn1_vnp4_sn4 + 3 vn1_vnp5_sn4
                                 + 3 vn1_vnp7_sn4 <= 1
 CPU_capacity_of_substrate_node_5#4: 3 vn4_vnp1_sn5 + 3 vn1_vnp3_sn5
                                 + 3 vn1_vnp5_sn5 + 3 vn2_vnp6_sn5
                                 + 3 vn1_vnp7_sn5 <= 2
 CPU_capacity_of_substrate_node_6#5: 3 vn1_vnp5_sn6 + 3 vn3_vnp7_sn6 <= 8
 CPU_capacity_of_substrate_node_7#6: 3 vn4_vnp2_sn7 <= 8
 CPU_capacity_of_substrate_node_8#7: 3 vn2_vnp2_sn8 + 3 vn2_vnp3_sn8
                                 + vn4_vnp4_sn8 + 3 vn2_vnp6_sn8 <= 5
 CPU_capacity_of_substrate_node_9#8: 3 vn1_vnp3_sn9 + vn3_vnp5_sn9 <= 5
 CPU_capacity_of_substrate_node_10#9: 3 vn4_vnp3_sn10 + 3 vn4_vnp7_sn10 <= 4
 CPU_capacity_of_substrate_node_11#10: 3 vn3_vnp1_sn11 + 3 vn1_vnp2_sn11
                                 + 3 vn3_vnp3_sn11 + 3 vn2_vnp6_sn11
                                 + 3 vn3_vnp7_sn11 <= 8
 CPU_capacity_of_substrate_node_12#11: vn3_vnp2_sn12 + 3 vn1_vnp3_sn12
                                 + vn4_vnp4_sn12 + 3 vn3_vnp6_sn12
                                 + 3 vn4_vnp7_sn12 <= 8
 CPU_capacity_of_substrate_node_13#12: vn3_vnp2_sn13 + vn4_vnp4_sn13 <= 5
 CPU_capacity_of_substrate_node_14#13: 3 vn1_vnp2_sn14 + 3 vn4_vnp3_sn14
                                 + vn1_vnp6_sn14 <= 8
 CPU_capacity_of_substrate_node_15#14: 3 vn4_vnp2_sn15 + vn2_vnp4_sn15
                                 + vn3_vnp5_sn15 + 3 vn2_vnp7_sn15 <= 5
 CPU_capacity_of_substrate_node_17#15: 3 vn3_vnp1_sn17 + vn3_vnp4_sn17
                                 + 3 vn4_vnp7_sn17 <= 4
 CPU_capacity_of_substrate_node_18#16: vn2_vnp4_sn18 <= 8
 CPU_capacity_of_substrate_node_19#17: vn2_vnp4_sn19 <= 5
 CPU_capacity_of_substrate_node_20#18: 3 vn2_vnp3_sn20 + 3 vn3_vnp6_sn20 <= 1
Bounds
 0 <= vnp1 <= 1
 0 <= vn4_vnp1_sn5 <= 1
 0 <= vn1_vnp1_sn16 <= 1
 0 <= vn1_vnp1_sn10 <= 1
 0 <= vn1_vnp1_sn13 <= 1
 0 <= vn4_vnp1_sn4 <= 1
 0 <= vn2_vnp1_sn12 <= 1
 0 <= vn2_vnp1_sn8 <= 1
 0 <= vn3_vnp1_sn11 <= 1
 0 <= vn3_vnp1_sn17 <= 1
 0 <= vnp2 <= 1
 0 <= vn4_vnp2_sn15 <= 1
 0 <= vn1_vnp2_sn2 <= 1
 0 <= vn1_vnp2_sn14 <= 1
 0 <= vn1_vnp2_sn11 <= 1
 0 <= vn4_vnp2_sn7 <= 1
 0 <= vn4_vnp2_sn1 <= 1
 0 <= vn3_vnp2_sn12 <= 1
 0 <= vn2_vnp2_sn3 <= 1
 0 <= vn2_vnp2_sn8 <= 1
 0 <= vn3_vnp2_sn4 <= 1
 0 <= vn3_vnp2_sn13 <= 1
 0 <= vnp3 <= 1
 0 <= vn3_vnp3_sn11 <= 1
 0 <= vn1_vnp3_sn5 <= 1
 0 <= vn1_vnp3_sn9 <= 1
 0 <= vn1_vnp3_sn12 <= 1
 0 <= vn2_vnp3_sn20 <= 1
 0 <= vn2_vnp3_sn8 <= 1
 0 <= vn4_vnp3_sn1 <= 1
 0 <= vn4_vnp3_sn10 <= 1
 0 <= vn4_vnp3_sn14 <= 1
 0 <= vnp4 <= 1
 0 <= vn4_vnp4_sn12 <= 1
 0 <= vn1_vnp4_sn4 <= 1
 0 <= vn4_vnp4_sn8 <= 1
 0 <= vn4_vnp4_sn13 <= 1
 0 <= vn2_vnp4_sn15 <= 1
 0 <= vn2_vnp4_sn18 <= 1
 0 <= vn2_vnp4_sn19 <= 1
 0 <= vn3_vnp4_sn17 <= 1
 0 <= vnp5 <= 1
 0 <= vn3_vnp5_sn15 <= 1
 0 <= vn1_vnp5_sn5 <= 1
 0 <= vn1_vnp5_sn6 <= 1
 0 <= vn1_vnp5_sn4 <= 1
 0 <= vn3_vnp5_sn1 <= 1
 0 <= vn3_vnp5_sn9 <= 1
 0 <= vn2_vnp5_sn16 <= 1
 0 <= vn2_vnp5_sn3 <= 1
 0 <= vn4_vnp5_sn12 <= 1
 0 <= vn4_vnp5_sn11 <= 1
 0 <= vnp6 <= 1
 0 <= vn2_vnp6_sn8 <= 1
 0 <= vn1_vnp6_sn14 <= 1
 0 <= vn2_vnp6_sn11 <= 1
 0 <= vn2_vnp6_sn5 <= 1
 0 <= vn4_vnp6_sn2 <= 1
 0 <= vn3_vnp6_sn20 <= 1
 0 <= vn3_vnp6_sn12 <= 1
 0 <= vnp7 <= 1
 0 <= vn4_vnp7_sn12 <= 1
 0 <= vn1_vnp7_sn4 <= 1
 0 <= vn1_vnp7_sn5 <= 1
 0 <= vn1_vnp7_sn2 <= 1
 0 <= vn4_vnp7_sn10 <= 1
 0 <= vn4_vnp7_sn17 <= 1
 0 <= vn3_vnp7_sn11 <= 1
 0 <= vn2_vnp7_sn15 <= 1
 0 <= vn3_vnp7_sn6 <= 1
Binaries
 vnp1  vn4_vnp1_sn5  vn1_vnp1_sn16  vn1_vnp1_sn10  vn1_vnp1_sn13  vn4_vnp1_sn4 
 vn2_vnp1_sn12  vn2_vnp1_sn8  vn3_vnp1_sn11  vn3_vnp1_sn17  vnp2 
 vn4_vnp2_sn15  vn1_vnp2_sn2  vn1_vnp2_sn14  vn1_vnp2_sn11  vn4_vnp2_sn7 
 vn4_vnp2_sn1  vn3_vnp2_sn12  vn2_vnp2_sn3  vn2_vnp2_sn8  vn3_vnp2_sn4 
 vn3_vnp2_sn13  vnp3  vn3_vnp3_sn11  vn1_vnp3_sn5  vn1_vnp3_sn9  vn1_vnp3_sn12 
 vn2_vnp3_sn20  vn2_vnp3_sn8  vn4_vnp3_sn1  vn4_vnp3_sn10  vn4_vnp3_sn14  vnp4 
 vn4_vnp4_sn12  vn1_vnp4_sn4  vn4_vnp4_sn8  vn4_vnp4_sn13  vn2_vnp4_sn15 
 vn2_vnp4_sn18  vn2_vnp4_sn19  vn3_vnp4_sn17  vnp5  vn3_vnp5_sn15 
 vn1_vnp5_sn5  vn1_vnp5_sn6  vn1_vnp5_sn4  vn3_vnp5_sn1  vn3_vnp5_sn9 
 vn2_vnp5_sn16  vn2_vnp5_sn3  vn4_vnp5_sn12  vn4_vnp5_sn11  vnp6  vn2_vnp6_sn8 
 vn1_vnp6_sn14  vn2_vnp6_sn11  vn2_vnp6_sn5  vn4_vnp6_sn2  vn3_vnp6_sn20 
 vn3_vnp6_sn12  vnp7  vn4_vnp7_sn12  vn1_vnp7_sn4  vn1_vnp7_sn5  vn1_vnp7_sn2 
 vn4_vnp7_sn10  vn4_vnp7_sn17  vn3_vnp7_sn11  vn2_vnp7_sn15  vn3_vnp7_sn6 
End
