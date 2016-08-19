\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 675 vnp1#0 - 128 pi0_k1#1 - 44 pi5_k2#2 - 163 pi10_k3#3 + 724 vnp2#4
      - 57 pi15_k4#5 - 82 pi20_k5#6 - 34 pi21_k6#7 - 120 pi22_k7#8 + 989 vnp4#9
      - 48 pi26_k12#10 - 68 pi31_k13#11 - 38 pi32_k14#12 - 34 pi37_k15#13
      - 46 pi38_k16#14 - 28 pi39_k17#15 + 1213 vnp5#16 - 99 pi40_k18#17
      - 158 pi45_k19#18 - 28 pi50_k20#19 - 37 pi51_k21#20 - 36 pi56_k22#21
      - 17 pi61_k23#22 + 495 vnp8#23 - 33 pi62_k32#24 - 24 pi63_k33#25
      - 31 pi64_k34#26 - 25 pi65_k35#27 - 63 pi16_k4#28 - 192 pi23_k7#29
      - 190 pi13_k3#30 - 38 pi33_k14#31 - 178 pi12_k3#32 - 152 pi4_k1#33
      - 46 pi36_k14#34 - 62 pi28_k12#35 - 222 pi49_k19#36 - 64 pi35_k14#37
      - 274 pi43_k18#38 - 108 pi1_k1#39 - 59 pi17_k4#40 - 128 pi25_k7#41
      - 139 pi11_k3#42 - 172 pi2_k1#43 - 164 pi41_k18#44 - 46 pi18_k4#45
      - 199 pi6_k2#46 - 51 pi19_k4#47 - 249 pi44_k18#48 - 130 pi55_k21#49
      - 179 pi9_k2#50 - 157 pi52_k21#51 - 214 pi42_k18#52 - 162 pi47_k19#53
      - 214 pi48_k19#54 - 62 pi27_k12#55 - 52 pi34_k14#56 - 151 pi53_k21#57
      - 62 pi30_k12#58 - 190 pi54_k21#59 - 60 pi29_k12#60 - 123 pi57_k22#61
      - 134 pi7_k2#62 - 168 pi3_k1#63 - 244 pi24_k7#64 - 142 pi14_k3#65
      - 162 pi46_k19#66 - 132 pi59_k22#67 - 72 pi58_k22#68 - 109 pi8_k2#69
      - 75 pi60_k22#70
