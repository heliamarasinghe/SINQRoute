\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1706 vnp1#0 - 48 pi0_k1#1 - 60 pi1_k2#2 - 81 pi5_k3#3 - 69 pi9_k4#4
      - 102 pi13_k5#5 + 1144 vnp2#6 - 20 pi17_k6#7 - 24 pi18_k7#8
      - 54 pi19_k8#9 - 32 pi20_k9#10 + 1492 vnp4#11 - 73 pi24_k13#12
      - 105 pi28_k14#13 - 33 pi32_k15#14 - 21 pi33_k16#15 + 2179 vnp5#16
      - 65 pi34_k17#17 - 200 pi38_k18#18 - 245 pi42_k19#19 - 67 pi46_k20#20
      - 67 pi47_k21#21 + 1591 vnp6#22 - 134 pi48_k22#23 - 131 pi52_k23#24
      - 92 pi56_k24#25 - 63 pi57_k25#26 - 206 pi54_k23#27 - 57 pi21_k9#28
      - 85 pi12_k4#29 - 157 pi15_k5#30 - 244 pi49_k22#31 - 226 pi53_k23#32
      - 75 pi29_k14#33 - 235 pi39_k18#34 - 235 pi43_k19#35 - 43 pi23_k9#36
      - 272 pi16_k5#37 - 246 pi55_k23#38 - 218 pi59_k25#39 - 178 pi60_k25#40
      - 63 pi10_k4#41 - 161 pi27_k13#42 - 68 pi37_k17#43 - 90 pi4_k2#44
      - 177 pi14_k5#45 - 173 pi25_k13#46 - 120 pi30_k14#47 - 345 pi44_k19#48
      - 45 pi22_k9#49 - 63 pi11_k4#50 - 118 pi2_k2#51 - 226 pi8_k3#52
      - 208 pi58_k25#53 - 92 pi3_k2#54 - 360 pi45_k19#55 - 264 pi50_k22#56
      - 71 pi6_k3#57 - 300 pi40_k18#58 - 131 pi7_k3#59 - 52 pi36_k17#60
      - 58 pi35_k17#61 - 193 pi26_k13#62 - 299 pi51_k22#63 - 225 pi41_k18#64
      - 150 pi31_k14#65
