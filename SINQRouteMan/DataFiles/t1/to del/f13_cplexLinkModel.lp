\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 904 vnp2#0 - 45 pi0_k4#1 - 52 pi5_k5#2 - 136 pi10_k6#3 - 105 pi15_k7#4
      - 151 pi20_k8#5 + 1415 vnp3#6 - 195 pi25_k9#7 - 52 pi30_k10#8
      - 75 pi31_k11#9 - 137 pi36_k12#10 - 70 pi41_k13#11 - 106 pi42_k13#12
      - 109 pi39_k12#13 - 305 pi29_k9#14 - 79 pi44_k13#15 - 69 pi1_k4#16
      - 206 pi24_k8#17 - 210 pi26_k9#18 - 132 pi33_k11#19 - 165 pi37_k12#20
      - 127 pi45_k13#21 - 210 pi28_k9#22 - 165 pi40_k12#23 - 164 pi12_k6#24
      - 245 pi27_k9#25 - 73 pi3_k4#26 - 91 pi21_k8#27 - 151 pi22_k8#28
      - 46 pi9_k5#29 - 48 pi6_k5#30 - 153 pi38_k12#31 - 73 pi4_k4#32
      - 181 pi23_k8#33 - 67 pi2_k4#34 - 164 pi13_k6#35 - 49 pi7_k5#36
      - 96 pi32_k11#37 - 91 pi43_k13#38 - 212 pi14_k6#39 - 69 pi35_k11#40
      - 53 pi8_k5#41 - 156 pi11_k6#42 - 72 pi34_k11#43 - 109 pi16_k7#44
      - 177 pi18_k7#45 - 189 pi17_k7#46 - 125 pi19_k7#47