Subject To
 _Embedding_clash_const_of_vlink1_vnp_1#0: vnp1#0 - pi0_k1#1 <= 0
 _Embedding_clash_const_of_vlink2_vnp_1#1: vnp1#0 - pi5_k2#2 <= 0
 _Embedding_clash_const_of_vlink3_vnp_1#2: vnp1#0 - pi10_k3#3 <= 0
 _Embedding_clash_const_of_vlink4_vnp_2#3: vnp2#4 - pi15_k4#5 <= 0
 _Embedding_clash_const_of_vlink5_vnp_2#4: vnp2#4 - pi20_k5#6 <= 0
 _Embedding_clash_const_of_vlink6_vnp_2#5: vnp2#4 - pi21_k6#7 <= 0
 _Embedding_clash_const_of_vlink7_vnp_2#6: vnp2#4 - pi22_k7#8 <= 0
 _Embedding_clash_const_of_vlink12_vnp_4#7: vnp4#9 - pi26_k12#10 <= 0
 _Embedding_clash_const_of_vlink13_vnp_4#8: vnp4#9 - pi31_k13#11 <= 0
 _Embedding_clash_const_of_vlink14_vnp_4#9: vnp4#9 - pi32_k14#12 <= 0
 _Embedding_clash_const_of_vlink15_vnp_4#10: vnp4#9 - pi37_k15#13 <= 0
 _Embedding_clash_const_of_vlink16_vnp_4#11: vnp4#9 - pi38_k16#14 <= 0
 _Embedding_clash_const_of_vlink17_vnp_4#12: vnp4#9 - pi39_k17#15 <= 0
 _Embedding_clash_const_of_vlink18_vnp_5#13: vnp5#16 - pi40_k18#17 <= 0
 _Embedding_clash_const_of_vlink19_vnp_5#14: vnp5#16 - pi45_k19#18 <= 0
 _Embedding_clash_const_of_vlink20_vnp_5#15: vnp5#16 - pi50_k20#19 <= 0
 _Embedding_clash_const_of_vlink21_vnp_5#16: vnp5#16 - pi51_k21#20 <= 0
 _Embedding_clash_const_of_vlink22_vnp_5#17: vnp5#16 - pi56_k22#21 <= 0
 _Embedding_clash_const_of_vlink23_vnp_5#18: vnp5#16 - pi61_k23#22 <= 0
 _Embedding_clash_const_of_vlink32_vnp_8#19: vnp8#23 - pi62_k32#24 <= 0
 _Embedding_clash_const_of_vlink33_vnp_8#20: vnp8#23 - pi63_k33#25 <= 0
 _Embedding_clash_const_of_vlink34_vnp_8#21: vnp8#23 - pi64_k34#26 <= 0
 _Embedding_clash_const_of_vlink35_vnp_8#22: vnp8#23 - pi65_k35#27 <= 0
 BW_capacity_of_substrate_link_1#23: pi15_k4#5 + 4 pi22_k7#8 <= 20
 BW_capacity_of_substrate_link_2#24: pi16_k4#28 + 4 pi23_k7#29 <= 13
 BW_capacity_of_substrate_link_3#25: 4 pi65_k35#27 + 3 pi13_k3#30 + pi33_k14#31
                                 <= 20
 BW_capacity_of_substrate_link_5#26: 4 pi23_k7#29 + 3 pi12_k3#32 <= 20
 BW_capacity_of_substrate_link_6#27: 3 pi10_k3#3 + 4 pi4_k1#33 <= 20
 BW_capacity_of_substrate_link_7#28: pi63_k33#25 + pi16_k4#28 + pi36_k14#34
                                 <= 18
 BW_capacity_of_substrate_link_8#29: 5 pi64_k34#26 + pi33_k14#31 + 3 pi12_k3#32
                                 <= 10
 BW_capacity_of_substrate_link_9#30: 3 pi10_k3#3 + pi28_k12#35 + 4 pi49_k19#36
                                 <= 19
 BW_capacity_of_substrate_link_10#31: pi32_k14#12 + 3 pi39_k17#15
                                 + 4 pi62_k32#24 <= 18
 BW_capacity_of_substrate_link_11#32: 2 pi38_k16#14 + 3 pi13_k3#30
                                 + pi35_k14#37 <= 15
 BW_capacity_of_substrate_link_12#33: pi16_k4#28 + pi36_k14#34 + pi28_k12#35
                                 + 5 pi43_k18#38 <= 20
 BW_capacity_of_substrate_link_13#34: 4 pi4_k1#33 + 4 pi49_k19#36
                                 + 5 pi43_k18#38 <= 20
 BW_capacity_of_substrate_link_14#35: 4 pi1_k1#39 + pi17_k4#40 + 4 pi25_k7#41
                                 <= 20
 BW_capacity_of_substrate_link_15#36: 4 pi0_k1#1 + pi15_k4#5 + 4 pi22_k7#8
                                 + 3 pi11_k3#42 <= 20
 BW_capacity_of_substrate_link_16#37: 4 pi45_k19#18 + pi17_k4#40 + 4 pi25_k7#41
                                 + 4 pi2_k1#43 + 5 pi41_k18#44 <= 11
 BW_capacity_of_substrate_link_17#38: 5 pi40_k18#17 + pi50_k20#19 + 4 pi1_k1#39
                                 + pi18_k4#45 <= 20
 BW_capacity_of_substrate_link_18#39: 4 pi0_k1#1 + 5 pi6_k2#46 + pi19_k4#47
                                 + 5 pi44_k18#48 + 3 pi55_k21#49 <= 20
 BW_capacity_of_substrate_link_19#40: 5 pi9_k2#50 + 3 pi52_k21#51 <= 19
 BW_capacity_of_substrate_link_20#41: 5 pi42_k18#52 + 4 pi47_k19#53 <= 13
 BW_capacity_of_substrate_link_21#42: pi16_k4#28 + 5 pi42_k18#52 <= 18
 BW_capacity_of_substrate_link_22#43: pi26_k12#10 + pi32_k14#12 + pi37_k15#13
                                 + 3 pi52_k21#51 + 4 pi48_k19#54 <= 15
 BW_capacity_of_substrate_link_23#44: 5 pi9_k2#50 + 4 pi47_k19#53 + pi27_k12#55
                                 + pi34_k14#56 + 3 pi53_k21#57 <= 17
 BW_capacity_of_substrate_link_24#45: pi27_k12#55 + pi34_k14#56 <= 8
 BW_capacity_of_substrate_link_25#46: 3 pi52_k21#51 + 4 pi48_k19#54
                                 + pi30_k12#58 <= 17
 BW_capacity_of_substrate_link_26#47: 3 pi10_k3#3 + pi26_k12#10 + 4 pi31_k13#11
                                 + pi35_k14#37 + 3 pi54_k21#59 <= 15
 BW_capacity_of_substrate_link_27#48: pi29_k12#60 <= 20
 BW_capacity_of_substrate_link_28#49: 3 pi53_k21#57 + pi29_k12#60
                                 + 3 pi57_k22#61 <= 20
 BW_capacity_of_substrate_link_29#50: 4 pi47_k19#53 + 5 pi7_k2#62 <= 12
 BW_capacity_of_substrate_link_30#51: 3 pi57_k22#61 + 5 pi7_k2#62 <= 17
 BW_capacity_of_substrate_link_31#52: 5 pi5_k2#2 + 4 pi45_k19#18
                                 + 3 pi51_k21#20 + 3 pi56_k22#21 + 3 pi11_k3#42
                                 <= 10
 BW_capacity_of_substrate_link_32#53: 5 pi5_k2#2 + 5 pi40_k18#17
                                 + 3 pi51_k21#20 + 2 pi61_k23#22 + pi18_k4#45
                                 + 4 pi3_k1#63 <= 14
 BW_capacity_of_substrate_link_33#54: pi15_k4#5 + pi21_k6#7 + 4 pi45_k19#18
                                 + 3 pi11_k3#42 + 5 pi41_k18#44 + 4 pi3_k1#63
                                 + 4 pi24_k7#64 <= 15
 BW_capacity_of_substrate_link_34#55: 4 pi22_k7#8 + 5 pi6_k2#46 + 3 pi55_k21#49
                                 + 3 pi14_k3#65 + 4 pi46_k19#66 <= 20
 BW_capacity_of_substrate_link_35#56: 4 pi20_k5#6 + 4 pi24_k7#64
                                 + 3 pi59_k22#67 <= 20
 BW_capacity_of_substrate_link_36#57: 5 pi6_k2#46 + 3 pi55_k21#49
                                 + 3 pi14_k3#65 + 4 pi46_k19#66 + 3 pi59_k22#67
                                 <= 16
 BW_capacity_of_substrate_link_37#58: 3 pi58_k22#68 <= 20
 BW_capacity_of_substrate_link_38#59: 3 pi52_k21#51 + 4 pi48_k19#54
                                 + 3 pi57_k22#61 <= 17
 BW_capacity_of_substrate_link_39#60: 4 pi45_k19#18 + 3 pi51_k21#20
                                 + 3 pi56_k22#21 + 5 pi8_k2#69 <= 20
 BW_capacity_of_substrate_link_40#61: 5 pi5_k2#2 + 3 pi11_k3#42 + 3 pi60_k22#70
                                 <= 13
 BW_capacity_of_substrate_link_41#62: 3 pi54_k21#59 <= 18
 BW_capacity_of_substrate_link_42#63: 3 pi10_k3#3 <= 12
 BW_capacity_of_substrate_link_43#64: 5 pi8_k2#69 + 3 pi60_k22#70 <= 20
 c66#65:                         - 675 vnp1#0 + 128 pi0_k1#1 + 44 pi5_k2#2
                                 + 163 pi10_k3#3 - 724 vnp2#4 + 57 pi15_k4#5
                                 + 82 pi20_k5#6 + 34 pi21_k6#7 + 120 pi22_k7#8
                                 - 989 vnp4#9 + 48 pi26_k12#10 + 68 pi31_k13#11
                                 + 38 pi32_k14#12 + 34 pi37_k15#13
                                 + 46 pi38_k16#14 + 28 pi39_k17#15
                                 - 1213 vnp5#16 + 99 pi40_k18#17
                                 + 158 pi45_k19#18 + 28 pi50_k20#19
                                 + 37 pi51_k21#20 + 36 pi56_k22#21
                                 + 17 pi61_k23#22 - 495 vnp8#23
                                 + 33 pi62_k32#24 + 24 pi63_k33#25
                                 + 31 pi64_k34#26 + 25 pi65_k35#27
                                 + 63 pi16_k4#28 + 192 pi23_k7#29
                                 + 190 pi13_k3#30 + 38 pi33_k14#31
                                 + 178 pi12_k3#32 + 152 pi4_k1#33
                                 + 46 pi36_k14#34 + 62 pi28_k12#35
                                 + 222 pi49_k19#36 + 64 pi35_k14#37
                                 + 274 pi43_k18#38 + 108 pi1_k1#39
                                 + 59 pi17_k4#40 + 128 pi25_k7#41
                                 + 139 pi11_k3#42 + 172 pi2_k1#43
                                 + 164 pi41_k18#44 + 46 pi18_k4#45
                                 + 199 pi6_k2#46 + 51 pi19_k4#47
                                 + 249 pi44_k18#48 + 130 pi55_k21#49
                                 + 179 pi9_k2#50 + 157 pi52_k21#51
                                 + 214 pi42_k18#52 + 162 pi47_k19#53
                                 + 214 pi48_k19#54 + 62 pi27_k12#55
                                 + 52 pi34_k14#56 + 151 pi53_k21#57
                                 + 62 pi30_k12#58 + 190 pi54_k21#59
                                 + 60 pi29_k12#60 + 123 pi57_k22#61
                                 + 134 pi7_k2#62 + 168 pi3_k1#63
                                 + 244 pi24_k7#64 + 142 pi14_k3#65
                                 + 162 pi46_k19#66 + 132 pi59_k22#67
                                 + 72 pi58_k22#68 + 109 pi8_k2#69
                                 + 75 pi60_k22#70 <= 0
