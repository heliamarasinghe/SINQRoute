\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 746 vnp3#0 - 74 pi0_k12#1 - 62 pi5_k13#2 - 61 pi10_k14#3 - 172 pi11_k15#4
      + 472 vnp5#5 - 82 pi16_k21#6 - 14 pi17_k22#7 - 25 pi18_k23#8
      - 57 pi23_k24#9 - 142 pi1_k12#10 - 42 pi12_k15#11 - 46 pi2_k12#12
      - 12 pi19_k23#13 - 98 pi3_k12#14 - 152 pi14_k15#15 - 21 pi20_k23#16
      - 83 pi6_k13#17 - 112 pi25_k24#18 - 40 pi22_k23#19 - 119 pi9_k13#20
      - 212 pi13_k15#21 - 128 pi7_k13#22 - 167 pi8_k13#23 - 46 pi21_k23#24
      - 162 pi24_k24#25 - 64 pi4_k12#26 - 197 pi26_k24#27 - 177 pi27_k24#28
      - 102 pi15_k15#29
Subject To
 _Embedding_clash_const_of_vlink12_vnp_3#0: vnp3#0 - pi0_k12#1 <= 0
 _Embedding_clash_const_of_vlink13_vnp_3#1: vnp3#0 - pi5_k13#2 <= 0
 _Embedding_clash_const_of_vlink14_vnp_3#2: vnp3#0 - pi10_k14#3 <= 0
 _Embedding_clash_const_of_vlink15_vnp_3#3: vnp3#0 - pi11_k15#4 <= 0
 _Embedding_clash_const_of_vlink21_vnp_5#4: vnp5#5 - pi16_k21#6 <= 0
 _Embedding_clash_const_of_vlink22_vnp_5#5: vnp5#5 - pi17_k22#7 <= 0
 _Embedding_clash_const_of_vlink23_vnp_5#6: vnp5#5 - pi18_k23#8 <= 0
 _Embedding_clash_const_of_vlink24_vnp_5#7: vnp5#5 - pi23_k24#9 <= 0
 BW_capacity_of_substrate_link_1#8: 5 pi11_k15#4 + 2 pi1_k12#10 <= 20
 BW_capacity_of_substrate_link_2#9: 2 pi0_k12#1 + 5 pi12_k15#11 <= 8
 BW_capacity_of_substrate_link_3#10: 2 pi2_k12#12 + pi19_k23#13 <= 8
 BW_capacity_of_substrate_link_5#11: 2 pi3_k12#14 + 5 pi14_k15#15 <= 20
 BW_capacity_of_substrate_link_6#12: 5 pi11_k15#4 + 2 pi1_k12#10 <= 13
 BW_capacity_of_substrate_link_7#13: 5 pi12_k15#11 + pi19_k23#13 <= 20
 BW_capacity_of_substrate_link_8#14: 2 pi0_k12#1 + pi20_k23#16 <= 11
 BW_capacity_of_substrate_link_9#15: 5 pi16_k21#6 + pi18_k23#8 + 2 pi1_k12#10
                                 + 3 pi6_k13#17 <= 17
 BW_capacity_of_substrate_link_10#16: 5 pi25_k24#18 <= 16
 BW_capacity_of_substrate_link_11#17: 2 pi2_k12#12 + pi19_k23#13
                                 + 5 pi25_k24#18 <= 2
 BW_capacity_of_substrate_link_12#18: 3 pi5_k13#2 + pi22_k23#19 <= 12
 BW_capacity_of_substrate_link_13#19: 3 pi9_k13#20 + 5 pi13_k15#21 <= 20
 BW_capacity_of_substrate_link_14#20: 5 pi13_k15#21 <= 16
 BW_capacity_of_substrate_link_20#21: 3 pi9_k13#20 <= 13
 BW_capacity_of_substrate_link_22#22: pi22_k23#19 + 3 pi7_k13#22 <= 14
 BW_capacity_of_substrate_link_23#23: 3 pi5_k13#2 <= 15
 BW_capacity_of_substrate_link_24#24: 3 pi6_k13#17 <= 18
 BW_capacity_of_substrate_link_25#25: 2 pi0_k12#1 + 3 pi8_k13#23 + pi21_k23#24
                                 + 5 pi24_k24#25 <= 16
 BW_capacity_of_substrate_link_26#26: pi18_k23#8 + 5 pi23_k24#9 + 2 pi4_k12#26
                                 <= 15
 BW_capacity_of_substrate_link_27#27: 2 pi2_k12#12 + pi21_k23#24
                                 + 5 pi24_k24#25 <= 16
 BW_capacity_of_substrate_link_28#28: 3 pi10_k14#3 + 3 pi8_k13#23 <= 17
 BW_capacity_of_substrate_link_37#29: 5 pi26_k24#27 <= 20
 BW_capacity_of_substrate_link_38#30: 5 pi27_k24#28 <= 13
 BW_capacity_of_substrate_link_40#31: 5 pi26_k24#27 <= 7
 BW_capacity_of_substrate_link_42#32: 3 pi17_k22#7 + 5 pi23_k24#9 <= 5
 BW_capacity_of_substrate_link_43#33: 5 pi27_k24#28 <= 18
 c35#34:                         - 746 vnp3#0 + 74 pi0_k12#1 + 62 pi5_k13#2
                                 + 61 pi10_k14#3 + 172 pi11_k15#4 - 472 vnp5#5
                                 + 82 pi16_k21#6 + 14 pi17_k22#7
                                 + 25 pi18_k23#8 + 57 pi23_k24#9
                                 + 142 pi1_k12#10 + 42 pi12_k15#11
                                 + 46 pi2_k12#12 + 12 pi19_k23#13
                                 + 98 pi3_k12#14 + 152 pi14_k15#15
                                 + 21 pi20_k23#16 + 83 pi6_k13#17
                                 + 112 pi25_k24#18 + 40 pi22_k23#19
                                 + 119 pi9_k13#20 + 212 pi13_k15#21
                                 + 128 pi7_k13#22 + 167 pi8_k13#23
                                 + 46 pi21_k23#24 + 162 pi24_k24#25
                                 + 64 pi4_k12#26 + 197 pi26_k24#27
                                 + 177 pi27_k24#28 + 102 pi15_k15#29 <= 0
