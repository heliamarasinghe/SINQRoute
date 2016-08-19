\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 994 vnp1#0 - 141 pi0_k1#1 - 71 pi5_k2#2 - 61 pi10_k3#3 - 64 pi11_k4#4
      + 593 vnp2#5 - 128 pi16_k5#6 - 49 pi21_k6#7 - 58 pi26_k7#8 - 52 pi27_k8#9
      - 101 pi32_k9#10 + 813 vnp5#11 - 44 pi37_k18#12 - 43 pi38_k19#13
      - 81 pi43_k20#14 - 49 pi48_k21#15 + 811 vnp6#16 - 34 pi53_k22#17
      - 77 pi58_k23#18 - 25 pi63_k24#19 - 62 pi68_k25#20 - 57 pi73_k26#21
      - 63 pi78_k27#22 - 76 pi7_k2#23 - 134 pi12_k4#24 - 156 pi6_k2#25
      - 32 pi65_k24#26 - 56 pi69_k25#27 - 123 pi82_k27#28 - 97 pi4_k1#29
      - 246 pi8_k2#30 - 166 pi9_k2#31 - 102 pi14_k4#32 - 58 pi31_k8#33
      - 68 pi71_k25#34 - 69 pi44_k20#35 - 88 pi80_k27#36 - 26 pi67_k24#37
      - 63 pi70_k25#38 - 110 pi15_k4#39 - 110 pi13_k4#40 - 120 pi74_k26#41
      - 83 pi59_k23#42 - 110 pi34_k9#43 - 170 pi62_k23#44 - 102 pi75_k26#45
      - 153 pi3_k1#46 - 56 pi18_k5#47 - 53 pi33_k9#48 - 49 pi72_k25#49
      - 46 pi64_k24#50 - 165 pi76_k26#51 - 104 pi17_k5#52 - 55 pi28_k8#53
      - 118 pi24_k6#54 - 126 pi46_k20#55 - 35 pi55_k22#56 - 65 pi2_k1#57
      - 67 pi30_k8#58 - 34 pi66_k24#59 - 134 pi20_k5#60 - 96 pi47_k20#61
      - 70 pi22_k6#62 - 67 pi29_k8#63 - 118 pi81_k27#64 - 128 pi19_k5#65
      - 101 pi36_k9#66 - 142 pi39_k19#67 - 189 pi50_k21#68 - 34 pi57_k22#69
      - 119 pi60_k23#70 - 117 pi77_k26#71 - 149 pi1_k1#72 - 199 pi51_k21#73
      - 38 pi54_k22#74 - 154 pi40_k19#75 - 159 pi49_k21#76 - 59 pi35_k9#77
      - 124 pi42_k19#78 - 138 pi45_k20#79 - 109 pi52_k21#80 - 85 pi23_k6#81
      - 42 pi56_k22#82 - 101 pi61_k23#83 - 163 pi79_k27#84 - 109 pi25_k6#85
      - 79 pi41_k19#86