Bounds
 0 <= vnp1#0 <= 1
 0 <= pi0_k1#1 <= 1
 0 <= pi5_k2#2 <= 1
 0 <= pi10_k3#3 <= 1
 0 <= vnp2#4 <= 1
 0 <= pi15_k4#5 <= 1
 0 <= pi20_k5#6 <= 1
 0 <= pi21_k6#7 <= 1
 0 <= pi22_k7#8 <= 1
 0 <= vnp4#9 <= 1
 0 <= pi26_k12#10 <= 1
 0 <= pi31_k13#11 <= 1
 0 <= pi32_k14#12 <= 1
 0 <= pi37_k15#13 <= 1
 0 <= pi38_k16#14 <= 1
 0 <= pi39_k17#15 <= 1
 0 <= vnp5#16 <= 1
 0 <= pi40_k18#17 <= 1
 0 <= pi45_k19#18 <= 1
 0 <= pi50_k20#19 <= 1
 0 <= pi51_k21#20 <= 1
 0 <= pi56_k22#21 <= 1
 0 <= pi61_k23#22 <= 1
 0 <= vnp8#23 <= 1
 0 <= pi62_k32#24 <= 1
 0 <= pi63_k33#25 <= 1
 0 <= pi64_k34#26 <= 1
 0 <= pi65_k35#27 <= 1
 0 <= pi16_k4#28 <= 1
 0 <= pi23_k7#29 <= 1
 0 <= pi13_k3#30 <= 1
 0 <= pi33_k14#31 <= 1
 0 <= pi12_k3#32 <= 1
 0 <= pi4_k1#33 <= 1
 0 <= pi36_k14#34 <= 1
 0 <= pi28_k12#35 <= 1
 0 <= pi49_k19#36 <= 1
 0 <= pi35_k14#37 <= 1
 0 <= pi43_k18#38 <= 1
 0 <= pi1_k1#39 <= 1
 0 <= pi17_k4#40 <= 1
 0 <= pi25_k7#41 <= 1
 0 <= pi11_k3#42 <= 1
 0 <= pi2_k1#43 <= 1
 0 <= pi41_k18#44 <= 1
 0 <= pi18_k4#45 <= 1
 0 <= pi6_k2#46 <= 1
 0 <= pi19_k4#47 <= 1
 0 <= pi44_k18#48 <= 1
 0 <= pi55_k21#49 <= 1
 0 <= pi9_k2#50 <= 1
 0 <= pi52_k21#51 <= 1
 0 <= pi42_k18#52 <= 1
 0 <= pi47_k19#53 <= 1
 0 <= pi48_k19#54 <= 1
 0 <= pi27_k12#55 <= 1
 0 <= pi34_k14#56 <= 1
 0 <= pi53_k21#57 <= 1
 0 <= pi30_k12#58 <= 1
 0 <= pi54_k21#59 <= 1
 0 <= pi29_k12#60 <= 1
 0 <= pi57_k22#61 <= 1
 0 <= pi7_k2#62 <= 1
 0 <= pi3_k1#63 <= 1
 0 <= pi24_k7#64 <= 1
 0 <= pi14_k3#65 <= 1
 0 <= pi46_k19#66 <= 1
 0 <= pi59_k22#67 <= 1
 0 <= pi58_k22#68 <= 1
 0 <= pi8_k2#69 <= 1
 0 <= pi60_k22#70 <= 1
