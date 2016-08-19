\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 787 vnp1#0 - 117 pi0_k1#1 - 82 pi5_k2#2 - 88 pi6_k3#3 - 68 pi7_k4#4
      - 65 pi8_k5#5 + 1795 vnp2#6 - 150 pi13_k6#7 - 70 pi18_k7#8 - 91 pi23_k8#9
      - 124 pi28_k9#10 - 27 pi32_k10#11 - 169 pi33_k11#12 + 514 vnp3#13
      - 39 pi38_k12#14 - 66 pi39_k13#15 - 67 pi44_k14#16 - 56 pi45_k15#17
      + 492 vnp5#18 - 119 pi46_k19#19 - 122 pi51_k20#20 - 57 pi56_k21#21
      - 49 pi61_k22#22 + 562 vnp7#23 - 63 pi62_k27#24 - 140 pi67_k28#25
      - 71 pi70_k29#26 + 705 vnp8#27 - 148 pi75_k30#28 - 53 pi80_k31#29
      - 45 pi85_k32#30 - 75 pi86_k33#31 - 174 pi15_k6#32 - 148 pi29_k9#33
      - 241 pi36_k11#34 - 194 pi16_k6#35 - 114 pi20_k7#36 - 66 pi66_k27#37
      - 126 pi74_k29#38 - 281 pi73_k29#39 - 131 pi71_k29#40 - 136 pi30_k9#41
      - 217 pi34_k11#42 - 152 pi68_k28#43 - 92 pi47_k19#44 - 70 pi53_k20#45
      - 74 pi64_k27#46 - 126 pi72_k29#47 - 102 pi19_k7#48 - 206 pi24_k8#49
      - 80 pi63_k27#50 - 220 pi69_k28#51 - 169 pi3_k1#52 - 125 pi50_k19#53
      - 119 pi11_k5#54 - 113 pi9_k5#55 - 170 pi10_k5#56 - 161 pi1_k1#57
      - 134 pi48_k19#58 - 137 pi2_k1#59 - 152 pi12_k5#60 - 196 pi76_k30#61
      - 184 pi79_k30#62 - 161 pi49_k19#63 - 130 pi55_k20#64 - 195 pi90_k33#65
      - 77 pi65_k27#66 - 218 pi17_k6#67 - 170 pi21_k7#68 - 156 pi42_k13#69
      - 75 pi59_k21#70 - 131 pi25_k8#71 - 157 pi35_k11#72 - 210 pi14_k6#73
      - 162 pi22_k7#74 - 100 pi54_k20#75 - 91 pi27_k8#76 - 102 pi40_k13#77
      - 71 pi60_k21#78 - 73 pi81_k31#79 - 122 pi52_k20#80 - 57 pi57_k21#81
      - 115 pi88_k33#82 - 63 pi58_k21#83 - 153 pi4_k1#84 - 180 pi77_k30#85
      - 69 pi83_k31#86 - 107 pi89_k33#87 - 85 pi82_k31#88 - 72 pi41_k13#89
      - 232 pi78_k30#90 - 159 pi87_k33#91 - 83 pi84_k31#92 - 186 pi26_k8#93
      - 117 pi43_k13#94 - 160 pi31_k9#95 - 193 pi37_k11#96
