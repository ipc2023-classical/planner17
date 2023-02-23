(define (domain S)
(:requirements :negative-preconditions :conditional-effects)
	(:predicates
(kLESS_N1_N2)
 (init-never-empty) 
)
(:action CMPSWAP-1-2
:parameters ()
:precondition (and)

:effect (and  (kLESS_N1_N2)
))
(:action MERGE_CLAUSES
:parameters ()
:precondition (and)

:effect (and 
(when (kLESS_N1_N2)  (kLESS_N1_N2)) ;;reasoning over static clause. 
))
)
