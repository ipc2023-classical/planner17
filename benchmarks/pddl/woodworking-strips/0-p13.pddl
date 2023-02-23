; woodworking task with 16 parts and 125% wood
; Machines:
;   1 highspeed-saw
;   1 glazer
;   1 grinder
;   1 immersion-varnisher
;   1 planer
;   1 saw
;   1 spray-varnisher

(define (problem wood-prob)
  (:domain woodworking)
  (:objects
    highspeed-saw0 - highspeed-saw
    glazer0 - glazer
    grinder0 - grinder
    immersion-varnisher0 - immersion-varnisher
    planer0 - planer
    saw0 - saw
    spray-varnisher0 - spray-varnisher
    mauve white red blue green black - acolour
    teak mahogany pine beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 - part
    b0 b1 b2 b3 b4 b5 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (= (total-cost) 0)
    (boardsize-successor s0 s1)
    (boardsize-successor s1 s2)
    (boardsize-successor s2 s3)
    (boardsize-successor s3 s4)
    (boardsize-successor s4 s5)
    (boardsize-successor s5 s6)
    (boardsize-successor s6 s7)
    (boardsize-successor s7 s8)
    (empty highspeed-saw0)
    (has-colour glazer0 mauve)
    (has-colour glazer0 blue)
    (has-colour glazer0 natural)
    (has-colour glazer0 black)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (unused p0)
    (goalsize p0 small)
    (= (spray-varnish-cost p0) 5)
    (= (glaze-cost p0) 10)
    (= (grind-cost p0) 15)
    (= (plane-cost p0) 10)
    (unused p1)
    (goalsize p1 medium)
    (= (spray-varnish-cost p1) 10)
    (= (glaze-cost p1) 15)
    (= (grind-cost p1) 30)
    (= (plane-cost p1) 20)
    (unused p2)
    (goalsize p2 small)
    (= (spray-varnish-cost p2) 5)
    (= (glaze-cost p2) 10)
    (= (grind-cost p2) 15)
    (= (plane-cost p2) 10)
    (available p3)
    (treatment p3 varnished)
    (surface-condition p3 smooth)
    (wood p3 mahogany)
    (colour p3 green)
    (goalsize p3 large)
    (= (spray-varnish-cost p3) 15)
    (= (glaze-cost p3) 20)
    (= (grind-cost p3) 45)
    (= (plane-cost p3) 30)
    (unused p4)
    (goalsize p4 large)
    (= (spray-varnish-cost p4) 15)
    (= (glaze-cost p4) 20)
    (= (grind-cost p4) 45)
    (= (plane-cost p4) 30)
    (unused p5)
    (goalsize p5 large)
    (= (spray-varnish-cost p5) 15)
    (= (glaze-cost p5) 20)
    (= (grind-cost p5) 45)
    (= (plane-cost p5) 30)
    (unused p6)
    (goalsize p6 medium)
    (= (spray-varnish-cost p6) 10)
    (= (glaze-cost p6) 15)
    (= (grind-cost p6) 30)
    (= (plane-cost p6) 20)
    (unused p7)
    (goalsize p7 large)
    (= (spray-varnish-cost p7) 15)
    (= (glaze-cost p7) 20)
    (= (grind-cost p7) 45)
    (= (plane-cost p7) 30)
    (unused p8)
    (goalsize p8 small)
    (= (spray-varnish-cost p8) 5)
    (= (glaze-cost p8) 10)
    (= (grind-cost p8) 15)
    (= (plane-cost p8) 10)
    (unused p9)
    (goalsize p9 medium)
    (= (spray-varnish-cost p9) 10)
    (= (glaze-cost p9) 15)
    (= (grind-cost p9) 30)
    (= (plane-cost p9) 20)
    (unused p10)
    (goalsize p10 medium)
    (= (spray-varnish-cost p10) 10)
    (= (glaze-cost p10) 15)
    (= (grind-cost p10) 30)
    (= (plane-cost p10) 20)
    (unused p11)
    (goalsize p11 small)
    (= (spray-varnish-cost p11) 5)
    (= (glaze-cost p11) 10)
    (= (grind-cost p11) 15)
    (= (plane-cost p11) 10)
    (available p12)
    (treatment p12 colourfragments)
    (surface-condition p12 rough)
    (wood p12 beech)
    (colour p12 red)
    (goalsize p12 large)
    (= (spray-varnish-cost p12) 15)
    (= (glaze-cost p12) 20)
    (= (grind-cost p12) 45)
    (= (plane-cost p12) 30)
    (unused p13)
    (goalsize p13 large)
    (= (spray-varnish-cost p13) 15)
    (= (glaze-cost p13) 20)
    (= (grind-cost p13) 45)
    (= (plane-cost p13) 30)
    (unused p14)
    (goalsize p14 small)
    (= (spray-varnish-cost p14) 5)
    (= (glaze-cost p14) 10)
    (= (grind-cost p14) 15)
    (= (plane-cost p14) 10)
    (unused p15)
    (goalsize p15 small)
    (= (spray-varnish-cost p15) 5)
    (= (glaze-cost p15) 10)
    (= (grind-cost p15) 15)
    (= (plane-cost p15) 10)
    (boardsize b0 s8)
    (wood b0 teak)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s2)
    (wood b1 teak)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s6)
    (wood b2 beech)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s2)
    (wood b3 beech)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 pine)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s8)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
  )
  (:goal
    (and
    (available p0)
    (surface-condition p0 verysmooth)
    (treatment p0 glazed)
    (wood p0 teak)
    (colour p0 blue)
    (available p1)
    (surface-condition p1 smooth)
    (wood p1 beech)
    (available p2)
    (treatment p2 varnished)
    (wood p2 pine)
    (available p3)
    (colour p3 natural)
    (treatment p3 varnished)
    (wood p3 mahogany)
    (surface-condition p3 smooth)
    (available p4)
    (surface-condition p4 smooth)
    (wood p4 mahogany)
    (available p5)
    (surface-condition p5 smooth)
    (treatment p5 glazed)
    (wood p5 mahogany)
    (colour p5 black)
    (available p6)
    (surface-condition p6 smooth)
    (wood p6 teak)
    (available p7)
    (treatment p7 varnished)
    (wood p7 teak)
    (available p8)
    (surface-condition p8 smooth)
    (treatment p8 varnished)
    (wood p8 beech)
    (colour p8 blue)
    (available p9)
    (surface-condition p9 verysmooth)
    (colour p9 natural)
    (available p10)
    (treatment p10 glazed)
    (wood p10 pine)
    (available p11)
    (surface-condition p11 smooth)
    (treatment p11 glazed)
    (available p12)
    (treatment p12 glazed)
    (wood p12 beech)
    (available p13)
    (colour p13 blue)
    (treatment p13 glazed)
    (surface-condition p13 verysmooth)
    (available p14)
    (surface-condition p14 verysmooth)
    (treatment p14 glazed)
    (available p15)
    (colour p15 mauve)
    (surface-condition p15 smooth)
    )
  )
  (:metric minimize (total-cost))
)
