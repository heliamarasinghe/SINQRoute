\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 803 vnp1#0 - 39 pi0_k1#1 - 52 pi1_k2#2 - 49 pi2_k3#3 + 1342 vnp2#4
      - 120 pi3_k4#5 - 39 pi4_k5#6 - 154 pi5_k6#7 - 61 pi9_k7#8 + 1354 vnp3#9
      - 106 pi13_k8#10 - 71 pi17_k9#11 - 188 pi21_k10#12 + 1803 vnp4#13
      - 36 pi25_k11#14 - 169 pi29_k12#15 - 219 pi33_k13#16 - 71 pi37_k14#17
      - 23 pi41_k15#18 - 42 pi45_k16#19 + 1359 vnp5#20 - 135 pi49_k17#21
      - 32 pi53_k18#22 - 50 pi57_k19#23 - 147 pi61_k20#24 - 23 pi65_k21#25
      - 209 pi31_k12#26 - 95 pi19_k9#27 - 62 pi47_k16#28 - 186 pi51_k17#29
      - 378 pi24_k10#30 - 76 pi59_k19#31 - 124 pi30_k12#32 - 137 pi40_k14#33
      - 183 pi23_k10#34 - 150 pi52_k17#35 - 203 pi22_k10#36 - 64 pi58_k19#37
      - 145 pi10_k7#38 - 129 pi32_k12#39 - 120 pi62_k20#40 - 116 pi26_k11#41
      - 55 pi48_k16#42 - 109 pi12_k7#43 - 74 pi60_k19#44 - 123 pi18_k9#45
      - 149 pi38_k14#46 - 224 pi34_k13#47 - 136 pi11_k7#48 - 81 pi20_k9#49
      - 70 pi55_k18#50 - 79 pi6_k6#51 - 142 pi7_k6#52 - 53 pi54_k18#53
      - 84 pi64_k20#54 - 135 pi50_k17#55 - 144 pi27_k11#56 - 254 pi35_k13#57
      - 120 pi63_k20#58 - 106 pi15_k8#59 - 53 pi56_k18#60 - 44 pi43_k15#61
      - 116 pi39_k14#62 - 124 pi8_k6#63 - 174 pi36_k13#64 - 126 pi14_k8#65
      - 50 pi42_k15#66 - 166 pi16_k8#67 - 44 pi44_k15#68 - 31 pi46_k16#69
      - 100 pi28_k11#70
