\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 803 vnp1 + 1342 vnp2 + 1354 vnp3 + 1803 vnp4 + 1359 vnp5
      + [ - 154 vn2_vnp1_sn19 * vn1_vnp1_sn15 - 66 vn2_vnp1_sn19 * vn1_vnp1_sn2
      - 218 vn2_vnp1_sn19 * vn1_vnp1_sn6 - 288 vn2_vnp1_sn19 * vn3_vnp1_sn16
      - 238 vn2_vnp1_sn19 * vn3_vnp1_sn8 - 326 vn2_vnp1_sn19 * vn3_vnp1_sn9
      - 58 vn1_vnp1_sn15 * vn2_vnp1_sn5 - 78 vn1_vnp1_sn15 * vn2_vnp1_sn17
      - 98 vn1_vnp1_sn15 * vn3_vnp1_sn16 - 114 vn1_vnp1_sn15 * vn3_vnp1_sn8
      - 214 vn1_vnp1_sn15 * vn3_vnp1_sn9 - 126 vn1_vnp1_sn2 * vn2_vnp1_sn5
      - 134 vn1_vnp1_sn2 * vn2_vnp1_sn17 - 350 vn1_vnp1_sn2 * vn3_vnp1_sn16
      - 334 vn1_vnp1_sn2 * vn3_vnp1_sn8 - 210 vn1_vnp1_sn2 * vn3_vnp1_sn9
      - 70 vn1_vnp1_sn6 * vn2_vnp1_sn5 - 198 vn1_vnp1_sn6 * vn2_vnp1_sn17
      - 374 vn1_vnp1_sn6 * vn3_vnp1_sn16 - 286 vn1_vnp1_sn6 * vn3_vnp1_sn8
      - 234 vn1_vnp1_sn6 * vn3_vnp1_sn9 - 304 vn2_vnp1_sn5 * vn3_vnp1_sn16
      - 194 vn2_vnp1_sn5 * vn3_vnp1_sn8 - 132 vn2_vnp1_sn5 * vn3_vnp1_sn9
      - 104 vn2_vnp1_sn17 * vn3_vnp1_sn16 - 174 vn2_vnp1_sn17 * vn3_vnp1_sn8
      - 212 vn2_vnp1_sn17 * vn3_vnp1_sn9 - 240 vn2_vnp2_sn16 * vn1_vnp2_sn14
      - 326 vn2_vnp2_sn16 * vn1_vnp2_sn5 - 78 vn2_vnp2_sn16 * vn4_vnp2_sn15
      - 166 vn2_vnp2_sn16 * vn4_vnp2_sn3 - 134 vn2_vnp2_sn16 * vn4_vnp2_sn10
      - 122 vn2_vnp2_sn16 * vn3_vnp2_sn7 - 158 vn4_vnp2_sn15 * vn3_vnp2_sn7
      - 218 vn4_vnp2_sn3 * vn3_vnp2_sn7 - 222 vn4_vnp2_sn10 * vn3_vnp2_sn7
      - 212 vn2_vnp3_sn17 * vn1_vnp3_sn12 - 142 vn2_vnp3_sn17 * vn3_vnp3_sn2
      - 376 vn1_vnp3_sn12 * vn3_vnp3_sn2 - 308 vn2_vnp4_sn2 * vn1_vnp4_sn11
      - 114 vn2_vnp4_sn2 * vn3_vnp4_sn1 - 344 vn2_vnp4_sn2 * vn3_vnp4_sn7
      - 104 vn2_vnp4_sn2 * vn4_vnp4_sn12 - 76 vn2_vnp4_sn2 * vn4_vnp4_sn20
      - 72 vn1_vnp4_sn11 * vn2_vnp4_sn5 - 372 vn1_vnp4_sn11 * vn2_vnp4_sn6
      - 448 vn1_vnp4_sn11 * vn3_vnp4_sn1 - 308 vn1_vnp4_sn11 * vn3_vnp4_sn7
      - 68 vn1_vnp4_sn11 * vn4_vnp4_sn12 - 46 vn1_vnp4_sn11 * vn4_vnp4_sn20
      - 338 vn2_vnp4_sn5 * vn3_vnp4_sn1 - 418 vn2_vnp4_sn5 * vn3_vnp4_sn7
      - 42 vn2_vnp4_sn5 * vn4_vnp4_sn12 - 60 vn2_vnp4_sn5 * vn4_vnp4_sn20
      - 494 vn2_vnp4_sn6 * vn3_vnp4_sn1 - 484 vn2_vnp4_sn6 * vn3_vnp4_sn7
      - 82 vn2_vnp4_sn6 * vn4_vnp4_sn12 - 102 vn2_vnp4_sn6 * vn4_vnp4_sn20
      - 310 vn3_vnp4_sn1 * vn4_vnp4_sn12 - 142 vn3_vnp4_sn1 * vn4_vnp4_sn20
      - 392 vn3_vnp4_sn7 * vn4_vnp4_sn12 - 224 vn3_vnp4_sn7 * vn4_vnp4_sn20
      - 130 vn2_vnp5_sn19 * vn1_vnp5_sn3 - 106 vn2_vnp5_sn19 * vn1_vnp5_sn2
      - 156 vn2_vnp5_sn19 * vn3_vnp5_sn13 - 88 vn2_vnp5_sn19 * vn3_vnp5_sn8
      - 136 vn2_vnp5_sn19 * vn4_vnp5_sn17 - 70 vn2_vnp5_sn19 * vn4_vnp5_sn4
      - 270 vn1_vnp5_sn3 * vn2_vnp5_sn15 - 212 vn1_vnp5_sn3 * vn3_vnp5_sn13
      - 100 vn1_vnp5_sn3 * vn3_vnp5_sn8 - 380 vn1_vnp5_sn3 * vn4_vnp5_sn17
      - 46 vn1_vnp5_sn3 * vn4_vnp5_sn4 - 252 vn1_vnp5_sn2 * vn2_vnp5_sn15
      - 240 vn1_vnp5_sn2 * vn3_vnp5_sn13 - 156 vn1_vnp5_sn2 * vn3_vnp5_sn8
      - 338 vn1_vnp5_sn2 * vn4_vnp5_sn17 - 134 vn1_vnp5_sn2 * vn4_vnp5_sn4
      - 82 vn2_vnp5_sn15 * vn3_vnp5_sn13 - 64 vn2_vnp5_sn15 * vn3_vnp5_sn8
      - 126 vn2_vnp5_sn15 * vn4_vnp5_sn17 - 240 vn2_vnp5_sn15 * vn4_vnp5_sn4
      ] / 2
