\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 779 vnp1#0 - 54 pi0_k1#1 - 93 pi5_k2#2 - 49 pi10_k3#3 - 60 pi15_k4#4
      - 114 pi20_k5#5 + 1061 vnp3#6 - 124 pi25_k9#7 - 80 pi30_k10#8
      - 72 pi31_k11#9 - 121 pi32_k12#10 - 81 pi37_k13#11 + 425 vnp5#12
      - 93 pi42_k20#13 - 83 pi47_k21#14 - 64 pi52_k22#15 - 92 pi19_k4#16
      - 64 pi13_k3#17 - 67 pi51_k21#18 - 44 pi3_k1#19 - 77 pi48_k21#20
      - 76 pi17_k4#21 - 74 pi23_k5#22 - 153 pi45_k20#23 - 79 pi50_k21#24
      - 94 pi16_k4#25 - 65 pi1_k1#26 - 98 pi18_k4#27 - 259 pi26_k9#28
      - 46 pi4_k1#29 - 57 pi12_k3#30 - 29 pi34_k12#31 - 105 pi33_k12#32
      - 118 pi21_k5#33 - 89 pi43_k20#34 - 72 pi7_k2#35 - 137 pi35_k12#36
      - 105 pi8_k2#37 - 122 pi24_k5#38 - 149 pi36_k12#39 - 68 pi53_k22#40
      - 93 pi9_k2#41 - 61 pi44_k20#42 - 45 pi2_k1#43 - 60 pi6_k2#44
      - 31 pi11_k3#45 - 67 pi40_k13#46 - 184 pi27_k9#47 - 254 pi28_k9#48
      - 79 pi38_k13#49 - 50 pi14_k3#50 - 284 pi29_k9#51 - 83 pi39_k13#52
      - 75 pi55_k22#53 - 103 pi41_k13#54 - 125 pi46_k20#55 - 118 pi22_k5#56
      - 78 pi49_k21#57 - 63 pi54_k22#58 - 60 pi56_k22#59
