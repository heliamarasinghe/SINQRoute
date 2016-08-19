\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 799 vnp3#0 - 42 pi0_k11#1 - 93 pi1_k12#2 - 131 pi6_k13#3 - 99 pi11_k14#4
      + 930 vnp4#5 - 51 pi16_k15#6 - 32 pi21_k16#7 - 106 pi22_k17#8
      - 140 pi26_k18#9 + 995 vnp5#10 - 38 pi31_k19#11 - 62 pi34_k20#12
      - 18 pi39_k21#13 - 37 pi40_k22#14 - 81 pi41_k23#15 - 47 pi46_k24#16
      + 837 vnp6#17 - 166 pi51_k25#18 - 225 pi55_k26#19 - 46 pi60_k27#20
      - 126 pi23_k17#21 - 191 pi53_k25#22 - 74 pi61_k27#23 - 148 pi30_k18#24
      - 127 pi4_k12#25 - 136 pi27_k18#26 - 270 pi57_k26#27 - 92 pi62_k27#28
      - 168 pi29_k18#29 - 142 pi24_k17#30 - 211 pi52_k25#31 - 260 pi59_k26#32
      - 275 pi56_k26#33 - 60 pi17_k15#34 - 206 pi54_k25#35 - 145 pi5_k12#36
      - 84 pi13_k14#37 - 225 pi58_k26#38 - 91 pi8_k13#39 - 33 pi12_k14#40
      - 71 pi36_k20#41 - 201 pi7_k13#42 - 256 pi10_k13#43 - 58 pi48_k24#44
      - 82 pi19_k15#45 - 117 pi42_k23#46 - 296 pi9_k13#47 - 80 pi20_k15#48
      - 86 pi35_k20#49 - 135 pi44_k23#50 - 129 pi15_k14#51 - 57 pi49_k24#52
      - 92 pi37_k20#53 - 58 pi50_k24#54 - 99 pi2_k12#55 - 146 pi28_k18#56
      - 99 pi3_k12#57 - 42 pi14_k14#58 - 89 pi38_k20#59 - 125 pi45_k23#60
      - 49 pi33_k19#61 - 62 pi47_k24#62 - 55 pi18_k15#63 - 42 pi32_k19#64
      - 89 pi43_k23#65 - 162 pi25_k17#66 - 84 pi63_k27#67
