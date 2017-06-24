\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1498 vnp1#0 - 71 pi0_k1#1 - 74 pi4_k2#2 - 93 pi5_k3#3 - 44 pi6_k4#4
      + 1000 vnp2#5 - 115 pi7_k5#6 - 24 pi11_k6#7 - 45 pi15_k7#8 - 80 pi19_k8#9
      + 1070 vnp3#10 - 30 pi23_k9#11 - 49 pi27_k10#12 - 119 pi31_k11#13
      + 871 vnp4#14 - 84 pi35_k12#15 - 127 pi36_k13#16 - 46 pi40_k14#17
      - 54 pi44_k15#18 + 598 vnp5#19 - 31 pi48_k16#20 - 94 pi52_k17#21
      - 38 pi56_k18#22 + 1109 vnp6#23 - 127 pi60_k19#24 - 43 pi64_k20#25
      - 54 pi65_k21#26 - 56 pi69_k22#27 - 127 pi32_k11#28 - 66 pi29_k10#29
      - 94 pi71_k22#30 - 155 pi34_k11#31 - 131 pi33_k11#32 - 119 pi38_k13#33
      - 41 pi30_k10#34 - 125 pi24_k9#35 - 91 pi37_k13#36 - 53 pi45_k15#37
      - 146 pi53_k17#38 - 135 pi8_k5#39 - 50 pi14_k6#40 - 187 pi63_k19#41
      - 75 pi72_k22#42 - 46 pi12_k6#43 - 32 pi16_k7#44 - 182 pi55_k17#45
      - 191 pi39_k13#46 - 60 pi50_k16#47 - 40 pi49_k16#48 - 150 pi54_k17#49
      - 40 pi58_k18#50 - 140 pi25_k9#51 - 110 pi26_k9#52 - 62 pi47_k15#53
      - 48 pi59_k18#54 - 44 pi18_k7#55 - 46 pi42_k14#56 - 175 pi9_k5#57
      - 54 pi46_k15#58 - 122 pi61_k19#59 - 46 pi57_k18#60 - 46 pi41_k14#61
      - 155 pi2_k1#62 - 96 pi68_k21#63 - 62 pi28_k10#64 - 53 pi51_k16#65
      - 75 pi1_k1#66 - 98 pi22_k8#67 - 56 pi67_k21#68 - 95 pi20_k8#69
      - 51 pi43_k14#70 - 107 pi3_k1#71 - 46 pi17_k7#72 - 72 pi66_k21#73
      - 70 pi70_k22#74 - 49 pi13_k6#75 - 164 pi21_k8#76 - 170 pi10_k5#77
      - 182 pi62_k19#78
