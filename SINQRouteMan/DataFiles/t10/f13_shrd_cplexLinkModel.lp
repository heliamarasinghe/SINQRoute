\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 563 vnp1 - 219 (π,ρ)0↑e1 - 149 (π,ρ)1↑e1
      - 167 (π,ρ)2↑e1 - 280 (π,ρ)3↑e1
      - 313 (π,ρ)4↑e1 - 197 (π,ρ)5↑e1
      - 227 (π,ρ)6↑e1 - 339 (π,ρ)7↑e1
      - 257 (π,ρ)8↑e1 - 330 (π,ρ)9↑e1
      - 363 (π,ρ)10↑e1 - 247 (π,ρ)11↑e1
      - 1000257 (π,ρ)12↑e1 - 1000365 (π,ρ)13↑e1
      - 1000311 (π,ρ)14↑e1 - 19 (π,ρ)15↑e2
      - 19 (π,ρ)16↑e2 - 19 (π,ρ)17↑e2
      - 10 (π,ρ)18↑e2 - 10 (π,ρ)19↑e2
      - 10 (π,ρ)20↑e2 - 20 (π,ρ)21↑e2
      - 20 (π,ρ)22↑e2 - 25 (π,ρ)23↑e2
      - 26 (π,ρ)24↑e2 - 29 (π,ρ)25↑e2
      - 31 (π,ρ)26↑e2 - 40 (π,ρ)27↑e2
      - 31 (π,ρ)28↑e2 - 34 (π,ρ)29↑e2
      - 168 (π,ρ)30↑e3 - 108 (π,ρ)31↑e3
      - 185 (π,ρ)32↑e3 - 225 (π,ρ)33↑e3
      - 297 (π,ρ)34↑e3 - 213 (π,ρ)35↑e3
      - 195 (π,ρ)36↑e3 - 267 (π,ρ)37↑e3
      - 200 (π,ρ)38↑e3 - 137 (π,ρ)39↑e3
      - 197 (π,ρ)40↑e3 - 210 (π,ρ)41↑e3
      - 197 (π,ρ)42↑e3
