\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1175 vnp2 - 74 (π,ρ)0↑e6 - 74 (π,ρ)1↑e6
      - 82 (π,ρ)2↑e6 - 72 (π,ρ)3↑e6
      - 80 (π,ρ)4↑e7 - 132 (π,ρ)5↑e7
      - 132 (π,ρ)6↑e7 - 92 (π,ρ)7↑e7
Subject To
 _EmbdConstr_vnp2e4#0:   vnp2  = 0
 _EmbdConstr_vnp2e5#1:   vnp2  = 0
 _EmbdConstr_vnp2e6#2:   vnp2 - (π,ρ)0↑e6 - (π,ρ)1↑e6
                         - (π,ρ)2↑e6 - (π,ρ)3↑e6  = 0
 _EmbdConstr_vnp2e7#3:   vnp2 - (π,ρ)4↑e7 - (π,ρ)5↑e7
                         - (π,ρ)6↑e7 - (π,ρ)7↑e7  = 0
 BwCapConstr_slink3#4:   2 (π,ρ)3↑e6 <= 9
 BwCapConstr_slink5#5:   2 (π,ρ)0↑e6 + 2 (π,ρ)2↑e6
                         + 2 (π,ρ)3↑e6 <= 14
 BwCapConstr_slink6#6:   2 (π,ρ)1↑e6 <= 8
 BwCapConstr_slink8#7:   2 (π,ρ)2↑e6 <= 3
 BwCapConstr_slink9#8:   <= 12
 BwCapConstr_slink10#9:  4 (π,ρ)5↑e7 + 4 (π,ρ)6↑e7 <= 20
 BwCapConstr_slink11#10: 2 (π,ρ)3↑e6 + 4 (π,ρ)5↑e7
                         + 4 (π,ρ)6↑e7 <= 9
 BwCapConstr_slink15#11: 2 (π,ρ)0↑e6 + 2 (π,ρ)1↑e6
                         + 2 (π,ρ)2↑e6 + 2 (π,ρ)3↑e6 <= 8
 BwCapConstr_slink18#12: <= 12
 BwCapConstr_slink24#13: <= 13
 BwCapConstr_slink25#14: 4 (π,ρ)4↑e7 + 4 (π,ρ)5↑e7
                         + 4 (π,ρ)6↑e7 + 4 (π,ρ)7↑e7
                         <= 15
 BwCapConstr_slink26#15: 2 (π,ρ)2↑e6 + 4 (π,ρ)4↑e7
                         + 4 (π,ρ)7↑e7 <= 11
 BwCapConstr_slink27#16: <= 13
 BwCapConstr_slink28#17: <= 11
 BwCapConstr_slink31#18: 2 (π,ρ)0↑e6 + 2 (π,ρ)1↑e6 <= 15
 BwCapConstr_slink32#19: <= 8
 BwCapConstr_slink33#20: 2 (π,ρ)0↑e6 + 2 (π,ρ)1↑e6 <= 17
 BwCapConstr_slink35#21: <= 11
 BwCapConstr_slink36#22: <= 14
 BwCapConstr_slink37#23: 4 (π,ρ)7↑e7 <= 15
 BwCapConstr_slink39#24: 2 (π,ρ)0↑e6 + 2 (π,ρ)1↑e6
                         + 4 (π,ρ)7↑e7 <= 20
 BwCapConstr_slink40#25: <= 11
 BwCapConstr_slink41#26: 2 (π,ρ)2↑e6 + 2 (π,ρ)3↑e6
                         + 4 (π,ρ)4↑e7 + 4 (π,ρ)5↑e7
                         + 4 (π,ρ)6↑e7 <= 20
 BwCapConstr_slink42#27: <= 15
Bounds
 0 <= vnp2 <= 1
 0 <= (π,ρ)0↑e6 <= 1
 0 <= (π,ρ)1↑e6 <= 1
 0 <= (π,ρ)2↑e6 <= 1
 0 <= (π,ρ)3↑e6 <= 1
 0 <= (π,ρ)4↑e7 <= 1
 0 <= (π,ρ)5↑e7 <= 1
 0 <= (π,ρ)6↑e7 <= 1
 0 <= (π,ρ)7↑e7 <= 1
Binaries
 vnp2  (π,ρ)0↑e6  (π,ρ)1↑e6  (π,ρ)2↑e6 
 (π,ρ)3↑e6  (π,ρ)4↑e7  (π,ρ)5↑e7 
 (π,ρ)6↑e7  (π,ρ)7↑e7 
End
