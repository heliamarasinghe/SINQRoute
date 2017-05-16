\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 737 vnp1 + 670 vnp2 + 468 vnp3 + 1494 vnp4 + 545 vnp5 + 960 vnp6
      + [ - 46 vn3_vnp1_sn12 * vn1_vnp1_sn15 - 50 vn3_vnp1_sn12 * vn4_vnp1_sn10
      - 194 vn3_vnp1_sn12 * vn4_vnp1_sn1 - 76 vn1_vnp1_sn15 * vn4_vnp1_sn10
      - 156 vn1_vnp1_sn15 * vn4_vnp1_sn1 - 276 vn4_vnp1_sn10 * vn2_vnp1_sn13
      - 506 vn2_vnp1_sn13 * vn4_vnp1_sn1 - 154 vn3_vnp2_sn20 * vn1_vnp2_sn4
      - 90 vn3_vnp2_sn20 * vn2_vnp2_sn2 - 72 vn3_vnp2_sn20 * vn2_vnp2_sn13
      - 30 vn3_vnp2_sn20 * vn4_vnp2_sn8 - 28 vn3_vnp2_sn20 * vn4_vnp2_sn12
      - 322 vn2_vnp2_sn2 * vn4_vnp2_sn8 - 362 vn2_vnp2_sn2 * vn4_vnp2_sn12
      - 476 vn2_vnp2_sn13 * vn4_vnp2_sn8 - 196 vn2_vnp2_sn13 * vn4_vnp2_sn12
      - 166 vn2_vnp3_sn2 * vn1_vnp3_sn19 - 94 vn2_vnp3_sn2 * vn1_vnp3_sn9
      - 70 vn2_vnp3_sn2 * vn1_vnp3_sn3 - 332 vn2_vnp3_sn2 * vn3_vnp3_sn8
      - 282 vn2_vnp3_sn2 * vn3_vnp3_sn16 - 340 vn2_vnp3_sn2 * vn3_vnp3_sn6
      - 88 vn1_vnp3_sn19 * vn3_vnp3_sn8 - 56 vn1_vnp3_sn19 * vn3_vnp3_sn16
      - 132 vn1_vnp3_sn19 * vn3_vnp3_sn6 - 78 vn1_vnp3_sn9 * vn3_vnp3_sn8
      - 80 vn1_vnp3_sn9 * vn3_vnp3_sn16 - 82 vn1_vnp3_sn9 * vn3_vnp3_sn6
      - 78 vn1_vnp3_sn3 * vn3_vnp3_sn8 - 80 vn1_vnp3_sn3 * vn3_vnp3_sn16
      - 82 vn1_vnp3_sn3 * vn3_vnp3_sn6 - 476 vn3_vnp4_sn13 * vn1_vnp4_sn8
      - 276 vn3_vnp4_sn13 * vn1_vnp4_sn10 - 170 vn3_vnp4_sn13 * vn2_vnp4_sn3
      - 144 vn3_vnp4_sn13 * vn2_vnp4_sn20 - 236 vn3_vnp4_sn13 * vn2_vnp4_sn1
      - 290 vn3_vnp4_sn13 * vn4_vnp4_sn11 - 168 vn1_vnp4_sn8 * vn2_vnp4_sn3
      - 114 vn1_vnp4_sn8 * vn2_vnp4_sn20 - 174 vn1_vnp4_sn8 * vn2_vnp4_sn1
      - 82 vn1_vnp4_sn8 * vn4_vnp4_sn11 - 184 vn1_vnp4_sn10 * vn2_vnp4_sn3
      - 170 vn1_vnp4_sn10 * vn2_vnp4_sn20 - 230 vn1_vnp4_sn10 * vn2_vnp4_sn1
      - 16 vn1_vnp4_sn10 * vn4_vnp4_sn11 - 174 vn2_vnp4_sn3 * vn4_vnp4_sn11
      - 84 vn2_vnp4_sn20 * vn4_vnp4_sn11 - 294 vn2_vnp4_sn1 * vn4_vnp4_sn11
      - 38 vn2_vnp5_sn14 * vn1_vnp5_sn15 - 132 vn2_vnp5_sn14 * vn4_vnp5_sn17
      - 132 vn2_vnp5_sn14 * vn4_vnp5_sn19 - 112 vn2_vnp5_sn14 * vn3_vnp5_sn9
      - 36 vn1_vnp5_sn15 * vn2_vnp5_sn11 - 138 vn2_vnp5_sn11 * vn4_vnp5_sn17
      - 138 vn2_vnp5_sn11 * vn4_vnp5_sn19 - 122 vn2_vnp5_sn11 * vn3_vnp5_sn9
      - 138 vn4_vnp5_sn17 * vn3_vnp5_sn9 - 276 vn4_vnp5_sn19 * vn3_vnp5_sn9
      - 24 vn4_vnp6_sn14 * vn1_vnp6_sn15 - 108 vn4_vnp6_sn14 * vn2_vnp6_sn17
      - 160 vn4_vnp6_sn14 * vn3_vnp6_sn9 - 48 vn1_vnp6_sn15 * vn4_vnp6_sn11
      - 168 vn1_vnp6_sn15 * vn2_vnp6_sn17 - 132 vn4_vnp6_sn11 * vn2_vnp6_sn17
      - 230 vn4_vnp6_sn11 * vn3_vnp6_sn9 - 236 vn2_vnp6_sn17 * vn3_vnp6_sn9
      ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn15 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn13 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn12 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn10
                                 + vn4_vnp1_sn1 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn4 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn2
                                 + vn2_vnp2_sn13 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn20 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#7: - vnp2 + vn4_vnp2_sn8
                                 + vn4_vnp2_sn12 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#8: - vnp3 + vn1_vnp3_sn19
                                 + vn1_vnp3_sn9 + vn1_vnp3_sn3 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#9: - vnp3 + vn2_vnp3_sn2 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#10: - vnp3 + vn3_vnp3_sn8
                                 + vn3_vnp3_sn16 + vn3_vnp3_sn6 <= 0
 _Embedding_clash_const_of_vnode1_vnp_4#11: - vnp4 + vn1_vnp4_sn8
                                 + vn1_vnp4_sn10 <= 0
 _Embedding_clash_const_of_vnode2_vnp_4#12: - vnp4 + vn2_vnp4_sn3
                                 + vn2_vnp4_sn20 + vn2_vnp4_sn1 <= 0
 _Embedding_clash_const_of_vnode3_vnp_4#13: - vnp4 + vn3_vnp4_sn13 <= 0
 _Embedding_clash_const_of_vnode4_vnp_4#14: - vnp4 + vn4_vnp4_sn11 <= 0
 _Embedding_clash_const_of_vnode1_vnp_5#15: - vnp5 + vn1_vnp5_sn15 <= 0
 _Embedding_clash_const_of_vnode2_vnp_5#16: - vnp5 + vn2_vnp5_sn14
                                 + vn2_vnp5_sn11 <= 0
 _Embedding_clash_const_of_vnode3_vnp_5#17: - vnp5 + vn3_vnp5_sn9 <= 0
 _Embedding_clash_const_of_vnode4_vnp_5#18: - vnp5 + vn4_vnp5_sn17
                                 + vn4_vnp5_sn19 <= 0
 _Embedding_clash_const_of_vnode1_vnp_6#19: - vnp6 + vn1_vnp6_sn15 <= 0
 _Embedding_clash_const_of_vnode2_vnp_6#20: - vnp6 + vn2_vnp6_sn17 <= 0
 _Embedding_clash_const_of_vnode3_vnp_6#21: - vnp6 + vn3_vnp6_sn9 <= 0
 _Embedding_clash_const_of_vnode4_vnp_6#22: - vnp6 + vn4_vnp6_sn14
                                 + vn4_vnp6_sn11 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn3_vnp1_sn12 * vn1_vnp1_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn4_vnp1_sn10 * vn2_vnp1_sn13
                                 - vn2_vnp1_sn13 * vn4_vnp1_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn3_vnp1_sn12 * vn4_vnp1_sn10
                                 - vn3_vnp1_sn12 * vn4_vnp1_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn1_vnp1_sn15 * vn4_vnp1_sn10
                                 - vn1_vnp1_sn15 * vn4_vnp1_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_5#4: vnp2
                                 + [ - vn3_vnp2_sn20 * vn1_vnp2_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn3_vnp2_sn20 * vn2_vnp2_sn2
                                 - vn3_vnp2_sn20 * vn2_vnp2_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn3_vnp2_sn20 * vn4_vnp2_sn8
                                 - vn3_vnp2_sn20 * vn4_vnp2_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_8#7: vnp2
                                 + [ - vn2_vnp2_sn2 * vn4_vnp2_sn8
                                 - vn2_vnp2_sn2 * vn4_vnp2_sn12
                                 - vn2_vnp2_sn13 * vn4_vnp2_sn8
                                 - vn2_vnp2_sn13 * vn4_vnp2_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_9#8: vnp3
                                 + [ - vn2_vnp3_sn2 * vn1_vnp3_sn19
                                 - vn2_vnp3_sn2 * vn1_vnp3_sn9
                                 - vn2_vnp3_sn2 * vn1_vnp3_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_10#9: vnp3
                                 + [ - vn2_vnp3_sn2 * vn3_vnp3_sn8
                                 - vn2_vnp3_sn2 * vn3_vnp3_sn16
                                 - vn2_vnp3_sn2 * vn3_vnp3_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_11#10: vnp3
                                 + [ - vn1_vnp3_sn19 * vn3_vnp3_sn8
                                 - vn1_vnp3_sn19 * vn3_vnp3_sn16
                                 - vn1_vnp3_sn19 * vn3_vnp3_sn6
                                 - vn1_vnp3_sn9 * vn3_vnp3_sn8
                                 - vn1_vnp3_sn9 * vn3_vnp3_sn16
                                 - vn1_vnp3_sn9 * vn3_vnp3_sn6
                                 - vn1_vnp3_sn3 * vn3_vnp3_sn8
                                 - vn1_vnp3_sn3 * vn3_vnp3_sn16
                                 - vn1_vnp3_sn3 * vn3_vnp3_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_12#11: vnp4
                                 + [ - vn3_vnp4_sn13 * vn1_vnp4_sn8
                                 - vn3_vnp4_sn13 * vn1_vnp4_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_13#12: vnp4
                                 + [ - vn1_vnp4_sn8 * vn2_vnp4_sn3
                                 - vn1_vnp4_sn8 * vn2_vnp4_sn20
                                 - vn1_vnp4_sn8 * vn2_vnp4_sn1
                                 - vn1_vnp4_sn10 * vn2_vnp4_sn3
                                 - vn1_vnp4_sn10 * vn2_vnp4_sn20
                                 - vn1_vnp4_sn10 * vn2_vnp4_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_14#13: vnp4
                                 + [ - vn3_vnp4_sn13 * vn4_vnp4_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_15#14: vnp4
                                 + [ - vn2_vnp4_sn3 * vn4_vnp4_sn11
                                 - vn2_vnp4_sn20 * vn4_vnp4_sn11
                                 - vn2_vnp4_sn1 * vn4_vnp4_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_16#15: vnp4
                                 + [ - vn1_vnp4_sn8 * vn4_vnp4_sn11
                                 - vn1_vnp4_sn10 * vn4_vnp4_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_17#16: vnp4
                                 + [ - vn3_vnp4_sn13 * vn2_vnp4_sn3
                                 - vn3_vnp4_sn13 * vn2_vnp4_sn20
                                 - vn3_vnp4_sn13 * vn2_vnp4_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_18#17: vnp5
                                 + [ - vn2_vnp5_sn14 * vn1_vnp5_sn15
                                 - vn1_vnp5_sn15 * vn2_vnp5_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_19#18: vnp5
                                 + [ - vn2_vnp5_sn14 * vn4_vnp5_sn17
                                 - vn2_vnp5_sn14 * vn4_vnp5_sn19
                                 - vn2_vnp5_sn11 * vn4_vnp5_sn17
                                 - vn2_vnp5_sn11 * vn4_vnp5_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_20#19: vnp5
                                 + [ - vn4_vnp5_sn17 * vn3_vnp5_sn9
                                 - vn4_vnp5_sn19 * vn3_vnp5_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_21#20: vnp5
                                 + [ - vn2_vnp5_sn14 * vn3_vnp5_sn9
                                 - vn2_vnp5_sn11 * vn3_vnp5_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_22#21: vnp6
                                 + [ - vn4_vnp6_sn14 * vn1_vnp6_sn15
                                 - vn1_vnp6_sn15 * vn4_vnp6_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_23#22: vnp6
                                 + [ - vn4_vnp6_sn14 * vn2_vnp6_sn17
                                 - vn4_vnp6_sn11 * vn2_vnp6_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_24#23: vnp6
                                 + [ - vn4_vnp6_sn14 * vn3_vnp6_sn9
                                 - vn4_vnp6_sn11 * vn3_vnp6_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_25#24: vnp6
                                 + [ - vn2_vnp6_sn17 * vn3_vnp6_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_26#25: vnp6
                                 + [ - vn1_vnp6_sn15 * vn2_vnp6_sn17 ] <= 0
 q27#26:                         - 737 vnp1 - 670 vnp2 - 468 vnp3 - 1494 vnp4
                                 - 545 vnp5 - 960 vnp6
                                 + [ 23 vn3_vnp1_sn12 * vn1_vnp1_sn15
                                 + 25 vn3_vnp1_sn12 * vn4_vnp1_sn10
                                 + 97 vn3_vnp1_sn12 * vn4_vnp1_sn1
                                 + 38 vn1_vnp1_sn15 * vn4_vnp1_sn10
                                 + 78 vn1_vnp1_sn15 * vn4_vnp1_sn1
                                 + 138 vn4_vnp1_sn10 * vn2_vnp1_sn13
                                 + 253 vn2_vnp1_sn13 * vn4_vnp1_sn1
                                 + 77 vn3_vnp2_sn20 * vn1_vnp2_sn4
                                 + 45 vn3_vnp2_sn20 * vn2_vnp2_sn2
                                 + 36 vn3_vnp2_sn20 * vn2_vnp2_sn13
                                 + 15 vn3_vnp2_sn20 * vn4_vnp2_sn8
                                 + 14 vn3_vnp2_sn20 * vn4_vnp2_sn12
                                 + 161 vn2_vnp2_sn2 * vn4_vnp2_sn8
                                 + 181 vn2_vnp2_sn2 * vn4_vnp2_sn12
                                 + 238 vn2_vnp2_sn13 * vn4_vnp2_sn8
                                 + 98 vn2_vnp2_sn13 * vn4_vnp2_sn12
                                 + 83 vn2_vnp3_sn2 * vn1_vnp3_sn19
                                 + 47 vn2_vnp3_sn2 * vn1_vnp3_sn9
                                 + 35 vn2_vnp3_sn2 * vn1_vnp3_sn3
                                 + 166 vn2_vnp3_sn2 * vn3_vnp3_sn8
                                 + 141 vn2_vnp3_sn2 * vn3_vnp3_sn16
                                 + 170 vn2_vnp3_sn2 * vn3_vnp3_sn6
                                 + 44 vn1_vnp3_sn19 * vn3_vnp3_sn8
                                 + 28 vn1_vnp3_sn19 * vn3_vnp3_sn16
                                 + 66 vn1_vnp3_sn19 * vn3_vnp3_sn6
                                 + 39 vn1_vnp3_sn9 * vn3_vnp3_sn8
                                 + 40 vn1_vnp3_sn9 * vn3_vnp3_sn16
                                 + 41 vn1_vnp3_sn9 * vn3_vnp3_sn6
                                 + 39 vn1_vnp3_sn3 * vn3_vnp3_sn8
                                 + 40 vn1_vnp3_sn3 * vn3_vnp3_sn16
                                 + 41 vn1_vnp3_sn3 * vn3_vnp3_sn6
                                 + 238 vn3_vnp4_sn13 * vn1_vnp4_sn8
                                 + 138 vn3_vnp4_sn13 * vn1_vnp4_sn10
                                 + 85 vn3_vnp4_sn13 * vn2_vnp4_sn3
                                 + 72 vn3_vnp4_sn13 * vn2_vnp4_sn20
                                 + 118 vn3_vnp4_sn13 * vn2_vnp4_sn1
                                 + 145 vn3_vnp4_sn13 * vn4_vnp4_sn11
                                 + 84 vn1_vnp4_sn8 * vn2_vnp4_sn3
                                 + 57 vn1_vnp4_sn8 * vn2_vnp4_sn20
                                 + 87 vn1_vnp4_sn8 * vn2_vnp4_sn1
                                 + 41 vn1_vnp4_sn8 * vn4_vnp4_sn11
                                 + 92 vn1_vnp4_sn10 * vn2_vnp4_sn3
                                 + 85 vn1_vnp4_sn10 * vn2_vnp4_sn20
                                 + 115 vn1_vnp4_sn10 * vn2_vnp4_sn1
                                 + 8 vn1_vnp4_sn10 * vn4_vnp4_sn11
                                 + 87 vn2_vnp4_sn3 * vn4_vnp4_sn11
                                 + 42 vn2_vnp4_sn20 * vn4_vnp4_sn11
                                 + 147 vn2_vnp4_sn1 * vn4_vnp4_sn11
                                 + 19 vn2_vnp5_sn14 * vn1_vnp5_sn15
                                 + 66 vn2_vnp5_sn14 * vn4_vnp5_sn17
                                 + 66 vn2_vnp5_sn14 * vn4_vnp5_sn19
                                 + 56 vn2_vnp5_sn14 * vn3_vnp5_sn9
                                 + 18 vn1_vnp5_sn15 * vn2_vnp5_sn11
                                 + 69 vn2_vnp5_sn11 * vn4_vnp5_sn17
                                 + 69 vn2_vnp5_sn11 * vn4_vnp5_sn19
                                 + 61 vn2_vnp5_sn11 * vn3_vnp5_sn9
                                 + 69 vn4_vnp5_sn17 * vn3_vnp5_sn9
                                 + 138 vn4_vnp5_sn19 * vn3_vnp5_sn9
                                 + 12 vn4_vnp6_sn14 * vn1_vnp6_sn15
                                 + 54 vn4_vnp6_sn14 * vn2_vnp6_sn17
                                 + 80 vn4_vnp6_sn14 * vn3_vnp6_sn9
                                 + 24 vn1_vnp6_sn15 * vn4_vnp6_sn11
                                 + 84 vn1_vnp6_sn15 * vn2_vnp6_sn17
                                 + 66 vn4_vnp6_sn11 * vn2_vnp6_sn17
                                 + 115 vn4_vnp6_sn11 * vn3_vnp6_sn9
                                 + 118 vn2_vnp6_sn17 * vn3_vnp6_sn9 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: 3 vn2_vnp4_sn1 <= 5
 CPU_capacity_of_substrate_node_2#1: 3 vn2_vnp2_sn2 + vn2_vnp3_sn2 <= 5
 CPU_capacity_of_substrate_node_3#2: 3 vn1_vnp3_sn3 + 3 vn2_vnp4_sn3 <= 1
 CPU_capacity_of_substrate_node_4#3: vn1_vnp2_sn4 <= 1
 CPU_capacity_of_substrate_node_6#4: 3 vn3_vnp3_sn6 <= 8
 CPU_capacity_of_substrate_node_8#5: 3 vn3_vnp3_sn8 <= 2
 CPU_capacity_of_substrate_node_9#6: 3 vn1_vnp3_sn9 + 3 vn3_vnp5_sn9
                                 + 3 vn3_vnp6_sn9 <= 8
 CPU_capacity_of_substrate_node_11#7: 3 vn4_vnp4_sn11 + 3 vn2_vnp5_sn11 <= 4
 CPU_capacity_of_substrate_node_12#8: 3 vn3_vnp1_sn12 <= 3
 CPU_capacity_of_substrate_node_13#9: 3 vn2_vnp1_sn13 + 3 vn2_vnp2_sn13
                                 + 3 vn3_vnp4_sn13 <= 8
 CPU_capacity_of_substrate_node_14#10: 3 vn2_vnp5_sn14 <= 1
 CPU_capacity_of_substrate_node_15#11: 3 vn1_vnp1_sn15 + 3 vn1_vnp6_sn15 <= 5
 CPU_capacity_of_substrate_node_16#12: 3 vn3_vnp3_sn16 <= 4
 CPU_capacity_of_substrate_node_17#13: 3 vn2_vnp6_sn17 <= 2
 CPU_capacity_of_substrate_node_19#14: 3 vn1_vnp3_sn19 <= 2
 CPU_capacity_of_substrate_node_20#15: vn3_vnp2_sn20 + 3 vn2_vnp4_sn20 <= 3
Bounds
 0 <= vnp1 <= 1
 0 <= vn3_vnp1_sn12 <= 1
 0 <= vn1_vnp1_sn15 <= 1
 0 <= vn4_vnp1_sn10 <= 1
 0 <= vn2_vnp1_sn13 <= 1
 0 <= vn4_vnp1_sn1 <= 1
 0 <= vnp2 <= 1
 0 <= vn3_vnp2_sn20 <= 1
 0 <= vn1_vnp2_sn4 <= 1
 0 <= vn2_vnp2_sn2 <= 1
 0 <= vn2_vnp2_sn13 <= 1
 0 <= vn4_vnp2_sn8 <= 1
 0 <= vn4_vnp2_sn12 <= 1
 0 <= vnp3 <= 1
 0 <= vn2_vnp3_sn2 <= 1
 0 <= vn1_vnp3_sn19 <= 1
 0 <= vn1_vnp3_sn9 <= 1
 0 <= vn1_vnp3_sn3 <= 1
 0 <= vn3_vnp3_sn8 <= 1
 0 <= vn3_vnp3_sn16 <= 1
 0 <= vn3_vnp3_sn6 <= 1
 0 <= vnp4 <= 1
 0 <= vn3_vnp4_sn13 <= 1
 0 <= vn1_vnp4_sn8 <= 1
 0 <= vn1_vnp4_sn10 <= 1
 0 <= vn2_vnp4_sn3 <= 1
 0 <= vn2_vnp4_sn20 <= 1
 0 <= vn2_vnp4_sn1 <= 1
 0 <= vn4_vnp4_sn11 <= 1
 0 <= vnp5 <= 1
 0 <= vn2_vnp5_sn14 <= 1
 0 <= vn1_vnp5_sn15 <= 1
 0 <= vn2_vnp5_sn11 <= 1
 0 <= vn4_vnp5_sn17 <= 1
 0 <= vn4_vnp5_sn19 <= 1
 0 <= vn3_vnp5_sn9 <= 1
 0 <= vnp6 <= 1
 0 <= vn4_vnp6_sn14 <= 1
 0 <= vn1_vnp6_sn15 <= 1
 0 <= vn4_vnp6_sn11 <= 1
 0 <= vn2_vnp6_sn17 <= 1
 0 <= vn3_vnp6_sn9 <= 1
Binaries
 vnp1  vn3_vnp1_sn12  vn1_vnp1_sn15  vn4_vnp1_sn10  vn2_vnp1_sn13 
 vn4_vnp1_sn1  vnp2  vn3_vnp2_sn20  vn1_vnp2_sn4  vn2_vnp2_sn2  vn2_vnp2_sn13 
 vn4_vnp2_sn8  vn4_vnp2_sn12  vnp3  vn2_vnp3_sn2  vn1_vnp3_sn19  vn1_vnp3_sn9 
 vn1_vnp3_sn3  vn3_vnp3_sn8  vn3_vnp3_sn16  vn3_vnp3_sn6  vnp4  vn3_vnp4_sn13 
 vn1_vnp4_sn8  vn1_vnp4_sn10  vn2_vnp4_sn3  vn2_vnp4_sn20  vn2_vnp4_sn1 
 vn4_vnp4_sn11  vnp5  vn2_vnp5_sn14  vn1_vnp5_sn15  vn2_vnp5_sn11 
 vn4_vnp5_sn17  vn4_vnp5_sn19  vn3_vnp5_sn9  vnp6  vn4_vnp6_sn14 
 vn1_vnp6_sn15  vn4_vnp6_sn11  vn2_vnp6_sn17  vn3_vnp6_sn9 
End