Subject To
 _Embedding_clash_const_of_vlink1_vnp_1#0: vnp1#0 - pi0_k1#1 <= 0
 _Embedding_clash_const_of_vlink2_vnp_1#1: vnp1#0 - pi1_k2#2 <= 0
 _Embedding_clash_const_of_vlink3_vnp_1#2: vnp1#0 - pi2_k3#3 <= 0
 _Embedding_clash_const_of_vlink4_vnp_2#3: vnp2#4 - pi3_k4#5 <= 0
 _Embedding_clash_const_of_vlink5_vnp_2#4: vnp2#4 - pi4_k5#6 <= 0
 _Embedding_clash_const_of_vlink6_vnp_2#5: vnp2#4 - pi5_k6#7 <= 0
 _Embedding_clash_const_of_vlink7_vnp_2#6: vnp2#4 - pi9_k7#8 <= 0
 _Embedding_clash_const_of_vlink8_vnp_3#7: vnp3#9 - pi13_k8#10 <= 0
 _Embedding_clash_const_of_vlink9_vnp_3#8: vnp3#9 - pi17_k9#11 <= 0
 _Embedding_clash_const_of_vlink10_vnp_3#9: vnp3#9 - pi21_k10#12 <= 0
 _Embedding_clash_const_of_vlink11_vnp_4#10: vnp4#13 - pi25_k11#14 <= 0
 _Embedding_clash_const_of_vlink12_vnp_4#11: vnp4#13 - pi29_k12#15 <= 0
 _Embedding_clash_const_of_vlink13_vnp_4#12: vnp4#13 - pi33_k13#16 <= 0
 _Embedding_clash_const_of_vlink14_vnp_4#13: vnp4#13 - pi37_k14#17 <= 0
 _Embedding_clash_const_of_vlink15_vnp_4#14: vnp4#13 - pi41_k15#18 <= 0
 _Embedding_clash_const_of_vlink16_vnp_4#15: vnp4#13 - pi45_k16#19 <= 0
 _Embedding_clash_const_of_vlink17_vnp_5#16: vnp5#20 - pi49_k17#21 <= 0
 _Embedding_clash_const_of_vlink18_vnp_5#17: vnp5#20 - pi53_k18#22 <= 0
 _Embedding_clash_const_of_vlink19_vnp_5#18: vnp5#20 - pi57_k19#23 <= 0
 _Embedding_clash_const_of_vlink20_vnp_5#19: vnp5#20 - pi61_k20#24 <= 0
 _Embedding_clash_const_of_vlink21_vnp_5#20: vnp5#20 - pi65_k21#25 <= 0
 BW_capacity_of_substrate_link_1#21: 2 pi17_k9#11 + 5 pi31_k12#26 <= 20
 BW_capacity_of_substrate_link_2#22: 5 pi21_k10#12 + 5 pi31_k12#26
                                 + 2 pi19_k9#27 <= 20
 BW_capacity_of_substrate_link_3#23: 5 pi21_k10#12 + 5 pi29_k12#15
                                 + pi47_k16#28 + 3 pi51_k17#29 <= 20
 BW_capacity_of_substrate_link_4#24: 5 pi24_k10#30 <= 20
 BW_capacity_of_substrate_link_5#25: 5 pi29_k12#15 + 5 pi33_k13#16
                                 + 2 pi19_k9#27 + pi47_k16#28 + 2 pi59_k19#31
                                 <= 20
 BW_capacity_of_substrate_link_6#26: 2 pi59_k19#31 + 5 pi30_k12#32
                                 + 3 pi40_k14#33 <= 17
 BW_capacity_of_substrate_link_7#27: 2 pi57_k19#23 + 5 pi65_k21#25
                                 + 5 pi30_k12#32 + 5 pi23_k10#34
                                 + 3 pi52_k17#35 <= 20
 BW_capacity_of_substrate_link_8#28: 5 pi33_k13#16 + 3 pi49_k17#21
                                 + 5 pi22_k10#36 + 2 pi58_k19#37 <= 20
 BW_capacity_of_substrate_link_9#29: 5 pi23_k10#34 + 3 pi10_k7#38
                                 + 5 pi32_k12#39 + 3 pi62_k20#40 <= 20
 BW_capacity_of_substrate_link_10#30: 3 pi51_k17#29 + 5 pi32_k12#39
                                 + 4 pi26_k11#41 + pi48_k16#42 <= 20
 BW_capacity_of_substrate_link_11#31: 5 pi21_k10#12 + 4 pi25_k11#14
                                 + pi45_k16#19 <= 20
 BW_capacity_of_substrate_link_12#32: 2 pi57_k19#23 + 3 pi61_k20#24
                                 + 3 pi40_k14#33 + 3 pi52_k17#35 + 3 pi12_k7#43
                                 <= 15
 BW_capacity_of_substrate_link_13#33: 3 pi10_k7#38 + 2 pi60_k19#44 <= 20
 BW_capacity_of_substrate_link_14#34: 2 pi18_k9#45 + 3 pi38_k14#46 <= 20
 BW_capacity_of_substrate_link_15#35: 2 pi17_k9#11 + 3 pi37_k14#17
                                 + pi47_k16#28 + 5 pi34_k13#47 <= 17
 BW_capacity_of_substrate_link_16#36: 3 pi5_k6#7 + 2 pi18_k9#45 + 3 pi38_k14#46
                                 + 3 pi11_k7#48 <= 20
 BW_capacity_of_substrate_link_17#37: 5 pi24_k10#30 <= 20
 BW_capacity_of_substrate_link_18#38: 2 pi20_k9#49 <= 17
 BW_capacity_of_substrate_link_19#39: pi55_k18#50 <= 17
 BW_capacity_of_substrate_link_20#40: 3 pi9_k7#8 + 2 pi60_k19#44 + 3 pi6_k6#51
                                 <= 20
 BW_capacity_of_substrate_link_21#41: 3 pi61_k20#24 + 3 pi40_k14#33
                                 + 3 pi52_k17#35 + pi48_k16#42 + 3 pi7_k6#52
                                 + pi54_k18#53 <= 18
 BW_capacity_of_substrate_link_22#42: 2 pi58_k19#37 + pi48_k16#42 <= 20
 BW_capacity_of_substrate_link_23#43: 3 pi9_k7#8 + pi53_k18#22 + 3 pi6_k6#51
                                 + 3 pi64_k20#54 <= 17
 BW_capacity_of_substrate_link_24#44: 3 pi10_k7#38 + 3 pi62_k20#40
                                 + 3 pi50_k17#55 <= 20
 BW_capacity_of_substrate_link_25#45: 3 pi49_k17#21 + 4 pi27_k11#56
                                 + 5 pi35_k13#57 + 3 pi63_k20#58 <= 20
 BW_capacity_of_substrate_link_26#46: 5 pi33_k13#16 + 5 pi22_k10#36
                                 + 4 pi26_k11#41 <= 20
 BW_capacity_of_substrate_link_27#47: pi45_k16#19 <= 19
 BW_capacity_of_substrate_link_28#48: 5 pi3_k4#5 <= 19
 BW_capacity_of_substrate_link_29#49: 4 pi2_k3#3 + 2 pi4_k5#6 + pi53_k18#22
                                 + 3 pi62_k20#40 + 3 pi6_k6#51 + 3 pi50_k17#55
                                 + 4 pi15_k8#59 <= 20
 BW_capacity_of_substrate_link_30#50: 5 pi1_k2#2 + 3 pi11_k7#48 + 4 pi15_k8#59
                                 + pi56_k18#60 <= 19
 BW_capacity_of_substrate_link_31#51: 2 pi0_k1#1 + 3 pi5_k6#7 + 4 pi13_k8#10
                                 + 3 pi61_k20#24 + 3 pi52_k17#35
                                 + 5 pi34_k13#47 + pi54_k18#53 + pi43_k15#61
                                 <= 20
 BW_capacity_of_substrate_link_32#52: 2 pi20_k9#49 + pi55_k18#50 <= 20
 BW_capacity_of_substrate_link_33#53: 3 pi5_k6#7 + 2 pi17_k9#11 + 5 pi34_k13#47
                                 + 3 pi11_k7#48 + 3 pi39_k14#62 <= 17
 BW_capacity_of_substrate_link_34#54: 3 pi37_k14#17 + pi47_k16#28 + 3 pi8_k6#63
                                 + 5 pi36_k13#64 <= 16
 BW_capacity_of_substrate_link_35#55: pi48_k16#42 + pi43_k15#61 + 3 pi39_k14#62
                                 + 4 pi14_k8#65 <= 20
 BW_capacity_of_substrate_link_36#56: pi41_k15#18 + pi45_k16#19 + 3 pi8_k6#63
                                 + 5 pi36_k13#64 + 4 pi14_k8#65 <= 16
 BW_capacity_of_substrate_link_37#57: pi45_k16#19 + 3 pi49_k17#21
                                 + 3 pi63_k20#58 + pi42_k15#66 <= 20
 BW_capacity_of_substrate_link_38#58: 4 pi27_k11#56 + 5 pi35_k13#57
                                 + pi42_k15#66 <= 20
 BW_capacity_of_substrate_link_39#59: pi41_k15#18 + 5 pi34_k13#47
                                 + 4 pi16_k8#67 <= 20
 BW_capacity_of_substrate_link_40#60: 4 pi13_k8#10 + pi44_k15#68 + pi46_k16#69
                                 <= 16
 BW_capacity_of_substrate_link_41#61: 4 pi25_k11#14 + 5 pi33_k13#16 <= 20
 BW_capacity_of_substrate_link_42#62: 5 pi21_k10#12 + pi46_k16#69
                                 + 4 pi28_k11#70 <= 20
 BW_capacity_of_substrate_link_43#63: 4 pi16_k8#67 + pi44_k15#68
                                 + 4 pi28_k11#70 <= 20
 BW_capacity_of_substrate_link_44#64: 5 pi24_k10#30 <= 20
 c66#65:                         - 803 vnp1#0 + 39 pi0_k1#1 + 52 pi1_k2#2
                                 + 49 pi2_k3#3 - 1342 vnp2#4 + 120 pi3_k4#5
                                 + 39 pi4_k5#6 + 154 pi5_k6#7 + 61 pi9_k7#8
                                 - 1354 vnp3#9 + 106 pi13_k8#10 + 71 pi17_k9#11
                                 + 188 pi21_k10#12 - 1803 vnp4#13
                                 + 36 pi25_k11#14 + 169 pi29_k12#15
                                 + 219 pi33_k13#16 + 71 pi37_k14#17
                                 + 23 pi41_k15#18 + 42 pi45_k16#19
                                 - 1359 vnp5#20 + 135 pi49_k17#21
                                 + 32 pi53_k18#22 + 50 pi57_k19#23
                                 + 147 pi61_k20#24 + 23 pi65_k21#25
                                 + 209 pi31_k12#26 + 95 pi19_k9#27
                                 + 62 pi47_k16#28 + 186 pi51_k17#29
                                 + 378 pi24_k10#30 + 76 pi59_k19#31
                                 + 124 pi30_k12#32 + 137 pi40_k14#33
                                 + 183 pi23_k10#34 + 150 pi52_k17#35
                                 + 203 pi22_k10#36 + 64 pi58_k19#37
                                 + 145 pi10_k7#38 + 129 pi32_k12#39
                                 + 120 pi62_k20#40 + 116 pi26_k11#41
                                 + 55 pi48_k16#42 + 109 pi12_k7#43
                                 + 74 pi60_k19#44 + 123 pi18_k9#45
                                 + 149 pi38_k14#46 + 224 pi34_k13#47
                                 + 136 pi11_k7#48 + 81 pi20_k9#49
                                 + 70 pi55_k18#50 + 79 pi6_k6#51
                                 + 142 pi7_k6#52 + 53 pi54_k18#53
                                 + 84 pi64_k20#54 + 135 pi50_k17#55
                                 + 144 pi27_k11#56 + 254 pi35_k13#57
                                 + 120 pi63_k20#58 + 106 pi15_k8#59
                                 + 53 pi56_k18#60 + 44 pi43_k15#61
                                 + 116 pi39_k14#62 + 124 pi8_k6#63
                                 + 174 pi36_k13#64 + 126 pi14_k8#65
                                 + 50 pi42_k15#66 + 166 pi16_k8#67
                                 + 44 pi44_k15#68 + 31 pi46_k16#69
                                 + 100 pi28_k11#70 <= 0
