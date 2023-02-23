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
(kOK_P0)
(kOK_P0__NOISY_P0)
(kOK_P0__-NOISY_P0)
(kOK_P1)
(kOK_P1__NOISY_P1)
(kOK_P1__-NOISY_P1)
(kOK_P2)
(kOK_P2__NOISY_P2)
(kOK_P2__-NOISY_P2)
(kCURRENT-STAGE_S0)
(kCURRENT-STAGE_S1)
(kCURRENT-STAGE_S2)
(kCURRENT-STAGE_S3)
(kCURRENT-STAGE_S4)
(kCURRENT-STAGE_S5)
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
)
(:action REQUEST-COPY_P1_S1
:parameters ()
:precondition (and (kCURRENT-STAGE_S1))

:effect (and  (k-BAD_P1)
(when (kBAD_P1__NOISY_P1) (and (kIN-CHANNEL_P1__NOISY_P1) (k-NOISY_P1__NOISY_P1) (not(kNOISY_P1__NOISY_P1)) (not(kREAD_P1__NOISY_P1)) (not(kBAD_P1__NOISY_P1)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P1)) (and (not(k-IN-CHANNEL_P1)) (not(kNOISY_P1)) (not(kREAD_P1)))) ;; Cancellation. 
))
(:action RESET_S2
:parameters ()
:precondition (and (kCURRENT-STAGE_S2))

:effect (and  (not(kCURRENT-STAGE_S2)) (kCURRENT-STAGE_S0)
))
(:action RESET_S1
:parameters ()
:precondition (and (kCURRENT-STAGE_S1))

:effect (and  (not(kCURRENT-STAGE_S1)) (kCURRENT-STAGE_S0)
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
(:action REQUEST-COPY_P2_S2
:parameters ()
:precondition (and (kCURRENT-STAGE_S2))

:effect (and  (k-BAD_P2)
(when (kBAD_P2__NOISY_P2) (and (kIN-CHANNEL_P2__NOISY_P2) (k-NOISY_P2__NOISY_P2) (not(kNOISY_P2__NOISY_P2)) (not(kREAD_P2__NOISY_P2)) (not(kBAD_P2__NOISY_P2)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P2)) (and (not(k-IN-CHANNEL_P2)) (not(kNOISY_P2)) (not(kREAD_P2)))) ;; Cancellation. 
))
(:action REQUEST-COPY_P0_S0
:parameters ()
:precondition (and (kCURRENT-STAGE_S0))

:effect (and  (k-BAD_P0)
(when (kBAD_P0__NOISY_P0) (and (kIN-CHANNEL_P0__NOISY_P0) (k-NOISY_P0__NOISY_P0) (not(kNOISY_P0__NOISY_P0)) (not(kREAD_P0__NOISY_P0)) (not(kBAD_P0__NOISY_P0)))) ;; Support.  Cancellation. 
(when (not(k-BAD_P0)) (and (not(k-IN-CHANNEL_P0)) (not(kNOISY_P0)) (not(kREAD_P0)))) ;; Cancellation. 
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
