


(define (problem briefcase-o6)
(:domain briefcase)
(:objects l0 l1 l2 l3 l4 l5 l6 - location
          o0 o1 o2 o3 o4 o5 - portable)
(:init
(at o0 l2)
(at o1 l5)
(at o2 l4)
(at o3 l2)
(at o4 l6)
(at o5 l5)
(is-at l5)
)
(:goal
(and
(at o0 l6)
(at o1 l2)
(at o2 l3)
(at o3 l4)
(at o4 l5)
(at o5 l6)
(is-at l2)
)
)
)