Bounds
 0 <= vnp3#0 <= 1
 0 <= pi0_k12#1 <= 1
 0 <= pi5_k13#2 <= 1
 0 <= pi10_k14#3 <= 1
 0 <= pi11_k15#4 <= 1
 0 <= vnp5#5 <= 1
 0 <= pi16_k21#6 <= 1
 0 <= pi17_k22#7 <= 1
 0 <= pi18_k23#8 <= 1
 0 <= pi23_k24#9 <= 1
 0 <= pi1_k12#10 <= 1
 0 <= pi12_k15#11 <= 1
 0 <= pi2_k12#12 <= 1
 0 <= pi19_k23#13 <= 1
 0 <= pi3_k12#14 <= 1
 0 <= pi14_k15#15 <= 1
 0 <= pi20_k23#16 <= 1
 0 <= pi6_k13#17 <= 1
 0 <= pi25_k24#18 <= 1
 0 <= pi22_k23#19 <= 1
 0 <= pi9_k13#20 <= 1
 0 <= pi13_k15#21 <= 1
 0 <= pi7_k13#22 <= 1
 0 <= pi8_k13#23 <= 1
 0 <= pi21_k23#24 <= 1
 0 <= pi24_k24#25 <= 1
 0 <= pi4_k12#26 <= 1
 0 <= pi26_k24#27 <= 1
 0 <= pi27_k24#28 <= 1
 0 <= pi15_k15#29 <= 1
Binaries
 vnp3#0  pi0_k12#1  pi5_k13#2  pi10_k14#3  pi11_k15#4  vnp5#5  pi16_k21#6 
 pi17_k22#7  pi18_k23#8  pi23_k24#9  pi1_k12#10  pi12_k15#11  pi2_k12#12 
 pi19_k23#13  pi3_k12#14  pi14_k15#15  pi20_k23#16  pi6_k13#17  pi25_k24#18 
 pi22_k23#19  pi9_k13#20  pi13_k15#21  pi7_k13#22  pi8_k13#23  pi21_k23#24 
 pi24_k24#25  pi4_k12#26  pi26_k24#27  pi27_k24#28  pi15_k15#29 
End