Subject To
 _Embedding_clash_const_of_vlink1_vnp_1#0: vnp1#0 - pi0_k1#1 <= 0
 _Embedding_clash_const_of_vlink2_vnp_1#1: vnp1#0 - pi5_k2#2 <= 0
 _Embedding_clash_const_of_vlink3_vnp_1#2: vnp1#0 - pi10_k3#3 <= 0
 _Embedding_clash_const_of_vlink4_vnp_1#3: vnp1#0 - pi15_k4#4 <= 0
 _Embedding_clash_const_of_vlink5_vnp_1#4: vnp1#0 - pi20_k5#5 <= 0
 _Embedding_clash_const_of_vlink9_vnp_3#5: vnp3#6 - pi25_k9#7 <= 0
 _Embedding_clash_const_of_vlink10_vnp_3#6: vnp3#6 - pi30_k10#8 <= 0
 _Embedding_clash_const_of_vlink11_vnp_3#7: vnp3#6 - pi31_k11#9 <= 0
 _Embedding_clash_const_of_vlink12_vnp_3#8: vnp3#6 - pi32_k12#10 <= 0
 _Embedding_clash_const_of_vlink13_vnp_3#9: vnp3#6 - pi37_k13#11 <= 0
 _Embedding_clash_const_of_vlink20_vnp_5#10: vnp5#12 - pi42_k20#13 <= 0
 _Embedding_clash_const_of_vlink21_vnp_5#11: vnp5#12 - pi47_k21#14 <= 0
 _Embedding_clash_const_of_vlink22_vnp_5#12: vnp5#12 - pi52_k22#15 <= 0
 BW_capacity_of_substrate_link_1#13: 2 pi19_k4#16 <= 20
 BW_capacity_of_substrate_link_2#14: 2 pi19_k4#16 <= 20
 BW_capacity_of_substrate_link_3#15: pi0_k1#1 + 2 pi15_k4#4 + pi13_k3#17
                                 + pi51_k21#18 <= 16
 BW_capacity_of_substrate_link_5#16: 2 pi15_k4#4 + pi3_k1#19 + pi48_k21#20
                                 <= 20
 BW_capacity_of_substrate_link_6#17: 4 pi32_k12#10 + 2 pi17_k4#21
                                 + 4 pi23_k5#22 + 4 pi45_k20#23 + pi50_k21#24
                                 <= 20
 BW_capacity_of_substrate_link_7#18: pi0_k1#1 + 2 pi17_k4#21 <= 16
 BW_capacity_of_substrate_link_8#19: pi13_k3#17 + pi48_k21#20 + 2 pi16_k4#25
                                 <= 20
 BW_capacity_of_substrate_link_9#20: 3 pi30_k10#8 + pi50_k21#24 + pi1_k1#26
                                 + 2 pi18_k4#27 + 5 pi26_k9#28 <= 20
 BW_capacity_of_substrate_link_10#21: pi10_k3#3 + 2 pi16_k4#25 + pi1_k1#26
                                 <= 11
 BW_capacity_of_substrate_link_11#22: pi51_k21#18 + pi4_k1#29 + pi12_k3#30 <= 3
 BW_capacity_of_substrate_link_12#23: 5 pi25_k9#7 + 4 pi23_k5#22
                                 + 4 pi34_k12#31 <= 20
 BW_capacity_of_substrate_link_13#24: pi0_k1#1 + 4 pi45_k20#23 + 4 pi33_k12#32
                                 <= 20
 BW_capacity_of_substrate_link_14#25: pi3_k1#19 + 4 pi21_k5#33 + 4 pi43_k20#34
                                 <= 20
 BW_capacity_of_substrate_link_15#26: 4 pi20_k5#5 + 4 pi32_k12#10
                                 + 4 pi42_k20#13 + pi47_k21#14 <= 20
 BW_capacity_of_substrate_link_16#27: 4 pi33_k12#32 + 3 pi7_k2#35 <= 11
 BW_capacity_of_substrate_link_17#28: 3 pi5_k2#2 + 4 pi21_k5#33 + 4 pi43_k20#34
                                 + 4 pi35_k12#36 <= 20
 BW_capacity_of_substrate_link_18#29: 4 pi42_k20#13 + 3 pi8_k2#37
                                 + 4 pi24_k5#38 + 4 pi36_k12#39 + pi53_k22#40
                                 <= 20
 BW_capacity_of_substrate_link_19#30: 3 pi9_k2#41 + 4 pi44_k20#42 <= 19
 BW_capacity_of_substrate_link_20#31: 4 pi44_k20#42 + pi2_k1#43 + 3 pi6_k2#44
                                 <= 13
 BW_capacity_of_substrate_link_21#32: 5 pi25_k9#7 + 4 pi23_k5#22
                                 + 4 pi34_k12#31 + 3 pi6_k2#44 + pi11_k3#45
                                 + 2 pi40_k13#46 <= 18
 BW_capacity_of_substrate_link_22#33: pi2_k1#43 + pi11_k3#45 + 2 pi40_k13#46
                                 <= 19
 BW_capacity_of_substrate_link_23#34: 5 pi27_k9#47 <= 20
 BW_capacity_of_substrate_link_24#35: pi10_k3#3 + 2 pi37_k13#11 + 5 pi26_k9#28
                                 <= 13
 BW_capacity_of_substrate_link_25#36: 5 pi28_k9#48 + 2 pi38_k13#49 <= 20
 BW_capacity_of_substrate_link_26#37: pi48_k21#20 + pi4_k1#29 + pi14_k3#50
                                 + 5 pi29_k9#51 + 2 pi39_k13#52 <= 8
 BW_capacity_of_substrate_link_27#38: pi12_k3#30 <= 20
 BW_capacity_of_substrate_link_29#39: 2 pi37_k13#11 + 5 pi26_k9#28
                                 + pi55_k22#53 <= 19
 BW_capacity_of_substrate_link_30#40: pi10_k3#3 + pi55_k22#53 + 2 pi41_k13#54
                                 <= 11
 BW_capacity_of_substrate_link_31#41: 5 pi25_k9#7 + pi47_k21#14 + pi52_k22#15
                                 + pi12_k3#30 + 2 pi40_k13#46 <= 10
 BW_capacity_of_substrate_link_32#42: 3 pi5_k2#2 + pi52_k22#15 + 4 pi21_k5#33
                                 + 4 pi35_k12#36 + 4 pi46_k20#55 <= 14
 BW_capacity_of_substrate_link_33#43: 4 pi20_k5#5 + pi47_k21#14 + 3 pi7_k2#35
                                 + pi53_k22#40 + 4 pi46_k20#55 <= 15
 BW_capacity_of_substrate_link_34#44: 4 pi32_k12#10 + 4 pi22_k5#56
                                 + pi49_k21#57 + pi54_k22#58 <= 20
 BW_capacity_of_substrate_link_35#45: 4 pi34_k12#31 + 4 pi22_k5#56
                                 + pi56_k22#59 <= 20
 BW_capacity_of_substrate_link_36#46: 5 pi31_k11#9 + pi49_k21#57 + pi54_k22#58
                                 <= 20
 BW_capacity_of_substrate_link_37#47: pi12_k3#30 + 5 pi28_k9#48 + 2 pi38_k13#49
                                 <= 20
 BW_capacity_of_substrate_link_39#48: 5 pi29_k9#51 <= 20
 BW_capacity_of_substrate_link_40#49: pi47_k21#14 + pi52_k22#15 + 2 pi39_k13#52
                                 <= 16
 BW_capacity_of_substrate_link_41#50: 5 pi29_k9#51 <= 20
 BW_capacity_of_substrate_link_42#51: pi48_k21#20 + 2 pi39_k13#52 <= 5
 BW_capacity_of_substrate_link_44#52: pi47_k21#14 + pi52_k22#15 <= 10
 c54#53:                         - 779 vnp1#0 + 54 pi0_k1#1 + 93 pi5_k2#2
                                 + 49 pi10_k3#3 + 60 pi15_k4#4 + 114 pi20_k5#5
                                 - 1061 vnp3#6 + 124 pi25_k9#7 + 80 pi30_k10#8
                                 + 72 pi31_k11#9 + 121 pi32_k12#10
                                 + 81 pi37_k13#11 - 425 vnp5#12
                                 + 93 pi42_k20#13 + 83 pi47_k21#14
                                 + 64 pi52_k22#15 + 92 pi19_k4#16
                                 + 64 pi13_k3#17 + 67 pi51_k21#18
                                 + 44 pi3_k1#19 + 77 pi48_k21#20
                                 + 76 pi17_k4#21 + 74 pi23_k5#22
                                 + 153 pi45_k20#23 + 79 pi50_k21#24
                                 + 94 pi16_k4#25 + 65 pi1_k1#26 + 98 pi18_k4#27
                                 + 259 pi26_k9#28 + 46 pi4_k1#29
                                 + 57 pi12_k3#30 + 29 pi34_k12#31
                                 + 105 pi33_k12#32 + 118 pi21_k5#33
                                 + 89 pi43_k20#34 + 72 pi7_k2#35
                                 + 137 pi35_k12#36 + 105 pi8_k2#37
                                 + 122 pi24_k5#38 + 149 pi36_k12#39
                                 + 68 pi53_k22#40 + 93 pi9_k2#41
                                 + 61 pi44_k20#42 + 45 pi2_k1#43 + 60 pi6_k2#44
                                 + 31 pi11_k3#45 + 67 pi40_k13#46
                                 + 184 pi27_k9#47 + 254 pi28_k9#48
                                 + 79 pi38_k13#49 + 50 pi14_k3#50
                                 + 284 pi29_k9#51 + 83 pi39_k13#52
                                 + 75 pi55_k22#53 + 103 pi41_k13#54
                                 + 125 pi46_k20#55 + 118 pi22_k5#56
                                 + 78 pi49_k21#57 + 63 pi54_k22#58
                                 + 60 pi56_k22#59 <= 0
