\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1020 vnp1#0 - 14 pi0_k1#1 - 48 pi1_k2#2 - 31 pi6_k3#3 - 100 pi11_k4#4
      - 45 pi16_k5#5 - 105 pi21_k6#6 + 1778 vnp4#7 - 132 pi26_k17#8
      - 110 pi31_k18#9 - 177 pi36_k19#10 - 72 pi41_k20#11 - 125 pi42_k21#12
      - 139 pi46_k22#13 + 851 vnp6#14 - 22 pi50_k29#15 - 74 pi54_k30#16
      - 150 pi55_k31#17 - 32 pi59_k32#18 - 66 pi51_k29#19 - 76 pi61_k32#20
      - 174 pi57_k31#21 - 156 pi28_k17#22 - 120 pi35_k18#23 - 44 pi60_k32#24
      - 78 pi62_k32#25 - 68 pi63_k32#26 - 58 pi52_k29#27 - 190 pi23_k6#28
      - 124 pi32_k18#29 - 113 pi37_k19#30 - 195 pi27_k17#31 - 58 pi2_k2#32
      - 47 pi20_k5#33 - 104 pi3_k2#34 - 220 pi22_k6#35 - 213 pi30_k17#36
      - 221 pi39_k19#37 - 60 pi9_k3#38 - 197 pi38_k19#39 - 241 pi44_k21#40
      - 240 pi14_k4#41 - 99 pi17_k5#42 - 50 pi4_k2#43 - 105 pi12_k4#44
      - 81 pi18_k5#45 - 28 pi7_k3#46 - 195 pi15_k4#47 - 130 pi47_k22#48
      - 112 pi5_k2#49 - 235 pi13_k4#50 - 202 pi56_k31#51 - 245 pi24_k6#52
      - 105 pi19_k5#53 - 260 pi25_k6#54 - 58 pi8_k3#55 - 177 pi40_k19#56
      - 233 pi43_k21#57 - 220 pi48_k22#58 - 180 pi29_k17#59 - 55 pi10_k3#60
      - 132 pi33_k18#61 - 221 pi45_k21#62 - 146 pi34_k18#63 - 211 pi49_k22#64
      - 102 pi53_k29#65 - 226 pi58_k31#66
