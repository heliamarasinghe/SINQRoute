\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 753 vnp1#0 - 19 pi0_k1#1 - 22 pi1_k2#2 - 21 pi2_k3#3 + 715 vnp2#4
      - 34 pi6_k4#5 - 68 pi10_k5#6 - 28 pi14_k6#7 - 69 pi15_k7#8 + 790 vnp3#9
      - 30 pi19_k8#10 - 75 pi20_k9#11 - 36 pi24_k10#12 - 59 pi4_k3#13
      - 150 pi26_k10#14 - 31 pi22_k9#15 - 55 pi3_k3#16 - 99 pi23_k9#17
      - 138 pi25_k10#18 - 86 pi11_k5#19 - 37 pi18_k7#20 - 116 pi12_k5#21
      - 70 pi7_k4#22 - 87 pi17_k7#23 - 51 pi5_k3#24 - 126 pi27_k10#25
      - 173 pi13_k5#26 - 83 pi21_k9#27 - 56 pi8_k4#28 - 91 pi16_k7#29
      - 80 pi9_k4#30
Subject To
 _Embedding_clash_const_of_vlink1_vnp_1#0: vnp1#0 - pi0_k1#1 <= 0
 _Embedding_clash_const_of_vlink2_vnp_1#1: vnp1#0 - pi1_k2#2 <= 0
 _Embedding_clash_const_of_vlink3_vnp_1#2: vnp1#0 - pi2_k3#3 <= 0
 _Embedding_clash_const_of_vlink4_vnp_2#3: vnp2#4 - pi6_k4#5 <= 0
 _Embedding_clash_const_of_vlink5_vnp_2#4: vnp2#4 - pi10_k5#6 <= 0
 _Embedding_clash_const_of_vlink6_vnp_2#5: vnp2#4 - pi14_k6#7 <= 0
 _Embedding_clash_const_of_vlink7_vnp_2#6: vnp2#4 - pi15_k7#8 <= 0
 _Embedding_clash_const_of_vlink8_vnp_3#7: vnp3#9 - pi19_k8#10 <= 0
 _Embedding_clash_const_of_vlink9_vnp_3#8: vnp3#9 - pi20_k9#11 <= 0
 _Embedding_clash_const_of_vlink10_vnp_3#9: vnp3#9 - pi24_k10#12 <= 0
 BW_capacity_of_substrate_link_1#10: pi4_k3#13 + 3 pi26_k10#14 <= 20
 BW_capacity_of_substrate_link_2#11: pi4_k3#13 + 3 pi26_k10#14 <= 20
 BW_capacity_of_substrate_link_3#12: 3 pi10_k5#6 <= 13
 BW_capacity_of_substrate_link_5#13: pi0_k1#1 + pi2_k3#3 + 3 pi10_k5#6
                                 + 3 pi24_k10#12 + 2 pi22_k9#15 <= 20
 BW_capacity_of_substrate_link_6#14: pi3_k3#16 + 2 pi23_k9#17 + 3 pi25_k10#18
                                 <= 12
 BW_capacity_of_substrate_link_7#15: 3 pi11_k5#19 + 2 pi18_k7#20 <= 16
 BW_capacity_of_substrate_link_8#16: 5 pi1_k2#2 + pi2_k3#3 + 3 pi24_k10#12
                                 + 2 pi22_k9#15 + 2 pi18_k7#20 <= 11
 BW_capacity_of_substrate_link_9#17: 2 pi15_k7#8 + 2 pi20_k9#11 + pi3_k3#16
                                 + 3 pi25_k10#18 + 3 pi12_k5#21 <= 17
 BW_capacity_of_substrate_link_10#18: 2 pi6_k4#5 + 3 pi12_k5#21 <= 20
 BW_capacity_of_substrate_link_11#19: 2 pi7_k4#22 <= 13
 BW_capacity_of_substrate_link_12#20: 2 pi17_k7#23 <= 15
 BW_capacity_of_substrate_link_13#21: pi14_k6#7 + 2 pi20_k9#11 + 3 pi11_k5#19
                                 + pi5_k3#24 + 3 pi27_k10#25 <= 20
 BW_capacity_of_substrate_link_14#22: 3 pi10_k5#6 + 4 pi19_k8#10 + 2 pi22_k9#15
                                 + pi5_k3#24 + 3 pi27_k10#25 <= 20
 BW_capacity_of_substrate_link_20#23: 3 pi13_k5#26 + 2 pi21_k9#27 <= 20
 BW_capacity_of_substrate_link_22#24: 2 pi17_k7#23 + 2 pi21_k9#27 <= 6
 BW_capacity_of_substrate_link_23#25: 3 pi13_k5#26 <= 13
 BW_capacity_of_substrate_link_24#26: 3 pi13_k5#26 <= 16
 BW_capacity_of_substrate_link_25#27: 2 pi6_k4#5 + 2 pi15_k7#8 <= 20
 BW_capacity_of_substrate_link_26#28: 2 pi8_k4#28 + 2 pi16_k7#29 <= 14
 BW_capacity_of_substrate_link_27#29: 2 pi7_k4#22 + 2 pi16_k7#29 <= 17
 BW_capacity_of_substrate_link_38#30: 2 pi9_k4#30 <= 20
 BW_capacity_of_substrate_link_41#31: 2 pi9_k4#30 <= 20
 c33#32:                         - 753 vnp1#0 + 19 pi0_k1#1 + 22 pi1_k2#2
                                 + 21 pi2_k3#3 - 715 vnp2#4 + 34 pi6_k4#5
                                 + 68 pi10_k5#6 + 28 pi14_k6#7 + 69 pi15_k7#8
                                 - 790 vnp3#9 + 30 pi19_k8#10 + 75 pi20_k9#11
                                 + 36 pi24_k10#12 + 59 pi4_k3#13
                                 + 150 pi26_k10#14 + 31 pi22_k9#15
                                 + 55 pi3_k3#16 + 99 pi23_k9#17
                                 + 138 pi25_k10#18 + 86 pi11_k5#19
                                 + 37 pi18_k7#20 + 116 pi12_k5#21
                                 + 70 pi7_k4#22 + 87 pi17_k7#23 + 51 pi5_k3#24
                                 + 126 pi27_k10#25 + 173 pi13_k5#26
                                 + 83 pi21_k9#27 + 56 pi8_k4#28 + 91 pi16_k7#29
                                 + 80 pi9_k4#30 <= 0