Bounds
 0 <= vnp1#0 <= 1
 0 <= pi0_k1#1 <= 1
 0 <= pi5_k2#2 <= 1
 0 <= pi10_k3#3 <= 1
 0 <= pi15_k4#4 <= 1
 0 <= pi20_k5#5 <= 1
 0 <= vnp3#6 <= 1
 0 <= pi25_k9#7 <= 1
 0 <= pi30_k10#8 <= 1
 0 <= pi31_k11#9 <= 1
 0 <= pi32_k12#10 <= 1
 0 <= pi37_k13#11 <= 1
 0 <= vnp5#12 <= 1
 0 <= pi42_k20#13 <= 1
 0 <= pi47_k21#14 <= 1
 0 <= pi52_k22#15 <= 1
 0 <= pi19_k4#16 <= 1
 0 <= pi13_k3#17 <= 1
 0 <= pi51_k21#18 <= 1
 0 <= pi3_k1#19 <= 1
 0 <= pi48_k21#20 <= 1
 0 <= pi17_k4#21 <= 1
 0 <= pi23_k5#22 <= 1
 0 <= pi45_k20#23 <= 1
 0 <= pi50_k21#24 <= 1
 0 <= pi16_k4#25 <= 1
 0 <= pi1_k1#26 <= 1
 0 <= pi18_k4#27 <= 1
 0 <= pi26_k9#28 <= 1
 0 <= pi4_k1#29 <= 1
 0 <= pi12_k3#30 <= 1
 0 <= pi34_k12#31 <= 1
 0 <= pi33_k12#32 <= 1
 0 <= pi21_k5#33 <= 1
 0 <= pi43_k20#34 <= 1
 0 <= pi7_k2#35 <= 1
 0 <= pi35_k12#36 <= 1
 0 <= pi8_k2#37 <= 1
 0 <= pi24_k5#38 <= 1
 0 <= pi36_k12#39 <= 1
 0 <= pi53_k22#40 <= 1
 0 <= pi9_k2#41 <= 1
 0 <= pi44_k20#42 <= 1
 0 <= pi2_k1#43 <= 1
 0 <= pi6_k2#44 <= 1
 0 <= pi11_k3#45 <= 1
 0 <= pi40_k13#46 <= 1
 0 <= pi27_k9#47 <= 1
 0 <= pi28_k9#48 <= 1
 0 <= pi38_k13#49 <= 1
 0 <= pi14_k3#50 <= 1
 0 <= pi29_k9#51 <= 1
 0 <= pi39_k13#52 <= 1
 0 <= pi55_k22#53 <= 1
 0 <= pi41_k13#54 <= 1
 0 <= pi46_k20#55 <= 1
 0 <= pi22_k5#56 <= 1
 0 <= pi49_k21#57 <= 1
 0 <= pi54_k22#58 <= 1
 0 <= pi56_k22#59 <= 1
