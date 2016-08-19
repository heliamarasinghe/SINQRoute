\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 994 vnp1 + 593 vnp2 + 654 vnp3 + 546 vnp4 + 813 vnp5 + 811 vnp6
      + [ - 282 vn3_vnp1_sn9 * vn1_vnp1_sn20 - 330 vn3_vnp1_sn9 * vn1_vnp1_sn18
      - 58 vn3_vnp1_sn9 * vn1_vnp1_sn1 - 224 vn3_vnp1_sn9 * vn2_vnp1_sn7
      - 142 vn3_vnp1_sn9 * vn2_vnp1_sn2 - 220 vn3_vnp1_sn9 * vn2_vnp1_sn8
      - 352 vn3_vnp1_sn9 * vn4_vnp1_sn19 - 122 vn3_vnp1_sn9 * vn4_vnp1_sn16
      - 96 vn3_vnp1_sn9 * vn4_vnp1_sn12 - 54 vn2_vnp1_sn7 * vn4_vnp1_sn19
      - 94 vn2_vnp1_sn7 * vn4_vnp1_sn16 - 76 vn2_vnp1_sn7 * vn4_vnp1_sn12
      - 112 vn2_vnp1_sn2 * vn4_vnp1_sn19 - 128 vn2_vnp1_sn2 * vn4_vnp1_sn16
      - 162 vn2_vnp1_sn2 * vn4_vnp1_sn12 - 84 vn2_vnp1_sn8 * vn4_vnp1_sn19
      - 76 vn2_vnp1_sn8 * vn4_vnp1_sn16 - 82 vn2_vnp1_sn8 * vn4_vnp1_sn12
      - 256 vn4_vnp2_sn8 * vn1_vnp2_sn11 - 104 vn4_vnp2_sn8 * vn3_vnp2_sn10
      - 110 vn4_vnp2_sn8 * vn2_vnp2_sn4 - 202 vn4_vnp2_sn8 * vn2_vnp2_sn15
      - 102 vn4_vnp2_sn8 * vn3_vnp2_sn14 - 88 vn4_vnp2_sn8 * vn3_vnp2_sn1
      - 116 vn1_vnp2_sn11 * vn3_vnp2_sn10 - 88 vn1_vnp2_sn11 * vn3_vnp2_sn14
      - 116 vn1_vnp2_sn11 * vn3_vnp2_sn1 - 222 vn3_vnp2_sn10 * vn2_vnp2_sn4
      - 98 vn3_vnp2_sn10 * vn2_vnp2_sn15 - 232 vn2_vnp2_sn4 * vn3_vnp2_sn14
      - 186 vn2_vnp2_sn4 * vn3_vnp2_sn1 - 60 vn2_vnp2_sn15 * vn3_vnp2_sn14
      - 272 vn2_vnp2_sn15 * vn3_vnp2_sn1 - 182 vn4_vnp3_sn9 * vn1_vnp3_sn18
      - 74 vn4_vnp3_sn9 * vn2_vnp3_sn10 - 82 vn4_vnp3_sn9 * vn2_vnp3_sn5
      - 168 vn4_vnp3_sn9 * vn3_vnp3_sn11 - 344 vn4_vnp3_sn9 * vn3_vnp3_sn19
      - 194 vn1_vnp3_sn18 * vn4_vnp3_sn2 - 202 vn4_vnp3_sn2 * vn2_vnp3_sn10
      - 250 vn4_vnp3_sn2 * vn2_vnp3_sn5 - 408 vn4_vnp3_sn2 * vn3_vnp3_sn11
      - 224 vn4_vnp3_sn2 * vn3_vnp3_sn19 - 154 vn2_vnp3_sn10 * vn3_vnp3_sn11
      - 316 vn2_vnp3_sn10 * vn3_vnp3_sn19 - 162 vn2_vnp3_sn5 * vn3_vnp3_sn11
      - 216 vn2_vnp3_sn5 * vn3_vnp3_sn19 - 106 vn3_vnp4_sn3 * vn1_vnp4_sn14
      - 234 vn3_vnp4_sn3 * vn1_vnp4_sn6 - 160 vn3_vnp4_sn3 * vn1_vnp4_sn16
      - 166 vn3_vnp4_sn3 * vn2_vnp4_sn10 - 222 vn3_vnp4_sn3 * vn2_vnp4_sn18
      - 316 vn1_vnp4_sn14 * vn3_vnp4_sn4 - 60 vn1_vnp4_sn14 * vn4_vnp4_sn9
      - 194 vn1_vnp4_sn14 * vn4_vnp4_sn7 - 98 vn1_vnp4_sn14 * vn4_vnp4_sn1
      - 274 vn1_vnp4_sn6 * vn3_vnp4_sn4 - 102 vn1_vnp4_sn6 * vn4_vnp4_sn9
      - 290 vn1_vnp4_sn6 * vn4_vnp4_sn7 - 170 vn1_vnp4_sn6 * vn4_vnp4_sn1
      - 260 vn1_vnp4_sn16 * vn3_vnp4_sn4 - 94 vn1_vnp4_sn16 * vn4_vnp4_sn9
      - 144 vn1_vnp4_sn16 * vn4_vnp4_sn7 - 270 vn1_vnp4_sn16 * vn4_vnp4_sn1
      - 232 vn3_vnp4_sn4 * vn2_vnp4_sn10 - 192 vn3_vnp4_sn4 * vn2_vnp4_sn18
      - 70 vn4_vnp4_sn9 * vn2_vnp4_sn10 - 196 vn4_vnp4_sn9 * vn2_vnp4_sn18
      - 182 vn2_vnp4_sn10 * vn4_vnp4_sn7 - 98 vn2_vnp4_sn10 * vn4_vnp4_sn1
      - 116 vn2_vnp4_sn18 * vn4_vnp4_sn7 - 148 vn2_vnp4_sn18 * vn4_vnp4_sn1
      - 352 vn4_vnp5_sn13 * vn1_vnp5_sn4 - 208 vn4_vnp5_sn13 * vn1_vnp5_sn11
      - 376 vn4_vnp5_sn13 * vn1_vnp5_sn19 - 440 vn4_vnp5_sn13 * vn2_vnp5_sn2
      - 288 vn4_vnp5_sn13 * vn2_vnp5_sn14 - 430 vn4_vnp5_sn13 * vn2_vnp5_sn16
      - 214 vn1_vnp5_sn4 * vn4_vnp5_sn12 - 274 vn1_vnp5_sn4 * vn4_vnp5_sn20
      - 202 vn1_vnp5_sn4 * vn2_vnp5_sn2 - 188 vn1_vnp5_sn4 * vn2_vnp5_sn14
      - 154 vn1_vnp5_sn4 * vn2_vnp5_sn16 - 70 vn1_vnp5_sn11 * vn4_vnp5_sn12
      - 70 vn1_vnp5_sn11 * vn4_vnp5_sn20 - 280 vn1_vnp5_sn11 * vn2_vnp5_sn2
      - 92 vn1_vnp5_sn11 * vn2_vnp5_sn14 - 130 vn1_vnp5_sn11 * vn2_vnp5_sn16
      - 238 vn1_vnp5_sn19 * vn4_vnp5_sn12 - 88 vn1_vnp5_sn19 * vn4_vnp5_sn20
      - 148 vn1_vnp5_sn19 * vn2_vnp5_sn2 - 86 vn1_vnp5_sn19 * vn2_vnp5_sn14
      - 202 vn1_vnp5_sn19 * vn2_vnp5_sn16 - 346 vn4_vnp5_sn12 * vn2_vnp5_sn2
      - 74 vn4_vnp5_sn12 * vn2_vnp5_sn14 - 216 vn4_vnp5_sn12 * vn2_vnp5_sn16
      - 260 vn4_vnp5_sn20 * vn2_vnp5_sn2 - 98 vn4_vnp5_sn20 * vn2_vnp5_sn14
      - 260 vn4_vnp5_sn20 * vn2_vnp5_sn16 - 200 vn2_vnp5_sn2 * vn3_vnp5_sn6
      - 162 vn2_vnp5_sn14 * vn3_vnp5_sn6 - 170 vn2_vnp5_sn16 * vn3_vnp5_sn6
      - 86 vn4_vnp6_sn12 * vn1_vnp6_sn4 - 68 vn4_vnp6_sn12 * vn1_vnp6_sn16
      - 84 vn4_vnp6_sn12 * vn1_vnp6_sn7 - 154 vn4_vnp6_sn12 * vn2_vnp6_sn18
      - 252 vn4_vnp6_sn12 * vn2_vnp6_sn19 - 244 vn4_vnp6_sn12 * vn3_vnp6_sn3
      - 350 vn4_vnp6_sn12 * vn3_vnp6_sn2 - 126 vn4_vnp6_sn12 * vn3_vnp6_sn5
      - 128 vn1_vnp6_sn4 * vn4_vnp6_sn20 - 144 vn1_vnp6_sn4 * vn2_vnp6_sn18
      - 236 vn1_vnp6_sn4 * vn2_vnp6_sn19 - 16 vn1_vnp6_sn4 * vn3_vnp6_sn3
      - 74 vn1_vnp6_sn4 * vn3_vnp6_sn2 - 42 vn1_vnp6_sn4 * vn3_vnp6_sn5
      - 102 vn1_vnp6_sn16 * vn4_vnp6_sn20 - 114 vn1_vnp6_sn16 * vn2_vnp6_sn18
      - 212 vn1_vnp6_sn16 * vn2_vnp6_sn19 - 38 vn1_vnp6_sn16 * vn3_vnp6_sn3
      - 64 vn1_vnp6_sn16 * vn3_vnp6_sn2 - 50 vn1_vnp6_sn16 * vn3_vnp6_sn5
      - 76 vn1_vnp6_sn7 * vn4_vnp6_sn20 - 126 vn1_vnp6_sn7 * vn2_vnp6_sn18
      - 92 vn1_vnp6_sn7 * vn2_vnp6_sn19 - 56 vn1_vnp6_sn7 * vn3_vnp6_sn3
      - 68 vn1_vnp6_sn7 * vn3_vnp6_sn2 - 40 vn1_vnp6_sn7 * vn3_vnp6_sn5
      - 172 vn4_vnp6_sn20 * vn2_vnp6_sn18 - 108 vn4_vnp6_sn20 * vn2_vnp6_sn19
      - 234 vn4_vnp6_sn20 * vn3_vnp6_sn3 - 270 vn4_vnp6_sn20 * vn3_vnp6_sn2
      - 446 vn4_vnp6_sn20 * vn3_vnp6_sn5 - 112 vn2_vnp6_sn18 * vn3_vnp6_sn3
      - 102 vn2_vnp6_sn18 * vn3_vnp6_sn2 - 124 vn2_vnp6_sn18 * vn3_vnp6_sn5
      - 74 vn2_vnp6_sn19 * vn3_vnp6_sn3 - 86 vn2_vnp6_sn19 * vn3_vnp6_sn2
      - 100 vn2_vnp6_sn19 * vn3_vnp6_sn5 ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn20
                                 + vn1_vnp1_sn18 + vn1_vnp1_sn1 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn7 + vn2_vnp1_sn2
                                 + vn2_vnp1_sn8 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn9 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn19
                                 + vn4_vnp1_sn16 + vn4_vnp1_sn12 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn11 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn4
                                 + vn2_vnp2_sn15 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn10
                                 + vn3_vnp2_sn14 + vn3_vnp2_sn1 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#7: - vnp2 + vn4_vnp2_sn8 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#8: - vnp3 + vn1_vnp3_sn18 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#9: - vnp3 + vn2_vnp3_sn10
                                 + vn2_vnp3_sn5 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#10: - vnp3 + vn3_vnp3_sn11
                                 + vn3_vnp3_sn19 <= 0
 _Embedding_clash_const_of_vnode4_vnp_3#11: - vnp3 + vn4_vnp3_sn9
                                 + vn4_vnp3_sn2 <= 0
 _Embedding_clash_const_of_vnode1_vnp_4#12: - vnp4 + vn1_vnp4_sn14
                                 + vn1_vnp4_sn6 + vn1_vnp4_sn16 <= 0
 _Embedding_clash_const_of_vnode2_vnp_4#13: - vnp4 + vn2_vnp4_sn10
                                 + vn2_vnp4_sn18 <= 0
 _Embedding_clash_const_of_vnode3_vnp_4#14: - vnp4 + vn3_vnp4_sn3
                                 + vn3_vnp4_sn4 <= 0
 _Embedding_clash_const_of_vnode4_vnp_4#15: - vnp4 + vn4_vnp4_sn9
                                 + vn4_vnp4_sn7 + vn4_vnp4_sn1 <= 0
 _Embedding_clash_const_of_vnode1_vnp_5#16: - vnp5 + vn1_vnp5_sn4
                                 + vn1_vnp5_sn11 + vn1_vnp5_sn19 <= 0
 _Embedding_clash_const_of_vnode2_vnp_5#17: - vnp5 + vn2_vnp5_sn2
                                 + vn2_vnp5_sn14 + vn2_vnp5_sn16 <= 0
 _Embedding_clash_const_of_vnode3_vnp_5#18: - vnp5 + vn3_vnp5_sn6 <= 0
 _Embedding_clash_const_of_vnode4_vnp_5#19: - vnp5 + vn4_vnp5_sn13
                                 + vn4_vnp5_sn12 + vn4_vnp5_sn20 <= 0
 _Embedding_clash_const_of_vnode1_vnp_6#20: - vnp6 + vn1_vnp6_sn4
                                 + vn1_vnp6_sn16 + vn1_vnp6_sn7 <= 0
 _Embedding_clash_const_of_vnode2_vnp_6#21: - vnp6 + vn2_vnp6_sn18
                                 + vn2_vnp6_sn19 <= 0
 _Embedding_clash_const_of_vnode3_vnp_6#22: - vnp6 + vn3_vnp6_sn3
                                 + vn3_vnp6_sn2 + vn3_vnp6_sn5 <= 0
 _Embedding_clash_const_of_vnode4_vnp_6#23: - vnp6 + vn4_vnp6_sn12
                                 + vn4_vnp6_sn20 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn3_vnp1_sn9 * vn1_vnp1_sn20
                                 - vn3_vnp1_sn9 * vn1_vnp1_sn18
                                 - vn3_vnp1_sn9 * vn1_vnp1_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn3_vnp1_sn9 * vn2_vnp1_sn7
                                 - vn3_vnp1_sn9 * vn2_vnp1_sn2
                                 - vn3_vnp1_sn9 * vn2_vnp1_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn3_vnp1_sn9 * vn4_vnp1_sn19
                                 - vn3_vnp1_sn9 * vn4_vnp1_sn16
                                 - vn3_vnp1_sn9 * vn4_vnp1_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn2_vnp1_sn7 * vn4_vnp1_sn19
                                 - vn2_vnp1_sn7 * vn4_vnp1_sn16
                                 - vn2_vnp1_sn7 * vn4_vnp1_sn12
                                 - vn2_vnp1_sn2 * vn4_vnp1_sn19
                                 - vn2_vnp1_sn2 * vn4_vnp1_sn16
                                 - vn2_vnp1_sn2 * vn4_vnp1_sn12
                                 - vn2_vnp1_sn8 * vn4_vnp1_sn19
                                 - vn2_vnp1_sn8 * vn4_vnp1_sn16
                                 - vn2_vnp1_sn8 * vn4_vnp1_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_5#4: vnp2
                                 + [ - vn4_vnp2_sn8 * vn1_vnp2_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn3_vnp2_sn10 * vn2_vnp2_sn4
                                 - vn3_vnp2_sn10 * vn2_vnp2_sn15
                                 - vn2_vnp2_sn4 * vn3_vnp2_sn14
                                 - vn2_vnp2_sn4 * vn3_vnp2_sn1
                                 - vn2_vnp2_sn15 * vn3_vnp2_sn14
                                 - vn2_vnp2_sn15 * vn3_vnp2_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn1_vnp2_sn11 * vn3_vnp2_sn10
                                 - vn1_vnp2_sn11 * vn3_vnp2_sn14
                                 - vn1_vnp2_sn11 * vn3_vnp2_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_8#7: vnp2
                                 + [ - vn4_vnp2_sn8 * vn3_vnp2_sn10
                                 - vn4_vnp2_sn8 * vn3_vnp2_sn14
                                 - vn4_vnp2_sn8 * vn3_vnp2_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_9#8: vnp2
                                 + [ - vn4_vnp2_sn8 * vn2_vnp2_sn4
                                 - vn4_vnp2_sn8 * vn2_vnp2_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_10#9: vnp3
                                 + [ - vn4_vnp3_sn9 * vn1_vnp3_sn18
                                 - vn1_vnp3_sn18 * vn4_vnp3_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_11#10: vnp3
                                 + [ - vn4_vnp3_sn9 * vn2_vnp3_sn10
                                 - vn4_vnp3_sn9 * vn2_vnp3_sn5
                                 - vn4_vnp3_sn2 * vn2_vnp3_sn10
                                 - vn4_vnp3_sn2 * vn2_vnp3_sn5 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_12#11: vnp3
                                 + [ - vn4_vnp3_sn9 * vn3_vnp3_sn11
                                 - vn4_vnp3_sn9 * vn3_vnp3_sn19
                                 - vn4_vnp3_sn2 * vn3_vnp3_sn11
                                 - vn4_vnp3_sn2 * vn3_vnp3_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_13#12: vnp3
                                 + [ - vn2_vnp3_sn10 * vn3_vnp3_sn11
                                 - vn2_vnp3_sn10 * vn3_vnp3_sn19
                                 - vn2_vnp3_sn5 * vn3_vnp3_sn11
                                 - vn2_vnp3_sn5 * vn3_vnp3_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_14#13: vnp4
                                 + [ - vn3_vnp4_sn3 * vn1_vnp4_sn14
                                 - vn3_vnp4_sn3 * vn1_vnp4_sn6
                                 - vn3_vnp4_sn3 * vn1_vnp4_sn16
                                 - vn1_vnp4_sn14 * vn3_vnp4_sn4
                                 - vn1_vnp4_sn6 * vn3_vnp4_sn4
                                 - vn1_vnp4_sn16 * vn3_vnp4_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_15#14: vnp4
                                 + [ - vn4_vnp4_sn9 * vn2_vnp4_sn10
                                 - vn4_vnp4_sn9 * vn2_vnp4_sn18
                                 - vn2_vnp4_sn10 * vn4_vnp4_sn7
                                 - vn2_vnp4_sn10 * vn4_vnp4_sn1
                                 - vn2_vnp4_sn18 * vn4_vnp4_sn7
                                 - vn2_vnp4_sn18 * vn4_vnp4_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_16#15: vnp4
                                 + [ - vn3_vnp4_sn3 * vn2_vnp4_sn10
                                 - vn3_vnp4_sn3 * vn2_vnp4_sn18
                                 - vn3_vnp4_sn4 * vn2_vnp4_sn10
                                 - vn3_vnp4_sn4 * vn2_vnp4_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_17#16: vnp4
                                 + [ - vn1_vnp4_sn14 * vn4_vnp4_sn9
                                 - vn1_vnp4_sn14 * vn4_vnp4_sn7
                                 - vn1_vnp4_sn14 * vn4_vnp4_sn1
                                 - vn1_vnp4_sn6 * vn4_vnp4_sn9
                                 - vn1_vnp4_sn6 * vn4_vnp4_sn7
                                 - vn1_vnp4_sn6 * vn4_vnp4_sn1
                                 - vn1_vnp4_sn16 * vn4_vnp4_sn9
                                 - vn1_vnp4_sn16 * vn4_vnp4_sn7
                                 - vn1_vnp4_sn16 * vn4_vnp4_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_18#17: vnp5
                                 + [ - vn4_vnp5_sn13 * vn1_vnp5_sn4
                                 - vn4_vnp5_sn13 * vn1_vnp5_sn11
                                 - vn4_vnp5_sn13 * vn1_vnp5_sn19
                                 - vn1_vnp5_sn4 * vn4_vnp5_sn12
                                 - vn1_vnp5_sn4 * vn4_vnp5_sn20
                                 - vn1_vnp5_sn11 * vn4_vnp5_sn12
                                 - vn1_vnp5_sn11 * vn4_vnp5_sn20
                                 - vn1_vnp5_sn19 * vn4_vnp5_sn12
                                 - vn1_vnp5_sn19 * vn4_vnp5_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_19#18: vnp5
                                 + [ - vn1_vnp5_sn4 * vn2_vnp5_sn2
                                 - vn1_vnp5_sn4 * vn2_vnp5_sn14
                                 - vn1_vnp5_sn4 * vn2_vnp5_sn16
                                 - vn1_vnp5_sn11 * vn2_vnp5_sn2
                                 - vn1_vnp5_sn11 * vn2_vnp5_sn14
                                 - vn1_vnp5_sn11 * vn2_vnp5_sn16
                                 - vn1_vnp5_sn19 * vn2_vnp5_sn2
                                 - vn1_vnp5_sn19 * vn2_vnp5_sn14
                                 - vn1_vnp5_sn19 * vn2_vnp5_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_20#19: vnp5
                                 + [ - vn2_vnp5_sn2 * vn3_vnp5_sn6
                                 - vn2_vnp5_sn14 * vn3_vnp5_sn6
                                 - vn2_vnp5_sn16 * vn3_vnp5_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_21#20: vnp5
                                 + [ - vn4_vnp5_sn13 * vn2_vnp5_sn2
                                 - vn4_vnp5_sn13 * vn2_vnp5_sn14
                                 - vn4_vnp5_sn13 * vn2_vnp5_sn16
                                 - vn4_vnp5_sn12 * vn2_vnp5_sn2
                                 - vn4_vnp5_sn12 * vn2_vnp5_sn14
                                 - vn4_vnp5_sn12 * vn2_vnp5_sn16
                                 - vn4_vnp5_sn20 * vn2_vnp5_sn2
                                 - vn4_vnp5_sn20 * vn2_vnp5_sn14
                                 - vn4_vnp5_sn20 * vn2_vnp5_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_22#21: vnp6
                                 + [ - vn4_vnp6_sn12 * vn1_vnp6_sn4
                                 - vn4_vnp6_sn12 * vn1_vnp6_sn16
                                 - vn4_vnp6_sn12 * vn1_vnp6_sn7
                                 - vn1_vnp6_sn4 * vn4_vnp6_sn20
                                 - vn1_vnp6_sn16 * vn4_vnp6_sn20
                                 - vn1_vnp6_sn7 * vn4_vnp6_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_23#22: vnp6
                                 + [ - vn4_vnp6_sn12 * vn2_vnp6_sn18
                                 - vn4_vnp6_sn12 * vn2_vnp6_sn19
                                 - vn4_vnp6_sn20 * vn2_vnp6_sn18
                                 - vn4_vnp6_sn20 * vn2_vnp6_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_24#23: vnp6
                                 + [ - vn1_vnp6_sn4 * vn3_vnp6_sn3
                                 - vn1_vnp6_sn4 * vn3_vnp6_sn2
                                 - vn1_vnp6_sn4 * vn3_vnp6_sn5
                                 - vn1_vnp6_sn16 * vn3_vnp6_sn3
                                 - vn1_vnp6_sn16 * vn3_vnp6_sn2
                                 - vn1_vnp6_sn16 * vn3_vnp6_sn5
                                 - vn1_vnp6_sn7 * vn3_vnp6_sn3
                                 - vn1_vnp6_sn7 * vn3_vnp6_sn2
                                 - vn1_vnp6_sn7 * vn3_vnp6_sn5 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_25#24: vnp6
                                 + [ - vn2_vnp6_sn18 * vn3_vnp6_sn3
                                 - vn2_vnp6_sn18 * vn3_vnp6_sn2
                                 - vn2_vnp6_sn18 * vn3_vnp6_sn5
                                 - vn2_vnp6_sn19 * vn3_vnp6_sn3
                                 - vn2_vnp6_sn19 * vn3_vnp6_sn2
                                 - vn2_vnp6_sn19 * vn3_vnp6_sn5 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_26#25: vnp6
                                 + [ - vn1_vnp6_sn4 * vn2_vnp6_sn18
                                 - vn1_vnp6_sn4 * vn2_vnp6_sn19
                                 - vn1_vnp6_sn16 * vn2_vnp6_sn18
                                 - vn1_vnp6_sn16 * vn2_vnp6_sn19
                                 - vn1_vnp6_sn7 * vn2_vnp6_sn18
                                 - vn1_vnp6_sn7 * vn2_vnp6_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_27#26: vnp6
                                 + [ - vn4_vnp6_sn12 * vn3_vnp6_sn3
                                 - vn4_vnp6_sn12 * vn3_vnp6_sn2
                                 - vn4_vnp6_sn12 * vn3_vnp6_sn5
                                 - vn4_vnp6_sn20 * vn3_vnp6_sn3
                                 - vn4_vnp6_sn20 * vn3_vnp6_sn2
                                 - vn4_vnp6_sn20 * vn3_vnp6_sn5 ] <= 0
 q28#27:                         - 994 vnp1 - 593 vnp2 - 654 vnp3 - 546 vnp4
                                 - 813 vnp5 - 811 vnp6
                                 + [ 141 vn3_vnp1_sn9 * vn1_vnp1_sn20
                                 + 165 vn3_vnp1_sn9 * vn1_vnp1_sn18
                                 + 29 vn3_vnp1_sn9 * vn1_vnp1_sn1
                                 + 112 vn3_vnp1_sn9 * vn2_vnp1_sn7
                                 + 71 vn3_vnp1_sn9 * vn2_vnp1_sn2
                                 + 110 vn3_vnp1_sn9 * vn2_vnp1_sn8
                                 + 176 vn3_vnp1_sn9 * vn4_vnp1_sn19
                                 + 61 vn3_vnp1_sn9 * vn4_vnp1_sn16
                                 + 48 vn3_vnp1_sn9 * vn4_vnp1_sn12
                                 + 27 vn2_vnp1_sn7 * vn4_vnp1_sn19
                                 + 47 vn2_vnp1_sn7 * vn4_vnp1_sn16
                                 + 38 vn2_vnp1_sn7 * vn4_vnp1_sn12
                                 + 56 vn2_vnp1_sn2 * vn4_vnp1_sn19
                                 + 64 vn2_vnp1_sn2 * vn4_vnp1_sn16
                                 + 81 vn2_vnp1_sn2 * vn4_vnp1_sn12
                                 + 42 vn2_vnp1_sn8 * vn4_vnp1_sn19
                                 + 38 vn2_vnp1_sn8 * vn4_vnp1_sn16
                                 + 41 vn2_vnp1_sn8 * vn4_vnp1_sn12
                                 + 128 vn4_vnp2_sn8 * vn1_vnp2_sn11
                                 + 52 vn4_vnp2_sn8 * vn3_vnp2_sn10
                                 + 55 vn4_vnp2_sn8 * vn2_vnp2_sn4
                                 + 101 vn4_vnp2_sn8 * vn2_vnp2_sn15
                                 + 51 vn4_vnp2_sn8 * vn3_vnp2_sn14
                                 + 44 vn4_vnp2_sn8 * vn3_vnp2_sn1
                                 + 58 vn1_vnp2_sn11 * vn3_vnp2_sn10
                                 + 44 vn1_vnp2_sn11 * vn3_vnp2_sn14
                                 + 58 vn1_vnp2_sn11 * vn3_vnp2_sn1
                                 + 111 vn3_vnp2_sn10 * vn2_vnp2_sn4
                                 + 49 vn3_vnp2_sn10 * vn2_vnp2_sn15
                                 + 116 vn2_vnp2_sn4 * vn3_vnp2_sn14
                                 + 93 vn2_vnp2_sn4 * vn3_vnp2_sn1
                                 + 30 vn2_vnp2_sn15 * vn3_vnp2_sn14
                                 + 136 vn2_vnp2_sn15 * vn3_vnp2_sn1
                                 + 91 vn4_vnp3_sn9 * vn1_vnp3_sn18
                                 + 37 vn4_vnp3_sn9 * vn2_vnp3_sn10
                                 + 41 vn4_vnp3_sn9 * vn2_vnp3_sn5
                                 + 84 vn4_vnp3_sn9 * vn3_vnp3_sn11
                                 + 172 vn4_vnp3_sn9 * vn3_vnp3_sn19
                                 + 97 vn1_vnp3_sn18 * vn4_vnp3_sn2
                                 + 101 vn4_vnp3_sn2 * vn2_vnp3_sn10
                                 + 125 vn4_vnp3_sn2 * vn2_vnp3_sn5
                                 + 204 vn4_vnp3_sn2 * vn3_vnp3_sn11
                                 + 112 vn4_vnp3_sn2 * vn3_vnp3_sn19
                                 + 77 vn2_vnp3_sn10 * vn3_vnp3_sn11
                                 + 158 vn2_vnp3_sn10 * vn3_vnp3_sn19
                                 + 81 vn2_vnp3_sn5 * vn3_vnp3_sn11
                                 + 108 vn2_vnp3_sn5 * vn3_vnp3_sn19
                                 + 53 vn3_vnp4_sn3 * vn1_vnp4_sn14
                                 + 117 vn3_vnp4_sn3 * vn1_vnp4_sn6
                                 + 80 vn3_vnp4_sn3 * vn1_vnp4_sn16
                                 + 83 vn3_vnp4_sn3 * vn2_vnp4_sn10
                                 + 111 vn3_vnp4_sn3 * vn2_vnp4_sn18
                                 + 158 vn1_vnp4_sn14 * vn3_vnp4_sn4
                                 + 30 vn1_vnp4_sn14 * vn4_vnp4_sn9
                                 + 97 vn1_vnp4_sn14 * vn4_vnp4_sn7
                                 + 49 vn1_vnp4_sn14 * vn4_vnp4_sn1
                                 + 137 vn1_vnp4_sn6 * vn3_vnp4_sn4
                                 + 51 vn1_vnp4_sn6 * vn4_vnp4_sn9
                                 + 145 vn1_vnp4_sn6 * vn4_vnp4_sn7
                                 + 85 vn1_vnp4_sn6 * vn4_vnp4_sn1
                                 + 130 vn1_vnp4_sn16 * vn3_vnp4_sn4
                                 + 47 vn1_vnp4_sn16 * vn4_vnp4_sn9
                                 + 72 vn1_vnp4_sn16 * vn4_vnp4_sn7
                                 + 135 vn1_vnp4_sn16 * vn4_vnp4_sn1
                                 + 116 vn3_vnp4_sn4 * vn2_vnp4_sn10
                                 + 96 vn3_vnp4_sn4 * vn2_vnp4_sn18
                                 + 35 vn4_vnp4_sn9 * vn2_vnp4_sn10
                                 + 98 vn4_vnp4_sn9 * vn2_vnp4_sn18
                                 + 91 vn2_vnp4_sn10 * vn4_vnp4_sn7
                                 + 49 vn2_vnp4_sn10 * vn4_vnp4_sn1
                                 + 58 vn2_vnp4_sn18 * vn4_vnp4_sn7
                                 + 74 vn2_vnp4_sn18 * vn4_vnp4_sn1
                                 + 176 vn4_vnp5_sn13 * vn1_vnp5_sn4
                                 + 104 vn4_vnp5_sn13 * vn1_vnp5_sn11
                                 + 188 vn4_vnp5_sn13 * vn1_vnp5_sn19
                                 + 220 vn4_vnp5_sn13 * vn2_vnp5_sn2
                                 + 144 vn4_vnp5_sn13 * vn2_vnp5_sn14
                                 + 215 vn4_vnp5_sn13 * vn2_vnp5_sn16
                                 + 107 vn1_vnp5_sn4 * vn4_vnp5_sn12
                                 + 137 vn1_vnp5_sn4 * vn4_vnp5_sn20
                                 + 101 vn1_vnp5_sn4 * vn2_vnp5_sn2
                                 + 94 vn1_vnp5_sn4 * vn2_vnp5_sn14
                                 + 77 vn1_vnp5_sn4 * vn2_vnp5_sn16
                                 + 35 vn1_vnp5_sn11 * vn4_vnp5_sn12
                                 + 35 vn1_vnp5_sn11 * vn4_vnp5_sn20
                                 + 140 vn1_vnp5_sn11 * vn2_vnp5_sn2
                                 + 46 vn1_vnp5_sn11 * vn2_vnp5_sn14
                                 + 65 vn1_vnp5_sn11 * vn2_vnp5_sn16
                                 + 119 vn1_vnp5_sn19 * vn4_vnp5_sn12
                                 + 44 vn1_vnp5_sn19 * vn4_vnp5_sn20
                                 + 74 vn1_vnp5_sn19 * vn2_vnp5_sn2
                                 + 43 vn1_vnp5_sn19 * vn2_vnp5_sn14
                                 + 101 vn1_vnp5_sn19 * vn2_vnp5_sn16
                                 + 173 vn4_vnp5_sn12 * vn2_vnp5_sn2
                                 + 37 vn4_vnp5_sn12 * vn2_vnp5_sn14
                                 + 108 vn4_vnp5_sn12 * vn2_vnp5_sn16
                                 + 130 vn4_vnp5_sn20 * vn2_vnp5_sn2
                                 + 49 vn4_vnp5_sn20 * vn2_vnp5_sn14
                                 + 130 vn4_vnp5_sn20 * vn2_vnp5_sn16
                                 + 100 vn2_vnp5_sn2 * vn3_vnp5_sn6
                                 + 81 vn2_vnp5_sn14 * vn3_vnp5_sn6
                                 + 85 vn2_vnp5_sn16 * vn3_vnp5_sn6
                                 + 43 vn4_vnp6_sn12 * vn1_vnp6_sn4
                                 + 34 vn4_vnp6_sn12 * vn1_vnp6_sn16
                                 + 42 vn4_vnp6_sn12 * vn1_vnp6_sn7
                                 + 77 vn4_vnp6_sn12 * vn2_vnp6_sn18
                                 + 126 vn4_vnp6_sn12 * vn2_vnp6_sn19
                                 + 122 vn4_vnp6_sn12 * vn3_vnp6_sn3
                                 + 175 vn4_vnp6_sn12 * vn3_vnp6_sn2
                                 + 63 vn4_vnp6_sn12 * vn3_vnp6_sn5
                                 + 64 vn1_vnp6_sn4 * vn4_vnp6_sn20
                                 + 72 vn1_vnp6_sn4 * vn2_vnp6_sn18
                                 + 118 vn1_vnp6_sn4 * vn2_vnp6_sn19
                                 + 8 vn1_vnp6_sn4 * vn3_vnp6_sn3
                                 + 37 vn1_vnp6_sn4 * vn3_vnp6_sn2
                                 + 21 vn1_vnp6_sn4 * vn3_vnp6_sn5
                                 + 51 vn1_vnp6_sn16 * vn4_vnp6_sn20
                                 + 57 vn1_vnp6_sn16 * vn2_vnp6_sn18
                                 + 106 vn1_vnp6_sn16 * vn2_vnp6_sn19
                                 + 19 vn1_vnp6_sn16 * vn3_vnp6_sn3
                                 + 32 vn1_vnp6_sn16 * vn3_vnp6_sn2
                                 + 25 vn1_vnp6_sn16 * vn3_vnp6_sn5
                                 + 38 vn1_vnp6_sn7 * vn4_vnp6_sn20
                                 + 63 vn1_vnp6_sn7 * vn2_vnp6_sn18
                                 + 46 vn1_vnp6_sn7 * vn2_vnp6_sn19
                                 + 28 vn1_vnp6_sn7 * vn3_vnp6_sn3
                                 + 34 vn1_vnp6_sn7 * vn3_vnp6_sn2
                                 + 20 vn1_vnp6_sn7 * vn3_vnp6_sn5
                                 + 86 vn4_vnp6_sn20 * vn2_vnp6_sn18
                                 + 54 vn4_vnp6_sn20 * vn2_vnp6_sn19
                                 + 117 vn4_vnp6_sn20 * vn3_vnp6_sn3
                                 + 135 vn4_vnp6_sn20 * vn3_vnp6_sn2
                                 + 223 vn4_vnp6_sn20 * vn3_vnp6_sn5
                                 + 56 vn2_vnp6_sn18 * vn3_vnp6_sn3
                                 + 51 vn2_vnp6_sn18 * vn3_vnp6_sn2
                                 + 62 vn2_vnp6_sn18 * vn3_vnp6_sn5
                                 + 37 vn2_vnp6_sn19 * vn3_vnp6_sn3
                                 + 43 vn2_vnp6_sn19 * vn3_vnp6_sn2
                                 + 50 vn2_vnp6_sn19 * vn3_vnp6_sn5 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: 4 vn1_vnp1_sn1 + 4 vn3_vnp2_sn1
                                 + 4 vn4_vnp4_sn1 <= 3
 CPU_capacity_of_substrate_node_2#1: 3 vn2_vnp1_sn2 + 5 vn4_vnp3_sn2
                                 + vn2_vnp5_sn2 + vn3_vnp6_sn2 <= 4
 CPU_capacity_of_substrate_node_3#2: 5 vn3_vnp4_sn3 + vn3_vnp6_sn3 <= 3
 CPU_capacity_of_substrate_node_4#3: 5 vn2_vnp2_sn4 + 5 vn3_vnp4_sn4
                                 + 3 vn1_vnp5_sn4 + vn1_vnp6_sn4 <= 3
 CPU_capacity_of_substrate_node_5#4: 4 vn2_vnp3_sn5 + vn3_vnp6_sn5 <= 4
 CPU_capacity_of_substrate_node_6#5: 2 vn1_vnp4_sn6 + 2 vn3_vnp5_sn6 <= 2
 CPU_capacity_of_substrate_node_7#6: 3 vn2_vnp1_sn7 + 4 vn4_vnp4_sn7
                                 + vn1_vnp6_sn7 <= 5
 CPU_capacity_of_substrate_node_8#7: 3 vn2_vnp1_sn8 + 3 vn4_vnp2_sn8 <= 7
 CPU_capacity_of_substrate_node_9#8: vn3_vnp1_sn9 + 5 vn4_vnp3_sn9
                                 + 4 vn4_vnp4_sn9 <= 5
 CPU_capacity_of_substrate_node_10#9: 4 vn3_vnp2_sn10 + 4 vn2_vnp3_sn10
                                 + 5 vn2_vnp4_sn10 <= 6
 CPU_capacity_of_substrate_node_11#10: 2 vn1_vnp2_sn11 + 3 vn3_vnp3_sn11
                                 + 3 vn1_vnp5_sn11 <= 4
 CPU_capacity_of_substrate_node_12#11: vn4_vnp1_sn12 + 4 vn4_vnp5_sn12
                                 + 5 vn4_vnp6_sn12 <= 5
 CPU_capacity_of_substrate_node_13#12: 4 vn4_vnp5_sn13 <= 8
 CPU_capacity_of_substrate_node_14#13: 4 vn3_vnp2_sn14 + 2 vn1_vnp4_sn14
                                 + vn2_vnp5_sn14 <= 4
 CPU_capacity_of_substrate_node_15#14: 5 vn2_vnp2_sn15 <= 5
 CPU_capacity_of_substrate_node_16#15: vn4_vnp1_sn16 + 2 vn1_vnp4_sn16
                                 + vn2_vnp5_sn16 + vn1_vnp6_sn16 <= 8
 CPU_capacity_of_substrate_node_18#16: 4 vn1_vnp1_sn18 + 3 vn1_vnp3_sn18
                                 + 5 vn2_vnp4_sn18 + 4 vn2_vnp6_sn18 <= 8
 CPU_capacity_of_substrate_node_19#17: vn4_vnp1_sn19 + 3 vn3_vnp3_sn19
                                 + 3 vn1_vnp5_sn19 + 4 vn2_vnp6_sn19 <= 4
 CPU_capacity_of_substrate_node_20#18: 4 vn1_vnp1_sn20 + 4 vn4_vnp5_sn20
                                 + 5 vn4_vnp6_sn20 <= 8
Bounds
 0 <= vnp1 <= 1
 0 <= vn3_vnp1_sn9 <= 1
 0 <= vn1_vnp1_sn20 <= 1
 0 <= vn1_vnp1_sn18 <= 1
 0 <= vn1_vnp1_sn1 <= 1
 0 <= vn2_vnp1_sn7 <= 1
 0 <= vn2_vnp1_sn2 <= 1
 0 <= vn2_vnp1_sn8 <= 1
 0 <= vn4_vnp1_sn19 <= 1
 0 <= vn4_vnp1_sn16 <= 1
 0 <= vn4_vnp1_sn12 <= 1
 0 <= vnp2 <= 1
 0 <= vn4_vnp2_sn8 <= 1
 0 <= vn1_vnp2_sn11 <= 1
 0 <= vn3_vnp2_sn10 <= 1
 0 <= vn2_vnp2_sn4 <= 1
 0 <= vn2_vnp2_sn15 <= 1
 0 <= vn3_vnp2_sn14 <= 1
 0 <= vn3_vnp2_sn1 <= 1
 0 <= vnp3 <= 1
 0 <= vn4_vnp3_sn9 <= 1
 0 <= vn1_vnp3_sn18 <= 1
 0 <= vn4_vnp3_sn2 <= 1
 0 <= vn2_vnp3_sn10 <= 1
 0 <= vn2_vnp3_sn5 <= 1
 0 <= vn3_vnp3_sn11 <= 1
 0 <= vn3_vnp3_sn19 <= 1
 0 <= vnp4 <= 1
 0 <= vn3_vnp4_sn3 <= 1
 0 <= vn1_vnp4_sn14 <= 1
 0 <= vn1_vnp4_sn6 <= 1
 0 <= vn1_vnp4_sn16 <= 1
 0 <= vn3_vnp4_sn4 <= 1
 0 <= vn4_vnp4_sn9 <= 1
 0 <= vn2_vnp4_sn10 <= 1
 0 <= vn2_vnp4_sn18 <= 1
 0 <= vn4_vnp4_sn7 <= 1
 0 <= vn4_vnp4_sn1 <= 1
 0 <= vnp5 <= 1
 0 <= vn4_vnp5_sn13 <= 1
 0 <= vn1_vnp5_sn4 <= 1
 0 <= vn1_vnp5_sn11 <= 1
 0 <= vn1_vnp5_sn19 <= 1
 0 <= vn4_vnp5_sn12 <= 1
 0 <= vn4_vnp5_sn20 <= 1
 0 <= vn2_vnp5_sn2 <= 1
 0 <= vn2_vnp5_sn14 <= 1
 0 <= vn2_vnp5_sn16 <= 1
 0 <= vn3_vnp5_sn6 <= 1
 0 <= vnp6 <= 1
 0 <= vn4_vnp6_sn12 <= 1
 0 <= vn1_vnp6_sn4 <= 1
 0 <= vn1_vnp6_sn16 <= 1
 0 <= vn1_vnp6_sn7 <= 1
 0 <= vn4_vnp6_sn20 <= 1
 0 <= vn2_vnp6_sn18 <= 1
 0 <= vn2_vnp6_sn19 <= 1
 0 <= vn3_vnp6_sn3 <= 1
 0 <= vn3_vnp6_sn2 <= 1
 0 <= vn3_vnp6_sn5 <= 1
Binaries
 vnp1  vn3_vnp1_sn9  vn1_vnp1_sn20  vn1_vnp1_sn18  vn1_vnp1_sn1  vn2_vnp1_sn7 
 vn2_vnp1_sn2  vn2_vnp1_sn8  vn4_vnp1_sn19  vn4_vnp1_sn16  vn4_vnp1_sn12  vnp2 
 vn4_vnp2_sn8  vn1_vnp2_sn11  vn3_vnp2_sn10  vn2_vnp2_sn4  vn2_vnp2_sn15 
 vn3_vnp2_sn14  vn3_vnp2_sn1  vnp3  vn4_vnp3_sn9  vn1_vnp3_sn18  vn4_vnp3_sn2 
 vn2_vnp3_sn10  vn2_vnp3_sn5  vn3_vnp3_sn11  vn3_vnp3_sn19  vnp4  vn3_vnp4_sn3 
 vn1_vnp4_sn14  vn1_vnp4_sn6  vn1_vnp4_sn16  vn3_vnp4_sn4  vn4_vnp4_sn9 
 vn2_vnp4_sn10  vn2_vnp4_sn18  vn4_vnp4_sn7  vn4_vnp4_sn1  vnp5  vn4_vnp5_sn13 
 vn1_vnp5_sn4  vn1_vnp5_sn11  vn1_vnp5_sn19  vn4_vnp5_sn12  vn4_vnp5_sn20 
 vn2_vnp5_sn2  vn2_vnp5_sn14  vn2_vnp5_sn16  vn3_vnp5_sn6  vnp6  vn4_vnp6_sn12 
 vn1_vnp6_sn4  vn1_vnp6_sn16  vn1_vnp6_sn7  vn4_vnp6_sn20  vn2_vnp6_sn18 
 vn2_vnp6_sn19  vn3_vnp6_sn3  vn3_vnp6_sn2  vn3_vnp6_sn5 
End
