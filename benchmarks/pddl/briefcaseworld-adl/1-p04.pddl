


(define (problem briefcase-o4)
(:domain briefcase)
(:objects l0 l1 l2 l3 l4 - location
          o0 o1 o2 o3 - portable)
(:init
(at o0 l4)
(at o1 l1)
(at o2 l0)
(at o3 l2)
(is-at l0)
)
(:goal
(and
(at o0 l1)
(at o1 l4)
(at o2 l1)
(at o3 l2)
(is-at l2)
)
)
)


