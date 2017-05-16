\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1399 vnp1 + 747 vnp2 + 1611 vnp3 + 1330 vnp4 + 578 vnp5 + 890 vnp6
      + 247 vnp7 + [ - 254 vn3_vnp1_sn4 * vn1_vnp1_sn10
      - 322 vn3_vnp1_sn4 * vn2_vnp1_sn16 - 162 vn3_vnp1_sn4 * vn2_vnp1_sn8
      - 422 vn3_vnp1_sn4 * vn2_vnp1_sn15 - 224 vn3_vnp1_sn4 * vn4_vnp1_sn2
      - 72 vn1_vnp1_sn10 * vn2_vnp1_sn16 - 88 vn1_vnp1_sn10 * vn2_vnp1_sn8
      - 46 vn1_vnp1_sn10 * vn2_vnp1_sn15 - 352 vn1_vnp1_sn10 * vn4_vnp1_sn2
      - 70 vn3_vnp2_sn16 * vn1_vnp2_sn17 - 100 vn3_vnp2_sn16 * vn1_vnp2_sn4
      - 86 vn3_vnp2_sn16 * vn1_vnp2_sn19 - 220 vn3_vnp2_sn16 * vn2_vnp2_sn5
      - 350 vn3_vnp2_sn16 * vn2_vnp2_sn2 - 280 vn3_vnp2_sn16 * vn2_vnp2_sn13
      - 260 vn3_vnp2_sn16 * vn4_vnp2_sn18 - 580 vn3_vnp2_sn16 * vn4_vnp2_sn1
      - 190 vn3_vnp2_sn16 * vn4_vnp2_sn10 - 52 vn1_vnp2_sn17 * vn3_vnp2_sn15
      - 98 vn1_vnp2_sn4 * vn3_vnp2_sn15 - 68 vn1_vnp2_sn19 * vn3_vnp2_sn15
      - 338 vn3_vnp2_sn15 * vn2_vnp2_sn5 - 288 vn3_vnp2_sn15 * vn2_vnp2_sn2
      - 138 vn3_vnp2_sn15 * vn2_vnp2_sn13 - 218 vn3_vnp2_sn15 * vn4_vnp2_sn18
      - 368 vn3_vnp2_sn15 * vn4_vnp2_sn1 - 108 vn3_vnp2_sn15 * vn4_vnp2_sn10
      - 204 vn2_vnp2_sn5 * vn4_vnp2_sn18 - 126 vn2_vnp2_sn5 * vn4_vnp2_sn1
      - 54 vn2_vnp2_sn5 * vn4_vnp2_sn10 - 228 vn2_vnp2_sn2 * vn4_vnp2_sn18
      - 66 vn2_vnp2_sn2 * vn4_vnp2_sn1 - 138 vn2_vnp2_sn2 * vn4_vnp2_sn10
      - 192 vn2_vnp2_sn13 * vn4_vnp2_sn18 - 168 vn2_vnp2_sn13 * vn4_vnp2_sn1
      - 114 vn2_vnp2_sn13 * vn4_vnp2_sn10 - 336 vn4_vnp3_sn13 * vn1_vnp3_sn7
      - 138 vn4_vnp3_sn13 * vn1_vnp3_sn2 - 162 vn4_vnp3_sn13 * vn1_vnp3_sn16
      - 272 vn4_vnp3_sn13 * vn2_vnp3_sn11 - 132 vn4_vnp3_sn13 * vn2_vnp3_sn15
      - 352 vn4_vnp3_sn13 * vn2_vnp3_sn8 - 100 vn4_vnp3_sn13 * vn3_vnp3_sn20
      - 276 vn1_vnp3_sn7 * vn2_vnp3_sn11 - 264 vn1_vnp3_sn7 * vn2_vnp3_sn15
      - 60 vn1_vnp3_sn7 * vn2_vnp3_sn8 - 62 vn1_vnp3_sn7 * vn3_vnp3_sn20
      - 168 vn1_vnp3_sn2 * vn2_vnp3_sn11 - 270 vn1_vnp3_sn2 * vn2_vnp3_sn15
      - 240 vn1_vnp3_sn2 * vn2_vnp3_sn8 - 70 vn1_vnp3_sn2 * vn3_vnp3_sn20
      - 186 vn1_vnp3_sn16 * vn2_vnp3_sn11 - 78 vn1_vnp3_sn16 * vn2_vnp3_sn15
      - 120 vn1_vnp3_sn16 * vn2_vnp3_sn8 - 70 vn1_vnp3_sn16 * vn3_vnp3_sn20
      - 120 vn2_vnp3_sn11 * vn3_vnp3_sn20 - 40 vn2_vnp3_sn15 * vn3_vnp3_sn20
      - 104 vn2_vnp3_sn8 * vn3_vnp3_sn20 - 82 vn3_vnp4_sn12 * vn1_vnp4_sn20
      - 208 vn3_vnp4_sn12 * vn1_vnp4_sn17 - 256 vn3_vnp4_sn12 * vn2_vnp4_sn3
      - 218 vn3_vnp4_sn12 * vn2_vnp4_sn6 - 206 vn3_vnp4_sn12 * vn2_vnp4_sn9
      - 46 vn3_vnp4_sn12 * vn4_vnp4_sn15 - 90 vn3_vnp4_sn12 * vn4_vnp4_sn11
      - 238 vn1_vnp4_sn20 * vn3_vnp4_sn8 - 268 vn1_vnp4_sn20 * vn3_vnp4_sn16
      - 204 vn1_vnp4_sn17 * vn3_vnp4_sn8 - 234 vn1_vnp4_sn17 * vn3_vnp4_sn16
      - 352 vn3_vnp4_sn8 * vn2_vnp4_sn3 - 334 vn3_vnp4_sn8 * vn2_vnp4_sn6
      - 192 vn3_vnp4_sn8 * vn2_vnp4_sn9 - 180 vn3_vnp4_sn8 * vn4_vnp4_sn15
      - 248 vn3_vnp4_sn8 * vn4_vnp4_sn11 - 272 vn3_vnp4_sn16 * vn2_vnp4_sn3
      - 254 vn3_vnp4_sn16 * vn2_vnp4_sn6 - 112 vn3_vnp4_sn16 * vn2_vnp4_sn9
      - 100 vn3_vnp4_sn16 * vn4_vnp4_sn15 - 168 vn3_vnp4_sn16 * vn4_vnp4_sn11
      - 246 vn2_vnp4_sn3 * vn4_vnp4_sn15 - 240 vn2_vnp4_sn3 * vn4_vnp4_sn11
      - 150 vn2_vnp4_sn6 * vn4_vnp4_sn15 - 222 vn2_vnp4_sn6 * vn4_vnp4_sn11
      - 150 vn2_vnp4_sn9 * vn4_vnp4_sn15 - 144 vn2_vnp4_sn9 * vn4_vnp4_sn11
      - 80 vn4_vnp5_sn4 * vn1_vnp5_sn5 - 316 vn4_vnp5_sn4 * vn2_vnp5_sn12
      - 186 vn4_vnp5_sn4 * vn3_vnp5_sn10 - 64 vn1_vnp5_sn5 * vn4_vnp5_sn14
      - 62 vn1_vnp5_sn5 * vn4_vnp5_sn11 - 36 vn4_vnp5_sn14 * vn2_vnp5_sn12
      - 36 vn4_vnp5_sn14 * vn3_vnp5_sn10 - 134 vn4_vnp5_sn11 * vn2_vnp5_sn12
      - 36 vn4_vnp5_sn11 * vn3_vnp5_sn10 - 40 vn2_vnp5_sn12 * vn3_vnp5_sn10
      - 60 vn3_vnp6_sn15 * vn1_vnp6_sn13 - 180 vn3_vnp6_sn15 * vn2_vnp6_sn19
      - 30 vn3_vnp6_sn15 * vn2_vnp6_sn12 - 14 vn3_vnp6_sn15 * vn4_vnp6_sn14
      - 56 vn3_vnp6_sn15 * vn4_vnp6_sn16 - 52 vn3_vnp6_sn15 * vn4_vnp6_sn9
      - 96 vn1_vnp6_sn13 * vn3_vnp6_sn2 - 36 vn1_vnp6_sn13 * vn3_vnp6_sn6
      - 412 vn1_vnp6_sn13 * vn2_vnp6_sn19 - 146 vn1_vnp6_sn13 * vn2_vnp6_sn12
      - 156 vn3_vnp6_sn2 * vn2_vnp6_sn19 - 276 vn3_vnp6_sn2 * vn2_vnp6_sn12
      - 76 vn3_vnp6_sn2 * vn4_vnp6_sn14 - 94 vn3_vnp6_sn2 * vn4_vnp6_sn16
      - 62 vn3_vnp6_sn2 * vn4_vnp6_sn9 - 222 vn3_vnp6_sn6 * vn2_vnp6_sn19
      - 126 vn3_vnp6_sn6 * vn2_vnp6_sn12 - 40 vn3_vnp6_sn6 * vn4_vnp6_sn14
      - 70 vn3_vnp6_sn6 * vn4_vnp6_sn16 - 38 vn3_vnp6_sn6 * vn4_vnp6_sn9
      - 84 vn2_vnp6_sn19 * vn4_vnp6_sn14 - 228 vn2_vnp6_sn19 * vn4_vnp6_sn16
      - 294 vn2_vnp6_sn19 * vn4_vnp6_sn9 - 48 vn2_vnp6_sn12 * vn4_vnp6_sn14
      - 138 vn2_vnp6_sn12 * vn4_vnp6_sn16 - 138 vn2_vnp6_sn12 * vn4_vnp6_sn9
      - 12 vn2_vnp7_sn6 * vn1_vnp7_sn5 - 78 vn2_vnp7_sn6 * vn3_vnp7_sn9
      - 102 vn2_vnp7_sn6 * vn3_vnp7_sn12 - 132 vn2_vnp7_sn6 * vn3_vnp7_sn20
      - 198 vn1_vnp7_sn5 * vn2_vnp7_sn15 - 30 vn1_vnp7_sn5 * vn3_vnp7_sn9
      - 40 vn1_vnp7_sn5 * vn3_vnp7_sn12 - 78 vn1_vnp7_sn5 * vn3_vnp7_sn20
      - 120 vn2_vnp7_sn15 * vn3_vnp7_sn9 - 6 vn2_vnp7_sn15 * vn3_vnp7_sn12
      - 24 vn2_vnp7_sn15 * vn3_vnp7_sn20 ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn10 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn16
                                 + vn2_vnp1_sn8 + vn2_vnp1_sn15 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn4 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn2 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn17
                                 + vn1_vnp2_sn4 + vn1_vnp2_sn19 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn5 + vn2_vnp2_sn2
                                 + vn2_vnp2_sn13 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn16
                                 + vn3_vnp2_sn15 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#7: - vnp2 + vn4_vnp2_sn18
                                 + vn4_vnp2_sn1 + vn4_vnp2_sn10 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#8: - vnp3 + vn1_vnp3_sn7 + vn1_vnp3_sn2
                                 + vn1_vnp3_sn16 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#9: - vnp3 + vn2_vnp3_sn11
                                 + vn2_vnp3_sn15 + vn2_vnp3_sn8 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#10: - vnp3 + vn3_vnp3_sn20 <= 0
 _Embedding_clash_const_of_vnode4_vnp_3#11: - vnp3 + vn4_vnp3_sn13 <= 0
 _Embedding_clash_const_of_vnode1_vnp_4#12: - vnp4 + vn1_vnp4_sn20
                                 + vn1_vnp4_sn17 <= 0
 _Embedding_clash_const_of_vnode2_vnp_4#13: - vnp4 + vn2_vnp4_sn3
                                 + vn2_vnp4_sn6 + vn2_vnp4_sn9 <= 0
 _Embedding_clash_const_of_vnode3_vnp_4#14: - vnp4 + vn3_vnp4_sn12
                                 + vn3_vnp4_sn8 + vn3_vnp4_sn16 <= 0
 _Embedding_clash_const_of_vnode4_vnp_4#15: - vnp4 + vn4_vnp4_sn15
                                 + vn4_vnp4_sn11 <= 0
 _Embedding_clash_const_of_vnode1_vnp_5#16: - vnp5 + vn1_vnp5_sn5 <= 0
 _Embedding_clash_const_of_vnode2_vnp_5#17: - vnp5 + vn2_vnp5_sn12 <= 0
 _Embedding_clash_const_of_vnode3_vnp_5#18: - vnp5 + vn3_vnp5_sn10 <= 0
 _Embedding_clash_const_of_vnode4_vnp_5#19: - vnp5 + vn4_vnp5_sn4
                                 + vn4_vnp5_sn14 + vn4_vnp5_sn11 <= 0
 _Embedding_clash_const_of_vnode1_vnp_6#20: - vnp6 + vn1_vnp6_sn13 <= 0
 _Embedding_clash_const_of_vnode2_vnp_6#21: - vnp6 + vn2_vnp6_sn19
                                 + vn2_vnp6_sn12 <= 0
 _Embedding_clash_const_of_vnode3_vnp_6#22: - vnp6 + vn3_vnp6_sn15
                                 + vn3_vnp6_sn2 + vn3_vnp6_sn6 <= 0
 _Embedding_clash_const_of_vnode4_vnp_6#23: - vnp6 + vn4_vnp6_sn14
                                 + vn4_vnp6_sn16 + vn4_vnp6_sn9 <= 0
 _Embedding_clash_const_of_vnode1_vnp_7#24: - vnp7 + vn1_vnp7_sn5 <= 0
 _Embedding_clash_const_of_vnode2_vnp_7#25: - vnp7 + vn2_vnp7_sn6
                                 + vn2_vnp7_sn15 <= 0
 _Embedding_clash_const_of_vnode3_vnp_7#26: - vnp7 + vn3_vnp7_sn9
                                 + vn3_vnp7_sn12 + vn3_vnp7_sn20 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn3_vnp1_sn4 * vn1_vnp1_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn3_vnp1_sn4 * vn2_vnp1_sn16
                                 - vn3_vnp1_sn4 * vn2_vnp1_sn8
                                 - vn3_vnp1_sn4 * vn2_vnp1_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn3_vnp1_sn4 * vn4_vnp1_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn1_vnp1_sn10 * vn2_vnp1_sn16
                                 - vn1_vnp1_sn10 * vn2_vnp1_sn8
                                 - vn1_vnp1_sn10 * vn2_vnp1_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_5#4: vnp1
                                 + [ - vn1_vnp1_sn10 * vn4_vnp1_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn3_vnp2_sn16 * vn1_vnp2_sn17
                                 - vn3_vnp2_sn16 * vn1_vnp2_sn4
                                 - vn3_vnp2_sn16 * vn1_vnp2_sn19
                                 - vn1_vnp2_sn17 * vn3_vnp2_sn15
                                 - vn1_vnp2_sn4 * vn3_vnp2_sn15
                                 - vn1_vnp2_sn19 * vn3_vnp2_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn3_vnp2_sn16 * vn2_vnp2_sn5
                                 - vn3_vnp2_sn16 * vn2_vnp2_sn2
                                 - vn3_vnp2_sn16 * vn2_vnp2_sn13
                                 - vn3_vnp2_sn15 * vn2_vnp2_sn5
                                 - vn3_vnp2_sn15 * vn2_vnp2_sn2
                                 - vn3_vnp2_sn15 * vn2_vnp2_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_8#7: vnp2
                                 + [ - vn3_vnp2_sn16 * vn4_vnp2_sn18
                                 - vn3_vnp2_sn16 * vn4_vnp2_sn1
                                 - vn3_vnp2_sn16 * vn4_vnp2_sn10
                                 - vn3_vnp2_sn15 * vn4_vnp2_sn18
                                 - vn3_vnp2_sn15 * vn4_vnp2_sn1
                                 - vn3_vnp2_sn15 * vn4_vnp2_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_9#8: vnp2
                                 + [ - vn2_vnp2_sn5 * vn4_vnp2_sn18
                                 - vn2_vnp2_sn5 * vn4_vnp2_sn1
                                 - vn2_vnp2_sn5 * vn4_vnp2_sn10
                                 - vn2_vnp2_sn2 * vn4_vnp2_sn18
                                 - vn2_vnp2_sn2 * vn4_vnp2_sn1
                                 - vn2_vnp2_sn2 * vn4_vnp2_sn10
                                 - vn2_vnp2_sn13 * vn4_vnp2_sn18
                                 - vn2_vnp2_sn13 * vn4_vnp2_sn1
                                 - vn2_vnp2_sn13 * vn4_vnp2_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_10#9: vnp3
                                 + [ - vn4_vnp3_sn13 * vn1_vnp3_sn7
                                 - vn4_vnp3_sn13 * vn1_vnp3_sn2
                                 - vn4_vnp3_sn13 * vn1_vnp3_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_11#10: vnp3
                                 + [ - vn4_vnp3_sn13 * vn2_vnp3_sn11
                                 - vn4_vnp3_sn13 * vn2_vnp3_sn15
                                 - vn4_vnp3_sn13 * vn2_vnp3_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_12#11: vnp3
                                 + [ - vn2_vnp3_sn11 * vn3_vnp3_sn20
                                 - vn2_vnp3_sn15 * vn3_vnp3_sn20
                                 - vn2_vnp3_sn8 * vn3_vnp3_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_13#12: vnp3
                                 + [ - vn1_vnp3_sn7 * vn3_vnp3_sn20
                                 - vn1_vnp3_sn2 * vn3_vnp3_sn20
                                 - vn1_vnp3_sn16 * vn3_vnp3_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_14#13: vnp3
                                 + [ - vn1_vnp3_sn7 * vn2_vnp3_sn11
                                 - vn1_vnp3_sn7 * vn2_vnp3_sn15
                                 - vn1_vnp3_sn7 * vn2_vnp3_sn8
                                 - vn1_vnp3_sn2 * vn2_vnp3_sn11
                                 - vn1_vnp3_sn2 * vn2_vnp3_sn15
                                 - vn1_vnp3_sn2 * vn2_vnp3_sn8
                                 - vn1_vnp3_sn16 * vn2_vnp3_sn11
                                 - vn1_vnp3_sn16 * vn2_vnp3_sn15
                                 - vn1_vnp3_sn16 * vn2_vnp3_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_15#14: vnp3
                                 + [ - vn4_vnp3_sn13 * vn3_vnp3_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_16#15: vnp4
                                 + [ - vn3_vnp4_sn12 * vn1_vnp4_sn20
                                 - vn3_vnp4_sn12 * vn1_vnp4_sn17
                                 - vn1_vnp4_sn20 * vn3_vnp4_sn8
                                 - vn1_vnp4_sn20 * vn3_vnp4_sn16
                                 - vn1_vnp4_sn17 * vn3_vnp4_sn8
                                 - vn1_vnp4_sn17 * vn3_vnp4_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_17#16: vnp4
                                 + [ - vn3_vnp4_sn12 * vn2_vnp4_sn3
                                 - vn3_vnp4_sn12 * vn2_vnp4_sn6
                                 - vn3_vnp4_sn12 * vn2_vnp4_sn9
                                 - vn3_vnp4_sn8 * vn2_vnp4_sn3
                                 - vn3_vnp4_sn8 * vn2_vnp4_sn6
                                 - vn3_vnp4_sn8 * vn2_vnp4_sn9
                                 - vn3_vnp4_sn16 * vn2_vnp4_sn3
                                 - vn3_vnp4_sn16 * vn2_vnp4_sn6
                                 - vn3_vnp4_sn16 * vn2_vnp4_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_18#17: vnp4
                                 + [ - vn3_vnp4_sn12 * vn4_vnp4_sn15
                                 - vn3_vnp4_sn12 * vn4_vnp4_sn11
                                 - vn3_vnp4_sn8 * vn4_vnp4_sn15
                                 - vn3_vnp4_sn8 * vn4_vnp4_sn11
                                 - vn3_vnp4_sn16 * vn4_vnp4_sn15
                                 - vn3_vnp4_sn16 * vn4_vnp4_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_19#18: vnp4
                                 + [ - vn2_vnp4_sn3 * vn4_vnp4_sn15
                                 - vn2_vnp4_sn3 * vn4_vnp4_sn11
                                 - vn2_vnp4_sn6 * vn4_vnp4_sn15
                                 - vn2_vnp4_sn6 * vn4_vnp4_sn11
                                 - vn2_vnp4_sn9 * vn4_vnp4_sn15
                                 - vn2_vnp4_sn9 * vn4_vnp4_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_20#19: vnp5
                                 + [ - vn4_vnp5_sn4 * vn1_vnp5_sn5
                                 - vn1_vnp5_sn5 * vn4_vnp5_sn14
                                 - vn1_vnp5_sn5 * vn4_vnp5_sn11 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_21#20: vnp5
                                 + [ - vn4_vnp5_sn4 * vn2_vnp5_sn12
                                 - vn4_vnp5_sn14 * vn2_vnp5_sn12
                                 - vn4_vnp5_sn11 * vn2_vnp5_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_22#21: vnp5
                                 + [ - vn4_vnp5_sn4 * vn3_vnp5_sn10
                                 - vn4_vnp5_sn14 * vn3_vnp5_sn10
                                 - vn4_vnp5_sn11 * vn3_vnp5_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_23#22: vnp5
                                 + [ - vn2_vnp5_sn12 * vn3_vnp5_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_24#23: vnp6
                                 + [ - vn3_vnp6_sn15 * vn1_vnp6_sn13
                                 - vn1_vnp6_sn13 * vn3_vnp6_sn2
                                 - vn1_vnp6_sn13 * vn3_vnp6_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_25#24: vnp6
                                 + [ - vn3_vnp6_sn15 * vn2_vnp6_sn19
                                 - vn3_vnp6_sn15 * vn2_vnp6_sn12
                                 - vn3_vnp6_sn2 * vn2_vnp6_sn19
                                 - vn3_vnp6_sn2 * vn2_vnp6_sn12
                                 - vn3_vnp6_sn6 * vn2_vnp6_sn19
                                 - vn3_vnp6_sn6 * vn2_vnp6_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_26#25: vnp6
                                 + [ - vn3_vnp6_sn15 * vn4_vnp6_sn14
                                 - vn3_vnp6_sn15 * vn4_vnp6_sn16
                                 - vn3_vnp6_sn15 * vn4_vnp6_sn9
                                 - vn3_vnp6_sn2 * vn4_vnp6_sn14
                                 - vn3_vnp6_sn2 * vn4_vnp6_sn16
                                 - vn3_vnp6_sn2 * vn4_vnp6_sn9
                                 - vn3_vnp6_sn6 * vn4_vnp6_sn14
                                 - vn3_vnp6_sn6 * vn4_vnp6_sn16
                                 - vn3_vnp6_sn6 * vn4_vnp6_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_27#26: vnp6
                                 + [ - vn2_vnp6_sn19 * vn4_vnp6_sn14
                                 - vn2_vnp6_sn19 * vn4_vnp6_sn16
                                 - vn2_vnp6_sn19 * vn4_vnp6_sn9
                                 - vn2_vnp6_sn12 * vn4_vnp6_sn14
                                 - vn2_vnp6_sn12 * vn4_vnp6_sn16
                                 - vn2_vnp6_sn12 * vn4_vnp6_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_28#27: vnp6
                                 + [ - vn1_vnp6_sn13 * vn2_vnp6_sn19
                                 - vn1_vnp6_sn13 * vn2_vnp6_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_29#28: vnp7
                                 + [ - vn2_vnp7_sn6 * vn1_vnp7_sn5
                                 - vn1_vnp7_sn5 * vn2_vnp7_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_30#29: vnp7
                                 + [ - vn2_vnp7_sn6 * vn3_vnp7_sn9
                                 - vn2_vnp7_sn6 * vn3_vnp7_sn12
                                 - vn2_vnp7_sn6 * vn3_vnp7_sn20
                                 - vn2_vnp7_sn15 * vn3_vnp7_sn9
                                 - vn2_vnp7_sn15 * vn3_vnp7_sn12
                                 - vn2_vnp7_sn15 * vn3_vnp7_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_31#30: vnp7
                                 + [ - vn1_vnp7_sn5 * vn3_vnp7_sn9
                                 - vn1_vnp7_sn5 * vn3_vnp7_sn12
                                 - vn1_vnp7_sn5 * vn3_vnp7_sn20 ] <= 0
 q32#31:                         - 1399 vnp1 - 747 vnp2 - 1611 vnp3 - 1330 vnp4
                                 - 578 vnp5 - 890 vnp6 - 247 vnp7
                                 + [ 127 vn3_vnp1_sn4 * vn1_vnp1_sn10
                                 + 161 vn3_vnp1_sn4 * vn2_vnp1_sn16
                                 + 81 vn3_vnp1_sn4 * vn2_vnp1_sn8
                                 + 211 vn3_vnp1_sn4 * vn2_vnp1_sn15
                                 + 112 vn3_vnp1_sn4 * vn4_vnp1_sn2
                                 + 36 vn1_vnp1_sn10 * vn2_vnp1_sn16
                                 + 44 vn1_vnp1_sn10 * vn2_vnp1_sn8
                                 + 23 vn1_vnp1_sn10 * vn2_vnp1_sn15
                                 + 176 vn1_vnp1_sn10 * vn4_vnp1_sn2
                                 + 35 vn3_vnp2_sn16 * vn1_vnp2_sn17
                                 + 50 vn3_vnp2_sn16 * vn1_vnp2_sn4
                                 + 43 vn3_vnp2_sn16 * vn1_vnp2_sn19
                                 + 110 vn3_vnp2_sn16 * vn2_vnp2_sn5
                                 + 175 vn3_vnp2_sn16 * vn2_vnp2_sn2
                                 + 140 vn3_vnp2_sn16 * vn2_vnp2_sn13
                                 + 130 vn3_vnp2_sn16 * vn4_vnp2_sn18
                                 + 290 vn3_vnp2_sn16 * vn4_vnp2_sn1
                                 + 95 vn3_vnp2_sn16 * vn4_vnp2_sn10
                                 + 26 vn1_vnp2_sn17 * vn3_vnp2_sn15
                                 + 49 vn1_vnp2_sn4 * vn3_vnp2_sn15
                                 + 34 vn1_vnp2_sn19 * vn3_vnp2_sn15
                                 + 169 vn3_vnp2_sn15 * vn2_vnp2_sn5
                                 + 144 vn3_vnp2_sn15 * vn2_vnp2_sn2
                                 + 69 vn3_vnp2_sn15 * vn2_vnp2_sn13
                                 + 109 vn3_vnp2_sn15 * vn4_vnp2_sn18
                                 + 184 vn3_vnp2_sn15 * vn4_vnp2_sn1
                                 + 54 vn3_vnp2_sn15 * vn4_vnp2_sn10
                                 + 102 vn2_vnp2_sn5 * vn4_vnp2_sn18
                                 + 63 vn2_vnp2_sn5 * vn4_vnp2_sn1
                                 + 27 vn2_vnp2_sn5 * vn4_vnp2_sn10
                                 + 114 vn2_vnp2_sn2 * vn4_vnp2_sn18
                                 + 33 vn2_vnp2_sn2 * vn4_vnp2_sn1
                                 + 69 vn2_vnp2_sn2 * vn4_vnp2_sn10
                                 + 96 vn2_vnp2_sn13 * vn4_vnp2_sn18
                                 + 84 vn2_vnp2_sn13 * vn4_vnp2_sn1
                                 + 57 vn2_vnp2_sn13 * vn4_vnp2_sn10
                                 + 168 vn4_vnp3_sn13 * vn1_vnp3_sn7
                                 + 69 vn4_vnp3_sn13 * vn1_vnp3_sn2
                                 + 81 vn4_vnp3_sn13 * vn1_vnp3_sn16
                                 + 136 vn4_vnp3_sn13 * vn2_vnp3_sn11
                                 + 66 vn4_vnp3_sn13 * vn2_vnp3_sn15
                                 + 176 vn4_vnp3_sn13 * vn2_vnp3_sn8
                                 + 50 vn4_vnp3_sn13 * vn3_vnp3_sn20
                                 + 138 vn1_vnp3_sn7 * vn2_vnp3_sn11
                                 + 132 vn1_vnp3_sn7 * vn2_vnp3_sn15
                                 + 30 vn1_vnp3_sn7 * vn2_vnp3_sn8
                                 + 31 vn1_vnp3_sn7 * vn3_vnp3_sn20
                                 + 84 vn1_vnp3_sn2 * vn2_vnp3_sn11
                                 + 135 vn1_vnp3_sn2 * vn2_vnp3_sn15
                                 + 120 vn1_vnp3_sn2 * vn2_vnp3_sn8
                                 + 35 vn1_vnp3_sn2 * vn3_vnp3_sn20
                                 + 93 vn1_vnp3_sn16 * vn2_vnp3_sn11
                                 + 39 vn1_vnp3_sn16 * vn2_vnp3_sn15
                                 + 60 vn1_vnp3_sn16 * vn2_vnp3_sn8
                                 + 35 vn1_vnp3_sn16 * vn3_vnp3_sn20
                                 + 60 vn2_vnp3_sn11 * vn3_vnp3_sn20
                                 + 20 vn2_vnp3_sn15 * vn3_vnp3_sn20
                                 + 52 vn2_vnp3_sn8 * vn3_vnp3_sn20
                                 + 41 vn3_vnp4_sn12 * vn1_vnp4_sn20
                                 + 104 vn3_vnp4_sn12 * vn1_vnp4_sn17
                                 + 128 vn3_vnp4_sn12 * vn2_vnp4_sn3
                                 + 109 vn3_vnp4_sn12 * vn2_vnp4_sn6
                                 + 103 vn3_vnp4_sn12 * vn2_vnp4_sn9
                                 + 23 vn3_vnp4_sn12 * vn4_vnp4_sn15
                                 + 45 vn3_vnp4_sn12 * vn4_vnp4_sn11
                                 + 119 vn1_vnp4_sn20 * vn3_vnp4_sn8
                                 + 134 vn1_vnp4_sn20 * vn3_vnp4_sn16
                                 + 102 vn1_vnp4_sn17 * vn3_vnp4_sn8
                                 + 117 vn1_vnp4_sn17 * vn3_vnp4_sn16
                                 + 176 vn3_vnp4_sn8 * vn2_vnp4_sn3
                                 + 167 vn3_vnp4_sn8 * vn2_vnp4_sn6
                                 + 96 vn3_vnp4_sn8 * vn2_vnp4_sn9
                                 + 90 vn3_vnp4_sn8 * vn4_vnp4_sn15
                                 + 124 vn3_vnp4_sn8 * vn4_vnp4_sn11
                                 + 136 vn3_vnp4_sn16 * vn2_vnp4_sn3
                                 + 127 vn3_vnp4_sn16 * vn2_vnp4_sn6
                                 + 56 vn3_vnp4_sn16 * vn2_vnp4_sn9
                                 + 50 vn3_vnp4_sn16 * vn4_vnp4_sn15
                                 + 84 vn3_vnp4_sn16 * vn4_vnp4_sn11
                                 + 123 vn2_vnp4_sn3 * vn4_vnp4_sn15
                                 + 120 vn2_vnp4_sn3 * vn4_vnp4_sn11
                                 + 75 vn2_vnp4_sn6 * vn4_vnp4_sn15
                                 + 111 vn2_vnp4_sn6 * vn4_vnp4_sn11
                                 + 75 vn2_vnp4_sn9 * vn4_vnp4_sn15
                                 + 72 vn2_vnp4_sn9 * vn4_vnp4_sn11
                                 + 40 vn4_vnp5_sn4 * vn1_vnp5_sn5
                                 + 158 vn4_vnp5_sn4 * vn2_vnp5_sn12
                                 + 93 vn4_vnp5_sn4 * vn3_vnp5_sn10
                                 + 32 vn1_vnp5_sn5 * vn4_vnp5_sn14
                                 + 31 vn1_vnp5_sn5 * vn4_vnp5_sn11
                                 + 18 vn4_vnp5_sn14 * vn2_vnp5_sn12
                                 + 18 vn4_vnp5_sn14 * vn3_vnp5_sn10
                                 + 67 vn4_vnp5_sn11 * vn2_vnp5_sn12
                                 + 18 vn4_vnp5_sn11 * vn3_vnp5_sn10
                                 + 20 vn2_vnp5_sn12 * vn3_vnp5_sn10
                                 + 30 vn3_vnp6_sn15 * vn1_vnp6_sn13
                                 + 90 vn3_vnp6_sn15 * vn2_vnp6_sn19
                                 + 15 vn3_vnp6_sn15 * vn2_vnp6_sn12
                                 + 7 vn3_vnp6_sn15 * vn4_vnp6_sn14
                                 + 28 vn3_vnp6_sn15 * vn4_vnp6_sn16
                                 + 26 vn3_vnp6_sn15 * vn4_vnp6_sn9
                                 + 48 vn1_vnp6_sn13 * vn3_vnp6_sn2
                                 + 18 vn1_vnp6_sn13 * vn3_vnp6_sn6
                                 + 206 vn1_vnp6_sn13 * vn2_vnp6_sn19
                                 + 73 vn1_vnp6_sn13 * vn2_vnp6_sn12
                                 + 78 vn3_vnp6_sn2 * vn2_vnp6_sn19
                                 + 138 vn3_vnp6_sn2 * vn2_vnp6_sn12
                                 + 38 vn3_vnp6_sn2 * vn4_vnp6_sn14
                                 + 47 vn3_vnp6_sn2 * vn4_vnp6_sn16
                                 + 31 vn3_vnp6_sn2 * vn4_vnp6_sn9
                                 + 111 vn3_vnp6_sn6 * vn2_vnp6_sn19
                                 + 63 vn3_vnp6_sn6 * vn2_vnp6_sn12
                                 + 20 vn3_vnp6_sn6 * vn4_vnp6_sn14
                                 + 35 vn3_vnp6_sn6 * vn4_vnp6_sn16
                                 + 19 vn3_vnp6_sn6 * vn4_vnp6_sn9
                                 + 42 vn2_vnp6_sn19 * vn4_vnp6_sn14
                                 + 114 vn2_vnp6_sn19 * vn4_vnp6_sn16
                                 + 147 vn2_vnp6_sn19 * vn4_vnp6_sn9
                                 + 24 vn2_vnp6_sn12 * vn4_vnp6_sn14
                                 + 69 vn2_vnp6_sn12 * vn4_vnp6_sn16
                                 + 69 vn2_vnp6_sn12 * vn4_vnp6_sn9
                                 + 6 vn2_vnp7_sn6 * vn1_vnp7_sn5
                                 + 39 vn2_vnp7_sn6 * vn3_vnp7_sn9
                                 + 51 vn2_vnp7_sn6 * vn3_vnp7_sn12
                                 + 66 vn2_vnp7_sn6 * vn3_vnp7_sn20
                                 + 99 vn1_vnp7_sn5 * vn2_vnp7_sn15
                                 + 15 vn1_vnp7_sn5 * vn3_vnp7_sn9
                                 + 20 vn1_vnp7_sn5 * vn3_vnp7_sn12
                                 + 39 vn1_vnp7_sn5 * vn3_vnp7_sn20
                                 + 60 vn2_vnp7_sn15 * vn3_vnp7_sn9
                                 + 3 vn2_vnp7_sn15 * vn3_vnp7_sn12
                                 + 12 vn2_vnp7_sn15 * vn3_vnp7_sn20 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_2#0: vn4_vnp1_sn2 <= 8
 CPU_capacity_of_substrate_node_3#1: 3 vn2_vnp4_sn3 <= 8
 CPU_capacity_of_substrate_node_4#2: 3 vn3_vnp1_sn4 + 3 vn4_vnp5_sn4 <= 8
 CPU_capacity_of_substrate_node_5#3: 3 vn1_vnp7_sn5 <= 5
 CPU_capacity_of_substrate_node_6#4: 3 vn2_vnp4_sn6 <= 8
 CPU_capacity_of_substrate_node_8#5: 3 vn2_vnp1_sn8 + 3 vn3_vnp4_sn8 <= 7
 CPU_capacity_of_substrate_node_9#6: 3 vn2_vnp4_sn9 + 3 vn4_vnp6_sn9 <= 8
 CPU_capacity_of_substrate_node_10#7: vn1_vnp1_sn10 <= 4
 CPU_capacity_of_substrate_node_11#8: 3 vn4_vnp4_sn11 + 3 vn4_vnp5_sn11 <= 6
 CPU_capacity_of_substrate_node_12#9: 3 vn3_vnp4_sn12 + vn2_vnp5_sn12
                                 + 3 vn2_vnp6_sn12 <= 5
 CPU_capacity_of_substrate_node_13#10: 3 vn4_vnp3_sn13 + 3 vn1_vnp6_sn13 <= 5
 CPU_capacity_of_substrate_node_14#11: 3 vn4_vnp5_sn14 + 3 vn4_vnp6_sn14 <= 5
 CPU_capacity_of_substrate_node_15#12: 3 vn2_vnp1_sn15 + 3 vn3_vnp2_sn15
                                 + 3 vn4_vnp4_sn15 <= 5
 CPU_capacity_of_substrate_node_16#13: 3 vn2_vnp1_sn16 + 3 vn3_vnp2_sn16
                                 + 3 vn3_vnp4_sn16 + 3 vn4_vnp6_sn16 <= 8
 CPU_capacity_of_substrate_node_17#14: vn1_vnp4_sn17 <= 8
 CPU_capacity_of_substrate_node_19#15: 3 vn2_vnp6_sn19 <= 7
 CPU_capacity_of_substrate_node_20#16: 3 vn3_vnp3_sn20 + vn1_vnp4_sn20 <= 5
Bounds
 0 <= vnp1 <= 1
 0 <= vn3_vnp1_sn4 <= 1
 0 <= vn1_vnp1_sn10 <= 1
 0 <= vn2_vnp1_sn16 <= 1
 0 <= vn2_vnp1_sn8 <= 1
 0 <= vn2_vnp1_sn15 <= 1
 0 <= vn4_vnp1_sn2 <= 1
 0 <= vnp2 <= 1
 0 <= vn3_vnp2_sn16 <= 1
 0 <= vn1_vnp2_sn17 <= 1
 0 <= vn1_vnp2_sn4 <= 1
 0 <= vn1_vnp2_sn19 <= 1
 0 <= vn3_vnp2_sn15 <= 1
 0 <= vn2_vnp2_sn5 <= 1
 0 <= vn2_vnp2_sn2 <= 1
 0 <= vn2_vnp2_sn13 <= 1
 0 <= vn4_vnp2_sn18 <= 1
 0 <= vn4_vnp2_sn1 <= 1
 0 <= vn4_vnp2_sn10 <= 1
 0 <= vnp3 <= 1
 0 <= vn4_vnp3_sn13 <= 1
 0 <= vn1_vnp3_sn7 <= 1
 0 <= vn1_vnp3_sn2 <= 1
 0 <= vn1_vnp3_sn16 <= 1
 0 <= vn2_vnp3_sn11 <= 1
 0 <= vn2_vnp3_sn15 <= 1
 0 <= vn2_vnp3_sn8 <= 1
 0 <= vn3_vnp3_sn20 <= 1
 0 <= vnp4 <= 1
 0 <= vn3_vnp4_sn12 <= 1
 0 <= vn1_vnp4_sn20 <= 1
 0 <= vn1_vnp4_sn17 <= 1
 0 <= vn3_vnp4_sn8 <= 1
 0 <= vn3_vnp4_sn16 <= 1
 0 <= vn2_vnp4_sn3 <= 1
 0 <= vn2_vnp4_sn6 <= 1
 0 <= vn2_vnp4_sn9 <= 1
 0 <= vn4_vnp4_sn15 <= 1
 0 <= vn4_vnp4_sn11 <= 1
 0 <= vnp5 <= 1
 0 <= vn4_vnp5_sn4 <= 1
 0 <= vn1_vnp5_sn5 <= 1
 0 <= vn4_vnp5_sn14 <= 1
 0 <= vn4_vnp5_sn11 <= 1
 0 <= vn2_vnp5_sn12 <= 1
 0 <= vn3_vnp5_sn10 <= 1
 0 <= vnp6 <= 1
 0 <= vn3_vnp6_sn15 <= 1
 0 <= vn1_vnp6_sn13 <= 1
 0 <= vn3_vnp6_sn2 <= 1
 0 <= vn3_vnp6_sn6 <= 1
 0 <= vn2_vnp6_sn19 <= 1
 0 <= vn2_vnp6_sn12 <= 1
 0 <= vn4_vnp6_sn14 <= 1
 0 <= vn4_vnp6_sn16 <= 1
 0 <= vn4_vnp6_sn9 <= 1
 0 <= vnp7 <= 1
 0 <= vn2_vnp7_sn6 <= 1
 0 <= vn1_vnp7_sn5 <= 1
 0 <= vn2_vnp7_sn15 <= 1
 0 <= vn3_vnp7_sn9 <= 1
 0 <= vn3_vnp7_sn12 <= 1
 0 <= vn3_vnp7_sn20 <= 1
Binaries
 vnp1  vn3_vnp1_sn4  vn1_vnp1_sn10  vn2_vnp1_sn16  vn2_vnp1_sn8  vn2_vnp1_sn15 
 vn4_vnp1_sn2  vnp2  vn3_vnp2_sn16  vn1_vnp2_sn17  vn1_vnp2_sn4  vn1_vnp2_sn19 
 vn3_vnp2_sn15  vn2_vnp2_sn5  vn2_vnp2_sn2  vn2_vnp2_sn13  vn4_vnp2_sn18 
 vn4_vnp2_sn1  vn4_vnp2_sn10  vnp3  vn4_vnp3_sn13  vn1_vnp3_sn7  vn1_vnp3_sn2 
 vn1_vnp3_sn16  vn2_vnp3_sn11  vn2_vnp3_sn15  vn2_vnp3_sn8  vn3_vnp3_sn20 
 vnp4  vn3_vnp4_sn12  vn1_vnp4_sn20  vn1_vnp4_sn17  vn3_vnp4_sn8 
 vn3_vnp4_sn16  vn2_vnp4_sn3  vn2_vnp4_sn6  vn2_vnp4_sn9  vn4_vnp4_sn15 
 vn4_vnp4_sn11  vnp5  vn4_vnp5_sn4  vn1_vnp5_sn5  vn4_vnp5_sn14  vn4_vnp5_sn11 
 vn2_vnp5_sn12  vn3_vnp5_sn10  vnp6  vn3_vnp6_sn15  vn1_vnp6_sn13 
 vn3_vnp6_sn2  vn3_vnp6_sn6  vn2_vnp6_sn19  vn2_vnp6_sn12  vn4_vnp6_sn14 
 vn4_vnp6_sn16  vn4_vnp6_sn9  vnp7  vn2_vnp7_sn6  vn1_vnp7_sn5  vn2_vnp7_sn15 
 vn3_vnp7_sn9  vn3_vnp7_sn12  vn3_vnp7_sn20 
End
