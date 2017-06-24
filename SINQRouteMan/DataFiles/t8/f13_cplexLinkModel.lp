\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1195 vnp2#0 - 31 pi0_k4#1 - 60 pi1_k5#2 - 62 pi5_k6#3 - 136 pi6_k7#4
      + 809 vnp3#5 - 52 pi10_k8#6 - 96 pi11_k9#7 - 31 pi15_k10#8 + 882 vnp4#9
      - 46 pi16_k11#10 - 36 pi20_k12#11 - 108 pi24_k13#12 - 24 pi28_k14#13
      - 21 pi32_k15#14 + 1178 vnp5#15 - 10 pi36_k16#16 - 79 pi40_k17#17
      - 43 pi41_k18#18 - 75 pi45_k19#19 + 601 vnp6#20 - 29 pi49_k20#21
      - 20 pi53_k21#22 - 34 pi57_k22#23 - 66 pi58_k23#24 + 1569 vnp8#25
      - 43 pi62_k28#26 - 88 pi63_k29#27 - 108 pi67_k30#28 - 87 pi68_k31#29
      - 46 pi43_k18#30 - 42 pi37_k16#31 - 78 pi17_k11#32 - 139 pi46_k19#33
      - 183 pi70_k31#34 - 81 pi61_k23#35 - 42 pi38_k16#36 - 33 pi42_k18#37
      - 139 pi47_k19#38 - 51 pi2_k5#39 - 66 pi18_k11#40 - 27 pi30_k14#41
      - 151 pi71_k31#42 - 132 pi25_k13#43 - 127 pi48_k19#44 - 128 pi64_k29#45
      - 38 pi39_k16#46 - 35 pi54_k21#47 - 69 pi60_k23#48 - 34 pi56_k21#49
      - 44 pi21_k12#50 - 78 pi59_k23#51 - 123 pi14_k9#52 - 36 pi52_k20#53
      - 52 pi4_k5#54 - 68 pi19_k11#55 - 35 pi31_k14#56 - 102 pi12_k9#57
      - 114 pi27_k13#58 - 45 pi35_k15#59 - 49 pi3_k5#60 - 39 pi29_k14#61
      - 78 pi13_k9#62 - 143 pi65_k29#63 - 131 pi69_k31#64 - 38 pi33_k15#65
      - 28 pi50_k20#66 - 126 pi7_k7#67 - 50 pi55_k21#68 - 44 pi22_k12#69
      - 226 pi8_k7#70 - 62 pi23_k12#71 - 246 pi9_k7#72 - 34 pi51_k20#73
      - 158 pi66_k29#74 - 22 pi34_k15#75 - 81 pi26_k13#76 - 36 pi44_k18#77
