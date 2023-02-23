


(define (problem schedule-p5-s2-c3-w3-o2)
(:domain schedule)
(:objects 
    P0
    P1
    P2
    P3
    P4
 - part
    CIRCULAR
    OBLONG
 - ashape
    BLUE
    YELLOW
    RED
 - colour
    ONE
    TWO
    THREE
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
(HAS-PAINT IMMERSION-PAINTER RED)
(HAS-PAINT SPRAY-PAINTER RED)
(CAN-ORIENT DRILL-PRESS FRONT)
(CAN-ORIENT PUNCH FRONT)
(CAN-ORIENT DRILL-PRESS BACK)
(CAN-ORIENT PUNCH BACK)
(HAS-BIT DRILL-PRESS ONE)
(HAS-BIT PUNCH ONE)
(HAS-BIT DRILL-PRESS TWO)
(HAS-BIT PUNCH TWO)
(HAS-BIT DRILL-PRESS THREE)
(HAS-BIT PUNCH THREE)
(SHAPE P0 CYLINDRICAL)
(SURFACE-CONDITION P0 ROUGH)
(PAINTED P0 RED)
(HAS-HOLE P0 ONE BACK)
(TEMPERATURE P0 COLD)
(SHAPE P1 CYLINDRICAL)
(SURFACE-CONDITION P1 ROUGH)
(HAS-HOLE P1 TWO BACK)
(TEMPERATURE P1 COLD)
(SHAPE P2 CYLINDRICAL)
(SURFACE-CONDITION P2 SMOOTH)
(HAS-HOLE P2 THREE FRONT)
(TEMPERATURE P2 COLD)
(SHAPE P3 CYLINDRICAL)
(SURFACE-CONDITION P3 ROUGH)
(TEMPERATURE P3 COLD)
(SHAPE P4 CIRCULAR)
(SURFACE-CONDITION P4 SMOOTH)
(PAINTED P4 BLUE)
(TEMPERATURE P4 COLD)
)
(:goal
(and
(PAINTED P0 YELLOW)
(SHAPE P1 CYLINDRICAL)
(HAS-HOLE P1 TWO FRONT)
(SURFACE-CONDITION P2 ROUGH)
(HAS-HOLE P2 THREE FRONT)
(SHAPE P3 CYLINDRICAL)
(SURFACE-CONDITION P3 SMOOTH)
(PAINTED P3 RED)
(SURFACE-CONDITION P4 ROUGH)
(PAINTED P4 BLUE)
)
)
)


