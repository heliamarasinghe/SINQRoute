\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 2033 vnp1#0 - 199 pi0_k1#1 - 144 pi4_k2#2 - 237 pi8_k3#3 - 36 pi12_k4#4
      + 1864 vnp2#5 - 99 pi13_k5#6 - 67 pi17_k6#7 - 73 pi21_k7#8 - 38 pi25_k8#9
      - 67 pi26_k9#10 - 83 pi30_k10#11 + 1547 vnp3#12 - 40 pi34_k11#13
      - 76 pi35_k12#14 - 77 pi36_k13#15 - 47 pi37_k14#16 - 77 pi41_k15#17
      + 1650 vnp4#18 - 46 pi45_k16#19 - 40 pi49_k17#20 - 62 pi53_k18#21
      - 85 pi57_k19#22 - 233 pi61_k20#23 + 1001 vnp5#24 - 86 pi65_k21#25
      - 108 pi69_k22#26 - 21 pi73_k23#27 + 1104 vnp7#28 - 84 pi74_k28#29
      - 58 pi78_k29#30 - 52 pi82_k30#31 + 2310 vnp8#32 - 115 pi86_k31#33
      - 80 pi90_k32#34 - 63 pi94_k33#35 - 58 pi95_k34#36 - 143 pi99_k35#37
      - 85 pi103_k36#38 - 124 pi5_k2#39 - 312 pi10_k3#40 - 123 pi76_k28#41
      - 78 pi84_k30#42 - 203 pi1_k1#43 - 69 pi42_k15#44 - 219 pi6_k2#45
      - 188 pi70_k22#46 - 96 pi75_k28#47 - 73 pi81_k29#48 - 100 pi85_k30#49
      - 187 pi55_k18#50 - 108 pi77_k28#51 - 275 pi2_k1#52 - 234 pi7_k2#53
      - 322 pi9_k3#54 - 79 pi50_k17#55 - 97 pi54_k18#56 - 122 pi68_k21#57
      - 160 pi72_k22#58 - 83 pi29_k9#59 - 207 pi3_k1#60 - 332 pi11_k3#61
      - 42 pi56_k18#62 - 70 pi66_k21#63 - 66 pi48_k16#64 - 82 pi83_k30#65
      - 96 pi71_k22#66 - 118 pi46_k16#67 - 150 pi67_k21#68 - 100 pi80_k29#69
      - 107 pi14_k5#70 - 91 pi23_k7#71 - 248 pi63_k20#72 - 113 pi28_k9#73
      - 109 pi51_k17#74 - 91 pi79_k29#75 - 57 pi96_k34#76 - 138 pi100_k35#77
      - 75 pi20_k6#78 - 93 pi59_k19#79 - 109 pi27_k9#80 - 106 pi52_k17#81
      - 188 pi64_k20#82 - 163 pi101_k35#83 - 142 pi89_k31#84 - 69 pi58_k19#85
      - 85 pi87_k31#86 - 65 pi18_k6#87 - 155 pi44_k15#88 - 163 pi88_k31#89
      - 57 pi97_k34#90 - 93 pi15_k5#91 - 67 pi60_k19#92 - 74 pi91_k32#93
      - 148 pi24_k7#94 - 123 pi31_k10#95 - 258 pi102_k35#96 - 79 pi22_k7#97
      - 191 pi33_k10#98 - 80 pi98_k34#99 - 126 pi47_k16#100 - 123 pi16_k5#101
      - 273 pi62_k20#102 - 78 pi92_k32#103 - 87 pi32_k10#104 - 69 pi40_k14#105
      - 94 pi93_k32#106 - 81 pi19_k6#107 - 62 pi38_k14#108 - 71 pi39_k14#109
      - 103 pi43_k15#110