Subject To
 _Embedding_clash_const_of_vlink1_vnp_1#0: vnp1#0 - pi0_k1#1 <= 0
 _Embedding_clash_const_of_vlink2_vnp_1#1: vnp1#0 - pi4_k2#2 <= 0
 _Embedding_clash_const_of_vlink3_vnp_1#2: vnp1#0 - pi5_k3#3 <= 0
 _Embedding_clash_const_of_vlink4_vnp_1#3: vnp1#0 - pi6_k4#4 <= 0
 _Embedding_clash_const_of_vlink5_vnp_2#4: vnp2#5 - pi7_k5#6 <= 0
 _Embedding_clash_const_of_vlink6_vnp_2#5: vnp2#5 - pi11_k6#7 <= 0
 _Embedding_clash_const_of_vlink7_vnp_2#6: vnp2#5 - pi15_k7#8 <= 0
 _Embedding_clash_const_of_vlink8_vnp_2#7: vnp2#5 - pi19_k8#9 <= 0
 _Embedding_clash_const_of_vlink9_vnp_3#8: vnp3#10 - pi23_k9#11 <= 0
 _Embedding_clash_const_of_vlink10_vnp_3#9: vnp3#10 - pi27_k10#12 <= 0
 _Embedding_clash_const_of_vlink11_vnp_3#10: vnp3#10 - pi31_k11#13 <= 0
 _Embedding_clash_const_of_vlink12_vnp_4#11: vnp4#14 - pi35_k12#15 <= 0
 _Embedding_clash_const_of_vlink13_vnp_4#12: vnp4#14 - pi36_k13#16 <= 0
 _Embedding_clash_const_of_vlink14_vnp_4#13: vnp4#14 - pi40_k14#17 <= 0
 _Embedding_clash_const_of_vlink15_vnp_4#14: vnp4#14 - pi44_k15#18 <= 0
 _Embedding_clash_const_of_vlink16_vnp_5#15: vnp5#19 - pi48_k16#20 <= 0
 _Embedding_clash_const_of_vlink17_vnp_5#16: vnp5#19 - pi52_k17#21 <= 0
 _Embedding_clash_const_of_vlink18_vnp_5#17: vnp5#19 - pi56_k18#22 <= 0
 _Embedding_clash_const_of_vlink19_vnp_6#18: vnp6#23 - pi60_k19#24 <= 0
 _Embedding_clash_const_of_vlink20_vnp_6#19: vnp6#23 - pi64_k20#25 <= 0
 _Embedding_clash_const_of_vlink21_vnp_6#20: vnp6#23 - pi65_k21#26 <= 0
 _Embedding_clash_const_of_vlink22_vnp_6#21: vnp6#23 - pi69_k22#27 <= 0
 BW_capacity_of_substrate_link_1#22: pi27_k10#12 + 4 pi32_k11#28 <= 18
 BW_capacity_of_substrate_link_2#23: 4 pi31_k11#13 + pi29_k10#29 <= 17
 BW_capacity_of_substrate_link_3#24: pi71_k22#30 <= 20
 BW_capacity_of_substrate_link_4#25: pi11_k6#7 <= 20
 BW_capacity_of_substrate_link_5#26: pi29_k10#29 + pi71_k22#30 + 4 pi34_k11#31
                                 <= 20
 BW_capacity_of_substrate_link_6#27: 4 pi32_k11#28 <= 13
 BW_capacity_of_substrate_link_7#28: 4 pi33_k11#32 + 4 pi38_k13#33 <= 20
 BW_capacity_of_substrate_link_8#29: 4 pi31_k11#13 + 4 pi38_k13#33
                                 + pi30_k10#34 <= 17
 BW_capacity_of_substrate_link_9#30: 4 pi32_k11#28 + 5 pi24_k9#35
                                 + 4 pi37_k13#36 + pi45_k15#37 + 4 pi53_k17#38
                                 <= 20
 BW_capacity_of_substrate_link_10#31: pi15_k7#8 + 5 pi8_k5#39 + pi14_k6#40
                                 + 5 pi63_k19#41 + pi72_k22#42 <= 20
 BW_capacity_of_substrate_link_11#32: 5 pi7_k5#6 + 5 pi60_k19#24 + pi69_k22#27
                                 + pi12_k6#43 + pi16_k7#44 <= 20
 BW_capacity_of_substrate_link_12#33: 4 pi36_k13#16 + pi44_k15#18
                                 + 5 pi24_k9#35 + 4 pi55_k17#45 <= 7
 BW_capacity_of_substrate_link_13#34: 4 pi53_k17#38 + 4 pi39_k13#46 <= 16
 BW_capacity_of_substrate_link_14#35: pi50_k16#47 <= 15
 BW_capacity_of_substrate_link_15#36: pi27_k10#12 + pi71_k22#30 + pi50_k16#47
                                 <= 17
 BW_capacity_of_substrate_link_16#37: pi49_k16#48 + 4 pi54_k17#49 <= 18
 BW_capacity_of_substrate_link_17#38: pi11_k6#7 <= 20
 BW_capacity_of_substrate_link_18#39: pi27_k10#12 + pi49_k16#48 <= 17
 BW_capacity_of_substrate_link_19#40: 5 pi23_k9#11 + pi48_k16#20 + pi30_k10#34
                                 + pi58_k18#50 <= 17
 BW_capacity_of_substrate_link_20#41: pi48_k16#20 + 4 pi52_k17#21
                                 + 4 pi39_k13#46 <= 20
 BW_capacity_of_substrate_link_21#42: pi44_k15#18 + pi72_k22#42 + pi58_k18#50
                                 + 5 pi25_k9#51 <= 18
 BW_capacity_of_substrate_link_22#43: 5 pi23_k9#11 + pi30_k10#34 + pi72_k22#42
                                 <= 17
 BW_capacity_of_substrate_link_23#44: 4 pi36_k13#16 + 4 pi52_k17#21
                                 + 5 pi26_k9#52 + pi47_k15#53 + pi59_k18#54
                                 <= 12
 BW_capacity_of_substrate_link_24#45: 4 pi37_k13#36 + pi45_k15#37
                                 + 4 pi53_k17#38 + 5 pi26_k9#52 + pi18_k7#55
                                 + pi42_k14#56 <= 20
 BW_capacity_of_substrate_link_25#46: pi15_k7#8 + 5 pi63_k19#41 + 5 pi9_k5#57
                                 + pi46_k15#58 <= 20
 BW_capacity_of_substrate_link_26#47: 5 pi8_k5#39 + pi14_k6#40 + pi42_k14#56
                                 <= 20
 BW_capacity_of_substrate_link_27#48: 3 pi4_k2#2 + pi69_k22#27 + pi16_k7#44
                                 + 5 pi61_k19#59 <= 20
 BW_capacity_of_substrate_link_29#49: 4 pi35_k12#15 + pi40_k14#17 + pi45_k15#37
                                 + pi18_k7#55 + pi57_k18#60 <= 20
 BW_capacity_of_substrate_link_30#50: pi56_k18#22 + 4 pi54_k17#49 + pi41_k14#61
                                 <= 20
 BW_capacity_of_substrate_link_31#51: pi44_k15#18 + pi57_k18#60 + pi41_k14#61
                                 + 4 pi2_k1#62 + 2 pi68_k21#63 <= 20
 BW_capacity_of_substrate_link_32#52: pi56_k18#22 + 5 pi25_k9#51 + pi28_k10#64
                                 + pi51_k16#65 <= 20
 BW_capacity_of_substrate_link_33#53: 4 pi54_k17#49 + pi28_k10#64 + pi51_k16#65
                                 <= 18
 BW_capacity_of_substrate_link_34#54: pi71_k22#30 <= 16
 BW_capacity_of_substrate_link_35#55: pi72_k22#42 + 4 pi2_k1#62 + 2 pi68_k21#63
                                 <= 20
 BW_capacity_of_substrate_link_36#56: 4 pi0_k1#1 + 2 pi65_k21#26 + pi69_k22#27
                                 <= 16
 BW_capacity_of_substrate_link_37#57: pi15_k7#8 + pi69_k22#27 + pi46_k15#58
                                 + 4 pi1_k1#66 + 3 pi22_k8#67 + 2 pi67_k21#68
                                 <= 20
 BW_capacity_of_substrate_link_38#58: 4 pi6_k4#4 + 4 pi64_k20#25 + 5 pi9_k5#57
                                 + 5 pi61_k19#59 + 4 pi1_k1#66 + 3 pi22_k8#67
                                 + 2 pi67_k21#68 <= 20
 BW_capacity_of_substrate_link_39#59: 4 pi0_k1#1 + 2 pi65_k21#26 + 3 pi20_k8#69
                                 + pi43_k14#70 <= 20
 BW_capacity_of_substrate_link_40#60: 3 pi19_k8#9 + pi40_k14#17 + 4 pi3_k1#71
                                 + pi17_k7#72 + 2 pi66_k21#73 + pi70_k22#74
                                 <= 16
 BW_capacity_of_substrate_link_41#61: 5 pi5_k3#3 + 5 pi7_k5#6 + 5 pi60_k19#24
                                 + pi13_k6#75 + 3 pi21_k8#76 <= 20
 BW_capacity_of_substrate_link_42#62: pi12_k6#43 + pi42_k14#56 + pi17_k7#72
                                 + pi70_k22#74 + 3 pi21_k8#76 + 5 pi10_k5#77
                                 + 5 pi62_k19#78 <= 20
 BW_capacity_of_substrate_link_43#63: 3 pi20_k8#69 + pi43_k14#70 + 4 pi3_k1#71
                                 + 2 pi66_k21#73 + pi13_k6#75 + 5 pi10_k5#77
                                 + 5 pi62_k19#78 <= 20
 BW_capacity_of_substrate_link_44#64: 3 pi19_k8#9 + pi12_k6#43 <= 20
 c66#65:                         - 1498 vnp1#0 + 71 pi0_k1#1 + 74 pi4_k2#2
                                 + 93 pi5_k3#3 + 44 pi6_k4#4 - 1000 vnp2#5
                                 + 115 pi7_k5#6 + 24 pi11_k6#7 + 45 pi15_k7#8
                                 + 80 pi19_k8#9 - 1070 vnp3#10 + 30 pi23_k9#11
                                 + 49 pi27_k10#12 + 119 pi31_k11#13
                                 - 871 vnp4#14 + 84 pi35_k12#15
                                 + 127 pi36_k13#16 + 46 pi40_k14#17
                                 + 54 pi44_k15#18 - 598 vnp5#19
                                 + 31 pi48_k16#20 + 94 pi52_k17#21
                                 + 38 pi56_k18#22 - 1109 vnp6#23
                                 + 127 pi60_k19#24 + 43 pi64_k20#25
                                 + 54 pi65_k21#26 + 56 pi69_k22#27
                                 + 127 pi32_k11#28 + 66 pi29_k10#29
                                 + 94 pi71_k22#30 + 155 pi34_k11#31
                                 + 131 pi33_k11#32 + 119 pi38_k13#33
                                 + 41 pi30_k10#34 + 125 pi24_k9#35
                                 + 91 pi37_k13#36 + 53 pi45_k15#37
                                 + 146 pi53_k17#38 + 135 pi8_k5#39
                                 + 50 pi14_k6#40 + 187 pi63_k19#41
                                 + 75 pi72_k22#42 + 46 pi12_k6#43
                                 + 32 pi16_k7#44 + 182 pi55_k17#45
                                 + 191 pi39_k13#46 + 60 pi50_k16#47
                                 + 40 pi49_k16#48 + 150 pi54_k17#49
                                 + 40 pi58_k18#50 + 140 pi25_k9#51
                                 + 110 pi26_k9#52 + 62 pi47_k15#53
                                 + 48 pi59_k18#54 + 44 pi18_k7#55
                                 + 46 pi42_k14#56 + 175 pi9_k5#57
                                 + 54 pi46_k15#58 + 122 pi61_k19#59
                                 + 46 pi57_k18#60 + 46 pi41_k14#61
                                 + 155 pi2_k1#62 + 96 pi68_k21#63
                                 + 62 pi28_k10#64 + 53 pi51_k16#65
                                 + 75 pi1_k1#66 + 98 pi22_k8#67
                                 + 56 pi67_k21#68 + 95 pi20_k8#69
                                 + 51 pi43_k14#70 + 107 pi3_k1#71
                                 + 46 pi17_k7#72 + 72 pi66_k21#73
                                 + 70 pi70_k22#74 + 49 pi13_k6#75
                                 + 164 pi21_k8#76 + 170 pi10_k5#77
                                 + 182 pi62_k19#78 <= 0
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
 0 <= pi19_k8#9 <= 1
 0 <= vnp3#10 <= 1
 0 <= pi23_k9#11 <= 1
 0 <= pi27_k10#12 <= 1
 0 <= pi31_k11#13 <= 1
 0 <= vnp4#14 <= 1
 0 <= pi35_k12#15 <= 1
 0 <= pi36_k13#16 <= 1
 0 <= pi40_k14#17 <= 1
 0 <= pi44_k15#18 <= 1
 0 <= vnp5#19 <= 1
 0 <= pi48_k16#20 <= 1
 0 <= pi52_k17#21 <= 1
 0 <= pi56_k18#22 <= 1
 0 <= vnp6#23 <= 1
 0 <= pi60_k19#24 <= 1
 0 <= pi64_k20#25 <= 1
 0 <= pi65_k21#26 <= 1
 0 <= pi69_k22#27 <= 1
 0 <= pi32_k11#28 <= 1
 0 <= pi29_k10#29 <= 1
 0 <= pi71_k22#30 <= 1
 0 <= pi34_k11#31 <= 1
 0 <= pi33_k11#32 <= 1
 0 <= pi38_k13#33 <= 1
 0 <= pi30_k10#34 <= 1
 0 <= pi24_k9#35 <= 1
 0 <= pi37_k13#36 <= 1
 0 <= pi45_k15#37 <= 1
 0 <= pi53_k17#38 <= 1
 0 <= pi8_k5#39 <= 1
 0 <= pi14_k6#40 <= 1
 0 <= pi63_k19#41 <= 1
 0 <= pi72_k22#42 <= 1
 0 <= pi12_k6#43 <= 1
 0 <= pi16_k7#44 <= 1
 0 <= pi55_k17#45 <= 1
 0 <= pi39_k13#46 <= 1
 0 <= pi50_k16#47 <= 1
 0 <= pi49_k16#48 <= 1
 0 <= pi54_k17#49 <= 1
 0 <= pi58_k18#50 <= 1
 0 <= pi25_k9#51 <= 1
 0 <= pi26_k9#52 <= 1
 0 <= pi47_k15#53 <= 1
 0 <= pi59_k18#54 <= 1
 0 <= pi18_k7#55 <= 1
 0 <= pi42_k14#56 <= 1
 0 <= pi9_k5#57 <= 1
 0 <= pi46_k15#58 <= 1
 0 <= pi61_k19#59 <= 1
 0 <= pi57_k18#60 <= 1
 0 <= pi41_k14#61 <= 1
 0 <= pi2_k1#62 <= 1
 0 <= pi68_k21#63 <= 1
 0 <= pi28_k10#64 <= 1
 0 <= pi51_k16#65 <= 1
 0 <= pi1_k1#66 <= 1
 0 <= pi22_k8#67 <= 1
 0 <= pi67_k21#68 <= 1
 0 <= pi20_k8#69 <= 1
 0 <= pi43_k14#70 <= 1
 0 <= pi3_k1#71 <= 1
 0 <= pi17_k7#72 <= 1
 0 <= pi66_k21#73 <= 1
 0 <= pi70_k22#74 <= 1
 0 <= pi13_k6#75 <= 1
 0 <= pi21_k8#76 <= 1
 0 <= pi10_k5#77 <= 1
 0 <= pi62_k19#78 <= 1
