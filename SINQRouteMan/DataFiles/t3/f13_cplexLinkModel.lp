\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 936 vnp4#0 - 104 pi0_k13#1 - 41 pi4_k14#2 - 215 pi5_k15#3 - 40 pi10_k16#4
      + 766 vnp6#5 - 148 pi15_k20#6 - 92 pi20_k21#7 - 49 pi21_k22#8
      - 73 pi22_k23#9 - 74 pi27_k24#10 + 1013 vnp7#11 - 123 pi28_k25#12
      - 141 pi33_k26#13 - 41 pi38_k27#14 - 31 pi43_k28#15 - 78 pi48_k29#16
      + 1028 vnp8#17 - 72 pi53_k30#18 - 90 pi54_k31#19 - 48 pi55_k32#20
      - 32 pi56_k33#21 - 115 pi57_k34#22 - 247 pi8_k15#23 - 49 pi40_k27#24
      - 156 pi29_k25#25 - 221 pi37_k26#26 - 215 pi6_k15#27 - 162 pi31_k25#28
      - 206 pi35_k26#29 - 48 pi42_k27#30 - 55 pi39_k27#31 - 206 pi36_k26#32
      - 171 pi32_k25#33 - 134 pi1_k13#34 - 243 pi7_k15#35 - 94 pi3_k13#36
      - 61 pi26_k23#37 - 57 pi23_k23#38 - 236 pi34_k26#39 - 111 pi24_k23#40
      - 62 pi41_k27#41 - 178 pi50_k29#42 - 103 pi25_k23#43 - 189 pi30_k25#44
      - 136 pi17_k20#45 - 53 pi12_k16#46 - 156 pi18_k20#47 - 33 pi46_k28#48
      - 122 pi51_k29#49 - 22 pi44_k28#50 - 62 pi13_k16#51 - 126 pi52_k29#52
      - 223 pi9_k15#53 - 57 pi11_k16#54 - 136 pi16_k20#55 - 34 pi47_k28#56
      - 259 pi2_k13#57 - 32 pi45_k28#58 - 73 pi14_k16#59 - 188 pi19_k20#60
      - 142 pi49_k29#61