Subject To
 _Embedding_clash_const_of_vlink1_vnp_1#0: vnp1#0 - pi0_k1#1 <= 0
 _Embedding_clash_const_of_vlink2_vnp_1#1: vnp1#0 - pi4_k2#2 <= 0
 _Embedding_clash_const_of_vlink3_vnp_1#2: vnp1#0 - pi8_k3#3 <= 0
 _Embedding_clash_const_of_vlink4_vnp_1#3: vnp1#0 - pi12_k4#4 <= 0
 _Embedding_clash_const_of_vlink5_vnp_2#4: vnp2#5 - pi13_k5#6 <= 0
 _Embedding_clash_const_of_vlink6_vnp_2#5: vnp2#5 - pi17_k6#7 <= 0
 _Embedding_clash_const_of_vlink7_vnp_2#6: vnp2#5 - pi21_k7#8 <= 0
 _Embedding_clash_const_of_vlink8_vnp_2#7: vnp2#5 - pi25_k8#9 <= 0
 _Embedding_clash_const_of_vlink9_vnp_2#8: vnp2#5 - pi26_k9#10 <= 0
 _Embedding_clash_const_of_vlink10_vnp_2#9: vnp2#5 - pi30_k10#11 <= 0
 _Embedding_clash_const_of_vlink11_vnp_3#10: vnp3#12 - pi34_k11#13 <= 0
 _Embedding_clash_const_of_vlink12_vnp_3#11: vnp3#12 - pi35_k12#14 <= 0
 _Embedding_clash_const_of_vlink13_vnp_3#12: vnp3#12 - pi36_k13#15 <= 0
 _Embedding_clash_const_of_vlink14_vnp_3#13: vnp3#12 - pi37_k14#16 <= 0
 _Embedding_clash_const_of_vlink15_vnp_3#14: vnp3#12 - pi41_k15#17 <= 0
 _Embedding_clash_const_of_vlink16_vnp_4#15: vnp4#18 - pi45_k16#19 <= 0
 _Embedding_clash_const_of_vlink17_vnp_4#16: vnp4#18 - pi49_k17#20 <= 0
 _Embedding_clash_const_of_vlink18_vnp_4#17: vnp4#18 - pi53_k18#21 <= 0
 _Embedding_clash_const_of_vlink19_vnp_4#18: vnp4#18 - pi57_k19#22 <= 0
 _Embedding_clash_const_of_vlink20_vnp_4#19: vnp4#18 - pi61_k20#23 <= 0
 _Embedding_clash_const_of_vlink21_vnp_5#20: vnp5#24 - pi65_k21#25 <= 0
 _Embedding_clash_const_of_vlink22_vnp_5#21: vnp5#24 - pi69_k22#26 <= 0
 _Embedding_clash_const_of_vlink23_vnp_5#22: vnp5#24 - pi73_k23#27 <= 0
 _Embedding_clash_const_of_vlink28_vnp_7#23: vnp7#28 - pi74_k28#29 <= 0
 _Embedding_clash_const_of_vlink29_vnp_7#24: vnp7#28 - pi78_k29#30 <= 0
 _Embedding_clash_const_of_vlink30_vnp_7#25: vnp7#28 - pi82_k30#31 <= 0
 _Embedding_clash_const_of_vlink31_vnp_8#26: vnp8#32 - pi86_k31#33 <= 0
 _Embedding_clash_const_of_vlink32_vnp_8#27: vnp8#32 - pi90_k32#34 <= 0
 _Embedding_clash_const_of_vlink33_vnp_8#28: vnp8#32 - pi94_k33#35 <= 0
 _Embedding_clash_const_of_vlink34_vnp_8#29: vnp8#32 - pi95_k34#36 <= 0
 _Embedding_clash_const_of_vlink35_vnp_8#30: vnp8#32 - pi99_k35#37 <= 0
 _Embedding_clash_const_of_vlink36_vnp_8#31: vnp8#32 - pi103_k36#38 <= 0
 BW_capacity_of_substrate_link_1#32: 3 pi74_k28#29 + 2 pi82_k30#31
                                 + 5 pi5_k2#39 + 5 pi10_k3#40 <= 20
 BW_capacity_of_substrate_link_2#33: 5 pi4_k2#2 + 5 pi8_k3#3 + 2 pi12_k4#4
                                 + 3 pi76_k28#41 + 2 pi84_k30#42 <= 20
 BW_capacity_of_substrate_link_3#34: 5 pi8_k3#3 + 4 pi1_k1#43 <= 20
 BW_capacity_of_substrate_link_4#35: 4 pi0_k1#1 + 5 pi8_k3#3 + 2 pi42_k15#44
                                 <= 20
 BW_capacity_of_substrate_link_5#36: 5 pi10_k3#40 + 2 pi84_k30#42 + 5 pi6_k2#45
                                 + 4 pi70_k22#46 <= 19
 BW_capacity_of_substrate_link_6#37: 4 pi69_k22#26 + 5 pi5_k2#39
                                 + 3 pi75_k28#47 + 3 pi81_k29#48
                                 + 2 pi85_k30#49 <= 17
 BW_capacity_of_substrate_link_7#38: 5 pi4_k2#2 + 4 pi1_k1#43 + 2 pi85_k30#49
                                 + 5 pi55_k18#50 + 3 pi77_k28#51 <= 20
 BW_capacity_of_substrate_link_8#39: 3 pi76_k28#41 + 4 pi70_k22#46
                                 + 5 pi55_k18#50 + 4 pi2_k1#52 + 5 pi7_k2#53
                                 + 5 pi9_k3#54 <= 15
 BW_capacity_of_substrate_link_9#40: 4 pi0_k1#1 + 5 pi7_k2#53 + 3 pi50_k17#55
                                 + 5 pi54_k18#56 + 4 pi68_k21#57
                                 + 4 pi72_k22#58 <= 19
 BW_capacity_of_substrate_link_10#41: 4 pi0_k1#1 + 5 pi9_k3#54 + 2 pi29_k9#59
                                 <= 20
 BW_capacity_of_substrate_link_11#42: 2 pi42_k15#44 + 2 pi29_k9#59
                                 + 4 pi3_k1#60 + 5 pi11_k3#61 <= 20
 BW_capacity_of_substrate_link_12#43: 4 pi69_k22#26 + 3 pi75_k28#47
                                 + 3 pi81_k29#48 + 3 pi50_k17#55
                                 + 5 pi56_k18#62 + 4 pi66_k21#63 <= 15
 BW_capacity_of_substrate_link_13#44: 5 pi54_k18#56 + 4 pi66_k21#63 <= 19
 BW_capacity_of_substrate_link_14#45: 3 pi73_k23#27 + 3 pi74_k28#29
                                 + 4 pi48_k16#64 + 2 pi83_k30#65 <= 19
 BW_capacity_of_substrate_link_15#46: 2 pi82_k30#31 + 3 pi81_k29#48
                                 + 4 pi48_k16#64 + 4 pi71_k22#66 <= 17
 BW_capacity_of_substrate_link_16#47: 5 pi61_k20#23 + 2 pi83_k30#65
                                 + 4 pi46_k16#67 + 4 pi67_k21#68
                                 + 3 pi80_k29#69 <= 20
 BW_capacity_of_substrate_link_17#48: 2 pi42_k15#44 <= 20
 BW_capacity_of_substrate_link_18#49: 3 pi78_k29#30 + 4 pi46_k16#67
                                 + 2 pi14_k5#70 + 3 pi23_k7#71 <= 20
 BW_capacity_of_substrate_link_19#50: 3 pi21_k7#8 + 2 pi26_k9#10
                                 + 4 pi45_k16#19 + 3 pi49_k17#20
                                 + 3 pi78_k29#30 <= 20
 BW_capacity_of_substrate_link_20#51: 4 pi45_k16#19 + 5 pi53_k18#21
                                 + 4 pi65_k21#25 + 3 pi74_k28#29
                                 + 3 pi80_k29#69 + 5 pi63_k20#72 <= 20
 BW_capacity_of_substrate_link_21#52: 5 pi63_k20#72 + 2 pi28_k9#73
                                 + 3 pi51_k17#74 + 3 pi79_k29#75 + pi96_k34#76
                                 + 5 pi100_k35#77 <= 18
 BW_capacity_of_substrate_link_22#53: 2 pi26_k9#10 + 3 pi49_k17#20
                                 + 5 pi53_k18#21 + 3 pi76_k28#41 + pi96_k34#76
                                 + 5 pi100_k35#77 + 2 pi20_k6#78
                                 + 2 pi59_k19#79 <= 20
 BW_capacity_of_substrate_link_23#54: 3 pi21_k7#8 + 4 pi65_k21#25
                                 + 4 pi69_k22#26 + 2 pi20_k6#78 + 2 pi59_k19#79
                                 + 2 pi27_k9#80 + 3 pi52_k17#81 + 5 pi64_k20#82
                                 + 5 pi101_k35#83 <= 20
 BW_capacity_of_substrate_link_24#55: 2 pi17_k6#7 + 2 pi57_k19#22 + pi95_k34#36
                                 + 5 pi99_k35#37 + 4 pi70_k22#46
                                 + 4 pi68_k21#57 + 3 pi52_k17#81
                                 + 3 pi89_k31#84 <= 20
 BW_capacity_of_substrate_link_25#56: 3 pi86_k31#33 + 2 pi58_k19#85 <= 20
 BW_capacity_of_substrate_link_26#57: 2 pi17_k6#7 + 2 pi26_k9#10 + pi95_k34#36
                                 + 5 pi103_k36#38 + 4 pi3_k1#60 + 5 pi11_k3#61
                                 + 3 pi87_k31#86 <= 20
 BW_capacity_of_substrate_link_27#58: 2 pi27_k9#80 + 2 pi18_k6#87
                                 + 2 pi44_k15#88 + 3 pi88_k31#89 + pi97_k34#90
                                 <= 20
 BW_capacity_of_substrate_link_28#59: 4 pi30_k10#11 + 2 pi27_k9#80
                                 + 2 pi18_k6#87 + pi97_k34#90 + 2 pi15_k5#91
                                 + 2 pi60_k19#92 + 2 pi91_k32#93 <= 20
 BW_capacity_of_substrate_link_29#60: 2 pi57_k19#22 + 5 pi64_k20#82
                                 + 3 pi89_k31#84 + 3 pi24_k7#94 + 4 pi31_k10#95
                                 + 5 pi102_k35#96 <= 20
 BW_capacity_of_substrate_link_30#61: pi95_k34#36 + 5 pi99_k35#37
                                 + 4 pi71_k22#66 + 4 pi67_k21#68 + 2 pi15_k5#91
                                 + 2 pi91_k32#93 + 3 pi22_k7#97 + 4 pi33_k10#98
                                 <= 20
 BW_capacity_of_substrate_link_31#62: 2 pi13_k5#6 + 5 pi61_k20#23
                                 + 2 pi90_k32#34 + 3 pi24_k7#94
                                 + 5 pi102_k35#96 + 4 pi33_k10#98 + pi98_k34#99
                                 <= 20
 BW_capacity_of_substrate_link_32#63: 2 pi13_k5#6 + 2 pi28_k9#73
                                 + 3 pi51_k17#74 + 3 pi22_k7#97
                                 + 4 pi47_k16#100 <= 20
 BW_capacity_of_substrate_link_33#64: 5 pi61_k20#23 + 4 pi71_k22#66
                                 + 4 pi67_k21#68 + 2 pi14_k5#70 + 3 pi23_k7#71
                                 + 3 pi79_k29#75 + 4 pi47_k16#100 <= 18
 BW_capacity_of_substrate_link_34#65: 2 pi16_k5#101 + 5 pi62_k20#102 <= 16
 BW_capacity_of_substrate_link_35#66: 2 pi92_k32#103 <= 20
 BW_capacity_of_substrate_link_36#67: 2 pi16_k5#101 + 5 pi62_k20#102
                                 + 2 pi92_k32#103 <= 16
 BW_capacity_of_substrate_link_37#68: 2 pi58_k19#85 + 4 pi32_k10#104
                                 + pi40_k14#105 + 2 pi93_k32#106 <= 20
 BW_capacity_of_substrate_link_38#69: 4 pi30_k10#11 + 3 pi86_k31#33
                                 + 2 pi44_k15#88 + 2 pi15_k5#91 + 2 pi91_k32#93
                                 + pi40_k14#105 + 2 pi19_k6#107 <= 20
 BW_capacity_of_substrate_link_39#70: 2 pi13_k5#6 + 2 pi90_k32#34
                                 + 3 pi89_k31#84 + 4 pi31_k10#95 + pi38_k14#108
                                 <= 20
 BW_capacity_of_substrate_link_40#71: 3 pi36_k13#15 + pi37_k14#16 + pi98_k34#99
                                 <= 16
 BW_capacity_of_substrate_link_41#72: 2 pi25_k8#9 + 4 pi94_k33#35
                                 + 3 pi87_k31#86 + 2 pi19_k6#107 + pi39_k14#109
                                 + 2 pi43_k15#110 <= 20
 BW_capacity_of_substrate_link_42#73: pi34_k11#13 + 2 pi41_k15#17 + pi98_k34#99
                                 + pi39_k14#109 <= 20
 BW_capacity_of_substrate_link_43#74: pi38_k14#108 + 2 pi43_k15#110 <= 20
 BW_capacity_of_substrate_link_44#75: 5 pi35_k12#14 + pi37_k14#16
                                 + 2 pi41_k15#17 <= 20
 c77#76:                         - 2033 vnp1#0 + 199 pi0_k1#1 + 144 pi4_k2#2
                                 + 237 pi8_k3#3 + 36 pi12_k4#4 - 1864 vnp2#5
                                 + 99 pi13_k5#6 + 67 pi17_k6#7 + 73 pi21_k7#8
                                 + 38 pi25_k8#9 + 67 pi26_k9#10
                                 + 83 pi30_k10#11 - 1547 vnp3#12
                                 + 40 pi34_k11#13 + 76 pi35_k12#14
                                 + 77 pi36_k13#15 + 47 pi37_k14#16
                                 + 77 pi41_k15#17 - 1650 vnp4#18
                                 + 46 pi45_k16#19 + 40 pi49_k17#20
                                 + 62 pi53_k18#21 + 85 pi57_k19#22
                                 + 233 pi61_k20#23 - 1001 vnp5#24
                                 + 86 pi65_k21#25 + 108 pi69_k22#26
                                 + 21 pi73_k23#27 - 1104 vnp7#28
                                 + 84 pi74_k28#29 + 58 pi78_k29#30
                                 + 52 pi82_k30#31 - 2310 vnp8#32
                                 + 115 pi86_k31#33 + 80 pi90_k32#34
                                 + 63 pi94_k33#35 + 58 pi95_k34#36
                                 + 143 pi99_k35#37 + 85 pi103_k36#38
                                 + 124 pi5_k2#39 + 312 pi10_k3#40
                                 + 123 pi76_k28#41 + 78 pi84_k30#42
                                 + 203 pi1_k1#43 + 69 pi42_k15#44
                                 + 219 pi6_k2#45 + 188 pi70_k22#46
                                 + 96 pi75_k28#47 + 73 pi81_k29#48
                                 + 100 pi85_k30#49 + 187 pi55_k18#50
                                 + 108 pi77_k28#51 + 275 pi2_k1#52
                                 + 234 pi7_k2#53 + 322 pi9_k3#54
                                 + 79 pi50_k17#55 + 97 pi54_k18#56
                                 + 122 pi68_k21#57 + 160 pi72_k22#58
                                 + 83 pi29_k9#59 + 207 pi3_k1#60
                                 + 332 pi11_k3#61 + 42 pi56_k18#62
                                 + 70 pi66_k21#63 + 66 pi48_k16#64
                                 + 82 pi83_k30#65 + 96 pi71_k22#66
                                 + 118 pi46_k16#67 + 150 pi67_k21#68
                                 + 100 pi80_k29#69 + 107 pi14_k5#70
                                 + 91 pi23_k7#71 + 248 pi63_k20#72
                                 + 113 pi28_k9#73 + 109 pi51_k17#74
                                 + 91 pi79_k29#75 + 57 pi96_k34#76
                                 + 138 pi100_k35#77 + 75 pi20_k6#78
                                 + 93 pi59_k19#79 + 109 pi27_k9#80
                                 + 106 pi52_k17#81 + 188 pi64_k20#82
                                 + 163 pi101_k35#83 + 142 pi89_k31#84
                                 + 69 pi58_k19#85 + 85 pi87_k31#86
                                 + 65 pi18_k6#87 + 155 pi44_k15#88
                                 + 163 pi88_k31#89 + 57 pi97_k34#90
                                 + 93 pi15_k5#91 + 67 pi60_k19#92
                                 + 74 pi91_k32#93 + 148 pi24_k7#94
                                 + 123 pi31_k10#95 + 258 pi102_k35#96
                                 + 79 pi22_k7#97 + 191 pi33_k10#98
                                 + 80 pi98_k34#99 + 126 pi47_k16#100
                                 + 123 pi16_k5#101 + 273 pi62_k20#102
                                 + 78 pi92_k32#103 + 87 pi32_k10#104
                                 + 69 pi40_k14#105 + 94 pi93_k32#106
                                 + 81 pi19_k6#107 + 62 pi38_k14#108
                                 + 71 pi39_k14#109 + 103 pi43_k15#110 <= 0
