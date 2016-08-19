\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1228 vnp1#0 - 24 pi0_k1#1 - 165 pi5_k2#2 - 80 pi10_k3#3 - 92 pi14_k4#4
      - 125 pi19_k5#5 - 107 pi23_k6#6 + 1003 vnp2#7 - 81 pi28_k7#8
      - 47 pi29_k8#9 - 8 pi34_k9#10 - 143 pi35_k10#11 - 55 pi40_k11#12
      - 94 pi41_k12#13 + 655 vnp3#14 - 32 pi46_k13#15 - 40 pi47_k14#16
      - 80 pi52_k15#17 - 12 pi57_k16#18 - 34 pi62_k17#19 - 73 pi63_k18#20
      - 131 pi24_k6#21 - 110 pi17_k4#22 - 80 pi56_k15#23 - 240 pi7_k2#24
      - 230 pi21_k5#25 - 180 pi6_k2#26 - 170 pi20_k5#27 - 163 pi26_k6#28
      - 74 pi30_k8#29 - 194 pi42_k12#30 - 100 pi64_k18#31 - 245 pi8_k2#32
      - 112 pi12_k3#33 - 128 pi15_k4#34 - 270 pi22_k5#35 - 119 pi33_k8#36
      - 32 pi48_k14#37 - 188 pi37_k10#38 - 26 pi61_k16#39 - 116 pi18_k4#40
      - 88 pi36_k10#41 - 68 pi55_k15#42 - 127 pi66_k18#43 - 113 pi31_k8#44
      - 149 pi43_k12#45 - 72 pi51_k14#46 - 103 pi65_k18#47 - 144 pi13_k3#48
      - 74 pi16_k4#49 - 79 pi27_k6#50 - 92 pi32_k8#51 - 59 pi44_k12#52
      - 26 pi54_k15#53 - 259 pi45_k12#54 - 36 pi3_k1#55 - 148 pi39_k10#56
      - 88 pi53_k15#57 - 157 pi67_k18#58 - 43 pi1_k1#59 - 80 pi50_k14#60
      - 36 pi58_k16#61 - 171 pi25_k6#62 - 48 pi49_k14#63 - 40 pi59_k16#64
      - 83 pi38_k10#65 - 37 pi2_k1#66 - 51 pi4_k1#67 - 270 pi9_k2#68
      - 116 pi11_k3#69 - 28 pi60_k16#70
