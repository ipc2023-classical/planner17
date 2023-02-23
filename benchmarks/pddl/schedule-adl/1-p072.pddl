


(define (problem schedule-p6-s2-c4-w3-o2)
(:domain schedule)
(:objects 
    P0
    P1
    P2
    P3
    P4
    P5
 - part
    CIRCULAR
    OBLONG
 - ashape
    BLUE
    YELLOW
    RED
    BLACK
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
(HAS-PAINT IMMERSION-PAINTER BLACK)
(HAS-PAINT SPRAY-PAINTER BLACK)
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
(SHAPE P0 CIRCULAR)
(SURFACE-CONDITION P0 SMOOTH)
(PAINTED P0 RED)
(HAS-HOLE P0 THREE FRONT)
(TEMPERATURE P0 COLD)
(SHAPE P1 CYLINDRICAL)
(SURFACE-CONDITION P1 POLISHED)
(TEMPERATURE P1 COLD)
(SHAPE P2 CIRCULAR)
(SURFACE-CONDITION P2 ROUGH)
(PAINTED P2 BLACK)
(TEMPERATURE P2 COLD)
(SHAPE P3 OBLONG)
(SURFACE-CONDITION P3 POLISHED)
(PAINTED P3 YELLOW)
(HAS-HOLE P3 TWO BACK)
(TEMPERATURE P3 COLD)
(SHAPE P4 OBLONG)
(SURFACE-CONDITION P4 SMOOTH)
(TEMPERATURE P4 COLD)
(SHAPE P5 OBLONG)
(SURFACE-CONDITION P5 POLISHED)
(HAS-HOLE P5 THREE BACK)
(TEMPERATURE P5 COLD)
)
(:goal
(and
(SHAPE P0 CYLINDRICAL)
(SURFACE-CONDITION P0 ROUGH)
(HAS-HOLE P0 THREE FRONT)
(SHAPE P1 CYLINDRICAL)
(SURFACE-CONDITION P1 ROUGH)
(PAINTED P1 BLACK)
(PAINTED P2 BLUE)
(HAS-HOLE P2 TWO FRONT)
(SURFACE-CONDITION P3 SMOOTH)
(SHAPE P4 CYLINDRICAL)
(SURFACE-CONDITION P4 POLISHED)
(SHAPE P5 CYLINDRICAL)
(SURFACE-CONDITION P5 POLISHED)
(PAINTED P5 BLUE)
(HAS-HOLE P5 THREE FRONT)
)
)
)