Bounds
 0 <= vnp1#0 <= 1
 0 <= pi0_k1#1 <= 1
 0 <= pi4_k2#2 <= 1
 0 <= pi8_k3#3 <= 1
 0 <= pi12_k4#4 <= 1
 0 <= vnp2#5 <= 1
 0 <= pi13_k5#6 <= 1
 0 <= pi17_k6#7 <= 1
 0 <= pi21_k7#8 <= 1
 0 <= pi25_k8#9 <= 1
 0 <= pi26_k9#10 <= 1
 0 <= pi30_k10#11 <= 1
 0 <= vnp3#12 <= 1
 0 <= pi34_k11#13 <= 1
 0 <= pi35_k12#14 <= 1
 0 <= pi36_k13#15 <= 1
 0 <= pi37_k14#16 <= 1
 0 <= pi41_k15#17 <= 1
 0 <= vnp4#18 <= 1
 0 <= pi45_k16#19 <= 1
 0 <= pi49_k17#20 <= 1
 0 <= pi53_k18#21 <= 1
 0 <= pi57_k19#22 <= 1
 0 <= pi61_k20#23 <= 1
 0 <= vnp5#24 <= 1
 0 <= pi65_k21#25 <= 1
 0 <= pi69_k22#26 <= 1
 0 <= pi73_k23#27 <= 1
 0 <= vnp7#28 <= 1
 0 <= pi74_k28#29 <= 1
 0 <= pi78_k29#30 <= 1
 0 <= pi82_k30#31 <= 1
 0 <= vnp8#32 <= 1
 0 <= pi86_k31#33 <= 1
 0 <= pi90_k32#34 <= 1
 0 <= pi94_k33#35 <= 1
 0 <= pi95_k34#36 <= 1
 0 <= pi99_k35#37 <= 1
 0 <= pi103_k36#38 <= 1
 0 <= pi5_k2#39 <= 1
 0 <= pi10_k3#40 <= 1
 0 <= pi76_k28#41 <= 1
 0 <= pi84_k30#42 <= 1
 0 <= pi1_k1#43 <= 1
 0 <= pi42_k15#44 <= 1
 0 <= pi6_k2#45 <= 1
 0 <= pi70_k22#46 <= 1
 0 <= pi75_k28#47 <= 1
 0 <= pi81_k29#48 <= 1
 0 <= pi85_k30#49 <= 1
 0 <= pi55_k18#50 <= 1
 0 <= pi77_k28#51 <= 1
 0 <= pi2_k1#52 <= 1
 0 <= pi7_k2#53 <= 1
 0 <= pi9_k3#54 <= 1
 0 <= pi50_k17#55 <= 1
 0 <= pi54_k18#56 <= 1
 0 <= pi68_k21#57 <= 1
 0 <= pi72_k22#58 <= 1
 0 <= pi29_k9#59 <= 1
 0 <= pi3_k1#60 <= 1
 0 <= pi11_k3#61 <= 1
 0 <= pi56_k18#62 <= 1
 0 <= pi66_k21#63 <= 1
 0 <= pi48_k16#64 <= 1
 0 <= pi83_k30#65 <= 1
 0 <= pi71_k22#66 <= 1
 0 <= pi46_k16#67 <= 1
 0 <= pi67_k21#68 <= 1
 0 <= pi80_k29#69 <= 1
 0 <= pi14_k5#70 <= 1
 0 <= pi23_k7#71 <= 1
 0 <= pi63_k20#72 <= 1
 0 <= pi28_k9#73 <= 1
 0 <= pi51_k17#74 <= 1
 0 <= pi79_k29#75 <= 1
 0 <= pi96_k34#76 <= 1
 0 <= pi100_k35#77 <= 1
 0 <= pi20_k6#78 <= 1
 0 <= pi59_k19#79 <= 1
 0 <= pi27_k9#80 <= 1
 0 <= pi52_k17#81 <= 1
 0 <= pi64_k20#82 <= 1
 0 <= pi101_k35#83 <= 1
 0 <= pi89_k31#84 <= 1
 0 <= pi58_k19#85 <= 1
 0 <= pi87_k31#86 <= 1
 0 <= pi18_k6#87 <= 1
 0 <= pi44_k15#88 <= 1
 0 <= pi88_k31#89 <= 1
 0 <= pi97_k34#90 <= 1
 0 <= pi15_k5#91 <= 1
 0 <= pi60_k19#92 <= 1
 0 <= pi91_k32#93 <= 1
 0 <= pi24_k7#94 <= 1
 0 <= pi31_k10#95 <= 1
 0 <= pi102_k35#96 <= 1
 0 <= pi22_k7#97 <= 1
 0 <= pi33_k10#98 <= 1
 0 <= pi98_k34#99 <= 1
 0 <= pi47_k16#100 <= 1
 0 <= pi16_k5#101 <= 1
 0 <= pi62_k20#102 <= 1
 0 <= pi92_k32#103 <= 1
 0 <= pi32_k10#104 <= 1
 0 <= pi40_k14#105 <= 1
 0 <= pi93_k32#106 <= 1
 0 <= pi19_k6#107 <= 1
 0 <= pi38_k14#108 <= 1
 0 <= pi39_k14#109 <= 1
 0 <= pi43_k15#110 <= 1