Subject To
 _EmbdConstr_vnp1e1#0:   vnp1 - (π,ρ)0↑e1 - (π,ρ)1↑e1
                         - (π,ρ)2↑e1 - (π,ρ)3↑e1
                         - (π,ρ)4↑e1 - (π,ρ)5↑e1
                         - (π,ρ)6↑e1 - (π,ρ)7↑e1
                         - (π,ρ)8↑e1 - (π,ρ)9↑e1
                         - (π,ρ)10↑e1 - (π,ρ)11↑e1
                         - (π,ρ)12↑e1 - (π,ρ)13↑e1
                         - (π,ρ)14↑e1  = 0
 _EmbdConstr_vnp1e2#1:   vnp1 - (π,ρ)15↑e2 - (π,ρ)16↑e2
                         - (π,ρ)17↑e2 - (π,ρ)18↑e2
                         - (π,ρ)19↑e2 - (π,ρ)20↑e2
                         - (π,ρ)21↑e2 - (π,ρ)22↑e2
                         - (π,ρ)23↑e2 - (π,ρ)24↑e2
                         - (π,ρ)25↑e2 - (π,ρ)26↑e2
                         - (π,ρ)27↑e2 - (π,ρ)28↑e2
                         - (π,ρ)29↑e2  = 0
 _EmbdConstr_vnp1e3#2:   vnp1 - (π,ρ)30↑e3 - (π,ρ)31↑e3
                         - (π,ρ)32↑e3 - (π,ρ)33↑e3
                         - (π,ρ)34↑e3 - (π,ρ)35↑e3
                         - (π,ρ)36↑e3 - (π,ρ)37↑e3
                         - (π,ρ)38↑e3 - (π,ρ)39↑e3
                         - (π,ρ)40↑e3 - (π,ρ)41↑e3
                         - (π,ρ)42↑e3  = 0
 BwCapConstr_slink16#3:  <= 9
 BwCapConstr_slink18#4:  5 (π,ρ)7↑e1 <= 10
 BwCapConstr_slink19#5:  5 (π,ρ)13↑e1 <= 11
 BwCapConstr_slink20#6:  <= 11
 BwCapConstr_slink21#7:  (π,ρ)0↑e1 + 5 (π,ρ)4↑e1
                         + 5 (π,ρ)6↑e1 + 5 (π,ρ)7↑e1
                         + 5 (π,ρ)8↑e1 + 5 (π,ρ)10↑e1
                         + 4 (π,ρ)12↑e1 + 5 (π,ρ)14↑e1
                         <= 6
 BwCapConstr_slink22#8:  4 (π,ρ)14↑e1 <= 8
 BwCapConstr_slink23#9:  4 (π,ρ)0↑e1 + 4 (π,ρ)1↑e1
                         + 5 (π,ρ)4↑e1 + 5 (π,ρ)5↑e1
                         + 5 (π,ρ)6↑e1 + 5 (π,ρ)7↑e1
                         + 5 (π,ρ)8↑e1 + 5 (π,ρ)10↑e1
                         + 5 (π,ρ)11↑e1
                         + 100000 (π,ρ)12↑e1
                         + 100000 (π,ρ)13↑e1 <= 11
 BwCapConstr_slink24#10: 100000 (π,ρ)14↑e1 + (π,ρ)27↑e2
                         + (π,ρ)28↑e2 + (π,ρ)29↑e2 <= 12
 BwCapConstr_slink25#11: <= 8
 BwCapConstr_slink26#12: (π,ρ)23↑e2 + (π,ρ)26↑e2
                         + (π,ρ)27↑e2 + (π,ρ)28↑e2
                         + (π,ρ)29↑e2 <= 6
 BwCapConstr_slink27#13: <= 8
 BwCapConstr_slink28#14: 5 (π,ρ)9↑e1 + 5 (π,ρ)10↑e1
                         + 5 (π,ρ)11↑e1 + (π,ρ)15↑e2
                         + (π,ρ)16↑e2 + (π,ρ)17↑e2
                         + (π,ρ)21↑e2 + (π,ρ)22↑e2
                         + (π,ρ)23↑e2 + (π,ρ)27↑e2
                         + 3 (π,ρ)31↑e3 <= 12
 BwCapConstr_slink29#15: 4 (π,ρ)2↑e1 + 5 (π,ρ)3↑e1
                         + 5 (π,ρ)4↑e1 + 5 (π,ρ)5↑e1
                         + 4 (π,ρ)8↑e1 + (π,ρ)18↑e2
                         + (π,ρ)19↑e2 + (π,ρ)20↑e2
                         + 3 (π,ρ)41↑e3 <= 4
 BwCapConstr_slink30#16: 5 (π,ρ)0↑e1 + 5 (π,ρ)1↑e1
                         + 5 (π,ρ)2↑e1 + 5 (π,ρ)3↑e1
                         + 4 (π,ρ)6↑e1 + 4 (π,ρ)7↑e1
                         + 5 (π,ρ)9↑e1 + 5 (π,ρ)12↑e1
                         + 5 (π,ρ)13↑e1 + 5 (π,ρ)14↑e1
                         + (π,ρ)24↑e2 + (π,ρ)25↑e2
                         + (π,ρ)26↑e2 <= 8
 BwCapConstr_slink31#17: (π,ρ)2↑e1 + (π,ρ)8↑e1
                         + (π,ρ)24↑e2 + (π,ρ)25↑e2
                         + (π,ρ)26↑e2 + 3 (π,ρ)30↑e3
                         + (π,ρ)32↑e3 + 3 (π,ρ)33↑e3
                         + 3 (π,ρ)34↑e3 + 3 (π,ρ)35↑e3
                         + 3 (π,ρ)36↑e3 + 3 (π,ρ)37↑e3
                         + (π,ρ)38↑e3 + 3 (π,ρ)39↑e3
                         + 3 (π,ρ)40↑e3 + 3 (π,ρ)41↑e3
                         + 3 (π,ρ)42↑e3 <= 9
 BwCapConstr_slink32#18: 5 (π,ρ)7↑e1 + 5 (π,ρ)13↑e1 <= 16
 BwCapConstr_slink33#19: 4 (π,ρ)0↑e1 + (π,ρ)2↑e1
                         + 5 (π,ρ)3↑e1 + 2 (π,ρ)4↑e1
                         + (π,ρ)6↑e1 + (π,ρ)8↑e1
                         + 5 (π,ρ)9↑e1 + 2 (π,ρ)10↑e1
                         + 5 (π,ρ)12↑e1 + 5 (π,ρ)13↑e1
                         + 5 (π,ρ)14↑e1 + 3 (π,ρ)34↑e3
                         + 3 (π,ρ)37↑e3 + 3 (π,ρ)40↑e3
                         + 3 (π,ρ)41↑e3 + 3 (π,ρ)42↑e3
                         <= 8
 BwCapConstr_slink34#20: 5 (π,ρ)0↑e1 + 5 (π,ρ)1↑e1
                         + 4 (π,ρ)2↑e1 + 5 (π,ρ)3↑e1
                         + 2 (π,ρ)4↑e1 + 2 (π,ρ)5↑e1
                         + 4 (π,ρ)8↑e1 + 5 (π,ρ)9↑e1
                         + 2 (π,ρ)10↑e1 + 2 (π,ρ)11↑e1
                         + 5 (π,ρ)12↑e1 + 5 (π,ρ)13↑e1
                         + 5 (π,ρ)14↑e1 + 3 (π,ρ)34↑e3
                         + 3 (π,ρ)37↑e3 + 3 (π,ρ)40↑e3
                         + 3 (π,ρ)41↑e3 + 3 (π,ρ)42↑e3
                         <= 6
 BwCapConstr_slink35#21: 5 (π,ρ)0↑e1 + 5 (π,ρ)1↑e1
                         + 5 (π,ρ)2↑e1 + 5 (π,ρ)6↑e1
                         + 5 (π,ρ)7↑e1 + 5 (π,ρ)8↑e1
                         + 5 (π,ρ)12↑e1 + 5 (π,ρ)13↑e1
                         + (π,ρ)14↑e1 + 2 (π,ρ)32↑e3
                         + 3 (π,ρ)33↑e3 + 3 (π,ρ)36↑e3
                         + 2 (π,ρ)38↑e3 + 3 (π,ρ)39↑e3
                         + (π,ρ)41↑e3 <= 3
 BwCapConstr_slink36#22: 5 (π,ρ)3↑e1 + 5 (π,ρ)4↑e1
                         + 5 (π,ρ)5↑e1 + 5 (π,ρ)9↑e1
                         + 5 (π,ρ)10↑e1 + 5 (π,ρ)11↑e1
                         + 3 (π,ρ)30↑e3 + 3 (π,ρ)31↑e3
                         + 3 (π,ρ)32↑e3 + 3 (π,ρ)33↑e3
                         + 3 (π,ρ)34↑e3 + 3 (π,ρ)35↑e3
                         + 3 (π,ρ)36↑e3 + 3 (π,ρ)37↑e3
                         + 3 (π,ρ)38↑e3 <= 1
 BwCapConstr_slink37#23: 5 (π,ρ)9↑e1 + 5 (π,ρ)10↑e1
                         + 5 (π,ρ)11↑e1 + (π,ρ)21↑e2
                         + (π,ρ)22↑e2 + (π,ρ)23↑e2
                         + (π,ρ)25↑e2 + 3 (π,ρ)30↑e3
                         + 3 (π,ρ)35↑e3 + 3 (π,ρ)36↑e3
                         + 3 (π,ρ)37↑e3 + 3 (π,ρ)38↑e3
                         <= 15
 BwCapConstr_slink38#24: (π,ρ)15↑e2 + (π,ρ)16↑e2
                         + (π,ρ)17↑e2 + 3 (π,ρ)30↑e3
                         + 3 (π,ρ)31↑e3 + 3 (π,ρ)35↑e3
                         + 3 (π,ρ)36↑e3 + 3 (π,ρ)37↑e3
                         + 3 (π,ρ)38↑e3 + 2 (π,ρ)39↑e3
                         + 2 (π,ρ)40↑e3 + 2 (π,ρ)42↑e3
                         <= 12
 BwCapConstr_slink39#25: (π,ρ)18↑e2 + (π,ρ)19↑e2
                         + (π,ρ)20↑e2 + (π,ρ)21↑e2
                         + (π,ρ)22↑e2 + (π,ρ)23↑e2
                         + (π,ρ)24↑e2 + (π,ρ)25↑e2
                         + (π,ρ)26↑e2 + 3 (π,ρ)30↑e3
                         + 3 (π,ρ)31↑e3 + 3 (π,ρ)32↑e3
                         + 3 (π,ρ)33↑e3 + 3 (π,ρ)34↑e3
                         + 3 (π,ρ)36↑e3 + 3 (π,ρ)37↑e3
                         + 3 (π,ρ)39↑e3 + 3 (π,ρ)40↑e3
                         + 3 (π,ρ)41↑e3 + 3 (π,ρ)42↑e3
                         <= 11
 BwCapConstr_slink40#26: 3 (π,ρ)32↑e3 + 3 (π,ρ)33↑e3
                         + 3 (π,ρ)34↑e3 + 3 (π,ρ)35↑e3
                         + 3 (π,ρ)38↑e3 <= 6
 BwCapConstr_slink41#27: (π,ρ)27↑e2 + (π,ρ)28↑e2
                         + (π,ρ)29↑e2 <= 6
 BwCapConstr_slink43#28: (π,ρ)29↑e2 + 3 (π,ρ)32↑e3
                         + 3 (π,ρ)33↑e3 + 3 (π,ρ)34↑e3
                         + 3 (π,ρ)35↑e3 + 3 (π,ρ)38↑e3
                         + 2 (π,ρ)41↑e3 <= 11
