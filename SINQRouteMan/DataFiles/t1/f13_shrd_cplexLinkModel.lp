\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1700 vnp2 - 40 (π,ρ)0↑e6 - 48 (π,ρ)1↑e6
      - 31 (π,ρ)2↑e7 - 31 (π,ρ)3↑e7
      - 15 (π,ρ)4↑e7 - 15 (π,ρ)5↑e7
      - 15 (π,ρ)6↑e7 - 35 (π,ρ)7↑e7
      - 48 (π,ρ)8↑e7 - 48 (π,ρ)9↑e7
      - 48 (π,ρ)10↑e7 - 36 (π,ρ)11↑e8
      - 65 (π,ρ)12↑e10 + 1129 vnp3 - 186 (π,ρ)13↑e11
      - 37 (π,ρ)14↑e12 - 37 (π,ρ)15↑e12
      - 28 (π,ρ)16↑e13 - 9 (π,ρ)17↑e14
      - 36 (π,ρ)18↑e15 - 52 (π,ρ)19↑e15
      - 27 (π,ρ)20↑e15
Subject To
 _EmbdConstr_vnp2e5#0:   vnp2  = 0
 _EmbdConstr_vnp2e6#1:   vnp2 - (π,ρ)0↑e6 - (π,ρ)1↑e6
                          = 0
 _EmbdConstr_vnp2e7#2:   vnp2 - (π,ρ)2↑e7 - (π,ρ)3↑e7
                         - (π,ρ)4↑e7 - (π,ρ)5↑e7
                         - (π,ρ)6↑e7 - (π,ρ)7↑e7
                         - (π,ρ)8↑e7 - (π,ρ)9↑e7
                         - (π,ρ)10↑e7  = 0
 _EmbdConstr_vnp2e8#3:   vnp2 - (π,ρ)11↑e8  = 0
 _EmbdConstr_vnp2e9#4:   vnp2  = 0
 _EmbdConstr_vnp2e10#5:  vnp2 - (π,ρ)12↑e10  = 0
 _EmbdConstr_vnp3e11#6:  vnp3 - (π,ρ)13↑e11  = 0
 _EmbdConstr_vnp3e12#7:  vnp3 - (π,ρ)14↑e12 - (π,ρ)15↑e12
                          = 0
 _EmbdConstr_vnp3e13#8:  vnp3 - (π,ρ)16↑e13  = 0
 _EmbdConstr_vnp3e14#9:  vnp3 - (π,ρ)17↑e14  = 0
 _EmbdConstr_vnp3e15#10: vnp3 - (π,ρ)18↑e15 - (π,ρ)19↑e15
                         - (π,ρ)20↑e15  = 0
 _EmbdConstr_vnp3e16#11: vnp3  = 0
 BwCapConstr_slink3#12:  <= 9
 BwCapConstr_slink6#13:  <= 8
 BwCapConstr_slink8#14:  (π,ρ)9↑e7 <= 8
 BwCapConstr_slink9#15:  <= 9
 BwCapConstr_slink10#16: (π,ρ)7↑e7 + (π,ρ)14↑e12
                         + (π,ρ)15↑e12 <= 20
 BwCapConstr_slink11#17: (π,ρ)7↑e7 + (π,ρ)14↑e12
                         + (π,ρ)15↑e12 <= 9
 BwCapConstr_slink12#18: <= 10
 BwCapConstr_slink14#19: <= 15
 BwCapConstr_slink19#20: <= 1
 BwCapConstr_slink20#21: <= 13
 BwCapConstr_slink21#22: <= 4
 BwCapConstr_slink22#23: (π,ρ)20↑e15 <= 1
 BwCapConstr_slink23#24: (π,ρ)20↑e15 <= 13
 BwCapConstr_slink24#25: (π,ρ)10↑e7 <= 13
 BwCapConstr_slink25#26: (π,ρ)2↑e7 + (π,ρ)3↑e7
                         + (π,ρ)8↑e7 + (π,ρ)9↑e7
                         + (π,ρ)10↑e7 + 5 (π,ρ)12↑e10
                         <= 15
 BwCapConstr_slink26#27: (π,ρ)4↑e7 + (π,ρ)5↑e7
                         + (π,ρ)6↑e7 + (π,ρ)8↑e7
                         + 3 (π,ρ)17↑e14 + (π,ρ)18↑e15
                         + (π,ρ)20↑e15 <= 9
 BwCapConstr_slink27#28: (π,ρ)1↑e6 + (π,ρ)13↑e11
                         + (π,ρ)18↑e15 + (π,ρ)19↑e15
                         <= 13
 BwCapConstr_slink28#29: (π,ρ)0↑e6 + (π,ρ)1↑e6
                         + 4 (π,ρ)13↑e11 + (π,ρ)18↑e15
                         + (π,ρ)19↑e15 <= 9
 BwCapConstr_slink29#30: 5 (π,ρ)13↑e11 <= 15
 BwCapConstr_slink31#31: <= 11
 BwCapConstr_slink32#32: <= 8
 BwCapConstr_slink35#33: <= 11
 BwCapConstr_slink36#34: <= 7
 BwCapConstr_slink37#35: (π,ρ)8↑e7 + (π,ρ)9↑e7
                         + (π,ρ)10↑e7 <= 13
 BwCapConstr_slink38#36: (π,ρ)0↑e6 + (π,ρ)2↑e7
                         + (π,ρ)3↑e7 + 2 (π,ρ)11↑e8
                         + (π,ρ)19↑e15 <= 18
 BwCapConstr_slink39#37: (π,ρ)0↑e6 + (π,ρ)1↑e6
                         + (π,ρ)8↑e7 + (π,ρ)9↑e7
                         + (π,ρ)10↑e7 <= 15
 BwCapConstr_slink40#38: 5 (π,ρ)13↑e11 <= 5
 BwCapConstr_slink41#39: (π,ρ)1↑e6 + (π,ρ)4↑e7
                         + (π,ρ)5↑e7 + (π,ρ)6↑e7
                         + (π,ρ)7↑e7 + (π,ρ)19↑e15 <= 19
 BwCapConstr_slink42#40: (π,ρ)13↑e11 + (π,ρ)14↑e12
                         + (π,ρ)15↑e12 + 2 (π,ρ)16↑e13
                         <= 14
