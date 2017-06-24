\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1700 vnp2#0 - 39 pi0_k5#1 - 25 pi1_k6#2 - 49 pi5_k7#3 - 49 pi9_k8#4
      - 37 pi10_k9#5 - 90 pi11_k10#6 + 1129 vnp3#7 - 124 pi12_k11#8
      - 31 pi16_k12#9 - 39 pi20_k13#10 - 16 pi21_k14#11 - 34 pi22_k15#12
      - 34 pi26_k16#13 - 53 pi7_k7#14 - 51 pi19_k12#15 - 39 pi25_k15#16
      - 55 pi17_k12#17 - 33 pi6_k7#18 - 45 pi3_k6#19 - 37 pi23_k15#20
      - 37 pi2_k6#21 - 209 pi13_k11#22 - 194 pi15_k11#23 - 42 pi4_k6#24
      - 54 pi8_k7#25 - 229 pi14_k11#26 - 53 pi24_k15#27 - 42 pi18_k12#28
Subject To
 _Embedding_clash_const_of_vlink5_vnp_2#0: vnp2#0 - pi0_k5#1 <= 0
 _Embedding_clash_const_of_vlink6_vnp_2#1: vnp2#0 - pi1_k6#2 <= 0
 _Embedding_clash_const_of_vlink7_vnp_2#2: vnp2#0 - pi5_k7#3 <= 0
 _Embedding_clash_const_of_vlink8_vnp_2#3: vnp2#0 - pi9_k8#4 <= 0
 _Embedding_clash_const_of_vlink9_vnp_2#4: vnp2#0 - pi10_k9#5 <= 0
 _Embedding_clash_const_of_vlink10_vnp_2#5: vnp2#0 - pi11_k10#6 <= 0
 _Embedding_clash_const_of_vlink11_vnp_3#6: vnp3#7 - pi12_k11#8 <= 0
 _Embedding_clash_const_of_vlink12_vnp_3#7: vnp3#7 - pi16_k12#9 <= 0
 _Embedding_clash_const_of_vlink13_vnp_3#8: vnp3#7 - pi20_k13#10 <= 0
 _Embedding_clash_const_of_vlink14_vnp_3#9: vnp3#7 - pi21_k14#11 <= 0
 _Embedding_clash_const_of_vlink15_vnp_3#10: vnp3#7 - pi22_k15#12 <= 0
 _Embedding_clash_const_of_vlink16_vnp_3#11: vnp3#7 - pi26_k16#13 <= 0
 BW_capacity_of_substrate_link_10#12: pi7_k7#14 + pi19_k12#15 <= 20
 BW_capacity_of_substrate_link_11#13: pi7_k7#14 + pi19_k12#15 <= 13
 BW_capacity_of_substrate_link_22#14: pi25_k15#16 <= 6
 BW_capacity_of_substrate_link_23#15: pi25_k15#16 <= 13
 BW_capacity_of_substrate_link_24#16: pi0_k5#1 + pi22_k15#12 + pi26_k16#13
                                 <= 16
 BW_capacity_of_substrate_link_25#17: pi5_k7#3 + 5 pi11_k10#6 + pi17_k12#17
                                 <= 20
 BW_capacity_of_substrate_link_26#18: pi16_k12#9 + 3 pi21_k14#11 + pi22_k15#12
                                 + pi6_k7#18 <= 13
 BW_capacity_of_substrate_link_27#19: pi17_k12#17 + pi3_k6#19 + pi23_k15#20
                                 <= 17
 BW_capacity_of_substrate_link_28#20: 2 pi10_k9#5 + pi23_k15#20 + pi2_k6#21
                                 + 5 pi13_k11#22 <= 13
 BW_capacity_of_substrate_link_29#21: pi1_k6#2 + 5 pi12_k11#8 <= 15
 BW_capacity_of_substrate_link_30#22: 5 pi15_k11#23 <= 17
 BW_capacity_of_substrate_link_31#23: 5 pi15_k11#23 <= 16
 BW_capacity_of_substrate_link_37#24: 5 pi13_k11#22 + pi4_k6#24 + pi8_k7#25
                                 <= 20
 BW_capacity_of_substrate_link_38#25: pi5_k7#3 + 2 pi9_k8#4 + pi2_k6#21
                                 + 5 pi14_k11#26 + pi24_k15#27 <= 18
 BW_capacity_of_substrate_link_39#26: pi1_k6#2 + pi8_k7#25 <= 20
 BW_capacity_of_substrate_link_40#27: 5 pi12_k11#8 <= 10
 BW_capacity_of_substrate_link_41#28: pi6_k7#18 + pi3_k6#19 + pi24_k15#27
                                 + pi18_k12#28 <= 19
 BW_capacity_of_substrate_link_42#29: pi16_k12#9 + 2 pi20_k13#10 <= 19
 BW_capacity_of_substrate_link_43#30: 5 pi14_k11#26 + pi18_k12#28 <= 15
 c32#31:                         - 1700 vnp2#0 + 39 pi0_k5#1 + 25 pi1_k6#2
                                 + 49 pi5_k7#3 + 49 pi9_k8#4 + 37 pi10_k9#5
                                 + 90 pi11_k10#6 - 1129 vnp3#7 + 124 pi12_k11#8
                                 + 31 pi16_k12#9 + 39 pi20_k13#10
                                 + 16 pi21_k14#11 + 34 pi22_k15#12
                                 + 34 pi26_k16#13 + 53 pi7_k7#14
                                 + 51 pi19_k12#15 + 39 pi25_k15#16
                                 + 55 pi17_k12#17 + 33 pi6_k7#18 + 45 pi3_k6#19
                                 + 37 pi23_k15#20 + 37 pi2_k6#21
                                 + 209 pi13_k11#22 + 194 pi15_k11#23
                                 + 42 pi4_k6#24 + 54 pi8_k7#25
                                 + 229 pi14_k11#26 + 53 pi24_k15#27
                                 + 42 pi18_k12#28 <= 0
