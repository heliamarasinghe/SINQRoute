\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 750 vnp1 + 900 vnp2 + 799 vnp3 + 930 vnp4 + 995 vnp5 + 837 vnp6
      + 714 vnp7 + [ - 220 vn2_vnp1_sn11 * vn1_vnp1_sn9
      - 96 vn2_vnp1_sn11 * vn4_vnp1_sn10 - 154 vn2_vnp1_sn11 * vn4_vnp1_sn12
      - 266 vn2_vnp1_sn11 * vn4_vnp1_sn13 - 166 vn1_vnp1_sn9 * vn2_vnp1_sn6
      - 156 vn1_vnp1_sn9 * vn2_vnp1_sn2 - 48 vn1_vnp1_sn9 * vn4_vnp1_sn10
      - 142 vn1_vnp1_sn9 * vn4_vnp1_sn12 - 254 vn1_vnp1_sn9 * vn4_vnp1_sn13
      - 136 vn1_vnp1_sn9 * vn3_vnp1_sn20 - 44 vn1_vnp1_sn9 * vn3_vnp1_sn3
      - 144 vn2_vnp1_sn6 * vn4_vnp1_sn10 - 238 vn2_vnp1_sn6 * vn4_vnp1_sn12
      - 350 vn2_vnp1_sn6 * vn4_vnp1_sn13 - 224 vn2_vnp1_sn2 * vn4_vnp1_sn10
      - 318 vn2_vnp1_sn2 * vn4_vnp1_sn12 - 430 vn2_vnp1_sn2 * vn4_vnp1_sn13
      - 212 vn4_vnp1_sn10 * vn3_vnp1_sn20 - 128 vn4_vnp1_sn10 * vn3_vnp1_sn3
      - 102 vn4_vnp1_sn12 * vn3_vnp1_sn20 - 222 vn4_vnp1_sn12 * vn3_vnp1_sn3
      - 214 vn4_vnp1_sn13 * vn3_vnp1_sn20 - 334 vn4_vnp1_sn13 * vn3_vnp1_sn3
      - 244 vn3_vnp2_sn11 * vn1_vnp2_sn9 - 306 vn3_vnp2_sn11 * vn2_vnp2_sn13
      - 166 vn3_vnp2_sn11 * vn2_vnp2_sn3 - 164 vn3_vnp2_sn11 * vn2_vnp2_sn14
      - 284 vn3_vnp2_sn11 * vn4_vnp2_sn7 - 324 vn1_vnp2_sn9 * vn3_vnp2_sn20
      - 184 vn1_vnp2_sn9 * vn4_vnp2_sn7 - 282 vn3_vnp2_sn20 * vn2_vnp2_sn13
      - 390 vn3_vnp2_sn20 * vn2_vnp2_sn3 - 172 vn3_vnp2_sn20 * vn2_vnp2_sn14
      - 180 vn3_vnp2_sn20 * vn4_vnp2_sn7 - 180 vn2_vnp2_sn13 * vn4_vnp2_sn7
      - 68 vn2_vnp2_sn3 * vn4_vnp2_sn7 - 144 vn2_vnp2_sn14 * vn4_vnp2_sn7
      - 84 vn2_vnp3_sn15 * vn1_vnp3_sn12 - 186 vn2_vnp3_sn15 * vn4_vnp3_sn1
      - 158 vn2_vnp3_sn15 * vn4_vnp3_sn9 - 146 vn2_vnp3_sn15 * vn4_vnp3_sn7
      - 276 vn2_vnp3_sn15 * vn3_vnp3_sn2 - 198 vn2_vnp3_sn15 * vn3_vnp3_sn8
      - 110 vn1_vnp3_sn12 * vn2_vnp3_sn17 - 116 vn1_vnp3_sn12 * vn2_vnp3_sn16
      - 480 vn1_vnp3_sn12 * vn3_vnp3_sn2 - 262 vn1_vnp3_sn12 * vn3_vnp3_sn8
      - 180 vn2_vnp3_sn17 * vn4_vnp3_sn1 - 76 vn2_vnp3_sn17 * vn4_vnp3_sn9
      - 156 vn2_vnp3_sn17 * vn4_vnp3_sn7 - 244 vn2_vnp3_sn17 * vn3_vnp3_sn2
      - 52 vn2_vnp3_sn17 * vn3_vnp3_sn8 - 186 vn2_vnp3_sn16 * vn4_vnp3_sn1
      - 86 vn2_vnp3_sn16 * vn4_vnp3_sn9 - 162 vn2_vnp3_sn16 * vn4_vnp3_sn7
      - 232 vn2_vnp3_sn16 * vn3_vnp3_sn2 - 100 vn2_vnp3_sn16 * vn3_vnp3_sn8
      - 102 vn3_vnp4_sn5 * vn1_vnp4_sn13 - 212 vn3_vnp4_sn5 * vn2_vnp4_sn2
      - 182 vn3_vnp4_sn5 * vn2_vnp4_sn20 - 300 vn3_vnp4_sn5 * vn2_vnp4_sn7
      - 86 vn1_vnp4_sn13 * vn3_vnp4_sn15 - 280 vn1_vnp4_sn13 * vn4_vnp4_sn1
      - 420 vn3_vnp4_sn15 * vn2_vnp4_sn2 - 46 vn3_vnp4_sn15 * vn2_vnp4_sn20
      - 220 vn3_vnp4_sn15 * vn2_vnp4_sn7 - 64 vn4_vnp4_sn1 * vn2_vnp4_sn2
      - 226 vn4_vnp4_sn1 * vn2_vnp4_sn20 - 154 vn4_vnp4_sn1 * vn2_vnp4_sn7
      - 76 vn4_vnp5_sn13 * vn1_vnp5_sn10 - 110 vn4_vnp5_sn13 * vn1_vnp5_sn3
      - 94 vn4_vnp5_sn13 * vn2_vnp5_sn17 - 148 vn4_vnp5_sn13 * vn2_vnp5_sn4
      - 94 vn4_vnp5_sn13 * vn2_vnp5_sn16 - 262 vn4_vnp5_sn13 * vn3_vnp5_sn1
      - 162 vn4_vnp5_sn13 * vn3_vnp5_sn9 - 214 vn4_vnp5_sn13 * vn3_vnp5_sn7
      - 262 vn1_vnp5_sn10 * vn2_vnp5_sn17 - 172 vn1_vnp5_sn10 * vn2_vnp5_sn4
      - 124 vn1_vnp5_sn10 * vn2_vnp5_sn16 - 268 vn1_vnp5_sn10 * vn3_vnp5_sn1
      - 36 vn1_vnp5_sn10 * vn3_vnp5_sn9 - 224 vn1_vnp5_sn10 * vn3_vnp5_sn7
      - 284 vn1_vnp5_sn3 * vn2_vnp5_sn17 - 92 vn1_vnp5_sn3 * vn2_vnp5_sn4
      - 146 vn1_vnp5_sn3 * vn2_vnp5_sn16 - 98 vn1_vnp5_sn3 * vn3_vnp5_sn1
      - 58 vn1_vnp5_sn3 * vn3_vnp5_sn9 - 144 vn1_vnp5_sn3 * vn3_vnp5_sn7
      - 152 vn2_vnp5_sn17 * vn3_vnp5_sn1 - 172 vn2_vnp5_sn17 * vn3_vnp5_sn9
      - 124 vn2_vnp5_sn17 * vn3_vnp5_sn7 - 118 vn2_vnp5_sn4 * vn3_vnp5_sn1
      - 114 vn2_vnp5_sn4 * vn3_vnp5_sn9 - 90 vn2_vnp5_sn4 * vn3_vnp5_sn7
      - 170 vn2_vnp5_sn16 * vn3_vnp5_sn1 - 74 vn2_vnp5_sn16 * vn3_vnp5_sn9
      - 142 vn2_vnp5_sn16 * vn3_vnp5_sn7 - 332 vn2_vnp6_sn6 * vn1_vnp6_sn2
      - 520 vn2_vnp6_sn6 * vn1_vnp6_sn13 - 376 vn2_vnp6_sn6 * vn3_vnp6_sn1
      - 450 vn2_vnp6_sn6 * vn3_vnp6_sn7 - 278 vn2_vnp6_sn6 * vn3_vnp6_sn8
      - 24 vn1_vnp6_sn2 * vn3_vnp6_sn1 - 92 vn1_vnp6_sn2 * vn3_vnp6_sn7
      - 144 vn1_vnp6_sn2 * vn3_vnp6_sn8 - 262 vn1_vnp6_sn13 * vn3_vnp6_sn1
      - 214 vn1_vnp6_sn13 * vn3_vnp6_sn7 - 230 vn1_vnp6_sn13 * vn3_vnp6_sn8
      - 120 vn4_vnp7_sn10 * vn1_vnp7_sn12 - 196 vn4_vnp7_sn10 * vn1_vnp7_sn4
      - 352 vn4_vnp7_sn10 * vn3_vnp7_sn19 - 116 vn1_vnp7_sn12 * vn4_vnp7_sn8
      - 300 vn1_vnp7_sn12 * vn2_vnp7_sn3 - 410 vn1_vnp7_sn12 * vn2_vnp7_sn2
      - 84 vn1_vnp7_sn4 * vn4_vnp7_sn8 - 140 vn1_vnp7_sn4 * vn2_vnp7_sn3
      - 250 vn1_vnp7_sn4 * vn2_vnp7_sn2 - 186 vn4_vnp7_sn8 * vn3_vnp7_sn19
      - 324 vn3_vnp7_sn19 * vn2_vnp7_sn3 - 250 vn3_vnp7_sn19 * vn2_vnp7_sn2
      ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn9 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn11
                                 + vn2_vnp1_sn6 + vn2_vnp1_sn2 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn20
                                 + vn3_vnp1_sn3 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn10
                                 + vn4_vnp1_sn12 + vn4_vnp1_sn13 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn9 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn13
                                 + vn2_vnp2_sn3 + vn2_vnp2_sn14 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn11
                                 + vn3_vnp2_sn20 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#7: - vnp2 + vn4_vnp2_sn7 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#8: - vnp3 + vn1_vnp3_sn12 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#9: - vnp3 + vn2_vnp3_sn15
                                 + vn2_vnp3_sn17 + vn2_vnp3_sn16 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#10: - vnp3 + vn3_vnp3_sn2
                                 + vn3_vnp3_sn8 <= 0
 _Embedding_clash_const_of_vnode4_vnp_3#11: - vnp3 + vn4_vnp3_sn1
                                 + vn4_vnp3_sn9 + vn4_vnp3_sn7 <= 0
 _Embedding_clash_const_of_vnode1_vnp_4#12: - vnp4 + vn1_vnp4_sn13 <= 0
 _Embedding_clash_const_of_vnode2_vnp_4#13: - vnp4 + vn2_vnp4_sn2
                                 + vn2_vnp4_sn20 + vn2_vnp4_sn7 <= 0
 _Embedding_clash_const_of_vnode3_vnp_4#14: - vnp4 + vn3_vnp4_sn5
                                 + vn3_vnp4_sn15 <= 0
 _Embedding_clash_const_of_vnode4_vnp_4#15: - vnp4 + vn4_vnp4_sn1 <= 0
 _Embedding_clash_const_of_vnode1_vnp_5#16: - vnp5 + vn1_vnp5_sn10
                                 + vn1_vnp5_sn3 <= 0
 _Embedding_clash_const_of_vnode2_vnp_5#17: - vnp5 + vn2_vnp5_sn17
                                 + vn2_vnp5_sn4 + vn2_vnp5_sn16 <= 0
 _Embedding_clash_const_of_vnode3_vnp_5#18: - vnp5 + vn3_vnp5_sn1
                                 + vn3_vnp5_sn9 + vn3_vnp5_sn7 <= 0
 _Embedding_clash_const_of_vnode4_vnp_5#19: - vnp5 + vn4_vnp5_sn13 <= 0
 _Embedding_clash_const_of_vnode1_vnp_6#20: - vnp6 + vn1_vnp6_sn2
                                 + vn1_vnp6_sn13 <= 0
 _Embedding_clash_const_of_vnode2_vnp_6#21: - vnp6 + vn2_vnp6_sn6 <= 0
 _Embedding_clash_const_of_vnode3_vnp_6#22: - vnp6 + vn3_vnp6_sn1
                                 + vn3_vnp6_sn7 + vn3_vnp6_sn8 <= 0
 _Embedding_clash_const_of_vnode1_vnp_7#23: - vnp7 + vn1_vnp7_sn12
                                 + vn1_vnp7_sn4 <= 0
 _Embedding_clash_const_of_vnode2_vnp_7#24: - vnp7 + vn2_vnp7_sn3
                                 + vn2_vnp7_sn2 <= 0
 _Embedding_clash_const_of_vnode3_vnp_7#25: - vnp7 + vn3_vnp7_sn19 <= 0
 _Embedding_clash_const_of_vnode4_vnp_7#26: - vnp7 + vn4_vnp7_sn10
                                 + vn4_vnp7_sn8 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn2_vnp1_sn11 * vn1_vnp1_sn9
                                 - vn1_vnp1_sn9 * vn2_vnp1_sn6
                                 - vn1_vnp1_sn9 * vn2_vnp1_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn2_vnp1_sn11 * vn4_vnp1_sn10
                                 - vn2_vnp1_sn11 * vn4_vnp1_sn12
                                 - vn2_vnp1_sn11 * vn4_vnp1_sn13
                                 - vn2_vnp1_sn6 * vn4_vnp1_sn10
                                 - vn2_vnp1_sn6 * vn4_vnp1_sn12
                                 - vn2_vnp1_sn6 * vn4_vnp1_sn13
                                 - vn2_vnp1_sn2 * vn4_vnp1_sn10
                                 - vn2_vnp1_sn2 * vn4_vnp1_sn12
                                 - vn2_vnp1_sn2 * vn4_vnp1_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn4_vnp1_sn10 * vn3_vnp1_sn20
                                 - vn4_vnp1_sn10 * vn3_vnp1_sn3
                                 - vn4_vnp1_sn12 * vn3_vnp1_sn20
                                 - vn4_vnp1_sn12 * vn3_vnp1_sn3
                                 - vn4_vnp1_sn13 * vn3_vnp1_sn20
                                 - vn4_vnp1_sn13 * vn3_vnp1_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn1_vnp1_sn9 * vn4_vnp1_sn10
                                 - vn1_vnp1_sn9 * vn4_vnp1_sn12
                                 - vn1_vnp1_sn9 * vn4_vnp1_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_5#4: vnp1
                                 + [ - vn1_vnp1_sn9 * vn3_vnp1_sn20
                                 - vn1_vnp1_sn9 * vn3_vnp1_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn3_vnp2_sn11 * vn1_vnp2_sn9
                                 - vn1_vnp2_sn9 * vn3_vnp2_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn3_vnp2_sn11 * vn2_vnp2_sn13
                                 - vn3_vnp2_sn11 * vn2_vnp2_sn3
                                 - vn3_vnp2_sn11 * vn2_vnp2_sn14
                                 - vn3_vnp2_sn20 * vn2_vnp2_sn13
                                 - vn3_vnp2_sn20 * vn2_vnp2_sn3
                                 - vn3_vnp2_sn20 * vn2_vnp2_sn14 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_8#7: vnp2
                                 + [ - vn3_vnp2_sn11 * vn4_vnp2_sn7
                                 - vn3_vnp2_sn20 * vn4_vnp2_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_9#8: vnp2
                                 + [ - vn1_vnp2_sn9 * vn4_vnp2_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_10#9: vnp2
                                 + [ - vn2_vnp2_sn13 * vn4_vnp2_sn7
                                 - vn2_vnp2_sn3 * vn4_vnp2_sn7
                                 - vn2_vnp2_sn14 * vn4_vnp2_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_11#10: vnp3
                                 + [ - vn2_vnp3_sn15 * vn1_vnp3_sn12
                                 - vn1_vnp3_sn12 * vn2_vnp3_sn17
                                 - vn1_vnp3_sn12 * vn2_vnp3_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_12#11: vnp3
                                 + [ - vn2_vnp3_sn15 * vn4_vnp3_sn1
                                 - vn2_vnp3_sn15 * vn4_vnp3_sn9
                                 - vn2_vnp3_sn15 * vn4_vnp3_sn7
                                 - vn2_vnp3_sn17 * vn4_vnp3_sn1
                                 - vn2_vnp3_sn17 * vn4_vnp3_sn9
                                 - vn2_vnp3_sn17 * vn4_vnp3_sn7
                                 - vn2_vnp3_sn16 * vn4_vnp3_sn1
                                 - vn2_vnp3_sn16 * vn4_vnp3_sn9
                                 - vn2_vnp3_sn16 * vn4_vnp3_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_13#12: vnp3
                                 + [ - vn1_vnp3_sn12 * vn3_vnp3_sn2
                                 - vn1_vnp3_sn12 * vn3_vnp3_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_14#13: vnp3
                                 + [ - vn2_vnp3_sn15 * vn3_vnp3_sn2
                                 - vn2_vnp3_sn15 * vn3_vnp3_sn8
                                 - vn2_vnp3_sn17 * vn3_vnp3_sn2
                                 - vn2_vnp3_sn17 * vn3_vnp3_sn8
                                 - vn2_vnp3_sn16 * vn3_vnp3_sn2
                                 - vn2_vnp3_sn16 * vn3_vnp3_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_15#14: vnp4
                                 + [ - vn3_vnp4_sn5 * vn1_vnp4_sn13
                                 - vn1_vnp4_sn13 * vn3_vnp4_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_16#15: vnp4
                                 + [ - vn4_vnp4_sn1 * vn2_vnp4_sn2
                                 - vn4_vnp4_sn1 * vn2_vnp4_sn20
                                 - vn4_vnp4_sn1 * vn2_vnp4_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_17#16: vnp4
                                 + [ - vn3_vnp4_sn5 * vn2_vnp4_sn2
                                 - vn3_vnp4_sn5 * vn2_vnp4_sn20
                                 - vn3_vnp4_sn5 * vn2_vnp4_sn7
                                 - vn3_vnp4_sn15 * vn2_vnp4_sn2
                                 - vn3_vnp4_sn15 * vn2_vnp4_sn20
                                 - vn3_vnp4_sn15 * vn2_vnp4_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_18#17: vnp4
                                 + [ - vn1_vnp4_sn13 * vn4_vnp4_sn1 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_19#18: vnp5
                                 + [ - vn4_vnp5_sn13 * vn1_vnp5_sn10
                                 - vn4_vnp5_sn13 * vn1_vnp5_sn3 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_20#19: vnp5
                                 + [ - vn1_vnp5_sn10 * vn2_vnp5_sn17
                                 - vn1_vnp5_sn10 * vn2_vnp5_sn4
                                 - vn1_vnp5_sn10 * vn2_vnp5_sn16
                                 - vn1_vnp5_sn3 * vn2_vnp5_sn17
                                 - vn1_vnp5_sn3 * vn2_vnp5_sn4
                                 - vn1_vnp5_sn3 * vn2_vnp5_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_21#20: vnp5
                                 + [ - vn1_vnp5_sn10 * vn3_vnp5_sn1
                                 - vn1_vnp5_sn10 * vn3_vnp5_sn9
                                 - vn1_vnp5_sn10 * vn3_vnp5_sn7
                                 - vn1_vnp5_sn3 * vn3_vnp5_sn1
                                 - vn1_vnp5_sn3 * vn3_vnp5_sn9
                                 - vn1_vnp5_sn3 * vn3_vnp5_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_22#21: vnp5
                                 + [ - vn2_vnp5_sn17 * vn3_vnp5_sn1
                                 - vn2_vnp5_sn17 * vn3_vnp5_sn9
                                 - vn2_vnp5_sn17 * vn3_vnp5_sn7
                                 - vn2_vnp5_sn4 * vn3_vnp5_sn1
                                 - vn2_vnp5_sn4 * vn3_vnp5_sn9
                                 - vn2_vnp5_sn4 * vn3_vnp5_sn7
                                 - vn2_vnp5_sn16 * vn3_vnp5_sn1
                                 - vn2_vnp5_sn16 * vn3_vnp5_sn9
                                 - vn2_vnp5_sn16 * vn3_vnp5_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_23#22: vnp5
                                 + [ - vn4_vnp5_sn13 * vn3_vnp5_sn1
                                 - vn4_vnp5_sn13 * vn3_vnp5_sn9
                                 - vn4_vnp5_sn13 * vn3_vnp5_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_24#23: vnp5
                                 + [ - vn4_vnp5_sn13 * vn2_vnp5_sn17
                                 - vn4_vnp5_sn13 * vn2_vnp5_sn4
                                 - vn4_vnp5_sn13 * vn2_vnp5_sn16 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_25#24: vnp6
                                 + [ - vn2_vnp6_sn6 * vn1_vnp6_sn2
                                 - vn2_vnp6_sn6 * vn1_vnp6_sn13 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_26#25: vnp6
                                 + [ - vn2_vnp6_sn6 * vn3_vnp6_sn1
                                 - vn2_vnp6_sn6 * vn3_vnp6_sn7
                                 - vn2_vnp6_sn6 * vn3_vnp6_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_6_Virtual_Link_27#26: vnp6
                                 + [ - vn1_vnp6_sn2 * vn3_vnp6_sn1
                                 - vn1_vnp6_sn2 * vn3_vnp6_sn7
                                 - vn1_vnp6_sn2 * vn3_vnp6_sn8
                                 - vn1_vnp6_sn13 * vn3_vnp6_sn1
                                 - vn1_vnp6_sn13 * vn3_vnp6_sn7
                                 - vn1_vnp6_sn13 * vn3_vnp6_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_28#27: vnp7
                                 + [ - vn4_vnp7_sn10 * vn1_vnp7_sn12
                                 - vn4_vnp7_sn10 * vn1_vnp7_sn4
                                 - vn1_vnp7_sn12 * vn4_vnp7_sn8
                                 - vn1_vnp7_sn4 * vn4_vnp7_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_29#28: vnp7
                                 + [ - vn3_vnp7_sn19 * vn2_vnp7_sn3
                                 - vn3_vnp7_sn19 * vn2_vnp7_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_30#29: vnp7
                                 + [ - vn4_vnp7_sn10 * vn3_vnp7_sn19
                                 - vn4_vnp7_sn8 * vn3_vnp7_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_7_Virtual_Link_31#30: vnp7
                                 + [ - vn1_vnp7_sn12 * vn2_vnp7_sn3
                                 - vn1_vnp7_sn12 * vn2_vnp7_sn2
                                 - vn1_vnp7_sn4 * vn2_vnp7_sn3
                                 - vn1_vnp7_sn4 * vn2_vnp7_sn2 ] <= 0
 q32#31:                         - 750 vnp1 - 900 vnp2 - 799 vnp3 - 930 vnp4
                                 - 995 vnp5 - 837 vnp6 - 714 vnp7
                                 + [ 110 vn2_vnp1_sn11 * vn1_vnp1_sn9
                                 + 48 vn2_vnp1_sn11 * vn4_vnp1_sn10
                                 + 77 vn2_vnp1_sn11 * vn4_vnp1_sn12
                                 + 133 vn2_vnp1_sn11 * vn4_vnp1_sn13
                                 + 83 vn1_vnp1_sn9 * vn2_vnp1_sn6
                                 + 78 vn1_vnp1_sn9 * vn2_vnp1_sn2
                                 + 24 vn1_vnp1_sn9 * vn4_vnp1_sn10
                                 + 71 vn1_vnp1_sn9 * vn4_vnp1_sn12
                                 + 127 vn1_vnp1_sn9 * vn4_vnp1_sn13
                                 + 68 vn1_vnp1_sn9 * vn3_vnp1_sn20
                                 + 22 vn1_vnp1_sn9 * vn3_vnp1_sn3
                                 + 72 vn2_vnp1_sn6 * vn4_vnp1_sn10
                                 + 119 vn2_vnp1_sn6 * vn4_vnp1_sn12
                                 + 175 vn2_vnp1_sn6 * vn4_vnp1_sn13
                                 + 112 vn2_vnp1_sn2 * vn4_vnp1_sn10
                                 + 159 vn2_vnp1_sn2 * vn4_vnp1_sn12
                                 + 215 vn2_vnp1_sn2 * vn4_vnp1_sn13
                                 + 106 vn4_vnp1_sn10 * vn3_vnp1_sn20
                                 + 64 vn4_vnp1_sn10 * vn3_vnp1_sn3
                                 + 51 vn4_vnp1_sn12 * vn3_vnp1_sn20
                                 + 111 vn4_vnp1_sn12 * vn3_vnp1_sn3
                                 + 107 vn4_vnp1_sn13 * vn3_vnp1_sn20
                                 + 167 vn4_vnp1_sn13 * vn3_vnp1_sn3
                                 + 122 vn3_vnp2_sn11 * vn1_vnp2_sn9
                                 + 153 vn3_vnp2_sn11 * vn2_vnp2_sn13
                                 + 83 vn3_vnp2_sn11 * vn2_vnp2_sn3
                                 + 82 vn3_vnp2_sn11 * vn2_vnp2_sn14
                                 + 142 vn3_vnp2_sn11 * vn4_vnp2_sn7
                                 + 162 vn1_vnp2_sn9 * vn3_vnp2_sn20
                                 + 92 vn1_vnp2_sn9 * vn4_vnp2_sn7
                                 + 141 vn3_vnp2_sn20 * vn2_vnp2_sn13
                                 + 195 vn3_vnp2_sn20 * vn2_vnp2_sn3
                                 + 86 vn3_vnp2_sn20 * vn2_vnp2_sn14
                                 + 90 vn3_vnp2_sn20 * vn4_vnp2_sn7
                                 + 90 vn2_vnp2_sn13 * vn4_vnp2_sn7
                                 + 34 vn2_vnp2_sn3 * vn4_vnp2_sn7
                                 + 72 vn2_vnp2_sn14 * vn4_vnp2_sn7
                                 + 42 vn2_vnp3_sn15 * vn1_vnp3_sn12
                                 + 93 vn2_vnp3_sn15 * vn4_vnp3_sn1
                                 + 79 vn2_vnp3_sn15 * vn4_vnp3_sn9
                                 + 73 vn2_vnp3_sn15 * vn4_vnp3_sn7
                                 + 138 vn2_vnp3_sn15 * vn3_vnp3_sn2
                                 + 99 vn2_vnp3_sn15 * vn3_vnp3_sn8
                                 + 55 vn1_vnp3_sn12 * vn2_vnp3_sn17
                                 + 58 vn1_vnp3_sn12 * vn2_vnp3_sn16
                                 + 240 vn1_vnp3_sn12 * vn3_vnp3_sn2
                                 + 131 vn1_vnp3_sn12 * vn3_vnp3_sn8
                                 + 90 vn2_vnp3_sn17 * vn4_vnp3_sn1
                                 + 38 vn2_vnp3_sn17 * vn4_vnp3_sn9
                                 + 78 vn2_vnp3_sn17 * vn4_vnp3_sn7
                                 + 122 vn2_vnp3_sn17 * vn3_vnp3_sn2
                                 + 26 vn2_vnp3_sn17 * vn3_vnp3_sn8
                                 + 93 vn2_vnp3_sn16 * vn4_vnp3_sn1
                                 + 43 vn2_vnp3_sn16 * vn4_vnp3_sn9
                                 + 81 vn2_vnp3_sn16 * vn4_vnp3_sn7
                                 + 116 vn2_vnp3_sn16 * vn3_vnp3_sn2
                                 + 50 vn2_vnp3_sn16 * vn3_vnp3_sn8
                                 + 51 vn3_vnp4_sn5 * vn1_vnp4_sn13
                                 + 106 vn3_vnp4_sn5 * vn2_vnp4_sn2
                                 + 91 vn3_vnp4_sn5 * vn2_vnp4_sn20
                                 + 150 vn3_vnp4_sn5 * vn2_vnp4_sn7
                                 + 43 vn1_vnp4_sn13 * vn3_vnp4_sn15
                                 + 140 vn1_vnp4_sn13 * vn4_vnp4_sn1
                                 + 210 vn3_vnp4_sn15 * vn2_vnp4_sn2
                                 + 23 vn3_vnp4_sn15 * vn2_vnp4_sn20
                                 + 110 vn3_vnp4_sn15 * vn2_vnp4_sn7
                                 + 32 vn4_vnp4_sn1 * vn2_vnp4_sn2
                                 + 113 vn4_vnp4_sn1 * vn2_vnp4_sn20
                                 + 77 vn4_vnp4_sn1 * vn2_vnp4_sn7
                                 + 38 vn4_vnp5_sn13 * vn1_vnp5_sn10
                                 + 55 vn4_vnp5_sn13 * vn1_vnp5_sn3
                                 + 47 vn4_vnp5_sn13 * vn2_vnp5_sn17
                                 + 74 vn4_vnp5_sn13 * vn2_vnp5_sn4
                                 + 47 vn4_vnp5_sn13 * vn2_vnp5_sn16
                                 + 131 vn4_vnp5_sn13 * vn3_vnp5_sn1
                                 + 81 vn4_vnp5_sn13 * vn3_vnp5_sn9
                                 + 107 vn4_vnp5_sn13 * vn3_vnp5_sn7
                                 + 131 vn1_vnp5_sn10 * vn2_vnp5_sn17
                                 + 86 vn1_vnp5_sn10 * vn2_vnp5_sn4
                                 + 62 vn1_vnp5_sn10 * vn2_vnp5_sn16
                                 + 134 vn1_vnp5_sn10 * vn3_vnp5_sn1
                                 + 18 vn1_vnp5_sn10 * vn3_vnp5_sn9
                                 + 112 vn1_vnp5_sn10 * vn3_vnp5_sn7
                                 + 142 vn1_vnp5_sn3 * vn2_vnp5_sn17
                                 + 46 vn1_vnp5_sn3 * vn2_vnp5_sn4
                                 + 73 vn1_vnp5_sn3 * vn2_vnp5_sn16
                                 + 49 vn1_vnp5_sn3 * vn3_vnp5_sn1
                                 + 29 vn1_vnp5_sn3 * vn3_vnp5_sn9
                                 + 72 vn1_vnp5_sn3 * vn3_vnp5_sn7
                                 + 76 vn2_vnp5_sn17 * vn3_vnp5_sn1
                                 + 86 vn2_vnp5_sn17 * vn3_vnp5_sn9
                                 + 62 vn2_vnp5_sn17 * vn3_vnp5_sn7
                                 + 59 vn2_vnp5_sn4 * vn3_vnp5_sn1
                                 + 57 vn2_vnp5_sn4 * vn3_vnp5_sn9
                                 + 45 vn2_vnp5_sn4 * vn3_vnp5_sn7
                                 + 85 vn2_vnp5_sn16 * vn3_vnp5_sn1
                                 + 37 vn2_vnp5_sn16 * vn3_vnp5_sn9
                                 + 71 vn2_vnp5_sn16 * vn3_vnp5_sn7
                                 + 166 vn2_vnp6_sn6 * vn1_vnp6_sn2
                                 + 260 vn2_vnp6_sn6 * vn1_vnp6_sn13
                                 + 188 vn2_vnp6_sn6 * vn3_vnp6_sn1
                                 + 225 vn2_vnp6_sn6 * vn3_vnp6_sn7
                                 + 139 vn2_vnp6_sn6 * vn3_vnp6_sn8
                                 + 12 vn1_vnp6_sn2 * vn3_vnp6_sn1
                                 + 46 vn1_vnp6_sn2 * vn3_vnp6_sn7
                                 + 72 vn1_vnp6_sn2 * vn3_vnp6_sn8
                                 + 131 vn1_vnp6_sn13 * vn3_vnp6_sn1
                                 + 107 vn1_vnp6_sn13 * vn3_vnp6_sn7
                                 + 115 vn1_vnp6_sn13 * vn3_vnp6_sn8
                                 + 60 vn4_vnp7_sn10 * vn1_vnp7_sn12
                                 + 98 vn4_vnp7_sn10 * vn1_vnp7_sn4
                                 + 176 vn4_vnp7_sn10 * vn3_vnp7_sn19
                                 + 58 vn1_vnp7_sn12 * vn4_vnp7_sn8
                                 + 150 vn1_vnp7_sn12 * vn2_vnp7_sn3
                                 + 205 vn1_vnp7_sn12 * vn2_vnp7_sn2
                                 + 42 vn1_vnp7_sn4 * vn4_vnp7_sn8
                                 + 70 vn1_vnp7_sn4 * vn2_vnp7_sn3
                                 + 125 vn1_vnp7_sn4 * vn2_vnp7_sn2
                                 + 93 vn4_vnp7_sn8 * vn3_vnp7_sn19
                                 + 162 vn3_vnp7_sn19 * vn2_vnp7_sn3
                                 + 125 vn3_vnp7_sn19 * vn2_vnp7_sn2 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: 4 vn4_vnp3_sn1 + 3 vn4_vnp4_sn1
                                 + 2 vn3_vnp5_sn1 + 2 vn3_vnp6_sn1 <= 8
 CPU_capacity_of_substrate_node_2#1: 5 vn2_vnp1_sn2 + 3 vn3_vnp3_sn2
                                 + 5 vn2_vnp4_sn2 + vn1_vnp6_sn2
                                 + 5 vn2_vnp7_sn2 <= 7
 CPU_capacity_of_substrate_node_3#2: 2 vn3_vnp1_sn3 + 5 vn2_vnp2_sn3
                                 + vn1_vnp5_sn3 + 5 vn2_vnp7_sn3 <= 5
 CPU_capacity_of_substrate_node_4#3: 3 vn2_vnp5_sn4 + 5 vn1_vnp7_sn4 <= 7
 CPU_capacity_of_substrate_node_5#4: 2 vn3_vnp4_sn5 <= 8
 CPU_capacity_of_substrate_node_6#5: 5 vn2_vnp1_sn6 + vn2_vnp6_sn6 <= 8
 CPU_capacity_of_substrate_node_7#6: 2 vn4_vnp2_sn7 + 4 vn4_vnp3_sn7
                                 + 5 vn2_vnp4_sn7 + 2 vn3_vnp5_sn7
                                 + 2 vn3_vnp6_sn7 <= 3
 CPU_capacity_of_substrate_node_8#7: 3 vn3_vnp3_sn8 + 2 vn3_vnp6_sn8
                                 + 2 vn4_vnp7_sn8 <= 4
 CPU_capacity_of_substrate_node_9#8: 2 vn1_vnp1_sn9 + 2 vn1_vnp2_sn9
                                 + 4 vn4_vnp3_sn9 + 2 vn3_vnp5_sn9 <= 2
 CPU_capacity_of_substrate_node_10#9: 4 vn4_vnp1_sn10 + vn1_vnp5_sn10
                                 + 2 vn4_vnp7_sn10 <= 3
 CPU_capacity_of_substrate_node_11#10: 5 vn2_vnp1_sn11 + 2 vn3_vnp2_sn11 <= 1
 CPU_capacity_of_substrate_node_12#11: 4 vn4_vnp1_sn12 + 3 vn1_vnp3_sn12
                                 + 5 vn1_vnp7_sn12 <= 4
 CPU_capacity_of_substrate_node_13#12: 4 vn4_vnp1_sn13 + 5 vn2_vnp2_sn13
                                 + 3 vn1_vnp4_sn13 + vn4_vnp5_sn13
                                 + vn1_vnp6_sn13 <= 8
 CPU_capacity_of_substrate_node_14#13: 5 vn2_vnp2_sn14 <= 8
 CPU_capacity_of_substrate_node_15#14: 5 vn2_vnp3_sn15 + 2 vn3_vnp4_sn15 <= 5
 CPU_capacity_of_substrate_node_16#15: 5 vn2_vnp3_sn16 + 3 vn2_vnp5_sn16 <= 7
 CPU_capacity_of_substrate_node_17#16: 5 vn2_vnp3_sn17 + 3 vn2_vnp5_sn17 <= 0
 CPU_capacity_of_substrate_node_19#17: 5 vn3_vnp7_sn19 <= 3
 CPU_capacity_of_substrate_node_20#18: 2 vn3_vnp1_sn20 + 2 vn3_vnp2_sn20
                                 + 5 vn2_vnp4_sn20 <= 2
Bounds
 0 <= vnp1 <= 1
 0 <= vn2_vnp1_sn11 <= 1
 0 <= vn1_vnp1_sn9 <= 1
 0 <= vn2_vnp1_sn6 <= 1
 0 <= vn2_vnp1_sn2 <= 1
 0 <= vn4_vnp1_sn10 <= 1
 0 <= vn4_vnp1_sn12 <= 1
 0 <= vn4_vnp1_sn13 <= 1
 0 <= vn3_vnp1_sn20 <= 1
 0 <= vn3_vnp1_sn3 <= 1
 0 <= vnp2 <= 1
 0 <= vn3_vnp2_sn11 <= 1
 0 <= vn1_vnp2_sn9 <= 1
 0 <= vn3_vnp2_sn20 <= 1
 0 <= vn2_vnp2_sn13 <= 1
 0 <= vn2_vnp2_sn3 <= 1
 0 <= vn2_vnp2_sn14 <= 1
 0 <= vn4_vnp2_sn7 <= 1
 0 <= vnp3 <= 1
 0 <= vn2_vnp3_sn15 <= 1
 0 <= vn1_vnp3_sn12 <= 1
 0 <= vn2_vnp3_sn17 <= 1
 0 <= vn2_vnp3_sn16 <= 1
 0 <= vn4_vnp3_sn1 <= 1
 0 <= vn4_vnp3_sn9 <= 1
 0 <= vn4_vnp3_sn7 <= 1
 0 <= vn3_vnp3_sn2 <= 1
 0 <= vn3_vnp3_sn8 <= 1
 0 <= vnp4 <= 1
 0 <= vn3_vnp4_sn5 <= 1
 0 <= vn1_vnp4_sn13 <= 1
 0 <= vn3_vnp4_sn15 <= 1
 0 <= vn4_vnp4_sn1 <= 1
 0 <= vn2_vnp4_sn2 <= 1
 0 <= vn2_vnp4_sn20 <= 1
 0 <= vn2_vnp4_sn7 <= 1
 0 <= vnp5 <= 1
 0 <= vn4_vnp5_sn13 <= 1
 0 <= vn1_vnp5_sn10 <= 1
 0 <= vn1_vnp5_sn3 <= 1
 0 <= vn2_vnp5_sn17 <= 1
 0 <= vn2_vnp5_sn4 <= 1
 0 <= vn2_vnp5_sn16 <= 1
 0 <= vn3_vnp5_sn1 <= 1
 0 <= vn3_vnp5_sn9 <= 1
 0 <= vn3_vnp5_sn7 <= 1
 0 <= vnp6 <= 1
 0 <= vn2_vnp6_sn6 <= 1
 0 <= vn1_vnp6_sn2 <= 1
 0 <= vn1_vnp6_sn13 <= 1
 0 <= vn3_vnp6_sn1 <= 1
 0 <= vn3_vnp6_sn7 <= 1
 0 <= vn3_vnp6_sn8 <= 1
 0 <= vnp7 <= 1
 0 <= vn4_vnp7_sn10 <= 1
 0 <= vn1_vnp7_sn12 <= 1
 0 <= vn1_vnp7_sn4 <= 1
 0 <= vn4_vnp7_sn8 <= 1
 0 <= vn3_vnp7_sn19 <= 1
 0 <= vn2_vnp7_sn3 <= 1
 0 <= vn2_vnp7_sn2 <= 1
Binaries
 vnp1  vn2_vnp1_sn11  vn1_vnp1_sn9  vn2_vnp1_sn6  vn2_vnp1_sn2  vn4_vnp1_sn10 
 vn4_vnp1_sn12  vn4_vnp1_sn13  vn3_vnp1_sn20  vn3_vnp1_sn3  vnp2 
 vn3_vnp2_sn11  vn1_vnp2_sn9  vn3_vnp2_sn20  vn2_vnp2_sn13  vn2_vnp2_sn3 
 vn2_vnp2_sn14  vn4_vnp2_sn7  vnp3  vn2_vnp3_sn15  vn1_vnp3_sn12 
 vn2_vnp3_sn17  vn2_vnp3_sn16  vn4_vnp3_sn1  vn4_vnp3_sn9  vn4_vnp3_sn7 
 vn3_vnp3_sn2  vn3_vnp3_sn8  vnp4  vn3_vnp4_sn5  vn1_vnp4_sn13  vn3_vnp4_sn15 
 vn4_vnp4_sn1  vn2_vnp4_sn2  vn2_vnp4_sn20  vn2_vnp4_sn7  vnp5  vn4_vnp5_sn13 
 vn1_vnp5_sn10  vn1_vnp5_sn3  vn2_vnp5_sn17  vn2_vnp5_sn4  vn2_vnp5_sn16 
 vn3_vnp5_sn1  vn3_vnp5_sn9  vn3_vnp5_sn7  vnp6  vn2_vnp6_sn6  vn1_vnp6_sn2 
 vn1_vnp6_sn13  vn3_vnp6_sn1  vn3_vnp6_sn7  vn3_vnp6_sn8  vnp7  vn4_vnp7_sn10 
 vn1_vnp7_sn12  vn1_vnp7_sn4  vn4_vnp7_sn8  vn3_vnp7_sn19  vn2_vnp7_sn3 
 vn2_vnp7_sn2 
End
