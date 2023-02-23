(define (domain S)
(:requirements :negative-preconditions :conditional-effects)
	(:predicates
(kLESS_N2_N3)
(kLESS_N2_N3__LESS_N3_N2)
(kLESS_N2_N3__-LESS_N3_N2)
(kLESS_N2_N3__LESS_N3_N1)
(kLESS_N2_N3__-LESS_N3_N1)
(kLESS_N2_N3__LESS_N2_N3)
(kLESS_N2_N3__-LESS_N2_N3)
(kLESS_N2_N3__LESS_N2_N1)
(kLESS_N2_N3__-LESS_N2_N1)
(kLESS_N2_N3__LESS_N1_N3)
(kLESS_N2_N3__-LESS_N1_N3)
(kLESS_N2_N3__LESS_N1_N2)
(kLESS_N2_N3__-LESS_N1_N2)
(kLESS_N1_N2)
(kLESS_N1_N2__LESS_N3_N2)
(kLESS_N1_N2__-LESS_N3_N2)
(kLESS_N1_N2__LESS_N3_N1)
(kLESS_N1_N2__-LESS_N3_N1)
(kLESS_N1_N2__LESS_N2_N3)
(kLESS_N1_N2__-LESS_N2_N3)
(kLESS_N1_N2__LESS_N2_N1)
(kLESS_N1_N2__-LESS_N2_N1)
(kLESS_N1_N2__LESS_N1_N3)
(kLESS_N1_N2__-LESS_N1_N3)
(kLESS_N1_N2__LESS_N1_N2)
(kLESS_N1_N2__-LESS_N1_N2)
(kLESS_N1_N3)
(k-LESS_N2_N3)
(kLESS_N1_N3__LESS_N3_N2)
(k-LESS_N2_N3__LESS_N3_N2)
(kLESS_N1_N3__-LESS_N3_N2)
(k-LESS_N2_N3__-LESS_N3_N2)
(kLESS_N1_N3__LESS_N3_N1)
(k-LESS_N2_N3__LESS_N3_N1)
(kLESS_N1_N3__-LESS_N3_N1)
(k-LESS_N2_N3__-LESS_N3_N1)
(kLESS_N1_N3__LESS_N2_N3)
(k-LESS_N2_N3__LESS_N2_N3)
(kLESS_N1_N3__-LESS_N2_N3)
(k-LESS_N2_N3__-LESS_N2_N3)
(kLESS_N1_N3__LESS_N2_N1)
(k-LESS_N2_N3__LESS_N2_N1)
(kLESS_N1_N3__-LESS_N2_N1)
(k-LESS_N2_N3__-LESS_N2_N1)
(k-LESS_N2_N3__LESS_N1_N3)
(k-LESS_N1_N3__-LESS_N1_N3)
(kLESS_N1_N3__-LESS_N1_N3)
(k-LESS_N2_N3__-LESS_N1_N3)
(kLESS_N1_N3__LESS_N1_N2)
(k-LESS_N2_N3__LESS_N1_N2)
(kLESS_N1_N3__-LESS_N1_N2)
(k-LESS_N2_N3__-LESS_N1_N2)
(k-LESS_N3_N1)
(k-LESS_N3_N1__LESS_N3_N2)
(k-LESS_N3_N1__-LESS_N3_N2)
(k-LESS_N3_N1__LESS_N3_N1)
(kLESS_N3_N1__LESS_N3_N1)
(k-LESS_N3_N1__LESS_N2_N3)
(k-LESS_N3_N1__-LESS_N2_N3)
(k-LESS_N3_N1__LESS_N2_N1)
(k-LESS_N3_N1__-LESS_N2_N1)
(k-LESS_N3_N1__LESS_N1_N3)
(k-LESS_N3_N1__-LESS_N1_N3)
(k-LESS_N3_N1__LESS_N1_N2)
(k-LESS_N3_N1__-LESS_N1_N2)
(k-LESS_N3_N2)
(kLESS_N3_N2)
(k-LESS_N3_N2__LESS_N3_N2)
(kLESS_N3_N2__LESS_N3_N2)
(k-LESS_N3_N2__-LESS_N3_N2)
(kLESS_N3_N2__-LESS_N3_N2)
(k-LESS_N3_N2__LESS_N3_N1)
(kLESS_N3_N2__LESS_N3_N1)
(k-LESS_N3_N2__-LESS_N3_N1)
(k-LESS_N3_N2__LESS_N2_N3)
(kLESS_N3_N2__LESS_N2_N3)
(k-LESS_N3_N2__-LESS_N2_N3)
(kLESS_N3_N2__-LESS_N2_N3)
(k-LESS_N3_N2__LESS_N2_N1)
(kLESS_N3_N2__LESS_N2_N1)
(k-LESS_N3_N2__-LESS_N2_N1)
(kLESS_N3_N2__-LESS_N2_N1)
(k-LESS_N3_N2__LESS_N1_N3)
(kLESS_N3_N2__LESS_N1_N3)
(k-LESS_N3_N2__-LESS_N1_N3)
(kLESS_N3_N2__-LESS_N1_N3)
(k-LESS_N3_N2__LESS_N1_N2)
(kLESS_N3_N2__LESS_N1_N2)
(k-LESS_N3_N2__-LESS_N1_N2)
(kLESS_N3_N2__-LESS_N1_N2)
(k-LESS_N2_N1)
(kLESS_N2_N1)
(k-LESS_N2_N1__LESS_N3_N2)
(kLESS_N2_N1__LESS_N3_N2)
(k-LESS_N2_N1__-LESS_N3_N2)
(kLESS_N2_N1__-LESS_N3_N2)
(k-LESS_N2_N1__LESS_N3_N1)
(kLESS_N2_N1__LESS_N3_N1)
(k-LESS_N2_N1__-LESS_N3_N1)
(k-LESS_N2_N1__LESS_N2_N3)
(kLESS_N2_N1__LESS_N2_N3)
(k-LESS_N2_N1__-LESS_N2_N3)
(kLESS_N2_N1__-LESS_N2_N3)
(k-LESS_N2_N1__LESS_N2_N1)
(kLESS_N2_N1__LESS_N2_N1)
(k-LESS_N2_N1__-LESS_N2_N1)
(kLESS_N2_N1__-LESS_N2_N1)
(k-LESS_N2_N1__LESS_N1_N3)
(kLESS_N2_N1__LESS_N1_N3)
(k-LESS_N2_N1__-LESS_N1_N3)
(kLESS_N2_N1__-LESS_N1_N3)
(k-LESS_N2_N1__LESS_N1_N2)
(kLESS_N2_N1__LESS_N1_N2)
(k-LESS_N2_N1__-LESS_N1_N2)
(kLESS_N2_N1__-LESS_N1_N2)
(k-LESS_N1_N2)
(k-LESS_N1_N2__LESS_N3_N2)
(k-LESS_N1_N2__-LESS_N3_N2)
(k-LESS_N1_N2__LESS_N3_N1)
(k-LESS_N1_N2__-LESS_N3_N1)
(k-LESS_N1_N2__LESS_N2_N3)
(k-LESS_N1_N2__-LESS_N2_N3)
(k-LESS_N1_N2__LESS_N2_N1)
(k-LESS_N1_N2__-LESS_N2_N1)
(k-LESS_N1_N2__LESS_N1_N3)
(k-LESS_N1_N2__-LESS_N1_N3)
(k-LESS_N1_N2__LESS_N1_N2)
(k-LESS_N1_N2__-LESS_N1_N2)
)
(:action CMPSWAP-2-3
:parameters ()
:precondition (and)

:effect (and  (not(kLESS_N3_N2__-LESS_N1_N3)) (k-LESS_N3_N2__LESS_N3_N1) (kLESS_N2_N3) (k-LESS_N3_N2__LESS_N1_N2) (not(k-LESS_N2_N3__LESS_N2_N1)) (kLESS_N2_N3__LESS_N3_N2) (not(kLESS_N3_N2__LESS_N3_N1)) (not(k-LESS_N2_N3__LESS_N3_N2)) (kLESS_N2_N3__-LESS_N3_N2) (not(kLESS_N3_N2__LESS_N1_N2)) (kLESS_N2_N3__LESS_N3_N1) (k-LESS_N3_N2__-LESS_N3_N1) (kLESS_N2_N3__-LESS_N3_N1) (k-LESS_N3_N2__-LESS_N1_N2) (kLESS_N2_N3__LESS_N2_N3) (not(k-LESS_N2_N3__-LESS_N2_N1)) (kLESS_N2_N3__-LESS_N2_N3) (not(kLESS_N3_N2__-LESS_N1_N2)) (not(k-LESS_N2_N3__-LESS_N3_N2)) (kLESS_N2_N3__LESS_N2_N1) (k-LESS_N3_N2__LESS_N2_N3) (kLESS_N2_N3__-LESS_N2_N1) (kLESS_N2_N3__LESS_N1_N3) (not(kLESS_N3_N2__LESS_N2_N3)) (kLESS_N2_N3__-LESS_N1_N3) (not(k-LESS_N2_N3__LESS_N1_N3)) (kLESS_N2_N3__LESS_N1_N2) (k-LESS_N3_N2__-LESS_N2_N3) (not(k-LESS_N2_N3__LESS_N3_N1)) (kLESS_N2_N3__-LESS_N1_N2) (not(kLESS_N3_N2__-LESS_N2_N3)) (k-LESS_N3_N2__LESS_N2_N1) (not(k-LESS_N2_N3__-LESS_N1_N3)) (not(k-LESS_N2_N3__-LESS_N3_N1)) (not(kLESS_N3_N2__LESS_N2_N1)) (k-LESS_N3_N2) (k-LESS_N3_N2__-LESS_N2_N1) (not(kLESS_N3_N2)) (not(k-LESS_N2_N3__LESS_N1_N2)) (not(kLESS_N3_N2__-LESS_N2_N1)) (not(k-LESS_N2_N3__LESS_N2_N3)) (k-LESS_N3_N2__LESS_N3_N2) (k-LESS_N3_N2__LESS_N1_N3) (not(kLESS_N3_N2__LESS_N3_N2)) (not(kLESS_N3_N2__LESS_N1_N3)) (not(k-LESS_N2_N3__-LESS_N1_N2)) (not(k-LESS_N2_N3__-LESS_N2_N3)) (k-LESS_N3_N2__-LESS_N3_N2) (k-LESS_N3_N2__-LESS_N1_N3) (not(k-LESS_N2_N3)) (not(kLESS_N3_N2__-LESS_N3_N2))
(when (kLESS_N1_N2) (and (k-LESS_N3_N1) (kLESS_N1_N3))) ;; Support. 
(when (kLESS_N1_N2__LESS_N3_N2) (and (k-LESS_N3_N1__LESS_N3_N2) (kLESS_N1_N3__LESS_N3_N2))) ;; Support. 
(when (kLESS_N1_N2__-LESS_N3_N2) (and (k-LESS_N3_N1__-LESS_N3_N2) (kLESS_N1_N3__-LESS_N3_N2))) ;; Support. 
(when (kLESS_N1_N2__LESS_N3_N1) (and (k-LESS_N3_N1__LESS_N3_N1) (kLESS_N1_N3__LESS_N3_N1))) ;; Support. 
(when (kLESS_N1_N2__-LESS_N3_N1)  (kLESS_N1_N3__-LESS_N3_N1)) ;; Support. 
(when (kLESS_N1_N2__LESS_N2_N3) (and (k-LESS_N3_N1__LESS_N2_N3) (kLESS_N1_N3__LESS_N2_N3))) ;; Support. 
(when (kLESS_N1_N2__-LESS_N2_N3) (and (k-LESS_N3_N1__-LESS_N2_N3) (kLESS_N1_N3__-LESS_N2_N3))) ;; Support. 
(when (kLESS_N1_N2__LESS_N2_N1) (and (k-LESS_N3_N1__LESS_N2_N1) (kLESS_N1_N3__LESS_N2_N1))) ;; Support. 
(when (kLESS_N1_N2__-LESS_N2_N1) (and (k-LESS_N3_N1__-LESS_N2_N1) (kLESS_N1_N3__-LESS_N2_N1))) ;; Support. 
(when (kLESS_N1_N2__LESS_N1_N3)  (k-LESS_N3_N1__LESS_N1_N3)) ;; Support. 
(when (kLESS_N1_N2__-LESS_N1_N3) (and (k-LESS_N3_N1__-LESS_N1_N3) (kLESS_N1_N3__-LESS_N1_N3))) ;; Support. 
(when (kLESS_N1_N2__LESS_N1_N2) (and (k-LESS_N3_N1__LESS_N1_N2) (kLESS_N1_N3__LESS_N1_N2))) ;; Support. 
(when (kLESS_N1_N2__-LESS_N1_N2) (and (k-LESS_N3_N1__-LESS_N1_N2) (kLESS_N1_N3__-LESS_N1_N2))) ;; Support. 
(when(and (not(kLESS_N1_N3)) (not(k-LESS_N1_N2)))  (not(kLESS_N1_N2))) ;; Cancellation. 
(when(and (not(kLESS_N1_N3__LESS_N3_N2)) (not(k-LESS_N1_N2__LESS_N3_N2)))  (not(kLESS_N1_N2__LESS_N3_N2))) ;; Cancellation. 
(when(and (not(kLESS_N1_N3__-LESS_N3_N2)) (not(k-LESS_N1_N2__-LESS_N3_N2)))  (not(kLESS_N1_N2__-LESS_N3_N2))) ;; Cancellation. 
(when(and (not(kLESS_N1_N3__LESS_N3_N1)) (not(k-LESS_N1_N2__LESS_N3_N1)))  (not(kLESS_N1_N2__LESS_N3_N1))) ;; Cancellation. 
(when(and (not(kLESS_N1_N3__-LESS_N3_N1)) (not(k-LESS_N1_N2__-LESS_N3_N1)))  (not(kLESS_N1_N2__-LESS_N3_N1))) ;; Cancellation. 
(when(and (not(kLESS_N1_N3__LESS_N2_N3)) (not(k-LESS_N1_N2__LESS_N2_N3)))  (not(kLESS_N1_N2__LESS_N2_N3))) ;; Cancellation. 
(when(and (not(kLESS_N1_N3__-LESS_N2_N3)) (not(k-LESS_N1_N2__-LESS_N2_N3)))  (not(kLESS_N1_N2__-LESS_N2_N3))) ;; Cancellation. 
(when(and (not(kLESS_N1_N3__LESS_N2_N1)) (not(k-LESS_N1_N2__LESS_N2_N1)))  (not(kLESS_N1_N2__LESS_N2_N1))) ;; Cancellation. 
(when(and (not(kLESS_N1_N3__-LESS_N2_N1)) (not(k-LESS_N1_N2__-LESS_N2_N1)))  (not(kLESS_N1_N2__-LESS_N2_N1))) ;; Cancellation. 
(when(and (not(kLESS_N1_N3__-LESS_N1_N3)) (not(k-LESS_N1_N2__-LESS_N1_N3)))  (not(kLESS_N1_N2__-LESS_N1_N3))) ;; Cancellation. 
(when(and (not(kLESS_N1_N3__LESS_N1_N2)) (not(k-LESS_N1_N2__LESS_N1_N2)))  (not(kLESS_N1_N2__LESS_N1_N2))) ;; Cancellation. 
(when(and (not(kLESS_N1_N3__-LESS_N1_N2)) (not(k-LESS_N1_N2__-LESS_N1_N2)))  (not(kLESS_N1_N2__-LESS_N1_N2))) ;; Cancellation. 
(when (not(k-LESS_N3_N1)) (and (not(kLESS_N1_N2)) (not(k-LESS_N2_N1)))) ;; Cancellation. 
(when (not(k-LESS_N3_N1__LESS_N3_N2)) (and (not(kLESS_N1_N2__LESS_N3_N2)) (not(k-LESS_N2_N1__LESS_N3_N2)))) ;; Cancellation. 
(when (not(k-LESS_N3_N1__-LESS_N3_N2)) (and (not(kLESS_N1_N2__-LESS_N3_N2)) (not(k-LESS_N2_N1__-LESS_N3_N2)))) ;; Cancellation. 
(when (kLESS_N3_N1__LESS_N3_N1) (and (k-LESS_N1_N2__LESS_N3_N1) (kLESS_N2_N1__LESS_N3_N1))) ;; Support. 
(when (not(k-LESS_N3_N1__LESS_N3_N1)) (and (not(kLESS_N1_N2__LESS_N3_N1)) (not(k-LESS_N2_N1__LESS_N3_N1)))) ;; Cancellation. 
(when (not(k-LESS_N3_N1__LESS_N2_N3)) (and (not(kLESS_N1_N2__LESS_N2_N3)) (not(k-LESS_N2_N1__LESS_N2_N3)))) ;; Cancellation. 
(when (not(k-LESS_N3_N1__-LESS_N2_N3)) (and (not(kLESS_N1_N2__-LESS_N2_N3)) (not(k-LESS_N2_N1__-LESS_N2_N3)))) ;; Cancellation. 
(when (not(k-LESS_N3_N1__LESS_N2_N1)) (and (not(kLESS_N1_N2__LESS_N2_N1)) (not(k-LESS_N2_N1__LESS_N2_N1)))) ;; Cancellation. 
(when (not(k-LESS_N3_N1__-LESS_N2_N1)) (and (not(kLESS_N1_N2__-LESS_N2_N1)) (not(k-LESS_N2_N1__-LESS_N2_N1)))) ;; Cancellation. 
(when (not(k-LESS_N3_N1__LESS_N1_N3)) (and (not(kLESS_N1_N2__LESS_N1_N3)) (not(k-LESS_N2_N1__LESS_N1_N3)))) ;; Cancellation. 
(when (not(k-LESS_N3_N1__-LESS_N1_N3)) (and (not(kLESS_N1_N2__-LESS_N1_N3)) (not(k-LESS_N2_N1__-LESS_N1_N3)))) ;; Cancellation. 
(when (not(k-LESS_N3_N1__LESS_N1_N2)) (and (not(kLESS_N1_N2__LESS_N1_N2)) (not(k-LESS_N2_N1__LESS_N1_N2)))) ;; Cancellation. 
(when (not(k-LESS_N3_N1__-LESS_N1_N2)) (and (not(kLESS_N1_N2__-LESS_N1_N2)) (not(k-LESS_N2_N1__-LESS_N1_N2)))) ;; Cancellation. 
(when (k-LESS_N2_N1) (and (k-LESS_N3_N1) (k-LESS_N3_N1__LESS_N3_N2) (k-LESS_N3_N1__-LESS_N3_N2) (k-LESS_N3_N1__LESS_N3_N1) (k-LESS_N3_N1__LESS_N2_N3) (k-LESS_N3_N1__-LESS_N2_N3) (k-LESS_N3_N1__LESS_N2_N1) (k-LESS_N3_N1__-LESS_N2_N1) (k-LESS_N3_N1__LESS_N1_N3) (k-LESS_N3_N1__-LESS_N1_N3) (k-LESS_N3_N1__LESS_N1_N2) (k-LESS_N3_N1__-LESS_N1_N2))) ;;Act Compilation. 
(when (not(k-LESS_N1_N2__LESS_N3_N1))  (not(kLESS_N3_N1__LESS_N3_N1))) ;; Cancellation. 
(when (not(k-LESS_N1_N2__-LESS_N1_N3))  (not(k-LESS_N1_N3__-LESS_N1_N3))) ;; Cancellation. 
(when(and (kLESS_N1_N2__-LESS_N1_N3) (k-LESS_N1_N3__-LESS_N1_N3))  (k-LESS_N1_N2__-LESS_N1_N3)) ;; Support. 
(when(and (kLESS_N3_N1__LESS_N3_N1) (k-LESS_N2_N1__LESS_N3_N1))  (k-LESS_N3_N1__LESS_N3_N1)) ;; Support. 
(when(and (not(k-LESS_N3_N1__LESS_N3_N1)) (not(kLESS_N2_N1__LESS_N3_N1)))  (not(kLESS_N3_N1__LESS_N3_N1))) ;; Cancellation. 
))
(:action CMPSWAP-1-3
:parameters ()
:precondition (and)

:effect (and  (kLESS_N1_N3__LESS_N3_N2) (k-LESS_N3_N1__LESS_N2_N1) (kLESS_N1_N3__-LESS_N3_N2) (k-LESS_N3_N1) (k-LESS_N3_N1__-LESS_N2_N1) (kLESS_N1_N3__-LESS_N1_N3) (not(k-LESS_N1_N3__-LESS_N1_N3)) (kLESS_N1_N3__LESS_N3_N1) (k-LESS_N3_N1__LESS_N3_N2) (kLESS_N1_N3__LESS_N1_N2) (k-LESS_N3_N1__LESS_N1_N3) (kLESS_N1_N3__-LESS_N3_N1) (k-LESS_N3_N1__-LESS_N3_N2) (k-LESS_N3_N1__-LESS_N1_N3) (kLESS_N1_N3__-LESS_N1_N2) (kLESS_N1_N3__LESS_N2_N3) (k-LESS_N3_N1__LESS_N3_N1) (k-LESS_N3_N1__LESS_N1_N2) (not(kLESS_N3_N1__LESS_N3_N1)) (kLESS_N1_N3__-LESS_N2_N3) (k-LESS_N3_N1__-LESS_N1_N2) (kLESS_N1_N3__LESS_N2_N1) (k-LESS_N3_N1__LESS_N2_N3) (kLESS_N1_N3) (kLESS_N1_N3__-LESS_N2_N1) (k-LESS_N3_N1__-LESS_N2_N3)
(when (k-LESS_N2_N3) (and (k-LESS_N2_N1) (k-LESS_N2_N1__LESS_N3_N2) (k-LESS_N2_N1__-LESS_N3_N2) (k-LESS_N2_N1__LESS_N3_N1) (k-LESS_N2_N1__-LESS_N3_N1) (k-LESS_N2_N1__LESS_N2_N3) (k-LESS_N2_N1__-LESS_N2_N3) (k-LESS_N2_N1__LESS_N2_N1) (k-LESS_N2_N1__-LESS_N2_N1) (k-LESS_N2_N1__LESS_N1_N3) (k-LESS_N2_N1__-LESS_N1_N3) (k-LESS_N2_N1__LESS_N1_N2) (k-LESS_N2_N1__-LESS_N1_N2))) ;;Act Compilation. 
(when(and (k-LESS_N2_N3) (kLESS_N2_N1))  (k-LESS_N2_N1)) ;; Support. 
(when(and (not(kLESS_N2_N3)) (not(k-LESS_N2_N1)))  (not(kLESS_N2_N1))) ;; Cancellation. 
(when(and (k-LESS_N2_N3__LESS_N3_N2) (kLESS_N2_N1__LESS_N3_N2))  (k-LESS_N2_N1__LESS_N3_N2)) ;; Support. 
(when(and (not(kLESS_N2_N3__LESS_N3_N2)) (not(k-LESS_N2_N1__LESS_N3_N2)))  (not(kLESS_N2_N1__LESS_N3_N2))) ;; Cancellation. 
(when(and (k-LESS_N2_N3__-LESS_N3_N2) (kLESS_N2_N1__-LESS_N3_N2))  (k-LESS_N2_N1__-LESS_N3_N2)) ;; Support. 
(when(and (not(kLESS_N2_N3__-LESS_N3_N2)) (not(k-LESS_N2_N1__-LESS_N3_N2)))  (not(kLESS_N2_N1__-LESS_N3_N2))) ;; Cancellation. 
(when(and (k-LESS_N2_N3__LESS_N3_N1) (kLESS_N2_N1__LESS_N3_N1))  (k-LESS_N2_N1__LESS_N3_N1)) ;; Support. 
(when(and (not(kLESS_N2_N3__LESS_N3_N1)) (not(k-LESS_N2_N1__LESS_N3_N1)))  (not(kLESS_N2_N1__LESS_N3_N1))) ;; Cancellation. 
(when(and (k-LESS_N2_N3__LESS_N2_N3) (kLESS_N2_N1__LESS_N2_N3))  (k-LESS_N2_N1__LESS_N2_N3)) ;; Support. 
(when(and (not(kLESS_N2_N3__LESS_N2_N3)) (not(k-LESS_N2_N1__LESS_N2_N3)))  (not(kLESS_N2_N1__LESS_N2_N3))) ;; Cancellation. 
(when(and (k-LESS_N2_N3__-LESS_N2_N3) (kLESS_N2_N1__-LESS_N2_N3))  (k-LESS_N2_N1__-LESS_N2_N3)) ;; Support. 
(when(and (not(kLESS_N2_N3__-LESS_N2_N3)) (not(k-LESS_N2_N1__-LESS_N2_N3)))  (not(kLESS_N2_N1__-LESS_N2_N3))) ;; Cancellation. 
(when(and (k-LESS_N2_N3__LESS_N2_N1) (kLESS_N2_N1__LESS_N2_N1))  (k-LESS_N2_N1__LESS_N2_N1)) ;; Support. 
(when(and (not(kLESS_N2_N3__LESS_N2_N1)) (not(k-LESS_N2_N1__LESS_N2_N1)))  (not(kLESS_N2_N1__LESS_N2_N1))) ;; Cancellation. 
(when(and (k-LESS_N2_N3__-LESS_N2_N1) (kLESS_N2_N1__-LESS_N2_N1))  (k-LESS_N2_N1__-LESS_N2_N1)) ;; Support. 
(when(and (not(kLESS_N2_N3__-LESS_N2_N1)) (not(k-LESS_N2_N1__-LESS_N2_N1)))  (not(kLESS_N2_N1__-LESS_N2_N1))) ;; Cancellation. 
(when(and (k-LESS_N2_N3__LESS_N1_N3) (kLESS_N2_N1__LESS_N1_N3))  (k-LESS_N2_N1__LESS_N1_N3)) ;; Support. 
(when(and (not(kLESS_N2_N3__LESS_N1_N3)) (not(k-LESS_N2_N1__LESS_N1_N3)))  (not(kLESS_N2_N1__LESS_N1_N3))) ;; Cancellation. 
(when(and (k-LESS_N2_N3__-LESS_N1_N3) (kLESS_N2_N1__-LESS_N1_N3))  (k-LESS_N2_N1__-LESS_N1_N3)) ;; Support. 
(when(and (not(kLESS_N2_N3__-LESS_N1_N3)) (not(k-LESS_N2_N1__-LESS_N1_N3)))  (not(kLESS_N2_N1__-LESS_N1_N3))) ;; Cancellation. 
(when(and (k-LESS_N2_N3__LESS_N1_N2) (kLESS_N2_N1__LESS_N1_N2))  (k-LESS_N2_N1__LESS_N1_N2)) ;; Support. 
(when(and (not(kLESS_N2_N3__LESS_N1_N2)) (not(k-LESS_N2_N1__LESS_N1_N2)))  (not(kLESS_N2_N1__LESS_N1_N2))) ;; Cancellation. 
(when(and (k-LESS_N2_N3__-LESS_N1_N2) (kLESS_N2_N1__-LESS_N1_N2))  (k-LESS_N2_N1__-LESS_N1_N2)) ;; Support. 
(when(and (not(kLESS_N2_N3__-LESS_N1_N2)) (not(k-LESS_N2_N1__-LESS_N1_N2)))  (not(kLESS_N2_N1__-LESS_N1_N2))) ;; Cancellation. 
(when (kLESS_N3_N2) (and (kLESS_N1_N2) (k-LESS_N2_N1))) ;; Support. 
(when (not(k-LESS_N3_N2)) (and (not(kLESS_N2_N1)) (not(k-LESS_N1_N2)))) ;; Cancellation. 
(when (kLESS_N3_N2__LESS_N3_N2) (and (kLESS_N1_N2__LESS_N3_N2) (k-LESS_N2_N1__LESS_N3_N2))) ;; Support. 
(when (not(k-LESS_N3_N2__LESS_N3_N2)) (and (not(kLESS_N2_N1__LESS_N3_N2)) (not(k-LESS_N1_N2__LESS_N3_N2)))) ;; Cancellation. 
(when (kLESS_N3_N2__-LESS_N3_N2) (and (kLESS_N1_N2__-LESS_N3_N2) (k-LESS_N2_N1__-LESS_N3_N2))) ;; Support. 
(when (not(k-LESS_N3_N2__-LESS_N3_N2)) (and (not(kLESS_N2_N1__-LESS_N3_N2)) (not(k-LESS_N1_N2__-LESS_N3_N2)))) ;; Cancellation. 
(when (kLESS_N3_N2__LESS_N3_N1) (and (kLESS_N1_N2__LESS_N3_N1) (k-LESS_N2_N1__LESS_N3_N1))) ;; Support. 
(when (not(k-LESS_N3_N2__LESS_N3_N1)) (and (not(kLESS_N2_N1__LESS_N3_N1)) (not(k-LESS_N1_N2__LESS_N3_N1)))) ;; Cancellation. 
(when (not(k-LESS_N3_N2__-LESS_N3_N1))  (not(k-LESS_N1_N2__-LESS_N3_N1))) ;; Cancellation. 
(when (kLESS_N3_N2__LESS_N2_N3) (and (kLESS_N1_N2__LESS_N2_N3) (k-LESS_N2_N1__LESS_N2_N3))) ;; Support. 
(when (not(k-LESS_N3_N2__LESS_N2_N3)) (and (not(kLESS_N2_N1__LESS_N2_N3)) (not(k-LESS_N1_N2__LESS_N2_N3)))) ;; Cancellation. 
(when (kLESS_N3_N2__-LESS_N2_N3) (and (kLESS_N1_N2__-LESS_N2_N3) (k-LESS_N2_N1__-LESS_N2_N3))) ;; Support. 
(when (not(k-LESS_N3_N2__-LESS_N2_N3)) (and (not(kLESS_N2_N1__-LESS_N2_N3)) (not(k-LESS_N1_N2__-LESS_N2_N3)))) ;; Cancellation. 
(when (kLESS_N3_N2__LESS_N2_N1) (and (kLESS_N1_N2__LESS_N2_N1) (k-LESS_N2_N1__LESS_N2_N1))) ;; Support. 
(when (not(k-LESS_N3_N2__LESS_N2_N1)) (and (not(kLESS_N2_N1__LESS_N2_N1)) (not(k-LESS_N1_N2__LESS_N2_N1)))) ;; Cancellation. 
(when (kLESS_N3_N2__-LESS_N2_N1) (and (kLESS_N1_N2__-LESS_N2_N1) (k-LESS_N2_N1__-LESS_N2_N1))) ;; Support. 
(when (not(k-LESS_N3_N2__-LESS_N2_N1)) (and (not(kLESS_N2_N1__-LESS_N2_N1)) (not(k-LESS_N1_N2__-LESS_N2_N1)))) ;; Cancellation. 
(when (kLESS_N3_N2__LESS_N1_N3) (and (kLESS_N1_N2__LESS_N1_N3) (k-LESS_N2_N1__LESS_N1_N3))) ;; Support. 
(when (not(k-LESS_N3_N2__LESS_N1_N3)) (and (not(kLESS_N2_N1__LESS_N1_N3)) (not(k-LESS_N1_N2__LESS_N1_N3)))) ;; Cancellation. 
(when (kLESS_N3_N2__-LESS_N1_N3) (and (kLESS_N1_N2__-LESS_N1_N3) (k-LESS_N2_N1__-LESS_N1_N3))) ;; Support. 
(when (not(k-LESS_N3_N2__-LESS_N1_N3)) (and (not(kLESS_N2_N1__-LESS_N1_N3)) (not(k-LESS_N1_N2__-LESS_N1_N3)))) ;; Cancellation. 
(when (kLESS_N3_N2__LESS_N1_N2) (and (kLESS_N1_N2__LESS_N1_N2) (k-LESS_N2_N1__LESS_N1_N2))) ;; Support. 
(when (not(k-LESS_N3_N2__LESS_N1_N2)) (and (not(kLESS_N2_N1__LESS_N1_N2)) (not(k-LESS_N1_N2__LESS_N1_N2)))) ;; Cancellation. 
(when (kLESS_N3_N2__-LESS_N1_N2) (and (kLESS_N1_N2__-LESS_N1_N2) (k-LESS_N2_N1__-LESS_N1_N2))) ;; Support. 
(when (not(k-LESS_N3_N2__-LESS_N1_N2)) (and (not(kLESS_N2_N1__-LESS_N1_N2)) (not(k-LESS_N1_N2__-LESS_N1_N2)))) ;; Cancellation. 
(when (k-LESS_N1_N2) (and (k-LESS_N3_N2) (k-LESS_N3_N2__LESS_N3_N2) (k-LESS_N3_N2__-LESS_N3_N2) (k-LESS_N3_N2__LESS_N3_N1) (k-LESS_N3_N2__-LESS_N3_N1) (k-LESS_N3_N2__LESS_N2_N3) (k-LESS_N3_N2__-LESS_N2_N3) (k-LESS_N3_N2__LESS_N2_N1) (k-LESS_N3_N2__-LESS_N2_N1) (k-LESS_N3_N2__LESS_N1_N3) (k-LESS_N3_N2__-LESS_N1_N3) (k-LESS_N3_N2__LESS_N1_N2) (k-LESS_N3_N2__-LESS_N1_N2))) ;;Act Compilation. 
(when (kLESS_N2_N1) (and (kLESS_N2_N3) (k-LESS_N3_N2))) ;; Support. 
(when (not(k-LESS_N2_N1)) (and (not(k-LESS_N2_N3)) (not(kLESS_N3_N2)))) ;; Cancellation. 
(when (kLESS_N2_N1__LESS_N3_N2) (and (kLESS_N2_N3__LESS_N3_N2) (k-LESS_N3_N2__LESS_N3_N2))) ;; Support. 
(when (not(k-LESS_N2_N1__LESS_N3_N2)) (and (not(k-LESS_N2_N3__LESS_N3_N2)) (not(kLESS_N3_N2__LESS_N3_N2)))) ;; Cancellation. 
(when (kLESS_N2_N1__-LESS_N3_N2) (and (kLESS_N2_N3__-LESS_N3_N2) (k-LESS_N3_N2__-LESS_N3_N2))) ;; Support. 
(when (not(k-LESS_N2_N1__-LESS_N3_N2)) (and (not(k-LESS_N2_N3__-LESS_N3_N2)) (not(kLESS_N3_N2__-LESS_N3_N2)))) ;; Cancellation. 
(when (kLESS_N2_N1__LESS_N3_N1) (and (kLESS_N2_N3__LESS_N3_N1) (k-LESS_N3_N2__LESS_N3_N1))) ;; Support. 
(when (not(k-LESS_N2_N1__LESS_N3_N1)) (and (not(k-LESS_N2_N3__LESS_N3_N1)) (not(kLESS_N3_N2__LESS_N3_N1)))) ;; Cancellation. 
(when (not(k-LESS_N2_N1__-LESS_N3_N1))  (not(k-LESS_N2_N3__-LESS_N3_N1))) ;; Cancellation. 
(when (kLESS_N2_N1__LESS_N2_N3) (and (kLESS_N2_N3__LESS_N2_N3) (k-LESS_N3_N2__LESS_N2_N3))) ;; Support. 
(when (not(k-LESS_N2_N1__LESS_N2_N3)) (and (not(k-LESS_N2_N3__LESS_N2_N3)) (not(kLESS_N3_N2__LESS_N2_N3)))) ;; Cancellation. 
(when (kLESS_N2_N1__-LESS_N2_N3) (and (kLESS_N2_N3__-LESS_N2_N3) (k-LESS_N3_N2__-LESS_N2_N3))) ;; Support. 
(when (not(k-LESS_N2_N1__-LESS_N2_N3)) (and (not(k-LESS_N2_N3__-LESS_N2_N3)) (not(kLESS_N3_N2__-LESS_N2_N3)))) ;; Cancellation. 
(when (kLESS_N2_N1__LESS_N2_N1) (and (kLESS_N2_N3__LESS_N2_N1) (k-LESS_N3_N2__LESS_N2_N1))) ;; Support. 
(when (not(k-LESS_N2_N1__LESS_N2_N1)) (and (not(k-LESS_N2_N3__LESS_N2_N1)) (not(kLESS_N3_N2__LESS_N2_N1)))) ;; Cancellation. 
(when (kLESS_N2_N1__-LESS_N2_N1) (and (kLESS_N2_N3__-LESS_N2_N1) (k-LESS_N3_N2__-LESS_N2_N1))) ;; Support. 
(when (not(k-LESS_N2_N1__-LESS_N2_N1)) (and (not(k-LESS_N2_N3__-LESS_N2_N1)) (not(kLESS_N3_N2__-LESS_N2_N1)))) ;; Cancellation. 
(when (kLESS_N2_N1__LESS_N1_N3) (and (kLESS_N2_N3__LESS_N1_N3) (k-LESS_N3_N2__LESS_N1_N3))) ;; Support. 
(when (not(k-LESS_N2_N1__LESS_N1_N3)) (and (not(k-LESS_N2_N3__LESS_N1_N3)) (not(kLESS_N3_N2__LESS_N1_N3)))) ;; Cancellation. 
(when (kLESS_N2_N1__-LESS_N1_N3) (and (kLESS_N2_N3__-LESS_N1_N3) (k-LESS_N3_N2__-LESS_N1_N3))) ;; Support. 
(when (not(k-LESS_N2_N1__-LESS_N1_N3)) (and (not(k-LESS_N2_N3__-LESS_N1_N3)) (not(kLESS_N3_N2__-LESS_N1_N3)))) ;; Cancellation. 
(when (kLESS_N2_N1__LESS_N1_N2) (and (kLESS_N2_N3__LESS_N1_N2) (k-LESS_N3_N2__LESS_N1_N2))) ;; Support. 
(when (not(k-LESS_N2_N1__LESS_N1_N2)) (and (not(k-LESS_N2_N3__LESS_N1_N2)) (not(kLESS_N3_N2__LESS_N1_N2)))) ;; Cancellation. 
(when (kLESS_N2_N1__-LESS_N1_N2) (and (kLESS_N2_N3__-LESS_N1_N2) (k-LESS_N3_N2__-LESS_N1_N2))) ;; Support. 
(when (not(k-LESS_N2_N1__-LESS_N1_N2)) (and (not(k-LESS_N2_N3__-LESS_N1_N2)) (not(kLESS_N3_N2__-LESS_N1_N2)))) ;; Cancellation. 
(when(and (kLESS_N3_N2) (k-LESS_N1_N2))  (k-LESS_N3_N2)) ;; Support. 
(when(and (not(k-LESS_N3_N2)) (not(kLESS_N1_N2)))  (not(kLESS_N3_N2))) ;; Cancellation. 
(when(and (kLESS_N3_N2__LESS_N3_N2) (k-LESS_N1_N2__LESS_N3_N2))  (k-LESS_N3_N2__LESS_N3_N2)) ;; Support. 
(when(and (not(k-LESS_N3_N2__LESS_N3_N2)) (not(kLESS_N1_N2__LESS_N3_N2)))  (not(kLESS_N3_N2__LESS_N3_N2))) ;; Cancellation. 
(when(and (kLESS_N3_N2__-LESS_N3_N2) (k-LESS_N1_N2__-LESS_N3_N2))  (k-LESS_N3_N2__-LESS_N3_N2)) ;; Support. 
(when(and (not(k-LESS_N3_N2__-LESS_N3_N2)) (not(kLESS_N1_N2__-LESS_N3_N2)))  (not(kLESS_N3_N2__-LESS_N3_N2))) ;; Cancellation. 
(when(and (kLESS_N3_N2__LESS_N3_N1) (k-LESS_N1_N2__LESS_N3_N1))  (k-LESS_N3_N2__LESS_N3_N1)) ;; Support. 
(when(and (not(k-LESS_N3_N2__LESS_N3_N1)) (not(kLESS_N1_N2__LESS_N3_N1)))  (not(kLESS_N3_N2__LESS_N3_N1))) ;; Cancellation. 
(when(and (kLESS_N3_N2__LESS_N2_N3) (k-LESS_N1_N2__LESS_N2_N3))  (k-LESS_N3_N2__LESS_N2_N3)) ;; Support. 
(when(and (not(k-LESS_N3_N2__LESS_N2_N3)) (not(kLESS_N1_N2__LESS_N2_N3)))  (not(kLESS_N3_N2__LESS_N2_N3))) ;; Cancellation. 
(when(and (kLESS_N3_N2__-LESS_N2_N3) (k-LESS_N1_N2__-LESS_N2_N3))  (k-LESS_N3_N2__-LESS_N2_N3)) ;; Support. 
(when(and (not(k-LESS_N3_N2__-LESS_N2_N3)) (not(kLESS_N1_N2__-LESS_N2_N3)))  (not(kLESS_N3_N2__-LESS_N2_N3))) ;; Cancellation. 
(when(and (kLESS_N3_N2__LESS_N2_N1) (k-LESS_N1_N2__LESS_N2_N1))  (k-LESS_N3_N2__LESS_N2_N1)) ;; Support. 
(when(and (not(k-LESS_N3_N2__LESS_N2_N1)) (not(kLESS_N1_N2__LESS_N2_N1)))  (not(kLESS_N3_N2__LESS_N2_N1))) ;; Cancellation. 
(when(and (kLESS_N3_N2__-LESS_N2_N1) (k-LESS_N1_N2__-LESS_N2_N1))  (k-LESS_N3_N2__-LESS_N2_N1)) ;; Support. 
(when(and (not(k-LESS_N3_N2__-LESS_N2_N1)) (not(kLESS_N1_N2__-LESS_N2_N1)))  (not(kLESS_N3_N2__-LESS_N2_N1))) ;; Cancellation. 
(when(and (kLESS_N3_N2__LESS_N1_N3) (k-LESS_N1_N2__LESS_N1_N3))  (k-LESS_N3_N2__LESS_N1_N3)) ;; Support. 
(when(and (not(k-LESS_N3_N2__LESS_N1_N3)) (not(kLESS_N1_N2__LESS_N1_N3)))  (not(kLESS_N3_N2__LESS_N1_N3))) ;; Cancellation. 
(when(and (kLESS_N3_N2__-LESS_N1_N3) (k-LESS_N1_N2__-LESS_N1_N3))  (k-LESS_N3_N2__-LESS_N1_N3)) ;; Support. 
(when(and (not(k-LESS_N3_N2__-LESS_N1_N3)) (not(kLESS_N1_N2__-LESS_N1_N3)))  (not(kLESS_N3_N2__-LESS_N1_N3))) ;; Cancellation. 
(when(and (kLESS_N3_N2__LESS_N1_N2) (k-LESS_N1_N2__LESS_N1_N2))  (k-LESS_N3_N2__LESS_N1_N2)) ;; Support. 
(when(and (not(k-LESS_N3_N2__LESS_N1_N2)) (not(kLESS_N1_N2__LESS_N1_N2)))  (not(kLESS_N3_N2__LESS_N1_N2))) ;; Cancellation. 
(when(and (kLESS_N3_N2__-LESS_N1_N2) (k-LESS_N1_N2__-LESS_N1_N2))  (k-LESS_N3_N2__-LESS_N1_N2)) ;; Support. 
(when(and (not(k-LESS_N3_N2__-LESS_N1_N2)) (not(kLESS_N1_N2__-LESS_N1_N2)))  (not(kLESS_N3_N2__-LESS_N1_N2))) ;; Cancellation. 
))
(:action CMPSWAP-1-2
:parameters ()
:precondition (and)

:effect (and  (not(k-LESS_N1_N2)) (not(k-LESS_N1_N2__LESS_N3_N2)) (not(k-LESS_N1_N2__-LESS_N3_N2)) (not(k-LESS_N1_N2__LESS_N3_N1)) (not(k-LESS_N1_N2__-LESS_N3_N1)) (not(k-LESS_N1_N2__LESS_N2_N3)) (k-LESS_N2_N1) (not(k-LESS_N1_N2__-LESS_N2_N3)) (not(kLESS_N2_N1)) (not(k-LESS_N1_N2__LESS_N2_N1)) (k-LESS_N2_N1__LESS_N3_N2) (not(k-LESS_N1_N2__-LESS_N2_N1)) (not(kLESS_N2_N1__LESS_N3_N2)) (not(k-LESS_N1_N2__LESS_N1_N3)) (k-LESS_N2_N1__-LESS_N3_N2) (not(k-LESS_N1_N2__-LESS_N1_N3)) (not(kLESS_N2_N1__-LESS_N3_N2)) (not(k-LESS_N1_N2__LESS_N1_N2)) (k-LESS_N2_N1__LESS_N3_N1) (not(k-LESS_N1_N2__-LESS_N1_N2)) (not(kLESS_N2_N1__LESS_N3_N1)) (k-LESS_N2_N1__-LESS_N3_N1) (kLESS_N1_N2) (k-LESS_N2_N1__LESS_N2_N3) (kLESS_N1_N2__LESS_N3_N2) (not(kLESS_N2_N1__LESS_N2_N3)) (kLESS_N1_N2__-LESS_N3_N2) (k-LESS_N2_N1__-LESS_N2_N3) (kLESS_N1_N2__LESS_N3_N1) (not(kLESS_N2_N1__-LESS_N2_N3)) (kLESS_N1_N2__-LESS_N3_N1) (k-LESS_N2_N1__LESS_N2_N1) (kLESS_N1_N2__LESS_N2_N3) (not(kLESS_N2_N1__LESS_N2_N1)) (kLESS_N1_N2__-LESS_N2_N3) (k-LESS_N2_N1__-LESS_N2_N1) (kLESS_N1_N2__LESS_N2_N1) (not(kLESS_N2_N1__-LESS_N2_N1)) (kLESS_N1_N2__-LESS_N2_N1) (k-LESS_N2_N1__LESS_N1_N3) (kLESS_N1_N2__LESS_N1_N3) (not(kLESS_N2_N1__LESS_N1_N3)) (kLESS_N1_N2__-LESS_N1_N3) (k-LESS_N2_N1__-LESS_N1_N3) (kLESS_N1_N2__LESS_N1_N2) (not(kLESS_N2_N1__-LESS_N1_N3)) (kLESS_N1_N2__-LESS_N1_N2) (k-LESS_N2_N1__LESS_N1_N2) (not(kLESS_N2_N1__LESS_N1_N2)) (k-LESS_N2_N1__-LESS_N1_N2) (not(kLESS_N2_N1__-LESS_N1_N2))
(when (kLESS_N2_N3) (and (k-LESS_N3_N1) (kLESS_N1_N3))) ;; Support. 
(when (kLESS_N2_N3__LESS_N3_N2) (and (k-LESS_N3_N1__LESS_N3_N2) (kLESS_N1_N3__LESS_N3_N2))) ;; Support. 
(when (kLESS_N2_N3__-LESS_N3_N2) (and (k-LESS_N3_N1__-LESS_N3_N2) (kLESS_N1_N3__-LESS_N3_N2))) ;; Support. 
(when (kLESS_N2_N3__LESS_N3_N1) (and (k-LESS_N3_N1__LESS_N3_N1) (kLESS_N1_N3__LESS_N3_N1))) ;; Support. 
(when (kLESS_N2_N3__-LESS_N3_N1)  (kLESS_N1_N3__-LESS_N3_N1)) ;; Support. 
(when (kLESS_N2_N3__LESS_N2_N3) (and (k-LESS_N3_N1__LESS_N2_N3) (kLESS_N1_N3__LESS_N2_N3))) ;; Support. 
(when (kLESS_N2_N3__-LESS_N2_N3) (and (k-LESS_N3_N1__-LESS_N2_N3) (kLESS_N1_N3__-LESS_N2_N3))) ;; Support. 
(when (kLESS_N2_N3__LESS_N2_N1) (and (k-LESS_N3_N1__LESS_N2_N1) (kLESS_N1_N3__LESS_N2_N1))) ;; Support. 
(when (kLESS_N2_N3__-LESS_N2_N1) (and (k-LESS_N3_N1__-LESS_N2_N1) (kLESS_N1_N3__-LESS_N2_N1))) ;; Support. 
(when (kLESS_N2_N3__LESS_N1_N3)  (k-LESS_N3_N1__LESS_N1_N3)) ;; Support. 
(when (kLESS_N2_N3__-LESS_N1_N3) (and (k-LESS_N3_N1__-LESS_N1_N3) (kLESS_N1_N3__-LESS_N1_N3))) ;; Support. 
(when (kLESS_N2_N3__LESS_N1_N2) (and (k-LESS_N3_N1__LESS_N1_N2) (kLESS_N1_N3__LESS_N1_N2))) ;; Support. 
(when (kLESS_N2_N3__-LESS_N1_N2) (and (k-LESS_N3_N1__-LESS_N1_N2) (kLESS_N1_N3__-LESS_N1_N2))) ;; Support. 
(when(and (not(kLESS_N1_N3)) (not(k-LESS_N2_N3)))  (not(kLESS_N2_N3))) ;; Cancellation. 
(when(and (not(kLESS_N1_N3__LESS_N3_N2)) (not(k-LESS_N2_N3__LESS_N3_N2)))  (not(kLESS_N2_N3__LESS_N3_N2))) ;; Cancellation. 
(when(and (not(kLESS_N1_N3__-LESS_N3_N2)) (not(k-LESS_N2_N3__-LESS_N3_N2)))  (not(kLESS_N2_N3__-LESS_N3_N2))) ;; Cancellation. 
(when(and (not(kLESS_N1_N3__LESS_N3_N1)) (not(k-LESS_N2_N3__LESS_N3_N1)))  (not(kLESS_N2_N3__LESS_N3_N1))) ;; Cancellation. 
(when (not(k-LESS_N2_N3__LESS_N3_N1))  (not(kLESS_N3_N1__LESS_N3_N1))) ;; Cancellation. 
(when(and (not(kLESS_N1_N3__-LESS_N3_N1)) (not(k-LESS_N2_N3__-LESS_N3_N1)))  (not(kLESS_N2_N3__-LESS_N3_N1))) ;; Cancellation. 
(when(and (not(kLESS_N1_N3__LESS_N2_N3)) (not(k-LESS_N2_N3__LESS_N2_N3)))  (not(kLESS_N2_N3__LESS_N2_N3))) ;; Cancellation. 
(when(and (not(kLESS_N1_N3__-LESS_N2_N3)) (not(k-LESS_N2_N3__-LESS_N2_N3)))  (not(kLESS_N2_N3__-LESS_N2_N3))) ;; Cancellation. 
(when(and (not(kLESS_N1_N3__LESS_N2_N1)) (not(k-LESS_N2_N3__LESS_N2_N1)))  (not(kLESS_N2_N3__LESS_N2_N1))) ;; Cancellation. 
(when(and (not(kLESS_N1_N3__-LESS_N2_N1)) (not(k-LESS_N2_N3__-LESS_N2_N1)))  (not(kLESS_N2_N3__-LESS_N2_N1))) ;; Cancellation. 
(when(and (not(kLESS_N1_N3__-LESS_N1_N3)) (not(k-LESS_N2_N3__-LESS_N1_N3)))  (not(kLESS_N2_N3__-LESS_N1_N3))) ;; Cancellation. 
(when (not(k-LESS_N2_N3__-LESS_N1_N3))  (not(k-LESS_N1_N3__-LESS_N1_N3))) ;; Cancellation. 
(when(and (not(kLESS_N1_N3__LESS_N1_N2)) (not(k-LESS_N2_N3__LESS_N1_N2)))  (not(kLESS_N2_N3__LESS_N1_N2))) ;; Cancellation. 
(when(and (not(kLESS_N1_N3__-LESS_N1_N2)) (not(k-LESS_N2_N3__-LESS_N1_N2)))  (not(kLESS_N2_N3__-LESS_N1_N2))) ;; Cancellation. 
(when (k-LESS_N3_N2) (and (k-LESS_N3_N1) (k-LESS_N3_N1__LESS_N3_N2) (k-LESS_N3_N1__-LESS_N3_N2) (k-LESS_N3_N1__LESS_N3_N1) (k-LESS_N3_N1__LESS_N2_N3) (k-LESS_N3_N1__-LESS_N2_N3) (k-LESS_N3_N1__LESS_N2_N1) (k-LESS_N3_N1__-LESS_N2_N1) (k-LESS_N3_N1__LESS_N1_N3) (k-LESS_N3_N1__-LESS_N1_N3) (k-LESS_N3_N1__LESS_N1_N2) (k-LESS_N3_N1__-LESS_N1_N2))) ;;Act Compilation. 
(when (not(k-LESS_N3_N1)) (and (not(kLESS_N2_N3)) (not(k-LESS_N3_N2)))) ;; Cancellation. 
(when (not(k-LESS_N3_N1__LESS_N3_N2)) (and (not(kLESS_N2_N3__LESS_N3_N2)) (not(k-LESS_N3_N2__LESS_N3_N2)))) ;; Cancellation. 
(when (not(k-LESS_N3_N1__-LESS_N3_N2)) (and (not(kLESS_N2_N3__-LESS_N3_N2)) (not(k-LESS_N3_N2__-LESS_N3_N2)))) ;; Cancellation. 
(when(and (k-LESS_N3_N2__LESS_N3_N1) (kLESS_N3_N1__LESS_N3_N1))  (k-LESS_N3_N1__LESS_N3_N1)) ;; Support. 
(when (kLESS_N3_N1__LESS_N3_N1) (and (k-LESS_N2_N3__LESS_N3_N1) (kLESS_N3_N2__LESS_N3_N1))) ;; Support. 
(when(and (not(kLESS_N3_N2__LESS_N3_N1)) (not(k-LESS_N3_N1__LESS_N3_N1)))  (not(kLESS_N3_N1__LESS_N3_N1))) ;; Cancellation. 
(when (not(k-LESS_N3_N1__LESS_N3_N1)) (and (not(kLESS_N2_N3__LESS_N3_N1)) (not(k-LESS_N3_N2__LESS_N3_N1)))) ;; Cancellation. 
(when (not(k-LESS_N3_N1__LESS_N2_N3)) (and (not(kLESS_N2_N3__LESS_N2_N3)) (not(k-LESS_N3_N2__LESS_N2_N3)))) ;; Cancellation. 
(when (not(k-LESS_N3_N1__-LESS_N2_N3)) (and (not(kLESS_N2_N3__-LESS_N2_N3)) (not(k-LESS_N3_N2__-LESS_N2_N3)))) ;; Cancellation. 
(when (not(k-LESS_N3_N1__LESS_N2_N1)) (and (not(kLESS_N2_N3__LESS_N2_N1)) (not(k-LESS_N3_N2__LESS_N2_N1)))) ;; Cancellation. 
(when (not(k-LESS_N3_N1__-LESS_N2_N1)) (and (not(kLESS_N2_N3__-LESS_N2_N1)) (not(k-LESS_N3_N2__-LESS_N2_N1)))) ;; Cancellation. 
(when (not(k-LESS_N3_N1__LESS_N1_N3)) (and (not(kLESS_N2_N3__LESS_N1_N3)) (not(k-LESS_N3_N2__LESS_N1_N3)))) ;; Cancellation. 
(when (not(k-LESS_N3_N1__-LESS_N1_N3)) (and (not(kLESS_N2_N3__-LESS_N1_N3)) (not(k-LESS_N3_N2__-LESS_N1_N3)))) ;; Cancellation. 
(when (not(k-LESS_N3_N1__LESS_N1_N2)) (and (not(kLESS_N2_N3__LESS_N1_N2)) (not(k-LESS_N3_N2__LESS_N1_N2)))) ;; Cancellation. 
(when (not(k-LESS_N3_N1__-LESS_N1_N2)) (and (not(kLESS_N2_N3__-LESS_N1_N2)) (not(k-LESS_N3_N2__-LESS_N1_N2)))) ;; Cancellation. 
(when(and (kLESS_N2_N3__-LESS_N1_N3) (k-LESS_N1_N3__-LESS_N1_N3))  (k-LESS_N2_N3__-LESS_N1_N3)) ;; Support. 
))
(:action MERGE_CLAUSES
:parameters ()
:precondition (and)

:effect (and 
(when (kLESS_N2_N3)  (kLESS_N2_N3)) ;;reasoning over static clause. 
(when (kLESS_N1_N2)  (kLESS_N1_N2)) ;;reasoning over static clause. 
(when (k-LESS_N2_N3)  (k-LESS_N2_N3)) ;;reasoning over static clause. 
(when (k-LESS_N3_N1)  (k-LESS_N3_N1)) ;;reasoning over static clause. 
(when (kLESS_N1_N3)  (kLESS_N1_N3)) ;;reasoning over static clause. 
(when (k-LESS_N3_N2)  (k-LESS_N3_N2)) ;;reasoning over static clause. 
(when (kLESS_N3_N2)  (kLESS_N3_N2)) ;;reasoning over static clause. 
(when (k-LESS_N2_N1)  (k-LESS_N2_N1)) ;;reasoning over static clause. 
(when (k-LESS_N1_N2)  (k-LESS_N1_N2)) ;;reasoning over static clause. 
(when (kLESS_N2_N1)  (kLESS_N2_N1)) ;;reasoning over static clause. 
))
(:action MERGE_LESS_N1_N2
:parameters ()
:precondition (and)

:effect (and 
(when(and (kLESS_N1_N2__LESS_N3_N2) (kLESS_N1_N2__-LESS_N3_N2))  (kLESS_N1_N2)) ;;MERGE. 
(when(and (kLESS_N1_N2__LESS_N3_N1) (kLESS_N1_N2__-LESS_N3_N1))  (kLESS_N1_N2)) ;;MERGE. 
(when(and (kLESS_N1_N2__LESS_N2_N3) (kLESS_N1_N2__-LESS_N2_N3))  (kLESS_N1_N2)) ;;MERGE. 
(when(and (kLESS_N1_N2__LESS_N2_N1) (kLESS_N1_N2__-LESS_N2_N1))  (kLESS_N1_N2)) ;;MERGE. 
(when(and (kLESS_N1_N2__LESS_N1_N3) (kLESS_N1_N2__-LESS_N1_N3))  (kLESS_N1_N2)) ;;MERGE. 
(when(and (kLESS_N1_N2__LESS_N1_N2) (kLESS_N1_N2__-LESS_N1_N2))  (kLESS_N1_N2)) ;;MERGE. 
))
(:action MERGE_LESS_N2_N3
:parameters ()
:precondition (and)

:effect (and 
(when(and (kLESS_N2_N3__LESS_N3_N2) (kLESS_N2_N3__-LESS_N3_N2))  (kLESS_N2_N3)) ;;MERGE. 
(when(and (kLESS_N2_N3__LESS_N3_N1) (kLESS_N2_N3__-LESS_N3_N1))  (kLESS_N2_N3)) ;;MERGE. 
(when(and (kLESS_N2_N3__LESS_N2_N3) (kLESS_N2_N3__-LESS_N2_N3))  (kLESS_N2_N3)) ;;MERGE. 
(when(and (kLESS_N2_N3__LESS_N2_N1) (kLESS_N2_N3__-LESS_N2_N1))  (kLESS_N2_N3)) ;;MERGE. 
(when(and (kLESS_N2_N3__LESS_N1_N3) (kLESS_N2_N3__-LESS_N1_N3))  (kLESS_N2_N3)) ;;MERGE. 
(when(and (kLESS_N2_N3__LESS_N1_N2) (kLESS_N2_N3__-LESS_N1_N2))  (kLESS_N2_N3)) ;;MERGE. 
))
)
