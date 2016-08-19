\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 608 vnp1 + 889 vnp2 + 811 vnp3 + 936 vnp4 + 401 vnp5 + 766 vnp6
      + 1013 vnp7 + 1028 vnp8 + [ - 176 vn3_vnp1_sn1 * vn1_vnp1_sn6
      - 108 vn3_vnp1_sn1 * vn2_vnp1_sn17 - 90 vn3_vnp1_sn1 * vn2_vnp1_sn8
      - 142 vn1_vnp1_sn6 * vn3_vnp1_sn9 - 616 vn1_vnp1_sn6 * vn2_vnp1_sn17
      - 516 vn1_vnp1_sn6 * vn2_vnp1_sn8 - 74 vn3_vnp1_sn9 * vn2_vnp1_sn17
      - 70 vn3_vnp1_sn9 * vn2_vnp1_sn8 - 264 vn4_vnp2_sn12 * vn1_vnp2_sn9
      - 562 vn4_vnp2_sn12 * vn1_vnp2_sn2 - 60 vn4_vnp2_sn12 * vn2_vnp2_sn13
      - 80 vn4_vnp2_sn12 * vn2_vnp2_sn15 - 220 vn1_vnp2_sn9 * vn2_vnp2_sn13
      - 232 vn1_vnp2_sn9 * vn2_vnp2_sn15 - 372 vn1_vnp2_sn2 * vn2_vnp2_sn13
      - 384 vn1_vnp2_sn2 * vn2_vnp2_sn15 - 470 vn2_vnp2_sn13 * vn3_vnp2_sn3
      - 156 vn2_vnp2_sn13 * vn3_vnp2_sn16 - 378 vn2_vnp2_sn15 * vn3_vnp2_sn3
      - 84 vn2_vnp2_sn15 * vn3_vnp2_sn16 - 260 vn2_vnp3_sn14 * vn1_vnp3_sn7
      - 194 vn2_vnp3_sn14 * vn1_vnp3_sn3 - 144 vn2_vnp3_sn14 * vn1_vnp3_sn9
      - 94 vn2_vnp3_sn14 * vn4_vnp3_sn5 - 86 vn2_vnp3_sn14 * vn4_vnp3_sn12
      - 74 vn2_vnp3_sn14 * vn4_vnp3_sn11 - 378 vn2_vnp3_sn14 * vn3_vnp3_sn2
      - 192 vn2_vnp3_sn14 * vn3_vnp3_sn20 - 426 vn2_vnp3_sn14 * vn3_vnp3_sn6
      - 128 vn1_vnp3_sn7 * vn3_vnp3_sn2 - 118 vn1_vnp3_sn7 * vn3_vnp3_sn20
      - 170 vn1_vnp3_sn7 * vn3_vnp3_sn6 - 116 vn1_vnp3_sn3 * vn3_vnp3_sn2
      - 154 vn1_vnp3_sn3 * vn3_vnp3_sn20 - 156 vn1_vnp3_sn3 * vn3_vnp3_sn6
      - 126 vn1_vnp3_sn9 * vn3_vnp3_sn2 - 148 vn1_vnp3_sn9 * vn3_vnp3_sn20
      - 150 vn1_vnp3_sn9 * vn3_vnp3_sn6 - 132 vn4_vnp3_sn5 * vn3_vnp3_sn2
      - 242 vn4_vnp3_sn5 * vn3_vnp3_sn20 - 116 vn4_vnp3_sn5 * vn3_vnp3_sn6
      - 254 vn4_vnp3_sn12 * vn3_vnp3_sn2 - 108 vn4_vnp3_sn12 * vn3_vnp3_sn20
      - 238 vn4_vnp3_sn12 * vn3_vnp3_sn6 - 252 vn4_vnp3_sn11 * vn3_vnp3_sn2
      - 166 vn4_vnp3_sn11 * vn3_vnp3_sn20 - 236 vn4_vnp3_sn11 * vn3_vnp3_sn6
      - 208 vn3_vnp4_sn1 * vn1_vnp4_sn20 - 250 vn3_vnp4_sn1 * vn1_vnp4_sn18
      - 598 vn3_vnp4_sn1 * vn2_vnp4_sn12 - 510 vn3_vnp4_sn1 * vn2_vnp4_sn13
      - 82 vn3_vnp4_sn1 * vn2_vnp4_sn4 - 430 vn3_vnp4_sn1 * vn4_vnp4_sn14
      - 80 vn1_vnp4_sn20 * vn4_vnp4_sn14 - 126 vn1_vnp4_sn18 * vn4_vnp4_sn14
      - 64 vn2_vnp5_sn20 * vn1_vnp5_sn19 - 234 vn2_vnp5_sn20 * vn1_vnp5_sn13
      - 296 vn2_vnp5_sn20 * vn3_vnp5_sn11 - 122 vn1_vnp5_sn19 * vn3_vnp5_sn11
      - 96 vn1_vnp5_sn13 * vn3_vnp5_sn11 - 296 vn4_vnp6_sn10 * vn1_vnp6_sn17
      - 360 vn4_vnp6_sn10 * vn1_vnp6_sn2 - 184 vn4_vnp6_sn10 * vn2_vnp6_sn5
      - 228 vn4_vnp6_sn10 * vn2_vnp6_sn15 - 98 vn4_vnp6_sn10 * vn3_vnp6_sn9
      - 146 vn1_vnp6_sn17 * vn3_vnp6_sn9 - 154 vn1_vnp6_sn2 * vn3_vnp6_sn9
      - 148 vn2_vnp6_sn5 * vn3_vnp6_sn9 - 248 vn2_vnp6_sn15 * vn3_vnp6_sn9
      - 228 vn4_vnp7_sn3 * vn1_vnp7_sn18 - 246 vn4_vnp7_sn3 * vn1_vnp7_sn13
      - 230 vn4_vnp7_sn3 * vn1_vnp7_sn14 - 282 vn4_vnp7_sn3 * vn2_vnp7_sn16
      - 50 vn4_vnp7_sn3 * vn3_vnp7_sn1 - 120 vn4_vnp7_sn3 * vn3_vnp7_sn11
      - 82 vn4_vnp7_sn3 * vn3_vnp7_sn20 - 140 vn1_vnp7_sn18 * vn2_vnp7_sn16
      - 156 vn1_vnp7_sn13 * vn2_vnp7_sn16 - 138 vn1_vnp7_sn14 * vn2_vnp7_sn16
      - 96 vn2_vnp7_sn16 * vn3_vnp7_sn1 - 64 vn2_vnp7_sn16 * vn3_vnp7_sn11
      - 62 vn2_vnp7_sn16 * vn3_vnp7_sn20 - 294 vn2_vnp8_sn3 * vn1_vnp8_sn18
      - 144 vn2_vnp8_sn3 * vn1_vnp8_sn9 - 180 vn2_vnp8_sn3 * vn3_vnp8_sn1
      - 260 vn2_vnp8_sn3 * vn3_vnp8_sn14 - 326 vn2_vnp8_sn3 * vn3_vnp8_sn12
      - 256 vn2_vnp8_sn3 * vn4_vnp8_sn20 - 64 vn2_vnp8_sn3 * vn4_vnp8_sn4
      - 244 vn2_vnp8_sn3 * vn4_vnp8_sn11 - 134 vn1_vnp8_sn18 * vn4_vnp8_sn20
      - 226 vn1_vnp8_sn18 * vn4_vnp8_sn4 - 370 vn1_vnp8_sn18 * vn4_vnp8_sn11
      - 478 vn1_vnp8_sn9 * vn4_vnp8_sn20 - 230 vn1_vnp8_sn9 * vn4_vnp8_sn4
      - 454 vn1_vnp8_sn9 * vn4_vnp8_sn11 - 210 vn3_vnp8_sn1 * vn4_vnp8_sn20
      - 96 vn3_vnp8_sn1 * vn4_vnp8_sn4 - 600 vn3_vnp8_sn1 * vn4_vnp8_sn11
      - 192 vn3_vnp8_sn14 * vn4_vnp8_sn20 - 366 vn3_vnp8_sn14 * vn4_vnp8_sn4
      - 230 vn3_vnp8_sn14 * vn4_vnp8_sn11 - 184 vn3_vnp8_sn12 * vn4_vnp8_sn20
      - 366 vn3_vnp8_sn12 * vn4_vnp8_sn4 - 86 vn3_vnp8_sn12 * vn4_vnp8_sn11
      ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn6 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn17
                                 + vn2_vnp1_sn8 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn1 + vn3_vnp1_sn9
                                 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#3: - vnp2 + vn1_vnp2_sn9 + vn1_vnp2_sn2
                                 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#4: - vnp2 + vn2_vnp2_sn13
                                 + vn2_vnp2_sn15 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#5: - vnp2 + vn3_vnp2_sn3
                                 + vn3_vnp2_sn16 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#6: - vnp2 + vn4_vnp2_sn12 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#7: - vnp3 + vn1_vnp3_sn7 + vn1_vnp3_sn3
                                 + vn1_vnp3_sn9 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#8: - vnp3 + vn2_vnp3_sn14 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#9: - vnp3 + vn3_vnp3_sn2
                                 + vn3_vnp3_sn20 + vn3_vnp3_sn6 <= 0
 _Embedding_clash_const_of_vnode4_vnp_3#10: - vnp3 + vn4_vnp3_sn5
                                 + vn4_vnp3_sn12 + vn4_vnp3_sn11 <= 0
 _Embedding_clash_const_of_vnode1_vnp_4#11: - vnp4 + vn1_vnp4_sn20
                                 + vn1_vnp4_sn18 <= 0
 _Embedding_clash_const_of_vnode2_vnp_4#12: - vnp4 + vn2_vnp4_sn12
                                 + vn2_vnp4_sn13 + vn2_vnp4_sn4 <= 0
 _Embedding_clash_const_of_vnode3_vnp_4#13: - vnp4 + vn3_vnp4_sn1 <= 0
 _Embedding_clash_const_of_vnode4_vnp_4#14: - vnp4 + vn4_vnp4_sn14 <= 0
 _Embedding_clash_const_of_vnode1_vnp_5#15: - vnp5 + vn1_vnp5_sn19
                                 + vn1_vnp5_sn13 <= 0
 _Embedding_clash_const_of_vnode2_vnp_5#16: - vnp5 + vn2_vnp5_sn20 <= 0
 _Embedding_clash_const_of_vnode3_vnp_5#17: - vnp5 + vn3_vnp5_sn11 <= 0
 _Embedding_clash_const_of_vnode1_vnp_6#18: - vnp6 + vn1_vnp6_sn17
                                 + vn1_vnp6_sn2 <= 0
 _Embedding_clash_const_of_vnode2_vnp_6#19: - vnp6 + vn2_vnp6_sn5
                                 + vn2_vnp6_sn15 <= 0
 _Embedding_clash_const_of_vnode3_vnp_6#20: - vnp6 + vn3_vnp6_sn9 <= 0
 _Embedding_clash_const_of_vnode4_vnp_6#21: - vnp6 + vn4_vnp6_sn10 <= 0
 _Embedding_clash_const_of_vnode1_vnp_7#22: - vnp7 + vn1_vnp7_sn18
                                 + vn1_vnp7_sn13 + vn1_vnp7_sn14 <= 0
 _Embedding_clash_const_of_vnode2_vnp_7#23: - vnp7 + vn2_vnp7_sn16 <= 0
 _Embedding_clash_const_of_vnode3_vnp_7#24: - vnp7 + vn3_vnp7_sn1
                                 + vn3_vnp7_sn11 + vn3_vnp7_sn20 <= 0
 _Embedding_clash_const_of_vnode4_vnp_7#25: - vnp7 + vn4_vnp7_sn3 <= 0
 _Embedding_clash_const_of_vnode1_vnp_8#26: - vnp8 + vn1_vnp8_sn18
                                 + vn1_vnp8_sn9 <= 0
 _Embedding_clash_const_of_vnode2_vnp_8#27: - vnp8 + vn2_vnp8_sn3 <= 0
 _Embedding_clash_const_of_vnode3_vnp_8#28: - vnp8 + vn3_vnp8_sn1
                                 + vn3_vnp8_sn14 + vn3_vnp8_sn12 <= 0
 _Embedding_clash_const_of_vnode4_vnp_8#29: - vnp8 + vn4_vnp8_sn20
                                 + vn4_vnp8_sn4 + vn4_vnp8_sn11 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn3_vnp1_sn1 * vn1_vnp1_sn6
                                 - vn1_vnp1_sn6 * vn3_vnp1_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn3_vnp1_sn1 * vn2_vnp1_sn17
                                 - vn3_vnp1_sn1 * vn2_vnp1_sn8
                                 - vn3_vnp1_sn9 * vn2_vnp1_sn17
                                 - vn3_vnp1_sn9 * vn2_vnp1_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn1_vnp1_sn6 * vn2_vnp1_sn17
                                 - vn1_vnp1_sn6 * vn2_vnp1_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_4#3: vnp2
                                 + [ - vn4_vnp2_sn12 * vn1_vnp2_sn9
                                 - vn4_vnp2_sn12 * vn1_vnp2_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_5#4: vnp2
                                 + [ - vn1_vnp2_sn9 * vn2_vnp2_sn13
                                 - vn1_vnp2_sn9 * vn2_vnp2_sn15
                                 - vn1_vnp2_sn2 * vn2_vnp2_sn13
                                 - vn1_vnp2_sn2 * vn2_vnp2_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn2_vnp2_sn13 * vn3_vnp2_sn3
                                 - vn2_vnp2_sn13 * vn3_vnp2_sn16
                                 - vn2_vnp2_sn15 * vn3_vnp2_sn3
                                 - vn2_vnp2_sn15 * vn3_vnp2_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn4_vnp2_sn12 * vn2_vnp2_sn13
                                 - vn4_vnp2_sn12 * vn2_vnp2_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_8#7: vnp3
                                 + [ - vn2_vnp3_sn14 * vn1_vnp3_sn7
                                 - vn2_vnp3_sn14 * vn1_vnp3_sn3
                                 - vn2_vnp3_sn14 * vn1_vnp3_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_9#8: vnp3
                                 + [ - vn2_vnp3_sn14 * vn4_vnp3_sn5
                                 - vn2_vnp3_sn14 * vn4_vnp3_sn12
                                 - vn2_vnp3_sn14 * vn4_vnp3_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_10#9: vnp3
                                 + [ - vn4_vnp3_sn5 * vn3_vnp3_sn2
                                 - vn4_vnp3_sn5 * vn3_vnp3_sn20
                                 - vn4_vnp3_sn5 * vn3_vnp3_sn6
                                 - vn4_vnp3_sn12 * vn3_vnp3_sn2
                                 - vn4_vnp3_sn12 * vn3_vnp3_sn20
                                 - vn4_vnp3_sn12 * vn3_vnp3_sn6
                                 - vn4_vnp3_sn11 * vn3_vnp3_sn2
                                 - vn4_vnp3_sn11 * vn3_vnp3_sn20
                                 - vn4_vnp3_sn11 * vn3_vnp3_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_11#10: vnp3
                                 + [ - vn1_vnp3_sn7 * vn3_vnp3_sn2
                                 - vn1_vnp3_sn7 * vn3_vnp3_sn20
                                 - vn1_vnp3_sn7 * vn3_vnp3_sn6
                                 - vn1_vnp3_sn3 * vn3_vnp3_sn2
                                 - vn1_vnp3_sn3 * vn3_vnp3_sn20
                                 - vn1_vnp3_sn3 * vn3_vnp3_sn6
                                 - vn1_vnp3_sn9 * vn3_vnp3_sn2
                                 - vn1_vnp3_sn9 * vn3_vnp3_sn20
                                 - vn1_vnp3_sn9 * vn3_vnp3_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_12#11: vnp3
                                 + [ - vn2_vnp3_sn14 * vn3_vnp3_sn2
                                 - vn2_vnp3_sn14 * vn3_vnp3_sn20
                                 - vn2_vnp3_sn14 * vn3_vnp3_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_13#12: vnp4
                                 + [ - vn3_vnp4_sn1 * vn1_vnp4_sn20
                                 - vn3_vnp4_sn1 * vn1_vnp4_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_14#13: vnp4
                                 + [ - vn3_vnp4_sn1 * vn2_vnp4_sn12
                                 - vn3_vnp4_sn1 * vn2_vnp4_sn13
                                 - vn3_vnp4_sn1 * vn2_vnp4_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_15#14: vnp4
                                 + [ - vn3_vnp4_sn1 * vn4_vnp4_sn14 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_16#15: vnp4
                                 + [ - vn1_vnp4_sn20 * vn4_vnp4_sn14
                                 - vn1_vnp4_sn18 * vn4_vnp4_sn14 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_17#16: vnp5
                                 + [ - vn2_vnp5_sn20 * vn1_vnp5_sn19
                                 - vn2_vnp5_sn20 * vn1_vnp5_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_18#17: vnp5
                                 + [ - vn2_vnp5_sn20 * vn3_vnp5_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_19#18: vnp5
                                 + [ - vn1_vnp5_sn19 * vn3_vnp5_sn11
                                 - vn1_vnp5_sn13 * vn3_vnp5_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_20#19: vnp6
                                 + [ - vn4_vnp6_sn10 * vn1_vnp6_sn17
                                 - vn4_vnp6_sn10 * vn1_vnp6_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_21#20: vnp6
                                 + [ - vn4_vnp6_sn10 * vn2_vnp6_sn5
                                 - vn4_vnp6_sn10 * vn2_vnp6_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_22#21: vnp6
                                 + [ - vn4_vnp6_sn10 * vn3_vnp6_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_23#22: vnp6
                                 + [ - vn1_vnp6_sn17 * vn3_vnp6_sn9
                                 - vn1_vnp6_sn2 * vn3_vnp6_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_24#23: vnp6
                                 + [ - vn2_vnp6_sn5 * vn3_vnp6_sn9
                                 - vn2_vnp6_sn15 * vn3_vnp6_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_25#24: vnp7
                                 + [ - vn4_vnp7_sn3 * vn1_vnp7_sn18
                                 - vn4_vnp7_sn3 * vn1_vnp7_sn13
                                 - vn4_vnp7_sn3 * vn1_vnp7_sn14 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_26#25: vnp7
                                 + [ - vn4_vnp7_sn3 * vn2_vnp7_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_27#26: vnp7
                                 + [ - vn4_vnp7_sn3 * vn3_vnp7_sn1
                                 - vn4_vnp7_sn3 * vn3_vnp7_sn11
                                 - vn4_vnp7_sn3 * vn3_vnp7_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_28#27: vnp7
                                 + [ - vn2_vnp7_sn16 * vn3_vnp7_sn1
                                 - vn2_vnp7_sn16 * vn3_vnp7_sn11
                                 - vn2_vnp7_sn16 * vn3_vnp7_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_29#28: vnp7
                                 + [ - vn1_vnp7_sn18 * vn2_vnp7_sn16
                                 - vn1_vnp7_sn13 * vn2_vnp7_sn16
                                 - vn1_vnp7_sn14 * vn2_vnp7_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_8_Virtual_Link_30#29: vnp8
                                 + [ - vn2_vnp8_sn3 * vn1_vnp8_sn18
                                 - vn2_vnp8_sn3 * vn1_vnp8_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_8_Virtual_Link_31#30: vnp8
                                 + [ - vn2_vnp8_sn3 * vn3_vnp8_sn1
                                 - vn2_vnp8_sn3 * vn3_vnp8_sn14
                                 - vn2_vnp8_sn3 * vn3_vnp8_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_8_Virtual_Link_32#31: vnp8
                                 + [ - vn3_vnp8_sn1 * vn4_vnp8_sn20
                                 - vn3_vnp8_sn1 * vn4_vnp8_sn4
                                 - vn3_vnp8_sn1 * vn4_vnp8_sn11
                                 - vn3_vnp8_sn14 * vn4_vnp8_sn20
                                 - vn3_vnp8_sn14 * vn4_vnp8_sn4
                                 - vn3_vnp8_sn14 * vn4_vnp8_sn11
                                 - vn3_vnp8_sn12 * vn4_vnp8_sn20
                                 - vn3_vnp8_sn12 * vn4_vnp8_sn4
                                 - vn3_vnp8_sn12 * vn4_vnp8_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_8_Virtual_Link_33#32: vnp8
                                 + [ - vn2_vnp8_sn3 * vn4_vnp8_sn20
                                 - vn2_vnp8_sn3 * vn4_vnp8_sn4
                                 - vn2_vnp8_sn3 * vn4_vnp8_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_8_Virtual_Link_34#33: vnp8
                                 + [ - vn1_vnp8_sn18 * vn4_vnp8_sn20
                                 - vn1_vnp8_sn18 * vn4_vnp8_sn4
                                 - vn1_vnp8_sn18 * vn4_vnp8_sn11
                                 - vn1_vnp8_sn9 * vn4_vnp8_sn20
                                 - vn1_vnp8_sn9 * vn4_vnp8_sn4
                                 - vn1_vnp8_sn9 * vn4_vnp8_sn11 ] <= 0
 q35#34:                         - 608 vnp1 - 889 vnp2 - 811 vnp3 - 936 vnp4
                                 - 401 vnp5 - 766 vnp6 - 1013 vnp7 - 1028 vnp8
                                 + [ 88 vn3_vnp1_sn1 * vn1_vnp1_sn6
                                 + 54 vn3_vnp1_sn1 * vn2_vnp1_sn17
                                 + 45 vn3_vnp1_sn1 * vn2_vnp1_sn8
                                 + 71 vn1_vnp1_sn6 * vn3_vnp1_sn9
                                 + 308 vn1_vnp1_sn6 * vn2_vnp1_sn17
                                 + 258 vn1_vnp1_sn6 * vn2_vnp1_sn8
                                 + 37 vn3_vnp1_sn9 * vn2_vnp1_sn17
                                 + 35 vn3_vnp1_sn9 * vn2_vnp1_sn8
                                 + 132 vn4_vnp2_sn12 * vn1_vnp2_sn9
                                 + 281 vn4_vnp2_sn12 * vn1_vnp2_sn2
                                 + 30 vn4_vnp2_sn12 * vn2_vnp2_sn13
                                 + 40 vn4_vnp2_sn12 * vn2_vnp2_sn15
                                 + 110 vn1_vnp2_sn9 * vn2_vnp2_sn13
                                 + 116 vn1_vnp2_sn9 * vn2_vnp2_sn15
                                 + 186 vn1_vnp2_sn2 * vn2_vnp2_sn13
                                 + 192 vn1_vnp2_sn2 * vn2_vnp2_sn15
                                 + 235 vn2_vnp2_sn13 * vn3_vnp2_sn3
                                 + 78 vn2_vnp2_sn13 * vn3_vnp2_sn16
                                 + 189 vn2_vnp2_sn15 * vn3_vnp2_sn3
                                 + 42 vn2_vnp2_sn15 * vn3_vnp2_sn16
                                 + 130 vn2_vnp3_sn14 * vn1_vnp3_sn7
                                 + 97 vn2_vnp3_sn14 * vn1_vnp3_sn3
                                 + 72 vn2_vnp3_sn14 * vn1_vnp3_sn9
                                 + 47 vn2_vnp3_sn14 * vn4_vnp3_sn5
                                 + 43 vn2_vnp3_sn14 * vn4_vnp3_sn12
                                 + 37 vn2_vnp3_sn14 * vn4_vnp3_sn11
                                 + 189 vn2_vnp3_sn14 * vn3_vnp3_sn2
                                 + 96 vn2_vnp3_sn14 * vn3_vnp3_sn20
                                 + 213 vn2_vnp3_sn14 * vn3_vnp3_sn6
                                 + 64 vn1_vnp3_sn7 * vn3_vnp3_sn2
                                 + 59 vn1_vnp3_sn7 * vn3_vnp3_sn20
                                 + 85 vn1_vnp3_sn7 * vn3_vnp3_sn6
                                 + 58 vn1_vnp3_sn3 * vn3_vnp3_sn2
                                 + 77 vn1_vnp3_sn3 * vn3_vnp3_sn20
                                 + 78 vn1_vnp3_sn3 * vn3_vnp3_sn6
                                 + 63 vn1_vnp3_sn9 * vn3_vnp3_sn2
                                 + 74 vn1_vnp3_sn9 * vn3_vnp3_sn20
                                 + 75 vn1_vnp3_sn9 * vn3_vnp3_sn6
                                 + 66 vn4_vnp3_sn5 * vn3_vnp3_sn2
                                 + 121 vn4_vnp3_sn5 * vn3_vnp3_sn20
                                 + 58 vn4_vnp3_sn5 * vn3_vnp3_sn6
                                 + 127 vn4_vnp3_sn12 * vn3_vnp3_sn2
                                 + 54 vn4_vnp3_sn12 * vn3_vnp3_sn20
                                 + 119 vn4_vnp3_sn12 * vn3_vnp3_sn6
                                 + 126 vn4_vnp3_sn11 * vn3_vnp3_sn2
                                 + 83 vn4_vnp3_sn11 * vn3_vnp3_sn20
                                 + 118 vn4_vnp3_sn11 * vn3_vnp3_sn6
                                 + 104 vn3_vnp4_sn1 * vn1_vnp4_sn20
                                 + 125 vn3_vnp4_sn1 * vn1_vnp4_sn18
                                 + 299 vn3_vnp4_sn1 * vn2_vnp4_sn12
                                 + 255 vn3_vnp4_sn1 * vn2_vnp4_sn13
                                 + 41 vn3_vnp4_sn1 * vn2_vnp4_sn4
                                 + 215 vn3_vnp4_sn1 * vn4_vnp4_sn14
                                 + 40 vn1_vnp4_sn20 * vn4_vnp4_sn14
                                 + 63 vn1_vnp4_sn18 * vn4_vnp4_sn14
                                 + 32 vn2_vnp5_sn20 * vn1_vnp5_sn19
                                 + 117 vn2_vnp5_sn20 * vn1_vnp5_sn13
                                 + 148 vn2_vnp5_sn20 * vn3_vnp5_sn11
                                 + 61 vn1_vnp5_sn19 * vn3_vnp5_sn11
                                 + 48 vn1_vnp5_sn13 * vn3_vnp5_sn11
                                 + 148 vn4_vnp6_sn10 * vn1_vnp6_sn17
                                 + 180 vn4_vnp6_sn10 * vn1_vnp6_sn2
                                 + 92 vn4_vnp6_sn10 * vn2_vnp6_sn5
                                 + 114 vn4_vnp6_sn10 * vn2_vnp6_sn15
                                 + 49 vn4_vnp6_sn10 * vn3_vnp6_sn9
                                 + 73 vn1_vnp6_sn17 * vn3_vnp6_sn9
                                 + 77 vn1_vnp6_sn2 * vn3_vnp6_sn9
                                 + 74 vn2_vnp6_sn5 * vn3_vnp6_sn9
                                 + 124 vn2_vnp6_sn15 * vn3_vnp6_sn9
                                 + 114 vn4_vnp7_sn3 * vn1_vnp7_sn18
                                 + 123 vn4_vnp7_sn3 * vn1_vnp7_sn13
                                 + 115 vn4_vnp7_sn3 * vn1_vnp7_sn14
                                 + 141 vn4_vnp7_sn3 * vn2_vnp7_sn16
                                 + 25 vn4_vnp7_sn3 * vn3_vnp7_sn1
                                 + 60 vn4_vnp7_sn3 * vn3_vnp7_sn11
                                 + 41 vn4_vnp7_sn3 * vn3_vnp7_sn20
                                 + 70 vn1_vnp7_sn18 * vn2_vnp7_sn16
                                 + 78 vn1_vnp7_sn13 * vn2_vnp7_sn16
                                 + 69 vn1_vnp7_sn14 * vn2_vnp7_sn16
                                 + 48 vn2_vnp7_sn16 * vn3_vnp7_sn1
                                 + 32 vn2_vnp7_sn16 * vn3_vnp7_sn11
                                 + 31 vn2_vnp7_sn16 * vn3_vnp7_sn20
                                 + 147 vn2_vnp8_sn3 * vn1_vnp8_sn18
                                 + 72 vn2_vnp8_sn3 * vn1_vnp8_sn9
                                 + 90 vn2_vnp8_sn3 * vn3_vnp8_sn1
                                 + 130 vn2_vnp8_sn3 * vn3_vnp8_sn14
                                 + 163 vn2_vnp8_sn3 * vn3_vnp8_sn12
                                 + 128 vn2_vnp8_sn3 * vn4_vnp8_sn20
                                 + 32 vn2_vnp8_sn3 * vn4_vnp8_sn4
                                 + 122 vn2_vnp8_sn3 * vn4_vnp8_sn11
                                 + 67 vn1_vnp8_sn18 * vn4_vnp8_sn20
                                 + 113 vn1_vnp8_sn18 * vn4_vnp8_sn4
                                 + 185 vn1_vnp8_sn18 * vn4_vnp8_sn11
                                 + 239 vn1_vnp8_sn9 * vn4_vnp8_sn20
                                 + 115 vn1_vnp8_sn9 * vn4_vnp8_sn4
                                 + 227 vn1_vnp8_sn9 * vn4_vnp8_sn11
                                 + 105 vn3_vnp8_sn1 * vn4_vnp8_sn20
                                 + 48 vn3_vnp8_sn1 * vn4_vnp8_sn4
                                 + 300 vn3_vnp8_sn1 * vn4_vnp8_sn11
                                 + 96 vn3_vnp8_sn14 * vn4_vnp8_sn20
                                 + 183 vn3_vnp8_sn14 * vn4_vnp8_sn4
                                 + 115 vn3_vnp8_sn14 * vn4_vnp8_sn11
                                 + 92 vn3_vnp8_sn12 * vn4_vnp8_sn20
                                 + 183 vn3_vnp8_sn12 * vn4_vnp8_sn4
                                 + 43 vn3_vnp8_sn12 * vn4_vnp8_sn11 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: 4 vn3_vnp1_sn1 + 3 vn3_vnp4_sn1
                                 + vn3_vnp7_sn1 + 5 vn3_vnp8_sn1 <= 8
 CPU_capacity_of_substrate_node_2#1: 4 vn1_vnp2_sn2 + 5 vn3_vnp3_sn2
                                 + 5 vn1_vnp6_sn2 <= 5
 CPU_capacity_of_substrate_node_3#2: 3 vn3_vnp2_sn3 + 5 vn1_vnp3_sn3
                                 + vn4_vnp7_sn3 + 4 vn2_vnp8_sn3 <= 8
 CPU_capacity_of_substrate_node_4#3: vn2_vnp4_sn4 + 3 vn4_vnp8_sn4 <= 8
 CPU_capacity_of_substrate_node_5#4: vn4_vnp3_sn5 + 2 vn2_vnp6_sn5 <= 7
 CPU_capacity_of_substrate_node_6#5: 5 vn1_vnp1_sn6 + 5 vn3_vnp3_sn6 <= 8
 CPU_capacity_of_substrate_node_7#6: 5 vn1_vnp3_sn7 <= 3
 CPU_capacity_of_substrate_node_8#7: 3 vn2_vnp1_sn8 <= 7
 CPU_capacity_of_substrate_node_9#8: 4 vn3_vnp1_sn9 + 4 vn1_vnp2_sn9
                                 + 5 vn1_vnp3_sn9 + 4 vn3_vnp6_sn9
                                 + 3 vn1_vnp8_sn9 <= 7
 CPU_capacity_of_substrate_node_10#9: 5 vn4_vnp6_sn10 <= 8
 CPU_capacity_of_substrate_node_11#10: vn4_vnp3_sn11 + 4 vn3_vnp5_sn11
                                 + vn3_vnp7_sn11 + 3 vn4_vnp8_sn11 <= 5
 CPU_capacity_of_substrate_node_12#11: 4 vn4_vnp2_sn12 + vn4_vnp3_sn12
                                 + vn2_vnp4_sn12 + 5 vn3_vnp8_sn12 <= 3
 CPU_capacity_of_substrate_node_13#12: 2 vn2_vnp2_sn13 + vn2_vnp4_sn13
                                 + 5 vn1_vnp5_sn13 + 5 vn1_vnp7_sn13 <= 8
 CPU_capacity_of_substrate_node_14#13: 3 vn2_vnp3_sn14 + 5 vn4_vnp4_sn14
                                 + 5 vn1_vnp7_sn14 + 5 vn3_vnp8_sn14 <= 8
 CPU_capacity_of_substrate_node_15#14: 2 vn2_vnp2_sn15 + 2 vn2_vnp6_sn15 <= 5
 CPU_capacity_of_substrate_node_16#15: 3 vn3_vnp2_sn16 + vn2_vnp7_sn16 <= 6
 CPU_capacity_of_substrate_node_17#16: 3 vn2_vnp1_sn17 + 5 vn1_vnp6_sn17 <= 5
 CPU_capacity_of_substrate_node_18#17: vn1_vnp4_sn18 + 5 vn1_vnp7_sn18
                                 + 3 vn1_vnp8_sn18 <= 2
 CPU_capacity_of_substrate_node_19#18: 5 vn1_vnp5_sn19 <= 4
 CPU_capacity_of_substrate_node_20#19: 5 vn3_vnp3_sn20 + vn1_vnp4_sn20
                                 + 3 vn2_vnp5_sn20 + vn3_vnp7_sn20
                                 + 3 vn4_vnp8_sn20 <= 4
Bounds
 0 <= vnp1 <= 1
 0 <= vn3_vnp1_sn1 <= 1
 0 <= vn1_vnp1_sn6 <= 1
 0 <= vn3_vnp1_sn9 <= 1
 0 <= vn2_vnp1_sn17 <= 1
 0 <= vn2_vnp1_sn8 <= 1
 0 <= vnp2 <= 1
 0 <= vn4_vnp2_sn12 <= 1
 0 <= vn1_vnp2_sn9 <= 1
 0 <= vn1_vnp2_sn2 <= 1
 0 <= vn2_vnp2_sn13 <= 1
 0 <= vn2_vnp2_sn15 <= 1
 0 <= vn3_vnp2_sn3 <= 1
 0 <= vn3_vnp2_sn16 <= 1
 0 <= vnp3 <= 1
 0 <= vn2_vnp3_sn14 <= 1
 0 <= vn1_vnp3_sn7 <= 1
 0 <= vn1_vnp3_sn3 <= 1
 0 <= vn1_vnp3_sn9 <= 1
 0 <= vn4_vnp3_sn5 <= 1
 0 <= vn4_vnp3_sn12 <= 1
 0 <= vn4_vnp3_sn11 <= 1
 0 <= vn3_vnp3_sn2 <= 1
 0 <= vn3_vnp3_sn20 <= 1
 0 <= vn3_vnp3_sn6 <= 1
 0 <= vnp4 <= 1
 0 <= vn3_vnp4_sn1 <= 1
 0 <= vn1_vnp4_sn20 <= 1
 0 <= vn1_vnp4_sn18 <= 1
 0 <= vn2_vnp4_sn12 <= 1
 0 <= vn2_vnp4_sn13 <= 1
 0 <= vn2_vnp4_sn4 <= 1
 0 <= vn4_vnp4_sn14 <= 1
 0 <= vnp5 <= 1
 0 <= vn2_vnp5_sn20 <= 1
 0 <= vn1_vnp5_sn19 <= 1
 0 <= vn1_vnp5_sn13 <= 1
 0 <= vn3_vnp5_sn11 <= 1
 0 <= vnp6 <= 1
 0 <= vn4_vnp6_sn10 <= 1
 0 <= vn1_vnp6_sn17 <= 1
 0 <= vn1_vnp6_sn2 <= 1
 0 <= vn2_vnp6_sn5 <= 1
 0 <= vn2_vnp6_sn15 <= 1
 0 <= vn3_vnp6_sn9 <= 1
 0 <= vnp7 <= 1
 0 <= vn4_vnp7_sn3 <= 1
 0 <= vn1_vnp7_sn18 <= 1
 0 <= vn1_vnp7_sn13 <= 1
 0 <= vn1_vnp7_sn14 <= 1
 0 <= vn2_vnp7_sn16 <= 1
 0 <= vn3_vnp7_sn1 <= 1
 0 <= vn3_vnp7_sn11 <= 1
 0 <= vn3_vnp7_sn20 <= 1
 0 <= vnp8 <= 1
 0 <= vn2_vnp8_sn3 <= 1
 0 <= vn1_vnp8_sn18 <= 1
 0 <= vn1_vnp8_sn9 <= 1
 0 <= vn3_vnp8_sn1 <= 1
 0 <= vn3_vnp8_sn14 <= 1
 0 <= vn3_vnp8_sn12 <= 1
 0 <= vn4_vnp8_sn20 <= 1
 0 <= vn4_vnp8_sn4 <= 1
 0 <= vn4_vnp8_sn11 <= 1
Binaries
 vnp1  vn3_vnp1_sn1  vn1_vnp1_sn6  vn3_vnp1_sn9  vn2_vnp1_sn17  vn2_vnp1_sn8 
 vnp2  vn4_vnp2_sn12  vn1_vnp2_sn9  vn1_vnp2_sn2  vn2_vnp2_sn13  vn2_vnp2_sn15 
 vn3_vnp2_sn3  vn3_vnp2_sn16  vnp3  vn2_vnp3_sn14  vn1_vnp3_sn7  vn1_vnp3_sn3 
 vn1_vnp3_sn9  vn4_vnp3_sn5  vn4_vnp3_sn12  vn4_vnp3_sn11  vn3_vnp3_sn2 
 vn3_vnp3_sn20  vn3_vnp3_sn6  vnp4  vn3_vnp4_sn1  vn1_vnp4_sn20  vn1_vnp4_sn18 
 vn2_vnp4_sn12  vn2_vnp4_sn13  vn2_vnp4_sn4  vn4_vnp4_sn14  vnp5 
 vn2_vnp5_sn20  vn1_vnp5_sn19  vn1_vnp5_sn13  vn3_vnp5_sn11  vnp6 
 vn4_vnp6_sn10  vn1_vnp6_sn17  vn1_vnp6_sn2  vn2_vnp6_sn5  vn2_vnp6_sn15 
 vn3_vnp6_sn9  vnp7  vn4_vnp7_sn3  vn1_vnp7_sn18  vn1_vnp7_sn13  vn1_vnp7_sn14 
 vn2_vnp7_sn16  vn3_vnp7_sn1  vn3_vnp7_sn11  vn3_vnp7_sn20  vnp8  vn2_vnp8_sn3 
 vn1_vnp8_sn18  vn1_vnp8_sn9  vn3_vnp8_sn1  vn3_vnp8_sn14  vn3_vnp8_sn12 
 vn4_vnp8_sn20  vn4_vnp8_sn4  vn4_vnp8_sn11 
End