Bounds
 0 <= vnp1#0 <= 1
 0 <= pi0_k1#1 <= 1
 0 <= pi1_k2#2 <= 1
 0 <= pi2_k3#3 <= 1
 0 <= vnp2#4 <= 1
 0 <= pi3_k4#5 <= 1
 0 <= pi4_k5#6 <= 1
 0 <= pi5_k6#7 <= 1
 0 <= pi9_k7#8 <= 1
 0 <= vnp3#9 <= 1
 0 <= pi13_k8#10 <= 1
 0 <= pi17_k9#11 <= 1
 0 <= pi21_k10#12 <= 1
 0 <= vnp4#13 <= 1
 0 <= pi25_k11#14 <= 1
 0 <= pi29_k12#15 <= 1
 0 <= pi33_k13#16 <= 1
 0 <= pi37_k14#17 <= 1
 0 <= pi41_k15#18 <= 1
 0 <= pi45_k16#19 <= 1
 0 <= vnp5#20 <= 1
 0 <= pi49_k17#21 <= 1
 0 <= pi53_k18#22 <= 1
 0 <= pi57_k19#23 <= 1
 0 <= pi61_k20#24 <= 1
 0 <= pi65_k21#25 <= 1
 0 <= pi31_k12#26 <= 1
 0 <= pi19_k9#27 <= 1
 0 <= pi47_k16#28 <= 1
 0 <= pi51_k17#29 <= 1
 0 <= pi24_k10#30 <= 1
 0 <= pi59_k19#31 <= 1
 0 <= pi30_k12#32 <= 1
 0 <= pi40_k14#33 <= 1
 0 <= pi23_k10#34 <= 1
 0 <= pi52_k17#35 <= 1
 0 <= pi22_k10#36 <= 1
 0 <= pi58_k19#37 <= 1
 0 <= pi10_k7#38 <= 1
 0 <= pi32_k12#39 <= 1
 0 <= pi62_k20#40 <= 1
 0 <= pi26_k11#41 <= 1
 0 <= pi48_k16#42 <= 1
 0 <= pi12_k7#43 <= 1
 0 <= pi60_k19#44 <= 1
 0 <= pi18_k9#45 <= 1
 0 <= pi38_k14#46 <= 1
 0 <= pi34_k13#47 <= 1
 0 <= pi11_k7#48 <= 1
 0 <= pi20_k9#49 <= 1
 0 <= pi55_k18#50 <= 1
 0 <= pi6_k6#51 <= 1
 0 <= pi7_k6#52 <= 1
 0 <= pi54_k18#53 <= 1
 0 <= pi64_k20#54 <= 1
 0 <= pi50_k17#55 <= 1
 0 <= pi27_k11#56 <= 1
 0 <= pi35_k13#57 <= 1
 0 <= pi63_k20#58 <= 1
 0 <= pi15_k8#59 <= 1
 0 <= pi56_k18#60 <= 1
 0 <= pi43_k15#61 <= 1
 0 <= pi39_k14#62 <= 1
 0 <= pi8_k6#63 <= 1
 0 <= pi36_k13#64 <= 1
 0 <= pi14_k8#65 <= 1
 0 <= pi42_k15#66 <= 1
 0 <= pi16_k8#67 <= 1
 0 <= pi44_k15#68 <= 1
 0 <= pi46_k16#69 <= 1
 0 <= pi28_k11#70 <= 1
