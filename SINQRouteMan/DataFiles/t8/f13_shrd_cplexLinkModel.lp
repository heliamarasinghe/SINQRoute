\ENCODING=ISO-8859-1
\Problem name: IloCplex

Maximize
 obj: 1195 vnp2 - 54 (π,ρ)0↑e5 - 58 (π,ρ)1↑e5
      - 64 (π,ρ)2↑e5 - 65 (π,ρ)3↑e5
      - 46 (π,ρ)4↑e5 - 50 (π,ρ)5↑e5
      - 56 (π,ρ)6↑e5 - 57 (π,ρ)7↑e5
      - 160 (π,ρ)8↑e7 - 187 (π,ρ)9↑e7
      - 250 (π,ρ)10↑e7 - 262 (π,ρ)11↑e7 + 809 vnp3
      - 34 (π,ρ)12↑e8 - 84 (π,ρ)13↑e9
      - 102 (π,ρ)14↑e9 - 102 (π,ρ)15↑e9
      - 108 (π,ρ)16↑e9 - 138 (π,ρ)17↑e9
      - 141 (π,ρ)18↑e9 - 147 (π,ρ)19↑e9 + 882 vnp4
      - 42 (π,ρ)20↑e11 - 42 (π,ρ)21↑e11
      - 64 (π,ρ)22↑e11 - 64 (π,ρ)23↑e11
      - 64 (π,ρ)24↑e11 - 82 (π,ρ)25↑e11
      - 104 (π,ρ)26↑e11 - 104 (π,ρ)27↑e11
      - 108 (π,ρ)28↑e11 - 80 (π,ρ)29↑e11
      - 84 (π,ρ)30↑e11 - 34 (π,ρ)31↑e12
      - 42 (π,ρ)32↑e12 - 59 (π,ρ)33↑e12
      - 60 (π,ρ)34↑e12 - 93 (π,ρ)35↑e13
      - 29 (π,ρ)36↑e14 - 29 (π,ρ)37↑e14
      - 29 (π,ρ)38↑e14 - 33 (π,ρ)39↑e14
      - 33 (π,ρ)40↑e14 - 21 (π,ρ)41↑e14
      - 21 (π,ρ)42↑e14 - 21 (π,ρ)43↑e14
      - 48 (π,ρ)44↑e14 - 50 (π,ρ)45↑e14
      - 23 (π,ρ)46↑e15 - 28 (π,ρ)47↑e15
      - 30 (π,ρ)48↑e15 - 37 (π,ρ)49↑e15
      - 14 (π,ρ)50↑e15 - 27 (π,ρ)51↑e15
      - 37 (π,ρ)52↑e15 + 1178 vnp5 - 24 (π,ρ)53↑e16
      - 36 (π,ρ)54↑e16 - 40 (π,ρ)55↑e16
      - 38 (π,ρ)56↑e16 - 38 (π,ρ)57↑e16
      - 38 (π,ρ)58↑e16 - 38 (π,ρ)59↑e16
      - 52 (π,ρ)60↑e16 - 66 (π,ρ)61↑e16
      - 68 (π,ρ)62↑e16 - 70 (π,ρ)63↑e17
      - 192 (π,ρ)64↑e19 + 601 vnp6 - 28 (π,ρ)65↑e20
      - 28 (π,ρ)66↑e20 - 34 (π,ρ)67↑e20
      - 34 (π,ρ)68↑e20 - 44 (π,ρ)69↑e20
      - 44 (π,ρ)70↑e20 - 46 (π,ρ)71↑e20
      - 50 (π,ρ)72↑e20 - 15 (π,ρ)73↑e21
      - 15 (π,ρ)74↑e21 - 15 (π,ρ)75↑e21
      - 45 (π,ρ)76↑e21 - 51 (π,ρ)77↑e21
      - 53 (π,ρ)78↑e21 - 55 (π,ρ)79↑e21
      - 45 (π,ρ)80↑e21 - 45 (π,ρ)81↑e21
      - 45 (π,ρ)82↑e21 - 44 (π,ρ)83↑e21
      - 46 (π,ρ)84↑e21 - 47 (π,ρ)85↑e21
      - 49 (π,ρ)86↑e21 - 72 (π,ρ)87↑e22
      - 60 (π,ρ)88↑e23 - 60 (π,ρ)89↑e23
      - 60 (π,ρ)90↑e23 - 72 (π,ρ)91↑e23
      - 135 (π,ρ)92↑e23 - 138 (π,ρ)93↑e23
      - 147 (π,ρ)94↑e23 - 147 (π,ρ)95↑e23 + 1569 vnp8
      - 63 (π,ρ)96↑e28 - 158 (π,ρ)97↑e29
      - 159 (π,ρ)98↑e29 - 120 (π,ρ)99↑e29
      - 150 (π,ρ)100↑e29 - 110 (π,ρ)101↑e30
