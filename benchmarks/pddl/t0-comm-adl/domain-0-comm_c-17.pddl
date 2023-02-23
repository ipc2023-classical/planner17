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
(kCURRENT-STAGE_S11)
(kCURRENT-STAGE_S12)
(kCURRENT-STAGE_S13)
(kCURRENT-STAGE_S14)
(kCURRENT-STAGE_S15)
(kCURRENT-STAGE_S16)
(kCURRENT-STAGE_S17)
(kCURRENT-STAGE_S18)
(kCURRENT-STAGE_S19)
(kCURRENT-STAGE_S20)
(kCURRENT-STAGE_S21)
(kCURRENT-STAGE_S22)
(kCURRENT-STAGE_S23)
(kCURRENT-STAGE_S24)
(kCURRENT-STAGE_S25)
(kCURRENT-STAGE_S26)
(kIN-CHANNEL_P21)
(k-IN-CHANNEL_P21)
(kIN-CHANNEL_P21__NOISY_P21)
(kIN-CHANNEL_P21__-NOISY_P21)
(k-BAD_P17)
(kBAD_P17__NOISY_P17)
(kNOISY_P17)
(k-NOISY_P17__NOISY_P17)
(kNOISY_P17__NOISY_P17)
(kIN-CHANNEL_P17)
(k-IN-CHANNEL_P17)
(kIN-CHANNEL_P17__NOISY_P17)
(kIN-CHANNEL_P17__-NOISY_P17)
(kIN-CHANNEL_P18)
(k-IN-CHANNEL_P18)
(kIN-CHANNEL_P18__NOISY_P18)
(kIN-CHANNEL_P18__-NOISY_P18)
(k-BAD_P14)
(kBAD_P14__NOISY_P14)
(kNOISY_P14)
(k-NOISY_P14__NOISY_P14)
(kNOISY_P14__NOISY_P14)
(kIN-CHANNEL_P14)
(k-IN-CHANNEL_P14)
(kIN-CHANNEL_P14__NOISY_P14)
(kIN-CHANNEL_P14__-NOISY_P14)
(k-BAD_P20)
(kBAD_P20__NOISY_P20)
(kNOISY_P20)
(k-NOISY_P20__NOISY_P20)
(kNOISY_P20__NOISY_P20)
(kIN-CHANNEL_P20)
(k-IN-CHANNEL_P20)
(kIN-CHANNEL_P20__NOISY_P20)
(kIN-CHANNEL_P20__-NOISY_P20)
(k-BAD_P11)
(kBAD_P11__NOISY_P11)
(kNOISY_P11)
(k-NOISY_P11__NOISY_P11)
(kNOISY_P11__NOISY_P11)
(kIN-CHANNEL_P11)
(k-IN-CHANNEL_P11)
(kIN-CHANNEL_P11__NOISY_P11)
(kIN-CHANNEL_P11__-NOISY_P11)
(kIN-CHANNEL_P22)
(k-IN-CHANNEL_P22)
(kIN-CHANNEL_P22__NOISY_P22)
(kIN-CHANNEL_P22__-NOISY_P22)
(k-BAD_P16)
(kBAD_P16__NOISY_P16)
(kNOISY_P16)
(k-NOISY_P16__NOISY_P16)
(kNOISY_P16__NOISY_P16)
(kIN-CHANNEL_P16)
(k-IN-CHANNEL_P16)
(kIN-CHANNEL_P16__NOISY_P16)
(kIN-CHANNEL_P16__-NOISY_P16)
(kIN-CHANNEL_P19)
(k-IN-CHANNEL_P19)
(kIN-CHANNEL_P19__NOISY_P19)
(kIN-CHANNEL_P19__-NOISY_P19)
(k-BAD_P13)
(kBAD_P13__NOISY_P13)
(kNOISY_P13)
(k-NOISY_P13__NOISY_P13)
(kNOISY_P13__NOISY_P13)
(kIN-CHANNEL_P13)
(k-IN-CHANNEL_P13)
(kIN-CHANNEL_P13__NOISY_P13)
(kIN-CHANNEL_P13__-NOISY_P13)
(k-BAD_P19)
(kBAD_P19__NOISY_P19)
(kNOISY_P19)
(k-NOISY_P19__NOISY_P19)
(kNOISY_P19__NOISY_P19)
(kIN-CHANNEL_P15)
(k-IN-CHANNEL_P15)
(kIN-CHANNEL_P15__NOISY_P15)
(kIN-CHANNEL_P15__-NOISY_P15)
(k-BAD_P24)
(kBAD_P24__NOISY_P24)
(kNOISY_P24)
(k-NOISY_P24__NOISY_P24)
(kNOISY_P24__NOISY_P24)
(kIN-CHANNEL_P24)
(k-IN-CHANNEL_P24)
(kIN-CHANNEL_P24__NOISY_P24)
(kIN-CHANNEL_P24__-NOISY_P24)
(k-BAD_P23)
(kBAD_P23__NOISY_P23)
(kNOISY_P23)
(k-NOISY_P23__NOISY_P23)
(kNOISY_P23__NOISY_P23)
(kIN-CHANNEL_P23)
(k-IN-CHANNEL_P23)
(kIN-CHANNEL_P23__NOISY_P23)
(kIN-CHANNEL_P23__-NOISY_P23)
(kNOISY_P12)
(k-NOISY_P12__NOISY_P12)
(kNOISY_P12__NOISY_P12)
(k-BAD_P12)
(kBAD_P12__NOISY_P12)
(kNOISY_P15)
(k-NOISY_P15__NOISY_P15)
(kNOISY_P15__NOISY_P15)
(k-BAD_P15)
(kBAD_P15__NOISY_P15)
(kNOISY_P18)
(k-NOISY_P18__NOISY_P18)
(kNOISY_P18__NOISY_P18)
(k-BAD_P18)
(kBAD_P18__NOISY_P18)
(kNOISY_P21)
(k-NOISY_P21__NOISY_P21)
(kNOISY_P21__NOISY_P21)
(k-BAD_P21)
(kBAD_P21__NOISY_P21)
(kNOISY_P22)
(k-NOISY_P22__NOISY_P22)
(kNOISY_P22__NOISY_P22)
(k-BAD_P22)
(kBAD_P22__NOISY_P22)
(kIN-CHANNEL_P12)
(k-IN-CHANNEL_P12)
(kIN-CHANNEL_P12__NOISY_P12)
(kIN-CHANNEL_P12__-NOISY_P12)
)
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
(:action OBTAIN_P13_S13
:parameters ()
:precondition (and (kCURRENT-STAGE_S13))

:effect (and  (k-IN-CHANNEL_P13)
(when (kIN-CHANNEL_P13__-NOISY_P13) (and (kREAD_P13__-NOISY_P13) (not(kIN-CHANNEL_P13__-NOISY_P13)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P13) (and (kREAD_P13) (k-IN-CHANNEL_P13))) ;; Support. 
(when (not(k-IN-CHANNEL_P13))  (not(kIN-CHANNEL_P13))) ;; Cancellation. 
(when (kIN-CHANNEL_P13__NOISY_P13) (and (kREAD_P13__NOISY_P13) (not(kIN-CHANNEL_P13__NOISY_P13)))) ;; Support.  Cancellation. 
))
(:action RESET_S12
:parameters ()
:precondition (and (kCURRENT-STAGE_S12))

:effect (and  (not(kCURRENT-STAGE_S12)) (kCURRENT-STAGE_S0)
))
(:action REQUEST-COPY_P21_S21
:parameters ()
:precondition (and (kCURRENT-STAGE_S21))

:effect (and  (k-BAD_P21)
(when (kBAD_P21__NOISY_P21) (and (kIN-CHANNEL_P21__NOISY_P21) (k-NOISY_P21__NOISY_P21) (not(kNOISY_P21__NOISY_P21)) (not(kREAD_P21__NOISY_P21)) (not(kBAD_P21__NOISY_P21)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P21)) (and (not(k-IN-CHANNEL_P21)) (not(kNOISY_P21)) (not(kREAD_P21)))) ;; Cancellation. 
))
(:action REQUEST-COPY_P12_S12
:parameters ()
:precondition (and (kCURRENT-STAGE_S12))

:effect (and  (k-BAD_P12)
(when (kBAD_P12__NOISY_P12) (and (k-NOISY_P12__NOISY_P12) (not(kNOISY_P12__NOISY_P12)) (kIN-CHANNEL_P12__NOISY_P12) (not(kREAD_P12__NOISY_P12)) (not(kBAD_P12__NOISY_P12)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P12)) (and (not(kNOISY_P12)) (not(k-IN-CHANNEL_P12)) (not(kREAD_P12)))) ;; Cancellation. 
))
(:action RESET_S11
:parameters ()
:precondition (and (kCURRENT-STAGE_S11))

:effect (and  (not(kCURRENT-STAGE_S11)) (kCURRENT-STAGE_S0)
))
(:action RESET_S26
:parameters ()
:precondition (and (kCURRENT-STAGE_S26))

:effect (and  (not(kCURRENT-STAGE_S26)) (kCURRENT-STAGE_S0)
))
(:action REQUEST-COPY_P18_S18
:parameters ()
:precondition (and (kCURRENT-STAGE_S18))

:effect (and  (k-BAD_P18)
(when (kBAD_P18__NOISY_P18) (and (kIN-CHANNEL_P18__NOISY_P18) (k-NOISY_P18__NOISY_P18) (not(kNOISY_P18__NOISY_P18)) (not(kREAD_P18__NOISY_P18)) (not(kBAD_P18__NOISY_P18)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P18)) (and (not(k-IN-CHANNEL_P18)) (not(kNOISY_P18)) (not(kREAD_P18)))) ;; Cancellation. 
))
(:action REQUEST-COPY_P22_S22
:parameters ()
:precondition (and (kCURRENT-STAGE_S22))

:effect (and  (k-BAD_P22)
(when (kBAD_P22__NOISY_P22) (and (kIN-CHANNEL_P22__NOISY_P22) (k-NOISY_P22__NOISY_P22) (not(kNOISY_P22__NOISY_P22)) (not(kREAD_P22__NOISY_P22)) (not(kBAD_P22__NOISY_P22)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P22)) (and (not(k-IN-CHANNEL_P22)) (not(kNOISY_P22)) (not(kREAD_P22)))) ;; Cancellation. 
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
(:action REQUEST-COPY_P15_S15
:parameters ()
:precondition (and (kCURRENT-STAGE_S15))

:effect (and  (k-BAD_P15)
(when (kBAD_P15__NOISY_P15) (and (kIN-CHANNEL_P15__NOISY_P15) (k-NOISY_P15__NOISY_P15) (not(kNOISY_P15__NOISY_P15)) (not(kREAD_P15__NOISY_P15)) (not(kBAD_P15__NOISY_P15)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P15)) (and (not(k-IN-CHANNEL_P15)) (not(kNOISY_P15)) (not(kREAD_P15)))) ;; Cancellation. 
))
(:action CERTIFY_P24
:parameters ()
:precondition (and (kREAD_P24))

:effect (and  (not(k-BAD_P24)) (kOK_P24__-NOISY_P24)
(when (kNOISY_P24__NOISY_P24)  (kBAD_P24__NOISY_P24)) ;; Support. 
(when (k-NOISY_P24__NOISY_P24)  (kOK_P24__NOISY_P24)) ;; Support. 
))
(:action REQUEST-COPY_P8_S8
:parameters ()
:precondition (and (kCURRENT-STAGE_S8))

:effect (and  (k-BAD_P8)
(when (kBAD_P8__NOISY_P8) (and (kIN-CHANNEL_P8__NOISY_P8) (k-NOISY_P8__NOISY_P8) (not(kNOISY_P8__NOISY_P8)) (not(kREAD_P8__NOISY_P8)) (not(kBAD_P8__NOISY_P8)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P8)) (and (not(k-IN-CHANNEL_P8)) (not(kNOISY_P8)) (not(kREAD_P8)))) ;; Cancellation. 
))
(:action CERTIFY_P23
:parameters ()
:precondition (and (kREAD_P23))

:effect (and  (not(k-BAD_P23)) (kOK_P23__-NOISY_P23)
(when (kNOISY_P23__NOISY_P23)  (kBAD_P23__NOISY_P23)) ;; Support. 
(when (k-NOISY_P23__NOISY_P23)  (kOK_P23__NOISY_P23)) ;; Support. 
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
(:action CERTIFY_P22
:parameters ()
:precondition (and (kREAD_P22))

:effect (and  (not(k-BAD_P22)) (kOK_P22__-NOISY_P22)
(when (kNOISY_P22__NOISY_P22)  (kBAD_P22__NOISY_P22)) ;; Support. 
(when (k-NOISY_P22__NOISY_P22)  (kOK_P22__NOISY_P22)) ;; Support. 
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
(:action OBTAIN_P24_S24
:parameters ()
:precondition (and (kCURRENT-STAGE_S24))

:effect (and  (k-IN-CHANNEL_P24)
(when (kIN-CHANNEL_P24__-NOISY_P24) (and (kREAD_P24__-NOISY_P24) (not(kIN-CHANNEL_P24__-NOISY_P24)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P24) (and (kREAD_P24) (k-IN-CHANNEL_P24))) ;; Support. 
(when (not(k-IN-CHANNEL_P24))  (not(kIN-CHANNEL_P24))) ;; Cancellation. 
(when (kIN-CHANNEL_P24__NOISY_P24) (and (kREAD_P24__NOISY_P24) (not(kIN-CHANNEL_P24__NOISY_P24)))) ;; Support.  Cancellation. 
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
(:action OBTAIN_P16_S16
:parameters ()
:precondition (and (kCURRENT-STAGE_S16))

:effect (and  (k-IN-CHANNEL_P16)
(when (kIN-CHANNEL_P16__-NOISY_P16) (and (kREAD_P16__-NOISY_P16) (not(kIN-CHANNEL_P16__-NOISY_P16)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P16) (and (kREAD_P16) (k-IN-CHANNEL_P16))) ;; Support. 
(when (not(k-IN-CHANNEL_P16))  (not(kIN-CHANNEL_P16))) ;; Cancellation. 
(when (kIN-CHANNEL_P16__NOISY_P16) (and (kREAD_P16__NOISY_P16) (not(kIN-CHANNEL_P16__NOISY_P16)))) ;; Support.  Cancellation. 
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
(:action OBTAIN_P11_S11
:parameters ()
:precondition (and (kCURRENT-STAGE_S11))

:effect (and  (k-IN-CHANNEL_P11)
(when (kIN-CHANNEL_P11__-NOISY_P11) (and (kREAD_P11__-NOISY_P11) (not(kIN-CHANNEL_P11__-NOISY_P11)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P11) (and (kREAD_P11) (k-IN-CHANNEL_P11))) ;; Support. 
(when (not(k-IN-CHANNEL_P11))  (not(kIN-CHANNEL_P11))) ;; Cancellation. 
(when (kIN-CHANNEL_P11__NOISY_P11) (and (kREAD_P11__NOISY_P11) (not(kIN-CHANNEL_P11__NOISY_P11)))) ;; Support.  Cancellation. 
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
(:action OBTAIN_P23_S23
:parameters ()
:precondition (and (kCURRENT-STAGE_S23))

:effect (and  (k-IN-CHANNEL_P23)
(when (kIN-CHANNEL_P23__-NOISY_P23) (and (kREAD_P23__-NOISY_P23) (not(kIN-CHANNEL_P23__-NOISY_P23)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P23) (and (kREAD_P23) (k-IN-CHANNEL_P23))) ;; Support. 
(when (not(k-IN-CHANNEL_P23))  (not(kIN-CHANNEL_P23))) ;; Cancellation. 
(when (kIN-CHANNEL_P23__NOISY_P23) (and (kREAD_P23__NOISY_P23) (not(kIN-CHANNEL_P23__NOISY_P23)))) ;; Support.  Cancellation. 
))
(:action RESET_S25
:parameters ()
:precondition (and (kCURRENT-STAGE_S25))

:effect (and  (not(kCURRENT-STAGE_S25)) (kCURRENT-STAGE_S0)
))
(:action REQUEST-COPY_P23_S23
:parameters ()
:precondition (and (kCURRENT-STAGE_S23))

:effect (and  (k-BAD_P23)
(when (kBAD_P23__NOISY_P23) (and (not(kREAD_P23__NOISY_P23)) (k-NOISY_P23__NOISY_P23) (not(kNOISY_P23__NOISY_P23)) (not(kBAD_P23__NOISY_P23)) (kIN-CHANNEL_P23__NOISY_P23))) ;; Support.  Cancellation. 
(when (not(k-BAD_P23)) (and (not(kREAD_P23)) (not(kNOISY_P23)) (not(k-IN-CHANNEL_P23)))) ;; Cancellation. 
))
(:action REQUEST-COPY_P24_S24
:parameters ()
:precondition (and (kCURRENT-STAGE_S24))

:effect (and  (k-BAD_P24)
(when (kBAD_P24__NOISY_P24) (and (not(kREAD_P24__NOISY_P24)) (k-NOISY_P24__NOISY_P24) (not(kNOISY_P24__NOISY_P24)) (not(kBAD_P24__NOISY_P24)) (kIN-CHANNEL_P24__NOISY_P24))) ;; Support.  Cancellation. 
(when (not(k-BAD_P24)) (and (not(kREAD_P24)) (not(kNOISY_P24)) (not(k-IN-CHANNEL_P24)))) ;; Cancellation. 
))
(:action REQUEST-COPY_P6_S6
:parameters ()
:precondition (and (kCURRENT-STAGE_S6))

:effect (and  (k-BAD_P6)
(when (kBAD_P6__NOISY_P6) (and (kIN-CHANNEL_P6__NOISY_P6) (k-NOISY_P6__NOISY_P6) (not(kNOISY_P6__NOISY_P6)) (not(kREAD_P6__NOISY_P6)) (not(kBAD_P6__NOISY_P6)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P6)) (and (not(k-IN-CHANNEL_P6)) (not(kNOISY_P6)) (not(kREAD_P6)))) ;; Cancellation. 
))
(:action RESET_S24
:parameters ()
:precondition (and (kCURRENT-STAGE_S24))

:effect (and  (not(kCURRENT-STAGE_S24)) (kCURRENT-STAGE_S0)
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
(:action REQUEST-COPY_P19_S19
:parameters ()
:precondition (and (kCURRENT-STAGE_S19))

:effect (and  (k-BAD_P19)
(when (kBAD_P19__NOISY_P19) (and (kIN-CHANNEL_P19__NOISY_P19) (not(kREAD_P19__NOISY_P19)) (k-NOISY_P19__NOISY_P19) (not(kNOISY_P19__NOISY_P19)) (not(kBAD_P19__NOISY_P19)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P19)) (and (not(k-IN-CHANNEL_P19)) (not(kREAD_P19)) (not(kNOISY_P19)))) ;; Cancellation. 
))
(:action RESET_S23
:parameters ()
:precondition (and (kCURRENT-STAGE_S23))

:effect (and  (not(kCURRENT-STAGE_S23)) (kCURRENT-STAGE_S0)
))
(:action REQUEST-COPY_P13_S13
:parameters ()
:precondition (and (kCURRENT-STAGE_S13))

:effect (and  (k-BAD_P13)
(when (kBAD_P13__NOISY_P13) (and (not(kREAD_P13__NOISY_P13)) (k-NOISY_P13__NOISY_P13) (not(kNOISY_P13__NOISY_P13)) (not(kBAD_P13__NOISY_P13)) (kIN-CHANNEL_P13__NOISY_P13))) ;; Support.  Cancellation. 
(when (not(k-BAD_P13)) (and (not(kREAD_P13)) (not(kNOISY_P13)) (not(k-IN-CHANNEL_P13)))) ;; Cancellation. 
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
(:action OBTAIN_P19_S19
:parameters ()
:precondition (and (kCURRENT-STAGE_S19))

:effect (and  (k-IN-CHANNEL_P19)
(when (kIN-CHANNEL_P19__-NOISY_P19) (and (kREAD_P19__-NOISY_P19) (not(kIN-CHANNEL_P19__-NOISY_P19)))) ;; Support.  Cancellation. 
(when (kIN-CHANNEL_P19) (and (kREAD_P19) (k-IN-CHANNEL_P19))) ;; Support. 
(when (not(k-IN-CHANNEL_P19))  (not(kIN-CHANNEL_P19))) ;; Cancellation. 
(when (kIN-CHANNEL_P19__NOISY_P19) (and (kREAD_P19__NOISY_P19) (not(kIN-CHANNEL_P19__NOISY_P19)))) ;; Support.  Cancellation. 
))
(:action REQUEST-COPY_P16_S16
:parameters ()
:precondition (and (kCURRENT-STAGE_S16))

:effect (and  (k-BAD_P16)
(when (kBAD_P16__NOISY_P16) (and (not(kREAD_P16__NOISY_P16)) (k-NOISY_P16__NOISY_P16) (not(kNOISY_P16__NOISY_P16)) (not(kBAD_P16__NOISY_P16)) (kIN-CHANNEL_P16__NOISY_P16))) ;; Support.  Cancellation. 
(when (not(k-BAD_P16)) (and (not(kREAD_P16)) (not(kNOISY_P16)) (not(k-IN-CHANNEL_P16)))) ;; Cancellation. 
))
(:action RESET_S20
:parameters ()
:precondition (and (kCURRENT-STAGE_S20))

:effect (and  (not(kCURRENT-STAGE_S20)) (kCURRENT-STAGE_S0)
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
(:action REQUEST-COPY_P2_S2
:parameters ()
:precondition (and (kCURRENT-STAGE_S2))

:effect (and  (k-BAD_P2)
(when (kBAD_P2__NOISY_P2) (and (kIN-CHANNEL_P2__NOISY_P2) (k-NOISY_P2__NOISY_P2) (not(kNOISY_P2__NOISY_P2)) (not(kREAD_P2__NOISY_P2)) (not(kBAD_P2__NOISY_P2)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P2)) (and (not(k-IN-CHANNEL_P2)) (not(kNOISY_P2)) (not(kREAD_P2)))) ;; Cancellation. 
))
(:action REQUEST-COPY_P5_S5
:parameters ()
:precondition (and (kCURRENT-STAGE_S5))

:effect (and  (k-BAD_P5)
(when (kBAD_P5__NOISY_P5) (and (kIN-CHANNEL_P5__NOISY_P5) (k-NOISY_P5__NOISY_P5) (not(kNOISY_P5__NOISY_P5)) (not(kREAD_P5__NOISY_P5)) (not(kBAD_P5__NOISY_P5)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P5)) (and (not(k-IN-CHANNEL_P5)) (not(kNOISY_P5)) (not(kREAD_P5)))) ;; Cancellation. 
))
(:action REQUEST-COPY_P11_S11
:parameters ()
:precondition (and (kCURRENT-STAGE_S11))

:effect (and  (k-BAD_P11)
(when (kBAD_P11__NOISY_P11) (and (not(kREAD_P11__NOISY_P11)) (k-NOISY_P11__NOISY_P11) (not(kNOISY_P11__NOISY_P11)) (not(kBAD_P11__NOISY_P11)) (kIN-CHANNEL_P11__NOISY_P11))) ;; Support.  Cancellation. 
(when (not(k-BAD_P11)) (and (not(kREAD_P11)) (not(kNOISY_P11)) (not(k-IN-CHANNEL_P11)))) ;; Cancellation. 
))
(:action RESET_S19
:parameters ()
:precondition (and (kCURRENT-STAGE_S19))

:effect (and  (not(kCURRENT-STAGE_S19)) (kCURRENT-STAGE_S0)
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
(:action RESET_S18
:parameters ()
:precondition (and (kCURRENT-STAGE_S18))

:effect (and  (not(kCURRENT-STAGE_S18)) (kCURRENT-STAGE_S0)
))
(:action RESET_S17
:parameters ()
:precondition (and (kCURRENT-STAGE_S17))

:effect (and  (not(kCURRENT-STAGE_S17)) (kCURRENT-STAGE_S0)
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
(:action REQUEST-COPY_P20_S20
:parameters ()
:precondition (and (kCURRENT-STAGE_S20))

:effect (and  (k-BAD_P20)
(when (kBAD_P20__NOISY_P20) (and (not(kREAD_P20__NOISY_P20)) (k-NOISY_P20__NOISY_P20) (not(kNOISY_P20__NOISY_P20)) (not(kBAD_P20__NOISY_P20)) (kIN-CHANNEL_P20__NOISY_P20))) ;; Support.  Cancellation. 
(when (not(k-BAD_P20)) (and (not(kREAD_P20)) (not(kNOISY_P20)) (not(k-IN-CHANNEL_P20)))) ;; Cancellation. 
))
(:action REQUEST-COPY_P14_S14
:parameters ()
:precondition (and (kCURRENT-STAGE_S14))

:effect (and  (k-BAD_P14)
(when (kBAD_P14__NOISY_P14) (and (not(kREAD_P14__NOISY_P14)) (k-NOISY_P14__NOISY_P14) (not(kNOISY_P14__NOISY_P14)) (not(kBAD_P14__NOISY_P14)) (kIN-CHANNEL_P14__NOISY_P14))) ;; Support.  Cancellation. 
(when (not(k-BAD_P14)) (and (not(kREAD_P14)) (not(kNOISY_P14)) (not(k-IN-CHANNEL_P14)))) ;; Cancellation. 
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
(:action REQUEST-COPY_P17_S17
:parameters ()
:precondition (and (kCURRENT-STAGE_S17))

:effect (and  (k-BAD_P17)
(when (kBAD_P17__NOISY_P17) (and (not(kREAD_P17__NOISY_P17)) (k-NOISY_P17__NOISY_P17) (not(kNOISY_P17__NOISY_P17)) (not(kBAD_P17__NOISY_P17)) (kIN-CHANNEL_P17__NOISY_P17))) ;; Support.  Cancellation. 
(when (not(k-BAD_P17)) (and (not(kREAD_P17)) (not(kNOISY_P17)) (not(k-IN-CHANNEL_P17)))) ;; Cancellation. 
))
(:action REQUEST-COPY_P4_S4
:parameters ()
:precondition (and (kCURRENT-STAGE_S4))

:effect (and  (k-BAD_P4)
(when (kBAD_P4__NOISY_P4) (and (kIN-CHANNEL_P4__NOISY_P4) (k-NOISY_P4__NOISY_P4) (not(kNOISY_P4__NOISY_P4)) (not(kREAD_P4__NOISY_P4)) (not(kBAD_P4__NOISY_P4)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P4)) (and (not(k-IN-CHANNEL_P4)) (not(kNOISY_P4)) (not(kREAD_P4)))) ;; Cancellation. 
))
(:action RESET_S14
:parameters ()
:precondition (and (kCURRENT-STAGE_S14))

:effect (and  (not(kCURRENT-STAGE_S14)) (kCURRENT-STAGE_S0)
))
(:action RESET_S13
:parameters ()
:precondition (and (kCURRENT-STAGE_S13))

:effect (and  (not(kCURRENT-STAGE_S13)) (kCURRENT-STAGE_S0)
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
(:action REQUEST-COPY_P10_S10
:parameters ()
:precondition (and (kCURRENT-STAGE_S10))

:effect (and  (k-BAD_P10)
(when (kBAD_P10__NOISY_P10) (and (kIN-CHANNEL_P10__NOISY_P10) (k-NOISY_P10__NOISY_P10) (not(kNOISY_P10__NOISY_P10)) (not(kREAD_P10__NOISY_P10)) (not(kBAD_P10__NOISY_P10)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P10)) (and (not(k-IN-CHANNEL_P10)) (not(kNOISY_P10)) (not(kREAD_P10)))) ;; Cancellation. 
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
(:action REQUEST-COPY_P3_S3
:parameters ()
:precondition (and (kCURRENT-STAGE_S3))

:effect (and  (k-BAD_P3)
(when (kBAD_P3__NOISY_P3) (and (kIN-CHANNEL_P3__NOISY_P3) (k-NOISY_P3__NOISY_P3) (not(kNOISY_P3__NOISY_P3)) (not(kREAD_P3__NOISY_P3)) (not(kBAD_P3__NOISY_P3)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P3)) (and (not(k-IN-CHANNEL_P3)) (not(kNOISY_P3)) (not(kREAD_P3)))) ;; Cancellation. 
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
(:action REQUEST-COPY_P1_S1
:parameters ()
:precondition (and (kCURRENT-STAGE_S1))

:effect (and  (k-BAD_P1)
(when (kBAD_P1__NOISY_P1) (and (kIN-CHANNEL_P1__NOISY_P1) (k-NOISY_P1__NOISY_P1) (not(kNOISY_P1__NOISY_P1)) (not(kREAD_P1__NOISY_P1)) (not(kBAD_P1__NOISY_P1)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P1)) (and (not(k-IN-CHANNEL_P1)) (not(kNOISY_P1)) (not(kREAD_P1)))) ;; Cancellation. 
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