Subject To
 _Embedding_clash_const_of_vlink1_vnp_1#0: vnp1#0 - pi0_k1#1 <= 0
 _Embedding_clash_const_of_vlink2_vnp_1#1: vnp1#0 - pi1_k2#2 <= 0
 _Embedding_clash_const_of_vlink3_vnp_1#2: vnp1#0 - pi5_k3#3 <= 0
 _Embedding_clash_const_of_vlink4_vnp_1#3: vnp1#0 - pi9_k4#4 <= 0
 _Embedding_clash_const_of_vlink5_vnp_1#4: vnp1#0 - pi13_k5#5 <= 0
 _Embedding_clash_const_of_vlink6_vnp_2#5: vnp2#6 - pi17_k6#7 <= 0
 _Embedding_clash_const_of_vlink7_vnp_2#6: vnp2#6 - pi18_k7#8 <= 0
 _Embedding_clash_const_of_vlink8_vnp_2#7: vnp2#6 - pi19_k8#9 <= 0
 _Embedding_clash_const_of_vlink9_vnp_2#8: vnp2#6 - pi20_k9#10 <= 0
 _Embedding_clash_const_of_vlink13_vnp_4#9: vnp4#11 - pi24_k13#12 <= 0
 _Embedding_clash_const_of_vlink14_vnp_4#10: vnp4#11 - pi28_k14#13 <= 0
 _Embedding_clash_const_of_vlink15_vnp_4#11: vnp4#11 - pi32_k15#14 <= 0
 _Embedding_clash_const_of_vlink16_vnp_4#12: vnp4#11 - pi33_k16#15 <= 0
 _Embedding_clash_const_of_vlink17_vnp_5#13: vnp5#16 - pi34_k17#17 <= 0
 _Embedding_clash_const_of_vlink18_vnp_5#14: vnp5#16 - pi38_k18#18 <= 0
 _Embedding_clash_const_of_vlink19_vnp_5#15: vnp5#16 - pi42_k19#19 <= 0
 _Embedding_clash_const_of_vlink20_vnp_5#16: vnp5#16 - pi46_k20#20 <= 0
 _Embedding_clash_const_of_vlink21_vnp_5#17: vnp5#16 - pi47_k21#21 <= 0
 _Embedding_clash_const_of_vlink22_vnp_6#18: vnp6#22 - pi48_k22#23 <= 0
 _Embedding_clash_const_of_vlink23_vnp_6#19: vnp6#22 - pi52_k23#24 <= 0
 _Embedding_clash_const_of_vlink24_vnp_6#20: vnp6#22 - pi56_k24#25 <= 0
 _Embedding_clash_const_of_vlink25_vnp_6#21: vnp6#22 - pi57_k25#26 <= 0
 BW_capacity_of_substrate_link_1#22: 3 pi19_k8#9 + pi20_k9#10 + 5 pi54_k23#27
                                 <= 20
 BW_capacity_of_substrate_link_2#23: 5 pi48_k22#23 + 5 pi52_k23#24
                                 + 5 pi56_k24#25 + pi21_k9#28 <= 20
 BW_capacity_of_substrate_link_3#24: 2 pi12_k4#29 + 5 pi15_k5#30
                                 + 5 pi49_k22#31 + 5 pi53_k23#32 <= 13
 BW_capacity_of_substrate_link_4#25: 2 pi1_k2#2 + 2 pi9_k4#4 + 5 pi13_k5#5
                                 + 4 pi24_k13#12 + 4 pi46_k20#20
                                 + 3 pi29_k14#33 + 5 pi39_k18#34
                                 + 5 pi43_k19#35 <= 20
 BW_capacity_of_substrate_link_5#26: pi23_k9#36 <= 19
 BW_capacity_of_substrate_link_6#27: 5 pi54_k23#27 <= 12
 BW_capacity_of_substrate_link_7#28: pi21_k9#28 + 5 pi16_k5#37 + 5 pi55_k23#38
                                 + 5 pi59_k25#39 <= 16
 BW_capacity_of_substrate_link_8#29: 5 pi48_k22#23 + 5 pi52_k23#24
                                 + 5 pi57_k25#26 + 2 pi12_k4#29 + 5 pi15_k5#30
                                 <= 6
 BW_capacity_of_substrate_link_9#30: 5 pi54_k23#27 + 5 pi16_k5#37
                                 + 5 pi60_k25#40 <= 11
 BW_capacity_of_substrate_link_10#31: 2 pi1_k2#2 + 5 pi13_k5#5 + 4 pi32_k15#14
                                 + 5 pi53_k23#32 + 3 pi29_k14#33
                                 + 5 pi43_k19#35 + 2 pi10_k4#41 + 4 pi27_k13#42
                                 + pi37_k17#43 <= 15
 BW_capacity_of_substrate_link_11#32: 2 pi9_k4#4 + pi34_k17#17 + 5 pi49_k22#31
                                 + 5 pi39_k18#34 + 2 pi4_k2#44 + 5 pi14_k5#45
                                 + 4 pi25_k13#46 + 3 pi30_k14#47
                                 + 5 pi44_k19#48 <= 13
 BW_capacity_of_substrate_link_12#33: 5 pi59_k25#39 <= 15
 BW_capacity_of_substrate_link_13#34: pi21_k9#28 <= 15
 BW_capacity_of_substrate_link_14#35: 5 pi18_k7#8 + pi20_k9#10 <= 19
 BW_capacity_of_substrate_link_15#36: 2 pi17_k6#7 + pi22_k9#49 <= 12
 BW_capacity_of_substrate_link_16#37: pi22_k9#49 <= 20
 BW_capacity_of_substrate_link_17#38: 4 pi24_k13#12 + 3 pi33_k16#15
                                 + 5 pi38_k18#18 + 5 pi42_k19#19
                                 + 3 pi29_k14#33 + 2 pi11_k4#50 <= 20
 BW_capacity_of_substrate_link_22#39: 2 pi2_k2#51 + 5 pi8_k3#52 + 5 pi58_k25#53
                                 <= 7
 BW_capacity_of_substrate_link_23#40: 2 pi2_k2#51 + 5 pi8_k3#52 + 5 pi58_k25#53
                                 <= 18
 BW_capacity_of_substrate_link_24#41: 5 pi0_k1#1 + 2 pi1_k2#2 + 5 pi5_k3#3
                                 + 5 pi52_k23#24 + 5 pi57_k25#26
                                 + 5 pi43_k19#35 <= 16
 BW_capacity_of_substrate_link_25#42: pi37_k17#43 + 2 pi3_k2#54 + 5 pi45_k19#55
                                 + 5 pi50_k22#56 <= 16
 BW_capacity_of_substrate_link_26#43: 5 pi5_k3#3 + 3 pi28_k14#13
                                 + 5 pi48_k22#23 + 2 pi10_k4#41 + 4 pi27_k13#42
                                 + 2 pi4_k2#44 + 5 pi14_k5#45 <= 15
 BW_capacity_of_substrate_link_27#44: pi34_k17#17 + 5 pi44_k19#48 + 5 pi6_k3#57
                                 + 5 pi40_k18#58 <= 17
 BW_capacity_of_substrate_link_28#45: 2 pi3_k2#54 + 5 pi6_k3#57 <= 15
 BW_capacity_of_substrate_link_30#46: 5 pi43_k19#35 <= 19
 BW_capacity_of_substrate_link_35#47: 5 pi43_k19#35 <= 20
 BW_capacity_of_substrate_link_36#48: 5 pi42_k19#19 + 3 pi47_k21#21 <= 16
 BW_capacity_of_substrate_link_37#49: pi34_k17#17 + 5 pi44_k19#48
                                 + 5 pi40_k18#58 <= 20
 BW_capacity_of_substrate_link_38#50: 5 pi50_k22#56 + 5 pi7_k3#59 <= 20
 BW_capacity_of_substrate_link_39#51: 5 pi39_k18#34 + pi36_k17#60 <= 20
 BW_capacity_of_substrate_link_40#52: 5 pi38_k18#18 + 5 pi42_k19#19
                                 + pi35_k17#61 <= 16
 BW_capacity_of_substrate_link_41#53: 5 pi48_k22#23 + 5 pi39_k18#34
                                 + 5 pi7_k3#59 + pi36_k17#60 + 4 pi26_k13#62
                                 <= 20
 BW_capacity_of_substrate_link_42#54: 3 pi28_k14#13 + 4 pi25_k13#46
                                 + 2 pi11_k4#50 + pi35_k17#61 + 5 pi51_k22#63
                                 <= 20
 BW_capacity_of_substrate_link_43#55: 4 pi26_k13#62 + 5 pi51_k22#63
                                 + 5 pi41_k18#64 <= 20
 BW_capacity_of_substrate_link_44#56: 3 pi28_k14#13 + 5 pi38_k18#18
                                 + 5 pi42_k19#19 + 4 pi25_k13#46 + 2 pi11_k4#50
                                 <= 20
 c58#57:                         - 1706 vnp1#0 + 48 pi0_k1#1 + 60 pi1_k2#2
                                 + 81 pi5_k3#3 + 69 pi9_k4#4 + 102 pi13_k5#5
                                 - 1144 vnp2#6 + 20 pi17_k6#7 + 24 pi18_k7#8
                                 + 54 pi19_k8#9 + 32 pi20_k9#10 - 1492 vnp4#11
                                 + 73 pi24_k13#12 + 105 pi28_k14#13
                                 + 33 pi32_k15#14 + 21 pi33_k16#15
                                 - 2179 vnp5#16 + 65 pi34_k17#17
                                 + 200 pi38_k18#18 + 245 pi42_k19#19
                                 + 67 pi46_k20#20 + 67 pi47_k21#21
                                 - 1591 vnp6#22 + 134 pi48_k22#23
                                 + 131 pi52_k23#24 + 92 pi56_k24#25
                                 + 63 pi57_k25#26 + 206 pi54_k23#27
                                 + 57 pi21_k9#28 + 85 pi12_k4#29
                                 + 157 pi15_k5#30 + 244 pi49_k22#31
                                 + 226 pi53_k23#32 + 75 pi29_k14#33
                                 + 235 pi39_k18#34 + 235 pi43_k19#35
                                 + 43 pi23_k9#36 + 272 pi16_k5#37
                                 + 246 pi55_k23#38 + 218 pi59_k25#39
                                 + 178 pi60_k25#40 + 63 pi10_k4#41
                                 + 161 pi27_k13#42 + 68 pi37_k17#43
                                 + 90 pi4_k2#44 + 177 pi14_k5#45
                                 + 173 pi25_k13#46 + 120 pi30_k14#47
                                 + 345 pi44_k19#48 + 45 pi22_k9#49
                                 + 63 pi11_k4#50 + 118 pi2_k2#51
                                 + 226 pi8_k3#52 + 208 pi58_k25#53
                                 + 92 pi3_k2#54 + 360 pi45_k19#55
                                 + 264 pi50_k22#56 + 71 pi6_k3#57
                                 + 300 pi40_k18#58 + 131 pi7_k3#59
                                 + 52 pi36_k17#60 + 58 pi35_k17#61
                                 + 193 pi26_k13#62 + 299 pi51_k22#63
                                 + 225 pi41_k18#64 + 150 pi31_k14#65 <= 0
