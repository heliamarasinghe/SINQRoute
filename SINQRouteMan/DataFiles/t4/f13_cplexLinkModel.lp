\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1175 vnp2#0 - 30 pi0_k4#1 - 39 pi1_k5#2 - 97 pi5_k6#3 - 72 pi9_k7#4
      - 39 pi2_k5#5 - 97 pi8_k6#6 - 39 pi4_k5#7 - 107 pi6_k6#8 - 107 pi7_k6#9
      - 43 pi3_k5#10 - 152 pi11_k7#11 - 100 pi10_k7#12 - 108 pi12_k7#13
Subject To
 _Embedding_clash_const_of_vlink4_vnp_2#0: vnp2#0 - pi0_k4#1 <= 0
 _Embedding_clash_const_of_vlink5_vnp_2#1: vnp2#0 - pi1_k5#2 <= 0
 _Embedding_clash_const_of_vlink6_vnp_2#2: vnp2#0 - pi5_k6#3 <= 0
 _Embedding_clash_const_of_vlink7_vnp_2#3: vnp2#0 - pi9_k7#4 <= 0
 BW_capacity_of_substrate_link_1#4: 4 pi0_k4#1 + pi2_k5#5 <= 20
 BW_capacity_of_substrate_link_2#5: pi1_k5#2 <= 20
 BW_capacity_of_substrate_link_3#6: 2 pi8_k6#6 <= 13
 BW_capacity_of_substrate_link_5#7: pi4_k5#7 + 2 pi6_k6#8 <= 19
 BW_capacity_of_substrate_link_6#8: pi2_k5#5 + 2 pi7_k6#9 <= 12
 BW_capacity_of_substrate_link_7#9: pi3_k5#10 <= 16
 BW_capacity_of_substrate_link_8#10: pi1_k5#2 + 2 pi6_k6#8 <= 6
 BW_capacity_of_substrate_link_9#11: pi2_k5#5 + 2 pi7_k6#9 <= 16
 BW_capacity_of_substrate_link_10#12: 4 pi11_k7#11 <= 20
 BW_capacity_of_substrate_link_11#13: 2 pi8_k6#6 + 4 pi11_k7#11 <= 13
 BW_capacity_of_substrate_link_15#14: 2 pi5_k6#3 <= 12
 BW_capacity_of_substrate_link_25#15: 4 pi9_k7#4 <= 20
 BW_capacity_of_substrate_link_26#16: 2 pi6_k6#8 + 4 pi10_k7#12 <= 15
 BW_capacity_of_substrate_link_31#17: 2 pi5_k6#3 <= 20
 BW_capacity_of_substrate_link_33#18: 2 pi5_k6#3 <= 17
 BW_capacity_of_substrate_link_37#19: 4 pi12_k7#13 <= 20
 BW_capacity_of_substrate_link_38#20: 4 pi9_k7#4 <= 20
 BW_capacity_of_substrate_link_39#21: 2 pi5_k6#3 + 4 pi12_k7#13 <= 20
 BW_capacity_of_substrate_link_41#22: 2 pi6_k6#8 + 4 pi10_k7#12 <= 20
 c24#23:                         - 1175 vnp2#0 + 30 pi0_k4#1 + 39 pi1_k5#2
                                 + 97 pi5_k6#3 + 72 pi9_k7#4 + 39 pi2_k5#5
                                 + 97 pi8_k6#6 + 39 pi4_k5#7 + 107 pi6_k6#8
                                 + 107 pi7_k6#9 + 43 pi3_k5#10 + 152 pi11_k7#11
                                 + 100 pi10_k7#12 + 108 pi12_k7#13 <= 0
Bounds
 0 <= vnp2#0 <= 1
 0 <= pi0_k4#1 <= 1
 0 <= pi1_k5#2 <= 1
 0 <= pi5_k6#3 <= 1
 0 <= pi9_k7#4 <= 1
 0 <= pi2_k5#5 <= 1
 0 <= pi8_k6#6 <= 1
 0 <= pi4_k5#7 <= 1
 0 <= pi6_k6#8 <= 1
 0 <= pi7_k6#9 <= 1
 0 <= pi3_k5#10 <= 1
 0 <= pi11_k7#11 <= 1
 0 <= pi10_k7#12 <= 1
 0 <= pi12_k7#13 <= 1
Binaries
 vnp2#0  pi0_k4#1  pi1_k5#2  pi5_k6#3  pi9_k7#4  pi2_k5#5  pi8_k6#6  pi4_k5#7 
 pi6_k6#8  pi7_k6#9  pi3_k5#10  pi11_k7#11  pi10_k7#12  pi12_k7#13 
End
