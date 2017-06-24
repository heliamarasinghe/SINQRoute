\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1553 vnp1#0 - 151 pi0_k1#1 - 66 pi4_k2#2 - 120 pi5_k3#3 - 55 pi6_k4#4
      + 1285 vnp2#5 - 119 pi7_k5#6 - 52 pi11_k6#7 - 47 pi15_k7#8 - 80 pi16_k8#9
      + 1993 vnp3#10 - 228 pi17_k9#11 - 85 pi21_k10#12 - 99 pi25_k11#13
      - 48 pi29_k12#14 + 2627 vnp4#15 - 154 pi33_k13#16 - 43 pi37_k14#17
      - 87 pi41_k15#18 - 76 pi42_k16#19 - 97 pi43_k17#20 - 228 pi47_k18#21
      - 121 pi1_k1#22 - 178 pi19_k9#23 - 102 pi27_k11#24 - 105 pi26_k11#25
      - 199 pi2_k1#26 - 56 pi13_k6#27 - 181 pi24_k10#28 - 137 pi9_k5#29
      - 120 pi28_k11#30 - 113 pi10_k5#31 - 82 pi39_k14#32 - 112 pi49_k18#33
      - 92 pi30_k12#34 - 130 pi46_k17#35 - 72 pi32_k12#36 - 124 pi35_k13#37
      - 208 pi3_k1#38 - 131 pi8_k5#39 - 258 pi18_k9#40 - 104 pi31_k12#41
      - 196 pi50_k18#42 - 46 pi12_k6#43 - 323 pi20_k9#44 - 136 pi22_k10#45
      - 73 pi44_k17#46 - 121 pi40_k14#47 - 136 pi38_k14#48 - 104 pi48_k18#49
      - 55 pi14_k6#50 - 118 pi45_k17#51 - 187 pi34_k13#52 - 148 pi23_k10#53
      - 232 pi36_k13#54