Bounds
 0 <= vnp2 <= 1
 0 <= (π,ρ)0↑e6 <= 1
 0 <= (π,ρ)1↑e6 <= 1
 0 <= (π,ρ)2↑e7 <= 1
 0 <= (π,ρ)3↑e7 <= 1
 0 <= (π,ρ)4↑e7 <= 1
 0 <= (π,ρ)5↑e7 <= 1
 0 <= (π,ρ)6↑e7 <= 1
 0 <= (π,ρ)7↑e7 <= 1
 0 <= (π,ρ)8↑e7 <= 1
 0 <= (π,ρ)9↑e7 <= 1
 0 <= (π,ρ)10↑e7 <= 1
 0 <= (π,ρ)11↑e8 <= 1
 0 <= (π,ρ)12↑e10 <= 1
 0 <= vnp3 <= 1
 0 <= (π,ρ)13↑e11 <= 1
 0 <= (π,ρ)14↑e12 <= 1
 0 <= (π,ρ)15↑e12 <= 1
 0 <= (π,ρ)16↑e13 <= 1
 0 <= (π,ρ)17↑e14 <= 1
 0 <= (π,ρ)18↑e15 <= 1
 0 <= (π,ρ)19↑e15 <= 1
 0 <= (π,ρ)20↑e15 <= 1
Binaries
 vnp2  (π,ρ)0↑e6  (π,ρ)1↑e6  (π,ρ)2↑e7 
 (π,ρ)3↑e7  (π,ρ)4↑e7  (π,ρ)5↑e7 
 (π,ρ)6↑e7  (π,ρ)7↑e7  (π,ρ)8↑e7 
 (π,ρ)9↑e7  (π,ρ)10↑e7  (π,ρ)11↑e8 
 (π,ρ)12↑e10  vnp3  (π,ρ)13↑e11  (π,ρ)14↑e12 
 (π,ρ)15↑e12  (π,ρ)16↑e13  (π,ρ)17↑e14 
 (π,ρ)18↑e15  (π,ρ)19↑e15  (π,ρ)20↑e15 
End
