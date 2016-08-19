\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 441 vnp1#0 - 40 pi0_k1#1 - 72 pi3_k2#2 - 106 pi7_k3#3 - 18 pi12_k4#4
      + 1122 vnp2#5 - 153 pi13_k5#6 - 130 pi17_k6#7 - 28 pi22_k7#8 + 738 vnp4#9
      - 99 pi23_k11#10 - 109 pi28_k12#11 - 42 pi33_k13#12 - 126 pi5_k2#13
      - 288 pi16_k5#14 - 148 pi9_k3#15 - 50 pi1_k1#16 - 151 pi10_k3#17
      - 73 pi8_k3#18 - 104 pi24_k11#19 - 74 pi4_k2#20 - 158 pi15_k5#21
      - 71 pi2_k1#22 - 118 pi11_k3#23 - 59 pi27_k11#24 - 144 pi25_k11#25
      - 184 pi31_k12#26 - 184 pi30_k12#27 - 104 pi26_k11#28 - 159 pi29_k12#29
      - 108 pi6_k2#30 - 305 pi18_k6#31 - 215 pi20_k6#32 - 149 pi32_k12#33
      - 285 pi21_k6#34 - 303 pi14_k5#35 - 280 pi19_k6#36
Subject To
 _Embedding_clash_const_of_vlink1_vnp_1#0: vnp1#0 - pi0_k1#1 <= 0
 _Embedding_clash_const_of_vlink2_vnp_1#1: vnp1#0 - pi3_k2#2 <= 0
 _Embedding_clash_const_of_vlink3_vnp_1#2: vnp1#0 - pi7_k3#3 <= 0
 _Embedding_clash_const_of_vlink4_vnp_1#3: vnp1#0 - pi12_k4#4 <= 0
 _Embedding_clash_const_of_vlink5_vnp_2#4: vnp2#5 - pi13_k5#6 <= 0
 _Embedding_clash_const_of_vlink6_vnp_2#5: vnp2#5 - pi17_k6#7 <= 0
 _Embedding_clash_const_of_vlink7_vnp_2#6: vnp2#5 - pi22_k7#8 <= 0
 _Embedding_clash_const_of_vlink11_vnp_4#7: vnp4#9 - pi23_k11#10 <= 0
 _Embedding_clash_const_of_vlink12_vnp_4#8: vnp4#9 - pi28_k12#11 <= 0
 _Embedding_clash_const_of_vlink13_vnp_4#9: vnp4#9 - pi33_k13#12 <= 0
 BW_capacity_of_substrate_link_3#10: pi0_k1#1 + 3 pi7_k3#3 + 2 pi5_k2#13
                                 + 5 pi16_k5#14 <= 20
 BW_capacity_of_substrate_link_4#11: pi0_k1#1 + 2 pi3_k2#2 + 3 pi7_k3#3 <= 20
 BW_capacity_of_substrate_link_5#12: 3 pi9_k3#15 <= 16
 BW_capacity_of_substrate_link_6#13: 3 pi9_k3#15 <= 15
 BW_capacity_of_substrate_link_7#14: 3 pi7_k3#3 + pi12_k4#4 <= 20
 BW_capacity_of_substrate_link_8#15: 2 pi5_k2#13 + 5 pi16_k5#14 + pi1_k1#16
                                 + 3 pi10_k3#17 <= 16
 BW_capacity_of_substrate_link_9#16: 3 pi8_k3#18 + 5 pi24_k11#19 <= 20
 BW_capacity_of_substrate_link_10#17: 3 pi22_k7#8 + pi1_k1#16 + 3 pi8_k3#18
                                 + 2 pi4_k2#20 + 5 pi15_k5#21 <= 14
 BW_capacity_of_substrate_link_11#18: 2 pi3_k2#2 + 5 pi13_k5#6 + pi2_k1#22
                                 <= 10
 BW_capacity_of_substrate_link_12#19: 3 pi11_k3#23 + 5 pi27_k11#24 <= 20
 BW_capacity_of_substrate_link_13#20: 5 pi24_k11#19 <= 20
 BW_capacity_of_substrate_link_16#21: 5 pi25_k11#25 + 5 pi31_k12#26 <= 11
 BW_capacity_of_substrate_link_17#22: 5 pi30_k12#27 <= 20
 BW_capacity_of_substrate_link_20#23: 5 pi23_k11#10 + 5 pi28_k12#11 <= 13
 BW_capacity_of_substrate_link_21#24: 5 pi28_k12#11 + 5 pi26_k11#28 <= 18
 BW_capacity_of_substrate_link_22#25: 3 pi11_k3#23 <= 19
 BW_capacity_of_substrate_link_23#26: 5 pi23_k11#10 + 5 pi29_k12#29 <= 20
 BW_capacity_of_substrate_link_24#27: 5 pi24_k11#19 <= 13
 BW_capacity_of_substrate_link_25#28: 2 pi6_k2#30 + 5 pi18_k6#31 <= 16
 BW_capacity_of_substrate_link_26#29: 5 pi17_k6#7 + 2 pi4_k2#20 + 5 pi15_k5#21
                                 + pi2_k1#22 <= 13
 BW_capacity_of_substrate_link_27#30: 2 pi6_k2#30 + 5 pi20_k6#32 <= 20
 BW_capacity_of_substrate_link_29#31: pi33_k13#12 + 5 pi29_k12#29 <= 19
 BW_capacity_of_substrate_link_30#32: 5 pi25_k11#25 <= 11
 BW_capacity_of_substrate_link_31#33: 5 pi28_k12#11 <= 10
 BW_capacity_of_substrate_link_32#34: 5 pi30_k12#27 <= 14
 BW_capacity_of_substrate_link_33#35: 5 pi25_k11#25 + 5 pi32_k12#33 <= 15
 BW_capacity_of_substrate_link_34#36: 5 pi31_k12#26 <= 15
 BW_capacity_of_substrate_link_36#37: 5 pi31_k12#26 <= 19
 BW_capacity_of_substrate_link_37#38: 5 pi18_k6#31 <= 19
 BW_capacity_of_substrate_link_38#39: 5 pi21_k6#34 <= 20
 BW_capacity_of_substrate_link_40#40: 5 pi18_k6#31 <= 16
 BW_capacity_of_substrate_link_41#41: 5 pi14_k5#35 + 5 pi19_k6#36 <= 20
 BW_capacity_of_substrate_link_42#42: 5 pi13_k5#6 + 5 pi17_k6#7 <= 15
 BW_capacity_of_substrate_link_43#43: 5 pi14_k5#35 + 5 pi19_k6#36 <= 20
 BW_capacity_of_substrate_link_44#44: 5 pi13_k5#6 + 5 pi17_k6#7 <= 20
 c46#45:                         - 441 vnp1#0 + 40 pi0_k1#1 + 72 pi3_k2#2
                                 + 106 pi7_k3#3 + 18 pi12_k4#4 - 1122 vnp2#5
                                 + 153 pi13_k5#6 + 130 pi17_k6#7 + 28 pi22_k7#8
                                 - 738 vnp4#9 + 99 pi23_k11#10
                                 + 109 pi28_k12#11 + 42 pi33_k13#12
                                 + 126 pi5_k2#13 + 288 pi16_k5#14
                                 + 148 pi9_k3#15 + 50 pi1_k1#16
                                 + 151 pi10_k3#17 + 73 pi8_k3#18
                                 + 104 pi24_k11#19 + 74 pi4_k2#20
                                 + 158 pi15_k5#21 + 71 pi2_k1#22
                                 + 118 pi11_k3#23 + 59 pi27_k11#24
                                 + 144 pi25_k11#25 + 184 pi31_k12#26
                                 + 184 pi30_k12#27 + 104 pi26_k11#28
                                 + 159 pi29_k12#29 + 108 pi6_k2#30
                                 + 305 pi18_k6#31 + 215 pi20_k6#32
                                 + 149 pi32_k12#33 + 285 pi21_k6#34
                                 + 303 pi14_k5#35 + 280 pi19_k6#36 <= 0