Subject To
 _Embedding_clash_const_of_vlink4_vnp_2#0: vnp2#0 - pi0_k4#1 <= 0
 _Embedding_clash_const_of_vlink5_vnp_2#1: vnp2#0 - pi1_k5#2 <= 0
 _Embedding_clash_const_of_vlink6_vnp_2#2: vnp2#0 - pi5_k6#3 <= 0
 _Embedding_clash_const_of_vlink7_vnp_2#3: vnp2#0 - pi6_k7#4 <= 0
 _Embedding_clash_const_of_vlink8_vnp_3#4: vnp3#5 - pi10_k8#6 <= 0
 _Embedding_clash_const_of_vlink9_vnp_3#5: vnp3#5 - pi11_k9#7 <= 0
 _Embedding_clash_const_of_vlink10_vnp_3#6: vnp3#5 - pi15_k10#8 <= 0
 _Embedding_clash_const_of_vlink11_vnp_4#7: vnp4#9 - pi16_k11#10 <= 0
 _Embedding_clash_const_of_vlink12_vnp_4#8: vnp4#9 - pi20_k12#11 <= 0
 _Embedding_clash_const_of_vlink13_vnp_4#9: vnp4#9 - pi24_k13#12 <= 0
 _Embedding_clash_const_of_vlink14_vnp_4#10: vnp4#9 - pi28_k14#13 <= 0
 _Embedding_clash_const_of_vlink15_vnp_4#11: vnp4#9 - pi32_k15#14 <= 0
 _Embedding_clash_const_of_vlink16_vnp_5#12: vnp5#15 - pi36_k16#16 <= 0
 _Embedding_clash_const_of_vlink17_vnp_5#13: vnp5#15 - pi40_k17#17 <= 0
 _Embedding_clash_const_of_vlink18_vnp_5#14: vnp5#15 - pi41_k18#18 <= 0
 _Embedding_clash_const_of_vlink19_vnp_5#15: vnp5#15 - pi45_k19#19 <= 0
 _Embedding_clash_const_of_vlink20_vnp_6#16: vnp6#20 - pi49_k20#21 <= 0
 _Embedding_clash_const_of_vlink21_vnp_6#17: vnp6#20 - pi53_k21#22 <= 0
 _Embedding_clash_const_of_vlink22_vnp_6#18: vnp6#20 - pi57_k22#23 <= 0
 _Embedding_clash_const_of_vlink23_vnp_6#19: vnp6#20 - pi58_k23#24 <= 0
 _Embedding_clash_const_of_vlink28_vnp_8#20: vnp8#25 - pi62_k28#26 <= 0
 _Embedding_clash_const_of_vlink29_vnp_8#21: vnp8#25 - pi63_k29#27 <= 0
 _Embedding_clash_const_of_vlink30_vnp_8#22: vnp8#25 - pi67_k30#28 <= 0
 _Embedding_clash_const_of_vlink31_vnp_8#23: vnp8#25 - pi68_k31#29 <= 0
 BW_capacity_of_substrate_link_1#24: 2 pi36_k16#16 + pi43_k18#30 <= 20
 BW_capacity_of_substrate_link_2#25: pi41_k18#18 + 2 pi37_k16#31 <= 20
 BW_capacity_of_substrate_link_3#26: pi41_k18#18 + 5 pi67_k30#28
                                 + 2 pi17_k11#32 + 4 pi46_k19#33
                                 + 4 pi70_k31#34 <= 20
 BW_capacity_of_substrate_link_4#27: pi41_k18#18 + 4 pi45_k19#19 <= 20
 BW_capacity_of_substrate_link_5#28: pi43_k18#30 <= 20
 BW_capacity_of_substrate_link_6#29: 2 pi36_k16#16 + 3 pi61_k23#35 <= 13
 BW_capacity_of_substrate_link_7#30: 5 pi40_k17#17 + 2 pi37_k16#31
                                 + 4 pi46_k19#33 <= 20
 BW_capacity_of_substrate_link_8#31: 4 pi68_k31#29 + 2 pi17_k11#32
                                 + 2 pi38_k16#36 + pi42_k18#37 + 4 pi47_k19#38
                                 <= 20
 BW_capacity_of_substrate_link_9#32: 4 pi45_k19#19 + 2 pi38_k16#36 + pi2_k5#39
                                 + 2 pi18_k11#40 <= 20
 BW_capacity_of_substrate_link_10#33: 2 pi16_k11#10 + 3 pi24_k13#12
                                 + 4 pi45_k19#19 + 5 pi62_k28#26
                                 + 5 pi63_k29#27 + pi42_k18#37 + pi30_k14#41
                                 + 4 pi71_k31#42 <= 20
 BW_capacity_of_substrate_link_11#34: 4 pi70_k31#34 + pi30_k14#41
                                 + 3 pi25_k13#43 + 4 pi48_k19#44
                                 + 5 pi64_k29#45 <= 20
 BW_capacity_of_substrate_link_12#35: pi1_k5#2 + 3 pi61_k23#35 + 2 pi18_k11#40
                                 <= 7
 BW_capacity_of_substrate_link_13#36: 2 pi39_k16#46 <= 16
 BW_capacity_of_substrate_link_14#37: 2 pi39_k16#46 <= 17
 BW_capacity_of_substrate_link_15#38: 3 pi61_k23#35 <= 17
 BW_capacity_of_substrate_link_16#39: pi54_k21#47 + 3 pi60_k23#48 <= 20
 BW_capacity_of_substrate_link_18#40: 3 pi58_k23#24 + pi56_k21#49 <= 20
 BW_capacity_of_substrate_link_19#41: 3 pi58_k23#24 + pi56_k21#49 <= 20
 BW_capacity_of_substrate_link_20#42: pi54_k21#47 + 3 pi60_k23#48 <= 20
 BW_capacity_of_substrate_link_21#43: pi1_k5#2 + pi21_k12#50 + 3 pi59_k23#51
                                 <= 18
 BW_capacity_of_substrate_link_22#44: 2 pi16_k11#10 + pi28_k14#13
                                 + 3 pi14_k9#52 + pi52_k20#53 <= 20
 BW_capacity_of_substrate_link_23#45: pi20_k12#11 + 3 pi57_k22#23 + pi54_k21#47
                                 + 3 pi14_k9#52 + pi52_k20#53 + pi4_k5#54
                                 + 2 pi19_k11#55 + pi31_k14#56 <= 12
 BW_capacity_of_substrate_link_24#46: pi49_k20#21 + pi2_k5#39 + 2 pi19_k11#55
                                 + pi31_k14#56 + 3 pi12_k9#57 + 3 pi27_k13#58
                                 + pi35_k15#59 <= 20
 BW_capacity_of_substrate_link_25#47: 3 pi11_k9#7 + 2 pi15_k10#8
                                 + 3 pi24_k13#12 + 5 pi63_k29#27
                                 + 4 pi68_k31#29 + pi3_k5#60 + pi29_k14#61
                                 <= 20
 BW_capacity_of_substrate_link_26#48: pi28_k14#13 + pi49_k20#21 + 4 pi48_k19#44
                                 + pi35_k15#59 + 3 pi13_k9#62 + 5 pi65_k29#63
                                 + 4 pi69_k31#64 <= 20
 BW_capacity_of_substrate_link_27#49: 3 pi25_k13#43 + 5 pi64_k29#45
                                 + pi29_k14#61 + 4 pi69_k31#64 + pi33_k15#65
                                 + pi50_k20#66 <= 20
 BW_capacity_of_substrate_link_28#50: pi50_k20#66 + 5 pi7_k7#67 <= 20
 BW_capacity_of_substrate_link_29#51: pi20_k12#11 + pi2_k5#39 + 3 pi12_k9#57
                                 + 3 pi27_k13#58 + pi35_k15#59 + pi55_k21#68
                                 <= 20
 BW_capacity_of_substrate_link_30#52: pi53_k21#22 + 5 pi7_k7#67 + pi22_k12#69
                                 <= 20
 BW_capacity_of_substrate_link_31#53: pi1_k5#2 + 2 pi5_k6#3 + 5 pi6_k7#4
                                 + pi21_k12#50 + pi55_k21#68 <= 20
 BW_capacity_of_substrate_link_33#54: pi53_k21#22 + 3 pi59_k23#51 <= 18
 BW_capacity_of_substrate_link_35#55: 5 pi8_k7#70 + pi23_k12#71 <= 20
 BW_capacity_of_substrate_link_36#56: 5 pi8_k7#70 + pi23_k12#71 <= 16
 BW_capacity_of_substrate_link_37#57: 2 pi10_k8#6 + 3 pi11_k9#7 + 3 pi24_k13#12
                                 + pi3_k5#60 + pi33_k15#65 + 5 pi9_k7#72 <= 20
 BW_capacity_of_substrate_link_38#58: 5 pi7_k7#67 + pi51_k20#73 + 5 pi66_k29#74
                                 <= 20
 BW_capacity_of_substrate_link_39#59: 3 pi0_k4#1 + 5 pi6_k7#4 + pi34_k15#75
                                 <= 20
 BW_capacity_of_substrate_link_40#60: pi32_k15#14 + 3 pi13_k9#62
                                 + 3 pi26_k13#76 <= 16
 BW_capacity_of_substrate_link_41#61: pi51_k20#73 + 5 pi66_k29#74 + pi34_k15#75
                                 <= 20
 BW_capacity_of_substrate_link_42#62: pi32_k15#14 + 3 pi13_k9#62
                                 + 3 pi26_k13#76 <= 20
 c64#63:                         - 1195 vnp2#0 + 31 pi0_k4#1 + 60 pi1_k5#2
                                 + 62 pi5_k6#3 + 136 pi6_k7#4 - 809 vnp3#5
                                 + 52 pi10_k8#6 + 96 pi11_k9#7 + 31 pi15_k10#8
                                 - 882 vnp4#9 + 46 pi16_k11#10 + 36 pi20_k12#11
                                 + 108 pi24_k13#12 + 24 pi28_k14#13
                                 + 21 pi32_k15#14 - 1178 vnp5#15
                                 + 10 pi36_k16#16 + 79 pi40_k17#17
                                 + 43 pi41_k18#18 + 75 pi45_k19#19
                                 - 601 vnp6#20 + 29 pi49_k20#21
                                 + 20 pi53_k21#22 + 34 pi57_k22#23
                                 + 66 pi58_k23#24 - 1569 vnp8#25
                                 + 43 pi62_k28#26 + 88 pi63_k29#27
                                 + 108 pi67_k30#28 + 87 pi68_k31#29
                                 + 46 pi43_k18#30 + 42 pi37_k16#31
                                 + 78 pi17_k11#32 + 139 pi46_k19#33
                                 + 183 pi70_k31#34 + 81 pi61_k23#35
                                 + 42 pi38_k16#36 + 33 pi42_k18#37
                                 + 139 pi47_k19#38 + 51 pi2_k5#39
                                 + 66 pi18_k11#40 + 27 pi30_k14#41
                                 + 151 pi71_k31#42 + 132 pi25_k13#43
                                 + 127 pi48_k19#44 + 128 pi64_k29#45
                                 + 38 pi39_k16#46 + 35 pi54_k21#47
                                 + 69 pi60_k23#48 + 34 pi56_k21#49
                                 + 44 pi21_k12#50 + 78 pi59_k23#51
                                 + 123 pi14_k9#52 + 36 pi52_k20#53
                                 + 52 pi4_k5#54 + 68 pi19_k11#55
                                 + 35 pi31_k14#56 + 102 pi12_k9#57
                                 + 114 pi27_k13#58 + 45 pi35_k15#59
                                 + 49 pi3_k5#60 + 39 pi29_k14#61
                                 + 78 pi13_k9#62 + 143 pi65_k29#63
                                 + 131 pi69_k31#64 + 38 pi33_k15#65
                                 + 28 pi50_k20#66 + 126 pi7_k7#67
                                 + 50 pi55_k21#68 + 44 pi22_k12#69
                                 + 226 pi8_k7#70 + 62 pi23_k12#71
                                 + 246 pi9_k7#72 + 34 pi51_k20#73
                                 + 158 pi66_k29#74 + 22 pi34_k15#75
                                 + 81 pi26_k13#76 + 36 pi44_k18#77 <= 0
