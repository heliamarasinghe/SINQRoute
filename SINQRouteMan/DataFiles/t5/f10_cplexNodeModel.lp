\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 779 vnp1 + 401 vnp2 + 1061 vnp3 + 1271 vnp4 + 425 vnp5
      + [ - 94 vn2_vnp1_sn6 * vn1_vnp1_sn5 - 132 vn2_vnp1_sn6 * vn1_vnp1_sn12
      - 398 vn2_vnp1_sn6 * vn3_vnp1_sn15 - 364 vn2_vnp1_sn6 * vn3_vnp1_sn17
      - 226 vn2_vnp1_sn6 * vn3_vnp1_sn9 - 70 vn1_vnp1_sn5 * vn2_vnp1_sn18
      - 108 vn1_vnp1_sn5 * vn2_vnp1_sn7 - 80 vn1_vnp1_sn5 * vn3_vnp1_sn15
      - 98 vn1_vnp1_sn5 * vn3_vnp1_sn17 - 52 vn1_vnp1_sn5 * vn3_vnp1_sn9
      - 120 vn1_vnp1_sn5 * vn4_vnp1_sn1 - 114 vn1_vnp1_sn12 * vn2_vnp1_sn18
      - 132 vn1_vnp1_sn12 * vn2_vnp1_sn7 - 50 vn1_vnp1_sn12 * vn3_vnp1_sn15
      - 94 vn1_vnp1_sn12 * vn3_vnp1_sn17 - 76 vn1_vnp1_sn12 * vn3_vnp1_sn9
      - 240 vn1_vnp1_sn12 * vn4_vnp1_sn1 - 180 vn2_vnp1_sn18 * vn3_vnp1_sn15
      - 80 vn2_vnp1_sn18 * vn3_vnp1_sn17 - 74 vn2_vnp1_sn18 * vn3_vnp1_sn9
      - 220 vn2_vnp1_sn7 * vn3_vnp1_sn15 - 186 vn2_vnp1_sn7 * vn3_vnp1_sn17
      - 234 vn2_vnp1_sn7 * vn3_vnp1_sn9 - 364 vn3_vnp1_sn15 * vn4_vnp1_sn1
      - 228 vn3_vnp1_sn17 * vn4_vnp1_sn1 - 252 vn3_vnp1_sn9 * vn4_vnp1_sn1
      - 322 vn3_vnp2_sn9 * vn1_vnp2_sn2 - 314 vn3_vnp2_sn9 * vn1_vnp2_sn13
      - 102 vn3_vnp2_sn9 * vn2_vnp2_sn5 - 250 vn1_vnp2_sn2 * vn3_vnp2_sn19
      - 78 vn1_vnp2_sn2 * vn2_vnp2_sn5 - 434 vn1_vnp2_sn13 * vn3_vnp2_sn19
      - 96 vn1_vnp2_sn13 * vn2_vnp2_sn5 - 190 vn3_vnp2_sn19 * vn2_vnp2_sn5
      - 422 vn4_vnp3_sn4 * vn1_vnp3_sn12 - 470 vn4_vnp3_sn4 * vn1_vnp3_sn11
      - 248 vn4_vnp3_sn4 * vn1_vnp3_sn15 - 160 vn4_vnp3_sn4 * vn2_vnp3_sn9
      - 52 vn4_vnp3_sn4 * vn2_vnp3_sn18 - 242 vn4_vnp3_sn4 * vn3_vnp3_sn20
      - 254 vn4_vnp3_sn4 * vn3_vnp3_sn5 - 346 vn1_vnp3_sn12 * vn4_vnp3_sn17
      - 126 vn1_vnp3_sn12 * vn2_vnp3_sn9 - 170 vn1_vnp3_sn12 * vn2_vnp3_sn18
      - 258 vn1_vnp3_sn12 * vn3_vnp3_sn20 - 192 vn1_vnp3_sn12 * vn3_vnp3_sn5
      - 314 vn1_vnp3_sn11 * vn4_vnp3_sn17 - 138 vn1_vnp3_sn11 * vn2_vnp3_sn9
      - 150 vn1_vnp3_sn11 * vn2_vnp3_sn18 - 226 vn1_vnp3_sn11 * vn3_vnp3_sn20
      - 240 vn1_vnp3_sn11 * vn3_vnp3_sn5 - 232 vn1_vnp3_sn15 * vn4_vnp3_sn17
      - 162 vn1_vnp3_sn15 * vn2_vnp3_sn9 - 122 vn1_vnp3_sn15 * vn2_vnp3_sn18
      - 144 vn1_vnp3_sn15 * vn3_vnp3_sn20 - 418 vn1_vnp3_sn15 * vn3_vnp3_sn5
      - 208 vn4_vnp3_sn17 * vn2_vnp3_sn9 - 88 vn4_vnp3_sn17 * vn2_vnp3_sn18
      - 50 vn4_vnp3_sn17 * vn3_vnp3_sn20 - 310 vn4_vnp3_sn17 * vn3_vnp3_sn5
      - 482 vn4_vnp4_sn6 * vn1_vnp4_sn17 - 298 vn4_vnp4_sn6 * vn1_vnp4_sn9
      - 338 vn4_vnp4_sn6 * vn1_vnp4_sn4 - 310 vn4_vnp4_sn6 * vn2_vnp4_sn16
      - 232 vn4_vnp4_sn6 * vn2_vnp4_sn3 - 174 vn4_vnp4_sn6 * vn3_vnp4_sn14
      - 248 vn1_vnp4_sn17 * vn4_vnp4_sn1 - 138 vn1_vnp4_sn17 * vn2_vnp4_sn16
      - 198 vn1_vnp4_sn17 * vn2_vnp4_sn3 - 350 vn1_vnp4_sn17 * vn3_vnp4_sn14
      - 272 vn1_vnp4_sn9 * vn4_vnp4_sn1 - 144 vn1_vnp4_sn9 * vn2_vnp4_sn16
      - 168 vn1_vnp4_sn9 * vn2_vnp4_sn3 - 220 vn1_vnp4_sn9 * vn3_vnp4_sn14
      - 112 vn1_vnp4_sn4 * vn4_vnp4_sn1 - 144 vn1_vnp4_sn4 * vn2_vnp4_sn16
      - 102 vn1_vnp4_sn4 * vn2_vnp4_sn3 - 386 vn1_vnp4_sn4 * vn3_vnp4_sn14
      - 210 vn4_vnp4_sn1 * vn2_vnp4_sn16 - 120 vn4_vnp4_sn1 * vn2_vnp4_sn3
      - 220 vn4_vnp4_sn1 * vn3_vnp4_sn14 - 124 vn2_vnp4_sn16 * vn3_vnp4_sn14
      - 180 vn2_vnp4_sn3 * vn3_vnp4_sn14 - 62 vn3_vnp5_sn5 * vn1_vnp5_sn10
      - 148 vn3_vnp5_sn5 * vn1_vnp5_sn18 - 94 vn3_vnp5_sn5 * vn2_vnp5_sn13
      - 284 vn1_vnp5_sn10 * vn3_vnp5_sn1 - 80 vn1_vnp5_sn10 * vn2_vnp5_sn13
      - 186 vn1_vnp5_sn18 * vn3_vnp5_sn1 - 128 vn1_vnp5_sn18 * vn2_vnp5_sn13
      - 166 vn3_vnp5_sn1 * vn2_vnp5_sn13 ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn5
                                 + vn1_vnp1_sn12 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn6
                                 + vn2_vnp1_sn18 + vn2_vnp1_sn7 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn15
                                 + vn3_vnp1_sn17 + vn3_vnp1_sn9 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn1 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn2
                                 + vn1_vnp2_sn13 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn5 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn9
                                 + vn3_vnp2_sn19 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#7: - vnp3 + vn1_vnp3_sn12
                                 + vn1_vnp3_sn11 + vn1_vnp3_sn15 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#8: - vnp3 + vn2_vnp3_sn9
                                 + vn2_vnp3_sn18 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#9: - vnp3 + vn3_vnp3_sn20
                                 + vn3_vnp3_sn5 <= 0
 _Embedding_clash_const_of_vnode4_vnp_3#10: - vnp3 + vn4_vnp3_sn4
                                 + vn4_vnp3_sn17 <= 0
 _Embedding_clash_const_of_vnode1_vnp_4#11: - vnp4 + vn1_vnp4_sn17
                                 + vn1_vnp4_sn9 + vn1_vnp4_sn4 <= 0
 _Embedding_clash_const_of_vnode2_vnp_4#12: - vnp4 + vn2_vnp4_sn16
                                 + vn2_vnp4_sn3 <= 0
 _Embedding_clash_const_of_vnode3_vnp_4#13: - vnp4 + vn3_vnp4_sn14 <= 0
 _Embedding_clash_const_of_vnode4_vnp_4#14: - vnp4 + vn4_vnp4_sn6
                                 + vn4_vnp4_sn1 <= 0
 _Embedding_clash_const_of_vnode1_vnp_5#15: - vnp5 + vn1_vnp5_sn10
                                 + vn1_vnp5_sn18 <= 0
 _Embedding_clash_const_of_vnode2_vnp_5#16: - vnp5 + vn2_vnp5_sn13 <= 0
 _Embedding_clash_const_of_vnode3_vnp_5#17: - vnp5 + vn3_vnp5_sn5
                                 + vn3_vnp5_sn1 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn2_vnp1_sn6 * vn1_vnp1_sn5
                                 - vn2_vnp1_sn6 * vn1_vnp1_sn12
                                 - vn1_vnp1_sn5 * vn2_vnp1_sn18
                                 - vn1_vnp1_sn5 * vn2_vnp1_sn7
                                 - vn1_vnp1_sn12 * vn2_vnp1_sn18
                                 - vn1_vnp1_sn12 * vn2_vnp1_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn2_vnp1_sn6 * vn3_vnp1_sn15
                                 - vn2_vnp1_sn6 * vn3_vnp1_sn17
                                 - vn2_vnp1_sn6 * vn3_vnp1_sn9
                                 - vn2_vnp1_sn18 * vn3_vnp1_sn15
                                 - vn2_vnp1_sn18 * vn3_vnp1_sn17
                                 - vn2_vnp1_sn18 * vn3_vnp1_sn9
                                 - vn2_vnp1_sn7 * vn3_vnp1_sn15
                                 - vn2_vnp1_sn7 * vn3_vnp1_sn17
                                 - vn2_vnp1_sn7 * vn3_vnp1_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn1_vnp1_sn5 * vn3_vnp1_sn15
                                 - vn1_vnp1_sn5 * vn3_vnp1_sn17
                                 - vn1_vnp1_sn5 * vn3_vnp1_sn9
                                 - vn1_vnp1_sn12 * vn3_vnp1_sn15
                                 - vn1_vnp1_sn12 * vn3_vnp1_sn17
                                 - vn1_vnp1_sn12 * vn3_vnp1_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn1_vnp1_sn5 * vn4_vnp1_sn1
                                 - vn1_vnp1_sn12 * vn4_vnp1_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_5#4: vnp1
                                 + [ - vn3_vnp1_sn15 * vn4_vnp1_sn1
                                 - vn3_vnp1_sn17 * vn4_vnp1_sn1
                                 - vn3_vnp1_sn9 * vn4_vnp1_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn3_vnp2_sn9 * vn1_vnp2_sn2
                                 - vn3_vnp2_sn9 * vn1_vnp2_sn13
                                 - vn1_vnp2_sn2 * vn3_vnp2_sn19
                                 - vn1_vnp2_sn13 * vn3_vnp2_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn1_vnp2_sn2 * vn2_vnp2_sn5
                                 - vn1_vnp2_sn13 * vn2_vnp2_sn5 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_8#7: vnp2
                                 + [ - vn3_vnp2_sn9 * vn2_vnp2_sn5
                                 - vn3_vnp2_sn19 * vn2_vnp2_sn5 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_9#8: vnp3
                                 + [ - vn4_vnp3_sn4 * vn1_vnp3_sn12
                                 - vn4_vnp3_sn4 * vn1_vnp3_sn11
                                 - vn4_vnp3_sn4 * vn1_vnp3_sn15
                                 - vn1_vnp3_sn12 * vn4_vnp3_sn17
                                 - vn1_vnp3_sn11 * vn4_vnp3_sn17
                                 - vn1_vnp3_sn15 * vn4_vnp3_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_10#9: vnp3
                                 + [ - vn4_vnp3_sn4 * vn2_vnp3_sn9
                                 - vn4_vnp3_sn4 * vn2_vnp3_sn18
                                 - vn4_vnp3_sn17 * vn2_vnp3_sn9
                                 - vn4_vnp3_sn17 * vn2_vnp3_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_11#10: vnp3
                                 + [ - vn1_vnp3_sn12 * vn3_vnp3_sn20
                                 - vn1_vnp3_sn12 * vn3_vnp3_sn5
                                 - vn1_vnp3_sn11 * vn3_vnp3_sn20
                                 - vn1_vnp3_sn11 * vn3_vnp3_sn5
                                 - vn1_vnp3_sn15 * vn3_vnp3_sn20
                                 - vn1_vnp3_sn15 * vn3_vnp3_sn5 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_12#11: vnp3
                                 + [ - vn4_vnp3_sn4 * vn3_vnp3_sn20
                                 - vn4_vnp3_sn4 * vn3_vnp3_sn5
                                 - vn4_vnp3_sn17 * vn3_vnp3_sn20
                                 - vn4_vnp3_sn17 * vn3_vnp3_sn5 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_13#12: vnp3
                                 + [ - vn1_vnp3_sn12 * vn2_vnp3_sn9
                                 - vn1_vnp3_sn12 * vn2_vnp3_sn18
                                 - vn1_vnp3_sn11 * vn2_vnp3_sn9
                                 - vn1_vnp3_sn11 * vn2_vnp3_sn18
                                 - vn1_vnp3_sn15 * vn2_vnp3_sn9
                                 - vn1_vnp3_sn15 * vn2_vnp3_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_14#13: vnp4
                                 + [ - vn4_vnp4_sn6 * vn1_vnp4_sn17
                                 - vn4_vnp4_sn6 * vn1_vnp4_sn9
                                 - vn4_vnp4_sn6 * vn1_vnp4_sn4
                                 - vn1_vnp4_sn17 * vn4_vnp4_sn1
                                 - vn1_vnp4_sn9 * vn4_vnp4_sn1
                                 - vn1_vnp4_sn4 * vn4_vnp4_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_15#14: vnp4
                                 + [ - vn1_vnp4_sn17 * vn2_vnp4_sn16
                                 - vn1_vnp4_sn17 * vn2_vnp4_sn3
                                 - vn1_vnp4_sn9 * vn2_vnp4_sn16
                                 - vn1_vnp4_sn9 * vn2_vnp4_sn3
                                 - vn1_vnp4_sn4 * vn2_vnp4_sn16
                                 - vn1_vnp4_sn4 * vn2_vnp4_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_16#15: vnp4
                                 + [ - vn4_vnp4_sn6 * vn3_vnp4_sn14
                                 - vn4_vnp4_sn1 * vn3_vnp4_sn14 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_17#16: vnp4
                                 + [ - vn1_vnp4_sn17 * vn3_vnp4_sn14
                                 - vn1_vnp4_sn9 * vn3_vnp4_sn14
                                 - vn1_vnp4_sn4 * vn3_vnp4_sn14 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_18#17: vnp4
                                 + [ - vn2_vnp4_sn16 * vn3_vnp4_sn14
                                 - vn2_vnp4_sn3 * vn3_vnp4_sn14 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_19#18: vnp4
                                 + [ - vn4_vnp4_sn6 * vn2_vnp4_sn16
                                 - vn4_vnp4_sn6 * vn2_vnp4_sn3
                                 - vn4_vnp4_sn1 * vn2_vnp4_sn16
                                 - vn4_vnp4_sn1 * vn2_vnp4_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_20#19: vnp5
                                 + [ - vn3_vnp5_sn5 * vn1_vnp5_sn10
                                 - vn3_vnp5_sn5 * vn1_vnp5_sn18
                                 - vn1_vnp5_sn10 * vn3_vnp5_sn1
                                 - vn1_vnp5_sn18 * vn3_vnp5_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_21#20: vnp5
                                 + [ - vn3_vnp5_sn5 * vn2_vnp5_sn13
                                 - vn3_vnp5_sn1 * vn2_vnp5_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_22#21: vnp5
                                 + [ - vn1_vnp5_sn10 * vn2_vnp5_sn13
                                 - vn1_vnp5_sn18 * vn2_vnp5_sn13 ] <= 0
 q23#22:                         - 779 vnp1 - 401 vnp2 - 1061 vnp3 - 1271 vnp4
                                 - 425 vnp5 + [ 47 vn2_vnp1_sn6 * vn1_vnp1_sn5
                                 + 66 vn2_vnp1_sn6 * vn1_vnp1_sn12
                                 + 199 vn2_vnp1_sn6 * vn3_vnp1_sn15
                                 + 182 vn2_vnp1_sn6 * vn3_vnp1_sn17
                                 + 113 vn2_vnp1_sn6 * vn3_vnp1_sn9
                                 + 35 vn1_vnp1_sn5 * vn2_vnp1_sn18
                                 + 54 vn1_vnp1_sn5 * vn2_vnp1_sn7
                                 + 40 vn1_vnp1_sn5 * vn3_vnp1_sn15
                                 + 49 vn1_vnp1_sn5 * vn3_vnp1_sn17
                                 + 26 vn1_vnp1_sn5 * vn3_vnp1_sn9
                                 + 60 vn1_vnp1_sn5 * vn4_vnp1_sn1
                                 + 57 vn1_vnp1_sn12 * vn2_vnp1_sn18
                                 + 66 vn1_vnp1_sn12 * vn2_vnp1_sn7
                                 + 25 vn1_vnp1_sn12 * vn3_vnp1_sn15
                                 + 47 vn1_vnp1_sn12 * vn3_vnp1_sn17
                                 + 38 vn1_vnp1_sn12 * vn3_vnp1_sn9
                                 + 120 vn1_vnp1_sn12 * vn4_vnp1_sn1
                                 + 90 vn2_vnp1_sn18 * vn3_vnp1_sn15
                                 + 40 vn2_vnp1_sn18 * vn3_vnp1_sn17
                                 + 37 vn2_vnp1_sn18 * vn3_vnp1_sn9
                                 + 110 vn2_vnp1_sn7 * vn3_vnp1_sn15
                                 + 93 vn2_vnp1_sn7 * vn3_vnp1_sn17
                                 + 117 vn2_vnp1_sn7 * vn3_vnp1_sn9
                                 + 182 vn3_vnp1_sn15 * vn4_vnp1_sn1
                                 + 114 vn3_vnp1_sn17 * vn4_vnp1_sn1
                                 + 126 vn3_vnp1_sn9 * vn4_vnp1_sn1
                                 + 161 vn3_vnp2_sn9 * vn1_vnp2_sn2
                                 + 157 vn3_vnp2_sn9 * vn1_vnp2_sn13
                                 + 51 vn3_vnp2_sn9 * vn2_vnp2_sn5
                                 + 125 vn1_vnp2_sn2 * vn3_vnp2_sn19
                                 + 39 vn1_vnp2_sn2 * vn2_vnp2_sn5
                                 + 217 vn1_vnp2_sn13 * vn3_vnp2_sn19
                                 + 48 vn1_vnp2_sn13 * vn2_vnp2_sn5
                                 + 95 vn3_vnp2_sn19 * vn2_vnp2_sn5
                                 + 211 vn4_vnp3_sn4 * vn1_vnp3_sn12
                                 + 235 vn4_vnp3_sn4 * vn1_vnp3_sn11
                                 + 124 vn4_vnp3_sn4 * vn1_vnp3_sn15
                                 + 80 vn4_vnp3_sn4 * vn2_vnp3_sn9
                                 + 26 vn4_vnp3_sn4 * vn2_vnp3_sn18
                                 + 121 vn4_vnp3_sn4 * vn3_vnp3_sn20
                                 + 127 vn4_vnp3_sn4 * vn3_vnp3_sn5
                                 + 173 vn1_vnp3_sn12 * vn4_vnp3_sn17
                                 + 63 vn1_vnp3_sn12 * vn2_vnp3_sn9
                                 + 85 vn1_vnp3_sn12 * vn2_vnp3_sn18
                                 + 129 vn1_vnp3_sn12 * vn3_vnp3_sn20
                                 + 96 vn1_vnp3_sn12 * vn3_vnp3_sn5
                                 + 157 vn1_vnp3_sn11 * vn4_vnp3_sn17
                                 + 69 vn1_vnp3_sn11 * vn2_vnp3_sn9
                                 + 75 vn1_vnp3_sn11 * vn2_vnp3_sn18
                                 + 113 vn1_vnp3_sn11 * vn3_vnp3_sn20
                                 + 120 vn1_vnp3_sn11 * vn3_vnp3_sn5
                                 + 116 vn1_vnp3_sn15 * vn4_vnp3_sn17
                                 + 81 vn1_vnp3_sn15 * vn2_vnp3_sn9
                                 + 61 vn1_vnp3_sn15 * vn2_vnp3_sn18
                                 + 72 vn1_vnp3_sn15 * vn3_vnp3_sn20
                                 + 209 vn1_vnp3_sn15 * vn3_vnp3_sn5
                                 + 104 vn4_vnp3_sn17 * vn2_vnp3_sn9
                                 + 44 vn4_vnp3_sn17 * vn2_vnp3_sn18
                                 + 25 vn4_vnp3_sn17 * vn3_vnp3_sn20
                                 + 155 vn4_vnp3_sn17 * vn3_vnp3_sn5
                                 + 241 vn4_vnp4_sn6 * vn1_vnp4_sn17
                                 + 149 vn4_vnp4_sn6 * vn1_vnp4_sn9
                                 + 169 vn4_vnp4_sn6 * vn1_vnp4_sn4
                                 + 155 vn4_vnp4_sn6 * vn2_vnp4_sn16
                                 + 116 vn4_vnp4_sn6 * vn2_vnp4_sn3
                                 + 87 vn4_vnp4_sn6 * vn3_vnp4_sn14
                                 + 124 vn1_vnp4_sn17 * vn4_vnp4_sn1
                                 + 69 vn1_vnp4_sn17 * vn2_vnp4_sn16
                                 + 99 vn1_vnp4_sn17 * vn2_vnp4_sn3
                                 + 175 vn1_vnp4_sn17 * vn3_vnp4_sn14
                                 + 136 vn1_vnp4_sn9 * vn4_vnp4_sn1
                                 + 72 vn1_vnp4_sn9 * vn2_vnp4_sn16
                                 + 84 vn1_vnp4_sn9 * vn2_vnp4_sn3
                                 + 110 vn1_vnp4_sn9 * vn3_vnp4_sn14
                                 + 56 vn1_vnp4_sn4 * vn4_vnp4_sn1
                                 + 72 vn1_vnp4_sn4 * vn2_vnp4_sn16
                                 + 51 vn1_vnp4_sn4 * vn2_vnp4_sn3
                                 + 193 vn1_vnp4_sn4 * vn3_vnp4_sn14
                                 + 105 vn4_vnp4_sn1 * vn2_vnp4_sn16
                                 + 60 vn4_vnp4_sn1 * vn2_vnp4_sn3
                                 + 110 vn4_vnp4_sn1 * vn3_vnp4_sn14
                                 + 62 vn2_vnp4_sn16 * vn3_vnp4_sn14
                                 + 90 vn2_vnp4_sn3 * vn3_vnp4_sn14
                                 + 31 vn3_vnp5_sn5 * vn1_vnp5_sn10
                                 + 74 vn3_vnp5_sn5 * vn1_vnp5_sn18
                                 + 47 vn3_vnp5_sn5 * vn2_vnp5_sn13
                                 + 142 vn1_vnp5_sn10 * vn3_vnp5_sn1
                                 + 40 vn1_vnp5_sn10 * vn2_vnp5_sn13
                                 + 93 vn1_vnp5_sn18 * vn3_vnp5_sn1
                                 + 64 vn1_vnp5_sn18 * vn2_vnp5_sn13
                                 + 83 vn3_vnp5_sn1 * vn2_vnp5_sn13 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: 5 vn4_vnp1_sn1 + 5 vn4_vnp4_sn1
                                 + 3 vn3_vnp5_sn1 <= 8
 CPU_capacity_of_substrate_node_2#1: 4 vn1_vnp2_sn2 <= 8
 CPU_capacity_of_substrate_node_3#2: 4 vn2_vnp4_sn3 <= 4
 CPU_capacity_of_substrate_node_4#3: 4 vn4_vnp3_sn4 + 4 vn1_vnp4_sn4 <= 7
 CPU_capacity_of_substrate_node_5#4: 2 vn1_vnp1_sn5 + 2 vn2_vnp2_sn5
                                 + vn3_vnp3_sn5 + 3 vn3_vnp5_sn5 <= 3
 CPU_capacity_of_substrate_node_6#5: 5 vn2_vnp1_sn6 + 5 vn4_vnp4_sn6 <= 3
 CPU_capacity_of_substrate_node_7#6: 5 vn2_vnp1_sn7 <= 5
 CPU_capacity_of_substrate_node_9#7: 2 vn3_vnp1_sn9 + 5 vn3_vnp2_sn9
                                 + 3 vn2_vnp3_sn9 + 4 vn1_vnp4_sn9 <= 3
 CPU_capacity_of_substrate_node_10#8: 3 vn1_vnp5_sn10 <= 0
 CPU_capacity_of_substrate_node_11#9: 2 vn1_vnp3_sn11 <= 8
 CPU_capacity_of_substrate_node_12#10: 2 vn1_vnp1_sn12 + 2 vn1_vnp3_sn12 <= 3
 CPU_capacity_of_substrate_node_13#11: 4 vn1_vnp2_sn13 + 3 vn2_vnp5_sn13 <= 5
 CPU_capacity_of_substrate_node_14#12: 5 vn3_vnp4_sn14 <= 8
 CPU_capacity_of_substrate_node_15#13: 2 vn3_vnp1_sn15 + 2 vn1_vnp3_sn15 <= 5
 CPU_capacity_of_substrate_node_16#14: 4 vn2_vnp4_sn16 <= 7
 CPU_capacity_of_substrate_node_17#15: 2 vn3_vnp1_sn17 + 4 vn4_vnp3_sn17
                                 + 4 vn1_vnp4_sn17 <= 3
 CPU_capacity_of_substrate_node_18#16: 5 vn2_vnp1_sn18 + 3 vn2_vnp3_sn18
                                 + 3 vn1_vnp5_sn18 <= 4
 CPU_capacity_of_substrate_node_19#17: 5 vn3_vnp2_sn19 <= 4
 CPU_capacity_of_substrate_node_20#18: vn3_vnp3_sn20 <= 8
Bounds
 0 <= vnp1 <= 1
 0 <= vn2_vnp1_sn6 <= 1
 0 <= vn1_vnp1_sn5 <= 1
 0 <= vn1_vnp1_sn12 <= 1
 0 <= vn2_vnp1_sn18 <= 1
 0 <= vn2_vnp1_sn7 <= 1
 0 <= vn3_vnp1_sn15 <= 1
 0 <= vn3_vnp1_sn17 <= 1
 0 <= vn3_vnp1_sn9 <= 1
 0 <= vn4_vnp1_sn1 <= 1
 0 <= vnp2 <= 1
 0 <= vn3_vnp2_sn9 <= 1
 0 <= vn1_vnp2_sn2 <= 1
 0 <= vn1_vnp2_sn13 <= 1
 0 <= vn3_vnp2_sn19 <= 1
 0 <= vn2_vnp2_sn5 <= 1
 0 <= vnp3 <= 1
 0 <= vn4_vnp3_sn4 <= 1
 0 <= vn1_vnp3_sn12 <= 1
 0 <= vn1_vnp3_sn11 <= 1
 0 <= vn1_vnp3_sn15 <= 1
 0 <= vn4_vnp3_sn17 <= 1
 0 <= vn2_vnp3_sn9 <= 1
 0 <= vn2_vnp3_sn18 <= 1
 0 <= vn3_vnp3_sn20 <= 1
 0 <= vn3_vnp3_sn5 <= 1
 0 <= vnp4 <= 1
 0 <= vn4_vnp4_sn6 <= 1
 0 <= vn1_vnp4_sn17 <= 1
 0 <= vn1_vnp4_sn9 <= 1
 0 <= vn1_vnp4_sn4 <= 1
 0 <= vn4_vnp4_sn1 <= 1
 0 <= vn2_vnp4_sn16 <= 1
 0 <= vn2_vnp4_sn3 <= 1
 0 <= vn3_vnp4_sn14 <= 1
 0 <= vnp5 <= 1
 0 <= vn3_vnp5_sn5 <= 1
 0 <= vn1_vnp5_sn10 <= 1
 0 <= vn1_vnp5_sn18 <= 1
 0 <= vn3_vnp5_sn1 <= 1
 0 <= vn2_vnp5_sn13 <= 1
Binaries
 vnp1  vn2_vnp1_sn6  vn1_vnp1_sn5  vn1_vnp1_sn12  vn2_vnp1_sn18  vn2_vnp1_sn7 
 vn3_vnp1_sn15  vn3_vnp1_sn17  vn3_vnp1_sn9  vn4_vnp1_sn1  vnp2  vn3_vnp2_sn9 
 vn1_vnp2_sn2  vn1_vnp2_sn13  vn3_vnp2_sn19  vn2_vnp2_sn5  vnp3  vn4_vnp3_sn4 
 vn1_vnp3_sn12  vn1_vnp3_sn11  vn1_vnp3_sn15  vn4_vnp3_sn17  vn2_vnp3_sn9 
 vn2_vnp3_sn18  vn3_vnp3_sn20  vn3_vnp3_sn5  vnp4  vn4_vnp4_sn6  vn1_vnp4_sn17 
 vn1_vnp4_sn9  vn1_vnp4_sn4  vn4_vnp4_sn1  vn2_vnp4_sn16  vn2_vnp4_sn3 
 vn3_vnp4_sn14  vnp5  vn3_vnp5_sn5  vn1_vnp5_sn10  vn1_vnp5_sn18  vn3_vnp5_sn1 
 vn2_vnp5_sn13 
End