Bounds
 0 <= vnp1#0 <= 1
 0 <= pi0_k1#1 <= 1
 0 <= pi1_k2#2 <= 1
 0 <= pi5_k3#3 <= 1
 0 <= pi9_k4#4 <= 1
 0 <= pi13_k5#5 <= 1
 0 <= vnp2#6 <= 1
 0 <= pi17_k6#7 <= 1
 0 <= pi18_k7#8 <= 1
 0 <= pi19_k8#9 <= 1
 0 <= pi20_k9#10 <= 1
 0 <= vnp4#11 <= 1
 0 <= pi24_k13#12 <= 1
 0 <= pi28_k14#13 <= 1
 0 <= pi32_k15#14 <= 1
 0 <= pi33_k16#15 <= 1
 0 <= vnp5#16 <= 1
 0 <= pi34_k17#17 <= 1
 0 <= pi38_k18#18 <= 1
 0 <= pi42_k19#19 <= 1
 0 <= pi46_k20#20 <= 1
 0 <= pi47_k21#21 <= 1
 0 <= vnp6#22 <= 1
 0 <= pi48_k22#23 <= 1
 0 <= pi52_k23#24 <= 1
 0 <= pi56_k24#25 <= 1
 0 <= pi57_k25#26 <= 1
 0 <= pi54_k23#27 <= 1
 0 <= pi21_k9#28 <= 1
 0 <= pi12_k4#29 <= 1
 0 <= pi15_k5#30 <= 1
 0 <= pi49_k22#31 <= 1
 0 <= pi53_k23#32 <= 1
 0 <= pi29_k14#33 <= 1
 0 <= pi39_k18#34 <= 1
 0 <= pi43_k19#35 <= 1
 0 <= pi23_k9#36 <= 1
 0 <= pi16_k5#37 <= 1
 0 <= pi55_k23#38 <= 1
 0 <= pi59_k25#39 <= 1
 0 <= pi60_k25#40 <= 1
 0 <= pi10_k4#41 <= 1
 0 <= pi27_k13#42 <= 1
 0 <= pi37_k17#43 <= 1
 0 <= pi4_k2#44 <= 1
 0 <= pi14_k5#45 <= 1
 0 <= pi25_k13#46 <= 1
 0 <= pi30_k14#47 <= 1
 0 <= pi44_k19#48 <= 1
 0 <= pi22_k9#49 <= 1
 0 <= pi11_k4#50 <= 1
 0 <= pi2_k2#51 <= 1
 0 <= pi8_k3#52 <= 1
 0 <= pi58_k25#53 <= 1
 0 <= pi3_k2#54 <= 1
 0 <= pi45_k19#55 <= 1
 0 <= pi50_k22#56 <= 1
 0 <= pi6_k3#57 <= 1
 0 <= pi40_k18#58 <= 1
 0 <= pi7_k3#59 <= 1
 0 <= pi36_k17#60 <= 1
 0 <= pi35_k17#61 <= 1
 0 <= pi26_k13#62 <= 1
 0 <= pi51_k22#63 <= 1
 0 <= pi41_k18#64 <= 1
 0 <= pi31_k14#65 <= 1