Subject To
 _Embedding_clash_const_of_vlink11_vnp_3#0: vnp3#0 - pi0_k11#1 <= 0
 _Embedding_clash_const_of_vlink12_vnp_3#1: vnp3#0 - pi1_k12#2 <= 0
 _Embedding_clash_const_of_vlink13_vnp_3#2: vnp3#0 - pi6_k13#3 <= 0
 _Embedding_clash_const_of_vlink14_vnp_3#3: vnp3#0 - pi11_k14#4 <= 0
 _Embedding_clash_const_of_vlink15_vnp_4#4: vnp4#5 - pi16_k15#6 <= 0
 _Embedding_clash_const_of_vlink16_vnp_4#5: vnp4#5 - pi21_k16#7 <= 0
 _Embedding_clash_const_of_vlink17_vnp_4#6: vnp4#5 - pi22_k17#8 <= 0
 _Embedding_clash_const_of_vlink18_vnp_4#7: vnp4#5 - pi26_k18#9 <= 0
 _Embedding_clash_const_of_vlink19_vnp_5#8: vnp5#10 - pi31_k19#11 <= 0
 _Embedding_clash_const_of_vlink20_vnp_5#9: vnp5#10 - pi34_k20#12 <= 0
 _Embedding_clash_const_of_vlink21_vnp_5#10: vnp5#10 - pi39_k21#13 <= 0
 _Embedding_clash_const_of_vlink22_vnp_5#11: vnp5#10 - pi40_k22#14 <= 0
 _Embedding_clash_const_of_vlink23_vnp_5#12: vnp5#10 - pi41_k23#15 <= 0
 _Embedding_clash_const_of_vlink24_vnp_5#13: vnp5#10 - pi46_k24#16 <= 0
 _Embedding_clash_const_of_vlink25_vnp_6#14: vnp6#17 - pi51_k25#18 <= 0
 _Embedding_clash_const_of_vlink26_vnp_6#15: vnp6#17 - pi55_k26#19 <= 0
 _Embedding_clash_const_of_vlink27_vnp_6#16: vnp6#17 - pi60_k27#20 <= 0
 BW_capacity_of_substrate_link_1#17: 3 pi21_k16#7 + 2 pi60_k27#20
                                 + 4 pi23_k17#21 + 5 pi53_k25#22 <= 13
 BW_capacity_of_substrate_link_2#18: 4 pi22_k17#8 + 5 pi51_k25#18
                                 + 2 pi61_k27#23 <= 20
 BW_capacity_of_substrate_link_3#19: 4 pi22_k17#8 + 5 pi51_k25#18
                                 + 5 pi55_k26#19 + 2 pi30_k18#24 <= 20
 BW_capacity_of_substrate_link_4#20: 5 pi51_k25#18 + 5 pi55_k26#19 <= 20
 BW_capacity_of_substrate_link_5#21: 4 pi23_k17#21 + 5 pi53_k25#22
                                 + 2 pi4_k12#25 + 2 pi27_k18#26 + 5 pi57_k26#27
                                 + 2 pi62_k27#28 <= 20
 BW_capacity_of_substrate_link_6#22: 2 pi29_k18#29 <= 20
 BW_capacity_of_substrate_link_7#23: 5 pi55_k26#19 + 2 pi61_k27#23 <= 20
 BW_capacity_of_substrate_link_8#24: 2 pi4_k12#25 + 2 pi27_k18#26
                                 + 4 pi24_k17#30 + 5 pi52_k25#31
                                 + 5 pi59_k26#32 <= 13
 BW_capacity_of_substrate_link_9#25: 2 pi29_k18#29 + 5 pi56_k26#33 <= 10
 BW_capacity_of_substrate_link_10#26: 4 pi24_k17#30 + 5 pi52_k25#31
                                 + 5 pi56_k26#33 + pi17_k15#34 <= 20
 BW_capacity_of_substrate_link_11#27: pi16_k15#6 + 2 pi30_k18#24
                                 + 5 pi54_k25#35 <= 20
 BW_capacity_of_substrate_link_13#28: 5 pi55_k26#19 + 2 pi61_k27#23 <= 13
 BW_capacity_of_substrate_link_14#29: 2 pi60_k27#20 + 5 pi57_k26#27
                                 + 2 pi5_k12#36 <= 20
 BW_capacity_of_substrate_link_15#30: 2 pi1_k12#2 + 2 pi26_k18#9 <= 13
 BW_capacity_of_substrate_link_19#31: 3 pi13_k14#37 <= 13
 BW_capacity_of_substrate_link_20#32: 2 pi5_k12#36 + 5 pi58_k26#38 <= 12
 BW_capacity_of_substrate_link_21#33: 5 pi8_k13#39 + 3 pi12_k14#40 <= 9
 BW_capacity_of_substrate_link_22#34: 5 pi6_k13#3 + 5 pi58_k26#38
                                 + 3 pi36_k20#41 <= 16
 BW_capacity_of_substrate_link_23#35: 3 pi11_k14#4 + 2 pi5_k12#36
                                 + 3 pi36_k20#41 + 5 pi7_k13#42 <= 20
 BW_capacity_of_substrate_link_24#36: 3 pi34_k20#12 + 2 pi40_k22#14
                                 + 2 pi4_k12#25 + 5 pi10_k13#43 + pi48_k24#44
                                 <= 8
 BW_capacity_of_substrate_link_25#37: pi19_k15#45 + 2 pi42_k23#46 <= 15
 BW_capacity_of_substrate_link_26#38: 5 pi6_k13#3 + 3 pi34_k20#12
                                 + 3 pi39_k21#13 + 2 pi41_k23#15
                                 + 2 pi27_k18#26 + pi17_k15#34 + 5 pi54_k25#35
                                 + pi48_k24#44 <= 10
 BW_capacity_of_substrate_link_27#39: 5 pi9_k13#47 + pi20_k15#48
                                 + 3 pi35_k20#49 + 2 pi44_k23#50 <= 20
 BW_capacity_of_substrate_link_28#40: 5 pi9_k13#47 + 3 pi35_k20#49
                                 + 3 pi15_k14#51 + pi49_k24#52 <= 20
 BW_capacity_of_substrate_link_29#41: 3 pi11_k14#4 + pi46_k24#16 + 2 pi4_k12#25
                                 + 5 pi7_k13#42 + 3 pi37_k20#53 <= 16
 BW_capacity_of_substrate_link_30#42: pi50_k24#54 <= 11
 BW_capacity_of_substrate_link_31#43: 2 pi1_k12#2 + 2 pi26_k18#9 + 5 pi8_k13#39
                                 + 3 pi12_k14#40 + pi50_k24#54 <= 3
 BW_capacity_of_substrate_link_32#44: 3 pi13_k14#37 <= 20
 BW_capacity_of_substrate_link_33#45: 2 pi1_k12#2 + 2 pi26_k18#9 <= 1
 BW_capacity_of_substrate_link_34#46: 2 pi2_k12#55 + 2 pi28_k18#56 <= 14
 BW_capacity_of_substrate_link_35#47: 2 pi3_k12#57 + 3 pi14_k14#58 <= 10
 BW_capacity_of_substrate_link_36#48: 2 pi2_k12#55 + 2 pi28_k18#56
                                 + 3 pi14_k14#58 <= 10
 BW_capacity_of_substrate_link_37#49: 2 pi42_k23#46 + 3 pi15_k14#51
                                 + pi49_k24#52 <= 20
 BW_capacity_of_substrate_link_38#50: pi19_k15#45 + 3 pi38_k20#59
                                 + 2 pi45_k23#60 <= 15
 BW_capacity_of_substrate_link_39#51: 3 pi37_k20#53 + pi33_k19#61 + pi47_k24#62
                                 <= 16
 BW_capacity_of_substrate_link_40#52: 2 pi0_k11#1 + 2 pi26_k18#9 + pi46_k24#16
                                 + 5 pi7_k13#42 + 2 pi42_k23#46 + pi33_k19#61
                                 <= 7
 BW_capacity_of_substrate_link_41#53: 3 pi37_k20#53 + pi18_k15#63 + pi32_k19#64
                                 + 2 pi43_k23#65 <= 15
 BW_capacity_of_substrate_link_42#54: 5 pi6_k13#3 + pi16_k15#6 + pi31_k19#11
                                 + 2 pi41_k23#15 + 2 pi27_k18#26 + pi48_k24#44
                                 <= 14
 BW_capacity_of_substrate_link_43#55: pi47_k24#62 + pi18_k15#63 + pi32_k19#64
                                 + 2 pi43_k23#65 <= 20
 BW_capacity_of_substrate_link_44#56: pi16_k15#6 + 2 pi26_k18#9 + pi31_k19#11
                                 + 2 pi41_k23#15 + pi46_k24#16 <= 20
 c58#57:                         - 799 vnp3#0 + 42 pi0_k11#1 + 93 pi1_k12#2
                                 + 131 pi6_k13#3 + 99 pi11_k14#4 - 930 vnp4#5
                                 + 51 pi16_k15#6 + 32 pi21_k16#7
                                 + 106 pi22_k17#8 + 140 pi26_k18#9
                                 - 995 vnp5#10 + 38 pi31_k19#11
                                 + 62 pi34_k20#12 + 18 pi39_k21#13
                                 + 37 pi40_k22#14 + 81 pi41_k23#15
                                 + 47 pi46_k24#16 - 837 vnp6#17
                                 + 166 pi51_k25#18 + 225 pi55_k26#19
                                 + 46 pi60_k27#20 + 126 pi23_k17#21
                                 + 191 pi53_k25#22 + 74 pi61_k27#23
                                 + 148 pi30_k18#24 + 127 pi4_k12#25
                                 + 136 pi27_k18#26 + 270 pi57_k26#27
                                 + 92 pi62_k27#28 + 168 pi29_k18#29
                                 + 142 pi24_k17#30 + 211 pi52_k25#31
                                 + 260 pi59_k26#32 + 275 pi56_k26#33
                                 + 60 pi17_k15#34 + 206 pi54_k25#35
                                 + 145 pi5_k12#36 + 84 pi13_k14#37
                                 + 225 pi58_k26#38 + 91 pi8_k13#39
                                 + 33 pi12_k14#40 + 71 pi36_k20#41
                                 + 201 pi7_k13#42 + 256 pi10_k13#43
                                 + 58 pi48_k24#44 + 82 pi19_k15#45
                                 + 117 pi42_k23#46 + 296 pi9_k13#47
                                 + 80 pi20_k15#48 + 86 pi35_k20#49
                                 + 135 pi44_k23#50 + 129 pi15_k14#51
                                 + 57 pi49_k24#52 + 92 pi37_k20#53
                                 + 58 pi50_k24#54 + 99 pi2_k12#55
                                 + 146 pi28_k18#56 + 99 pi3_k12#57
                                 + 42 pi14_k14#58 + 89 pi38_k20#59
                                 + 125 pi45_k23#60 + 49 pi33_k19#61
                                 + 62 pi47_k24#62 + 55 pi18_k15#63
                                 + 42 pi32_k19#64 + 89 pi43_k23#65
                                 + 162 pi25_k17#66 + 84 pi63_k27#67 <= 0