Bounds
 0 <= vnp1 <= 1
 0 <= (π,ρ)0↑e1 <= 1
 0 <= (π,ρ)1↑e1 <= 1
 0 <= (π,ρ)2↑e1 <= 1
 0 <= (π,ρ)3↑e1 <= 1
 0 <= (π,ρ)4↑e1 <= 1
 0 <= (π,ρ)5↑e1 <= 1
 0 <= (π,ρ)6↑e1 <= 1
 0 <= (π,ρ)7↑e1 <= 1
 0 <= (π,ρ)8↑e1 <= 1
 0 <= (π,ρ)9↑e1 <= 1
 0 <= (π,ρ)10↑e1 <= 1
 0 <= (π,ρ)11↑e1 <= 1
 0 <= (π,ρ)12↑e1 <= 1
 0 <= (π,ρ)13↑e1 <= 1
 0 <= (π,ρ)14↑e1 <= 1
 0 <= (π,ρ)15↑e2 <= 1
 0 <= (π,ρ)16↑e2 <= 1
 0 <= (π,ρ)17↑e2 <= 1
 0 <= (π,ρ)18↑e2 <= 1
 0 <= (π,ρ)19↑e2 <= 1
 0 <= (π,ρ)20↑e2 <= 1
 0 <= (π,ρ)21↑e2 <= 1
 0 <= (π,ρ)22↑e2 <= 1
 0 <= (π,ρ)23↑e2 <= 1
 0 <= (π,ρ)24↑e2 <= 1
 0 <= (π,ρ)25↑e2 <= 1
 0 <= (π,ρ)26↑e2 <= 1
 0 <= (π,ρ)27↑e2 <= 1
 0 <= (π,ρ)28↑e2 <= 1
 0 <= (π,ρ)29↑e2 <= 1
 0 <= (π,ρ)30↑e3 <= 1
 0 <= (π,ρ)31↑e3 <= 1
 0 <= (π,ρ)32↑e3 <= 1
 0 <= (π,ρ)33↑e3 <= 1
 0 <= (π,ρ)34↑e3 <= 1
 0 <= (π,ρ)35↑e3 <= 1
 0 <= (π,ρ)36↑e3 <= 1
 0 <= (π,ρ)37↑e3 <= 1
 0 <= (π,ρ)38↑e3 <= 1
 0 <= (π,ρ)39↑e3 <= 1
 0 <= (π,ρ)40↑e3 <= 1
 0 <= (π,ρ)41↑e3 <= 1
 0 <= (π,ρ)42↑e3 <= 1
