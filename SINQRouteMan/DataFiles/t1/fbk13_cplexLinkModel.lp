\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1619 vnp2 - 437 (π,ρ)0↑e6 - 492 (π,ρ)1↑e6
      + 1938 vnp4 - 102 (π,ρ)2↑e16 - 105 (π,ρ)3↑e16
      - 79 (π,ρ)4↑e18 - 165 (π,ρ)5↑e18
      - 170 (π,ρ)6↑e18 - 119 (π,ρ)7↑e18
      - 140 (π,ρ)8↑e18 - 145 (π,ρ)9↑e18
      - 230 (π,ρ)10↑e18
Subject To
 _EmbdConstr_vnp2e5#0:   vnp2  = 0
 _EmbdConstr_vnp2e6#1:   vnp2 - (π,ρ)0↑e6 - (π,ρ)1↑e6
                          = 0
 _EmbdConstr_vnp2e7#2:   vnp2  = 0
 _EmbdConstr_vnp2e8#3:   vnp2  = 0
 _EmbdConstr_vnp4e13#4:  vnp4  = 0
 _EmbdConstr_vnp4e14#5:  vnp4  = 0
 _EmbdConstr_vnp4e15#6:  vnp4  = 0
 _EmbdConstr_vnp4e16#7:  vnp4 - (π,ρ)2↑e16 - (π,ρ)3↑e16
                          = 0
 _EmbdConstr_vnp4e17#8:  vnp4  = 0
 _EmbdConstr_vnp4e18#9:  vnp4 - (π,ρ)4↑e18 - (π,ρ)5↑e18
                         - (π,ρ)6↑e18 - (π,ρ)7↑e18
                         - (π,ρ)8↑e18 - (π,ρ)9↑e18
                         - (π,ρ)10↑e18  = 0
 BwCapConstr_slink4#10:  2 (π,ρ)0↑e6 + 2 (π,ρ)1↑e6 <= 20
 BwCapConstr_slink9#11:  <= 19
 BwCapConstr_slink10#12: 4 (π,ρ)0↑e6 + 4 (π,ρ)1↑e6
                         + 5 (π,ρ)10↑e18 <= 20
 BwCapConstr_slink11#13: 5 (π,ρ)10↑e18 <= 20
 BwCapConstr_slink12#14: 3 (π,ρ)2↑e16 <= 19
 BwCapConstr_slink17#15: <= 20
 BwCapConstr_slink19#16: 5 (π,ρ)0↑e6 + 5 (π,ρ)1↑e6 <= 20
 BwCapConstr_slink23#17: (π,ρ)0↑e6 + (π,ρ)1↑e6 <= 20
 BwCapConstr_slink24#18: 3 (π,ρ)3↑e16 + 100000 (π,ρ)4↑e18
                         <= 20
 BwCapConstr_slink25#19: 5 (π,ρ)0↑e6 + 5 (π,ρ)1↑e6
                         + 3 (π,ρ)2↑e16 + 5 (π,ρ)4↑e18
                         + 5 (π,ρ)7↑e18 <= 17
 BwCapConstr_slink26#20: 5 (π,ρ)5↑e18 + 5 (π,ρ)6↑e18
                         + 5 (π,ρ)8↑e18 + 5 (π,ρ)9↑e18
                         <= 16
 BwCapConstr_slink27#21: 5 (π,ρ)7↑e18 <= 20
 BwCapConstr_slink28#22: 3 (π,ρ)0↑e6 + 3 (π,ρ)1↑e6
                         + 4 (π,ρ)4↑e18 + 5 (π,ρ)6↑e18
                         + 5 (π,ρ)7↑e18 + 5 (π,ρ)9↑e18
                         <= 20
 BwCapConstr_slink29#23: 3 (π,ρ)3↑e16 <= 20
 BwCapConstr_slink31#24: 5 (π,ρ)0↑e6 + 5 (π,ρ)1↑e6 <= 11
 BwCapConstr_slink32#25: 5 (π,ρ)0↑e6 + 5 (π,ρ)1↑e6 <= 17
 BwCapConstr_slink35#26: <= 20
 BwCapConstr_slink36#27: 3 (π,ρ)2↑e16 + 3 (π,ρ)3↑e16
                         <= 15
 BwCapConstr_slink37#28: 3 (π,ρ)2↑e16 <= 20
 BwCapConstr_slink38#29: 5 (π,ρ)4↑e18 + 5 (π,ρ)5↑e18
                         + 2 (π,ρ)6↑e18 + (π,ρ)7↑e18
                         + 5 (π,ρ)8↑e18 + 2 (π,ρ)9↑e18
                         + 5 (π,ρ)10↑e18 <= 20
 BwCapConstr_slink39#30: 5 (π,ρ)1↑e6 <= 20
 BwCapConstr_slink40#31: 5 (π,ρ)0↑e6 <= 20
 BwCapConstr_slink41#32: 5 (π,ρ)5↑e18 + 5 (π,ρ)6↑e18
                         + 5 (π,ρ)7↑e18 + 5 (π,ρ)10↑e18
                         <= 20
 BwCapConstr_slink42#33: 5 (π,ρ)8↑e18 + 5 (π,ρ)9↑e18
                         <= 20
 BwCapConstr_slink43#34: 5 (π,ρ)1↑e6 + 5 (π,ρ)8↑e18
                         + 5 (π,ρ)9↑e18 <= 20
 BwCapConstr_slink44#35: 5 (π,ρ)0↑e6 + 5 (π,ρ)1↑e6 <= 20
Bounds
 0 <= vnp2 <= 1
 0 <= (π,ρ)0↑e6 <= 1
 0 <= (π,ρ)1↑e6 <= 1
 0 <= vnp4 <= 1
 0 <= (π,ρ)2↑e16 <= 1
 0 <= (π,ρ)3↑e16 <= 1
 0 <= (π,ρ)4↑e18 <= 1
 0 <= (π,ρ)5↑e18 <= 1
 0 <= (π,ρ)6↑e18 <= 1
 0 <= (π,ρ)7↑e18 <= 1
 0 <= (π,ρ)8↑e18 <= 1
 0 <= (π,ρ)9↑e18 <= 1
 0 <= (π,ρ)10↑e18 <= 1
Binaries
 vnp2  (π,ρ)0↑e6  (π,ρ)1↑e6  vnp4  (π,ρ)2↑e16 
 (π,ρ)3↑e16  (π,ρ)4↑e18  (π,ρ)5↑e18 
 (π,ρ)6↑e18  (π,ρ)7↑e18  (π,ρ)8↑e18 
 (π,ρ)9↑e18  (π,ρ)10↑e18 
End