Binaries
 vnp1#0  pi0_k1#1  pi4_k2#2  pi5_k3#3  pi6_k4#4  vnp2#5  pi7_k5#6  pi11_k6#7 
 pi15_k7#8  pi19_k8#9  vnp3#10  pi23_k9#11  pi27_k10#12  pi31_k11#13  vnp4#14 
 pi35_k12#15  pi36_k13#16  pi40_k14#17  pi44_k15#18  vnp5#19  pi48_k16#20 
 pi52_k17#21  pi56_k18#22  vnp6#23  pi60_k19#24  pi64_k20#25  pi65_k21#26 
 pi69_k22#27  pi32_k11#28  pi29_k10#29  pi71_k22#30  pi34_k11#31  pi33_k11#32 
 pi38_k13#33  pi30_k10#34  pi24_k9#35  pi37_k13#36  pi45_k15#37  pi53_k17#38 
 pi8_k5#39  pi14_k6#40  pi63_k19#41  pi72_k22#42  pi12_k6#43  pi16_k7#44 
 pi55_k17#45  pi39_k13#46  pi50_k16#47  pi49_k16#48  pi54_k17#49  pi58_k18#50 
 pi25_k9#51  pi26_k9#52  pi47_k15#53  pi59_k18#54  pi18_k7#55  pi42_k14#56 
 pi9_k5#57  pi46_k15#58  pi61_k19#59  pi57_k18#60  pi41_k14#61  pi2_k1#62 
 pi68_k21#63  pi28_k10#64  pi51_k16#65  pi1_k1#66  pi22_k8#67  pi67_k21#68 
 pi20_k8#69  pi43_k14#70  pi3_k1#71  pi17_k7#72  pi66_k21#73  pi70_k22#74 
 pi13_k6#75  pi21_k8#76  pi10_k5#77  pi62_k19#78 
End
