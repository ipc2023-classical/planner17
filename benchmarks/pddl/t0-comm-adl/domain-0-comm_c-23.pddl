(define (domain COMM)
(:requirements :negative-preconditions :conditional-effects)
	(:predicates
(kREAD_P0)
(kREAD_P0__NOISY_P0)
(kREAD_P0__-NOISY_P0)
(kREAD_P1)
(kREAD_P1__NOISY_P1)
(kREAD_P1__-NOISY_P1)
(kREAD_P10)
(kREAD_P10__NOISY_P10)
(kREAD_P10__-NOISY_P10)
(kREAD_P2)
(kREAD_P2__NOISY_P2)
(kREAD_P2__-NOISY_P2)
(kREAD_P3)
(kREAD_P3__NOISY_P3)
(kREAD_P3__-NOISY_P3)
(kREAD_P4)
(kREAD_P4__NOISY_P4)
(kREAD_P4__-NOISY_P4)
(kREAD_P5)
(kREAD_P5__NOISY_P5)
(kREAD_P5__-NOISY_P5)
(kREAD_P6)
(kREAD_P6__NOISY_P6)
(kREAD_P6__-NOISY_P6)
(kREAD_P7)
(kREAD_P7__NOISY_P7)
(kREAD_P7__-NOISY_P7)
(kREAD_P8)
(kREAD_P8__NOISY_P8)
(kREAD_P8__-NOISY_P8)
(kREAD_P9)
(kREAD_P9__NOISY_P9)
(kREAD_P9__-NOISY_P9)
(kOK_P0)
(kOK_P0__NOISY_P0)
(kOK_P0__-NOISY_P0)
(kOK_P1)
(kOK_P1__NOISY_P1)
(kOK_P1__-NOISY_P1)
(kOK_P10)
(kOK_P10__NOISY_P10)
(kOK_P10__-NOISY_P10)
(kOK_P2)
(kOK_P2__NOISY_P2)
(kOK_P2__-NOISY_P2)
(kOK_P3)
(kOK_P3__NOISY_P3)
(kOK_P3__-NOISY_P3)
(kOK_P4)
(kOK_P4__NOISY_P4)
(kOK_P4__-NOISY_P4)
(kOK_P5)
(kOK_P5__NOISY_P5)
(kOK_P5__-NOISY_P5)
(kOK_P6)
(kOK_P6__NOISY_P6)
(kOK_P6__-NOISY_P6)
(kOK_P7)
(kOK_P7__NOISY_P7)
(kOK_P7__-NOISY_P7)
(kOK_P8)
(kOK_P8__NOISY_P8)
(kOK_P8__-NOISY_P8)
(kOK_P9)
(kOK_P9__NOISY_P9)
(kOK_P9__-NOISY_P9)
(kREAD_P11)
(kREAD_P11__NOISY_P11)
(kREAD_P11__-NOISY_P11)
(kREAD_P12)
(kREAD_P12__NOISY_P12)
(kREAD_P12__-NOISY_P12)
(kREAD_P13)
(kREAD_P13__NOISY_P13)
(kREAD_P13__-NOISY_P13)
(kREAD_P14)
(kREAD_P14__NOISY_P14)
(kREAD_P14__-NOISY_P14)
(kREAD_P15)
(kREAD_P15__NOISY_P15)
(kREAD_P15__-NOISY_P15)
(kREAD_P16)
(kREAD_P16__NOISY_P16)
(kREAD_P16__-NOISY_P16)
(kREAD_P17)
(kREAD_P17__NOISY_P17)
(kREAD_P17__-NOISY_P17)
(kREAD_P18)
(kREAD_P18__NOISY_P18)
(kREAD_P18__-NOISY_P18)
(kREAD_P19)
(kREAD_P19__NOISY_P19)
(kREAD_P19__-NOISY_P19)
(kREAD_P20)
(kREAD_P20__NOISY_P20)
(kREAD_P20__-NOISY_P20)
(kREAD_P21)
(kREAD_P21__NOISY_P21)
(kREAD_P21__-NOISY_P21)
(kREAD_P22)
(kREAD_P22__NOISY_P22)
(kREAD_P22__-NOISY_P22)
(kREAD_P23)
(kREAD_P23__NOISY_P23)
(kREAD_P23__-NOISY_P23)
(kREAD_P24)
(kREAD_P24__NOISY_P24)
(kREAD_P24__-NOISY_P24)
(kREAD_P25)
(kREAD_P25__NOISY_P25)
(kREAD_P25__-NOISY_P25)
(kREAD_P26)
(kREAD_P26__NOISY_P26)
(kREAD_P26__-NOISY_P26)
(kREAD_P27)
(kREAD_P27__NOISY_P27)
(kREAD_P27__-NOISY_P27)
(kREAD_P28)
(kREAD_P28__NOISY_P28)
(kREAD_P28__-NOISY_P28)
(kREAD_P29)
(kREAD_P29__NOISY_P29)
(kREAD_P29__-NOISY_P29)
(kREAD_P30)
(kREAD_P30__NOISY_P30)
(kREAD_P30__-NOISY_P30)
(kREAD_P31)
(kREAD_P31__NOISY_P31)
(kREAD_P31__-NOISY_P31)
(kREAD_P32)
(kREAD_P32__NOISY_P32)
(kREAD_P32__-NOISY_P32)
(kREAD_P33)
(kREAD_P33__NOISY_P33)
(kREAD_P33__-NOISY_P33)
(kREAD_P34)
(kREAD_P34__NOISY_P34)
(kREAD_P34__-NOISY_P34)
(kREAD_P35)
(kREAD_P35__NOISY_P35)
(kREAD_P35__-NOISY_P35)
(kREAD_P36)
(kREAD_P36__NOISY_P36)
(kREAD_P36__-NOISY_P36)
(kREAD_P37)
(kREAD_P37__NOISY_P37)
(kREAD_P37__-NOISY_P37)
(kREAD_P38)
(kREAD_P38__NOISY_P38)
(kREAD_P38__-NOISY_P38)
(kREAD_P39)
(kREAD_P39__NOISY_P39)
(kREAD_P39__-NOISY_P39)
(kREAD_P40)
(kREAD_P40__NOISY_P40)
(kREAD_P40__-NOISY_P40)
(kREAD_P41)
(kREAD_P41__NOISY_P41)
(kREAD_P41__-NOISY_P41)
(kREAD_P42)
(kREAD_P42__NOISY_P42)
(kREAD_P42__-NOISY_P42)
(kREAD_P43)
(kREAD_P43__NOISY_P43)
(kREAD_P43__-NOISY_P43)
(kREAD_P44)
(kREAD_P44__NOISY_P44)
(kREAD_P44__-NOISY_P44)
(kREAD_P45)
(kREAD_P45__NOISY_P45)
(kREAD_P45__-NOISY_P45)
(kREAD_P46)
(kREAD_P46__NOISY_P46)
(kREAD_P46__-NOISY_P46)
(kREAD_P47)
(kREAD_P47__NOISY_P47)
(kREAD_P47__-NOISY_P47)
(kREAD_P48)
(kREAD_P48__NOISY_P48)
(kREAD_P48__-NOISY_P48)
(kREAD_P49)
(kREAD_P49__NOISY_P49)
(kREAD_P49__-NOISY_P49)
(kREAD_P50)
(kREAD_P50__NOISY_P50)
(kREAD_P50__-NOISY_P50)
(kREAD_P51)
(kREAD_P51__NOISY_P51)
(kREAD_P51__-NOISY_P51)
(kREAD_P52)
(kREAD_P52__NOISY_P52)
(kREAD_P52__-NOISY_P52)
(kREAD_P53)
(kREAD_P53__NOISY_P53)
(kREAD_P53__-NOISY_P53)
(kREAD_P54)
(kREAD_P54__NOISY_P54)
(kREAD_P54__-NOISY_P54)
(kOK_P11)
(kOK_P11__NOISY_P11)
(kOK_P11__-NOISY_P11)
(kOK_P12)
(kOK_P12__NOISY_P12)
(kOK_P12__-NOISY_P12)
(kOK_P13)
(kOK_P13__NOISY_P13)
(kOK_P13__-NOISY_P13)
(kOK_P14)
(kOK_P14__NOISY_P14)
(kOK_P14__-NOISY_P14)
(kOK_P15)
(kOK_P15__NOISY_P15)
(kOK_P15__-NOISY_P15)
(kOK_P16)
(kOK_P16__NOISY_P16)
(kOK_P16__-NOISY_P16)
(kOK_P17)
(kOK_P17__NOISY_P17)
(kOK_P17__-NOISY_P17)
(kOK_P18)
(kOK_P18__NOISY_P18)
(kOK_P18__-NOISY_P18)
(kOK_P19)
(kOK_P19__NOISY_P19)
(kOK_P19__-NOISY_P19)
(kOK_P20)
(kOK_P20__NOISY_P20)
(kOK_P20__-NOISY_P20)
(kOK_P21)
(kOK_P21__NOISY_P21)
(kOK_P21__-NOISY_P21)
(kOK_P22)
(kOK_P22__NOISY_P22)
(kOK_P22__-NOISY_P22)
(kOK_P23)
(kOK_P23__NOISY_P23)
(kOK_P23__-NOISY_P23)
(kOK_P24)
(kOK_P24__NOISY_P24)
(kOK_P24__-NOISY_P24)
(kOK_P25)
(kOK_P25__NOISY_P25)
(kOK_P25__-NOISY_P25)
(kOK_P26)
(kOK_P26__NOISY_P26)
(kOK_P26__-NOISY_P26)
(kOK_P27)
(kOK_P27__NOISY_P27)
(kOK_P27__-NOISY_P27)
(kOK_P28)
(kOK_P28__NOISY_P28)
(kOK_P28__-NOISY_P28)
(kOK_P29)
(kOK_P29__NOISY_P29)
(kOK_P29__-NOISY_P29)
(kOK_P30)
(kOK_P30__NOISY_P30)
(kOK_P30__-NOISY_P30)
(kOK_P31)
(kOK_P31__NOISY_P31)
(kOK_P31__-NOISY_P31)
(kOK_P32)
(kOK_P32__NOISY_P32)
(kOK_P32__-NOISY_P32)
(kOK_P33)
(kOK_P33__NOISY_P33)
(kOK_P33__-NOISY_P33)
(kOK_P34)
(kOK_P34__NOISY_P34)
(kOK_P34__-NOISY_P34)
(kOK_P35)
(kOK_P35__NOISY_P35)
(kOK_P35__-NOISY_P35)
(kOK_P36)
(kOK_P36__NOISY_P36)
(kOK_P36__-NOISY_P36)
(kOK_P37)
(kOK_P37__NOISY_P37)
(kOK_P37__-NOISY_P37)
(kOK_P38)
(kOK_P38__NOISY_P38)
(kOK_P38__-NOISY_P38)
(kOK_P39)
(kOK_P39__NOISY_P39)
(kOK_P39__-NOISY_P39)
(kOK_P40)
(kOK_P40__NOISY_P40)
(kOK_P40__-NOISY_P40)
(kOK_P41)
(kOK_P41__NOISY_P41)
(kOK_P41__-NOISY_P41)
(kOK_P42)
(kOK_P42__NOISY_P42)
(kOK_P42__-NOISY_P42)
(kOK_P43)
(kOK_P43__NOISY_P43)
(kOK_P43__-NOISY_P43)
(kOK_P44)
(kOK_P44__NOISY_P44)
(kOK_P44__-NOISY_P44)
(kOK_P45)
(kOK_P45__NOISY_P45)
(kOK_P45__-NOISY_P45)
(kOK_P46)
(kOK_P46__NOISY_P46)
(kOK_P46__-NOISY_P46)
(kOK_P47)
(kOK_P47__NOISY_P47)
(kOK_P47__-NOISY_P47)
(kOK_P48)
(kOK_P48__NOISY_P48)
(kOK_P48__-NOISY_P48)
(kOK_P49)
(kOK_P49__NOISY_P49)
(kOK_P49__-NOISY_P49)
(kOK_P50)
(kOK_P50__NOISY_P50)
(kOK_P50__-NOISY_P50)
(kOK_P51)
(kOK_P51__NOISY_P51)
(kOK_P51__-NOISY_P51)
(kOK_P52)
(kOK_P52__NOISY_P52)
(kOK_P52__-NOISY_P52)
(kOK_P53)
(kOK_P53__NOISY_P53)
(kOK_P53__-NOISY_P53)
(kOK_P54)
(kOK_P54__NOISY_P54)
(kOK_P54__-NOISY_P54)
(kCURRENT-STAGE_S0)
(kCURRENT-STAGE_S1)
(kCURRENT-STAGE_S2)
(kCURRENT-STAGE_S3)
(kCURRENT-STAGE_S4)
(kCURRENT-STAGE_S5)
(kCURRENT-STAGE_S6)
(kCURRENT-STAGE_S7)
(kCURRENT-STAGE_S8)
(kCURRENT-STAGE_S9)
(kCURRENT-STAGE_S10)
(kIN-CHANNEL_P0)
(k-IN-CHANNEL_P0)
(kIN-CHANNEL_P0__NOISY_P0)
(kIN-CHANNEL_P0__-NOISY_P0)
(kIN-CHANNEL_P1)
(k-IN-CHANNEL_P1)
(kIN-CHANNEL_P1__NOISY_P1)
(kIN-CHANNEL_P1__-NOISY_P1)
(kIN-CHANNEL_P10)
(k-IN-CHANNEL_P10)
(kIN-CHANNEL_P10__NOISY_P10)
(kIN-CHANNEL_P10__-NOISY_P10)
(kIN-CHANNEL_P2)
(k-IN-CHANNEL_P2)
(kIN-CHANNEL_P2__NOISY_P2)
(kIN-CHANNEL_P2__-NOISY_P2)
(kIN-CHANNEL_P3)
(k-IN-CHANNEL_P3)
(kIN-CHANNEL_P3__NOISY_P3)
(kIN-CHANNEL_P3__-NOISY_P3)
(kIN-CHANNEL_P4)
(k-IN-CHANNEL_P4)
(kIN-CHANNEL_P4__NOISY_P4)
(kIN-CHANNEL_P4__-NOISY_P4)
(kIN-CHANNEL_P5)
(k-IN-CHANNEL_P5)
(kIN-CHANNEL_P5__NOISY_P5)
(kIN-CHANNEL_P5__-NOISY_P5)
(kIN-CHANNEL_P6)
(k-IN-CHANNEL_P6)
(kIN-CHANNEL_P6__NOISY_P6)
(kIN-CHANNEL_P6__-NOISY_P6)
(kIN-CHANNEL_P7)
(k-IN-CHANNEL_P7)
(kIN-CHANNEL_P7__NOISY_P7)
(kIN-CHANNEL_P7__-NOISY_P7)
(kIN-CHANNEL_P8)
(k-IN-CHANNEL_P8)
(kIN-CHANNEL_P8__NOISY_P8)
(kIN-CHANNEL_P8__-NOISY_P8)
(kIN-CHANNEL_P9)
(k-IN-CHANNEL_P9)
(kIN-CHANNEL_P9__NOISY_P9)
(kIN-CHANNEL_P9__-NOISY_P9)
(kNOISY_P0)
(k-NOISY_P0__NOISY_P0)
(kNOISY_P0__NOISY_P0)
(k-BAD_P0)
(kBAD_P0__NOISY_P0)
(kNOISY_P1)
(k-NOISY_P1__NOISY_P1)
(kNOISY_P1__NOISY_P1)
(k-BAD_P1)
(kBAD_P1__NOISY_P1)
(kNOISY_P10)
(k-NOISY_P10__NOISY_P10)
(kNOISY_P10__NOISY_P10)
(k-BAD_P10)
(kBAD_P10__NOISY_P10)
(kNOISY_P2)
(k-NOISY_P2__NOISY_P2)
(kNOISY_P2__NOISY_P2)
(k-BAD_P2)
(kBAD_P2__NOISY_P2)
(kNOISY_P3)
(k-NOISY_P3__NOISY_P3)
(kNOISY_P3__NOISY_P3)
(k-BAD_P3)
(kBAD_P3__NOISY_P3)
(kNOISY_P4)
(k-NOISY_P4__NOISY_P4)
(kNOISY_P4__NOISY_P4)
(k-BAD_P4)
(kBAD_P4__NOISY_P4)
(kNOISY_P5)
(k-NOISY_P5__NOISY_P5)
(kNOISY_P5__NOISY_P5)
(k-BAD_P5)
(kBAD_P5__NOISY_P5)
(kNOISY_P6)
(k-NOISY_P6__NOISY_P6)
(kNOISY_P6__NOISY_P6)
(k-BAD_P6)
(kBAD_P6__NOISY_P6)
(kNOISY_P7)
(k-NOISY_P7__NOISY_P7)
(kNOISY_P7__NOISY_P7)
(k-BAD_P7)
(kBAD_P7__NOISY_P7)
(kNOISY_P8)
(k-NOISY_P8__NOISY_P8)
(kNOISY_P8__NOISY_P8)
(k-BAD_P8)
(kBAD_P8__NOISY_P8)
(kNOISY_P9)
(k-NOISY_P9__NOISY_P9)
(kNOISY_P9__NOISY_P9)
(k-BAD_P9)
(kBAD_P9__NOISY_P9)
(kIN-CHANNEL_P16)
(k-IN-CHANNEL_P16)
(kIN-CHANNEL_P16__NOISY_P16)
(kIN-CHANNEL_P16__-NOISY_P16)
(kCURRENT-STAGE_S16)
(k-BAD_P28)
(kBAD_P28__NOISY_P28)
(kNOISY_P28)
(k-NOISY_P28__NOISY_P28)
(kNOISY_P28__NOISY_P28)
(kIN-CHANNEL_P28)
(k-IN-CHANNEL_P28)
(kIN-CHANNEL_P28__NOISY_P28)
(kIN-CHANNEL_P28__-NOISY_P28)
(kCURRENT-STAGE_S28)
(kIN-CHANNEL_P42)
(k-IN-CHANNEL_P42)
(kIN-CHANNEL_P42__NOISY_P42)
(kIN-CHANNEL_P42__-NOISY_P42)
(kCURRENT-STAGE_S42)
(kCURRENT-STAGE_S29)
(kCURRENT-STAGE_S30)
(kIN-CHANNEL_P54)
(k-IN-CHANNEL_P54)
(kIN-CHANNEL_P54__NOISY_P54)
(kIN-CHANNEL_P54__-NOISY_P54)
(kCURRENT-STAGE_S54)
(k-BAD_P25)
(kBAD_P25__NOISY_P25)
(kNOISY_P25)
(k-NOISY_P25__NOISY_P25)
(kNOISY_P25__NOISY_P25)
(kIN-CHANNEL_P25)
(k-IN-CHANNEL_P25)
(kIN-CHANNEL_P25__NOISY_P25)
(kIN-CHANNEL_P25__-NOISY_P25)
(kCURRENT-STAGE_S25)
(k-BAD_P30)
(kBAD_P30__NOISY_P30)
(kNOISY_P30)
(k-NOISY_P30__NOISY_P30)
(kNOISY_P30__NOISY_P30)
(kIN-CHANNEL_P30)
(k-IN-CHANNEL_P30)
(kIN-CHANNEL_P30__NOISY_P30)
(kIN-CHANNEL_P30__-NOISY_P30)
(kCURRENT-STAGE_S31)
(kCURRENT-STAGE_S32)
(k-BAD_P37)
(kBAD_P37__NOISY_P37)
(kNOISY_P37)
(k-NOISY_P37__NOISY_P37)
(kNOISY_P37__NOISY_P37)
(kIN-CHANNEL_P37)
(k-IN-CHANNEL_P37)
(kIN-CHANNEL_P37__NOISY_P37)
(kIN-CHANNEL_P37__-NOISY_P37)
(kCURRENT-STAGE_S37)
(kCURRENT-STAGE_S33)
(kIN-CHANNEL_P17)
(k-IN-CHANNEL_P17)
(kIN-CHANNEL_P17__NOISY_P17)
(kIN-CHANNEL_P17__-NOISY_P17)
(kCURRENT-STAGE_S17)
(kCURRENT-STAGE_S34)
(k-BAD_P18)
(kBAD_P18__NOISY_P18)
(kNOISY_P18)
(k-NOISY_P18__NOISY_P18)
(kNOISY_P18__NOISY_P18)
(kIN-CHANNEL_P18)
(k-IN-CHANNEL_P18)
(kIN-CHANNEL_P18__NOISY_P18)
(kIN-CHANNEL_P18__-NOISY_P18)
(kCURRENT-STAGE_S18)
(kIN-CHANNEL_P43)
(k-IN-CHANNEL_P43)
(kIN-CHANNEL_P43__NOISY_P43)
(kIN-CHANNEL_P43__-NOISY_P43)
(kCURRENT-STAGE_S43)
(k-BAD_P11)
(kBAD_P11__NOISY_P11)
(kNOISY_P11)
(k-NOISY_P11__NOISY_P11)
(kNOISY_P11__NOISY_P11)
(kIN-CHANNEL_P11)
(k-IN-CHANNEL_P11)
(kIN-CHANNEL_P11__NOISY_P11)
(kIN-CHANNEL_P11__-NOISY_P11)
(kCURRENT-STAGE_S11)
(kCURRENT-STAGE_S35)
(k-BAD_P46)
(kBAD_P46__NOISY_P46)
(kNOISY_P46)
(k-NOISY_P46__NOISY_P46)
(kNOISY_P46__NOISY_P46)
(kIN-CHANNEL_P46)
(k-IN-CHANNEL_P46)
(kIN-CHANNEL_P46__NOISY_P46)
(kIN-CHANNEL_P46__-NOISY_P46)
(kCURRENT-STAGE_S46)
(k-BAD_P22)
(kBAD_P22__NOISY_P22)
(kNOISY_P22)
(k-NOISY_P22__NOISY_P22)
(kNOISY_P22__NOISY_P22)
(kIN-CHANNEL_P22)
(k-IN-CHANNEL_P22)
(kIN-CHANNEL_P22__NOISY_P22)
(kIN-CHANNEL_P22__-NOISY_P22)
(kCURRENT-STAGE_S22)
(k-BAD_P33)
(kBAD_P33__NOISY_P33)
(kNOISY_P33)
(k-NOISY_P33__NOISY_P33)
(kNOISY_P33__NOISY_P33)
(kIN-CHANNEL_P33)
(k-IN-CHANNEL_P33)
(kIN-CHANNEL_P33__NOISY_P33)
(kIN-CHANNEL_P33__-NOISY_P33)
(kCURRENT-STAGE_S36)
(k-BAD_P40)
(kBAD_P40__NOISY_P40)
(kNOISY_P40)
(k-NOISY_P40__NOISY_P40)
(kNOISY_P40__NOISY_P40)
(kIN-CHANNEL_P40)
(k-IN-CHANNEL_P40)
(kIN-CHANNEL_P40__NOISY_P40)
(kIN-CHANNEL_P40__-NOISY_P40)
(kCURRENT-STAGE_S40)
(kIN-CHANNEL_P31)
(k-IN-CHANNEL_P31)
(kIN-CHANNEL_P31__NOISY_P31)
(kIN-CHANNEL_P31__-NOISY_P31)
(kCURRENT-STAGE_S38)
(kCURRENT-STAGE_S39)
(kIN-CHANNEL_P44)
(k-IN-CHANNEL_P44)
(kIN-CHANNEL_P44__NOISY_P44)
(kIN-CHANNEL_P44__-NOISY_P44)
(kCURRENT-STAGE_S44)
(k-BAD_P13)
(kBAD_P13__NOISY_P13)
(kNOISY_P13)
(k-NOISY_P13__NOISY_P13)
(kNOISY_P13__NOISY_P13)
(kIN-CHANNEL_P13)
(k-IN-CHANNEL_P13)
(kIN-CHANNEL_P13__NOISY_P13)
(kIN-CHANNEL_P13__-NOISY_P13)
(kCURRENT-STAGE_S13)
(kCURRENT-STAGE_S41)
(k-BAD_P45)
(kBAD_P45__NOISY_P45)
(kNOISY_P45)
(k-NOISY_P45__NOISY_P45)
(kNOISY_P45__NOISY_P45)
(kIN-CHANNEL_P45)
(k-IN-CHANNEL_P45)
(kIN-CHANNEL_P45__NOISY_P45)
(kIN-CHANNEL_P45__-NOISY_P45)
(kCURRENT-STAGE_S45)
(kIN-CHANNEL_P19)
(k-IN-CHANNEL_P19)
(kIN-CHANNEL_P19__NOISY_P19)
(kIN-CHANNEL_P19__-NOISY_P19)
(kCURRENT-STAGE_S19)
(kIN-CHANNEL_P32)
(k-IN-CHANNEL_P32)
(kIN-CHANNEL_P32__NOISY_P32)
(kIN-CHANNEL_P32__-NOISY_P32)
(k-BAD_P36)
(kBAD_P36__NOISY_P36)
(kNOISY_P36)
(k-NOISY_P36__NOISY_P36)
(kNOISY_P36__NOISY_P36)
(kIN-CHANNEL_P36)
(k-IN-CHANNEL_P36)
(kIN-CHANNEL_P36__NOISY_P36)
(kIN-CHANNEL_P36__-NOISY_P36)
(kCURRENT-STAGE_S47)
(k-BAD_P27)
(kBAD_P27__NOISY_P27)
(kNOISY_P27)
(k-NOISY_P27__NOISY_P27)
(kNOISY_P27__NOISY_P27)
(kIN-CHANNEL_P27)
(k-IN-CHANNEL_P27)
(kIN-CHANNEL_P27__NOISY_P27)
(kIN-CHANNEL_P27__-NOISY_P27)
(kCURRENT-STAGE_S27)
(kCURRENT-STAGE_S48)
(kCURRENT-STAGE_S49)
(k-BAD_P15)
(kBAD_P15__NOISY_P15)
(kNOISY_P15)
(k-NOISY_P15__NOISY_P15)
(kNOISY_P15__NOISY_P15)
(kIN-CHANNEL_P15)
(k-IN-CHANNEL_P15)
(kIN-CHANNEL_P15__NOISY_P15)
(kIN-CHANNEL_P15__-NOISY_P15)
(kCURRENT-STAGE_S15)
(kCURRENT-STAGE_S50)
(kCURRENT-STAGE_S51)
(k-BAD_P24)
(kBAD_P24__NOISY_P24)
(kNOISY_P24)
(k-NOISY_P24__NOISY_P24)
(kNOISY_P24__NOISY_P24)
(kIN-CHANNEL_P24)
(k-IN-CHANNEL_P24)
(kIN-CHANNEL_P24__NOISY_P24)
(kIN-CHANNEL_P24__-NOISY_P24)
(kCURRENT-STAGE_S24)
(kCURRENT-STAGE_S52)
(k-BAD_P44)
(kBAD_P44__NOISY_P44)
(kNOISY_P44)
(k-NOISY_P44__NOISY_P44)
(kNOISY_P44__NOISY_P44)
(k-BAD_P32)
(kBAD_P32__NOISY_P32)
(kNOISY_P32)
(k-NOISY_P32__NOISY_P32)
(kNOISY_P32__NOISY_P32)
(kCURRENT-STAGE_S53)
(k-BAD_P54)
(kBAD_P54__NOISY_P54)
(kNOISY_P54)
(k-NOISY_P54__NOISY_P54)
(kNOISY_P54__NOISY_P54)
(kIN-CHANNEL_P20)
(k-IN-CHANNEL_P20)
(kIN-CHANNEL_P20__NOISY_P20)
(kIN-CHANNEL_P20__-NOISY_P20)
(kCURRENT-STAGE_S20)
(k-BAD_P53)
(kBAD_P53__NOISY_P53)
(kNOISY_P53)
(k-NOISY_P53__NOISY_P53)
(kNOISY_P53__NOISY_P53)
(kIN-CHANNEL_P53)
(k-IN-CHANNEL_P53)
(kIN-CHANNEL_P53__NOISY_P53)
(kIN-CHANNEL_P53__-NOISY_P53)
(kCURRENT-STAGE_S55)
(kNOISY_P12)
(k-NOISY_P12__NOISY_P12)
(kNOISY_P12__NOISY_P12)
(k-BAD_P12)
(kBAD_P12__NOISY_P12)
(kIN-CHANNEL_P34)
(k-IN-CHANNEL_P34)
(kIN-CHANNEL_P34__NOISY_P34)
(kIN-CHANNEL_P34__-NOISY_P34)
(kNOISY_P14)
(k-NOISY_P14__NOISY_P14)
(kNOISY_P14__NOISY_P14)
(k-BAD_P14)
(kBAD_P14__NOISY_P14)
(kNOISY_P16)
(k-NOISY_P16__NOISY_P16)
(kNOISY_P16__NOISY_P16)
(k-BAD_P16)
(kBAD_P16__NOISY_P16)
(kNOISY_P17)
(k-NOISY_P17__NOISY_P17)
(kNOISY_P17__NOISY_P17)
(k-BAD_P17)
(kBAD_P17__NOISY_P17)
(kIN-CHANNEL_P21)
(k-IN-CHANNEL_P21)
(kIN-CHANNEL_P21__NOISY_P21)
(kIN-CHANNEL_P21__-NOISY_P21)
(kCURRENT-STAGE_S21)
(kIN-CHANNEL_P47)
(k-IN-CHANNEL_P47)
(kIN-CHANNEL_P47__NOISY_P47)
(kIN-CHANNEL_P47__-NOISY_P47)
(kNOISY_P19)
(k-NOISY_P19__NOISY_P19)
(kNOISY_P19__NOISY_P19)
(k-BAD_P19)
(kBAD_P19__NOISY_P19)
(kNOISY_P20)
(k-NOISY_P20__NOISY_P20)
(kNOISY_P20__NOISY_P20)
(k-BAD_P20)
(kBAD_P20__NOISY_P20)
(kNOISY_P21)
(k-NOISY_P21__NOISY_P21)
(kNOISY_P21__NOISY_P21)
(k-BAD_P21)
(kBAD_P21__NOISY_P21)
(kIN-CHANNEL_P35)
(k-IN-CHANNEL_P35)
(kIN-CHANNEL_P35__NOISY_P35)
(kIN-CHANNEL_P35__-NOISY_P35)
(kNOISY_P23)
(k-NOISY_P23__NOISY_P23)
(kNOISY_P23__NOISY_P23)
(k-BAD_P23)
(kBAD_P23__NOISY_P23)
(kNOISY_P26)
(k-NOISY_P26__NOISY_P26)
(kNOISY_P26__NOISY_P26)
(k-BAD_P26)
(kBAD_P26__NOISY_P26)
(kNOISY_P29)
(k-NOISY_P29__NOISY_P29)
(kNOISY_P29__NOISY_P29)
(k-BAD_P29)
(kBAD_P29__NOISY_P29)
(kIN-CHANNEL_P48)
(k-IN-CHANNEL_P48)
(kIN-CHANNEL_P48__NOISY_P48)
(kIN-CHANNEL_P48__-NOISY_P48)
(kNOISY_P31)
(k-NOISY_P31__NOISY_P31)
(kNOISY_P31__NOISY_P31)
(k-BAD_P31)
(kBAD_P31__NOISY_P31)
(kCURRENT-STAGE_S12)
(kCURRENT-STAGE_S14)
(kCURRENT-STAGE_S23)
(kCURRENT-STAGE_S26)
(kCURRENT-STAGE_S56)
(kCURRENT-STAGE_S57)
(kCURRENT-STAGE_S58)
(kCURRENT-STAGE_S59)
(kCURRENT-STAGE_S60)
(kCURRENT-STAGE_S61)
(kCURRENT-STAGE_S62)
(kNOISY_P34)
(k-NOISY_P34__NOISY_P34)
(kNOISY_P34__NOISY_P34)
(k-BAD_P34)
(kBAD_P34__NOISY_P34)
(kNOISY_P35)
(k-NOISY_P35__NOISY_P35)
(kNOISY_P35__NOISY_P35)
(k-BAD_P35)
(kBAD_P35__NOISY_P35)
(kIN-CHANNEL_P23)
(k-IN-CHANNEL_P23)
(kIN-CHANNEL_P23__NOISY_P23)
(kIN-CHANNEL_P23__-NOISY_P23)
(kNOISY_P38)
(k-NOISY_P38__NOISY_P38)
(kNOISY_P38__NOISY_P38)
(k-BAD_P38)
(kBAD_P38__NOISY_P38)
(kNOISY_P39)
(k-NOISY_P39__NOISY_P39)
(kNOISY_P39__NOISY_P39)
(k-BAD_P39)
(kBAD_P39__NOISY_P39)
(kIN-CHANNEL_P49)
(k-IN-CHANNEL_P49)
(kIN-CHANNEL_P49__NOISY_P49)
(kIN-CHANNEL_P49__-NOISY_P49)
(kNOISY_P41)
(k-NOISY_P41__NOISY_P41)
(kNOISY_P41__NOISY_P41)
(k-BAD_P41)
(kBAD_P41__NOISY_P41)
(kNOISY_P42)
(k-NOISY_P42__NOISY_P42)
(kNOISY_P42__NOISY_P42)
(k-BAD_P42)
(kBAD_P42__NOISY_P42)
(kNOISY_P43)
(k-NOISY_P43__NOISY_P43)
(kNOISY_P43__NOISY_P43)
(k-BAD_P43)
(kBAD_P43__NOISY_P43)
(kNOISY_P47)
(k-NOISY_P47__NOISY_P47)
(kNOISY_P47__NOISY_P47)
(k-BAD_P47)
(kBAD_P47__NOISY_P47)
(kNOISY_P48)
(k-NOISY_P48__NOISY_P48)
(kNOISY_P48__NOISY_P48)
(k-BAD_P48)
(kBAD_P48__NOISY_P48)
(kNOISY_P49)
(k-NOISY_P49__NOISY_P49)
(kNOISY_P49__NOISY_P49)
(k-BAD_P49)
(kBAD_P49__NOISY_P49)
(kNOISY_P50)
(k-NOISY_P50__NOISY_P50)
(kNOISY_P50__NOISY_P50)
(k-BAD_P50)
(kBAD_P50__NOISY_P50)
(kNOISY_P51)
(k-NOISY_P51__NOISY_P51)
(kNOISY_P51__NOISY_P51)
(k-BAD_P51)
(kBAD_P51__NOISY_P51)
(kNOISY_P52)
(k-NOISY_P52__NOISY_P52)
(kNOISY_P52__NOISY_P52)
(k-BAD_P52)
(kBAD_P52__NOISY_P52)
(kIN-CHANNEL_P38)
(k-IN-CHANNEL_P38)
(kIN-CHANNEL_P38__NOISY_P38)
(kIN-CHANNEL_P38__-NOISY_P38)
(kIN-CHANNEL_P52)
(k-IN-CHANNEL_P52)
(kIN-CHANNEL_P52__NOISY_P52)
(kIN-CHANNEL_P52__-NOISY_P52)
(kIN-CHANNEL_P51)
(k-IN-CHANNEL_P51)
(kIN-CHANNEL_P51__NOISY_P51)
(kIN-CHANNEL_P51__-NOISY_P51)
(kIN-CHANNEL_P50)
(k-IN-CHANNEL_P50)
(kIN-CHANNEL_P50__NOISY_P50)
(kIN-CHANNEL_P50__-NOISY_P50)
(kIN-CHANNEL_P39)
(k-IN-CHANNEL_P39)
(kIN-CHANNEL_P39__NOISY_P39)
(kIN-CHANNEL_P39__-NOISY_P39)
(kIN-CHANNEL_P26)
(k-IN-CHANNEL_P26)
(kIN-CHANNEL_P26__NOISY_P26)
(kIN-CHANNEL_P26__-NOISY_P26)
(kIN-CHANNEL_P12)
(k-IN-CHANNEL_P12)
(kIN-CHANNEL_P12__NOISY_P12)
(kIN-CHANNEL_P12__-NOISY_P12)
(kIN-CHANNEL_P29)
(k-IN-CHANNEL_P29)
(kIN-CHANNEL_P29__NOISY_P29)
(kIN-CHANNEL_P29__-NOISY_P29)
(kIN-CHANNEL_P14)
(k-IN-CHANNEL_P14)
(kIN-CHANNEL_P14__NOISY_P14)
(kIN-CHANNEL_P14__-NOISY_P14)
(kIN-CHANNEL_P41)
(k-IN-CHANNEL_P41)
(kIN-CHANNEL_P41__NOISY_P41)
(kIN-CHANNEL_P41__-NOISY_P41)
)
(:action REQUEST-COPY_P47_S47
:parameters ()
:precondition (and (kCURRENT-STAGE_S47))

:effect (and  (k-BAD_P47)
(when (kBAD_P47__NOISY_P47) (and (kIN-CHANNEL_P47__NOISY_P47) (k-NOISY_P47__NOISY_P47) (not(kNOISY_P47__NOISY_P47)) (not(kREAD_P47__NOISY_P47)) (not(kBAD_P47__NOISY_P47)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P47)) (and (not(k-IN-CHANNEL_P47)) (not(kNOISY_P47)) (not(kREAD_P47)))) ;; Cancellation. 
))
(:action RESET_S28
:parameters ()
:precondition (and (kCURRENT-STAGE_S28))

:effect (and  (not(kCURRENT-STAGE_S28)) (kCURRENT-STAGE_S0)
))
(:action RESET_S27
:parameters ()
:precondition (and (kCURRENT-STAGE_S27))

:effect (and  (not(kCURRENT-STAGE_S27)) (kCURRENT-STAGE_S0)
))
(:action REQUEST-COPY_P41_S41
:parameters ()
:precondition (and (kCURRENT-STAGE_S41))

:effect (and  (k-BAD_P41)
(when (kBAD_P41__NOISY_P41) (and (k-NOISY_P41__NOISY_P41) (not(kNOISY_P41__NOISY_P41)) (kIN-CHANNEL_P41__NOISY_P41) (not(kREAD_P41__NOISY_P41)) (not(kBAD_P41__NOISY_P41)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P41)) (and (not(kNOISY_P41)) (not(k-IN-CHANNEL_P41)) (not(kREAD_P41)))) ;; Cancellation. 
))
(:action RESET_S26
:parameters ()
:precondition (and (kCURRENT-STAGE_S26))

:effect (and  (not(kCURRENT-STAGE_S26)) (kCURRENT-STAGE_S0)
))
(:action REQUEST-COPY_P16_S16
:parameters ()
:precondition (and (kCURRENT-STAGE_S16))

:effect (and  (k-BAD_P16)
(when (kBAD_P16__NOISY_P16) (and (kIN-CHANNEL_P16__NOISY_P16) (k-NOISY_P16__NOISY_P16) (not(kNOISY_P16__NOISY_P16)) (not(kREAD_P16__NOISY_P16)) (not(kBAD_P16__NOISY_P16)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P16)) (and (not(k-IN-CHANNEL_P16)) (not(kNOISY_P16)) (not(kREAD_P16)))) ;; Cancellation. 
))
(:action RESET_S25
:parameters ()
:precondition (and (kCURRENT-STAGE_S25))

:effect (and  (not(kCURRENT-STAGE_S25)) (kCURRENT-STAGE_S0)
))
(:action RESET_S24
:parameters ()
:precondition (and (kCURRENT-STAGE_S24))

:effect (and  (not(kCURRENT-STAGE_S24)) (kCURRENT-STAGE_S0)
))
(:action REQUEST-COPY_P5_S5
:parameters ()
:precondition (and (kCURRENT-STAGE_S5))

:effect (and  (k-BAD_P5)
(when (kBAD_P5__NOISY_P5) (and (kIN-CHANNEL_P5__NOISY_P5) (k-NOISY_P5__NOISY_P5) (not(kNOISY_P5__NOISY_P5)) (not(kREAD_P5__NOISY_P5)) (not(kBAD_P5__NOISY_P5)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P5)) (and (not(k-IN-CHANNEL_P5)) (not(kNOISY_P5)) (not(kREAD_P5)))) ;; Cancellation. 
))
(:action OBTAIN_P53_S53
:parameters ()
:precondition (and (kCURRENT-STAGE_S53))

:effect (and  (k-IN-CHANNEL_P53)
(when (kIN-CHANNEL_P53__-NOISY_P53) (and (kREAD_P53__-NOISY_P53) (not(kIN-CHANNEL_P53__-NOISY_P53)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P53) (and (kREAD_P53) (k-IN-CHANNEL_P53))) ;; Support. 
(when (not(k-IN-CHANNEL_P53))  (not(kIN-CHANNEL_P53))) ;; Cancellation. 
(when (kIN-CHANNEL_P53__NOISY_P53) (and (kREAD_P53__NOISY_P53) (not(kIN-CHANNEL_P53__NOISY_P53)))) ;; Support.  Cancellation. 
))
(:action REQUEST-COPY_P20_S20
:parameters ()
:precondition (and (kCURRENT-STAGE_S20))

:effect (and  (k-BAD_P20)
(when (kBAD_P20__NOISY_P20) (and (kIN-CHANNEL_P20__NOISY_P20) (k-NOISY_P20__NOISY_P20) (not(kNOISY_P20__NOISY_P20)) (not(kREAD_P20__NOISY_P20)) (not(kBAD_P20__NOISY_P20)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P20)) (and (not(k-IN-CHANNEL_P20)) (not(kNOISY_P20)) (not(kREAD_P20)))) ;; Cancellation. 
))
(:action OBTAIN_P41_S41
:parameters ()
:precondition (and (kCURRENT-STAGE_S41))

:effect (and  (k-IN-CHANNEL_P41)
(when (kIN-CHANNEL_P41__-NOISY_P41) (and (kREAD_P41__-NOISY_P41) (not(kIN-CHANNEL_P41__-NOISY_P41)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P41) (and (kREAD_P41) (k-IN-CHANNEL_P41))) ;; Support. 
(when (not(k-IN-CHANNEL_P41))  (not(kIN-CHANNEL_P41))) ;; Cancellation. 
(when (kIN-CHANNEL_P41__NOISY_P41) (and (kREAD_P41__NOISY_P41) (not(kIN-CHANNEL_P41__NOISY_P41)))) ;; Support.  Cancellation. 
))
(:action OBTAIN_P15_S15
:parameters ()
:precondition (and (kCURRENT-STAGE_S15))

:effect (and  (k-IN-CHANNEL_P15)
(when (kIN-CHANNEL_P15__-NOISY_P15) (and (kREAD_P15__-NOISY_P15) (not(kIN-CHANNEL_P15__-NOISY_P15)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P15) (and (kREAD_P15) (k-IN-CHANNEL_P15))) ;; Support. 
(when (not(k-IN-CHANNEL_P15))  (not(kIN-CHANNEL_P15))) ;; Cancellation. 
(when (kIN-CHANNEL_P15__NOISY_P15) (and (kREAD_P15__NOISY_P15) (not(kIN-CHANNEL_P15__NOISY_P15)))) ;; Support.  Cancellation. 
))
(:action OBTAIN_P29_S29
:parameters ()
:precondition (and (kCURRENT-STAGE_S29))

:effect (and  (k-IN-CHANNEL_P29)
(when (kIN-CHANNEL_P29__-NOISY_P29) (and (kREAD_P29__-NOISY_P29) (not(kIN-CHANNEL_P29__-NOISY_P29)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P29) (and (kREAD_P29) (k-IN-CHANNEL_P29))) ;; Support. 
(when (not(k-IN-CHANNEL_P29))  (not(kIN-CHANNEL_P29))) ;; Cancellation. 
(when (kIN-CHANNEL_P29__NOISY_P29) (and (kREAD_P29__NOISY_P29) (not(kIN-CHANNEL_P29__NOISY_P29)))) ;; Support.  Cancellation. 
))
(:action RESET_S23
:parameters ()
:precondition (and (kCURRENT-STAGE_S23))

:effect (and  (not(kCURRENT-STAGE_S23)) (kCURRENT-STAGE_S0)
))
(:action REQUEST-COPY_P48_S48
:parameters ()
:precondition (and (kCURRENT-STAGE_S48))

:effect (and  (k-BAD_P48)
(when (kBAD_P48__NOISY_P48) (and (kIN-CHANNEL_P48__NOISY_P48) (k-NOISY_P48__NOISY_P48) (not(kNOISY_P48__NOISY_P48)) (not(kREAD_P48__NOISY_P48)) (not(kBAD_P48__NOISY_P48)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P48)) (and (not(k-IN-CHANNEL_P48)) (not(kNOISY_P48)) (not(kREAD_P48)))) ;; Cancellation. 
))
(:action RESET_S22
:parameters ()
:precondition (and (kCURRENT-STAGE_S22))

:effect (and  (not(kCURRENT-STAGE_S22)) (kCURRENT-STAGE_S0)
))
(:action RESET_S21
:parameters ()
:precondition (and (kCURRENT-STAGE_S21))

:effect (and  (not(kCURRENT-STAGE_S21)) (kCURRENT-STAGE_S0)
))
(:action REQUEST-COPY_P34_S34
:parameters ()
:precondition (and (kCURRENT-STAGE_S34))

:effect (and  (k-BAD_P34)
(when (kBAD_P34__NOISY_P34) (and (kIN-CHANNEL_P34__NOISY_P34) (k-NOISY_P34__NOISY_P34) (not(kNOISY_P34__NOISY_P34)) (not(kREAD_P34__NOISY_P34)) (not(kBAD_P34__NOISY_P34)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P34)) (and (not(k-IN-CHANNEL_P34)) (not(kNOISY_P34)) (not(kREAD_P34)))) ;; Cancellation. 
))
(:action RESET_S20
:parameters ()
:precondition (and (kCURRENT-STAGE_S20))

:effect (and  (not(kCURRENT-STAGE_S20)) (kCURRENT-STAGE_S0)
))
(:action REQUEST-COPY_P38_S38
:parameters ()
:precondition (and (kCURRENT-STAGE_S38))

:effect (and  (k-BAD_P38)
(when (kBAD_P38__NOISY_P38) (and (k-NOISY_P38__NOISY_P38) (not(kNOISY_P38__NOISY_P38)) (kIN-CHANNEL_P38__NOISY_P38) (not(kREAD_P38__NOISY_P38)) (not(kBAD_P38__NOISY_P38)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P38)) (and (not(kNOISY_P38)) (not(k-IN-CHANNEL_P38)) (not(kREAD_P38)))) ;; Cancellation. 
))
(:action RESET_S19
:parameters ()
:precondition (and (kCURRENT-STAGE_S19))

:effect (and  (not(kCURRENT-STAGE_S19)) (kCURRENT-STAGE_S0)
))
(:action RESET_S18
:parameters ()
:precondition (and (kCURRENT-STAGE_S18))

:effect (and  (not(kCURRENT-STAGE_S18)) (kCURRENT-STAGE_S0)
))
(:action REQUEST-COPY_P49_S49
:parameters ()
:precondition (and (kCURRENT-STAGE_S49))

:effect (and  (k-BAD_P49)
(when (kBAD_P49__NOISY_P49) (and (kIN-CHANNEL_P49__NOISY_P49) (k-NOISY_P49__NOISY_P49) (not(kNOISY_P49__NOISY_P49)) (not(kREAD_P49__NOISY_P49)) (not(kBAD_P49__NOISY_P49)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P49)) (and (not(k-IN-CHANNEL_P49)) (not(kNOISY_P49)) (not(kREAD_P49)))) ;; Cancellation. 
))
(:action OBTAIN_P14_S14
:parameters ()
:precondition (and (kCURRENT-STAGE_S14))

:effect (and  (k-IN-CHANNEL_P14)
(when (kIN-CHANNEL_P14__-NOISY_P14) (and (kREAD_P14__-NOISY_P14) (not(kIN-CHANNEL_P14__-NOISY_P14)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P14) (and (kREAD_P14) (k-IN-CHANNEL_P14))) ;; Support. 
(when (not(k-IN-CHANNEL_P14))  (not(kIN-CHANNEL_P14))) ;; Cancellation. 
(when (kIN-CHANNEL_P14__NOISY_P14) (and (kREAD_P14__NOISY_P14) (not(kIN-CHANNEL_P14__NOISY_P14)))) ;; Support.  Cancellation. 
))
(:action OBTAIN_P52_S52
:parameters ()
:precondition (and (kCURRENT-STAGE_S52))

:effect (and  (k-IN-CHANNEL_P52)
(when (kIN-CHANNEL_P52__-NOISY_P52) (and (kREAD_P52__-NOISY_P52) (not(kIN-CHANNEL_P52__-NOISY_P52)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P52) (and (kREAD_P52) (k-IN-CHANNEL_P52))) ;; Support. 
(when (not(k-IN-CHANNEL_P52))  (not(kIN-CHANNEL_P52))) ;; Cancellation. 
(when (kIN-CHANNEL_P52__NOISY_P52) (and (kREAD_P52__NOISY_P52) (not(kIN-CHANNEL_P52__NOISY_P52)))) ;; Support.  Cancellation. 
))
(:action OBTAIN_P28_S28
:parameters ()
:precondition (and (kCURRENT-STAGE_S28))

:effect (and  (k-IN-CHANNEL_P28)
(when (kIN-CHANNEL_P28__-NOISY_P28) (and (kREAD_P28__-NOISY_P28) (not(kIN-CHANNEL_P28__-NOISY_P28)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P28) (and (kREAD_P28) (k-IN-CHANNEL_P28))) ;; Support. 
(when (not(k-IN-CHANNEL_P28))  (not(kIN-CHANNEL_P28))) ;; Cancellation. 
(when (kIN-CHANNEL_P28__NOISY_P28) (and (kREAD_P28__NOISY_P28) (not(kIN-CHANNEL_P28__NOISY_P28)))) ;; Support.  Cancellation. 
))
(:action OBTAIN_P40_S40
:parameters ()
:precondition (and (kCURRENT-STAGE_S40))

:effect (and  (k-IN-CHANNEL_P40)
(when (kIN-CHANNEL_P40__-NOISY_P40) (and (kREAD_P40__-NOISY_P40) (not(kIN-CHANNEL_P40__-NOISY_P40)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P40) (and (kREAD_P40) (k-IN-CHANNEL_P40))) ;; Support. 
(when (not(k-IN-CHANNEL_P40))  (not(kIN-CHANNEL_P40))) ;; Cancellation. 
(when (kIN-CHANNEL_P40__NOISY_P40) (and (kREAD_P40__NOISY_P40) (not(kIN-CHANNEL_P40__NOISY_P40)))) ;; Support.  Cancellation. 
))
(:action REQUEST-COPY_P14_S14
:parameters ()
:precondition (and (kCURRENT-STAGE_S14))

:effect (and  (k-BAD_P14)
(when (kBAD_P14__NOISY_P14) (and (k-NOISY_P14__NOISY_P14) (not(kNOISY_P14__NOISY_P14)) (not(kREAD_P14__NOISY_P14)) (not(kBAD_P14__NOISY_P14)) (kIN-CHANNEL_P14__NOISY_P14))) ;; Support.  Cancellation. 
(when (not(k-BAD_P14)) (and (not(kNOISY_P14)) (not(kREAD_P14)) (not(k-IN-CHANNEL_P14)))) ;; Cancellation. 
))
(:action RESET_S17
:parameters ()
:precondition (and (kCURRENT-STAGE_S17))

:effect (and  (not(kCURRENT-STAGE_S17)) (kCURRENT-STAGE_S0)
))
(:action REQUEST-COPY_P42_S42
:parameters ()
:precondition (and (kCURRENT-STAGE_S42))

:effect (and  (k-BAD_P42)
(when (kBAD_P42__NOISY_P42) (and (kIN-CHANNEL_P42__NOISY_P42) (k-NOISY_P42__NOISY_P42) (not(kNOISY_P42__NOISY_P42)) (not(kREAD_P42__NOISY_P42)) (not(kBAD_P42__NOISY_P42)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P42)) (and (not(k-IN-CHANNEL_P42)) (not(kNOISY_P42)) (not(kREAD_P42)))) ;; Cancellation. 
))
(:action REQUEST-COPY_P23_S23
:parameters ()
:precondition (and (kCURRENT-STAGE_S23))

:effect (and  (k-BAD_P23)
(when (kBAD_P23__NOISY_P23) (and (k-NOISY_P23__NOISY_P23) (not(kNOISY_P23__NOISY_P23)) (kIN-CHANNEL_P23__NOISY_P23) (not(kREAD_P23__NOISY_P23)) (not(kBAD_P23__NOISY_P23)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P23)) (and (not(kNOISY_P23)) (not(k-IN-CHANNEL_P23)) (not(kREAD_P23)))) ;; Cancellation. 
))
(:action RESET_S16
:parameters ()
:precondition (and (kCURRENT-STAGE_S16))

:effect (and  (not(kCURRENT-STAGE_S16)) (kCURRENT-STAGE_S0)
))
(:action RESET_S15
:parameters ()
:precondition (and (kCURRENT-STAGE_S15))

:effect (and  (not(kCURRENT-STAGE_S15)) (kCURRENT-STAGE_S0)
))
(:action REQUEST-COPY_P31_S31
:parameters ()
:precondition (and (kCURRENT-STAGE_S31))

:effect (and  (k-BAD_P31)
(when (kBAD_P31__NOISY_P31) (and (kIN-CHANNEL_P31__NOISY_P31) (k-NOISY_P31__NOISY_P31) (not(kNOISY_P31__NOISY_P31)) (not(kREAD_P31__NOISY_P31)) (not(kBAD_P31__NOISY_P31)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P31)) (and (not(k-IN-CHANNEL_P31)) (not(kNOISY_P31)) (not(kREAD_P31)))) ;; Cancellation. 
))
(:action RESET_S14
:parameters ()
:precondition (and (kCURRENT-STAGE_S14))

:effect (and  (not(kCURRENT-STAGE_S14)) (kCURRENT-STAGE_S0)
))
(:action OBTAIN_P13_S13
:parameters ()
:precondition (and (kCURRENT-STAGE_S13))

:effect (and  (k-IN-CHANNEL_P13)
(when (kIN-CHANNEL_P13__-NOISY_P13) (and (kREAD_P13__-NOISY_P13) (not(kIN-CHANNEL_P13__-NOISY_P13)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P13) (and (kREAD_P13) (k-IN-CHANNEL_P13))) ;; Support. 
(when (not(k-IN-CHANNEL_P13))  (not(kIN-CHANNEL_P13))) ;; Cancellation. 
(when (kIN-CHANNEL_P13__NOISY_P13) (and (kREAD_P13__NOISY_P13) (not(kIN-CHANNEL_P13__NOISY_P13)))) ;; Support.  Cancellation. 
))
(:action REQUEST-COPY_P19_S19
:parameters ()
:precondition (and (kCURRENT-STAGE_S19))

:effect (and  (k-BAD_P19)
(when (kBAD_P19__NOISY_P19) (and (kIN-CHANNEL_P19__NOISY_P19) (k-NOISY_P19__NOISY_P19) (not(kNOISY_P19__NOISY_P19)) (not(kREAD_P19__NOISY_P19)) (not(kBAD_P19__NOISY_P19)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P19)) (and (not(k-IN-CHANNEL_P19)) (not(kNOISY_P19)) (not(kREAD_P19)))) ;; Cancellation. 
))
(:action RESET_S13
:parameters ()
:precondition (and (kCURRENT-STAGE_S13))

:effect (and  (not(kCURRENT-STAGE_S13)) (kCURRENT-STAGE_S0)
))
(:action OBTAIN_P27_S27
:parameters ()
:precondition (and (kCURRENT-STAGE_S27))

:effect (and  (k-IN-CHANNEL_P27)
(when (kIN-CHANNEL_P27__-NOISY_P27) (and (kREAD_P27__-NOISY_P27) (not(kIN-CHANNEL_P27__-NOISY_P27)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P27) (and (kREAD_P27) (k-IN-CHANNEL_P27))) ;; Support. 
(when (not(k-IN-CHANNEL_P27))  (not(kIN-CHANNEL_P27))) ;; Cancellation. 
(when (kIN-CHANNEL_P27__NOISY_P27) (and (kREAD_P27__NOISY_P27) (not(kIN-CHANNEL_P27__NOISY_P27)))) ;; Support.  Cancellation. 
))
(:action RESET_S12
:parameters ()
:precondition (and (kCURRENT-STAGE_S12))

:effect (and  (not(kCURRENT-STAGE_S12)) (kCURRENT-STAGE_S0)
))
(:action OBTAIN_P51_S51
:parameters ()
:precondition (and (kCURRENT-STAGE_S51))

:effect (and  (k-IN-CHANNEL_P51)
(when (kIN-CHANNEL_P51__-NOISY_P51) (and (kREAD_P51__-NOISY_P51) (not(kIN-CHANNEL_P51__-NOISY_P51)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P51) (and (kREAD_P51) (k-IN-CHANNEL_P51))) ;; Support. 
(when (not(k-IN-CHANNEL_P51))  (not(kIN-CHANNEL_P51))) ;; Cancellation. 
(when (kIN-CHANNEL_P51__NOISY_P51) (and (kREAD_P51__NOISY_P51) (not(kIN-CHANNEL_P51__NOISY_P51)))) ;; Support.  Cancellation. 
))
(:action REQUEST-COPY_P26_S26
:parameters ()
:precondition (and (kCURRENT-STAGE_S26))

:effect (and  (k-BAD_P26)
(when (kBAD_P26__NOISY_P26) (and (k-NOISY_P26__NOISY_P26) (not(kNOISY_P26__NOISY_P26)) (kIN-CHANNEL_P26__NOISY_P26) (not(kREAD_P26__NOISY_P26)) (not(kBAD_P26__NOISY_P26)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P26)) (and (not(kNOISY_P26)) (not(k-IN-CHANNEL_P26)) (not(kREAD_P26)))) ;; Cancellation. 
))
(:action REQUEST-COPY_P12_S12
:parameters ()
:precondition (and (kCURRENT-STAGE_S12))

:effect (and  (k-BAD_P12)
(when (kBAD_P12__NOISY_P12) (and (k-NOISY_P12__NOISY_P12) (not(kNOISY_P12__NOISY_P12)) (kIN-CHANNEL_P12__NOISY_P12) (not(kREAD_P12__NOISY_P12)) (not(kBAD_P12__NOISY_P12)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P12)) (and (not(kNOISY_P12)) (not(k-IN-CHANNEL_P12)) (not(kREAD_P12)))) ;; Cancellation. 
))
(:action REQUEST-COPY_P29_S29
:parameters ()
:precondition (and (kCURRENT-STAGE_S29))

:effect (and  (k-BAD_P29)
(when (kBAD_P29__NOISY_P29) (and (k-NOISY_P29__NOISY_P29) (not(kNOISY_P29__NOISY_P29)) (not(kREAD_P29__NOISY_P29)) (not(kBAD_P29__NOISY_P29)) (kIN-CHANNEL_P29__NOISY_P29))) ;; Support.  Cancellation. 
(when (not(k-BAD_P29)) (and (not(kNOISY_P29)) (not(kREAD_P29)) (not(k-IN-CHANNEL_P29)))) ;; Cancellation. 
))
(:action RESET_S11
:parameters ()
:precondition (and (kCURRENT-STAGE_S11))

:effect (and  (not(kCURRENT-STAGE_S11)) (kCURRENT-STAGE_S0)
))
(:action RESET_S62
:parameters ()
:precondition (and (kCURRENT-STAGE_S62))

:effect (and  (not(kCURRENT-STAGE_S62)) (kCURRENT-STAGE_S0)
))
(:action RESET_S61
:parameters ()
:precondition (and (kCURRENT-STAGE_S61))

:effect (and  (not(kCURRENT-STAGE_S61)) (kCURRENT-STAGE_S0)
))
(:action OBTAIN_P12_S12
:parameters ()
:precondition (and (kCURRENT-STAGE_S12))

:effect (and  (k-IN-CHANNEL_P12)
(when (kIN-CHANNEL_P12__-NOISY_P12) (and (kREAD_P12__-NOISY_P12) (not(kIN-CHANNEL_P12__-NOISY_P12)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P12) (and (kREAD_P12) (k-IN-CHANNEL_P12))) ;; Support. 
(when (not(k-IN-CHANNEL_P12))  (not(kIN-CHANNEL_P12))) ;; Cancellation. 
(when (kIN-CHANNEL_P12__NOISY_P12) (and (kREAD_P12__NOISY_P12) (not(kIN-CHANNEL_P12__NOISY_P12)))) ;; Support.  Cancellation. 
))
(:action REQUEST-COPY_P50_S50
:parameters ()
:precondition (and (kCURRENT-STAGE_S50))

:effect (and  (k-BAD_P50)
(when (kBAD_P50__NOISY_P50) (and (k-NOISY_P50__NOISY_P50) (not(kNOISY_P50__NOISY_P50)) (kIN-CHANNEL_P50__NOISY_P50) (not(kREAD_P50__NOISY_P50)) (not(kBAD_P50__NOISY_P50)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P50)) (and (not(kNOISY_P50)) (not(k-IN-CHANNEL_P50)) (not(kREAD_P50)))) ;; Cancellation. 
))
(:action RESET_S60
:parameters ()
:precondition (and (kCURRENT-STAGE_S60))

:effect (and  (not(kCURRENT-STAGE_S60)) (kCURRENT-STAGE_S0)
))
(:action REQUEST-COPY_P39_S39
:parameters ()
:precondition (and (kCURRENT-STAGE_S39))

:effect (and  (k-BAD_P39)
(when (kBAD_P39__NOISY_P39) (and (k-NOISY_P39__NOISY_P39) (not(kNOISY_P39__NOISY_P39)) (kIN-CHANNEL_P39__NOISY_P39) (not(kREAD_P39__NOISY_P39)) (not(kBAD_P39__NOISY_P39)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P39)) (and (not(kNOISY_P39)) (not(k-IN-CHANNEL_P39)) (not(kREAD_P39)))) ;; Cancellation. 
))
(:action OBTAIN_P26_S26
:parameters ()
:precondition (and (kCURRENT-STAGE_S26))

:effect (and  (k-IN-CHANNEL_P26)
(when (kIN-CHANNEL_P26__-NOISY_P26) (and (kREAD_P26__-NOISY_P26) (not(kIN-CHANNEL_P26__-NOISY_P26)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P26) (and (kREAD_P26) (k-IN-CHANNEL_P26))) ;; Support. 
(when (not(k-IN-CHANNEL_P26))  (not(kIN-CHANNEL_P26))) ;; Cancellation. 
(when (kIN-CHANNEL_P26__NOISY_P26) (and (kREAD_P26__NOISY_P26) (not(kIN-CHANNEL_P26__NOISY_P26)))) ;; Support.  Cancellation. 
))
(:action RESET_S59
:parameters ()
:precondition (and (kCURRENT-STAGE_S59))

:effect (and  (not(kCURRENT-STAGE_S59)) (kCURRENT-STAGE_S0)
))
(:action OBTAIN_P39_S39
:parameters ()
:precondition (and (kCURRENT-STAGE_S39))

:effect (and  (k-IN-CHANNEL_P39)
(when (kIN-CHANNEL_P39__-NOISY_P39) (and (kREAD_P39__-NOISY_P39) (not(kIN-CHANNEL_P39__-NOISY_P39)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P39) (and (kREAD_P39) (k-IN-CHANNEL_P39))) ;; Support. 
(when (not(k-IN-CHANNEL_P39))  (not(kIN-CHANNEL_P39))) ;; Cancellation. 
(when (kIN-CHANNEL_P39__NOISY_P39) (and (kREAD_P39__NOISY_P39) (not(kIN-CHANNEL_P39__NOISY_P39)))) ;; Support.  Cancellation. 
))
(:action REQUEST-COPY_P35_S35
:parameters ()
:precondition (and (kCURRENT-STAGE_S35))

:effect (and  (k-BAD_P35)
(when (kBAD_P35__NOISY_P35) (and (kIN-CHANNEL_P35__NOISY_P35) (k-NOISY_P35__NOISY_P35) (not(kNOISY_P35__NOISY_P35)) (not(kREAD_P35__NOISY_P35)) (not(kBAD_P35__NOISY_P35)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P35)) (and (not(k-IN-CHANNEL_P35)) (not(kNOISY_P35)) (not(kREAD_P35)))) ;; Cancellation. 
))
(:action OBTAIN_P50_S50
:parameters ()
:precondition (and (kCURRENT-STAGE_S50))

:effect (and  (k-IN-CHANNEL_P50)
(when (kIN-CHANNEL_P50__-NOISY_P50) (and (kREAD_P50__-NOISY_P50) (not(kIN-CHANNEL_P50__-NOISY_P50)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P50) (and (kREAD_P50) (k-IN-CHANNEL_P50))) ;; Support. 
(when (not(k-IN-CHANNEL_P50))  (not(kIN-CHANNEL_P50))) ;; Cancellation. 
(when (kIN-CHANNEL_P50__NOISY_P50) (and (kREAD_P50__NOISY_P50) (not(kIN-CHANNEL_P50__NOISY_P50)))) ;; Support.  Cancellation. 
))
(:action REQUEST-COPY_P43_S43
:parameters ()
:precondition (and (kCURRENT-STAGE_S43))

:effect (and  (k-BAD_P43)
(when (kBAD_P43__NOISY_P43) (and (kIN-CHANNEL_P43__NOISY_P43) (k-NOISY_P43__NOISY_P43) (not(kNOISY_P43__NOISY_P43)) (not(kREAD_P43__NOISY_P43)) (not(kBAD_P43__NOISY_P43)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P43)) (and (not(k-IN-CHANNEL_P43)) (not(kNOISY_P43)) (not(kREAD_P43)))) ;; Cancellation. 
))
(:action RESET_S58
:parameters ()
:precondition (and (kCURRENT-STAGE_S58))

:effect (and  (not(kCURRENT-STAGE_S58)) (kCURRENT-STAGE_S0)
))
(:action REQUEST-COPY_P51_S51
:parameters ()
:precondition (and (kCURRENT-STAGE_S51))

:effect (and  (k-BAD_P51)
(when (kBAD_P51__NOISY_P51) (and (k-NOISY_P51__NOISY_P51) (not(kNOISY_P51__NOISY_P51)) (not(kREAD_P51__NOISY_P51)) (not(kBAD_P51__NOISY_P51)) (kIN-CHANNEL_P51__NOISY_P51))) ;; Support.  Cancellation. 
(when (not(k-BAD_P51)) (and (not(kNOISY_P51)) (not(kREAD_P51)) (not(k-IN-CHANNEL_P51)))) ;; Cancellation. 
))
(:action OBTAIN_P11_S11
:parameters ()
:precondition (and (kCURRENT-STAGE_S11))

:effect (and  (k-IN-CHANNEL_P11)
(when (kIN-CHANNEL_P11__-NOISY_P11) (and (kREAD_P11__-NOISY_P11) (not(kIN-CHANNEL_P11__-NOISY_P11)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P11) (and (kREAD_P11) (k-IN-CHANNEL_P11))) ;; Support. 
(when (not(k-IN-CHANNEL_P11))  (not(kIN-CHANNEL_P11))) ;; Cancellation. 
(when (kIN-CHANNEL_P11__NOISY_P11) (and (kREAD_P11__NOISY_P11) (not(kIN-CHANNEL_P11__NOISY_P11)))) ;; Support.  Cancellation. 
))
(:action RESET_S57
:parameters ()
:precondition (and (kCURRENT-STAGE_S57))

:effect (and  (not(kCURRENT-STAGE_S57)) (kCURRENT-STAGE_S0)
))
(:action REQUEST-COPY_P17_S17
:parameters ()
:precondition (and (kCURRENT-STAGE_S17))

:effect (and  (k-BAD_P17)
(when (kBAD_P17__NOISY_P17) (and (kIN-CHANNEL_P17__NOISY_P17) (k-NOISY_P17__NOISY_P17) (not(kNOISY_P17__NOISY_P17)) (not(kREAD_P17__NOISY_P17)) (not(kBAD_P17__NOISY_P17)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P17)) (and (not(k-IN-CHANNEL_P17)) (not(kNOISY_P17)) (not(kREAD_P17)))) ;; Cancellation. 
))
(:action REQUEST-COPY_P21_S21
:parameters ()
:precondition (and (kCURRENT-STAGE_S21))

:effect (and  (k-BAD_P21)
(when (kBAD_P21__NOISY_P21) (and (kIN-CHANNEL_P21__NOISY_P21) (k-NOISY_P21__NOISY_P21) (not(kNOISY_P21__NOISY_P21)) (not(kREAD_P21__NOISY_P21)) (not(kBAD_P21__NOISY_P21)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P21)) (and (not(k-IN-CHANNEL_P21)) (not(kNOISY_P21)) (not(kREAD_P21)))) ;; Cancellation. 
))
(:action RESET_S56
:parameters ()
:precondition (and (kCURRENT-STAGE_S56))

:effect (and  (not(kCURRENT-STAGE_S56)) (kCURRENT-STAGE_S0)
))
(:action OBTAIN_P25_S25
:parameters ()
:precondition (and (kCURRENT-STAGE_S25))

:effect (and  (k-IN-CHANNEL_P25)
(when (kIN-CHANNEL_P25__-NOISY_P25) (and (kREAD_P25__-NOISY_P25) (not(kIN-CHANNEL_P25__-NOISY_P25)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P25) (and (kREAD_P25) (k-IN-CHANNEL_P25))) ;; Support. 
(when (not(k-IN-CHANNEL_P25))  (not(kIN-CHANNEL_P25))) ;; Cancellation. 
(when (kIN-CHANNEL_P25__NOISY_P25) (and (kREAD_P25__NOISY_P25) (not(kIN-CHANNEL_P25__NOISY_P25)))) ;; Support.  Cancellation. 
))
(:action REQUEST-COPY_P52_S52
:parameters ()
:precondition (and (kCURRENT-STAGE_S52))

:effect (and  (k-BAD_P52)
(when (kBAD_P52__NOISY_P52) (and (k-NOISY_P52__NOISY_P52) (not(kNOISY_P52__NOISY_P52)) (not(kREAD_P52__NOISY_P52)) (not(kBAD_P52__NOISY_P52)) (kIN-CHANNEL_P52__NOISY_P52))) ;; Support.  Cancellation. 
(when (not(k-BAD_P52)) (and (not(kNOISY_P52)) (not(kREAD_P52)) (not(k-IN-CHANNEL_P52)))) ;; Cancellation. 
))
(:action CERTIFY_P54
:parameters ()
:precondition (and (kREAD_P54))

:effect (and  (not(k-BAD_P54)) (kOK_P54__-NOISY_P54)
(when (kNOISY_P54__NOISY_P54)  (kBAD_P54__NOISY_P54)) ;; Support. 
(when (k-NOISY_P54__NOISY_P54)  (kOK_P54__NOISY_P54)) ;; Support. 
))
(:action OBTAIN_P38_S38
:parameters ()
:precondition (and (kCURRENT-STAGE_S38))

:effect (and  (k-IN-CHANNEL_P38)
(when (kIN-CHANNEL_P38__-NOISY_P38) (and (kREAD_P38__-NOISY_P38) (not(kIN-CHANNEL_P38__-NOISY_P38)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P38) (and (kREAD_P38) (k-IN-CHANNEL_P38))) ;; Support. 
(when (not(k-IN-CHANNEL_P38))  (not(kIN-CHANNEL_P38))) ;; Cancellation. 
(when (kIN-CHANNEL_P38__NOISY_P38) (and (kREAD_P38__NOISY_P38) (not(kIN-CHANNEL_P38__NOISY_P38)))) ;; Support.  Cancellation. 
))
(:action CERTIFY_P53
:parameters ()
:precondition (and (kREAD_P53))

:effect (and  (not(k-BAD_P53)) (kOK_P53__-NOISY_P53)
(when (kNOISY_P53__NOISY_P53)  (kBAD_P53__NOISY_P53)) ;; Support. 
(when (k-NOISY_P53__NOISY_P53)  (kOK_P53__NOISY_P53)) ;; Support. 
))
(:action CERTIFY_P52
:parameters ()
:precondition (and (kREAD_P52))

:effect (and  (not(k-BAD_P52)) (kOK_P52__-NOISY_P52)
(when (kNOISY_P52__NOISY_P52)  (kBAD_P52__NOISY_P52)) ;; Support. 
(when (k-NOISY_P52__NOISY_P52)  (kOK_P52__NOISY_P52)) ;; Support. 
))
(:action CERTIFY_P51
:parameters ()
:precondition (and (kREAD_P51))

:effect (and  (not(k-BAD_P51)) (kOK_P51__-NOISY_P51)
(when (kNOISY_P51__NOISY_P51)  (kBAD_P51__NOISY_P51)) ;; Support. 
(when (k-NOISY_P51__NOISY_P51)  (kOK_P51__NOISY_P51)) ;; Support. 
))
(:action CERTIFY_P50
:parameters ()
:precondition (and (kREAD_P50))

:effect (and  (not(k-BAD_P50)) (kOK_P50__-NOISY_P50)
(when (kNOISY_P50__NOISY_P50)  (kBAD_P50__NOISY_P50)) ;; Support. 
(when (k-NOISY_P50__NOISY_P50)  (kOK_P50__NOISY_P50)) ;; Support. 
))
(:action CERTIFY_P49
:parameters ()
:precondition (and (kREAD_P49))

:effect (and  (not(k-BAD_P49)) (kOK_P49__-NOISY_P49)
(when (kNOISY_P49__NOISY_P49)  (kBAD_P49__NOISY_P49)) ;; Support. 
(when (k-NOISY_P49__NOISY_P49)  (kOK_P49__NOISY_P49)) ;; Support. 
))
(:action CERTIFY_P48
:parameters ()
:precondition (and (kREAD_P48))

:effect (and  (not(k-BAD_P48)) (kOK_P48__-NOISY_P48)
(when (kNOISY_P48__NOISY_P48)  (kBAD_P48__NOISY_P48)) ;; Support. 
(when (k-NOISY_P48__NOISY_P48)  (kOK_P48__NOISY_P48)) ;; Support. 
))
(:action CERTIFY_P47
:parameters ()
:precondition (and (kREAD_P47))

:effect (and  (not(k-BAD_P47)) (kOK_P47__-NOISY_P47)
(when (kNOISY_P47__NOISY_P47)  (kBAD_P47__NOISY_P47)) ;; Support. 
(when (k-NOISY_P47__NOISY_P47)  (kOK_P47__NOISY_P47)) ;; Support. 
))
(:action CERTIFY_P46
:parameters ()
:precondition (and (kREAD_P46))

:effect (and  (not(k-BAD_P46)) (kOK_P46__-NOISY_P46)
(when (kNOISY_P46__NOISY_P46)  (kBAD_P46__NOISY_P46)) ;; Support. 
(when (k-NOISY_P46__NOISY_P46)  (kOK_P46__NOISY_P46)) ;; Support. 
))
(:action OBTAIN_P24_S24
:parameters ()
:precondition (and (kCURRENT-STAGE_S24))

:effect (and  (k-IN-CHANNEL_P24)
(when (kIN-CHANNEL_P24__-NOISY_P24) (and (kREAD_P24__-NOISY_P24) (not(kIN-CHANNEL_P24__-NOISY_P24)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P24) (and (kREAD_P24) (k-IN-CHANNEL_P24))) ;; Support. 
(when (not(k-IN-CHANNEL_P24))  (not(kIN-CHANNEL_P24))) ;; Cancellation. 
(when (kIN-CHANNEL_P24__NOISY_P24) (and (kREAD_P24__NOISY_P24) (not(kIN-CHANNEL_P24__NOISY_P24)))) ;; Support.  Cancellation. 
))
(:action CERTIFY_P45
:parameters ()
:precondition (and (kREAD_P45))

:effect (and  (not(k-BAD_P45)) (kOK_P45__-NOISY_P45)
(when (kNOISY_P45__NOISY_P45)  (kBAD_P45__NOISY_P45)) ;; Support. 
(when (k-NOISY_P45__NOISY_P45)  (kOK_P45__NOISY_P45)) ;; Support. 
))
(:action CERTIFY_P44
:parameters ()
:precondition (and (kREAD_P44))

:effect (and  (not(k-BAD_P44)) (kOK_P44__-NOISY_P44)
(when (kNOISY_P44__NOISY_P44)  (kBAD_P44__NOISY_P44)) ;; Support. 
(when (k-NOISY_P44__NOISY_P44)  (kOK_P44__NOISY_P44)) ;; Support. 
))
(:action CERTIFY_P43
:parameters ()
:precondition (and (kREAD_P43))

:effect (and  (not(k-BAD_P43)) (kOK_P43__-NOISY_P43)
(when (kNOISY_P43__NOISY_P43)  (kBAD_P43__NOISY_P43)) ;; Support. 
(when (k-NOISY_P43__NOISY_P43)  (kOK_P43__NOISY_P43)) ;; Support. 
))
(:action OBTAIN_P37_S37
:parameters ()
:precondition (and (kCURRENT-STAGE_S37))

:effect (and  (k-IN-CHANNEL_P37)
(when (kIN-CHANNEL_P37__-NOISY_P37) (and (kREAD_P37__-NOISY_P37) (not(kIN-CHANNEL_P37__-NOISY_P37)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P37) (and (kREAD_P37) (k-IN-CHANNEL_P37))) ;; Support. 
(when (not(k-IN-CHANNEL_P37))  (not(kIN-CHANNEL_P37))) ;; Cancellation. 
(when (kIN-CHANNEL_P37__NOISY_P37) (and (kREAD_P37__NOISY_P37) (not(kIN-CHANNEL_P37__NOISY_P37)))) ;; Support.  Cancellation. 
))
(:action CERTIFY_P42
:parameters ()
:precondition (and (kREAD_P42))

:effect (and  (not(k-BAD_P42)) (kOK_P42__-NOISY_P42)
(when (kNOISY_P42__NOISY_P42)  (kBAD_P42__NOISY_P42)) ;; Support. 
(when (k-NOISY_P42__NOISY_P42)  (kOK_P42__NOISY_P42)) ;; Support. 
))
(:action CERTIFY_P41
:parameters ()
:precondition (and (kREAD_P41))

:effect (and  (not(k-BAD_P41)) (kOK_P41__-NOISY_P41)
(when (kNOISY_P41__NOISY_P41)  (kBAD_P41__NOISY_P41)) ;; Support. 
(when (k-NOISY_P41__NOISY_P41)  (kOK_P41__NOISY_P41)) ;; Support. 
))
(:action OBTAIN_P49_S49
:parameters ()
:precondition (and (kCURRENT-STAGE_S49))

:effect (and  (k-IN-CHANNEL_P49)
(when (kIN-CHANNEL_P49__-NOISY_P49) (and (kREAD_P49__-NOISY_P49) (not(kIN-CHANNEL_P49__-NOISY_P49)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P49) (and (kREAD_P49) (k-IN-CHANNEL_P49))) ;; Support. 
(when (not(k-IN-CHANNEL_P49))  (not(kIN-CHANNEL_P49))) ;; Cancellation. 
(when (kIN-CHANNEL_P49__NOISY_P49) (and (kREAD_P49__NOISY_P49) (not(kIN-CHANNEL_P49__NOISY_P49)))) ;; Support.  Cancellation. 
))
(:action CERTIFY_P40
:parameters ()
:precondition (and (kREAD_P40))

:effect (and  (not(k-BAD_P40)) (kOK_P40__-NOISY_P40)
(when (kNOISY_P40__NOISY_P40)  (kBAD_P40__NOISY_P40)) ;; Support. 
(when (k-NOISY_P40__NOISY_P40)  (kOK_P40__NOISY_P40)) ;; Support. 
))
(:action CERTIFY_P39
:parameters ()
:precondition (and (kREAD_P39))

:effect (and  (not(k-BAD_P39)) (kOK_P39__-NOISY_P39)
(when (kNOISY_P39__NOISY_P39)  (kBAD_P39__NOISY_P39)) ;; Support. 
(when (k-NOISY_P39__NOISY_P39)  (kOK_P39__NOISY_P39)) ;; Support. 
))
(:action CERTIFY_P38
:parameters ()
:precondition (and (kREAD_P38))

:effect (and  (not(k-BAD_P38)) (kOK_P38__-NOISY_P38)
(when (kNOISY_P38__NOISY_P38)  (kBAD_P38__NOISY_P38)) ;; Support. 
(when (k-NOISY_P38__NOISY_P38)  (kOK_P38__NOISY_P38)) ;; Support. 
))
(:action CERTIFY_P37
:parameters ()
:precondition (and (kREAD_P37))

:effect (and  (not(k-BAD_P37)) (kOK_P37__-NOISY_P37)
(when (kNOISY_P37__NOISY_P37)  (kBAD_P37__NOISY_P37)) ;; Support. 
(when (k-NOISY_P37__NOISY_P37)  (kOK_P37__NOISY_P37)) ;; Support. 
))
(:action OBTAIN_P23_S23
:parameters ()
:precondition (and (kCURRENT-STAGE_S23))

:effect (and  (k-IN-CHANNEL_P23)
(when (kIN-CHANNEL_P23__-NOISY_P23) (and (kREAD_P23__-NOISY_P23) (not(kIN-CHANNEL_P23__-NOISY_P23)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P23) (and (kREAD_P23) (k-IN-CHANNEL_P23))) ;; Support. 
(when (not(k-IN-CHANNEL_P23))  (not(kIN-CHANNEL_P23))) ;; Cancellation. 
(when (kIN-CHANNEL_P23__NOISY_P23) (and (kREAD_P23__NOISY_P23) (not(kIN-CHANNEL_P23__NOISY_P23)))) ;; Support.  Cancellation. 
))
(:action CERTIFY_P36
:parameters ()
:precondition (and (kREAD_P36))

:effect (and  (not(k-BAD_P36)) (kOK_P36__-NOISY_P36)
(when (kNOISY_P36__NOISY_P36)  (kBAD_P36__NOISY_P36)) ;; Support. 
(when (k-NOISY_P36__NOISY_P36)  (kOK_P36__NOISY_P36)) ;; Support. 
))
(:action CERTIFY_P35
:parameters ()
:precondition (and (kREAD_P35))

:effect (and  (not(k-BAD_P35)) (kOK_P35__-NOISY_P35)
(when (kNOISY_P35__NOISY_P35)  (kBAD_P35__NOISY_P35)) ;; Support. 
(when (k-NOISY_P35__NOISY_P35)  (kOK_P35__NOISY_P35)) ;; Support. 
))
(:action CERTIFY_P34
:parameters ()
:precondition (and (kREAD_P34))

:effect (and  (not(k-BAD_P34)) (kOK_P34__-NOISY_P34)
(when (kNOISY_P34__NOISY_P34)  (kBAD_P34__NOISY_P34)) ;; Support. 
(when (k-NOISY_P34__NOISY_P34)  (kOK_P34__NOISY_P34)) ;; Support. 
))
(:action CERTIFY_P33
:parameters ()
:precondition (and (kREAD_P33))

:effect (and  (not(k-BAD_P33)) (kOK_P33__-NOISY_P33)
(when (kNOISY_P33__NOISY_P33)  (kBAD_P33__NOISY_P33)) ;; Support. 
(when (k-NOISY_P33__NOISY_P33)  (kOK_P33__NOISY_P33)) ;; Support. 
))
(:action ADVANCE_S61_S62
:parameters ()
:precondition (and (kCURRENT-STAGE_S61))

:effect (and  (not(kCURRENT-STAGE_S61)) (kCURRENT-STAGE_S62)
))
(:action ADVANCE_S60_S61
:parameters ()
:precondition (and (kCURRENT-STAGE_S60))

:effect (and  (not(kCURRENT-STAGE_S60)) (kCURRENT-STAGE_S61)
))
(:action ADVANCE_S59_S60
:parameters ()
:precondition (and (kCURRENT-STAGE_S59))

:effect (and  (not(kCURRENT-STAGE_S59)) (kCURRENT-STAGE_S60)
))
(:action ADVANCE_S58_S59
:parameters ()
:precondition (and (kCURRENT-STAGE_S58))

:effect (and  (not(kCURRENT-STAGE_S58)) (kCURRENT-STAGE_S59)
))
(:action ADVANCE_S57_S58
:parameters ()
:precondition (and (kCURRENT-STAGE_S57))

:effect (and  (not(kCURRENT-STAGE_S57)) (kCURRENT-STAGE_S58)
))
(:action ADVANCE_S56_S57
:parameters ()
:precondition (and (kCURRENT-STAGE_S56))

:effect (and  (not(kCURRENT-STAGE_S56)) (kCURRENT-STAGE_S57)
))
(:action ADVANCE_S55_S56
:parameters ()
:precondition (and (kCURRENT-STAGE_S55))

:effect (and  (not(kCURRENT-STAGE_S55)) (kCURRENT-STAGE_S56)
))
(:action ADVANCE_S54_S55
:parameters ()
:precondition (and (kCURRENT-STAGE_S54))

:effect (and  (not(kCURRENT-STAGE_S54)) (kCURRENT-STAGE_S55)
))
(:action ADVANCE_S53_S54
:parameters ()
:precondition (and (kCURRENT-STAGE_S53))

:effect (and  (not(kCURRENT-STAGE_S53)) (kCURRENT-STAGE_S54)
))
(:action ADVANCE_S52_S53
:parameters ()
:precondition (and (kCURRENT-STAGE_S52))

:effect (and  (not(kCURRENT-STAGE_S52)) (kCURRENT-STAGE_S53)
))
(:action ADVANCE_S51_S52
:parameters ()
:precondition (and (kCURRENT-STAGE_S51))

:effect (and  (not(kCURRENT-STAGE_S51)) (kCURRENT-STAGE_S52)
))
(:action ADVANCE_S50_S51
:parameters ()
:precondition (and (kCURRENT-STAGE_S50))

:effect (and  (not(kCURRENT-STAGE_S50)) (kCURRENT-STAGE_S51)
))
(:action ADVANCE_S49_S50
:parameters ()
:precondition (and (kCURRENT-STAGE_S49))

:effect (and  (not(kCURRENT-STAGE_S49)) (kCURRENT-STAGE_S50)
))
(:action ADVANCE_S48_S49
:parameters ()
:precondition (and (kCURRENT-STAGE_S48))

:effect (and  (not(kCURRENT-STAGE_S48)) (kCURRENT-STAGE_S49)
))
(:action ADVANCE_S47_S48
:parameters ()
:precondition (and (kCURRENT-STAGE_S47))

:effect (and  (not(kCURRENT-STAGE_S47)) (kCURRENT-STAGE_S48)
))
(:action ADVANCE_S46_S47
:parameters ()
:precondition (and (kCURRENT-STAGE_S46))

:effect (and  (not(kCURRENT-STAGE_S46)) (kCURRENT-STAGE_S47)
))
(:action ADVANCE_S45_S46
:parameters ()
:precondition (and (kCURRENT-STAGE_S45))

:effect (and  (not(kCURRENT-STAGE_S45)) (kCURRENT-STAGE_S46)
))
(:action ADVANCE_S44_S45
:parameters ()
:precondition (and (kCURRENT-STAGE_S44))

:effect (and  (not(kCURRENT-STAGE_S44)) (kCURRENT-STAGE_S45)
))
(:action ADVANCE_S43_S44
:parameters ()
:precondition (and (kCURRENT-STAGE_S43))

:effect (and  (not(kCURRENT-STAGE_S43)) (kCURRENT-STAGE_S44)
))
(:action ADVANCE_S42_S43
:parameters ()
:precondition (and (kCURRENT-STAGE_S42))

:effect (and  (not(kCURRENT-STAGE_S42)) (kCURRENT-STAGE_S43)
))
(:action ADVANCE_S41_S42
:parameters ()
:precondition (and (kCURRENT-STAGE_S41))

:effect (and  (not(kCURRENT-STAGE_S41)) (kCURRENT-STAGE_S42)
))
(:action ADVANCE_S40_S41
:parameters ()
:precondition (and (kCURRENT-STAGE_S40))

:effect (and  (not(kCURRENT-STAGE_S40)) (kCURRENT-STAGE_S41)
))
(:action ADVANCE_S39_S40
:parameters ()
:precondition (and (kCURRENT-STAGE_S39))

:effect (and  (not(kCURRENT-STAGE_S39)) (kCURRENT-STAGE_S40)
))
(:action ADVANCE_S38_S39
:parameters ()
:precondition (and (kCURRENT-STAGE_S38))

:effect (and  (not(kCURRENT-STAGE_S38)) (kCURRENT-STAGE_S39)
))
(:action ADVANCE_S37_S38
:parameters ()
:precondition (and (kCURRENT-STAGE_S37))

:effect (and  (not(kCURRENT-STAGE_S37)) (kCURRENT-STAGE_S38)
))
(:action ADVANCE_S36_S37
:parameters ()
:precondition (and (kCURRENT-STAGE_S36))

:effect (and  (not(kCURRENT-STAGE_S36)) (kCURRENT-STAGE_S37)
))
(:action ADVANCE_S35_S36
:parameters ()
:precondition (and (kCURRENT-STAGE_S35))

:effect (and  (not(kCURRENT-STAGE_S35)) (kCURRENT-STAGE_S36)
))
(:action REQUEST-COPY_P2_S2
:parameters ()
:precondition (and (kCURRENT-STAGE_S2))

:effect (and  (k-BAD_P2)
(when (kBAD_P2__NOISY_P2) (and (kIN-CHANNEL_P2__NOISY_P2) (k-NOISY_P2__NOISY_P2) (not(kNOISY_P2__NOISY_P2)) (not(kREAD_P2__NOISY_P2)) (not(kBAD_P2__NOISY_P2)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P2)) (and (not(k-IN-CHANNEL_P2)) (not(kNOISY_P2)) (not(kREAD_P2)))) ;; Cancellation. 
))
(:action ADVANCE_S34_S35
:parameters ()
:precondition (and (kCURRENT-STAGE_S34))

:effect (and  (not(kCURRENT-STAGE_S34)) (kCURRENT-STAGE_S35)
))
(:action ADVANCE_S33_S34
:parameters ()
:precondition (and (kCURRENT-STAGE_S33))

:effect (and  (not(kCURRENT-STAGE_S33)) (kCURRENT-STAGE_S34)
))
(:action ADVANCE_S32_S33
:parameters ()
:precondition (and (kCURRENT-STAGE_S32))

:effect (and  (not(kCURRENT-STAGE_S32)) (kCURRENT-STAGE_S33)
))
(:action ADVANCE_S31_S32
:parameters ()
:precondition (and (kCURRENT-STAGE_S31))

:effect (and  (not(kCURRENT-STAGE_S31)) (kCURRENT-STAGE_S32)
))
(:action ADVANCE_S30_S31
:parameters ()
:precondition (and (kCURRENT-STAGE_S30))

:effect (and  (not(kCURRENT-STAGE_S30)) (kCURRENT-STAGE_S31)
))
(:action ADVANCE_S29_S30
:parameters ()
:precondition (and (kCURRENT-STAGE_S29))

:effect (and  (not(kCURRENT-STAGE_S29)) (kCURRENT-STAGE_S30)
))
(:action ADVANCE_S28_S29
:parameters ()
:precondition (and (kCURRENT-STAGE_S28))

:effect (and  (not(kCURRENT-STAGE_S28)) (kCURRENT-STAGE_S29)
))
(:action ADVANCE_S27_S28
:parameters ()
:precondition (and (kCURRENT-STAGE_S27))

:effect (and  (not(kCURRENT-STAGE_S27)) (kCURRENT-STAGE_S28)
))
(:action ADVANCE_S26_S27
:parameters ()
:precondition (and (kCURRENT-STAGE_S26))

:effect (and  (not(kCURRENT-STAGE_S26)) (kCURRENT-STAGE_S27)
))
(:action REQUEST-COPY_P4_S4
:parameters ()
:precondition (and (kCURRENT-STAGE_S4))

:effect (and  (k-BAD_P4)
(when (kBAD_P4__NOISY_P4) (and (kIN-CHANNEL_P4__NOISY_P4) (k-NOISY_P4__NOISY_P4) (not(kNOISY_P4__NOISY_P4)) (not(kREAD_P4__NOISY_P4)) (not(kBAD_P4__NOISY_P4)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P4)) (and (not(k-IN-CHANNEL_P4)) (not(kNOISY_P4)) (not(kREAD_P4)))) ;; Cancellation. 
))
(:action ADVANCE_S25_S26
:parameters ()
:precondition (and (kCURRENT-STAGE_S25))

:effect (and  (not(kCURRENT-STAGE_S25)) (kCURRENT-STAGE_S26)
))
(:action ADVANCE_S24_S25
:parameters ()
:precondition (and (kCURRENT-STAGE_S24))

:effect (and  (not(kCURRENT-STAGE_S24)) (kCURRENT-STAGE_S25)
))
(:action ADVANCE_S23_S24
:parameters ()
:precondition (and (kCURRENT-STAGE_S23))

:effect (and  (not(kCURRENT-STAGE_S23)) (kCURRENT-STAGE_S24)
))
(:action ADVANCE_S22_S23
:parameters ()
:precondition (and (kCURRENT-STAGE_S22))

:effect (and  (not(kCURRENT-STAGE_S22)) (kCURRENT-STAGE_S23)
))
(:action ADVANCE_S21_S22
:parameters ()
:precondition (and (kCURRENT-STAGE_S21))

:effect (and  (not(kCURRENT-STAGE_S21)) (kCURRENT-STAGE_S22)
))
(:action ADVANCE_S20_S21
:parameters ()
:precondition (and (kCURRENT-STAGE_S20))

:effect (and  (not(kCURRENT-STAGE_S20)) (kCURRENT-STAGE_S21)
))
(:action ADVANCE_S19_S20
:parameters ()
:precondition (and (kCURRENT-STAGE_S19))

:effect (and  (not(kCURRENT-STAGE_S19)) (kCURRENT-STAGE_S20)
))
(:action ADVANCE_S18_S19
:parameters ()
:precondition (and (kCURRENT-STAGE_S18))

:effect (and  (not(kCURRENT-STAGE_S18)) (kCURRENT-STAGE_S19)
))
(:action ADVANCE_S17_S18
:parameters ()
:precondition (and (kCURRENT-STAGE_S17))

:effect (and  (not(kCURRENT-STAGE_S17)) (kCURRENT-STAGE_S18)
))
(:action ADVANCE_S16_S17
:parameters ()
:precondition (and (kCURRENT-STAGE_S16))

:effect (and  (not(kCURRENT-STAGE_S16)) (kCURRENT-STAGE_S17)
))
(:action ADVANCE_S15_S16
:parameters ()
:precondition (and (kCURRENT-STAGE_S15))

:effect (and  (not(kCURRENT-STAGE_S15)) (kCURRENT-STAGE_S16)
))
(:action ADVANCE_S14_S15
:parameters ()
:precondition (and (kCURRENT-STAGE_S14))

:effect (and  (not(kCURRENT-STAGE_S14)) (kCURRENT-STAGE_S15)
))
(:action ADVANCE_S13_S14
:parameters ()
:precondition (and (kCURRENT-STAGE_S13))

:effect (and  (not(kCURRENT-STAGE_S13)) (kCURRENT-STAGE_S14)
))
(:action ADVANCE_S12_S13
:parameters ()
:precondition (and (kCURRENT-STAGE_S12))

:effect (and  (not(kCURRENT-STAGE_S12)) (kCURRENT-STAGE_S13)
))
(:action ADVANCE_S11_S12
:parameters ()
:precondition (and (kCURRENT-STAGE_S11))

:effect (and  (not(kCURRENT-STAGE_S11)) (kCURRENT-STAGE_S12)
))
(:action ADVANCE_S10_S11
:parameters ()
:precondition (and (kCURRENT-STAGE_S10))

:effect (and  (not(kCURRENT-STAGE_S10)) (kCURRENT-STAGE_S11)
))
(:action RESET_S9
:parameters ()
:precondition (and (kCURRENT-STAGE_S9))

:effect (and  (not(kCURRENT-STAGE_S9)) (kCURRENT-STAGE_S0)
))
(:action RESET_S8
:parameters ()
:precondition (and (kCURRENT-STAGE_S8))

:effect (and  (not(kCURRENT-STAGE_S8)) (kCURRENT-STAGE_S0)
))
(:action RESET_S7
:parameters ()
:precondition (and (kCURRENT-STAGE_S7))

:effect (and  (not(kCURRENT-STAGE_S7)) (kCURRENT-STAGE_S0)
))
(:action RESET_S6
:parameters ()
:precondition (and (kCURRENT-STAGE_S6))

:effect (and  (not(kCURRENT-STAGE_S6)) (kCURRENT-STAGE_S0)
))
(:action RESET_S5
:parameters ()
:precondition (and (kCURRENT-STAGE_S5))

:effect (and  (not(kCURRENT-STAGE_S5)) (kCURRENT-STAGE_S0)
))
(:action RESET_S4
:parameters ()
:precondition (and (kCURRENT-STAGE_S4))

:effect (and  (not(kCURRENT-STAGE_S4)) (kCURRENT-STAGE_S0)
))
(:action RESET_S3
:parameters ()
:precondition (and (kCURRENT-STAGE_S3))

:effect (and  (not(kCURRENT-STAGE_S3)) (kCURRENT-STAGE_S0)
))
(:action RESET_S2
:parameters ()
:precondition (and (kCURRENT-STAGE_S2))

:effect (and  (not(kCURRENT-STAGE_S2)) (kCURRENT-STAGE_S0)
))
(:action RESET_S10
:parameters ()
:precondition (and (kCURRENT-STAGE_S10))

:effect (and  (not(kCURRENT-STAGE_S10)) (kCURRENT-STAGE_S0)
))
(:action RESET_S1
:parameters ()
:precondition (and (kCURRENT-STAGE_S1))

:effect (and  (not(kCURRENT-STAGE_S1)) (kCURRENT-STAGE_S0)
))
(:action REQUEST-COPY_P9_S9
:parameters ()
:precondition (and (kCURRENT-STAGE_S9))

:effect (and  (k-BAD_P9)
(when (kBAD_P9__NOISY_P9) (and (kIN-CHANNEL_P9__NOISY_P9) (k-NOISY_P9__NOISY_P9) (not(kNOISY_P9__NOISY_P9)) (not(kREAD_P9__NOISY_P9)) (not(kBAD_P9__NOISY_P9)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P9)) (and (not(k-IN-CHANNEL_P9)) (not(kNOISY_P9)) (not(kREAD_P9)))) ;; Cancellation. 
))
(:action OBTAIN_P36_S36
:parameters ()
:precondition (and (kCURRENT-STAGE_S36))

:effect (and  (k-IN-CHANNEL_P36)
(when (kIN-CHANNEL_P36__-NOISY_P36) (and (kREAD_P36__-NOISY_P36) (not(kIN-CHANNEL_P36__-NOISY_P36)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P36) (and (kREAD_P36) (k-IN-CHANNEL_P36))) ;; Support. 
(when (not(k-IN-CHANNEL_P36))  (not(kIN-CHANNEL_P36))) ;; Cancellation. 
(when (kIN-CHANNEL_P36__NOISY_P36) (and (kREAD_P36__NOISY_P36) (not(kIN-CHANNEL_P36__NOISY_P36)))) ;; Support.  Cancellation. 
))
(:action CERTIFY_P32
:parameters ()
:precondition (and (kREAD_P32))

:effect (and  (not(k-BAD_P32)) (kOK_P32__-NOISY_P32)
(when (kNOISY_P32__NOISY_P32)  (kBAD_P32__NOISY_P32)) ;; Support. 
(when (k-NOISY_P32__NOISY_P32)  (kOK_P32__NOISY_P32)) ;; Support. 
))
(:action CERTIFY_P31
:parameters ()
:precondition (and (kREAD_P31))

:effect (and  (not(k-BAD_P31)) (kOK_P31__-NOISY_P31)
(when (kNOISY_P31__NOISY_P31)  (kBAD_P31__NOISY_P31)) ;; Support. 
(when (k-NOISY_P31__NOISY_P31)  (kOK_P31__NOISY_P31)) ;; Support. 
))
(:action CERTIFY_P30
:parameters ()
:precondition (and (kREAD_P30))

:effect (and  (not(k-BAD_P30)) (kOK_P30__-NOISY_P30)
(when (kNOISY_P30__NOISY_P30)  (kBAD_P30__NOISY_P30)) ;; Support. 
(when (k-NOISY_P30__NOISY_P30)  (kOK_P30__NOISY_P30)) ;; Support. 
))
(:action OBTAIN_P48_S48
:parameters ()
:precondition (and (kCURRENT-STAGE_S48))

:effect (and  (k-IN-CHANNEL_P48)
(when (kIN-CHANNEL_P48__-NOISY_P48) (and (kREAD_P48__-NOISY_P48) (not(kIN-CHANNEL_P48__-NOISY_P48)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P48) (and (kREAD_P48) (k-IN-CHANNEL_P48))) ;; Support. 
(when (not(k-IN-CHANNEL_P48))  (not(kIN-CHANNEL_P48))) ;; Cancellation. 
(when (kIN-CHANNEL_P48__NOISY_P48) (and (kREAD_P48__NOISY_P48) (not(kIN-CHANNEL_P48__NOISY_P48)))) ;; Support.  Cancellation. 
))
(:action CERTIFY_P29
:parameters ()
:precondition (and (kREAD_P29))

:effect (and  (not(k-BAD_P29)) (kOK_P29__-NOISY_P29)
(when (kNOISY_P29__NOISY_P29)  (kBAD_P29__NOISY_P29)) ;; Support. 
(when (k-NOISY_P29__NOISY_P29)  (kOK_P29__NOISY_P29)) ;; Support. 
))
(:action CERTIFY_P28
:parameters ()
:precondition (and (kREAD_P28))

:effect (and  (not(k-BAD_P28)) (kOK_P28__-NOISY_P28)
(when (kNOISY_P28__NOISY_P28)  (kBAD_P28__NOISY_P28)) ;; Support. 
(when (k-NOISY_P28__NOISY_P28)  (kOK_P28__NOISY_P28)) ;; Support. 
))
(:action OBTAIN_P22_S22
:parameters ()
:precondition (and (kCURRENT-STAGE_S22))

:effect (and  (k-IN-CHANNEL_P22)
(when (kIN-CHANNEL_P22__-NOISY_P22) (and (kREAD_P22__-NOISY_P22) (not(kIN-CHANNEL_P22__-NOISY_P22)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P22) (and (kREAD_P22) (k-IN-CHANNEL_P22))) ;; Support. 
(when (not(k-IN-CHANNEL_P22))  (not(kIN-CHANNEL_P22))) ;; Cancellation. 
(when (kIN-CHANNEL_P22__NOISY_P22) (and (kREAD_P22__NOISY_P22) (not(kIN-CHANNEL_P22__NOISY_P22)))) ;; Support.  Cancellation. 
))
(:action CERTIFY_P27
:parameters ()
:precondition (and (kREAD_P27))

:effect (and  (not(k-BAD_P27)) (kOK_P27__-NOISY_P27)
(when (kNOISY_P27__NOISY_P27)  (kBAD_P27__NOISY_P27)) ;; Support. 
(when (k-NOISY_P27__NOISY_P27)  (kOK_P27__NOISY_P27)) ;; Support. 
))
(:action CERTIFY_P26
:parameters ()
:precondition (and (kREAD_P26))

:effect (and  (not(k-BAD_P26)) (kOK_P26__-NOISY_P26)
(when (kNOISY_P26__NOISY_P26)  (kBAD_P26__NOISY_P26)) ;; Support. 
(when (k-NOISY_P26__NOISY_P26)  (kOK_P26__NOISY_P26)) ;; Support. 
))
(:action CERTIFY_P25
:parameters ()
:precondition (and (kREAD_P25))

:effect (and  (not(k-BAD_P25)) (kOK_P25__-NOISY_P25)
(when (kNOISY_P25__NOISY_P25)  (kBAD_P25__NOISY_P25)) ;; Support. 
(when (k-NOISY_P25__NOISY_P25)  (kOK_P25__NOISY_P25)) ;; Support. 
))
(:action REQUEST-COPY_P8_S8
:parameters ()
:precondition (and (kCURRENT-STAGE_S8))

:effect (and  (k-BAD_P8)
(when (kBAD_P8__NOISY_P8) (and (kIN-CHANNEL_P8__NOISY_P8) (k-NOISY_P8__NOISY_P8) (not(kNOISY_P8__NOISY_P8)) (not(kREAD_P8__NOISY_P8)) (not(kBAD_P8__NOISY_P8)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P8)) (and (not(k-IN-CHANNEL_P8)) (not(kNOISY_P8)) (not(kREAD_P8)))) ;; Cancellation. 
))
(:action CERTIFY_P24
:parameters ()
:precondition (and (kREAD_P24))

:effect (and  (not(k-BAD_P24)) (kOK_P24__-NOISY_P24)
(when (kNOISY_P24__NOISY_P24)  (kBAD_P24__NOISY_P24)) ;; Support. 
(when (k-NOISY_P24__NOISY_P24)  (kOK_P24__NOISY_P24)) ;; Support. 
))
(:action CERTIFY_P23
:parameters ()
:precondition (and (kREAD_P23))

:effect (and  (not(k-BAD_P23)) (kOK_P23__-NOISY_P23)
(when (kNOISY_P23__NOISY_P23)  (kBAD_P23__NOISY_P23)) ;; Support. 
(when (k-NOISY_P23__NOISY_P23)  (kOK_P23__NOISY_P23)) ;; Support. 
))
(:action OBTAIN_P35_S35
:parameters ()
:precondition (and (kCURRENT-STAGE_S35))

:effect (and  (k-IN-CHANNEL_P35)
(when (kIN-CHANNEL_P35__-NOISY_P35) (and (kREAD_P35__-NOISY_P35) (not(kIN-CHANNEL_P35__-NOISY_P35)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P35) (and (kREAD_P35) (k-IN-CHANNEL_P35))) ;; Support. 
(when (not(k-IN-CHANNEL_P35))  (not(kIN-CHANNEL_P35))) ;; Cancellation. 
(when (kIN-CHANNEL_P35__NOISY_P35) (and (kREAD_P35__NOISY_P35) (not(kIN-CHANNEL_P35__NOISY_P35)))) ;; Support.  Cancellation. 
))
(:action CERTIFY_P22
:parameters ()
:precondition (and (kREAD_P22))

:effect (and  (not(k-BAD_P22)) (kOK_P22__-NOISY_P22)
(when (kNOISY_P22__NOISY_P22)  (kBAD_P22__NOISY_P22)) ;; Support. 
(when (k-NOISY_P22__NOISY_P22)  (kOK_P22__NOISY_P22)) ;; Support. 
))
(:action CERTIFY_P21
:parameters ()
:precondition (and (kREAD_P21))

:effect (and  (not(k-BAD_P21)) (kOK_P21__-NOISY_P21)
(when (kNOISY_P21__NOISY_P21)  (kBAD_P21__NOISY_P21)) ;; Support. 
(when (k-NOISY_P21__NOISY_P21)  (kOK_P21__NOISY_P21)) ;; Support. 
))
(:action CERTIFY_P20
:parameters ()
:precondition (and (kREAD_P20))

:effect (and  (not(k-BAD_P20)) (kOK_P20__-NOISY_P20)
(when (kNOISY_P20__NOISY_P20)  (kBAD_P20__NOISY_P20)) ;; Support. 
(when (k-NOISY_P20__NOISY_P20)  (kOK_P20__NOISY_P20)) ;; Support. 
))
(:action CERTIFY_P19
:parameters ()
:precondition (and (kREAD_P19))

:effect (and  (not(k-BAD_P19)) (kOK_P19__-NOISY_P19)
(when (kNOISY_P19__NOISY_P19)  (kBAD_P19__NOISY_P19)) ;; Support. 
(when (k-NOISY_P19__NOISY_P19)  (kOK_P19__NOISY_P19)) ;; Support. 
))
(:action OBTAIN_P47_S47
:parameters ()
:precondition (and (kCURRENT-STAGE_S47))

:effect (and  (k-IN-CHANNEL_P47)
(when (kIN-CHANNEL_P47__-NOISY_P47) (and (kREAD_P47__-NOISY_P47) (not(kIN-CHANNEL_P47__-NOISY_P47)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P47) (and (kREAD_P47) (k-IN-CHANNEL_P47))) ;; Support. 
(when (not(k-IN-CHANNEL_P47))  (not(kIN-CHANNEL_P47))) ;; Cancellation. 
(when (kIN-CHANNEL_P47__NOISY_P47) (and (kREAD_P47__NOISY_P47) (not(kIN-CHANNEL_P47__NOISY_P47)))) ;; Support.  Cancellation. 
))
(:action OBTAIN_P21_S21
:parameters ()
:precondition (and (kCURRENT-STAGE_S21))

:effect (and  (k-IN-CHANNEL_P21)
(when (kIN-CHANNEL_P21__-NOISY_P21) (and (kREAD_P21__-NOISY_P21) (not(kIN-CHANNEL_P21__-NOISY_P21)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P21) (and (kREAD_P21) (k-IN-CHANNEL_P21))) ;; Support. 
(when (not(k-IN-CHANNEL_P21))  (not(kIN-CHANNEL_P21))) ;; Cancellation. 
(when (kIN-CHANNEL_P21__NOISY_P21) (and (kREAD_P21__NOISY_P21) (not(kIN-CHANNEL_P21__NOISY_P21)))) ;; Support.  Cancellation. 
))
(:action CERTIFY_P18
:parameters ()
:precondition (and (kREAD_P18))

:effect (and  (not(k-BAD_P18)) (kOK_P18__-NOISY_P18)
(when (kNOISY_P18__NOISY_P18)  (kBAD_P18__NOISY_P18)) ;; Support. 
(when (k-NOISY_P18__NOISY_P18)  (kOK_P18__NOISY_P18)) ;; Support. 
))
(:action CERTIFY_P17
:parameters ()
:precondition (and (kREAD_P17))

:effect (and  (not(k-BAD_P17)) (kOK_P17__-NOISY_P17)
(when (kNOISY_P17__NOISY_P17)  (kBAD_P17__NOISY_P17)) ;; Support. 
(when (k-NOISY_P17__NOISY_P17)  (kOK_P17__NOISY_P17)) ;; Support. 
))
(:action REQUEST-COPY_P7_S7
:parameters ()
:precondition (and (kCURRENT-STAGE_S7))

:effect (and  (k-BAD_P7)
(when (kBAD_P7__NOISY_P7) (and (kIN-CHANNEL_P7__NOISY_P7) (k-NOISY_P7__NOISY_P7) (not(kNOISY_P7__NOISY_P7)) (not(kREAD_P7__NOISY_P7)) (not(kBAD_P7__NOISY_P7)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P7)) (and (not(k-IN-CHANNEL_P7)) (not(kNOISY_P7)) (not(kREAD_P7)))) ;; Cancellation. 
))
(:action CERTIFY_P16
:parameters ()
:precondition (and (kREAD_P16))

:effect (and  (not(k-BAD_P16)) (kOK_P16__-NOISY_P16)
(when (kNOISY_P16__NOISY_P16)  (kBAD_P16__NOISY_P16)) ;; Support. 
(when (k-NOISY_P16__NOISY_P16)  (kOK_P16__NOISY_P16)) ;; Support. 
))
(:action CERTIFY_P15
:parameters ()
:precondition (and (kREAD_P15))

:effect (and  (not(k-BAD_P15)) (kOK_P15__-NOISY_P15)
(when (kNOISY_P15__NOISY_P15)  (kBAD_P15__NOISY_P15)) ;; Support. 
(when (k-NOISY_P15__NOISY_P15)  (kOK_P15__NOISY_P15)) ;; Support. 
))
(:action CERTIFY_P14
:parameters ()
:precondition (and (kREAD_P14))

:effect (and  (not(k-BAD_P14)) (kOK_P14__-NOISY_P14)
(when (kNOISY_P14__NOISY_P14)  (kBAD_P14__NOISY_P14)) ;; Support. 
(when (k-NOISY_P14__NOISY_P14)  (kOK_P14__NOISY_P14)) ;; Support. 
))
(:action CERTIFY_P13
:parameters ()
:precondition (and (kREAD_P13))

:effect (and  (not(k-BAD_P13)) (kOK_P13__-NOISY_P13)
(when (kNOISY_P13__NOISY_P13)  (kBAD_P13__NOISY_P13)) ;; Support. 
(when (k-NOISY_P13__NOISY_P13)  (kOK_P13__NOISY_P13)) ;; Support. 
))
(:action OBTAIN_P34_S34
:parameters ()
:precondition (and (kCURRENT-STAGE_S34))

:effect (and  (k-IN-CHANNEL_P34)
(when (kIN-CHANNEL_P34__-NOISY_P34) (and (kREAD_P34__-NOISY_P34) (not(kIN-CHANNEL_P34__-NOISY_P34)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P34) (and (kREAD_P34) (k-IN-CHANNEL_P34))) ;; Support. 
(when (not(k-IN-CHANNEL_P34))  (not(kIN-CHANNEL_P34))) ;; Cancellation. 
(when (kIN-CHANNEL_P34__NOISY_P34) (and (kREAD_P34__NOISY_P34) (not(kIN-CHANNEL_P34__NOISY_P34)))) ;; Support.  Cancellation. 
))
(:action CERTIFY_P12
:parameters ()
:precondition (and (kREAD_P12))

:effect (and  (not(k-BAD_P12)) (kOK_P12__-NOISY_P12)
(when (kNOISY_P12__NOISY_P12)  (kBAD_P12__NOISY_P12)) ;; Support. 
(when (k-NOISY_P12__NOISY_P12)  (kOK_P12__NOISY_P12)) ;; Support. 
))
(:action CERTIFY_P11
:parameters ()
:precondition (and (kREAD_P11))

:effect (and  (not(k-BAD_P11)) (kOK_P11__-NOISY_P11)
(when (kNOISY_P11__NOISY_P11)  (kBAD_P11__NOISY_P11)) ;; Support. 
(when (k-NOISY_P11__NOISY_P11)  (kOK_P11__NOISY_P11)) ;; Support. 
))
(:action RESET_S55
:parameters ()
:precondition (and (kCURRENT-STAGE_S55))

:effect (and  (not(kCURRENT-STAGE_S55)) (kCURRENT-STAGE_S0)
))
(:action REQUEST-COPY_P53_S53
:parameters ()
:precondition (and (kCURRENT-STAGE_S53))

:effect (and  (k-BAD_P53)
(when (kBAD_P53__NOISY_P53) (and (not(kREAD_P53__NOISY_P53)) (k-NOISY_P53__NOISY_P53) (not(kNOISY_P53__NOISY_P53)) (not(kBAD_P53__NOISY_P53)) (kIN-CHANNEL_P53__NOISY_P53))) ;; Support.  Cancellation. 
(when (not(k-BAD_P53)) (and (not(kREAD_P53)) (not(kNOISY_P53)) (not(k-IN-CHANNEL_P53)))) ;; Cancellation. 
))
(:action OBTAIN_P20_S20
:parameters ()
:precondition (and (kCURRENT-STAGE_S20))

:effect (and  (k-IN-CHANNEL_P20)
(when (kIN-CHANNEL_P20__-NOISY_P20) (and (kREAD_P20__-NOISY_P20) (not(kIN-CHANNEL_P20__-NOISY_P20)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P20) (and (kREAD_P20) (k-IN-CHANNEL_P20))) ;; Support. 
(when (not(k-IN-CHANNEL_P20))  (not(kIN-CHANNEL_P20))) ;; Cancellation. 
(when (kIN-CHANNEL_P20__NOISY_P20) (and (kREAD_P20__NOISY_P20) (not(kIN-CHANNEL_P20__NOISY_P20)))) ;; Support.  Cancellation. 
))
(:action REQUEST-COPY_P54_S54
:parameters ()
:precondition (and (kCURRENT-STAGE_S54))

:effect (and  (k-BAD_P54)
(when (kBAD_P54__NOISY_P54) (and (kIN-CHANNEL_P54__NOISY_P54) (not(kREAD_P54__NOISY_P54)) (k-NOISY_P54__NOISY_P54) (not(kNOISY_P54__NOISY_P54)) (not(kBAD_P54__NOISY_P54)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P54)) (and (not(k-IN-CHANNEL_P54)) (not(kREAD_P54)) (not(kNOISY_P54)))) ;; Cancellation. 
))
(:action REQUEST-COPY_P6_S6
:parameters ()
:precondition (and (kCURRENT-STAGE_S6))

:effect (and  (k-BAD_P6)
(when (kBAD_P6__NOISY_P6) (and (kIN-CHANNEL_P6__NOISY_P6) (k-NOISY_P6__NOISY_P6) (not(kNOISY_P6__NOISY_P6)) (not(kREAD_P6__NOISY_P6)) (not(kBAD_P6__NOISY_P6)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P6)) (and (not(k-IN-CHANNEL_P6)) (not(kNOISY_P6)) (not(kREAD_P6)))) ;; Cancellation. 
))
(:action OBTAIN_P46_S46
:parameters ()
:precondition (and (kCURRENT-STAGE_S46))

:effect (and  (k-IN-CHANNEL_P46)
(when (kIN-CHANNEL_P46__-NOISY_P46) (and (kREAD_P46__-NOISY_P46) (not(kIN-CHANNEL_P46__-NOISY_P46)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P46) (and (kREAD_P46) (k-IN-CHANNEL_P46))) ;; Support. 
(when (not(k-IN-CHANNEL_P46))  (not(kIN-CHANNEL_P46))) ;; Cancellation. 
(when (kIN-CHANNEL_P46__NOISY_P46) (and (kREAD_P46__NOISY_P46) (not(kIN-CHANNEL_P46__NOISY_P46)))) ;; Support.  Cancellation. 
))
(:action RESET_S54
:parameters ()
:precondition (and (kCURRENT-STAGE_S54))

:effect (and  (not(kCURRENT-STAGE_S54)) (kCURRENT-STAGE_S0)
))
(:action RESET_S53
:parameters ()
:precondition (and (kCURRENT-STAGE_S53))

:effect (and  (not(kCURRENT-STAGE_S53)) (kCURRENT-STAGE_S0)
))
(:action REQUEST-COPY_P32_S32
:parameters ()
:precondition (and (kCURRENT-STAGE_S32))

:effect (and  (k-BAD_P32)
(when (kBAD_P32__NOISY_P32) (and (kIN-CHANNEL_P32__NOISY_P32) (not(kREAD_P32__NOISY_P32)) (k-NOISY_P32__NOISY_P32) (not(kNOISY_P32__NOISY_P32)) (not(kBAD_P32__NOISY_P32)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P32)) (and (not(k-IN-CHANNEL_P32)) (not(kREAD_P32)) (not(kNOISY_P32)))) ;; Cancellation. 
))
(:action REQUEST-COPY_P44_S44
:parameters ()
:precondition (and (kCURRENT-STAGE_S44))

:effect (and  (k-BAD_P44)
(when (kBAD_P44__NOISY_P44) (and (kIN-CHANNEL_P44__NOISY_P44) (not(kREAD_P44__NOISY_P44)) (k-NOISY_P44__NOISY_P44) (not(kNOISY_P44__NOISY_P44)) (not(kBAD_P44__NOISY_P44)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P44)) (and (not(k-IN-CHANNEL_P44)) (not(kREAD_P44)) (not(kNOISY_P44)))) ;; Cancellation. 
))
(:action RESET_S52
:parameters ()
:precondition (and (kCURRENT-STAGE_S52))

:effect (and  (not(kCURRENT-STAGE_S52)) (kCURRENT-STAGE_S0)
))
(:action OBTAIN_P33_S33
:parameters ()
:precondition (and (kCURRENT-STAGE_S33))

:effect (and  (k-IN-CHANNEL_P33)
(when (kIN-CHANNEL_P33__-NOISY_P33) (and (kREAD_P33__-NOISY_P33) (not(kIN-CHANNEL_P33__-NOISY_P33)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P33) (and (kREAD_P33) (k-IN-CHANNEL_P33))) ;; Support. 
(when (not(k-IN-CHANNEL_P33))  (not(kIN-CHANNEL_P33))) ;; Cancellation. 
(when (kIN-CHANNEL_P33__NOISY_P33) (and (kREAD_P33__NOISY_P33) (not(kIN-CHANNEL_P33__NOISY_P33)))) ;; Support.  Cancellation. 
))
(:action REQUEST-COPY_P24_S24
:parameters ()
:precondition (and (kCURRENT-STAGE_S24))

:effect (and  (k-BAD_P24)
(when (kBAD_P24__NOISY_P24) (and (not(kREAD_P24__NOISY_P24)) (k-NOISY_P24__NOISY_P24) (not(kNOISY_P24__NOISY_P24)) (not(kBAD_P24__NOISY_P24)) (kIN-CHANNEL_P24__NOISY_P24))) ;; Support.  Cancellation. 
(when (not(k-BAD_P24)) (and (not(kREAD_P24)) (not(kNOISY_P24)) (not(k-IN-CHANNEL_P24)))) ;; Cancellation. 
))
(:action RESET_S51
:parameters ()
:precondition (and (kCURRENT-STAGE_S51))

:effect (and  (not(kCURRENT-STAGE_S51)) (kCURRENT-STAGE_S0)
))
(:action RESET_S50
:parameters ()
:precondition (and (kCURRENT-STAGE_S50))

:effect (and  (not(kCURRENT-STAGE_S50)) (kCURRENT-STAGE_S0)
))
(:action REQUEST-COPY_P15_S15
:parameters ()
:precondition (and (kCURRENT-STAGE_S15))

:effect (and  (k-BAD_P15)
(when (kBAD_P15__NOISY_P15) (and (not(kREAD_P15__NOISY_P15)) (k-NOISY_P15__NOISY_P15) (not(kNOISY_P15__NOISY_P15)) (not(kBAD_P15__NOISY_P15)) (kIN-CHANNEL_P15__NOISY_P15))) ;; Support.  Cancellation. 
(when (not(k-BAD_P15)) (and (not(kREAD_P15)) (not(kNOISY_P15)) (not(k-IN-CHANNEL_P15)))) ;; Cancellation. 
))
(:action RESET_S49
:parameters ()
:precondition (and (kCURRENT-STAGE_S49))

:effect (and  (not(kCURRENT-STAGE_S49)) (kCURRENT-STAGE_S0)
))
(:action RESET_S48
:parameters ()
:precondition (and (kCURRENT-STAGE_S48))

:effect (and  (not(kCURRENT-STAGE_S48)) (kCURRENT-STAGE_S0)
))
(:action OBTAIN_P45_S45
:parameters ()
:precondition (and (kCURRENT-STAGE_S45))

:effect (and  (k-IN-CHANNEL_P45)
(when (kIN-CHANNEL_P45__-NOISY_P45) (and (kREAD_P45__-NOISY_P45) (not(kIN-CHANNEL_P45__-NOISY_P45)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P45) (and (kREAD_P45) (k-IN-CHANNEL_P45))) ;; Support. 
(when (not(k-IN-CHANNEL_P45))  (not(kIN-CHANNEL_P45))) ;; Cancellation. 
(when (kIN-CHANNEL_P45__NOISY_P45) (and (kREAD_P45__NOISY_P45) (not(kIN-CHANNEL_P45__NOISY_P45)))) ;; Support.  Cancellation. 
))
(:action REQUEST-COPY_P27_S27
:parameters ()
:precondition (and (kCURRENT-STAGE_S27))

:effect (and  (k-BAD_P27)
(when (kBAD_P27__NOISY_P27) (and (not(kREAD_P27__NOISY_P27)) (k-NOISY_P27__NOISY_P27) (not(kNOISY_P27__NOISY_P27)) (not(kBAD_P27__NOISY_P27)) (kIN-CHANNEL_P27__NOISY_P27))) ;; Support.  Cancellation. 
(when (not(k-BAD_P27)) (and (not(kREAD_P27)) (not(kNOISY_P27)) (not(k-IN-CHANNEL_P27)))) ;; Cancellation. 
))
(:action RESET_S47
:parameters ()
:precondition (and (kCURRENT-STAGE_S47))

:effect (and  (not(kCURRENT-STAGE_S47)) (kCURRENT-STAGE_S0)
))
(:action REQUEST-COPY_P36_S36
:parameters ()
:precondition (and (kCURRENT-STAGE_S36))

:effect (and  (k-BAD_P36)
(when (kBAD_P36__NOISY_P36) (and (not(kREAD_P36__NOISY_P36)) (k-NOISY_P36__NOISY_P36) (not(kNOISY_P36__NOISY_P36)) (not(kBAD_P36__NOISY_P36)) (kIN-CHANNEL_P36__NOISY_P36))) ;; Support.  Cancellation. 
(when (not(k-BAD_P36)) (and (not(kREAD_P36)) (not(kNOISY_P36)) (not(k-IN-CHANNEL_P36)))) ;; Cancellation. 
))
(:action RESET_S46
:parameters ()
:precondition (and (kCURRENT-STAGE_S46))

:effect (and  (not(kCURRENT-STAGE_S46)) (kCURRENT-STAGE_S0)
))
(:action OBTAIN_P32_S32
:parameters ()
:precondition (and (kCURRENT-STAGE_S32))

:effect (and  (k-IN-CHANNEL_P32)
(when (kIN-CHANNEL_P32__-NOISY_P32) (and (kREAD_P32__-NOISY_P32) (not(kIN-CHANNEL_P32__-NOISY_P32)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P32) (and (kREAD_P32) (k-IN-CHANNEL_P32))) ;; Support. 
(when (not(k-IN-CHANNEL_P32))  (not(kIN-CHANNEL_P32))) ;; Cancellation. 
(when (kIN-CHANNEL_P32__NOISY_P32) (and (kREAD_P32__NOISY_P32) (not(kIN-CHANNEL_P32__NOISY_P32)))) ;; Support.  Cancellation. 
))
(:action RESET_S45
:parameters ()
:precondition (and (kCURRENT-STAGE_S45))

:effect (and  (not(kCURRENT-STAGE_S45)) (kCURRENT-STAGE_S0)
))
(:action RESET_S44
:parameters ()
:precondition (and (kCURRENT-STAGE_S44))

:effect (and  (not(kCURRENT-STAGE_S44)) (kCURRENT-STAGE_S0)
))
(:action OBTAIN_P19_S19
:parameters ()
:precondition (and (kCURRENT-STAGE_S19))

:effect (and  (k-IN-CHANNEL_P19)
(when (kIN-CHANNEL_P19__-NOISY_P19) (and (kREAD_P19__-NOISY_P19) (not(kIN-CHANNEL_P19__-NOISY_P19)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P19) (and (kREAD_P19) (k-IN-CHANNEL_P19))) ;; Support. 
(when (not(k-IN-CHANNEL_P19))  (not(kIN-CHANNEL_P19))) ;; Cancellation. 
(when (kIN-CHANNEL_P19__NOISY_P19) (and (kREAD_P19__NOISY_P19) (not(kIN-CHANNEL_P19__NOISY_P19)))) ;; Support.  Cancellation. 
))
(:action REQUEST-COPY_P45_S45
:parameters ()
:precondition (and (kCURRENT-STAGE_S45))

:effect (and  (k-BAD_P45)
(when (kBAD_P45__NOISY_P45) (and (not(kREAD_P45__NOISY_P45)) (k-NOISY_P45__NOISY_P45) (not(kNOISY_P45__NOISY_P45)) (not(kBAD_P45__NOISY_P45)) (kIN-CHANNEL_P45__NOISY_P45))) ;; Support.  Cancellation. 
(when (not(k-BAD_P45)) (and (not(kREAD_P45)) (not(kNOISY_P45)) (not(k-IN-CHANNEL_P45)))) ;; Cancellation. 
))
(:action RESET_S43
:parameters ()
:precondition (and (kCURRENT-STAGE_S43))

:effect (and  (not(kCURRENT-STAGE_S43)) (kCURRENT-STAGE_S0)
))
(:action RESET_S42
:parameters ()
:precondition (and (kCURRENT-STAGE_S42))

:effect (and  (not(kCURRENT-STAGE_S42)) (kCURRENT-STAGE_S0)
))
(:action RESET_S41
:parameters ()
:precondition (and (kCURRENT-STAGE_S41))

:effect (and  (not(kCURRENT-STAGE_S41)) (kCURRENT-STAGE_S0)
))
(:action REQUEST-COPY_P13_S13
:parameters ()
:precondition (and (kCURRENT-STAGE_S13))

:effect (and  (k-BAD_P13)
(when (kBAD_P13__NOISY_P13) (and (not(kREAD_P13__NOISY_P13)) (k-NOISY_P13__NOISY_P13) (not(kNOISY_P13__NOISY_P13)) (not(kBAD_P13__NOISY_P13)) (kIN-CHANNEL_P13__NOISY_P13))) ;; Support.  Cancellation. 
(when (not(k-BAD_P13)) (and (not(kREAD_P13)) (not(kNOISY_P13)) (not(k-IN-CHANNEL_P13)))) ;; Cancellation. 
))
(:action OBTAIN_P44_S44
:parameters ()
:precondition (and (kCURRENT-STAGE_S44))

:effect (and  (k-IN-CHANNEL_P44)
(when (kIN-CHANNEL_P44__-NOISY_P44) (and (kREAD_P44__-NOISY_P44) (not(kIN-CHANNEL_P44__-NOISY_P44)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P44) (and (kREAD_P44) (k-IN-CHANNEL_P44))) ;; Support. 
(when (not(k-IN-CHANNEL_P44))  (not(kIN-CHANNEL_P44))) ;; Cancellation. 
(when (kIN-CHANNEL_P44__NOISY_P44) (and (kREAD_P44__NOISY_P44) (not(kIN-CHANNEL_P44__NOISY_P44)))) ;; Support.  Cancellation. 
))
(:action RESET_S40
:parameters ()
:precondition (and (kCURRENT-STAGE_S40))

:effect (and  (not(kCURRENT-STAGE_S40)) (kCURRENT-STAGE_S0)
))
(:action RESET_S39
:parameters ()
:precondition (and (kCURRENT-STAGE_S39))

:effect (and  (not(kCURRENT-STAGE_S39)) (kCURRENT-STAGE_S0)
))
(:action RESET_S38
:parameters ()
:precondition (and (kCURRENT-STAGE_S38))

:effect (and  (not(kCURRENT-STAGE_S38)) (kCURRENT-STAGE_S0)
))
(:action OBTAIN_P31_S31
:parameters ()
:precondition (and (kCURRENT-STAGE_S31))

:effect (and  (k-IN-CHANNEL_P31)
(when (kIN-CHANNEL_P31__-NOISY_P31) (and (kREAD_P31__-NOISY_P31) (not(kIN-CHANNEL_P31__-NOISY_P31)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P31) (and (kREAD_P31) (k-IN-CHANNEL_P31))) ;; Support. 
(when (not(k-IN-CHANNEL_P31))  (not(kIN-CHANNEL_P31))) ;; Cancellation. 
(when (kIN-CHANNEL_P31__NOISY_P31) (and (kREAD_P31__NOISY_P31) (not(kIN-CHANNEL_P31__NOISY_P31)))) ;; Support.  Cancellation. 
))
(:action REQUEST-COPY_P40_S40
:parameters ()
:precondition (and (kCURRENT-STAGE_S40))

:effect (and  (k-BAD_P40)
(when (kBAD_P40__NOISY_P40) (and (not(kREAD_P40__NOISY_P40)) (k-NOISY_P40__NOISY_P40) (not(kNOISY_P40__NOISY_P40)) (not(kBAD_P40__NOISY_P40)) (kIN-CHANNEL_P40__NOISY_P40))) ;; Support.  Cancellation. 
(when (not(k-BAD_P40)) (and (not(kREAD_P40)) (not(kNOISY_P40)) (not(k-IN-CHANNEL_P40)))) ;; Cancellation. 
))
(:action OBTAIN_P18_S18
:parameters ()
:precondition (and (kCURRENT-STAGE_S18))

:effect (and  (k-IN-CHANNEL_P18)
(when (kIN-CHANNEL_P18__-NOISY_P18) (and (kREAD_P18__-NOISY_P18) (not(kIN-CHANNEL_P18__-NOISY_P18)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P18) (and (kREAD_P18) (k-IN-CHANNEL_P18))) ;; Support. 
(when (not(k-IN-CHANNEL_P18))  (not(kIN-CHANNEL_P18))) ;; Cancellation. 
(when (kIN-CHANNEL_P18__NOISY_P18) (and (kREAD_P18__NOISY_P18) (not(kIN-CHANNEL_P18__NOISY_P18)))) ;; Support.  Cancellation. 
))
(:action RESET_S37
:parameters ()
:precondition (and (kCURRENT-STAGE_S37))

:effect (and  (not(kCURRENT-STAGE_S37)) (kCURRENT-STAGE_S0)
))
(:action RESET_S36
:parameters ()
:precondition (and (kCURRENT-STAGE_S36))

:effect (and  (not(kCURRENT-STAGE_S36)) (kCURRENT-STAGE_S0)
))
(:action REQUEST-COPY_P33_S33
:parameters ()
:precondition (and (kCURRENT-STAGE_S33))

:effect (and  (k-BAD_P33)
(when (kBAD_P33__NOISY_P33) (and (not(kREAD_P33__NOISY_P33)) (k-NOISY_P33__NOISY_P33) (not(kNOISY_P33__NOISY_P33)) (not(kBAD_P33__NOISY_P33)) (kIN-CHANNEL_P33__NOISY_P33))) ;; Support.  Cancellation. 
(when (not(k-BAD_P33)) (and (not(kREAD_P33)) (not(kNOISY_P33)) (not(k-IN-CHANNEL_P33)))) ;; Cancellation. 
))
(:action REQUEST-COPY_P10_S10
:parameters ()
:precondition (and (kCURRENT-STAGE_S10))

:effect (and  (k-BAD_P10)
(when (kBAD_P10__NOISY_P10) (and (kIN-CHANNEL_P10__NOISY_P10) (k-NOISY_P10__NOISY_P10) (not(kNOISY_P10__NOISY_P10)) (not(kREAD_P10__NOISY_P10)) (not(kBAD_P10__NOISY_P10)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P10)) (and (not(k-IN-CHANNEL_P10)) (not(kNOISY_P10)) (not(kREAD_P10)))) ;; Cancellation. 
))
(:action REQUEST-COPY_P22_S22
:parameters ()
:precondition (and (kCURRENT-STAGE_S22))

:effect (and  (k-BAD_P22)
(when (kBAD_P22__NOISY_P22) (and (not(kREAD_P22__NOISY_P22)) (k-NOISY_P22__NOISY_P22) (not(kNOISY_P22__NOISY_P22)) (not(kBAD_P22__NOISY_P22)) (kIN-CHANNEL_P22__NOISY_P22))) ;; Support.  Cancellation. 
(when (not(k-BAD_P22)) (and (not(kREAD_P22)) (not(kNOISY_P22)) (not(k-IN-CHANNEL_P22)))) ;; Cancellation. 
))
(:action REQUEST-COPY_P46_S46
:parameters ()
:precondition (and (kCURRENT-STAGE_S46))

:effect (and  (k-BAD_P46)
(when (kBAD_P46__NOISY_P46) (and (not(kREAD_P46__NOISY_P46)) (k-NOISY_P46__NOISY_P46) (not(kNOISY_P46__NOISY_P46)) (not(kBAD_P46__NOISY_P46)) (kIN-CHANNEL_P46__NOISY_P46))) ;; Support.  Cancellation. 
(when (not(k-BAD_P46)) (and (not(kREAD_P46)) (not(kNOISY_P46)) (not(k-IN-CHANNEL_P46)))) ;; Cancellation. 
))
(:action RESET_S35
:parameters ()
:precondition (and (kCURRENT-STAGE_S35))

:effect (and  (not(kCURRENT-STAGE_S35)) (kCURRENT-STAGE_S0)
))
(:action REQUEST-COPY_P11_S11
:parameters ()
:precondition (and (kCURRENT-STAGE_S11))

:effect (and  (k-BAD_P11)
(when (kBAD_P11__NOISY_P11) (and (not(kREAD_P11__NOISY_P11)) (k-NOISY_P11__NOISY_P11) (not(kNOISY_P11__NOISY_P11)) (not(kBAD_P11__NOISY_P11)) (kIN-CHANNEL_P11__NOISY_P11))) ;; Support.  Cancellation. 
(when (not(k-BAD_P11)) (and (not(kREAD_P11)) (not(kNOISY_P11)) (not(k-IN-CHANNEL_P11)))) ;; Cancellation. 
))
(:action OBTAIN_P43_S43
:parameters ()
:precondition (and (kCURRENT-STAGE_S43))

:effect (and  (k-IN-CHANNEL_P43)
(when (kIN-CHANNEL_P43__-NOISY_P43) (and (kREAD_P43__-NOISY_P43) (not(kIN-CHANNEL_P43__-NOISY_P43)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P43) (and (kREAD_P43) (k-IN-CHANNEL_P43))) ;; Support. 
(when (not(k-IN-CHANNEL_P43))  (not(kIN-CHANNEL_P43))) ;; Cancellation. 
(when (kIN-CHANNEL_P43__NOISY_P43) (and (kREAD_P43__NOISY_P43) (not(kIN-CHANNEL_P43__NOISY_P43)))) ;; Support.  Cancellation. 
))
(:action REQUEST-COPY_P18_S18
:parameters ()
:precondition (and (kCURRENT-STAGE_S18))

:effect (and  (k-BAD_P18)
(when (kBAD_P18__NOISY_P18) (and (not(kREAD_P18__NOISY_P18)) (k-NOISY_P18__NOISY_P18) (not(kNOISY_P18__NOISY_P18)) (not(kBAD_P18__NOISY_P18)) (kIN-CHANNEL_P18__NOISY_P18))) ;; Support.  Cancellation. 
(when (not(k-BAD_P18)) (and (not(kREAD_P18)) (not(kNOISY_P18)) (not(k-IN-CHANNEL_P18)))) ;; Cancellation. 
))
(:action RESET_S34
:parameters ()
:precondition (and (kCURRENT-STAGE_S34))

:effect (and  (not(kCURRENT-STAGE_S34)) (kCURRENT-STAGE_S0)
))
(:action OBTAIN_P30_S30
:parameters ()
:precondition (and (kCURRENT-STAGE_S30))

:effect (and  (k-IN-CHANNEL_P30)
(when (kIN-CHANNEL_P30__-NOISY_P30) (and (kREAD_P30__-NOISY_P30) (not(kIN-CHANNEL_P30__-NOISY_P30)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P30) (and (kREAD_P30) (k-IN-CHANNEL_P30))) ;; Support. 
(when (not(k-IN-CHANNEL_P30))  (not(kIN-CHANNEL_P30))) ;; Cancellation. 
(when (kIN-CHANNEL_P30__NOISY_P30) (and (kREAD_P30__NOISY_P30) (not(kIN-CHANNEL_P30__NOISY_P30)))) ;; Support.  Cancellation. 
))
(:action OBTAIN_P17_S17
:parameters ()
:precondition (and (kCURRENT-STAGE_S17))

:effect (and  (k-IN-CHANNEL_P17)
(when (kIN-CHANNEL_P17__-NOISY_P17) (and (kREAD_P17__-NOISY_P17) (not(kIN-CHANNEL_P17__-NOISY_P17)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P17) (and (kREAD_P17) (k-IN-CHANNEL_P17))) ;; Support. 
(when (not(k-IN-CHANNEL_P17))  (not(kIN-CHANNEL_P17))) ;; Cancellation. 
(when (kIN-CHANNEL_P17__NOISY_P17) (and (kREAD_P17__NOISY_P17) (not(kIN-CHANNEL_P17__NOISY_P17)))) ;; Support.  Cancellation. 
))
(:action RESET_S33
:parameters ()
:precondition (and (kCURRENT-STAGE_S33))

:effect (and  (not(kCURRENT-STAGE_S33)) (kCURRENT-STAGE_S0)
))
(:action REQUEST-COPY_P37_S37
:parameters ()
:precondition (and (kCURRENT-STAGE_S37))

:effect (and  (k-BAD_P37)
(when (kBAD_P37__NOISY_P37) (and (not(kREAD_P37__NOISY_P37)) (k-NOISY_P37__NOISY_P37) (not(kNOISY_P37__NOISY_P37)) (not(kBAD_P37__NOISY_P37)) (kIN-CHANNEL_P37__NOISY_P37))) ;; Support.  Cancellation. 
(when (not(k-BAD_P37)) (and (not(kREAD_P37)) (not(kNOISY_P37)) (not(k-IN-CHANNEL_P37)))) ;; Cancellation. 
))
(:action REQUEST-COPY_P1_S1
:parameters ()
:precondition (and (kCURRENT-STAGE_S1))

:effect (and  (k-BAD_P1)
(when (kBAD_P1__NOISY_P1) (and (kIN-CHANNEL_P1__NOISY_P1) (k-NOISY_P1__NOISY_P1) (not(kNOISY_P1__NOISY_P1)) (not(kREAD_P1__NOISY_P1)) (not(kBAD_P1__NOISY_P1)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P1)) (and (not(k-IN-CHANNEL_P1)) (not(kNOISY_P1)) (not(kREAD_P1)))) ;; Cancellation. 
))
(:action RESET_S32
:parameters ()
:precondition (and (kCURRENT-STAGE_S32))

:effect (and  (not(kCURRENT-STAGE_S32)) (kCURRENT-STAGE_S0)
))
(:action RESET_S31
:parameters ()
:precondition (and (kCURRENT-STAGE_S31))

:effect (and  (not(kCURRENT-STAGE_S31)) (kCURRENT-STAGE_S0)
))
(:action REQUEST-COPY_P30_S30
:parameters ()
:precondition (and (kCURRENT-STAGE_S30))

:effect (and  (k-BAD_P30)
(when (kBAD_P30__NOISY_P30) (and (not(kREAD_P30__NOISY_P30)) (k-NOISY_P30__NOISY_P30) (not(kNOISY_P30__NOISY_P30)) (not(kBAD_P30__NOISY_P30)) (kIN-CHANNEL_P30__NOISY_P30))) ;; Support.  Cancellation. 
(when (not(k-BAD_P30)) (and (not(kREAD_P30)) (not(kNOISY_P30)) (not(k-IN-CHANNEL_P30)))) ;; Cancellation. 
))
(:action REQUEST-COPY_P25_S25
:parameters ()
:precondition (and (kCURRENT-STAGE_S25))

:effect (and  (k-BAD_P25)
(when (kBAD_P25__NOISY_P25) (and (not(kREAD_P25__NOISY_P25)) (k-NOISY_P25__NOISY_P25) (not(kNOISY_P25__NOISY_P25)) (not(kBAD_P25__NOISY_P25)) (kIN-CHANNEL_P25__NOISY_P25))) ;; Support.  Cancellation. 
(when (not(k-BAD_P25)) (and (not(kREAD_P25)) (not(kNOISY_P25)) (not(k-IN-CHANNEL_P25)))) ;; Cancellation. 
))
(:action OBTAIN_P54_S54
:parameters ()
:precondition (and (kCURRENT-STAGE_S54))

:effect (and  (k-IN-CHANNEL_P54)
(when (kIN-CHANNEL_P54__-NOISY_P54) (and (kREAD_P54__-NOISY_P54) (not(kIN-CHANNEL_P54__-NOISY_P54)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P54) (and (kREAD_P54) (k-IN-CHANNEL_P54))) ;; Support. 
(when (not(k-IN-CHANNEL_P54))  (not(kIN-CHANNEL_P54))) ;; Cancellation. 
(when (kIN-CHANNEL_P54__NOISY_P54) (and (kREAD_P54__NOISY_P54) (not(kIN-CHANNEL_P54__NOISY_P54)))) ;; Support.  Cancellation. 
))
(:action RESET_S30
:parameters ()
:precondition (and (kCURRENT-STAGE_S30))

:effect (and  (not(kCURRENT-STAGE_S30)) (kCURRENT-STAGE_S0)
))
(:action RESET_S29
:parameters ()
:precondition (and (kCURRENT-STAGE_S29))

:effect (and  (not(kCURRENT-STAGE_S29)) (kCURRENT-STAGE_S0)
))
(:action OBTAIN_P42_S42
:parameters ()
:precondition (and (kCURRENT-STAGE_S42))

:effect (and  (k-IN-CHANNEL_P42)
(when (kIN-CHANNEL_P42__-NOISY_P42) (and (kREAD_P42__-NOISY_P42) (not(kIN-CHANNEL_P42__-NOISY_P42)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P42) (and (kREAD_P42) (k-IN-CHANNEL_P42))) ;; Support. 
(when (not(k-IN-CHANNEL_P42))  (not(kIN-CHANNEL_P42))) ;; Cancellation. 
(when (kIN-CHANNEL_P42__NOISY_P42) (and (kREAD_P42__NOISY_P42) (not(kIN-CHANNEL_P42__NOISY_P42)))) ;; Support.  Cancellation. 
))
(:action REQUEST-COPY_P28_S28
:parameters ()
:precondition (and (kCURRENT-STAGE_S28))

:effect (and  (k-BAD_P28)
(when (kBAD_P28__NOISY_P28) (and (not(kREAD_P28__NOISY_P28)) (k-NOISY_P28__NOISY_P28) (not(kNOISY_P28__NOISY_P28)) (not(kBAD_P28__NOISY_P28)) (kIN-CHANNEL_P28__NOISY_P28))) ;; Support.  Cancellation. 
(when (not(k-BAD_P28)) (and (not(kREAD_P28)) (not(kNOISY_P28)) (not(k-IN-CHANNEL_P28)))) ;; Cancellation. 
))
(:action OBTAIN_P16_S16
:parameters ()
:precondition (and (kCURRENT-STAGE_S16))

:effect (and  (k-IN-CHANNEL_P16)
(when (kIN-CHANNEL_P16__-NOISY_P16) (and (kREAD_P16__-NOISY_P16) (not(kIN-CHANNEL_P16__-NOISY_P16)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P16) (and (kREAD_P16) (k-IN-CHANNEL_P16))) ;; Support. 
(when (not(k-IN-CHANNEL_P16))  (not(kIN-CHANNEL_P16))) ;; Cancellation. 
(when (kIN-CHANNEL_P16__NOISY_P16) (and (kREAD_P16__NOISY_P16) (not(kIN-CHANNEL_P16__NOISY_P16)))) ;; Support.  Cancellation. 
))
(:action REQUEST-COPY_P3_S3
:parameters ()
:precondition (and (kCURRENT-STAGE_S3))

:effect (and  (k-BAD_P3)
(when (kBAD_P3__NOISY_P3) (and (kIN-CHANNEL_P3__NOISY_P3) (k-NOISY_P3__NOISY_P3) (not(kNOISY_P3__NOISY_P3)) (not(kREAD_P3__NOISY_P3)) (not(kBAD_P3__NOISY_P3)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P3)) (and (not(k-IN-CHANNEL_P3)) (not(kNOISY_P3)) (not(kREAD_P3)))) ;; Cancellation. 
))
(:action REQUEST-COPY_P0_S0
:parameters ()
:precondition (and (kCURRENT-STAGE_S0))

:effect (and  (k-BAD_P0)
(when (kBAD_P0__NOISY_P0) (and (kIN-CHANNEL_P0__NOISY_P0) (k-NOISY_P0__NOISY_P0) (not(kNOISY_P0__NOISY_P0)) (not(kREAD_P0__NOISY_P0)) (not(kBAD_P0__NOISY_P0)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P0)) (and (not(k-IN-CHANNEL_P0)) (not(kNOISY_P0)) (not(kREAD_P0)))) ;; Cancellation. 
))
(:action CERTIFY_P9
:parameters ()
:precondition (and (kREAD_P9))

:effect (and  (not(k-BAD_P9)) (kOK_P9__-NOISY_P9)
(when (kNOISY_P9__NOISY_P9)  (kBAD_P9__NOISY_P9)) ;; Support. 
(when (k-NOISY_P9__NOISY_P9)  (kOK_P9__NOISY_P9)) ;; Support. 
))
(:action CERTIFY_P8
:parameters ()
:precondition (and (kREAD_P8))

:effect (and  (not(k-BAD_P8)) (kOK_P8__-NOISY_P8)
(when (kNOISY_P8__NOISY_P8)  (kBAD_P8__NOISY_P8)) ;; Support. 
(when (k-NOISY_P8__NOISY_P8)  (kOK_P8__NOISY_P8)) ;; Support. 
))
(:action CERTIFY_P7
:parameters ()
:precondition (and (kREAD_P7))

:effect (and  (not(k-BAD_P7)) (kOK_P7__-NOISY_P7)
(when (kNOISY_P7__NOISY_P7)  (kBAD_P7__NOISY_P7)) ;; Support. 
(when (k-NOISY_P7__NOISY_P7)  (kOK_P7__NOISY_P7)) ;; Support. 
))
(:action CERTIFY_P6
:parameters ()
:precondition (and (kREAD_P6))

:effect (and  (not(k-BAD_P6)) (kOK_P6__-NOISY_P6)
(when (kNOISY_P6__NOISY_P6)  (kBAD_P6__NOISY_P6)) ;; Support. 
(when (k-NOISY_P6__NOISY_P6)  (kOK_P6__NOISY_P6)) ;; Support. 
))
(:action CERTIFY_P5
:parameters ()
:precondition (and (kREAD_P5))

:effect (and  (not(k-BAD_P5)) (kOK_P5__-NOISY_P5)
(when (kNOISY_P5__NOISY_P5)  (kBAD_P5__NOISY_P5)) ;; Support. 
(when (k-NOISY_P5__NOISY_P5)  (kOK_P5__NOISY_P5)) ;; Support. 
))
(:action CERTIFY_P4
:parameters ()
:precondition (and (kREAD_P4))

:effect (and  (not(k-BAD_P4)) (kOK_P4__-NOISY_P4)
(when (kNOISY_P4__NOISY_P4)  (kBAD_P4__NOISY_P4)) ;; Support. 
(when (k-NOISY_P4__NOISY_P4)  (kOK_P4__NOISY_P4)) ;; Support. 
))
(:action CERTIFY_P3
:parameters ()
:precondition (and (kREAD_P3))

:effect (and  (not(k-BAD_P3)) (kOK_P3__-NOISY_P3)
(when (kNOISY_P3__NOISY_P3)  (kBAD_P3__NOISY_P3)) ;; Support. 
(when (k-NOISY_P3__NOISY_P3)  (kOK_P3__NOISY_P3)) ;; Support. 
))
(:action CERTIFY_P2
:parameters ()
:precondition (and (kREAD_P2))

:effect (and  (not(k-BAD_P2)) (kOK_P2__-NOISY_P2)
(when (kNOISY_P2__NOISY_P2)  (kBAD_P2__NOISY_P2)) ;; Support. 
(when (k-NOISY_P2__NOISY_P2)  (kOK_P2__NOISY_P2)) ;; Support. 
))
(:action CERTIFY_P10
:parameters ()
:precondition (and (kREAD_P10))

:effect (and  (not(k-BAD_P10)) (kOK_P10__-NOISY_P10)
(when (kNOISY_P10__NOISY_P10)  (kBAD_P10__NOISY_P10)) ;; Support. 
(when (k-NOISY_P10__NOISY_P10)  (kOK_P10__NOISY_P10)) ;; Support. 
))
(:action CERTIFY_P1
:parameters ()
:precondition (and (kREAD_P1))

:effect (and  (not(k-BAD_P1)) (kOK_P1__-NOISY_P1)
(when (kNOISY_P1__NOISY_P1)  (kBAD_P1__NOISY_P1)) ;; Support. 
(when (k-NOISY_P1__NOISY_P1)  (kOK_P1__NOISY_P1)) ;; Support. 
))
(:action CERTIFY_P0
:parameters ()
:precondition (and (kREAD_P0))

:effect (and  (not(k-BAD_P0)) (kOK_P0__-NOISY_P0)
(when (kNOISY_P0__NOISY_P0)  (kBAD_P0__NOISY_P0)) ;; Support. 
(when (k-NOISY_P0__NOISY_P0)  (kOK_P0__NOISY_P0)) ;; Support. 
))
(:action OBTAIN_P9_S9
:parameters ()
:precondition (and (kCURRENT-STAGE_S9))

:effect (and  (k-IN-CHANNEL_P9)
(when (kIN-CHANNEL_P9__-NOISY_P9) (and (kREAD_P9__-NOISY_P9) (not(kIN-CHANNEL_P9__-NOISY_P9)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P9) (and (kREAD_P9) (k-IN-CHANNEL_P9))) ;; Support. 
(when (not(k-IN-CHANNEL_P9))  (not(kIN-CHANNEL_P9))) ;; Cancellation. 
(when (kIN-CHANNEL_P9__NOISY_P9) (and (kREAD_P9__NOISY_P9) (not(kIN-CHANNEL_P9__NOISY_P9)))) ;; Support.  Cancellation. 
))
(:action OBTAIN_P8_S8
:parameters ()
:precondition (and (kCURRENT-STAGE_S8))

:effect (and  (k-IN-CHANNEL_P8)
(when (kIN-CHANNEL_P8__-NOISY_P8) (and (kREAD_P8__-NOISY_P8) (not(kIN-CHANNEL_P8__-NOISY_P8)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P8) (and (kREAD_P8) (k-IN-CHANNEL_P8))) ;; Support. 
(when (not(k-IN-CHANNEL_P8))  (not(kIN-CHANNEL_P8))) ;; Cancellation. 
(when (kIN-CHANNEL_P8__NOISY_P8) (and (kREAD_P8__NOISY_P8) (not(kIN-CHANNEL_P8__NOISY_P8)))) ;; Support.  Cancellation. 
))
(:action OBTAIN_P7_S7
:parameters ()
:precondition (and (kCURRENT-STAGE_S7))

:effect (and  (k-IN-CHANNEL_P7)
(when (kIN-CHANNEL_P7__-NOISY_P7) (and (kREAD_P7__-NOISY_P7) (not(kIN-CHANNEL_P7__-NOISY_P7)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P7) (and (kREAD_P7) (k-IN-CHANNEL_P7))) ;; Support. 
(when (not(k-IN-CHANNEL_P7))  (not(kIN-CHANNEL_P7))) ;; Cancellation. 
(when (kIN-CHANNEL_P7__NOISY_P7) (and (kREAD_P7__NOISY_P7) (not(kIN-CHANNEL_P7__NOISY_P7)))) ;; Support.  Cancellation. 
))
(:action OBTAIN_P6_S6
:parameters ()
:precondition (and (kCURRENT-STAGE_S6))

:effect (and  (k-IN-CHANNEL_P6)
(when (kIN-CHANNEL_P6__-NOISY_P6) (and (kREAD_P6__-NOISY_P6) (not(kIN-CHANNEL_P6__-NOISY_P6)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P6) (and (kREAD_P6) (k-IN-CHANNEL_P6))) ;; Support. 
(when (not(k-IN-CHANNEL_P6))  (not(kIN-CHANNEL_P6))) ;; Cancellation. 
(when (kIN-CHANNEL_P6__NOISY_P6) (and (kREAD_P6__NOISY_P6) (not(kIN-CHANNEL_P6__NOISY_P6)))) ;; Support.  Cancellation. 
))
(:action OBTAIN_P5_S5
:parameters ()
:precondition (and (kCURRENT-STAGE_S5))

:effect (and  (k-IN-CHANNEL_P5)
(when (kIN-CHANNEL_P5__-NOISY_P5) (and (kREAD_P5__-NOISY_P5) (not(kIN-CHANNEL_P5__-NOISY_P5)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P5) (and (kREAD_P5) (k-IN-CHANNEL_P5))) ;; Support. 
(when (not(k-IN-CHANNEL_P5))  (not(kIN-CHANNEL_P5))) ;; Cancellation. 
(when (kIN-CHANNEL_P5__NOISY_P5) (and (kREAD_P5__NOISY_P5) (not(kIN-CHANNEL_P5__NOISY_P5)))) ;; Support.  Cancellation. 
))
(:action OBTAIN_P4_S4
:parameters ()
:precondition (and (kCURRENT-STAGE_S4))

:effect (and  (k-IN-CHANNEL_P4)
(when (kIN-CHANNEL_P4__-NOISY_P4) (and (kREAD_P4__-NOISY_P4) (not(kIN-CHANNEL_P4__-NOISY_P4)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P4) (and (kREAD_P4) (k-IN-CHANNEL_P4))) ;; Support. 
(when (not(k-IN-CHANNEL_P4))  (not(kIN-CHANNEL_P4))) ;; Cancellation. 
(when (kIN-CHANNEL_P4__NOISY_P4) (and (kREAD_P4__NOISY_P4) (not(kIN-CHANNEL_P4__NOISY_P4)))) ;; Support.  Cancellation. 
))
(:action OBTAIN_P3_S3
:parameters ()
:precondition (and (kCURRENT-STAGE_S3))

:effect (and  (k-IN-CHANNEL_P3)
(when (kIN-CHANNEL_P3__-NOISY_P3) (and (kREAD_P3__-NOISY_P3) (not(kIN-CHANNEL_P3__-NOISY_P3)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P3) (and (kREAD_P3) (k-IN-CHANNEL_P3))) ;; Support. 
(when (not(k-IN-CHANNEL_P3))  (not(kIN-CHANNEL_P3))) ;; Cancellation. 
(when (kIN-CHANNEL_P3__NOISY_P3) (and (kREAD_P3__NOISY_P3) (not(kIN-CHANNEL_P3__NOISY_P3)))) ;; Support.  Cancellation. 
))
(:action OBTAIN_P2_S2
:parameters ()
:precondition (and (kCURRENT-STAGE_S2))

:effect (and  (k-IN-CHANNEL_P2)
(when (kIN-CHANNEL_P2__-NOISY_P2) (and (kREAD_P2__-NOISY_P2) (not(kIN-CHANNEL_P2__-NOISY_P2)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P2) (and (kREAD_P2) (k-IN-CHANNEL_P2))) ;; Support. 
(when (not(k-IN-CHANNEL_P2))  (not(kIN-CHANNEL_P2))) ;; Cancellation. 
(when (kIN-CHANNEL_P2__NOISY_P2) (and (kREAD_P2__NOISY_P2) (not(kIN-CHANNEL_P2__NOISY_P2)))) ;; Support.  Cancellation. 
))
(:action OBTAIN_P10_S10
:parameters ()
:precondition (and (kCURRENT-STAGE_S10))

:effect (and  (k-IN-CHANNEL_P10)
(when (kIN-CHANNEL_P10__-NOISY_P10) (and (kREAD_P10__-NOISY_P10) (not(kIN-CHANNEL_P10__-NOISY_P10)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P10) (and (kREAD_P10) (k-IN-CHANNEL_P10))) ;; Support. 
(when (not(k-IN-CHANNEL_P10))  (not(kIN-CHANNEL_P10))) ;; Cancellation. 
(when (kIN-CHANNEL_P10__NOISY_P10) (and (kREAD_P10__NOISY_P10) (not(kIN-CHANNEL_P10__NOISY_P10)))) ;; Support.  Cancellation. 
))
(:action OBTAIN_P1_S1
:parameters ()
:precondition (and (kCURRENT-STAGE_S1))

:effect (and  (k-IN-CHANNEL_P1)
(when (kIN-CHANNEL_P1__-NOISY_P1) (and (kREAD_P1__-NOISY_P1) (not(kIN-CHANNEL_P1__-NOISY_P1)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P1) (and (kREAD_P1) (k-IN-CHANNEL_P1))) ;; Support. 
(when (not(k-IN-CHANNEL_P1))  (not(kIN-CHANNEL_P1))) ;; Cancellation. 
(when (kIN-CHANNEL_P1__NOISY_P1) (and (kREAD_P1__NOISY_P1) (not(kIN-CHANNEL_P1__NOISY_P1)))) ;; Support.  Cancellation. 
))
(:action OBTAIN_P0_S0
:parameters ()
:precondition (and (kCURRENT-STAGE_S0))

:effect (and  (k-IN-CHANNEL_P0)
(when (kIN-CHANNEL_P0__-NOISY_P0) (and (kREAD_P0__-NOISY_P0) (not(kIN-CHANNEL_P0__-NOISY_P0)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P0) (and (kREAD_P0) (k-IN-CHANNEL_P0))) ;; Support. 
(when (not(k-IN-CHANNEL_P0))  (not(kIN-CHANNEL_P0))) ;; Cancellation. 
(when (kIN-CHANNEL_P0__NOISY_P0) (and (kREAD_P0__NOISY_P0) (not(kIN-CHANNEL_P0__NOISY_P0)))) ;; Support.  Cancellation. 
))
(:action ADVANCE_S9_S10
:parameters ()
:precondition (and (kCURRENT-STAGE_S9))

:effect (and  (not(kCURRENT-STAGE_S9)) (kCURRENT-STAGE_S10)
))
(:action ADVANCE_S8_S9
:parameters ()
:precondition (and (kCURRENT-STAGE_S8))

:effect (and  (not(kCURRENT-STAGE_S8)) (kCURRENT-STAGE_S9)
))
(:action ADVANCE_S7_S8
:parameters ()
:precondition (and (kCURRENT-STAGE_S7))

:effect (and  (not(kCURRENT-STAGE_S7)) (kCURRENT-STAGE_S8)
))
(:action ADVANCE_S6_S7
:parameters ()
:precondition (and (kCURRENT-STAGE_S6))

:effect (and  (not(kCURRENT-STAGE_S6)) (kCURRENT-STAGE_S7)
))
(:action ADVANCE_S5_S6
:parameters ()
:precondition (and (kCURRENT-STAGE_S5))

:effect (and  (not(kCURRENT-STAGE_S5)) (kCURRENT-STAGE_S6)
))
(:action ADVANCE_S4_S5
:parameters ()
:precondition (and (kCURRENT-STAGE_S4))

:effect (and  (not(kCURRENT-STAGE_S4)) (kCURRENT-STAGE_S5)
))
(:action ADVANCE_S3_S4
:parameters ()
:precondition (and (kCURRENT-STAGE_S3))

:effect (and  (not(kCURRENT-STAGE_S3)) (kCURRENT-STAGE_S4)
))
(:action ADVANCE_S2_S3
:parameters ()
:precondition (and (kCURRENT-STAGE_S2))

:effect (and  (not(kCURRENT-STAGE_S2)) (kCURRENT-STAGE_S3)
))
(:action ADVANCE_S1_S2
:parameters ()
:precondition (and (kCURRENT-STAGE_S1))

:effect (and  (not(kCURRENT-STAGE_S1)) (kCURRENT-STAGE_S2)
))
(:action ADVANCE_S0_S1
:parameters ()
:precondition (and (kCURRENT-STAGE_S0))

:effect (and  (not(kCURRENT-STAGE_S0)) (kCURRENT-STAGE_S1)
))
(:action MERGE_CLAUSES
:parameters ()
:precondition (and)

:effect (and 
(when (kNOISY_P0)  (kNOISY_P0)) ;;reasoning over static clause. 
(when (kNOISY_P1)  (kNOISY_P1)) ;;reasoning over static clause. 
(when (kNOISY_P10)  (kNOISY_P10)) ;;reasoning over static clause. 
(when (kNOISY_P2)  (kNOISY_P2)) ;;reasoning over static clause. 
(when (kNOISY_P3)  (kNOISY_P3)) ;;reasoning over static clause. 
(when (kNOISY_P4)  (kNOISY_P4)) ;;reasoning over static clause. 
(when (kNOISY_P5)  (kNOISY_P5)) ;;reasoning over static clause. 
(when (kNOISY_P6)  (kNOISY_P6)) ;;reasoning over static clause. 
(when (kNOISY_P7)  (kNOISY_P7)) ;;reasoning over static clause. 
(when (kNOISY_P8)  (kNOISY_P8)) ;;reasoning over static clause. 
(when (kNOISY_P9)  (kNOISY_P9)) ;;reasoning over static clause. 
(when (kNOISY_P11)  (kNOISY_P11)) ;;reasoning over static clause. 
(when (kNOISY_P12)  (kNOISY_P12)) ;;reasoning over static clause. 
(when (kNOISY_P13)  (kNOISY_P13)) ;;reasoning over static clause. 
(when (kNOISY_P14)  (kNOISY_P14)) ;;reasoning over static clause. 
(when (kNOISY_P15)  (kNOISY_P15)) ;;reasoning over static clause. 
(when (kNOISY_P16)  (kNOISY_P16)) ;;reasoning over static clause. 
(when (kNOISY_P17)  (kNOISY_P17)) ;;reasoning over static clause. 
(when (kNOISY_P18)  (kNOISY_P18)) ;;reasoning over static clause. 
(when (kNOISY_P19)  (kNOISY_P19)) ;;reasoning over static clause. 
(when (kNOISY_P20)  (kNOISY_P20)) ;;reasoning over static clause. 
(when (kNOISY_P21)  (kNOISY_P21)) ;;reasoning over static clause. 
(when (kNOISY_P22)  (kNOISY_P22)) ;;reasoning over static clause. 
(when (kNOISY_P23)  (kNOISY_P23)) ;;reasoning over static clause. 
(when (kNOISY_P24)  (kNOISY_P24)) ;;reasoning over static clause. 
(when (kNOISY_P25)  (kNOISY_P25)) ;;reasoning over static clause. 
(when (kNOISY_P26)  (kNOISY_P26)) ;;reasoning over static clause. 
(when (kNOISY_P27)  (kNOISY_P27)) ;;reasoning over static clause. 
(when (kNOISY_P28)  (kNOISY_P28)) ;;reasoning over static clause. 
(when (kNOISY_P29)  (kNOISY_P29)) ;;reasoning over static clause. 
(when (kNOISY_P30)  (kNOISY_P30)) ;;reasoning over static clause. 
(when (kNOISY_P31)  (kNOISY_P31)) ;;reasoning over static clause. 
(when (kNOISY_P32)  (kNOISY_P32)) ;;reasoning over static clause. 
(when (kNOISY_P33)  (kNOISY_P33)) ;;reasoning over static clause. 
(when (kNOISY_P34)  (kNOISY_P34)) ;;reasoning over static clause. 
(when (kNOISY_P35)  (kNOISY_P35)) ;;reasoning over static clause. 
(when (kNOISY_P36)  (kNOISY_P36)) ;;reasoning over static clause. 
(when (kNOISY_P37)  (kNOISY_P37)) ;;reasoning over static clause. 
(when (kNOISY_P38)  (kNOISY_P38)) ;;reasoning over static clause. 
(when (kNOISY_P39)  (kNOISY_P39)) ;;reasoning over static clause. 
(when (kNOISY_P40)  (kNOISY_P40)) ;;reasoning over static clause. 
(when (kNOISY_P41)  (kNOISY_P41)) ;;reasoning over static clause. 
(when (kNOISY_P42)  (kNOISY_P42)) ;;reasoning over static clause. 
(when (kNOISY_P43)  (kNOISY_P43)) ;;reasoning over static clause. 
(when (kNOISY_P44)  (kNOISY_P44)) ;;reasoning over static clause. 
(when (kNOISY_P45)  (kNOISY_P45)) ;;reasoning over static clause. 
(when (kNOISY_P46)  (kNOISY_P46)) ;;reasoning over static clause. 
(when (kNOISY_P47)  (kNOISY_P47)) ;;reasoning over static clause. 
(when (kNOISY_P48)  (kNOISY_P48)) ;;reasoning over static clause. 
(when (kNOISY_P49)  (kNOISY_P49)) ;;reasoning over static clause. 
(when (kNOISY_P50)  (kNOISY_P50)) ;;reasoning over static clause. 
(when (kNOISY_P51)  (kNOISY_P51)) ;;reasoning over static clause. 
(when (kNOISY_P52)  (kNOISY_P52)) ;;reasoning over static clause. 
(when (kNOISY_P53)  (kNOISY_P53)) ;;reasoning over static clause. 
(when (kNOISY_P54)  (kNOISY_P54)) ;;reasoning over static clause. 
))
(:action MERGE_OK_P54
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P54__NOISY_P54) (kOK_P54__-NOISY_P54))  (kOK_P54)) ;;MERGE. 
))
(:action MERGE_OK_P53
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P53__NOISY_P53) (kOK_P53__-NOISY_P53))  (kOK_P53)) ;;MERGE. 
))
(:action MERGE_OK_P52
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P52__NOISY_P52) (kOK_P52__-NOISY_P52))  (kOK_P52)) ;;MERGE. 
))
(:action MERGE_OK_P51
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P51__NOISY_P51) (kOK_P51__-NOISY_P51))  (kOK_P51)) ;;MERGE. 
))
(:action MERGE_OK_P50
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P50__NOISY_P50) (kOK_P50__-NOISY_P50))  (kOK_P50)) ;;MERGE. 
))
(:action MERGE_OK_P49
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P49__NOISY_P49) (kOK_P49__-NOISY_P49))  (kOK_P49)) ;;MERGE. 
))
(:action MERGE_OK_P48
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P48__NOISY_P48) (kOK_P48__-NOISY_P48))  (kOK_P48)) ;;MERGE. 
))
(:action MERGE_OK_P47
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P47__NOISY_P47) (kOK_P47__-NOISY_P47))  (kOK_P47)) ;;MERGE. 
))
(:action MERGE_OK_P46
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P46__NOISY_P46) (kOK_P46__-NOISY_P46))  (kOK_P46)) ;;MERGE. 
))
(:action MERGE_OK_P45
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P45__NOISY_P45) (kOK_P45__-NOISY_P45))  (kOK_P45)) ;;MERGE. 
))
(:action MERGE_OK_P44
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P44__NOISY_P44) (kOK_P44__-NOISY_P44))  (kOK_P44)) ;;MERGE. 
))
(:action MERGE_OK_P43
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P43__NOISY_P43) (kOK_P43__-NOISY_P43))  (kOK_P43)) ;;MERGE. 
))
(:action MERGE_OK_P42
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P42__NOISY_P42) (kOK_P42__-NOISY_P42))  (kOK_P42)) ;;MERGE. 
))
(:action MERGE_OK_P41
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P41__NOISY_P41) (kOK_P41__-NOISY_P41))  (kOK_P41)) ;;MERGE. 
))
(:action MERGE_OK_P40
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P40__NOISY_P40) (kOK_P40__-NOISY_P40))  (kOK_P40)) ;;MERGE. 
))
(:action MERGE_OK_P39
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P39__NOISY_P39) (kOK_P39__-NOISY_P39))  (kOK_P39)) ;;MERGE. 
))
(:action MERGE_OK_P38
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P38__NOISY_P38) (kOK_P38__-NOISY_P38))  (kOK_P38)) ;;MERGE. 
))
(:action MERGE_OK_P37
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P37__NOISY_P37) (kOK_P37__-NOISY_P37))  (kOK_P37)) ;;MERGE. 
))
(:action MERGE_OK_P36
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P36__NOISY_P36) (kOK_P36__-NOISY_P36))  (kOK_P36)) ;;MERGE. 
))
(:action MERGE_OK_P35
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P35__NOISY_P35) (kOK_P35__-NOISY_P35))  (kOK_P35)) ;;MERGE. 
))
(:action MERGE_OK_P34
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P34__NOISY_P34) (kOK_P34__-NOISY_P34))  (kOK_P34)) ;;MERGE. 
))
(:action MERGE_OK_P33
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P33__NOISY_P33) (kOK_P33__-NOISY_P33))  (kOK_P33)) ;;MERGE. 
))
(:action MERGE_OK_P32
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P32__NOISY_P32) (kOK_P32__-NOISY_P32))  (kOK_P32)) ;;MERGE. 
))
(:action MERGE_OK_P31
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P31__NOISY_P31) (kOK_P31__-NOISY_P31))  (kOK_P31)) ;;MERGE. 
))
(:action MERGE_OK_P30
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P30__NOISY_P30) (kOK_P30__-NOISY_P30))  (kOK_P30)) ;;MERGE. 
))
(:action MERGE_OK_P29
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P29__NOISY_P29) (kOK_P29__-NOISY_P29))  (kOK_P29)) ;;MERGE. 
))
(:action MERGE_OK_P28
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P28__NOISY_P28) (kOK_P28__-NOISY_P28))  (kOK_P28)) ;;MERGE. 
))
(:action MERGE_OK_P27
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P27__NOISY_P27) (kOK_P27__-NOISY_P27))  (kOK_P27)) ;;MERGE. 
))
(:action MERGE_OK_P26
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P26__NOISY_P26) (kOK_P26__-NOISY_P26))  (kOK_P26)) ;;MERGE. 
))
(:action MERGE_OK_P25
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P25__NOISY_P25) (kOK_P25__-NOISY_P25))  (kOK_P25)) ;;MERGE. 
))
(:action MERGE_OK_P24
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P24__NOISY_P24) (kOK_P24__-NOISY_P24))  (kOK_P24)) ;;MERGE. 
))
(:action MERGE_OK_P23
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P23__NOISY_P23) (kOK_P23__-NOISY_P23))  (kOK_P23)) ;;MERGE. 
))
(:action MERGE_OK_P22
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P22__NOISY_P22) (kOK_P22__-NOISY_P22))  (kOK_P22)) ;;MERGE. 
))
(:action MERGE_OK_P21
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P21__NOISY_P21) (kOK_P21__-NOISY_P21))  (kOK_P21)) ;;MERGE. 
))
(:action MERGE_OK_P20
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P20__NOISY_P20) (kOK_P20__-NOISY_P20))  (kOK_P20)) ;;MERGE. 
))
(:action MERGE_OK_P19
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P19__NOISY_P19) (kOK_P19__-NOISY_P19))  (kOK_P19)) ;;MERGE. 
))
(:action MERGE_OK_P18
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P18__NOISY_P18) (kOK_P18__-NOISY_P18))  (kOK_P18)) ;;MERGE. 
))
(:action MERGE_OK_P17
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P17__NOISY_P17) (kOK_P17__-NOISY_P17))  (kOK_P17)) ;;MERGE. 
))
(:action MERGE_OK_P16
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P16__NOISY_P16) (kOK_P16__-NOISY_P16))  (kOK_P16)) ;;MERGE. 
))
(:action MERGE_OK_P15
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P15__NOISY_P15) (kOK_P15__-NOISY_P15))  (kOK_P15)) ;;MERGE. 
))
(:action MERGE_OK_P14
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P14__NOISY_P14) (kOK_P14__-NOISY_P14))  (kOK_P14)) ;;MERGE. 
))
(:action MERGE_OK_P13
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P13__NOISY_P13) (kOK_P13__-NOISY_P13))  (kOK_P13)) ;;MERGE. 
))
(:action MERGE_OK_P12
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P12__NOISY_P12) (kOK_P12__-NOISY_P12))  (kOK_P12)) ;;MERGE. 
))
(:action MERGE_OK_P11
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P11__NOISY_P11) (kOK_P11__-NOISY_P11))  (kOK_P11)) ;;MERGE. 
))
(:action MERGE_READ_P54
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P54__NOISY_P54) (kREAD_P54__-NOISY_P54))  (kREAD_P54)) ;;MERGE. 
))
(:action MERGE_READ_P53
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P53__NOISY_P53) (kREAD_P53__-NOISY_P53))  (kREAD_P53)) ;;MERGE. 
))
(:action MERGE_READ_P52
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P52__NOISY_P52) (kREAD_P52__-NOISY_P52))  (kREAD_P52)) ;;MERGE. 
))
(:action MERGE_READ_P51
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P51__NOISY_P51) (kREAD_P51__-NOISY_P51))  (kREAD_P51)) ;;MERGE. 
))
(:action MERGE_READ_P50
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P50__NOISY_P50) (kREAD_P50__-NOISY_P50))  (kREAD_P50)) ;;MERGE. 
))
(:action MERGE_READ_P49
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P49__NOISY_P49) (kREAD_P49__-NOISY_P49))  (kREAD_P49)) ;;MERGE. 
))
(:action MERGE_READ_P48
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P48__NOISY_P48) (kREAD_P48__-NOISY_P48))  (kREAD_P48)) ;;MERGE. 
))
(:action MERGE_READ_P47
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P47__NOISY_P47) (kREAD_P47__-NOISY_P47))  (kREAD_P47)) ;;MERGE. 
))
(:action MERGE_READ_P46
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P46__NOISY_P46) (kREAD_P46__-NOISY_P46))  (kREAD_P46)) ;;MERGE. 
))
(:action MERGE_READ_P45
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P45__NOISY_P45) (kREAD_P45__-NOISY_P45))  (kREAD_P45)) ;;MERGE. 
))
(:action MERGE_READ_P44
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P44__NOISY_P44) (kREAD_P44__-NOISY_P44))  (kREAD_P44)) ;;MERGE. 
))
(:action MERGE_READ_P43
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P43__NOISY_P43) (kREAD_P43__-NOISY_P43))  (kREAD_P43)) ;;MERGE. 
))
(:action MERGE_READ_P42
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P42__NOISY_P42) (kREAD_P42__-NOISY_P42))  (kREAD_P42)) ;;MERGE. 
))
(:action MERGE_READ_P41
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P41__NOISY_P41) (kREAD_P41__-NOISY_P41))  (kREAD_P41)) ;;MERGE. 
))
(:action MERGE_READ_P40
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P40__NOISY_P40) (kREAD_P40__-NOISY_P40))  (kREAD_P40)) ;;MERGE. 
))
(:action MERGE_READ_P39
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P39__NOISY_P39) (kREAD_P39__-NOISY_P39))  (kREAD_P39)) ;;MERGE. 
))
(:action MERGE_READ_P38
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P38__NOISY_P38) (kREAD_P38__-NOISY_P38))  (kREAD_P38)) ;;MERGE. 
))
(:action MERGE_READ_P37
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P37__NOISY_P37) (kREAD_P37__-NOISY_P37))  (kREAD_P37)) ;;MERGE. 
))
(:action MERGE_READ_P36
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P36__NOISY_P36) (kREAD_P36__-NOISY_P36))  (kREAD_P36)) ;;MERGE. 
))
(:action MERGE_READ_P35
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P35__NOISY_P35) (kREAD_P35__-NOISY_P35))  (kREAD_P35)) ;;MERGE. 
))
(:action MERGE_READ_P34
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P34__NOISY_P34) (kREAD_P34__-NOISY_P34))  (kREAD_P34)) ;;MERGE. 
))
(:action MERGE_READ_P33
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P33__NOISY_P33) (kREAD_P33__-NOISY_P33))  (kREAD_P33)) ;;MERGE. 
))
(:action MERGE_READ_P32
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P32__NOISY_P32) (kREAD_P32__-NOISY_P32))  (kREAD_P32)) ;;MERGE. 
))
(:action MERGE_READ_P31
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P31__NOISY_P31) (kREAD_P31__-NOISY_P31))  (kREAD_P31)) ;;MERGE. 
))
(:action MERGE_READ_P30
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P30__NOISY_P30) (kREAD_P30__-NOISY_P30))  (kREAD_P30)) ;;MERGE. 
))
(:action MERGE_READ_P29
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P29__NOISY_P29) (kREAD_P29__-NOISY_P29))  (kREAD_P29)) ;;MERGE. 
))
(:action MERGE_READ_P28
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P28__NOISY_P28) (kREAD_P28__-NOISY_P28))  (kREAD_P28)) ;;MERGE. 
))
(:action MERGE_READ_P27
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P27__NOISY_P27) (kREAD_P27__-NOISY_P27))  (kREAD_P27)) ;;MERGE. 
))
(:action MERGE_READ_P26
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P26__NOISY_P26) (kREAD_P26__-NOISY_P26))  (kREAD_P26)) ;;MERGE. 
))
(:action MERGE_READ_P25
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P25__NOISY_P25) (kREAD_P25__-NOISY_P25))  (kREAD_P25)) ;;MERGE. 
))
(:action MERGE_READ_P24
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P24__NOISY_P24) (kREAD_P24__-NOISY_P24))  (kREAD_P24)) ;;MERGE. 
))
(:action MERGE_READ_P23
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P23__NOISY_P23) (kREAD_P23__-NOISY_P23))  (kREAD_P23)) ;;MERGE. 
))
(:action MERGE_READ_P22
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P22__NOISY_P22) (kREAD_P22__-NOISY_P22))  (kREAD_P22)) ;;MERGE. 
))
(:action MERGE_READ_P21
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P21__NOISY_P21) (kREAD_P21__-NOISY_P21))  (kREAD_P21)) ;;MERGE. 
))
(:action MERGE_READ_P20
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P20__NOISY_P20) (kREAD_P20__-NOISY_P20))  (kREAD_P20)) ;;MERGE. 
))
(:action MERGE_READ_P19
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P19__NOISY_P19) (kREAD_P19__-NOISY_P19))  (kREAD_P19)) ;;MERGE. 
))
(:action MERGE_READ_P18
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P18__NOISY_P18) (kREAD_P18__-NOISY_P18))  (kREAD_P18)) ;;MERGE. 
))
(:action MERGE_READ_P17
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P17__NOISY_P17) (kREAD_P17__-NOISY_P17))  (kREAD_P17)) ;;MERGE. 
))
(:action MERGE_READ_P16
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P16__NOISY_P16) (kREAD_P16__-NOISY_P16))  (kREAD_P16)) ;;MERGE. 
))
(:action MERGE_READ_P15
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P15__NOISY_P15) (kREAD_P15__-NOISY_P15))  (kREAD_P15)) ;;MERGE. 
))
(:action MERGE_READ_P14
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P14__NOISY_P14) (kREAD_P14__-NOISY_P14))  (kREAD_P14)) ;;MERGE. 
))
(:action MERGE_READ_P13
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P13__NOISY_P13) (kREAD_P13__-NOISY_P13))  (kREAD_P13)) ;;MERGE. 
))
(:action MERGE_READ_P12
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P12__NOISY_P12) (kREAD_P12__-NOISY_P12))  (kREAD_P12)) ;;MERGE. 
))
(:action MERGE_READ_P11
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P11__NOISY_P11) (kREAD_P11__-NOISY_P11))  (kREAD_P11)) ;;MERGE. 
))
(:action MERGE_OK_P9
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P9__NOISY_P9) (kOK_P9__-NOISY_P9))  (kOK_P9)) ;;MERGE. 
))
(:action MERGE_OK_P8
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P8__NOISY_P8) (kOK_P8__-NOISY_P8))  (kOK_P8)) ;;MERGE. 
))
(:action MERGE_OK_P7
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P7__NOISY_P7) (kOK_P7__-NOISY_P7))  (kOK_P7)) ;;MERGE. 
))
(:action MERGE_OK_P6
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P6__NOISY_P6) (kOK_P6__-NOISY_P6))  (kOK_P6)) ;;MERGE. 
))
(:action MERGE_OK_P5
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P5__NOISY_P5) (kOK_P5__-NOISY_P5))  (kOK_P5)) ;;MERGE. 
))
(:action MERGE_OK_P4
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P4__NOISY_P4) (kOK_P4__-NOISY_P4))  (kOK_P4)) ;;MERGE. 
))
(:action MERGE_OK_P3
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P3__NOISY_P3) (kOK_P3__-NOISY_P3))  (kOK_P3)) ;;MERGE. 
))
(:action MERGE_OK_P2
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P2__NOISY_P2) (kOK_P2__-NOISY_P2))  (kOK_P2)) ;;MERGE. 
))
(:action MERGE_OK_P10
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P10__NOISY_P10) (kOK_P10__-NOISY_P10))  (kOK_P10)) ;;MERGE. 
))
(:action MERGE_OK_P1
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P1__NOISY_P1) (kOK_P1__-NOISY_P1))  (kOK_P1)) ;;MERGE. 
))
(:action MERGE_OK_P0
:parameters ()
:precondition (and)

:effect (and 
(when(and (kOK_P0__NOISY_P0) (kOK_P0__-NOISY_P0))  (kOK_P0)) ;;MERGE. 
))
(:action MERGE_READ_P9
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P9__NOISY_P9) (kREAD_P9__-NOISY_P9))  (kREAD_P9)) ;;MERGE. 
))
(:action MERGE_READ_P8
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P8__NOISY_P8) (kREAD_P8__-NOISY_P8))  (kREAD_P8)) ;;MERGE. 
))
(:action MERGE_READ_P7
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P7__NOISY_P7) (kREAD_P7__-NOISY_P7))  (kREAD_P7)) ;;MERGE. 
))
(:action MERGE_READ_P6
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P6__NOISY_P6) (kREAD_P6__-NOISY_P6))  (kREAD_P6)) ;;MERGE. 
))
(:action MERGE_READ_P5
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P5__NOISY_P5) (kREAD_P5__-NOISY_P5))  (kREAD_P5)) ;;MERGE. 
))
(:action MERGE_READ_P4
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P4__NOISY_P4) (kREAD_P4__-NOISY_P4))  (kREAD_P4)) ;;MERGE. 
))
(:action MERGE_READ_P3
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P3__NOISY_P3) (kREAD_P3__-NOISY_P3))  (kREAD_P3)) ;;MERGE. 
))
(:action MERGE_READ_P2
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P2__NOISY_P2) (kREAD_P2__-NOISY_P2))  (kREAD_P2)) ;;MERGE. 
))
(:action MERGE_READ_P10
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P10__NOISY_P10) (kREAD_P10__-NOISY_P10))  (kREAD_P10)) ;;MERGE. 
))
(:action MERGE_READ_P1
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P1__NOISY_P1) (kREAD_P1__-NOISY_P1))  (kREAD_P1)) ;;MERGE. 
))
(:action MERGE_READ_P0
:parameters ()
:precondition (and)

:effect (and 
(when(and (kREAD_P0__NOISY_P0) (kREAD_P0__-NOISY_P0))  (kREAD_P0)) ;;MERGE. 
))
)
