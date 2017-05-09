\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 415 vnp1 + 1628 vnp2 + 720 vnp3 + 1222 vnp4 + 945 vnp5 + 1528 vnp6
      + 1328 vnp7 + 784 vnp8 + [ - 70 vn3_vnp1_sn14 * vn1_vnp1_sn9
      - 84 vn3_vnp1_sn14 * vn4_vnp1_sn4 - 42 vn3_vnp1_sn14 * vn4_vnp1_sn10
      - 84 vn1_vnp1_sn9 * vn3_vnp1_sn15 - 106 vn1_vnp1_sn9 * vn2_vnp1_sn6
      - 74 vn1_vnp1_sn9 * vn2_vnp1_sn5 - 82 vn1_vnp1_sn9 * vn4_vnp1_sn4
      - 78 vn1_vnp1_sn9 * vn4_vnp1_sn10 - 90 vn3_vnp1_sn15 * vn4_vnp1_sn4
      - 80 vn3_vnp1_sn15 * vn4_vnp1_sn10 - 410 vn2_vnp2_sn2 * vn1_vnp2_sn10
      - 102 vn2_vnp2_sn2 * vn1_vnp2_sn7 - 296 vn2_vnp2_sn2 * vn1_vnp2_sn16
      - 300 vn2_vnp2_sn2 * vn4_vnp2_sn11 - 310 vn2_vnp2_sn2 * vn3_vnp2_sn6
      - 90 vn2_vnp2_sn2 * vn3_vnp2_sn1 - 350 vn2_vnp2_sn2 * vn3_vnp2_sn18
      - 168 vn1_vnp2_sn10 * vn3_vnp2_sn6 - 348 vn1_vnp2_sn10 * vn3_vnp2_sn1
      - 432 vn1_vnp2_sn10 * vn3_vnp2_sn18 - 512 vn1_vnp2_sn7 * vn3_vnp2_sn6
      - 28 vn1_vnp2_sn7 * vn3_vnp2_sn1 - 312 vn1_vnp2_sn7 * vn3_vnp2_sn18
      - 300 vn1_vnp2_sn16 * vn3_vnp2_sn6 - 312 vn1_vnp2_sn16 * vn3_vnp2_sn1
      - 340 vn1_vnp2_sn16 * vn3_vnp2_sn18 - 198 vn4_vnp2_sn11 * vn3_vnp2_sn6
      - 318 vn4_vnp2_sn11 * vn3_vnp2_sn1 - 240 vn4_vnp2_sn11 * vn3_vnp2_sn18
      - 264 vn4_vnp3_sn8 * vn1_vnp3_sn6 - 192 vn4_vnp3_sn8 * vn1_vnp3_sn19
      - 154 vn4_vnp3_sn8 * vn2_vnp3_sn1 - 56 vn4_vnp3_sn8 * vn2_vnp3_sn17
      - 270 vn1_vnp3_sn6 * vn4_vnp3_sn4 - 318 vn1_vnp3_sn6 * vn4_vnp3_sn20
      - 80 vn1_vnp3_sn6 * vn3_vnp3_sn5 - 186 vn1_vnp3_sn19 * vn4_vnp3_sn4
      - 60 vn1_vnp3_sn19 * vn4_vnp3_sn20 - 360 vn1_vnp3_sn19 * vn3_vnp3_sn5
      - 106 vn4_vnp3_sn4 * vn2_vnp3_sn1 - 104 vn4_vnp3_sn4 * vn2_vnp3_sn17
      - 258 vn4_vnp3_sn20 * vn2_vnp3_sn1 - 144 vn4_vnp3_sn20 * vn2_vnp3_sn17
      - 168 vn3_vnp3_sn5 * vn2_vnp3_sn1 - 252 vn3_vnp3_sn5 * vn2_vnp3_sn17
      - 490 vn4_vnp4_sn7 * vn1_vnp4_sn10 - 180 vn4_vnp4_sn7 * vn2_vnp4_sn20
      - 32 vn4_vnp4_sn7 * vn3_vnp4_sn19 - 92 vn4_vnp4_sn7 * vn3_vnp4_sn14
      - 110 vn4_vnp4_sn7 * vn3_vnp4_sn6 - 170 vn1_vnp4_sn10 * vn4_vnp4_sn11
      - 280 vn1_vnp4_sn10 * vn4_vnp4_sn15 - 214 vn1_vnp4_sn10 * vn2_vnp4_sn20
      - 486 vn1_vnp4_sn10 * vn3_vnp4_sn19 - 126 vn1_vnp4_sn10 * vn3_vnp4_sn14
      - 158 vn1_vnp4_sn10 * vn3_vnp4_sn6 - 138 vn4_vnp4_sn11 * vn2_vnp4_sn20
      - 58 vn4_vnp4_sn11 * vn3_vnp4_sn19 - 32 vn4_vnp4_sn11 * vn3_vnp4_sn14
      - 46 vn4_vnp4_sn11 * vn3_vnp4_sn6 - 114 vn4_vnp4_sn15 * vn2_vnp4_sn20
      - 42 vn4_vnp4_sn15 * vn3_vnp4_sn19 - 2 vn4_vnp4_sn15 * vn3_vnp4_sn14
      - 76 vn4_vnp4_sn15 * vn3_vnp4_sn6 - 124 vn2_vnp4_sn20 * vn3_vnp4_sn19
      - 184 vn2_vnp4_sn20 * vn3_vnp4_sn14 - 554 vn2_vnp4_sn20 * vn3_vnp4_sn6
      - 218 vn2_vnp5_sn20 * vn1_vnp5_sn9 - 144 vn2_vnp5_sn20 * vn3_vnp5_sn17
      - 250 vn1_vnp5_sn9 * vn2_vnp5_sn6 - 102 vn1_vnp5_sn9 * vn3_vnp5_sn17
      - 408 vn2_vnp5_sn6 * vn3_vnp5_sn17 - 132 vn4_vnp6_sn16 * vn1_vnp6_sn3
      - 64 vn4_vnp6_sn16 * vn3_vnp6_sn5 - 348 vn4_vnp6_sn16 * vn2_vnp6_sn6
      - 94 vn4_vnp6_sn16 * vn3_vnp6_sn18 - 132 vn1_vnp6_sn3 * vn4_vnp6_sn7
      - 110 vn1_vnp6_sn3 * vn3_vnp6_sn5 - 230 vn1_vnp6_sn3 * vn2_vnp6_sn6
      - 398 vn1_vnp6_sn3 * vn3_vnp6_sn18 - 96 vn4_vnp6_sn7 * vn3_vnp6_sn5
      - 606 vn4_vnp6_sn7 * vn2_vnp6_sn6 - 76 vn4_vnp6_sn7 * vn3_vnp6_sn18
      - 100 vn3_vnp6_sn5 * vn2_vnp6_sn6 - 630 vn2_vnp6_sn6 * vn3_vnp6_sn18
      - 94 vn2_vnp7_sn5 * vn1_vnp7_sn8 - 48 vn2_vnp7_sn5 * vn1_vnp7_sn6
      - 306 vn2_vnp7_sn5 * vn3_vnp7_sn13 - 254 vn2_vnp7_sn5 * vn3_vnp7_sn16
      - 60 vn2_vnp7_sn5 * vn4_vnp7_sn10 - 76 vn1_vnp7_sn8 * vn2_vnp7_sn18
      - 368 vn1_vnp7_sn8 * vn3_vnp7_sn13 - 166 vn1_vnp7_sn8 * vn3_vnp7_sn16
      - 338 vn1_vnp7_sn8 * vn4_vnp7_sn10 - 166 vn1_vnp7_sn6 * vn2_vnp7_sn18
      - 162 vn1_vnp7_sn6 * vn3_vnp7_sn13 - 280 vn1_vnp7_sn6 * vn3_vnp7_sn16
      - 200 vn1_vnp7_sn6 * vn4_vnp7_sn10 - 498 vn2_vnp7_sn18 * vn3_vnp7_sn13
      - 416 vn2_vnp7_sn18 * vn3_vnp7_sn16 - 158 vn2_vnp7_sn18 * vn4_vnp7_sn10
      - 90 vn3_vnp7_sn13 * vn4_vnp7_sn10 - 112 vn3_vnp7_sn16 * vn4_vnp7_sn10
      - 132 vn4_vnp8_sn18 * vn1_vnp8_sn16 - 156 vn4_vnp8_sn18 * vn3_vnp8_sn20
      - 172 vn1_vnp8_sn16 * vn4_vnp8_sn15 - 132 vn1_vnp8_sn16 * vn3_vnp8_sn20
      - 120 vn4_vnp8_sn15 * vn3_vnp8_sn20 - 218 vn3_vnp8_sn20 * vn2_vnp8_sn9
      - 318 vn3_vnp8_sn20 * vn2_vnp8_sn2 ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn9 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn6 + vn2_vnp1_sn5
                                 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn14
                                 + vn3_vnp1_sn15 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn4
                                 + vn4_vnp1_sn10 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn10
                                 + vn1_vnp2_sn7 + vn1_vnp2_sn16 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn2 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn6 + vn3_vnp2_sn1
                                 + vn3_vnp2_sn18 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#7: - vnp2 + vn4_vnp2_sn11 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#8: - vnp3 + vn1_vnp3_sn6
                                 + vn1_vnp3_sn19 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#9: - vnp3 + vn2_vnp3_sn1
                                 + vn2_vnp3_sn17 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#10: - vnp3 + vn3_vnp3_sn5 <= 0
 _Embedding_clash_const_of_vnode4_vnp_3#11: - vnp3 + vn4_vnp3_sn8
                                 + vn4_vnp3_sn4 + vn4_vnp3_sn20 <= 0
 _Embedding_clash_const_of_vnode1_vnp_4#12: - vnp4 + vn1_vnp4_sn10 <= 0
 _Embedding_clash_const_of_vnode2_vnp_4#13: - vnp4 + vn2_vnp4_sn20 <= 0
 _Embedding_clash_const_of_vnode3_vnp_4#14: - vnp4 + vn3_vnp4_sn19
                                 + vn3_vnp4_sn14 + vn3_vnp4_sn6 <= 0
 _Embedding_clash_const_of_vnode4_vnp_4#15: - vnp4 + vn4_vnp4_sn7
                                 + vn4_vnp4_sn11 + vn4_vnp4_sn15 <= 0
 _Embedding_clash_const_of_vnode1_vnp_5#16: - vnp5 + vn1_vnp5_sn9 <= 0
 _Embedding_clash_const_of_vnode2_vnp_5#17: - vnp5 + vn2_vnp5_sn20
                                 + vn2_vnp5_sn6 <= 0
 _Embedding_clash_const_of_vnode3_vnp_5#18: - vnp5 + vn3_vnp5_sn17 <= 0
 _Embedding_clash_const_of_vnode1_vnp_6#19: - vnp6 + vn1_vnp6_sn3 <= 0
 _Embedding_clash_const_of_vnode2_vnp_6#20: - vnp6 + vn2_vnp6_sn6 <= 0
 _Embedding_clash_const_of_vnode3_vnp_6#21: - vnp6 + vn3_vnp6_sn5
                                 + vn3_vnp6_sn18 <= 0
 _Embedding_clash_const_of_vnode4_vnp_6#22: - vnp6 + vn4_vnp6_sn16
                                 + vn4_vnp6_sn7 <= 0
 _Embedding_clash_const_of_vnode1_vnp_7#23: - vnp7 + vn1_vnp7_sn8
                                 + vn1_vnp7_sn6 <= 0
 _Embedding_clash_const_of_vnode2_vnp_7#24: - vnp7 + vn2_vnp7_sn5
                                 + vn2_vnp7_sn18 <= 0
 _Embedding_clash_const_of_vnode3_vnp_7#25: - vnp7 + vn3_vnp7_sn13
                                 + vn3_vnp7_sn16 <= 0
 _Embedding_clash_const_of_vnode4_vnp_7#26: - vnp7 + vn4_vnp7_sn10 <= 0
 _Embedding_clash_const_of_vnode1_vnp_8#27: - vnp8 + vn1_vnp8_sn16 <= 0
 _Embedding_clash_const_of_vnode2_vnp_8#28: - vnp8 + vn2_vnp8_sn9
                                 + vn2_vnp8_sn2 <= 0
 _Embedding_clash_const_of_vnode3_vnp_8#29: - vnp8 + vn3_vnp8_sn20 <= 0
 _Embedding_clash_const_of_vnode4_vnp_8#30: - vnp8 + vn4_vnp8_sn18
                                 + vn4_vnp8_sn15 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn3_vnp1_sn14 * vn1_vnp1_sn9
                                 - vn1_vnp1_sn9 * vn3_vnp1_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn1_vnp1_sn9 * vn2_vnp1_sn6
                                 - vn1_vnp1_sn9 * vn2_vnp1_sn5 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn3_vnp1_sn14 * vn4_vnp1_sn4
                                 - vn3_vnp1_sn14 * vn4_vnp1_sn10
                                 - vn3_vnp1_sn15 * vn4_vnp1_sn4
                                 - vn3_vnp1_sn15 * vn4_vnp1_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn1_vnp1_sn9 * vn4_vnp1_sn4
                                 - vn1_vnp1_sn9 * vn4_vnp1_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_5#4: vnp2
                                 + [ - vn2_vnp2_sn2 * vn1_vnp2_sn10
                                 - vn2_vnp2_sn2 * vn1_vnp2_sn7
                                 - vn2_vnp2_sn2 * vn1_vnp2_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn2_vnp2_sn2 * vn4_vnp2_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn1_vnp2_sn10 * vn3_vnp2_sn6
                                 - vn1_vnp2_sn10 * vn3_vnp2_sn1
                                 - vn1_vnp2_sn10 * vn3_vnp2_sn18
                                 - vn1_vnp2_sn7 * vn3_vnp2_sn6
                                 - vn1_vnp2_sn7 * vn3_vnp2_sn1
                                 - vn1_vnp2_sn7 * vn3_vnp2_sn18
                                 - vn1_vnp2_sn16 * vn3_vnp2_sn6
                                 - vn1_vnp2_sn16 * vn3_vnp2_sn1
                                 - vn1_vnp2_sn16 * vn3_vnp2_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_8#7: vnp2
                                 + [ - vn4_vnp2_sn11 * vn3_vnp2_sn6
                                 - vn4_vnp2_sn11 * vn3_vnp2_sn1
                                 - vn4_vnp2_sn11 * vn3_vnp2_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_9#8: vnp2
                                 + [ - vn2_vnp2_sn2 * vn3_vnp2_sn6
                                 - vn2_vnp2_sn2 * vn3_vnp2_sn1
                                 - vn2_vnp2_sn2 * vn3_vnp2_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_10#9: vnp3
                                 + [ - vn4_vnp3_sn8 * vn1_vnp3_sn6
                                 - vn4_vnp3_sn8 * vn1_vnp3_sn19
                                 - vn1_vnp3_sn6 * vn4_vnp3_sn4
                                 - vn1_vnp3_sn6 * vn4_vnp3_sn20
                                 - vn1_vnp3_sn19 * vn4_vnp3_sn4
                                 - vn1_vnp3_sn19 * vn4_vnp3_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_11#10: vnp3
                                 + [ - vn3_vnp3_sn5 * vn2_vnp3_sn1
                                 - vn3_vnp3_sn5 * vn2_vnp3_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_12#11: vnp3
                                 + [ - vn1_vnp3_sn6 * vn3_vnp3_sn5
                                 - vn1_vnp3_sn19 * vn3_vnp3_sn5 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_13#12: vnp3
                                 + [ - vn4_vnp3_sn8 * vn2_vnp3_sn1
                                 - vn4_vnp3_sn8 * vn2_vnp3_sn17
                                 - vn4_vnp3_sn4 * vn2_vnp3_sn1
                                 - vn4_vnp3_sn4 * vn2_vnp3_sn17
                                 - vn4_vnp3_sn20 * vn2_vnp3_sn1
                                 - vn4_vnp3_sn20 * vn2_vnp3_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_14#13: vnp4
                                 + [ - vn4_vnp4_sn7 * vn1_vnp4_sn10
                                 - vn1_vnp4_sn10 * vn4_vnp4_sn11
                                 - vn1_vnp4_sn10 * vn4_vnp4_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_15#14: vnp4
                                 + [ - vn4_vnp4_sn7 * vn2_vnp4_sn20
                                 - vn4_vnp4_sn11 * vn2_vnp4_sn20
                                 - vn4_vnp4_sn15 * vn2_vnp4_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_16#15: vnp4
                                 + [ - vn1_vnp4_sn10 * vn3_vnp4_sn19
                                 - vn1_vnp4_sn10 * vn3_vnp4_sn14
                                 - vn1_vnp4_sn10 * vn3_vnp4_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_17#16: vnp4
                                 + [ - vn4_vnp4_sn7 * vn3_vnp4_sn19
                                 - vn4_vnp4_sn7 * vn3_vnp4_sn14
                                 - vn4_vnp4_sn7 * vn3_vnp4_sn6
                                 - vn4_vnp4_sn11 * vn3_vnp4_sn19
                                 - vn4_vnp4_sn11 * vn3_vnp4_sn14
                                 - vn4_vnp4_sn11 * vn3_vnp4_sn6
                                 - vn4_vnp4_sn15 * vn3_vnp4_sn19
                                 - vn4_vnp4_sn15 * vn3_vnp4_sn14
                                 - vn4_vnp4_sn15 * vn3_vnp4_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_18#17: vnp4
                                 + [ - vn1_vnp4_sn10 * vn2_vnp4_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_19#18: vnp4
                                 + [ - vn2_vnp4_sn20 * vn3_vnp4_sn19
                                 - vn2_vnp4_sn20 * vn3_vnp4_sn14
                                 - vn2_vnp4_sn20 * vn3_vnp4_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_20#19: vnp5
                                 + [ - vn2_vnp5_sn20 * vn1_vnp5_sn9
                                 - vn1_vnp5_sn9 * vn2_vnp5_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_21#20: vnp5
                                 + [ - vn2_vnp5_sn20 * vn3_vnp5_sn17
                                 - vn2_vnp5_sn6 * vn3_vnp5_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_22#21: vnp5
                                 + [ - vn1_vnp5_sn9 * vn3_vnp5_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_23#22: vnp6
                                 + [ - vn4_vnp6_sn16 * vn1_vnp6_sn3
                                 - vn1_vnp6_sn3 * vn4_vnp6_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_24#23: vnp6
                                 + [ - vn3_vnp6_sn5 * vn2_vnp6_sn6
                                 - vn2_vnp6_sn6 * vn3_vnp6_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_25#24: vnp6
                                 + [ - vn1_vnp6_sn3 * vn3_vnp6_sn5
                                 - vn1_vnp6_sn3 * vn3_vnp6_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_26#25: vnp6
                                 + [ - vn1_vnp6_sn3 * vn2_vnp6_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_27#26: vnp6
                                 + [ - vn4_vnp6_sn16 * vn2_vnp6_sn6
                                 - vn4_vnp6_sn7 * vn2_vnp6_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_28#27: vnp6
                                 + [ - vn4_vnp6_sn16 * vn3_vnp6_sn5
                                 - vn4_vnp6_sn16 * vn3_vnp6_sn18
                                 - vn4_vnp6_sn7 * vn3_vnp6_sn5
                                 - vn4_vnp6_sn7 * vn3_vnp6_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_29#28: vnp7
                                 + [ - vn2_vnp7_sn5 * vn1_vnp7_sn8
                                 - vn2_vnp7_sn5 * vn1_vnp7_sn6
                                 - vn1_vnp7_sn8 * vn2_vnp7_sn18
                                 - vn1_vnp7_sn6 * vn2_vnp7_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_30#29: vnp7
                                 + [ - vn2_vnp7_sn5 * vn3_vnp7_sn13
                                 - vn2_vnp7_sn5 * vn3_vnp7_sn16
                                 - vn2_vnp7_sn18 * vn3_vnp7_sn13
                                 - vn2_vnp7_sn18 * vn3_vnp7_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_31#30: vnp7
                                 + [ - vn1_vnp7_sn8 * vn3_vnp7_sn13
                                 - vn1_vnp7_sn8 * vn3_vnp7_sn16
                                 - vn1_vnp7_sn6 * vn3_vnp7_sn13
                                 - vn1_vnp7_sn6 * vn3_vnp7_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_32#31: vnp7
                                 + [ - vn1_vnp7_sn8 * vn4_vnp7_sn10
                                 - vn1_vnp7_sn6 * vn4_vnp7_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_33#32: vnp7
                                 + [ - vn2_vnp7_sn5 * vn4_vnp7_sn10
                                 - vn2_vnp7_sn18 * vn4_vnp7_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_34#33: vnp7
                                 + [ - vn3_vnp7_sn13 * vn4_vnp7_sn10
                                 - vn3_vnp7_sn16 * vn4_vnp7_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_8_Virtual_Link_35#34: vnp8
                                 + [ - vn4_vnp8_sn18 * vn1_vnp8_sn16
                                 - vn1_vnp8_sn16 * vn4_vnp8_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_8_Virtual_Link_36#35: vnp8
                                 + [ - vn3_vnp8_sn20 * vn2_vnp8_sn9
                                 - vn3_vnp8_sn20 * vn2_vnp8_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_8_Virtual_Link_37#36: vnp8
                                 + [ - vn4_vnp8_sn18 * vn3_vnp8_sn20
                                 - vn4_vnp8_sn15 * vn3_vnp8_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_8_Virtual_Link_38#37: vnp8
                                 + [ - vn1_vnp8_sn16 * vn3_vnp8_sn20 ] <= 0
 q39#38:                         - 415 vnp1 - 1628 vnp2 - 720 vnp3 - 1222 vnp4
                                 - 945 vnp5 - 1528 vnp6 - 1328 vnp7 - 784 vnp8
                                 + [ 35 vn3_vnp1_sn14 * vn1_vnp1_sn9
                                 + 42 vn3_vnp1_sn14 * vn4_vnp1_sn4
                                 + 21 vn3_vnp1_sn14 * vn4_vnp1_sn10
                                 + 42 vn1_vnp1_sn9 * vn3_vnp1_sn15
                                 + 53 vn1_vnp1_sn9 * vn2_vnp1_sn6
                                 + 37 vn1_vnp1_sn9 * vn2_vnp1_sn5
                                 + 41 vn1_vnp1_sn9 * vn4_vnp1_sn4
                                 + 39 vn1_vnp1_sn9 * vn4_vnp1_sn10
                                 + 45 vn3_vnp1_sn15 * vn4_vnp1_sn4
                                 + 40 vn3_vnp1_sn15 * vn4_vnp1_sn10
                                 + 205 vn2_vnp2_sn2 * vn1_vnp2_sn10
                                 + 51 vn2_vnp2_sn2 * vn1_vnp2_sn7
                                 + 148 vn2_vnp2_sn2 * vn1_vnp2_sn16
                                 + 150 vn2_vnp2_sn2 * vn4_vnp2_sn11
                                 + 155 vn2_vnp2_sn2 * vn3_vnp2_sn6
                                 + 45 vn2_vnp2_sn2 * vn3_vnp2_sn1
                                 + 175 vn2_vnp2_sn2 * vn3_vnp2_sn18
                                 + 84 vn1_vnp2_sn10 * vn3_vnp2_sn6
                                 + 174 vn1_vnp2_sn10 * vn3_vnp2_sn1
                                 + 216 vn1_vnp2_sn10 * vn3_vnp2_sn18
                                 + 256 vn1_vnp2_sn7 * vn3_vnp2_sn6
                                 + 14 vn1_vnp2_sn7 * vn3_vnp2_sn1
                                 + 156 vn1_vnp2_sn7 * vn3_vnp2_sn18
                                 + 150 vn1_vnp2_sn16 * vn3_vnp2_sn6
                                 + 156 vn1_vnp2_sn16 * vn3_vnp2_sn1
                                 + 170 vn1_vnp2_sn16 * vn3_vnp2_sn18
                                 + 99 vn4_vnp2_sn11 * vn3_vnp2_sn6
                                 + 159 vn4_vnp2_sn11 * vn3_vnp2_sn1
                                 + 120 vn4_vnp2_sn11 * vn3_vnp2_sn18
                                 + 132 vn4_vnp3_sn8 * vn1_vnp3_sn6
                                 + 96 vn4_vnp3_sn8 * vn1_vnp3_sn19
                                 + 77 vn4_vnp3_sn8 * vn2_vnp3_sn1
                                 + 28 vn4_vnp3_sn8 * vn2_vnp3_sn17
                                 + 135 vn1_vnp3_sn6 * vn4_vnp3_sn4
                                 + 159 vn1_vnp3_sn6 * vn4_vnp3_sn20
                                 + 40 vn1_vnp3_sn6 * vn3_vnp3_sn5
                                 + 93 vn1_vnp3_sn19 * vn4_vnp3_sn4
                                 + 30 vn1_vnp3_sn19 * vn4_vnp3_sn20
                                 + 180 vn1_vnp3_sn19 * vn3_vnp3_sn5
                                 + 53 vn4_vnp3_sn4 * vn2_vnp3_sn1
                                 + 52 vn4_vnp3_sn4 * vn2_vnp3_sn17
                                 + 129 vn4_vnp3_sn20 * vn2_vnp3_sn1
                                 + 72 vn4_vnp3_sn20 * vn2_vnp3_sn17
                                 + 84 vn3_vnp3_sn5 * vn2_vnp3_sn1
                                 + 126 vn3_vnp3_sn5 * vn2_vnp3_sn17
                                 + 245 vn4_vnp4_sn7 * vn1_vnp4_sn10
                                 + 90 vn4_vnp4_sn7 * vn2_vnp4_sn20
                                 + 16 vn4_vnp4_sn7 * vn3_vnp4_sn19
                                 + 46 vn4_vnp4_sn7 * vn3_vnp4_sn14
                                 + 55 vn4_vnp4_sn7 * vn3_vnp4_sn6
                                 + 85 vn1_vnp4_sn10 * vn4_vnp4_sn11
                                 + 140 vn1_vnp4_sn10 * vn4_vnp4_sn15
                                 + 107 vn1_vnp4_sn10 * vn2_vnp4_sn20
                                 + 243 vn1_vnp4_sn10 * vn3_vnp4_sn19
                                 + 63 vn1_vnp4_sn10 * vn3_vnp4_sn14
                                 + 79 vn1_vnp4_sn10 * vn3_vnp4_sn6
                                 + 69 vn4_vnp4_sn11 * vn2_vnp4_sn20
                                 + 29 vn4_vnp4_sn11 * vn3_vnp4_sn19
                                 + 16 vn4_vnp4_sn11 * vn3_vnp4_sn14
                                 + 23 vn4_vnp4_sn11 * vn3_vnp4_sn6
                                 + 57 vn4_vnp4_sn15 * vn2_vnp4_sn20
                                 + 21 vn4_vnp4_sn15 * vn3_vnp4_sn19
                                 + vn4_vnp4_sn15 * vn3_vnp4_sn14
                                 + 38 vn4_vnp4_sn15 * vn3_vnp4_sn6
                                 + 62 vn2_vnp4_sn20 * vn3_vnp4_sn19
                                 + 92 vn2_vnp4_sn20 * vn3_vnp4_sn14
                                 + 277 vn2_vnp4_sn20 * vn3_vnp4_sn6
                                 + 109 vn2_vnp5_sn20 * vn1_vnp5_sn9
                                 + 72 vn2_vnp5_sn20 * vn3_vnp5_sn17
                                 + 125 vn1_vnp5_sn9 * vn2_vnp5_sn6
                                 + 51 vn1_vnp5_sn9 * vn3_vnp5_sn17
                                 + 204 vn2_vnp5_sn6 * vn3_vnp5_sn17
                                 + 66 vn4_vnp6_sn16 * vn1_vnp6_sn3
                                 + 32 vn4_vnp6_sn16 * vn3_vnp6_sn5
                                 + 174 vn4_vnp6_sn16 * vn2_vnp6_sn6
                                 + 47 vn4_vnp6_sn16 * vn3_vnp6_sn18
                                 + 66 vn1_vnp6_sn3 * vn4_vnp6_sn7
                                 + 55 vn1_vnp6_sn3 * vn3_vnp6_sn5
                                 + 115 vn1_vnp6_sn3 * vn2_vnp6_sn6
                                 + 199 vn1_vnp6_sn3 * vn3_vnp6_sn18
                                 + 48 vn4_vnp6_sn7 * vn3_vnp6_sn5
                                 + 303 vn4_vnp6_sn7 * vn2_vnp6_sn6
                                 + 38 vn4_vnp6_sn7 * vn3_vnp6_sn18
                                 + 50 vn3_vnp6_sn5 * vn2_vnp6_sn6
                                 + 315 vn2_vnp6_sn6 * vn3_vnp6_sn18
                                 + 47 vn2_vnp7_sn5 * vn1_vnp7_sn8
                                 + 24 vn2_vnp7_sn5 * vn1_vnp7_sn6
                                 + 153 vn2_vnp7_sn5 * vn3_vnp7_sn13
                                 + 127 vn2_vnp7_sn5 * vn3_vnp7_sn16
                                 + 30 vn2_vnp7_sn5 * vn4_vnp7_sn10
                                 + 38 vn1_vnp7_sn8 * vn2_vnp7_sn18
                                 + 184 vn1_vnp7_sn8 * vn3_vnp7_sn13
                                 + 83 vn1_vnp7_sn8 * vn3_vnp7_sn16
                                 + 169 vn1_vnp7_sn8 * vn4_vnp7_sn10
                                 + 83 vn1_vnp7_sn6 * vn2_vnp7_sn18
                                 + 81 vn1_vnp7_sn6 * vn3_vnp7_sn13
                                 + 140 vn1_vnp7_sn6 * vn3_vnp7_sn16
                                 + 100 vn1_vnp7_sn6 * vn4_vnp7_sn10
                                 + 249 vn2_vnp7_sn18 * vn3_vnp7_sn13
                                 + 208 vn2_vnp7_sn18 * vn3_vnp7_sn16
                                 + 79 vn2_vnp7_sn18 * vn4_vnp7_sn10
                                 + 45 vn3_vnp7_sn13 * vn4_vnp7_sn10
                                 + 56 vn3_vnp7_sn16 * vn4_vnp7_sn10
                                 + 66 vn4_vnp8_sn18 * vn1_vnp8_sn16
                                 + 78 vn4_vnp8_sn18 * vn3_vnp8_sn20
                                 + 86 vn1_vnp8_sn16 * vn4_vnp8_sn15
                                 + 66 vn1_vnp8_sn16 * vn3_vnp8_sn20
                                 + 60 vn4_vnp8_sn15 * vn3_vnp8_sn20
                                 + 109 vn3_vnp8_sn20 * vn2_vnp8_sn9
                                 + 159 vn3_vnp8_sn20 * vn2_vnp8_sn2 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: 3 vn3_vnp2_sn1 + 3 vn2_vnp3_sn1 <= 8
 CPU_capacity_of_substrate_node_2#1: 3 vn2_vnp8_sn2 <= 7
 CPU_capacity_of_substrate_node_3#2: 3 vn1_vnp6_sn3 <= 5
 CPU_capacity_of_substrate_node_5#3: 3 vn2_vnp1_sn5 + 3 vn2_vnp7_sn5 <= 5
 CPU_capacity_of_substrate_node_6#4: 3 vn2_vnp1_sn6 + 3 vn3_vnp2_sn6
                                 + vn1_vnp7_sn6 <= 5
 CPU_capacity_of_substrate_node_7#5: vn1_vnp2_sn7 + 3 vn4_vnp6_sn7 <= 8
 CPU_capacity_of_substrate_node_8#6: vn1_vnp7_sn8 <= 8
 CPU_capacity_of_substrate_node_9#7: 3 vn1_vnp1_sn9 + 3 vn1_vnp5_sn9
                                 + 3 vn2_vnp8_sn9 <= 5
 CPU_capacity_of_substrate_node_10#8: vn1_vnp2_sn10 + 3 vn1_vnp4_sn10
                                 + 3 vn4_vnp7_sn10 <= 8
 CPU_capacity_of_substrate_node_11#9: 3 vn4_vnp2_sn11 <= 5
 CPU_capacity_of_substrate_node_13#10: vn3_vnp7_sn13 <= 8
 CPU_capacity_of_substrate_node_14#11: 3 vn3_vnp1_sn14 <= 5
 CPU_capacity_of_substrate_node_15#12: 3 vn3_vnp1_sn15 + 3 vn4_vnp8_sn15 <= 8
 CPU_capacity_of_substrate_node_16#13: vn1_vnp2_sn16 + 3 vn4_vnp6_sn16
                                 + vn3_vnp7_sn16 + vn1_vnp8_sn16 <= 8
 CPU_capacity_of_substrate_node_17#14: 3 vn2_vnp3_sn17 + 3 vn3_vnp5_sn17 <= 5
 CPU_capacity_of_substrate_node_18#15: 3 vn3_vnp2_sn18 + 3 vn2_vnp7_sn18
                                 + 3 vn4_vnp8_sn18 <= 8
 CPU_capacity_of_substrate_node_20#16: 3 vn2_vnp4_sn20 <= 8
Bounds
 0 <= vnp1 <= 1
 0 <= vn3_vnp1_sn14 <= 1
 0 <= vn1_vnp1_sn9 <= 1
 0 <= vn3_vnp1_sn15 <= 1
 0 <= vn2_vnp1_sn6 <= 1
 0 <= vn2_vnp1_sn5 <= 1
 0 <= vn4_vnp1_sn4 <= 1
 0 <= vn4_vnp1_sn10 <= 1
 0 <= vnp2 <= 1
 0 <= vn2_vnp2_sn2 <= 1
 0 <= vn1_vnp2_sn10 <= 1
 0 <= vn1_vnp2_sn7 <= 1
 0 <= vn1_vnp2_sn16 <= 1
 0 <= vn4_vnp2_sn11 <= 1
 0 <= vn3_vnp2_sn6 <= 1
 0 <= vn3_vnp2_sn1 <= 1
 0 <= vn3_vnp2_sn18 <= 1
 0 <= vnp3 <= 1
 0 <= vn4_vnp3_sn8 <= 1
 0 <= vn1_vnp3_sn6 <= 1
 0 <= vn1_vnp3_sn19 <= 1
 0 <= vn4_vnp3_sn4 <= 1
 0 <= vn4_vnp3_sn20 <= 1
 0 <= vn3_vnp3_sn5 <= 1
 0 <= vn2_vnp3_sn1 <= 1
 0 <= vn2_vnp3_sn17 <= 1
 0 <= vnp4 <= 1
 0 <= vn4_vnp4_sn7 <= 1
 0 <= vn1_vnp4_sn10 <= 1
 0 <= vn4_vnp4_sn11 <= 1
 0 <= vn4_vnp4_sn15 <= 1
 0 <= vn2_vnp4_sn20 <= 1
 0 <= vn3_vnp4_sn19 <= 1
 0 <= vn3_vnp4_sn14 <= 1
 0 <= vn3_vnp4_sn6 <= 1
 0 <= vnp5 <= 1
 0 <= vn2_vnp5_sn20 <= 1
 0 <= vn1_vnp5_sn9 <= 1
 0 <= vn2_vnp5_sn6 <= 1
 0 <= vn3_vnp5_sn17 <= 1
 0 <= vnp6 <= 1
 0 <= vn4_vnp6_sn16 <= 1
 0 <= vn1_vnp6_sn3 <= 1
 0 <= vn4_vnp6_sn7 <= 1
 0 <= vn3_vnp6_sn5 <= 1
 0 <= vn2_vnp6_sn6 <= 1
 0 <= vn3_vnp6_sn18 <= 1
 0 <= vnp7 <= 1
 0 <= vn2_vnp7_sn5 <= 1
 0 <= vn1_vnp7_sn8 <= 1
 0 <= vn1_vnp7_sn6 <= 1
 0 <= vn2_vnp7_sn18 <= 1
 0 <= vn3_vnp7_sn13 <= 1
 0 <= vn3_vnp7_sn16 <= 1
 0 <= vn4_vnp7_sn10 <= 1
 0 <= vnp8 <= 1
 0 <= vn4_vnp8_sn18 <= 1
 0 <= vn1_vnp8_sn16 <= 1
 0 <= vn4_vnp8_sn15 <= 1
 0 <= vn3_vnp8_sn20 <= 1
 0 <= vn2_vnp8_sn9 <= 1
 0 <= vn2_vnp8_sn2 <= 1
Binaries
 vnp1  vn3_vnp1_sn14  vn1_vnp1_sn9  vn3_vnp1_sn15  vn2_vnp1_sn6  vn2_vnp1_sn5 
 vn4_vnp1_sn4  vn4_vnp1_sn10  vnp2  vn2_vnp2_sn2  vn1_vnp2_sn10  vn1_vnp2_sn7 
 vn1_vnp2_sn16  vn4_vnp2_sn11  vn3_vnp2_sn6  vn3_vnp2_sn1  vn3_vnp2_sn18  vnp3 
 vn4_vnp3_sn8  vn1_vnp3_sn6  vn1_vnp3_sn19  vn4_vnp3_sn4  vn4_vnp3_sn20 
 vn3_vnp3_sn5  vn2_vnp3_sn1  vn2_vnp3_sn17  vnp4  vn4_vnp4_sn7  vn1_vnp4_sn10 
 vn4_vnp4_sn11  vn4_vnp4_sn15  vn2_vnp4_sn20  vn3_vnp4_sn19  vn3_vnp4_sn14 
 vn3_vnp4_sn6  vnp5  vn2_vnp5_sn20  vn1_vnp5_sn9  vn2_vnp5_sn6  vn3_vnp5_sn17 
 vnp6  vn4_vnp6_sn16  vn1_vnp6_sn3  vn4_vnp6_sn7  vn3_vnp6_sn5  vn2_vnp6_sn6 
 vn3_vnp6_sn18  vnp7  vn2_vnp7_sn5  vn1_vnp7_sn8  vn1_vnp7_sn6  vn2_vnp7_sn18 
 vn3_vnp7_sn13  vn3_vnp7_sn16  vn4_vnp7_sn10  vnp8  vn4_vnp8_sn18 
 vn1_vnp8_sn16  vn4_vnp8_sn15  vn3_vnp8_sn20  vn2_vnp8_sn9  vn2_vnp8_sn2 
End