Bounds
 0 <= vnp1#0 <= 1
 0 <= pi0_k1#1 <= 1
 0 <= pi3_k2#2 <= 1
 0 <= pi7_k3#3 <= 1
 0 <= pi12_k4#4 <= 1
 0 <= vnp2#5 <= 1
 0 <= pi13_k5#6 <= 1
 0 <= pi17_k6#7 <= 1
 0 <= pi22_k7#8 <= 1
 0 <= vnp4#9 <= 1
 0 <= pi23_k11#10 <= 1
 0 <= pi28_k12#11 <= 1
 0 <= pi33_k13#12 <= 1
 0 <= pi5_k2#13 <= 1
 0 <= pi16_k5#14 <= 1
 0 <= pi9_k3#15 <= 1
 0 <= pi1_k1#16 <= 1
 0 <= pi10_k3#17 <= 1
 0 <= pi8_k3#18 <= 1
 0 <= pi24_k11#19 <= 1
 0 <= pi4_k2#20 <= 1
 0 <= pi15_k5#21 <= 1
 0 <= pi2_k1#22 <= 1
 0 <= pi11_k3#23 <= 1
 0 <= pi27_k11#24 <= 1
 0 <= pi25_k11#25 <= 1
 0 <= pi31_k12#26 <= 1
 0 <= pi30_k12#27 <= 1
 0 <= pi26_k11#28 <= 1
 0 <= pi29_k12#29 <= 1
 0 <= pi6_k2#30 <= 1
 0 <= pi18_k6#31 <= 1
 0 <= pi20_k6#32 <= 1
 0 <= pi32_k12#33 <= 1
 0 <= pi21_k6#34 <= 1
 0 <= pi14_k5#35 <= 1
 0 <= pi19_k6#36 <= 1
Binaries
 vnp1#0  pi0_k1#1  pi3_k2#2  pi7_k3#3  pi12_k4#4  vnp2#5  pi13_k5#6  pi17_k6#7 
 pi22_k7#8  vnp4#9  pi23_k11#10  pi28_k12#11  pi33_k13#12  pi5_k2#13 
 pi16_k5#14  pi9_k3#15  pi1_k1#16  pi10_k3#17  pi8_k3#18  pi24_k11#19 
 pi4_k2#20  pi15_k5#21  pi2_k1#22  pi11_k3#23  pi27_k11#24  pi25_k11#25 
 pi31_k12#26  pi30_k12#27  pi26_k11#28  pi29_k12#29  pi6_k2#30  pi18_k6#31 
 pi20_k6#32  pi32_k12#33  pi21_k6#34  pi14_k5#35  pi19_k6#36 
End