Subject To
 _Embedding_clash_const_of_vlink1_vnp_1#0: vnp1#0 - pi0_k1#1 <= 0
 _Embedding_clash_const_of_vlink2_vnp_1#1: vnp1#0 - pi4_k2#2 <= 0
 _Embedding_clash_const_of_vlink3_vnp_1#2: vnp1#0 - pi5_k3#3 <= 0
 _Embedding_clash_const_of_vlink4_vnp_1#3: vnp1#0 - pi6_k4#4 <= 0
 _Embedding_clash_const_of_vlink5_vnp_2#4: vnp2#5 - pi7_k5#6 <= 0
 _Embedding_clash_const_of_vlink6_vnp_2#5: vnp2#5 - pi11_k6#7 <= 0
 _Embedding_clash_const_of_vlink7_vnp_2#6: vnp2#5 - pi15_k7#8 <= 0
 _Embedding_clash_const_of_vlink8_vnp_2#7: vnp2#5 - pi16_k8#9 <= 0
 _Embedding_clash_const_of_vlink9_vnp_3#8: vnp3#10 - pi17_k9#11 <= 0
 _Embedding_clash_const_of_vlink10_vnp_3#9: vnp3#10 - pi21_k10#12 <= 0
 _Embedding_clash_const_of_vlink11_vnp_3#10: vnp3#10 - pi25_k11#13 <= 0
 _Embedding_clash_const_of_vlink12_vnp_3#11: vnp3#10 - pi29_k12#14 <= 0
 _Embedding_clash_const_of_vlink13_vnp_4#12: vnp4#15 - pi33_k13#16 <= 0
 _Embedding_clash_const_of_vlink14_vnp_4#13: vnp4#15 - pi37_k14#17 <= 0
 _Embedding_clash_const_of_vlink15_vnp_4#14: vnp4#15 - pi41_k15#18 <= 0
 _Embedding_clash_const_of_vlink16_vnp_4#15: vnp4#15 - pi42_k16#19 <= 0
 _Embedding_clash_const_of_vlink17_vnp_4#16: vnp4#15 - pi43_k17#20 <= 0
 _Embedding_clash_const_of_vlink18_vnp_4#17: vnp4#15 - pi47_k18#21 <= 0
 BW_capacity_of_substrate_link_1#18: 3 pi4_k2#2 <= 20
 BW_capacity_of_substrate_link_2#19: 5 pi5_k3#3 <= 20
 BW_capacity_of_substrate_link_3#20: 3 pi1_k1#22 + 5 pi19_k9#23 <= 17
 BW_capacity_of_substrate_link_5#21: 2 pi6_k4#4 + 3 pi27_k11#24 <= 19
 BW_capacity_of_substrate_link_7#22: 3 pi26_k11#25 <= 20
 BW_capacity_of_substrate_link_8#23: 3 pi0_k1#1 + 5 pi17_k9#11 + 3 pi25_k11#13
                                 <= 6
 BW_capacity_of_substrate_link_9#24: 2 pi7_k5#6 + pi15_k7#8 <= 19
 BW_capacity_of_substrate_link_10#25: 3 pi2_k1#26 + pi13_k6#27 + 3 pi24_k10#28
                                 <= 20
 BW_capacity_of_substrate_link_11#26: 3 pi21_k10#12 + 3 pi1_k1#22
                                 + 5 pi19_k9#23 + pi13_k6#27 <= 17
 BW_capacity_of_substrate_link_12#27: 3 pi16_k8#9 + 3 pi26_k11#25 + 2 pi9_k5#29
                                 <= 15
 BW_capacity_of_substrate_link_13#28: 3 pi28_k11#30 <= 19
 BW_capacity_of_substrate_link_14#29: 3 pi27_k11#24 <= 19
 BW_capacity_of_substrate_link_20#30: 3 pi27_k11#24 <= 20
 BW_capacity_of_substrate_link_21#31: 2 pi29_k12#14 + 2 pi10_k5#31
                                 + 3 pi39_k14#32 + 4 pi49_k18#33 <= 13
 BW_capacity_of_substrate_link_22#32: 3 pi25_k11#13 + 4 pi49_k18#33
                                 + 2 pi30_k12#34 + 3 pi46_k17#35 <= 15
 BW_capacity_of_substrate_link_23#33: 2 pi9_k5#29 + 3 pi39_k14#32
                                 + 3 pi46_k17#35 + 2 pi32_k12#36 <= 18
 BW_capacity_of_substrate_link_24#34: 5 pi41_k15#18 + 3 pi43_k17#20
                                 + 4 pi47_k18#21 + 3 pi35_k13#37 <= 16
 BW_capacity_of_substrate_link_25#35: pi11_k6#7 + 3 pi24_k10#28 + 3 pi3_k1#38
                                 + 2 pi8_k5#39 + 5 pi18_k9#40 + 2 pi31_k12#41
                                 + 4 pi50_k18#42 <= 20
 BW_capacity_of_substrate_link_26#36: 3 pi0_k1#1 + 2 pi7_k5#6 + 5 pi17_k9#11
                                 + 5 pi42_k16#19 + 3 pi43_k17#20
                                 + 2 pi30_k12#34 + 3 pi35_k13#37 + pi12_k6#43
                                 <= 20
 BW_capacity_of_substrate_link_27#37: 3 pi3_k1#38 + 5 pi20_k9#44
                                 + 3 pi22_k10#45 + 3 pi44_k17#46 <= 17
 BW_capacity_of_substrate_link_28#38: 2 pi9_k5#29 + 2 pi32_k12#36
                                 + 3 pi44_k17#46 + 3 pi40_k14#47 <= 15
 BW_capacity_of_substrate_link_29#39: 4 pi47_k18#21 + 3 pi38_k14#48 <= 20
 BW_capacity_of_substrate_link_30#40: 3 pi37_k14#17 + 3 pi35_k13#37
                                 + 4 pi48_k18#49 <= 19
 BW_capacity_of_substrate_link_31#41: 2 pi29_k12#14 + 2 pi10_k5#31 <= 20
 BW_capacity_of_substrate_link_35#42: 3 pi37_k14#17 + 3 pi35_k13#37
                                 + 4 pi48_k18#49 <= 20
 BW_capacity_of_substrate_link_36#43: 3 pi33_k13#16 + 4 pi47_k18#21
                                 + 3 pi38_k14#48 <= 16
 BW_capacity_of_substrate_link_37#44: 4 pi50_k18#42 + 3 pi40_k14#47
                                 + pi14_k6#50 <= 20
 BW_capacity_of_substrate_link_38#45: pi11_k6#7 + 2 pi8_k5#39 + 5 pi18_k9#40
                                 + 2 pi31_k12#41 + 3 pi22_k10#45
                                 + 3 pi45_k17#51 <= 20
 BW_capacity_of_substrate_link_39#46: 2 pi29_k12#14 + 3 pi33_k13#16
                                 + 2 pi10_k5#31 + pi14_k6#50 <= 20
 BW_capacity_of_substrate_link_40#47: 3 pi34_k13#52 <= 16
 BW_capacity_of_substrate_link_41#48: 2 pi7_k5#6 + 5 pi17_k9#11 + 3 pi21_k10#12
                                 + 3 pi33_k13#16 + 2 pi30_k12#34 + pi12_k6#43
                                 + 3 pi45_k17#51 <= 20
 BW_capacity_of_substrate_link_42#49: 3 pi0_k1#1 + 3 pi34_k13#52
                                 + 3 pi23_k10#53 <= 20
 BW_capacity_of_substrate_link_43#50: 3 pi23_k10#53 + 3 pi36_k13#54 <= 20
 c52#51:                         - 1553 vnp1#0 + 151 pi0_k1#1 + 66 pi4_k2#2
                                 + 120 pi5_k3#3 + 55 pi6_k4#4 - 1285 vnp2#5
                                 + 119 pi7_k5#6 + 52 pi11_k6#7 + 47 pi15_k7#8
                                 + 80 pi16_k8#9 - 1993 vnp3#10 + 228 pi17_k9#11
                                 + 85 pi21_k10#12 + 99 pi25_k11#13
                                 + 48 pi29_k12#14 - 2627 vnp4#15
                                 + 154 pi33_k13#16 + 43 pi37_k14#17
                                 + 87 pi41_k15#18 + 76 pi42_k16#19
                                 + 97 pi43_k17#20 + 228 pi47_k18#21
                                 + 121 pi1_k1#22 + 178 pi19_k9#23
                                 + 102 pi27_k11#24 + 105 pi26_k11#25
                                 + 199 pi2_k1#26 + 56 pi13_k6#27
                                 + 181 pi24_k10#28 + 137 pi9_k5#29
                                 + 120 pi28_k11#30 + 113 pi10_k5#31
                                 + 82 pi39_k14#32 + 112 pi49_k18#33
                                 + 92 pi30_k12#34 + 130 pi46_k17#35
                                 + 72 pi32_k12#36 + 124 pi35_k13#37
                                 + 208 pi3_k1#38 + 131 pi8_k5#39
                                 + 258 pi18_k9#40 + 104 pi31_k12#41
                                 + 196 pi50_k18#42 + 46 pi12_k6#43
                                 + 323 pi20_k9#44 + 136 pi22_k10#45
                                 + 73 pi44_k17#46 + 121 pi40_k14#47
                                 + 136 pi38_k14#48 + 104 pi48_k18#49
                                 + 55 pi14_k6#50 + 118 pi45_k17#51
                                 + 187 pi34_k13#52 + 148 pi23_k10#53
                                 + 232 pi36_k13#54 <= 0
