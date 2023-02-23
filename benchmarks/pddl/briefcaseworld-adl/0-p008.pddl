


(define (problem briefcase-o8)
(:domain briefcase)
(:objects l0 l1 l2 l3 l4 l5 l6 l7 l8 - location
          o0 o1 o2 o3 o4 o5 o6 o7 - portable)
(:init
(at o0 l0)
(at o1 l6)
(at o2 l1)
(at o3 l3)
(at o4 l5)
(at o5 l4)
(at o6 l6)
(at o7 l0)
(is-at l2)
)
(:goal
(and
(at o0 l1)
(at o1 l5)
(at o2 l3)
(at o3 l6)
(at o4 l2)
(at o5 l0)
(at o6 l5)
(at o7 l5)
(is-at l4)
)
)
)