Subject To
 _Embedding_clash_const_of_vlink4_vnp_2#0: vnp2#0 - pi0_k4#1 <= 0
 _Embedding_clash_const_of_vlink5_vnp_2#1: vnp2#0 - pi5_k5#2 <= 0
 _Embedding_clash_const_of_vlink6_vnp_2#2: vnp2#0 - pi10_k6#3 <= 0
 _Embedding_clash_const_of_vlink7_vnp_2#3: vnp2#0 - pi15_k7#4 <= 0
 _Embedding_clash_const_of_vlink8_vnp_2#4: vnp2#0 - pi20_k8#5 <= 0
 _Embedding_clash_const_of_vlink9_vnp_3#5: vnp3#6 - pi25_k9#7 <= 0
 _Embedding_clash_const_of_vlink10_vnp_3#6: vnp3#6 - pi30_k10#8 <= 0
 _Embedding_clash_const_of_vlink11_vnp_3#7: vnp3#6 - pi31_k11#9 <= 0
 _Embedding_clash_const_of_vlink12_vnp_3#8: vnp3#6 - pi36_k12#10 <= 0
 _Embedding_clash_const_of_vlink13_vnp_3#9: vnp3#6 - pi41_k13#11 <= 0
 BW_capacity_of_substrate_link_3#10: 4 pi36_k12#10 + 3 pi42_k13#12 <= 0
 BW_capacity_of_substrate_link_5#11: 4 pi39_k12#13 <= 8
 BW_capacity_of_substrate_link_6#12: 5 pi29_k9#14 <= 20
 BW_capacity_of_substrate_link_7#13: 4 pi36_k12#10 + 3 pi42_k13#12 <= 17
 BW_capacity_of_substrate_link_8#14: 3 pi44_k13#15 <= 18
 BW_capacity_of_substrate_link_9#15: 4 pi10_k6#3 + 2 pi1_k4#16 + 5 pi24_k8#17
                                 + 5 pi26_k9#18 + 3 pi33_k11#19 + 4 pi37_k12#20
                                 + 3 pi45_k13#21 <= 0
 BW_capacity_of_substrate_link_10#16: 3 pi41_k13#11 + 4 pi37_k12#20
                                 + 5 pi28_k9#22 <= 18
 BW_capacity_of_substrate_link_11#17: 5 pi28_k9#22 + 4 pi40_k12#23 <= 14
 BW_capacity_of_substrate_link_12#18: 2 pi0_k4#1 + 5 pi20_k8#5 + 3 pi42_k13#12
                                 + 3 pi33_k11#19 + 4 pi12_k6#24 + 5 pi27_k9#25
                                 <= 20
 BW_capacity_of_substrate_link_13#19: 4 pi36_k12#10 + 5 pi26_k9#18
                                 + 2 pi3_k4#26 + 5 pi21_k8#27 <= 10
 BW_capacity_of_substrate_link_14#20: 4 pi39_k12#13 + 5 pi29_k9#14 <= 19
 BW_capacity_of_substrate_link_16#21: 5 pi22_k8#28 <= 10
 BW_capacity_of_substrate_link_17#22: 5 pi21_k8#27 <= 20
 BW_capacity_of_substrate_link_18#23: 5 pi22_k8#28 + pi9_k5#29 <= 18
 BW_capacity_of_substrate_link_19#24: 5 pi20_k8#5 + pi6_k5#30 <= 15
 BW_capacity_of_substrate_link_20#25: 5 pi25_k9#7 + 3 pi30_k10#8 + 2 pi3_k4#26
                                 + 4 pi38_k12#31 <= 11
 BW_capacity_of_substrate_link_21#26: 2 pi4_k4#32 + 5 pi23_k8#33 <= 6
 BW_capacity_of_substrate_link_22#27: 5 pi25_k9#7 + 3 pi31_k11#9
                                 + 3 pi41_k13#11 + 5 pi24_k8#17 + pi6_k5#30
                                 + 4 pi38_k12#31 + 2 pi2_k4#34 + 4 pi13_k6#35
                                 <= 20
 BW_capacity_of_substrate_link_23#28: 2 pi0_k4#1 + 4 pi12_k6#24 + pi7_k5#36
                                 + 3 pi32_k11#37 + 3 pi43_k13#38 <= 20
 BW_capacity_of_substrate_link_24#29: 2 pi1_k4#16 + 3 pi32_k11#37
                                 + 3 pi43_k13#38 + 4 pi14_k6#39 <= 11
 BW_capacity_of_substrate_link_25#30: 4 pi10_k6#3 + pi6_k5#30 + 3 pi35_k11#40
                                 <= 13
 BW_capacity_of_substrate_link_26#31: 5 pi25_k9#7 + 3 pi31_k11#9
                                 + 4 pi40_k12#23 + pi8_k5#41 + 4 pi11_k6#42
                                 <= 7
 BW_capacity_of_substrate_link_27#32: 3 pi34_k11#43 <= 19
 BW_capacity_of_substrate_link_28#33: pi7_k5#36 + 3 pi34_k11#43 + 4 pi16_k7#44
                                 <= 20
 BW_capacity_of_substrate_link_29#34: 4 pi15_k7#4 + 4 pi12_k6#24 <= 17
 BW_capacity_of_substrate_link_30#35: 2 pi4_k4#32 + 4 pi18_k7#45 <= 13
 BW_capacity_of_substrate_link_31#36: pi5_k5#2 + 4 pi18_k7#45 <= 5
 BW_capacity_of_substrate_link_32#37: pi5_k5#2 + 5 pi23_k8#33 <= 18
 BW_capacity_of_substrate_link_34#38: pi9_k5#29 <= 13
 BW_capacity_of_substrate_link_36#39: pi9_k5#29 <= 11
 BW_capacity_of_substrate_link_37#40: 4 pi17_k7#46 <= 14
 BW_capacity_of_substrate_link_38#41: 4 pi10_k6#3 + pi6_k5#30 + 4 pi16_k7#44
                                 <= 15
 BW_capacity_of_substrate_link_39#42: pi5_k5#2 + 4 pi15_k7#4 + 4 pi12_k6#24
                                 <= 18
 BW_capacity_of_substrate_link_40#43: 4 pi19_k7#47 <= 2
 BW_capacity_of_substrate_link_41#44: pi8_k5#41 + 4 pi11_k6#42 <= 20
 BW_capacity_of_substrate_link_43#45: 4 pi19_k7#47 <= 20
 c47#46:                         - 904 vnp2#0 + 45 pi0_k4#1 + 52 pi5_k5#2
                                 + 136 pi10_k6#3 + 105 pi15_k7#4
                                 + 151 pi20_k8#5 - 1415 vnp3#6 + 195 pi25_k9#7
                                 + 52 pi30_k10#8 + 75 pi31_k11#9
                                 + 137 pi36_k12#10 + 70 pi41_k13#11
                                 + 106 pi42_k13#12 + 109 pi39_k12#13
                                 + 305 pi29_k9#14 + 79 pi44_k13#15
                                 + 69 pi1_k4#16 + 206 pi24_k8#17
                                 + 210 pi26_k9#18 + 132 pi33_k11#19
                                 + 165 pi37_k12#20 + 127 pi45_k13#21
                                 + 210 pi28_k9#22 + 165 pi40_k12#23
                                 + 164 pi12_k6#24 + 245 pi27_k9#25
                                 + 73 pi3_k4#26 + 91 pi21_k8#27
                                 + 151 pi22_k8#28 + 46 pi9_k5#29 + 48 pi6_k5#30
                                 + 153 pi38_k12#31 + 73 pi4_k4#32
                                 + 181 pi23_k8#33 + 67 pi2_k4#34
                                 + 164 pi13_k6#35 + 49 pi7_k5#36
                                 + 96 pi32_k11#37 + 91 pi43_k13#38
                                 + 212 pi14_k6#39 + 69 pi35_k11#40
                                 + 53 pi8_k5#41 + 156 pi11_k6#42
                                 + 72 pi34_k11#43 + 109 pi16_k7#44
                                 + 177 pi18_k7#45 + 189 pi17_k7#46
                                 + 125 pi19_k7#47 <= 0
