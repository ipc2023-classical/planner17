

(define (problem BW-rand-14)
(:domain blocksworld)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 )
(:init
(arm-empty)
(on b1 b8)
(on-table b2)
(on-table b3)
(on b4 b12)
(on b5 b6)
(on b6 b3)
(on b7 b1)
(on b8 b5)
(on-table b9)
(on b10 b2)
(on b11 b9)
(on b12 b7)
(on b13 b14)
(on-table b14)
(clear b4)
(clear b10)
(clear b11)
(clear b13)
)
(:goal
(and
(on b2 b13)
(on b3 b2)
(on b4 b11)
(on b5 b6)
(on b7 b8)
(on b9 b3)
(on b10 b14)
(on b11 b7)
(on b12 b10)
(on b13 b5)
(on b14 b4))
)
)