Subject To
 _Embedding_clash_const_of_vlink1_vnp_1#0: vnp1#0 - pi0_k1#1 <= 0
 _Embedding_clash_const_of_vlink2_vnp_1#1: vnp1#0 - pi5_k2#2 <= 0
 _Embedding_clash_const_of_vlink3_vnp_1#2: vnp1#0 - pi10_k3#3 <= 0
 _Embedding_clash_const_of_vlink4_vnp_1#3: vnp1#0 - pi14_k4#4 <= 0
 _Embedding_clash_const_of_vlink5_vnp_1#4: vnp1#0 - pi19_k5#5 <= 0
 _Embedding_clash_const_of_vlink6_vnp_1#5: vnp1#0 - pi23_k6#6 <= 0
 _Embedding_clash_const_of_vlink7_vnp_2#6: vnp2#7 - pi28_k7#8 <= 0
 _Embedding_clash_const_of_vlink8_vnp_2#7: vnp2#7 - pi29_k8#9 <= 0
 _Embedding_clash_const_of_vlink9_vnp_2#8: vnp2#7 - pi34_k9#10 <= 0
 _Embedding_clash_const_of_vlink10_vnp_2#9: vnp2#7 - pi35_k10#11 <= 0
 _Embedding_clash_const_of_vlink11_vnp_2#10: vnp2#7 - pi40_k11#12 <= 0
 _Embedding_clash_const_of_vlink12_vnp_2#11: vnp2#7 - pi41_k12#13 <= 0
 _Embedding_clash_const_of_vlink13_vnp_3#12: vnp3#14 - pi46_k13#15 <= 0
 _Embedding_clash_const_of_vlink14_vnp_3#13: vnp3#14 - pi47_k14#16 <= 0
 _Embedding_clash_const_of_vlink15_vnp_3#14: vnp3#14 - pi52_k15#17 <= 0
 _Embedding_clash_const_of_vlink16_vnp_3#15: vnp3#14 - pi57_k16#18 <= 0
 _Embedding_clash_const_of_vlink17_vnp_3#16: vnp3#14 - pi62_k17#19 <= 0
 _Embedding_clash_const_of_vlink18_vnp_3#17: vnp3#14 - pi63_k18#20 <= 0
 BW_capacity_of_substrate_link_1#18: 4 pi24_k6#21 <= 13
 BW_capacity_of_substrate_link_2#19: 4 pi24_k6#21 <= 20
 BW_capacity_of_substrate_link_3#20: 5 pi5_k2#2 + 5 pi19_k5#5 + 2 pi17_k4#22
                                 <= 3
 BW_capacity_of_substrate_link_4#21: 2 pi10_k3#3 + 2 pi14_k4#4 + 5 pi19_k5#5
                                 <= 6
 BW_capacity_of_substrate_link_5#22: 4 pi23_k6#6 + 2 pi17_k4#22 + 2 pi56_k15#23
                                 <= 8
 BW_capacity_of_substrate_link_7#23: 5 pi7_k2#24 + 5 pi21_k5#25 <= 17
 BW_capacity_of_substrate_link_8#24: 2 pi56_k15#23 + 5 pi6_k2#26 + 5 pi20_k5#27
                                 + 4 pi26_k6#28 <= 13
 BW_capacity_of_substrate_link_9#25: 5 pi7_k2#24 + 5 pi21_k5#25 + 3 pi30_k8#29
                                 + 5 pi42_k12#30 + 3 pi64_k18#31 <= 3
 BW_capacity_of_substrate_link_10#26: 5 pi20_k5#27 + 5 pi8_k2#32 + 2 pi12_k3#33
                                 + 2 pi15_k4#34 <= 18
 BW_capacity_of_substrate_link_11#27: 5 pi5_k2#2 + 2 pi10_k3#3 + 2 pi14_k4#4
                                 + 5 pi22_k5#35 <= 20
 BW_capacity_of_substrate_link_12#28: 3 pi29_k8#9 + pi34_k9#10 + 5 pi41_k12#13
                                 <= 20
 BW_capacity_of_substrate_link_13#29: 3 pi64_k18#31 + 3 pi33_k8#36 <= 13
 BW_capacity_of_substrate_link_15#30: 4 pi23_k6#6 + 2 pi17_k4#22
                                 + 2 pi56_k15#23 <= 8
 BW_capacity_of_substrate_link_17#31: 3 pi64_k18#31 <= 20
 BW_capacity_of_substrate_link_18#32: pi57_k16#18 + 2 pi48_k14#37 <= 20
 BW_capacity_of_substrate_link_19#33: 4 pi62_k17#19 + 3 pi63_k18#20
                                 + 2 pi48_k14#37 + 5 pi37_k10#38 + pi61_k16#39
                                 <= 20
 BW_capacity_of_substrate_link_20#34: 3 pi33_k8#36 <= 12
 BW_capacity_of_substrate_link_21#35: 5 pi41_k12#13 + 2 pi47_k14#16
                                 + 4 pi26_k6#28 + pi61_k16#39 + 2 pi18_k4#40
                                 + 5 pi36_k10#41 + 2 pi55_k15#42
                                 + 3 pi66_k18#43 <= 11
 BW_capacity_of_substrate_link_22#36: pi46_k13#15 + 3 pi63_k18#20
                                 + 4 pi26_k6#28 + 2 pi18_k4#40 + 2 pi55_k15#42
                                 + 3 pi31_k8#44 <= 20
 BW_capacity_of_substrate_link_23#37: 3 pi29_k8#9 + 5 pi35_k10#11
                                 + 4 pi40_k11#12 + 5 pi43_k12#45
                                 + 2 pi51_k14#46 + 3 pi65_k18#47 <= 20
 BW_capacity_of_substrate_link_24#38: 2 pi52_k15#17 + 3 pi30_k8#29
                                 + 5 pi42_k12#30 + 2 pi15_k4#34 + 3 pi65_k18#47
                                 + 2 pi13_k3#48 <= 9
 BW_capacity_of_substrate_link_25#39: 2 pi16_k4#49 + 4 pi27_k6#50
                                 + 3 pi32_k8#51 + 5 pi44_k12#52 + 2 pi54_k15#53
                                 <= 13
 BW_capacity_of_substrate_link_26#40: 5 pi6_k2#26 + 2 pi12_k3#33 + 5 pi22_k5#35
                                 + 5 pi45_k12#54 <= 6
 BW_capacity_of_substrate_link_27#41: 2 pi14_k4#4 + pi3_k1#55 <= 20
 BW_capacity_of_substrate_link_28#42: 3 pi32_k8#51 + 5 pi39_k10#56 <= 20
 BW_capacity_of_substrate_link_29#43: 4 pi28_k7#8 + 5 pi35_k10#11
                                 + 2 pi52_k15#17 + 5 pi42_k12#30 + 2 pi15_k4#34
                                 + 2 pi51_k14#46 + 2 pi13_k3#48 <= 17
 BW_capacity_of_substrate_link_30#44: 2 pi53_k15#57 + 3 pi67_k18#58 <= 11
 BW_capacity_of_substrate_link_31#45: 5 pi41_k12#13 + 5 pi36_k10#41 + pi1_k1#59
                                 <= 3
 BW_capacity_of_substrate_link_32#46: 5 pi37_k10#38 + 3 pi66_k18#43
                                 + 2 pi50_k14#60 + pi58_k16#61 <= 20
 BW_capacity_of_substrate_link_33#47: 4 pi25_k6#62 + 2 pi49_k14#63
                                 + pi59_k16#64 <= 1
 BW_capacity_of_substrate_link_34#48: 4 pi23_k6#6 + pi57_k16#18 + 2 pi17_k4#22
                                 + 2 pi56_k15#23 + 2 pi48_k14#37 <= 15
 BW_capacity_of_substrate_link_35#49: 2 pi47_k14#16 + 2 pi18_k4#40
                                 + 2 pi53_k15#57 + pi1_k1#59 + pi58_k16#61
                                 + 4 pi25_k6#62 + 5 pi38_k10#65 <= 12
 BW_capacity_of_substrate_link_36#50: pi0_k1#1 + 2 pi14_k4#4 + 2 pi52_k15#17
                                 + 2 pi51_k14#46 + 4 pi27_k6#50 + 5 pi38_k10#65
                                 <= 12
 BW_capacity_of_substrate_link_37#51: 2 pi14_k4#4 + 4 pi27_k6#50
                                 + 5 pi44_k12#52 + 2 pi54_k15#53 + pi3_k1#55
                                 + 5 pi39_k10#56 <= 15
 BW_capacity_of_substrate_link_39#52: 5 pi45_k12#54 + pi2_k1#66 <= 16
 BW_capacity_of_substrate_link_40#53: pi0_k1#1 + 2 pi13_k3#48 <= 2
 BW_capacity_of_substrate_link_41#54: 5 pi45_k12#54 + pi4_k1#67 + 5 pi9_k2#68
                                 + 2 pi11_k3#69 <= 15
 BW_capacity_of_substrate_link_42#55: 5 pi5_k2#2 + 2 pi10_k3#3 + pi3_k1#55
                                 <= 10
 BW_capacity_of_substrate_link_43#56: pi2_k1#66 + 5 pi9_k2#68 + 2 pi11_k3#69
                                 <= 20
 c58#57:                         - 1228 vnp1#0 + 24 pi0_k1#1 + 165 pi5_k2#2
                                 + 80 pi10_k3#3 + 92 pi14_k4#4 + 125 pi19_k5#5
                                 + 107 pi23_k6#6 - 1003 vnp2#7 + 81 pi28_k7#8
                                 + 47 pi29_k8#9 + 8 pi34_k9#10
                                 + 143 pi35_k10#11 + 55 pi40_k11#12
                                 + 94 pi41_k12#13 - 655 vnp3#14
                                 + 32 pi46_k13#15 + 40 pi47_k14#16
                                 + 80 pi52_k15#17 + 12 pi57_k16#18
                                 + 34 pi62_k17#19 + 73 pi63_k18#20
                                 + 131 pi24_k6#21 + 110 pi17_k4#22
                                 + 80 pi56_k15#23 + 240 pi7_k2#24
                                 + 230 pi21_k5#25 + 180 pi6_k2#26
                                 + 170 pi20_k5#27 + 163 pi26_k6#28
                                 + 74 pi30_k8#29 + 194 pi42_k12#30
                                 + 100 pi64_k18#31 + 245 pi8_k2#32
                                 + 112 pi12_k3#33 + 128 pi15_k4#34
                                 + 270 pi22_k5#35 + 119 pi33_k8#36
                                 + 32 pi48_k14#37 + 188 pi37_k10#38
                                 + 26 pi61_k16#39 + 116 pi18_k4#40
                                 + 88 pi36_k10#41 + 68 pi55_k15#42
                                 + 127 pi66_k18#43 + 113 pi31_k8#44
                                 + 149 pi43_k12#45 + 72 pi51_k14#46
                                 + 103 pi65_k18#47 + 144 pi13_k3#48
                                 + 74 pi16_k4#49 + 79 pi27_k6#50
                                 + 92 pi32_k8#51 + 59 pi44_k12#52
                                 + 26 pi54_k15#53 + 259 pi45_k12#54
                                 + 36 pi3_k1#55 + 148 pi39_k10#56
                                 + 88 pi53_k15#57 + 157 pi67_k18#58
                                 + 43 pi1_k1#59 + 80 pi50_k14#60
                                 + 36 pi58_k16#61 + 171 pi25_k6#62
                                 + 48 pi49_k14#63 + 40 pi59_k16#64
                                 + 83 pi38_k10#65 + 37 pi2_k1#66 + 51 pi4_k1#67
                                 + 270 pi9_k2#68 + 116 pi11_k3#69
                                 + 28 pi60_k16#70 <= 0