Subject To
 _EmbdConstr_vnp2e4#0:   vnp2  = 0
 _EmbdConstr_vnp2e5#1:   vnp2 - (π,ρ)0↑e5 - (π,ρ)1↑e5
                         - (π,ρ)2↑e5 - (π,ρ)3↑e5
                         - (π,ρ)4↑e5 - (π,ρ)5↑e5
                         - (π,ρ)6↑e5 - (π,ρ)7↑e5  = 0
 _EmbdConstr_vnp2e6#2:   vnp2  = 0
 _EmbdConstr_vnp2e7#3:   vnp2 - (π,ρ)8↑e7 - (π,ρ)9↑e7
                         - (π,ρ)10↑e7 - (π,ρ)11↑e7  = 0
 _EmbdConstr_vnp3e8#4:   vnp3 - (π,ρ)12↑e8  = 0
 _EmbdConstr_vnp3e9#5:   vnp3 - (π,ρ)13↑e9 - (π,ρ)14↑e9
                         - (π,ρ)15↑e9 - (π,ρ)16↑e9
                         - (π,ρ)17↑e9 - (π,ρ)18↑e9
                         - (π,ρ)19↑e9  = 0
 _EmbdConstr_vnp3e10#6:  vnp3  = 0
 _EmbdConstr_vnp4e11#7:  vnp4 - (π,ρ)20↑e11 - (π,ρ)21↑e11
                         - (π,ρ)22↑e11 - (π,ρ)23↑e11
                         - (π,ρ)24↑e11 - (π,ρ)25↑e11
                         - (π,ρ)26↑e11 - (π,ρ)27↑e11
                         - (π,ρ)28↑e11 - (π,ρ)29↑e11
                         - (π,ρ)30↑e11  = 0
 _EmbdConstr_vnp4e12#8:  vnp4 - (π,ρ)31↑e12 - (π,ρ)32↑e12
                         - (π,ρ)33↑e12 - (π,ρ)34↑e12  = 0
 _EmbdConstr_vnp4e13#9:  vnp4 - (π,ρ)35↑e13  = 0
 _EmbdConstr_vnp4e14#10: vnp4 - (π,ρ)36↑e14 - (π,ρ)37↑e14
                         - (π,ρ)38↑e14 - (π,ρ)39↑e14
                         - (π,ρ)40↑e14 - (π,ρ)41↑e14
                         - (π,ρ)42↑e14 - (π,ρ)43↑e14
                         - (π,ρ)44↑e14 - (π,ρ)45↑e14  = 0
 _EmbdConstr_vnp4e15#11: vnp4 - (π,ρ)46↑e15 - (π,ρ)47↑e15
                         - (π,ρ)48↑e15 - (π,ρ)49↑e15
                         - (π,ρ)50↑e15 - (π,ρ)51↑e15
                         - (π,ρ)52↑e15  = 0
 _EmbdConstr_vnp5e16#12: vnp5 - (π,ρ)53↑e16 - (π,ρ)54↑e16
                         - (π,ρ)55↑e16 - (π,ρ)56↑e16
                         - (π,ρ)57↑e16 - (π,ρ)58↑e16
                         - (π,ρ)59↑e16 - (π,ρ)60↑e16
                         - (π,ρ)61↑e16 - (π,ρ)62↑e16  = 0
 _EmbdConstr_vnp5e17#13: vnp5 - (π,ρ)63↑e17  = 0
 _EmbdConstr_vnp5e18#14: vnp5  = 0
 _EmbdConstr_vnp5e19#15: vnp5 - (π,ρ)64↑e19  = 0
 _EmbdConstr_vnp6e20#16: vnp6 - (π,ρ)65↑e20 - (π,ρ)66↑e20
                         - (π,ρ)67↑e20 - (π,ρ)68↑e20
                         - (π,ρ)69↑e20 - (π,ρ)70↑e20
                         - (π,ρ)71↑e20 - (π,ρ)72↑e20  = 0
 _EmbdConstr_vnp6e21#17: vnp6 - (π,ρ)73↑e21 - (π,ρ)74↑e21
                         - (π,ρ)75↑e21 - (π,ρ)76↑e21
                         - (π,ρ)77↑e21 - (π,ρ)78↑e21
                         - (π,ρ)79↑e21 - (π,ρ)80↑e21
                         - (π,ρ)81↑e21 - (π,ρ)82↑e21
                         - (π,ρ)83↑e21 - (π,ρ)84↑e21
                         - (π,ρ)85↑e21 - (π,ρ)86↑e21  = 0
 _EmbdConstr_vnp6e22#18: vnp6 - (π,ρ)87↑e22  = 0
 _EmbdConstr_vnp6e23#19: vnp6 - (π,ρ)88↑e23 - (π,ρ)89↑e23
                         - (π,ρ)90↑e23 - (π,ρ)91↑e23
                         - (π,ρ)92↑e23 - (π,ρ)93↑e23
                         - (π,ρ)94↑e23 - (π,ρ)95↑e23  = 0
 _EmbdConstr_vnp8e28#20: vnp8 - (π,ρ)96↑e28  = 0
 _EmbdConstr_vnp8e29#21: vnp8 - (π,ρ)97↑e29 - (π,ρ)98↑e29
                         - (π,ρ)99↑e29 - (π,ρ)100↑e29
                          = 0
 _EmbdConstr_vnp8e30#22: vnp8 - (π,ρ)101↑e30  = 0
 _EmbdConstr_vnp8e31#23: vnp8  = 0
 BwCapConstr_slink1#24:  2 (π,ρ)53↑e16 + 2 (π,ρ)54↑e16
                         + 2 (π,ρ)55↑e16 + 2 (π,ρ)60↑e16
                         + 2 (π,ρ)61↑e16 + 2 (π,ρ)62↑e16
                         + (π,ρ)78↑e21 <= 20
 BwCapConstr_slink2#25:  2 (π,ρ)55↑e16 + 2 (π,ρ)56↑e16
                         + 2 (π,ρ)57↑e16 + 2 (π,ρ)58↑e16
                         + 2 (π,ρ)59↑e16 + 2 (π,ρ)61↑e16
                         + 2 (π,ρ)62↑e16 + (π,ρ)78↑e21
                         <= 20
 BwCapConstr_slink3#26:  2 (π,ρ)22↑e11 + 2 (π,ρ)23↑e11
                         + 2 (π,ρ)24↑e11 + 2 (π,ρ)26↑e11
                         + 4 (π,ρ)64↑e19 + 5 (π,ρ)101↑e30
                         <= 20
 BwCapConstr_slink4#27:  2 (π,ρ)28↑e11 + 4 (π,ρ)64↑e19
                         <= 20
 BwCapConstr_slink5#28:  2 (π,ρ)61↑e16 <= 20
 BwCapConstr_slink6#29:  (π,ρ)1↑e5 + (π,ρ)5↑e5
                         + 2 (π,ρ)53↑e16 + 2 (π,ρ)54↑e16
                         + 2 (π,ρ)55↑e16 + 2 (π,ρ)56↑e16
                         + 2 (π,ρ)58↑e16 + 2 (π,ρ)61↑e16
                         + (π,ρ)77↑e21 + (π,ρ)79↑e21
                         + (π,ρ)85↑e21 + 3 (π,ρ)92↑e23
                         + 3 (π,ρ)93↑e23 + 3 (π,ρ)94↑e23
                         + 3 (π,ρ)95↑e23 <= 9
 BwCapConstr_slink7#30:  2 (π,ρ)55↑e16 + 2 (π,ρ)56↑e16
                         + 2 (π,ρ)57↑e16 + 2 (π,ρ)62↑e16
                         + 5 (π,ρ)63↑e17 + 4 (π,ρ)64↑e19
                         <= 20
 BwCapConstr_slink8#31:  (π,ρ)1↑e5 + (π,ρ)5↑e5
                         + 2 (π,ρ)22↑e11 + 2 (π,ρ)23↑e11
                         + 2 (π,ρ)24↑e11 + 2 (π,ρ)26↑e11
                         + 2 (π,ρ)53↑e16 + 2 (π,ρ)58↑e16
                         + 2 (π,ρ)59↑e16 + 2 (π,ρ)60↑e16
                         + (π,ρ)78↑e21 + 5 (π,ρ)101↑e30
                         <= 20
 BwCapConstr_slink9#32:  (π,ρ)0↑e5 + (π,ρ)2↑e5
                         + (π,ρ)3↑e5 + (π,ρ)4↑e5
                         + (π,ρ)6↑e5 + (π,ρ)7↑e5
                         + (π,ρ)9↑e7 + 2 (π,ρ)25↑e11
                         + 2 (π,ρ)26↑e11 + 2 (π,ρ)27↑e11
                         + 2 (π,ρ)28↑e11 + 2 (π,ρ)29↑e11
                         + (π,ρ)44↑e14 + 2 (π,ρ)53↑e16
                         + 2 (π,ρ)58↑e16 + 2 (π,ρ)59↑e16
                         + 2 (π,ρ)60↑e16 + 5 (π,ρ)63↑e17
                         + 4 (π,ρ)64↑e19 + (π,ρ)77↑e21
                         + (π,ρ)79↑e21 <= 12
 BwCapConstr_slink10#33: 3 (π,ρ)18↑e9 + 2 (π,ρ)20↑e11
                         + 2 (π,ρ)21↑e11 + 2 (π,ρ)25↑e11
                         + 2 (π,ρ)26↑e11 + 2 (π,ρ)27↑e11
                         + 2 (π,ρ)28↑e11 + 2 (π,ρ)29↑e11
                         + 2 (π,ρ)30↑e11 + 3 (π,ρ)35↑e13
                         + (π,ρ)41↑e14 + (π,ρ)42↑e14
                         + (π,ρ)43↑e14 + (π,ρ)45↑e14
                         + 5 (π,ρ)96↑e28 + 5 (π,ρ)97↑e29
                         + 5 (π,ρ)98↑e29 + 5 (π,ρ)101↑e30
                         <= 20
 BwCapConstr_slink11#34: (π,ρ)3↑e5 + (π,ρ)7↑e5
                         + 2 (π,ρ)25↑e11 + 2 (π,ρ)27↑e11
                         + 2 (π,ρ)30↑e11 + 3 (π,ρ)35↑e13
                         + (π,ρ)41↑e14 + (π,ρ)42↑e14
                         + (π,ρ)43↑e14 + (π,ρ)45↑e14
                         + (π,ρ)96↑e28 + 5 (π,ρ)99↑e29
                         + 5 (π,ρ)100↑e29 <= 20
 BwCapConstr_slink12#35: (π,ρ)0↑e5 + (π,ρ)1↑e5
                         + (π,ρ)2↑e5 + (π,ρ)3↑e5
                         + (π,ρ)4↑e5 + (π,ρ)5↑e5
                         + (π,ρ)6↑e5 + (π,ρ)7↑e5
                         + 2 (π,ρ)25↑e11 + 2 (π,ρ)26↑e11
                         + 2 (π,ρ)27↑e11 + 2 (π,ρ)28↑e11
                         + 3 (π,ρ)92↑e23 + 3 (π,ρ)93↑e23
                         + 3 (π,ρ)94↑e23 + 3 (π,ρ)95↑e23
                         <= 7
 BwCapConstr_slink13#36: (π,ρ)9↑e7 + (π,ρ)33↑e12
                         + (π,ρ)36↑e14 + (π,ρ)44↑e14
                         + 2 (π,ρ)54↑e16 + 2 (π,ρ)57↑e16
                         + 2 (π,ρ)59↑e16 + 2 (π,ρ)60↑e16
                         + 2 (π,ρ)61↑e16 + 2 (π,ρ)62↑e16
                         + (π,ρ)86↑e21 <= 7
 BwCapConstr_slink14#37: (π,ρ)34↑e12 + (π,ρ)37↑e14
                         + 2 (π,ρ)54↑e16 + 2 (π,ρ)60↑e16
                         + 2 (π,ρ)61↑e16 + 2 (π,ρ)62↑e16
                         + (π,ρ)98↑e29 <= 9
 BwCapConstr_slink15#38: (π,ρ)77↑e21 + (π,ρ)78↑e21
                         + (π,ρ)79↑e21 + (π,ρ)85↑e21
                         + 3 (π,ρ)92↑e23 + 3 (π,ρ)93↑e23
                         + 3 (π,ρ)94↑e23 + 3 (π,ρ)95↑e23
                         <= 13
 BwCapConstr_slink16#39: (π,ρ)38↑e14 + (π,ρ)76↑e21
                         + (π,ρ)77↑e21 + (π,ρ)78↑e21
                         + (π,ρ)79↑e21 + (π,ρ)84↑e21
                         + (π,ρ)86↑e21 + 3 (π,ρ)87↑e22
                         + 3 (π,ρ)93↑e23 <= 17
 BwCapConstr_slink17#40: <= 20
 BwCapConstr_slink18#41: (π,ρ)83↑e21 + (π,ρ)84↑e21
                         + (π,ρ)85↑e21 + (π,ρ)86↑e21
                         + 3 (π,ρ)88↑e23 + 3 (π,ρ)89↑e23
                         + 3 (π,ρ)90↑e23 + 3 (π,ρ)92↑e23
                         <= 20
 BwCapConstr_slink19#42: (π,ρ)83↑e21 + (π,ρ)84↑e21
                         + (π,ρ)85↑e21 + (π,ρ)86↑e21
                         + 3 (π,ρ)88↑e23 + 3 (π,ρ)89↑e23
                         + 3 (π,ρ)90↑e23 + 3 (π,ρ)92↑e23
                         <= 20
 BwCapConstr_slink20#43: 5 (π,ρ)9↑e7 + 2 (π,ρ)20↑e11
                         + 2 (π,ρ)21↑e11 + 2 (π,ρ)22↑e11
                         + 2 (π,ρ)23↑e11 + 2 (π,ρ)24↑e11
                         + 2 (π,ρ)29↑e11 + (π,ρ)31↑e12
                         + (π,ρ)32↑e12 + (π,ρ)33↑e12
                         + (π,ρ)34↑e12 + (π,ρ)36↑e14
                         + (π,ρ)37↑e14 + (π,ρ)38↑e14
                         + (π,ρ)44↑e14 + (π,ρ)76↑e21
                         + (π,ρ)77↑e21 + (π,ρ)78↑e21
                         + (π,ρ)79↑e21 + (π,ρ)84↑e21
                         + 3 (π,ρ)87↑e22 + 3 (π,ρ)93↑e23
                         <= 15
 BwCapConstr_slink21#44: (π,ρ)0↑e5 + (π,ρ)1↑e5
                         + (π,ρ)2↑e5 + (π,ρ)3↑e5
                         + 5 (π,ρ)9↑e7 + (π,ρ)33↑e12
                         + (π,ρ)34↑e12 + (π,ρ)85↑e21
                         + 3 (π,ρ)91↑e23 + 3 (π,ρ)95↑e23
                         <= 18
 BwCapConstr_slink22#45: 3 (π,ρ)16↑e9 + 3 (π,ρ)17↑e9
                         + 3 (π,ρ)18↑e9 + 3 (π,ρ)19↑e9
                         + 2 (π,ρ)20↑e11 + 2 (π,ρ)21↑e11
                         + 2 (π,ρ)22↑e11 + 2 (π,ρ)23↑e11
                         + 2 (π,ρ)24↑e11 + 2 (π,ρ)25↑e11
                         + 2 (π,ρ)26↑e11 + 2 (π,ρ)28↑e11
                         + 2 (π,ρ)30↑e11 + (π,ρ)36↑e14
                         + (π,ρ)37↑e14 + (π,ρ)38↑e14
                         + (π,ρ)39↑e14 + (π,ρ)40↑e14
                         + (π,ρ)41↑e14 + (π,ρ)42↑e14
                         + (π,ρ)43↑e14 + (π,ρ)45↑e14
                         + (π,ρ)69↑e20 + (π,ρ)70↑e20
                         + (π,ρ)71↑e20 + (π,ρ)72↑e20
                         <= 20
 BwCapConstr_slink23#46: (π,ρ)4↑e5 + (π,ρ)5↑e5
                         + (π,ρ)6↑e5 + (π,ρ)7↑e5
                         + 3 (π,ρ)16↑e9 + 3 (π,ρ)17↑e9
                         + 3 (π,ρ)18↑e9 + 3 (π,ρ)19↑e9
                         + 2 (π,ρ)27↑e11 + 2 (π,ρ)29↑e11
                         + 2 (π,ρ)30↑e11 + (π,ρ)31↑e12
                         + (π,ρ)32↑e12 + (π,ρ)44↑e14
                         + (π,ρ)45↑e14 + (π,ρ)69↑e20
                         + (π,ρ)70↑e20 + (π,ρ)71↑e20
                         + (π,ρ)72↑e20 + (π,ρ)76↑e21
                         + (π,ρ)77↑e21 + (π,ρ)78↑e21
                         + (π,ρ)79↑e21 + (π,ρ)83↑e21
                         + (π,ρ)84↑e21 + (π,ρ)85↑e21
                         + (π,ρ)86↑e21 + 3 (π,ρ)87↑e22
                         + 3 (π,ρ)94↑e23 + (π,ρ)97↑e29
                         + (π,ρ)98↑e29 <= 12
 BwCapConstr_slink24#47: 2 (π,ρ)29↑e11 + 2 (π,ρ)30↑e11
                         + (π,ρ)44↑e14 + (π,ρ)45↑e14
                         + (π,ρ)52↑e15 <= 20
 BwCapConstr_slink25#48: (π,ρ)11↑e7 + 2 (π,ρ)12↑e8
                         + 3 (π,ρ)13↑e9 + 3 (π,ρ)14↑e9
                         + 3 (π,ρ)15↑e9 + (π,ρ)34↑e12
                         + 3 (π,ρ)35↑e13 + (π,ρ)39↑e14
                         + (π,ρ)40↑e14 + (π,ρ)47↑e15
                         + (π,ρ)49↑e15 + (π,ρ)79↑e21
                         + 5 (π,ρ)97↑e29 + 5 (π,ρ)98↑e29
                         + 5 (π,ρ)99↑e29 + 5 (π,ρ)100↑e29
                         <= 12
 BwCapConstr_slink26#49: (π,ρ)1↑e5 + (π,ρ)2↑e5
                         + (π,ρ)5↑e5 + (π,ρ)6↑e5
                         + (π,ρ)11↑e7 + 3 (π,ρ)13↑e9
                         + 3 (π,ρ)14↑e9 + 3 (π,ρ)15↑e9
                         + 3 (π,ρ)16↑e9 + 3 (π,ρ)17↑e9
                         + 3 (π,ρ)19↑e9 + 2 (π,ρ)27↑e11
                         + 2 (π,ρ)28↑e11 + (π,ρ)31↑e12
                         + (π,ρ)32↑e12 + (π,ρ)36↑e14
                         + (π,ρ)37↑e14 + (π,ρ)38↑e14
                         + (π,ρ)44↑e14 + (π,ρ)45↑e14
                         + (π,ρ)47↑e15 + (π,ρ)49↑e15
                         + (π,ρ)51↑e15 + (π,ρ)52↑e15
                         + 4 (π,ρ)64↑e19 + (π,ρ)65↑e20
                         + (π,ρ)66↑e20 + (π,ρ)67↑e20
                         + (π,ρ)68↑e20 + (π,ρ)69↑e20
                         + (π,ρ)70↑e20 + (π,ρ)71↑e20
                         + (π,ρ)72↑e20 + 5 (π,ρ)96↑e28
                         + 5 (π,ρ)97↑e29 + 5 (π,ρ)98↑e29
                         <= 16
 BwCapConstr_slink27#50: (π,ρ)39↑e14 + (π,ρ)40↑e14
                         + (π,ρ)48↑e15 + (π,ρ)49↑e15
                         + (π,ρ)65↑e20 + (π,ρ)66↑e20
                         + (π,ρ)71↑e20 + 5 (π,ρ)99↑e29
                         <= 20
 BwCapConstr_slink28#51: 5 (π,ρ)9↑e7 + 5 (π,ρ)11↑e7
                         + (π,ρ)65↑e20 + (π,ρ)66↑e20
                         + (π,ρ)67↑e20 + (π,ρ)68↑e20
                         + (π,ρ)71↑e20 + 5 (π,ρ)97↑e29
                         + 5 (π,ρ)98↑e29 <= 12
 BwCapConstr_slink29#52: (π,ρ)4↑e5 + (π,ρ)5↑e5
                         + (π,ρ)6↑e5 + (π,ρ)7↑e5
                         + 3 (π,ρ)16↑e9 + 3 (π,ρ)17↑e9
                         + 3 (π,ρ)18↑e9 + 3 (π,ρ)19↑e9
                         + (π,ρ)31↑e12 + (π,ρ)52↑e15
                         + (π,ρ)80↑e21 + (π,ρ)81↑e21
                         + (π,ρ)82↑e21 <= 20
 BwCapConstr_slink30#53: 5 (π,ρ)8↑e7 + 5 (π,ρ)9↑e7
                         + 5 (π,ρ)10↑e7 + 5 (π,ρ)11↑e7
                         + (π,ρ)32↑e12 + (π,ρ)73↑e21
                         + (π,ρ)74↑e21 + (π,ρ)75↑e21
                         + (π,ρ)76↑e21 + (π,ρ)83↑e21
                         + 3 (π,ρ)94↑e23 <= 20
 BwCapConstr_slink31#54: (π,ρ)0↑e5 + (π,ρ)1↑e5
                         + (π,ρ)2↑e5 + (π,ρ)3↑e5
                         + 5 (π,ρ)8↑e7 + 5 (π,ρ)11↑e7
                         + (π,ρ)32↑e12 + (π,ρ)80↑e21
                         + (π,ρ)81↑e21 + (π,ρ)82↑e21
                         <= 20
 BwCapConstr_slink33#55: (π,ρ)73↑e21 + (π,ρ)74↑e21
                         + (π,ρ)75↑e21 + (π,ρ)76↑e21
                         + (π,ρ)80↑e21 + (π,ρ)81↑e21
                         + (π,ρ)82↑e21 + (π,ρ)83↑e21
                         + 3 (π,ρ)91↑e23 + 3 (π,ρ)94↑e23
                         + 3 (π,ρ)95↑e23 <= 18
 BwCapConstr_slink35#56: 5 (π,ρ)10↑e7 + (π,ρ)33↑e12
                         + (π,ρ)34↑e12 <= 20
 BwCapConstr_slink36#57: 5 (π,ρ)10↑e7 + (π,ρ)33↑e12
                         + (π,ρ)34↑e12 <= 16
 BwCapConstr_slink37#58: 5 (π,ρ)11↑e7 + 2 (π,ρ)12↑e8
                         + (π,ρ)48↑e15 + (π,ρ)49↑e15
                         + (π,ρ)72↑e20 <= 20
 BwCapConstr_slink38#59: 5 (π,ρ)8↑e7 + 5 (π,ρ)9↑e7
                         + 5 (π,ρ)10↑e7 + 5 (π,ρ)11↑e7
                         + 3 (π,ρ)13↑e9 + (π,ρ)67↑e20
                         + (π,ρ)68↑e20 + (π,ρ)69↑e20
                         + 5 (π,ρ)100↑e29 <= 20
 BwCapConstr_slink39#60: (π,ρ)2↑e5 + (π,ρ)6↑e5
                         + 5 (π,ρ)8↑e7 + 5 (π,ρ)9↑e7
                         + 5 (π,ρ)10↑e7 + 5 (π,ρ)11↑e7
                         + 3 (π,ρ)35↑e13 + (π,ρ)46↑e15
                         + (π,ρ)47↑e15 + (π,ρ)50↑e15
                         + (π,ρ)51↑e15 + (π,ρ)69↑e20
                         <= 20
 BwCapConstr_slink40#61: (π,ρ)0↑e5 + (π,ρ)1↑e5
                         + (π,ρ)3↑e5 + (π,ρ)4↑e5
                         + (π,ρ)5↑e5 + (π,ρ)7↑e5
                         + 3 (π,ρ)13↑e9 + 3 (π,ρ)14↑e9
                         + 3 (π,ρ)15↑e9 + 3 (π,ρ)18↑e9
                         + 3 (π,ρ)35↑e13 + (π,ρ)46↑e15
                         + (π,ρ)47↑e15 + (π,ρ)69↑e20
                         + (π,ρ)70↑e20 + (π,ρ)72↑e20
                         <= 16
 BwCapConstr_slink41#62: 3 (π,ρ)17↑e9 + (π,ρ)46↑e15
                         + (π,ρ)50↑e15 + (π,ρ)51↑e15
                         + (π,ρ)67↑e20 + (π,ρ)68↑e20
                         + 5 (π,ρ)100↑e29 <= 20
 BwCapConstr_slink42#63: (π,ρ)1↑e5 + (π,ρ)3↑e5
                         + (π,ρ)5↑e5 + (π,ρ)7↑e5
                         + 3 (π,ρ)13↑e9 + 3 (π,ρ)14↑e9
                         + 3 (π,ρ)15↑e9 + 3 (π,ρ)18↑e9
                         + 3 (π,ρ)19↑e9 + 2 (π,ρ)28↑e11
                         + 3 (π,ρ)35↑e13 + (π,ρ)46↑e15
                         + (π,ρ)47↑e15 + (π,ρ)48↑e15
                         + (π,ρ)50↑e15 + (π,ρ)52↑e15
                         + (π,ρ)69↑e20 + (π,ρ)70↑e20
                         + (π,ρ)72↑e20 <= 16
 BwCapConstr_slink43#64: <= 20
 BwCapConstr_slink44#65: <= 20