Subject To
 _Embedding_clash_const_of_vlink1_vnp_1#0: vnp1#0 - pi0_k1#1 <= 0
 _Embedding_clash_const_of_vlink2_vnp_1#1: vnp1#0 - pi5_k2#2 <= 0
 _Embedding_clash_const_of_vlink3_vnp_1#2: vnp1#0 - pi6_k3#3 <= 0
 _Embedding_clash_const_of_vlink4_vnp_1#3: vnp1#0 - pi7_k4#4 <= 0
 _Embedding_clash_const_of_vlink5_vnp_1#4: vnp1#0 - pi8_k5#5 <= 0
 _Embedding_clash_const_of_vlink6_vnp_2#5: vnp2#6 - pi13_k6#7 <= 0
 _Embedding_clash_const_of_vlink7_vnp_2#6: vnp2#6 - pi18_k7#8 <= 0
 _Embedding_clash_const_of_vlink8_vnp_2#7: vnp2#6 - pi23_k8#9 <= 0
 _Embedding_clash_const_of_vlink9_vnp_2#8: vnp2#6 - pi28_k9#10 <= 0
 _Embedding_clash_const_of_vlink10_vnp_2#9: vnp2#6 - pi32_k10#11 <= 0
 _Embedding_clash_const_of_vlink11_vnp_2#10: vnp2#6 - pi33_k11#12 <= 0
 _Embedding_clash_const_of_vlink12_vnp_3#11: vnp3#13 - pi38_k12#14 <= 0
 _Embedding_clash_const_of_vlink13_vnp_3#12: vnp3#13 - pi39_k13#15 <= 0
 _Embedding_clash_const_of_vlink14_vnp_3#13: vnp3#13 - pi44_k14#16 <= 0
 _Embedding_clash_const_of_vlink15_vnp_3#14: vnp3#13 - pi45_k15#17 <= 0
 _Embedding_clash_const_of_vlink19_vnp_5#15: vnp5#18 - pi46_k19#19 <= 0
 _Embedding_clash_const_of_vlink20_vnp_5#16: vnp5#18 - pi51_k20#20 <= 0
 _Embedding_clash_const_of_vlink21_vnp_5#17: vnp5#18 - pi56_k21#21 <= 0
 _Embedding_clash_const_of_vlink22_vnp_5#18: vnp5#18 - pi61_k22#22 <= 0
 _Embedding_clash_const_of_vlink27_vnp_7#19: vnp7#23 - pi62_k27#24 <= 0
 _Embedding_clash_const_of_vlink28_vnp_7#20: vnp7#23 - pi67_k28#25 <= 0
 _Embedding_clash_const_of_vlink29_vnp_7#21: vnp7#23 - pi70_k29#26 <= 0
 _Embedding_clash_const_of_vlink30_vnp_8#22: vnp8#27 - pi75_k30#28 <= 0
 _Embedding_clash_const_of_vlink31_vnp_8#23: vnp8#27 - pi80_k31#29 <= 0
 _Embedding_clash_const_of_vlink32_vnp_8#24: vnp8#27 - pi85_k32#30 <= 0
 _Embedding_clash_const_of_vlink33_vnp_8#25: vnp8#27 - pi86_k33#31 <= 0
 BW_capacity_of_substrate_link_1#26: 4 pi15_k6#32 + 4 pi29_k9#33
                                 + 4 pi36_k11#34 <= 20
 BW_capacity_of_substrate_link_2#27: 4 pi13_k6#7 + 4 pi28_k9#10 + 4 pi33_k11#12
                                 <= 20
 BW_capacity_of_substrate_link_3#28: 4 pi28_k9#10 + 4 pi33_k11#12
                                 + 4 pi67_k28#25 + 4 pi16_k6#35 + 4 pi20_k7#36
                                 + pi66_k27#37 + 5 pi74_k29#38 <= 20
 BW_capacity_of_substrate_link_4#29: pi62_k27#24 + 4 pi67_k28#25 <= 20
 BW_capacity_of_substrate_link_5#30: 4 pi15_k6#32 + 4 pi29_k9#33
                                 + 4 pi36_k11#34 + 5 pi73_k29#39 <= 20
 BW_capacity_of_substrate_link_6#31: 3 pi8_k5#5 <= 16
 BW_capacity_of_substrate_link_7#32: 5 pi71_k29#40 <= 20
 BW_capacity_of_substrate_link_8#33: 4 pi13_k6#7 + 5 pi70_k29#26 + 4 pi20_k7#36
                                 + pi66_k27#37 + 4 pi30_k9#41 + 4 pi34_k11#42
                                 + 4 pi68_k28#43 <= 20
 BW_capacity_of_substrate_link_9#34: 3 pi47_k19#44 + 2 pi53_k20#45
                                 + pi64_k27#46 + 5 pi72_k29#47 <= 17
 BW_capacity_of_substrate_link_10#35: pi62_k27#24 + 4 pi16_k6#35
                                 + 5 pi74_k29#38 + 4 pi30_k9#41 + 4 pi68_k28#43
                                 + 4 pi19_k7#48 + 5 pi24_k8#49 <= 17
 BW_capacity_of_substrate_link_11#36: 4 pi18_k7#8 + 5 pi23_k8#9 + 4 pi33_k11#12
                                 + pi63_k27#50 + 4 pi69_k28#51 <= 15
 BW_capacity_of_substrate_link_12#37: 3 pi8_k5#5 + 5 pi71_k29#40 + pi64_k27#46
                                 + 4 pi3_k1#52 + 3 pi50_k19#53 <= 15
 BW_capacity_of_substrate_link_13#38: 3 pi47_k19#44 + 2 pi53_k20#45
                                 + 4 pi3_k1#52 + 3 pi11_k5#54 <= 20
 BW_capacity_of_substrate_link_14#39: 4 pi6_k3#3 + 5 pi73_k29#39 + 3 pi9_k5#55
                                 <= 20
 BW_capacity_of_substrate_link_15#40: 3 pi5_k2#2 + 3 pi10_k5#56 <= 11
 BW_capacity_of_substrate_link_16#41: 2 pi7_k4#4 + 3 pi10_k5#56 + 4 pi1_k1#57
                                 + 3 pi48_k19#58 <= 20
 BW_capacity_of_substrate_link_18#42: 4 pi2_k1#59 + 3 pi12_k5#60
                                 + 4 pi76_k30#61 <= 16
 BW_capacity_of_substrate_link_19#43: 4 pi2_k1#59 + 3 pi12_k5#60
                                 + 4 pi79_k30#62 <= 20
 BW_capacity_of_substrate_link_20#44: 3 pi46_k19#19 + 2 pi51_k20#20
                                 + 2 pi61_k22#22 + 5 pi73_k29#39 + 3 pi9_k5#55
                                 + 4 pi1_k1#57 <= 20
 BW_capacity_of_substrate_link_21#45: 4 pi0_k1#1 + 4 pi79_k30#62
                                 + 3 pi49_k19#63 + 2 pi55_k20#64
                                 + 4 pi90_k33#65 <= 15
 BW_capacity_of_substrate_link_22#46: pi62_k27#24 + 5 pi70_k29#26 <= 20
 BW_capacity_of_substrate_link_23#47: 3 pi46_k19#19 + 2 pi51_k20#20
                                 + 4 pi90_k33#65 + pi65_k27#66 <= 20
 BW_capacity_of_substrate_link_24#48: 3 pi47_k19#44 + pi65_k27#66
                                 + 4 pi17_k6#67 + 4 pi21_k7#68 + 3 pi42_k13#69
                                 + pi59_k21#70 <= 18
 BW_capacity_of_substrate_link_25#49: 4 pi13_k6#7 + 2 pi53_k20#45
                                 + 4 pi19_k7#48 + 5 pi25_k8#71 + 4 pi35_k11#72
                                 <= 20
 BW_capacity_of_substrate_link_26#50: 4 pi34_k11#42 + 5 pi24_k8#49
                                 + pi63_k27#50 + 4 pi69_k28#51 + 3 pi42_k13#69
                                 + pi59_k21#70 + 4 pi14_k6#73 + 4 pi22_k7#74
                                 + 2 pi54_k20#75 <= 15
 BW_capacity_of_substrate_link_27#51: 4 pi18_k7#8 + 4 pi14_k6#73 + 5 pi27_k8#76
                                 + 3 pi40_k13#77 + pi60_k21#78 <= 20
 BW_capacity_of_substrate_link_28#52: 2 pi51_k20#20 + pi56_k21#21
                                 + 4 pi17_k6#67 + 4 pi21_k7#68 + 2 pi81_k31#79
                                 <= 20
 BW_capacity_of_substrate_link_29#53: 3 pi42_k13#69 + 2 pi52_k20#80
                                 + pi57_k21#81 + 4 pi88_k33#82 <= 18
 BW_capacity_of_substrate_link_30#54: 3 pi48_k19#58 + 2 pi81_k31#79
                                 + 4 pi88_k33#82 + pi58_k21#83 <= 20
 BW_capacity_of_substrate_link_31#55: 4 pi75_k30#28 + 2 pi80_k31#29
                                 + 4 pi86_k33#31 + 2 pi55_k20#64 + pi58_k21#83
                                 <= 13
 BW_capacity_of_substrate_link_32#56: 4 pi75_k30#28 + 2 pi85_k32#30
                                 + 4 pi4_k1#84 <= 19
 BW_capacity_of_substrate_link_33#57: 4 pi0_k1#1 + 3 pi48_k19#58 <= 19
 BW_capacity_of_substrate_link_34#58: 4 pi76_k30#61 <= 16
 BW_capacity_of_substrate_link_35#59: 4 pi77_k30#85 + 2 pi83_k31#86
                                 + 4 pi89_k33#87 <= 20
 BW_capacity_of_substrate_link_36#60: 4 pi76_k30#61 + 2 pi83_k31#86
                                 + 4 pi89_k33#87 <= 15
 BW_capacity_of_substrate_link_37#61: 3 pi40_k13#77 + 2 pi82_k31#88 <= 20
 BW_capacity_of_substrate_link_38#62: 4 pi32_k10#11 + 2 pi51_k20#20
                                 + pi56_k21#21 + 5 pi25_k8#71 + 4 pi35_k11#72
                                 + 2 pi81_k31#79 <= 20
 BW_capacity_of_substrate_link_39#63: 3 pi45_k15#17 + 2 pi80_k31#29
                                 + 2 pi52_k20#80 + pi57_k21#81 + 3 pi41_k13#89
                                 + 4 pi78_k30#90 + 4 pi87_k33#91 <= 20
 BW_capacity_of_substrate_link_40#64: 3 pi39_k13#15 + 4 pi75_k30#28
                                 + 4 pi86_k33#31 + 2 pi84_k31#92 <= 18
 BW_capacity_of_substrate_link_41#65: 5 pi23_k8#9 + 4 pi33_k11#12 + pi59_k21#70
                                 + 2 pi54_k20#75 + 3 pi41_k13#89 <= 20
 BW_capacity_of_substrate_link_42#66: 2 pi38_k12#14 + 3 pi39_k13#15
                                 + 5 pi26_k8#93 <= 10
 BW_capacity_of_substrate_link_43#67: 2 pi44_k14#16 + 4 pi78_k30#90
                                 + 4 pi87_k33#91 + 2 pi84_k31#92 + 5 pi26_k8#93
                                 + 3 pi43_k13#94 <= 20
 c69#68:                         - 787 vnp1#0 + 117 pi0_k1#1 + 82 pi5_k2#2
                                 + 88 pi6_k3#3 + 68 pi7_k4#4 + 65 pi8_k5#5
                                 - 1795 vnp2#6 + 150 pi13_k6#7 + 70 pi18_k7#8
                                 + 91 pi23_k8#9 + 124 pi28_k9#10
                                 + 27 pi32_k10#11 + 169 pi33_k11#12
                                 - 514 vnp3#13 + 39 pi38_k12#14
                                 + 66 pi39_k13#15 + 67 pi44_k14#16
                                 + 56 pi45_k15#17 - 492 vnp5#18
                                 + 119 pi46_k19#19 + 122 pi51_k20#20
                                 + 57 pi56_k21#21 + 49 pi61_k22#22
                                 - 562 vnp7#23 + 63 pi62_k27#24
                                 + 140 pi67_k28#25 + 71 pi70_k29#26
                                 - 705 vnp8#27 + 148 pi75_k30#28
                                 + 53 pi80_k31#29 + 45 pi85_k32#30
                                 + 75 pi86_k33#31 + 174 pi15_k6#32
                                 + 148 pi29_k9#33 + 241 pi36_k11#34
                                 + 194 pi16_k6#35 + 114 pi20_k7#36
                                 + 66 pi66_k27#37 + 126 pi74_k29#38
                                 + 281 pi73_k29#39 + 131 pi71_k29#40
                                 + 136 pi30_k9#41 + 217 pi34_k11#42
                                 + 152 pi68_k28#43 + 92 pi47_k19#44
                                 + 70 pi53_k20#45 + 74 pi64_k27#46
                                 + 126 pi72_k29#47 + 102 pi19_k7#48
                                 + 206 pi24_k8#49 + 80 pi63_k27#50
                                 + 220 pi69_k28#51 + 169 pi3_k1#52
                                 + 125 pi50_k19#53 + 119 pi11_k5#54
                                 + 113 pi9_k5#55 + 170 pi10_k5#56
                                 + 161 pi1_k1#57 + 134 pi48_k19#58
                                 + 137 pi2_k1#59 + 152 pi12_k5#60
                                 + 196 pi76_k30#61 + 184 pi79_k30#62
                                 + 161 pi49_k19#63 + 130 pi55_k20#64
                                 + 195 pi90_k33#65 + 77 pi65_k27#66
                                 + 218 pi17_k6#67 + 170 pi21_k7#68
                                 + 156 pi42_k13#69 + 75 pi59_k21#70
                                 + 131 pi25_k8#71 + 157 pi35_k11#72
                                 + 210 pi14_k6#73 + 162 pi22_k7#74
                                 + 100 pi54_k20#75 + 91 pi27_k8#76
                                 + 102 pi40_k13#77 + 71 pi60_k21#78
                                 + 73 pi81_k31#79 + 122 pi52_k20#80
                                 + 57 pi57_k21#81 + 115 pi88_k33#82
                                 + 63 pi58_k21#83 + 153 pi4_k1#84
                                 + 180 pi77_k30#85 + 69 pi83_k31#86
                                 + 107 pi89_k33#87 + 85 pi82_k31#88
                                 + 72 pi41_k13#89 + 232 pi78_k30#90
                                 + 159 pi87_k33#91 + 83 pi84_k31#92
                                 + 186 pi26_k8#93 + 117 pi43_k13#94
                                 + 160 pi31_k9#95 + 193 pi37_k11#96 <= 0
