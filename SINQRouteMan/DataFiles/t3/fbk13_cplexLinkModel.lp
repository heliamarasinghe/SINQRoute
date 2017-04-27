\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1278 vnp1 - 40 (π,ρ)0↑e4 - 76 (π,ρ)1↑e4
      - 54 (π,ρ)2↑e4 - 48 (π,ρ)3↑e4
      - 70 (π,ρ)4↑e4 + 583 vnp2 + 644 vnp3
      - 10 (π,ρ)5↑e11 + 424 vnp4 - 20 (π,ρ)6↑e14
      - 38 (π,ρ)7↑e14 - 38 (π,ρ)8↑e14
      - 27 (π,ρ)9↑e14 - 27 (π,ρ)10↑e14
      - 28 (π,ρ)11↑e14 - 32 (π,ρ)12↑e14
      - 16 (π,ρ)13↑e15 + 1237 vnp5 + 1399 vnp6
Subject To
 _EmbdConstr_vnp1e1#0:   vnp1  = 0
 _EmbdConstr_vnp1e2#1:   vnp1  = 0
 _EmbdConstr_vnp1e3#2:   vnp1  = 0
 _EmbdConstr_vnp1e4#3:   vnp1 - (π,ρ)0↑e4 - (π,ρ)1↑e4
                         - (π,ρ)2↑e4 - (π,ρ)3↑e4
                         - (π,ρ)4↑e4  = 0
 _EmbdConstr_vnp1e5#4:   vnp1  = 0
 _EmbdConstr_vnp2e6#5:   vnp2  = 0
 _EmbdConstr_vnp2e7#6:   vnp2  = 0
 _EmbdConstr_vnp2e8#7:   vnp2  = 0
 _EmbdConstr_vnp3e9#8:   vnp3  = 0
 _EmbdConstr_vnp3e10#9:  vnp3  = 0
 _EmbdConstr_vnp3e11#10: vnp3 - (π,ρ)5↑e11  = 0
 _EmbdConstr_vnp4e12#11: vnp4  = 0
 _EmbdConstr_vnp4e13#12: vnp4  = 0
 _EmbdConstr_vnp4e14#13: vnp4 - (π,ρ)6↑e14 - (π,ρ)7↑e14
                         - (π,ρ)8↑e14 - (π,ρ)9↑e14
                         - (π,ρ)10↑e14 - (π,ρ)11↑e14
                         - (π,ρ)12↑e14  = 0
 _EmbdConstr_vnp4e15#14: vnp4 - (π,ρ)13↑e15  = 0
 _EmbdConstr_vnp5e16#15: vnp5  = 0
 _EmbdConstr_vnp5e17#16: vnp5  = 0
 _EmbdConstr_vnp5e18#17: vnp5  = 0
 _EmbdConstr_vnp5e19#18: vnp5  = 0
 _EmbdConstr_vnp6e20#19: vnp6  = 0
 _EmbdConstr_vnp6e21#20: vnp6  = 0
 _EmbdConstr_vnp6e22#21: vnp6  = 0
 _EmbdConstr_vnp6e23#22: vnp6  = 0
 BwCapConstr_slink1#23:  2 (π,ρ)2↑e4 <= 17
 BwCapConstr_slink2#24:  2 (π,ρ)2↑e4 <= 16
 BwCapConstr_slink5#25:  2 (π,ρ)0↑e4 <= 20
 BwCapConstr_slink6#26:  2 (π,ρ)1↑e4 + 2 (π,ρ)2↑e4
                         + 2 (π,ρ)4↑e4 <= 20
 BwCapConstr_slink7#27:  2 (π,ρ)4↑e4 <= 19
 BwCapConstr_slink8#28:  2 (π,ρ)0↑e4 + 2 (π,ρ)2↑e4
                         + 2 (π,ρ)4↑e4 <= 17
 BwCapConstr_slink9#29:  2 (π,ρ)1↑e4 + 100000 (π,ρ)4↑e4
                         <= 20
 BwCapConstr_slink14#30: 2 (π,ρ)3↑e4 + 2 (π,ρ)5↑e11 <= 17
 BwCapConstr_slink15#31: <= 20
 BwCapConstr_slink16#32: <= 9
 BwCapConstr_slink20#33: 2 (π,ρ)3↑e4 <= 12
 BwCapConstr_slink22#34: 2 (π,ρ)3↑e4 + (π,ρ)9↑e14
                         + (π,ρ)10↑e14 <= 20
 BwCapConstr_slink23#35: (π,ρ)9↑e14 + (π,ρ)10↑e14 <= 20
 BwCapConstr_slink24#36: (π,ρ)7↑e14 + (π,ρ)8↑e14 <= 20
 BwCapConstr_slink26#37: (π,ρ)7↑e14 + (π,ρ)8↑e14
                         + (π,ρ)9↑e14 + (π,ρ)10↑e14 <= 20
 BwCapConstr_slink27#38: (π,ρ)6↑e14 + (π,ρ)7↑e14
                         + (π,ρ)9↑e14 <= 20
 BwCapConstr_slink28#39: (π,ρ)6↑e14 + (π,ρ)7↑e14
                         + (π,ρ)9↑e14 + (π,ρ)11↑e14
                         + (π,ρ)12↑e14 + (π,ρ)13↑e15
                         <= 20
 BwCapConstr_slink29#40: 100000 (π,ρ)6↑e14 + (π,ρ)8↑e14
                         + (π,ρ)10↑e14 + (π,ρ)11↑e14
                         + (π,ρ)12↑e14 <= 20
 BwCapConstr_slink37#41: <= 20
 BwCapConstr_slink38#42: (π,ρ)11↑e14 <= 20
 BwCapConstr_slink39#43: (π,ρ)12↑e14 <= 20
 BwCapConstr_slink41#44: (π,ρ)11↑e14 + (π,ρ)12↑e14 <= 20
Bounds
 0 <= vnp1 <= 1
 0 <= (π,ρ)0↑e4 <= 1
 0 <= (π,ρ)1↑e4 <= 1
 0 <= (π,ρ)2↑e4 <= 1
 0 <= (π,ρ)3↑e4 <= 1
 0 <= (π,ρ)4↑e4 <= 1
 0 <= vnp2 <= 1
 0 <= vnp3 <= 1
 0 <= (π,ρ)5↑e11 <= 1
 0 <= vnp4 <= 1
 0 <= (π,ρ)6↑e14 <= 1
 0 <= (π,ρ)7↑e14 <= 1
 0 <= (π,ρ)8↑e14 <= 1
 0 <= (π,ρ)9↑e14 <= 1
 0 <= (π,ρ)10↑e14 <= 1
 0 <= (π,ρ)11↑e14 <= 1
 0 <= (π,ρ)12↑e14 <= 1
 0 <= (π,ρ)13↑e15 <= 1
 0 <= vnp5 <= 1
 0 <= vnp6 <= 1
Binaries
 vnp1  (π,ρ)0↑e4  (π,ρ)1↑e4  (π,ρ)2↑e4 
 (π,ρ)3↑e4  (π,ρ)4↑e4  vnp2  vnp3  (π,ρ)5↑e11 
 vnp4  (π,ρ)6↑e14  (π,ρ)7↑e14  (π,ρ)8↑e14 
 (π,ρ)9↑e14  (π,ρ)10↑e14  (π,ρ)11↑e14 
 (π,ρ)12↑e14  (π,ρ)13↑e15  vnp5  vnp6 
End