Subject To
 _Embedding_clash_const_of_vlink1_vnp_1#0: vnp1#0 - pi0_k1#1 <= 0
 _Embedding_clash_const_of_vlink2_vnp_1#1: vnp1#0 - pi5_k2#2 <= 0
 _Embedding_clash_const_of_vlink3_vnp_1#2: vnp1#0 - pi10_k3#3 <= 0
 _Embedding_clash_const_of_vlink4_vnp_1#3: vnp1#0 - pi11_k4#4 <= 0
 _Embedding_clash_const_of_vlink5_vnp_2#4: vnp2#5 - pi16_k5#6 <= 0
 _Embedding_clash_const_of_vlink6_vnp_2#5: vnp2#5 - pi21_k6#7 <= 0
 _Embedding_clash_const_of_vlink7_vnp_2#6: vnp2#5 - pi26_k7#8 <= 0
 _Embedding_clash_const_of_vlink8_vnp_2#7: vnp2#5 - pi27_k8#9 <= 0
 _Embedding_clash_const_of_vlink9_vnp_2#8: vnp2#5 - pi32_k9#10 <= 0
 _Embedding_clash_const_of_vlink18_vnp_5#9: vnp5#11 - pi37_k18#12 <= 0
 _Embedding_clash_const_of_vlink19_vnp_5#10: vnp5#11 - pi38_k19#13 <= 0
 _Embedding_clash_const_of_vlink20_vnp_5#11: vnp5#11 - pi43_k20#14 <= 0
 _Embedding_clash_const_of_vlink21_vnp_5#12: vnp5#11 - pi48_k21#15 <= 0
 _Embedding_clash_const_of_vlink22_vnp_6#13: vnp6#16 - pi53_k22#17 <= 0
 _Embedding_clash_const_of_vlink23_vnp_6#14: vnp6#16 - pi58_k23#18 <= 0
 _Embedding_clash_const_of_vlink24_vnp_6#15: vnp6#16 - pi63_k24#19 <= 0
 _Embedding_clash_const_of_vlink25_vnp_6#16: vnp6#16 - pi68_k25#20 <= 0
 _Embedding_clash_const_of_vlink26_vnp_6#17: vnp6#16 - pi73_k26#21 <= 0
 _Embedding_clash_const_of_vlink27_vnp_6#18: vnp6#16 - pi78_k27#22 <= 0
 BW_capacity_of_substrate_link_1#19: 5 pi7_k2#23 + 2 pi12_k4#24 <= 15
 BW_capacity_of_substrate_link_2#20: 5 pi5_k2#2 + 2 pi11_k4#4 <= 7
 BW_capacity_of_substrate_link_3#21: 5 pi6_k2#25 + pi65_k24#26 + pi69_k25#27
                                 + 5 pi82_k27#28 <= 6
 BW_capacity_of_substrate_link_4#22: 3 pi43_k20#14 <= 2
 BW_capacity_of_substrate_link_5#23: 5 pi7_k2#23 + 4 pi4_k1#29 <= 18
 BW_capacity_of_substrate_link_6#24: 2 pi12_k4#24 + 5 pi8_k2#30 <= 20
 BW_capacity_of_substrate_link_7#25: pi69_k25#27 + 5 pi9_k2#31 + 2 pi14_k4#32
                                 <= 18
 BW_capacity_of_substrate_link_8#26: 5 pi5_k2#2 + 2 pi11_k4#4 + pi65_k24#26
                                 + 5 pi82_k27#28 + 4 pi4_k1#29 <= 16
 BW_capacity_of_substrate_link_9#27: 2 pi12_k4#24 + 5 pi8_k2#30 + pi31_k8#33
                                 + pi71_k25#34 <= 19
 BW_capacity_of_substrate_link_10#28: pi63_k24#19 + pi68_k25#20 + 5 pi6_k2#25
                                 + 3 pi44_k20#35 + 5 pi80_k27#36 <= 13
 BW_capacity_of_substrate_link_11#29: 3 pi43_k20#14 + 5 pi78_k27#22
                                 + pi67_k24#37 + pi70_k25#38 <= 5
 BW_capacity_of_substrate_link_12#30: pi69_k25#27 + pi31_k8#33 <= 20
 BW_capacity_of_substrate_link_14#31: 2 pi15_k4#39 <= 20
 BW_capacity_of_substrate_link_15#32: 4 pi4_k1#29 + 2 pi13_k4#40 <= 20
 BW_capacity_of_substrate_link_17#33: 3 pi74_k26#41 <= 20
 BW_capacity_of_substrate_link_18#34: 3 pi59_k23#42 <= 20
 BW_capacity_of_substrate_link_19#35: pi68_k25#20 + 3 pi34_k9#43
                                 + 3 pi62_k23#44 + 3 pi75_k26#45 <= 20
 BW_capacity_of_substrate_link_20#36: 2 pi15_k4#39 + 3 pi74_k26#41 <= 13
 BW_capacity_of_substrate_link_21#37: 3 pi75_k26#45 + 4 pi3_k1#46
                                 + 3 pi18_k5#47 + 3 pi33_k9#48 + pi72_k25#49
                                 <= 18
 BW_capacity_of_substrate_link_22#38: 3 pi16_k5#6 + pi27_k8#9 + pi68_k25#20
                                 + 4 pi3_k1#46 + pi64_k24#50 + 3 pi76_k26#51
                                 <= 20
 BW_capacity_of_substrate_link_23#39: 3 pi32_k9#10 + 2 pi15_k4#39
                                 + 3 pi74_k26#41 + 3 pi62_k23#44 + pi64_k24#50
                                 + 3 pi17_k5#52 + pi28_k8#53 <= 20
 BW_capacity_of_substrate_link_24#40: 4 pi0_k1#1 + 5 pi10_k3#3 + 2 pi11_k4#4
                                 + pi63_k24#19 + 3 pi76_k26#51 + pi28_k8#53
                                 + 3 pi24_k6#54 + 3 pi46_k20#55 + pi55_k22#56
                                 <= 17
 BW_capacity_of_substrate_link_25#41: 3 pi16_k5#6 + 3 pi44_k20#35 + 4 pi2_k1#57
                                 + pi30_k8#58 + pi66_k24#59 <= 18
 BW_capacity_of_substrate_link_26#42: pi27_k8#9 + 5 pi80_k27#36 + pi67_k24#37
                                 + pi70_k25#38 + 3 pi24_k6#54 + pi55_k22#56
                                 + 3 pi20_k5#60 + 3 pi47_k20#61 <= 16
 BW_capacity_of_substrate_link_27#43: 3 pi43_k20#14 + 3 pi22_k6#62 + pi29_k8#63
                                 + 5 pi81_k27#64 <= 15
 BW_capacity_of_substrate_link_28#44: 3 pi46_k20#55 + pi66_k24#59 + pi29_k8#63
                                 + 3 pi19_k5#65 + 3 pi36_k9#66 + 3 pi39_k19#67
                                 + 5 pi50_k21#68 + pi57_k22#69 <= 20
 BW_capacity_of_substrate_link_29#45: 4 pi0_k1#1 + 3 pi32_k9#10 + pi53_k22#17
                                 + 3 pi17_k5#52 + 3 pi24_k6#54 + 5 pi50_k21#68
                                 + 3 pi60_k23#70 + 3 pi77_k26#71 <= 20
 BW_capacity_of_substrate_link_30#46: 3 pi73_k26#21 + 2 pi13_k4#40
                                 + 3 pi39_k19#67 + 3 pi60_k23#70 + 4 pi1_k1#72
                                 + 5 pi51_k21#73 + pi54_k22#74 <= 17
 BW_capacity_of_substrate_link_31#47: 3 pi58_k23#18 + 3 pi18_k5#47
                                 + 3 pi33_k9#48 + 3 pi77_k26#71 + pi54_k22#74
                                 + 3 pi40_k19#75 + 5 pi49_k21#76 <= 13
 BW_capacity_of_substrate_link_32#48: 3 pi58_k23#18 + 3 pi73_k26#21
                                 + 3 pi34_k9#43 + pi72_k25#49 <= 20
 BW_capacity_of_substrate_link_33#49: 2 pi13_k4#40 + 3 pi39_k19#67 <= 15
 BW_capacity_of_substrate_link_34#50: 3 pi37_k18#12 + 3 pi38_k19#13
                                 + 4 pi4_k1#29 + 3 pi59_k23#42 <= 20
 BW_capacity_of_substrate_link_35#51: 4 pi1_k1#72 + 5 pi49_k21#76
                                 + 3 pi35_k9#77 + 3 pi42_k19#78 <= 20
 BW_capacity_of_substrate_link_36#52: 4 pi0_k1#1 + 3 pi38_k19#13
                                 + 5 pi48_k21#15 + 3 pi59_k23#42 + 3 pi35_k9#77
                                 <= 20
 BW_capacity_of_substrate_link_37#53: 3 pi38_k19#13 + 5 pi48_k21#15
                                 + 4 pi2_k1#57 + 3 pi22_k6#62 + 5 pi81_k27#64
                                 + 3 pi36_k9#66 + pi57_k22#69 <= 19
 BW_capacity_of_substrate_link_38#54: 3 pi16_k5#6 + 3 pi40_k19#75
                                 + 3 pi45_k20#79 + 5 pi52_k21#80 <= 19
 BW_capacity_of_substrate_link_39#55: 3 pi17_k5#52 + 3 pi40_k19#75
                                 + 5 pi52_k21#80 + 3 pi23_k6#81 + pi56_k22#82
                                 + 3 pi61_k23#83 <= 20
 BW_capacity_of_substrate_link_40#56: 3 pi21_k6#7 + pi53_k22#17 + 3 pi58_k23#18
                                 + 5 pi81_k27#64 <= 19
 BW_capacity_of_substrate_link_41#57: 2 pi26_k7#8 + 3 pi20_k5#60
                                 + 3 pi45_k20#79 + 3 pi23_k6#81 + 5 pi79_k27#84
                                 <= 19
 BW_capacity_of_substrate_link_42#58: 3 pi21_k6#7 + 5 pi78_k27#22 + pi55_k22#56
                                 <= 11
 BW_capacity_of_substrate_link_43#59: pi56_k22#82 + 3 pi61_k23#83
                                 + 5 pi79_k27#84 + 3 pi25_k6#85 <= 20
 c61#60:                         - 994 vnp1#0 + 141 pi0_k1#1 + 71 pi5_k2#2
                                 + 61 pi10_k3#3 + 64 pi11_k4#4 - 593 vnp2#5
                                 + 128 pi16_k5#6 + 49 pi21_k6#7 + 58 pi26_k7#8
                                 + 52 pi27_k8#9 + 101 pi32_k9#10 - 813 vnp5#11
                                 + 44 pi37_k18#12 + 43 pi38_k19#13
                                 + 81 pi43_k20#14 + 49 pi48_k21#15
                                 - 811 vnp6#16 + 34 pi53_k22#17
                                 + 77 pi58_k23#18 + 25 pi63_k24#19
                                 + 62 pi68_k25#20 + 57 pi73_k26#21
                                 + 63 pi78_k27#22 + 76 pi7_k2#23
                                 + 134 pi12_k4#24 + 156 pi6_k2#25
                                 + 32 pi65_k24#26 + 56 pi69_k25#27
                                 + 123 pi82_k27#28 + 97 pi4_k1#29
                                 + 246 pi8_k2#30 + 166 pi9_k2#31
                                 + 102 pi14_k4#32 + 58 pi31_k8#33
                                 + 68 pi71_k25#34 + 69 pi44_k20#35
                                 + 88 pi80_k27#36 + 26 pi67_k24#37
                                 + 63 pi70_k25#38 + 110 pi15_k4#39
                                 + 110 pi13_k4#40 + 120 pi74_k26#41
                                 + 83 pi59_k23#42 + 110 pi34_k9#43
                                 + 170 pi62_k23#44 + 102 pi75_k26#45
                                 + 153 pi3_k1#46 + 56 pi18_k5#47
                                 + 53 pi33_k9#48 + 49 pi72_k25#49
                                 + 46 pi64_k24#50 + 165 pi76_k26#51
                                 + 104 pi17_k5#52 + 55 pi28_k8#53
                                 + 118 pi24_k6#54 + 126 pi46_k20#55
                                 + 35 pi55_k22#56 + 65 pi2_k1#57
                                 + 67 pi30_k8#58 + 34 pi66_k24#59
                                 + 134 pi20_k5#60 + 96 pi47_k20#61
                                 + 70 pi22_k6#62 + 67 pi29_k8#63
                                 + 118 pi81_k27#64 + 128 pi19_k5#65
                                 + 101 pi36_k9#66 + 142 pi39_k19#67
                                 + 189 pi50_k21#68 + 34 pi57_k22#69
                                 + 119 pi60_k23#70 + 117 pi77_k26#71
                                 + 149 pi1_k1#72 + 199 pi51_k21#73
                                 + 38 pi54_k22#74 + 154 pi40_k19#75
                                 + 159 pi49_k21#76 + 59 pi35_k9#77
                                 + 124 pi42_k19#78 + 138 pi45_k20#79
                                 + 109 pi52_k21#80 + 85 pi23_k6#81
                                 + 42 pi56_k22#82 + 101 pi61_k23#83
                                 + 163 pi79_k27#84 + 109 pi25_k6#85
                                 + 79 pi41_k19#86 <= 0