Binaries
 vnp1#0  pi0_k1#1  pi4_k2#2  pi8_k3#3  pi12_k4#4  vnp2#5  pi13_k5#6  pi17_k6#7 
 pi21_k7#8  pi25_k8#9  pi26_k9#10  pi30_k10#11  vnp3#12  pi34_k11#13 
 pi35_k12#14  pi36_k13#15  pi37_k14#16  pi41_k15#17  vnp4#18  pi45_k16#19 
 pi49_k17#20  pi53_k18#21  pi57_k19#22  pi61_k20#23  vnp5#24  pi65_k21#25 
 pi69_k22#26  pi73_k23#27  vnp7#28  pi74_k28#29  pi78_k29#30  pi82_k30#31 
 vnp8#32  pi86_k31#33  pi90_k32#34  pi94_k33#35  pi95_k34#36  pi99_k35#37 
 pi103_k36#38  pi5_k2#39  pi10_k3#40  pi76_k28#41  pi84_k30#42  pi1_k1#43 
 pi42_k15#44  pi6_k2#45  pi70_k22#46  pi75_k28#47  pi81_k29#48  pi85_k30#49 
 pi55_k18#50  pi77_k28#51  pi2_k1#52  pi7_k2#53  pi9_k3#54  pi50_k17#55 
 pi54_k18#56  pi68_k21#57  pi72_k22#58  pi29_k9#59  pi3_k1#60  pi11_k3#61 
 pi56_k18#62  pi66_k21#63  pi48_k16#64  pi83_k30#65  pi71_k22#66  pi46_k16#67 
 pi67_k21#68  pi80_k29#69  pi14_k5#70  pi23_k7#71  pi63_k20#72  pi28_k9#73 
 pi51_k17#74  pi79_k29#75  pi96_k34#76  pi100_k35#77  pi20_k6#78  pi59_k19#79 
 pi27_k9#80  pi52_k17#81  pi64_k20#82  pi101_k35#83  pi89_k31#84  pi58_k19#85 
 pi87_k31#86  pi18_k6#87  pi44_k15#88  pi88_k31#89  pi97_k34#90  pi15_k5#91 
 pi60_k19#92  pi91_k32#93  pi24_k7#94  pi31_k10#95  pi102_k35#96  pi22_k7#97 
 pi33_k10#98  pi98_k34#99  pi47_k16#100  pi16_k5#101  pi62_k20#102 
 pi92_k32#103  pi32_k10#104  pi40_k14#105  pi93_k32#106  pi19_k6#107 
 pi38_k14#108  pi39_k14#109  pi43_k15#110 
End
