\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1878 vnp1 + 1770 vnp2 + 419 vnp3 + 920 vnp4 + 728 vnp5
      + [ - 174 vn3_vnp1_sn2 * vn1_vnp1_sn19 - 284 vn3_vnp1_sn2 * vn2_vnp1_sn10
      - 184 vn1_vnp1_sn19 * vn3_vnp1_sn20 - 352 vn1_vnp1_sn19 * vn2_vnp1_sn10
      - 46 vn1_vnp1_sn19 * vn4_vnp1_sn8 - 268 vn3_vnp1_sn20 * vn2_vnp1_sn10
      - 160 vn2_vnp1_sn10 * vn4_vnp1_sn8 - 160 vn2_vnp2_sn11 * vn1_vnp2_sn1
      - 90 vn2_vnp2_sn11 * vn1_vnp2_sn16 - 174 vn2_vnp2_sn11 * vn1_vnp2_sn6
      - 172 vn2_vnp2_sn11 * vn4_vnp2_sn17 - 274 vn2_vnp2_sn11 * vn4_vnp2_sn19
      - 154 vn2_vnp2_sn11 * vn4_vnp2_sn8 - 98 vn2_vnp2_sn11 * vn3_vnp2_sn4
      - 86 vn2_vnp2_sn11 * vn3_vnp2_sn20 - 102 vn2_vnp2_sn11 * vn3_vnp2_sn7
      - 100 vn1_vnp2_sn1 * vn4_vnp2_sn17 - 46 vn1_vnp2_sn1 * vn4_vnp2_sn19
      - 148 vn1_vnp2_sn1 * vn4_vnp2_sn8 - 208 vn1_vnp2_sn1 * vn3_vnp2_sn4
      - 214 vn1_vnp2_sn1 * vn3_vnp2_sn20 - 224 vn1_vnp2_sn1 * vn3_vnp2_sn7
      - 124 vn1_vnp2_sn16 * vn4_vnp2_sn17 - 190 vn1_vnp2_sn16 * vn4_vnp2_sn19
      - 88 vn1_vnp2_sn16 * vn4_vnp2_sn8 - 184 vn1_vnp2_sn16 * vn3_vnp2_sn4
      - 340 vn1_vnp2_sn16 * vn3_vnp2_sn20 - 190 vn1_vnp2_sn16 * vn3_vnp2_sn7
      - 448 vn1_vnp2_sn6 * vn4_vnp2_sn17 - 208 vn1_vnp2_sn6 * vn4_vnp2_sn19
      - 280 vn1_vnp2_sn6 * vn4_vnp2_sn8 - 454 vn1_vnp2_sn6 * vn3_vnp2_sn4
      - 400 vn1_vnp2_sn6 * vn3_vnp2_sn20 - 750 vn1_vnp2_sn6 * vn3_vnp2_sn7
      - 114 vn4_vnp2_sn17 * vn3_vnp2_sn4 - 132 vn4_vnp2_sn17 * vn3_vnp2_sn20
      - 120 vn4_vnp2_sn17 * vn3_vnp2_sn7 - 174 vn4_vnp2_sn19 * vn3_vnp2_sn4
      - 144 vn4_vnp2_sn19 * vn3_vnp2_sn20 - 150 vn4_vnp2_sn19 * vn3_vnp2_sn7
      - 60 vn4_vnp2_sn8 * vn3_vnp2_sn4 - 174 vn4_vnp2_sn8 * vn3_vnp2_sn20
      - 66 vn4_vnp2_sn8 * vn3_vnp2_sn7 - 108 vn2_vnp3_sn14 * vn1_vnp3_sn3
      - 238 vn2_vnp3_sn14 * vn1_vnp3_sn16 - 266 vn2_vnp3_sn14 * vn1_vnp3_sn17
      - 38 vn2_vnp3_sn14 * vn3_vnp3_sn1 - 46 vn2_vnp3_sn14 * vn3_vnp3_sn10
      - 240 vn1_vnp3_sn3 * vn2_vnp3_sn20 - 46 vn1_vnp3_sn3 * vn3_vnp3_sn1
      - 66 vn1_vnp3_sn3 * vn3_vnp3_sn10 - 340 vn1_vnp3_sn16 * vn2_vnp3_sn20
      - 108 vn1_vnp3_sn16 * vn3_vnp3_sn1 - 108 vn1_vnp3_sn16 * vn3_vnp3_sn10
      - 168 vn1_vnp3_sn17 * vn2_vnp3_sn20 - 56 vn1_vnp3_sn17 * vn3_vnp3_sn1
      - 116 vn1_vnp3_sn17 * vn3_vnp3_sn10 - 58 vn2_vnp3_sn20 * vn3_vnp3_sn1
      - 88 vn2_vnp3_sn20 * vn3_vnp3_sn10 - 100 vn4_vnp4_sn20 * vn1_vnp4_sn8
      - 150 vn4_vnp4_sn20 * vn1_vnp4_sn16 - 90 vn4_vnp4_sn20 * vn3_vnp4_sn3
      - 310 vn4_vnp4_sn20 * vn2_vnp4_sn7 - 62 vn4_vnp4_sn20 * vn3_vnp4_sn17
      - 122 vn1_vnp4_sn8 * vn3_vnp4_sn3 - 98 vn1_vnp4_sn8 * vn3_vnp4_sn17
      - 250 vn1_vnp4_sn16 * vn3_vnp4_sn3 - 196 vn1_vnp4_sn16 * vn3_vnp4_sn17
      - 94 vn3_vnp4_sn3 * vn2_vnp4_sn7 - 54 vn2_vnp4_sn7 * vn3_vnp4_sn17
      - 46 vn3_vnp5_sn12 * vn1_vnp5_sn8 - 10 vn3_vnp5_sn12 * vn1_vnp5_sn13
      - 38 vn3_vnp5_sn12 * vn1_vnp5_sn16 - 114 vn3_vnp5_sn12 * vn2_vnp5_sn2
      - 132 vn3_vnp5_sn12 * vn2_vnp5_sn7 - 312 vn3_vnp5_sn12 * vn4_vnp5_sn18
      - 206 vn3_vnp5_sn12 * vn4_vnp5_sn14 - 270 vn3_vnp5_sn12 * vn4_vnp5_sn4
      - 148 vn2_vnp5_sn2 * vn4_vnp5_sn18 - 170 vn2_vnp5_sn2 * vn4_vnp5_sn14
      - 236 vn2_vnp5_sn2 * vn4_vnp5_sn4 - 70 vn2_vnp5_sn7 * vn4_vnp5_sn18
      - 272 vn2_vnp5_sn7 * vn4_vnp5_sn14 - 134 vn2_vnp5_sn7 * vn4_vnp5_sn4
      ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn19 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn10 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn2
                                 + vn3_vnp1_sn20 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn8 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn1
                                 + vn1_vnp2_sn16 + vn1_vnp2_sn6 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn11 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn4
                                 + vn3_vnp2_sn20 + vn3_vnp2_sn7 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#7: - vnp2 + vn4_vnp2_sn17
                                 + vn4_vnp2_sn19 + vn4_vnp2_sn8 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#8: - vnp3 + vn1_vnp3_sn3
                                 + vn1_vnp3_sn16 + vn1_vnp3_sn17 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#9: - vnp3 + vn2_vnp3_sn14
                                 + vn2_vnp3_sn20 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#10: - vnp3 + vn3_vnp3_sn1
                                 + vn3_vnp3_sn10 <= 0
 _Embedding_clash_const_of_vnode1_vnp_4#11: - vnp4 + vn1_vnp4_sn8
                                 + vn1_vnp4_sn16 <= 0
 _Embedding_clash_const_of_vnode2_vnp_4#12: - vnp4 + vn2_vnp4_sn7 <= 0
 _Embedding_clash_const_of_vnode3_vnp_4#13: - vnp4 + vn3_vnp4_sn3
                                 + vn3_vnp4_sn17 <= 0
 _Embedding_clash_const_of_vnode4_vnp_4#14: - vnp4 + vn4_vnp4_sn20 <= 0
 _Embedding_clash_const_of_vnode1_vnp_5#15: - vnp5 + vn1_vnp5_sn8
                                 + vn1_vnp5_sn13 + vn1_vnp5_sn16 <= 0
 _Embedding_clash_const_of_vnode2_vnp_5#16: - vnp5 + vn2_vnp5_sn2
                                 + vn2_vnp5_sn7 <= 0
 _Embedding_clash_const_of_vnode3_vnp_5#17: - vnp5 + vn3_vnp5_sn12 <= 0
 _Embedding_clash_const_of_vnode4_vnp_5#18: - vnp5 + vn4_vnp5_sn18
                                 + vn4_vnp5_sn14 + vn4_vnp5_sn4 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn3_vnp1_sn2 * vn1_vnp1_sn19
                                 - vn1_vnp1_sn19 * vn3_vnp1_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn1_vnp1_sn19 * vn2_vnp1_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn3_vnp1_sn2 * vn2_vnp1_sn10
                                 - vn3_vnp1_sn20 * vn2_vnp1_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn1_vnp1_sn19 * vn4_vnp1_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_5#4: vnp1
                                 + [ - vn2_vnp1_sn10 * vn4_vnp1_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn2_vnp2_sn11 * vn1_vnp2_sn1
                                 - vn2_vnp2_sn11 * vn1_vnp2_sn16
                                 - vn2_vnp2_sn11 * vn1_vnp2_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn2_vnp2_sn11 * vn4_vnp2_sn17
                                 - vn2_vnp2_sn11 * vn4_vnp2_sn19
                                 - vn2_vnp2_sn11 * vn4_vnp2_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_8#7: vnp2
                                 + [ - vn2_vnp2_sn11 * vn3_vnp2_sn4
                                 - vn2_vnp2_sn11 * vn3_vnp2_sn20
                                 - vn2_vnp2_sn11 * vn3_vnp2_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_9#8: vnp2
                                 + [ - vn1_vnp2_sn1 * vn3_vnp2_sn4
                                 - vn1_vnp2_sn1 * vn3_vnp2_sn20
                                 - vn1_vnp2_sn1 * vn3_vnp2_sn7
                                 - vn1_vnp2_sn16 * vn3_vnp2_sn4
                                 - vn1_vnp2_sn16 * vn3_vnp2_sn20
                                 - vn1_vnp2_sn16 * vn3_vnp2_sn7
                                 - vn1_vnp2_sn6 * vn3_vnp2_sn4
                                 - vn1_vnp2_sn6 * vn3_vnp2_sn20
                                 - vn1_vnp2_sn6 * vn3_vnp2_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_10#9: vnp2
                                 + [ - vn1_vnp2_sn1 * vn4_vnp2_sn17
                                 - vn1_vnp2_sn1 * vn4_vnp2_sn19
                                 - vn1_vnp2_sn1 * vn4_vnp2_sn8
                                 - vn1_vnp2_sn16 * vn4_vnp2_sn17
                                 - vn1_vnp2_sn16 * vn4_vnp2_sn19
                                 - vn1_vnp2_sn16 * vn4_vnp2_sn8
                                 - vn1_vnp2_sn6 * vn4_vnp2_sn17
                                 - vn1_vnp2_sn6 * vn4_vnp2_sn19
                                 - vn1_vnp2_sn6 * vn4_vnp2_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_11#10: vnp2
                                 + [ - vn4_vnp2_sn17 * vn3_vnp2_sn4
                                 - vn4_vnp2_sn17 * vn3_vnp2_sn20
                                 - vn4_vnp2_sn17 * vn3_vnp2_sn7
                                 - vn4_vnp2_sn19 * vn3_vnp2_sn4
                                 - vn4_vnp2_sn19 * vn3_vnp2_sn20
                                 - vn4_vnp2_sn19 * vn3_vnp2_sn7
                                 - vn4_vnp2_sn8 * vn3_vnp2_sn4
                                 - vn4_vnp2_sn8 * vn3_vnp2_sn20
                                 - vn4_vnp2_sn8 * vn3_vnp2_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_12#11: vnp3
                                 + [ - vn2_vnp3_sn14 * vn1_vnp3_sn3
                                 - vn2_vnp3_sn14 * vn1_vnp3_sn16
                                 - vn2_vnp3_sn14 * vn1_vnp3_sn17
                                 - vn1_vnp3_sn3 * vn2_vnp3_sn20
                                 - vn1_vnp3_sn16 * vn2_vnp3_sn20
                                 - vn1_vnp3_sn17 * vn2_vnp3_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_13#12: vnp3
                                 + [ - vn2_vnp3_sn14 * vn3_vnp3_sn1
                                 - vn2_vnp3_sn14 * vn3_vnp3_sn10
                                 - vn2_vnp3_sn20 * vn3_vnp3_sn1
                                 - vn2_vnp3_sn20 * vn3_vnp3_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_14#13: vnp3
                                 + [ - vn1_vnp3_sn3 * vn3_vnp3_sn1
                                 - vn1_vnp3_sn3 * vn3_vnp3_sn10
                                 - vn1_vnp3_sn16 * vn3_vnp3_sn1
                                 - vn1_vnp3_sn16 * vn3_vnp3_sn10
                                 - vn1_vnp3_sn17 * vn3_vnp3_sn1
                                 - vn1_vnp3_sn17 * vn3_vnp3_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_15#14: vnp4
                                 + [ - vn4_vnp4_sn20 * vn1_vnp4_sn8
                                 - vn4_vnp4_sn20 * vn1_vnp4_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_16#15: vnp4
                                 + [ - vn3_vnp4_sn3 * vn2_vnp4_sn7
                                 - vn2_vnp4_sn7 * vn3_vnp4_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_17#16: vnp4
                                 + [ - vn1_vnp4_sn8 * vn3_vnp4_sn3
                                 - vn1_vnp4_sn8 * vn3_vnp4_sn17
                                 - vn1_vnp4_sn16 * vn3_vnp4_sn3
                                 - vn1_vnp4_sn16 * vn3_vnp4_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_18#17: vnp4
                                 + [ - vn4_vnp4_sn20 * vn3_vnp4_sn3
                                 - vn4_vnp4_sn20 * vn3_vnp4_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_19#18: vnp4
                                 + [ - vn4_vnp4_sn20 * vn2_vnp4_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_20#19: vnp5
                                 + [ - vn3_vnp5_sn12 * vn1_vnp5_sn8
                                 - vn3_vnp5_sn12 * vn1_vnp5_sn13
                                 - vn3_vnp5_sn12 * vn1_vnp5_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_21#20: vnp5
                                 + [ - vn3_vnp5_sn12 * vn2_vnp5_sn2
                                 - vn3_vnp5_sn12 * vn2_vnp5_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_22#21: vnp5
                                 + [ - vn3_vnp5_sn12 * vn4_vnp5_sn18
                                 - vn3_vnp5_sn12 * vn4_vnp5_sn14
                                 - vn3_vnp5_sn12 * vn4_vnp5_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_23#22: vnp5
                                 + [ - vn2_vnp5_sn2 * vn4_vnp5_sn18
                                 - vn2_vnp5_sn2 * vn4_vnp5_sn14
                                 - vn2_vnp5_sn2 * vn4_vnp5_sn4
                                 - vn2_vnp5_sn7 * vn4_vnp5_sn18
                                 - vn2_vnp5_sn7 * vn4_vnp5_sn14
                                 - vn2_vnp5_sn7 * vn4_vnp5_sn4 ] <= 0
 q24#23:                         - 1878 vnp1 - 1770 vnp2 - 419 vnp3 - 920 vnp4
                                 - 728 vnp5 + [ 87 vn3_vnp1_sn2 * vn1_vnp1_sn19
                                 + 142 vn3_vnp1_sn2 * vn2_vnp1_sn10
                                 + 92 vn1_vnp1_sn19 * vn3_vnp1_sn20
                                 + 176 vn1_vnp1_sn19 * vn2_vnp1_sn10
                                 + 23 vn1_vnp1_sn19 * vn4_vnp1_sn8
                                 + 134 vn3_vnp1_sn20 * vn2_vnp1_sn10
                                 + 80 vn2_vnp1_sn10 * vn4_vnp1_sn8
                                 + 80 vn2_vnp2_sn11 * vn1_vnp2_sn1
                                 + 45 vn2_vnp2_sn11 * vn1_vnp2_sn16
                                 + 87 vn2_vnp2_sn11 * vn1_vnp2_sn6
                                 + 86 vn2_vnp2_sn11 * vn4_vnp2_sn17
                                 + 137 vn2_vnp2_sn11 * vn4_vnp2_sn19
                                 + 77 vn2_vnp2_sn11 * vn4_vnp2_sn8
                                 + 49 vn2_vnp2_sn11 * vn3_vnp2_sn4
                                 + 43 vn2_vnp2_sn11 * vn3_vnp2_sn20
                                 + 51 vn2_vnp2_sn11 * vn3_vnp2_sn7
                                 + 50 vn1_vnp2_sn1 * vn4_vnp2_sn17
                                 + 23 vn1_vnp2_sn1 * vn4_vnp2_sn19
                                 + 74 vn1_vnp2_sn1 * vn4_vnp2_sn8
                                 + 104 vn1_vnp2_sn1 * vn3_vnp2_sn4
                                 + 107 vn1_vnp2_sn1 * vn3_vnp2_sn20
                                 + 112 vn1_vnp2_sn1 * vn3_vnp2_sn7
                                 + 62 vn1_vnp2_sn16 * vn4_vnp2_sn17
                                 + 95 vn1_vnp2_sn16 * vn4_vnp2_sn19
                                 + 44 vn1_vnp2_sn16 * vn4_vnp2_sn8
                                 + 92 vn1_vnp2_sn16 * vn3_vnp2_sn4
                                 + 170 vn1_vnp2_sn16 * vn3_vnp2_sn20
                                 + 95 vn1_vnp2_sn16 * vn3_vnp2_sn7
                                 + 224 vn1_vnp2_sn6 * vn4_vnp2_sn17
                                 + 104 vn1_vnp2_sn6 * vn4_vnp2_sn19
                                 + 140 vn1_vnp2_sn6 * vn4_vnp2_sn8
                                 + 227 vn1_vnp2_sn6 * vn3_vnp2_sn4
                                 + 200 vn1_vnp2_sn6 * vn3_vnp2_sn20
                                 + 375 vn1_vnp2_sn6 * vn3_vnp2_sn7
                                 + 57 vn4_vnp2_sn17 * vn3_vnp2_sn4
                                 + 66 vn4_vnp2_sn17 * vn3_vnp2_sn20
                                 + 60 vn4_vnp2_sn17 * vn3_vnp2_sn7
                                 + 87 vn4_vnp2_sn19 * vn3_vnp2_sn4
                                 + 72 vn4_vnp2_sn19 * vn3_vnp2_sn20
                                 + 75 vn4_vnp2_sn19 * vn3_vnp2_sn7
                                 + 30 vn4_vnp2_sn8 * vn3_vnp2_sn4
                                 + 87 vn4_vnp2_sn8 * vn3_vnp2_sn20
                                 + 33 vn4_vnp2_sn8 * vn3_vnp2_sn7
                                 + 54 vn2_vnp3_sn14 * vn1_vnp3_sn3
                                 + 119 vn2_vnp3_sn14 * vn1_vnp3_sn16
                                 + 133 vn2_vnp3_sn14 * vn1_vnp3_sn17
                                 + 19 vn2_vnp3_sn14 * vn3_vnp3_sn1
                                 + 23 vn2_vnp3_sn14 * vn3_vnp3_sn10
                                 + 120 vn1_vnp3_sn3 * vn2_vnp3_sn20
                                 + 23 vn1_vnp3_sn3 * vn3_vnp3_sn1
                                 + 33 vn1_vnp3_sn3 * vn3_vnp3_sn10
                                 + 170 vn1_vnp3_sn16 * vn2_vnp3_sn20
                                 + 54 vn1_vnp3_sn16 * vn3_vnp3_sn1
                                 + 54 vn1_vnp3_sn16 * vn3_vnp3_sn10
                                 + 84 vn1_vnp3_sn17 * vn2_vnp3_sn20
                                 + 28 vn1_vnp3_sn17 * vn3_vnp3_sn1
                                 + 58 vn1_vnp3_sn17 * vn3_vnp3_sn10
                                 + 29 vn2_vnp3_sn20 * vn3_vnp3_sn1
                                 + 44 vn2_vnp3_sn20 * vn3_vnp3_sn10
                                 + 50 vn4_vnp4_sn20 * vn1_vnp4_sn8
                                 + 75 vn4_vnp4_sn20 * vn1_vnp4_sn16
                                 + 45 vn4_vnp4_sn20 * vn3_vnp4_sn3
                                 + 155 vn4_vnp4_sn20 * vn2_vnp4_sn7
                                 + 31 vn4_vnp4_sn20 * vn3_vnp4_sn17
                                 + 61 vn1_vnp4_sn8 * vn3_vnp4_sn3
                                 + 49 vn1_vnp4_sn8 * vn3_vnp4_sn17
                                 + 125 vn1_vnp4_sn16 * vn3_vnp4_sn3
                                 + 98 vn1_vnp4_sn16 * vn3_vnp4_sn17
                                 + 47 vn3_vnp4_sn3 * vn2_vnp4_sn7
                                 + 27 vn2_vnp4_sn7 * vn3_vnp4_sn17
                                 + 23 vn3_vnp5_sn12 * vn1_vnp5_sn8
                                 + 5 vn3_vnp5_sn12 * vn1_vnp5_sn13
                                 + 19 vn3_vnp5_sn12 * vn1_vnp5_sn16
                                 + 57 vn3_vnp5_sn12 * vn2_vnp5_sn2
                                 + 66 vn3_vnp5_sn12 * vn2_vnp5_sn7
                                 + 156 vn3_vnp5_sn12 * vn4_vnp5_sn18
                                 + 103 vn3_vnp5_sn12 * vn4_vnp5_sn14
                                 + 135 vn3_vnp5_sn12 * vn4_vnp5_sn4
                                 + 74 vn2_vnp5_sn2 * vn4_vnp5_sn18
                                 + 85 vn2_vnp5_sn2 * vn4_vnp5_sn14
                                 + 118 vn2_vnp5_sn2 * vn4_vnp5_sn4
                                 + 35 vn2_vnp5_sn7 * vn4_vnp5_sn18
                                 + 136 vn2_vnp5_sn7 * vn4_vnp5_sn14
                                 + 67 vn2_vnp5_sn7 * vn4_vnp5_sn4 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: vn1_vnp2_sn1 + 3 vn3_vnp3_sn1 <= 8
 CPU_capacity_of_substrate_node_2#1: vn3_vnp1_sn2 + 3 vn2_vnp5_sn2 <= 2
 CPU_capacity_of_substrate_node_3#2: 3 vn1_vnp3_sn3 + vn3_vnp4_sn3 <= 4
 CPU_capacity_of_substrate_node_4#3: 3 vn3_vnp2_sn4 + vn4_vnp5_sn4 <= 4
 CPU_capacity_of_substrate_node_6#4: vn1_vnp2_sn6 <= 8
 CPU_capacity_of_substrate_node_7#5: 3 vn3_vnp2_sn7 + 3 vn2_vnp5_sn7 <= 5
 CPU_capacity_of_substrate_node_8#6: 3 vn4_vnp1_sn8 + 3 vn4_vnp2_sn8
                                 + 3 vn1_vnp4_sn8 <= 5
 CPU_capacity_of_substrate_node_10#7: 3 vn2_vnp1_sn10 + 3 vn3_vnp3_sn10 <= 7
 CPU_capacity_of_substrate_node_11#8: vn2_vnp2_sn11 <= 2
 CPU_capacity_of_substrate_node_12#9: vn3_vnp5_sn12 <= 1
 CPU_capacity_of_substrate_node_14#10: vn2_vnp3_sn14 + vn4_vnp5_sn14 <= 1
 CPU_capacity_of_substrate_node_16#11: vn1_vnp2_sn16 + 3 vn1_vnp3_sn16
                                 + 3 vn1_vnp4_sn16 <= 5
 CPU_capacity_of_substrate_node_17#12: 3 vn4_vnp2_sn17 + 3 vn1_vnp3_sn17
                                 + vn3_vnp4_sn17 <= 5
 CPU_capacity_of_substrate_node_18#13: vn4_vnp5_sn18 <= 8
 CPU_capacity_of_substrate_node_19#14: 3 vn1_vnp1_sn19 + 3 vn4_vnp2_sn19 <= 5
 CPU_capacity_of_substrate_node_20#15: vn3_vnp1_sn20 + 3 vn3_vnp2_sn20
                                 + vn2_vnp3_sn20 <= 4
Bounds
 0 <= vnp1 <= 1
 0 <= vn3_vnp1_sn2 <= 1
 0 <= vn1_vnp1_sn19 <= 1
 0 <= vn3_vnp1_sn20 <= 1
 0 <= vn2_vnp1_sn10 <= 1
 0 <= vn4_vnp1_sn8 <= 1
 0 <= vnp2 <= 1
 0 <= vn2_vnp2_sn11 <= 1
 0 <= vn1_vnp2_sn1 <= 1
 0 <= vn1_vnp2_sn16 <= 1
 0 <= vn1_vnp2_sn6 <= 1
 0 <= vn4_vnp2_sn17 <= 1
 0 <= vn4_vnp2_sn19 <= 1
 0 <= vn4_vnp2_sn8 <= 1
 0 <= vn3_vnp2_sn4 <= 1
 0 <= vn3_vnp2_sn20 <= 1
 0 <= vn3_vnp2_sn7 <= 1
 0 <= vnp3 <= 1
 0 <= vn2_vnp3_sn14 <= 1
 0 <= vn1_vnp3_sn3 <= 1
 0 <= vn1_vnp3_sn16 <= 1
 0 <= vn1_vnp3_sn17 <= 1
 0 <= vn2_vnp3_sn20 <= 1
 0 <= vn3_vnp3_sn1 <= 1
 0 <= vn3_vnp3_sn10 <= 1
 0 <= vnp4 <= 1
 0 <= vn4_vnp4_sn20 <= 1
 0 <= vn1_vnp4_sn8 <= 1
 0 <= vn1_vnp4_sn16 <= 1
 0 <= vn3_vnp4_sn3 <= 1
 0 <= vn2_vnp4_sn7 <= 1
 0 <= vn3_vnp4_sn17 <= 1
 0 <= vnp5 <= 1
 0 <= vn3_vnp5_sn12 <= 1
 0 <= vn1_vnp5_sn8 <= 1
 0 <= vn1_vnp5_sn13 <= 1
 0 <= vn1_vnp5_sn16 <= 1
 0 <= vn2_vnp5_sn2 <= 1
 0 <= vn2_vnp5_sn7 <= 1
 0 <= vn4_vnp5_sn18 <= 1
 0 <= vn4_vnp5_sn14 <= 1
 0 <= vn4_vnp5_sn4 <= 1
Binaries
 vnp1  vn3_vnp1_sn2  vn1_vnp1_sn19  vn3_vnp1_sn20  vn2_vnp1_sn10  vn4_vnp1_sn8 
 vnp2  vn2_vnp2_sn11  vn1_vnp2_sn1  vn1_vnp2_sn16  vn1_vnp2_sn6  vn4_vnp2_sn17 
 vn4_vnp2_sn19  vn4_vnp2_sn8  vn3_vnp2_sn4  vn3_vnp2_sn20  vn3_vnp2_sn7  vnp3 
 vn2_vnp3_sn14  vn1_vnp3_sn3  vn1_vnp3_sn16  vn1_vnp3_sn17  vn2_vnp3_sn20 
 vn3_vnp3_sn1  vn3_vnp3_sn10  vnp4  vn4_vnp4_sn20  vn1_vnp4_sn8  vn1_vnp4_sn16 
 vn3_vnp4_sn3  vn2_vnp4_sn7  vn3_vnp4_sn17  vnp5  vn3_vnp5_sn12  vn1_vnp5_sn8 
 vn1_vnp5_sn13  vn1_vnp5_sn16  vn2_vnp5_sn2  vn2_vnp5_sn7  vn4_vnp5_sn18 
 vn4_vnp5_sn14  vn4_vnp5_sn4 
End