Bounds
 0 <= vnp1#0 <= 1
 0 <= pi0_k1#1 <= 1
 0 <= pi5_k2#2 <= 1
 0 <= pi10_k3#3 <= 1
 0 <= pi14_k4#4 <= 1
 0 <= pi19_k5#5 <= 1
 0 <= pi23_k6#6 <= 1
 0 <= vnp2#7 <= 1
 0 <= pi28_k7#8 <= 1
 0 <= pi29_k8#9 <= 1
 0 <= pi34_k9#10 <= 1
 0 <= pi35_k10#11 <= 1
 0 <= pi40_k11#12 <= 1
 0 <= pi41_k12#13 <= 1
 0 <= vnp3#14 <= 1
 0 <= pi46_k13#15 <= 1
 0 <= pi47_k14#16 <= 1
 0 <= pi52_k15#17 <= 1
 0 <= pi57_k16#18 <= 1
 0 <= pi62_k17#19 <= 1
 0 <= pi63_k18#20 <= 1
 0 <= pi24_k6#21 <= 1
 0 <= pi17_k4#22 <= 1
 0 <= pi56_k15#23 <= 1
 0 <= pi7_k2#24 <= 1
 0 <= pi21_k5#25 <= 1
 0 <= pi6_k2#26 <= 1
 0 <= pi20_k5#27 <= 1
 0 <= pi26_k6#28 <= 1
 0 <= pi30_k8#29 <= 1
 0 <= pi42_k12#30 <= 1
 0 <= pi64_k18#31 <= 1
 0 <= pi8_k2#32 <= 1
 0 <= pi12_k3#33 <= 1
 0 <= pi15_k4#34 <= 1
 0 <= pi22_k5#35 <= 1
 0 <= pi33_k8#36 <= 1
 0 <= pi48_k14#37 <= 1
 0 <= pi37_k10#38 <= 1
 0 <= pi61_k16#39 <= 1
 0 <= pi18_k4#40 <= 1
 0 <= pi36_k10#41 <= 1
 0 <= pi55_k15#42 <= 1
 0 <= pi66_k18#43 <= 1
 0 <= pi31_k8#44 <= 1
 0 <= pi43_k12#45 <= 1
 0 <= pi51_k14#46 <= 1
 0 <= pi65_k18#47 <= 1
 0 <= pi13_k3#48 <= 1
 0 <= pi16_k4#49 <= 1
 0 <= pi27_k6#50 <= 1
 0 <= pi32_k8#51 <= 1
 0 <= pi44_k12#52 <= 1
 0 <= pi54_k15#53 <= 1
 0 <= pi45_k12#54 <= 1
 0 <= pi3_k1#55 <= 1
 0 <= pi39_k10#56 <= 1
 0 <= pi53_k15#57 <= 1
 0 <= pi67_k18#58 <= 1
 0 <= pi1_k1#59 <= 1
 0 <= pi50_k14#60 <= 1
 0 <= pi58_k16#61 <= 1
 0 <= pi25_k6#62 <= 1
 0 <= pi49_k14#63 <= 1
 0 <= pi59_k16#64 <= 1
 0 <= pi38_k10#65 <= 1
 0 <= pi2_k1#66 <= 1
 0 <= pi4_k1#67 <= 1
 0 <= pi9_k2#68 <= 1
 0 <= pi11_k3#69 <= 1
 0 <= pi60_k16#70 <= 1