Bounds
 0 <= vnp1#0 <= 1
 0 <= pi0_k1#1 <= 1
 0 <= pi5_k2#2 <= 1
 0 <= pi6_k3#3 <= 1
 0 <= pi7_k4#4 <= 1
 0 <= pi8_k5#5 <= 1
 0 <= vnp2#6 <= 1
 0 <= pi13_k6#7 <= 1
 0 <= pi18_k7#8 <= 1
 0 <= pi23_k8#9 <= 1
 0 <= pi28_k9#10 <= 1
 0 <= pi32_k10#11 <= 1
 0 <= pi33_k11#12 <= 1
 0 <= vnp3#13 <= 1
 0 <= pi38_k12#14 <= 1
 0 <= pi39_k13#15 <= 1
 0 <= pi44_k14#16 <= 1
 0 <= pi45_k15#17 <= 1
 0 <= vnp5#18 <= 1
 0 <= pi46_k19#19 <= 1
 0 <= pi51_k20#20 <= 1
 0 <= pi56_k21#21 <= 1
 0 <= pi61_k22#22 <= 1
 0 <= vnp7#23 <= 1
 0 <= pi62_k27#24 <= 1
 0 <= pi67_k28#25 <= 1
 0 <= pi70_k29#26 <= 1
 0 <= vnp8#27 <= 1
 0 <= pi75_k30#28 <= 1
 0 <= pi80_k31#29 <= 1
 0 <= pi85_k32#30 <= 1
 0 <= pi86_k33#31 <= 1
 0 <= pi15_k6#32 <= 1
 0 <= pi29_k9#33 <= 1
 0 <= pi36_k11#34 <= 1
 0 <= pi16_k6#35 <= 1
 0 <= pi20_k7#36 <= 1
 0 <= pi66_k27#37 <= 1
 0 <= pi74_k29#38 <= 1
 0 <= pi73_k29#39 <= 1
 0 <= pi71_k29#40 <= 1
 0 <= pi30_k9#41 <= 1
 0 <= pi34_k11#42 <= 1
 0 <= pi68_k28#43 <= 1
 0 <= pi47_k19#44 <= 1
 0 <= pi53_k20#45 <= 1
 0 <= pi64_k27#46 <= 1
 0 <= pi72_k29#47 <= 1
 0 <= pi19_k7#48 <= 1
 0 <= pi24_k8#49 <= 1
 0 <= pi63_k27#50 <= 1
 0 <= pi69_k28#51 <= 1
 0 <= pi3_k1#52 <= 1
 0 <= pi50_k19#53 <= 1
 0 <= pi11_k5#54 <= 1
 0 <= pi9_k5#55 <= 1
 0 <= pi10_k5#56 <= 1
 0 <= pi1_k1#57 <= 1
 0 <= pi48_k19#58 <= 1
 0 <= pi2_k1#59 <= 1
 0 <= pi12_k5#60 <= 1
 0 <= pi76_k30#61 <= 1
 0 <= pi79_k30#62 <= 1
 0 <= pi49_k19#63 <= 1
 0 <= pi55_k20#64 <= 1
 0 <= pi90_k33#65 <= 1
 0 <= pi65_k27#66 <= 1
 0 <= pi17_k6#67 <= 1
 0 <= pi21_k7#68 <= 1
 0 <= pi42_k13#69 <= 1
 0 <= pi59_k21#70 <= 1
 0 <= pi25_k8#71 <= 1
 0 <= pi35_k11#72 <= 1
 0 <= pi14_k6#73 <= 1
 0 <= pi22_k7#74 <= 1
 0 <= pi54_k20#75 <= 1
 0 <= pi27_k8#76 <= 1
 0 <= pi40_k13#77 <= 1
 0 <= pi60_k21#78 <= 1
 0 <= pi81_k31#79 <= 1
 0 <= pi52_k20#80 <= 1
 0 <= pi57_k21#81 <= 1
 0 <= pi88_k33#82 <= 1
 0 <= pi58_k21#83 <= 1
 0 <= pi4_k1#84 <= 1
 0 <= pi77_k30#85 <= 1
 0 <= pi83_k31#86 <= 1
 0 <= pi89_k33#87 <= 1
 0 <= pi82_k31#88 <= 1
 0 <= pi41_k13#89 <= 1
 0 <= pi78_k30#90 <= 1
 0 <= pi87_k33#91 <= 1
 0 <= pi84_k31#92 <= 1
 0 <= pi26_k8#93 <= 1
 0 <= pi43_k13#94 <= 1
 0 <= pi31_k9#95 <= 1
 0 <= pi37_k11#96 <= 1