Subject To
 _Embedding_clash_const_of_vlink1_vnp_1#0: vnp1#0 - pi0_k1#1 <= 0
 _Embedding_clash_const_of_vlink2_vnp_1#1: vnp1#0 - pi1_k2#2 <= 0
 _Embedding_clash_const_of_vlink3_vnp_1#2: vnp1#0 - pi6_k3#3 <= 0
 _Embedding_clash_const_of_vlink4_vnp_1#3: vnp1#0 - pi11_k4#4 <= 0
 _Embedding_clash_const_of_vlink5_vnp_1#4: vnp1#0 - pi16_k5#5 <= 0
 _Embedding_clash_const_of_vlink6_vnp_1#5: vnp1#0 - pi21_k6#6 <= 0
 _Embedding_clash_const_of_vlink17_vnp_4#6: vnp4#7 - pi26_k17#8 <= 0
 _Embedding_clash_const_of_vlink18_vnp_4#7: vnp4#7 - pi31_k18#9 <= 0
 _Embedding_clash_const_of_vlink19_vnp_4#8: vnp4#7 - pi36_k19#10 <= 0
 _Embedding_clash_const_of_vlink20_vnp_4#9: vnp4#7 - pi41_k20#11 <= 0
 _Embedding_clash_const_of_vlink21_vnp_4#10: vnp4#7 - pi42_k21#12 <= 0
 _Embedding_clash_const_of_vlink22_vnp_4#11: vnp4#7 - pi46_k22#13 <= 0
 _Embedding_clash_const_of_vlink29_vnp_6#12: vnp6#14 - pi50_k29#15 <= 0
 _Embedding_clash_const_of_vlink30_vnp_6#13: vnp6#14 - pi54_k30#16 <= 0
 _Embedding_clash_const_of_vlink31_vnp_6#14: vnp6#14 - pi55_k31#17 <= 0
 _Embedding_clash_const_of_vlink32_vnp_6#15: vnp6#14 - pi59_k32#18 <= 0
 BW_capacity_of_substrate_link_1#16: 4 pi55_k31#17 + 2 pi51_k29#19
                                 + 2 pi61_k32#20 <= 15
 BW_capacity_of_substrate_link_2#17: 2 pi50_k29#15 + 2 pi59_k32#18
                                 + 4 pi57_k31#21 <= 6
 BW_capacity_of_substrate_link_3#18: 2 pi50_k29#15 + 3 pi28_k17#22
                                 + 2 pi35_k18#23 + 2 pi60_k32#24 <= 8
 BW_capacity_of_substrate_link_4#19: 3 pi26_k17#8 + 2 pi31_k18#9
                                 + 4 pi36_k19#10 <= 15
 BW_capacity_of_substrate_link_5#20: 2 pi51_k29#19 + 2 pi61_k32#20
                                 + 4 pi57_k31#21 + 3 pi28_k17#22 <= 20
 BW_capacity_of_substrate_link_6#21: 2 pi62_k32#25 <= 8
 BW_capacity_of_substrate_link_7#22: 2 pi63_k32#26 <= 20
 BW_capacity_of_substrate_link_8#23: 2 pi59_k32#18 + 2 pi35_k18#23
                                 + 2 pi52_k29#27 <= 9
 BW_capacity_of_substrate_link_9#24: 2 pi62_k32#25 <= 17
 BW_capacity_of_substrate_link_10#25: 3 pi26_k17#8 + 5 pi54_k30#16
                                 + 2 pi60_k32#24 + 2 pi52_k29#27 + 5 pi23_k6#28
                                 + 2 pi32_k18#29 + 4 pi37_k19#30 <= 16
 BW_capacity_of_substrate_link_11#26: 2 pi31_k18#9 + 4 pi36_k19#10
                                 + 5 pi23_k6#28 + 3 pi27_k17#31 <= 2
 BW_capacity_of_substrate_link_15#27: 4 pi55_k31#17 + 3 pi28_k17#22 <= 8
 BW_capacity_of_substrate_link_21#28: 2 pi2_k2#32 <= 11
 BW_capacity_of_substrate_link_22#29: 2 pi2_k2#32 <= 14
 BW_capacity_of_substrate_link_24#30: 5 pi0_k1#1 + 2 pi1_k2#2 + 3 pi26_k17#8
                                 + 4 pi37_k19#30 + 2 pi20_k5#33 <= 18
 BW_capacity_of_substrate_link_25#31: 2 pi3_k2#34 + 5 pi22_k6#35
                                 + 3 pi30_k17#36 + 4 pi39_k19#37 <= 14
 BW_capacity_of_substrate_link_26#32: 5 pi21_k6#6 + 2 pi32_k18#29
                                 + 2 pi20_k5#33 <= 15
 BW_capacity_of_substrate_link_27#33: 3 pi27_k17#31 + 5 pi22_k6#35 + pi9_k3#38
                                 + 4 pi38_k19#39 + 4 pi44_k21#40 <= 16
 BW_capacity_of_substrate_link_28#34: 5 pi14_k4#41 + 2 pi17_k5#42 <= 14
 BW_capacity_of_substrate_link_29#35: 2 pi16_k5#5 + 3 pi26_k17#8
                                 + 4 pi37_k19#30 + 2 pi4_k2#43 + 5 pi12_k4#44
                                 <= 18
 BW_capacity_of_substrate_link_30#36: 2 pi1_k2#2 + 5 pi11_k4#4 + 2 pi18_k5#45
                                 <= 20
 BW_capacity_of_substrate_link_31#37: 2 pi18_k5#45 + pi7_k3#46 + 5 pi15_k4#47
                                 + 3 pi47_k22#48 <= 3
 BW_capacity_of_substrate_link_33#38: 2 pi5_k2#49 + 5 pi13_k4#50
                                 + 4 pi56_k31#51 <= 15
 BW_capacity_of_substrate_link_34#39: 4 pi55_k31#17 + 3 pi28_k17#22
                                 + 2 pi5_k2#49 + 5 pi13_k4#50 <= 16
 BW_capacity_of_substrate_link_35#40: 2 pi1_k2#2 + 5 pi11_k4#4 + pi7_k3#46
                                 + 3 pi47_k22#48 + 4 pi56_k31#51 <= 20
 BW_capacity_of_substrate_link_36#41: pi6_k3#3 + 3 pi26_k17#8 + 5 pi41_k20#11
                                 + 3 pi46_k22#13 + 2 pi3_k2#34 + 5 pi12_k4#44
                                 <= 15
 BW_capacity_of_substrate_link_37#42: 3 pi27_k17#31 + 2 pi3_k2#34 + pi9_k3#38
                                 + 4 pi38_k19#39 + 4 pi44_k21#40 + 5 pi14_k4#41
                                 + 2 pi17_k5#42 + 5 pi24_k6#52 <= 20
 BW_capacity_of_substrate_link_38#43: 2 pi19_k5#53 + 5 pi25_k6#54 <= 13
 BW_capacity_of_substrate_link_39#44: pi8_k3#55 + 4 pi40_k19#56 + 4 pi43_k21#57
                                 + 3 pi48_k22#58 <= 15
 BW_capacity_of_substrate_link_40#45: pi6_k3#3 + 2 pi16_k5#5 + 4 pi36_k19#10
                                 + 4 pi42_k21#12 + 3 pi46_k22#13 + 5 pi24_k6#52
                                 + 3 pi29_k17#59 <= 7
 BW_capacity_of_substrate_link_41#46: 4 pi40_k19#56 + pi10_k3#60
                                 + 2 pi33_k18#61 + 4 pi45_k21#62 <= 11
 BW_capacity_of_substrate_link_42#47: 5 pi21_k6#6 + 2 pi31_k18#9
                                 + 4 pi36_k19#10 + 2 pi20_k5#33 + pi9_k3#38
                                 + 4 pi44_k21#40 + 3 pi29_k17#59 <= 5
 BW_capacity_of_substrate_link_43#48: 2 pi19_k5#53 + 5 pi25_k6#54 + pi8_k3#55
                                 + 4 pi43_k21#57 + 3 pi48_k22#58
                                 + 2 pi33_k18#61 <= 18
 BW_capacity_of_substrate_link_44#49: 2 pi31_k18#9 + 4 pi42_k21#12
                                 + 3 pi46_k22#13 <= 8
 c51#50:                         - 1020 vnp1#0 + 14 pi0_k1#1 + 48 pi1_k2#2
                                 + 31 pi6_k3#3 + 100 pi11_k4#4 + 45 pi16_k5#5
                                 + 105 pi21_k6#6 - 1778 vnp4#7 + 132 pi26_k17#8
                                 + 110 pi31_k18#9 + 177 pi36_k19#10
                                 + 72 pi41_k20#11 + 125 pi42_k21#12
                                 + 139 pi46_k22#13 - 851 vnp6#14
                                 + 22 pi50_k29#15 + 74 pi54_k30#16
                                 + 150 pi55_k31#17 + 32 pi59_k32#18
                                 + 66 pi51_k29#19 + 76 pi61_k32#20
                                 + 174 pi57_k31#21 + 156 pi28_k17#22
                                 + 120 pi35_k18#23 + 44 pi60_k32#24
                                 + 78 pi62_k32#25 + 68 pi63_k32#26
                                 + 58 pi52_k29#27 + 190 pi23_k6#28
                                 + 124 pi32_k18#29 + 113 pi37_k19#30
                                 + 195 pi27_k17#31 + 58 pi2_k2#32
                                 + 47 pi20_k5#33 + 104 pi3_k2#34
                                 + 220 pi22_k6#35 + 213 pi30_k17#36
                                 + 221 pi39_k19#37 + 60 pi9_k3#38
                                 + 197 pi38_k19#39 + 241 pi44_k21#40
                                 + 240 pi14_k4#41 + 99 pi17_k5#42
                                 + 50 pi4_k2#43 + 105 pi12_k4#44
                                 + 81 pi18_k5#45 + 28 pi7_k3#46
                                 + 195 pi15_k4#47 + 130 pi47_k22#48
                                 + 112 pi5_k2#49 + 235 pi13_k4#50
                                 + 202 pi56_k31#51 + 245 pi24_k6#52
                                 + 105 pi19_k5#53 + 260 pi25_k6#54
                                 + 58 pi8_k3#55 + 177 pi40_k19#56
                                 + 233 pi43_k21#57 + 220 pi48_k22#58
                                 + 180 pi29_k17#59 + 55 pi10_k3#60
                                 + 132 pi33_k18#61 + 221 pi45_k21#62
                                 + 146 pi34_k18#63 + 211 pi49_k22#64
                                 + 102 pi53_k29#65 + 226 pi58_k31#66 <= 0