Bounds
 0 <= vnp2 <= 1
 0 <= (π,ρ)0↑e5 <= 1
 0 <= (π,ρ)1↑e5 <= 1
 0 <= (π,ρ)2↑e5 <= 1
 0 <= (π,ρ)3↑e5 <= 1
 0 <= (π,ρ)4↑e5 <= 1
 0 <= (π,ρ)5↑e5 <= 1
 0 <= (π,ρ)6↑e5 <= 1
 0 <= (π,ρ)7↑e5 <= 1
 0 <= (π,ρ)8↑e7 <= 1
 0 <= (π,ρ)9↑e7 <= 1
 0 <= (π,ρ)10↑e7 <= 1
 0 <= (π,ρ)11↑e7 <= 1
 0 <= vnp3 <= 1
 0 <= (π,ρ)12↑e8 <= 1
 0 <= (π,ρ)13↑e9 <= 1
 0 <= (π,ρ)14↑e9 <= 1
 0 <= (π,ρ)15↑e9 <= 1
 0 <= (π,ρ)16↑e9 <= 1
 0 <= (π,ρ)17↑e9 <= 1
 0 <= (π,ρ)18↑e9 <= 1
 0 <= (π,ρ)19↑e9 <= 1
 0 <= vnp4 <= 1
 0 <= (π,ρ)20↑e11 <= 1
 0 <= (π,ρ)21↑e11 <= 1
 0 <= (π,ρ)22↑e11 <= 1
 0 <= (π,ρ)23↑e11 <= 1
 0 <= (π,ρ)24↑e11 <= 1
 0 <= (π,ρ)25↑e11 <= 1
 0 <= (π,ρ)26↑e11 <= 1
 0 <= (π,ρ)27↑e11 <= 1
 0 <= (π,ρ)28↑e11 <= 1
 0 <= (π,ρ)29↑e11 <= 1
 0 <= (π,ρ)30↑e11 <= 1
 0 <= (π,ρ)31↑e12 <= 1
 0 <= (π,ρ)32↑e12 <= 1
 0 <= (π,ρ)33↑e12 <= 1
 0 <= (π,ρ)34↑e12 <= 1
 0 <= (π,ρ)35↑e13 <= 1
 0 <= (π,ρ)36↑e14 <= 1
 0 <= (π,ρ)37↑e14 <= 1
 0 <= (π,ρ)38↑e14 <= 1
 0 <= (π,ρ)39↑e14 <= 1
 0 <= (π,ρ)40↑e14 <= 1
 0 <= (π,ρ)41↑e14 <= 1
 0 <= (π,ρ)42↑e14 <= 1
 0 <= (π,ρ)43↑e14 <= 1
 0 <= (π,ρ)44↑e14 <= 1
 0 <= (π,ρ)45↑e14 <= 1
 0 <= (π,ρ)46↑e15 <= 1
 0 <= (π,ρ)47↑e15 <= 1
 0 <= (π,ρ)48↑e15 <= 1
 0 <= (π,ρ)49↑e15 <= 1
 0 <= (π,ρ)50↑e15 <= 1
 0 <= (π,ρ)51↑e15 <= 1
 0 <= (π,ρ)52↑e15 <= 1
 0 <= vnp5 <= 1
 0 <= (π,ρ)53↑e16 <= 1
 0 <= (π,ρ)54↑e16 <= 1
 0 <= (π,ρ)55↑e16 <= 1
 0 <= (π,ρ)56↑e16 <= 1
 0 <= (π,ρ)57↑e16 <= 1
 0 <= (π,ρ)58↑e16 <= 1
 0 <= (π,ρ)59↑e16 <= 1
 0 <= (π,ρ)60↑e16 <= 1
 0 <= (π,ρ)61↑e16 <= 1
 0 <= (π,ρ)62↑e16 <= 1
 0 <= (π,ρ)63↑e17 <= 1
 0 <= (π,ρ)64↑e19 <= 1
 0 <= vnp6 <= 1
 0 <= (π,ρ)65↑e20 <= 1
 0 <= (π,ρ)66↑e20 <= 1
 0 <= (π,ρ)67↑e20 <= 1
 0 <= (π,ρ)68↑e20 <= 1
 0 <= (π,ρ)69↑e20 <= 1
 0 <= (π,ρ)70↑e20 <= 1
 0 <= (π,ρ)71↑e20 <= 1
 0 <= (π,ρ)72↑e20 <= 1
 0 <= (π,ρ)73↑e21 <= 1
 0 <= (π,ρ)74↑e21 <= 1
 0 <= (π,ρ)75↑e21 <= 1
 0 <= (π,ρ)76↑e21 <= 1
 0 <= (π,ρ)77↑e21 <= 1
 0 <= (π,ρ)78↑e21 <= 1
 0 <= (π,ρ)79↑e21 <= 1
 0 <= (π,ρ)80↑e21 <= 1
 0 <= (π,ρ)81↑e21 <= 1
 0 <= (π,ρ)82↑e21 <= 1
 0 <= (π,ρ)83↑e21 <= 1
 0 <= (π,ρ)84↑e21 <= 1
 0 <= (π,ρ)85↑e21 <= 1
 0 <= (π,ρ)86↑e21 <= 1
 0 <= (π,ρ)87↑e22 <= 1
 0 <= (π,ρ)88↑e23 <= 1
 0 <= (π,ρ)89↑e23 <= 1
 0 <= (π,ρ)90↑e23 <= 1
 0 <= (π,ρ)91↑e23 <= 1
 0 <= (π,ρ)92↑e23 <= 1
 0 <= (π,ρ)93↑e23 <= 1
 0 <= (π,ρ)94↑e23 <= 1
 0 <= (π,ρ)95↑e23 <= 1
 0 <= vnp8 <= 1
 0 <= (π,ρ)96↑e28 <= 1
 0 <= (π,ρ)97↑e29 <= 1
 0 <= (π,ρ)98↑e29 <= 1
 0 <= (π,ρ)99↑e29 <= 1
 0 <= (π,ρ)100↑e29 <= 1
 0 <= (π,ρ)101↑e30 <= 1