Binaries
 vnp1#0  pi0_k1#1  pi1_k2#2  pi2_k3#3  vnp2#4  pi3_k4#5  pi4_k5#6  pi5_k6#7 
 pi9_k7#8  vnp3#9  pi13_k8#10  pi17_k9#11  pi21_k10#12  vnp4#13  pi25_k11#14 
 pi29_k12#15  pi33_k13#16  pi37_k14#17  pi41_k15#18  pi45_k16#19  vnp5#20 
 pi49_k17#21  pi53_k18#22  pi57_k19#23  pi61_k20#24  pi65_k21#25  pi31_k12#26 
 pi19_k9#27  pi47_k16#28  pi51_k17#29  pi24_k10#30  pi59_k19#31  pi30_k12#32 
 pi40_k14#33  pi23_k10#34  pi52_k17#35  pi22_k10#36  pi58_k19#37  pi10_k7#38 
 pi32_k12#39  pi62_k20#40  pi26_k11#41  pi48_k16#42  pi12_k7#43  pi60_k19#44 
 pi18_k9#45  pi38_k14#46  pi34_k13#47  pi11_k7#48  pi20_k9#49  pi55_k18#50 
 pi6_k6#51  pi7_k6#52  pi54_k18#53  pi64_k20#54  pi50_k17#55  pi27_k11#56 
 pi35_k13#57  pi63_k20#58  pi15_k8#59  pi56_k18#60  pi43_k15#61  pi39_k14#62 
 pi8_k6#63  pi36_k13#64  pi14_k8#65  pi42_k15#66  pi16_k8#67  pi44_k15#68 
 pi46_k16#69  pi28_k11#70 
End