Subject To
 _Embedding_clash_const_of_vnode1_vnp_1#0: - vnp1 + vn1_vnp1_sn15
                                 + vn1_vnp1_sn2 + vn1_vnp1_sn6 <= 0
 _Embedding_clash_const_of_vnode2_vnp_1#1: - vnp1 + vn2_vnp1_sn19
                                 + vn2_vnp1_sn5 + vn2_vnp1_sn17 <= 0
 _Embedding_clash_const_of_vnode3_vnp_1#2: - vnp1 + vn3_vnp1_sn16
                                 + vn3_vnp1_sn8 + vn3_vnp1_sn9 <= 0
 _Embedding_clash_const_of_vnode1_vnp_2#3: - vnp2 + vn1_vnp2_sn14
                                 + vn1_vnp2_sn5 <= 0
 _Embedding_clash_const_of_vnode2_vnp_2#4: - vnp2 + vn2_vnp2_sn16 <= 0
 _Embedding_clash_const_of_vnode3_vnp_2#5: - vnp2 + vn3_vnp2_sn7 <= 0
 _Embedding_clash_const_of_vnode4_vnp_2#6: - vnp2 + vn4_vnp2_sn15
                                 + vn4_vnp2_sn3 + vn4_vnp2_sn10 <= 0
 _Embedding_clash_const_of_vnode1_vnp_3#7: - vnp3 + vn1_vnp3_sn12 <= 0
 _Embedding_clash_const_of_vnode2_vnp_3#8: - vnp3 + vn2_vnp3_sn17 <= 0
 _Embedding_clash_const_of_vnode3_vnp_3#9: - vnp3 + vn3_vnp3_sn2 <= 0
 _Embedding_clash_const_of_vnode1_vnp_4#10: - vnp4 + vn1_vnp4_sn11 <= 0
 _Embedding_clash_const_of_vnode2_vnp_4#11: - vnp4 + vn2_vnp4_sn2
                                 + vn2_vnp4_sn5 + vn2_vnp4_sn6 <= 0
 _Embedding_clash_const_of_vnode3_vnp_4#12: - vnp4 + vn3_vnp4_sn1
                                 + vn3_vnp4_sn7 <= 0
 _Embedding_clash_const_of_vnode4_vnp_4#13: - vnp4 + vn4_vnp4_sn12
                                 + vn4_vnp4_sn20 <= 0
 _Embedding_clash_const_of_vnode1_vnp_5#14: - vnp5 + vn1_vnp5_sn3
                                 + vn1_vnp5_sn2 <= 0
 _Embedding_clash_const_of_vnode2_vnp_5#15: - vnp5 + vn2_vnp5_sn19
                                 + vn2_vnp5_sn15 <= 0
 _Embedding_clash_const_of_vnode3_vnp_5#16: - vnp5 + vn3_vnp5_sn13
                                 + vn3_vnp5_sn8 <= 0
 _Embedding_clash_const_of_vnode4_vnp_5#17: - vnp5 + vn4_vnp5_sn17
                                 + vn4_vnp5_sn4 <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_1#0: vnp1
                                 + [ - vn2_vnp1_sn19 * vn1_vnp1_sn15
                                 - vn2_vnp1_sn19 * vn1_vnp1_sn2
                                 - vn2_vnp1_sn19 * vn1_vnp1_sn6
                                 - vn1_vnp1_sn15 * vn2_vnp1_sn5
                                 - vn1_vnp1_sn15 * vn2_vnp1_sn17
                                 - vn1_vnp1_sn2 * vn2_vnp1_sn5
                                 - vn1_vnp1_sn2 * vn2_vnp1_sn17
                                 - vn1_vnp1_sn6 * vn2_vnp1_sn5
                                 - vn1_vnp1_sn6 * vn2_vnp1_sn17 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_2#1: vnp1
                                 + [ - vn2_vnp1_sn19 * vn3_vnp1_sn16
                                 - vn2_vnp1_sn19 * vn3_vnp1_sn8
                                 - vn2_vnp1_sn19 * vn3_vnp1_sn9
                                 - vn2_vnp1_sn5 * vn3_vnp1_sn16
                                 - vn2_vnp1_sn5 * vn3_vnp1_sn8
                                 - vn2_vnp1_sn5 * vn3_vnp1_sn9
                                 - vn2_vnp1_sn17 * vn3_vnp1_sn16
                                 - vn2_vnp1_sn17 * vn3_vnp1_sn8
                                 - vn2_vnp1_sn17 * vn3_vnp1_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_1_Virtual_Link_3#2: vnp1
                                 + [ - vn1_vnp1_sn15 * vn3_vnp1_sn16
                                 - vn1_vnp1_sn15 * vn3_vnp1_sn8
                                 - vn1_vnp1_sn15 * vn3_vnp1_sn9
                                 - vn1_vnp1_sn2 * vn3_vnp1_sn16
                                 - vn1_vnp1_sn2 * vn3_vnp1_sn8
                                 - vn1_vnp1_sn2 * vn3_vnp1_sn9
                                 - vn1_vnp1_sn6 * vn3_vnp1_sn16
                                 - vn1_vnp1_sn6 * vn3_vnp1_sn8
                                 - vn1_vnp1_sn6 * vn3_vnp1_sn9 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_4#3: vnp2
                                 + [ - vn2_vnp2_sn16 * vn1_vnp2_sn14
                                 - vn2_vnp2_sn16 * vn1_vnp2_sn5 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_5#4: vnp2
                                 + [ - vn2_vnp2_sn16 * vn4_vnp2_sn15
                                 - vn2_vnp2_sn16 * vn4_vnp2_sn3
                                 - vn2_vnp2_sn16 * vn4_vnp2_sn10 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_6#5: vnp2
                                 + [ - vn4_vnp2_sn15 * vn3_vnp2_sn7
                                 - vn4_vnp2_sn3 * vn3_vnp2_sn7
                                 - vn4_vnp2_sn10 * vn3_vnp2_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_2_Virtual_Link_7#6: vnp2
                                 + [ - vn2_vnp2_sn16 * vn3_vnp2_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_8#7: vnp3
                                 + [ - vn2_vnp3_sn17 * vn1_vnp3_sn12 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_9#8: vnp3
                                 + [ - vn2_vnp3_sn17 * vn3_vnp3_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_3_Virtual_Link_10#9: vnp3
                                 + [ - vn1_vnp3_sn12 * vn3_vnp3_sn2 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_11#10: vnp4
                                 + [ - vn2_vnp4_sn2 * vn1_vnp4_sn11
                                 - vn1_vnp4_sn11 * vn2_vnp4_sn5
                                 - vn1_vnp4_sn11 * vn2_vnp4_sn6 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_12#11: vnp4
                                 + [ - vn2_vnp4_sn2 * vn3_vnp4_sn1
                                 - vn2_vnp4_sn2 * vn3_vnp4_sn7
                                 - vn2_vnp4_sn5 * vn3_vnp4_sn1
                                 - vn2_vnp4_sn5 * vn3_vnp4_sn7
                                 - vn2_vnp4_sn6 * vn3_vnp4_sn1
                                 - vn2_vnp4_sn6 * vn3_vnp4_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_13#12: vnp4
                                 + [ - vn1_vnp4_sn11 * vn3_vnp4_sn1
                                 - vn1_vnp4_sn11 * vn3_vnp4_sn7 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_14#13: vnp4
                                 + [ - vn3_vnp4_sn1 * vn4_vnp4_sn12
                                 - vn3_vnp4_sn1 * vn4_vnp4_sn20
                                 - vn3_vnp4_sn7 * vn4_vnp4_sn12
                                 - vn3_vnp4_sn7 * vn4_vnp4_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_15#14: vnp4
                                 + [ - vn1_vnp4_sn11 * vn4_vnp4_sn12
                                 - vn1_vnp4_sn11 * vn4_vnp4_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_4_Virtual_Link_16#15: vnp4
                                 + [ - vn2_vnp4_sn2 * vn4_vnp4_sn12
                                 - vn2_vnp4_sn2 * vn4_vnp4_sn20
                                 - vn2_vnp4_sn5 * vn4_vnp4_sn12
                                 - vn2_vnp4_sn5 * vn4_vnp4_sn20
                                 - vn2_vnp4_sn6 * vn4_vnp4_sn12
                                 - vn2_vnp4_sn6 * vn4_vnp4_sn20 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_17#16: vnp5
                                 + [ - vn2_vnp5_sn19 * vn1_vnp5_sn3
                                 - vn2_vnp5_sn19 * vn1_vnp5_sn2
                                 - vn1_vnp5_sn3 * vn2_vnp5_sn15
                                 - vn1_vnp5_sn2 * vn2_vnp5_sn15 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_18#17: vnp5
                                 + [ - vn2_vnp5_sn19 * vn3_vnp5_sn13
                                 - vn2_vnp5_sn19 * vn3_vnp5_sn8
                                 - vn2_vnp5_sn15 * vn3_vnp5_sn13
                                 - vn2_vnp5_sn15 * vn3_vnp5_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_19#18: vnp5
                                 + [ - vn1_vnp5_sn3 * vn3_vnp5_sn13
                                 - vn1_vnp5_sn3 * vn3_vnp5_sn8
                                 - vn1_vnp5_sn2 * vn3_vnp5_sn13
                                 - vn1_vnp5_sn2 * vn3_vnp5_sn8 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_20#19: vnp5
                                 + [ - vn2_vnp5_sn19 * vn4_vnp5_sn17
                                 - vn2_vnp5_sn19 * vn4_vnp5_sn4
                                 - vn2_vnp5_sn15 * vn4_vnp5_sn17
                                 - vn2_vnp5_sn15 * vn4_vnp5_sn4 ] <= 0
 No_partial_embedding_of_Virtual_Network_5_Virtual_Link_21#20: vnp5
                                 + [ - vn1_vnp5_sn3 * vn4_vnp5_sn17
                                 - vn1_vnp5_sn3 * vn4_vnp5_sn4
                                 - vn1_vnp5_sn2 * vn4_vnp5_sn17
                                 - vn1_vnp5_sn2 * vn4_vnp5_sn4 ] <= 0
 q22#21:                         803 vnp1 + 1342 vnp2 + 1354 vnp3 + 1803 vnp4
                                 + 1359 vnp5
                                 + [ - 77 vn2_vnp1_sn19 * vn1_vnp1_sn15
                                 - 33 vn2_vnp1_sn19 * vn1_vnp1_sn2
                                 - 109 vn2_vnp1_sn19 * vn1_vnp1_sn6
                                 - 144 vn2_vnp1_sn19 * vn3_vnp1_sn16
                                 - 119 vn2_vnp1_sn19 * vn3_vnp1_sn8
                                 - 163 vn2_vnp1_sn19 * vn3_vnp1_sn9
                                 - 29 vn1_vnp1_sn15 * vn2_vnp1_sn5
                                 - 39 vn1_vnp1_sn15 * vn2_vnp1_sn17
                                 - 49 vn1_vnp1_sn15 * vn3_vnp1_sn16
                                 - 57 vn1_vnp1_sn15 * vn3_vnp1_sn8
                                 - 107 vn1_vnp1_sn15 * vn3_vnp1_sn9
                                 - 63 vn1_vnp1_sn2 * vn2_vnp1_sn5
                                 - 67 vn1_vnp1_sn2 * vn2_vnp1_sn17
                                 - 175 vn1_vnp1_sn2 * vn3_vnp1_sn16
                                 - 167 vn1_vnp1_sn2 * vn3_vnp1_sn8
                                 - 105 vn1_vnp1_sn2 * vn3_vnp1_sn9
                                 - 35 vn1_vnp1_sn6 * vn2_vnp1_sn5
                                 - 99 vn1_vnp1_sn6 * vn2_vnp1_sn17
                                 - 187 vn1_vnp1_sn6 * vn3_vnp1_sn16
                                 - 143 vn1_vnp1_sn6 * vn3_vnp1_sn8
                                 - 117 vn1_vnp1_sn6 * vn3_vnp1_sn9
                                 - 152 vn2_vnp1_sn5 * vn3_vnp1_sn16
                                 - 97 vn2_vnp1_sn5 * vn3_vnp1_sn8
                                 - 66 vn2_vnp1_sn5 * vn3_vnp1_sn9
                                 - 52 vn2_vnp1_sn17 * vn3_vnp1_sn16
                                 - 87 vn2_vnp1_sn17 * vn3_vnp1_sn8
                                 - 106 vn2_vnp1_sn17 * vn3_vnp1_sn9
                                 - 120 vn2_vnp2_sn16 * vn1_vnp2_sn14
                                 - 163 vn2_vnp2_sn16 * vn1_vnp2_sn5
                                 - 39 vn2_vnp2_sn16 * vn4_vnp2_sn15
                                 - 83 vn2_vnp2_sn16 * vn4_vnp2_sn3
                                 - 67 vn2_vnp2_sn16 * vn4_vnp2_sn10
                                 - 61 vn2_vnp2_sn16 * vn3_vnp2_sn7
                                 - 79 vn4_vnp2_sn15 * vn3_vnp2_sn7
                                 - 109 vn4_vnp2_sn3 * vn3_vnp2_sn7
                                 - 111 vn4_vnp2_sn10 * vn3_vnp2_sn7
                                 - 106 vn2_vnp3_sn17 * vn1_vnp3_sn12
                                 - 71 vn2_vnp3_sn17 * vn3_vnp3_sn2
                                 - 188 vn1_vnp3_sn12 * vn3_vnp3_sn2
                                 - 154 vn2_vnp4_sn2 * vn1_vnp4_sn11
                                 - 57 vn2_vnp4_sn2 * vn3_vnp4_sn1
                                 - 172 vn2_vnp4_sn2 * vn3_vnp4_sn7
                                 - 52 vn2_vnp4_sn2 * vn4_vnp4_sn12
                                 - 38 vn2_vnp4_sn2 * vn4_vnp4_sn20
                                 - 36 vn1_vnp4_sn11 * vn2_vnp4_sn5
                                 - 186 vn1_vnp4_sn11 * vn2_vnp4_sn6
                                 - 224 vn1_vnp4_sn11 * vn3_vnp4_sn1
                                 - 154 vn1_vnp4_sn11 * vn3_vnp4_sn7
                                 - 34 vn1_vnp4_sn11 * vn4_vnp4_sn12
                                 - 23 vn1_vnp4_sn11 * vn4_vnp4_sn20
                                 - 169 vn2_vnp4_sn5 * vn3_vnp4_sn1
                                 - 209 vn2_vnp4_sn5 * vn3_vnp4_sn7
                                 - 21 vn2_vnp4_sn5 * vn4_vnp4_sn12
                                 - 30 vn2_vnp4_sn5 * vn4_vnp4_sn20
                                 - 247 vn2_vnp4_sn6 * vn3_vnp4_sn1
                                 - 242 vn2_vnp4_sn6 * vn3_vnp4_sn7
                                 - 41 vn2_vnp4_sn6 * vn4_vnp4_sn12
                                 - 51 vn2_vnp4_sn6 * vn4_vnp4_sn20
                                 - 155 vn3_vnp4_sn1 * vn4_vnp4_sn12
                                 - 71 vn3_vnp4_sn1 * vn4_vnp4_sn20
                                 - 196 vn3_vnp4_sn7 * vn4_vnp4_sn12
                                 - 112 vn3_vnp4_sn7 * vn4_vnp4_sn20
                                 - 65 vn2_vnp5_sn19 * vn1_vnp5_sn3
                                 - 53 vn2_vnp5_sn19 * vn1_vnp5_sn2
                                 - 78 vn2_vnp5_sn19 * vn3_vnp5_sn13
                                 - 44 vn2_vnp5_sn19 * vn3_vnp5_sn8
                                 - 68 vn2_vnp5_sn19 * vn4_vnp5_sn17
                                 - 35 vn2_vnp5_sn19 * vn4_vnp5_sn4
                                 - 135 vn1_vnp5_sn3 * vn2_vnp5_sn15
                                 - 106 vn1_vnp5_sn3 * vn3_vnp5_sn13
                                 - 50 vn1_vnp5_sn3 * vn3_vnp5_sn8
                                 - 190 vn1_vnp5_sn3 * vn4_vnp5_sn17
                                 - 23 vn1_vnp5_sn3 * vn4_vnp5_sn4
                                 - 126 vn1_vnp5_sn2 * vn2_vnp5_sn15
                                 - 120 vn1_vnp5_sn2 * vn3_vnp5_sn13
                                 - 78 vn1_vnp5_sn2 * vn3_vnp5_sn8
                                 - 169 vn1_vnp5_sn2 * vn4_vnp5_sn17
                                 - 67 vn1_vnp5_sn2 * vn4_vnp5_sn4
                                 - 41 vn2_vnp5_sn15 * vn3_vnp5_sn13
                                 - 32 vn2_vnp5_sn15 * vn3_vnp5_sn8
                                 - 63 vn2_vnp5_sn15 * vn4_vnp5_sn17
                                 - 120 vn2_vnp5_sn15 * vn4_vnp5_sn4 ] >= 0
Lazy Constraints
 CPU_capacity_of_substrate_node_1#0: 5 vn3_vnp4_sn1 <= 8
 CPU_capacity_of_substrate_node_2#1: vn1_vnp1_sn2 + 5 vn3_vnp3_sn2
                                 + 2 vn2_vnp4_sn2 + 3 vn1_vnp5_sn2 <= 8
 CPU_capacity_of_substrate_node_3#2: 2 vn4_vnp2_sn3 + 3 vn1_vnp5_sn3 <= 8
 CPU_capacity_of_substrate_node_4#3: 3 vn4_vnp5_sn4 <= 6
 CPU_capacity_of_substrate_node_5#4: vn2_vnp1_sn5 + 4 vn1_vnp2_sn5
                                 + 2 vn2_vnp4_sn5 <= 8
 CPU_capacity_of_substrate_node_6#5: vn1_vnp1_sn6 + 2 vn2_vnp4_sn6 <= 8
 CPU_capacity_of_substrate_node_7#6: 2 vn3_vnp2_sn7 + 5 vn3_vnp4_sn7 <= 8
 CPU_capacity_of_substrate_node_8#7: 2 vn3_vnp1_sn8 + 3 vn3_vnp5_sn8 <= 4
 CPU_capacity_of_substrate_node_9#8: 2 vn3_vnp1_sn9 <= 8
 CPU_capacity_of_substrate_node_10#9: 2 vn4_vnp2_sn10 <= 5
 CPU_capacity_of_substrate_node_11#10: vn1_vnp4_sn11 <= 8
 CPU_capacity_of_substrate_node_12#11: 2 vn1_vnp3_sn12 + 3 vn4_vnp4_sn12 <= 7
 CPU_capacity_of_substrate_node_13#12: 3 vn3_vnp5_sn13 <= 8
 CPU_capacity_of_substrate_node_14#13: 4 vn1_vnp2_sn14 <= 8
 CPU_capacity_of_substrate_node_15#14: vn1_vnp1_sn15 + 2 vn4_vnp2_sn15
                                 + 2 vn2_vnp5_sn15 <= 8
 CPU_capacity_of_substrate_node_16#15: 2 vn3_vnp1_sn16 + 3 vn2_vnp2_sn16 <= 7
 CPU_capacity_of_substrate_node_17#16: vn2_vnp1_sn17 + vn2_vnp3_sn17
                                 + 3 vn4_vnp5_sn17 <= 8
 CPU_capacity_of_substrate_node_19#17: vn2_vnp1_sn19 + 2 vn2_vnp5_sn19 <= 1
 CPU_capacity_of_substrate_node_20#18: 3 vn4_vnp4_sn20 <= 8
Bounds
 0 <= vnp1 <= 1
 0 <= vn2_vnp1_sn19 <= 1
 0 <= vn1_vnp1_sn15 <= 1
 0 <= vn1_vnp1_sn2 <= 1
 0 <= vn1_vnp1_sn6 <= 1
 0 <= vn2_vnp1_sn5 <= 1
 0 <= vn2_vnp1_sn17 <= 1
 0 <= vn3_vnp1_sn16 <= 1
 0 <= vn3_vnp1_sn8 <= 1
 0 <= vn3_vnp1_sn9 <= 1
 0 <= vnp2 <= 1
 0 <= vn2_vnp2_sn16 <= 1
 0 <= vn1_vnp2_sn14 <= 1
 0 <= vn1_vnp2_sn5 <= 1
 0 <= vn4_vnp2_sn15 <= 1
 0 <= vn4_vnp2_sn3 <= 1
 0 <= vn4_vnp2_sn10 <= 1
 0 <= vn3_vnp2_sn7 <= 1
 0 <= vnp3 <= 1
 0 <= vn2_vnp3_sn17 <= 1
 0 <= vn1_vnp3_sn12 <= 1
 0 <= vn3_vnp3_sn2 <= 1
 0 <= vnp4 <= 1
 0 <= vn2_vnp4_sn2 <= 1
 0 <= vn1_vnp4_sn11 <= 1
 0 <= vn2_vnp4_sn5 <= 1
 0 <= vn2_vnp4_sn6 <= 1
 0 <= vn3_vnp4_sn1 <= 1
 0 <= vn3_vnp4_sn7 <= 1
 0 <= vn4_vnp4_sn12 <= 1
 0 <= vn4_vnp4_sn20 <= 1
 0 <= vnp5 <= 1
 0 <= vn2_vnp5_sn19 <= 1
 0 <= vn1_vnp5_sn3 <= 1
 0 <= vn1_vnp5_sn2 <= 1
 0 <= vn2_vnp5_sn15 <= 1
 0 <= vn3_vnp5_sn13 <= 1
 0 <= vn3_vnp5_sn8 <= 1
 0 <= vn4_vnp5_sn17 <= 1
 0 <= vn4_vnp5_sn4 <= 1
Binaries
 vnp1  vn2_vnp1_sn19  vn1_vnp1_sn15  vn1_vnp1_sn2  vn1_vnp1_sn6  vn2_vnp1_sn5 
 vn2_vnp1_sn17  vn3_vnp1_sn16  vn3_vnp1_sn8  vn3_vnp1_sn9  vnp2  vn2_vnp2_sn16 
 vn1_vnp2_sn14  vn1_vnp2_sn5  vn4_vnp2_sn15  vn4_vnp2_sn3  vn4_vnp2_sn10 
 vn3_vnp2_sn7  vnp3  vn2_vnp3_sn17  vn1_vnp3_sn12  vn3_vnp3_sn2  vnp4 
 vn2_vnp4_sn2  vn1_vnp4_sn11  vn2_vnp4_sn5  vn2_vnp4_sn6  vn3_vnp4_sn1 
 vn3_vnp4_sn7  vn4_vnp4_sn12  vn4_vnp4_sn20  vnp5  vn2_vnp5_sn19  vn1_vnp5_sn3 
 vn1_vnp5_sn2  vn2_vnp5_sn15  vn3_vnp5_sn13  vn3_vnp5_sn8  vn4_vnp5_sn17 
 vn4_vnp5_sn4 
End