Bounds
 0 <= vnp2#0 <= 1
 0 <= pi0_k4#1 <= 1
 0 <= pi5_k5#2 <= 1
 0 <= pi10_k6#3 <= 1
 0 <= pi15_k7#4 <= 1
 0 <= pi20_k8#5 <= 1
 0 <= vnp3#6 <= 1
 0 <= pi25_k9#7 <= 1
 0 <= pi30_k10#8 <= 1
 0 <= pi31_k11#9 <= 1
 0 <= pi36_k12#10 <= 1
 0 <= pi41_k13#11 <= 1
 0 <= pi42_k13#12 <= 1
 0 <= pi39_k12#13 <= 1
 0 <= pi29_k9#14 <= 1
 0 <= pi44_k13#15 <= 1
 0 <= pi1_k4#16 <= 1
 0 <= pi24_k8#17 <= 1
 0 <= pi26_k9#18 <= 1
 0 <= pi33_k11#19 <= 1
 0 <= pi37_k12#20 <= 1
 0 <= pi45_k13#21 <= 1
 0 <= pi28_k9#22 <= 1
 0 <= pi40_k12#23 <= 1
 0 <= pi12_k6#24 <= 1
 0 <= pi27_k9#25 <= 1
 0 <= pi3_k4#26 <= 1
 0 <= pi21_k8#27 <= 1
 0 <= pi22_k8#28 <= 1
 0 <= pi9_k5#29 <= 1
 0 <= pi6_k5#30 <= 1
 0 <= pi38_k12#31 <= 1
 0 <= pi4_k4#32 <= 1
 0 <= pi23_k8#33 <= 1
 0 <= pi2_k4#34 <= 1
 0 <= pi13_k6#35 <= 1
 0 <= pi7_k5#36 <= 1
 0 <= pi32_k11#37 <= 1
 0 <= pi43_k13#38 <= 1
 0 <= pi14_k6#39 <= 1
 0 <= pi35_k11#40 <= 1
 0 <= pi8_k5#41 <= 1
 0 <= pi11_k6#42 <= 1
 0 <= pi34_k11#43 <= 1
 0 <= pi16_k7#44 <= 1
 0 <= pi18_k7#45 <= 1
 0 <= pi17_k7#46 <= 1
 0 <= pi19_k7#47 <= 1
Binaries
 vnp2#0  pi0_k4#1  pi5_k5#2  pi10_k6#3  pi15_k7#4  pi20_k8#5  vnp3#6 
 pi25_k9#7  pi30_k10#8  pi31_k11#9  pi36_k12#10  pi41_k13#11  pi42_k13#12 
 pi39_k12#13  pi29_k9#14  pi44_k13#15  pi1_k4#16  pi24_k8#17  pi26_k9#18 
 pi33_k11#19  pi37_k12#20  pi45_k13#21  pi28_k9#22  pi40_k12#23  pi12_k6#24 
 pi27_k9#25  pi3_k4#26  pi21_k8#27  pi22_k8#28  pi9_k5#29  pi6_k5#30 
 pi38_k12#31  pi4_k4#32  pi23_k8#33  pi2_k4#34  pi13_k6#35  pi7_k5#36 
 pi32_k11#37  pi43_k13#38  pi14_k6#39  pi35_k11#40  pi8_k5#41  pi11_k6#42 
 pi34_k11#43  pi16_k7#44  pi18_k7#45  pi17_k7#46  pi19_k7#47 
End