Bounds
 0 <= vnp1#0 <= 1
 0 <= pi0_k1#1 <= 1
 0 <= pi4_k2#2 <= 1
 0 <= pi5_k3#3 <= 1
 0 <= pi6_k4#4 <= 1
 0 <= vnp2#5 <= 1
 0 <= pi7_k5#6 <= 1
 0 <= pi11_k6#7 <= 1
 0 <= pi15_k7#8 <= 1
 0 <= pi16_k8#9 <= 1
 0 <= vnp3#10 <= 1
 0 <= pi17_k9#11 <= 1
 0 <= pi21_k10#12 <= 1
 0 <= pi25_k11#13 <= 1
 0 <= pi29_k12#14 <= 1
 0 <= vnp4#15 <= 1
 0 <= pi33_k13#16 <= 1
 0 <= pi37_k14#17 <= 1
 0 <= pi41_k15#18 <= 1
 0 <= pi42_k16#19 <= 1
 0 <= pi43_k17#20 <= 1
 0 <= pi47_k18#21 <= 1
 0 <= pi1_k1#22 <= 1
 0 <= pi19_k9#23 <= 1
 0 <= pi27_k11#24 <= 1
 0 <= pi26_k11#25 <= 1
 0 <= pi2_k1#26 <= 1
 0 <= pi13_k6#27 <= 1
 0 <= pi24_k10#28 <= 1
 0 <= pi9_k5#29 <= 1
 0 <= pi28_k11#30 <= 1
 0 <= pi10_k5#31 <= 1
 0 <= pi39_k14#32 <= 1
 0 <= pi49_k18#33 <= 1
 0 <= pi30_k12#34 <= 1
 0 <= pi46_k17#35 <= 1
 0 <= pi32_k12#36 <= 1
 0 <= pi35_k13#37 <= 1
 0 <= pi3_k1#38 <= 1
 0 <= pi8_k5#39 <= 1
 0 <= pi18_k9#40 <= 1
 0 <= pi31_k12#41 <= 1
 0 <= pi50_k18#42 <= 1
 0 <= pi12_k6#43 <= 1
 0 <= pi20_k9#44 <= 1
 0 <= pi22_k10#45 <= 1
 0 <= pi44_k17#46 <= 1
 0 <= pi40_k14#47 <= 1
 0 <= pi38_k14#48 <= 1
 0 <= pi48_k18#49 <= 1
 0 <= pi14_k6#50 <= 1
 0 <= pi45_k17#51 <= 1
 0 <= pi34_k13#52 <= 1
 0 <= pi23_k10#53 <= 1
 0 <= pi36_k13#54 <= 1