Binaries
 vnp2  (π,ρ)0↑e5  (π,ρ)1↑e5  (π,ρ)2↑e5 
 (π,ρ)3↑e5  (π,ρ)4↑e5  (π,ρ)5↑e5 
 (π,ρ)6↑e5  (π,ρ)7↑e5  (π,ρ)8↑e7 
 (π,ρ)9↑e7  (π,ρ)10↑e7  (π,ρ)11↑e7  vnp3 
 (π,ρ)12↑e8  (π,ρ)13↑e9  (π,ρ)14↑e9 
 (π,ρ)15↑e9  (π,ρ)16↑e9  (π,ρ)17↑e9 
 (π,ρ)18↑e9  (π,ρ)19↑e9  vnp4  (π,ρ)20↑e11 
 (π,ρ)21↑e11  (π,ρ)22↑e11  (π,ρ)23↑e11 
 (π,ρ)24↑e11  (π,ρ)25↑e11  (π,ρ)26↑e11 
 (π,ρ)27↑e11  (π,ρ)28↑e11  (π,ρ)29↑e11 
 (π,ρ)30↑e11  (π,ρ)31↑e12  (π,ρ)32↑e12 
 (π,ρ)33↑e12  (π,ρ)34↑e12  (π,ρ)35↑e13 
 (π,ρ)36↑e14  (π,ρ)37↑e14  (π,ρ)38↑e14 
 (π,ρ)39↑e14  (π,ρ)40↑e14  (π,ρ)41↑e14 
 (π,ρ)42↑e14  (π,ρ)43↑e14  (π,ρ)44↑e14 
 (π,ρ)45↑e14  (π,ρ)46↑e15  (π,ρ)47↑e15 
 (π,ρ)48↑e15  (π,ρ)49↑e15  (π,ρ)50↑e15 
 (π,ρ)51↑e15  (π,ρ)52↑e15  vnp5  (π,ρ)53↑e16 
 (π,ρ)54↑e16  (π,ρ)55↑e16  (π,ρ)56↑e16 
 (π,ρ)57↑e16  (π,ρ)58↑e16  (π,ρ)59↑e16 
 (π,ρ)60↑e16  (π,ρ)61↑e16  (π,ρ)62↑e16 
 (π,ρ)63↑e17  (π,ρ)64↑e19  vnp6  (π,ρ)65↑e20 
 (π,ρ)66↑e20  (π,ρ)67↑e20  (π,ρ)68↑e20 
 (π,ρ)69↑e20  (π,ρ)70↑e20  (π,ρ)71↑e20 
 (π,ρ)72↑e20  (π,ρ)73↑e21  (π,ρ)74↑e21 
 (π,ρ)75↑e21  (π,ρ)76↑e21  (π,ρ)77↑e21 
 (π,ρ)78↑e21  (π,ρ)79↑e21  (π,ρ)80↑e21 
 (π,ρ)81↑e21  (π,ρ)82↑e21  (π,ρ)83↑e21 
 (π,ρ)84↑e21  (π,ρ)85↑e21  (π,ρ)86↑e21 
 (π,ρ)87↑e22  (π,ρ)88↑e23  (π,ρ)89↑e23 
 (π,ρ)90↑e23  (π,ρ)91↑e23  (π,ρ)92↑e23 
 (π,ρ)93↑e23  (π,ρ)94↑e23  (π,ρ)95↑e23  vnp8 
 (π,ρ)96↑e28  (π,ρ)97↑e29  (π,ρ)98↑e29 
 (π,ρ)99↑e29  (π,ρ)100↑e29  (π,ρ)101↑e30 
End