Binaries
 vnp1#0  pi0_k1#1  pi5_k2#2  pi10_k3#3  vnp2#4  pi15_k4#5  pi20_k5#6 
 pi21_k6#7  pi22_k7#8  vnp4#9  pi26_k12#10  pi31_k13#11  pi32_k14#12 
 pi37_k15#13  pi38_k16#14  pi39_k17#15  vnp5#16  pi40_k18#17  pi45_k19#18 
 pi50_k20#19  pi51_k21#20  pi56_k22#21  pi61_k23#22  vnp8#23  pi62_k32#24 
 pi63_k33#25  pi64_k34#26  pi65_k35#27  pi16_k4#28  pi23_k7#29  pi13_k3#30 
 pi33_k14#31  pi12_k3#32  pi4_k1#33  pi36_k14#34  pi28_k12#35  pi49_k19#36 
 pi35_k14#37  pi43_k18#38  pi1_k1#39  pi17_k4#40  pi25_k7#41  pi11_k3#42 
 pi2_k1#43  pi41_k18#44  pi18_k4#45  pi6_k2#46  pi19_k4#47  pi44_k18#48 
 pi55_k21#49  pi9_k2#50  pi52_k21#51  pi42_k18#52  pi47_k19#53  pi48_k19#54 
 pi27_k12#55  pi34_k14#56  pi53_k21#57  pi30_k12#58  pi54_k21#59  pi29_k12#60 
 pi57_k22#61  pi7_k2#62  pi3_k1#63  pi24_k7#64  pi14_k3#65  pi46_k19#66 
 pi59_k22#67  pi58_k22#68  pi8_k2#69  pi60_k22#70 
End