Binaries
 vnp1#0  pi0_k1#1  pi4_k2#2  pi5_k3#3  pi6_k4#4  vnp2#5  pi7_k5#6  pi11_k6#7 
 pi15_k7#8  pi16_k8#9  vnp3#10  pi17_k9#11  pi21_k10#12  pi25_k11#13 
 pi29_k12#14  vnp4#15  pi33_k13#16  pi37_k14#17  pi41_k15#18  pi42_k16#19 
 pi43_k17#20  pi47_k18#21  pi1_k1#22  pi19_k9#23  pi27_k11#24  pi26_k11#25 
 pi2_k1#26  pi13_k6#27  pi24_k10#28  pi9_k5#29  pi28_k11#30  pi10_k5#31 
 pi39_k14#32  pi49_k18#33  pi30_k12#34  pi46_k17#35  pi32_k12#36  pi35_k13#37 
 pi3_k1#38  pi8_k5#39  pi18_k9#40  pi31_k12#41  pi50_k18#42  pi12_k6#43 
 pi20_k9#44  pi22_k10#45  pi44_k17#46  pi40_k14#47  pi38_k14#48  pi48_k18#49 
 pi14_k6#50  pi45_k17#51  pi34_k13#52  pi23_k10#53  pi36_k13#54 
End
