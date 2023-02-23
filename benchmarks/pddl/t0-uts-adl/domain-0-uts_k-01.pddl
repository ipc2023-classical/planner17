(define (domain UTS)
(:requirements :negative-preconditions :conditional-effects)
	(:predicates
(kSTARTED)
(kSTARTED__AT_N2)
(kSTARTED__-AT_N2)
(kVISITED_N1)
(kVISITED_N1__AT_N2)
(kVISITED_N1__-AT_N2)
(kVISITED_N2)
(kVISITED_N2__AT_N2)
(kVISITED_N2__-AT_N2)
(kAT_N1)
(k-AT_N1)
(kAT_N1__AT_N2)
(kAT_N1__-AT_N2)
(kAT_N2)
(k-AT_N2)
(kAT_N2__AT_N2)
(kAT_N2__-AT_N2)
)
(:action TRAVEL_N1_N2
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N1)
(when (kAT_N1__-AT_N2) (and (kVISITED_N2__-AT_N2) (kAT_N2__-AT_N2) (not(kAT_N1__-AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N1) (and (kVISITED_N2) (kAT_N2) (k-AT_N1))) ;; Support. 
(when (not(k-AT_N1)) (and (not(k-AT_N2)) (not(kAT_N1)))) ;; Cancellation. 
(when (kAT_N1__AT_N2) (and (kVISITED_N2__AT_N2) (kAT_N2__AT_N2) (not(kAT_N1__AT_N2)))) ;; Support.  Cancellation. 
))
(:action TRAVEL_N2_N1
:parameters ()
:precondition (and (kSTARTED))

:effect (and  (k-AT_N2)
(when (kAT_N2__-AT_N2) (and (kVISITED_N1__-AT_N2) (kAT_N1__-AT_N2) (not(kAT_N2__-AT_N2)))) ;; Support.  Cancellation. 
(when (kAT_N2) (and (kVISITED_N1) (kAT_N1) (k-AT_N2))) ;; Support. 
(when (not(k-AT_N2)) (and (not(k-AT_N1)) (not(kAT_N2)))) ;; Cancellation. 
(when (kAT_N2__AT_N2) (and (kVISITED_N1__AT_N2) (kAT_N1__AT_N2) (not(kAT_N2__AT_N2)))) ;; Support.  Cancellation. 
))
(:action START_N2
:parameters ()
:precondition (and)

:effect (and 
(when (kAT_N2) (and (kSTARTED) (kVISITED_N2))) ;; Support. 
(when (kAT_N2__AT_N2) (and (kSTARTED__AT_N2) (kVISITED_N2__AT_N2))) ;; Support. 
(when (kAT_N2__-AT_N2) (and (kSTARTED__-AT_N2) (kVISITED_N2__-AT_N2))) ;; Support. 
))
(:action START_N1
:parameters ()
:precondition (and)

:effect (and 
(when (kAT_N1) (and (kSTARTED) (kVISITED_N1))) ;; Support. 
(when (kAT_N1__AT_N2) (and (kSTARTED__AT_N2) (kVISITED_N1__AT_N2))) ;; Support. 
(when (kAT_N1__-AT_N2) (and (kSTARTED__-AT_N2) (kVISITED_N1__-AT_N2))) ;; Support. 
))
(:action MERGE_CLAUSES
:parameters ()
:precondition (and)

:effect (and 
(when (kAT_N1)  (k-AT_N2)) ;;reasoning over static clause. 
(when (kAT_N2)  (k-AT_N1)) ;;reasoning over static clause. 
(when (k-AT_N2)  (kAT_N1)) ;;reasoning over static clause. 
(when (k-AT_N1)  (kAT_N2)) ;;reasoning over static clause. 
))
(:action MERGE_VISITED_N2
:parameters ()
:precondition (and)

:effect (and 
(when(and (kVISITED_N2__AT_N2) (kVISITED_N2__-AT_N2))  (kVISITED_N2)) ;;MERGE. 
))
(:action MERGE_VISITED_N1
:parameters ()
:precondition (and)

:effect (and 
(when(and (kVISITED_N1__AT_N2) (kVISITED_N1__-AT_N2))  (kVISITED_N1)) ;;MERGE. 
))
(:action MERGE_STARTED
:parameters ()
:precondition (and)

:effect (and 
(when(and (kSTARTED__AT_N2) (kSTARTED__-AT_N2))  (kSTARTED)) ;;MERGE. 
))
)