Bounds
 0 <= vnp1#0 <= 1
 0 <= pi0_k1#1 <= 1
 0 <= pi1_k2#2 <= 1
 0 <= pi6_k3#3 <= 1
 0 <= pi11_k4#4 <= 1
 0 <= pi16_k5#5 <= 1
 0 <= pi21_k6#6 <= 1
 0 <= vnp4#7 <= 1
 0 <= pi26_k17#8 <= 1
 0 <= pi31_k18#9 <= 1
 0 <= pi36_k19#10 <= 1
 0 <= pi41_k20#11 <= 1
 0 <= pi42_k21#12 <= 1
 0 <= pi46_k22#13 <= 1
 0 <= vnp6#14 <= 1
 0 <= pi50_k29#15 <= 1
 0 <= pi54_k30#16 <= 1
 0 <= pi55_k31#17 <= 1
 0 <= pi59_k32#18 <= 1
 0 <= pi51_k29#19 <= 1
 0 <= pi61_k32#20 <= 1
 0 <= pi57_k31#21 <= 1
 0 <= pi28_k17#22 <= 1
 0 <= pi35_k18#23 <= 1
 0 <= pi60_k32#24 <= 1
 0 <= pi62_k32#25 <= 1
 0 <= pi63_k32#26 <= 1
 0 <= pi52_k29#27 <= 1
 0 <= pi23_k6#28 <= 1
 0 <= pi32_k18#29 <= 1
 0 <= pi37_k19#30 <= 1
 0 <= pi27_k17#31 <= 1
 0 <= pi2_k2#32 <= 1
 0 <= pi20_k5#33 <= 1
 0 <= pi3_k2#34 <= 1
 0 <= pi22_k6#35 <= 1
 0 <= pi30_k17#36 <= 1
 0 <= pi39_k19#37 <= 1
 0 <= pi9_k3#38 <= 1
 0 <= pi38_k19#39 <= 1
 0 <= pi44_k21#40 <= 1
 0 <= pi14_k4#41 <= 1
 0 <= pi17_k5#42 <= 1
 0 <= pi4_k2#43 <= 1
 0 <= pi12_k4#44 <= 1
 0 <= pi18_k5#45 <= 1
 0 <= pi7_k3#46 <= 1
 0 <= pi15_k4#47 <= 1
 0 <= pi47_k22#48 <= 1
 0 <= pi5_k2#49 <= 1
 0 <= pi13_k4#50 <= 1
 0 <= pi56_k31#51 <= 1
 0 <= pi24_k6#52 <= 1
 0 <= pi19_k5#53 <= 1
 0 <= pi25_k6#54 <= 1
 0 <= pi8_k3#55 <= 1
 0 <= pi40_k19#56 <= 1
 0 <= pi43_k21#57 <= 1
 0 <= pi48_k22#58 <= 1
 0 <= pi29_k17#59 <= 1
 0 <= pi10_k3#60 <= 1
 0 <= pi33_k18#61 <= 1
 0 <= pi45_k21#62 <= 1
 0 <= pi34_k18#63 <= 1
 0 <= pi49_k22#64 <= 1
 0 <= pi53_k29#65 <= 1
 0 <= pi58_k31#66 <= 1
