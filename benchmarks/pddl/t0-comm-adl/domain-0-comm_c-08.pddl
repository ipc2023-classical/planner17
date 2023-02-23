(define (domain COMM)
(:requirements :negative-preconditions :conditional-effects)
	(:predicates
(kREAD_P0)
(kREAD_P0__NOISY_P0)
(kREAD_P0__-NOISY_P0)
(kREAD_P1)
(kREAD_P1__NOISY_P1)
(kREAD_P1__-NOISY_P1)
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
(kOK_P0)
(kOK_P0__NOISY_P0)
(kOK_P0__-NOISY_P0)
(kOK_P1)
(kOK_P1__NOISY_P1)
(kOK_P1__-NOISY_P1)
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
(kCURRENT-STAGE_S11)
)
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
(:action REQUEST-COPY_P3_S3
:parameters ()
:precondition (and (kCURRENT-STAGE_S3))

:effect (and  (k-BAD_P3)
(when (kBAD_P3__NOISY_P3) (and (kIN-CHANNEL_P3__NOISY_P3) (k-NOISY_P3__NOISY_P3) (not(kNOISY_P3__NOISY_P3)) (not(kREAD_P3__NOISY_P3)) (not(kBAD_P3__NOISY_P3)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P3)) (and (not(k-IN-CHANNEL_P3)) (not(kNOISY_P3)) (not(kREAD_P3)))) ;; Cancellation. 
))
(:action REQUEST-COPY_P7_S7
:parameters ()
:precondition (and (kCURRENT-STAGE_S7))

:effect (and  (k-BAD_P7)
(when (kBAD_P7__NOISY_P7) (and (kIN-CHANNEL_P7__NOISY_P7) (k-NOISY_P7__NOISY_P7) (not(kNOISY_P7__NOISY_P7)) (not(kREAD_P7__NOISY_P7)) (not(kBAD_P7__NOISY_P7)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P7)) (and (not(k-IN-CHANNEL_P7)) (not(kNOISY_P7)) (not(kREAD_P7)))) ;; Cancellation. 
))
(:action RESET_S11
:parameters ()
:precondition (and (kCURRENT-STAGE_S11))

:effect (and  (not(kCURRENT-STAGE_S11)) (kCURRENT-STAGE_S0)
))
(:action REQUEST-COPY_P8_S8
:parameters ()
:precondition (and (kCURRENT-STAGE_S8))

:effect (and  (k-BAD_P8)
(when (kBAD_P8__NOISY_P8) (and (kIN-CHANNEL_P8__NOISY_P8) (k-NOISY_P8__NOISY_P8) (not(kNOISY_P8__NOISY_P8)) (not(kREAD_P8__NOISY_P8)) (not(kBAD_P8__NOISY_P8)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P8)) (and (not(k-IN-CHANNEL_P8)) (not(kNOISY_P8)) (not(kREAD_P8)))) ;; Cancellation. 
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
(:action REQUEST-COPY_P1_S1
:parameters ()
:precondition (and (kCURRENT-STAGE_S1))

:effect (and  (k-BAD_P1)
(when (kBAD_P1__NOISY_P1) (and (kIN-CHANNEL_P1__NOISY_P1) (k-NOISY_P1__NOISY_P1) (not(kNOISY_P1__NOISY_P1)) (not(kREAD_P1__NOISY_P1)) (not(kBAD_P1__NOISY_P1)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P1)) (and (not(k-IN-CHANNEL_P1)) (not(kNOISY_P1)) (not(kREAD_P1)))) ;; Cancellation. 
))
(:action REQUEST-COPY_P4_S4
:parameters ()
:precondition (and (kCURRENT-STAGE_S4))

:effect (and  (k-BAD_P4)
(when (kBAD_P4__NOISY_P4) (and (kIN-CHANNEL_P4__NOISY_P4) (k-NOISY_P4__NOISY_P4) (not(kNOISY_P4__NOISY_P4)) (not(kREAD_P4__NOISY_P4)) (not(kBAD_P4__NOISY_P4)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P4)) (and (not(k-IN-CHANNEL_P4)) (not(kNOISY_P4)) (not(kREAD_P4)))) ;; Cancellation. 
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
(:action REQUEST-COPY_P5_S5
:parameters ()
:precondition (and (kCURRENT-STAGE_S5))

:effect (and  (k-BAD_P5)
(when (kBAD_P5__NOISY_P5) (and (kIN-CHANNEL_P5__NOISY_P5) (k-NOISY_P5__NOISY_P5) (not(kNOISY_P5__NOISY_P5)) (not(kREAD_P5__NOISY_P5)) (not(kBAD_P5__NOISY_P5)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P5)) (and (not(k-IN-CHANNEL_P5)) (not(kNOISY_P5)) (not(kREAD_P5)))) ;; Cancellation. 
))
(:action REQUEST-COPY_P2_S2
:parameters ()
:precondition (and (kCURRENT-STAGE_S2))

:effect (and  (k-BAD_P2)
(when (kBAD_P2__NOISY_P2) (and (kIN-CHANNEL_P2__NOISY_P2) (k-NOISY_P2__NOISY_P2) (not(kNOISY_P2__NOISY_P2)) (not(kREAD_P2__NOISY_P2)) (not(kBAD_P2__NOISY_P2)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P2)) (and (not(k-IN-CHANNEL_P2)) (not(kNOISY_P2)) (not(kREAD_P2)))) ;; Cancellation. 
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
(:action REQUEST-COPY_P6_S6
:parameters ()
:precondition (and (kCURRENT-STAGE_S6))

:effect (and  (k-BAD_P6)
(when (kBAD_P6__NOISY_P6) (and (kIN-CHANNEL_P6__NOISY_P6) (k-NOISY_P6__NOISY_P6) (not(kNOISY_P6__NOISY_P6)) (not(kREAD_P6__NOISY_P6)) (not(kBAD_P6__NOISY_P6)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P6)) (and (not(k-IN-CHANNEL_P6)) (not(kNOISY_P6)) (not(kREAD_P6)))) ;; Cancellation. 
))
(:action REQUEST-COPY_P0_S0
:parameters ()
:precondition (and (kCURRENT-STAGE_S0))

:effect (and  (k-BAD_P0)
(when (kBAD_P0__NOISY_P0) (and (kIN-CHANNEL_P0__NOISY_P0) (k-NOISY_P0__NOISY_P0) (not(kNOISY_P0__NOISY_P0)) (not(kREAD_P0__NOISY_P0)) (not(kBAD_P0__NOISY_P0)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P0)) (and (not(k-IN-CHANNEL_P0)) (not(kNOISY_P0)) (not(kREAD_P0)))) ;; Cancellation. 
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
(when (kNOISY_P2)  (kNOISY_P2)) ;;reasoning over static clause. 
(when (kNOISY_P3)  (kNOISY_P3)) ;;reasoning over static clause. 
(when (kNOISY_P4)  (kNOISY_P4)) ;;reasoning over static clause. 
(when (kNOISY_P5)  (kNOISY_P5)) ;;reasoning over static clause. 
(when (kNOISY_P6)  (kNOISY_P6)) ;;reasoning over static clause. 
(when (kNOISY_P7)  (kNOISY_P7)) ;;reasoning over static clause. 
(when (kNOISY_P8)  (kNOISY_P8)) ;;reasoning over static clause. 
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