Bounds
 0 <= vnp2#0 <= 1
 0 <= pi0_k4#1 <= 1
 0 <= pi1_k5#2 <= 1
 0 <= pi5_k6#3 <= 1
 0 <= pi6_k7#4 <= 1
 0 <= vnp3#5 <= 1
 0 <= pi10_k8#6 <= 1
 0 <= pi11_k9#7 <= 1
 0 <= pi15_k10#8 <= 1
 0 <= vnp4#9 <= 1
 0 <= pi16_k11#10 <= 1
 0 <= pi20_k12#11 <= 1
 0 <= pi24_k13#12 <= 1
 0 <= pi28_k14#13 <= 1
 0 <= pi32_k15#14 <= 1
 0 <= vnp5#15 <= 1
 0 <= pi36_k16#16 <= 1
 0 <= pi40_k17#17 <= 1
 0 <= pi41_k18#18 <= 1
 0 <= pi45_k19#19 <= 1
 0 <= vnp6#20 <= 1
 0 <= pi49_k20#21 <= 1
 0 <= pi53_k21#22 <= 1
 0 <= pi57_k22#23 <= 1
 0 <= pi58_k23#24 <= 1
 0 <= vnp8#25 <= 1
 0 <= pi62_k28#26 <= 1
 0 <= pi63_k29#27 <= 1
 0 <= pi67_k30#28 <= 1
 0 <= pi68_k31#29 <= 1
 0 <= pi43_k18#30 <= 1
 0 <= pi37_k16#31 <= 1
 0 <= pi17_k11#32 <= 1
 0 <= pi46_k19#33 <= 1
 0 <= pi70_k31#34 <= 1
 0 <= pi61_k23#35 <= 1
 0 <= pi38_k16#36 <= 1
 0 <= pi42_k18#37 <= 1
 0 <= pi47_k19#38 <= 1
 0 <= pi2_k5#39 <= 1
 0 <= pi18_k11#40 <= 1
 0 <= pi30_k14#41 <= 1
 0 <= pi71_k31#42 <= 1
 0 <= pi25_k13#43 <= 1
 0 <= pi48_k19#44 <= 1
 0 <= pi64_k29#45 <= 1
 0 <= pi39_k16#46 <= 1
 0 <= pi54_k21#47 <= 1
 0 <= pi60_k23#48 <= 1
 0 <= pi56_k21#49 <= 1
 0 <= pi21_k12#50 <= 1
 0 <= pi59_k23#51 <= 1
 0 <= pi14_k9#52 <= 1
 0 <= pi52_k20#53 <= 1
 0 <= pi4_k5#54 <= 1
 0 <= pi19_k11#55 <= 1
 0 <= pi31_k14#56 <= 1
 0 <= pi12_k9#57 <= 1
 0 <= pi27_k13#58 <= 1
 0 <= pi35_k15#59 <= 1
 0 <= pi3_k5#60 <= 1
 0 <= pi29_k14#61 <= 1
 0 <= pi13_k9#62 <= 1
 0 <= pi65_k29#63 <= 1
 0 <= pi69_k31#64 <= 1
 0 <= pi33_k15#65 <= 1
 0 <= pi50_k20#66 <= 1
 0 <= pi7_k7#67 <= 1
 0 <= pi55_k21#68 <= 1
 0 <= pi22_k12#69 <= 1
 0 <= pi8_k7#70 <= 1
 0 <= pi23_k12#71 <= 1
 0 <= pi9_k7#72 <= 1
 0 <= pi51_k20#73 <= 1
 0 <= pi66_k29#74 <= 1
 0 <= pi34_k15#75 <= 1
 0 <= pi26_k13#76 <= 1
 0 <= pi44_k18#77 <= 1