Subject To
 _Embedding_clash_const_of_vlink13_vnp_4#0: vnp4#0 - pi0_k13#1 <= 0
 _Embedding_clash_const_of_vlink14_vnp_4#1: vnp4#0 - pi4_k14#2 <= 0
 _Embedding_clash_const_of_vlink15_vnp_4#2: vnp4#0 - pi5_k15#3 <= 0
 _Embedding_clash_const_of_vlink16_vnp_4#3: vnp4#0 - pi10_k16#4 <= 0
 _Embedding_clash_const_of_vlink20_vnp_6#4: vnp6#5 - pi15_k20#6 <= 0
 _Embedding_clash_const_of_vlink21_vnp_6#5: vnp6#5 - pi20_k21#7 <= 0
 _Embedding_clash_const_of_vlink22_vnp_6#6: vnp6#5 - pi21_k22#8 <= 0
 _Embedding_clash_const_of_vlink23_vnp_6#7: vnp6#5 - pi22_k23#9 <= 0
 _Embedding_clash_const_of_vlink24_vnp_6#8: vnp6#5 - pi27_k24#10 <= 0
 _Embedding_clash_const_of_vlink25_vnp_7#9: vnp7#11 - pi28_k25#12 <= 0
 _Embedding_clash_const_of_vlink26_vnp_7#10: vnp7#11 - pi33_k26#13 <= 0
 _Embedding_clash_const_of_vlink27_vnp_7#11: vnp7#11 - pi38_k27#14 <= 0
 _Embedding_clash_const_of_vlink28_vnp_7#12: vnp7#11 - pi43_k28#15 <= 0
 _Embedding_clash_const_of_vlink29_vnp_7#13: vnp7#11 - pi48_k29#16 <= 0
 _Embedding_clash_const_of_vlink30_vnp_8#14: vnp8#17 - pi53_k30#18 <= 0
 _Embedding_clash_const_of_vlink31_vnp_8#15: vnp8#17 - pi54_k31#19 <= 0
 _Embedding_clash_const_of_vlink32_vnp_8#16: vnp8#17 - pi55_k32#20 <= 0
 _Embedding_clash_const_of_vlink33_vnp_8#17: vnp8#17 - pi56_k33#21 <= 0
 _Embedding_clash_const_of_vlink34_vnp_8#18: vnp8#17 - pi57_k34#22 <= 0
 BW_capacity_of_substrate_link_1#19: 4 pi8_k15#23 + pi40_k27#24 <= 20
 BW_capacity_of_substrate_link_2#20: 4 pi8_k15#23 + pi40_k27#24 <= 13
 BW_capacity_of_substrate_link_3#21: 3 pi29_k25#25 + 5 pi37_k26#26 <= 20
 BW_capacity_of_substrate_link_5#22: 4 pi5_k15#3 + pi38_k27#14 + 3 pi54_k31#19
                                 <= 20
 BW_capacity_of_substrate_link_6#23: 5 pi4_k14#2 + 4 pi55_k32#20 + 4 pi6_k15#27
                                 <= 20
 BW_capacity_of_substrate_link_7#24: 3 pi56_k33#21 + 3 pi31_k25#28
                                 + 5 pi35_k26#29 + pi42_k27#30 <= 20
 BW_capacity_of_substrate_link_8#25: 4 pi5_k15#3 + 3 pi28_k25#12
                                 + 5 pi33_k26#13 + 4 pi53_k30#18 + pi39_k27#31
                                 <= 13
 BW_capacity_of_substrate_link_9#26: 5 pi57_k34#22 + 4 pi6_k15#27
                                 + 3 pi31_k25#28 + 5 pi36_k26#32 <= 20
 BW_capacity_of_substrate_link_10#27: 4 pi27_k24#10 + 5 pi37_k26#26
                                 + 3 pi32_k25#33 <= 18
 BW_capacity_of_substrate_link_11#28: 5 pi20_k21#7 + 3 pi29_k25#25 <= 15
 BW_capacity_of_substrate_link_12#29: 5 pi35_k26#29 + pi42_k27#30 <= 20
 BW_capacity_of_substrate_link_14#30: 5 pi1_k13#34 <= 20
 BW_capacity_of_substrate_link_15#31: 5 pi0_k13#1 + pi38_k27#14 + 4 pi7_k15#35
                                 <= 20
 BW_capacity_of_substrate_link_16#32: 5 pi1_k13#34 <= 7
 BW_capacity_of_substrate_link_17#33: 5 pi3_k13#36 <= 14
 BW_capacity_of_substrate_link_18#34: 5 pi3_k13#36 <= 20
 BW_capacity_of_substrate_link_19#35: 2 pi26_k23#37 <= 19
 BW_capacity_of_substrate_link_21#36: pi42_k27#30 + 2 pi23_k23#38 <= 18
 BW_capacity_of_substrate_link_22#37: 2 pi23_k23#38 + 5 pi34_k26#39 <= 19
 BW_capacity_of_substrate_link_23#38: 5 pi34_k26#39 + 2 pi24_k23#40 <= 20
 BW_capacity_of_substrate_link_24#39: 4 pi15_k20#6 + 2 pi22_k23#9
                                 + 5 pi33_k26#13 + pi41_k27#41 + 4 pi50_k29#42
                                 <= 8
 BW_capacity_of_substrate_link_25#40: 4 pi5_k15#3 + pi39_k27#31 + 2 pi25_k23#43
                                 + 3 pi30_k25#44 <= 20
 BW_capacity_of_substrate_link_26#41: 4 pi15_k20#6 + 3 pi21_k22#8
                                 + 3 pi28_k25#12 + 4 pi50_k29#42 <= 20
 BW_capacity_of_substrate_link_27#42: 4 pi17_k20#45 <= 20
 BW_capacity_of_substrate_link_28#43: 4 pi7_k15#35 + 2 pi25_k23#43
                                 + pi12_k16#46 + 4 pi18_k20#47 + pi46_k28#48
                                 + 4 pi51_k29#49 <= 20
 BW_capacity_of_substrate_link_29#44: 4 pi48_k29#16 + pi12_k16#46 + pi44_k28#50
                                 <= 15
 BW_capacity_of_substrate_link_30#45: 4 pi15_k20#6 + 2 pi22_k23#9 + pi43_k28#15
                                 + 4 pi7_k15#35 + pi41_k27#41 + pi13_k16#51
                                 + 4 pi52_k29#52 <= 17
 BW_capacity_of_substrate_link_31#46: 4 pi52_k29#52 + 4 pi9_k15#53
                                 + pi11_k16#54 + 4 pi16_k20#55 + pi47_k28#56
                                 <= 0
 BW_capacity_of_substrate_link_32#47: 2 pi26_k23#37 <= 4
 BW_capacity_of_substrate_link_33#48: 4 pi7_k15#35 + 5 pi2_k13#57 + pi45_k28#58
                                 <= 11
 BW_capacity_of_substrate_link_34#49: 5 pi0_k13#1 + pi38_k27#14 + pi45_k28#58
                                 <= 20
 BW_capacity_of_substrate_link_35#50: pi43_k28#15 + pi41_k27#41 + pi11_k16#54
                                 + 5 pi2_k13#57 <= 20
 BW_capacity_of_substrate_link_36#51: pi10_k16#4 + pi39_k27#31 + pi44_k28#50
                                 <= 16
 BW_capacity_of_substrate_link_37#52: pi10_k16#4 + pi39_k27#31 + 4 pi17_k20#45
                                 + pi46_k28#48 + 4 pi51_k29#49 + 4 pi9_k15#53
                                 <= 20
 BW_capacity_of_substrate_link_38#53: 3 pi30_k25#44 + pi14_k16#59 <= 20
 BW_capacity_of_substrate_link_39#54: pi14_k16#59 + 4 pi19_k20#60
                                 + 4 pi49_k29#61 <= 10
 BW_capacity_of_substrate_link_40#55: 4 pi48_k29#16 + 4 pi16_k20#55 <= 16
 BW_capacity_of_substrate_link_41#56: 4 pi19_k20#60 <= 20
 BW_capacity_of_substrate_link_42#57: 3 pi28_k25#12 + 4 pi50_k29#42
                                 + 4 pi16_k20#55 <= 15
 BW_capacity_of_substrate_link_43#58: 3 pi30_k25#44 + 4 pi49_k29#61 <= 20
 BW_capacity_of_substrate_link_44#59: 3 pi28_k25#12 + 4 pi48_k29#16 <= 20
 c61#60:                         - 936 vnp4#0 + 104 pi0_k13#1 + 41 pi4_k14#2
                                 + 215 pi5_k15#3 + 40 pi10_k16#4 - 766 vnp6#5
                                 + 148 pi15_k20#6 + 92 pi20_k21#7
                                 + 49 pi21_k22#8 + 73 pi22_k23#9
                                 + 74 pi27_k24#10 - 1013 vnp7#11
                                 + 123 pi28_k25#12 + 141 pi33_k26#13
                                 + 41 pi38_k27#14 + 31 pi43_k28#15
                                 + 78 pi48_k29#16 - 1028 vnp8#17
                                 + 72 pi53_k30#18 + 90 pi54_k31#19
                                 + 48 pi55_k32#20 + 32 pi56_k33#21
                                 + 115 pi57_k34#22 + 247 pi8_k15#23
                                 + 49 pi40_k27#24 + 156 pi29_k25#25
                                 + 221 pi37_k26#26 + 215 pi6_k15#27
                                 + 162 pi31_k25#28 + 206 pi35_k26#29
                                 + 48 pi42_k27#30 + 55 pi39_k27#31
                                 + 206 pi36_k26#32 + 171 pi32_k25#33
                                 + 134 pi1_k13#34 + 243 pi7_k15#35
                                 + 94 pi3_k13#36 + 61 pi26_k23#37
                                 + 57 pi23_k23#38 + 236 pi34_k26#39
                                 + 111 pi24_k23#40 + 62 pi41_k27#41
                                 + 178 pi50_k29#42 + 103 pi25_k23#43
                                 + 189 pi30_k25#44 + 136 pi17_k20#45
                                 + 53 pi12_k16#46 + 156 pi18_k20#47
                                 + 33 pi46_k28#48 + 122 pi51_k29#49
                                 + 22 pi44_k28#50 + 62 pi13_k16#51
                                 + 126 pi52_k29#52 + 223 pi9_k15#53
                                 + 57 pi11_k16#54 + 136 pi16_k20#55
                                 + 34 pi47_k28#56 + 259 pi2_k13#57
                                 + 32 pi45_k28#58 + 73 pi14_k16#59
                                 + 188 pi19_k20#60 + 142 pi49_k29#61 <= 0