Binaries
 vnp1#0  pi0_k1#1  pi5_k2#2  pi10_k3#3  pi14_k4#4  pi19_k5#5  pi23_k6#6 
 vnp2#7  pi28_k7#8  pi29_k8#9  pi34_k9#10  pi35_k10#11  pi40_k11#12 
 pi41_k12#13  vnp3#14  pi46_k13#15  pi47_k14#16  pi52_k15#17  pi57_k16#18 
 pi62_k17#19  pi63_k18#20  pi24_k6#21  pi17_k4#22  pi56_k15#23  pi7_k2#24 
 pi21_k5#25  pi6_k2#26  pi20_k5#27  pi26_k6#28  pi30_k8#29  pi42_k12#30 
 pi64_k18#31  pi8_k2#32  pi12_k3#33  pi15_k4#34  pi22_k5#35  pi33_k8#36 
 pi48_k14#37  pi37_k10#38  pi61_k16#39  pi18_k4#40  pi36_k10#41  pi55_k15#42 
 pi66_k18#43  pi31_k8#44  pi43_k12#45  pi51_k14#46  pi65_k18#47  pi13_k3#48 
 pi16_k4#49  pi27_k6#50  pi32_k8#51  pi44_k12#52  pi54_k15#53  pi45_k12#54 
 pi3_k1#55  pi39_k10#56  pi53_k15#57  pi67_k18#58  pi1_k1#59  pi50_k14#60 
 pi58_k16#61  pi25_k6#62  pi49_k14#63  pi59_k16#64  pi38_k10#65  pi2_k1#66 
 pi4_k1#67  pi9_k2#68  pi11_k3#69  pi60_k16#70 
End