Bounds
 0 <= vnp1#0 <= 1
 0 <= pi0_k1#1 <= 1
 0 <= pi5_k2#2 <= 1
 0 <= pi10_k3#3 <= 1
 0 <= pi11_k4#4 <= 1
 0 <= vnp2#5 <= 1
 0 <= pi16_k5#6 <= 1
 0 <= pi21_k6#7 <= 1
 0 <= pi26_k7#8 <= 1
 0 <= pi27_k8#9 <= 1
 0 <= pi32_k9#10 <= 1
 0 <= vnp5#11 <= 1
 0 <= pi37_k18#12 <= 1
 0 <= pi38_k19#13 <= 1
 0 <= pi43_k20#14 <= 1
 0 <= pi48_k21#15 <= 1
 0 <= vnp6#16 <= 1
 0 <= pi53_k22#17 <= 1
 0 <= pi58_k23#18 <= 1
 0 <= pi63_k24#19 <= 1
 0 <= pi68_k25#20 <= 1
 0 <= pi73_k26#21 <= 1
 0 <= pi78_k27#22 <= 1
 0 <= pi7_k2#23 <= 1
 0 <= pi12_k4#24 <= 1
 0 <= pi6_k2#25 <= 1
 0 <= pi65_k24#26 <= 1
 0 <= pi69_k25#27 <= 1
 0 <= pi82_k27#28 <= 1
 0 <= pi4_k1#29 <= 1
 0 <= pi8_k2#30 <= 1
 0 <= pi9_k2#31 <= 1
 0 <= pi14_k4#32 <= 1
 0 <= pi31_k8#33 <= 1
 0 <= pi71_k25#34 <= 1
 0 <= pi44_k20#35 <= 1
 0 <= pi80_k27#36 <= 1
 0 <= pi67_k24#37 <= 1
 0 <= pi70_k25#38 <= 1
 0 <= pi15_k4#39 <= 1
 0 <= pi13_k4#40 <= 1
 0 <= pi74_k26#41 <= 1
 0 <= pi59_k23#42 <= 1
 0 <= pi34_k9#43 <= 1
 0 <= pi62_k23#44 <= 1
 0 <= pi75_k26#45 <= 1
 0 <= pi3_k1#46 <= 1
 0 <= pi18_k5#47 <= 1
 0 <= pi33_k9#48 <= 1
 0 <= pi72_k25#49 <= 1
 0 <= pi64_k24#50 <= 1
 0 <= pi76_k26#51 <= 1
 0 <= pi17_k5#52 <= 1
 0 <= pi28_k8#53 <= 1
 0 <= pi24_k6#54 <= 1
 0 <= pi46_k20#55 <= 1
 0 <= pi55_k22#56 <= 1
 0 <= pi2_k1#57 <= 1
 0 <= pi30_k8#58 <= 1
 0 <= pi66_k24#59 <= 1
 0 <= pi20_k5#60 <= 1
 0 <= pi47_k20#61 <= 1
 0 <= pi22_k6#62 <= 1
 0 <= pi29_k8#63 <= 1
 0 <= pi81_k27#64 <= 1
 0 <= pi19_k5#65 <= 1
 0 <= pi36_k9#66 <= 1
 0 <= pi39_k19#67 <= 1
 0 <= pi50_k21#68 <= 1
 0 <= pi57_k22#69 <= 1
 0 <= pi60_k23#70 <= 1
 0 <= pi77_k26#71 <= 1
 0 <= pi1_k1#72 <= 1
 0 <= pi51_k21#73 <= 1
 0 <= pi54_k22#74 <= 1
 0 <= pi40_k19#75 <= 1
 0 <= pi49_k21#76 <= 1
 0 <= pi35_k9#77 <= 1
 0 <= pi42_k19#78 <= 1
 0 <= pi45_k20#79 <= 1
 0 <= pi52_k21#80 <= 1
 0 <= pi23_k6#81 <= 1
 0 <= pi56_k22#82 <= 1
 0 <= pi61_k23#83 <= 1
 0 <= pi79_k27#84 <= 1
 0 <= pi25_k6#85 <= 1
 0 <= pi41_k19#86 <= 1
