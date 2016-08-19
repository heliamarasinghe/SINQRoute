\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 487 vnp2#0 - 90 pi0_k5#1 - 127 pi5_k6#2 - 59 pi10_k7#3 - 177 pi7_k6#4
      - 124 pi1_k5#5 - 72 pi2_k5#6 - 88 pi4_k5#7 - 222 pi8_k6#8 - 112 pi3_k5#9
      - 222 pi6_k6#10 - 137 pi9_k6#11 - 111 pi11_k7#12 - 93 pi12_k7#13
      - 115 pi14_k7#14 - 105 pi13_k7#15
Subject To
 _Embedding_clash_const_of_vlink5_vnp_2#0: vnp2#0 - pi0_k5#1 <= 0
 _Embedding_clash_const_of_vlink6_vnp_2#1: vnp2#0 - pi5_k6#2 <= 0
 _Embedding_clash_const_of_vlink7_vnp_2#2: vnp2#0 - pi10_k7#3 <= 0
 BW_capacity_of_substrate_link_3#3: 5 pi7_k6#4 <= 3
 BW_capacity_of_substrate_link_5#4: 2 pi1_k5#5 <= 8
 BW_capacity_of_substrate_link_7#5: 2 pi2_k5#6 <= 17
 BW_capacity_of_substrate_link_8#6: 2 pi0_k5#1 + 5 pi5_k6#2 <= 18
 BW_capacity_of_substrate_link_9#7: 2 pi4_k5#7 <= 0
 BW_capacity_of_substrate_link_10#8: 5 pi8_k6#8 <= 18
 BW_capacity_of_substrate_link_11#9: 5 pi7_k6#4 <= 20
 BW_capacity_of_substrate_link_12#10: 2 pi2_k5#6 <= 20
 BW_capacity_of_substrate_link_15#11: 2 pi1_k5#5 <= 8
 BW_capacity_of_substrate_link_21#12: 2 pi2_k5#6 <= 11
 BW_capacity_of_substrate_link_22#13: 2 pi3_k5#9 <= 20
 BW_capacity_of_substrate_link_24#14: 2 pi0_k5#1 <= 11
 BW_capacity_of_substrate_link_25#15: 5 pi6_k6#10 <= 13
 BW_capacity_of_substrate_link_26#16: 5 pi5_k6#2 <= 7
 BW_capacity_of_substrate_link_27#17: 5 pi9_k6#11 <= 20
 BW_capacity_of_substrate_link_28#18: 2 pi11_k7#12 <= 20
 BW_capacity_of_substrate_link_29#19: 2 pi12_k7#13 <= 17
 BW_capacity_of_substrate_link_30#20: 2 pi0_k5#1 + 2 pi11_k7#12 <= 13
 BW_capacity_of_substrate_link_31#21: 2 pi10_k7#3 <= 5
 BW_capacity_of_substrate_link_33#22: 2 pi1_k5#5 <= 1
 BW_capacity_of_substrate_link_37#23: 2 pi14_k7#14 <= 15
 BW_capacity_of_substrate_link_38#24: 5 pi6_k6#10 + 2 pi11_k7#12 <= 15
 BW_capacity_of_substrate_link_39#25: 2 pi10_k7#3 <= 18
 BW_capacity_of_substrate_link_40#26: 2 pi13_k7#15 <= 2
 BW_capacity_of_substrate_link_41#27: 5 pi5_k6#2 <= 20
 BW_capacity_of_substrate_link_43#28: 2 pi13_k7#15 <= 20
 c30#29:                         - 487 vnp2#0 + 90 pi0_k5#1 + 127 pi5_k6#2
                                 + 59 pi10_k7#3 + 177 pi7_k6#4 + 124 pi1_k5#5
                                 + 72 pi2_k5#6 + 88 pi4_k5#7 + 222 pi8_k6#8
                                 + 112 pi3_k5#9 + 222 pi6_k6#10 + 137 pi9_k6#11
                                 + 111 pi11_k7#12 + 93 pi12_k7#13
                                 + 115 pi14_k7#14 + 105 pi13_k7#15 <= 0
Bounds
 0 <= vnp2#0 <= 1
 0 <= pi0_k5#1 <= 1
 0 <= pi5_k6#2 <= 1
 0 <= pi10_k7#3 <= 1
 0 <= pi7_k6#4 <= 1
 0 <= pi1_k5#5 <= 1
 0 <= pi2_k5#6 <= 1
 0 <= pi4_k5#7 <= 1
 0 <= pi8_k6#8 <= 1
 0 <= pi3_k5#9 <= 1
 0 <= pi6_k6#10 <= 1
 0 <= pi9_k6#11 <= 1
 0 <= pi11_k7#12 <= 1
 0 <= pi12_k7#13 <= 1
 0 <= pi14_k7#14 <= 1
 0 <= pi13_k7#15 <= 1
Binaries
 vnp2#0  pi0_k5#1  pi5_k6#2  pi10_k7#3  pi7_k6#4  pi1_k5#5  pi2_k5#6  pi4_k5#7 
 pi8_k6#8  pi3_k5#9  pi6_k6#10  pi9_k6#11  pi11_k7#12  pi12_k7#13  pi14_k7#14 
 pi13_k7#15 
End