Bounds
 0 <= vnp2#0 <= 1
 0 <= pi0_k5#1 <= 1
 0 <= pi1_k6#2 <= 1
 0 <= pi5_k7#3 <= 1
 0 <= pi9_k8#4 <= 1
 0 <= pi10_k9#5 <= 1
 0 <= pi11_k10#6 <= 1
 0 <= vnp3#7 <= 1
 0 <= pi12_k11#8 <= 1
 0 <= pi16_k12#9 <= 1
 0 <= pi20_k13#10 <= 1
 0 <= pi21_k14#11 <= 1
 0 <= pi22_k15#12 <= 1
 0 <= pi26_k16#13 <= 1
 0 <= pi7_k7#14 <= 1
 0 <= pi19_k12#15 <= 1
 0 <= pi25_k15#16 <= 1
 0 <= pi17_k12#17 <= 1
 0 <= pi6_k7#18 <= 1
 0 <= pi3_k6#19 <= 1
 0 <= pi23_k15#20 <= 1
 0 <= pi2_k6#21 <= 1
 0 <= pi13_k11#22 <= 1
 0 <= pi15_k11#23 <= 1
 0 <= pi4_k6#24 <= 1
 0 <= pi8_k7#25 <= 1
 0 <= pi14_k11#26 <= 1
 0 <= pi24_k15#27 <= 1
 0 <= pi18_k12#28 <= 1
Binaries
 vnp2#0  pi0_k5#1  pi1_k6#2  pi5_k7#3  pi9_k8#4  pi10_k9#5  pi11_k10#6  vnp3#7 
 pi12_k11#8  pi16_k12#9  pi20_k13#10  pi21_k14#11  pi22_k15#12  pi26_k16#13 
 pi7_k7#14  pi19_k12#15  pi25_k15#16  pi17_k12#17  pi6_k7#18  pi3_k6#19 
 pi23_k15#20  pi2_k6#21  pi13_k11#22  pi15_k11#23  pi4_k6#24  pi8_k7#25 
 pi14_k11#26  pi24_k15#27  pi18_k12#28 
End