Binaries
 vnp1#0  pi0_k1#1  pi1_k2#2  pi5_k3#3  pi9_k4#4  pi13_k5#5  vnp2#6  pi17_k6#7 
 pi18_k7#8  pi19_k8#9  pi20_k9#10  vnp4#11  pi24_k13#12  pi28_k14#13 
 pi32_k15#14  pi33_k16#15  vnp5#16  pi34_k17#17  pi38_k18#18  pi42_k19#19 
 pi46_k20#20  pi47_k21#21  vnp6#22  pi48_k22#23  pi52_k23#24  pi56_k24#25 
 pi57_k25#26  pi54_k23#27  pi21_k9#28  pi12_k4#29  pi15_k5#30  pi49_k22#31 
 pi53_k23#32  pi29_k14#33  pi39_k18#34  pi43_k19#35  pi23_k9#36  pi16_k5#37 
 pi55_k23#38  pi59_k25#39  pi60_k25#40  pi10_k4#41  pi27_k13#42  pi37_k17#43 
 pi4_k2#44  pi14_k5#45  pi25_k13#46  pi30_k14#47  pi44_k19#48  pi22_k9#49 
 pi11_k4#50  pi2_k2#51  pi8_k3#52  pi58_k25#53  pi3_k2#54  pi45_k19#55 
 pi50_k22#56  pi6_k3#57  pi40_k18#58  pi7_k3#59  pi36_k17#60  pi35_k17#61 
 pi26_k13#62  pi51_k22#63  pi41_k18#64  pi31_k14#65 
End