Bounds
 0 <= vnp4#0 <= 1
 0 <= pi0_k13#1 <= 1
 0 <= pi4_k14#2 <= 1
 0 <= pi5_k15#3 <= 1
 0 <= pi10_k16#4 <= 1
 0 <= vnp6#5 <= 1
 0 <= pi15_k20#6 <= 1
 0 <= pi20_k21#7 <= 1
 0 <= pi21_k22#8 <= 1
 0 <= pi22_k23#9 <= 1
 0 <= pi27_k24#10 <= 1
 0 <= vnp7#11 <= 1
 0 <= pi28_k25#12 <= 1
 0 <= pi33_k26#13 <= 1
 0 <= pi38_k27#14 <= 1
 0 <= pi43_k28#15 <= 1
 0 <= pi48_k29#16 <= 1
 0 <= vnp8#17 <= 1
 0 <= pi53_k30#18 <= 1
 0 <= pi54_k31#19 <= 1
 0 <= pi55_k32#20 <= 1
 0 <= pi56_k33#21 <= 1
 0 <= pi57_k34#22 <= 1
 0 <= pi8_k15#23 <= 1
 0 <= pi40_k27#24 <= 1
 0 <= pi29_k25#25 <= 1
 0 <= pi37_k26#26 <= 1
 0 <= pi6_k15#27 <= 1
 0 <= pi31_k25#28 <= 1
 0 <= pi35_k26#29 <= 1
 0 <= pi42_k27#30 <= 1
 0 <= pi39_k27#31 <= 1
 0 <= pi36_k26#32 <= 1
 0 <= pi32_k25#33 <= 1
 0 <= pi1_k13#34 <= 1
 0 <= pi7_k15#35 <= 1
 0 <= pi3_k13#36 <= 1
 0 <= pi26_k23#37 <= 1
 0 <= pi23_k23#38 <= 1
 0 <= pi34_k26#39 <= 1
 0 <= pi24_k23#40 <= 1
 0 <= pi41_k27#41 <= 1
 0 <= pi50_k29#42 <= 1
 0 <= pi25_k23#43 <= 1
 0 <= pi30_k25#44 <= 1
 0 <= pi17_k20#45 <= 1
 0 <= pi12_k16#46 <= 1
 0 <= pi18_k20#47 <= 1
 0 <= pi46_k28#48 <= 1
 0 <= pi51_k29#49 <= 1
 0 <= pi44_k28#50 <= 1
 0 <= pi13_k16#51 <= 1
 0 <= pi52_k29#52 <= 1
 0 <= pi9_k15#53 <= 1
 0 <= pi11_k16#54 <= 1
 0 <= pi16_k20#55 <= 1
 0 <= pi47_k28#56 <= 1
 0 <= pi2_k13#57 <= 1
 0 <= pi45_k28#58 <= 1
 0 <= pi14_k16#59 <= 1
 0 <= pi19_k20#60 <= 1
 0 <= pi49_k29#61 <= 1