Binaries
 vnp1#0  pi0_k1#1  pi5_k2#2  pi6_k3#3  pi7_k4#4  pi8_k5#5  vnp2#6  pi13_k6#7 
 pi18_k7#8  pi23_k8#9  pi28_k9#10  pi32_k10#11  pi33_k11#12  vnp3#13 
 pi38_k12#14  pi39_k13#15  pi44_k14#16  pi45_k15#17  vnp5#18  pi46_k19#19 
 pi51_k20#20  pi56_k21#21  pi61_k22#22  vnp7#23  pi62_k27#24  pi67_k28#25 
 pi70_k29#26  vnp8#27  pi75_k30#28  pi80_k31#29  pi85_k32#30  pi86_k33#31 
 pi15_k6#32  pi29_k9#33  pi36_k11#34  pi16_k6#35  pi20_k7#36  pi66_k27#37 
 pi74_k29#38  pi73_k29#39  pi71_k29#40  pi30_k9#41  pi34_k11#42  pi68_k28#43 
 pi47_k19#44  pi53_k20#45  pi64_k27#46  pi72_k29#47  pi19_k7#48  pi24_k8#49 
 pi63_k27#50  pi69_k28#51  pi3_k1#52  pi50_k19#53  pi11_k5#54  pi9_k5#55 
 pi10_k5#56  pi1_k1#57  pi48_k19#58  pi2_k1#59  pi12_k5#60  pi76_k30#61 
 pi79_k30#62  pi49_k19#63  pi55_k20#64  pi90_k33#65  pi65_k27#66  pi17_k6#67 
 pi21_k7#68  pi42_k13#69  pi59_k21#70  pi25_k8#71  pi35_k11#72  pi14_k6#73 
 pi22_k7#74  pi54_k20#75  pi27_k8#76  pi40_k13#77  pi60_k21#78  pi81_k31#79 
 pi52_k20#80  pi57_k21#81  pi88_k33#82  pi58_k21#83  pi4_k1#84  pi77_k30#85 
 pi83_k31#86  pi89_k33#87  pi82_k31#88  pi41_k13#89  pi78_k30#90  pi87_k33#91 
 pi84_k31#92  pi26_k8#93  pi43_k13#94  pi31_k9#95  pi37_k11#96 
End
