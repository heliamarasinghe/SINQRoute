\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1168 vnp1 + 544 vnp2 + 525 vnp3 + 1198 vnp4 + 663 vnp5 + 1205 vnp6
      + 624 vnp7 + 606 vnp8 + [ - 294 vn2_vnp1_sn17 * vn1_vnp1_sn6
      - 108 vn2_vnp1_sn17 * vn1_vnp1_sn19 - 222 vn2_vnp1_sn17 * vn1_vnp1_sn2
      - 312 vn2_vnp1_sn17 * vn3_vnp1_sn3 - 392 vn2_vnp1_sn17 * vn3_vnp1_sn13
      - 282 vn2_vnp1_sn17 * vn3_vnp1_sn4 - 256 vn2_vnp1_sn17 * vn4_vnp1_sn10
      - 294 vn1_vnp1_sn6 * vn2_vnp1_sn7 - 46 vn1_vnp1_sn6 * vn3_vnp1_sn3
      - 134 vn1_vnp1_sn6 * vn3_vnp1_sn13 - 294 vn1_vnp1_sn6 * vn3_vnp1_sn4
      - 64 vn1_vnp1_sn6 * vn4_vnp1_sn10 - 120 vn1_vnp1_sn19 * vn2_vnp1_sn7
      - 246 vn1_vnp1_sn19 * vn3_vnp1_sn3 - 422 vn1_vnp1_sn19 * vn3_vnp1_sn13
      - 190 vn1_vnp1_sn19 * vn3_vnp1_sn4 - 128 vn1_vnp1_sn19 * vn4_vnp1_sn10
      - 126 vn1_vnp1_sn2 * vn2_vnp1_sn7 - 86 vn1_vnp1_sn2 * vn3_vnp1_sn3
      - 206 vn1_vnp1_sn2 * vn3_vnp1_sn13 - 94 vn1_vnp1_sn2 * vn3_vnp1_sn4
      - 60 vn1_vnp1_sn2 * vn4_vnp1_sn10 - 236 vn2_vnp1_sn7 * vn3_vnp1_sn3
      - 546 vn2_vnp1_sn7 * vn3_vnp1_sn13 - 86 vn2_vnp1_sn7 * vn3_vnp1_sn4
      - 290 vn2_vnp1_sn7 * vn4_vnp1_sn10 - 154 vn3_vnp1_sn3 * vn4_vnp1_sn10
      - 214 vn3_vnp1_sn13 * vn4_vnp1_sn10 - 254 vn3_vnp1_sn4 * vn4_vnp1_sn10
      - 228 vn2_vnp2_sn20 * vn1_vnp2_sn3 - 42 vn2_vnp2_sn20 * vn1_vnp2_sn15
      - 198 vn2_vnp2_sn20 * vn4_vnp2_sn4 - 78 vn1_vnp2_sn3 * vn2_vnp2_sn9
      - 124 vn1_vnp2_sn3 * vn3_vnp2_sn2 - 180 vn1_vnp2_sn3 * vn3_vnp2_sn8
      - 150 vn1_vnp2_sn15 * vn2_vnp2_sn9 - 432 vn1_vnp2_sn15 * vn3_vnp2_sn2
      - 138 vn1_vnp2_sn15 * vn3_vnp2_sn8 - 58 vn2_vnp2_sn9 * vn4_vnp2_sn4
      - 32 vn4_vnp2_sn4 * vn3_vnp2_sn2 - 40 vn4_vnp2_sn4 * vn3_vnp2_sn8
      - 270 vn4_vnp3_sn7 * vn1_vnp3_sn15 - 104 vn4_vnp3_sn7 * vn3_vnp3_sn11
      - 20 vn4_vnp3_sn7 * vn3_vnp3_sn4 - 84 vn1_vnp3_sn15 * vn2_vnp3_sn12
      - 26 vn1_vnp3_sn15 * vn2_vnp3_sn17 - 146 vn1_vnp3_sn15 * vn2_vnp3_sn1
      - 44 vn1_vnp3_sn15 * vn3_vnp3_sn11 - 126 vn1_vnp3_sn15 * vn3_vnp3_sn4
      - 376 vn4_vnp4_sn9 * vn1_vnp4_sn13 - 78 vn4_vnp4_sn9 * vn1_vnp4_sn8
      - 396 vn4_vnp4_sn9 * vn1_vnp4_sn19 - 126 vn4_vnp4_sn9 * vn2_vnp4_sn2
      - 180 vn4_vnp4_sn9 * vn2_vnp4_sn20 - 64 vn4_vnp4_sn9 * vn3_vnp4_sn5
      - 372 vn1_vnp4_sn13 * vn4_vnp4_sn4 - 188 vn1_vnp4_sn13 * vn3_vnp4_sn5
      - 144 vn1_vnp4_sn8 * vn4_vnp4_sn4 - 290 vn1_vnp4_sn8 * vn3_vnp4_sn5
      - 242 vn1_vnp4_sn19 * vn4_vnp4_sn4 - 328 vn1_vnp4_sn19 * vn3_vnp4_sn5
      - 84 vn4_vnp4_sn4 * vn2_vnp4_sn2 - 288 vn4_vnp4_sn4 * vn2_vnp4_sn20
      - 68 vn4_vnp4_sn4 * vn3_vnp4_sn5 - 142 vn3_vnp5_sn16 * vn1_vnp5_sn19
      - 172 vn3_vnp5_sn16 * vn1_vnp5_sn20 - 74 vn3_vnp5_sn16 * vn2_vnp5_sn10
      - 194 vn1_vnp5_sn19 * vn2_vnp5_sn10 - 178 vn1_vnp5_sn19 * vn4_vnp5_sn3
      - 98 vn1_vnp5_sn20 * vn2_vnp5_sn10 - 196 vn1_vnp5_sn20 * vn4_vnp5_sn3
      - 44 vn2_vnp6_sn9 * vn1_vnp6_sn2 - 234 vn2_vnp6_sn9 * vn3_vnp6_sn11
      - 184 vn2_vnp6_sn9 * vn4_vnp6_sn1 - 206 vn2_vnp6_sn9 * vn4_vnp6_sn15
      - 62 vn1_vnp6_sn2 * vn2_vnp6_sn12 - 368 vn1_vnp6_sn2 * vn3_vnp6_sn11
      - 44 vn1_vnp6_sn2 * vn4_vnp6_sn1 - 96 vn1_vnp6_sn2 * vn4_vnp6_sn15
      - 74 vn2_vnp6_sn12 * vn3_vnp6_sn11 - 400 vn2_vnp6_sn12 * vn4_vnp6_sn1
      - 150 vn2_vnp6_sn12 * vn4_vnp6_sn15 - 102 vn3_vnp6_sn11 * vn4_vnp6_sn1
      - 26 vn3_vnp6_sn11 * vn4_vnp6_sn15 - 54 vn3_vnp7_sn6 * vn1_vnp7_sn2
      - 72 vn3_vnp7_sn6 * vn1_vnp7_sn10 - 192 vn3_vnp7_sn6 * vn2_vnp7_sn12
      - 102 vn3_vnp7_sn6 * vn2_vnp7_sn1 - 330 vn3_vnp7_sn6 * vn2_vnp7_sn20
      - 82 vn1_vnp7_sn2 * vn3_vnp7_sn9 - 292 vn1_vnp7_sn2 * vn2_vnp7_sn12
      - 100 vn1_vnp7_sn2 * vn2_vnp7_sn1 - 296 vn1_vnp7_sn2 * vn2_vnp7_sn20
      - 64 vn1_vnp7_sn10 * vn3_vnp7_sn9 - 48 vn1_vnp7_sn10 * vn2_vnp7_sn12
      - 366 vn1_vnp7_sn10 * vn2_vnp7_sn1 - 252 vn1_vnp7_sn10 * vn2_vnp7_sn20
      - 102 vn3_vnp7_sn9 * vn2_vnp7_sn12 - 144 vn3_vnp7_sn9 * vn2_vnp7_sn1
      - 174 vn3_vnp7_sn9 * vn2_vnp7_sn20 - 42 vn2_vnp8_sn7 * vn1_vnp8_sn2
      - 76 vn2_vnp8_sn7 * vn1_vnp8_sn10 - 122 vn2_vnp8_sn7 * vn3_vnp8_sn1
      - 144 vn2_vnp8_sn7 * vn3_vnp8_sn19 - 296 vn2_vnp8_sn7 * vn3_vnp8_sn12
      - 108 vn2_vnp8_sn7 * vn4_vnp8_sn13 - 52 vn2_vnp8_sn7 * vn4_vnp8_sn9
      - 74 vn2_vnp8_sn7 * vn4_vnp8_sn15 - 54 vn1_vnp8_sn2 * vn3_vnp8_sn1
      - 124 vn1_vnp8_sn2 * vn3_vnp8_sn19 - 148 vn1_vnp8_sn2 * vn3_vnp8_sn12
      - 160 vn1_vnp8_sn10 * vn3_vnp8_sn1 - 222 vn1_vnp8_sn10 * vn3_vnp8_sn19
      - 22 vn1_vnp8_sn10 * vn3_vnp8_sn12 - 106 vn3_vnp8_sn1 * vn4_vnp8_sn13
      - 70 vn3_vnp8_sn1 * vn4_vnp8_sn9 - 88 vn3_vnp8_sn1 * vn4_vnp8_sn15
      - 158 vn3_vnp8_sn19 * vn4_vnp8_sn13 - 108 vn3_vnp8_sn19 * vn4_vnp8_sn9
      - 62 vn3_vnp8_sn19 * vn4_vnp8_sn15 - 72 vn3_vnp8_sn12 * vn4_vnp8_sn13
      - 44 vn3_vnp8_sn12 * vn4_vnp8_sn9 - 48 vn3_vnp8_sn12 * vn4_vnp8_sn15
      ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn6
                                 + vn1_vnp1_sn19 + vn1_vnp1_sn2 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn17
                                 + vn2_vnp1_sn7 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn3
                                 + vn3_vnp1_sn13 + vn3_vnp1_sn4 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn10 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn3
                                 + vn1_vnp2_sn15 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn20
                                 + vn2_vnp2_sn9 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn2 + vn3_vnp2_sn8
                                 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#7: - vnp2 + vn4_vnp2_sn4 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#8: - vnp3 + vn1_vnp3_sn15 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#9: - vnp3 + vn2_vnp3_sn12
                                 + vn2_vnp3_sn17 + vn2_vnp3_sn1 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#10: - vnp3 + vn3_vnp3_sn11
                                 + vn3_vnp3_sn4 <= 0
 _Embedding_clash_const_of_vnode4_vnp_3#11: - vnp3 + vn4_vnp3_sn7 <= 0
 _Embedding_clash_const_of_vnode1_vnp_4#12: - vnp4 + vn1_vnp4_sn13
                                 + vn1_vnp4_sn8 + vn1_vnp4_sn19 <= 0
 _Embedding_clash_const_of_vnode2_vnp_4#13: - vnp4 + vn2_vnp4_sn2
                                 + vn2_vnp4_sn20 <= 0
 _Embedding_clash_const_of_vnode3_vnp_4#14: - vnp4 + vn3_vnp4_sn5 <= 0
 _Embedding_clash_const_of_vnode4_vnp_4#15: - vnp4 + vn4_vnp4_sn9
                                 + vn4_vnp4_sn4 <= 0
 _Embedding_clash_const_of_vnode1_vnp_5#16: - vnp5 + vn1_vnp5_sn19
                                 + vn1_vnp5_sn20 <= 0
 _Embedding_clash_const_of_vnode2_vnp_5#17: - vnp5 + vn2_vnp5_sn10 <= 0
 _Embedding_clash_const_of_vnode3_vnp_5#18: - vnp5 + vn3_vnp5_sn16 <= 0
 _Embedding_clash_const_of_vnode4_vnp_5#19: - vnp5 + vn4_vnp5_sn3 <= 0
 _Embedding_clash_const_of_vnode1_vnp_6#20: - vnp6 + vn1_vnp6_sn2 <= 0
 _Embedding_clash_const_of_vnode2_vnp_6#21: - vnp6 + vn2_vnp6_sn9
                                 + vn2_vnp6_sn12 <= 0
 _Embedding_clash_const_of_vnode3_vnp_6#22: - vnp6 + vn3_vnp6_sn11 <= 0
 _Embedding_clash_const_of_vnode4_vnp_6#23: - vnp6 + vn4_vnp6_sn1
                                 + vn4_vnp6_sn15 <= 0
 _Embedding_clash_const_of_vnode1_vnp_7#24: - vnp7 + vn1_vnp7_sn2
                                 + vn1_vnp7_sn10 <= 0
 _Embedding_clash_const_of_vnode2_vnp_7#25: - vnp7 + vn2_vnp7_sn12
                                 + vn2_vnp7_sn1 + vn2_vnp7_sn20 <= 0
 _Embedding_clash_const_of_vnode3_vnp_7#26: - vnp7 + vn3_vnp7_sn6
                                 + vn3_vnp7_sn9 <= 0
 _Embedding_clash_const_of_vnode1_vnp_8#27: - vnp8 + vn1_vnp8_sn2
                                 + vn1_vnp8_sn10 <= 0
 _Embedding_clash_const_of_vnode2_vnp_8#28: - vnp8 + vn2_vnp8_sn7 <= 0
 _Embedding_clash_const_of_vnode3_vnp_8#29: - vnp8 + vn3_vnp8_sn1
                                 + vn3_vnp8_sn19 + vn3_vnp8_sn12 <= 0
 _Embedding_clash_const_of_vnode4_vnp_8#30: - vnp8 + vn4_vnp8_sn13
                                 + vn4_vnp8_sn9 + vn4_vnp8_sn15 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn2_vnp1_sn17 * vn1_vnp1_sn6
                                 - vn2_vnp1_sn17 * vn1_vnp1_sn19
                                 - vn2_vnp1_sn17 * vn1_vnp1_sn2
                                 - vn1_vnp1_sn6 * vn2_vnp1_sn7
                                 - vn1_vnp1_sn19 * vn2_vnp1_sn7
                                 - vn1_vnp1_sn2 * vn2_vnp1_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn2_vnp1_sn17 * vn3_vnp1_sn3
                                 - vn2_vnp1_sn17 * vn3_vnp1_sn13
                                 - vn2_vnp1_sn17 * vn3_vnp1_sn4
                                 - vn2_vnp1_sn7 * vn3_vnp1_sn3
                                 - vn2_vnp1_sn7 * vn3_vnp1_sn13
                                 - vn2_vnp1_sn7 * vn3_vnp1_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn3_vnp1_sn3 * vn4_vnp1_sn10
                                 - vn3_vnp1_sn13 * vn4_vnp1_sn10
                                 - vn3_vnp1_sn4 * vn4_vnp1_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn1_vnp1_sn6 * vn4_vnp1_sn10
                                 - vn1_vnp1_sn19 * vn4_vnp1_sn10
                                 - vn1_vnp1_sn2 * vn4_vnp1_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_5#4: vnp1
                                 + [ - vn2_vnp1_sn17 * vn4_vnp1_sn10
                                 - vn2_vnp1_sn7 * vn4_vnp1_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_6#5: vnp1
                                 + [ - vn1_vnp1_sn6 * vn3_vnp1_sn3
                                 - vn1_vnp1_sn6 * vn3_vnp1_sn13
                                 - vn1_vnp1_sn6 * vn3_vnp1_sn4
                                 - vn1_vnp1_sn19 * vn3_vnp1_sn3
                                 - vn1_vnp1_sn19 * vn3_vnp1_sn13
                                 - vn1_vnp1_sn19 * vn3_vnp1_sn4
                                 - vn1_vnp1_sn2 * vn3_vnp1_sn3
                                 - vn1_vnp1_sn2 * vn3_vnp1_sn13
                                 - vn1_vnp1_sn2 * vn3_vnp1_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn2_vnp2_sn20 * vn1_vnp2_sn3
                                 - vn2_vnp2_sn20 * vn1_vnp2_sn15
                                 - vn1_vnp2_sn3 * vn2_vnp2_sn9
                                 - vn1_vnp2_sn15 * vn2_vnp2_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_8#7: vnp2
                                 + [ - vn2_vnp2_sn20 * vn4_vnp2_sn4
                                 - vn2_vnp2_sn9 * vn4_vnp2_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_9#8: vnp2
                                 + [ - vn4_vnp2_sn4 * vn3_vnp2_sn2
                                 - vn4_vnp2_sn4 * vn3_vnp2_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_10#9: vnp2
                                 + [ - vn1_vnp2_sn3 * vn3_vnp2_sn2
                                 - vn1_vnp2_sn3 * vn3_vnp2_sn8
                                 - vn1_vnp2_sn15 * vn3_vnp2_sn2
                                 - vn1_vnp2_sn15 * vn3_vnp2_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_11#10: vnp3
                                 + [ - vn4_vnp3_sn7 * vn1_vnp3_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_12#11: vnp3
                                 + [ - vn1_vnp3_sn15 * vn2_vnp3_sn12
                                 - vn1_vnp3_sn15 * vn2_vnp3_sn17
                                 - vn1_vnp3_sn15 * vn2_vnp3_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_13#12: vnp3
                                 + [ - vn4_vnp3_sn7 * vn3_vnp3_sn11
                                 - vn4_vnp3_sn7 * vn3_vnp3_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_14#13: vnp3
                                 + [ - vn1_vnp3_sn15 * vn3_vnp3_sn11
                                 - vn1_vnp3_sn15 * vn3_vnp3_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_15#14: vnp4
                                 + [ - vn4_vnp4_sn9 * vn1_vnp4_sn13
                                 - vn4_vnp4_sn9 * vn1_vnp4_sn8
                                 - vn4_vnp4_sn9 * vn1_vnp4_sn19
                                 - vn1_vnp4_sn13 * vn4_vnp4_sn4
                                 - vn1_vnp4_sn8 * vn4_vnp4_sn4
                                 - vn1_vnp4_sn19 * vn4_vnp4_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_16#15: vnp4
                                 + [ - vn4_vnp4_sn9 * vn2_vnp4_sn2
                                 - vn4_vnp4_sn9 * vn2_vnp4_sn20
                                 - vn4_vnp4_sn4 * vn2_vnp4_sn2
                                 - vn4_vnp4_sn4 * vn2_vnp4_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_17#16: vnp4
                                 + [ - vn1_vnp4_sn13 * vn3_vnp4_sn5
                                 - vn1_vnp4_sn8 * vn3_vnp4_sn5
                                 - vn1_vnp4_sn19 * vn3_vnp4_sn5 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_18#17: vnp4
                                 + [ - vn4_vnp4_sn9 * vn3_vnp4_sn5
                                 - vn4_vnp4_sn4 * vn3_vnp4_sn5 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_19#18: vnp5
                                 + [ - vn3_vnp5_sn16 * vn1_vnp5_sn19
                                 - vn3_vnp5_sn16 * vn1_vnp5_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_20#19: vnp5
                                 + [ - vn1_vnp5_sn19 * vn2_vnp5_sn10
                                 - vn1_vnp5_sn20 * vn2_vnp5_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_21#20: vnp5
                                 + [ - vn3_vnp5_sn16 * vn2_vnp5_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_22#21: vnp5
                                 + [ - vn1_vnp5_sn19 * vn4_vnp5_sn3
                                 - vn1_vnp5_sn20 * vn4_vnp5_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_23#22: vnp6
                                 + [ - vn2_vnp6_sn9 * vn1_vnp6_sn2
                                 - vn1_vnp6_sn2 * vn2_vnp6_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_24#23: vnp6
                                 + [ - vn2_vnp6_sn9 * vn3_vnp6_sn11
                                 - vn2_vnp6_sn12 * vn3_vnp6_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_25#24: vnp6
                                 + [ - vn3_vnp6_sn11 * vn4_vnp6_sn1
                                 - vn3_vnp6_sn11 * vn4_vnp6_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_26#25: vnp6
                                 + [ - vn1_vnp6_sn2 * vn4_vnp6_sn1
                                 - vn1_vnp6_sn2 * vn4_vnp6_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_27#26: vnp6
                                 + [ - vn1_vnp6_sn2 * vn3_vnp6_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_28#27: vnp6
                                 + [ - vn2_vnp6_sn9 * vn4_vnp6_sn1
                                 - vn2_vnp6_sn9 * vn4_vnp6_sn15
                                 - vn2_vnp6_sn12 * vn4_vnp6_sn1
                                 - vn2_vnp6_sn12 * vn4_vnp6_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_29#28: vnp7
                                 + [ - vn3_vnp7_sn6 * vn1_vnp7_sn2
                                 - vn3_vnp7_sn6 * vn1_vnp7_sn10
                                 - vn1_vnp7_sn2 * vn3_vnp7_sn9
                                 - vn1_vnp7_sn10 * vn3_vnp7_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_30#29: vnp7
                                 + [ - vn3_vnp7_sn6 * vn2_vnp7_sn12
                                 - vn3_vnp7_sn6 * vn2_vnp7_sn1
                                 - vn3_vnp7_sn6 * vn2_vnp7_sn20
                                 - vn3_vnp7_sn9 * vn2_vnp7_sn12
                                 - vn3_vnp7_sn9 * vn2_vnp7_sn1
                                 - vn3_vnp7_sn9 * vn2_vnp7_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_31#30: vnp7
                                 + [ - vn1_vnp7_sn2 * vn2_vnp7_sn12
                                 - vn1_vnp7_sn2 * vn2_vnp7_sn1
                                 - vn1_vnp7_sn2 * vn2_vnp7_sn20
                                 - vn1_vnp7_sn10 * vn2_vnp7_sn12
                                 - vn1_vnp7_sn10 * vn2_vnp7_sn1
                                 - vn1_vnp7_sn10 * vn2_vnp7_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_8_Virtual_Link_32#31: vnp8
                                 + [ - vn2_vnp8_sn7 * vn1_vnp8_sn2
                                 - vn2_vnp8_sn7 * vn1_vnp8_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_8_Virtual_Link_33#32: vnp8
                                 + [ - vn2_vnp8_sn7 * vn3_vnp8_sn1
                                 - vn2_vnp8_sn7 * vn3_vnp8_sn19
                                 - vn2_vnp8_sn7 * vn3_vnp8_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_8_Virtual_Link_34#33: vnp8
                                 + [ - vn1_vnp8_sn2 * vn3_vnp8_sn1
                                 - vn1_vnp8_sn2 * vn3_vnp8_sn19
                                 - vn1_vnp8_sn2 * vn3_vnp8_sn12
                                 - vn1_vnp8_sn10 * vn3_vnp8_sn1
                                 - vn1_vnp8_sn10 * vn3_vnp8_sn19
                                 - vn1_vnp8_sn10 * vn3_vnp8_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_8_Virtual_Link_35#34: vnp8
                                 + [ - vn2_vnp8_sn7 * vn4_vnp8_sn13
                                 - vn2_vnp8_sn7 * vn4_vnp8_sn9
                                 - vn2_vnp8_sn7 * vn4_vnp8_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_8_Virtual_Link_36#35: vnp8
                                 + [ - vn3_vnp8_sn1 * vn4_vnp8_sn13
                                 - vn3_vnp8_sn1 * vn4_vnp8_sn9
                                 - vn3_vnp8_sn1 * vn4_vnp8_sn15
                                 - vn3_vnp8_sn19 * vn4_vnp8_sn13
                                 - vn3_vnp8_sn19 * vn4_vnp8_sn9
                                 - vn3_vnp8_sn19 * vn4_vnp8_sn15
                                 - vn3_vnp8_sn12 * vn4_vnp8_sn13
                                 - vn3_vnp8_sn12 * vn4_vnp8_sn9
                                 - vn3_vnp8_sn12 * vn4_vnp8_sn15 ] <= 0
 q37#36:                         - 1168 vnp1 - 544 vnp2 - 525 vnp3 - 1198 vnp4
                                 - 663 vnp5 - 1205 vnp6 - 624 vnp7 - 606 vnp8
                                 + [ 147 vn2_vnp1_sn17 * vn1_vnp1_sn6
                                 + 54 vn2_vnp1_sn17 * vn1_vnp1_sn19
                                 + 111 vn2_vnp1_sn17 * vn1_vnp1_sn2
                                 + 156 vn2_vnp1_sn17 * vn3_vnp1_sn3
                                 + 196 vn2_vnp1_sn17 * vn3_vnp1_sn13
                                 + 141 vn2_vnp1_sn17 * vn3_vnp1_sn4
                                 + 128 vn2_vnp1_sn17 * vn4_vnp1_sn10
                                 + 147 vn1_vnp1_sn6 * vn2_vnp1_sn7
                                 + 23 vn1_vnp1_sn6 * vn3_vnp1_sn3
                                 + 67 vn1_vnp1_sn6 * vn3_vnp1_sn13
                                 + 147 vn1_vnp1_sn6 * vn3_vnp1_sn4
                                 + 32 vn1_vnp1_sn6 * vn4_vnp1_sn10
                                 + 60 vn1_vnp1_sn19 * vn2_vnp1_sn7
                                 + 123 vn1_vnp1_sn19 * vn3_vnp1_sn3
                                 + 211 vn1_vnp1_sn19 * vn3_vnp1_sn13
                                 + 95 vn1_vnp1_sn19 * vn3_vnp1_sn4
                                 + 64 vn1_vnp1_sn19 * vn4_vnp1_sn10
                                 + 63 vn1_vnp1_sn2 * vn2_vnp1_sn7
                                 + 43 vn1_vnp1_sn2 * vn3_vnp1_sn3
                                 + 103 vn1_vnp1_sn2 * vn3_vnp1_sn13
                                 + 47 vn1_vnp1_sn2 * vn3_vnp1_sn4
                                 + 30 vn1_vnp1_sn2 * vn4_vnp1_sn10
                                 + 118 vn2_vnp1_sn7 * vn3_vnp1_sn3
                                 + 273 vn2_vnp1_sn7 * vn3_vnp1_sn13
                                 + 43 vn2_vnp1_sn7 * vn3_vnp1_sn4
                                 + 145 vn2_vnp1_sn7 * vn4_vnp1_sn10
                                 + 77 vn3_vnp1_sn3 * vn4_vnp1_sn10
                                 + 107 vn3_vnp1_sn13 * vn4_vnp1_sn10
                                 + 127 vn3_vnp1_sn4 * vn4_vnp1_sn10
                                 + 114 vn2_vnp2_sn20 * vn1_vnp2_sn3
                                 + 21 vn2_vnp2_sn20 * vn1_vnp2_sn15
                                 + 99 vn2_vnp2_sn20 * vn4_vnp2_sn4
                                 + 39 vn1_vnp2_sn3 * vn2_vnp2_sn9
                                 + 62 vn1_vnp2_sn3 * vn3_vnp2_sn2
                                 + 90 vn1_vnp2_sn3 * vn3_vnp2_sn8
                                 + 75 vn1_vnp2_sn15 * vn2_vnp2_sn9
                                 + 216 vn1_vnp2_sn15 * vn3_vnp2_sn2
                                 + 69 vn1_vnp2_sn15 * vn3_vnp2_sn8
                                 + 29 vn2_vnp2_sn9 * vn4_vnp2_sn4
                                 + 16 vn4_vnp2_sn4 * vn3_vnp2_sn2
                                 + 20 vn4_vnp2_sn4 * vn3_vnp2_sn8
                                 + 135 vn4_vnp3_sn7 * vn1_vnp3_sn15
                                 + 52 vn4_vnp3_sn7 * vn3_vnp3_sn11
                                 + 10 vn4_vnp3_sn7 * vn3_vnp3_sn4
                                 + 42 vn1_vnp3_sn15 * vn2_vnp3_sn12
                                 + 13 vn1_vnp3_sn15 * vn2_vnp3_sn17
                                 + 73 vn1_vnp3_sn15 * vn2_vnp3_sn1
                                 + 22 vn1_vnp3_sn15 * vn3_vnp3_sn11
                                 + 63 vn1_vnp3_sn15 * vn3_vnp3_sn4
                                 + 188 vn4_vnp4_sn9 * vn1_vnp4_sn13
                                 + 39 vn4_vnp4_sn9 * vn1_vnp4_sn8
                                 + 198 vn4_vnp4_sn9 * vn1_vnp4_sn19
                                 + 63 vn4_vnp4_sn9 * vn2_vnp4_sn2
                                 + 90 vn4_vnp4_sn9 * vn2_vnp4_sn20
                                 + 32 vn4_vnp4_sn9 * vn3_vnp4_sn5
                                 + 186 vn1_vnp4_sn13 * vn4_vnp4_sn4
                                 + 94 vn1_vnp4_sn13 * vn3_vnp4_sn5
                                 + 72 vn1_vnp4_sn8 * vn4_vnp4_sn4
                                 + 145 vn1_vnp4_sn8 * vn3_vnp4_sn5
                                 + 121 vn1_vnp4_sn19 * vn4_vnp4_sn4
                                 + 164 vn1_vnp4_sn19 * vn3_vnp4_sn5
                                 + 42 vn4_vnp4_sn4 * vn2_vnp4_sn2
                                 + 144 vn4_vnp4_sn4 * vn2_vnp4_sn20
                                 + 34 vn4_vnp4_sn4 * vn3_vnp4_sn5
                                 + 71 vn3_vnp5_sn16 * vn1_vnp5_sn19
                                 + 86 vn3_vnp5_sn16 * vn1_vnp5_sn20
                                 + 37 vn3_vnp5_sn16 * vn2_vnp5_sn10
                                 + 97 vn1_vnp5_sn19 * vn2_vnp5_sn10
                                 + 89 vn1_vnp5_sn19 * vn4_vnp5_sn3
                                 + 49 vn1_vnp5_sn20 * vn2_vnp5_sn10
                                 + 98 vn1_vnp5_sn20 * vn4_vnp5_sn3
                                 + 22 vn2_vnp6_sn9 * vn1_vnp6_sn2
                                 + 117 vn2_vnp6_sn9 * vn3_vnp6_sn11
                                 + 92 vn2_vnp6_sn9 * vn4_vnp6_sn1
                                 + 103 vn2_vnp6_sn9 * vn4_vnp6_sn15
                                 + 31 vn1_vnp6_sn2 * vn2_vnp6_sn12
                                 + 184 vn1_vnp6_sn2 * vn3_vnp6_sn11
                                 + 22 vn1_vnp6_sn2 * vn4_vnp6_sn1
                                 + 48 vn1_vnp6_sn2 * vn4_vnp6_sn15
                                 + 37 vn2_vnp6_sn12 * vn3_vnp6_sn11
                                 + 200 vn2_vnp6_sn12 * vn4_vnp6_sn1
                                 + 75 vn2_vnp6_sn12 * vn4_vnp6_sn15
                                 + 51 vn3_vnp6_sn11 * vn4_vnp6_sn1
                                 + 13 vn3_vnp6_sn11 * vn4_vnp6_sn15
                                 + 27 vn3_vnp7_sn6 * vn1_vnp7_sn2
                                 + 36 vn3_vnp7_sn6 * vn1_vnp7_sn10
                                 + 96 vn3_vnp7_sn6 * vn2_vnp7_sn12
                                 + 51 vn3_vnp7_sn6 * vn2_vnp7_sn1
                                 + 165 vn3_vnp7_sn6 * vn2_vnp7_sn20
                                 + 41 vn1_vnp7_sn2 * vn3_vnp7_sn9
                                 + 146 vn1_vnp7_sn2 * vn2_vnp7_sn12
                                 + 50 vn1_vnp7_sn2 * vn2_vnp7_sn1
                                 + 148 vn1_vnp7_sn2 * vn2_vnp7_sn20
                                 + 32 vn1_vnp7_sn10 * vn3_vnp7_sn9
                                 + 24 vn1_vnp7_sn10 * vn2_vnp7_sn12
                                 + 183 vn1_vnp7_sn10 * vn2_vnp7_sn1
                                 + 126 vn1_vnp7_sn10 * vn2_vnp7_sn20
                                 + 51 vn3_vnp7_sn9 * vn2_vnp7_sn12
                                 + 72 vn3_vnp7_sn9 * vn2_vnp7_sn1
                                 + 87 vn3_vnp7_sn9 * vn2_vnp7_sn20
                                 + 21 vn2_vnp8_sn7 * vn1_vnp8_sn2
                                 + 38 vn2_vnp8_sn7 * vn1_vnp8_sn10
                                 + 61 vn2_vnp8_sn7 * vn3_vnp8_sn1
                                 + 72 vn2_vnp8_sn7 * vn3_vnp8_sn19
                                 + 148 vn2_vnp8_sn7 * vn3_vnp8_sn12
                                 + 54 vn2_vnp8_sn7 * vn4_vnp8_sn13
                                 + 26 vn2_vnp8_sn7 * vn4_vnp8_sn9
                                 + 37 vn2_vnp8_sn7 * vn4_vnp8_sn15
                                 + 27 vn1_vnp8_sn2 * vn3_vnp8_sn1
                                 + 62 vn1_vnp8_sn2 * vn3_vnp8_sn19
                                 + 74 vn1_vnp8_sn2 * vn3_vnp8_sn12
                                 + 80 vn1_vnp8_sn10 * vn3_vnp8_sn1
                                 + 111 vn1_vnp8_sn10 * vn3_vnp8_sn19
                                 + 11 vn1_vnp8_sn10 * vn3_vnp8_sn12
                                 + 53 vn3_vnp8_sn1 * vn4_vnp8_sn13
                                 + 35 vn3_vnp8_sn1 * vn4_vnp8_sn9
                                 + 44 vn3_vnp8_sn1 * vn4_vnp8_sn15
                                 + 79 vn3_vnp8_sn19 * vn4_vnp8_sn13
                                 + 54 vn3_vnp8_sn19 * vn4_vnp8_sn9
                                 + 31 vn3_vnp8_sn19 * vn4_vnp8_sn15
                                 + 36 vn3_vnp8_sn12 * vn4_vnp8_sn13
                                 + 22 vn3_vnp8_sn12 * vn4_vnp8_sn9
                                 + 24 vn3_vnp8_sn12 * vn4_vnp8_sn15 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: 3 vn2_vnp3_sn1 + 3 vn4_vnp6_sn1
                                 + 3 vn2_vnp7_sn1 + 3 vn3_vnp8_sn1 <= 6
 CPU_capacity_of_substrate_node_2#1: 3 vn1_vnp1_sn2 + 3 vn3_vnp2_sn2
                                 + 3 vn2_vnp4_sn2 + 3 vn1_vnp6_sn2
                                 + 3 vn1_vnp7_sn2 + vn1_vnp8_sn2 <= 4
 CPU_capacity_of_substrate_node_3#2: 3 vn1_vnp2_sn3 + vn4_vnp5_sn3 <= 8
 CPU_capacity_of_substrate_node_4#3: vn4_vnp2_sn4 + vn3_vnp3_sn4
                                 + 3 vn4_vnp4_sn4 <= 5
 CPU_capacity_of_substrate_node_5#4: 3 vn3_vnp4_sn5 <= 8
 CPU_capacity_of_substrate_node_6#5: 3 vn1_vnp1_sn6 <= 7
 CPU_capacity_of_substrate_node_7#6: 3 vn2_vnp1_sn7 + vn2_vnp8_sn7 <= 8
 CPU_capacity_of_substrate_node_8#7: 3 vn3_vnp2_sn8 + 3 vn1_vnp4_sn8 <= 4
 CPU_capacity_of_substrate_node_9#8: 3 vn2_vnp2_sn9 + 3 vn4_vnp4_sn9
                                 + 3 vn4_vnp8_sn9 <= 8
 CPU_capacity_of_substrate_node_10#9: vn4_vnp1_sn10 + vn2_vnp5_sn10
                                 + 3 vn1_vnp7_sn10 + vn1_vnp8_sn10 <= 5
 CPU_capacity_of_substrate_node_11#10: vn3_vnp3_sn11 + vn3_vnp6_sn11 <= 8
 CPU_capacity_of_substrate_node_12#11: 3 vn2_vnp3_sn12 + 3 vn2_vnp7_sn12
                                 + 3 vn3_vnp8_sn12 <= 8
 CPU_capacity_of_substrate_node_13#12: 3 vn1_vnp4_sn13 + 3 vn4_vnp8_sn13 <= 8
 CPU_capacity_of_substrate_node_15#13: 3 vn1_vnp2_sn15 + 3 vn1_vnp3_sn15
                                 + 3 vn4_vnp6_sn15 + 3 vn4_vnp8_sn15 <= 8
 CPU_capacity_of_substrate_node_16#14: 3 vn3_vnp5_sn16 <= 4
 CPU_capacity_of_substrate_node_17#15: 3 vn2_vnp1_sn17 + 3 vn2_vnp3_sn17 <= 7
 CPU_capacity_of_substrate_node_19#16: 3 vn1_vnp1_sn19 + 3 vn1_vnp4_sn19
                                 + vn1_vnp5_sn19 + 3 vn3_vnp8_sn19 <= 5
 CPU_capacity_of_substrate_node_20#17: 3 vn2_vnp2_sn20 + 3 vn2_vnp4_sn20
                                 + vn1_vnp5_sn20 + 3 vn2_vnp7_sn20 <= 5
Bounds
 0 <= vnp1 <= 1
 0 <= vn2_vnp1_sn17 <= 1
 0 <= vn1_vnp1_sn6 <= 1
 0 <= vn1_vnp1_sn19 <= 1
 0 <= vn1_vnp1_sn2 <= 1
 0 <= vn2_vnp1_sn7 <= 1
 0 <= vn3_vnp1_sn3 <= 1
 0 <= vn3_vnp1_sn13 <= 1
 0 <= vn3_vnp1_sn4 <= 1
 0 <= vn4_vnp1_sn10 <= 1
 0 <= vnp2 <= 1
 0 <= vn2_vnp2_sn20 <= 1
 0 <= vn1_vnp2_sn3 <= 1
 0 <= vn1_vnp2_sn15 <= 1
 0 <= vn2_vnp2_sn9 <= 1
 0 <= vn4_vnp2_sn4 <= 1
 0 <= vn3_vnp2_sn2 <= 1
 0 <= vn3_vnp2_sn8 <= 1
 0 <= vnp3 <= 1
 0 <= vn4_vnp3_sn7 <= 1
 0 <= vn1_vnp3_sn15 <= 1
 0 <= vn2_vnp3_sn12 <= 1
 0 <= vn2_vnp3_sn17 <= 1
 0 <= vn2_vnp3_sn1 <= 1
 0 <= vn3_vnp3_sn11 <= 1
 0 <= vn3_vnp3_sn4 <= 1
 0 <= vnp4 <= 1
 0 <= vn4_vnp4_sn9 <= 1
 0 <= vn1_vnp4_sn13 <= 1
 0 <= vn1_vnp4_sn8 <= 1
 0 <= vn1_vnp4_sn19 <= 1
 0 <= vn4_vnp4_sn4 <= 1
 0 <= vn2_vnp4_sn2 <= 1
 0 <= vn2_vnp4_sn20 <= 1
 0 <= vn3_vnp4_sn5 <= 1
 0 <= vnp5 <= 1
 0 <= vn3_vnp5_sn16 <= 1
 0 <= vn1_vnp5_sn19 <= 1
 0 <= vn1_vnp5_sn20 <= 1
 0 <= vn2_vnp5_sn10 <= 1
 0 <= vn4_vnp5_sn3 <= 1
 0 <= vnp6 <= 1
 0 <= vn2_vnp6_sn9 <= 1
 0 <= vn1_vnp6_sn2 <= 1
 0 <= vn2_vnp6_sn12 <= 1
 0 <= vn3_vnp6_sn11 <= 1
 0 <= vn4_vnp6_sn1 <= 1
 0 <= vn4_vnp6_sn15 <= 1
 0 <= vnp7 <= 1
 0 <= vn3_vnp7_sn6 <= 1
 0 <= vn1_vnp7_sn2 <= 1
 0 <= vn1_vnp7_sn10 <= 1
 0 <= vn3_vnp7_sn9 <= 1
 0 <= vn2_vnp7_sn12 <= 1
 0 <= vn2_vnp7_sn1 <= 1
 0 <= vn2_vnp7_sn20 <= 1
 0 <= vnp8 <= 1
 0 <= vn2_vnp8_sn7 <= 1
 0 <= vn1_vnp8_sn2 <= 1
 0 <= vn1_vnp8_sn10 <= 1
 0 <= vn3_vnp8_sn1 <= 1
 0 <= vn3_vnp8_sn19 <= 1
 0 <= vn3_vnp8_sn12 <= 1
 0 <= vn4_vnp8_sn13 <= 1
 0 <= vn4_vnp8_sn9 <= 1
 0 <= vn4_vnp8_sn15 <= 1
Binaries
 vnp1  vn2_vnp1_sn17  vn1_vnp1_sn6  vn1_vnp1_sn19  vn1_vnp1_sn2  vn2_vnp1_sn7 
 vn3_vnp1_sn3  vn3_vnp1_sn13  vn3_vnp1_sn4  vn4_vnp1_sn10  vnp2  vn2_vnp2_sn20 
 vn1_vnp2_sn3  vn1_vnp2_sn15  vn2_vnp2_sn9  vn4_vnp2_sn4  vn3_vnp2_sn2 
 vn3_vnp2_sn8  vnp3  vn4_vnp3_sn7  vn1_vnp3_sn15  vn2_vnp3_sn12  vn2_vnp3_sn17 
 vn2_vnp3_sn1  vn3_vnp3_sn11  vn3_vnp3_sn4  vnp4  vn4_vnp4_sn9  vn1_vnp4_sn13 
 vn1_vnp4_sn8  vn1_vnp4_sn19  vn4_vnp4_sn4  vn2_vnp4_sn2  vn2_vnp4_sn20 
 vn3_vnp4_sn5  vnp5  vn3_vnp5_sn16  vn1_vnp5_sn19  vn1_vnp5_sn20 
 vn2_vnp5_sn10  vn4_vnp5_sn3  vnp6  vn2_vnp6_sn9  vn1_vnp6_sn2  vn2_vnp6_sn12 
 vn3_vnp6_sn11  vn4_vnp6_sn1  vn4_vnp6_sn15  vnp7  vn3_vnp7_sn6  vn1_vnp7_sn2 
 vn1_vnp7_sn10  vn3_vnp7_sn9  vn2_vnp7_sn12  vn2_vnp7_sn1  vn2_vnp7_sn20  vnp8 
 vn2_vnp8_sn7  vn1_vnp8_sn2  vn1_vnp8_sn10  vn3_vnp8_sn1  vn3_vnp8_sn19 
 vn3_vnp8_sn12  vn4_vnp8_sn13  vn4_vnp8_sn9  vn4_vnp8_sn15 
End