Binaries
 vnp1#0  pi0_k1#1  pi1_k2#2  pi6_k3#3  pi11_k4#4  pi16_k5#5  pi21_k6#6  vnp4#7 
 pi26_k17#8  pi31_k18#9  pi36_k19#10  pi41_k20#11  pi42_k21#12  pi46_k22#13 
 vnp6#14  pi50_k29#15  pi54_k30#16  pi55_k31#17  pi59_k32#18  pi51_k29#19 
 pi61_k32#20  pi57_k31#21  pi28_k17#22  pi35_k18#23  pi60_k32#24  pi62_k32#25 
 pi63_k32#26  pi52_k29#27  pi23_k6#28  pi32_k18#29  pi37_k19#30  pi27_k17#31 
 pi2_k2#32  pi20_k5#33  pi3_k2#34  pi22_k6#35  pi30_k17#36  pi39_k19#37 
 pi9_k3#38  pi38_k19#39  pi44_k21#40  pi14_k4#41  pi17_k5#42  pi4_k2#43 
 pi12_k4#44  pi18_k5#45  pi7_k3#46  pi15_k4#47  pi47_k22#48  pi5_k2#49 
 pi13_k4#50  pi56_k31#51  pi24_k6#52  pi19_k5#53  pi25_k6#54  pi8_k3#55 
 pi40_k19#56  pi43_k21#57  pi48_k22#58  pi29_k17#59  pi10_k3#60  pi33_k18#61 
 pi45_k21#62  pi34_k18#63  pi49_k22#64  pi53_k29#65  pi58_k31#66 
End