Bounds
 0 <= vnp3#0 <= 1
 0 <= pi0_k11#1 <= 1
 0 <= pi1_k12#2 <= 1
 0 <= pi6_k13#3 <= 1
 0 <= pi11_k14#4 <= 1
 0 <= vnp4#5 <= 1
 0 <= pi16_k15#6 <= 1
 0 <= pi21_k16#7 <= 1
 0 <= pi22_k17#8 <= 1
 0 <= pi26_k18#9 <= 1
 0 <= vnp5#10 <= 1
 0 <= pi31_k19#11 <= 1
 0 <= pi34_k20#12 <= 1
 0 <= pi39_k21#13 <= 1
 0 <= pi40_k22#14 <= 1
 0 <= pi41_k23#15 <= 1
 0 <= pi46_k24#16 <= 1
 0 <= vnp6#17 <= 1
 0 <= pi51_k25#18 <= 1
 0 <= pi55_k26#19 <= 1
 0 <= pi60_k27#20 <= 1
 0 <= pi23_k17#21 <= 1
 0 <= pi53_k25#22 <= 1
 0 <= pi61_k27#23 <= 1
 0 <= pi30_k18#24 <= 1
 0 <= pi4_k12#25 <= 1
 0 <= pi27_k18#26 <= 1
 0 <= pi57_k26#27 <= 1
 0 <= pi62_k27#28 <= 1
 0 <= pi29_k18#29 <= 1
 0 <= pi24_k17#30 <= 1
 0 <= pi52_k25#31 <= 1
 0 <= pi59_k26#32 <= 1
 0 <= pi56_k26#33 <= 1
 0 <= pi17_k15#34 <= 1
 0 <= pi54_k25#35 <= 1
 0 <= pi5_k12#36 <= 1
 0 <= pi13_k14#37 <= 1
 0 <= pi58_k26#38 <= 1
 0 <= pi8_k13#39 <= 1
 0 <= pi12_k14#40 <= 1
 0 <= pi36_k20#41 <= 1
 0 <= pi7_k13#42 <= 1
 0 <= pi10_k13#43 <= 1
 0 <= pi48_k24#44 <= 1
 0 <= pi19_k15#45 <= 1
 0 <= pi42_k23#46 <= 1
 0 <= pi9_k13#47 <= 1
 0 <= pi20_k15#48 <= 1
 0 <= pi35_k20#49 <= 1
 0 <= pi44_k23#50 <= 1
 0 <= pi15_k14#51 <= 1
 0 <= pi49_k24#52 <= 1
 0 <= pi37_k20#53 <= 1
 0 <= pi50_k24#54 <= 1
 0 <= pi2_k12#55 <= 1
 0 <= pi28_k18#56 <= 1
 0 <= pi3_k12#57 <= 1
 0 <= pi14_k14#58 <= 1
 0 <= pi38_k20#59 <= 1
 0 <= pi45_k23#60 <= 1
 0 <= pi33_k19#61 <= 1
 0 <= pi47_k24#62 <= 1
 0 <= pi18_k15#63 <= 1
 0 <= pi32_k19#64 <= 1
 0 <= pi43_k23#65 <= 1
 0 <= pi25_k17#66 <= 1
 0 <= pi63_k27#67 <= 1