Binaries
 vnp2#0  pi0_k4#1  pi1_k5#2  pi5_k6#3  pi6_k7#4  vnp3#5  pi10_k8#6  pi11_k9#7 
 pi15_k10#8  vnp4#9  pi16_k11#10  pi20_k12#11  pi24_k13#12  pi28_k14#13 
 pi32_k15#14  vnp5#15  pi36_k16#16  pi40_k17#17  pi41_k18#18  pi45_k19#19 
 vnp6#20  pi49_k20#21  pi53_k21#22  pi57_k22#23  pi58_k23#24  vnp8#25 
 pi62_k28#26  pi63_k29#27  pi67_k30#28  pi68_k31#29  pi43_k18#30  pi37_k16#31 
 pi17_k11#32  pi46_k19#33  pi70_k31#34  pi61_k23#35  pi38_k16#36  pi42_k18#37 
 pi47_k19#38  pi2_k5#39  pi18_k11#40  pi30_k14#41  pi71_k31#42  pi25_k13#43 
 pi48_k19#44  pi64_k29#45  pi39_k16#46  pi54_k21#47  pi60_k23#48  pi56_k21#49 
 pi21_k12#50  pi59_k23#51  pi14_k9#52  pi52_k20#53  pi4_k5#54  pi19_k11#55 
 pi31_k14#56  pi12_k9#57  pi27_k13#58  pi35_k15#59  pi3_k5#60  pi29_k14#61 
 pi13_k9#62  pi65_k29#63  pi69_k31#64  pi33_k15#65  pi50_k20#66  pi7_k7#67 
 pi55_k21#68  pi22_k12#69  pi8_k7#70  pi23_k12#71  pi9_k7#72  pi51_k20#73 
 pi66_k29#74  pi34_k15#75  pi26_k13#76  pi44_k18#77 
End
