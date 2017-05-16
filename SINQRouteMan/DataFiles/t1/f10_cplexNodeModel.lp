\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 818 vnp1 + 745 vnp2 + 630 vnp3 + 701 vnp4 + 922 vnp5
      + [ - 164 vn2_vnp1_sn6 * vn1_vnp1_sn1 - 150 vn2_vnp1_sn6 * vn1_vnp1_sn10
      - 104 vn2_vnp1_sn6 * vn3_vnp1_sn17 - 74 vn2_vnp1_sn6 * vn3_vnp1_sn8
      - 92 vn2_vnp1_sn6 * vn4_vnp1_sn9 - 210 vn2_vnp1_sn6 * vn4_vnp1_sn7
      - 162 vn2_vnp1_sn6 * vn4_vnp1_sn2 - 126 vn1_vnp1_sn1 * vn3_vnp1_sn17
      - 126 vn1_vnp1_sn1 * vn3_vnp1_sn8 - 140 vn1_vnp1_sn1 * vn4_vnp1_sn9
      - 62 vn1_vnp1_sn1 * vn4_vnp1_sn7 - 38 vn1_vnp1_sn1 * vn4_vnp1_sn2
      - 328 vn1_vnp1_sn10 * vn3_vnp1_sn17 - 218 vn1_vnp1_sn10 * vn3_vnp1_sn8
      - 46 vn1_vnp1_sn10 * vn4_vnp1_sn9 - 164 vn1_vnp1_sn10 * vn4_vnp1_sn7
      - 164 vn1_vnp1_sn10 * vn4_vnp1_sn2 - 220 vn2_vnp2_sn7 * vn1_vnp2_sn15
      - 216 vn2_vnp2_sn7 * vn1_vnp2_sn3 - 264 vn2_vnp2_sn7 * vn1_vnp2_sn6
      - 250 vn2_vnp2_sn7 * vn4_vnp2_sn9 - 74 vn2_vnp2_sn7 * vn3_vnp2_sn16
      - 64 vn2_vnp2_sn7 * vn3_vnp2_sn17 - 118 vn1_vnp2_sn15 * vn2_vnp2_sn10
      - 76 vn1_vnp2_sn15 * vn2_vnp2_sn19 - 62 vn1_vnp2_sn15 * vn3_vnp2_sn16
      - 58 vn1_vnp2_sn15 * vn3_vnp2_sn17 - 150 vn1_vnp2_sn3 * vn2_vnp2_sn10
      - 186 vn1_vnp2_sn3 * vn2_vnp2_sn19 - 154 vn1_vnp2_sn3 * vn3_vnp2_sn16
      - 186 vn1_vnp2_sn3 * vn3_vnp2_sn17 - 228 vn1_vnp2_sn6 * vn2_vnp2_sn10
      - 312 vn1_vnp2_sn6 * vn2_vnp2_sn19 - 174 vn1_vnp2_sn6 * vn3_vnp2_sn16
      - 190 vn1_vnp2_sn6 * vn3_vnp2_sn17 - 94 vn2_vnp2_sn10 * vn4_vnp2_sn9
      - 80 vn2_vnp2_sn10 * vn3_vnp2_sn16 - 88 vn2_vnp2_sn10 * vn3_vnp2_sn17
      - 368 vn2_vnp2_sn19 * vn4_vnp2_sn9 - 28 vn2_vnp2_sn19 * vn3_vnp2_sn16
      - 20 vn2_vnp2_sn19 * vn3_vnp2_sn17 - 446 vn4_vnp3_sn11 * vn1_vnp3_sn19
      - 156 vn4_vnp3_sn11 * vn1_vnp3_sn12 - 86 vn4_vnp3_sn11 * vn3_vnp3_sn9
      - 240 vn4_vnp3_sn11 * vn2_vnp3_sn18 - 246 vn4_vnp3_sn11 * vn2_vnp3_sn2
      - 196 vn4_vnp3_sn11 * vn3_vnp3_sn7 - 126 vn1_vnp3_sn19 * vn4_vnp3_sn4
      - 336 vn1_vnp3_sn12 * vn4_vnp3_sn4 - 54 vn4_vnp3_sn4 * vn3_vnp3_sn9
      - 84 vn4_vnp3_sn4 * vn2_vnp3_sn18 - 54 vn4_vnp3_sn4 * vn2_vnp3_sn2
      - 88 vn4_vnp3_sn4 * vn3_vnp3_sn7 - 62 vn3_vnp3_sn9 * vn2_vnp3_sn18
      - 138 vn3_vnp3_sn9 * vn2_vnp3_sn2 - 64 vn2_vnp3_sn18 * vn3_vnp3_sn7
      - 108 vn2_vnp3_sn2 * vn3_vnp3_sn7 - 62 vn4_vnp4_sn16 * vn1_vnp4_sn1
      - 96 vn4_vnp4_sn16 * vn2_vnp4_sn8 - 114 vn4_vnp4_sn16 * vn2_vnp4_sn18
      - 40 vn4_vnp4_sn16 * vn3_vnp4_sn17 - 122 vn4_vnp4_sn16 * vn3_vnp4_sn9
      - 70 vn1_vnp4_sn1 * vn4_vnp4_sn5 - 126 vn1_vnp4_sn1 * vn3_vnp4_sn17
      - 344 vn1_vnp4_sn1 * vn3_vnp4_sn9 - 126 vn4_vnp4_sn5 * vn2_vnp4_sn8
      - 144 vn4_vnp4_sn5 * vn2_vnp4_sn18 - 208 vn4_vnp4_sn5 * vn3_vnp4_sn17
      - 50 vn4_vnp4_sn5 * vn3_vnp4_sn9 - 96 vn2_vnp5_sn19 * vn1_vnp5_sn15
      - 132 vn2_vnp5_sn19 * vn1_vnp5_sn2 - 198 vn2_vnp5_sn19 * vn1_vnp5_sn3
      - 360 vn2_vnp5_sn19 * vn3_vnp5_sn5 - 144 vn2_vnp5_sn19 * vn3_vnp5_sn4
      - 66 vn1_vnp5_sn15 * vn2_vnp5_sn12 - 246 vn1_vnp5_sn15 * vn3_vnp5_sn5
      - 288 vn1_vnp5_sn15 * vn3_vnp5_sn4 - 192 vn1_vnp5_sn15 * vn4_vnp5_sn20
      - 318 vn1_vnp5_sn2 * vn2_vnp5_sn12 - 162 vn1_vnp5_sn2 * vn3_vnp5_sn5
      - 168 vn1_vnp5_sn2 * vn3_vnp5_sn4 - 278 vn1_vnp5_sn2 * vn4_vnp5_sn20
      - 222 vn1_vnp5_sn3 * vn2_vnp5_sn12 - 66 vn1_vnp5_sn3 * vn3_vnp5_sn5
      - 72 vn1_vnp5_sn3 * vn3_vnp5_sn4 - 364 vn1_vnp5_sn3 * vn4_vnp5_sn20
      - 320 vn2_vnp5_sn12 * vn3_vnp5_sn5 - 354 vn2_vnp5_sn12 * vn3_vnp5_sn4
      ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn1
                                 + vn1_vnp1_sn10 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn6 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn17
                                 + vn3_vnp1_sn8 <= 0
 _Embedding_clash_const_of_vnode4_vnp_1#3: - vnp1 + vn4_vnp1_sn9 + vn4_vnp1_sn7
                                 + vn4_vnp1_sn2 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#4: - vnp2 + vn1_vnp2_sn15
                                 + vn1_vnp2_sn3 + vn1_vnp2_sn6 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#5: - vnp2 + vn2_vnp2_sn7
                                 + vn2_vnp2_sn10 + vn2_vnp2_sn19 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#6: - vnp2 + vn3_vnp2_sn16
                                 + vn3_vnp2_sn17 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#7: - vnp2 + vn4_vnp2_sn9 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#8: - vnp3 + vn1_vnp3_sn19
                                 + vn1_vnp3_sn12 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#9: - vnp3 + vn2_vnp3_sn18
                                 + vn2_vnp3_sn2 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#10: - vnp3 + vn3_vnp3_sn9
                                 + vn3_vnp3_sn7 <= 0
 _Embedding_clash_const_of_vnode4_vnp_3#11: - vnp3 + vn4_vnp3_sn11
                                 + vn4_vnp3_sn4 <= 0
 _Embedding_clash_const_of_vnode1_vnp_4#12: - vnp4 + vn1_vnp4_sn1 <= 0
 _Embedding_clash_const_of_vnode2_vnp_4#13: - vnp4 + vn2_vnp4_sn8
                                 + vn2_vnp4_sn18 <= 0
 _Embedding_clash_const_of_vnode3_vnp_4#14: - vnp4 + vn3_vnp4_sn17
                                 + vn3_vnp4_sn9 <= 0
 _Embedding_clash_const_of_vnode4_vnp_4#15: - vnp4 + vn4_vnp4_sn16
                                 + vn4_vnp4_sn5 <= 0
 _Embedding_clash_const_of_vnode1_vnp_5#16: - vnp5 + vn1_vnp5_sn15
                                 + vn1_vnp5_sn2 + vn1_vnp5_sn3 <= 0
 _Embedding_clash_const_of_vnode2_vnp_5#17: - vnp5 + vn2_vnp5_sn19
                                 + vn2_vnp5_sn12 <= 0
 _Embedding_clash_const_of_vnode3_vnp_5#18: - vnp5 + vn3_vnp5_sn5
                                 + vn3_vnp5_sn4 <= 0
 _Embedding_clash_const_of_vnode4_vnp_5#19: - vnp5 + vn4_vnp5_sn20 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn2_vnp1_sn6 * vn1_vnp1_sn1
                                 - vn2_vnp1_sn6 * vn1_vnp1_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn2_vnp1_sn6 * vn3_vnp1_sn17
                                 - vn2_vnp1_sn6 * vn3_vnp1_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn1_vnp1_sn1 * vn3_vnp1_sn17
                                 - vn1_vnp1_sn1 * vn3_vnp1_sn8
                                 - vn1_vnp1_sn10 * vn3_vnp1_sn17
                                 - vn1_vnp1_sn10 * vn3_vnp1_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_4#3: vnp1
                                 + [ - vn1_vnp1_sn1 * vn4_vnp1_sn9
                                 - vn1_vnp1_sn1 * vn4_vnp1_sn7
                                 - vn1_vnp1_sn1 * vn4_vnp1_sn2
                                 - vn1_vnp1_sn10 * vn4_vnp1_sn9
                                 - vn1_vnp1_sn10 * vn4_vnp1_sn7
                                 - vn1_vnp1_sn10 * vn4_vnp1_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_5#4: vnp1
                                 + [ - vn2_vnp1_sn6 * vn4_vnp1_sn9
                                 - vn2_vnp1_sn6 * vn4_vnp1_sn7
                                 - vn2_vnp1_sn6 * vn4_vnp1_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn2_vnp2_sn7 * vn1_vnp2_sn15
                                 - vn2_vnp2_sn7 * vn1_vnp2_sn3
                                 - vn2_vnp2_sn7 * vn1_vnp2_sn6
                                 - vn1_vnp2_sn15 * vn2_vnp2_sn10
                                 - vn1_vnp2_sn15 * vn2_vnp2_sn19
                                 - vn1_vnp2_sn3 * vn2_vnp2_sn10
                                 - vn1_vnp2_sn3 * vn2_vnp2_sn19
                                 - vn1_vnp2_sn6 * vn2_vnp2_sn10
                                 - vn1_vnp2_sn6 * vn2_vnp2_sn19 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn2_vnp2_sn7 * vn4_vnp2_sn9
                                 - vn2_vnp2_sn10 * vn4_vnp2_sn9
                                 - vn2_vnp2_sn19 * vn4_vnp2_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_8#7: vnp2
                                 + [ - vn2_vnp2_sn7 * vn3_vnp2_sn16
                                 - vn2_vnp2_sn7 * vn3_vnp2_sn17
                                 - vn2_vnp2_sn10 * vn3_vnp2_sn16
                                 - vn2_vnp2_sn10 * vn3_vnp2_sn17
                                 - vn2_vnp2_sn19 * vn3_vnp2_sn16
                                 - vn2_vnp2_sn19 * vn3_vnp2_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_9#8: vnp2
                                 + [ - vn1_vnp2_sn15 * vn3_vnp2_sn16
                                 - vn1_vnp2_sn15 * vn3_vnp2_sn17
                                 - vn1_vnp2_sn3 * vn3_vnp2_sn16
                                 - vn1_vnp2_sn3 * vn3_vnp2_sn17
                                 - vn1_vnp2_sn6 * vn3_vnp2_sn16
                                 - vn1_vnp2_sn6 * vn3_vnp2_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_10#9: vnp3
                                 + [ - vn4_vnp3_sn11 * vn1_vnp3_sn19
                                 - vn4_vnp3_sn11 * vn1_vnp3_sn12
                                 - vn1_vnp3_sn19 * vn4_vnp3_sn4
                                 - vn1_vnp3_sn12 * vn4_vnp3_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_11#10: vnp3
                                 + [ - vn3_vnp3_sn9 * vn2_vnp3_sn18
                                 - vn3_vnp3_sn9 * vn2_vnp3_sn2
                                 - vn2_vnp3_sn18 * vn3_vnp3_sn7
                                 - vn2_vnp3_sn2 * vn3_vnp3_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_12#11: vnp3
                                 + [ - vn4_vnp3_sn11 * vn3_vnp3_sn9
                                 - vn4_vnp3_sn11 * vn3_vnp3_sn7
                                 - vn4_vnp3_sn4 * vn3_vnp3_sn9
                                 - vn4_vnp3_sn4 * vn3_vnp3_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_13#12: vnp3
                                 + [ - vn4_vnp3_sn11 * vn2_vnp3_sn18
                                 - vn4_vnp3_sn11 * vn2_vnp3_sn2
                                 - vn4_vnp3_sn4 * vn2_vnp3_sn18
                                 - vn4_vnp3_sn4 * vn2_vnp3_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_14#13: vnp4
                                 + [ - vn4_vnp4_sn16 * vn1_vnp4_sn1
                                 - vn1_vnp4_sn1 * vn4_vnp4_sn5 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_15#14: vnp4
                                 + [ - vn4_vnp4_sn16 * vn2_vnp4_sn8
                                 - vn4_vnp4_sn16 * vn2_vnp4_sn18
                                 - vn4_vnp4_sn5 * vn2_vnp4_sn8
                                 - vn4_vnp4_sn5 * vn2_vnp4_sn18 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_16#15: vnp4
                                 + [ - vn1_vnp4_sn1 * vn3_vnp4_sn17
                                 - vn1_vnp4_sn1 * vn3_vnp4_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_17#16: vnp4
                                 + [ - vn4_vnp4_sn16 * vn3_vnp4_sn17
                                 - vn4_vnp4_sn16 * vn3_vnp4_sn9
                                 - vn4_vnp4_sn5 * vn3_vnp4_sn17
                                 - vn4_vnp4_sn5 * vn3_vnp4_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_18#17: vnp5
                                 + [ - vn2_vnp5_sn19 * vn1_vnp5_sn15
                                 - vn2_vnp5_sn19 * vn1_vnp5_sn2
                                 - vn2_vnp5_sn19 * vn1_vnp5_sn3
                                 - vn1_vnp5_sn15 * vn2_vnp5_sn12
                                 - vn1_vnp5_sn2 * vn2_vnp5_sn12
                                 - vn1_vnp5_sn3 * vn2_vnp5_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_19#18: vnp5
                                 + [ - vn2_vnp5_sn19 * vn3_vnp5_sn5
                                 - vn2_vnp5_sn19 * vn3_vnp5_sn4
                                 - vn2_vnp5_sn12 * vn3_vnp5_sn5
                                 - vn2_vnp5_sn12 * vn3_vnp5_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_20#19: vnp5
                                 + [ - vn1_vnp5_sn15 * vn3_vnp5_sn5
                                 - vn1_vnp5_sn15 * vn3_vnp5_sn4
                                 - vn1_vnp5_sn2 * vn3_vnp5_sn5
                                 - vn1_vnp5_sn2 * vn3_vnp5_sn4
                                 - vn1_vnp5_sn3 * vn3_vnp5_sn5
                                 - vn1_vnp5_sn3 * vn3_vnp5_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_21#20: vnp5
                                 + [ - vn1_vnp5_sn15 * vn4_vnp5_sn20
                                 - vn1_vnp5_sn2 * vn4_vnp5_sn20
                                 - vn1_vnp5_sn3 * vn4_vnp5_sn20 ] <= 0
 q22#21:                         - 818 vnp1 - 745 vnp2 - 630 vnp3 - 701 vnp4
                                 - 922 vnp5 + [ 82 vn2_vnp1_sn6 * vn1_vnp1_sn1
                                 + 75 vn2_vnp1_sn6 * vn1_vnp1_sn10
                                 + 52 vn2_vnp1_sn6 * vn3_vnp1_sn17
                                 + 37 vn2_vnp1_sn6 * vn3_vnp1_sn8
                                 + 46 vn2_vnp1_sn6 * vn4_vnp1_sn9
                                 + 105 vn2_vnp1_sn6 * vn4_vnp1_sn7
                                 + 81 vn2_vnp1_sn6 * vn4_vnp1_sn2
                                 + 63 vn1_vnp1_sn1 * vn3_vnp1_sn17
                                 + 63 vn1_vnp1_sn1 * vn3_vnp1_sn8
                                 + 70 vn1_vnp1_sn1 * vn4_vnp1_sn9
                                 + 31 vn1_vnp1_sn1 * vn4_vnp1_sn7
                                 + 19 vn1_vnp1_sn1 * vn4_vnp1_sn2
                                 + 164 vn1_vnp1_sn10 * vn3_vnp1_sn17
                                 + 109 vn1_vnp1_sn10 * vn3_vnp1_sn8
                                 + 23 vn1_vnp1_sn10 * vn4_vnp1_sn9
                                 + 82 vn1_vnp1_sn10 * vn4_vnp1_sn7
                                 + 82 vn1_vnp1_sn10 * vn4_vnp1_sn2
                                 + 110 vn2_vnp2_sn7 * vn1_vnp2_sn15
                                 + 108 vn2_vnp2_sn7 * vn1_vnp2_sn3
                                 + 132 vn2_vnp2_sn7 * vn1_vnp2_sn6
                                 + 125 vn2_vnp2_sn7 * vn4_vnp2_sn9
                                 + 37 vn2_vnp2_sn7 * vn3_vnp2_sn16
                                 + 32 vn2_vnp2_sn7 * vn3_vnp2_sn17
                                 + 59 vn1_vnp2_sn15 * vn2_vnp2_sn10
                                 + 38 vn1_vnp2_sn15 * vn2_vnp2_sn19
                                 + 31 vn1_vnp2_sn15 * vn3_vnp2_sn16
                                 + 29 vn1_vnp2_sn15 * vn3_vnp2_sn17
                                 + 75 vn1_vnp2_sn3 * vn2_vnp2_sn10
                                 + 93 vn1_vnp2_sn3 * vn2_vnp2_sn19
                                 + 77 vn1_vnp2_sn3 * vn3_vnp2_sn16
                                 + 93 vn1_vnp2_sn3 * vn3_vnp2_sn17
                                 + 114 vn1_vnp2_sn6 * vn2_vnp2_sn10
                                 + 156 vn1_vnp2_sn6 * vn2_vnp2_sn19
                                 + 87 vn1_vnp2_sn6 * vn3_vnp2_sn16
                                 + 95 vn1_vnp2_sn6 * vn3_vnp2_sn17
                                 + 47 vn2_vnp2_sn10 * vn4_vnp2_sn9
                                 + 40 vn2_vnp2_sn10 * vn3_vnp2_sn16
                                 + 44 vn2_vnp2_sn10 * vn3_vnp2_sn17
                                 + 184 vn2_vnp2_sn19 * vn4_vnp2_sn9
                                 + 14 vn2_vnp2_sn19 * vn3_vnp2_sn16
                                 + 10 vn2_vnp2_sn19 * vn3_vnp2_sn17
                                 + 223 vn4_vnp3_sn11 * vn1_vnp3_sn19
                                 + 78 vn4_vnp3_sn11 * vn1_vnp3_sn12
                                 + 43 vn4_vnp3_sn11 * vn3_vnp3_sn9
                                 + 120 vn4_vnp3_sn11 * vn2_vnp3_sn18
                                 + 123 vn4_vnp3_sn11 * vn2_vnp3_sn2
                                 + 98 vn4_vnp3_sn11 * vn3_vnp3_sn7
                                 + 63 vn1_vnp3_sn19 * vn4_vnp3_sn4
                                 + 168 vn1_vnp3_sn12 * vn4_vnp3_sn4
                                 + 27 vn4_vnp3_sn4 * vn3_vnp3_sn9
                                 + 42 vn4_vnp3_sn4 * vn2_vnp3_sn18
                                 + 27 vn4_vnp3_sn4 * vn2_vnp3_sn2
                                 + 44 vn4_vnp3_sn4 * vn3_vnp3_sn7
                                 + 31 vn3_vnp3_sn9 * vn2_vnp3_sn18
                                 + 69 vn3_vnp3_sn9 * vn2_vnp3_sn2
                                 + 32 vn2_vnp3_sn18 * vn3_vnp3_sn7
                                 + 54 vn2_vnp3_sn2 * vn3_vnp3_sn7
                                 + 31 vn4_vnp4_sn16 * vn1_vnp4_sn1
                                 + 48 vn4_vnp4_sn16 * vn2_vnp4_sn8
                                 + 57 vn4_vnp4_sn16 * vn2_vnp4_sn18
                                 + 20 vn4_vnp4_sn16 * vn3_vnp4_sn17
                                 + 61 vn4_vnp4_sn16 * vn3_vnp4_sn9
                                 + 35 vn1_vnp4_sn1 * vn4_vnp4_sn5
                                 + 63 vn1_vnp4_sn1 * vn3_vnp4_sn17
                                 + 172 vn1_vnp4_sn1 * vn3_vnp4_sn9
                                 + 63 vn4_vnp4_sn5 * vn2_vnp4_sn8
                                 + 72 vn4_vnp4_sn5 * vn2_vnp4_sn18
                                 + 104 vn4_vnp4_sn5 * vn3_vnp4_sn17
                                 + 25 vn4_vnp4_sn5 * vn3_vnp4_sn9
                                 + 48 vn2_vnp5_sn19 * vn1_vnp5_sn15
                                 + 66 vn2_vnp5_sn19 * vn1_vnp5_sn2
                                 + 99 vn2_vnp5_sn19 * vn1_vnp5_sn3
                                 + 180 vn2_vnp5_sn19 * vn3_vnp5_sn5
                                 + 72 vn2_vnp5_sn19 * vn3_vnp5_sn4
                                 + 33 vn1_vnp5_sn15 * vn2_vnp5_sn12
                                 + 123 vn1_vnp5_sn15 * vn3_vnp5_sn5
                                 + 144 vn1_vnp5_sn15 * vn3_vnp5_sn4
                                 + 96 vn1_vnp5_sn15 * vn4_vnp5_sn20
                                 + 159 vn1_vnp5_sn2 * vn2_vnp5_sn12
                                 + 81 vn1_vnp5_sn2 * vn3_vnp5_sn5
                                 + 84 vn1_vnp5_sn2 * vn3_vnp5_sn4
                                 + 139 vn1_vnp5_sn2 * vn4_vnp5_sn20
                                 + 111 vn1_vnp5_sn3 * vn2_vnp5_sn12
                                 + 33 vn1_vnp5_sn3 * vn3_vnp5_sn5
                                 + 36 vn1_vnp5_sn3 * vn3_vnp5_sn4
                                 + 182 vn1_vnp5_sn3 * vn4_vnp5_sn20
                                 + 160 vn2_vnp5_sn12 * vn3_vnp5_sn5
                                 + 177 vn2_vnp5_sn12 * vn3_vnp5_sn4 ] <= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: vn1_vnp1_sn1 + vn1_vnp4_sn1 <= 8
 CPU_capacity_of_substrate_node_2#1: vn4_vnp1_sn2 + 3 vn1_vnp5_sn2 <= 8
 CPU_capacity_of_substrate_node_3#2: vn1_vnp2_sn3 + 3 vn1_vnp5_sn3 <= 5
 CPU_capacity_of_substrate_node_4#3: 3 vn3_vnp5_sn4 <= 8
 CPU_capacity_of_substrate_node_5#4: 3 vn4_vnp4_sn5 + 3 vn3_vnp5_sn5 <= 4
 CPU_capacity_of_substrate_node_6#5: vn2_vnp1_sn6 + vn1_vnp2_sn6 <= 8
 CPU_capacity_of_substrate_node_7#6: vn4_vnp1_sn7 + 3 vn2_vnp2_sn7
                                 + 3 vn3_vnp3_sn7 <= 2
 CPU_capacity_of_substrate_node_8#7: vn3_vnp1_sn8 + 3 vn2_vnp4_sn8 <= 5
 CPU_capacity_of_substrate_node_9#8: vn4_vnp1_sn9 + vn4_vnp2_sn9
                                 + 3 vn3_vnp3_sn9 + vn3_vnp4_sn9 <= 4
 CPU_capacity_of_substrate_node_10#9: vn1_vnp1_sn10 + 3 vn2_vnp2_sn10 <= 2
 CPU_capacity_of_substrate_node_12#10: 3 vn1_vnp3_sn12 + 3 vn2_vnp5_sn12 <= 5
 CPU_capacity_of_substrate_node_15#11: vn1_vnp2_sn15 + 3 vn1_vnp5_sn15 <= 1
 CPU_capacity_of_substrate_node_16#12: 3 vn3_vnp2_sn16 + 3 vn4_vnp4_sn16 <= 4
 CPU_capacity_of_substrate_node_17#13: vn3_vnp1_sn17 + 3 vn3_vnp2_sn17
                                 + vn3_vnp4_sn17 <= 5
 CPU_capacity_of_substrate_node_18#14: 3 vn2_vnp4_sn18 <= 5
 CPU_capacity_of_substrate_node_19#15: 3 vn2_vnp2_sn19 + 3 vn1_vnp3_sn19
                                 + 3 vn2_vnp5_sn19 <= 5
 CPU_capacity_of_substrate_node_20#16: 3 vn4_vnp5_sn20 <= 5
Bounds
 0 <= vnp1 <= 1
 0 <= vn2_vnp1_sn6 <= 1
 0 <= vn1_vnp1_sn1 <= 1
 0 <= vn1_vnp1_sn10 <= 1
 0 <= vn3_vnp1_sn17 <= 1
 0 <= vn3_vnp1_sn8 <= 1
 0 <= vn4_vnp1_sn9 <= 1
 0 <= vn4_vnp1_sn7 <= 1
 0 <= vn4_vnp1_sn2 <= 1
 0 <= vnp2 <= 1
 0 <= vn2_vnp2_sn7 <= 1
 0 <= vn1_vnp2_sn15 <= 1
 0 <= vn1_vnp2_sn3 <= 1
 0 <= vn1_vnp2_sn6 <= 1
 0 <= vn2_vnp2_sn10 <= 1
 0 <= vn2_vnp2_sn19 <= 1
 0 <= vn4_vnp2_sn9 <= 1
 0 <= vn3_vnp2_sn16 <= 1
 0 <= vn3_vnp2_sn17 <= 1
 0 <= vnp3 <= 1
 0 <= vn4_vnp3_sn11 <= 1
 0 <= vn1_vnp3_sn19 <= 1
 0 <= vn1_vnp3_sn12 <= 1
 0 <= vn4_vnp3_sn4 <= 1
 0 <= vn3_vnp3_sn9 <= 1
 0 <= vn2_vnp3_sn18 <= 1
 0 <= vn2_vnp3_sn2 <= 1
 0 <= vn3_vnp3_sn7 <= 1
 0 <= vnp4 <= 1
 0 <= vn4_vnp4_sn16 <= 1
 0 <= vn1_vnp4_sn1 <= 1
 0 <= vn4_vnp4_sn5 <= 1
 0 <= vn2_vnp4_sn8 <= 1
 0 <= vn2_vnp4_sn18 <= 1
 0 <= vn3_vnp4_sn17 <= 1
 0 <= vn3_vnp4_sn9 <= 1
 0 <= vnp5 <= 1
 0 <= vn2_vnp5_sn19 <= 1
 0 <= vn1_vnp5_sn15 <= 1
 0 <= vn1_vnp5_sn2 <= 1
 0 <= vn1_vnp5_sn3 <= 1
 0 <= vn2_vnp5_sn12 <= 1
 0 <= vn3_vnp5_sn5 <= 1
 0 <= vn3_vnp5_sn4 <= 1
 0 <= vn4_vnp5_sn20 <= 1
Binaries
 vnp1  vn2_vnp1_sn6  vn1_vnp1_sn1  vn1_vnp1_sn10  vn3_vnp1_sn17  vn3_vnp1_sn8 
 vn4_vnp1_sn9  vn4_vnp1_sn7  vn4_vnp1_sn2  vnp2  vn2_vnp2_sn7  vn1_vnp2_sn15 
 vn1_vnp2_sn3  vn1_vnp2_sn6  vn2_vnp2_sn10  vn2_vnp2_sn19  vn4_vnp2_sn9 
 vn3_vnp2_sn16  vn3_vnp2_sn17  vnp3  vn4_vnp3_sn11  vn1_vnp3_sn19 
 vn1_vnp3_sn12  vn4_vnp3_sn4  vn3_vnp3_sn9  vn2_vnp3_sn18  vn2_vnp3_sn2 
 vn3_vnp3_sn7  vnp4  vn4_vnp4_sn16  vn1_vnp4_sn1  vn4_vnp4_sn5  vn2_vnp4_sn8 
 vn2_vnp4_sn18  vn3_vnp4_sn17  vn3_vnp4_sn9  vnp5  vn2_vnp5_sn19 
 vn1_vnp5_sn15  vn1_vnp5_sn2  vn1_vnp5_sn3  vn2_vnp5_sn12  vn3_vnp5_sn5 
 vn3_vnp5_sn4  vn4_vnp5_sn20 
End