Binaries
 vnp4#0  pi0_k13#1  pi4_k14#2  pi5_k15#3  pi10_k16#4  vnp6#5  pi15_k20#6 
 pi20_k21#7  pi21_k22#8  pi22_k23#9  pi27_k24#10  vnp7#11  pi28_k25#12 
 pi33_k26#13  pi38_k27#14  pi43_k28#15  pi48_k29#16  vnp8#17  pi53_k30#18 
 pi54_k31#19  pi55_k32#20  pi56_k33#21  pi57_k34#22  pi8_k15#23  pi40_k27#24 
 pi29_k25#25  pi37_k26#26  pi6_k15#27  pi31_k25#28  pi35_k26#29  pi42_k27#30 
 pi39_k27#31  pi36_k26#32  pi32_k25#33  pi1_k13#34  pi7_k15#35  pi3_k13#36 
 pi26_k23#37  pi23_k23#38  pi34_k26#39  pi24_k23#40  pi41_k27#41  pi50_k29#42 
 pi25_k23#43  pi30_k25#44  pi17_k20#45  pi12_k16#46  pi18_k20#47  pi46_k28#48 
 pi51_k29#49  pi44_k28#50  pi13_k16#51  pi52_k29#52  pi9_k15#53  pi11_k16#54 
 pi16_k20#55  pi47_k28#56  pi2_k13#57  pi45_k28#58  pi14_k16#59  pi19_k20#60 
 pi49_k29#61 
End