Binaries
 vnp3#0  pi0_k11#1  pi1_k12#2  pi6_k13#3  pi11_k14#4  vnp4#5  pi16_k15#6 
 pi21_k16#7  pi22_k17#8  pi26_k18#9  vnp5#10  pi31_k19#11  pi34_k20#12 
 pi39_k21#13  pi40_k22#14  pi41_k23#15  pi46_k24#16  vnp6#17  pi51_k25#18 
 pi55_k26#19  pi60_k27#20  pi23_k17#21  pi53_k25#22  pi61_k27#23  pi30_k18#24 
 pi4_k12#25  pi27_k18#26  pi57_k26#27  pi62_k27#28  pi29_k18#29  pi24_k17#30 
 pi52_k25#31  pi59_k26#32  pi56_k26#33  pi17_k15#34  pi54_k25#35  pi5_k12#36 
 pi13_k14#37  pi58_k26#38  pi8_k13#39  pi12_k14#40  pi36_k20#41  pi7_k13#42 
 pi10_k13#43  pi48_k24#44  pi19_k15#45  pi42_k23#46  pi9_k13#47  pi20_k15#48 
 pi35_k20#49  pi44_k23#50  pi15_k14#51  pi49_k24#52  pi37_k20#53  pi50_k24#54 
 pi2_k12#55  pi28_k18#56  pi3_k12#57  pi14_k14#58  pi38_k20#59  pi45_k23#60 
 pi33_k19#61  pi47_k24#62  pi18_k15#63  pi32_k19#64  pi43_k23#65  pi25_k17#66 
 pi63_k27#67 
End
