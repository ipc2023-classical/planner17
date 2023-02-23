; Domain designed by Alfonso Gerevini and Alessandro Saetti
; This file has been automatically generated by the generator available from
; http://zeus.ing.unibs.it/ipc-5/generators/index.html

(define (problem TPP)
(:domain TPP-Propositional)
(:objects
	goods1 goods2 goods3 goods4 goods5 goods6 goods7 goods8 goods9 goods10 goods11 goods12 goods13 goods14 goods15 goods16 goods17 goods18 goods19 goods20 goods21 goods22 goods23 goods24 goods25 goods26 goods27 goods28 goods29 - goods
	truck1 truck2 - truck
	market1 - market
	depot1 depot2 depot3 depot4 depot5 depot6 - depot
	level0 level1 level2 level3 level4 level5 level6 level7 level8 level9 level10 level11 level12 level13 level14 level15 level16 level17 level18 level19 level20 level21 level22 level23 level24 level25 - level)

(:init
	(next level1 level0)
	(next level2 level1)
	(next level3 level2)
	(next level4 level3)
	(next level5 level4)
	(next level6 level5)
	(next level7 level6)
	(next level8 level7)
	(next level9 level8)
	(next level10 level9)
	(next level11 level10)
	(next level12 level11)
	(next level13 level12)
	(next level14 level13)
	(next level15 level14)
	(next level16 level15)
	(next level17 level16)
	(next level18 level17)
	(next level19 level18)
	(next level20 level19)
	(next level21 level20)
	(next level22 level21)
	(next level23 level22)
	(next level24 level23)
	(next level25 level24)
	(ready-to-load goods1 market1 level0)
	(ready-to-load goods2 market1 level0)
	(ready-to-load goods3 market1 level0)
	(ready-to-load goods4 market1 level0)
	(ready-to-load goods5 market1 level0)
	(ready-to-load goods6 market1 level0)
	(ready-to-load goods7 market1 level0)
	(ready-to-load goods8 market1 level0)
	(ready-to-load goods9 market1 level0)
	(ready-to-load goods10 market1 level0)
	(ready-to-load goods11 market1 level0)
	(ready-to-load goods12 market1 level0)
	(ready-to-load goods13 market1 level0)
	(ready-to-load goods14 market1 level0)
	(ready-to-load goods15 market1 level0)
	(ready-to-load goods16 market1 level0)
	(ready-to-load goods17 market1 level0)
	(ready-to-load goods18 market1 level0)
	(ready-to-load goods19 market1 level0)
	(ready-to-load goods20 market1 level0)
	(ready-to-load goods21 market1 level0)
	(ready-to-load goods22 market1 level0)
	(ready-to-load goods23 market1 level0)
	(ready-to-load goods24 market1 level0)
	(ready-to-load goods25 market1 level0)
	(ready-to-load goods26 market1 level0)
	(ready-to-load goods27 market1 level0)
	(ready-to-load goods28 market1 level0)
	(ready-to-load goods29 market1 level0)
	(stored goods1 level0)
	(stored goods2 level0)
	(stored goods3 level0)
	(stored goods4 level0)
	(stored goods5 level0)
	(stored goods6 level0)
	(stored goods7 level0)
	(stored goods8 level0)
	(stored goods9 level0)
	(stored goods10 level0)
	(stored goods11 level0)
	(stored goods12 level0)
	(stored goods13 level0)
	(stored goods14 level0)
	(stored goods15 level0)
	(stored goods16 level0)
	(stored goods17 level0)
	(stored goods18 level0)
	(stored goods19 level0)
	(stored goods20 level0)
	(stored goods21 level0)
	(stored goods22 level0)
	(stored goods23 level0)
	(stored goods24 level0)
	(stored goods25 level0)
	(stored goods26 level0)
	(stored goods27 level0)
	(stored goods28 level0)
	(stored goods29 level0)
	(loaded goods1 truck1 level0)
	(loaded goods1 truck2 level0)
	(loaded goods2 truck1 level0)
	(loaded goods2 truck2 level0)
	(loaded goods3 truck1 level0)
	(loaded goods3 truck2 level0)
	(loaded goods4 truck1 level0)
	(loaded goods4 truck2 level0)
	(loaded goods5 truck1 level0)
	(loaded goods5 truck2 level0)
	(loaded goods6 truck1 level0)
	(loaded goods6 truck2 level0)
	(loaded goods7 truck1 level0)
	(loaded goods7 truck2 level0)
	(loaded goods8 truck1 level0)
	(loaded goods8 truck2 level0)
	(loaded goods9 truck1 level0)
	(loaded goods9 truck2 level0)
	(loaded goods10 truck1 level0)
	(loaded goods10 truck2 level0)
	(loaded goods11 truck1 level0)
	(loaded goods11 truck2 level0)
	(loaded goods12 truck1 level0)
	(loaded goods12 truck2 level0)
	(loaded goods13 truck1 level0)
	(loaded goods13 truck2 level0)
	(loaded goods14 truck1 level0)
	(loaded goods14 truck2 level0)
	(loaded goods15 truck1 level0)
	(loaded goods15 truck2 level0)
	(loaded goods16 truck1 level0)
	(loaded goods16 truck2 level0)
	(loaded goods17 truck1 level0)
	(loaded goods17 truck2 level0)
	(loaded goods18 truck1 level0)
	(loaded goods18 truck2 level0)
	(loaded goods19 truck1 level0)
	(loaded goods19 truck2 level0)
	(loaded goods20 truck1 level0)
	(loaded goods20 truck2 level0)
	(loaded goods21 truck1 level0)
	(loaded goods21 truck2 level0)
	(loaded goods22 truck1 level0)
	(loaded goods22 truck2 level0)
	(loaded goods23 truck1 level0)
	(loaded goods23 truck2 level0)
	(loaded goods24 truck1 level0)
	(loaded goods24 truck2 level0)
	(loaded goods25 truck1 level0)
	(loaded goods25 truck2 level0)
	(loaded goods26 truck1 level0)
	(loaded goods26 truck2 level0)
	(loaded goods27 truck1 level0)
	(loaded goods27 truck2 level0)
	(loaded goods28 truck1 level0)
	(loaded goods28 truck2 level0)
	(loaded goods29 truck1 level0)
	(loaded goods29 truck2 level0)
	(connected depot1 market1)
	(connected market1 depot1)
	(connected depot2 market1)
	(connected market1 depot2)
	(connected depot3 market1)
	(connected market1 depot3)
	(connected depot4 market1)
	(connected market1 depot4)
	(connected depot5 market1)
	(connected market1 depot5)
	(connected depot6 market1)
	(connected market1 depot6)
	(on-sale goods1 market1 level1)
	(on-sale goods2 market1 level18)
	(on-sale goods3 market1 level20)
	(on-sale goods4 market1 level11)
	(on-sale goods5 market1 level19)
	(on-sale goods6 market1 level10)
	(on-sale goods7 market1 level13)
	(on-sale goods8 market1 level25)
	(on-sale goods9 market1 level19)
	(on-sale goods10 market1 level10)
	(on-sale goods11 market1 level5)
	(on-sale goods12 market1 level2)
	(on-sale goods13 market1 level25)
	(on-sale goods14 market1 level14)
	(on-sale goods15 market1 level7)
	(on-sale goods16 market1 level13)
	(on-sale goods17 market1 level11)
	(on-sale goods18 market1 level4)
	(on-sale goods19 market1 level25)
	(on-sale goods20 market1 level6)
	(on-sale goods21 market1 level3)
	(on-sale goods22 market1 level10)
	(on-sale goods23 market1 level22)
	(on-sale goods24 market1 level13)
	(on-sale goods25 market1 level16)
	(on-sale goods26 market1 level12)
	(on-sale goods27 market1 level15)
	(on-sale goods28 market1 level6)
	(on-sale goods29 market1 level12)
	(at truck1 depot4)
	(at truck2 depot1))

(:goal (and
	(stored goods1 level1)
	(stored goods2 level6)
	(stored goods3 level18)
	(stored goods4 level6)
	(stored goods5 level8)
	(stored goods6 level5)
	(stored goods7 level13)
	(stored goods8 level16)
	(stored goods9 level4)
	(stored goods10 level8)
	(stored goods11 level3)
	(stored goods12 level2)
	(stored goods13 level14)
	(stored goods14 level11)
	(stored goods15 level1)
	(stored goods16 level6)
	(stored goods17 level1)
	(stored goods18 level4)
	(stored goods19 level2)
	(stored goods20 level3)
	(stored goods21 level3)
	(stored goods22 level9)
	(stored goods23 level9)
	(stored goods24 level12)
	(stored goods25 level13)
	(stored goods26 level10)
	(stored goods27 level11)
	(stored goods28 level4)
	(stored goods29 level10)))

)
