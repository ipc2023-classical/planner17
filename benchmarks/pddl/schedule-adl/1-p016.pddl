


(define (problem schedule-p4-s2-c2-w1-o2)
(:domain schedule)
(:objects 
    P0
    P1
    P2
    P3
 - part
    CIRCULAR
    OBLONG
 - ashape
    BLUE
    YELLOW
 - colour
    ONE
 - width
    FRONT
    BACK
 - anorient
)
(:init
(HAS-PAINT IMMERSION-PAINTER BLUE)
(HAS-PAINT SPRAY-PAINTER BLUE)
(HAS-PAINT IMMERSION-PAINTER YELLOW)
(HAS-PAINT SPRAY-PAINTER YELLOW)
(CAN-ORIENT DRILL-PRESS FRONT)
(CAN-ORIENT PUNCH FRONT)
(CAN-ORIENT DRILL-PRESS BACK)
(CAN-ORIENT PUNCH BACK)
(HAS-BIT DRILL-PRESS ONE)
(HAS-BIT PUNCH ONE)
(SHAPE P0 OBLONG)
(SURFACE-CONDITION P0 POLISHED)
(TEMPERATURE P0 COLD)
(SHAPE P1 OBLONG)
(SURFACE-CONDITION P1 ROUGH)
(TEMPERATURE P1 COLD)
(SHAPE P2 OBLONG)
(SURFACE-CONDITION P2 ROUGH)
(TEMPERATURE P2 COLD)
(SHAPE P3 CIRCULAR)
(SURFACE-CONDITION P3 POLISHED)
(HAS-HOLE P3 ONE BACK)
(TEMPERATURE P3 COLD)
)
(:goal
(and
(SURFACE-CONDITION P0 ROUGH)
(HAS-HOLE P1 ONE FRONT)
(SHAPE P2 CYLINDRICAL)
(PAINTED P2 BLUE)
(SHAPE P3 CYLINDRICAL)
(HAS-HOLE P3 ONE FRONT)
)
)
)


