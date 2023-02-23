(define (problem strips-mprime-l6-f5-s1-v1-c5)
(:domain mprime-strips)
(:objects f0 f1 f2 f3 f4 f5 - fuel
          s0 s1 - space
          l0 l1 l2 l3 l4 l5 - location
          v0 - vehicle
          c0 c1 c2 c3 c4 - cargo)
(:init
(not-equal l0 l1)
(not-equal l0 l2)
(not-equal l0 l3)
(not-equal l0 l4)
(not-equal l0 l5)
(not-equal l1 l0)
(not-equal l1 l2)
(not-equal l1 l3)
(not-equal l1 l4)
(not-equal l1 l5)
(not-equal l2 l0)
(not-equal l2 l1)
(not-equal l2 l3)
(not-equal l2 l4)
(not-equal l2 l5)
(not-equal l3 l0)
(not-equal l3 l1)
(not-equal l3 l2)
(not-equal l3 l4)
(not-equal l3 l5)
(not-equal l4 l0)
(not-equal l4 l1)
(not-equal l4 l2)
(not-equal l4 l3)
(not-equal l4 l5)
(not-equal l5 l0)
(not-equal l5 l1)
(not-equal l5 l2)
(not-equal l5 l3)
(not-equal l5 l4)
(fuel-neighbor f0 f1)
(fuel-neighbor f1 f2)
(fuel-neighbor f2 f3)
(fuel-neighbor f3 f4)
(fuel-neighbor f4 f5)
(space-neighbor s0 s1)
(conn l0 l1)
(conn l1 l0)
(conn l1 l2)
(conn l2 l1)
(conn l2 l3)
(conn l3 l2)
(conn l3 l4)
(conn l4 l3)
(conn l4 l5)
(conn l5 l4)
(conn l5 l0)
(conn l0 l5)
(has-fuel l0 f1)
(has-fuel l1 f2)
(has-fuel l2 f1)
(has-fuel l3 f5)
(has-fuel l4 f4)
(has-fuel l5 f0)
(has-space  v0 s1)
(at v0 l1)
(at c0 l4)
(at c1 l3)
(at c2 l1)
(at c3 l5)
(at c4 l1)
)
(:goal
(and
(at c0 l4)
(at c1 l0)
(at c2 l3)
(at c3 l1)
(at c4 l2)
)
)
)