Binaries
 vnp1  (π,ρ)0↑e1  (π,ρ)1↑e1  (π,ρ)2↑e1 
 (π,ρ)3↑e1  (π,ρ)4↑e1  (π,ρ)5↑e1 
 (π,ρ)6↑e1  (π,ρ)7↑e1  (π,ρ)8↑e1 
 (π,ρ)9↑e1  (π,ρ)10↑e1  (π,ρ)11↑e1 
 (π,ρ)12↑e1  (π,ρ)13↑e1  (π,ρ)14↑e1 
 (π,ρ)15↑e2  (π,ρ)16↑e2  (π,ρ)17↑e2 
 (π,ρ)18↑e2  (π,ρ)19↑e2  (π,ρ)20↑e2 
 (π,ρ)21↑e2  (π,ρ)22↑e2  (π,ρ)23↑e2 
 (π,ρ)24↑e2  (π,ρ)25↑e2  (π,ρ)26↑e2 
 (π,ρ)27↑e2  (π,ρ)28↑e2  (π,ρ)29↑e2 
 (π,ρ)30↑e3  (π,ρ)31↑e3  (π,ρ)32↑e3 
 (π,ρ)33↑e3  (π,ρ)34↑e3  (π,ρ)35↑e3 
 (π,ρ)36↑e3  (π,ρ)37↑e3  (π,ρ)38↑e3 
 (π,ρ)39↑e3  (π,ρ)40↑e3  (π,ρ)41↑e3 
 (π,ρ)42↑e3 
End
