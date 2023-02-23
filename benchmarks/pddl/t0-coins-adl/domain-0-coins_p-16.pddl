(define (domain COINS)
(:requirements :negative-preconditions :conditional-effects)
	(:predicates
(kAT_F0_P2)
(kAT_F0_P2__IN_E0_F2)
(kAT_F0_P2__IN_E0_F0)
(kAT_F0_P2__IN_E0_F1)
(kAT_F0_P7)
(kAT_F0_P7__IN_E1_F2)
(kAT_F0_P7__IN_E1_F0)
(kAT_F0_P7__IN_E1_F1)
(kHAVE_C0)
(kHAVE_C0__COIN-AT_C0_F1_P7)
(kHAVE_C0__COIN-AT_C0_F1_P6)
(kHAVE_C0__COIN-AT_C0_F1_P5)
(kHAVE_C0__COIN-AT_C0_F1_P4)
(kHAVE_C0__COIN-AT_C0_F1_P3)
(kHAVE_C0__COIN-AT_C0_F1_P2)
(kHAVE_C0__COIN-AT_C0_F1_P0)
(kHAVE_C0__COIN-AT_C0_F1_P1)
(kHAVE_C1)
(kHAVE_C1__COIN-AT_C1_F2_P7)
(kHAVE_C1__COIN-AT_C1_F2_P6)
(kHAVE_C1__COIN-AT_C1_F2_P5)
(kHAVE_C1__COIN-AT_C1_F2_P4)
(kHAVE_C1__COIN-AT_C1_F2_P3)
(kHAVE_C1__COIN-AT_C1_F2_P2)
(kHAVE_C1__COIN-AT_C1_F2_P0)
(kHAVE_C1__COIN-AT_C1_F2_P1)
(kHAVE_C2)
(kHAVE_C2__COIN-AT_C2_F0_P7)
(kHAVE_C2__COIN-AT_C2_F0_P6)
(kHAVE_C2__COIN-AT_C2_F0_P5)
(kHAVE_C2__COIN-AT_C2_F0_P4)
(kHAVE_C2__COIN-AT_C2_F0_P3)
(kHAVE_C2__COIN-AT_C2_F0_P2)
(kHAVE_C2__COIN-AT_C2_F0_P0)
(kHAVE_C2__COIN-AT_C2_F0_P1)
(kHAVE_C3)
(kHAVE_C3__COIN-AT_C3_F1_P7)
(kHAVE_C3__COIN-AT_C3_F1_P6)
(kHAVE_C3__COIN-AT_C3_F1_P5)
(kHAVE_C3__COIN-AT_C3_F1_P4)
(kHAVE_C3__COIN-AT_C3_F1_P3)
(kHAVE_C3__COIN-AT_C3_F1_P2)
(kHAVE_C3__COIN-AT_C3_F1_P0)
(kHAVE_C3__COIN-AT_C3_F1_P1)
(kHAVE_C4)
(kHAVE_C4__COIN-AT_C4_F1_P7)
(kHAVE_C4__COIN-AT_C4_F1_P6)
(kHAVE_C4__COIN-AT_C4_F1_P5)
(kHAVE_C4__COIN-AT_C4_F1_P4)
(kHAVE_C4__COIN-AT_C4_F1_P3)
(kHAVE_C4__COIN-AT_C4_F1_P2)
(kHAVE_C4__COIN-AT_C4_F1_P0)
(kHAVE_C4__COIN-AT_C4_F1_P1)
(kHAVE_C5)
(kHAVE_C5__COIN-AT_C5_F0_P7)
(kHAVE_C5__COIN-AT_C5_F0_P6)
(kHAVE_C5__COIN-AT_C5_F0_P5)
(kHAVE_C5__COIN-AT_C5_F0_P4)
(kHAVE_C5__COIN-AT_C5_F0_P3)
(kHAVE_C5__COIN-AT_C5_F0_P2)
(kHAVE_C5__COIN-AT_C5_F0_P0)
(kHAVE_C5__COIN-AT_C5_F0_P1)
(kINSIDE_E0)
(kINSIDE_E0__IN_E0_F2)
(kINSIDE_E0__IN_E0_F0)
(kINSIDE_E0__IN_E0_F1)
(kINSIDE_E1)
(kINSIDE_E1__IN_E1_F2)
(kINSIDE_E1__IN_E1_F0)
(kINSIDE_E1__IN_E1_F1)
(kAT_F1_P2)
(kAT_F1_P2__IN_E0_F2)
(kAT_F1_P2__IN_E0_F0)
(kAT_F1_P2__IN_E0_F1)
(kAT_F2_P2)
(kAT_F2_P2__IN_E0_F2)
(kAT_F2_P2__IN_E0_F0)
(kAT_F2_P2__IN_E0_F1)
(kAT_F1_P7)
(kAT_F1_P7__IN_E1_F2)
(kAT_F1_P7__IN_E1_F0)
(kAT_F1_P7__IN_E1_F1)
(kAT_F2_P7)
(kAT_F2_P7__IN_E1_F2)
(kAT_F2_P7__IN_E1_F0)
(kAT_F2_P7__IN_E1_F1)
(kIN_E0_F0)
(k-IN_E0_F0)
(kIN_E0_F0__IN_E0_F2)
(kIN_E0_F0__IN_E0_F0)
(kIN_E0_F0__IN_E0_F1)
(kIN_E0_F1)
(k-IN_E0_F1)
(kIN_E0_F1__IN_E0_F2)
(kIN_E0_F1__IN_E0_F0)
(kIN_E0_F1__IN_E0_F1)
(kIN_E0_F2)
(k-IN_E0_F2)
(kIN_E0_F2__IN_E0_F2)
(kIN_E0_F2__IN_E0_F0)
(kIN_E0_F2__IN_E0_F1)
(kIN_E1_F0)
(k-IN_E1_F0)
(kIN_E1_F0__IN_E1_F2)
(kIN_E1_F0__IN_E1_F0)
(kIN_E1_F0__IN_E1_F1)
(kIN_E1_F1)
(k-IN_E1_F1)
(kIN_E1_F1__IN_E1_F2)
(kIN_E1_F1__IN_E1_F0)
(kIN_E1_F1__IN_E1_F1)
(kIN_E1_F2)
(k-IN_E1_F2)
(kIN_E1_F2__IN_E1_F2)
(kIN_E1_F2__IN_E1_F0)
(kIN_E1_F2__IN_E1_F1)
(kAT_F0_P0)
(kAT_F0_P1)
(kAT_F0_P3)
(kAT_F0_P4)
(kAT_F0_P5)
(kAT_F0_P6)
(k-COIN-AT_C4_F1_P2)
(kCOIN-AT_C4_F1_P2__COIN-AT_C4_F1_P2)
(k-COIN-AT_C4_F1_P3)
(kCOIN-AT_C4_F1_P3__COIN-AT_C4_F1_P3)
(kAT_F1_P3)
(k-COIN-AT_C4_F1_P4)
(kCOIN-AT_C4_F1_P4__COIN-AT_C4_F1_P4)
(kAT_F1_P4)
(k-COIN-AT_C4_F1_P5)
(kCOIN-AT_C4_F1_P5__COIN-AT_C4_F1_P5)
(kAT_F1_P5)
(k-COIN-AT_C4_F1_P6)
(kCOIN-AT_C4_F1_P6__COIN-AT_C4_F1_P6)
(kAT_F1_P6)
(k-COIN-AT_C1_F2_P1)
(kCOIN-AT_C1_F2_P1__COIN-AT_C1_F2_P1)
(kAT_F2_P1)
(k-COIN-AT_C1_F2_P2)
(kCOIN-AT_C1_F2_P2__COIN-AT_C1_F2_P2)
(k-COIN-AT_C1_F2_P3)
(kCOIN-AT_C1_F2_P3__COIN-AT_C1_F2_P3)
(kAT_F2_P3)
(k-COIN-AT_C1_F2_P4)
(kCOIN-AT_C1_F2_P4__COIN-AT_C1_F2_P4)
(kAT_F2_P4)
(k-COIN-AT_C1_F2_P5)
(kCOIN-AT_C1_F2_P5__COIN-AT_C1_F2_P5)
(kAT_F2_P5)
(k-COIN-AT_C1_F2_P6)
(kCOIN-AT_C1_F2_P6__COIN-AT_C1_F2_P6)
(kAT_F2_P6)
(k-COIN-AT_C1_F2_P7)
(kCOIN-AT_C1_F2_P7__COIN-AT_C1_F2_P7)
(k-COIN-AT_C4_F1_P7)
(kCOIN-AT_C4_F1_P7__COIN-AT_C4_F1_P7)
(k-COIN-AT_C1_F2_P0)
(kCOIN-AT_C1_F2_P0__COIN-AT_C1_F2_P0)
(kAT_F2_P0)
(k-COIN-AT_C2_F0_P0)
(kCOIN-AT_C2_F0_P0__COIN-AT_C2_F0_P0)
(k-COIN-AT_C2_F0_P1)
(kCOIN-AT_C2_F0_P1__COIN-AT_C2_F0_P1)
(k-COIN-AT_C2_F0_P2)
(kCOIN-AT_C2_F0_P2__COIN-AT_C2_F0_P2)
(k-COIN-AT_C2_F0_P3)
(kCOIN-AT_C2_F0_P3__COIN-AT_C2_F0_P3)
(k-COIN-AT_C2_F0_P4)
(kCOIN-AT_C2_F0_P4__COIN-AT_C2_F0_P4)
(k-COIN-AT_C2_F0_P5)
(kCOIN-AT_C2_F0_P5__COIN-AT_C2_F0_P5)
(k-COIN-AT_C2_F0_P6)
(kCOIN-AT_C2_F0_P6__COIN-AT_C2_F0_P6)
(k-COIN-AT_C2_F0_P7)
(kCOIN-AT_C2_F0_P7__COIN-AT_C2_F0_P7)
(kAT_F1_P1)
(kAT_F1_P0)
(k-COIN-AT_C3_F1_P1)
(kCOIN-AT_C3_F1_P1__COIN-AT_C3_F1_P1)
(k-COIN-AT_C3_F1_P2)
(kCOIN-AT_C3_F1_P2__COIN-AT_C3_F1_P2)
(k-COIN-AT_C3_F1_P3)
(kCOIN-AT_C3_F1_P3__COIN-AT_C3_F1_P3)
(k-COIN-AT_C3_F1_P4)
(kCOIN-AT_C3_F1_P4__COIN-AT_C3_F1_P4)
(k-COIN-AT_C3_F1_P5)
(kCOIN-AT_C3_F1_P5__COIN-AT_C3_F1_P5)
(k-COIN-AT_C3_F1_P6)
(kCOIN-AT_C3_F1_P6__COIN-AT_C3_F1_P6)
(k-COIN-AT_C5_F0_P0)
(kCOIN-AT_C5_F0_P0__COIN-AT_C5_F0_P0)
(k-COIN-AT_C5_F0_P1)
(kCOIN-AT_C5_F0_P1__COIN-AT_C5_F0_P1)
(k-COIN-AT_C5_F0_P2)
(kCOIN-AT_C5_F0_P2__COIN-AT_C5_F0_P2)
(k-COIN-AT_C5_F0_P3)
(kCOIN-AT_C5_F0_P3__COIN-AT_C5_F0_P3)
(k-COIN-AT_C5_F0_P4)
(kCOIN-AT_C5_F0_P4__COIN-AT_C5_F0_P4)
(k-COIN-AT_C5_F0_P5)
(kCOIN-AT_C5_F0_P5__COIN-AT_C5_F0_P5)
(k-COIN-AT_C5_F0_P6)
(kCOIN-AT_C5_F0_P6__COIN-AT_C5_F0_P6)
(k-COIN-AT_C5_F0_P7)
(kCOIN-AT_C5_F0_P7__COIN-AT_C5_F0_P7)
(k-COIN-AT_C0_F1_P1)
(kCOIN-AT_C0_F1_P1__COIN-AT_C0_F1_P1)
(k-COIN-AT_C0_F1_P2)
(kCOIN-AT_C0_F1_P2__COIN-AT_C0_F1_P2)
(k-COIN-AT_C0_F1_P3)
(kCOIN-AT_C0_F1_P3__COIN-AT_C0_F1_P3)
(k-COIN-AT_C0_F1_P4)
(kCOIN-AT_C0_F1_P4__COIN-AT_C0_F1_P4)
(k-COIN-AT_C0_F1_P5)
(kCOIN-AT_C0_F1_P5__COIN-AT_C0_F1_P5)
(k-COIN-AT_C0_F1_P6)
(kCOIN-AT_C0_F1_P6__COIN-AT_C0_F1_P6)
(k-COIN-AT_C0_F1_P7)
(kCOIN-AT_C0_F1_P7__COIN-AT_C0_F1_P7)
(k-COIN-AT_C3_F1_P7)
(kCOIN-AT_C3_F1_P7__COIN-AT_C3_F1_P7)
(k-COIN-AT_C0_F1_P0)
(kCOIN-AT_C0_F1_P0__COIN-AT_C0_F1_P0)
(k-COIN-AT_C3_F1_P0)
(kCOIN-AT_C3_F1_P0__COIN-AT_C3_F1_P0)
(k-COIN-AT_C4_F1_P0)
(kCOIN-AT_C4_F1_P0__COIN-AT_C4_F1_P0)
(k-COIN-AT_C4_F1_P1)
(kCOIN-AT_C4_F1_P1__COIN-AT_C4_F1_P1)
)
(:action COLLECT_C4_F1_P1
:parameters ()
:precondition (and (kAT_F1_P1))

:effect (and  (k-COIN-AT_C4_F1_P1)
(when (kCOIN-AT_C4_F1_P1__COIN-AT_C4_F1_P1) (and (kHAVE_C4__COIN-AT_C4_F1_P1) (not(kCOIN-AT_C4_F1_P1__COIN-AT_C4_F1_P1)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C4_F1_P0
:parameters ()
:precondition (and (kAT_F1_P0))

:effect (and  (k-COIN-AT_C4_F1_P0)
(when (kCOIN-AT_C4_F1_P0__COIN-AT_C4_F1_P0) (and (kHAVE_C4__COIN-AT_C4_F1_P0) (not(kCOIN-AT_C4_F1_P0__COIN-AT_C4_F1_P0)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C3_F1_P0
:parameters ()
:precondition (and (kAT_F1_P0))

:effect (and  (k-COIN-AT_C3_F1_P0)
(when (kCOIN-AT_C3_F1_P0__COIN-AT_C3_F1_P0) (and (kHAVE_C3__COIN-AT_C3_F1_P0) (not(kCOIN-AT_C3_F1_P0__COIN-AT_C3_F1_P0)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C0_F1_P0
:parameters ()
:precondition (and (kAT_F1_P0))

:effect (and  (k-COIN-AT_C0_F1_P0)
(when (kCOIN-AT_C0_F1_P0__COIN-AT_C0_F1_P0) (and (kHAVE_C0__COIN-AT_C0_F1_P0) (not(kCOIN-AT_C0_F1_P0__COIN-AT_C0_F1_P0)))) ;; Support.  Cancellation. 
))
(:action MOVE-RIGHT_F2_P0_P1
:parameters ()
:precondition (and (kAT_F2_P0))

:effect (and  (not(kAT_F2_P0)) (kAT_F2_P1)
))
(:action MOVE-RIGHT_F1_P0_P1
:parameters ()
:precondition (and (kAT_F1_P0))

:effect (and  (not(kAT_F1_P0)) (kAT_F1_P1)
))
(:action MOVE-LEFT_F2_P6_P5
:parameters ()
:precondition (and (kAT_F2_P6))

:effect (and  (not(kAT_F2_P6)) (kAT_F2_P5)
))
(:action MOVE-LEFT_F2_P5_P4
:parameters ()
:precondition (and (kAT_F2_P5))

:effect (and  (not(kAT_F2_P5)) (kAT_F2_P4)
))
(:action COLLECT_C3_F1_P7
:parameters ()
:precondition (and (kAT_F1_P7))

:effect (and  (k-COIN-AT_C3_F1_P7)
(when (kCOIN-AT_C3_F1_P7__COIN-AT_C3_F1_P7) (and (kHAVE_C3__COIN-AT_C3_F1_P7) (not(kCOIN-AT_C3_F1_P7__COIN-AT_C3_F1_P7)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C0_F1_P7
:parameters ()
:precondition (and (kAT_F1_P7))

:effect (and  (k-COIN-AT_C0_F1_P7)
(when (kCOIN-AT_C0_F1_P7__COIN-AT_C0_F1_P7) (and (kHAVE_C0__COIN-AT_C0_F1_P7) (not(kCOIN-AT_C0_F1_P7__COIN-AT_C0_F1_P7)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C0_F1_P6
:parameters ()
:precondition (and (kAT_F1_P6))

:effect (and  (k-COIN-AT_C0_F1_P6)
(when (kCOIN-AT_C0_F1_P6__COIN-AT_C0_F1_P6) (and (kHAVE_C0__COIN-AT_C0_F1_P6) (not(kCOIN-AT_C0_F1_P6__COIN-AT_C0_F1_P6)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C0_F1_P5
:parameters ()
:precondition (and (kAT_F1_P5))

:effect (and  (k-COIN-AT_C0_F1_P5)
(when (kCOIN-AT_C0_F1_P5__COIN-AT_C0_F1_P5) (and (kHAVE_C0__COIN-AT_C0_F1_P5) (not(kCOIN-AT_C0_F1_P5__COIN-AT_C0_F1_P5)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C0_F1_P4
:parameters ()
:precondition (and (kAT_F1_P4))

:effect (and  (k-COIN-AT_C0_F1_P4)
(when (kCOIN-AT_C0_F1_P4__COIN-AT_C0_F1_P4) (and (kHAVE_C0__COIN-AT_C0_F1_P4) (not(kCOIN-AT_C0_F1_P4__COIN-AT_C0_F1_P4)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C0_F1_P3
:parameters ()
:precondition (and (kAT_F1_P3))

:effect (and  (k-COIN-AT_C0_F1_P3)
(when (kCOIN-AT_C0_F1_P3__COIN-AT_C0_F1_P3) (and (kHAVE_C0__COIN-AT_C0_F1_P3) (not(kCOIN-AT_C0_F1_P3__COIN-AT_C0_F1_P3)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C0_F1_P2
:parameters ()
:precondition (and (kAT_F1_P2))

:effect (and  (k-COIN-AT_C0_F1_P2)
(when (kCOIN-AT_C0_F1_P2__COIN-AT_C0_F1_P2) (and (kHAVE_C0__COIN-AT_C0_F1_P2) (not(kCOIN-AT_C0_F1_P2__COIN-AT_C0_F1_P2)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C0_F1_P1
:parameters ()
:precondition (and (kAT_F1_P1))

:effect (and  (k-COIN-AT_C0_F1_P1)
(when (kCOIN-AT_C0_F1_P1__COIN-AT_C0_F1_P1) (and (kHAVE_C0__COIN-AT_C0_F1_P1) (not(kCOIN-AT_C0_F1_P1__COIN-AT_C0_F1_P1)))) ;; Support.  Cancellation. 
))
(:action MOVE-RIGHT_F2_P6_P7
:parameters ()
:precondition (and (kAT_F2_P6))

:effect (and  (kAT_F2_P7__IN_E1_F2) (not(kAT_F2_P6)) (kAT_F2_P7__IN_E1_F0) (kAT_F2_P7__IN_E1_F1) (kAT_F2_P7)
))
(:action MOVE-RIGHT_F2_P5_P6
:parameters ()
:precondition (and (kAT_F2_P5))

:effect (and  (not(kAT_F2_P5)) (kAT_F2_P6)
))
(:action MOVE-RIGHT_F2_P4_P5
:parameters ()
:precondition (and (kAT_F2_P4))

:effect (and  (not(kAT_F2_P4)) (kAT_F2_P5)
))
(:action MOVE-RIGHT_F2_P3_P4
:parameters ()
:precondition (and (kAT_F2_P3))

:effect (and  (not(kAT_F2_P3)) (kAT_F2_P4)
))
(:action MOVE-RIGHT_F2_P2_P3
:parameters ()
:precondition (and (kAT_F2_P2))

:effect (and  (not(kAT_F2_P2__IN_E0_F0)) (not(kAT_F2_P2__IN_E0_F2)) (not(kAT_F2_P2)) (not(kAT_F2_P2__IN_E0_F1)) (kAT_F2_P3)
))
(:action MOVE-RIGHT_F2_P1_P2
:parameters ()
:precondition (and (kAT_F2_P1))

:effect (and  (kAT_F2_P2__IN_E0_F1) (kAT_F2_P2) (kAT_F2_P2__IN_E0_F2) (not(kAT_F2_P1)) (kAT_F2_P2__IN_E0_F0)
))
(:action MOVE-RIGHT_F1_P6_P7
:parameters ()
:precondition (and (kAT_F1_P6))

:effect (and  (kAT_F1_P7__IN_E1_F0) (kAT_F1_P7__IN_E1_F1) (kAT_F1_P7) (not(kAT_F1_P6)) (kAT_F1_P7__IN_E1_F2)
))
(:action MOVE-RIGHT_F1_P5_P6
:parameters ()
:precondition (and (kAT_F1_P5))

:effect (and  (not(kAT_F1_P5)) (kAT_F1_P6)
))
(:action MOVE-RIGHT_F1_P4_P5
:parameters ()
:precondition (and (kAT_F1_P4))

:effect (and  (not(kAT_F1_P4)) (kAT_F1_P5)
))
(:action MOVE-RIGHT_F1_P3_P4
:parameters ()
:precondition (and (kAT_F1_P3))

:effect (and  (not(kAT_F1_P3)) (kAT_F1_P4)
))
(:action MOVE-RIGHT_F1_P2_P3
:parameters ()
:precondition (and (kAT_F1_P2))

:effect (and  (not(kAT_F1_P2__IN_E0_F0)) (kAT_F1_P3) (not(kAT_F1_P2__IN_E0_F2)) (not(kAT_F1_P2)) (not(kAT_F1_P2__IN_E0_F1))
))
(:action MOVE-RIGHT_F1_P1_P2
:parameters ()
:precondition (and (kAT_F1_P1))

:effect (and  (not(kAT_F1_P1)) (kAT_F1_P2__IN_E0_F2) (kAT_F1_P2__IN_E0_F0) (kAT_F1_P2__IN_E0_F1) (kAT_F1_P2)
))
(:action MOVE-LEFT_F2_P7_P6
:parameters ()
:precondition (and (kAT_F2_P7))

:effect (and  (not(kAT_F2_P7__IN_E1_F2)) (not(kAT_F2_P7)) (not(kAT_F2_P7__IN_E1_F1)) (not(kAT_F2_P7__IN_E1_F0)) (kAT_F2_P6)
))
(:action MOVE-LEFT_F2_P2_P1
:parameters ()
:precondition (and (kAT_F2_P2))

:effect (and  (not(kAT_F2_P2__IN_E0_F0)) (not(kAT_F2_P2__IN_E0_F2)) (kAT_F2_P1) (not(kAT_F2_P2)) (not(kAT_F2_P2__IN_E0_F1))
))
(:action MOVE-LEFT_F1_P7_P6
:parameters ()
:precondition (and (kAT_F1_P7))

:effect (and  (not(kAT_F1_P7__IN_E1_F2)) (kAT_F1_P6) (not(kAT_F1_P7)) (not(kAT_F1_P7__IN_E1_F1)) (not(kAT_F1_P7__IN_E1_F0))
))
(:action MOVE-LEFT_F1_P2_P1
:parameters ()
:precondition (and (kAT_F1_P2))

:effect (and  (kAT_F1_P1) (not(kAT_F1_P2__IN_E0_F0)) (not(kAT_F1_P2__IN_E0_F2)) (not(kAT_F1_P2__IN_E0_F1)) (not(kAT_F1_P2))
))
(:action MOVE-LEFT_F0_P7_P6
:parameters ()
:precondition (and (kAT_F0_P7))

:effect (and  (not(kAT_F0_P7__IN_E1_F0)) (not(kAT_F0_P7__IN_E1_F2)) (kAT_F0_P6) (not(kAT_F0_P7)) (not(kAT_F0_P7__IN_E1_F1))
))
(:action MOVE-LEFT_F0_P6_P5
:parameters ()
:precondition (and (kAT_F0_P6))

:effect (and  (not(kAT_F0_P6)) (kAT_F0_P5)
))
(:action MOVE-LEFT_F0_P5_P4
:parameters ()
:precondition (and (kAT_F0_P5))

:effect (and  (not(kAT_F0_P5)) (kAT_F0_P4)
))
(:action MOVE-LEFT_F0_P4_P3
:parameters ()
:precondition (and (kAT_F0_P4))

:effect (and  (not(kAT_F0_P4)) (kAT_F0_P3)
))
(:action MOVE-LEFT_F0_P3_P2
:parameters ()
:precondition (and (kAT_F0_P3))

:effect (and  (kAT_F0_P2__IN_E0_F0) (not(kAT_F0_P3)) (kAT_F0_P2__IN_E0_F1) (kAT_F0_P2) (kAT_F0_P2__IN_E0_F2)
))
(:action MOVE-LEFT_F0_P2_P1
:parameters ()
:precondition (and (kAT_F0_P2))

:effect (and  (not(kAT_F0_P2)) (not(kAT_F0_P2__IN_E0_F1)) (not(kAT_F0_P2__IN_E0_F0)) (not(kAT_F0_P2__IN_E0_F2)) (kAT_F0_P1)
))
(:action MOVE-LEFT_F0_P1_P0
:parameters ()
:precondition (and (kAT_F0_P1))

:effect (and  (not(kAT_F0_P1)) (kAT_F0_P0)
))
(:action STEP-OUT_E1_F2_P7
:parameters ()
:precondition (and (kINSIDE_E1))

:effect (and 
(when (kIN_E1_F2)  (kAT_F2_P7)) ;; Support. 
(when (not(k-IN_E1_F2))  (not(kINSIDE_E1))) ;; Cancellation. 
(when (kIN_E1_F2__IN_E1_F2) (and (kAT_F2_P7__IN_E1_F2) (not(kINSIDE_E1__IN_E1_F2)))) ;; Support.  Cancellation. 
(when (kIN_E1_F2__IN_E1_F0) (and (kAT_F2_P7__IN_E1_F0) (not(kINSIDE_E1__IN_E1_F0)))) ;; Support.  Cancellation. 
(when (kIN_E1_F2__IN_E1_F1) (and (kAT_F2_P7__IN_E1_F1) (not(kINSIDE_E1__IN_E1_F1)))) ;; Support.  Cancellation. 
))
(:action STEP-OUT_E1_F1_P7
:parameters ()
:precondition (and (kINSIDE_E1))

:effect (and 
(when (kIN_E1_F1)  (kAT_F1_P7)) ;; Support. 
(when (not(k-IN_E1_F1))  (not(kINSIDE_E1))) ;; Cancellation. 
(when (kIN_E1_F1__IN_E1_F2) (and (kAT_F1_P7__IN_E1_F2) (not(kINSIDE_E1__IN_E1_F2)))) ;; Support.  Cancellation. 
(when (kIN_E1_F1__IN_E1_F0) (and (kAT_F1_P7__IN_E1_F0) (not(kINSIDE_E1__IN_E1_F0)))) ;; Support.  Cancellation. 
(when (kIN_E1_F1__IN_E1_F1) (and (kAT_F1_P7__IN_E1_F1) (not(kINSIDE_E1__IN_E1_F1)))) ;; Support.  Cancellation. 
))
(:action STEP-OUT_E1_F0_P7
:parameters ()
:precondition (and (kINSIDE_E1))

:effect (and 
(when (kIN_E1_F0)  (kAT_F0_P7)) ;; Support. 
(when (not(k-IN_E1_F0))  (not(kINSIDE_E1))) ;; Cancellation. 
(when (kIN_E1_F0__IN_E1_F2) (and (kAT_F0_P7__IN_E1_F2) (not(kINSIDE_E1__IN_E1_F2)))) ;; Support.  Cancellation. 
(when (kIN_E1_F0__IN_E1_F0) (and (kAT_F0_P7__IN_E1_F0) (not(kINSIDE_E1__IN_E1_F0)))) ;; Support.  Cancellation. 
(when (kIN_E1_F0__IN_E1_F1) (and (kAT_F0_P7__IN_E1_F1) (not(kINSIDE_E1__IN_E1_F1)))) ;; Support.  Cancellation. 
))
(:action STEP-OUT_E0_F2_P2
:parameters ()
:precondition (and (kINSIDE_E0))

:effect (and 
(when (kIN_E0_F2)  (kAT_F2_P2)) ;; Support. 
(when (not(k-IN_E0_F2))  (not(kINSIDE_E0))) ;; Cancellation. 
(when (kIN_E0_F2__IN_E0_F2) (and (kAT_F2_P2__IN_E0_F2) (not(kINSIDE_E0__IN_E0_F2)))) ;; Support.  Cancellation. 
(when (kIN_E0_F2__IN_E0_F0) (and (kAT_F2_P2__IN_E0_F0) (not(kINSIDE_E0__IN_E0_F0)))) ;; Support.  Cancellation. 
(when (kIN_E0_F2__IN_E0_F1) (and (kAT_F2_P2__IN_E0_F1) (not(kINSIDE_E0__IN_E0_F1)))) ;; Support.  Cancellation. 
))
(:action STEP-OUT_E0_F1_P2
:parameters ()
:precondition (and (kINSIDE_E0))

:effect (and 
(when (kIN_E0_F1)  (kAT_F1_P2)) ;; Support. 
(when (not(k-IN_E0_F1))  (not(kINSIDE_E0))) ;; Cancellation. 
(when (kIN_E0_F1__IN_E0_F2) (and (kAT_F1_P2__IN_E0_F2) (not(kINSIDE_E0__IN_E0_F2)))) ;; Support.  Cancellation. 
(when (kIN_E0_F1__IN_E0_F0) (and (kAT_F1_P2__IN_E0_F0) (not(kINSIDE_E0__IN_E0_F0)))) ;; Support.  Cancellation. 
(when (kIN_E0_F1__IN_E0_F1) (and (kAT_F1_P2__IN_E0_F1) (not(kINSIDE_E0__IN_E0_F1)))) ;; Support.  Cancellation. 
))
(:action STEP-OUT_E0_F0_P2
:parameters ()
:precondition (and (kINSIDE_E0))

:effect (and 
(when (kIN_E0_F0)  (kAT_F0_P2)) ;; Support. 
(when (not(k-IN_E0_F0))  (not(kINSIDE_E0))) ;; Cancellation. 
(when (kIN_E0_F0__IN_E0_F2) (and (kAT_F0_P2__IN_E0_F2) (not(kINSIDE_E0__IN_E0_F2)))) ;; Support.  Cancellation. 
(when (kIN_E0_F0__IN_E0_F0) (and (kAT_F0_P2__IN_E0_F0) (not(kINSIDE_E0__IN_E0_F0)))) ;; Support.  Cancellation. 
(when (kIN_E0_F0__IN_E0_F1) (and (kAT_F0_P2__IN_E0_F1) (not(kINSIDE_E0__IN_E0_F1)))) ;; Support.  Cancellation. 
))
(:action STEP-IN_E1_F0_P7
:parameters ()
:precondition (and (kAT_F0_P7))

:effect (and 
(when (kIN_E1_F0)  (kINSIDE_E1)) ;; Support. 
(when (not(k-IN_E1_F0))  (not(kAT_F0_P7))) ;; Cancellation. 
(when (kIN_E1_F0__IN_E1_F2) (and (kINSIDE_E1__IN_E1_F2) (not(kAT_F0_P7__IN_E1_F2)))) ;; Support.  Cancellation. 
(when (kIN_E1_F0__IN_E1_F0) (and (kINSIDE_E1__IN_E1_F0) (not(kAT_F0_P7__IN_E1_F0)))) ;; Support.  Cancellation. 
(when (kIN_E1_F0__IN_E1_F1) (and (kINSIDE_E1__IN_E1_F1) (not(kAT_F0_P7__IN_E1_F1)))) ;; Support.  Cancellation. 
))
(:action STEP-IN_E0_F0_P2
:parameters ()
:precondition (and (kAT_F0_P2))

:effect (and 
(when (kIN_E0_F0)  (kINSIDE_E0)) ;; Support. 
(when (not(k-IN_E0_F0))  (not(kAT_F0_P2))) ;; Cancellation. 
(when (kIN_E0_F0__IN_E0_F2) (and (kINSIDE_E0__IN_E0_F2) (not(kAT_F0_P2__IN_E0_F2)))) ;; Support.  Cancellation. 
(when (kIN_E0_F0__IN_E0_F0) (and (kINSIDE_E0__IN_E0_F0) (not(kAT_F0_P2__IN_E0_F0)))) ;; Support.  Cancellation. 
(when (kIN_E0_F0__IN_E0_F1) (and (kINSIDE_E0__IN_E0_F1) (not(kAT_F0_P2__IN_E0_F1)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C5_F0_P7
:parameters ()
:precondition (and (kAT_F0_P7))

:effect (and  (k-COIN-AT_C5_F0_P7)
(when (kCOIN-AT_C5_F0_P7__COIN-AT_C5_F0_P7) (and (kHAVE_C5__COIN-AT_C5_F0_P7) (not(kCOIN-AT_C5_F0_P7__COIN-AT_C5_F0_P7)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C5_F0_P6
:parameters ()
:precondition (and (kAT_F0_P6))

:effect (and  (k-COIN-AT_C5_F0_P6)
(when (kCOIN-AT_C5_F0_P6__COIN-AT_C5_F0_P6) (and (kHAVE_C5__COIN-AT_C5_F0_P6) (not(kCOIN-AT_C5_F0_P6__COIN-AT_C5_F0_P6)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C5_F0_P5
:parameters ()
:precondition (and (kAT_F0_P5))

:effect (and  (k-COIN-AT_C5_F0_P5)
(when (kCOIN-AT_C5_F0_P5__COIN-AT_C5_F0_P5) (and (kHAVE_C5__COIN-AT_C5_F0_P5) (not(kCOIN-AT_C5_F0_P5__COIN-AT_C5_F0_P5)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C5_F0_P4
:parameters ()
:precondition (and (kAT_F0_P4))

:effect (and  (k-COIN-AT_C5_F0_P4)
(when (kCOIN-AT_C5_F0_P4__COIN-AT_C5_F0_P4) (and (kHAVE_C5__COIN-AT_C5_F0_P4) (not(kCOIN-AT_C5_F0_P4__COIN-AT_C5_F0_P4)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C5_F0_P3
:parameters ()
:precondition (and (kAT_F0_P3))

:effect (and  (k-COIN-AT_C5_F0_P3)
(when (kCOIN-AT_C5_F0_P3__COIN-AT_C5_F0_P3) (and (kHAVE_C5__COIN-AT_C5_F0_P3) (not(kCOIN-AT_C5_F0_P3__COIN-AT_C5_F0_P3)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C5_F0_P2
:parameters ()
:precondition (and (kAT_F0_P2))

:effect (and  (k-COIN-AT_C5_F0_P2)
(when (kCOIN-AT_C5_F0_P2__COIN-AT_C5_F0_P2) (and (kHAVE_C5__COIN-AT_C5_F0_P2) (not(kCOIN-AT_C5_F0_P2__COIN-AT_C5_F0_P2)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C5_F0_P1
:parameters ()
:precondition (and (kAT_F0_P1))

:effect (and  (k-COIN-AT_C5_F0_P1)
(when (kCOIN-AT_C5_F0_P1__COIN-AT_C5_F0_P1) (and (kHAVE_C5__COIN-AT_C5_F0_P1) (not(kCOIN-AT_C5_F0_P1__COIN-AT_C5_F0_P1)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C5_F0_P0
:parameters ()
:precondition (and (kAT_F0_P0))

:effect (and  (k-COIN-AT_C5_F0_P0)
(when (kCOIN-AT_C5_F0_P0__COIN-AT_C5_F0_P0) (and (kHAVE_C5__COIN-AT_C5_F0_P0) (not(kCOIN-AT_C5_F0_P0__COIN-AT_C5_F0_P0)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C3_F1_P6
:parameters ()
:precondition (and (kAT_F1_P6))

:effect (and  (k-COIN-AT_C3_F1_P6)
(when (kCOIN-AT_C3_F1_P6__COIN-AT_C3_F1_P6) (and (kHAVE_C3__COIN-AT_C3_F1_P6) (not(kCOIN-AT_C3_F1_P6__COIN-AT_C3_F1_P6)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C3_F1_P5
:parameters ()
:precondition (and (kAT_F1_P5))

:effect (and  (k-COIN-AT_C3_F1_P5)
(when (kCOIN-AT_C3_F1_P5__COIN-AT_C3_F1_P5) (and (kHAVE_C3__COIN-AT_C3_F1_P5) (not(kCOIN-AT_C3_F1_P5__COIN-AT_C3_F1_P5)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C3_F1_P4
:parameters ()
:precondition (and (kAT_F1_P4))

:effect (and  (k-COIN-AT_C3_F1_P4)
(when (kCOIN-AT_C3_F1_P4__COIN-AT_C3_F1_P4) (and (kHAVE_C3__COIN-AT_C3_F1_P4) (not(kCOIN-AT_C3_F1_P4__COIN-AT_C3_F1_P4)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C3_F1_P3
:parameters ()
:precondition (and (kAT_F1_P3))

:effect (and  (k-COIN-AT_C3_F1_P3)
(when (kCOIN-AT_C3_F1_P3__COIN-AT_C3_F1_P3) (and (kHAVE_C3__COIN-AT_C3_F1_P3) (not(kCOIN-AT_C3_F1_P3__COIN-AT_C3_F1_P3)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C3_F1_P2
:parameters ()
:precondition (and (kAT_F1_P2))

:effect (and  (k-COIN-AT_C3_F1_P2)
(when (kCOIN-AT_C3_F1_P2__COIN-AT_C3_F1_P2) (and (kHAVE_C3__COIN-AT_C3_F1_P2) (not(kCOIN-AT_C3_F1_P2__COIN-AT_C3_F1_P2)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C3_F1_P1
:parameters ()
:precondition (and (kAT_F1_P1))

:effect (and  (k-COIN-AT_C3_F1_P1)
(when (kCOIN-AT_C3_F1_P1__COIN-AT_C3_F1_P1) (and (kHAVE_C3__COIN-AT_C3_F1_P1) (not(kCOIN-AT_C3_F1_P1__COIN-AT_C3_F1_P1)))) ;; Support.  Cancellation. 
))
(:action MOVE-LEFT_F2_P4_P3
:parameters ()
:precondition (and (kAT_F2_P4))

:effect (and  (not(kAT_F2_P4)) (kAT_F2_P3)
))
(:action MOVE-LEFT_F2_P3_P2
:parameters ()
:precondition (and (kAT_F2_P3))

:effect (and  (kAT_F2_P2__IN_E0_F1) (kAT_F2_P2) (kAT_F2_P2__IN_E0_F2) (not(kAT_F2_P3)) (kAT_F2_P2__IN_E0_F0)
))
(:action MOVE-LEFT_F2_P1_P0
:parameters ()
:precondition (and (kAT_F2_P1))

:effect (and  (not(kAT_F2_P1)) (kAT_F2_P0)
))
(:action MOVE-LEFT_F1_P6_P5
:parameters ()
:precondition (and (kAT_F1_P6))

:effect (and  (not(kAT_F1_P6)) (kAT_F1_P5)
))
(:action MOVE-LEFT_F1_P5_P4
:parameters ()
:precondition (and (kAT_F1_P5))

:effect (and  (not(kAT_F1_P5)) (kAT_F1_P4)
))
(:action MOVE-LEFT_F1_P4_P3
:parameters ()
:precondition (and (kAT_F1_P4))

:effect (and  (not(kAT_F1_P4)) (kAT_F1_P3)
))
(:action MOVE-LEFT_F1_P3_P2
:parameters ()
:precondition (and (kAT_F1_P3))

:effect (and  (kAT_F1_P2__IN_E0_F2) (kAT_F1_P2__IN_E0_F0) (not(kAT_F1_P3)) (kAT_F1_P2__IN_E0_F1) (kAT_F1_P2)
))
(:action MOVE-LEFT_F1_P1_P0
:parameters ()
:precondition (and (kAT_F1_P1))

:effect (and  (not(kAT_F1_P1)) (kAT_F1_P0)
))
(:action STEP-IN_E1_F2_P7
:parameters ()
:precondition (and (kAT_F2_P7))

:effect (and 
(when (kIN_E1_F2)  (kINSIDE_E1)) ;; Support. 
(when (not(k-IN_E1_F2))  (not(kAT_F2_P7))) ;; Cancellation. 
(when (kIN_E1_F2__IN_E1_F2) (and (kINSIDE_E1__IN_E1_F2) (not(kAT_F2_P7__IN_E1_F2)))) ;; Support.  Cancellation. 
(when (kIN_E1_F2__IN_E1_F0) (and (kINSIDE_E1__IN_E1_F0) (not(kAT_F2_P7__IN_E1_F0)))) ;; Support.  Cancellation. 
(when (kIN_E1_F2__IN_E1_F1) (and (kINSIDE_E1__IN_E1_F1) (not(kAT_F2_P7__IN_E1_F1)))) ;; Support.  Cancellation. 
))
(:action STEP-IN_E1_F1_P7
:parameters ()
:precondition (and (kAT_F1_P7))

:effect (and 
(when (kIN_E1_F1)  (kINSIDE_E1)) ;; Support. 
(when (not(k-IN_E1_F1))  (not(kAT_F1_P7))) ;; Cancellation. 
(when (kIN_E1_F1__IN_E1_F2) (and (kINSIDE_E1__IN_E1_F2) (not(kAT_F1_P7__IN_E1_F2)))) ;; Support.  Cancellation. 
(when (kIN_E1_F1__IN_E1_F0) (and (kINSIDE_E1__IN_E1_F0) (not(kAT_F1_P7__IN_E1_F0)))) ;; Support.  Cancellation. 
(when (kIN_E1_F1__IN_E1_F1) (and (kINSIDE_E1__IN_E1_F1) (not(kAT_F1_P7__IN_E1_F1)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C2_F0_P7
:parameters ()
:precondition (and (kAT_F0_P7))

:effect (and  (k-COIN-AT_C2_F0_P7)
(when (kCOIN-AT_C2_F0_P7__COIN-AT_C2_F0_P7) (and (kHAVE_C2__COIN-AT_C2_F0_P7) (not(kCOIN-AT_C2_F0_P7__COIN-AT_C2_F0_P7)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C2_F0_P6
:parameters ()
:precondition (and (kAT_F0_P6))

:effect (and  (k-COIN-AT_C2_F0_P6)
(when (kCOIN-AT_C2_F0_P6__COIN-AT_C2_F0_P6) (and (kHAVE_C2__COIN-AT_C2_F0_P6) (not(kCOIN-AT_C2_F0_P6__COIN-AT_C2_F0_P6)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C2_F0_P5
:parameters ()
:precondition (and (kAT_F0_P5))

:effect (and  (k-COIN-AT_C2_F0_P5)
(when (kCOIN-AT_C2_F0_P5__COIN-AT_C2_F0_P5) (and (kHAVE_C2__COIN-AT_C2_F0_P5) (not(kCOIN-AT_C2_F0_P5__COIN-AT_C2_F0_P5)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C2_F0_P4
:parameters ()
:precondition (and (kAT_F0_P4))

:effect (and  (k-COIN-AT_C2_F0_P4)
(when (kCOIN-AT_C2_F0_P4__COIN-AT_C2_F0_P4) (and (kHAVE_C2__COIN-AT_C2_F0_P4) (not(kCOIN-AT_C2_F0_P4__COIN-AT_C2_F0_P4)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C2_F0_P3
:parameters ()
:precondition (and (kAT_F0_P3))

:effect (and  (k-COIN-AT_C2_F0_P3)
(when (kCOIN-AT_C2_F0_P3__COIN-AT_C2_F0_P3) (and (kHAVE_C2__COIN-AT_C2_F0_P3) (not(kCOIN-AT_C2_F0_P3__COIN-AT_C2_F0_P3)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C2_F0_P2
:parameters ()
:precondition (and (kAT_F0_P2))

:effect (and  (k-COIN-AT_C2_F0_P2)
(when (kCOIN-AT_C2_F0_P2__COIN-AT_C2_F0_P2) (and (kHAVE_C2__COIN-AT_C2_F0_P2) (not(kCOIN-AT_C2_F0_P2__COIN-AT_C2_F0_P2)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C2_F0_P1
:parameters ()
:precondition (and (kAT_F0_P1))

:effect (and  (k-COIN-AT_C2_F0_P1)
(when (kCOIN-AT_C2_F0_P1__COIN-AT_C2_F0_P1) (and (kHAVE_C2__COIN-AT_C2_F0_P1) (not(kCOIN-AT_C2_F0_P1__COIN-AT_C2_F0_P1)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C2_F0_P0
:parameters ()
:precondition (and (kAT_F0_P0))

:effect (and  (k-COIN-AT_C2_F0_P0)
(when (kCOIN-AT_C2_F0_P0__COIN-AT_C2_F0_P0) (and (kHAVE_C2__COIN-AT_C2_F0_P0) (not(kCOIN-AT_C2_F0_P0__COIN-AT_C2_F0_P0)))) ;; Support.  Cancellation. 
))
(:action STEP-IN_E0_F2_P2
:parameters ()
:precondition (and (kAT_F2_P2))

:effect (and 
(when (kIN_E0_F2)  (kINSIDE_E0)) ;; Support. 
(when (not(k-IN_E0_F2))  (not(kAT_F2_P2))) ;; Cancellation. 
(when (kIN_E0_F2__IN_E0_F2) (and (kINSIDE_E0__IN_E0_F2) (not(kAT_F2_P2__IN_E0_F2)))) ;; Support.  Cancellation. 
(when (kIN_E0_F2__IN_E0_F0) (and (kINSIDE_E0__IN_E0_F0) (not(kAT_F2_P2__IN_E0_F0)))) ;; Support.  Cancellation. 
(when (kIN_E0_F2__IN_E0_F1) (and (kINSIDE_E0__IN_E0_F1) (not(kAT_F2_P2__IN_E0_F1)))) ;; Support.  Cancellation. 
))
(:action STEP-IN_E0_F1_P2
:parameters ()
:precondition (and (kAT_F1_P2))

:effect (and 
(when (kIN_E0_F1)  (kINSIDE_E0)) ;; Support. 
(when (not(k-IN_E0_F1))  (not(kAT_F1_P2))) ;; Cancellation. 
(when (kIN_E0_F1__IN_E0_F2) (and (kINSIDE_E0__IN_E0_F2) (not(kAT_F1_P2__IN_E0_F2)))) ;; Support.  Cancellation. 
(when (kIN_E0_F1__IN_E0_F0) (and (kINSIDE_E0__IN_E0_F0) (not(kAT_F1_P2__IN_E0_F0)))) ;; Support.  Cancellation. 
(when (kIN_E0_F1__IN_E0_F1) (and (kINSIDE_E0__IN_E0_F1) (not(kAT_F1_P2__IN_E0_F1)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C1_F2_P0
:parameters ()
:precondition (and (kAT_F2_P0))

:effect (and  (k-COIN-AT_C1_F2_P0)
(when (kCOIN-AT_C1_F2_P0__COIN-AT_C1_F2_P0) (and (kHAVE_C1__COIN-AT_C1_F2_P0) (not(kCOIN-AT_C1_F2_P0__COIN-AT_C1_F2_P0)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C4_F1_P7
:parameters ()
:precondition (and (kAT_F1_P7))

:effect (and  (k-COIN-AT_C4_F1_P7)
(when (kCOIN-AT_C4_F1_P7__COIN-AT_C4_F1_P7) (and (kHAVE_C4__COIN-AT_C4_F1_P7) (not(kCOIN-AT_C4_F1_P7__COIN-AT_C4_F1_P7)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C1_F2_P7
:parameters ()
:precondition (and (kAT_F2_P7))

:effect (and  (k-COIN-AT_C1_F2_P7)
(when (kCOIN-AT_C1_F2_P7__COIN-AT_C1_F2_P7) (and (kHAVE_C1__COIN-AT_C1_F2_P7) (not(kCOIN-AT_C1_F2_P7__COIN-AT_C1_F2_P7)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C1_F2_P6
:parameters ()
:precondition (and (kAT_F2_P6))

:effect (and  (k-COIN-AT_C1_F2_P6)
(when (kCOIN-AT_C1_F2_P6__COIN-AT_C1_F2_P6) (and (kHAVE_C1__COIN-AT_C1_F2_P6) (not(kCOIN-AT_C1_F2_P6__COIN-AT_C1_F2_P6)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C1_F2_P5
:parameters ()
:precondition (and (kAT_F2_P5))

:effect (and  (k-COIN-AT_C1_F2_P5)
(when (kCOIN-AT_C1_F2_P5__COIN-AT_C1_F2_P5) (and (kHAVE_C1__COIN-AT_C1_F2_P5) (not(kCOIN-AT_C1_F2_P5__COIN-AT_C1_F2_P5)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C1_F2_P4
:parameters ()
:precondition (and (kAT_F2_P4))

:effect (and  (k-COIN-AT_C1_F2_P4)
(when (kCOIN-AT_C1_F2_P4__COIN-AT_C1_F2_P4) (and (kHAVE_C1__COIN-AT_C1_F2_P4) (not(kCOIN-AT_C1_F2_P4__COIN-AT_C1_F2_P4)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C1_F2_P3
:parameters ()
:precondition (and (kAT_F2_P3))

:effect (and  (k-COIN-AT_C1_F2_P3)
(when (kCOIN-AT_C1_F2_P3__COIN-AT_C1_F2_P3) (and (kHAVE_C1__COIN-AT_C1_F2_P3) (not(kCOIN-AT_C1_F2_P3__COIN-AT_C1_F2_P3)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C1_F2_P2
:parameters ()
:precondition (and (kAT_F2_P2))

:effect (and  (k-COIN-AT_C1_F2_P2)
(when (kCOIN-AT_C1_F2_P2__COIN-AT_C1_F2_P2) (and (kHAVE_C1__COIN-AT_C1_F2_P2) (not(kCOIN-AT_C1_F2_P2__COIN-AT_C1_F2_P2)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C1_F2_P1
:parameters ()
:precondition (and (kAT_F2_P1))

:effect (and  (k-COIN-AT_C1_F2_P1)
(when (kCOIN-AT_C1_F2_P1__COIN-AT_C1_F2_P1) (and (kHAVE_C1__COIN-AT_C1_F2_P1) (not(kCOIN-AT_C1_F2_P1__COIN-AT_C1_F2_P1)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C4_F1_P6
:parameters ()
:precondition (and (kAT_F1_P6))

:effect (and  (k-COIN-AT_C4_F1_P6)
(when (kCOIN-AT_C4_F1_P6__COIN-AT_C4_F1_P6) (and (kHAVE_C4__COIN-AT_C4_F1_P6) (not(kCOIN-AT_C4_F1_P6__COIN-AT_C4_F1_P6)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C4_F1_P5
:parameters ()
:precondition (and (kAT_F1_P5))

:effect (and  (k-COIN-AT_C4_F1_P5)
(when (kCOIN-AT_C4_F1_P5__COIN-AT_C4_F1_P5) (and (kHAVE_C4__COIN-AT_C4_F1_P5) (not(kCOIN-AT_C4_F1_P5__COIN-AT_C4_F1_P5)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C4_F1_P4
:parameters ()
:precondition (and (kAT_F1_P4))

:effect (and  (k-COIN-AT_C4_F1_P4)
(when (kCOIN-AT_C4_F1_P4__COIN-AT_C4_F1_P4) (and (kHAVE_C4__COIN-AT_C4_F1_P4) (not(kCOIN-AT_C4_F1_P4__COIN-AT_C4_F1_P4)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C4_F1_P3
:parameters ()
:precondition (and (kAT_F1_P3))

:effect (and  (k-COIN-AT_C4_F1_P3)
(when (kCOIN-AT_C4_F1_P3__COIN-AT_C4_F1_P3) (and (kHAVE_C4__COIN-AT_C4_F1_P3) (not(kCOIN-AT_C4_F1_P3__COIN-AT_C4_F1_P3)))) ;; Support.  Cancellation. 
))
(:action COLLECT_C4_F1_P2
:parameters ()
:precondition (and (kAT_F1_P2))

:effect (and  (k-COIN-AT_C4_F1_P2)
(when (kCOIN-AT_C4_F1_P2__COIN-AT_C4_F1_P2) (and (kHAVE_C4__COIN-AT_C4_F1_P2) (not(kCOIN-AT_C4_F1_P2__COIN-AT_C4_F1_P2)))) ;; Support.  Cancellation. 
))
(:action MOVE-RIGHT_F0_P6_P7
:parameters ()
:precondition (and (kAT_F0_P6))

:effect (and  (kAT_F0_P7__IN_E1_F2) (not(kAT_F0_P6)) (kAT_F0_P7__IN_E1_F0) (kAT_F0_P7__IN_E1_F1) (kAT_F0_P7)
))
(:action MOVE-RIGHT_F0_P5_P6
:parameters ()
:precondition (and (kAT_F0_P5))

:effect (and  (not(kAT_F0_P5)) (kAT_F0_P6)
))
(:action MOVE-RIGHT_F0_P4_P5
:parameters ()
:precondition (and (kAT_F0_P4))

:effect (and  (not(kAT_F0_P4)) (kAT_F0_P5)
))
(:action MOVE-RIGHT_F0_P3_P4
:parameters ()
:precondition (and (kAT_F0_P3))

:effect (and  (not(kAT_F0_P3)) (kAT_F0_P4)
))
(:action MOVE-RIGHT_F0_P2_P3
:parameters ()
:precondition (and (kAT_F0_P2))

:effect (and  (not(kAT_F0_P2__IN_E0_F1)) (not(kAT_F0_P2)) (kAT_F0_P3) (not(kAT_F0_P2__IN_E0_F0)) (not(kAT_F0_P2__IN_E0_F2))
))
(:action MOVE-RIGHT_F0_P1_P2
:parameters ()
:precondition (and (kAT_F0_P1))

:effect (and  (not(kAT_F0_P1)) (kAT_F0_P2__IN_E0_F0) (kAT_F0_P2__IN_E0_F1) (kAT_F0_P2) (kAT_F0_P2__IN_E0_F2)
))
(:action MOVE-RIGHT_F0_P0_P1
:parameters ()
:precondition (and (kAT_F0_P0))

:effect (and  (not(kAT_F0_P0)) (kAT_F0_P1)
))
(:action GO-DOWN_E1_F2_F1
:parameters ()
:precondition (and)

:effect (and  (k-IN_E1_F2)
(when (kIN_E1_F2__IN_E1_F1) (and (kIN_E1_F1__IN_E1_F1) (not(kIN_E1_F2__IN_E1_F1)))) ;; Support.  Cancellation. 
(when (kIN_E1_F2) (and (kIN_E1_F1) (k-IN_E1_F2))) ;; Support. 
(when (not(k-IN_E1_F2)) (and (not(k-IN_E1_F1)) (not(kIN_E1_F2)))) ;; Cancellation. 
(when (kIN_E1_F2__IN_E1_F2) (and (kIN_E1_F1__IN_E1_F2) (not(kIN_E1_F2__IN_E1_F2)))) ;; Support.  Cancellation. 
(when (kIN_E1_F2__IN_E1_F0) (and (kIN_E1_F1__IN_E1_F0) (not(kIN_E1_F2__IN_E1_F0)))) ;; Support.  Cancellation. 
))
(:action GO-DOWN_E1_F1_F0
:parameters ()
:precondition (and)

:effect (and  (k-IN_E1_F1)
(when (kIN_E1_F1__IN_E1_F1) (and (kIN_E1_F0__IN_E1_F1) (not(kIN_E1_F1__IN_E1_F1)))) ;; Support.  Cancellation. 
(when (kIN_E1_F1) (and (kIN_E1_F0) (k-IN_E1_F1))) ;; Support. 
(when (not(k-IN_E1_F1)) (and (not(k-IN_E1_F0)) (not(kIN_E1_F1)))) ;; Cancellation. 
(when (kIN_E1_F1__IN_E1_F2) (and (kIN_E1_F0__IN_E1_F2) (not(kIN_E1_F1__IN_E1_F2)))) ;; Support.  Cancellation. 
(when (kIN_E1_F1__IN_E1_F0) (and (kIN_E1_F0__IN_E1_F0) (not(kIN_E1_F1__IN_E1_F0)))) ;; Support.  Cancellation. 
))
(:action GO-DOWN_E0_F2_F1
:parameters ()
:precondition (and)

:effect (and  (k-IN_E0_F2)
(when (kIN_E0_F2__IN_E0_F1) (and (kIN_E0_F1__IN_E0_F1) (not(kIN_E0_F2__IN_E0_F1)))) ;; Support.  Cancellation. 
(when (kIN_E0_F2) (and (kIN_E0_F1) (k-IN_E0_F2))) ;; Support. 
(when (not(k-IN_E0_F2)) (and (not(k-IN_E0_F1)) (not(kIN_E0_F2)))) ;; Cancellation. 
(when (kIN_E0_F2__IN_E0_F2) (and (kIN_E0_F1__IN_E0_F2) (not(kIN_E0_F2__IN_E0_F2)))) ;; Support.  Cancellation. 
(when (kIN_E0_F2__IN_E0_F0) (and (kIN_E0_F1__IN_E0_F0) (not(kIN_E0_F2__IN_E0_F0)))) ;; Support.  Cancellation. 
))
(:action GO-DOWN_E0_F1_F0
:parameters ()
:precondition (and)

:effect (and  (k-IN_E0_F1)
(when (kIN_E0_F1__IN_E0_F1) (and (kIN_E0_F0__IN_E0_F1) (not(kIN_E0_F1__IN_E0_F1)))) ;; Support.  Cancellation. 
(when (kIN_E0_F1) (and (kIN_E0_F0) (k-IN_E0_F1))) ;; Support. 
(when (not(k-IN_E0_F1)) (and (not(k-IN_E0_F0)) (not(kIN_E0_F1)))) ;; Cancellation. 
(when (kIN_E0_F1__IN_E0_F2) (and (kIN_E0_F0__IN_E0_F2) (not(kIN_E0_F1__IN_E0_F2)))) ;; Support.  Cancellation. 
(when (kIN_E0_F1__IN_E0_F0) (and (kIN_E0_F0__IN_E0_F0) (not(kIN_E0_F1__IN_E0_F0)))) ;; Support.  Cancellation. 
))
(:action GO-UP_E1_F1_F2
:parameters ()
:precondition (and)

:effect (and  (k-IN_E1_F1)
(when (kIN_E1_F1__IN_E1_F1) (and (not(kIN_E1_F1__IN_E1_F1)) (kIN_E1_F2__IN_E1_F1))) ;; Support.  Cancellation. 
(when (kIN_E1_F1) (and (k-IN_E1_F1) (kIN_E1_F2))) ;; Support. 
(when (not(k-IN_E1_F1)) (and (not(kIN_E1_F1)) (not(k-IN_E1_F2)))) ;; Cancellation. 
(when (kIN_E1_F1__IN_E1_F2) (and (not(kIN_E1_F1__IN_E1_F2)) (kIN_E1_F2__IN_E1_F2))) ;; Support.  Cancellation. 
(when (kIN_E1_F1__IN_E1_F0) (and (not(kIN_E1_F1__IN_E1_F0)) (kIN_E1_F2__IN_E1_F0))) ;; Support.  Cancellation. 
))
(:action GO-UP_E1_F0_F1
:parameters ()
:precondition (and)

:effect (and  (k-IN_E1_F0)
(when (kIN_E1_F0__IN_E1_F1) (and (not(kIN_E1_F0__IN_E1_F1)) (kIN_E1_F1__IN_E1_F1))) ;; Support.  Cancellation. 
(when (kIN_E1_F0) (and (k-IN_E1_F0) (kIN_E1_F1))) ;; Support. 
(when (not(k-IN_E1_F0)) (and (not(kIN_E1_F0)) (not(k-IN_E1_F1)))) ;; Cancellation. 
(when (kIN_E1_F0__IN_E1_F2) (and (not(kIN_E1_F0__IN_E1_F2)) (kIN_E1_F1__IN_E1_F2))) ;; Support.  Cancellation. 
(when (kIN_E1_F0__IN_E1_F0) (and (not(kIN_E1_F0__IN_E1_F0)) (kIN_E1_F1__IN_E1_F0))) ;; Support.  Cancellation. 
))
(:action GO-UP_E0_F1_F2
:parameters ()
:precondition (and)

:effect (and  (k-IN_E0_F1)
(when (kIN_E0_F1__IN_E0_F1) (and (not(kIN_E0_F1__IN_E0_F1)) (kIN_E0_F2__IN_E0_F1))) ;; Support.  Cancellation. 
(when (kIN_E0_F1) (and (k-IN_E0_F1) (kIN_E0_F2))) ;; Support. 
(when (not(k-IN_E0_F1)) (and (not(kIN_E0_F1)) (not(k-IN_E0_F2)))) ;; Cancellation. 
(when (kIN_E0_F1__IN_E0_F2) (and (not(kIN_E0_F1__IN_E0_F2)) (kIN_E0_F2__IN_E0_F2))) ;; Support.  Cancellation. 
(when (kIN_E0_F1__IN_E0_F0) (and (not(kIN_E0_F1__IN_E0_F0)) (kIN_E0_F2__IN_E0_F0))) ;; Support.  Cancellation. 
))
(:action GO-UP_E0_F0_F1
:parameters ()
:precondition (and)

:effect (and  (k-IN_E0_F0)
(when (kIN_E0_F0__IN_E0_F1) (and (not(kIN_E0_F0__IN_E0_F1)) (kIN_E0_F1__IN_E0_F1))) ;; Support.  Cancellation. 
(when (kIN_E0_F0) (and (k-IN_E0_F0) (kIN_E0_F1))) ;; Support. 
(when (not(k-IN_E0_F0)) (and (not(kIN_E0_F0)) (not(k-IN_E0_F1)))) ;; Cancellation. 
(when (kIN_E0_F0__IN_E0_F2) (and (not(kIN_E0_F0__IN_E0_F2)) (kIN_E0_F1__IN_E0_F2))) ;; Support.  Cancellation. 
(when (kIN_E0_F0__IN_E0_F0) (and (not(kIN_E0_F0__IN_E0_F0)) (kIN_E0_F1__IN_E0_F0))) ;; Support.  Cancellation. 
))
(:action MERGE_CLAUSES
:parameters ()
:precondition (and)

:effect (and 
(when(and (k-IN_E0_F0) (k-IN_E0_F1))  (kIN_E0_F2)) ;;reasoning over static clause. 
(when(and (k-IN_E0_F0) (k-IN_E0_F2))  (kIN_E0_F1)) ;;reasoning over static clause. 
(when(and (k-IN_E0_F1) (k-IN_E0_F2))  (kIN_E0_F0)) ;;reasoning over static clause. 
(when(and (k-IN_E1_F0) (k-IN_E1_F1))  (kIN_E1_F2)) ;;reasoning over static clause. 
(when(and (k-IN_E1_F0) (k-IN_E1_F2))  (kIN_E1_F1)) ;;reasoning over static clause. 
(when(and (k-IN_E1_F1) (k-IN_E1_F2))  (kIN_E1_F0)) ;;reasoning over static clause. 
))
(:action MERGE_AT_F2_P7
:parameters ()
:precondition (and)

:effect (and 
(when(and (kAT_F2_P7__IN_E1_F2) (kAT_F2_P7__IN_E1_F0) (kAT_F2_P7__IN_E1_F1))  (kAT_F2_P7)) ;;MERGE. 
))
(:action MERGE_AT_F1_P7
:parameters ()
:precondition (and)

:effect (and 
(when(and (kAT_F1_P7__IN_E1_F2) (kAT_F1_P7__IN_E1_F0) (kAT_F1_P7__IN_E1_F1))  (kAT_F1_P7)) ;;MERGE. 
))
(:action MERGE_AT_F2_P2
:parameters ()
:precondition (and)

:effect (and 
(when(and (kAT_F2_P2__IN_E0_F2) (kAT_F2_P2__IN_E0_F0) (kAT_F2_P2__IN_E0_F1))  (kAT_F2_P2)) ;;MERGE. 
))
(:action MERGE_AT_F1_P2
:parameters ()
:precondition (and)

:effect (and 
(when(and (kAT_F1_P2__IN_E0_F2) (kAT_F1_P2__IN_E0_F0) (kAT_F1_P2__IN_E0_F1))  (kAT_F1_P2)) ;;MERGE. 
))
(:action MERGE_INSIDE_E1
:parameters ()
:precondition (and)

:effect (and 
(when(and (kINSIDE_E1__IN_E1_F2) (kINSIDE_E1__IN_E1_F0) (kINSIDE_E1__IN_E1_F1))  (kINSIDE_E1)) ;;MERGE. 
))
(:action MERGE_INSIDE_E0
:parameters ()
:precondition (and)

:effect (and 
(when(and (kINSIDE_E0__IN_E0_F2) (kINSIDE_E0__IN_E0_F0) (kINSIDE_E0__IN_E0_F1))  (kINSIDE_E0)) ;;MERGE. 
))
(:action MERGE_HAVE_C5
:parameters ()
:precondition (and)

:effect (and 
(when(and (kHAVE_C5__COIN-AT_C5_F0_P7) (kHAVE_C5__COIN-AT_C5_F0_P6) (kHAVE_C5__COIN-AT_C5_F0_P5) (kHAVE_C5__COIN-AT_C5_F0_P4) (kHAVE_C5__COIN-AT_C5_F0_P3) (kHAVE_C5__COIN-AT_C5_F0_P2) (kHAVE_C5__COIN-AT_C5_F0_P0) (kHAVE_C5__COIN-AT_C5_F0_P1))  (kHAVE_C5)) ;;MERGE. 
))
(:action MERGE_HAVE_C4
:parameters ()
:precondition (and)

:effect (and 
(when(and (kHAVE_C4__COIN-AT_C4_F1_P7) (kHAVE_C4__COIN-AT_C4_F1_P6) (kHAVE_C4__COIN-AT_C4_F1_P5) (kHAVE_C4__COIN-AT_C4_F1_P4) (kHAVE_C4__COIN-AT_C4_F1_P3) (kHAVE_C4__COIN-AT_C4_F1_P2) (kHAVE_C4__COIN-AT_C4_F1_P0) (kHAVE_C4__COIN-AT_C4_F1_P1))  (kHAVE_C4)) ;;MERGE. 
))
(:action MERGE_HAVE_C3
:parameters ()
:precondition (and)

:effect (and 
(when(and (kHAVE_C3__COIN-AT_C3_F1_P7) (kHAVE_C3__COIN-AT_C3_F1_P6) (kHAVE_C3__COIN-AT_C3_F1_P5) (kHAVE_C3__COIN-AT_C3_F1_P4) (kHAVE_C3__COIN-AT_C3_F1_P3) (kHAVE_C3__COIN-AT_C3_F1_P2) (kHAVE_C3__COIN-AT_C3_F1_P0) (kHAVE_C3__COIN-AT_C3_F1_P1))  (kHAVE_C3)) ;;MERGE. 
))
(:action MERGE_HAVE_C2
:parameters ()
:precondition (and)

:effect (and 
(when(and (kHAVE_C2__COIN-AT_C2_F0_P7) (kHAVE_C2__COIN-AT_C2_F0_P6) (kHAVE_C2__COIN-AT_C2_F0_P5) (kHAVE_C2__COIN-AT_C2_F0_P4) (kHAVE_C2__COIN-AT_C2_F0_P3) (kHAVE_C2__COIN-AT_C2_F0_P2) (kHAVE_C2__COIN-AT_C2_F0_P0) (kHAVE_C2__COIN-AT_C2_F0_P1))  (kHAVE_C2)) ;;MERGE. 
))
(:action MERGE_HAVE_C1
:parameters ()
:precondition (and)

:effect (and 
(when(and (kHAVE_C1__COIN-AT_C1_F2_P7) (kHAVE_C1__COIN-AT_C1_F2_P6) (kHAVE_C1__COIN-AT_C1_F2_P5) (kHAVE_C1__COIN-AT_C1_F2_P4) (kHAVE_C1__COIN-AT_C1_F2_P3) (kHAVE_C1__COIN-AT_C1_F2_P2) (kHAVE_C1__COIN-AT_C1_F2_P0) (kHAVE_C1__COIN-AT_C1_F2_P1))  (kHAVE_C1)) ;;MERGE. 
))
(:action MERGE_HAVE_C0
:parameters ()
:precondition (and)

:effect (and 
(when(and (kHAVE_C0__COIN-AT_C0_F1_P7) (kHAVE_C0__COIN-AT_C0_F1_P6) (kHAVE_C0__COIN-AT_C0_F1_P5) (kHAVE_C0__COIN-AT_C0_F1_P4) (kHAVE_C0__COIN-AT_C0_F1_P3) (kHAVE_C0__COIN-AT_C0_F1_P2) (kHAVE_C0__COIN-AT_C0_F1_P0) (kHAVE_C0__COIN-AT_C0_F1_P1))  (kHAVE_C0)) ;;MERGE. 
))
(:action MERGE_AT_F0_P7
:parameters ()
:precondition (and)

:effect (and 
(when(and (kAT_F0_P7__IN_E1_F2) (kAT_F0_P7__IN_E1_F0) (kAT_F0_P7__IN_E1_F1))  (kAT_F0_P7)) ;;MERGE. 
))
(:action MERGE_AT_F0_P2
:parameters ()
:precondition (and)

:effect (and 
(when(and (kAT_F0_P2__IN_E0_F2) (kAT_F0_P2__IN_E0_F0) (kAT_F0_P2__IN_E0_F1))  (kAT_F0_P2)) ;;MERGE. 
))
)