Bounds
 0 <= vnp1#0 <= 1
 0 <= pi0_k1#1 <= 1
 0 <= pi1_k2#2 <= 1
 0 <= pi2_k3#3 <= 1
 0 <= vnp2#4 <= 1
 0 <= pi6_k4#5 <= 1
 0 <= pi10_k5#6 <= 1
 0 <= pi14_k6#7 <= 1
 0 <= pi15_k7#8 <= 1
 0 <= vnp3#9 <= 1
 0 <= pi19_k8#10 <= 1
 0 <= pi20_k9#11 <= 1
 0 <= pi24_k10#12 <= 1
 0 <= pi4_k3#13 <= 1
 0 <= pi26_k10#14 <= 1
 0 <= pi22_k9#15 <= 1
 0 <= pi3_k3#16 <= 1
 0 <= pi23_k9#17 <= 1
 0 <= pi25_k10#18 <= 1
 0 <= pi11_k5#19 <= 1
 0 <= pi18_k7#20 <= 1
 0 <= pi12_k5#21 <= 1
 0 <= pi7_k4#22 <= 1
 0 <= pi17_k7#23 <= 1
 0 <= pi5_k3#24 <= 1
 0 <= pi27_k10#25 <= 1
 0 <= pi13_k5#26 <= 1
 0 <= pi21_k9#27 <= 1
 0 <= pi8_k4#28 <= 1
 0 <= pi16_k7#29 <= 1
 0 <= pi9_k4#30 <= 1
Binaries
 vnp1#0  pi0_k1#1  pi1_k2#2  pi2_k3#3  vnp2#4  pi6_k4#5  pi10_k5#6  pi14_k6#7 
 pi15_k7#8  vnp3#9  pi19_k8#10  pi20_k9#11  pi24_k10#12  pi4_k3#13 
 pi26_k10#14  pi22_k9#15  pi3_k3#16  pi23_k9#17  pi25_k10#18  pi11_k5#19 
 pi18_k7#20  pi12_k5#21  pi7_k4#22  pi17_k7#23  pi5_k3#24  pi27_k10#25 
 pi13_k5#26  pi21_k9#27  pi8_k4#28  pi16_k7#29  pi9_k4#30 
End
