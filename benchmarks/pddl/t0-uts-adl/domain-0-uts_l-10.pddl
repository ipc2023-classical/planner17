(define (domain UTS)
(:requirements :negative-preconditions :conditional-effects)
	(:predicates
(kSTARTED)
(kSTARTED__AT_N9)
(kSTARTED__AT_N8)
(kSTARTED__AT_N7)
(kSTARTED__AT_N6)
(kSTARTED__AT_N5)
(kSTARTED__AT_N4)
(kSTARTED__AT_N3)
(kSTARTED__AT_N20)
(kSTARTED__AT_N2)
(kSTARTED__AT_N19)
(kSTARTED__AT_N18)
(kSTARTED__AT_N17)
(kSTARTED__AT_N16)
(kSTARTED__AT_N15)
(kSTARTED__AT_N14)
(kSTARTED__AT_N13)
(kSTARTED__AT_N12)
(kSTARTED__AT_N11)
(kSTARTED__AT_N1)
(kSTARTED__AT_N10)
(kVISITED_N1)
(kVISITED_N1__AT_N9)
(kVISITED_N1__AT_N8)
(kVISITED_N1__AT_N7)
(kVISITED_N1__AT_N6)
(kVISITED_N1__AT_N5)
(kVISITED_N1__AT_N4)
(kVISITED_N1__AT_N3)
(kVISITED_N1__AT_N20)
(kVISITED_N1__AT_N2)
(kVISITED_N1__AT_N19)
(kVISITED_N1__AT_N18)
(kVISITED_N1__AT_N17)
(kVISITED_N1__AT_N16)
(kVISITED_N1__AT_N15)
(kVISITED_N1__AT_N14)
(kVISITED_N1__AT_N13)
(kVISITED_N1__AT_N12)
(kVISITED_N1__AT_N11)
(kVISITED_N1__AT_N1)
(kVISITED_N1__AT_N10)
(kVISITED_N10)
(kVISITED_N10__AT_N9)
(kVISITED_N10__AT_N8)
(kVISITED_N10__AT_N7)
(kVISITED_N10__AT_N6)
(kVISITED_N10__AT_N5)
(kVISITED_N10__AT_N4)
(kVISITED_N10__AT_N3)
(kVISITED_N10__AT_N20)
(kVISITED_N10__AT_N2)
(kVISITED_N10__AT_N19)
(kVISITED_N10__AT_N18)
(kVISITED_N10__AT_N17)
(kVISITED_N10__AT_N16)
(kVISITED_N10__AT_N15)
(kVISITED_N10__AT_N14)
(kVISITED_N10__AT_N13)
(kVISITED_N10__AT_N12)
(kVISITED_N10__AT_N11)
(kVISITED_N10__AT_N1)
(kVISITED_N10__AT_N10)
(kVISITED_N11)
(kVISITED_N11__AT_N9)
(kVISITED_N11__AT_N8)
(kVISITED_N11__AT_N7)
(kVISITED_N11__AT_N6)
(kVISITED_N11__AT_N5)
(kVISITED_N11__AT_N4)
(kVISITED_N11__AT_N3)
(kVISITED_N11__AT_N20)
(kVISITED_N11__AT_N2)
(kVISITED_N11__AT_N19)
(kVISITED_N11__AT_N18)
(kVISITED_N11__AT_N17)
(kVISITED_N11__AT_N16)
(kVISITED_N11__AT_N15)
(kVISITED_N11__AT_N14)
(kVISITED_N11__AT_N13)
(kVISITED_N11__AT_N12)
(kVISITED_N11__AT_N11)
(kVISITED_N11__AT_N1)
(kVISITED_N11__AT_N10)
(kVISITED_N12)
(kVISITED_N12__AT_N9)
(kVISITED_N12__AT_N8)
(kVISITED_N12__AT_N7)
(kVISITED_N12__AT_N6)
(kVISITED_N12__AT_N5)
(kVISITED_N12__AT_N4)
(kVISITED_N12__AT_N3)
(kVISITED_N12__AT_N20)
(kVISITED_N12__AT_N2)
(kVISITED_N12__AT_N19)
(kVISITED_N12__AT_N18)
(kVISITED_N12__AT_N17)
(kVISITED_N12__AT_N16)
(kVISITED_N12__AT_N15)
(kVISITED_N12__AT_N14)
(kVISITED_N12__AT_N13)
(kVISITED_N12__AT_N12)
(kVISITED_N12__AT_N11)
(kVISITED_N12__AT_N1)
(kVISITED_N12__AT_N10)
(kVISITED_N13)
(kVISITED_N13__AT_N9)
(kVISITED_N13__AT_N8)
(kVISITED_N13__AT_N7)
(kVISITED_N13__AT_N6)
(kVISITED_N13__AT_N5)
(kVISITED_N13__AT_N4)
(kVISITED_N13__AT_N3)
(kVISITED_N13__AT_N20)
(kVISITED_N13__AT_N2)
(kVISITED_N13__AT_N19)
(kVISITED_N13__AT_N18)
(kVISITED_N13__AT_N17)
(kVISITED_N13__AT_N16)
(kVISITED_N13__AT_N15)
(kVISITED_N13__AT_N14)
(kVISITED_N13__AT_N13)
(kVISITED_N13__AT_N12)
(kVISITED_N13__AT_N11)
(kVISITED_N13__AT_N1)
(kVISITED_N13__AT_N10)
(kVISITED_N14)
(kVISITED_N14__AT_N9)
(kVISITED_N14__AT_N8)
(kVISITED_N14__AT_N7)
(kVISITED_N14__AT_N6)
(kVISITED_N14__AT_N5)
(kVISITED_N14__AT_N4)
(kVISITED_N14__AT_N3)
(kVISITED_N14__AT_N20)
(kVISITED_N14__AT_N2)
(kVISITED_N14__AT_N19)
(kVISITED_N14__AT_N18)
(kVISITED_N14__AT_N17)
(kVISITED_N14__AT_N16)
(kVISITED_N14__AT_N15)
(kVISITED_N14__AT_N14)
(kVISITED_N14__AT_N13)
(kVISITED_N14__AT_N12)
(kVISITED_N14__AT_N11)
(kVISITED_N14__AT_N1)
(kVISITED_N14__AT_N10)
(kVISITED_N15)
(kVISITED_N15__AT_N9)
(kVISITED_N15__AT_N8)
(kVISITED_N15__AT_N7)
(kVISITED_N15__AT_N6)
(kVISITED_N15__AT_N5)
(kVISITED_N15__AT_N4)
(kVISITED_N15__AT_N3)
(kVISITED_N15__AT_N20)
(kVISITED_N15__AT_N2)
(kVISITED_N15__AT_N19)
(kVISITED_N15__AT_N18)
(kVISITED_N15__AT_N17)
(kVISITED_N15__AT_N16)
(kVISITED_N15__AT_N15)
(kVISITED_N15__AT_N14)
(kVISITED_N15__AT_N13)
(kVISITED_N15__AT_N12)
(kVISITED_N15__AT_N11)
(kVISITED_N15__AT_N1)
(kVISITED_N15__AT_N10)
(kVISITED_N16)
(kVISITED_N16__AT_N9)
(kVISITED_N16__AT_N8)
(kVISITED_N16__AT_N7)
(kVISITED_N16__AT_N6)
(kVISITED_N16__AT_N5)
(kVISITED_N16__AT_N4)
(kVISITED_N16__AT_N3)
(kVISITED_N16__AT_N20)
(kVISITED_N16__AT_N2)
(kVISITED_N16__AT_N19)
(kVISITED_N16__AT_N18)
(kVISITED_N16__AT_N17)
(kVISITED_N16__AT_N16)
(kVISITED_N16__AT_N15)
(kVISITED_N16__AT_N14)
(kVISITED_N16__AT_N13)
(kVISITED_N16__AT_N12)
(kVISITED_N16__AT_N11)
(kVISITED_N16__AT_N1)
(kVISITED_N16__AT_N10)
(kVISITED_N17)
(kVISITED_N17__AT_N9)
(kVISITED_N17__AT_N8)
(kVISITED_N17__AT_N7)
(kVISITED_N17__AT_N6)
(kVISITED_N17__AT_N5)
(kVISITED_N17__AT_N4)
(kVISITED_N17__AT_N3)
(kVISITED_N17__AT_N20)
(kVISITED_N17__AT_N2)
(kVISITED_N17__AT_N19)
(kVISITED_N17__AT_N18)
(kVISITED_N17__AT_N17)
(kVISITED_N17__AT_N16)
(kVISITED_N17__AT_N15)
(kVISITED_N17__AT_N14)
(kVISITED_N17__AT_N13)
(kVISITED_N17__AT_N12)
(kVISITED_N17__AT_N11)
(kVISITED_N17__AT_N1)
(kVISITED_N17__AT_N10)
(kVISITED_N18)
(kVISITED_N18__AT_N9)
(kVISITED_N18__AT_N8)
(kVISITED_N18__AT_N7)
(kVISITED_N18__AT_N6)
(kVISITED_N18__AT_N5)
(kVISITED_N18__AT_N4)
(kVISITED_N18__AT_N3)
(kVISITED_N18__AT_N20)
(kVISITED_N18__AT_N2)
(kVISITED_N18__AT_N19)
(kVISITED_N18__AT_N18)
(kVISITED_N18__AT_N17)
(kVISITED_N18__AT_N16)
(kVISITED_N18__AT_N15)
(kVISITED_N18__AT_N14)
(kVISITED_N18__AT_N13)
(kVISITED_N18__AT_N12)
(kVISITED_N18__AT_N11)
(kVISITED_N18__AT_N1)
(kVISITED_N18__AT_N10)
(kVISITED_N19)
(kVISITED_N19__AT_N9)
(kVISITED_N19__AT_N8)
(kVISITED_N19__AT_N7)
(kVISITED_N19__AT_N6)
(kVISITED_N19__AT_N5)
(kVISITED_N19__AT_N4)
(kVISITED_N19__AT_N3)
(kVISITED_N19__AT_N20)
(kVISITED_N19__AT_N2)
(kVISITED_N19__AT_N19)
(kVISITED_N19__AT_N18)
(kVISITED_N19__AT_N17)
(kVISITED_N19__AT_N16)
(kVISITED_N19__AT_N15)
(kVISITED_N19__AT_N14)
(kVISITED_N19__AT_N13)
(kVISITED_N19__AT_N12)
(kVISITED_N19__AT_N11)
(kVISITED_N19__AT_N1)
(kVISITED_N19__AT_N10)
(kVISITED_N2)
(kVISITED_N2__AT_N9)
(kVISITED_N2__AT_N8)
(kVISITED_N2__AT_N7)
(kVISITED_N2__AT_N6)
(kVISITED_N2__AT_N5)
(kVISITED_N2__AT_N4)
(kVISITED_N2__AT_N3)
(kVISITED_N2__AT_N20)
(kVISITED_N2__AT_N2)
(kVISITED_N2__AT_N19)
(kVISITED_N2__AT_N18)
(kVISITED_N2__AT_N17)
(kVISITED_N2__AT_N16)
(kVISITED_N2__AT_N15)
(kVISITED_N2__AT_N14)
(kVISITED_N2__AT_N13)
(kVISITED_N2__AT_N12)
(kVISITED_N2__AT_N11)
(kVISITED_N2__AT_N1)
(kVISITED_N2__AT_N10)
(kVISITED_N20)
(kVISITED_N20__AT_N9)
(kVISITED_N20__AT_N8)
(kVISITED_N20__AT_N7)
(kVISITED_N20__AT_N6)
(kVISITED_N20__AT_N5)
(kVISITED_N20__AT_N4)
(kVISITED_N20__AT_N3)
(kVISITED_N20__AT_N20)
(kVISITED_N20__AT_N2)
(kVISITED_N20__AT_N19)
(kVISITED_N20__AT_N18)
(kVISITED_N20__AT_N17)
(kVISITED_N20__AT_N16)
(kVISITED_N20__AT_N15)
(kVISITED_N20__AT_N14)
(kVISITED_N20__AT_N13)
(kVISITED_N20__AT_N12)
(kVISITED_N20__AT_N11)
(kVISITED_N20__AT_N1)
(kVISITED_N20__AT_N10)
(kVISITED_N3)
(kVISITED_N3__AT_N9)
(kVISITED_N3__AT_N8)
(kVISITED_N3__AT_N7)
(kVISITED_N3__AT_N6)
(kVISITED_N3__AT_N5)
(kVISITED_N3__AT_N4)
(kVISITED_N3__AT_N3)
(kVISITED_N3__AT_N20)
(kVISITED_N3__AT_N2)
(kVISITED_N3__AT_N19)
(kVISITED_N3__AT_N18)
(kVISITED_N3__AT_N17)
(kVISITED_N3__AT_N16)
(kVISITED_N3__AT_N15)
(kVISITED_N3__AT_N14)
(kVISITED_N3__AT_N13)
(kVISITED_N3__AT_N12)
(kVISITED_N3__AT_N11)
(kVISITED_N3__AT_N1)
(kVISITED_N3__AT_N10)
(kVISITED_N4)
(kVISITED_N4__AT_N9)
(kVISITED_N4__AT_N8)
(kVISITED_N4__AT_N7)
(kVISITED_N4__AT_N6)
(kVISITED_N4__AT_N5)
(kVISITED_N4__AT_N4)
(kVISITED_N4__AT_N3)
(kVISITED_N4__AT_N20)
(kVISITED_N4__AT_N2)
(kVISITED_N4__AT_N19)
(kVISITED_N4__AT_N18)
(kVISITED_N4__AT_N17)
(kVISITED_N4__AT_N16)
(kVISITED_N4__AT_N15)
(kVISITED_N4__AT_N14)
(kVISITED_N4__AT_N13)
(kVISITED_N4__AT_N12)
(kVISITED_N4__AT_N11)
(kVISITED_N4__AT_N1)
(kVISITED_N4__AT_N10)
(kVISITED_N5)
(kVISITED_N5__AT_N9)
(kVISITED_N5__AT_N8)
(kVISITED_N5__AT_N7)
(kVISITED_N5__AT_N6)
(kVISITED_N5__AT_N5)
(kVISITED_N5__AT_N4)
(kVISITED_N5__AT_N3)
(kVISITED_N5__AT_N20)
(kVISITED_N5__AT_N2)
(kVISITED_N5__AT_N19)
(kVISITED_N5__AT_N18)
(kVISITED_N5__AT_N17)
(kVISITED_N5__AT_N16)
(kVISITED_N5__AT_N15)
(kVISITED_N5__AT_N14)
(kVISITED_N5__AT_N13)
(kVISITED_N5__AT_N12)
(kVISITED_N5__AT_N11)
(kVISITED_N5__AT_N1)
(kVISITED_N5__AT_N10)
(kVISITED_N6)
(kVISITED_N6__AT_N9)
(kVISITED_N6__AT_N8)
(kVISITED_N6__AT_N7)
(kVISITED_N6__AT_N6)
(kVISITED_N6__AT_N5)
(kVISITED_N6__AT_N4)
(kVISITED_N6__AT_N3)
(kVISITED_N6__AT_N20)
(kVISITED_N6__AT_N2)
(kVISITED_N6__AT_N19)
(kVISITED_N6__AT_N18)
(kVISITED_N6__AT_N17)
(kVISITED_N6__AT_N16)
(kVISITED_N6__AT_N15)
(kVISITED_N6__AT_N14)
(kVISITED_N6__AT_N13)
(kVISITED_N6__AT_N12)
(kVISITED_N6__AT_N11)
(kVISITED_N6__AT_N1)
(kVISITED_N6__AT_N10)
(kVISITED_N7)
(kVISITED_N7__AT_N9)
(kVISITED_N7__AT_N8)
(kVISITED_N7__AT_N7)
(kVISITED_N7__AT_N6)
(kVISITED_N7__AT_N5)
(kVISITED_N7__AT_N4)
(kVISITED_N7__AT_N3)
(kVISITED_N7__AT_N20)
(kVISITED_N7__AT_N2)
(kVISITED_N7__AT_N19)
(kVISITED_N7__AT_N18)
(kVISITED_N7__AT_N17)
(kVISITED_N7__AT_N16)
(kVISITED_N7__AT_N15)
(kVISITED_N7__AT_N14)
(kVISITED_N7__AT_N13)
(kVISITED_N7__AT_N12)
(kVISITED_N7__AT_N11)
(kVISITED_N7__AT_N1)
(kVISITED_N7__AT_N10)
(kVISITED_N8)
(kVISITED_N8__AT_N9)
(kVISITED_N8__AT_N8)
(kVISITED_N8__AT_N7)
(kVISITED_N8__AT_N6)
(kVISITED_N8__AT_N5)
(kVISITED_N8__AT_N4)
(kVISITED_N8__AT_N3)
(kVISITED_N8__AT_N20)
(kVISITED_N8__AT_N2)
(kVISITED_N8__AT_N19)
(kVISITED_N8__AT_N18)
(kVISITED_N8__AT_N17)
(kVISITED_N8__AT_N16)
(kVISITED_N8__AT_N15)
(kVISITED_N8__AT_N14)
(kVISITED_N8__AT_N13)
(kVISITED_N8__AT_N12)
(kVISITED_N8__AT_N11)
(kVISITED_N8__AT_N1)
(kVISITED_N8__AT_N10)
(kVISITED_N9)
(kVISITED_N9__AT_N9)
(kVISITED_N9__AT_N8)
(kVISITED_N9__AT_N7)
(kVISITED_N9__AT_N6)
(kVISITED_N9__AT_N5)
(kVISITED_N9__AT_N4)
(kVISITED_N9__AT_N3)
(kVISITED_N9__AT_N20)
(kVISITED_N9__AT_N2)
(kVISITED_N9__AT_N19)
(kVISITED_N9__AT_N18)
(kVISITED_N9__AT_N17)
(kVISITED_N9__AT_N16)
(kVISITED_N9__AT_N15)
(kVISITED_N9__AT_N14)
(kVISITED_N9__AT_N13)
(kVISITED_N9__AT_N12)
(kVISITED_N9__AT_N11)
(kVISITED_N9__AT_N1)
(kVISITED_N9__AT_N10)
(kAT_N1)
(k-AT_N1)
(kAT_N1__AT_N9)
(kAT_N1__AT_N8)
(kAT_N1__AT_N7)
(kAT_N1__AT_N6)
(kAT_N1__AT_N5)
(kAT_N1__AT_N4)
(kAT_N1__AT_N3)
(kAT_N1__AT_N20)
(kAT_N1__AT_N2)
(kAT_N1__AT_N19)
(kAT_N1__AT_N18)
(kAT_N1__AT_N17)
(kAT_N1__AT_N16)
(kAT_N1__AT_N15)
(kAT_N1__AT_N14)
(kAT_N1__AT_N13)
(kAT_N1__AT_N12)
(kAT_N1__AT_N11)
(kAT_N1__AT_N1)
(kAT_N1__AT_N10)
(kAT_N10)
(k-AT_N10)
(kAT_N10__AT_N9)
(kAT_N10__AT_N8)
(kAT_N10__AT_N7)
(kAT_N10__AT_N6)
(kAT_N10__AT_N5)
(kAT_N10__AT_N4)
(kAT_N10__AT_N3)
(kAT_N10__AT_N20)
(kAT_N10__AT_N2)
(kAT_N10__AT_N19)
(kAT_N10__AT_N18)
(kAT_N10__AT_N17)
(kAT_N10__AT_N16)
(kAT_N10__AT_N15)
(kAT_N10__AT_N14)
(kAT_N10__AT_N13)
(kAT_N10__AT_N12)
(kAT_N10__AT_N11)
(kAT_N10__AT_N1)
(kAT_N10__AT_N10)
(kAT_N11)
(k-AT_N11)
(kAT_N11__AT_N9)
(kAT_N11__AT_N8)
(kAT_N11__AT_N7)
(kAT_N11__AT_N6)
(kAT_N11__AT_N5)
(kAT_N11__AT_N4)
(kAT_N11__AT_N3)
(kAT_N11__AT_N20)
(kAT_N11__AT_N2)
(kAT_N11__AT_N19)
(kAT_N11__AT_N18)
(kAT_N11__AT_N17)
(kAT_N11__AT_N16)
(kAT_N11__AT_N15)
(kAT_N11__AT_N14)
(kAT_N11__AT_N13)
(kAT_N11__AT_N12)
(kAT_N11__AT_N11)
(kAT_N11__AT_N1)
(kAT_N11__AT_N10)
(kAT_N12)
(k-AT_N12)
(kAT_N12__AT_N9)
(kAT_N12__AT_N8)
(kAT_N12__AT_N7)
(kAT_N12__AT_N6)
(kAT_N12__AT_N5)
(kAT_N12__AT_N4)
(kAT_N12__AT_N3)
(kAT_N12__AT_N20)
(kAT_N12__AT_N2)
(kAT_N12__AT_N19)
(kAT_N12__AT_N18)
(kAT_N12__AT_N17)
(kAT_N12__AT_N16)
(kAT_N12__AT_N15)
(kAT_N12__AT_N14)
(kAT_N12__AT_N13)
(kAT_N12__AT_N12)
(kAT_N12__AT_N11)
(kAT_N12__AT_N1)
(kAT_N12__AT_N10)
(kAT_N13)
(k-AT_N13)
(kAT_N13__AT_N9)
(kAT_N13__AT_N8)
(kAT_N13__AT_N7)
(kAT_N13__AT_N6)
(kAT_N13__AT_N5)
(kAT_N13__AT_N4)
(kAT_N13__AT_N3)
(kAT_N13__AT_N20)
(kAT_N13__AT_N2)
(kAT_N13__AT_N19)
(kAT_N13__AT_N18)
(kAT_N13__AT_N17)
(kAT_N13__AT_N16)
(kAT_N13__AT_N15)
(kAT_N13__AT_N14)
(kAT_N13__AT_N13)
(kAT_N13__AT_N12)
(kAT_N13__AT_N11)
(kAT_N13__AT_N1)
(kAT_N13__AT_N10)
(kAT_N14)
(k-AT_N14)
(kAT_N14__AT_N9)
(kAT_N14__AT_N8)
(kAT_N14__AT_N7)
(kAT_N14__AT_N6)
(kAT_N14__AT_N5)
(kAT_N14__AT_N4)
(kAT_N14__AT_N3)
(kAT_N14__AT_N20)
(kAT_N14__AT_N2)
(kAT_N14__AT_N19)
(kAT_N14__AT_N18)
(kAT_N14__AT_N17)
(kAT_N14__AT_N16)
(kAT_N14__AT_N15)
(kAT_N14__AT_N14)
(kAT_N14__AT_N13)
(kAT_N14__AT_N12)
(kAT_N14__AT_N11)
(kAT_N14__AT_N1)
(kAT_N14__AT_N10)
(kAT_N15)
(k-AT_N15)
(kAT_N15__AT_N9)
(kAT_N15__AT_N8)
(kAT_N15__AT_N7)
(kAT_N15__AT_N6)
(kAT_N15__AT_N5)
(kAT_N15__AT_N4)
(kAT_N15__AT_N3)
(kAT_N15__AT_N20)
(kAT_N15__AT_N2)
(kAT_N15__AT_N19)
(kAT_N15__AT_N18)
(kAT_N15__AT_N17)
(kAT_N15__AT_N16)
(kAT_N15__AT_N15)
(kAT_N15__AT_N14)
(kAT_N15__AT_N13)
(kAT_N15__AT_N12)
(kAT_N15__AT_N11)
(kAT_N15__AT_N1)
(kAT_N15__AT_N10)
(kAT_N16)
(k-AT_N16)
(kAT_N16__AT_N9)
(kAT_N16__AT_N8)
(kAT_N16__AT_N7)
(kAT_N16__AT_N6)
(kAT_N16__AT_N5)
(kAT_N16__AT_N4)
(kAT_N16__AT_N3)
(kAT_N16__AT_N20)
(kAT_N16__AT_N2)
(kAT_N16__AT_N19)
(kAT_N16__AT_N18)
(kAT_N16__AT_N17)
(kAT_N16__AT_N16)
(kAT_N16__AT_N15)
(kAT_N16__AT_N14)
(kAT_N16__AT_N13)
(kAT_N16__AT_N12)
(kAT_N16__AT_N11)
(kAT_N16__AT_N1)
(kAT_N16__AT_N10)
(kAT_N17)
(k-AT_N17)
(kAT_N17__AT_N9)
(kAT_N17__AT_N8)
(kAT_N17__AT_N7)
(kAT_N17__AT_N6)
(kAT_N17__AT_N5)
(kAT_N17__AT_N4)
(kAT_N17__AT_N3)
(kAT_N17__AT_N20)
(kAT_N17__AT_N2)
(kAT_N17__AT_N19)
(kAT_N17__AT_N18)
(kAT_N17__AT_N17)
(kAT_N17__AT_N16)
(kAT_N17__AT_N15)
(kAT_N17__AT_N14)
(kAT_N17__AT_N13)
(kAT_N17__AT_N12)
(kAT_N17__AT_N11)
(kAT_N17__AT_N1)
(kAT_N17__AT_N10)
(kAT_N18)
(k-AT_N18)
(kAT_N18__AT_N9)
(kAT_N18__AT_N8)
(kAT_N18__AT_N7)
(kAT_N18__AT_N6)
(kAT_N18__AT_N5)
(kAT_N18__AT_N4)
(kAT_N18__AT_N3)
(kAT_N18__AT_N20)
(kAT_N18__AT_N2)
(kAT_N18__AT_N19)
(kAT_N18__AT_N18)
(kAT_N18__AT_N17)
(kAT_N18__AT_N16)
(kAT_N18__AT_N15)
(kAT_N18__AT_N14)
(kAT_N18__AT_N13)
(kAT_N18__AT_N12)
(kAT_N18__AT_N11)
(kAT_N18__AT_N1)
(kAT_N18__AT_N10)
(kAT_N19)
(k-AT_N19)
(kAT_N19__AT_N9)
(kAT_N19__AT_N8)
(kAT_N19__AT_N7)
(kAT_N19__AT_N6)
(kAT_N19__AT_N5)
(kAT_N19__AT_N4)
(kAT_N19__AT_N3)
(kAT_N19__AT_N20)
(kAT_N19__AT_N2)
(kAT_N19__AT_N19)
(kAT_N19__AT_N18)
(kAT_N19__AT_N17)
(kAT_N19__AT_N16)
(kAT_N19__AT_N15)
(kAT_N19__AT_N14)
(kAT_N19__AT_N13)
(kAT_N19__AT_N12)
(kAT_N19__AT_N11)
(kAT_N19__AT_N1)
(kAT_N19__AT_N10)
(kAT_N2)
(k-AT_N2)
(kAT_N2__AT_N9)
(kAT_N2__AT_N8)
(kAT_N2__AT_N7)
(kAT_N2__AT_N6)
(kAT_N2__AT_N5)
(kAT_N2__AT_N4)
(kAT_N2__AT_N3)
(kAT_N2__AT_N20)
(kAT_N2__AT_N2)
(kAT_N2__AT_N19)
(kAT_N2__AT_N18)
(kAT_N2__AT_N17)
(kAT_N2__AT_N16)
(kAT_N2__AT_N15)
(kAT_N2__AT_N14)
(kAT_N2__AT_N13)
(kAT_N2__AT_N12)
(kAT_N2__AT_N11)
(kAT_N2__AT_N1)
(kAT_N2__AT_N10)
(kAT_N20)
(k-AT_N20)
(kAT_N20__AT_N9)
(kAT_N20__AT_N8)
(kAT_N20__AT_N7)
(kAT_N20__AT_N6)
(kAT_N20__AT_N5)
(kAT_N20__AT_N4)
(kAT_N20__AT_N3)
(kAT_N20__AT_N20)
(kAT_N20__AT_N2)
(kAT_N20__AT_N19)
(kAT_N20__AT_N18)
(kAT_N20__AT_N17)
(kAT_N20__AT_N16)
(kAT_N20__AT_N15)
(kAT_N20__AT_N14)
(kAT_N20__AT_N13)
(kAT_N20__AT_N12)
(kAT_N20__AT_N11)
(kAT_N20__AT_N1)
(kAT_N20__AT_N10)
(kAT_N3)
(k-AT_N3)
(kAT_N3__AT_N9)
(kAT_N3__AT_N8)
(kAT_N3__AT_N7)
(kAT_N3__AT_N6)
(kAT_N3__AT_N5)
(kAT_N3__AT_N4)
(kAT_N3__AT_N3)
(kAT_N3__AT_N20)
(kAT_N3__AT_N2)
(kAT_N3__AT_N19)
(kAT_N3__AT_N18)
(kAT_N3__AT_N17)
(kAT_N3__AT_N16)
(kAT_N3__AT_N15)
(kAT_N3__AT_N14)
(kAT_N3__AT_N13)
(kAT_N3__AT_N12)
(kAT_N3__AT_N11)
(kAT_N3__AT_N1)
(kAT_N3__AT_N10)
(kAT_N4)
(k-AT_N4)
(kAT_N4__AT_N9)
(kAT_N4__AT_N8)
(kAT_N4__AT_N7)
(kAT_N4__AT_N6)
(kAT_N4__AT_N5)
(kAT_N4__AT_N4)
(kAT_N4__AT_N3)
(kAT_N4__AT_N20)
(kAT_N4__AT_N2)
(kAT_N4__AT_N19)
(kAT_N4__AT_N18)
(kAT_N4__AT_N17)
(kAT_N4__AT_N16)
(kAT_N4__AT_N15)
(kAT_N4__AT_N14)
(kAT_N4__AT_N13)
(kAT_N4__AT_N12)
(kAT_N4__AT_N11)
(kAT_N4__AT_N1)
(kAT_N4__AT_N10)
(kAT_N5)
(k-AT_N5)
(kAT_N5__AT_N9)
(kAT_N5__AT_N8)
(kAT_N5__AT_N7)
(kAT_N5__AT_N6)
(kAT_N5__AT_N5)
(kAT_N5__AT_N4)
(kAT_N5__AT_N3)
(kAT_N5__AT_N20)
(kAT_N5__AT_N2)
(kAT_N5__AT_N19)
(kAT_N5__AT_N18)
(kAT_N5__AT_N17)
(kAT_N5__AT_N16)
(kAT_N5__AT_N15)
(kAT_N5__AT_N14)
(kAT_N5__AT_N13)
(kAT_N5__AT_N12)
(kAT_N5__AT_N11)
(kAT_N5__AT_N1)
(kAT_N5__AT_N10)
(kAT_N6)
(k-AT_N6)
(kAT_N6__AT_N9)
(kAT_N6__AT_N8)
(kAT_N6__AT_N7)
(kAT_N6__AT_N6)
(kAT_N6__AT_N5)
(kAT_N6__AT_N4)
(kAT_N6__AT_N3)
(kAT_N6__AT_N20)
(kAT_N6__AT_N2)
(kAT_N6__AT_N19)
(kAT_N6__AT_N18)
(kAT_N6__AT_N17)
(kAT_N6__AT_N16)
(kAT_N6__AT_N15)
(kAT_N6__AT_N14)
(kAT_N6__AT_N13)
(kAT_N6__AT_N12)
(kAT_N6__AT_N11)
(kAT_N6__AT_N1)
(kAT_N6__AT_N10)
(kAT_N7)
(k-AT_N7)
(kAT_N7__AT_N9)
(kAT_N7__AT_N8)
(kAT_N7__AT_N7)
(kAT_N7__AT_N6)
(kAT_N7__AT_N5)
(kAT_N7__AT_N4)
(kAT_N7__AT_N3)
(kAT_N7__AT_N20)
(kAT_N7__AT_N2)
(kAT_N7__AT_N19)
(kAT_N7__AT_N18)
(kAT_N7__AT_N17)
(kAT_N7__AT_N16)
(kAT_N7__AT_N15)
(kAT_N7__AT_N14)
(kAT_N7__AT_N13)
(kAT_N7__AT_N12)
(kAT_N7__AT_N11)
(kAT_N7__AT_N1)
(kAT_N7__AT_N10)
(kAT_N8)
(k-AT_N8)
(kAT_N8__AT_N9)
(kAT_N8__AT_N8)
(kAT_N8__AT_N7)
(kAT_N8__AT_N6)
(kAT_N8__AT_N5)
(kAT_N8__AT_N4)
(kAT_N8__AT_N3)
(kAT_N8__AT_N20)
(kAT_N8__AT_N2)
(kAT_N8__AT_N19)
(kAT_N8__AT_N18)
(kAT_N8__AT_N17)
(kAT_N8__AT_N16)
(kAT_N8__AT_N15)
(kAT_N8__AT_N14)
(kAT_N8__AT_N13)
(kAT_N8__AT_N12)
(kAT_N8__AT_N11)
(kAT_N8__AT_N1)
(kAT_N8__AT_N10)
(kAT_N9)
(k-AT_N9)
(kAT_N9__AT_N9)
(kAT_N9__AT_N8)
(kAT_N9__AT_N7)
(kAT_N9__AT_N6)
(kAT_N9__AT_N5)
(kAT_N9__AT_N4)
(kAT_N9__AT_N3)
(kAT_N9__AT_N20)
(kAT_N9__AT_N2)
(kAT_N9__AT_N19)
(kAT_N9__AT_N18)
(kAT_N9__AT_N17)
(kAT_N9__AT_N16)
(kAT_N9__AT_N15)
(kAT_N9__AT_N14)
(kAT_N9__AT_N13)
(kAT_N9__AT_N12)
(kAT_N9__AT_N11)
(kAT_N9__AT_N1)
(kAT_N9__AT_N10)
)
(:action TRAVEL_N14_N13
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N14)
(when (kAT_N14__AT_N10) (and (kVISITED_N13__AT_N10) (kAT_N13__AT_N10) (not(kAT_N14__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N14) (and (kVISITED_N13) (kAT_N13) (k-AT_N14))) ;; Support. 
(when (not(k-AT_N14)) (and (not(k-AT_N13)) (not(kAT_N14)))) ;; Cancellation. 
(when (kAT_N14__AT_N9) (and (kVISITED_N13__AT_N9) (kAT_N13__AT_N9) (not(kAT_N14__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N8) (and (kVISITED_N13__AT_N8) (kAT_N13__AT_N8) (not(kAT_N14__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N7) (and (kVISITED_N13__AT_N7) (kAT_N13__AT_N7) (not(kAT_N14__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N6) (and (kVISITED_N13__AT_N6) (kAT_N13__AT_N6) (not(kAT_N14__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N5) (and (kVISITED_N13__AT_N5) (kAT_N13__AT_N5) (not(kAT_N14__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N4) (and (kVISITED_N13__AT_N4) (kAT_N13__AT_N4) (not(kAT_N14__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N3) (and (kVISITED_N13__AT_N3) (kAT_N13__AT_N3) (not(kAT_N14__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N20) (and (kVISITED_N13__AT_N20) (kAT_N13__AT_N20) (not(kAT_N14__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N2) (and (kVISITED_N13__AT_N2) (kAT_N13__AT_N2) (not(kAT_N14__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N19) (and (kVISITED_N13__AT_N19) (kAT_N13__AT_N19) (not(kAT_N14__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N18) (and (kVISITED_N13__AT_N18) (kAT_N13__AT_N18) (not(kAT_N14__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N17) (and (kVISITED_N13__AT_N17) (kAT_N13__AT_N17) (not(kAT_N14__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N16) (and (kVISITED_N13__AT_N16) (kAT_N13__AT_N16) (not(kAT_N14__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N15) (and (kVISITED_N13__AT_N15) (kAT_N13__AT_N15) (not(kAT_N14__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N14) (and (kVISITED_N13__AT_N14) (kAT_N13__AT_N14) (not(kAT_N14__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N13) (and (kVISITED_N13__AT_N13) (kAT_N13__AT_N13) (not(kAT_N14__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N12) (and (kVISITED_N13__AT_N12) (kAT_N13__AT_N12) (not(kAT_N14__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N11) (and (kVISITED_N13__AT_N11) (kAT_N13__AT_N11) (not(kAT_N14__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N1) (and (kVISITED_N13__AT_N1) (kAT_N13__AT_N1) (not(kAT_N14__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N2_N1
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N2)
(when (kAT_N2__AT_N10) (and (kVISITED_N1__AT_N10) (kAT_N1__AT_N10) (not(kAT_N2__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N2) (and (kVISITED_N1) (kAT_N1) (k-AT_N2))) ;; Support. 
(when (not(k-AT_N2)) (and (not(k-AT_N1)) (not(kAT_N2)))) ;; Cancellation. 
(when (kAT_N2__AT_N9) (and (kVISITED_N1__AT_N9) (kAT_N1__AT_N9) (not(kAT_N2__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N8) (and (kVISITED_N1__AT_N8) (kAT_N1__AT_N8) (not(kAT_N2__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N7) (and (kVISITED_N1__AT_N7) (kAT_N1__AT_N7) (not(kAT_N2__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N6) (and (kVISITED_N1__AT_N6) (kAT_N1__AT_N6) (not(kAT_N2__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N5) (and (kVISITED_N1__AT_N5) (kAT_N1__AT_N5) (not(kAT_N2__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N4) (and (kVISITED_N1__AT_N4) (kAT_N1__AT_N4) (not(kAT_N2__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N3) (and (kVISITED_N1__AT_N3) (kAT_N1__AT_N3) (not(kAT_N2__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N20) (and (kVISITED_N1__AT_N20) (kAT_N1__AT_N20) (not(kAT_N2__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N2) (and (kVISITED_N1__AT_N2) (kAT_N1__AT_N2) (not(kAT_N2__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N19) (and (kVISITED_N1__AT_N19) (kAT_N1__AT_N19) (not(kAT_N2__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N18) (and (kVISITED_N1__AT_N18) (kAT_N1__AT_N18) (not(kAT_N2__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N17) (and (kVISITED_N1__AT_N17) (kAT_N1__AT_N17) (not(kAT_N2__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N16) (and (kVISITED_N1__AT_N16) (kAT_N1__AT_N16) (not(kAT_N2__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N15) (and (kVISITED_N1__AT_N15) (kAT_N1__AT_N15) (not(kAT_N2__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N14) (and (kVISITED_N1__AT_N14) (kAT_N1__AT_N14) (not(kAT_N2__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N13) (and (kVISITED_N1__AT_N13) (kAT_N1__AT_N13) (not(kAT_N2__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N12) (and (kVISITED_N1__AT_N12) (kAT_N1__AT_N12) (not(kAT_N2__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N11) (and (kVISITED_N1__AT_N11) (kAT_N1__AT_N11) (not(kAT_N2__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N1) (and (kVISITED_N1__AT_N1) (kAT_N1__AT_N1) (not(kAT_N2__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N9_N10
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N9)
(when (kAT_N9__AT_N10) (and (kVISITED_N10__AT_N10) (kAT_N10__AT_N10) (not(kAT_N9__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N9) (and (kVISITED_N10) (kAT_N10) (k-AT_N9))) ;; Support. 
(when (not(k-AT_N9)) (and (not(k-AT_N10)) (not(kAT_N9)))) ;; Cancellation. 
(when (kAT_N9__AT_N9) (and (kVISITED_N10__AT_N9) (kAT_N10__AT_N9) (not(kAT_N9__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N8) (and (kVISITED_N10__AT_N8) (kAT_N10__AT_N8) (not(kAT_N9__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N7) (and (kVISITED_N10__AT_N7) (kAT_N10__AT_N7) (not(kAT_N9__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N6) (and (kVISITED_N10__AT_N6) (kAT_N10__AT_N6) (not(kAT_N9__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N5) (and (kVISITED_N10__AT_N5) (kAT_N10__AT_N5) (not(kAT_N9__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N4) (and (kVISITED_N10__AT_N4) (kAT_N10__AT_N4) (not(kAT_N9__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N3) (and (kVISITED_N10__AT_N3) (kAT_N10__AT_N3) (not(kAT_N9__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N20) (and (kVISITED_N10__AT_N20) (kAT_N10__AT_N20) (not(kAT_N9__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N2) (and (kVISITED_N10__AT_N2) (kAT_N10__AT_N2) (not(kAT_N9__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N19) (and (kVISITED_N10__AT_N19) (kAT_N10__AT_N19) (not(kAT_N9__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N18) (and (kVISITED_N10__AT_N18) (kAT_N10__AT_N18) (not(kAT_N9__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N17) (and (kVISITED_N10__AT_N17) (kAT_N10__AT_N17) (not(kAT_N9__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N16) (and (kVISITED_N10__AT_N16) (kAT_N10__AT_N16) (not(kAT_N9__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N15) (and (kVISITED_N10__AT_N15) (kAT_N10__AT_N15) (not(kAT_N9__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N14) (and (kVISITED_N10__AT_N14) (kAT_N10__AT_N14) (not(kAT_N9__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N13) (and (kVISITED_N10__AT_N13) (kAT_N10__AT_N13) (not(kAT_N9__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N12) (and (kVISITED_N10__AT_N12) (kAT_N10__AT_N12) (not(kAT_N9__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N11) (and (kVISITED_N10__AT_N11) (kAT_N10__AT_N11) (not(kAT_N9__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N1) (and (kVISITED_N10__AT_N1) (kAT_N10__AT_N1) (not(kAT_N9__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N20_N19
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N20)
(when (kAT_N20__AT_N10) (and (kVISITED_N19__AT_N10) (kAT_N19__AT_N10) (not(kAT_N20__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N20) (and (kVISITED_N19) (kAT_N19) (k-AT_N20))) ;; Support. 
(when (not(k-AT_N20)) (and (not(k-AT_N19)) (not(kAT_N20)))) ;; Cancellation. 
(when (kAT_N20__AT_N9) (and (kVISITED_N19__AT_N9) (kAT_N19__AT_N9) (not(kAT_N20__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N20__AT_N8) (and (kVISITED_N19__AT_N8) (kAT_N19__AT_N8) (not(kAT_N20__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N20__AT_N7) (and (kVISITED_N19__AT_N7) (kAT_N19__AT_N7) (not(kAT_N20__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N20__AT_N6) (and (kVISITED_N19__AT_N6) (kAT_N19__AT_N6) (not(kAT_N20__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N20__AT_N5) (and (kVISITED_N19__AT_N5) (kAT_N19__AT_N5) (not(kAT_N20__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N20__AT_N4) (and (kVISITED_N19__AT_N4) (kAT_N19__AT_N4) (not(kAT_N20__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N20__AT_N3) (and (kVISITED_N19__AT_N3) (kAT_N19__AT_N3) (not(kAT_N20__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N20__AT_N20) (and (kVISITED_N19__AT_N20) (kAT_N19__AT_N20) (not(kAT_N20__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N20__AT_N2) (and (kVISITED_N19__AT_N2) (kAT_N19__AT_N2) (not(kAT_N20__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N20__AT_N19) (and (kVISITED_N19__AT_N19) (kAT_N19__AT_N19) (not(kAT_N20__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N20__AT_N18) (and (kVISITED_N19__AT_N18) (kAT_N19__AT_N18) (not(kAT_N20__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N20__AT_N17) (and (kVISITED_N19__AT_N17) (kAT_N19__AT_N17) (not(kAT_N20__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N20__AT_N16) (and (kVISITED_N19__AT_N16) (kAT_N19__AT_N16) (not(kAT_N20__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N20__AT_N15) (and (kVISITED_N19__AT_N15) (kAT_N19__AT_N15) (not(kAT_N20__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N20__AT_N14) (and (kVISITED_N19__AT_N14) (kAT_N19__AT_N14) (not(kAT_N20__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N20__AT_N13) (and (kVISITED_N19__AT_N13) (kAT_N19__AT_N13) (not(kAT_N20__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N20__AT_N12) (and (kVISITED_N19__AT_N12) (kAT_N19__AT_N12) (not(kAT_N20__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N20__AT_N11) (and (kVISITED_N19__AT_N11) (kAT_N19__AT_N11) (not(kAT_N20__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N20__AT_N1) (and (kVISITED_N19__AT_N1) (kAT_N19__AT_N1) (not(kAT_N20__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N7_N6
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N7)
(when (kAT_N7__AT_N10) (and (kVISITED_N6__AT_N10) (kAT_N6__AT_N10) (not(kAT_N7__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N7) (and (kVISITED_N6) (kAT_N6) (k-AT_N7))) ;; Support. 
(when (not(k-AT_N7)) (and (not(k-AT_N6)) (not(kAT_N7)))) ;; Cancellation. 
(when (kAT_N7__AT_N9) (and (kVISITED_N6__AT_N9) (kAT_N6__AT_N9) (not(kAT_N7__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N8) (and (kVISITED_N6__AT_N8) (kAT_N6__AT_N8) (not(kAT_N7__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N7) (and (kVISITED_N6__AT_N7) (kAT_N6__AT_N7) (not(kAT_N7__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N6) (and (kVISITED_N6__AT_N6) (kAT_N6__AT_N6) (not(kAT_N7__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N5) (and (kVISITED_N6__AT_N5) (kAT_N6__AT_N5) (not(kAT_N7__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N4) (and (kVISITED_N6__AT_N4) (kAT_N6__AT_N4) (not(kAT_N7__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N3) (and (kVISITED_N6__AT_N3) (kAT_N6__AT_N3) (not(kAT_N7__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N20) (and (kVISITED_N6__AT_N20) (kAT_N6__AT_N20) (not(kAT_N7__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N2) (and (kVISITED_N6__AT_N2) (kAT_N6__AT_N2) (not(kAT_N7__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N19) (and (kVISITED_N6__AT_N19) (kAT_N6__AT_N19) (not(kAT_N7__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N18) (and (kVISITED_N6__AT_N18) (kAT_N6__AT_N18) (not(kAT_N7__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N17) (and (kVISITED_N6__AT_N17) (kAT_N6__AT_N17) (not(kAT_N7__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N16) (and (kVISITED_N6__AT_N16) (kAT_N6__AT_N16) (not(kAT_N7__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N15) (and (kVISITED_N6__AT_N15) (kAT_N6__AT_N15) (not(kAT_N7__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N14) (and (kVISITED_N6__AT_N14) (kAT_N6__AT_N14) (not(kAT_N7__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N13) (and (kVISITED_N6__AT_N13) (kAT_N6__AT_N13) (not(kAT_N7__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N12) (and (kVISITED_N6__AT_N12) (kAT_N6__AT_N12) (not(kAT_N7__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N11) (and (kVISITED_N6__AT_N11) (kAT_N6__AT_N11) (not(kAT_N7__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N1) (and (kVISITED_N6__AT_N1) (kAT_N6__AT_N1) (not(kAT_N7__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N2_N3
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N2)
(when (kAT_N2__AT_N10) (and (kVISITED_N3__AT_N10) (kAT_N3__AT_N10) (not(kAT_N2__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N2) (and (kVISITED_N3) (kAT_N3) (k-AT_N2))) ;; Support. 
(when (not(k-AT_N2)) (and (not(k-AT_N3)) (not(kAT_N2)))) ;; Cancellation. 
(when (kAT_N2__AT_N9) (and (kVISITED_N3__AT_N9) (kAT_N3__AT_N9) (not(kAT_N2__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N8) (and (kVISITED_N3__AT_N8) (kAT_N3__AT_N8) (not(kAT_N2__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N7) (and (kVISITED_N3__AT_N7) (kAT_N3__AT_N7) (not(kAT_N2__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N6) (and (kVISITED_N3__AT_N6) (kAT_N3__AT_N6) (not(kAT_N2__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N5) (and (kVISITED_N3__AT_N5) (kAT_N3__AT_N5) (not(kAT_N2__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N4) (and (kVISITED_N3__AT_N4) (kAT_N3__AT_N4) (not(kAT_N2__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N3) (and (kVISITED_N3__AT_N3) (kAT_N3__AT_N3) (not(kAT_N2__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N20) (and (kVISITED_N3__AT_N20) (kAT_N3__AT_N20) (not(kAT_N2__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N2) (and (kVISITED_N3__AT_N2) (kAT_N3__AT_N2) (not(kAT_N2__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N19) (and (kVISITED_N3__AT_N19) (kAT_N3__AT_N19) (not(kAT_N2__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N18) (and (kVISITED_N3__AT_N18) (kAT_N3__AT_N18) (not(kAT_N2__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N17) (and (kVISITED_N3__AT_N17) (kAT_N3__AT_N17) (not(kAT_N2__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N16) (and (kVISITED_N3__AT_N16) (kAT_N3__AT_N16) (not(kAT_N2__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N15) (and (kVISITED_N3__AT_N15) (kAT_N3__AT_N15) (not(kAT_N2__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N14) (and (kVISITED_N3__AT_N14) (kAT_N3__AT_N14) (not(kAT_N2__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N13) (and (kVISITED_N3__AT_N13) (kAT_N3__AT_N13) (not(kAT_N2__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N12) (and (kVISITED_N3__AT_N12) (kAT_N3__AT_N12) (not(kAT_N2__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N11) (and (kVISITED_N3__AT_N11) (kAT_N3__AT_N11) (not(kAT_N2__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N2__AT_N1) (and (kVISITED_N3__AT_N1) (kAT_N3__AT_N1) (not(kAT_N2__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N15_N16
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N15)
(when (kAT_N15__AT_N10) (and (kVISITED_N16__AT_N10) (kAT_N16__AT_N10) (not(kAT_N15__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N15) (and (kVISITED_N16) (kAT_N16) (k-AT_N15))) ;; Support. 
(when (not(k-AT_N15)) (and (not(k-AT_N16)) (not(kAT_N15)))) ;; Cancellation. 
(when (kAT_N15__AT_N9) (and (kVISITED_N16__AT_N9) (kAT_N16__AT_N9) (not(kAT_N15__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N8) (and (kVISITED_N16__AT_N8) (kAT_N16__AT_N8) (not(kAT_N15__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N7) (and (kVISITED_N16__AT_N7) (kAT_N16__AT_N7) (not(kAT_N15__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N6) (and (kVISITED_N16__AT_N6) (kAT_N16__AT_N6) (not(kAT_N15__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N5) (and (kVISITED_N16__AT_N5) (kAT_N16__AT_N5) (not(kAT_N15__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N4) (and (kVISITED_N16__AT_N4) (kAT_N16__AT_N4) (not(kAT_N15__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N3) (and (kVISITED_N16__AT_N3) (kAT_N16__AT_N3) (not(kAT_N15__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N20) (and (kVISITED_N16__AT_N20) (kAT_N16__AT_N20) (not(kAT_N15__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N2) (and (kVISITED_N16__AT_N2) (kAT_N16__AT_N2) (not(kAT_N15__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N19) (and (kVISITED_N16__AT_N19) (kAT_N16__AT_N19) (not(kAT_N15__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N18) (and (kVISITED_N16__AT_N18) (kAT_N16__AT_N18) (not(kAT_N15__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N17) (and (kVISITED_N16__AT_N17) (kAT_N16__AT_N17) (not(kAT_N15__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N16) (and (kVISITED_N16__AT_N16) (kAT_N16__AT_N16) (not(kAT_N15__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N15) (and (kVISITED_N16__AT_N15) (kAT_N16__AT_N15) (not(kAT_N15__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N14) (and (kVISITED_N16__AT_N14) (kAT_N16__AT_N14) (not(kAT_N15__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N13) (and (kVISITED_N16__AT_N13) (kAT_N16__AT_N13) (not(kAT_N15__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N12) (and (kVISITED_N16__AT_N12) (kAT_N16__AT_N12) (not(kAT_N15__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N11) (and (kVISITED_N16__AT_N11) (kAT_N16__AT_N11) (not(kAT_N15__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N1) (and (kVISITED_N16__AT_N1) (kAT_N16__AT_N1) (not(kAT_N15__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N6_N7
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N6)
(when (kAT_N6__AT_N10) (and (kVISITED_N7__AT_N10) (kAT_N7__AT_N10) (not(kAT_N6__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N6) (and (kVISITED_N7) (kAT_N7) (k-AT_N6))) ;; Support. 
(when (not(k-AT_N6)) (and (not(k-AT_N7)) (not(kAT_N6)))) ;; Cancellation. 
(when (kAT_N6__AT_N9) (and (kVISITED_N7__AT_N9) (kAT_N7__AT_N9) (not(kAT_N6__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N8) (and (kVISITED_N7__AT_N8) (kAT_N7__AT_N8) (not(kAT_N6__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N7) (and (kVISITED_N7__AT_N7) (kAT_N7__AT_N7) (not(kAT_N6__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N6) (and (kVISITED_N7__AT_N6) (kAT_N7__AT_N6) (not(kAT_N6__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N5) (and (kVISITED_N7__AT_N5) (kAT_N7__AT_N5) (not(kAT_N6__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N4) (and (kVISITED_N7__AT_N4) (kAT_N7__AT_N4) (not(kAT_N6__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N3) (and (kVISITED_N7__AT_N3) (kAT_N7__AT_N3) (not(kAT_N6__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N20) (and (kVISITED_N7__AT_N20) (kAT_N7__AT_N20) (not(kAT_N6__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N2) (and (kVISITED_N7__AT_N2) (kAT_N7__AT_N2) (not(kAT_N6__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N19) (and (kVISITED_N7__AT_N19) (kAT_N7__AT_N19) (not(kAT_N6__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N18) (and (kVISITED_N7__AT_N18) (kAT_N7__AT_N18) (not(kAT_N6__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N17) (and (kVISITED_N7__AT_N17) (kAT_N7__AT_N17) (not(kAT_N6__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N16) (and (kVISITED_N7__AT_N16) (kAT_N7__AT_N16) (not(kAT_N6__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N15) (and (kVISITED_N7__AT_N15) (kAT_N7__AT_N15) (not(kAT_N6__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N14) (and (kVISITED_N7__AT_N14) (kAT_N7__AT_N14) (not(kAT_N6__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N13) (and (kVISITED_N7__AT_N13) (kAT_N7__AT_N13) (not(kAT_N6__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N12) (and (kVISITED_N7__AT_N12) (kAT_N7__AT_N12) (not(kAT_N6__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N11) (and (kVISITED_N7__AT_N11) (kAT_N7__AT_N11) (not(kAT_N6__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N1) (and (kVISITED_N7__AT_N1) (kAT_N7__AT_N1) (not(kAT_N6__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N15_N14
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N15)
(when (kAT_N15__AT_N10) (and (kVISITED_N14__AT_N10) (kAT_N14__AT_N10) (not(kAT_N15__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N15) (and (kVISITED_N14) (kAT_N14) (k-AT_N15))) ;; Support. 
(when (not(k-AT_N15)) (and (not(k-AT_N14)) (not(kAT_N15)))) ;; Cancellation. 
(when (kAT_N15__AT_N9) (and (kVISITED_N14__AT_N9) (kAT_N14__AT_N9) (not(kAT_N15__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N8) (and (kVISITED_N14__AT_N8) (kAT_N14__AT_N8) (not(kAT_N15__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N7) (and (kVISITED_N14__AT_N7) (kAT_N14__AT_N7) (not(kAT_N15__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N6) (and (kVISITED_N14__AT_N6) (kAT_N14__AT_N6) (not(kAT_N15__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N5) (and (kVISITED_N14__AT_N5) (kAT_N14__AT_N5) (not(kAT_N15__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N4) (and (kVISITED_N14__AT_N4) (kAT_N14__AT_N4) (not(kAT_N15__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N3) (and (kVISITED_N14__AT_N3) (kAT_N14__AT_N3) (not(kAT_N15__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N20) (and (kVISITED_N14__AT_N20) (kAT_N14__AT_N20) (not(kAT_N15__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N2) (and (kVISITED_N14__AT_N2) (kAT_N14__AT_N2) (not(kAT_N15__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N19) (and (kVISITED_N14__AT_N19) (kAT_N14__AT_N19) (not(kAT_N15__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N18) (and (kVISITED_N14__AT_N18) (kAT_N14__AT_N18) (not(kAT_N15__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N17) (and (kVISITED_N14__AT_N17) (kAT_N14__AT_N17) (not(kAT_N15__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N16) (and (kVISITED_N14__AT_N16) (kAT_N14__AT_N16) (not(kAT_N15__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N15) (and (kVISITED_N14__AT_N15) (kAT_N14__AT_N15) (not(kAT_N15__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N14) (and (kVISITED_N14__AT_N14) (kAT_N14__AT_N14) (not(kAT_N15__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N13) (and (kVISITED_N14__AT_N13) (kAT_N14__AT_N13) (not(kAT_N15__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N12) (and (kVISITED_N14__AT_N12) (kAT_N14__AT_N12) (not(kAT_N15__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N11) (and (kVISITED_N14__AT_N11) (kAT_N14__AT_N11) (not(kAT_N15__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N15__AT_N1) (and (kVISITED_N14__AT_N1) (kAT_N14__AT_N1) (not(kAT_N15__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N12_N13
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N12)
(when (kAT_N12__AT_N10) (and (kVISITED_N13__AT_N10) (kAT_N13__AT_N10) (not(kAT_N12__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N12) (and (kVISITED_N13) (kAT_N13) (k-AT_N12))) ;; Support. 
(when (not(k-AT_N12)) (and (not(k-AT_N13)) (not(kAT_N12)))) ;; Cancellation. 
(when (kAT_N12__AT_N9) (and (kVISITED_N13__AT_N9) (kAT_N13__AT_N9) (not(kAT_N12__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N8) (and (kVISITED_N13__AT_N8) (kAT_N13__AT_N8) (not(kAT_N12__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N7) (and (kVISITED_N13__AT_N7) (kAT_N13__AT_N7) (not(kAT_N12__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N6) (and (kVISITED_N13__AT_N6) (kAT_N13__AT_N6) (not(kAT_N12__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N5) (and (kVISITED_N13__AT_N5) (kAT_N13__AT_N5) (not(kAT_N12__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N4) (and (kVISITED_N13__AT_N4) (kAT_N13__AT_N4) (not(kAT_N12__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N3) (and (kVISITED_N13__AT_N3) (kAT_N13__AT_N3) (not(kAT_N12__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N20) (and (kVISITED_N13__AT_N20) (kAT_N13__AT_N20) (not(kAT_N12__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N2) (and (kVISITED_N13__AT_N2) (kAT_N13__AT_N2) (not(kAT_N12__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N19) (and (kVISITED_N13__AT_N19) (kAT_N13__AT_N19) (not(kAT_N12__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N18) (and (kVISITED_N13__AT_N18) (kAT_N13__AT_N18) (not(kAT_N12__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N17) (and (kVISITED_N13__AT_N17) (kAT_N13__AT_N17) (not(kAT_N12__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N16) (and (kVISITED_N13__AT_N16) (kAT_N13__AT_N16) (not(kAT_N12__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N15) (and (kVISITED_N13__AT_N15) (kAT_N13__AT_N15) (not(kAT_N12__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N14) (and (kVISITED_N13__AT_N14) (kAT_N13__AT_N14) (not(kAT_N12__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N13) (and (kVISITED_N13__AT_N13) (kAT_N13__AT_N13) (not(kAT_N12__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N12) (and (kVISITED_N13__AT_N12) (kAT_N13__AT_N12) (not(kAT_N12__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N11) (and (kVISITED_N13__AT_N11) (kAT_N13__AT_N11) (not(kAT_N12__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N1) (and (kVISITED_N13__AT_N1) (kAT_N13__AT_N1) (not(kAT_N12__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N8_N7
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N8)
(when (kAT_N8__AT_N10) (and (kVISITED_N7__AT_N10) (kAT_N7__AT_N10) (not(kAT_N8__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N8) (and (kVISITED_N7) (kAT_N7) (k-AT_N8))) ;; Support. 
(when (not(k-AT_N8)) (and (not(k-AT_N7)) (not(kAT_N8)))) ;; Cancellation. 
(when (kAT_N8__AT_N9) (and (kVISITED_N7__AT_N9) (kAT_N7__AT_N9) (not(kAT_N8__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N8) (and (kVISITED_N7__AT_N8) (kAT_N7__AT_N8) (not(kAT_N8__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N7) (and (kVISITED_N7__AT_N7) (kAT_N7__AT_N7) (not(kAT_N8__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N6) (and (kVISITED_N7__AT_N6) (kAT_N7__AT_N6) (not(kAT_N8__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N5) (and (kVISITED_N7__AT_N5) (kAT_N7__AT_N5) (not(kAT_N8__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N4) (and (kVISITED_N7__AT_N4) (kAT_N7__AT_N4) (not(kAT_N8__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N3) (and (kVISITED_N7__AT_N3) (kAT_N7__AT_N3) (not(kAT_N8__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N20) (and (kVISITED_N7__AT_N20) (kAT_N7__AT_N20) (not(kAT_N8__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N2) (and (kVISITED_N7__AT_N2) (kAT_N7__AT_N2) (not(kAT_N8__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N19) (and (kVISITED_N7__AT_N19) (kAT_N7__AT_N19) (not(kAT_N8__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N18) (and (kVISITED_N7__AT_N18) (kAT_N7__AT_N18) (not(kAT_N8__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N17) (and (kVISITED_N7__AT_N17) (kAT_N7__AT_N17) (not(kAT_N8__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N16) (and (kVISITED_N7__AT_N16) (kAT_N7__AT_N16) (not(kAT_N8__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N15) (and (kVISITED_N7__AT_N15) (kAT_N7__AT_N15) (not(kAT_N8__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N14) (and (kVISITED_N7__AT_N14) (kAT_N7__AT_N14) (not(kAT_N8__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N13) (and (kVISITED_N7__AT_N13) (kAT_N7__AT_N13) (not(kAT_N8__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N12) (and (kVISITED_N7__AT_N12) (kAT_N7__AT_N12) (not(kAT_N8__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N11) (and (kVISITED_N7__AT_N11) (kAT_N7__AT_N11) (not(kAT_N8__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N1) (and (kVISITED_N7__AT_N1) (kAT_N7__AT_N1) (not(kAT_N8__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N12_N11
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N12)
(when (kAT_N12__AT_N10) (and (kVISITED_N11__AT_N10) (kAT_N11__AT_N10) (not(kAT_N12__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N12) (and (kVISITED_N11) (kAT_N11) (k-AT_N12))) ;; Support. 
(when (not(k-AT_N12)) (and (not(k-AT_N11)) (not(kAT_N12)))) ;; Cancellation. 
(when (kAT_N12__AT_N9) (and (kVISITED_N11__AT_N9) (kAT_N11__AT_N9) (not(kAT_N12__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N8) (and (kVISITED_N11__AT_N8) (kAT_N11__AT_N8) (not(kAT_N12__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N7) (and (kVISITED_N11__AT_N7) (kAT_N11__AT_N7) (not(kAT_N12__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N6) (and (kVISITED_N11__AT_N6) (kAT_N11__AT_N6) (not(kAT_N12__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N5) (and (kVISITED_N11__AT_N5) (kAT_N11__AT_N5) (not(kAT_N12__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N4) (and (kVISITED_N11__AT_N4) (kAT_N11__AT_N4) (not(kAT_N12__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N3) (and (kVISITED_N11__AT_N3) (kAT_N11__AT_N3) (not(kAT_N12__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N20) (and (kVISITED_N11__AT_N20) (kAT_N11__AT_N20) (not(kAT_N12__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N2) (and (kVISITED_N11__AT_N2) (kAT_N11__AT_N2) (not(kAT_N12__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N19) (and (kVISITED_N11__AT_N19) (kAT_N11__AT_N19) (not(kAT_N12__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N18) (and (kVISITED_N11__AT_N18) (kAT_N11__AT_N18) (not(kAT_N12__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N17) (and (kVISITED_N11__AT_N17) (kAT_N11__AT_N17) (not(kAT_N12__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N16) (and (kVISITED_N11__AT_N16) (kAT_N11__AT_N16) (not(kAT_N12__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N15) (and (kVISITED_N11__AT_N15) (kAT_N11__AT_N15) (not(kAT_N12__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N14) (and (kVISITED_N11__AT_N14) (kAT_N11__AT_N14) (not(kAT_N12__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N13) (and (kVISITED_N11__AT_N13) (kAT_N11__AT_N13) (not(kAT_N12__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N12) (and (kVISITED_N11__AT_N12) (kAT_N11__AT_N12) (not(kAT_N12__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N11) (and (kVISITED_N11__AT_N11) (kAT_N11__AT_N11) (not(kAT_N12__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N12__AT_N1) (and (kVISITED_N11__AT_N1) (kAT_N11__AT_N1) (not(kAT_N12__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N6_N5
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N6)
(when (kAT_N6__AT_N10) (and (kVISITED_N5__AT_N10) (kAT_N5__AT_N10) (not(kAT_N6__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N6) (and (kVISITED_N5) (kAT_N5) (k-AT_N6))) ;; Support. 
(when (not(k-AT_N6)) (and (not(k-AT_N5)) (not(kAT_N6)))) ;; Cancellation. 
(when (kAT_N6__AT_N9) (and (kVISITED_N5__AT_N9) (kAT_N5__AT_N9) (not(kAT_N6__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N8) (and (kVISITED_N5__AT_N8) (kAT_N5__AT_N8) (not(kAT_N6__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N7) (and (kVISITED_N5__AT_N7) (kAT_N5__AT_N7) (not(kAT_N6__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N6) (and (kVISITED_N5__AT_N6) (kAT_N5__AT_N6) (not(kAT_N6__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N5) (and (kVISITED_N5__AT_N5) (kAT_N5__AT_N5) (not(kAT_N6__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N4) (and (kVISITED_N5__AT_N4) (kAT_N5__AT_N4) (not(kAT_N6__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N3) (and (kVISITED_N5__AT_N3) (kAT_N5__AT_N3) (not(kAT_N6__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N20) (and (kVISITED_N5__AT_N20) (kAT_N5__AT_N20) (not(kAT_N6__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N2) (and (kVISITED_N5__AT_N2) (kAT_N5__AT_N2) (not(kAT_N6__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N19) (and (kVISITED_N5__AT_N19) (kAT_N5__AT_N19) (not(kAT_N6__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N18) (and (kVISITED_N5__AT_N18) (kAT_N5__AT_N18) (not(kAT_N6__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N17) (and (kVISITED_N5__AT_N17) (kAT_N5__AT_N17) (not(kAT_N6__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N16) (and (kVISITED_N5__AT_N16) (kAT_N5__AT_N16) (not(kAT_N6__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N15) (and (kVISITED_N5__AT_N15) (kAT_N5__AT_N15) (not(kAT_N6__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N14) (and (kVISITED_N5__AT_N14) (kAT_N5__AT_N14) (not(kAT_N6__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N13) (and (kVISITED_N5__AT_N13) (kAT_N5__AT_N13) (not(kAT_N6__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N12) (and (kVISITED_N5__AT_N12) (kAT_N5__AT_N12) (not(kAT_N6__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N11) (and (kVISITED_N5__AT_N11) (kAT_N5__AT_N11) (not(kAT_N6__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N6__AT_N1) (and (kVISITED_N5__AT_N1) (kAT_N5__AT_N1) (not(kAT_N6__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N19_N20
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N19)
(when (kAT_N19__AT_N10) (and (kVISITED_N20__AT_N10) (kAT_N20__AT_N10) (not(kAT_N19__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N19) (and (kVISITED_N20) (kAT_N20) (k-AT_N19))) ;; Support. 
(when (not(k-AT_N19)) (and (not(k-AT_N20)) (not(kAT_N19)))) ;; Cancellation. 
(when (kAT_N19__AT_N9) (and (kVISITED_N20__AT_N9) (kAT_N20__AT_N9) (not(kAT_N19__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N8) (and (kVISITED_N20__AT_N8) (kAT_N20__AT_N8) (not(kAT_N19__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N7) (and (kVISITED_N20__AT_N7) (kAT_N20__AT_N7) (not(kAT_N19__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N6) (and (kVISITED_N20__AT_N6) (kAT_N20__AT_N6) (not(kAT_N19__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N5) (and (kVISITED_N20__AT_N5) (kAT_N20__AT_N5) (not(kAT_N19__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N4) (and (kVISITED_N20__AT_N4) (kAT_N20__AT_N4) (not(kAT_N19__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N3) (and (kVISITED_N20__AT_N3) (kAT_N20__AT_N3) (not(kAT_N19__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N20) (and (kVISITED_N20__AT_N20) (kAT_N20__AT_N20) (not(kAT_N19__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N2) (and (kVISITED_N20__AT_N2) (kAT_N20__AT_N2) (not(kAT_N19__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N19) (and (kVISITED_N20__AT_N19) (kAT_N20__AT_N19) (not(kAT_N19__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N18) (and (kVISITED_N20__AT_N18) (kAT_N20__AT_N18) (not(kAT_N19__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N17) (and (kVISITED_N20__AT_N17) (kAT_N20__AT_N17) (not(kAT_N19__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N16) (and (kVISITED_N20__AT_N16) (kAT_N20__AT_N16) (not(kAT_N19__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N15) (and (kVISITED_N20__AT_N15) (kAT_N20__AT_N15) (not(kAT_N19__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N14) (and (kVISITED_N20__AT_N14) (kAT_N20__AT_N14) (not(kAT_N19__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N13) (and (kVISITED_N20__AT_N13) (kAT_N20__AT_N13) (not(kAT_N19__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N12) (and (kVISITED_N20__AT_N12) (kAT_N20__AT_N12) (not(kAT_N19__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N11) (and (kVISITED_N20__AT_N11) (kAT_N20__AT_N11) (not(kAT_N19__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N1) (and (kVISITED_N20__AT_N1) (kAT_N20__AT_N1) (not(kAT_N19__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N16_N17
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N16)
(when (kAT_N16__AT_N10) (and (kVISITED_N17__AT_N10) (kAT_N17__AT_N10) (not(kAT_N16__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N16) (and (kVISITED_N17) (kAT_N17) (k-AT_N16))) ;; Support. 
(when (not(k-AT_N16)) (and (not(k-AT_N17)) (not(kAT_N16)))) ;; Cancellation. 
(when (kAT_N16__AT_N9) (and (kVISITED_N17__AT_N9) (kAT_N17__AT_N9) (not(kAT_N16__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N8) (and (kVISITED_N17__AT_N8) (kAT_N17__AT_N8) (not(kAT_N16__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N7) (and (kVISITED_N17__AT_N7) (kAT_N17__AT_N7) (not(kAT_N16__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N6) (and (kVISITED_N17__AT_N6) (kAT_N17__AT_N6) (not(kAT_N16__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N5) (and (kVISITED_N17__AT_N5) (kAT_N17__AT_N5) (not(kAT_N16__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N4) (and (kVISITED_N17__AT_N4) (kAT_N17__AT_N4) (not(kAT_N16__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N3) (and (kVISITED_N17__AT_N3) (kAT_N17__AT_N3) (not(kAT_N16__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N20) (and (kVISITED_N17__AT_N20) (kAT_N17__AT_N20) (not(kAT_N16__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N2) (and (kVISITED_N17__AT_N2) (kAT_N17__AT_N2) (not(kAT_N16__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N19) (and (kVISITED_N17__AT_N19) (kAT_N17__AT_N19) (not(kAT_N16__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N18) (and (kVISITED_N17__AT_N18) (kAT_N17__AT_N18) (not(kAT_N16__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N17) (and (kVISITED_N17__AT_N17) (kAT_N17__AT_N17) (not(kAT_N16__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N16) (and (kVISITED_N17__AT_N16) (kAT_N17__AT_N16) (not(kAT_N16__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N15) (and (kVISITED_N17__AT_N15) (kAT_N17__AT_N15) (not(kAT_N16__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N14) (and (kVISITED_N17__AT_N14) (kAT_N17__AT_N14) (not(kAT_N16__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N13) (and (kVISITED_N17__AT_N13) (kAT_N17__AT_N13) (not(kAT_N16__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N12) (and (kVISITED_N17__AT_N12) (kAT_N17__AT_N12) (not(kAT_N16__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N11) (and (kVISITED_N17__AT_N11) (kAT_N17__AT_N11) (not(kAT_N16__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N1) (and (kVISITED_N17__AT_N1) (kAT_N17__AT_N1) (not(kAT_N16__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N10_N11
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N10)
(when (kAT_N10__AT_N10) (and (kVISITED_N11__AT_N10) (kAT_N11__AT_N10) (not(kAT_N10__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N10) (and (kVISITED_N11) (kAT_N11) (k-AT_N10))) ;; Support. 
(when (not(k-AT_N10)) (and (not(k-AT_N11)) (not(kAT_N10)))) ;; Cancellation. 
(when (kAT_N10__AT_N9) (and (kVISITED_N11__AT_N9) (kAT_N11__AT_N9) (not(kAT_N10__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N8) (and (kVISITED_N11__AT_N8) (kAT_N11__AT_N8) (not(kAT_N10__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N7) (and (kVISITED_N11__AT_N7) (kAT_N11__AT_N7) (not(kAT_N10__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N6) (and (kVISITED_N11__AT_N6) (kAT_N11__AT_N6) (not(kAT_N10__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N5) (and (kVISITED_N11__AT_N5) (kAT_N11__AT_N5) (not(kAT_N10__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N4) (and (kVISITED_N11__AT_N4) (kAT_N11__AT_N4) (not(kAT_N10__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N3) (and (kVISITED_N11__AT_N3) (kAT_N11__AT_N3) (not(kAT_N10__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N20) (and (kVISITED_N11__AT_N20) (kAT_N11__AT_N20) (not(kAT_N10__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N2) (and (kVISITED_N11__AT_N2) (kAT_N11__AT_N2) (not(kAT_N10__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N19) (and (kVISITED_N11__AT_N19) (kAT_N11__AT_N19) (not(kAT_N10__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N18) (and (kVISITED_N11__AT_N18) (kAT_N11__AT_N18) (not(kAT_N10__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N17) (and (kVISITED_N11__AT_N17) (kAT_N11__AT_N17) (not(kAT_N10__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N16) (and (kVISITED_N11__AT_N16) (kAT_N11__AT_N16) (not(kAT_N10__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N15) (and (kVISITED_N11__AT_N15) (kAT_N11__AT_N15) (not(kAT_N10__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N14) (and (kVISITED_N11__AT_N14) (kAT_N11__AT_N14) (not(kAT_N10__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N13) (and (kVISITED_N11__AT_N13) (kAT_N11__AT_N13) (not(kAT_N10__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N12) (and (kVISITED_N11__AT_N12) (kAT_N11__AT_N12) (not(kAT_N10__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N11) (and (kVISITED_N11__AT_N11) (kAT_N11__AT_N11) (not(kAT_N10__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N1) (and (kVISITED_N11__AT_N1) (kAT_N11__AT_N1) (not(kAT_N10__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N3_N4
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N3)
(when (kAT_N3__AT_N10) (and (kVISITED_N4__AT_N10) (kAT_N4__AT_N10) (not(kAT_N3__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N3) (and (kVISITED_N4) (kAT_N4) (k-AT_N3))) ;; Support. 
(when (not(k-AT_N3)) (and (not(k-AT_N4)) (not(kAT_N3)))) ;; Cancellation. 
(when (kAT_N3__AT_N9) (and (kVISITED_N4__AT_N9) (kAT_N4__AT_N9) (not(kAT_N3__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N8) (and (kVISITED_N4__AT_N8) (kAT_N4__AT_N8) (not(kAT_N3__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N7) (and (kVISITED_N4__AT_N7) (kAT_N4__AT_N7) (not(kAT_N3__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N6) (and (kVISITED_N4__AT_N6) (kAT_N4__AT_N6) (not(kAT_N3__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N5) (and (kVISITED_N4__AT_N5) (kAT_N4__AT_N5) (not(kAT_N3__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N4) (and (kVISITED_N4__AT_N4) (kAT_N4__AT_N4) (not(kAT_N3__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N3) (and (kVISITED_N4__AT_N3) (kAT_N4__AT_N3) (not(kAT_N3__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N20) (and (kVISITED_N4__AT_N20) (kAT_N4__AT_N20) (not(kAT_N3__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N2) (and (kVISITED_N4__AT_N2) (kAT_N4__AT_N2) (not(kAT_N3__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N19) (and (kVISITED_N4__AT_N19) (kAT_N4__AT_N19) (not(kAT_N3__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N18) (and (kVISITED_N4__AT_N18) (kAT_N4__AT_N18) (not(kAT_N3__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N17) (and (kVISITED_N4__AT_N17) (kAT_N4__AT_N17) (not(kAT_N3__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N16) (and (kVISITED_N4__AT_N16) (kAT_N4__AT_N16) (not(kAT_N3__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N15) (and (kVISITED_N4__AT_N15) (kAT_N4__AT_N15) (not(kAT_N3__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N14) (and (kVISITED_N4__AT_N14) (kAT_N4__AT_N14) (not(kAT_N3__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N13) (and (kVISITED_N4__AT_N13) (kAT_N4__AT_N13) (not(kAT_N3__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N12) (and (kVISITED_N4__AT_N12) (kAT_N4__AT_N12) (not(kAT_N3__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N11) (and (kVISITED_N4__AT_N11) (kAT_N4__AT_N11) (not(kAT_N3__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N1) (and (kVISITED_N4__AT_N1) (kAT_N4__AT_N1) (not(kAT_N3__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N16_N15
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N16)
(when (kAT_N16__AT_N10) (and (kVISITED_N15__AT_N10) (kAT_N15__AT_N10) (not(kAT_N16__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N16) (and (kVISITED_N15) (kAT_N15) (k-AT_N16))) ;; Support. 
(when (not(k-AT_N16)) (and (not(k-AT_N15)) (not(kAT_N16)))) ;; Cancellation. 
(when (kAT_N16__AT_N9) (and (kVISITED_N15__AT_N9) (kAT_N15__AT_N9) (not(kAT_N16__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N8) (and (kVISITED_N15__AT_N8) (kAT_N15__AT_N8) (not(kAT_N16__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N7) (and (kVISITED_N15__AT_N7) (kAT_N15__AT_N7) (not(kAT_N16__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N6) (and (kVISITED_N15__AT_N6) (kAT_N15__AT_N6) (not(kAT_N16__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N5) (and (kVISITED_N15__AT_N5) (kAT_N15__AT_N5) (not(kAT_N16__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N4) (and (kVISITED_N15__AT_N4) (kAT_N15__AT_N4) (not(kAT_N16__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N3) (and (kVISITED_N15__AT_N3) (kAT_N15__AT_N3) (not(kAT_N16__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N20) (and (kVISITED_N15__AT_N20) (kAT_N15__AT_N20) (not(kAT_N16__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N2) (and (kVISITED_N15__AT_N2) (kAT_N15__AT_N2) (not(kAT_N16__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N19) (and (kVISITED_N15__AT_N19) (kAT_N15__AT_N19) (not(kAT_N16__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N18) (and (kVISITED_N15__AT_N18) (kAT_N15__AT_N18) (not(kAT_N16__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N17) (and (kVISITED_N15__AT_N17) (kAT_N15__AT_N17) (not(kAT_N16__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N16) (and (kVISITED_N15__AT_N16) (kAT_N15__AT_N16) (not(kAT_N16__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N15) (and (kVISITED_N15__AT_N15) (kAT_N15__AT_N15) (not(kAT_N16__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N14) (and (kVISITED_N15__AT_N14) (kAT_N15__AT_N14) (not(kAT_N16__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N13) (and (kVISITED_N15__AT_N13) (kAT_N15__AT_N13) (not(kAT_N16__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N12) (and (kVISITED_N15__AT_N12) (kAT_N15__AT_N12) (not(kAT_N16__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N11) (and (kVISITED_N15__AT_N11) (kAT_N15__AT_N11) (not(kAT_N16__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N16__AT_N1) (and (kVISITED_N15__AT_N1) (kAT_N15__AT_N1) (not(kAT_N16__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N9_N8
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N9)
(when (kAT_N9__AT_N10) (and (kVISITED_N8__AT_N10) (kAT_N8__AT_N10) (not(kAT_N9__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N9) (and (kVISITED_N8) (kAT_N8) (k-AT_N9))) ;; Support. 
(when (not(k-AT_N9)) (and (not(k-AT_N8)) (not(kAT_N9)))) ;; Cancellation. 
(when (kAT_N9__AT_N9) (and (kVISITED_N8__AT_N9) (kAT_N8__AT_N9) (not(kAT_N9__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N8) (and (kVISITED_N8__AT_N8) (kAT_N8__AT_N8) (not(kAT_N9__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N7) (and (kVISITED_N8__AT_N7) (kAT_N8__AT_N7) (not(kAT_N9__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N6) (and (kVISITED_N8__AT_N6) (kAT_N8__AT_N6) (not(kAT_N9__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N5) (and (kVISITED_N8__AT_N5) (kAT_N8__AT_N5) (not(kAT_N9__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N4) (and (kVISITED_N8__AT_N4) (kAT_N8__AT_N4) (not(kAT_N9__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N3) (and (kVISITED_N8__AT_N3) (kAT_N8__AT_N3) (not(kAT_N9__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N20) (and (kVISITED_N8__AT_N20) (kAT_N8__AT_N20) (not(kAT_N9__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N2) (and (kVISITED_N8__AT_N2) (kAT_N8__AT_N2) (not(kAT_N9__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N19) (and (kVISITED_N8__AT_N19) (kAT_N8__AT_N19) (not(kAT_N9__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N18) (and (kVISITED_N8__AT_N18) (kAT_N8__AT_N18) (not(kAT_N9__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N17) (and (kVISITED_N8__AT_N17) (kAT_N8__AT_N17) (not(kAT_N9__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N16) (and (kVISITED_N8__AT_N16) (kAT_N8__AT_N16) (not(kAT_N9__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N15) (and (kVISITED_N8__AT_N15) (kAT_N8__AT_N15) (not(kAT_N9__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N14) (and (kVISITED_N8__AT_N14) (kAT_N8__AT_N14) (not(kAT_N9__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N13) (and (kVISITED_N8__AT_N13) (kAT_N8__AT_N13) (not(kAT_N9__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N12) (and (kVISITED_N8__AT_N12) (kAT_N8__AT_N12) (not(kAT_N9__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N11) (and (kVISITED_N8__AT_N11) (kAT_N8__AT_N11) (not(kAT_N9__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N9__AT_N1) (and (kVISITED_N8__AT_N1) (kAT_N8__AT_N1) (not(kAT_N9__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N17_N18
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N17)
(when (kAT_N17__AT_N10) (and (kVISITED_N18__AT_N10) (kAT_N18__AT_N10) (not(kAT_N17__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N17) (and (kVISITED_N18) (kAT_N18) (k-AT_N17))) ;; Support. 
(when (not(k-AT_N17)) (and (not(k-AT_N18)) (not(kAT_N17)))) ;; Cancellation. 
(when (kAT_N17__AT_N9) (and (kVISITED_N18__AT_N9) (kAT_N18__AT_N9) (not(kAT_N17__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N8) (and (kVISITED_N18__AT_N8) (kAT_N18__AT_N8) (not(kAT_N17__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N7) (and (kVISITED_N18__AT_N7) (kAT_N18__AT_N7) (not(kAT_N17__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N6) (and (kVISITED_N18__AT_N6) (kAT_N18__AT_N6) (not(kAT_N17__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N5) (and (kVISITED_N18__AT_N5) (kAT_N18__AT_N5) (not(kAT_N17__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N4) (and (kVISITED_N18__AT_N4) (kAT_N18__AT_N4) (not(kAT_N17__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N3) (and (kVISITED_N18__AT_N3) (kAT_N18__AT_N3) (not(kAT_N17__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N20) (and (kVISITED_N18__AT_N20) (kAT_N18__AT_N20) (not(kAT_N17__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N2) (and (kVISITED_N18__AT_N2) (kAT_N18__AT_N2) (not(kAT_N17__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N19) (and (kVISITED_N18__AT_N19) (kAT_N18__AT_N19) (not(kAT_N17__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N18) (and (kVISITED_N18__AT_N18) (kAT_N18__AT_N18) (not(kAT_N17__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N17) (and (kVISITED_N18__AT_N17) (kAT_N18__AT_N17) (not(kAT_N17__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N16) (and (kVISITED_N18__AT_N16) (kAT_N18__AT_N16) (not(kAT_N17__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N15) (and (kVISITED_N18__AT_N15) (kAT_N18__AT_N15) (not(kAT_N17__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N14) (and (kVISITED_N18__AT_N14) (kAT_N18__AT_N14) (not(kAT_N17__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N13) (and (kVISITED_N18__AT_N13) (kAT_N18__AT_N13) (not(kAT_N17__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N12) (and (kVISITED_N18__AT_N12) (kAT_N18__AT_N12) (not(kAT_N17__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N11) (and (kVISITED_N18__AT_N11) (kAT_N18__AT_N11) (not(kAT_N17__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N1) (and (kVISITED_N18__AT_N1) (kAT_N18__AT_N1) (not(kAT_N17__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N18_N19
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N18)
(when (kAT_N18__AT_N10) (and (kVISITED_N19__AT_N10) (kAT_N19__AT_N10) (not(kAT_N18__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N18) (and (kVISITED_N19) (kAT_N19) (k-AT_N18))) ;; Support. 
(when (not(k-AT_N18)) (and (not(k-AT_N19)) (not(kAT_N18)))) ;; Cancellation. 
(when (kAT_N18__AT_N9) (and (kVISITED_N19__AT_N9) (kAT_N19__AT_N9) (not(kAT_N18__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N8) (and (kVISITED_N19__AT_N8) (kAT_N19__AT_N8) (not(kAT_N18__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N7) (and (kVISITED_N19__AT_N7) (kAT_N19__AT_N7) (not(kAT_N18__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N6) (and (kVISITED_N19__AT_N6) (kAT_N19__AT_N6) (not(kAT_N18__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N5) (and (kVISITED_N19__AT_N5) (kAT_N19__AT_N5) (not(kAT_N18__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N4) (and (kVISITED_N19__AT_N4) (kAT_N19__AT_N4) (not(kAT_N18__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N3) (and (kVISITED_N19__AT_N3) (kAT_N19__AT_N3) (not(kAT_N18__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N20) (and (kVISITED_N19__AT_N20) (kAT_N19__AT_N20) (not(kAT_N18__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N2) (and (kVISITED_N19__AT_N2) (kAT_N19__AT_N2) (not(kAT_N18__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N19) (and (kVISITED_N19__AT_N19) (kAT_N19__AT_N19) (not(kAT_N18__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N18) (and (kVISITED_N19__AT_N18) (kAT_N19__AT_N18) (not(kAT_N18__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N17) (and (kVISITED_N19__AT_N17) (kAT_N19__AT_N17) (not(kAT_N18__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N16) (and (kVISITED_N19__AT_N16) (kAT_N19__AT_N16) (not(kAT_N18__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N15) (and (kVISITED_N19__AT_N15) (kAT_N19__AT_N15) (not(kAT_N18__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N14) (and (kVISITED_N19__AT_N14) (kAT_N19__AT_N14) (not(kAT_N18__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N13) (and (kVISITED_N19__AT_N13) (kAT_N19__AT_N13) (not(kAT_N18__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N12) (and (kVISITED_N19__AT_N12) (kAT_N19__AT_N12) (not(kAT_N18__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N11) (and (kVISITED_N19__AT_N11) (kAT_N19__AT_N11) (not(kAT_N18__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N1) (and (kVISITED_N19__AT_N1) (kAT_N19__AT_N1) (not(kAT_N18__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N17_N16
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N17)
(when (kAT_N17__AT_N10) (and (kVISITED_N16__AT_N10) (kAT_N16__AT_N10) (not(kAT_N17__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N17) (and (kVISITED_N16) (kAT_N16) (k-AT_N17))) ;; Support. 
(when (not(k-AT_N17)) (and (not(k-AT_N16)) (not(kAT_N17)))) ;; Cancellation. 
(when (kAT_N17__AT_N9) (and (kVISITED_N16__AT_N9) (kAT_N16__AT_N9) (not(kAT_N17__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N8) (and (kVISITED_N16__AT_N8) (kAT_N16__AT_N8) (not(kAT_N17__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N7) (and (kVISITED_N16__AT_N7) (kAT_N16__AT_N7) (not(kAT_N17__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N6) (and (kVISITED_N16__AT_N6) (kAT_N16__AT_N6) (not(kAT_N17__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N5) (and (kVISITED_N16__AT_N5) (kAT_N16__AT_N5) (not(kAT_N17__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N4) (and (kVISITED_N16__AT_N4) (kAT_N16__AT_N4) (not(kAT_N17__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N3) (and (kVISITED_N16__AT_N3) (kAT_N16__AT_N3) (not(kAT_N17__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N20) (and (kVISITED_N16__AT_N20) (kAT_N16__AT_N20) (not(kAT_N17__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N2) (and (kVISITED_N16__AT_N2) (kAT_N16__AT_N2) (not(kAT_N17__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N19) (and (kVISITED_N16__AT_N19) (kAT_N16__AT_N19) (not(kAT_N17__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N18) (and (kVISITED_N16__AT_N18) (kAT_N16__AT_N18) (not(kAT_N17__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N17) (and (kVISITED_N16__AT_N17) (kAT_N16__AT_N17) (not(kAT_N17__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N16) (and (kVISITED_N16__AT_N16) (kAT_N16__AT_N16) (not(kAT_N17__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N15) (and (kVISITED_N16__AT_N15) (kAT_N16__AT_N15) (not(kAT_N17__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N14) (and (kVISITED_N16__AT_N14) (kAT_N16__AT_N14) (not(kAT_N17__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N13) (and (kVISITED_N16__AT_N13) (kAT_N16__AT_N13) (not(kAT_N17__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N12) (and (kVISITED_N16__AT_N12) (kAT_N16__AT_N12) (not(kAT_N17__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N11) (and (kVISITED_N16__AT_N11) (kAT_N16__AT_N11) (not(kAT_N17__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N17__AT_N1) (and (kVISITED_N16__AT_N1) (kAT_N16__AT_N1) (not(kAT_N17__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N13_N14
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N13)
(when (kAT_N13__AT_N10) (and (kVISITED_N14__AT_N10) (kAT_N14__AT_N10) (not(kAT_N13__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N13) (and (kVISITED_N14) (kAT_N14) (k-AT_N13))) ;; Support. 
(when (not(k-AT_N13)) (and (not(k-AT_N14)) (not(kAT_N13)))) ;; Cancellation. 
(when (kAT_N13__AT_N9) (and (kVISITED_N14__AT_N9) (kAT_N14__AT_N9) (not(kAT_N13__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N8) (and (kVISITED_N14__AT_N8) (kAT_N14__AT_N8) (not(kAT_N13__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N7) (and (kVISITED_N14__AT_N7) (kAT_N14__AT_N7) (not(kAT_N13__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N6) (and (kVISITED_N14__AT_N6) (kAT_N14__AT_N6) (not(kAT_N13__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N5) (and (kVISITED_N14__AT_N5) (kAT_N14__AT_N5) (not(kAT_N13__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N4) (and (kVISITED_N14__AT_N4) (kAT_N14__AT_N4) (not(kAT_N13__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N3) (and (kVISITED_N14__AT_N3) (kAT_N14__AT_N3) (not(kAT_N13__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N20) (and (kVISITED_N14__AT_N20) (kAT_N14__AT_N20) (not(kAT_N13__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N2) (and (kVISITED_N14__AT_N2) (kAT_N14__AT_N2) (not(kAT_N13__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N19) (and (kVISITED_N14__AT_N19) (kAT_N14__AT_N19) (not(kAT_N13__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N18) (and (kVISITED_N14__AT_N18) (kAT_N14__AT_N18) (not(kAT_N13__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N17) (and (kVISITED_N14__AT_N17) (kAT_N14__AT_N17) (not(kAT_N13__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N16) (and (kVISITED_N14__AT_N16) (kAT_N14__AT_N16) (not(kAT_N13__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N15) (and (kVISITED_N14__AT_N15) (kAT_N14__AT_N15) (not(kAT_N13__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N14) (and (kVISITED_N14__AT_N14) (kAT_N14__AT_N14) (not(kAT_N13__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N13) (and (kVISITED_N14__AT_N13) (kAT_N14__AT_N13) (not(kAT_N13__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N12) (and (kVISITED_N14__AT_N12) (kAT_N14__AT_N12) (not(kAT_N13__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N11) (and (kVISITED_N14__AT_N11) (kAT_N14__AT_N11) (not(kAT_N13__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N1) (and (kVISITED_N14__AT_N1) (kAT_N14__AT_N1) (not(kAT_N13__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N19_N18
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N19)
(when (kAT_N19__AT_N10) (and (kVISITED_N18__AT_N10) (kAT_N18__AT_N10) (not(kAT_N19__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N19) (and (kVISITED_N18) (kAT_N18) (k-AT_N19))) ;; Support. 
(when (not(k-AT_N19)) (and (not(k-AT_N18)) (not(kAT_N19)))) ;; Cancellation. 
(when (kAT_N19__AT_N9) (and (kVISITED_N18__AT_N9) (kAT_N18__AT_N9) (not(kAT_N19__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N8) (and (kVISITED_N18__AT_N8) (kAT_N18__AT_N8) (not(kAT_N19__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N7) (and (kVISITED_N18__AT_N7) (kAT_N18__AT_N7) (not(kAT_N19__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N6) (and (kVISITED_N18__AT_N6) (kAT_N18__AT_N6) (not(kAT_N19__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N5) (and (kVISITED_N18__AT_N5) (kAT_N18__AT_N5) (not(kAT_N19__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N4) (and (kVISITED_N18__AT_N4) (kAT_N18__AT_N4) (not(kAT_N19__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N3) (and (kVISITED_N18__AT_N3) (kAT_N18__AT_N3) (not(kAT_N19__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N20) (and (kVISITED_N18__AT_N20) (kAT_N18__AT_N20) (not(kAT_N19__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N2) (and (kVISITED_N18__AT_N2) (kAT_N18__AT_N2) (not(kAT_N19__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N19) (and (kVISITED_N18__AT_N19) (kAT_N18__AT_N19) (not(kAT_N19__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N18) (and (kVISITED_N18__AT_N18) (kAT_N18__AT_N18) (not(kAT_N19__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N17) (and (kVISITED_N18__AT_N17) (kAT_N18__AT_N17) (not(kAT_N19__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N16) (and (kVISITED_N18__AT_N16) (kAT_N18__AT_N16) (not(kAT_N19__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N15) (and (kVISITED_N18__AT_N15) (kAT_N18__AT_N15) (not(kAT_N19__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N14) (and (kVISITED_N18__AT_N14) (kAT_N18__AT_N14) (not(kAT_N19__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N13) (and (kVISITED_N18__AT_N13) (kAT_N18__AT_N13) (not(kAT_N19__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N12) (and (kVISITED_N18__AT_N12) (kAT_N18__AT_N12) (not(kAT_N19__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N11) (and (kVISITED_N18__AT_N11) (kAT_N18__AT_N11) (not(kAT_N19__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N19__AT_N1) (and (kVISITED_N18__AT_N1) (kAT_N18__AT_N1) (not(kAT_N19__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N13_N12
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N13)
(when (kAT_N13__AT_N10) (and (kVISITED_N12__AT_N10) (kAT_N12__AT_N10) (not(kAT_N13__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N13) (and (kVISITED_N12) (kAT_N12) (k-AT_N13))) ;; Support. 
(when (not(k-AT_N13)) (and (not(k-AT_N12)) (not(kAT_N13)))) ;; Cancellation. 
(when (kAT_N13__AT_N9) (and (kVISITED_N12__AT_N9) (kAT_N12__AT_N9) (not(kAT_N13__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N8) (and (kVISITED_N12__AT_N8) (kAT_N12__AT_N8) (not(kAT_N13__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N7) (and (kVISITED_N12__AT_N7) (kAT_N12__AT_N7) (not(kAT_N13__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N6) (and (kVISITED_N12__AT_N6) (kAT_N12__AT_N6) (not(kAT_N13__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N5) (and (kVISITED_N12__AT_N5) (kAT_N12__AT_N5) (not(kAT_N13__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N4) (and (kVISITED_N12__AT_N4) (kAT_N12__AT_N4) (not(kAT_N13__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N3) (and (kVISITED_N12__AT_N3) (kAT_N12__AT_N3) (not(kAT_N13__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N20) (and (kVISITED_N12__AT_N20) (kAT_N12__AT_N20) (not(kAT_N13__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N2) (and (kVISITED_N12__AT_N2) (kAT_N12__AT_N2) (not(kAT_N13__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N19) (and (kVISITED_N12__AT_N19) (kAT_N12__AT_N19) (not(kAT_N13__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N18) (and (kVISITED_N12__AT_N18) (kAT_N12__AT_N18) (not(kAT_N13__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N17) (and (kVISITED_N12__AT_N17) (kAT_N12__AT_N17) (not(kAT_N13__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N16) (and (kVISITED_N12__AT_N16) (kAT_N12__AT_N16) (not(kAT_N13__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N15) (and (kVISITED_N12__AT_N15) (kAT_N12__AT_N15) (not(kAT_N13__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N14) (and (kVISITED_N12__AT_N14) (kAT_N12__AT_N14) (not(kAT_N13__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N13) (and (kVISITED_N12__AT_N13) (kAT_N12__AT_N13) (not(kAT_N13__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N12) (and (kVISITED_N12__AT_N12) (kAT_N12__AT_N12) (not(kAT_N13__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N11) (and (kVISITED_N12__AT_N11) (kAT_N12__AT_N11) (not(kAT_N13__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N13__AT_N1) (and (kVISITED_N12__AT_N1) (kAT_N12__AT_N1) (not(kAT_N13__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N18_N17
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N18)
(when (kAT_N18__AT_N10) (and (kVISITED_N17__AT_N10) (kAT_N17__AT_N10) (not(kAT_N18__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N18) (and (kVISITED_N17) (kAT_N17) (k-AT_N18))) ;; Support. 
(when (not(k-AT_N18)) (and (not(k-AT_N17)) (not(kAT_N18)))) ;; Cancellation. 
(when (kAT_N18__AT_N9) (and (kVISITED_N17__AT_N9) (kAT_N17__AT_N9) (not(kAT_N18__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N8) (and (kVISITED_N17__AT_N8) (kAT_N17__AT_N8) (not(kAT_N18__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N7) (and (kVISITED_N17__AT_N7) (kAT_N17__AT_N7) (not(kAT_N18__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N6) (and (kVISITED_N17__AT_N6) (kAT_N17__AT_N6) (not(kAT_N18__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N5) (and (kVISITED_N17__AT_N5) (kAT_N17__AT_N5) (not(kAT_N18__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N4) (and (kVISITED_N17__AT_N4) (kAT_N17__AT_N4) (not(kAT_N18__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N3) (and (kVISITED_N17__AT_N3) (kAT_N17__AT_N3) (not(kAT_N18__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N20) (and (kVISITED_N17__AT_N20) (kAT_N17__AT_N20) (not(kAT_N18__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N2) (and (kVISITED_N17__AT_N2) (kAT_N17__AT_N2) (not(kAT_N18__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N19) (and (kVISITED_N17__AT_N19) (kAT_N17__AT_N19) (not(kAT_N18__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N18) (and (kVISITED_N17__AT_N18) (kAT_N17__AT_N18) (not(kAT_N18__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N17) (and (kVISITED_N17__AT_N17) (kAT_N17__AT_N17) (not(kAT_N18__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N16) (and (kVISITED_N17__AT_N16) (kAT_N17__AT_N16) (not(kAT_N18__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N15) (and (kVISITED_N17__AT_N15) (kAT_N17__AT_N15) (not(kAT_N18__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N14) (and (kVISITED_N17__AT_N14) (kAT_N17__AT_N14) (not(kAT_N18__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N13) (and (kVISITED_N17__AT_N13) (kAT_N17__AT_N13) (not(kAT_N18__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N12) (and (kVISITED_N17__AT_N12) (kAT_N17__AT_N12) (not(kAT_N18__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N11) (and (kVISITED_N17__AT_N11) (kAT_N17__AT_N11) (not(kAT_N18__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N18__AT_N1) (and (kVISITED_N17__AT_N1) (kAT_N17__AT_N1) (not(kAT_N18__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N1_N2
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N1)
(when (kAT_N1__AT_N10) (and (kVISITED_N2__AT_N10) (kAT_N2__AT_N10) (not(kAT_N1__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N1) (and (kVISITED_N2) (kAT_N2) (k-AT_N1))) ;; Support. 
(when (not(k-AT_N1)) (and (not(k-AT_N2)) (not(kAT_N1)))) ;; Cancellation. 
(when (kAT_N1__AT_N9) (and (kVISITED_N2__AT_N9) (kAT_N2__AT_N9) (not(kAT_N1__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N1__AT_N8) (and (kVISITED_N2__AT_N8) (kAT_N2__AT_N8) (not(kAT_N1__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N1__AT_N7) (and (kVISITED_N2__AT_N7) (kAT_N2__AT_N7) (not(kAT_N1__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N1__AT_N6) (and (kVISITED_N2__AT_N6) (kAT_N2__AT_N6) (not(kAT_N1__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N1__AT_N5) (and (kVISITED_N2__AT_N5) (kAT_N2__AT_N5) (not(kAT_N1__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N1__AT_N4) (and (kVISITED_N2__AT_N4) (kAT_N2__AT_N4) (not(kAT_N1__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N1__AT_N3) (and (kVISITED_N2__AT_N3) (kAT_N2__AT_N3) (not(kAT_N1__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N1__AT_N20) (and (kVISITED_N2__AT_N20) (kAT_N2__AT_N20) (not(kAT_N1__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N1__AT_N2) (and (kVISITED_N2__AT_N2) (kAT_N2__AT_N2) (not(kAT_N1__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N1__AT_N19) (and (kVISITED_N2__AT_N19) (kAT_N2__AT_N19) (not(kAT_N1__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N1__AT_N18) (and (kVISITED_N2__AT_N18) (kAT_N2__AT_N18) (not(kAT_N1__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N1__AT_N17) (and (kVISITED_N2__AT_N17) (kAT_N2__AT_N17) (not(kAT_N1__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N1__AT_N16) (and (kVISITED_N2__AT_N16) (kAT_N2__AT_N16) (not(kAT_N1__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N1__AT_N15) (and (kVISITED_N2__AT_N15) (kAT_N2__AT_N15) (not(kAT_N1__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N1__AT_N14) (and (kVISITED_N2__AT_N14) (kAT_N2__AT_N14) (not(kAT_N1__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N1__AT_N13) (and (kVISITED_N2__AT_N13) (kAT_N2__AT_N13) (not(kAT_N1__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N1__AT_N12) (and (kVISITED_N2__AT_N12) (kAT_N2__AT_N12) (not(kAT_N1__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N1__AT_N11) (and (kVISITED_N2__AT_N11) (kAT_N2__AT_N11) (not(kAT_N1__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N1__AT_N1) (and (kVISITED_N2__AT_N1) (kAT_N2__AT_N1) (not(kAT_N1__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N8_N9
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N8)
(when (kAT_N8__AT_N10) (and (kVISITED_N9__AT_N10) (kAT_N9__AT_N10) (not(kAT_N8__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N8) (and (kVISITED_N9) (kAT_N9) (k-AT_N8))) ;; Support. 
(when (not(k-AT_N8)) (and (not(k-AT_N9)) (not(kAT_N8)))) ;; Cancellation. 
(when (kAT_N8__AT_N9) (and (kVISITED_N9__AT_N9) (kAT_N9__AT_N9) (not(kAT_N8__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N8) (and (kVISITED_N9__AT_N8) (kAT_N9__AT_N8) (not(kAT_N8__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N7) (and (kVISITED_N9__AT_N7) (kAT_N9__AT_N7) (not(kAT_N8__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N6) (and (kVISITED_N9__AT_N6) (kAT_N9__AT_N6) (not(kAT_N8__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N5) (and (kVISITED_N9__AT_N5) (kAT_N9__AT_N5) (not(kAT_N8__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N4) (and (kVISITED_N9__AT_N4) (kAT_N9__AT_N4) (not(kAT_N8__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N3) (and (kVISITED_N9__AT_N3) (kAT_N9__AT_N3) (not(kAT_N8__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N20) (and (kVISITED_N9__AT_N20) (kAT_N9__AT_N20) (not(kAT_N8__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N2) (and (kVISITED_N9__AT_N2) (kAT_N9__AT_N2) (not(kAT_N8__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N19) (and (kVISITED_N9__AT_N19) (kAT_N9__AT_N19) (not(kAT_N8__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N18) (and (kVISITED_N9__AT_N18) (kAT_N9__AT_N18) (not(kAT_N8__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N17) (and (kVISITED_N9__AT_N17) (kAT_N9__AT_N17) (not(kAT_N8__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N16) (and (kVISITED_N9__AT_N16) (kAT_N9__AT_N16) (not(kAT_N8__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N15) (and (kVISITED_N9__AT_N15) (kAT_N9__AT_N15) (not(kAT_N8__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N14) (and (kVISITED_N9__AT_N14) (kAT_N9__AT_N14) (not(kAT_N8__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N13) (and (kVISITED_N9__AT_N13) (kAT_N9__AT_N13) (not(kAT_N8__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N12) (and (kVISITED_N9__AT_N12) (kAT_N9__AT_N12) (not(kAT_N8__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N11) (and (kVISITED_N9__AT_N11) (kAT_N9__AT_N11) (not(kAT_N8__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N8__AT_N1) (and (kVISITED_N9__AT_N1) (kAT_N9__AT_N1) (not(kAT_N8__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N3_N2
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N3)
(when (kAT_N3__AT_N10) (and (kVISITED_N2__AT_N10) (kAT_N2__AT_N10) (not(kAT_N3__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N3) (and (kVISITED_N2) (kAT_N2) (k-AT_N3))) ;; Support. 
(when (not(k-AT_N3)) (and (not(k-AT_N2)) (not(kAT_N3)))) ;; Cancellation. 
(when (kAT_N3__AT_N9) (and (kVISITED_N2__AT_N9) (kAT_N2__AT_N9) (not(kAT_N3__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N8) (and (kVISITED_N2__AT_N8) (kAT_N2__AT_N8) (not(kAT_N3__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N7) (and (kVISITED_N2__AT_N7) (kAT_N2__AT_N7) (not(kAT_N3__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N6) (and (kVISITED_N2__AT_N6) (kAT_N2__AT_N6) (not(kAT_N3__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N5) (and (kVISITED_N2__AT_N5) (kAT_N2__AT_N5) (not(kAT_N3__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N4) (and (kVISITED_N2__AT_N4) (kAT_N2__AT_N4) (not(kAT_N3__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N3) (and (kVISITED_N2__AT_N3) (kAT_N2__AT_N3) (not(kAT_N3__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N20) (and (kVISITED_N2__AT_N20) (kAT_N2__AT_N20) (not(kAT_N3__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N2) (and (kVISITED_N2__AT_N2) (kAT_N2__AT_N2) (not(kAT_N3__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N19) (and (kVISITED_N2__AT_N19) (kAT_N2__AT_N19) (not(kAT_N3__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N18) (and (kVISITED_N2__AT_N18) (kAT_N2__AT_N18) (not(kAT_N3__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N17) (and (kVISITED_N2__AT_N17) (kAT_N2__AT_N17) (not(kAT_N3__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N16) (and (kVISITED_N2__AT_N16) (kAT_N2__AT_N16) (not(kAT_N3__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N15) (and (kVISITED_N2__AT_N15) (kAT_N2__AT_N15) (not(kAT_N3__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N14) (and (kVISITED_N2__AT_N14) (kAT_N2__AT_N14) (not(kAT_N3__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N13) (and (kVISITED_N2__AT_N13) (kAT_N2__AT_N13) (not(kAT_N3__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N12) (and (kVISITED_N2__AT_N12) (kAT_N2__AT_N12) (not(kAT_N3__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N11) (and (kVISITED_N2__AT_N11) (kAT_N2__AT_N11) (not(kAT_N3__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N3__AT_N1) (and (kVISITED_N2__AT_N1) (kAT_N2__AT_N1) (not(kAT_N3__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N5_N6
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N5)
(when (kAT_N5__AT_N10) (and (kVISITED_N6__AT_N10) (kAT_N6__AT_N10) (not(kAT_N5__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N5) (and (kVISITED_N6) (kAT_N6) (k-AT_N5))) ;; Support. 
(when (not(k-AT_N5)) (and (not(k-AT_N6)) (not(kAT_N5)))) ;; Cancellation. 
(when (kAT_N5__AT_N9) (and (kVISITED_N6__AT_N9) (kAT_N6__AT_N9) (not(kAT_N5__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N8) (and (kVISITED_N6__AT_N8) (kAT_N6__AT_N8) (not(kAT_N5__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N7) (and (kVISITED_N6__AT_N7) (kAT_N6__AT_N7) (not(kAT_N5__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N6) (and (kVISITED_N6__AT_N6) (kAT_N6__AT_N6) (not(kAT_N5__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N5) (and (kVISITED_N6__AT_N5) (kAT_N6__AT_N5) (not(kAT_N5__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N4) (and (kVISITED_N6__AT_N4) (kAT_N6__AT_N4) (not(kAT_N5__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N3) (and (kVISITED_N6__AT_N3) (kAT_N6__AT_N3) (not(kAT_N5__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N20) (and (kVISITED_N6__AT_N20) (kAT_N6__AT_N20) (not(kAT_N5__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N2) (and (kVISITED_N6__AT_N2) (kAT_N6__AT_N2) (not(kAT_N5__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N19) (and (kVISITED_N6__AT_N19) (kAT_N6__AT_N19) (not(kAT_N5__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N18) (and (kVISITED_N6__AT_N18) (kAT_N6__AT_N18) (not(kAT_N5__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N17) (and (kVISITED_N6__AT_N17) (kAT_N6__AT_N17) (not(kAT_N5__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N16) (and (kVISITED_N6__AT_N16) (kAT_N6__AT_N16) (not(kAT_N5__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N15) (and (kVISITED_N6__AT_N15) (kAT_N6__AT_N15) (not(kAT_N5__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N14) (and (kVISITED_N6__AT_N14) (kAT_N6__AT_N14) (not(kAT_N5__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N13) (and (kVISITED_N6__AT_N13) (kAT_N6__AT_N13) (not(kAT_N5__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N12) (and (kVISITED_N6__AT_N12) (kAT_N6__AT_N12) (not(kAT_N5__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N11) (and (kVISITED_N6__AT_N11) (kAT_N6__AT_N11) (not(kAT_N5__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N1) (and (kVISITED_N6__AT_N1) (kAT_N6__AT_N1) (not(kAT_N5__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N4_N5
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N4)
(when (kAT_N4__AT_N10) (and (kVISITED_N5__AT_N10) (kAT_N5__AT_N10) (not(kAT_N4__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N4) (and (kVISITED_N5) (kAT_N5) (k-AT_N4))) ;; Support. 
(when (not(k-AT_N4)) (and (not(k-AT_N5)) (not(kAT_N4)))) ;; Cancellation. 
(when (kAT_N4__AT_N9) (and (kVISITED_N5__AT_N9) (kAT_N5__AT_N9) (not(kAT_N4__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N8) (and (kVISITED_N5__AT_N8) (kAT_N5__AT_N8) (not(kAT_N4__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N7) (and (kVISITED_N5__AT_N7) (kAT_N5__AT_N7) (not(kAT_N4__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N6) (and (kVISITED_N5__AT_N6) (kAT_N5__AT_N6) (not(kAT_N4__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N5) (and (kVISITED_N5__AT_N5) (kAT_N5__AT_N5) (not(kAT_N4__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N4) (and (kVISITED_N5__AT_N4) (kAT_N5__AT_N4) (not(kAT_N4__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N3) (and (kVISITED_N5__AT_N3) (kAT_N5__AT_N3) (not(kAT_N4__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N20) (and (kVISITED_N5__AT_N20) (kAT_N5__AT_N20) (not(kAT_N4__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N2) (and (kVISITED_N5__AT_N2) (kAT_N5__AT_N2) (not(kAT_N4__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N19) (and (kVISITED_N5__AT_N19) (kAT_N5__AT_N19) (not(kAT_N4__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N18) (and (kVISITED_N5__AT_N18) (kAT_N5__AT_N18) (not(kAT_N4__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N17) (and (kVISITED_N5__AT_N17) (kAT_N5__AT_N17) (not(kAT_N4__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N16) (and (kVISITED_N5__AT_N16) (kAT_N5__AT_N16) (not(kAT_N4__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N15) (and (kVISITED_N5__AT_N15) (kAT_N5__AT_N15) (not(kAT_N4__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N14) (and (kVISITED_N5__AT_N14) (kAT_N5__AT_N14) (not(kAT_N4__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N13) (and (kVISITED_N5__AT_N13) (kAT_N5__AT_N13) (not(kAT_N4__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N12) (and (kVISITED_N5__AT_N12) (kAT_N5__AT_N12) (not(kAT_N4__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N11) (and (kVISITED_N5__AT_N11) (kAT_N5__AT_N11) (not(kAT_N4__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N1) (and (kVISITED_N5__AT_N1) (kAT_N5__AT_N1) (not(kAT_N4__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N7_N8
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N7)
(when (kAT_N7__AT_N10) (and (kVISITED_N8__AT_N10) (kAT_N8__AT_N10) (not(kAT_N7__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N7) (and (kVISITED_N8) (kAT_N8) (k-AT_N7))) ;; Support. 
(when (not(k-AT_N7)) (and (not(k-AT_N8)) (not(kAT_N7)))) ;; Cancellation. 
(when (kAT_N7__AT_N9) (and (kVISITED_N8__AT_N9) (kAT_N8__AT_N9) (not(kAT_N7__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N8) (and (kVISITED_N8__AT_N8) (kAT_N8__AT_N8) (not(kAT_N7__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N7) (and (kVISITED_N8__AT_N7) (kAT_N8__AT_N7) (not(kAT_N7__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N6) (and (kVISITED_N8__AT_N6) (kAT_N8__AT_N6) (not(kAT_N7__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N5) (and (kVISITED_N8__AT_N5) (kAT_N8__AT_N5) (not(kAT_N7__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N4) (and (kVISITED_N8__AT_N4) (kAT_N8__AT_N4) (not(kAT_N7__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N3) (and (kVISITED_N8__AT_N3) (kAT_N8__AT_N3) (not(kAT_N7__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N20) (and (kVISITED_N8__AT_N20) (kAT_N8__AT_N20) (not(kAT_N7__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N2) (and (kVISITED_N8__AT_N2) (kAT_N8__AT_N2) (not(kAT_N7__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N19) (and (kVISITED_N8__AT_N19) (kAT_N8__AT_N19) (not(kAT_N7__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N18) (and (kVISITED_N8__AT_N18) (kAT_N8__AT_N18) (not(kAT_N7__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N17) (and (kVISITED_N8__AT_N17) (kAT_N8__AT_N17) (not(kAT_N7__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N16) (and (kVISITED_N8__AT_N16) (kAT_N8__AT_N16) (not(kAT_N7__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N15) (and (kVISITED_N8__AT_N15) (kAT_N8__AT_N15) (not(kAT_N7__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N14) (and (kVISITED_N8__AT_N14) (kAT_N8__AT_N14) (not(kAT_N7__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N13) (and (kVISITED_N8__AT_N13) (kAT_N8__AT_N13) (not(kAT_N7__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N12) (and (kVISITED_N8__AT_N12) (kAT_N8__AT_N12) (not(kAT_N7__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N11) (and (kVISITED_N8__AT_N11) (kAT_N8__AT_N11) (not(kAT_N7__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N7__AT_N1) (and (kVISITED_N8__AT_N1) (kAT_N8__AT_N1) (not(kAT_N7__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N11_N12
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N11)
(when (kAT_N11__AT_N10) (and (kVISITED_N12__AT_N10) (kAT_N12__AT_N10) (not(kAT_N11__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N11) (and (kVISITED_N12) (kAT_N12) (k-AT_N11))) ;; Support. 
(when (not(k-AT_N11)) (and (not(k-AT_N12)) (not(kAT_N11)))) ;; Cancellation. 
(when (kAT_N11__AT_N9) (and (kVISITED_N12__AT_N9) (kAT_N12__AT_N9) (not(kAT_N11__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N8) (and (kVISITED_N12__AT_N8) (kAT_N12__AT_N8) (not(kAT_N11__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N7) (and (kVISITED_N12__AT_N7) (kAT_N12__AT_N7) (not(kAT_N11__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N6) (and (kVISITED_N12__AT_N6) (kAT_N12__AT_N6) (not(kAT_N11__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N5) (and (kVISITED_N12__AT_N5) (kAT_N12__AT_N5) (not(kAT_N11__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N4) (and (kVISITED_N12__AT_N4) (kAT_N12__AT_N4) (not(kAT_N11__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N3) (and (kVISITED_N12__AT_N3) (kAT_N12__AT_N3) (not(kAT_N11__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N20) (and (kVISITED_N12__AT_N20) (kAT_N12__AT_N20) (not(kAT_N11__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N2) (and (kVISITED_N12__AT_N2) (kAT_N12__AT_N2) (not(kAT_N11__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N19) (and (kVISITED_N12__AT_N19) (kAT_N12__AT_N19) (not(kAT_N11__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N18) (and (kVISITED_N12__AT_N18) (kAT_N12__AT_N18) (not(kAT_N11__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N17) (and (kVISITED_N12__AT_N17) (kAT_N12__AT_N17) (not(kAT_N11__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N16) (and (kVISITED_N12__AT_N16) (kAT_N12__AT_N16) (not(kAT_N11__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N15) (and (kVISITED_N12__AT_N15) (kAT_N12__AT_N15) (not(kAT_N11__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N14) (and (kVISITED_N12__AT_N14) (kAT_N12__AT_N14) (not(kAT_N11__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N13) (and (kVISITED_N12__AT_N13) (kAT_N12__AT_N13) (not(kAT_N11__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N12) (and (kVISITED_N12__AT_N12) (kAT_N12__AT_N12) (not(kAT_N11__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N11) (and (kVISITED_N12__AT_N11) (kAT_N12__AT_N11) (not(kAT_N11__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N1) (and (kVISITED_N12__AT_N1) (kAT_N12__AT_N1) (not(kAT_N11__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N4_N3
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N4)
(when (kAT_N4__AT_N10) (and (kVISITED_N3__AT_N10) (kAT_N3__AT_N10) (not(kAT_N4__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N4) (and (kVISITED_N3) (kAT_N3) (k-AT_N4))) ;; Support. 
(when (not(k-AT_N4)) (and (not(k-AT_N3)) (not(kAT_N4)))) ;; Cancellation. 
(when (kAT_N4__AT_N9) (and (kVISITED_N3__AT_N9) (kAT_N3__AT_N9) (not(kAT_N4__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N8) (and (kVISITED_N3__AT_N8) (kAT_N3__AT_N8) (not(kAT_N4__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N7) (and (kVISITED_N3__AT_N7) (kAT_N3__AT_N7) (not(kAT_N4__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N6) (and (kVISITED_N3__AT_N6) (kAT_N3__AT_N6) (not(kAT_N4__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N5) (and (kVISITED_N3__AT_N5) (kAT_N3__AT_N5) (not(kAT_N4__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N4) (and (kVISITED_N3__AT_N4) (kAT_N3__AT_N4) (not(kAT_N4__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N3) (and (kVISITED_N3__AT_N3) (kAT_N3__AT_N3) (not(kAT_N4__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N20) (and (kVISITED_N3__AT_N20) (kAT_N3__AT_N20) (not(kAT_N4__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N2) (and (kVISITED_N3__AT_N2) (kAT_N3__AT_N2) (not(kAT_N4__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N19) (and (kVISITED_N3__AT_N19) (kAT_N3__AT_N19) (not(kAT_N4__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N18) (and (kVISITED_N3__AT_N18) (kAT_N3__AT_N18) (not(kAT_N4__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N17) (and (kVISITED_N3__AT_N17) (kAT_N3__AT_N17) (not(kAT_N4__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N16) (and (kVISITED_N3__AT_N16) (kAT_N3__AT_N16) (not(kAT_N4__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N15) (and (kVISITED_N3__AT_N15) (kAT_N3__AT_N15) (not(kAT_N4__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N14) (and (kVISITED_N3__AT_N14) (kAT_N3__AT_N14) (not(kAT_N4__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N13) (and (kVISITED_N3__AT_N13) (kAT_N3__AT_N13) (not(kAT_N4__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N12) (and (kVISITED_N3__AT_N12) (kAT_N3__AT_N12) (not(kAT_N4__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N11) (and (kVISITED_N3__AT_N11) (kAT_N3__AT_N11) (not(kAT_N4__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N4__AT_N1) (and (kVISITED_N3__AT_N1) (kAT_N3__AT_N1) (not(kAT_N4__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N11_N10
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N11)
(when (kAT_N11__AT_N10) (and (kVISITED_N10__AT_N10) (kAT_N10__AT_N10) (not(kAT_N11__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N11) (and (kVISITED_N10) (kAT_N10) (k-AT_N11))) ;; Support. 
(when (not(k-AT_N11)) (and (not(k-AT_N10)) (not(kAT_N11)))) ;; Cancellation. 
(when (kAT_N11__AT_N9) (and (kVISITED_N10__AT_N9) (kAT_N10__AT_N9) (not(kAT_N11__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N8) (and (kVISITED_N10__AT_N8) (kAT_N10__AT_N8) (not(kAT_N11__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N7) (and (kVISITED_N10__AT_N7) (kAT_N10__AT_N7) (not(kAT_N11__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N6) (and (kVISITED_N10__AT_N6) (kAT_N10__AT_N6) (not(kAT_N11__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N5) (and (kVISITED_N10__AT_N5) (kAT_N10__AT_N5) (not(kAT_N11__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N4) (and (kVISITED_N10__AT_N4) (kAT_N10__AT_N4) (not(kAT_N11__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N3) (and (kVISITED_N10__AT_N3) (kAT_N10__AT_N3) (not(kAT_N11__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N20) (and (kVISITED_N10__AT_N20) (kAT_N10__AT_N20) (not(kAT_N11__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N2) (and (kVISITED_N10__AT_N2) (kAT_N10__AT_N2) (not(kAT_N11__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N19) (and (kVISITED_N10__AT_N19) (kAT_N10__AT_N19) (not(kAT_N11__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N18) (and (kVISITED_N10__AT_N18) (kAT_N10__AT_N18) (not(kAT_N11__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N17) (and (kVISITED_N10__AT_N17) (kAT_N10__AT_N17) (not(kAT_N11__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N16) (and (kVISITED_N10__AT_N16) (kAT_N10__AT_N16) (not(kAT_N11__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N15) (and (kVISITED_N10__AT_N15) (kAT_N10__AT_N15) (not(kAT_N11__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N14) (and (kVISITED_N10__AT_N14) (kAT_N10__AT_N14) (not(kAT_N11__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N13) (and (kVISITED_N10__AT_N13) (kAT_N10__AT_N13) (not(kAT_N11__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N12) (and (kVISITED_N10__AT_N12) (kAT_N10__AT_N12) (not(kAT_N11__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N11) (and (kVISITED_N10__AT_N11) (kAT_N10__AT_N11) (not(kAT_N11__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N11__AT_N1) (and (kVISITED_N10__AT_N1) (kAT_N10__AT_N1) (not(kAT_N11__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N14_N15
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N14)
(when (kAT_N14__AT_N10) (and (kVISITED_N15__AT_N10) (kAT_N15__AT_N10) (not(kAT_N14__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N14) (and (kVISITED_N15) (kAT_N15) (k-AT_N14))) ;; Support. 
(when (not(k-AT_N14)) (and (not(k-AT_N15)) (not(kAT_N14)))) ;; Cancellation. 
(when (kAT_N14__AT_N9) (and (kVISITED_N15__AT_N9) (kAT_N15__AT_N9) (not(kAT_N14__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N8) (and (kVISITED_N15__AT_N8) (kAT_N15__AT_N8) (not(kAT_N14__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N7) (and (kVISITED_N15__AT_N7) (kAT_N15__AT_N7) (not(kAT_N14__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N6) (and (kVISITED_N15__AT_N6) (kAT_N15__AT_N6) (not(kAT_N14__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N5) (and (kVISITED_N15__AT_N5) (kAT_N15__AT_N5) (not(kAT_N14__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N4) (and (kVISITED_N15__AT_N4) (kAT_N15__AT_N4) (not(kAT_N14__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N3) (and (kVISITED_N15__AT_N3) (kAT_N15__AT_N3) (not(kAT_N14__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N20) (and (kVISITED_N15__AT_N20) (kAT_N15__AT_N20) (not(kAT_N14__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N2) (and (kVISITED_N15__AT_N2) (kAT_N15__AT_N2) (not(kAT_N14__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N19) (and (kVISITED_N15__AT_N19) (kAT_N15__AT_N19) (not(kAT_N14__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N18) (and (kVISITED_N15__AT_N18) (kAT_N15__AT_N18) (not(kAT_N14__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N17) (and (kVISITED_N15__AT_N17) (kAT_N15__AT_N17) (not(kAT_N14__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N16) (and (kVISITED_N15__AT_N16) (kAT_N15__AT_N16) (not(kAT_N14__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N15) (and (kVISITED_N15__AT_N15) (kAT_N15__AT_N15) (not(kAT_N14__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N14) (and (kVISITED_N15__AT_N14) (kAT_N15__AT_N14) (not(kAT_N14__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N13) (and (kVISITED_N15__AT_N13) (kAT_N15__AT_N13) (not(kAT_N14__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N12) (and (kVISITED_N15__AT_N12) (kAT_N15__AT_N12) (not(kAT_N14__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N11) (and (kVISITED_N15__AT_N11) (kAT_N15__AT_N11) (not(kAT_N14__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N14__AT_N1) (and (kVISITED_N15__AT_N1) (kAT_N15__AT_N1) (not(kAT_N14__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N10_N9
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N10)
(when (kAT_N10__AT_N10) (and (kVISITED_N9__AT_N10) (kAT_N9__AT_N10) (not(kAT_N10__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N10) (and (kVISITED_N9) (kAT_N9) (k-AT_N10))) ;; Support. 
(when (not(k-AT_N10)) (and (not(k-AT_N9)) (not(kAT_N10)))) ;; Cancellation. 
(when (kAT_N10__AT_N9) (and (kVISITED_N9__AT_N9) (kAT_N9__AT_N9) (not(kAT_N10__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N8) (and (kVISITED_N9__AT_N8) (kAT_N9__AT_N8) (not(kAT_N10__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N7) (and (kVISITED_N9__AT_N7) (kAT_N9__AT_N7) (not(kAT_N10__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N6) (and (kVISITED_N9__AT_N6) (kAT_N9__AT_N6) (not(kAT_N10__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N5) (and (kVISITED_N9__AT_N5) (kAT_N9__AT_N5) (not(kAT_N10__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N4) (and (kVISITED_N9__AT_N4) (kAT_N9__AT_N4) (not(kAT_N10__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N3) (and (kVISITED_N9__AT_N3) (kAT_N9__AT_N3) (not(kAT_N10__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N20) (and (kVISITED_N9__AT_N20) (kAT_N9__AT_N20) (not(kAT_N10__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N2) (and (kVISITED_N9__AT_N2) (kAT_N9__AT_N2) (not(kAT_N10__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N19) (and (kVISITED_N9__AT_N19) (kAT_N9__AT_N19) (not(kAT_N10__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N18) (and (kVISITED_N9__AT_N18) (kAT_N9__AT_N18) (not(kAT_N10__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N17) (and (kVISITED_N9__AT_N17) (kAT_N9__AT_N17) (not(kAT_N10__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N16) (and (kVISITED_N9__AT_N16) (kAT_N9__AT_N16) (not(kAT_N10__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N15) (and (kVISITED_N9__AT_N15) (kAT_N9__AT_N15) (not(kAT_N10__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N14) (and (kVISITED_N9__AT_N14) (kAT_N9__AT_N14) (not(kAT_N10__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N13) (and (kVISITED_N9__AT_N13) (kAT_N9__AT_N13) (not(kAT_N10__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N12) (and (kVISITED_N9__AT_N12) (kAT_N9__AT_N12) (not(kAT_N10__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N11) (and (kVISITED_N9__AT_N11) (kAT_N9__AT_N11) (not(kAT_N10__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N10__AT_N1) (and (kVISITED_N9__AT_N1) (kAT_N9__AT_N1) (not(kAT_N10__AT_N1)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N5_N4
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N5)
(when (kAT_N5__AT_N10) (and (kVISITED_N4__AT_N10) (kAT_N4__AT_N10) (not(kAT_N5__AT_N10)))) ;; Support.  Cancellation. 
(when (kAT_N5) (and (kVISITED_N4) (kAT_N4) (k-AT_N5))) ;; Support. 
(when (not(k-AT_N5)) (and (not(k-AT_N4)) (not(kAT_N5)))) ;; Cancellation. 
(when (kAT_N5__AT_N9) (and (kVISITED_N4__AT_N9) (kAT_N4__AT_N9) (not(kAT_N5__AT_N9)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N8) (and (kVISITED_N4__AT_N8) (kAT_N4__AT_N8) (not(kAT_N5__AT_N8)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N7) (and (kVISITED_N4__AT_N7) (kAT_N4__AT_N7) (not(kAT_N5__AT_N7)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N6) (and (kVISITED_N4__AT_N6) (kAT_N4__AT_N6) (not(kAT_N5__AT_N6)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N5) (and (kVISITED_N4__AT_N5) (kAT_N4__AT_N5) (not(kAT_N5__AT_N5)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N4) (and (kVISITED_N4__AT_N4) (kAT_N4__AT_N4) (not(kAT_N5__AT_N4)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N3) (and (kVISITED_N4__AT_N3) (kAT_N4__AT_N3) (not(kAT_N5__AT_N3)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N20) (and (kVISITED_N4__AT_N20) (kAT_N4__AT_N20) (not(kAT_N5__AT_N20)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N2) (and (kVISITED_N4__AT_N2) (kAT_N4__AT_N2) (not(kAT_N5__AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N19) (and (kVISITED_N4__AT_N19) (kAT_N4__AT_N19) (not(kAT_N5__AT_N19)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N18) (and (kVISITED_N4__AT_N18) (kAT_N4__AT_N18) (not(kAT_N5__AT_N18)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N17) (and (kVISITED_N4__AT_N17) (kAT_N4__AT_N17) (not(kAT_N5__AT_N17)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N16) (and (kVISITED_N4__AT_N16) (kAT_N4__AT_N16) (not(kAT_N5__AT_N16)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N15) (and (kVISITED_N4__AT_N15) (kAT_N4__AT_N15) (not(kAT_N5__AT_N15)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N14) (and (kVISITED_N4__AT_N14) (kAT_N4__AT_N14) (not(kAT_N5__AT_N14)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N13) (and (kVISITED_N4__AT_N13) (kAT_N4__AT_N13) (not(kAT_N5__AT_N13)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N12) (and (kVISITED_N4__AT_N12) (kAT_N4__AT_N12) (not(kAT_N5__AT_N12)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N11) (and (kVISITED_N4__AT_N11) (kAT_N4__AT_N11) (not(kAT_N5__AT_N11)))) ;; Support.  Cancellation. 
(when (kAT_N5__AT_N1) (and (kVISITED_N4__AT_N1) (kAT_N4__AT_N1) (not(kAT_N5__AT_N1)))) ;; Support.  Cancellation. 
))
(:action START_N9
:parameters ()
:precondition (and)

:effect (and 
(when (kAT_N9) (and (kSTARTED) (kVISITED_N9))) ;; Support. 
(when (kAT_N9__AT_N9) (and (kSTARTED__AT_N9) (kVISITED_N9__AT_N9))) ;; Support. 
(when (kAT_N9__AT_N8) (and (kSTARTED__AT_N8) (kVISITED_N9__AT_N8))) ;; Support. 
(when (kAT_N9__AT_N7) (and (kSTARTED__AT_N7) (kVISITED_N9__AT_N7))) ;; Support. 
(when (kAT_N9__AT_N6) (and (kSTARTED__AT_N6) (kVISITED_N9__AT_N6))) ;; Support. 
(when (kAT_N9__AT_N5) (and (kSTARTED__AT_N5) (kVISITED_N9__AT_N5))) ;; Support. 
(when (kAT_N9__AT_N4) (and (kSTARTED__AT_N4) (kVISITED_N9__AT_N4))) ;; Support. 
(when (kAT_N9__AT_N3) (and (kSTARTED__AT_N3) (kVISITED_N9__AT_N3))) ;; Support. 
(when (kAT_N9__AT_N20) (and (kSTARTED__AT_N20) (kVISITED_N9__AT_N20))) ;; Support. 
(when (kAT_N9__AT_N2) (and (kSTARTED__AT_N2) (kVISITED_N9__AT_N2))) ;; Support. 
(when (kAT_N9__AT_N19) (and (kSTARTED__AT_N19) (kVISITED_N9__AT_N19))) ;; Support. 
(when (kAT_N9__AT_N18) (and (kSTARTED__AT_N18) (kVISITED_N9__AT_N18))) ;; Support. 
(when (kAT_N9__AT_N17) (and (kSTARTED__AT_N17) (kVISITED_N9__AT_N17))) ;; Support. 
(when (kAT_N9__AT_N16) (and (kSTARTED__AT_N16) (kVISITED_N9__AT_N16))) ;; Support. 
(when (kAT_N9__AT_N15) (and (kSTARTED__AT_N15) (kVISITED_N9__AT_N15))) ;; Support. 
(when (kAT_N9__AT_N14) (and (kSTARTED__AT_N14) (kVISITED_N9__AT_N14))) ;; Support. 
(when (kAT_N9__AT_N13) (and (kSTARTED__AT_N13) (kVISITED_N9__AT_N13))) ;; Support. 
(when (kAT_N9__AT_N12) (and (kSTARTED__AT_N12) (kVISITED_N9__AT_N12))) ;; Support. 
(when (kAT_N9__AT_N11) (and (kSTARTED__AT_N11) (kVISITED_N9__AT_N11))) ;; Support. 
(when (kAT_N9__AT_N1) (and (kSTARTED__AT_N1) (kVISITED_N9__AT_N1))) ;; Support. 
(when (kAT_N9__AT_N10) (and (kSTARTED__AT_N10) (kVISITED_N9__AT_N10))) ;; Support. 
))
(:action START_N8
:parameters ()
:precondition (and)

:effect (and 
(when (kAT_N8) (and (kSTARTED) (kVISITED_N8))) ;; Support. 
(when (kAT_N8__AT_N9) (and (kSTARTED__AT_N9) (kVISITED_N8__AT_N9))) ;; Support. 
(when (kAT_N8__AT_N8) (and (kSTARTED__AT_N8) (kVISITED_N8__AT_N8))) ;; Support. 
(when (kAT_N8__AT_N7) (and (kSTARTED__AT_N7) (kVISITED_N8__AT_N7))) ;; Support. 
(when (kAT_N8__AT_N6) (and (kSTARTED__AT_N6) (kVISITED_N8__AT_N6))) ;; Support. 
(when (kAT_N8__AT_N5) (and (kSTARTED__AT_N5) (kVISITED_N8__AT_N5))) ;; Support. 
(when (kAT_N8__AT_N4) (and (kSTARTED__AT_N4) (kVISITED_N8__AT_N4))) ;; Support. 
(when (kAT_N8__AT_N3) (and (kSTARTED__AT_N3) (kVISITED_N8__AT_N3))) ;; Support. 
(when (kAT_N8__AT_N20) (and (kSTARTED__AT_N20) (kVISITED_N8__AT_N20))) ;; Support. 
(when (kAT_N8__AT_N2) (and (kSTARTED__AT_N2) (kVISITED_N8__AT_N2))) ;; Support. 
(when (kAT_N8__AT_N19) (and (kSTARTED__AT_N19) (kVISITED_N8__AT_N19))) ;; Support. 
(when (kAT_N8__AT_N18) (and (kSTARTED__AT_N18) (kVISITED_N8__AT_N18))) ;; Support. 
(when (kAT_N8__AT_N17) (and (kSTARTED__AT_N17) (kVISITED_N8__AT_N17))) ;; Support. 
(when (kAT_N8__AT_N16) (and (kSTARTED__AT_N16) (kVISITED_N8__AT_N16))) ;; Support. 
(when (kAT_N8__AT_N15) (and (kSTARTED__AT_N15) (kVISITED_N8__AT_N15))) ;; Support. 
(when (kAT_N8__AT_N14) (and (kSTARTED__AT_N14) (kVISITED_N8__AT_N14))) ;; Support. 
(when (kAT_N8__AT_N13) (and (kSTARTED__AT_N13) (kVISITED_N8__AT_N13))) ;; Support. 
(when (kAT_N8__AT_N12) (and (kSTARTED__AT_N12) (kVISITED_N8__AT_N12))) ;; Support. 
(when (kAT_N8__AT_N11) (and (kSTARTED__AT_N11) (kVISITED_N8__AT_N11))) ;; Support. 
(when (kAT_N8__AT_N1) (and (kSTARTED__AT_N1) (kVISITED_N8__AT_N1))) ;; Support. 
(when (kAT_N8__AT_N10) (and (kSTARTED__AT_N10) (kVISITED_N8__AT_N10))) ;; Support. 
))
(:action START_N7
:parameters ()
:precondition (and)

:effect (and 
(when (kAT_N7) (and (kSTARTED) (kVISITED_N7))) ;; Support. 
(when (kAT_N7__AT_N9) (and (kSTARTED__AT_N9) (kVISITED_N7__AT_N9))) ;; Support. 
(when (kAT_N7__AT_N8) (and (kSTARTED__AT_N8) (kVISITED_N7__AT_N8))) ;; Support. 
(when (kAT_N7__AT_N7) (and (kSTARTED__AT_N7) (kVISITED_N7__AT_N7))) ;; Support. 
(when (kAT_N7__AT_N6) (and (kSTARTED__AT_N6) (kVISITED_N7__AT_N6))) ;; Support. 
(when (kAT_N7__AT_N5) (and (kSTARTED__AT_N5) (kVISITED_N7__AT_N5))) ;; Support. 
(when (kAT_N7__AT_N4) (and (kSTARTED__AT_N4) (kVISITED_N7__AT_N4))) ;; Support. 
(when (kAT_N7__AT_N3) (and (kSTARTED__AT_N3) (kVISITED_N7__AT_N3))) ;; Support. 
(when (kAT_N7__AT_N20) (and (kSTARTED__AT_N20) (kVISITED_N7__AT_N20))) ;; Support. 
(when (kAT_N7__AT_N2) (and (kSTARTED__AT_N2) (kVISITED_N7__AT_N2))) ;; Support. 
(when (kAT_N7__AT_N19) (and (kSTARTED__AT_N19) (kVISITED_N7__AT_N19))) ;; Support. 
(when (kAT_N7__AT_N18) (and (kSTARTED__AT_N18) (kVISITED_N7__AT_N18))) ;; Support. 
(when (kAT_N7__AT_N17) (and (kSTARTED__AT_N17) (kVISITED_N7__AT_N17))) ;; Support. 
(when (kAT_N7__AT_N16) (and (kSTARTED__AT_N16) (kVISITED_N7__AT_N16))) ;; Support. 
(when (kAT_N7__AT_N15) (and (kSTARTED__AT_N15) (kVISITED_N7__AT_N15))) ;; Support. 
(when (kAT_N7__AT_N14) (and (kSTARTED__AT_N14) (kVISITED_N7__AT_N14))) ;; Support. 
(when (kAT_N7__AT_N13) (and (kSTARTED__AT_N13) (kVISITED_N7__AT_N13))) ;; Support. 
(when (kAT_N7__AT_N12) (and (kSTARTED__AT_N12) (kVISITED_N7__AT_N12))) ;; Support. 
(when (kAT_N7__AT_N11) (and (kSTARTED__AT_N11) (kVISITED_N7__AT_N11))) ;; Support. 
(when (kAT_N7__AT_N1) (and (kSTARTED__AT_N1) (kVISITED_N7__AT_N1))) ;; Support. 
(when (kAT_N7__AT_N10) (and (kSTARTED__AT_N10) (kVISITED_N7__AT_N10))) ;; Support. 
))
(:action START_N6
:parameters ()
:precondition (and)

:effect (and 
(when (kAT_N6) (and (kSTARTED) (kVISITED_N6))) ;; Support. 
(when (kAT_N6__AT_N9) (and (kSTARTED__AT_N9) (kVISITED_N6__AT_N9))) ;; Support. 
(when (kAT_N6__AT_N8) (and (kSTARTED__AT_N8) (kVISITED_N6__AT_N8))) ;; Support. 
(when (kAT_N6__AT_N7) (and (kSTARTED__AT_N7) (kVISITED_N6__AT_N7))) ;; Support. 
(when (kAT_N6__AT_N6) (and (kSTARTED__AT_N6) (kVISITED_N6__AT_N6))) ;; Support. 
(when (kAT_N6__AT_N5) (and (kSTARTED__AT_N5) (kVISITED_N6__AT_N5))) ;; Support. 
(when (kAT_N6__AT_N4) (and (kSTARTED__AT_N4) (kVISITED_N6__AT_N4))) ;; Support. 
(when (kAT_N6__AT_N3) (and (kSTARTED__AT_N3) (kVISITED_N6__AT_N3))) ;; Support. 
(when (kAT_N6__AT_N20) (and (kSTARTED__AT_N20) (kVISITED_N6__AT_N20))) ;; Support. 
(when (kAT_N6__AT_N2) (and (kSTARTED__AT_N2) (kVISITED_N6__AT_N2))) ;; Support. 
(when (kAT_N6__AT_N19) (and (kSTARTED__AT_N19) (kVISITED_N6__AT_N19))) ;; Support. 
(when (kAT_N6__AT_N18) (and (kSTARTED__AT_N18) (kVISITED_N6__AT_N18))) ;; Support. 
(when (kAT_N6__AT_N17) (and (kSTARTED__AT_N17) (kVISITED_N6__AT_N17))) ;; Support. 
(when (kAT_N6__AT_N16) (and (kSTARTED__AT_N16) (kVISITED_N6__AT_N16))) ;; Support. 
(when (kAT_N6__AT_N15) (and (kSTARTED__AT_N15) (kVISITED_N6__AT_N15))) ;; Support. 
(when (kAT_N6__AT_N14) (and (kSTARTED__AT_N14) (kVISITED_N6__AT_N14))) ;; Support. 
(when (kAT_N6__AT_N13) (and (kSTARTED__AT_N13) (kVISITED_N6__AT_N13))) ;; Support. 
(when (kAT_N6__AT_N12) (and (kSTARTED__AT_N12) (kVISITED_N6__AT_N12))) ;; Support. 
(when (kAT_N6__AT_N11) (and (kSTARTED__AT_N11) (kVISITED_N6__AT_N11))) ;; Support. 
(when (kAT_N6__AT_N1) (and (kSTARTED__AT_N1) (kVISITED_N6__AT_N1))) ;; Support. 
(when (kAT_N6__AT_N10) (and (kSTARTED__AT_N10) (kVISITED_N6__AT_N10))) ;; Support. 
))
(:action START_N5
:parameters ()
:precondition (and)

:effect (and 
(when (kAT_N5) (and (kSTARTED) (kVISITED_N5))) ;; Support. 
(when (kAT_N5__AT_N9) (and (kSTARTED__AT_N9) (kVISITED_N5__AT_N9))) ;; Support. 
(when (kAT_N5__AT_N8) (and (kSTARTED__AT_N8) (kVISITED_N5__AT_N8))) ;; Support. 
(when (kAT_N5__AT_N7) (and (kSTARTED__AT_N7) (kVISITED_N5__AT_N7))) ;; Support. 
(when (kAT_N5__AT_N6) (and (kSTARTED__AT_N6) (kVISITED_N5__AT_N6))) ;; Support. 
(when (kAT_N5__AT_N5) (and (kSTARTED__AT_N5) (kVISITED_N5__AT_N5))) ;; Support. 
(when (kAT_N5__AT_N4) (and (kSTARTED__AT_N4) (kVISITED_N5__AT_N4))) ;; Support. 
(when (kAT_N5__AT_N3) (and (kSTARTED__AT_N3) (kVISITED_N5__AT_N3))) ;; Support. 
(when (kAT_N5__AT_N20) (and (kSTARTED__AT_N20) (kVISITED_N5__AT_N20))) ;; Support. 
(when (kAT_N5__AT_N2) (and (kSTARTED__AT_N2) (kVISITED_N5__AT_N2))) ;; Support. 
(when (kAT_N5__AT_N19) (and (kSTARTED__AT_N19) (kVISITED_N5__AT_N19))) ;; Support. 
(when (kAT_N5__AT_N18) (and (kSTARTED__AT_N18) (kVISITED_N5__AT_N18))) ;; Support. 
(when (kAT_N5__AT_N17) (and (kSTARTED__AT_N17) (kVISITED_N5__AT_N17))) ;; Support. 
(when (kAT_N5__AT_N16) (and (kSTARTED__AT_N16) (kVISITED_N5__AT_N16))) ;; Support. 
(when (kAT_N5__AT_N15) (and (kSTARTED__AT_N15) (kVISITED_N5__AT_N15))) ;; Support. 
(when (kAT_N5__AT_N14) (and (kSTARTED__AT_N14) (kVISITED_N5__AT_N14))) ;; Support. 
(when (kAT_N5__AT_N13) (and (kSTARTED__AT_N13) (kVISITED_N5__AT_N13))) ;; Support. 
(when (kAT_N5__AT_N12) (and (kSTARTED__AT_N12) (kVISITED_N5__AT_N12))) ;; Support. 
(when (kAT_N5__AT_N11) (and (kSTARTED__AT_N11) (kVISITED_N5__AT_N11))) ;; Support. 
(when (kAT_N5__AT_N1) (and (kSTARTED__AT_N1) (kVISITED_N5__AT_N1))) ;; Support. 
(when (kAT_N5__AT_N10) (and (kSTARTED__AT_N10) (kVISITED_N5__AT_N10))) ;; Support. 
))
(:action START_N4
:parameters ()
:precondition (and)

:effect (and 
(when (kAT_N4) (and (kSTARTED) (kVISITED_N4))) ;; Support. 
(when (kAT_N4__AT_N9) (and (kSTARTED__AT_N9) (kVISITED_N4__AT_N9))) ;; Support. 
(when (kAT_N4__AT_N8) (and (kSTARTED__AT_N8) (kVISITED_N4__AT_N8))) ;; Support. 
(when (kAT_N4__AT_N7) (and (kSTARTED__AT_N7) (kVISITED_N4__AT_N7))) ;; Support. 
(when (kAT_N4__AT_N6) (and (kSTARTED__AT_N6) (kVISITED_N4__AT_N6))) ;; Support. 
(when (kAT_N4__AT_N5) (and (kSTARTED__AT_N5) (kVISITED_N4__AT_N5))) ;; Support. 
(when (kAT_N4__AT_N4) (and (kSTARTED__AT_N4) (kVISITED_N4__AT_N4))) ;; Support. 
(when (kAT_N4__AT_N3) (and (kSTARTED__AT_N3) (kVISITED_N4__AT_N3))) ;; Support. 
(when (kAT_N4__AT_N20) (and (kSTARTED__AT_N20) (kVISITED_N4__AT_N20))) ;; Support. 
(when (kAT_N4__AT_N2) (and (kSTARTED__AT_N2) (kVISITED_N4__AT_N2))) ;; Support. 
(when (kAT_N4__AT_N19) (and (kSTARTED__AT_N19) (kVISITED_N4__AT_N19))) ;; Support. 
(when (kAT_N4__AT_N18) (and (kSTARTED__AT_N18) (kVISITED_N4__AT_N18))) ;; Support. 
(when (kAT_N4__AT_N17) (and (kSTARTED__AT_N17) (kVISITED_N4__AT_N17))) ;; Support. 
(when (kAT_N4__AT_N16) (and (kSTARTED__AT_N16) (kVISITED_N4__AT_N16))) ;; Support. 
(when (kAT_N4__AT_N15) (and (kSTARTED__AT_N15) (kVISITED_N4__AT_N15))) ;; Support. 
(when (kAT_N4__AT_N14) (and (kSTARTED__AT_N14) (kVISITED_N4__AT_N14))) ;; Support. 
(when (kAT_N4__AT_N13) (and (kSTARTED__AT_N13) (kVISITED_N4__AT_N13))) ;; Support. 
(when (kAT_N4__AT_N12) (and (kSTARTED__AT_N12) (kVISITED_N4__AT_N12))) ;; Support. 
(when (kAT_N4__AT_N11) (and (kSTARTED__AT_N11) (kVISITED_N4__AT_N11))) ;; Support. 
(when (kAT_N4__AT_N1) (and (kSTARTED__AT_N1) (kVISITED_N4__AT_N1))) ;; Support. 
(when (kAT_N4__AT_N10) (and (kSTARTED__AT_N10) (kVISITED_N4__AT_N10))) ;; Support. 
))
(:action START_N3
:parameters ()
:precondition (and)

:effect (and 
(when (kAT_N3) (and (kSTARTED) (kVISITED_N3))) ;; Support. 
(when (kAT_N3__AT_N9) (and (kSTARTED__AT_N9) (kVISITED_N3__AT_N9))) ;; Support. 
(when (kAT_N3__AT_N8) (and (kSTARTED__AT_N8) (kVISITED_N3__AT_N8))) ;; Support. 
(when (kAT_N3__AT_N7) (and (kSTARTED__AT_N7) (kVISITED_N3__AT_N7))) ;; Support. 
(when (kAT_N3__AT_N6) (and (kSTARTED__AT_N6) (kVISITED_N3__AT_N6))) ;; Support. 
(when (kAT_N3__AT_N5) (and (kSTARTED__AT_N5) (kVISITED_N3__AT_N5))) ;; Support. 
(when (kAT_N3__AT_N4) (and (kSTARTED__AT_N4) (kVISITED_N3__AT_N4))) ;; Support. 
(when (kAT_N3__AT_N3) (and (kSTARTED__AT_N3) (kVISITED_N3__AT_N3))) ;; Support. 
(when (kAT_N3__AT_N20) (and (kSTARTED__AT_N20) (kVISITED_N3__AT_N20))) ;; Support. 
(when (kAT_N3__AT_N2) (and (kSTARTED__AT_N2) (kVISITED_N3__AT_N2))) ;; Support. 
(when (kAT_N3__AT_N19) (and (kSTARTED__AT_N19) (kVISITED_N3__AT_N19))) ;; Support. 
(when (kAT_N3__AT_N18) (and (kSTARTED__AT_N18) (kVISITED_N3__AT_N18))) ;; Support. 
(when (kAT_N3__AT_N17) (and (kSTARTED__AT_N17) (kVISITED_N3__AT_N17))) ;; Support. 
(when (kAT_N3__AT_N16) (and (kSTARTED__AT_N16) (kVISITED_N3__AT_N16))) ;; Support. 
(when (kAT_N3__AT_N15) (and (kSTARTED__AT_N15) (kVISITED_N3__AT_N15))) ;; Support. 
(when (kAT_N3__AT_N14) (and (kSTARTED__AT_N14) (kVISITED_N3__AT_N14))) ;; Support. 
(when (kAT_N3__AT_N13) (and (kSTARTED__AT_N13) (kVISITED_N3__AT_N13))) ;; Support. 
(when (kAT_N3__AT_N12) (and (kSTARTED__AT_N12) (kVISITED_N3__AT_N12))) ;; Support. 
(when (kAT_N3__AT_N11) (and (kSTARTED__AT_N11) (kVISITED_N3__AT_N11))) ;; Support. 
(when (kAT_N3__AT_N1) (and (kSTARTED__AT_N1) (kVISITED_N3__AT_N1))) ;; Support. 
(when (kAT_N3__AT_N10) (and (kSTARTED__AT_N10) (kVISITED_N3__AT_N10))) ;; Support. 
))
(:action START_N20
:parameters ()
:precondition (and)

:effect (and 
(when (kAT_N20) (and (kSTARTED) (kVISITED_N20))) ;; Support. 
(when (kAT_N20__AT_N9) (and (kSTARTED__AT_N9) (kVISITED_N20__AT_N9))) ;; Support. 
(when (kAT_N20__AT_N8) (and (kSTARTED__AT_N8) (kVISITED_N20__AT_N8))) ;; Support. 
(when (kAT_N20__AT_N7) (and (kSTARTED__AT_N7) (kVISITED_N20__AT_N7))) ;; Support. 
(when (kAT_N20__AT_N6) (and (kSTARTED__AT_N6) (kVISITED_N20__AT_N6))) ;; Support. 
(when (kAT_N20__AT_N5) (and (kSTARTED__AT_N5) (kVISITED_N20__AT_N5))) ;; Support. 
(when (kAT_N20__AT_N4) (and (kSTARTED__AT_N4) (kVISITED_N20__AT_N4))) ;; Support. 
(when (kAT_N20__AT_N3) (and (kSTARTED__AT_N3) (kVISITED_N20__AT_N3))) ;; Support. 
(when (kAT_N20__AT_N20) (and (kSTARTED__AT_N20) (kVISITED_N20__AT_N20))) ;; Support. 
(when (kAT_N20__AT_N2) (and (kSTARTED__AT_N2) (kVISITED_N20__AT_N2))) ;; Support. 
(when (kAT_N20__AT_N19) (and (kSTARTED__AT_N19) (kVISITED_N20__AT_N19))) ;; Support. 
(when (kAT_N20__AT_N18) (and (kSTARTED__AT_N18) (kVISITED_N20__AT_N18))) ;; Support. 
(when (kAT_N20__AT_N17) (and (kSTARTED__AT_N17) (kVISITED_N20__AT_N17))) ;; Support. 
(when (kAT_N20__AT_N16) (and (kSTARTED__AT_N16) (kVISITED_N20__AT_N16))) ;; Support. 
(when (kAT_N20__AT_N15) (and (kSTARTED__AT_N15) (kVISITED_N20__AT_N15))) ;; Support. 
(when (kAT_N20__AT_N14) (and (kSTARTED__AT_N14) (kVISITED_N20__AT_N14))) ;; Support. 
(when (kAT_N20__AT_N13) (and (kSTARTED__AT_N13) (kVISITED_N20__AT_N13))) ;; Support. 
(when (kAT_N20__AT_N12) (and (kSTARTED__AT_N12) (kVISITED_N20__AT_N12))) ;; Support. 
(when (kAT_N20__AT_N11) (and (kSTARTED__AT_N11) (kVISITED_N20__AT_N11))) ;; Support. 
(when (kAT_N20__AT_N1) (and (kSTARTED__AT_N1) (kVISITED_N20__AT_N1))) ;; Support. 
(when (kAT_N20__AT_N10) (and (kSTARTED__AT_N10) (kVISITED_N20__AT_N10))) ;; Support. 
))
(:action START_N2
:parameters ()
:precondition (and)

:effect (and 
(when (kAT_N2) (and (kSTARTED) (kVISITED_N2))) ;; Support. 
(when (kAT_N2__AT_N9) (and (kSTARTED__AT_N9) (kVISITED_N2__AT_N9))) ;; Support. 
(when (kAT_N2__AT_N8) (and (kSTARTED__AT_N8) (kVISITED_N2__AT_N8))) ;; Support. 
(when (kAT_N2__AT_N7) (and (kSTARTED__AT_N7) (kVISITED_N2__AT_N7))) ;; Support. 
(when (kAT_N2__AT_N6) (and (kSTARTED__AT_N6) (kVISITED_N2__AT_N6))) ;; Support. 
(when (kAT_N2__AT_N5) (and (kSTARTED__AT_N5) (kVISITED_N2__AT_N5))) ;; Support. 
(when (kAT_N2__AT_N4) (and (kSTARTED__AT_N4) (kVISITED_N2__AT_N4))) ;; Support. 
(when (kAT_N2__AT_N3) (and (kSTARTED__AT_N3) (kVISITED_N2__AT_N3))) ;; Support. 
(when (kAT_N2__AT_N20) (and (kSTARTED__AT_N20) (kVISITED_N2__AT_N20))) ;; Support. 
(when (kAT_N2__AT_N2) (and (kSTARTED__AT_N2) (kVISITED_N2__AT_N2))) ;; Support. 
(when (kAT_N2__AT_N19) (and (kSTARTED__AT_N19) (kVISITED_N2__AT_N19))) ;; Support. 
(when (kAT_N2__AT_N18) (and (kSTARTED__AT_N18) (kVISITED_N2__AT_N18))) ;; Support. 
(when (kAT_N2__AT_N17) (and (kSTARTED__AT_N17) (kVISITED_N2__AT_N17))) ;; Support. 
(when (kAT_N2__AT_N16) (and (kSTARTED__AT_N16) (kVISITED_N2__AT_N16))) ;; Support. 
(when (kAT_N2__AT_N15) (and (kSTARTED__AT_N15) (kVISITED_N2__AT_N15))) ;; Support. 
(when (kAT_N2__AT_N14) (and (kSTARTED__AT_N14) (kVISITED_N2__AT_N14))) ;; Support. 
(when (kAT_N2__AT_N13) (and (kSTARTED__AT_N13) (kVISITED_N2__AT_N13))) ;; Support. 
(when (kAT_N2__AT_N12) (and (kSTARTED__AT_N12) (kVISITED_N2__AT_N12))) ;; Support. 
(when (kAT_N2__AT_N11) (and (kSTARTED__AT_N11) (kVISITED_N2__AT_N11))) ;; Support. 
(when (kAT_N2__AT_N1) (and (kSTARTED__AT_N1) (kVISITED_N2__AT_N1))) ;; Support. 
(when (kAT_N2__AT_N10) (and (kSTARTED__AT_N10) (kVISITED_N2__AT_N10))) ;; Support. 
))
(:action START_N19
:parameters ()
:precondition (and)

:effect (and 
(when (kAT_N19) (and (kSTARTED) (kVISITED_N19))) ;; Support. 
(when (kAT_N19__AT_N9) (and (kSTARTED__AT_N9) (kVISITED_N19__AT_N9))) ;; Support. 
(when (kAT_N19__AT_N8) (and (kSTARTED__AT_N8) (kVISITED_N19__AT_N8))) ;; Support. 
(when (kAT_N19__AT_N7) (and (kSTARTED__AT_N7) (kVISITED_N19__AT_N7))) ;; Support. 
(when (kAT_N19__AT_N6) (and (kSTARTED__AT_N6) (kVISITED_N19__AT_N6))) ;; Support. 
(when (kAT_N19__AT_N5) (and (kSTARTED__AT_N5) (kVISITED_N19__AT_N5))) ;; Support. 
(when (kAT_N19__AT_N4) (and (kSTARTED__AT_N4) (kVISITED_N19__AT_N4))) ;; Support. 
(when (kAT_N19__AT_N3) (and (kSTARTED__AT_N3) (kVISITED_N19__AT_N3))) ;; Support. 
(when (kAT_N19__AT_N20) (and (kSTARTED__AT_N20) (kVISITED_N19__AT_N20))) ;; Support. 
(when (kAT_N19__AT_N2) (and (kSTARTED__AT_N2) (kVISITED_N19__AT_N2))) ;; Support. 
(when (kAT_N19__AT_N19) (and (kSTARTED__AT_N19) (kVISITED_N19__AT_N19))) ;; Support. 
(when (kAT_N19__AT_N18) (and (kSTARTED__AT_N18) (kVISITED_N19__AT_N18))) ;; Support. 
(when (kAT_N19__AT_N17) (and (kSTARTED__AT_N17) (kVISITED_N19__AT_N17))) ;; Support. 
(when (kAT_N19__AT_N16) (and (kSTARTED__AT_N16) (kVISITED_N19__AT_N16))) ;; Support. 
(when (kAT_N19__AT_N15) (and (kSTARTED__AT_N15) (kVISITED_N19__AT_N15))) ;; Support. 
(when (kAT_N19__AT_N14) (and (kSTARTED__AT_N14) (kVISITED_N19__AT_N14))) ;; Support. 
(when (kAT_N19__AT_N13) (and (kSTARTED__AT_N13) (kVISITED_N19__AT_N13))) ;; Support. 
(when (kAT_N19__AT_N12) (and (kSTARTED__AT_N12) (kVISITED_N19__AT_N12))) ;; Support. 
(when (kAT_N19__AT_N11) (and (kSTARTED__AT_N11) (kVISITED_N19__AT_N11))) ;; Support. 
(when (kAT_N19__AT_N1) (and (kSTARTED__AT_N1) (kVISITED_N19__AT_N1))) ;; Support. 
(when (kAT_N19__AT_N10) (and (kSTARTED__AT_N10) (kVISITED_N19__AT_N10))) ;; Support. 
))
(:action START_N18
:parameters ()
:precondition (and)

:effect (and 
(when (kAT_N18) (and (kSTARTED) (kVISITED_N18))) ;; Support. 
(when (kAT_N18__AT_N9) (and (kSTARTED__AT_N9) (kVISITED_N18__AT_N9))) ;; Support. 
(when (kAT_N18__AT_N8) (and (kSTARTED__AT_N8) (kVISITED_N18__AT_N8))) ;; Support. 
(when (kAT_N18__AT_N7) (and (kSTARTED__AT_N7) (kVISITED_N18__AT_N7))) ;; Support. 
(when (kAT_N18__AT_N6) (and (kSTARTED__AT_N6) (kVISITED_N18__AT_N6))) ;; Support. 
(when (kAT_N18__AT_N5) (and (kSTARTED__AT_N5) (kVISITED_N18__AT_N5))) ;; Support. 
(when (kAT_N18__AT_N4) (and (kSTARTED__AT_N4) (kVISITED_N18__AT_N4))) ;; Support. 
(when (kAT_N18__AT_N3) (and (kSTARTED__AT_N3) (kVISITED_N18__AT_N3))) ;; Support. 
(when (kAT_N18__AT_N20) (and (kSTARTED__AT_N20) (kVISITED_N18__AT_N20))) ;; Support. 
(when (kAT_N18__AT_N2) (and (kSTARTED__AT_N2) (kVISITED_N18__AT_N2))) ;; Support. 
(when (kAT_N18__AT_N19) (and (kSTARTED__AT_N19) (kVISITED_N18__AT_N19))) ;; Support. 
(when (kAT_N18__AT_N18) (and (kSTARTED__AT_N18) (kVISITED_N18__AT_N18))) ;; Support. 
(when (kAT_N18__AT_N17) (and (kSTARTED__AT_N17) (kVISITED_N18__AT_N17))) ;; Support. 
(when (kAT_N18__AT_N16) (and (kSTARTED__AT_N16) (kVISITED_N18__AT_N16))) ;; Support. 
(when (kAT_N18__AT_N15) (and (kSTARTED__AT_N15) (kVISITED_N18__AT_N15))) ;; Support. 
(when (kAT_N18__AT_N14) (and (kSTARTED__AT_N14) (kVISITED_N18__AT_N14))) ;; Support. 
(when (kAT_N18__AT_N13) (and (kSTARTED__AT_N13) (kVISITED_N18__AT_N13))) ;; Support. 
(when (kAT_N18__AT_N12) (and (kSTARTED__AT_N12) (kVISITED_N18__AT_N12))) ;; Support. 
(when (kAT_N18__AT_N11) (and (kSTARTED__AT_N11) (kVISITED_N18__AT_N11))) ;; Support. 
(when (kAT_N18__AT_N1) (and (kSTARTED__AT_N1) (kVISITED_N18__AT_N1))) ;; Support. 
(when (kAT_N18__AT_N10) (and (kSTARTED__AT_N10) (kVISITED_N18__AT_N10))) ;; Support. 
))
(:action START_N17
:parameters ()
:precondition (and)

:effect (and 
(when (kAT_N17) (and (kSTARTED) (kVISITED_N17))) ;; Support. 
(when (kAT_N17__AT_N9) (and (kSTARTED__AT_N9) (kVISITED_N17__AT_N9))) ;; Support. 
(when (kAT_N17__AT_N8) (and (kSTARTED__AT_N8) (kVISITED_N17__AT_N8))) ;; Support. 
(when (kAT_N17__AT_N7) (and (kSTARTED__AT_N7) (kVISITED_N17__AT_N7))) ;; Support. 
(when (kAT_N17__AT_N6) (and (kSTARTED__AT_N6) (kVISITED_N17__AT_N6))) ;; Support. 
(when (kAT_N17__AT_N5) (and (kSTARTED__AT_N5) (kVISITED_N17__AT_N5))) ;; Support. 
(when (kAT_N17__AT_N4) (and (kSTARTED__AT_N4) (kVISITED_N17__AT_N4))) ;; Support. 
(when (kAT_N17__AT_N3) (and (kSTARTED__AT_N3) (kVISITED_N17__AT_N3))) ;; Support. 
(when (kAT_N17__AT_N20) (and (kSTARTED__AT_N20) (kVISITED_N17__AT_N20))) ;; Support. 
(when (kAT_N17__AT_N2) (and (kSTARTED__AT_N2) (kVISITED_N17__AT_N2))) ;; Support. 
(when (kAT_N17__AT_N19) (and (kSTARTED__AT_N19) (kVISITED_N17__AT_N19))) ;; Support. 
(when (kAT_N17__AT_N18) (and (kSTARTED__AT_N18) (kVISITED_N17__AT_N18))) ;; Support. 
(when (kAT_N17__AT_N17) (and (kSTARTED__AT_N17) (kVISITED_N17__AT_N17))) ;; Support. 
(when (kAT_N17__AT_N16) (and (kSTARTED__AT_N16) (kVISITED_N17__AT_N16))) ;; Support. 
(when (kAT_N17__AT_N15) (and (kSTARTED__AT_N15) (kVISITED_N17__AT_N15))) ;; Support. 
(when (kAT_N17__AT_N14) (and (kSTARTED__AT_N14) (kVISITED_N17__AT_N14))) ;; Support. 
(when (kAT_N17__AT_N13) (and (kSTARTED__AT_N13) (kVISITED_N17__AT_N13))) ;; Support. 
(when (kAT_N17__AT_N12) (and (kSTARTED__AT_N12) (kVISITED_N17__AT_N12))) ;; Support. 
(when (kAT_N17__AT_N11) (and (kSTARTED__AT_N11) (kVISITED_N17__AT_N11))) ;; Support. 
(when (kAT_N17__AT_N1) (and (kSTARTED__AT_N1) (kVISITED_N17__AT_N1))) ;; Support. 
(when (kAT_N17__AT_N10) (and (kSTARTED__AT_N10) (kVISITED_N17__AT_N10))) ;; Support. 
))
(:action START_N16
:parameters ()
:precondition (and)

:effect (and 
(when (kAT_N16) (and (kSTARTED) (kVISITED_N16))) ;; Support. 
(when (kAT_N16__AT_N9) (and (kSTARTED__AT_N9) (kVISITED_N16__AT_N9))) ;; Support. 
(when (kAT_N16__AT_N8) (and (kSTARTED__AT_N8) (kVISITED_N16__AT_N8))) ;; Support. 
(when (kAT_N16__AT_N7) (and (kSTARTED__AT_N7) (kVISITED_N16__AT_N7))) ;; Support. 
(when (kAT_N16__AT_N6) (and (kSTARTED__AT_N6) (kVISITED_N16__AT_N6))) ;; Support. 
(when (kAT_N16__AT_N5) (and (kSTARTED__AT_N5) (kVISITED_N16__AT_N5))) ;; Support. 
(when (kAT_N16__AT_N4) (and (kSTARTED__AT_N4) (kVISITED_N16__AT_N4))) ;; Support. 
(when (kAT_N16__AT_N3) (and (kSTARTED__AT_N3) (kVISITED_N16__AT_N3))) ;; Support. 
(when (kAT_N16__AT_N20) (and (kSTARTED__AT_N20) (kVISITED_N16__AT_N20))) ;; Support. 
(when (kAT_N16__AT_N2) (and (kSTARTED__AT_N2) (kVISITED_N16__AT_N2))) ;; Support. 
(when (kAT_N16__AT_N19) (and (kSTARTED__AT_N19) (kVISITED_N16__AT_N19))) ;; Support. 
(when (kAT_N16__AT_N18) (and (kSTARTED__AT_N18) (kVISITED_N16__AT_N18))) ;; Support. 
(when (kAT_N16__AT_N17) (and (kSTARTED__AT_N17) (kVISITED_N16__AT_N17))) ;; Support. 
(when (kAT_N16__AT_N16) (and (kSTARTED__AT_N16) (kVISITED_N16__AT_N16))) ;; Support. 
(when (kAT_N16__AT_N15) (and (kSTARTED__AT_N15) (kVISITED_N16__AT_N15))) ;; Support. 
(when (kAT_N16__AT_N14) (and (kSTARTED__AT_N14) (kVISITED_N16__AT_N14))) ;; Support. 
(when (kAT_N16__AT_N13) (and (kSTARTED__AT_N13) (kVISITED_N16__AT_N13))) ;; Support. 
(when (kAT_N16__AT_N12) (and (kSTARTED__AT_N12) (kVISITED_N16__AT_N12))) ;; Support. 
(when (kAT_N16__AT_N11) (and (kSTARTED__AT_N11) (kVISITED_N16__AT_N11))) ;; Support. 
(when (kAT_N16__AT_N1) (and (kSTARTED__AT_N1) (kVISITED_N16__AT_N1))) ;; Support. 
(when (kAT_N16__AT_N10) (and (kSTARTED__AT_N10) (kVISITED_N16__AT_N10))) ;; Support. 
))
(:action START_N15
:parameters ()
:precondition (and)

:effect (and 
(when (kAT_N15) (and (kSTARTED) (kVISITED_N15))) ;; Support. 
(when (kAT_N15__AT_N9) (and (kSTARTED__AT_N9) (kVISITED_N15__AT_N9))) ;; Support. 
(when (kAT_N15__AT_N8) (and (kSTARTED__AT_N8) (kVISITED_N15__AT_N8))) ;; Support. 
(when (kAT_N15__AT_N7) (and (kSTARTED__AT_N7) (kVISITED_N15__AT_N7))) ;; Support. 
(when (kAT_N15__AT_N6) (and (kSTARTED__AT_N6) (kVISITED_N15__AT_N6))) ;; Support. 
(when (kAT_N15__AT_N5) (and (kSTARTED__AT_N5) (kVISITED_N15__AT_N5))) ;; Support. 
(when (kAT_N15__AT_N4) (and (kSTARTED__AT_N4) (kVISITED_N15__AT_N4))) ;; Support. 
(when (kAT_N15__AT_N3) (and (kSTARTED__AT_N3) (kVISITED_N15__AT_N3))) ;; Support. 
(when (kAT_N15__AT_N20) (and (kSTARTED__AT_N20) (kVISITED_N15__AT_N20))) ;; Support. 
(when (kAT_N15__AT_N2) (and (kSTARTED__AT_N2) (kVISITED_N15__AT_N2))) ;; Support. 
(when (kAT_N15__AT_N19) (and (kSTARTED__AT_N19) (kVISITED_N15__AT_N19))) ;; Support. 
(when (kAT_N15__AT_N18) (and (kSTARTED__AT_N18) (kVISITED_N15__AT_N18))) ;; Support. 
(when (kAT_N15__AT_N17) (and (kSTARTED__AT_N17) (kVISITED_N15__AT_N17))) ;; Support. 
(when (kAT_N15__AT_N16) (and (kSTARTED__AT_N16) (kVISITED_N15__AT_N16))) ;; Support. 
(when (kAT_N15__AT_N15) (and (kSTARTED__AT_N15) (kVISITED_N15__AT_N15))) ;; Support. 
(when (kAT_N15__AT_N14) (and (kSTARTED__AT_N14) (kVISITED_N15__AT_N14))) ;; Support. 
(when (kAT_N15__AT_N13) (and (kSTARTED__AT_N13) (kVISITED_N15__AT_N13))) ;; Support. 
(when (kAT_N15__AT_N12) (and (kSTARTED__AT_N12) (kVISITED_N15__AT_N12))) ;; Support. 
(when (kAT_N15__AT_N11) (and (kSTARTED__AT_N11) (kVISITED_N15__AT_N11))) ;; Support. 
(when (kAT_N15__AT_N1) (and (kSTARTED__AT_N1) (kVISITED_N15__AT_N1))) ;; Support. 
(when (kAT_N15__AT_N10) (and (kSTARTED__AT_N10) (kVISITED_N15__AT_N10))) ;; Support. 
))
(:action START_N14
:parameters ()
:precondition (and)

:effect (and 
(when (kAT_N14) (and (kSTARTED) (kVISITED_N14))) ;; Support. 
(when (kAT_N14__AT_N9) (and (kSTARTED__AT_N9) (kVISITED_N14__AT_N9))) ;; Support. 
(when (kAT_N14__AT_N8) (and (kSTARTED__AT_N8) (kVISITED_N14__AT_N8))) ;; Support. 
(when (kAT_N14__AT_N7) (and (kSTARTED__AT_N7) (kVISITED_N14__AT_N7))) ;; Support. 
(when (kAT_N14__AT_N6) (and (kSTARTED__AT_N6) (kVISITED_N14__AT_N6))) ;; Support. 
(when (kAT_N14__AT_N5) (and (kSTARTED__AT_N5) (kVISITED_N14__AT_N5))) ;; Support. 
(when (kAT_N14__AT_N4) (and (kSTARTED__AT_N4) (kVISITED_N14__AT_N4))) ;; Support. 
(when (kAT_N14__AT_N3) (and (kSTARTED__AT_N3) (kVISITED_N14__AT_N3))) ;; Support. 
(when (kAT_N14__AT_N20) (and (kSTARTED__AT_N20) (kVISITED_N14__AT_N20))) ;; Support. 
(when (kAT_N14__AT_N2) (and (kSTARTED__AT_N2) (kVISITED_N14__AT_N2))) ;; Support. 
(when (kAT_N14__AT_N19) (and (kSTARTED__AT_N19) (kVISITED_N14__AT_N19))) ;; Support. 
(when (kAT_N14__AT_N18) (and (kSTARTED__AT_N18) (kVISITED_N14__AT_N18))) ;; Support. 
(when (kAT_N14__AT_N17) (and (kSTARTED__AT_N17) (kVISITED_N14__AT_N17))) ;; Support. 
(when (kAT_N14__AT_N16) (and (kSTARTED__AT_N16) (kVISITED_N14__AT_N16))) ;; Support. 
(when (kAT_N14__AT_N15) (and (kSTARTED__AT_N15) (kVISITED_N14__AT_N15))) ;; Support. 
(when (kAT_N14__AT_N14) (and (kSTARTED__AT_N14) (kVISITED_N14__AT_N14))) ;; Support. 
(when (kAT_N14__AT_N13) (and (kSTARTED__AT_N13) (kVISITED_N14__AT_N13))) ;; Support. 
(when (kAT_N14__AT_N12) (and (kSTARTED__AT_N12) (kVISITED_N14__AT_N12))) ;; Support. 
(when (kAT_N14__AT_N11) (and (kSTARTED__AT_N11) (kVISITED_N14__AT_N11))) ;; Support. 
(when (kAT_N14__AT_N1) (and (kSTARTED__AT_N1) (kVISITED_N14__AT_N1))) ;; Support. 
(when (kAT_N14__AT_N10) (and (kSTARTED__AT_N10) (kVISITED_N14__AT_N10))) ;; Support. 
))
(:action START_N13
:parameters ()
:precondition (and)

:effect (and 
(when (kAT_N13) (and (kSTARTED) (kVISITED_N13))) ;; Support. 
(when (kAT_N13__AT_N9) (and (kSTARTED__AT_N9) (kVISITED_N13__AT_N9))) ;; Support. 
(when (kAT_N13__AT_N8) (and (kSTARTED__AT_N8) (kVISITED_N13__AT_N8))) ;; Support. 
(when (kAT_N13__AT_N7) (and (kSTARTED__AT_N7) (kVISITED_N13__AT_N7))) ;; Support. 
(when (kAT_N13__AT_N6) (and (kSTARTED__AT_N6) (kVISITED_N13__AT_N6))) ;; Support. 
(when (kAT_N13__AT_N5) (and (kSTARTED__AT_N5) (kVISITED_N13__AT_N5))) ;; Support. 
(when (kAT_N13__AT_N4) (and (kSTARTED__AT_N4) (kVISITED_N13__AT_N4))) ;; Support. 
(when (kAT_N13__AT_N3) (and (kSTARTED__AT_N3) (kVISITED_N13__AT_N3))) ;; Support. 
(when (kAT_N13__AT_N20) (and (kSTARTED__AT_N20) (kVISITED_N13__AT_N20))) ;; Support. 
(when (kAT_N13__AT_N2) (and (kSTARTED__AT_N2) (kVISITED_N13__AT_N2))) ;; Support. 
(when (kAT_N13__AT_N19) (and (kSTARTED__AT_N19) (kVISITED_N13__AT_N19))) ;; Support. 
(when (kAT_N13__AT_N18) (and (kSTARTED__AT_N18) (kVISITED_N13__AT_N18))) ;; Support. 
(when (kAT_N13__AT_N17) (and (kSTARTED__AT_N17) (kVISITED_N13__AT_N17))) ;; Support. 
(when (kAT_N13__AT_N16) (and (kSTARTED__AT_N16) (kVISITED_N13__AT_N16))) ;; Support. 
(when (kAT_N13__AT_N15) (and (kSTARTED__AT_N15) (kVISITED_N13__AT_N15))) ;; Support. 
(when (kAT_N13__AT_N14) (and (kSTARTED__AT_N14) (kVISITED_N13__AT_N14))) ;; Support. 
(when (kAT_N13__AT_N13) (and (kSTARTED__AT_N13) (kVISITED_N13__AT_N13))) ;; Support. 
(when (kAT_N13__AT_N12) (and (kSTARTED__AT_N12) (kVISITED_N13__AT_N12))) ;; Support. 
(when (kAT_N13__AT_N11) (and (kSTARTED__AT_N11) (kVISITED_N13__AT_N11))) ;; Support. 
(when (kAT_N13__AT_N1) (and (kSTARTED__AT_N1) (kVISITED_N13__AT_N1))) ;; Support. 
(when (kAT_N13__AT_N10) (and (kSTARTED__AT_N10) (kVISITED_N13__AT_N10))) ;; Support. 
))
(:action START_N12
:parameters ()
:precondition (and)

:effect (and 
(when (kAT_N12) (and (kSTARTED) (kVISITED_N12))) ;; Support. 
(when (kAT_N12__AT_N9) (and (kSTARTED__AT_N9) (kVISITED_N12__AT_N9))) ;; Support. 
(when (kAT_N12__AT_N8) (and (kSTARTED__AT_N8) (kVISITED_N12__AT_N8))) ;; Support. 
(when (kAT_N12__AT_N7) (and (kSTARTED__AT_N7) (kVISITED_N12__AT_N7))) ;; Support. 
(when (kAT_N12__AT_N6) (and (kSTARTED__AT_N6) (kVISITED_N12__AT_N6))) ;; Support. 
(when (kAT_N12__AT_N5) (and (kSTARTED__AT_N5) (kVISITED_N12__AT_N5))) ;; Support. 
(when (kAT_N12__AT_N4) (and (kSTARTED__AT_N4) (kVISITED_N12__AT_N4))) ;; Support. 
(when (kAT_N12__AT_N3) (and (kSTARTED__AT_N3) (kVISITED_N12__AT_N3))) ;; Support. 
(when (kAT_N12__AT_N20) (and (kSTARTED__AT_N20) (kVISITED_N12__AT_N20))) ;; Support. 
(when (kAT_N12__AT_N2) (and (kSTARTED__AT_N2) (kVISITED_N12__AT_N2))) ;; Support. 
(when (kAT_N12__AT_N19) (and (kSTARTED__AT_N19) (kVISITED_N12__AT_N19))) ;; Support. 
(when (kAT_N12__AT_N18) (and (kSTARTED__AT_N18) (kVISITED_N12__AT_N18))) ;; Support. 
(when (kAT_N12__AT_N17) (and (kSTARTED__AT_N17) (kVISITED_N12__AT_N17))) ;; Support. 
(when (kAT_N12__AT_N16) (and (kSTARTED__AT_N16) (kVISITED_N12__AT_N16))) ;; Support. 
(when (kAT_N12__AT_N15) (and (kSTARTED__AT_N15) (kVISITED_N12__AT_N15))) ;; Support. 
(when (kAT_N12__AT_N14) (and (kSTARTED__AT_N14) (kVISITED_N12__AT_N14))) ;; Support. 
(when (kAT_N12__AT_N13) (and (kSTARTED__AT_N13) (kVISITED_N12__AT_N13))) ;; Support. 
(when (kAT_N12__AT_N12) (and (kSTARTED__AT_N12) (kVISITED_N12__AT_N12))) ;; Support. 
(when (kAT_N12__AT_N11) (and (kSTARTED__AT_N11) (kVISITED_N12__AT_N11))) ;; Support. 
(when (kAT_N12__AT_N1) (and (kSTARTED__AT_N1) (kVISITED_N12__AT_N1))) ;; Support. 
(when (kAT_N12__AT_N10) (and (kSTARTED__AT_N10) (kVISITED_N12__AT_N10))) ;; Support. 
))
(:action START_N11
:parameters ()
:precondition (and)

:effect (and 
(when (kAT_N11) (and (kSTARTED) (kVISITED_N11))) ;; Support. 
(when (kAT_N11__AT_N9) (and (kSTARTED__AT_N9) (kVISITED_N11__AT_N9))) ;; Support. 
(when (kAT_N11__AT_N8) (and (kSTARTED__AT_N8) (kVISITED_N11__AT_N8))) ;; Support. 
(when (kAT_N11__AT_N7) (and (kSTARTED__AT_N7) (kVISITED_N11__AT_N7))) ;; Support. 
(when (kAT_N11__AT_N6) (and (kSTARTED__AT_N6) (kVISITED_N11__AT_N6))) ;; Support. 
(when (kAT_N11__AT_N5) (and (kSTARTED__AT_N5) (kVISITED_N11__AT_N5))) ;; Support. 
(when (kAT_N11__AT_N4) (and (kSTARTED__AT_N4) (kVISITED_N11__AT_N4))) ;; Support. 
(when (kAT_N11__AT_N3) (and (kSTARTED__AT_N3) (kVISITED_N11__AT_N3))) ;; Support. 
(when (kAT_N11__AT_N20) (and (kSTARTED__AT_N20) (kVISITED_N11__AT_N20))) ;; Support. 
(when (kAT_N11__AT_N2) (and (kSTARTED__AT_N2) (kVISITED_N11__AT_N2))) ;; Support. 
(when (kAT_N11__AT_N19) (and (kSTARTED__AT_N19) (kVISITED_N11__AT_N19))) ;; Support. 
(when (kAT_N11__AT_N18) (and (kSTARTED__AT_N18) (kVISITED_N11__AT_N18))) ;; Support. 
(when (kAT_N11__AT_N17) (and (kSTARTED__AT_N17) (kVISITED_N11__AT_N17))) ;; Support. 
(when (kAT_N11__AT_N16) (and (kSTARTED__AT_N16) (kVISITED_N11__AT_N16))) ;; Support. 
(when (kAT_N11__AT_N15) (and (kSTARTED__AT_N15) (kVISITED_N11__AT_N15))) ;; Support. 
(when (kAT_N11__AT_N14) (and (kSTARTED__AT_N14) (kVISITED_N11__AT_N14))) ;; Support. 
(when (kAT_N11__AT_N13) (and (kSTARTED__AT_N13) (kVISITED_N11__AT_N13))) ;; Support. 
(when (kAT_N11__AT_N12) (and (kSTARTED__AT_N12) (kVISITED_N11__AT_N12))) ;; Support. 
(when (kAT_N11__AT_N11) (and (kSTARTED__AT_N11) (kVISITED_N11__AT_N11))) ;; Support. 
(when (kAT_N11__AT_N1) (and (kSTARTED__AT_N1) (kVISITED_N11__AT_N1))) ;; Support. 
(when (kAT_N11__AT_N10) (and (kSTARTED__AT_N10) (kVISITED_N11__AT_N10))) ;; Support. 
))
(:action START_N10
:parameters ()
:precondition (and)

:effect (and 
(when (kAT_N10) (and (kSTARTED) (kVISITED_N10))) ;; Support. 
(when (kAT_N10__AT_N9) (and (kSTARTED__AT_N9) (kVISITED_N10__AT_N9))) ;; Support. 
(when (kAT_N10__AT_N8) (and (kSTARTED__AT_N8) (kVISITED_N10__AT_N8))) ;; Support. 
(when (kAT_N10__AT_N7) (and (kSTARTED__AT_N7) (kVISITED_N10__AT_N7))) ;; Support. 
(when (kAT_N10__AT_N6) (and (kSTARTED__AT_N6) (kVISITED_N10__AT_N6))) ;; Support. 
(when (kAT_N10__AT_N5) (and (kSTARTED__AT_N5) (kVISITED_N10__AT_N5))) ;; Support. 
(when (kAT_N10__AT_N4) (and (kSTARTED__AT_N4) (kVISITED_N10__AT_N4))) ;; Support. 
(when (kAT_N10__AT_N3) (and (kSTARTED__AT_N3) (kVISITED_N10__AT_N3))) ;; Support. 
(when (kAT_N10__AT_N20) (and (kSTARTED__AT_N20) (kVISITED_N10__AT_N20))) ;; Support. 
(when (kAT_N10__AT_N2) (and (kSTARTED__AT_N2) (kVISITED_N10__AT_N2))) ;; Support. 
(when (kAT_N10__AT_N19) (and (kSTARTED__AT_N19) (kVISITED_N10__AT_N19))) ;; Support. 
(when (kAT_N10__AT_N18) (and (kSTARTED__AT_N18) (kVISITED_N10__AT_N18))) ;; Support. 
(when (kAT_N10__AT_N17) (and (kSTARTED__AT_N17) (kVISITED_N10__AT_N17))) ;; Support. 
(when (kAT_N10__AT_N16) (and (kSTARTED__AT_N16) (kVISITED_N10__AT_N16))) ;; Support. 
(when (kAT_N10__AT_N15) (and (kSTARTED__AT_N15) (kVISITED_N10__AT_N15))) ;; Support. 
(when (kAT_N10__AT_N14) (and (kSTARTED__AT_N14) (kVISITED_N10__AT_N14))) ;; Support. 
(when (kAT_N10__AT_N13) (and (kSTARTED__AT_N13) (kVISITED_N10__AT_N13))) ;; Support. 
(when (kAT_N10__AT_N12) (and (kSTARTED__AT_N12) (kVISITED_N10__AT_N12))) ;; Support. 
(when (kAT_N10__AT_N11) (and (kSTARTED__AT_N11) (kVISITED_N10__AT_N11))) ;; Support. 
(when (kAT_N10__AT_N1) (and (kSTARTED__AT_N1) (kVISITED_N10__AT_N1))) ;; Support. 
(when (kAT_N10__AT_N10) (and (kSTARTED__AT_N10) (kVISITED_N10__AT_N10))) ;; Support. 
))
(:action START_N1
:parameters ()
:precondition (and)

:effect (and 
(when (kAT_N1) (and (kSTARTED) (kVISITED_N1))) ;; Support. 
(when (kAT_N1__AT_N9) (and (kSTARTED__AT_N9) (kVISITED_N1__AT_N9))) ;; Support. 
(when (kAT_N1__AT_N8) (and (kSTARTED__AT_N8) (kVISITED_N1__AT_N8))) ;; Support. 
(when (kAT_N1__AT_N7) (and (kSTARTED__AT_N7) (kVISITED_N1__AT_N7))) ;; Support. 
(when (kAT_N1__AT_N6) (and (kSTARTED__AT_N6) (kVISITED_N1__AT_N6))) ;; Support. 
(when (kAT_N1__AT_N5) (and (kSTARTED__AT_N5) (kVISITED_N1__AT_N5))) ;; Support. 
(when (kAT_N1__AT_N4) (and (kSTARTED__AT_N4) (kVISITED_N1__AT_N4))) ;; Support. 
(when (kAT_N1__AT_N3) (and (kSTARTED__AT_N3) (kVISITED_N1__AT_N3))) ;; Support. 
(when (kAT_N1__AT_N20) (and (kSTARTED__AT_N20) (kVISITED_N1__AT_N20))) ;; Support. 
(when (kAT_N1__AT_N2) (and (kSTARTED__AT_N2) (kVISITED_N1__AT_N2))) ;; Support. 
(when (kAT_N1__AT_N19) (and (kSTARTED__AT_N19) (kVISITED_N1__AT_N19))) ;; Support. 
(when (kAT_N1__AT_N18) (and (kSTARTED__AT_N18) (kVISITED_N1__AT_N18))) ;; Support. 
(when (kAT_N1__AT_N17) (and (kSTARTED__AT_N17) (kVISITED_N1__AT_N17))) ;; Support. 
(when (kAT_N1__AT_N16) (and (kSTARTED__AT_N16) (kVISITED_N1__AT_N16))) ;; Support. 
(when (kAT_N1__AT_N15) (and (kSTARTED__AT_N15) (kVISITED_N1__AT_N15))) ;; Support. 
(when (kAT_N1__AT_N14) (and (kSTARTED__AT_N14) (kVISITED_N1__AT_N14))) ;; Support. 
(when (kAT_N1__AT_N13) (and (kSTARTED__AT_N13) (kVISITED_N1__AT_N13))) ;; Support. 
(when (kAT_N1__AT_N12) (and (kSTARTED__AT_N12) (kVISITED_N1__AT_N12))) ;; Support. 
(when (kAT_N1__AT_N11) (and (kSTARTED__AT_N11) (kVISITED_N1__AT_N11))) ;; Support. 
(when (kAT_N1__AT_N1) (and (kSTARTED__AT_N1) (kVISITED_N1__AT_N1))) ;; Support. 
(when (kAT_N1__AT_N10) (and (kSTARTED__AT_N10) (kVISITED_N1__AT_N10))) ;; Support. 
))
(:action MERGE_CLAUSES
:parameters ()
:precondition (and)

:effect (and 
(when(and (k-AT_N5) (k-AT_N10) (k-AT_N14) (k-AT_N11) (k-AT_N7) (k-AT_N3) (k-AT_N8) (k-AT_N1) (k-AT_N18) (k-AT_N13) (k-AT_N19) (k-AT_N17) (k-AT_N9) (k-AT_N16) (k-AT_N6) (k-AT_N12) (k-AT_N15) (k-AT_N2) (k-AT_N20))  (kAT_N4)) ;;reasoning over static clause. 
(when(and (k-AT_N10) (k-AT_N14) (k-AT_N11) (k-AT_N4) (k-AT_N7) (k-AT_N3) (k-AT_N8) (k-AT_N1) (k-AT_N18) (k-AT_N13) (k-AT_N19) (k-AT_N17) (k-AT_N9) (k-AT_N16) (k-AT_N6) (k-AT_N12) (k-AT_N15) (k-AT_N2) (k-AT_N20))  (kAT_N5)) ;;reasoning over static clause. 
(when(and (k-AT_N5) (k-AT_N10) (k-AT_N14) (k-AT_N4) (k-AT_N7) (k-AT_N3) (k-AT_N8) (k-AT_N1) (k-AT_N18) (k-AT_N13) (k-AT_N19) (k-AT_N17) (k-AT_N9) (k-AT_N16) (k-AT_N6) (k-AT_N12) (k-AT_N15) (k-AT_N2) (k-AT_N20))  (kAT_N11)) ;;reasoning over static clause. 
(when(and (k-AT_N5) (k-AT_N10) (k-AT_N11) (k-AT_N4) (k-AT_N7) (k-AT_N3) (k-AT_N8) (k-AT_N1) (k-AT_N18) (k-AT_N13) (k-AT_N19) (k-AT_N17) (k-AT_N9) (k-AT_N16) (k-AT_N6) (k-AT_N12) (k-AT_N15) (k-AT_N2) (k-AT_N20))  (kAT_N14)) ;;reasoning over static clause. 
(when(and (k-AT_N5) (k-AT_N10) (k-AT_N14) (k-AT_N11) (k-AT_N4) (k-AT_N7) (k-AT_N8) (k-AT_N1) (k-AT_N18) (k-AT_N13) (k-AT_N19) (k-AT_N17) (k-AT_N9) (k-AT_N16) (k-AT_N6) (k-AT_N12) (k-AT_N15) (k-AT_N2) (k-AT_N20))  (kAT_N3)) ;;reasoning over static clause. 
(when(and (k-AT_N5) (k-AT_N10) (k-AT_N14) (k-AT_N11) (k-AT_N4) (k-AT_N3) (k-AT_N8) (k-AT_N1) (k-AT_N18) (k-AT_N13) (k-AT_N19) (k-AT_N17) (k-AT_N9) (k-AT_N16) (k-AT_N6) (k-AT_N12) (k-AT_N15) (k-AT_N2) (k-AT_N20))  (kAT_N7)) ;;reasoning over static clause. 
(when(and (k-AT_N5) (k-AT_N10) (k-AT_N14) (k-AT_N11) (k-AT_N4) (k-AT_N7) (k-AT_N3) (k-AT_N1) (k-AT_N18) (k-AT_N13) (k-AT_N19) (k-AT_N17) (k-AT_N9) (k-AT_N16) (k-AT_N6) (k-AT_N12) (k-AT_N15) (k-AT_N2) (k-AT_N20))  (kAT_N8)) ;;reasoning over static clause. 
(when(and (k-AT_N5) (k-AT_N10) (k-AT_N14) (k-AT_N11) (k-AT_N4) (k-AT_N7) (k-AT_N3) (k-AT_N8) (k-AT_N1) (k-AT_N18) (k-AT_N13) (k-AT_N19) (k-AT_N17) (k-AT_N16) (k-AT_N6) (k-AT_N12) (k-AT_N15) (k-AT_N2) (k-AT_N20))  (kAT_N9)) ;;reasoning over static clause. 
(when(and (k-AT_N5) (k-AT_N10) (k-AT_N14) (k-AT_N11) (k-AT_N4) (k-AT_N7) (k-AT_N3) (k-AT_N8) (k-AT_N1) (k-AT_N18) (k-AT_N13) (k-AT_N19) (k-AT_N17) (k-AT_N9) (k-AT_N16) (k-AT_N6) (k-AT_N12) (k-AT_N15) (k-AT_N2))  (kAT_N20)) ;;reasoning over static clause. 
(when(and (k-AT_N5) (k-AT_N10) (k-AT_N14) (k-AT_N11) (k-AT_N4) (k-AT_N7) (k-AT_N3) (k-AT_N8) (k-AT_N1) (k-AT_N18) (k-AT_N13) (k-AT_N19) (k-AT_N17) (k-AT_N9) (k-AT_N16) (k-AT_N6) (k-AT_N12) (k-AT_N15) (k-AT_N20))  (kAT_N2)) ;;reasoning over static clause. 
(when(and (k-AT_N5) (k-AT_N10) (k-AT_N14) (k-AT_N11) (k-AT_N4) (k-AT_N7) (k-AT_N3) (k-AT_N8) (k-AT_N1) (k-AT_N18) (k-AT_N13) (k-AT_N19) (k-AT_N17) (k-AT_N9) (k-AT_N16) (k-AT_N6) (k-AT_N12) (k-AT_N2) (k-AT_N20))  (kAT_N15)) ;;reasoning over static clause. 
(when(and (k-AT_N5) (k-AT_N10) (k-AT_N14) (k-AT_N11) (k-AT_N4) (k-AT_N7) (k-AT_N3) (k-AT_N8) (k-AT_N1) (k-AT_N18) (k-AT_N13) (k-AT_N19) (k-AT_N17) (k-AT_N9) (k-AT_N16) (k-AT_N6) (k-AT_N15) (k-AT_N2) (k-AT_N20))  (kAT_N12)) ;;reasoning over static clause. 
(when(and (k-AT_N5) (k-AT_N10) (k-AT_N14) (k-AT_N11) (k-AT_N4) (k-AT_N7) (k-AT_N3) (k-AT_N8) (k-AT_N1) (k-AT_N18) (k-AT_N13) (k-AT_N19) (k-AT_N17) (k-AT_N9) (k-AT_N16) (k-AT_N12) (k-AT_N15) (k-AT_N2) (k-AT_N20))  (kAT_N6)) ;;reasoning over static clause. 
(when(and (k-AT_N5) (k-AT_N10) (k-AT_N14) (k-AT_N11) (k-AT_N4) (k-AT_N7) (k-AT_N3) (k-AT_N8) (k-AT_N1) (k-AT_N18) (k-AT_N13) (k-AT_N19) (k-AT_N17) (k-AT_N9) (k-AT_N6) (k-AT_N12) (k-AT_N15) (k-AT_N2) (k-AT_N20))  (kAT_N16)) ;;reasoning over static clause. 
(when(and (k-AT_N5) (k-AT_N10) (k-AT_N14) (k-AT_N11) (k-AT_N4) (k-AT_N7) (k-AT_N3) (k-AT_N8) (k-AT_N1) (k-AT_N18) (k-AT_N13) (k-AT_N19) (k-AT_N9) (k-AT_N16) (k-AT_N6) (k-AT_N12) (k-AT_N15) (k-AT_N2) (k-AT_N20))  (kAT_N17)) ;;reasoning over static clause. 
(when(and (k-AT_N5) (k-AT_N10) (k-AT_N14) (k-AT_N11) (k-AT_N4) (k-AT_N7) (k-AT_N3) (k-AT_N8) (k-AT_N1) (k-AT_N18) (k-AT_N13) (k-AT_N17) (k-AT_N9) (k-AT_N16) (k-AT_N6) (k-AT_N12) (k-AT_N15) (k-AT_N2) (k-AT_N20))  (kAT_N19)) ;;reasoning over static clause. 
(when(and (k-AT_N5) (k-AT_N10) (k-AT_N14) (k-AT_N11) (k-AT_N4) (k-AT_N7) (k-AT_N3) (k-AT_N8) (k-AT_N1) (k-AT_N18) (k-AT_N19) (k-AT_N17) (k-AT_N9) (k-AT_N16) (k-AT_N6) (k-AT_N12) (k-AT_N15) (k-AT_N2) (k-AT_N20))  (kAT_N13)) ;;reasoning over static clause. 
(when(and (k-AT_N5) (k-AT_N10) (k-AT_N14) (k-AT_N11) (k-AT_N4) (k-AT_N7) (k-AT_N3) (k-AT_N8) (k-AT_N1) (k-AT_N13) (k-AT_N19) (k-AT_N17) (k-AT_N9) (k-AT_N16) (k-AT_N6) (k-AT_N12) (k-AT_N15) (k-AT_N2) (k-AT_N20))  (kAT_N18)) ;;reasoning over static clause. 
(when(and (k-AT_N5) (k-AT_N10) (k-AT_N14) (k-AT_N11) (k-AT_N4) (k-AT_N7) (k-AT_N3) (k-AT_N8) (k-AT_N18) (k-AT_N13) (k-AT_N19) (k-AT_N17) (k-AT_N9) (k-AT_N16) (k-AT_N6) (k-AT_N12) (k-AT_N15) (k-AT_N2) (k-AT_N20))  (kAT_N1)) ;;reasoning over static clause. 
(when(and (k-AT_N5) (k-AT_N14) (k-AT_N11) (k-AT_N4) (k-AT_N7) (k-AT_N3) (k-AT_N8) (k-AT_N1) (k-AT_N18) (k-AT_N13) (k-AT_N19) (k-AT_N17) (k-AT_N9) (k-AT_N16) (k-AT_N6) (k-AT_N12) (k-AT_N15) (k-AT_N2) (k-AT_N20))  (kAT_N10)) ;;reasoning over static clause. 
))
(:action MERGE_VISITED_N9
:parameters ()
:precondition (and)

:effect (and 
(when(and (kVISITED_N9__AT_N9) (kVISITED_N9__AT_N8) (kVISITED_N9__AT_N7) (kVISITED_N9__AT_N6) (kVISITED_N9__AT_N5) (kVISITED_N9__AT_N4) (kVISITED_N9__AT_N3) (kVISITED_N9__AT_N20) (kVISITED_N9__AT_N2) (kVISITED_N9__AT_N19) (kVISITED_N9__AT_N18) (kVISITED_N9__AT_N17) (kVISITED_N9__AT_N16) (kVISITED_N9__AT_N15) (kVISITED_N9__AT_N14) (kVISITED_N9__AT_N13) (kVISITED_N9__AT_N12) (kVISITED_N9__AT_N11) (kVISITED_N9__AT_N1) (kVISITED_N9__AT_N10))  (kVISITED_N9)) ;;MERGE. 
))
(:action MERGE_VISITED_N8
:parameters ()
:precondition (and)

:effect (and 
(when(and (kVISITED_N8__AT_N9) (kVISITED_N8__AT_N8) (kVISITED_N8__AT_N7) (kVISITED_N8__AT_N6) (kVISITED_N8__AT_N5) (kVISITED_N8__AT_N4) (kVISITED_N8__AT_N3) (kVISITED_N8__AT_N20) (kVISITED_N8__AT_N2) (kVISITED_N8__AT_N19) (kVISITED_N8__AT_N18) (kVISITED_N8__AT_N17) (kVISITED_N8__AT_N16) (kVISITED_N8__AT_N15) (kVISITED_N8__AT_N14) (kVISITED_N8__AT_N13) (kVISITED_N8__AT_N12) (kVISITED_N8__AT_N11) (kVISITED_N8__AT_N1) (kVISITED_N8__AT_N10))  (kVISITED_N8)) ;;MERGE. 
))
(:action MERGE_VISITED_N7
:parameters ()
:precondition (and)

:effect (and 
(when(and (kVISITED_N7__AT_N9) (kVISITED_N7__AT_N8) (kVISITED_N7__AT_N7) (kVISITED_N7__AT_N6) (kVISITED_N7__AT_N5) (kVISITED_N7__AT_N4) (kVISITED_N7__AT_N3) (kVISITED_N7__AT_N20) (kVISITED_N7__AT_N2) (kVISITED_N7__AT_N19) (kVISITED_N7__AT_N18) (kVISITED_N7__AT_N17) (kVISITED_N7__AT_N16) (kVISITED_N7__AT_N15) (kVISITED_N7__AT_N14) (kVISITED_N7__AT_N13) (kVISITED_N7__AT_N12) (kVISITED_N7__AT_N11) (kVISITED_N7__AT_N1) (kVISITED_N7__AT_N10))  (kVISITED_N7)) ;;MERGE. 
))
(:action MERGE_VISITED_N6
:parameters ()
:precondition (and)

:effect (and 
(when(and (kVISITED_N6__AT_N9) (kVISITED_N6__AT_N8) (kVISITED_N6__AT_N7) (kVISITED_N6__AT_N6) (kVISITED_N6__AT_N5) (kVISITED_N6__AT_N4) (kVISITED_N6__AT_N3) (kVISITED_N6__AT_N20) (kVISITED_N6__AT_N2) (kVISITED_N6__AT_N19) (kVISITED_N6__AT_N18) (kVISITED_N6__AT_N17) (kVISITED_N6__AT_N16) (kVISITED_N6__AT_N15) (kVISITED_N6__AT_N14) (kVISITED_N6__AT_N13) (kVISITED_N6__AT_N12) (kVISITED_N6__AT_N11) (kVISITED_N6__AT_N1) (kVISITED_N6__AT_N10))  (kVISITED_N6)) ;;MERGE. 
))
(:action MERGE_VISITED_N5
:parameters ()
:precondition (and)

:effect (and 
(when(and (kVISITED_N5__AT_N9) (kVISITED_N5__AT_N8) (kVISITED_N5__AT_N7) (kVISITED_N5__AT_N6) (kVISITED_N5__AT_N5) (kVISITED_N5__AT_N4) (kVISITED_N5__AT_N3) (kVISITED_N5__AT_N20) (kVISITED_N5__AT_N2) (kVISITED_N5__AT_N19) (kVISITED_N5__AT_N18) (kVISITED_N5__AT_N17) (kVISITED_N5__AT_N16) (kVISITED_N5__AT_N15) (kVISITED_N5__AT_N14) (kVISITED_N5__AT_N13) (kVISITED_N5__AT_N12) (kVISITED_N5__AT_N11) (kVISITED_N5__AT_N1) (kVISITED_N5__AT_N10))  (kVISITED_N5)) ;;MERGE. 
))
(:action MERGE_VISITED_N4
:parameters ()
:precondition (and)

:effect (and 
(when(and (kVISITED_N4__AT_N9) (kVISITED_N4__AT_N8) (kVISITED_N4__AT_N7) (kVISITED_N4__AT_N6) (kVISITED_N4__AT_N5) (kVISITED_N4__AT_N4) (kVISITED_N4__AT_N3) (kVISITED_N4__AT_N20) (kVISITED_N4__AT_N2) (kVISITED_N4__AT_N19) (kVISITED_N4__AT_N18) (kVISITED_N4__AT_N17) (kVISITED_N4__AT_N16) (kVISITED_N4__AT_N15) (kVISITED_N4__AT_N14) (kVISITED_N4__AT_N13) (kVISITED_N4__AT_N12) (kVISITED_N4__AT_N11) (kVISITED_N4__AT_N1) (kVISITED_N4__AT_N10))  (kVISITED_N4)) ;;MERGE. 
))
(:action MERGE_VISITED_N3
:parameters ()
:precondition (and)

:effect (and 
(when(and (kVISITED_N3__AT_N9) (kVISITED_N3__AT_N8) (kVISITED_N3__AT_N7) (kVISITED_N3__AT_N6) (kVISITED_N3__AT_N5) (kVISITED_N3__AT_N4) (kVISITED_N3__AT_N3) (kVISITED_N3__AT_N20) (kVISITED_N3__AT_N2) (kVISITED_N3__AT_N19) (kVISITED_N3__AT_N18) (kVISITED_N3__AT_N17) (kVISITED_N3__AT_N16) (kVISITED_N3__AT_N15) (kVISITED_N3__AT_N14) (kVISITED_N3__AT_N13) (kVISITED_N3__AT_N12) (kVISITED_N3__AT_N11) (kVISITED_N3__AT_N1) (kVISITED_N3__AT_N10))  (kVISITED_N3)) ;;MERGE. 
))
(:action MERGE_VISITED_N20
:parameters ()
:precondition (and)

:effect (and 
(when(and (kVISITED_N20__AT_N9) (kVISITED_N20__AT_N8) (kVISITED_N20__AT_N7) (kVISITED_N20__AT_N6) (kVISITED_N20__AT_N5) (kVISITED_N20__AT_N4) (kVISITED_N20__AT_N3) (kVISITED_N20__AT_N20) (kVISITED_N20__AT_N2) (kVISITED_N20__AT_N19) (kVISITED_N20__AT_N18) (kVISITED_N20__AT_N17) (kVISITED_N20__AT_N16) (kVISITED_N20__AT_N15) (kVISITED_N20__AT_N14) (kVISITED_N20__AT_N13) (kVISITED_N20__AT_N12) (kVISITED_N20__AT_N11) (kVISITED_N20__AT_N1) (kVISITED_N20__AT_N10))  (kVISITED_N20)) ;;MERGE. 
))
(:action MERGE_VISITED_N2
:parameters ()
:precondition (and)

:effect (and 
(when(and (kVISITED_N2__AT_N9) (kVISITED_N2__AT_N8) (kVISITED_N2__AT_N7) (kVISITED_N2__AT_N6) (kVISITED_N2__AT_N5) (kVISITED_N2__AT_N4) (kVISITED_N2__AT_N3) (kVISITED_N2__AT_N20) (kVISITED_N2__AT_N2) (kVISITED_N2__AT_N19) (kVISITED_N2__AT_N18) (kVISITED_N2__AT_N17) (kVISITED_N2__AT_N16) (kVISITED_N2__AT_N15) (kVISITED_N2__AT_N14) (kVISITED_N2__AT_N13) (kVISITED_N2__AT_N12) (kVISITED_N2__AT_N11) (kVISITED_N2__AT_N1) (kVISITED_N2__AT_N10))  (kVISITED_N2)) ;;MERGE. 
))
(:action MERGE_VISITED_N19
:parameters ()
:precondition (and)

:effect (and 
(when(and (kVISITED_N19__AT_N9) (kVISITED_N19__AT_N8) (kVISITED_N19__AT_N7) (kVISITED_N19__AT_N6) (kVISITED_N19__AT_N5) (kVISITED_N19__AT_N4) (kVISITED_N19__AT_N3) (kVISITED_N19__AT_N20) (kVISITED_N19__AT_N2) (kVISITED_N19__AT_N19) (kVISITED_N19__AT_N18) (kVISITED_N19__AT_N17) (kVISITED_N19__AT_N16) (kVISITED_N19__AT_N15) (kVISITED_N19__AT_N14) (kVISITED_N19__AT_N13) (kVISITED_N19__AT_N12) (kVISITED_N19__AT_N11) (kVISITED_N19__AT_N1) (kVISITED_N19__AT_N10))  (kVISITED_N19)) ;;MERGE. 
))
(:action MERGE_VISITED_N18
:parameters ()
:precondition (and)

:effect (and 
(when(and (kVISITED_N18__AT_N9) (kVISITED_N18__AT_N8) (kVISITED_N18__AT_N7) (kVISITED_N18__AT_N6) (kVISITED_N18__AT_N5) (kVISITED_N18__AT_N4) (kVISITED_N18__AT_N3) (kVISITED_N18__AT_N20) (kVISITED_N18__AT_N2) (kVISITED_N18__AT_N19) (kVISITED_N18__AT_N18) (kVISITED_N18__AT_N17) (kVISITED_N18__AT_N16) (kVISITED_N18__AT_N15) (kVISITED_N18__AT_N14) (kVISITED_N18__AT_N13) (kVISITED_N18__AT_N12) (kVISITED_N18__AT_N11) (kVISITED_N18__AT_N1) (kVISITED_N18__AT_N10))  (kVISITED_N18)) ;;MERGE. 
))
(:action MERGE_VISITED_N17
:parameters ()
:precondition (and)

:effect (and 
(when(and (kVISITED_N17__AT_N9) (kVISITED_N17__AT_N8) (kVISITED_N17__AT_N7) (kVISITED_N17__AT_N6) (kVISITED_N17__AT_N5) (kVISITED_N17__AT_N4) (kVISITED_N17__AT_N3) (kVISITED_N17__AT_N20) (kVISITED_N17__AT_N2) (kVISITED_N17__AT_N19) (kVISITED_N17__AT_N18) (kVISITED_N17__AT_N17) (kVISITED_N17__AT_N16) (kVISITED_N17__AT_N15) (kVISITED_N17__AT_N14) (kVISITED_N17__AT_N13) (kVISITED_N17__AT_N12) (kVISITED_N17__AT_N11) (kVISITED_N17__AT_N1) (kVISITED_N17__AT_N10))  (kVISITED_N17)) ;;MERGE. 
))
(:action MERGE_VISITED_N16
:parameters ()
:precondition (and)

:effect (and 
(when(and (kVISITED_N16__AT_N9) (kVISITED_N16__AT_N8) (kVISITED_N16__AT_N7) (kVISITED_N16__AT_N6) (kVISITED_N16__AT_N5) (kVISITED_N16__AT_N4) (kVISITED_N16__AT_N3) (kVISITED_N16__AT_N20) (kVISITED_N16__AT_N2) (kVISITED_N16__AT_N19) (kVISITED_N16__AT_N18) (kVISITED_N16__AT_N17) (kVISITED_N16__AT_N16) (kVISITED_N16__AT_N15) (kVISITED_N16__AT_N14) (kVISITED_N16__AT_N13) (kVISITED_N16__AT_N12) (kVISITED_N16__AT_N11) (kVISITED_N16__AT_N1) (kVISITED_N16__AT_N10))  (kVISITED_N16)) ;;MERGE. 
))
(:action MERGE_VISITED_N15
:parameters ()
:precondition (and)

:effect (and 
(when(and (kVISITED_N15__AT_N9) (kVISITED_N15__AT_N8) (kVISITED_N15__AT_N7) (kVISITED_N15__AT_N6) (kVISITED_N15__AT_N5) (kVISITED_N15__AT_N4) (kVISITED_N15__AT_N3) (kVISITED_N15__AT_N20) (kVISITED_N15__AT_N2) (kVISITED_N15__AT_N19) (kVISITED_N15__AT_N18) (kVISITED_N15__AT_N17) (kVISITED_N15__AT_N16) (kVISITED_N15__AT_N15) (kVISITED_N15__AT_N14) (kVISITED_N15__AT_N13) (kVISITED_N15__AT_N12) (kVISITED_N15__AT_N11) (kVISITED_N15__AT_N1) (kVISITED_N15__AT_N10))  (kVISITED_N15)) ;;MERGE. 
))
(:action MERGE_VISITED_N14
:parameters ()
:precondition (and)

:effect (and 
(when(and (kVISITED_N14__AT_N9) (kVISITED_N14__AT_N8) (kVISITED_N14__AT_N7) (kVISITED_N14__AT_N6) (kVISITED_N14__AT_N5) (kVISITED_N14__AT_N4) (kVISITED_N14__AT_N3) (kVISITED_N14__AT_N20) (kVISITED_N14__AT_N2) (kVISITED_N14__AT_N19) (kVISITED_N14__AT_N18) (kVISITED_N14__AT_N17) (kVISITED_N14__AT_N16) (kVISITED_N14__AT_N15) (kVISITED_N14__AT_N14) (kVISITED_N14__AT_N13) (kVISITED_N14__AT_N12) (kVISITED_N14__AT_N11) (kVISITED_N14__AT_N1) (kVISITED_N14__AT_N10))  (kVISITED_N14)) ;;MERGE. 
))
(:action MERGE_VISITED_N13
:parameters ()
:precondition (and)

:effect (and 
(when(and (kVISITED_N13__AT_N9) (kVISITED_N13__AT_N8) (kVISITED_N13__AT_N7) (kVISITED_N13__AT_N6) (kVISITED_N13__AT_N5) (kVISITED_N13__AT_N4) (kVISITED_N13__AT_N3) (kVISITED_N13__AT_N20) (kVISITED_N13__AT_N2) (kVISITED_N13__AT_N19) (kVISITED_N13__AT_N18) (kVISITED_N13__AT_N17) (kVISITED_N13__AT_N16) (kVISITED_N13__AT_N15) (kVISITED_N13__AT_N14) (kVISITED_N13__AT_N13) (kVISITED_N13__AT_N12) (kVISITED_N13__AT_N11) (kVISITED_N13__AT_N1) (kVISITED_N13__AT_N10))  (kVISITED_N13)) ;;MERGE. 
))
(:action MERGE_VISITED_N12
:parameters ()
:precondition (and)

:effect (and 
(when(and (kVISITED_N12__AT_N9) (kVISITED_N12__AT_N8) (kVISITED_N12__AT_N7) (kVISITED_N12__AT_N6) (kVISITED_N12__AT_N5) (kVISITED_N12__AT_N4) (kVISITED_N12__AT_N3) (kVISITED_N12__AT_N20) (kVISITED_N12__AT_N2) (kVISITED_N12__AT_N19) (kVISITED_N12__AT_N18) (kVISITED_N12__AT_N17) (kVISITED_N12__AT_N16) (kVISITED_N12__AT_N15) (kVISITED_N12__AT_N14) (kVISITED_N12__AT_N13) (kVISITED_N12__AT_N12) (kVISITED_N12__AT_N11) (kVISITED_N12__AT_N1) (kVISITED_N12__AT_N10))  (kVISITED_N12)) ;;MERGE. 
))
(:action MERGE_VISITED_N11
:parameters ()
:precondition (and)

:effect (and 
(when(and (kVISITED_N11__AT_N9) (kVISITED_N11__AT_N8) (kVISITED_N11__AT_N7) (kVISITED_N11__AT_N6) (kVISITED_N11__AT_N5) (kVISITED_N11__AT_N4) (kVISITED_N11__AT_N3) (kVISITED_N11__AT_N20) (kVISITED_N11__AT_N2) (kVISITED_N11__AT_N19) (kVISITED_N11__AT_N18) (kVISITED_N11__AT_N17) (kVISITED_N11__AT_N16) (kVISITED_N11__AT_N15) (kVISITED_N11__AT_N14) (kVISITED_N11__AT_N13) (kVISITED_N11__AT_N12) (kVISITED_N11__AT_N11) (kVISITED_N11__AT_N1) (kVISITED_N11__AT_N10))  (kVISITED_N11)) ;;MERGE. 
))
(:action MERGE_VISITED_N10
:parameters ()
:precondition (and)

:effect (and 
(when(and (kVISITED_N10__AT_N9) (kVISITED_N10__AT_N8) (kVISITED_N10__AT_N7) (kVISITED_N10__AT_N6) (kVISITED_N10__AT_N5) (kVISITED_N10__AT_N4) (kVISITED_N10__AT_N3) (kVISITED_N10__AT_N20) (kVISITED_N10__AT_N2) (kVISITED_N10__AT_N19) (kVISITED_N10__AT_N18) (kVISITED_N10__AT_N17) (kVISITED_N10__AT_N16) (kVISITED_N10__AT_N15) (kVISITED_N10__AT_N14) (kVISITED_N10__AT_N13) (kVISITED_N10__AT_N12) (kVISITED_N10__AT_N11) (kVISITED_N10__AT_N1) (kVISITED_N10__AT_N10))  (kVISITED_N10)) ;;MERGE. 
))
(:action MERGE_VISITED_N1
:parameters ()
:precondition (and)

:effect (and 
(when(and (kVISITED_N1__AT_N9) (kVISITED_N1__AT_N8) (kVISITED_N1__AT_N7) (kVISITED_N1__AT_N6) (kVISITED_N1__AT_N5) (kVISITED_N1__AT_N4) (kVISITED_N1__AT_N3) (kVISITED_N1__AT_N20) (kVISITED_N1__AT_N2) (kVISITED_N1__AT_N19) (kVISITED_N1__AT_N18) (kVISITED_N1__AT_N17) (kVISITED_N1__AT_N16) (kVISITED_N1__AT_N15) (kVISITED_N1__AT_N14) (kVISITED_N1__AT_N13) (kVISITED_N1__AT_N12) (kVISITED_N1__AT_N11) (kVISITED_N1__AT_N1) (kVISITED_N1__AT_N10))  (kVISITED_N1)) ;;MERGE. 
))
(:action MERGE_STARTED
:parameters ()
:precondition (and)

:effect (and 
(when(and (kSTARTED__AT_N9) (kSTARTED__AT_N8) (kSTARTED__AT_N7) (kSTARTED__AT_N6) (kSTARTED__AT_N5) (kSTARTED__AT_N4) (kSTARTED__AT_N3) (kSTARTED__AT_N20) (kSTARTED__AT_N2) (kSTARTED__AT_N19) (kSTARTED__AT_N18) (kSTARTED__AT_N17) (kSTARTED__AT_N16) (kSTARTED__AT_N15) (kSTARTED__AT_N14) (kSTARTED__AT_N13) (kSTARTED__AT_N12) (kSTARTED__AT_N11) (kSTARTED__AT_N1) (kSTARTED__AT_N10))  (kSTARTED)) ;;MERGE. 
))
)