Binaries
 vnp1#0  pi0_k1#1  pi5_k2#2  pi10_k3#3  pi11_k4#4  vnp2#5  pi16_k5#6 
 pi21_k6#7  pi26_k7#8  pi27_k8#9  pi32_k9#10  vnp5#11  pi37_k18#12 
 pi38_k19#13  pi43_k20#14  pi48_k21#15  vnp6#16  pi53_k22#17  pi58_k23#18 
 pi63_k24#19  pi68_k25#20  pi73_k26#21  pi78_k27#22  pi7_k2#23  pi12_k4#24 
 pi6_k2#25  pi65_k24#26  pi69_k25#27  pi82_k27#28  pi4_k1#29  pi8_k2#30 
 pi9_k2#31  pi14_k4#32  pi31_k8#33  pi71_k25#34  pi44_k20#35  pi80_k27#36 
 pi67_k24#37  pi70_k25#38  pi15_k4#39  pi13_k4#40  pi74_k26#41  pi59_k23#42 
 pi34_k9#43  pi62_k23#44  pi75_k26#45  pi3_k1#46  pi18_k5#47  pi33_k9#48 
 pi72_k25#49  pi64_k24#50  pi76_k26#51  pi17_k5#52  pi28_k8#53  pi24_k6#54 
 pi46_k20#55  pi55_k22#56  pi2_k1#57  pi30_k8#58  pi66_k24#59  pi20_k5#60 
 pi47_k20#61  pi22_k6#62  pi29_k8#63  pi81_k27#64  pi19_k5#65  pi36_k9#66 
 pi39_k19#67  pi50_k21#68  pi57_k22#69  pi60_k23#70  pi77_k26#71  pi1_k1#72 
 pi51_k21#73  pi54_k22#74  pi40_k19#75  pi49_k21#76  pi35_k9#77  pi42_k19#78 
 pi45_k20#79  pi52_k21#80  pi23_k6#81  pi56_k22#82  pi61_k23#83  pi79_k27#84 
 pi25_k6#85  pi41_k19#86 
End