Binaries
 vnp1#0  pi0_k1#1  pi5_k2#2  pi10_k3#3  pi15_k4#4  pi20_k5#5  vnp3#6 
 pi25_k9#7  pi30_k10#8  pi31_k11#9  pi32_k12#10  pi37_k13#11  vnp5#12 
 pi42_k20#13  pi47_k21#14  pi52_k22#15  pi19_k4#16  pi13_k3#17  pi51_k21#18 
 pi3_k1#19  pi48_k21#20  pi17_k4#21  pi23_k5#22  pi45_k20#23  pi50_k21#24 
 pi16_k4#25  pi1_k1#26  pi18_k4#27  pi26_k9#28  pi4_k1#29  pi12_k3#30 
 pi34_k12#31  pi33_k12#32  pi21_k5#33  pi43_k20#34  pi7_k2#35  pi35_k12#36 
 pi8_k2#37  pi24_k5#38  pi36_k12#39  pi53_k22#40  pi9_k2#41  pi44_k20#42 
 pi2_k1#43  pi6_k2#44  pi11_k3#45  pi40_k13#46  pi27_k9#47  pi28_k9#48 
 pi38_k13#49  pi14_k3#50  pi29_k9#51  pi39_k13#52  pi55_k22#53  pi41_k13#54 
 pi46_k20#55  pi22_k5#56  pi49_k21#57  pi54_k22#58  pi56_k22#59 
End
