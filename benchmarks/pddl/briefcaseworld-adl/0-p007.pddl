


(define (problem briefcase-o7)
(:domain briefcase)
(:objects l0 l1 l2 l3 l4 l5 l6 l7 - location
          o0 o1 o2 o3 o4 o5 o6 - portable)
(:init
(at o0 l2)
(at o1 l2)
(at o2 l3)
(at o3 l4)
(at o4 l5)
(at o5 l1)
(at o6 l0)
(is-at l4)
)
(:goal
(and
(at o0 l4)
(at o1 l2)
(at o2 l6)
(at o3 l4)
(at o4 l1)
(at o5 l0)
(at o6 l6)
(is-at l0)
)
)
)


