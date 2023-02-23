


(define (problem schedule-p8-s2-c4-w1-o2)
(:domain schedule)
(:objects 
    P0
    P1
    P2
    P3
    P4
    P5
    P6
    P7
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
(SHAPE P0 CIRCULAR)
(SURFACE-CONDITION P0 ROUGH)
(HAS-HOLE P0 ONE FRONT)
(TEMPERATURE P0 COLD)
(SHAPE P1 CIRCULAR)
(SURFACE-CONDITION P1 ROUGH)
(PAINTED P1 BLUE)
(HAS-HOLE P1 ONE BACK)
(TEMPERATURE P1 COLD)
(SHAPE P2 CYLINDRICAL)
(SURFACE-CONDITION P2 ROUGH)
(TEMPERATURE P2 COLD)
(SHAPE P3 CYLINDRICAL)
(SURFACE-CONDITION P3 ROUGH)
(PAINTED P3 YELLOW)
(TEMPERATURE P3 COLD)
(SHAPE P4 CYLINDRICAL)
(SURFACE-CONDITION P4 ROUGH)
(TEMPERATURE P4 COLD)
(SHAPE P5 CYLINDRICAL)
(SURFACE-CONDITION P5 POLISHED)
(HAS-HOLE P5 ONE BACK)
(TEMPERATURE P5 COLD)
(SHAPE P6 OBLONG)
(SURFACE-CONDITION P6 ROUGH)
(PAINTED P6 BLUE)
(TEMPERATURE P6 COLD)
(SHAPE P7 OBLONG)
(SURFACE-CONDITION P7 SMOOTH)
(PAINTED P7 BLUE)
(TEMPERATURE P7 COLD)
)
(:goal
(and
(SHAPE P0 CYLINDRICAL)
(PAINTED P0 YELLOW)
(SURFACE-CONDITION P1 ROUGH)
(SHAPE P2 CYLINDRICAL)
(SHAPE P3 CYLINDRICAL)
(PAINTED P3 RED)
(SURFACE-CONDITION P4 ROUGH)
(PAINTED P5 BLUE)
(SHAPE P6 CYLINDRICAL)
(SHAPE P7 CYLINDRICAL)
(PAINTED P7 YELLOW)
(HAS-HOLE P7 ONE FRONT)
)
)
)


