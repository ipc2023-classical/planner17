(define (domain DISPOSE)
(:requirements :negative-preconditions :conditional-effects)
	(:predicates
(kDISPOSED_O1)
(kDISPOSED_O1__OBJ-AT_O1_P12-12)
(kDISPOSED_O1__OBJ-AT_O1_P12-11)
(kDISPOSED_O1__OBJ-AT_O1_P12-10)
(kDISPOSED_O1__OBJ-AT_O1_P12-9)
(kDISPOSED_O1__OBJ-AT_O1_P12-8)
(kDISPOSED_O1__OBJ-AT_O1_P12-7)
(kDISPOSED_O1__OBJ-AT_O1_P12-6)
(kDISPOSED_O1__OBJ-AT_O1_P12-5)
(kDISPOSED_O1__OBJ-AT_O1_P12-4)
(kDISPOSED_O1__OBJ-AT_O1_P12-3)
(kDISPOSED_O1__OBJ-AT_O1_P12-2)
(kDISPOSED_O1__OBJ-AT_O1_P12-1)
(kDISPOSED_O1__OBJ-AT_O1_P11-12)
(kDISPOSED_O1__OBJ-AT_O1_P11-11)
(kDISPOSED_O1__OBJ-AT_O1_P11-10)
(kDISPOSED_O1__OBJ-AT_O1_P11-9)
(kDISPOSED_O1__OBJ-AT_O1_P11-8)
(kDISPOSED_O1__OBJ-AT_O1_P11-7)
(kDISPOSED_O1__OBJ-AT_O1_P11-6)
(kDISPOSED_O1__OBJ-AT_O1_P11-5)
(kDISPOSED_O1__OBJ-AT_O1_P11-4)
(kDISPOSED_O1__OBJ-AT_O1_P11-3)
(kDISPOSED_O1__OBJ-AT_O1_P11-2)
(kDISPOSED_O1__OBJ-AT_O1_P11-1)
(kDISPOSED_O1__OBJ-AT_O1_P10-12)
(kDISPOSED_O1__OBJ-AT_O1_P10-11)
(kDISPOSED_O1__OBJ-AT_O1_P10-10)
(kDISPOSED_O1__OBJ-AT_O1_P10-9)
(kDISPOSED_O1__OBJ-AT_O1_P10-8)
(kDISPOSED_O1__OBJ-AT_O1_P10-7)
(kDISPOSED_O1__OBJ-AT_O1_P10-6)
(kDISPOSED_O1__OBJ-AT_O1_P10-5)
(kDISPOSED_O1__OBJ-AT_O1_P10-4)
(kDISPOSED_O1__OBJ-AT_O1_P10-3)
(kDISPOSED_O1__OBJ-AT_O1_P10-2)
(kDISPOSED_O1__OBJ-AT_O1_P10-1)
(kDISPOSED_O1__OBJ-AT_O1_P9-12)
(kDISPOSED_O1__OBJ-AT_O1_P9-11)
(kDISPOSED_O1__OBJ-AT_O1_P9-10)
(kDISPOSED_O1__OBJ-AT_O1_P9-9)
(kDISPOSED_O1__OBJ-AT_O1_P9-8)
(kDISPOSED_O1__OBJ-AT_O1_P9-7)
(kDISPOSED_O1__OBJ-AT_O1_P9-6)
(kDISPOSED_O1__OBJ-AT_O1_P9-5)
(kDISPOSED_O1__OBJ-AT_O1_P9-4)
(kDISPOSED_O1__OBJ-AT_O1_P9-3)
(kDISPOSED_O1__OBJ-AT_O1_P9-2)
(kDISPOSED_O1__OBJ-AT_O1_P9-1)
(kDISPOSED_O1__OBJ-AT_O1_P8-12)
(kDISPOSED_O1__OBJ-AT_O1_P8-11)
(kDISPOSED_O1__OBJ-AT_O1_P8-10)
(kDISPOSED_O1__OBJ-AT_O1_P8-9)
(kDISPOSED_O1__OBJ-AT_O1_P8-8)
(kDISPOSED_O1__OBJ-AT_O1_P8-7)
(kDISPOSED_O1__OBJ-AT_O1_P8-6)
(kDISPOSED_O1__OBJ-AT_O1_P8-5)
(kDISPOSED_O1__OBJ-AT_O1_P8-4)
(kDISPOSED_O1__OBJ-AT_O1_P8-3)
(kDISPOSED_O1__OBJ-AT_O1_P8-2)
(kDISPOSED_O1__OBJ-AT_O1_P8-1)
(kDISPOSED_O1__OBJ-AT_O1_P7-12)
(kDISPOSED_O1__OBJ-AT_O1_P7-11)
(kDISPOSED_O1__OBJ-AT_O1_P7-10)
(kDISPOSED_O1__OBJ-AT_O1_P7-9)
(kDISPOSED_O1__OBJ-AT_O1_P7-8)
(kDISPOSED_O1__OBJ-AT_O1_P7-7)
(kDISPOSED_O1__OBJ-AT_O1_P7-6)
(kDISPOSED_O1__OBJ-AT_O1_P7-5)
(kDISPOSED_O1__OBJ-AT_O1_P7-4)
(kDISPOSED_O1__OBJ-AT_O1_P7-3)
(kDISPOSED_O1__OBJ-AT_O1_P7-2)
(kDISPOSED_O1__OBJ-AT_O1_P7-1)
(kDISPOSED_O1__OBJ-AT_O1_P6-12)
(kDISPOSED_O1__OBJ-AT_O1_P6-11)
(kDISPOSED_O1__OBJ-AT_O1_P6-10)
(kDISPOSED_O1__OBJ-AT_O1_P6-9)
(kDISPOSED_O1__OBJ-AT_O1_P6-8)
(kDISPOSED_O1__OBJ-AT_O1_P6-7)
(kDISPOSED_O1__OBJ-AT_O1_P6-6)
(kDISPOSED_O1__OBJ-AT_O1_P6-5)
(kDISPOSED_O1__OBJ-AT_O1_P6-4)
(kDISPOSED_O1__OBJ-AT_O1_P6-3)
(kDISPOSED_O1__OBJ-AT_O1_P6-2)
(kDISPOSED_O1__OBJ-AT_O1_P6-1)
(kDISPOSED_O1__OBJ-AT_O1_P5-12)
(kDISPOSED_O1__OBJ-AT_O1_P5-11)
(kDISPOSED_O1__OBJ-AT_O1_P5-10)
(kDISPOSED_O1__OBJ-AT_O1_P5-9)
(kDISPOSED_O1__OBJ-AT_O1_P5-8)
(kDISPOSED_O1__OBJ-AT_O1_P5-7)
(kDISPOSED_O1__OBJ-AT_O1_P5-6)
(kDISPOSED_O1__OBJ-AT_O1_P5-5)
(kDISPOSED_O1__OBJ-AT_O1_P5-4)
(kDISPOSED_O1__OBJ-AT_O1_P5-3)
(kDISPOSED_O1__OBJ-AT_O1_P5-2)
(kDISPOSED_O1__OBJ-AT_O1_P5-1)
(kDISPOSED_O1__OBJ-AT_O1_P4-12)
(kDISPOSED_O1__OBJ-AT_O1_P4-11)
(kDISPOSED_O1__OBJ-AT_O1_P4-10)
(kDISPOSED_O1__OBJ-AT_O1_P4-9)
(kDISPOSED_O1__OBJ-AT_O1_P4-8)
(kDISPOSED_O1__OBJ-AT_O1_P4-7)
(kDISPOSED_O1__OBJ-AT_O1_P4-6)
(kDISPOSED_O1__OBJ-AT_O1_P4-5)
(kDISPOSED_O1__OBJ-AT_O1_P4-4)
(kDISPOSED_O1__OBJ-AT_O1_P4-3)
(kDISPOSED_O1__OBJ-AT_O1_P4-2)
(kDISPOSED_O1__OBJ-AT_O1_P4-1)
(kDISPOSED_O1__OBJ-AT_O1_P3-12)
(kDISPOSED_O1__OBJ-AT_O1_P3-11)
(kDISPOSED_O1__OBJ-AT_O1_P3-10)
(kDISPOSED_O1__OBJ-AT_O1_P3-9)
(kDISPOSED_O1__OBJ-AT_O1_P3-8)
(kDISPOSED_O1__OBJ-AT_O1_P3-7)
(kDISPOSED_O1__OBJ-AT_O1_P3-6)
(kDISPOSED_O1__OBJ-AT_O1_P3-5)
(kDISPOSED_O1__OBJ-AT_O1_P3-4)
(kDISPOSED_O1__OBJ-AT_O1_P3-3)
(kDISPOSED_O1__OBJ-AT_O1_P3-2)
(kDISPOSED_O1__OBJ-AT_O1_P3-1)
(kDISPOSED_O1__OBJ-AT_O1_P2-12)
(kDISPOSED_O1__OBJ-AT_O1_P2-11)
(kDISPOSED_O1__OBJ-AT_O1_P2-10)
(kDISPOSED_O1__OBJ-AT_O1_P2-9)
(kDISPOSED_O1__OBJ-AT_O1_P2-8)
(kDISPOSED_O1__OBJ-AT_O1_P2-7)
(kDISPOSED_O1__OBJ-AT_O1_P2-6)
(kDISPOSED_O1__OBJ-AT_O1_P2-5)
(kDISPOSED_O1__OBJ-AT_O1_P2-4)
(kDISPOSED_O1__OBJ-AT_O1_P2-3)
(kDISPOSED_O1__OBJ-AT_O1_P2-2)
(kDISPOSED_O1__OBJ-AT_O1_P2-1)
(kDISPOSED_O1__OBJ-AT_O1_P1-12)
(kDISPOSED_O1__OBJ-AT_O1_P1-11)
(kDISPOSED_O1__OBJ-AT_O1_P1-10)
(kDISPOSED_O1__OBJ-AT_O1_P1-9)
(kDISPOSED_O1__OBJ-AT_O1_P1-8)
(kDISPOSED_O1__OBJ-AT_O1_P1-7)
(kDISPOSED_O1__OBJ-AT_O1_P1-6)
(kDISPOSED_O1__OBJ-AT_O1_P1-5)
(kDISPOSED_O1__OBJ-AT_O1_P1-4)
(kDISPOSED_O1__OBJ-AT_O1_P1-3)
(kDISPOSED_O1__OBJ-AT_O1_P1-1)
(kDISPOSED_O1__OBJ-AT_O1_P1-2)
(kAT_P6-6)
(kAT_P5-6)
(kAT_P6-5)
(kAT_P6-7)
(kAT_P7-6)
(kAT_P5-7)
(kAT_P6-8)
(kAT_P7-7)
(kAT_P5-8)
(kAT_P6-9)
(kAT_P7-8)
(kAT_P5-9)
(kAT_P6-10)
(kAT_P7-9)
(kAT_P7-5)
(kAT_P8-6)
(kAT_P8-7)
(kAT_P8-8)
(kAT_P7-10)
(kAT_P8-9)
(kAT_P8-5)
(kAT_P9-6)
(kAT_P9-7)
(kAT_P9-8)
(kAT_P8-10)
(kAT_P9-9)
(kAT_P10-6)
(kAT_P9-5)
(kAT_P10-7)
(kAT_P10-8)
(kAT_P10-9)
(kAT_P9-10)
(k-OBJ-AT_O1_P10-6)
(kOBJ-AT_O1_P10-6__OBJ-AT_O1_P10-6)
(k-HOLDING_O1)
(kHOLDING_O1__OBJ-AT_O1_P12-12)
(kHOLDING_O1__OBJ-AT_O1_P12-11)
(kHOLDING_O1__OBJ-AT_O1_P12-10)
(kHOLDING_O1__OBJ-AT_O1_P12-9)
(kHOLDING_O1__OBJ-AT_O1_P12-8)
(kHOLDING_O1__OBJ-AT_O1_P12-7)
(kHOLDING_O1__OBJ-AT_O1_P12-6)
(kHOLDING_O1__OBJ-AT_O1_P12-5)
(kHOLDING_O1__OBJ-AT_O1_P12-4)
(kHOLDING_O1__OBJ-AT_O1_P12-3)
(kHOLDING_O1__OBJ-AT_O1_P12-2)
(kHOLDING_O1__OBJ-AT_O1_P12-1)
(kHOLDING_O1__OBJ-AT_O1_P11-12)
(kHOLDING_O1__OBJ-AT_O1_P11-11)
(kHOLDING_O1__OBJ-AT_O1_P11-10)
(kHOLDING_O1__OBJ-AT_O1_P11-9)
(kHOLDING_O1__OBJ-AT_O1_P11-8)
(kHOLDING_O1__OBJ-AT_O1_P11-7)
(kHOLDING_O1__OBJ-AT_O1_P11-6)
(kHOLDING_O1__OBJ-AT_O1_P11-5)
(kHOLDING_O1__OBJ-AT_O1_P11-4)
(kHOLDING_O1__OBJ-AT_O1_P11-3)
(kHOLDING_O1__OBJ-AT_O1_P11-2)
(kHOLDING_O1__OBJ-AT_O1_P11-1)
(kHOLDING_O1__OBJ-AT_O1_P10-12)
(kHOLDING_O1__OBJ-AT_O1_P10-11)
(kHOLDING_O1__OBJ-AT_O1_P10-10)
(kHOLDING_O1__OBJ-AT_O1_P10-9)
(kHOLDING_O1__OBJ-AT_O1_P10-8)
(kHOLDING_O1__OBJ-AT_O1_P10-7)
(kHOLDING_O1__OBJ-AT_O1_P10-6)
(kHOLDING_O1__OBJ-AT_O1_P10-5)
(kHOLDING_O1__OBJ-AT_O1_P10-4)
(kHOLDING_O1__OBJ-AT_O1_P10-3)
(kHOLDING_O1__OBJ-AT_O1_P10-2)
(kHOLDING_O1__OBJ-AT_O1_P10-1)
(kHOLDING_O1__OBJ-AT_O1_P9-12)
(kHOLDING_O1__OBJ-AT_O1_P9-11)
(kHOLDING_O1__OBJ-AT_O1_P9-10)
(kHOLDING_O1__OBJ-AT_O1_P9-9)
(kHOLDING_O1__OBJ-AT_O1_P9-8)
(kHOLDING_O1__OBJ-AT_O1_P9-7)
(kHOLDING_O1__OBJ-AT_O1_P9-6)
(kHOLDING_O1__OBJ-AT_O1_P9-5)
(kHOLDING_O1__OBJ-AT_O1_P9-4)
(kHOLDING_O1__OBJ-AT_O1_P9-3)
(kHOLDING_O1__OBJ-AT_O1_P9-2)
(kHOLDING_O1__OBJ-AT_O1_P9-1)
(kHOLDING_O1__OBJ-AT_O1_P8-12)
(kHOLDING_O1__OBJ-AT_O1_P8-11)
(kHOLDING_O1__OBJ-AT_O1_P8-10)
(kHOLDING_O1__OBJ-AT_O1_P8-9)
(kHOLDING_O1__OBJ-AT_O1_P8-8)
(kHOLDING_O1__OBJ-AT_O1_P8-7)
(kHOLDING_O1__OBJ-AT_O1_P8-6)
(kHOLDING_O1__OBJ-AT_O1_P8-5)
(kHOLDING_O1__OBJ-AT_O1_P8-4)
(kHOLDING_O1__OBJ-AT_O1_P8-3)
(kHOLDING_O1__OBJ-AT_O1_P8-2)
(kHOLDING_O1__OBJ-AT_O1_P8-1)
(kHOLDING_O1__OBJ-AT_O1_P7-12)
(kHOLDING_O1__OBJ-AT_O1_P7-11)
(kHOLDING_O1__OBJ-AT_O1_P7-10)
(kHOLDING_O1__OBJ-AT_O1_P7-9)
(kHOLDING_O1__OBJ-AT_O1_P7-8)
(kHOLDING_O1__OBJ-AT_O1_P7-7)
(kHOLDING_O1__OBJ-AT_O1_P7-6)
(kHOLDING_O1__OBJ-AT_O1_P7-5)
(kHOLDING_O1__OBJ-AT_O1_P7-4)
(kHOLDING_O1__OBJ-AT_O1_P7-3)
(kHOLDING_O1__OBJ-AT_O1_P7-2)
(kHOLDING_O1__OBJ-AT_O1_P7-1)
(kHOLDING_O1__OBJ-AT_O1_P6-12)
(kHOLDING_O1__OBJ-AT_O1_P6-11)
(kHOLDING_O1__OBJ-AT_O1_P6-10)
(kHOLDING_O1__OBJ-AT_O1_P6-9)
(kHOLDING_O1__OBJ-AT_O1_P6-8)
(kHOLDING_O1__OBJ-AT_O1_P6-7)
(kHOLDING_O1__OBJ-AT_O1_P6-6)
(kHOLDING_O1__OBJ-AT_O1_P6-5)
(kHOLDING_O1__OBJ-AT_O1_P6-4)
(kHOLDING_O1__OBJ-AT_O1_P6-3)
(kHOLDING_O1__OBJ-AT_O1_P6-2)
(kHOLDING_O1__OBJ-AT_O1_P6-1)
(kHOLDING_O1__OBJ-AT_O1_P5-12)
(kHOLDING_O1__OBJ-AT_O1_P5-11)
(kHOLDING_O1__OBJ-AT_O1_P5-10)
(kHOLDING_O1__OBJ-AT_O1_P5-9)
(kHOLDING_O1__OBJ-AT_O1_P5-8)
(kHOLDING_O1__OBJ-AT_O1_P5-7)
(kHOLDING_O1__OBJ-AT_O1_P5-6)
(kHOLDING_O1__OBJ-AT_O1_P5-5)
(kHOLDING_O1__OBJ-AT_O1_P5-4)
(kHOLDING_O1__OBJ-AT_O1_P5-3)
(kHOLDING_O1__OBJ-AT_O1_P5-2)
(kHOLDING_O1__OBJ-AT_O1_P5-1)
(kHOLDING_O1__OBJ-AT_O1_P4-12)
(kHOLDING_O1__OBJ-AT_O1_P4-11)
(kHOLDING_O1__OBJ-AT_O1_P4-10)
(kHOLDING_O1__OBJ-AT_O1_P4-9)
(kHOLDING_O1__OBJ-AT_O1_P4-8)
(kHOLDING_O1__OBJ-AT_O1_P4-7)
(kHOLDING_O1__OBJ-AT_O1_P4-6)
(kHOLDING_O1__OBJ-AT_O1_P4-5)
(kHOLDING_O1__OBJ-AT_O1_P4-4)
(kHOLDING_O1__OBJ-AT_O1_P4-3)
(kHOLDING_O1__OBJ-AT_O1_P4-2)
(kHOLDING_O1__OBJ-AT_O1_P4-1)
(kHOLDING_O1__OBJ-AT_O1_P3-12)
(kHOLDING_O1__OBJ-AT_O1_P3-11)
(kHOLDING_O1__OBJ-AT_O1_P3-10)
(kHOLDING_O1__OBJ-AT_O1_P3-9)
(kHOLDING_O1__OBJ-AT_O1_P3-8)
(kHOLDING_O1__OBJ-AT_O1_P3-7)
(kHOLDING_O1__OBJ-AT_O1_P3-6)
(kHOLDING_O1__OBJ-AT_O1_P3-5)
(kHOLDING_O1__OBJ-AT_O1_P3-4)
(kHOLDING_O1__OBJ-AT_O1_P3-3)
(kHOLDING_O1__OBJ-AT_O1_P3-2)
(kHOLDING_O1__OBJ-AT_O1_P3-1)
(kHOLDING_O1__OBJ-AT_O1_P2-12)
(kHOLDING_O1__OBJ-AT_O1_P2-11)
(kHOLDING_O1__OBJ-AT_O1_P2-10)
(kHOLDING_O1__OBJ-AT_O1_P2-9)
(kHOLDING_O1__OBJ-AT_O1_P2-8)
(kHOLDING_O1__OBJ-AT_O1_P2-7)
(kHOLDING_O1__OBJ-AT_O1_P2-6)
(kHOLDING_O1__OBJ-AT_O1_P2-5)
(kHOLDING_O1__OBJ-AT_O1_P2-4)
(kHOLDING_O1__OBJ-AT_O1_P2-3)
(kHOLDING_O1__OBJ-AT_O1_P2-2)
(kHOLDING_O1__OBJ-AT_O1_P2-1)
(kHOLDING_O1__OBJ-AT_O1_P1-12)
(kHOLDING_O1__OBJ-AT_O1_P1-11)
(kHOLDING_O1__OBJ-AT_O1_P1-10)
(kHOLDING_O1__OBJ-AT_O1_P1-9)
(kHOLDING_O1__OBJ-AT_O1_P1-8)
(kHOLDING_O1__OBJ-AT_O1_P1-7)
(kHOLDING_O1__OBJ-AT_O1_P1-6)
(kHOLDING_O1__OBJ-AT_O1_P1-5)
(kHOLDING_O1__OBJ-AT_O1_P1-4)
(kHOLDING_O1__OBJ-AT_O1_P1-3)
(kHOLDING_O1__OBJ-AT_O1_P1-1)
(kHOLDING_O1__OBJ-AT_O1_P1-2)
(k-OBJ-AT_O1_P10-7)
(kOBJ-AT_O1_P10-7__OBJ-AT_O1_P10-7)
(k-OBJ-AT_O1_P10-8)
(kOBJ-AT_O1_P10-8__OBJ-AT_O1_P10-8)
(k-OBJ-AT_O1_P10-9)
(kOBJ-AT_O1_P10-9__OBJ-AT_O1_P10-9)
(k-OBJ-AT_O1_P5-6)
(kOBJ-AT_O1_P5-6__OBJ-AT_O1_P5-6)
(k-OBJ-AT_O1_P5-7)
(kOBJ-AT_O1_P5-7__OBJ-AT_O1_P5-7)
(k-OBJ-AT_O1_P5-8)
(kOBJ-AT_O1_P5-8__OBJ-AT_O1_P5-8)
(k-OBJ-AT_O1_P5-9)
(kOBJ-AT_O1_P5-9__OBJ-AT_O1_P5-9)
(k-OBJ-AT_O1_P6-10)
(kOBJ-AT_O1_P6-10__OBJ-AT_O1_P6-10)
(k-OBJ-AT_O1_P6-5)
(kOBJ-AT_O1_P6-5__OBJ-AT_O1_P6-5)
(k-OBJ-AT_O1_P6-6)
(kOBJ-AT_O1_P6-6__OBJ-AT_O1_P6-6)
(k-OBJ-AT_O1_P6-7)
(kOBJ-AT_O1_P6-7__OBJ-AT_O1_P6-7)
(k-OBJ-AT_O1_P6-8)
(kOBJ-AT_O1_P6-8__OBJ-AT_O1_P6-8)
(k-OBJ-AT_O1_P6-9)
(kOBJ-AT_O1_P6-9__OBJ-AT_O1_P6-9)
(k-OBJ-AT_O1_P7-10)
(kOBJ-AT_O1_P7-10__OBJ-AT_O1_P7-10)
(k-OBJ-AT_O1_P7-5)
(kOBJ-AT_O1_P7-5__OBJ-AT_O1_P7-5)
(k-OBJ-AT_O1_P7-6)
(kOBJ-AT_O1_P7-6__OBJ-AT_O1_P7-6)
(k-OBJ-AT_O1_P7-7)
(kOBJ-AT_O1_P7-7__OBJ-AT_O1_P7-7)
(k-OBJ-AT_O1_P7-8)
(kOBJ-AT_O1_P7-8__OBJ-AT_O1_P7-8)
(k-OBJ-AT_O1_P7-9)
(kOBJ-AT_O1_P7-9__OBJ-AT_O1_P7-9)
(k-OBJ-AT_O1_P8-10)
(kOBJ-AT_O1_P8-10__OBJ-AT_O1_P8-10)
(k-OBJ-AT_O1_P8-5)
(kOBJ-AT_O1_P8-5__OBJ-AT_O1_P8-5)
(k-OBJ-AT_O1_P8-6)
(kOBJ-AT_O1_P8-6__OBJ-AT_O1_P8-6)
(k-OBJ-AT_O1_P8-7)
(kOBJ-AT_O1_P8-7__OBJ-AT_O1_P8-7)
(k-OBJ-AT_O1_P8-8)
(kOBJ-AT_O1_P8-8__OBJ-AT_O1_P8-8)
(k-OBJ-AT_O1_P8-9)
(kOBJ-AT_O1_P8-9__OBJ-AT_O1_P8-9)
(k-OBJ-AT_O1_P9-10)
(kOBJ-AT_O1_P9-10__OBJ-AT_O1_P9-10)
(k-OBJ-AT_O1_P9-5)
(kOBJ-AT_O1_P9-5__OBJ-AT_O1_P9-5)
(k-OBJ-AT_O1_P9-6)
(kOBJ-AT_O1_P9-6__OBJ-AT_O1_P9-6)
(k-OBJ-AT_O1_P9-7)
(kOBJ-AT_O1_P9-7__OBJ-AT_O1_P9-7)
(k-OBJ-AT_O1_P9-8)
(kOBJ-AT_O1_P9-8__OBJ-AT_O1_P9-8)
(k-OBJ-AT_O1_P9-9)
(kOBJ-AT_O1_P9-9__OBJ-AT_O1_P9-9)
(kAT_P10-5)
(kAT_P11-6)
(kAT_P11-7)
(kAT_P11-8)
(kAT_P10-10)
(kAT_P11-9)
(kAT_P11-5)
(kAT_P12-6)
(kAT_P12-7)
(kAT_P12-8)
(kAT_P11-10)
(kAT_P12-9)
(kAT_P12-5)
(kAT_P12-10)
(kAT_P4-6)
(kAT_P5-5)
(kAT_P4-7)
(kAT_P4-8)
(kAT_P4-9)
(kAT_P5-10)
(kAT_P6-11)
(kAT_P5-11)
(kAT_P6-12)
(kAT_P7-11)
(kAT_P5-12)
(kAT_P7-12)
(kAT_P6-4)
(kAT_P8-11)
(kAT_P8-12)
(kAT_P7-4)
(kAT_P9-11)
(kAT_P9-12)
(kAT_P8-4)
(kAT_P10-11)
(kAT_P10-12)
(kAT_P9-4)
(k-OBJ-AT_O1_P10-10)
(kOBJ-AT_O1_P10-10__OBJ-AT_O1_P10-10)
(k-OBJ-AT_O1_P10-11)
(kOBJ-AT_O1_P10-11__OBJ-AT_O1_P10-11)
(k-OBJ-AT_O1_P10-12)
(kOBJ-AT_O1_P10-12__OBJ-AT_O1_P10-12)
(k-OBJ-AT_O1_P10-5)
(kOBJ-AT_O1_P10-5__OBJ-AT_O1_P10-5)
(k-OBJ-AT_O1_P11-10)
(kOBJ-AT_O1_P11-10__OBJ-AT_O1_P11-10)
(k-OBJ-AT_O1_P11-5)
(kOBJ-AT_O1_P11-5__OBJ-AT_O1_P11-5)
(k-OBJ-AT_O1_P11-6)
(kOBJ-AT_O1_P11-6__OBJ-AT_O1_P11-6)
(k-OBJ-AT_O1_P11-7)
(kOBJ-AT_O1_P11-7__OBJ-AT_O1_P11-7)
(k-OBJ-AT_O1_P11-8)
(kOBJ-AT_O1_P11-8__OBJ-AT_O1_P11-8)
(k-OBJ-AT_O1_P11-9)
(kOBJ-AT_O1_P11-9__OBJ-AT_O1_P11-9)
(k-OBJ-AT_O1_P12-10)
(kOBJ-AT_O1_P12-10__OBJ-AT_O1_P12-10)
(k-OBJ-AT_O1_P12-5)
(kOBJ-AT_O1_P12-5__OBJ-AT_O1_P12-5)
(k-OBJ-AT_O1_P12-6)
(kOBJ-AT_O1_P12-6__OBJ-AT_O1_P12-6)
(k-OBJ-AT_O1_P12-7)
(kOBJ-AT_O1_P12-7__OBJ-AT_O1_P12-7)
(k-OBJ-AT_O1_P12-8)
(kOBJ-AT_O1_P12-8__OBJ-AT_O1_P12-8)
(k-OBJ-AT_O1_P12-9)
(kOBJ-AT_O1_P12-9__OBJ-AT_O1_P12-9)
(k-OBJ-AT_O1_P4-6)
(kOBJ-AT_O1_P4-6__OBJ-AT_O1_P4-6)
(k-OBJ-AT_O1_P4-7)
(kOBJ-AT_O1_P4-7__OBJ-AT_O1_P4-7)
(k-OBJ-AT_O1_P4-8)
(kOBJ-AT_O1_P4-8__OBJ-AT_O1_P4-8)
(k-OBJ-AT_O1_P4-9)
(kOBJ-AT_O1_P4-9__OBJ-AT_O1_P4-9)
(k-OBJ-AT_O1_P5-10)
(kOBJ-AT_O1_P5-10__OBJ-AT_O1_P5-10)
(k-OBJ-AT_O1_P5-11)
(kOBJ-AT_O1_P5-11__OBJ-AT_O1_P5-11)
(k-OBJ-AT_O1_P5-12)
(kOBJ-AT_O1_P5-12__OBJ-AT_O1_P5-12)
(k-OBJ-AT_O1_P5-5)
(kOBJ-AT_O1_P5-5__OBJ-AT_O1_P5-5)
(k-OBJ-AT_O1_P6-11)
(kOBJ-AT_O1_P6-11__OBJ-AT_O1_P6-11)
(k-OBJ-AT_O1_P6-12)
(kOBJ-AT_O1_P6-12__OBJ-AT_O1_P6-12)
(k-OBJ-AT_O1_P6-4)
(kOBJ-AT_O1_P6-4__OBJ-AT_O1_P6-4)
(k-OBJ-AT_O1_P7-11)
(kOBJ-AT_O1_P7-11__OBJ-AT_O1_P7-11)
(k-OBJ-AT_O1_P7-12)
(kOBJ-AT_O1_P7-12__OBJ-AT_O1_P7-12)
(k-OBJ-AT_O1_P7-4)
(kOBJ-AT_O1_P7-4__OBJ-AT_O1_P7-4)
(k-OBJ-AT_O1_P8-11)
(kOBJ-AT_O1_P8-11__OBJ-AT_O1_P8-11)
(k-OBJ-AT_O1_P8-12)
(kOBJ-AT_O1_P8-12__OBJ-AT_O1_P8-12)
(k-OBJ-AT_O1_P8-4)
(kOBJ-AT_O1_P8-4__OBJ-AT_O1_P8-4)
(k-OBJ-AT_O1_P9-11)
(kOBJ-AT_O1_P9-11__OBJ-AT_O1_P9-11)
(k-OBJ-AT_O1_P9-12)
(kOBJ-AT_O1_P9-12__OBJ-AT_O1_P9-12)
(k-OBJ-AT_O1_P9-4)
(kOBJ-AT_O1_P9-4__OBJ-AT_O1_P9-4)
(kAT_P11-11)
(kAT_P11-12)
(kAT_P10-4)
(kAT_P12-11)
(kAT_P12-12)
(kAT_P11-4)
(kAT_P12-4)
(kAT_P3-6)
(kAT_P4-5)
(kAT_P3-7)
(kAT_P3-8)
(kAT_P3-9)
(kAT_P4-10)
(kAT_P4-11)
(kAT_P4-12)
(kAT_P5-4)
(kAT_P6-3)
(kAT_P7-3)
(kAT_P8-3)
(kAT_P9-3)
(k-OBJ-AT_O1_P10-4)
(kOBJ-AT_O1_P10-4__OBJ-AT_O1_P10-4)
(k-OBJ-AT_O1_P11-11)
(kOBJ-AT_O1_P11-11__OBJ-AT_O1_P11-11)
(k-OBJ-AT_O1_P11-12)
(kOBJ-AT_O1_P11-12__OBJ-AT_O1_P11-12)
(k-OBJ-AT_O1_P11-4)
(kOBJ-AT_O1_P11-4__OBJ-AT_O1_P11-4)
(k-OBJ-AT_O1_P12-11)
(kOBJ-AT_O1_P12-11__OBJ-AT_O1_P12-11)
(k-OBJ-AT_O1_P12-12)
(kOBJ-AT_O1_P12-12__OBJ-AT_O1_P12-12)
(k-OBJ-AT_O1_P12-4)
(kOBJ-AT_O1_P12-4__OBJ-AT_O1_P12-4)
(k-OBJ-AT_O1_P3-6)
(kOBJ-AT_O1_P3-6__OBJ-AT_O1_P3-6)
(k-OBJ-AT_O1_P3-7)
(kOBJ-AT_O1_P3-7__OBJ-AT_O1_P3-7)
(k-OBJ-AT_O1_P3-8)
(kOBJ-AT_O1_P3-8__OBJ-AT_O1_P3-8)
(k-OBJ-AT_O1_P3-9)
(kOBJ-AT_O1_P3-9__OBJ-AT_O1_P3-9)
(k-OBJ-AT_O1_P4-10)
(kOBJ-AT_O1_P4-10__OBJ-AT_O1_P4-10)
(k-OBJ-AT_O1_P4-11)
(kOBJ-AT_O1_P4-11__OBJ-AT_O1_P4-11)
(k-OBJ-AT_O1_P4-12)
(kOBJ-AT_O1_P4-12__OBJ-AT_O1_P4-12)
(k-OBJ-AT_O1_P4-5)
(kOBJ-AT_O1_P4-5__OBJ-AT_O1_P4-5)
(k-OBJ-AT_O1_P5-4)
(kOBJ-AT_O1_P5-4__OBJ-AT_O1_P5-4)
(k-OBJ-AT_O1_P6-3)
(kOBJ-AT_O1_P6-3__OBJ-AT_O1_P6-3)
(k-OBJ-AT_O1_P7-3)
(kOBJ-AT_O1_P7-3__OBJ-AT_O1_P7-3)
(k-OBJ-AT_O1_P8-3)
(kOBJ-AT_O1_P8-3__OBJ-AT_O1_P8-3)
(k-OBJ-AT_O1_P9-3)
(kOBJ-AT_O1_P9-3__OBJ-AT_O1_P9-3)
(kAT_P10-3)
(kAT_P11-3)
(kAT_P12-3)
(kAT_P2-6)
(kAT_P3-5)
(kAT_P2-7)
(kAT_P2-8)
(kAT_P2-9)
(kAT_P3-10)
(kAT_P3-11)
(kAT_P3-12)
(kAT_P4-4)
(kAT_P5-3)
(kAT_P6-2)
(kAT_P7-2)
(kAT_P8-2)
(kAT_P9-2)
(k-OBJ-AT_O1_P10-3)
(kOBJ-AT_O1_P10-3__OBJ-AT_O1_P10-3)
(k-OBJ-AT_O1_P11-3)
(kOBJ-AT_O1_P11-3__OBJ-AT_O1_P11-3)
(k-OBJ-AT_O1_P12-3)
(kOBJ-AT_O1_P12-3__OBJ-AT_O1_P12-3)
(k-OBJ-AT_O1_P2-6)
(kOBJ-AT_O1_P2-6__OBJ-AT_O1_P2-6)
(k-OBJ-AT_O1_P2-7)
(kOBJ-AT_O1_P2-7__OBJ-AT_O1_P2-7)
(k-OBJ-AT_O1_P2-8)
(kOBJ-AT_O1_P2-8__OBJ-AT_O1_P2-8)
(k-OBJ-AT_O1_P2-9)
(kOBJ-AT_O1_P2-9__OBJ-AT_O1_P2-9)
(k-OBJ-AT_O1_P3-10)
(kOBJ-AT_O1_P3-10__OBJ-AT_O1_P3-10)
(k-OBJ-AT_O1_P3-11)
(kOBJ-AT_O1_P3-11__OBJ-AT_O1_P3-11)
(k-OBJ-AT_O1_P3-12)
(kOBJ-AT_O1_P3-12__OBJ-AT_O1_P3-12)
(k-OBJ-AT_O1_P3-5)
(kOBJ-AT_O1_P3-5__OBJ-AT_O1_P3-5)
(k-OBJ-AT_O1_P4-4)
(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-4)
(k-OBJ-AT_O1_P5-3)
(kOBJ-AT_O1_P5-3__OBJ-AT_O1_P5-3)
(k-OBJ-AT_O1_P6-2)
(kOBJ-AT_O1_P6-2__OBJ-AT_O1_P6-2)
(k-OBJ-AT_O1_P7-2)
(kOBJ-AT_O1_P7-2__OBJ-AT_O1_P7-2)
(k-OBJ-AT_O1_P8-2)
(kOBJ-AT_O1_P8-2__OBJ-AT_O1_P8-2)
(k-OBJ-AT_O1_P9-2)
(kOBJ-AT_O1_P9-2__OBJ-AT_O1_P9-2)
(kAT_P10-2)
(kAT_P11-2)
(kAT_P12-2)
(kAT_P1-6)
(kAT_P2-5)
(kAT_P1-7)
(kAT_P1-8)
(kAT_P1-9)
(kAT_P2-10)
(kAT_P2-11)
(kAT_P2-12)
(kAT_P3-4)
(kAT_P4-3)
(kAT_P5-2)
(kAT_P6-1)
(kAT_P7-1)
(kAT_P8-1)
(kAT_P9-1)
(k-OBJ-AT_O1_P1-6)
(kOBJ-AT_O1_P1-6__OBJ-AT_O1_P1-6)
(k-OBJ-AT_O1_P1-7)
(kOBJ-AT_O1_P1-7__OBJ-AT_O1_P1-7)
(k-OBJ-AT_O1_P1-8)
(kOBJ-AT_O1_P1-8__OBJ-AT_O1_P1-8)
(k-OBJ-AT_O1_P1-9)
(kOBJ-AT_O1_P1-9__OBJ-AT_O1_P1-9)
(k-OBJ-AT_O1_P10-2)
(kOBJ-AT_O1_P10-2__OBJ-AT_O1_P10-2)
(k-OBJ-AT_O1_P11-2)
(kOBJ-AT_O1_P11-2__OBJ-AT_O1_P11-2)
(k-OBJ-AT_O1_P12-2)
(kOBJ-AT_O1_P12-2__OBJ-AT_O1_P12-2)
(k-OBJ-AT_O1_P2-10)
(kOBJ-AT_O1_P2-10__OBJ-AT_O1_P2-10)
(k-OBJ-AT_O1_P2-11)
(kOBJ-AT_O1_P2-11__OBJ-AT_O1_P2-11)
(k-OBJ-AT_O1_P2-12)
(kOBJ-AT_O1_P2-12__OBJ-AT_O1_P2-12)
(k-OBJ-AT_O1_P2-5)
(kOBJ-AT_O1_P2-5__OBJ-AT_O1_P2-5)
(k-OBJ-AT_O1_P3-4)
(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-4)
(k-OBJ-AT_O1_P4-3)
(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-3)
(k-OBJ-AT_O1_P5-2)
(kOBJ-AT_O1_P5-2__OBJ-AT_O1_P5-2)
(k-OBJ-AT_O1_P6-1)
(kOBJ-AT_O1_P6-1__OBJ-AT_O1_P6-1)
(k-OBJ-AT_O1_P7-1)
(kOBJ-AT_O1_P7-1__OBJ-AT_O1_P7-1)
(k-OBJ-AT_O1_P8-1)
(kOBJ-AT_O1_P8-1__OBJ-AT_O1_P8-1)
(k-OBJ-AT_O1_P9-1)
(kOBJ-AT_O1_P9-1__OBJ-AT_O1_P9-1)
(kAT_P1-5)
(kAT_P1-10)
(kAT_P10-1)
(kAT_P11-1)
(kAT_P12-1)
(kAT_P1-11)
(kAT_P1-12)
(kAT_P2-4)
(kAT_P3-3)
(kAT_P4-2)
(kAT_P5-1)
(k-OBJ-AT_O1_P1-10)
(kOBJ-AT_O1_P1-10__OBJ-AT_O1_P1-10)
(k-OBJ-AT_O1_P1-11)
(kOBJ-AT_O1_P1-11__OBJ-AT_O1_P1-11)
(k-OBJ-AT_O1_P1-12)
(kOBJ-AT_O1_P1-12__OBJ-AT_O1_P1-12)
(k-OBJ-AT_O1_P1-5)
(kOBJ-AT_O1_P1-5__OBJ-AT_O1_P1-5)
(k-OBJ-AT_O1_P10-1)
(kOBJ-AT_O1_P10-1__OBJ-AT_O1_P10-1)
(k-OBJ-AT_O1_P11-1)
(kOBJ-AT_O1_P11-1__OBJ-AT_O1_P11-1)
(k-OBJ-AT_O1_P12-1)
(kOBJ-AT_O1_P12-1__OBJ-AT_O1_P12-1)
(k-OBJ-AT_O1_P2-4)
(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-4)
(k-OBJ-AT_O1_P3-3)
(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-3)
(k-OBJ-AT_O1_P4-2)
(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-2)
(k-OBJ-AT_O1_P5-1)
(kOBJ-AT_O1_P5-1__OBJ-AT_O1_P5-1)
(kAT_P1-4)
(kAT_P2-3)
(kAT_P3-2)
(kAT_P4-1)
(k-OBJ-AT_O1_P1-4)
(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-4)
(k-OBJ-AT_O1_P2-3)
(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-3)
(k-OBJ-AT_O1_P3-2)
(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-2)
(k-OBJ-AT_O1_P4-1)
(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-1)
(kAT_P1-3)
(kAT_P2-2)
(kAT_P3-1)
(k-OBJ-AT_O1_P1-3)
(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-3)
(k-OBJ-AT_O1_P2-2)
(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-2)
(k-OBJ-AT_O1_P3-1)
(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-1)
(kAT_P1-2)
(kAT_P2-1)
(k-OBJ-AT_O1_P1-2)
(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-2)
(k-OBJ-AT_O1_P2-1)
(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-1)
(kAT_P1-1)
(k-OBJ-AT_O1_P1-1)
(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-1)
)
(:action MOVE_P1-1_P2-1
:parameters ()
:precondition (and (kAT_P1-1))

:effect (and  (not(kAT_P1-1)) (kAT_P2-1)
))
(:action MOVE_P1-1_P1-2
:parameters ()
:precondition (and (kAT_P1-1))

:effect (and  (not(kAT_P1-1)) (kAT_P1-2)
))
(:action PICKUP_O1_P1-1
:parameters ()
:precondition (and (kAT_P1-1))

:effect (and  (k-OBJ-AT_O1_P1-1)
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-1) (and (kHOLDING_O1__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P1-1))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action MOVE_P2-1_P3-1
:parameters ()
:precondition (and (kAT_P2-1))

:effect (and  (not(kAT_P2-1)) (kAT_P3-1)
))
(:action MOVE_P2-1_P2-2
:parameters ()
:precondition (and (kAT_P2-1))

:effect (and  (not(kAT_P2-1)) (kAT_P2-2)
))
(:action MOVE_P2-1_P1-1
:parameters ()
:precondition (and (kAT_P2-1))

:effect (and  (not(kAT_P2-1)) (kAT_P1-1)
))
(:action MOVE_P1-2_P2-2
:parameters ()
:precondition (and (kAT_P1-2))

:effect (and  (not(kAT_P1-2)) (kAT_P2-2)
))
(:action MOVE_P1-2_P1-3
:parameters ()
:precondition (and (kAT_P1-2))

:effect (and  (not(kAT_P1-2)) (kAT_P1-3)
))
(:action MOVE_P1-2_P1-1
:parameters ()
:precondition (and (kAT_P1-2))

:effect (and  (not(kAT_P1-2)) (kAT_P1-1)
))
(:action PICKUP_O1_P2-1
:parameters ()
:precondition (and (kAT_P2-1))

:effect (and  (k-OBJ-AT_O1_P2-1)
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-1) (and (kHOLDING_O1__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P2-1))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P1-2
:parameters ()
:precondition (and (kAT_P1-2))

:effect (and  (k-OBJ-AT_O1_P1-2)
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-2) (and (kHOLDING_O1__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P1-2))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action MOVE_P3-1_P4-1
:parameters ()
:precondition (and (kAT_P3-1))

:effect (and  (not(kAT_P3-1)) (kAT_P4-1)
))
(:action MOVE_P3-1_P3-2
:parameters ()
:precondition (and (kAT_P3-1))

:effect (and  (not(kAT_P3-1)) (kAT_P3-2)
))
(:action MOVE_P3-1_P2-1
:parameters ()
:precondition (and (kAT_P3-1))

:effect (and  (not(kAT_P3-1)) (kAT_P2-1)
))
(:action MOVE_P2-2_P3-2
:parameters ()
:precondition (and (kAT_P2-2))

:effect (and  (not(kAT_P2-2)) (kAT_P3-2)
))
(:action MOVE_P2-2_P2-3
:parameters ()
:precondition (and (kAT_P2-2))

:effect (and  (not(kAT_P2-2)) (kAT_P2-3)
))
(:action MOVE_P2-2_P2-1
:parameters ()
:precondition (and (kAT_P2-2))

:effect (and  (not(kAT_P2-2)) (kAT_P2-1)
))
(:action MOVE_P2-2_P1-2
:parameters ()
:precondition (and (kAT_P2-2))

:effect (and  (not(kAT_P2-2)) (kAT_P1-2)
))
(:action MOVE_P1-3_P2-3
:parameters ()
:precondition (and (kAT_P1-3))

:effect (and  (not(kAT_P1-3)) (kAT_P2-3)
))
(:action MOVE_P1-3_P1-4
:parameters ()
:precondition (and (kAT_P1-3))

:effect (and  (not(kAT_P1-3)) (kAT_P1-4)
))
(:action MOVE_P1-3_P1-2
:parameters ()
:precondition (and (kAT_P1-3))

:effect (and  (not(kAT_P1-3)) (kAT_P1-2)
))
(:action PICKUP_O1_P3-1
:parameters ()
:precondition (and (kAT_P3-1))

:effect (and  (k-OBJ-AT_O1_P3-1)
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-1) (and (kHOLDING_O1__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P3-1))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P2-2
:parameters ()
:precondition (and (kAT_P2-2))

:effect (and  (k-OBJ-AT_O1_P2-2)
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-2) (and (kHOLDING_O1__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P2-2))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P1-3
:parameters ()
:precondition (and (kAT_P1-3))

:effect (and  (k-OBJ-AT_O1_P1-3)
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-3) (and (kHOLDING_O1__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P1-3))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action MOVE_P4-1_P5-1
:parameters ()
:precondition (and (kAT_P4-1))

:effect (and  (not(kAT_P4-1)) (kAT_P5-1)
))
(:action MOVE_P4-1_P4-2
:parameters ()
:precondition (and (kAT_P4-1))

:effect (and  (not(kAT_P4-1)) (kAT_P4-2)
))
(:action MOVE_P4-1_P3-1
:parameters ()
:precondition (and (kAT_P4-1))

:effect (and  (not(kAT_P4-1)) (kAT_P3-1)
))
(:action MOVE_P3-2_P4-2
:parameters ()
:precondition (and (kAT_P3-2))

:effect (and  (not(kAT_P3-2)) (kAT_P4-2)
))
(:action MOVE_P3-2_P3-3
:parameters ()
:precondition (and (kAT_P3-2))

:effect (and  (not(kAT_P3-2)) (kAT_P3-3)
))
(:action MOVE_P3-2_P3-1
:parameters ()
:precondition (and (kAT_P3-2))

:effect (and  (not(kAT_P3-2)) (kAT_P3-1)
))
(:action MOVE_P3-2_P2-2
:parameters ()
:precondition (and (kAT_P3-2))

:effect (and  (not(kAT_P3-2)) (kAT_P2-2)
))
(:action MOVE_P2-3_P3-3
:parameters ()
:precondition (and (kAT_P2-3))

:effect (and  (not(kAT_P2-3)) (kAT_P3-3)
))
(:action MOVE_P2-3_P2-4
:parameters ()
:precondition (and (kAT_P2-3))

:effect (and  (not(kAT_P2-3)) (kAT_P2-4)
))
(:action MOVE_P2-3_P2-2
:parameters ()
:precondition (and (kAT_P2-3))

:effect (and  (not(kAT_P2-3)) (kAT_P2-2)
))
(:action MOVE_P2-3_P1-3
:parameters ()
:precondition (and (kAT_P2-3))

:effect (and  (not(kAT_P2-3)) (kAT_P1-3)
))
(:action MOVE_P1-4_P2-4
:parameters ()
:precondition (and (kAT_P1-4))

:effect (and  (not(kAT_P1-4)) (kAT_P2-4)
))
(:action MOVE_P1-4_P1-5
:parameters ()
:precondition (and (kAT_P1-4))

:effect (and  (not(kAT_P1-4)) (kAT_P1-5)
))
(:action MOVE_P1-4_P1-3
:parameters ()
:precondition (and (kAT_P1-4))

:effect (and  (not(kAT_P1-4)) (kAT_P1-3)
))
(:action PICKUP_O1_P4-1
:parameters ()
:precondition (and (kAT_P4-1))

:effect (and  (k-OBJ-AT_O1_P4-1)
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-1) (and (kHOLDING_O1__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P4-1))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P3-2
:parameters ()
:precondition (and (kAT_P3-2))

:effect (and  (k-OBJ-AT_O1_P3-2)
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-2) (and (kHOLDING_O1__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P3-2))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P2-3
:parameters ()
:precondition (and (kAT_P2-3))

:effect (and  (k-OBJ-AT_O1_P2-3)
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-3) (and (kHOLDING_O1__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P2-3))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P1-4
:parameters ()
:precondition (and (kAT_P1-4))

:effect (and  (k-OBJ-AT_O1_P1-4)
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-4) (and (kHOLDING_O1__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P1-4))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action MOVE_P5-1_P6-1
:parameters ()
:precondition (and (kAT_P5-1))

:effect (and  (not(kAT_P5-1)) (kAT_P6-1)
))
(:action MOVE_P5-1_P5-2
:parameters ()
:precondition (and (kAT_P5-1))

:effect (and  (not(kAT_P5-1)) (kAT_P5-2)
))
(:action MOVE_P5-1_P4-1
:parameters ()
:precondition (and (kAT_P5-1))

:effect (and  (not(kAT_P5-1)) (kAT_P4-1)
))
(:action MOVE_P4-2_P5-2
:parameters ()
:precondition (and (kAT_P4-2))

:effect (and  (not(kAT_P4-2)) (kAT_P5-2)
))
(:action MOVE_P4-2_P4-3
:parameters ()
:precondition (and (kAT_P4-2))

:effect (and  (not(kAT_P4-2)) (kAT_P4-3)
))
(:action MOVE_P4-2_P4-1
:parameters ()
:precondition (and (kAT_P4-2))

:effect (and  (not(kAT_P4-2)) (kAT_P4-1)
))
(:action MOVE_P4-2_P3-2
:parameters ()
:precondition (and (kAT_P4-2))

:effect (and  (not(kAT_P4-2)) (kAT_P3-2)
))
(:action MOVE_P3-3_P4-3
:parameters ()
:precondition (and (kAT_P3-3))

:effect (and  (not(kAT_P3-3)) (kAT_P4-3)
))
(:action MOVE_P3-3_P3-4
:parameters ()
:precondition (and (kAT_P3-3))

:effect (and  (not(kAT_P3-3)) (kAT_P3-4)
))
(:action MOVE_P3-3_P3-2
:parameters ()
:precondition (and (kAT_P3-3))

:effect (and  (not(kAT_P3-3)) (kAT_P3-2)
))
(:action MOVE_P3-3_P2-3
:parameters ()
:precondition (and (kAT_P3-3))

:effect (and  (not(kAT_P3-3)) (kAT_P2-3)
))
(:action MOVE_P2-4_P3-4
:parameters ()
:precondition (and (kAT_P2-4))

:effect (and  (not(kAT_P2-4)) (kAT_P3-4)
))
(:action MOVE_P2-4_P2-5
:parameters ()
:precondition (and (kAT_P2-4))

:effect (and  (not(kAT_P2-4)) (kAT_P2-5)
))
(:action MOVE_P2-4_P2-3
:parameters ()
:precondition (and (kAT_P2-4))

:effect (and  (not(kAT_P2-4)) (kAT_P2-3)
))
(:action MOVE_P2-4_P1-4
:parameters ()
:precondition (and (kAT_P2-4))

:effect (and  (not(kAT_P2-4)) (kAT_P1-4)
))
(:action MOVE_P12-1_P12-2
:parameters ()
:precondition (and (kAT_P12-1))

:effect (and  (not(kAT_P12-1)) (kAT_P12-2)
))
(:action MOVE_P12-1_P11-1
:parameters ()
:precondition (and (kAT_P12-1))

:effect (and  (not(kAT_P12-1)) (kAT_P11-1)
))
(:action MOVE_P11-1_P12-1
:parameters ()
:precondition (and (kAT_P11-1))

:effect (and  (not(kAT_P11-1)) (kAT_P12-1)
))
(:action MOVE_P11-1_P11-2
:parameters ()
:precondition (and (kAT_P11-1))

:effect (and  (not(kAT_P11-1)) (kAT_P11-2)
))
(:action MOVE_P11-1_P10-1
:parameters ()
:precondition (and (kAT_P11-1))

:effect (and  (not(kAT_P11-1)) (kAT_P10-1)
))
(:action MOVE_P10-1_P9-1
:parameters ()
:precondition (and (kAT_P10-1))

:effect (and  (not(kAT_P10-1)) (kAT_P9-1)
))
(:action MOVE_P10-1_P11-1
:parameters ()
:precondition (and (kAT_P10-1))

:effect (and  (not(kAT_P10-1)) (kAT_P11-1)
))
(:action MOVE_P10-1_P10-2
:parameters ()
:precondition (and (kAT_P10-1))

:effect (and  (not(kAT_P10-1)) (kAT_P10-2)
))
(:action MOVE_P1-5_P2-5
:parameters ()
:precondition (and (kAT_P1-5))

:effect (and  (not(kAT_P1-5)) (kAT_P2-5)
))
(:action MOVE_P1-5_P1-6
:parameters ()
:precondition (and (kAT_P1-5))

:effect (and  (not(kAT_P1-5)) (kAT_P1-6)
))
(:action MOVE_P1-5_P1-4
:parameters ()
:precondition (and (kAT_P1-5))

:effect (and  (not(kAT_P1-5)) (kAT_P1-4)
))
(:action MOVE_P1-12_P2-12
:parameters ()
:precondition (and (kAT_P1-12))

:effect (and  (not(kAT_P1-12)) (kAT_P2-12)
))
(:action MOVE_P1-12_P1-11
:parameters ()
:precondition (and (kAT_P1-12))

:effect (and  (not(kAT_P1-12)) (kAT_P1-11)
))
(:action MOVE_P1-11_P2-11
:parameters ()
:precondition (and (kAT_P1-11))

:effect (and  (not(kAT_P1-11)) (kAT_P2-11)
))
(:action MOVE_P1-11_P1-12
:parameters ()
:precondition (and (kAT_P1-11))

:effect (and  (not(kAT_P1-11)) (kAT_P1-12)
))
(:action MOVE_P1-11_P1-10
:parameters ()
:precondition (and (kAT_P1-11))

:effect (and  (not(kAT_P1-11)) (kAT_P1-10)
))
(:action MOVE_P1-10_P2-10
:parameters ()
:precondition (and (kAT_P1-10))

:effect (and  (not(kAT_P1-10)) (kAT_P2-10)
))
(:action MOVE_P1-10_P1-9
:parameters ()
:precondition (and (kAT_P1-10))

:effect (and  (not(kAT_P1-10)) (kAT_P1-9)
))
(:action MOVE_P1-10_P1-11
:parameters ()
:precondition (and (kAT_P1-10))

:effect (and  (not(kAT_P1-10)) (kAT_P1-11)
))
(:action PICKUP_O1_P5-1
:parameters ()
:precondition (and (kAT_P5-1))

:effect (and  (k-OBJ-AT_O1_P5-1)
(when (kOBJ-AT_O1_P5-1__OBJ-AT_O1_P5-1) (and (kHOLDING_O1__OBJ-AT_O1_P5-1) (not(kOBJ-AT_O1_P5-1__OBJ-AT_O1_P5-1)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P5-1))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P4-2
:parameters ()
:precondition (and (kAT_P4-2))

:effect (and  (k-OBJ-AT_O1_P4-2)
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-2) (and (kHOLDING_O1__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P4-2))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P3-3
:parameters ()
:precondition (and (kAT_P3-3))

:effect (and  (k-OBJ-AT_O1_P3-3)
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-3) (and (kHOLDING_O1__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P3-3))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P2-4
:parameters ()
:precondition (and (kAT_P2-4))

:effect (and  (k-OBJ-AT_O1_P2-4)
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-4) (and (kHOLDING_O1__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P2-4))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P12-1
:parameters ()
:precondition (and (kAT_P12-1))

:effect (and  (k-OBJ-AT_O1_P12-1)
(when (kOBJ-AT_O1_P12-1__OBJ-AT_O1_P12-1) (and (kHOLDING_O1__OBJ-AT_O1_P12-1) (not(kOBJ-AT_O1_P12-1__OBJ-AT_O1_P12-1)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P12-1))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P11-1
:parameters ()
:precondition (and (kAT_P11-1))

:effect (and  (k-OBJ-AT_O1_P11-1)
(when (kOBJ-AT_O1_P11-1__OBJ-AT_O1_P11-1) (and (kHOLDING_O1__OBJ-AT_O1_P11-1) (not(kOBJ-AT_O1_P11-1__OBJ-AT_O1_P11-1)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P11-1))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P10-1
:parameters ()
:precondition (and (kAT_P10-1))

:effect (and  (k-OBJ-AT_O1_P10-1)
(when (kOBJ-AT_O1_P10-1__OBJ-AT_O1_P10-1) (and (kHOLDING_O1__OBJ-AT_O1_P10-1) (not(kOBJ-AT_O1_P10-1__OBJ-AT_O1_P10-1)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P10-1))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P1-5
:parameters ()
:precondition (and (kAT_P1-5))

:effect (and  (k-OBJ-AT_O1_P1-5)
(when (kOBJ-AT_O1_P1-5__OBJ-AT_O1_P1-5) (and (kHOLDING_O1__OBJ-AT_O1_P1-5) (not(kOBJ-AT_O1_P1-5__OBJ-AT_O1_P1-5)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P1-5))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P1-12
:parameters ()
:precondition (and (kAT_P1-12))

:effect (and  (k-OBJ-AT_O1_P1-12)
(when (kOBJ-AT_O1_P1-12__OBJ-AT_O1_P1-12) (and (kHOLDING_O1__OBJ-AT_O1_P1-12) (not(kOBJ-AT_O1_P1-12__OBJ-AT_O1_P1-12)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P1-12))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P1-11
:parameters ()
:precondition (and (kAT_P1-11))

:effect (and  (k-OBJ-AT_O1_P1-11)
(when (kOBJ-AT_O1_P1-11__OBJ-AT_O1_P1-11) (and (kHOLDING_O1__OBJ-AT_O1_P1-11) (not(kOBJ-AT_O1_P1-11__OBJ-AT_O1_P1-11)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P1-11))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P1-10
:parameters ()
:precondition (and (kAT_P1-10))

:effect (and  (k-OBJ-AT_O1_P1-10)
(when (kOBJ-AT_O1_P1-10__OBJ-AT_O1_P1-10) (and (kHOLDING_O1__OBJ-AT_O1_P1-10) (not(kOBJ-AT_O1_P1-10__OBJ-AT_O1_P1-10)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P1-10))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action MOVE_P9-1_P9-2
:parameters ()
:precondition (and (kAT_P9-1))

:effect (and  (not(kAT_P9-1)) (kAT_P9-2)
))
(:action MOVE_P9-1_P8-1
:parameters ()
:precondition (and (kAT_P9-1))

:effect (and  (not(kAT_P9-1)) (kAT_P8-1)
))
(:action MOVE_P9-1_P10-1
:parameters ()
:precondition (and (kAT_P9-1))

:effect (and  (not(kAT_P9-1)) (kAT_P10-1)
))
(:action MOVE_P8-1_P9-1
:parameters ()
:precondition (and (kAT_P8-1))

:effect (and  (not(kAT_P8-1)) (kAT_P9-1)
))
(:action MOVE_P8-1_P8-2
:parameters ()
:precondition (and (kAT_P8-1))

:effect (and  (not(kAT_P8-1)) (kAT_P8-2)
))
(:action MOVE_P8-1_P7-1
:parameters ()
:precondition (and (kAT_P8-1))

:effect (and  (not(kAT_P8-1)) (kAT_P7-1)
))
(:action MOVE_P7-1_P8-1
:parameters ()
:precondition (and (kAT_P7-1))

:effect (and  (not(kAT_P7-1)) (kAT_P8-1)
))
(:action MOVE_P7-1_P7-2
:parameters ()
:precondition (and (kAT_P7-1))

:effect (and  (not(kAT_P7-1)) (kAT_P7-2)
))
(:action MOVE_P7-1_P6-1
:parameters ()
:precondition (and (kAT_P7-1))

:effect (and  (not(kAT_P7-1)) (kAT_P6-1)
))
(:action MOVE_P6-1_P7-1
:parameters ()
:precondition (and (kAT_P6-1))

:effect (and  (not(kAT_P6-1)) (kAT_P7-1)
))
(:action MOVE_P6-1_P6-2
:parameters ()
:precondition (and (kAT_P6-1))

:effect (and  (not(kAT_P6-1)) (kAT_P6-2)
))
(:action MOVE_P6-1_P5-1
:parameters ()
:precondition (and (kAT_P6-1))

:effect (and  (not(kAT_P6-1)) (kAT_P5-1)
))
(:action MOVE_P5-2_P6-2
:parameters ()
:precondition (and (kAT_P5-2))

:effect (and  (not(kAT_P5-2)) (kAT_P6-2)
))
(:action MOVE_P5-2_P5-3
:parameters ()
:precondition (and (kAT_P5-2))

:effect (and  (not(kAT_P5-2)) (kAT_P5-3)
))
(:action MOVE_P5-2_P5-1
:parameters ()
:precondition (and (kAT_P5-2))

:effect (and  (not(kAT_P5-2)) (kAT_P5-1)
))
(:action MOVE_P5-2_P4-2
:parameters ()
:precondition (and (kAT_P5-2))

:effect (and  (not(kAT_P5-2)) (kAT_P4-2)
))
(:action MOVE_P4-3_P5-3
:parameters ()
:precondition (and (kAT_P4-3))

:effect (and  (not(kAT_P4-3)) (kAT_P5-3)
))
(:action MOVE_P4-3_P4-4
:parameters ()
:precondition (and (kAT_P4-3))

:effect (and  (not(kAT_P4-3)) (kAT_P4-4)
))
(:action MOVE_P4-3_P4-2
:parameters ()
:precondition (and (kAT_P4-3))

:effect (and  (not(kAT_P4-3)) (kAT_P4-2)
))
(:action MOVE_P4-3_P3-3
:parameters ()
:precondition (and (kAT_P4-3))

:effect (and  (not(kAT_P4-3)) (kAT_P3-3)
))
(:action MOVE_P3-4_P4-4
:parameters ()
:precondition (and (kAT_P3-4))

:effect (and  (not(kAT_P3-4)) (kAT_P4-4)
))
(:action MOVE_P3-4_P3-5
:parameters ()
:precondition (and (kAT_P3-4))

:effect (and  (not(kAT_P3-4)) (kAT_P3-5)
))
(:action MOVE_P3-4_P3-3
:parameters ()
:precondition (and (kAT_P3-4))

:effect (and  (not(kAT_P3-4)) (kAT_P3-3)
))
(:action MOVE_P3-4_P2-4
:parameters ()
:precondition (and (kAT_P3-4))

:effect (and  (not(kAT_P3-4)) (kAT_P2-4)
))
(:action MOVE_P2-5_P3-5
:parameters ()
:precondition (and (kAT_P2-5))

:effect (and  (not(kAT_P2-5)) (kAT_P3-5)
))
(:action MOVE_P2-5_P2-6
:parameters ()
:precondition (and (kAT_P2-5))

:effect (and  (not(kAT_P2-5)) (kAT_P2-6)
))
(:action MOVE_P2-5_P2-4
:parameters ()
:precondition (and (kAT_P2-5))

:effect (and  (not(kAT_P2-5)) (kAT_P2-4)
))
(:action MOVE_P2-5_P1-5
:parameters ()
:precondition (and (kAT_P2-5))

:effect (and  (not(kAT_P2-5)) (kAT_P1-5)
))
(:action MOVE_P2-12_P3-12
:parameters ()
:precondition (and (kAT_P2-12))

:effect (and  (not(kAT_P2-12)) (kAT_P3-12)
))
(:action MOVE_P2-12_P2-11
:parameters ()
:precondition (and (kAT_P2-12))

:effect (and  (not(kAT_P2-12)) (kAT_P2-11)
))
(:action MOVE_P2-12_P1-12
:parameters ()
:precondition (and (kAT_P2-12))

:effect (and  (not(kAT_P2-12)) (kAT_P1-12)
))
(:action MOVE_P2-11_P3-11
:parameters ()
:precondition (and (kAT_P2-11))

:effect (and  (not(kAT_P2-11)) (kAT_P3-11)
))
(:action MOVE_P2-11_P2-12
:parameters ()
:precondition (and (kAT_P2-11))

:effect (and  (not(kAT_P2-11)) (kAT_P2-12)
))
(:action MOVE_P2-11_P2-10
:parameters ()
:precondition (and (kAT_P2-11))

:effect (and  (not(kAT_P2-11)) (kAT_P2-10)
))
(:action MOVE_P2-11_P1-11
:parameters ()
:precondition (and (kAT_P2-11))

:effect (and  (not(kAT_P2-11)) (kAT_P1-11)
))
(:action MOVE_P2-10_P3-10
:parameters ()
:precondition (and (kAT_P2-10))

:effect (and  (not(kAT_P2-10)) (kAT_P3-10)
))
(:action MOVE_P2-10_P2-9
:parameters ()
:precondition (and (kAT_P2-10))

:effect (and  (not(kAT_P2-10)) (kAT_P2-9)
))
(:action MOVE_P2-10_P2-11
:parameters ()
:precondition (and (kAT_P2-10))

:effect (and  (not(kAT_P2-10)) (kAT_P2-11)
))
(:action MOVE_P2-10_P1-10
:parameters ()
:precondition (and (kAT_P2-10))

:effect (and  (not(kAT_P2-10)) (kAT_P1-10)
))
(:action MOVE_P12-2_P12-3
:parameters ()
:precondition (and (kAT_P12-2))

:effect (and  (not(kAT_P12-2)) (kAT_P12-3)
))
(:action MOVE_P12-2_P12-1
:parameters ()
:precondition (and (kAT_P12-2))

:effect (and  (not(kAT_P12-2)) (kAT_P12-1)
))
(:action MOVE_P12-2_P11-2
:parameters ()
:precondition (and (kAT_P12-2))

:effect (and  (not(kAT_P12-2)) (kAT_P11-2)
))
(:action MOVE_P11-2_P12-2
:parameters ()
:precondition (and (kAT_P11-2))

:effect (and  (not(kAT_P11-2)) (kAT_P12-2)
))
(:action MOVE_P11-2_P11-3
:parameters ()
:precondition (and (kAT_P11-2))

:effect (and  (not(kAT_P11-2)) (kAT_P11-3)
))
(:action MOVE_P11-2_P11-1
:parameters ()
:precondition (and (kAT_P11-2))

:effect (and  (not(kAT_P11-2)) (kAT_P11-1)
))
(:action MOVE_P11-2_P10-2
:parameters ()
:precondition (and (kAT_P11-2))

:effect (and  (not(kAT_P11-2)) (kAT_P10-2)
))
(:action MOVE_P10-2_P9-2
:parameters ()
:precondition (and (kAT_P10-2))

:effect (and  (not(kAT_P10-2)) (kAT_P9-2)
))
(:action MOVE_P10-2_P11-2
:parameters ()
:precondition (and (kAT_P10-2))

:effect (and  (not(kAT_P10-2)) (kAT_P11-2)
))
(:action MOVE_P10-2_P10-3
:parameters ()
:precondition (and (kAT_P10-2))

:effect (and  (not(kAT_P10-2)) (kAT_P10-3)
))
(:action MOVE_P10-2_P10-1
:parameters ()
:precondition (and (kAT_P10-2))

:effect (and  (not(kAT_P10-2)) (kAT_P10-1)
))
(:action MOVE_P1-9_P2-9
:parameters ()
:precondition (and (kAT_P1-9))

:effect (and  (not(kAT_P1-9)) (kAT_P2-9)
))
(:action MOVE_P1-9_P1-8
:parameters ()
:precondition (and (kAT_P1-9))

:effect (and  (not(kAT_P1-9)) (kAT_P1-8)
))
(:action MOVE_P1-9_P1-10
:parameters ()
:precondition (and (kAT_P1-9))

:effect (and  (not(kAT_P1-9)) (kAT_P1-10)
))
(:action MOVE_P1-8_P2-8
:parameters ()
:precondition (and (kAT_P1-8))

:effect (and  (not(kAT_P1-8)) (kAT_P2-8)
))
(:action MOVE_P1-8_P1-9
:parameters ()
:precondition (and (kAT_P1-8))

:effect (and  (not(kAT_P1-8)) (kAT_P1-9)
))
(:action MOVE_P1-8_P1-7
:parameters ()
:precondition (and (kAT_P1-8))

:effect (and  (not(kAT_P1-8)) (kAT_P1-7)
))
(:action MOVE_P1-7_P2-7
:parameters ()
:precondition (and (kAT_P1-7))

:effect (and  (not(kAT_P1-7)) (kAT_P2-7)
))
(:action MOVE_P1-7_P1-8
:parameters ()
:precondition (and (kAT_P1-7))

:effect (and  (not(kAT_P1-7)) (kAT_P1-8)
))
(:action MOVE_P1-7_P1-6
:parameters ()
:precondition (and (kAT_P1-7))

:effect (and  (not(kAT_P1-7)) (kAT_P1-6)
))
(:action MOVE_P1-6_P2-6
:parameters ()
:precondition (and (kAT_P1-6))

:effect (and  (not(kAT_P1-6)) (kAT_P2-6)
))
(:action MOVE_P1-6_P1-7
:parameters ()
:precondition (and (kAT_P1-6))

:effect (and  (not(kAT_P1-6)) (kAT_P1-7)
))
(:action MOVE_P1-6_P1-5
:parameters ()
:precondition (and (kAT_P1-6))

:effect (and  (not(kAT_P1-6)) (kAT_P1-5)
))
(:action PICKUP_O1_P9-1
:parameters ()
:precondition (and (kAT_P9-1))

:effect (and  (k-OBJ-AT_O1_P9-1)
(when (kOBJ-AT_O1_P9-1__OBJ-AT_O1_P9-1) (and (kHOLDING_O1__OBJ-AT_O1_P9-1) (not(kOBJ-AT_O1_P9-1__OBJ-AT_O1_P9-1)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P9-1))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P8-1
:parameters ()
:precondition (and (kAT_P8-1))

:effect (and  (k-OBJ-AT_O1_P8-1)
(when (kOBJ-AT_O1_P8-1__OBJ-AT_O1_P8-1) (and (kHOLDING_O1__OBJ-AT_O1_P8-1) (not(kOBJ-AT_O1_P8-1__OBJ-AT_O1_P8-1)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P8-1))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P7-1
:parameters ()
:precondition (and (kAT_P7-1))

:effect (and  (k-OBJ-AT_O1_P7-1)
(when (kOBJ-AT_O1_P7-1__OBJ-AT_O1_P7-1) (and (kHOLDING_O1__OBJ-AT_O1_P7-1) (not(kOBJ-AT_O1_P7-1__OBJ-AT_O1_P7-1)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P7-1))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P6-1
:parameters ()
:precondition (and (kAT_P6-1))

:effect (and  (k-OBJ-AT_O1_P6-1)
(when (kOBJ-AT_O1_P6-1__OBJ-AT_O1_P6-1) (and (kHOLDING_O1__OBJ-AT_O1_P6-1) (not(kOBJ-AT_O1_P6-1__OBJ-AT_O1_P6-1)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P6-1))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P5-2
:parameters ()
:precondition (and (kAT_P5-2))

:effect (and  (k-OBJ-AT_O1_P5-2)
(when (kOBJ-AT_O1_P5-2__OBJ-AT_O1_P5-2) (and (kHOLDING_O1__OBJ-AT_O1_P5-2) (not(kOBJ-AT_O1_P5-2__OBJ-AT_O1_P5-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P5-2))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P4-3
:parameters ()
:precondition (and (kAT_P4-3))

:effect (and  (k-OBJ-AT_O1_P4-3)
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-3) (and (kHOLDING_O1__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P4-3))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P3-4
:parameters ()
:precondition (and (kAT_P3-4))

:effect (and  (k-OBJ-AT_O1_P3-4)
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-4) (and (kHOLDING_O1__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P3-4))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P2-5
:parameters ()
:precondition (and (kAT_P2-5))

:effect (and  (k-OBJ-AT_O1_P2-5)
(when (kOBJ-AT_O1_P2-5__OBJ-AT_O1_P2-5) (and (kHOLDING_O1__OBJ-AT_O1_P2-5) (not(kOBJ-AT_O1_P2-5__OBJ-AT_O1_P2-5)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P2-5))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P2-12
:parameters ()
:precondition (and (kAT_P2-12))

:effect (and  (k-OBJ-AT_O1_P2-12)
(when (kOBJ-AT_O1_P2-12__OBJ-AT_O1_P2-12) (and (kHOLDING_O1__OBJ-AT_O1_P2-12) (not(kOBJ-AT_O1_P2-12__OBJ-AT_O1_P2-12)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P2-12))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P2-11
:parameters ()
:precondition (and (kAT_P2-11))

:effect (and  (k-OBJ-AT_O1_P2-11)
(when (kOBJ-AT_O1_P2-11__OBJ-AT_O1_P2-11) (and (kHOLDING_O1__OBJ-AT_O1_P2-11) (not(kOBJ-AT_O1_P2-11__OBJ-AT_O1_P2-11)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P2-11))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P2-10
:parameters ()
:precondition (and (kAT_P2-10))

:effect (and  (k-OBJ-AT_O1_P2-10)
(when (kOBJ-AT_O1_P2-10__OBJ-AT_O1_P2-10) (and (kHOLDING_O1__OBJ-AT_O1_P2-10) (not(kOBJ-AT_O1_P2-10__OBJ-AT_O1_P2-10)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P2-10))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P12-2
:parameters ()
:precondition (and (kAT_P12-2))

:effect (and  (k-OBJ-AT_O1_P12-2)
(when (kOBJ-AT_O1_P12-2__OBJ-AT_O1_P12-2) (and (kHOLDING_O1__OBJ-AT_O1_P12-2) (not(kOBJ-AT_O1_P12-2__OBJ-AT_O1_P12-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P12-2))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P11-2
:parameters ()
:precondition (and (kAT_P11-2))

:effect (and  (k-OBJ-AT_O1_P11-2)
(when (kOBJ-AT_O1_P11-2__OBJ-AT_O1_P11-2) (and (kHOLDING_O1__OBJ-AT_O1_P11-2) (not(kOBJ-AT_O1_P11-2__OBJ-AT_O1_P11-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P11-2))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P10-2
:parameters ()
:precondition (and (kAT_P10-2))

:effect (and  (k-OBJ-AT_O1_P10-2)
(when (kOBJ-AT_O1_P10-2__OBJ-AT_O1_P10-2) (and (kHOLDING_O1__OBJ-AT_O1_P10-2) (not(kOBJ-AT_O1_P10-2__OBJ-AT_O1_P10-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P10-2))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P1-9
:parameters ()
:precondition (and (kAT_P1-9))

:effect (and  (k-OBJ-AT_O1_P1-9)
(when (kOBJ-AT_O1_P1-9__OBJ-AT_O1_P1-9) (and (kHOLDING_O1__OBJ-AT_O1_P1-9) (not(kOBJ-AT_O1_P1-9__OBJ-AT_O1_P1-9)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P1-9))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P1-8
:parameters ()
:precondition (and (kAT_P1-8))

:effect (and  (k-OBJ-AT_O1_P1-8)
(when (kOBJ-AT_O1_P1-8__OBJ-AT_O1_P1-8) (and (kHOLDING_O1__OBJ-AT_O1_P1-8) (not(kOBJ-AT_O1_P1-8__OBJ-AT_O1_P1-8)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P1-8))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P1-7
:parameters ()
:precondition (and (kAT_P1-7))

:effect (and  (k-OBJ-AT_O1_P1-7)
(when (kOBJ-AT_O1_P1-7__OBJ-AT_O1_P1-7) (and (kHOLDING_O1__OBJ-AT_O1_P1-7) (not(kOBJ-AT_O1_P1-7__OBJ-AT_O1_P1-7)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P1-7))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P1-6
:parameters ()
:precondition (and (kAT_P1-6))

:effect (and  (k-OBJ-AT_O1_P1-6)
(when (kOBJ-AT_O1_P1-6__OBJ-AT_O1_P1-6) (and (kHOLDING_O1__OBJ-AT_O1_P1-6) (not(kOBJ-AT_O1_P1-6__OBJ-AT_O1_P1-6)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P1-6))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action MOVE_P9-2_P9-3
:parameters ()
:precondition (and (kAT_P9-2))

:effect (and  (not(kAT_P9-2)) (kAT_P9-3)
))
(:action MOVE_P9-2_P9-1
:parameters ()
:precondition (and (kAT_P9-2))

:effect (and  (not(kAT_P9-2)) (kAT_P9-1)
))
(:action MOVE_P9-2_P8-2
:parameters ()
:precondition (and (kAT_P9-2))

:effect (and  (not(kAT_P9-2)) (kAT_P8-2)
))
(:action MOVE_P9-2_P10-2
:parameters ()
:precondition (and (kAT_P9-2))

:effect (and  (not(kAT_P9-2)) (kAT_P10-2)
))
(:action MOVE_P8-2_P9-2
:parameters ()
:precondition (and (kAT_P8-2))

:effect (and  (not(kAT_P8-2)) (kAT_P9-2)
))
(:action MOVE_P8-2_P8-3
:parameters ()
:precondition (and (kAT_P8-2))

:effect (and  (not(kAT_P8-2)) (kAT_P8-3)
))
(:action MOVE_P8-2_P8-1
:parameters ()
:precondition (and (kAT_P8-2))

:effect (and  (not(kAT_P8-2)) (kAT_P8-1)
))
(:action MOVE_P8-2_P7-2
:parameters ()
:precondition (and (kAT_P8-2))

:effect (and  (not(kAT_P8-2)) (kAT_P7-2)
))
(:action MOVE_P7-2_P8-2
:parameters ()
:precondition (and (kAT_P7-2))

:effect (and  (not(kAT_P7-2)) (kAT_P8-2)
))
(:action MOVE_P7-2_P7-3
:parameters ()
:precondition (and (kAT_P7-2))

:effect (and  (not(kAT_P7-2)) (kAT_P7-3)
))
(:action MOVE_P7-2_P7-1
:parameters ()
:precondition (and (kAT_P7-2))

:effect (and  (not(kAT_P7-2)) (kAT_P7-1)
))
(:action MOVE_P7-2_P6-2
:parameters ()
:precondition (and (kAT_P7-2))

:effect (and  (not(kAT_P7-2)) (kAT_P6-2)
))
(:action MOVE_P6-2_P7-2
:parameters ()
:precondition (and (kAT_P6-2))

:effect (and  (not(kAT_P6-2)) (kAT_P7-2)
))
(:action MOVE_P6-2_P6-3
:parameters ()
:precondition (and (kAT_P6-2))

:effect (and  (not(kAT_P6-2)) (kAT_P6-3)
))
(:action MOVE_P6-2_P6-1
:parameters ()
:precondition (and (kAT_P6-2))

:effect (and  (not(kAT_P6-2)) (kAT_P6-1)
))
(:action MOVE_P6-2_P5-2
:parameters ()
:precondition (and (kAT_P6-2))

:effect (and  (not(kAT_P6-2)) (kAT_P5-2)
))
(:action MOVE_P5-3_P6-3
:parameters ()
:precondition (and (kAT_P5-3))

:effect (and  (not(kAT_P5-3)) (kAT_P6-3)
))
(:action MOVE_P5-3_P5-4
:parameters ()
:precondition (and (kAT_P5-3))

:effect (and  (not(kAT_P5-3)) (kAT_P5-4)
))
(:action MOVE_P5-3_P5-2
:parameters ()
:precondition (and (kAT_P5-3))

:effect (and  (not(kAT_P5-3)) (kAT_P5-2)
))
(:action MOVE_P5-3_P4-3
:parameters ()
:precondition (and (kAT_P5-3))

:effect (and  (not(kAT_P5-3)) (kAT_P4-3)
))
(:action MOVE_P4-4_P5-4
:parameters ()
:precondition (and (kAT_P4-4))

:effect (and  (not(kAT_P4-4)) (kAT_P5-4)
))
(:action MOVE_P4-4_P4-5
:parameters ()
:precondition (and (kAT_P4-4))

:effect (and  (not(kAT_P4-4)) (kAT_P4-5)
))
(:action MOVE_P4-4_P4-3
:parameters ()
:precondition (and (kAT_P4-4))

:effect (and  (not(kAT_P4-4)) (kAT_P4-3)
))
(:action MOVE_P4-4_P3-4
:parameters ()
:precondition (and (kAT_P4-4))

:effect (and  (not(kAT_P4-4)) (kAT_P3-4)
))
(:action MOVE_P3-5_P4-5
:parameters ()
:precondition (and (kAT_P3-5))

:effect (and  (not(kAT_P3-5)) (kAT_P4-5)
))
(:action MOVE_P3-5_P3-6
:parameters ()
:precondition (and (kAT_P3-5))

:effect (and  (not(kAT_P3-5)) (kAT_P3-6)
))
(:action MOVE_P3-5_P3-4
:parameters ()
:precondition (and (kAT_P3-5))

:effect (and  (not(kAT_P3-5)) (kAT_P3-4)
))
(:action MOVE_P3-5_P2-5
:parameters ()
:precondition (and (kAT_P3-5))

:effect (and  (not(kAT_P3-5)) (kAT_P2-5)
))
(:action MOVE_P3-12_P4-12
:parameters ()
:precondition (and (kAT_P3-12))

:effect (and  (not(kAT_P3-12)) (kAT_P4-12)
))
(:action MOVE_P3-12_P3-11
:parameters ()
:precondition (and (kAT_P3-12))

:effect (and  (not(kAT_P3-12)) (kAT_P3-11)
))
(:action MOVE_P3-12_P2-12
:parameters ()
:precondition (and (kAT_P3-12))

:effect (and  (not(kAT_P3-12)) (kAT_P2-12)
))
(:action MOVE_P3-11_P4-11
:parameters ()
:precondition (and (kAT_P3-11))

:effect (and  (not(kAT_P3-11)) (kAT_P4-11)
))
(:action MOVE_P3-11_P3-12
:parameters ()
:precondition (and (kAT_P3-11))

:effect (and  (not(kAT_P3-11)) (kAT_P3-12)
))
(:action MOVE_P3-11_P3-10
:parameters ()
:precondition (and (kAT_P3-11))

:effect (and  (not(kAT_P3-11)) (kAT_P3-10)
))
(:action MOVE_P3-11_P2-11
:parameters ()
:precondition (and (kAT_P3-11))

:effect (and  (not(kAT_P3-11)) (kAT_P2-11)
))
(:action MOVE_P3-10_P4-10
:parameters ()
:precondition (and (kAT_P3-10))

:effect (and  (not(kAT_P3-10)) (kAT_P4-10)
))
(:action MOVE_P3-10_P3-9
:parameters ()
:precondition (and (kAT_P3-10))

:effect (and  (not(kAT_P3-10)) (kAT_P3-9)
))
(:action MOVE_P3-10_P3-11
:parameters ()
:precondition (and (kAT_P3-10))

:effect (and  (not(kAT_P3-10)) (kAT_P3-11)
))
(:action MOVE_P3-10_P2-10
:parameters ()
:precondition (and (kAT_P3-10))

:effect (and  (not(kAT_P3-10)) (kAT_P2-10)
))
(:action MOVE_P2-9_P3-9
:parameters ()
:precondition (and (kAT_P2-9))

:effect (and  (not(kAT_P2-9)) (kAT_P3-9)
))
(:action MOVE_P2-9_P2-8
:parameters ()
:precondition (and (kAT_P2-9))

:effect (and  (not(kAT_P2-9)) (kAT_P2-8)
))
(:action MOVE_P2-9_P2-10
:parameters ()
:precondition (and (kAT_P2-9))

:effect (and  (not(kAT_P2-9)) (kAT_P2-10)
))
(:action MOVE_P2-9_P1-9
:parameters ()
:precondition (and (kAT_P2-9))

:effect (and  (not(kAT_P2-9)) (kAT_P1-9)
))
(:action MOVE_P2-8_P3-8
:parameters ()
:precondition (and (kAT_P2-8))

:effect (and  (not(kAT_P2-8)) (kAT_P3-8)
))
(:action MOVE_P2-8_P2-9
:parameters ()
:precondition (and (kAT_P2-8))

:effect (and  (not(kAT_P2-8)) (kAT_P2-9)
))
(:action MOVE_P2-8_P2-7
:parameters ()
:precondition (and (kAT_P2-8))

:effect (and  (not(kAT_P2-8)) (kAT_P2-7)
))
(:action MOVE_P2-8_P1-8
:parameters ()
:precondition (and (kAT_P2-8))

:effect (and  (not(kAT_P2-8)) (kAT_P1-8)
))
(:action MOVE_P2-7_P3-7
:parameters ()
:precondition (and (kAT_P2-7))

:effect (and  (not(kAT_P2-7)) (kAT_P3-7)
))
(:action MOVE_P2-7_P2-8
:parameters ()
:precondition (and (kAT_P2-7))

:effect (and  (not(kAT_P2-7)) (kAT_P2-8)
))
(:action MOVE_P2-7_P2-6
:parameters ()
:precondition (and (kAT_P2-7))

:effect (and  (not(kAT_P2-7)) (kAT_P2-6)
))
(:action MOVE_P2-7_P1-7
:parameters ()
:precondition (and (kAT_P2-7))

:effect (and  (not(kAT_P2-7)) (kAT_P1-7)
))
(:action MOVE_P2-6_P3-6
:parameters ()
:precondition (and (kAT_P2-6))

:effect (and  (not(kAT_P2-6)) (kAT_P3-6)
))
(:action MOVE_P2-6_P2-7
:parameters ()
:precondition (and (kAT_P2-6))

:effect (and  (not(kAT_P2-6)) (kAT_P2-7)
))
(:action MOVE_P2-6_P2-5
:parameters ()
:precondition (and (kAT_P2-6))

:effect (and  (not(kAT_P2-6)) (kAT_P2-5)
))
(:action MOVE_P2-6_P1-6
:parameters ()
:precondition (and (kAT_P2-6))

:effect (and  (not(kAT_P2-6)) (kAT_P1-6)
))
(:action MOVE_P12-3_P12-4
:parameters ()
:precondition (and (kAT_P12-3))

:effect (and  (not(kAT_P12-3)) (kAT_P12-4)
))
(:action MOVE_P12-3_P12-2
:parameters ()
:precondition (and (kAT_P12-3))

:effect (and  (not(kAT_P12-3)) (kAT_P12-2)
))
(:action MOVE_P12-3_P11-3
:parameters ()
:precondition (and (kAT_P12-3))

:effect (and  (not(kAT_P12-3)) (kAT_P11-3)
))
(:action MOVE_P11-3_P12-3
:parameters ()
:precondition (and (kAT_P11-3))

:effect (and  (not(kAT_P11-3)) (kAT_P12-3)
))
(:action MOVE_P11-3_P11-4
:parameters ()
:precondition (and (kAT_P11-3))

:effect (and  (not(kAT_P11-3)) (kAT_P11-4)
))
(:action MOVE_P11-3_P11-2
:parameters ()
:precondition (and (kAT_P11-3))

:effect (and  (not(kAT_P11-3)) (kAT_P11-2)
))
(:action MOVE_P11-3_P10-3
:parameters ()
:precondition (and (kAT_P11-3))

:effect (and  (not(kAT_P11-3)) (kAT_P10-3)
))
(:action MOVE_P10-3_P9-3
:parameters ()
:precondition (and (kAT_P10-3))

:effect (and  (not(kAT_P10-3)) (kAT_P9-3)
))
(:action MOVE_P10-3_P11-3
:parameters ()
:precondition (and (kAT_P10-3))

:effect (and  (not(kAT_P10-3)) (kAT_P11-3)
))
(:action MOVE_P10-3_P10-4
:parameters ()
:precondition (and (kAT_P10-3))

:effect (and  (not(kAT_P10-3)) (kAT_P10-4)
))
(:action MOVE_P10-3_P10-2
:parameters ()
:precondition (and (kAT_P10-3))

:effect (and  (not(kAT_P10-3)) (kAT_P10-2)
))
(:action DROP_O1_P4-4
:parameters ()
:precondition (and (kAT_P4-4))

:effect (and  (k-HOLDING_O1)
(when (kHOLDING_O1__OBJ-AT_O1_P1-2) (and (kDISPOSED_O1__OBJ-AT_O1_P1-2) (not(kHOLDING_O1__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P12-12) (and (kDISPOSED_O1__OBJ-AT_O1_P12-12) (not(kHOLDING_O1__OBJ-AT_O1_P12-12)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P12-11) (and (kDISPOSED_O1__OBJ-AT_O1_P12-11) (not(kHOLDING_O1__OBJ-AT_O1_P12-11)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P12-10) (and (kDISPOSED_O1__OBJ-AT_O1_P12-10) (not(kHOLDING_O1__OBJ-AT_O1_P12-10)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P12-9) (and (kDISPOSED_O1__OBJ-AT_O1_P12-9) (not(kHOLDING_O1__OBJ-AT_O1_P12-9)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P12-8) (and (kDISPOSED_O1__OBJ-AT_O1_P12-8) (not(kHOLDING_O1__OBJ-AT_O1_P12-8)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P12-7) (and (kDISPOSED_O1__OBJ-AT_O1_P12-7) (not(kHOLDING_O1__OBJ-AT_O1_P12-7)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P12-6) (and (kDISPOSED_O1__OBJ-AT_O1_P12-6) (not(kHOLDING_O1__OBJ-AT_O1_P12-6)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P12-5) (and (kDISPOSED_O1__OBJ-AT_O1_P12-5) (not(kHOLDING_O1__OBJ-AT_O1_P12-5)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P12-4) (and (kDISPOSED_O1__OBJ-AT_O1_P12-4) (not(kHOLDING_O1__OBJ-AT_O1_P12-4)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P12-3) (and (kDISPOSED_O1__OBJ-AT_O1_P12-3) (not(kHOLDING_O1__OBJ-AT_O1_P12-3)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P12-2) (and (kDISPOSED_O1__OBJ-AT_O1_P12-2) (not(kHOLDING_O1__OBJ-AT_O1_P12-2)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P12-1) (and (kDISPOSED_O1__OBJ-AT_O1_P12-1) (not(kHOLDING_O1__OBJ-AT_O1_P12-1)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P11-12) (and (kDISPOSED_O1__OBJ-AT_O1_P11-12) (not(kHOLDING_O1__OBJ-AT_O1_P11-12)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P11-11) (and (kDISPOSED_O1__OBJ-AT_O1_P11-11) (not(kHOLDING_O1__OBJ-AT_O1_P11-11)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P11-10) (and (kDISPOSED_O1__OBJ-AT_O1_P11-10) (not(kHOLDING_O1__OBJ-AT_O1_P11-10)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P11-9) (and (kDISPOSED_O1__OBJ-AT_O1_P11-9) (not(kHOLDING_O1__OBJ-AT_O1_P11-9)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P11-8) (and (kDISPOSED_O1__OBJ-AT_O1_P11-8) (not(kHOLDING_O1__OBJ-AT_O1_P11-8)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P11-7) (and (kDISPOSED_O1__OBJ-AT_O1_P11-7) (not(kHOLDING_O1__OBJ-AT_O1_P11-7)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P11-6) (and (kDISPOSED_O1__OBJ-AT_O1_P11-6) (not(kHOLDING_O1__OBJ-AT_O1_P11-6)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P11-5) (and (kDISPOSED_O1__OBJ-AT_O1_P11-5) (not(kHOLDING_O1__OBJ-AT_O1_P11-5)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P11-4) (and (kDISPOSED_O1__OBJ-AT_O1_P11-4) (not(kHOLDING_O1__OBJ-AT_O1_P11-4)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P11-3) (and (kDISPOSED_O1__OBJ-AT_O1_P11-3) (not(kHOLDING_O1__OBJ-AT_O1_P11-3)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P11-2) (and (kDISPOSED_O1__OBJ-AT_O1_P11-2) (not(kHOLDING_O1__OBJ-AT_O1_P11-2)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P11-1) (and (kDISPOSED_O1__OBJ-AT_O1_P11-1) (not(kHOLDING_O1__OBJ-AT_O1_P11-1)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P10-12) (and (kDISPOSED_O1__OBJ-AT_O1_P10-12) (not(kHOLDING_O1__OBJ-AT_O1_P10-12)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P10-11) (and (kDISPOSED_O1__OBJ-AT_O1_P10-11) (not(kHOLDING_O1__OBJ-AT_O1_P10-11)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P10-10) (and (kDISPOSED_O1__OBJ-AT_O1_P10-10) (not(kHOLDING_O1__OBJ-AT_O1_P10-10)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P10-9) (and (kDISPOSED_O1__OBJ-AT_O1_P10-9) (not(kHOLDING_O1__OBJ-AT_O1_P10-9)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P10-8) (and (kDISPOSED_O1__OBJ-AT_O1_P10-8) (not(kHOLDING_O1__OBJ-AT_O1_P10-8)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P10-7) (and (kDISPOSED_O1__OBJ-AT_O1_P10-7) (not(kHOLDING_O1__OBJ-AT_O1_P10-7)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P10-6) (and (kDISPOSED_O1__OBJ-AT_O1_P10-6) (not(kHOLDING_O1__OBJ-AT_O1_P10-6)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P10-5) (and (kDISPOSED_O1__OBJ-AT_O1_P10-5) (not(kHOLDING_O1__OBJ-AT_O1_P10-5)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P10-4) (and (kDISPOSED_O1__OBJ-AT_O1_P10-4) (not(kHOLDING_O1__OBJ-AT_O1_P10-4)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P10-3) (and (kDISPOSED_O1__OBJ-AT_O1_P10-3) (not(kHOLDING_O1__OBJ-AT_O1_P10-3)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P10-2) (and (kDISPOSED_O1__OBJ-AT_O1_P10-2) (not(kHOLDING_O1__OBJ-AT_O1_P10-2)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P10-1) (and (kDISPOSED_O1__OBJ-AT_O1_P10-1) (not(kHOLDING_O1__OBJ-AT_O1_P10-1)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P9-12) (and (kDISPOSED_O1__OBJ-AT_O1_P9-12) (not(kHOLDING_O1__OBJ-AT_O1_P9-12)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P9-11) (and (kDISPOSED_O1__OBJ-AT_O1_P9-11) (not(kHOLDING_O1__OBJ-AT_O1_P9-11)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P9-10) (and (kDISPOSED_O1__OBJ-AT_O1_P9-10) (not(kHOLDING_O1__OBJ-AT_O1_P9-10)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P9-9) (and (kDISPOSED_O1__OBJ-AT_O1_P9-9) (not(kHOLDING_O1__OBJ-AT_O1_P9-9)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P9-8) (and (kDISPOSED_O1__OBJ-AT_O1_P9-8) (not(kHOLDING_O1__OBJ-AT_O1_P9-8)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P9-7) (and (kDISPOSED_O1__OBJ-AT_O1_P9-7) (not(kHOLDING_O1__OBJ-AT_O1_P9-7)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P9-6) (and (kDISPOSED_O1__OBJ-AT_O1_P9-6) (not(kHOLDING_O1__OBJ-AT_O1_P9-6)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P9-5) (and (kDISPOSED_O1__OBJ-AT_O1_P9-5) (not(kHOLDING_O1__OBJ-AT_O1_P9-5)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P9-4) (and (kDISPOSED_O1__OBJ-AT_O1_P9-4) (not(kHOLDING_O1__OBJ-AT_O1_P9-4)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P9-3) (and (kDISPOSED_O1__OBJ-AT_O1_P9-3) (not(kHOLDING_O1__OBJ-AT_O1_P9-3)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P9-2) (and (kDISPOSED_O1__OBJ-AT_O1_P9-2) (not(kHOLDING_O1__OBJ-AT_O1_P9-2)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P9-1) (and (kDISPOSED_O1__OBJ-AT_O1_P9-1) (not(kHOLDING_O1__OBJ-AT_O1_P9-1)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P8-12) (and (kDISPOSED_O1__OBJ-AT_O1_P8-12) (not(kHOLDING_O1__OBJ-AT_O1_P8-12)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P8-11) (and (kDISPOSED_O1__OBJ-AT_O1_P8-11) (not(kHOLDING_O1__OBJ-AT_O1_P8-11)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P8-10) (and (kDISPOSED_O1__OBJ-AT_O1_P8-10) (not(kHOLDING_O1__OBJ-AT_O1_P8-10)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P8-9) (and (kDISPOSED_O1__OBJ-AT_O1_P8-9) (not(kHOLDING_O1__OBJ-AT_O1_P8-9)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P8-8) (and (kDISPOSED_O1__OBJ-AT_O1_P8-8) (not(kHOLDING_O1__OBJ-AT_O1_P8-8)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P8-7) (and (kDISPOSED_O1__OBJ-AT_O1_P8-7) (not(kHOLDING_O1__OBJ-AT_O1_P8-7)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P8-6) (and (kDISPOSED_O1__OBJ-AT_O1_P8-6) (not(kHOLDING_O1__OBJ-AT_O1_P8-6)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P8-5) (and (kDISPOSED_O1__OBJ-AT_O1_P8-5) (not(kHOLDING_O1__OBJ-AT_O1_P8-5)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P8-4) (and (kDISPOSED_O1__OBJ-AT_O1_P8-4) (not(kHOLDING_O1__OBJ-AT_O1_P8-4)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P8-3) (and (kDISPOSED_O1__OBJ-AT_O1_P8-3) (not(kHOLDING_O1__OBJ-AT_O1_P8-3)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P8-2) (and (kDISPOSED_O1__OBJ-AT_O1_P8-2) (not(kHOLDING_O1__OBJ-AT_O1_P8-2)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P8-1) (and (kDISPOSED_O1__OBJ-AT_O1_P8-1) (not(kHOLDING_O1__OBJ-AT_O1_P8-1)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P7-12) (and (kDISPOSED_O1__OBJ-AT_O1_P7-12) (not(kHOLDING_O1__OBJ-AT_O1_P7-12)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P7-11) (and (kDISPOSED_O1__OBJ-AT_O1_P7-11) (not(kHOLDING_O1__OBJ-AT_O1_P7-11)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P7-10) (and (kDISPOSED_O1__OBJ-AT_O1_P7-10) (not(kHOLDING_O1__OBJ-AT_O1_P7-10)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P7-9) (and (kDISPOSED_O1__OBJ-AT_O1_P7-9) (not(kHOLDING_O1__OBJ-AT_O1_P7-9)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P7-8) (and (kDISPOSED_O1__OBJ-AT_O1_P7-8) (not(kHOLDING_O1__OBJ-AT_O1_P7-8)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P7-7) (and (kDISPOSED_O1__OBJ-AT_O1_P7-7) (not(kHOLDING_O1__OBJ-AT_O1_P7-7)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P7-6) (and (kDISPOSED_O1__OBJ-AT_O1_P7-6) (not(kHOLDING_O1__OBJ-AT_O1_P7-6)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P7-5) (and (kDISPOSED_O1__OBJ-AT_O1_P7-5) (not(kHOLDING_O1__OBJ-AT_O1_P7-5)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P7-4) (and (kDISPOSED_O1__OBJ-AT_O1_P7-4) (not(kHOLDING_O1__OBJ-AT_O1_P7-4)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P7-3) (and (kDISPOSED_O1__OBJ-AT_O1_P7-3) (not(kHOLDING_O1__OBJ-AT_O1_P7-3)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P7-2) (and (kDISPOSED_O1__OBJ-AT_O1_P7-2) (not(kHOLDING_O1__OBJ-AT_O1_P7-2)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P7-1) (and (kDISPOSED_O1__OBJ-AT_O1_P7-1) (not(kHOLDING_O1__OBJ-AT_O1_P7-1)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P6-12) (and (kDISPOSED_O1__OBJ-AT_O1_P6-12) (not(kHOLDING_O1__OBJ-AT_O1_P6-12)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P6-11) (and (kDISPOSED_O1__OBJ-AT_O1_P6-11) (not(kHOLDING_O1__OBJ-AT_O1_P6-11)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P6-10) (and (kDISPOSED_O1__OBJ-AT_O1_P6-10) (not(kHOLDING_O1__OBJ-AT_O1_P6-10)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P6-9) (and (kDISPOSED_O1__OBJ-AT_O1_P6-9) (not(kHOLDING_O1__OBJ-AT_O1_P6-9)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P6-8) (and (kDISPOSED_O1__OBJ-AT_O1_P6-8) (not(kHOLDING_O1__OBJ-AT_O1_P6-8)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P6-7) (and (kDISPOSED_O1__OBJ-AT_O1_P6-7) (not(kHOLDING_O1__OBJ-AT_O1_P6-7)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P6-6) (and (kDISPOSED_O1__OBJ-AT_O1_P6-6) (not(kHOLDING_O1__OBJ-AT_O1_P6-6)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P6-5) (and (kDISPOSED_O1__OBJ-AT_O1_P6-5) (not(kHOLDING_O1__OBJ-AT_O1_P6-5)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P6-4) (and (kDISPOSED_O1__OBJ-AT_O1_P6-4) (not(kHOLDING_O1__OBJ-AT_O1_P6-4)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P6-3) (and (kDISPOSED_O1__OBJ-AT_O1_P6-3) (not(kHOLDING_O1__OBJ-AT_O1_P6-3)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P6-2) (and (kDISPOSED_O1__OBJ-AT_O1_P6-2) (not(kHOLDING_O1__OBJ-AT_O1_P6-2)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P6-1) (and (kDISPOSED_O1__OBJ-AT_O1_P6-1) (not(kHOLDING_O1__OBJ-AT_O1_P6-1)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P5-12) (and (kDISPOSED_O1__OBJ-AT_O1_P5-12) (not(kHOLDING_O1__OBJ-AT_O1_P5-12)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P5-11) (and (kDISPOSED_O1__OBJ-AT_O1_P5-11) (not(kHOLDING_O1__OBJ-AT_O1_P5-11)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P5-10) (and (kDISPOSED_O1__OBJ-AT_O1_P5-10) (not(kHOLDING_O1__OBJ-AT_O1_P5-10)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P5-9) (and (kDISPOSED_O1__OBJ-AT_O1_P5-9) (not(kHOLDING_O1__OBJ-AT_O1_P5-9)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P5-8) (and (kDISPOSED_O1__OBJ-AT_O1_P5-8) (not(kHOLDING_O1__OBJ-AT_O1_P5-8)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P5-7) (and (kDISPOSED_O1__OBJ-AT_O1_P5-7) (not(kHOLDING_O1__OBJ-AT_O1_P5-7)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P5-6) (and (kDISPOSED_O1__OBJ-AT_O1_P5-6) (not(kHOLDING_O1__OBJ-AT_O1_P5-6)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P5-5) (and (kDISPOSED_O1__OBJ-AT_O1_P5-5) (not(kHOLDING_O1__OBJ-AT_O1_P5-5)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P5-4) (and (kDISPOSED_O1__OBJ-AT_O1_P5-4) (not(kHOLDING_O1__OBJ-AT_O1_P5-4)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P5-3) (and (kDISPOSED_O1__OBJ-AT_O1_P5-3) (not(kHOLDING_O1__OBJ-AT_O1_P5-3)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P5-2) (and (kDISPOSED_O1__OBJ-AT_O1_P5-2) (not(kHOLDING_O1__OBJ-AT_O1_P5-2)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P5-1) (and (kDISPOSED_O1__OBJ-AT_O1_P5-1) (not(kHOLDING_O1__OBJ-AT_O1_P5-1)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P4-12) (and (kDISPOSED_O1__OBJ-AT_O1_P4-12) (not(kHOLDING_O1__OBJ-AT_O1_P4-12)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P4-11) (and (kDISPOSED_O1__OBJ-AT_O1_P4-11) (not(kHOLDING_O1__OBJ-AT_O1_P4-11)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P4-10) (and (kDISPOSED_O1__OBJ-AT_O1_P4-10) (not(kHOLDING_O1__OBJ-AT_O1_P4-10)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P4-9) (and (kDISPOSED_O1__OBJ-AT_O1_P4-9) (not(kHOLDING_O1__OBJ-AT_O1_P4-9)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P4-8) (and (kDISPOSED_O1__OBJ-AT_O1_P4-8) (not(kHOLDING_O1__OBJ-AT_O1_P4-8)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P4-7) (and (kDISPOSED_O1__OBJ-AT_O1_P4-7) (not(kHOLDING_O1__OBJ-AT_O1_P4-7)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P4-6) (and (kDISPOSED_O1__OBJ-AT_O1_P4-6) (not(kHOLDING_O1__OBJ-AT_O1_P4-6)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P4-5) (and (kDISPOSED_O1__OBJ-AT_O1_P4-5) (not(kHOLDING_O1__OBJ-AT_O1_P4-5)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P4-4) (and (kDISPOSED_O1__OBJ-AT_O1_P4-4) (not(kHOLDING_O1__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P4-3) (and (kDISPOSED_O1__OBJ-AT_O1_P4-3) (not(kHOLDING_O1__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P4-2) (and (kDISPOSED_O1__OBJ-AT_O1_P4-2) (not(kHOLDING_O1__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P4-1) (and (kDISPOSED_O1__OBJ-AT_O1_P4-1) (not(kHOLDING_O1__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P3-12) (and (kDISPOSED_O1__OBJ-AT_O1_P3-12) (not(kHOLDING_O1__OBJ-AT_O1_P3-12)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P3-11) (and (kDISPOSED_O1__OBJ-AT_O1_P3-11) (not(kHOLDING_O1__OBJ-AT_O1_P3-11)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P3-10) (and (kDISPOSED_O1__OBJ-AT_O1_P3-10) (not(kHOLDING_O1__OBJ-AT_O1_P3-10)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P3-9) (and (kDISPOSED_O1__OBJ-AT_O1_P3-9) (not(kHOLDING_O1__OBJ-AT_O1_P3-9)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P3-8) (and (kDISPOSED_O1__OBJ-AT_O1_P3-8) (not(kHOLDING_O1__OBJ-AT_O1_P3-8)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P3-7) (and (kDISPOSED_O1__OBJ-AT_O1_P3-7) (not(kHOLDING_O1__OBJ-AT_O1_P3-7)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P3-6) (and (kDISPOSED_O1__OBJ-AT_O1_P3-6) (not(kHOLDING_O1__OBJ-AT_O1_P3-6)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P3-5) (and (kDISPOSED_O1__OBJ-AT_O1_P3-5) (not(kHOLDING_O1__OBJ-AT_O1_P3-5)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P3-4) (and (kDISPOSED_O1__OBJ-AT_O1_P3-4) (not(kHOLDING_O1__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P3-3) (and (kDISPOSED_O1__OBJ-AT_O1_P3-3) (not(kHOLDING_O1__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P3-2) (and (kDISPOSED_O1__OBJ-AT_O1_P3-2) (not(kHOLDING_O1__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P3-1) (and (kDISPOSED_O1__OBJ-AT_O1_P3-1) (not(kHOLDING_O1__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P2-12) (and (kDISPOSED_O1__OBJ-AT_O1_P2-12) (not(kHOLDING_O1__OBJ-AT_O1_P2-12)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P2-11) (and (kDISPOSED_O1__OBJ-AT_O1_P2-11) (not(kHOLDING_O1__OBJ-AT_O1_P2-11)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P2-10) (and (kDISPOSED_O1__OBJ-AT_O1_P2-10) (not(kHOLDING_O1__OBJ-AT_O1_P2-10)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P2-9) (and (kDISPOSED_O1__OBJ-AT_O1_P2-9) (not(kHOLDING_O1__OBJ-AT_O1_P2-9)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P2-8) (and (kDISPOSED_O1__OBJ-AT_O1_P2-8) (not(kHOLDING_O1__OBJ-AT_O1_P2-8)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P2-7) (and (kDISPOSED_O1__OBJ-AT_O1_P2-7) (not(kHOLDING_O1__OBJ-AT_O1_P2-7)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P2-6) (and (kDISPOSED_O1__OBJ-AT_O1_P2-6) (not(kHOLDING_O1__OBJ-AT_O1_P2-6)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P2-5) (and (kDISPOSED_O1__OBJ-AT_O1_P2-5) (not(kHOLDING_O1__OBJ-AT_O1_P2-5)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P2-4) (and (kDISPOSED_O1__OBJ-AT_O1_P2-4) (not(kHOLDING_O1__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P2-3) (and (kDISPOSED_O1__OBJ-AT_O1_P2-3) (not(kHOLDING_O1__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P2-2) (and (kDISPOSED_O1__OBJ-AT_O1_P2-2) (not(kHOLDING_O1__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P2-1) (and (kDISPOSED_O1__OBJ-AT_O1_P2-1) (not(kHOLDING_O1__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P1-12) (and (kDISPOSED_O1__OBJ-AT_O1_P1-12) (not(kHOLDING_O1__OBJ-AT_O1_P1-12)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P1-11) (and (kDISPOSED_O1__OBJ-AT_O1_P1-11) (not(kHOLDING_O1__OBJ-AT_O1_P1-11)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P1-10) (and (kDISPOSED_O1__OBJ-AT_O1_P1-10) (not(kHOLDING_O1__OBJ-AT_O1_P1-10)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P1-9) (and (kDISPOSED_O1__OBJ-AT_O1_P1-9) (not(kHOLDING_O1__OBJ-AT_O1_P1-9)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P1-8) (and (kDISPOSED_O1__OBJ-AT_O1_P1-8) (not(kHOLDING_O1__OBJ-AT_O1_P1-8)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P1-7) (and (kDISPOSED_O1__OBJ-AT_O1_P1-7) (not(kHOLDING_O1__OBJ-AT_O1_P1-7)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P1-6) (and (kDISPOSED_O1__OBJ-AT_O1_P1-6) (not(kHOLDING_O1__OBJ-AT_O1_P1-6)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P1-5) (and (kDISPOSED_O1__OBJ-AT_O1_P1-5) (not(kHOLDING_O1__OBJ-AT_O1_P1-5)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P1-4) (and (kDISPOSED_O1__OBJ-AT_O1_P1-4) (not(kHOLDING_O1__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P1-3) (and (kDISPOSED_O1__OBJ-AT_O1_P1-3) (not(kHOLDING_O1__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kHOLDING_O1__OBJ-AT_O1_P1-1) (and (kDISPOSED_O1__OBJ-AT_O1_P1-1) (not(kHOLDING_O1__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PICKUP_O1_P9-2
:parameters ()
:precondition (and (kAT_P9-2))

:effect (and  (k-OBJ-AT_O1_P9-2)
(when (kOBJ-AT_O1_P9-2__OBJ-AT_O1_P9-2) (and (kHOLDING_O1__OBJ-AT_O1_P9-2) (not(kOBJ-AT_O1_P9-2__OBJ-AT_O1_P9-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P9-2))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P8-2
:parameters ()
:precondition (and (kAT_P8-2))

:effect (and  (k-OBJ-AT_O1_P8-2)
(when (kOBJ-AT_O1_P8-2__OBJ-AT_O1_P8-2) (and (kHOLDING_O1__OBJ-AT_O1_P8-2) (not(kOBJ-AT_O1_P8-2__OBJ-AT_O1_P8-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P8-2))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P7-2
:parameters ()
:precondition (and (kAT_P7-2))

:effect (and  (k-OBJ-AT_O1_P7-2)
(when (kOBJ-AT_O1_P7-2__OBJ-AT_O1_P7-2) (and (kHOLDING_O1__OBJ-AT_O1_P7-2) (not(kOBJ-AT_O1_P7-2__OBJ-AT_O1_P7-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P7-2))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P6-2
:parameters ()
:precondition (and (kAT_P6-2))

:effect (and  (k-OBJ-AT_O1_P6-2)
(when (kOBJ-AT_O1_P6-2__OBJ-AT_O1_P6-2) (and (kHOLDING_O1__OBJ-AT_O1_P6-2) (not(kOBJ-AT_O1_P6-2__OBJ-AT_O1_P6-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P6-2))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P5-3
:parameters ()
:precondition (and (kAT_P5-3))

:effect (and  (k-OBJ-AT_O1_P5-3)
(when (kOBJ-AT_O1_P5-3__OBJ-AT_O1_P5-3) (and (kHOLDING_O1__OBJ-AT_O1_P5-3) (not(kOBJ-AT_O1_P5-3__OBJ-AT_O1_P5-3)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P5-3))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P4-4
:parameters ()
:precondition (and (kAT_P4-4))

:effect (and  (k-OBJ-AT_O1_P4-4)
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-4) (and (kHOLDING_O1__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P4-4))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P3-5
:parameters ()
:precondition (and (kAT_P3-5))

:effect (and  (k-OBJ-AT_O1_P3-5)
(when (kOBJ-AT_O1_P3-5__OBJ-AT_O1_P3-5) (and (kHOLDING_O1__OBJ-AT_O1_P3-5) (not(kOBJ-AT_O1_P3-5__OBJ-AT_O1_P3-5)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P3-5))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P3-12
:parameters ()
:precondition (and (kAT_P3-12))

:effect (and  (k-OBJ-AT_O1_P3-12)
(when (kOBJ-AT_O1_P3-12__OBJ-AT_O1_P3-12) (and (kHOLDING_O1__OBJ-AT_O1_P3-12) (not(kOBJ-AT_O1_P3-12__OBJ-AT_O1_P3-12)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P3-12))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P3-11
:parameters ()
:precondition (and (kAT_P3-11))

:effect (and  (k-OBJ-AT_O1_P3-11)
(when (kOBJ-AT_O1_P3-11__OBJ-AT_O1_P3-11) (and (kHOLDING_O1__OBJ-AT_O1_P3-11) (not(kOBJ-AT_O1_P3-11__OBJ-AT_O1_P3-11)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P3-11))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P3-10
:parameters ()
:precondition (and (kAT_P3-10))

:effect (and  (k-OBJ-AT_O1_P3-10)
(when (kOBJ-AT_O1_P3-10__OBJ-AT_O1_P3-10) (and (kHOLDING_O1__OBJ-AT_O1_P3-10) (not(kOBJ-AT_O1_P3-10__OBJ-AT_O1_P3-10)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P3-10))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P2-9
:parameters ()
:precondition (and (kAT_P2-9))

:effect (and  (k-OBJ-AT_O1_P2-9)
(when (kOBJ-AT_O1_P2-9__OBJ-AT_O1_P2-9) (and (kHOLDING_O1__OBJ-AT_O1_P2-9) (not(kOBJ-AT_O1_P2-9__OBJ-AT_O1_P2-9)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P2-9))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P2-8
:parameters ()
:precondition (and (kAT_P2-8))

:effect (and  (k-OBJ-AT_O1_P2-8)
(when (kOBJ-AT_O1_P2-8__OBJ-AT_O1_P2-8) (and (kHOLDING_O1__OBJ-AT_O1_P2-8) (not(kOBJ-AT_O1_P2-8__OBJ-AT_O1_P2-8)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P2-8))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P2-7
:parameters ()
:precondition (and (kAT_P2-7))

:effect (and  (k-OBJ-AT_O1_P2-7)
(when (kOBJ-AT_O1_P2-7__OBJ-AT_O1_P2-7) (and (kHOLDING_O1__OBJ-AT_O1_P2-7) (not(kOBJ-AT_O1_P2-7__OBJ-AT_O1_P2-7)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P2-7))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P2-6
:parameters ()
:precondition (and (kAT_P2-6))

:effect (and  (k-OBJ-AT_O1_P2-6)
(when (kOBJ-AT_O1_P2-6__OBJ-AT_O1_P2-6) (and (kHOLDING_O1__OBJ-AT_O1_P2-6) (not(kOBJ-AT_O1_P2-6__OBJ-AT_O1_P2-6)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P2-6))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P12-3
:parameters ()
:precondition (and (kAT_P12-3))

:effect (and  (k-OBJ-AT_O1_P12-3)
(when (kOBJ-AT_O1_P12-3__OBJ-AT_O1_P12-3) (and (kHOLDING_O1__OBJ-AT_O1_P12-3) (not(kOBJ-AT_O1_P12-3__OBJ-AT_O1_P12-3)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P12-3))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P11-3
:parameters ()
:precondition (and (kAT_P11-3))

:effect (and  (k-OBJ-AT_O1_P11-3)
(when (kOBJ-AT_O1_P11-3__OBJ-AT_O1_P11-3) (and (kHOLDING_O1__OBJ-AT_O1_P11-3) (not(kOBJ-AT_O1_P11-3__OBJ-AT_O1_P11-3)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P11-3))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P10-3
:parameters ()
:precondition (and (kAT_P10-3))

:effect (and  (k-OBJ-AT_O1_P10-3)
(when (kOBJ-AT_O1_P10-3__OBJ-AT_O1_P10-3) (and (kHOLDING_O1__OBJ-AT_O1_P10-3) (not(kOBJ-AT_O1_P10-3__OBJ-AT_O1_P10-3)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P10-3))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action MOVE_P9-3_P9-4
:parameters ()
:precondition (and (kAT_P9-3))

:effect (and  (not(kAT_P9-3)) (kAT_P9-4)
))
(:action MOVE_P9-3_P9-2
:parameters ()
:precondition (and (kAT_P9-3))

:effect (and  (not(kAT_P9-3)) (kAT_P9-2)
))
(:action MOVE_P9-3_P8-3
:parameters ()
:precondition (and (kAT_P9-3))

:effect (and  (not(kAT_P9-3)) (kAT_P8-3)
))
(:action MOVE_P9-3_P10-3
:parameters ()
:precondition (and (kAT_P9-3))

:effect (and  (not(kAT_P9-3)) (kAT_P10-3)
))
(:action MOVE_P8-3_P9-3
:parameters ()
:precondition (and (kAT_P8-3))

:effect (and  (not(kAT_P8-3)) (kAT_P9-3)
))
(:action MOVE_P8-3_P8-4
:parameters ()
:precondition (and (kAT_P8-3))

:effect (and  (not(kAT_P8-3)) (kAT_P8-4)
))
(:action MOVE_P8-3_P8-2
:parameters ()
:precondition (and (kAT_P8-3))

:effect (and  (not(kAT_P8-3)) (kAT_P8-2)
))
(:action MOVE_P8-3_P7-3
:parameters ()
:precondition (and (kAT_P8-3))

:effect (and  (not(kAT_P8-3)) (kAT_P7-3)
))
(:action MOVE_P7-3_P8-3
:parameters ()
:precondition (and (kAT_P7-3))

:effect (and  (not(kAT_P7-3)) (kAT_P8-3)
))
(:action MOVE_P7-3_P7-4
:parameters ()
:precondition (and (kAT_P7-3))

:effect (and  (not(kAT_P7-3)) (kAT_P7-4)
))
(:action MOVE_P7-3_P7-2
:parameters ()
:precondition (and (kAT_P7-3))

:effect (and  (not(kAT_P7-3)) (kAT_P7-2)
))
(:action MOVE_P7-3_P6-3
:parameters ()
:precondition (and (kAT_P7-3))

:effect (and  (not(kAT_P7-3)) (kAT_P6-3)
))
(:action MOVE_P6-3_P7-3
:parameters ()
:precondition (and (kAT_P6-3))

:effect (and  (not(kAT_P6-3)) (kAT_P7-3)
))
(:action MOVE_P6-3_P6-4
:parameters ()
:precondition (and (kAT_P6-3))

:effect (and  (not(kAT_P6-3)) (kAT_P6-4)
))
(:action MOVE_P6-3_P6-2
:parameters ()
:precondition (and (kAT_P6-3))

:effect (and  (not(kAT_P6-3)) (kAT_P6-2)
))
(:action MOVE_P6-3_P5-3
:parameters ()
:precondition (and (kAT_P6-3))

:effect (and  (not(kAT_P6-3)) (kAT_P5-3)
))
(:action MOVE_P5-4_P6-4
:parameters ()
:precondition (and (kAT_P5-4))

:effect (and  (not(kAT_P5-4)) (kAT_P6-4)
))
(:action MOVE_P5-4_P5-5
:parameters ()
:precondition (and (kAT_P5-4))

:effect (and  (not(kAT_P5-4)) (kAT_P5-5)
))
(:action MOVE_P5-4_P5-3
:parameters ()
:precondition (and (kAT_P5-4))

:effect (and  (not(kAT_P5-4)) (kAT_P5-3)
))
(:action MOVE_P5-4_P4-4
:parameters ()
:precondition (and (kAT_P5-4))

:effect (and  (not(kAT_P5-4)) (kAT_P4-4)
))
(:action MOVE_P4-5_P5-5
:parameters ()
:precondition (and (kAT_P4-5))

:effect (and  (not(kAT_P4-5)) (kAT_P5-5)
))
(:action MOVE_P4-5_P4-6
:parameters ()
:precondition (and (kAT_P4-5))

:effect (and  (not(kAT_P4-5)) (kAT_P4-6)
))
(:action MOVE_P4-5_P4-4
:parameters ()
:precondition (and (kAT_P4-5))

:effect (and  (not(kAT_P4-5)) (kAT_P4-4)
))
(:action MOVE_P4-5_P3-5
:parameters ()
:precondition (and (kAT_P4-5))

:effect (and  (not(kAT_P4-5)) (kAT_P3-5)
))
(:action MOVE_P4-12_P5-12
:parameters ()
:precondition (and (kAT_P4-12))

:effect (and  (not(kAT_P4-12)) (kAT_P5-12)
))
(:action MOVE_P4-12_P4-11
:parameters ()
:precondition (and (kAT_P4-12))

:effect (and  (not(kAT_P4-12)) (kAT_P4-11)
))
(:action MOVE_P4-12_P3-12
:parameters ()
:precondition (and (kAT_P4-12))

:effect (and  (not(kAT_P4-12)) (kAT_P3-12)
))
(:action MOVE_P4-11_P5-11
:parameters ()
:precondition (and (kAT_P4-11))

:effect (and  (not(kAT_P4-11)) (kAT_P5-11)
))
(:action MOVE_P4-11_P4-12
:parameters ()
:precondition (and (kAT_P4-11))

:effect (and  (not(kAT_P4-11)) (kAT_P4-12)
))
(:action MOVE_P4-11_P4-10
:parameters ()
:precondition (and (kAT_P4-11))

:effect (and  (not(kAT_P4-11)) (kAT_P4-10)
))
(:action MOVE_P4-11_P3-11
:parameters ()
:precondition (and (kAT_P4-11))

:effect (and  (not(kAT_P4-11)) (kAT_P3-11)
))
(:action MOVE_P4-10_P5-10
:parameters ()
:precondition (and (kAT_P4-10))

:effect (and  (not(kAT_P4-10)) (kAT_P5-10)
))
(:action MOVE_P4-10_P4-9
:parameters ()
:precondition (and (kAT_P4-10))

:effect (and  (not(kAT_P4-10)) (kAT_P4-9)
))
(:action MOVE_P4-10_P4-11
:parameters ()
:precondition (and (kAT_P4-10))

:effect (and  (not(kAT_P4-10)) (kAT_P4-11)
))
(:action MOVE_P4-10_P3-10
:parameters ()
:precondition (and (kAT_P4-10))

:effect (and  (not(kAT_P4-10)) (kAT_P3-10)
))
(:action MOVE_P3-9_P4-9
:parameters ()
:precondition (and (kAT_P3-9))

:effect (and  (not(kAT_P3-9)) (kAT_P4-9)
))
(:action MOVE_P3-9_P3-8
:parameters ()
:precondition (and (kAT_P3-9))

:effect (and  (not(kAT_P3-9)) (kAT_P3-8)
))
(:action MOVE_P3-9_P3-10
:parameters ()
:precondition (and (kAT_P3-9))

:effect (and  (not(kAT_P3-9)) (kAT_P3-10)
))
(:action MOVE_P3-9_P2-9
:parameters ()
:precondition (and (kAT_P3-9))

:effect (and  (not(kAT_P3-9)) (kAT_P2-9)
))
(:action MOVE_P3-8_P4-8
:parameters ()
:precondition (and (kAT_P3-8))

:effect (and  (not(kAT_P3-8)) (kAT_P4-8)
))
(:action MOVE_P3-8_P3-9
:parameters ()
:precondition (and (kAT_P3-8))

:effect (and  (not(kAT_P3-8)) (kAT_P3-9)
))
(:action MOVE_P3-8_P3-7
:parameters ()
:precondition (and (kAT_P3-8))

:effect (and  (not(kAT_P3-8)) (kAT_P3-7)
))
(:action MOVE_P3-8_P2-8
:parameters ()
:precondition (and (kAT_P3-8))

:effect (and  (not(kAT_P3-8)) (kAT_P2-8)
))
(:action MOVE_P3-7_P4-7
:parameters ()
:precondition (and (kAT_P3-7))

:effect (and  (not(kAT_P3-7)) (kAT_P4-7)
))
(:action MOVE_P3-7_P3-8
:parameters ()
:precondition (and (kAT_P3-7))

:effect (and  (not(kAT_P3-7)) (kAT_P3-8)
))
(:action MOVE_P3-7_P3-6
:parameters ()
:precondition (and (kAT_P3-7))

:effect (and  (not(kAT_P3-7)) (kAT_P3-6)
))
(:action MOVE_P3-7_P2-7
:parameters ()
:precondition (and (kAT_P3-7))

:effect (and  (not(kAT_P3-7)) (kAT_P2-7)
))
(:action MOVE_P3-6_P4-6
:parameters ()
:precondition (and (kAT_P3-6))

:effect (and  (not(kAT_P3-6)) (kAT_P4-6)
))
(:action MOVE_P3-6_P3-7
:parameters ()
:precondition (and (kAT_P3-6))

:effect (and  (not(kAT_P3-6)) (kAT_P3-7)
))
(:action MOVE_P3-6_P3-5
:parameters ()
:precondition (and (kAT_P3-6))

:effect (and  (not(kAT_P3-6)) (kAT_P3-5)
))
(:action MOVE_P3-6_P2-6
:parameters ()
:precondition (and (kAT_P3-6))

:effect (and  (not(kAT_P3-6)) (kAT_P2-6)
))
(:action MOVE_P12-4_P12-5
:parameters ()
:precondition (and (kAT_P12-4))

:effect (and  (not(kAT_P12-4)) (kAT_P12-5)
))
(:action MOVE_P12-4_P12-3
:parameters ()
:precondition (and (kAT_P12-4))

:effect (and  (not(kAT_P12-4)) (kAT_P12-3)
))
(:action MOVE_P12-4_P11-4
:parameters ()
:precondition (and (kAT_P12-4))

:effect (and  (not(kAT_P12-4)) (kAT_P11-4)
))
(:action MOVE_P11-4_P12-4
:parameters ()
:precondition (and (kAT_P11-4))

:effect (and  (not(kAT_P11-4)) (kAT_P12-4)
))
(:action MOVE_P11-4_P11-5
:parameters ()
:precondition (and (kAT_P11-4))

:effect (and  (not(kAT_P11-4)) (kAT_P11-5)
))
(:action MOVE_P11-4_P11-3
:parameters ()
:precondition (and (kAT_P11-4))

:effect (and  (not(kAT_P11-4)) (kAT_P11-3)
))
(:action MOVE_P11-4_P10-4
:parameters ()
:precondition (and (kAT_P11-4))

:effect (and  (not(kAT_P11-4)) (kAT_P10-4)
))
(:action MOVE_P10-4_P9-4
:parameters ()
:precondition (and (kAT_P10-4))

:effect (and  (not(kAT_P10-4)) (kAT_P9-4)
))
(:action MOVE_P10-4_P11-4
:parameters ()
:precondition (and (kAT_P10-4))

:effect (and  (not(kAT_P10-4)) (kAT_P11-4)
))
(:action MOVE_P10-4_P10-5
:parameters ()
:precondition (and (kAT_P10-4))

:effect (and  (not(kAT_P10-4)) (kAT_P10-5)
))
(:action MOVE_P10-4_P10-3
:parameters ()
:precondition (and (kAT_P10-4))

:effect (and  (not(kAT_P10-4)) (kAT_P10-3)
))
(:action PICKUP_O1_P9-3
:parameters ()
:precondition (and (kAT_P9-3))

:effect (and  (k-OBJ-AT_O1_P9-3)
(when (kOBJ-AT_O1_P9-3__OBJ-AT_O1_P9-3) (and (kHOLDING_O1__OBJ-AT_O1_P9-3) (not(kOBJ-AT_O1_P9-3__OBJ-AT_O1_P9-3)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P9-3))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P8-3
:parameters ()
:precondition (and (kAT_P8-3))

:effect (and  (k-OBJ-AT_O1_P8-3)
(when (kOBJ-AT_O1_P8-3__OBJ-AT_O1_P8-3) (and (kHOLDING_O1__OBJ-AT_O1_P8-3) (not(kOBJ-AT_O1_P8-3__OBJ-AT_O1_P8-3)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P8-3))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P7-3
:parameters ()
:precondition (and (kAT_P7-3))

:effect (and  (k-OBJ-AT_O1_P7-3)
(when (kOBJ-AT_O1_P7-3__OBJ-AT_O1_P7-3) (and (kHOLDING_O1__OBJ-AT_O1_P7-3) (not(kOBJ-AT_O1_P7-3__OBJ-AT_O1_P7-3)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P7-3))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P6-3
:parameters ()
:precondition (and (kAT_P6-3))

:effect (and  (k-OBJ-AT_O1_P6-3)
(when (kOBJ-AT_O1_P6-3__OBJ-AT_O1_P6-3) (and (kHOLDING_O1__OBJ-AT_O1_P6-3) (not(kOBJ-AT_O1_P6-3__OBJ-AT_O1_P6-3)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P6-3))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P5-4
:parameters ()
:precondition (and (kAT_P5-4))

:effect (and  (k-OBJ-AT_O1_P5-4)
(when (kOBJ-AT_O1_P5-4__OBJ-AT_O1_P5-4) (and (kHOLDING_O1__OBJ-AT_O1_P5-4) (not(kOBJ-AT_O1_P5-4__OBJ-AT_O1_P5-4)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P5-4))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P4-5
:parameters ()
:precondition (and (kAT_P4-5))

:effect (and  (k-OBJ-AT_O1_P4-5)
(when (kOBJ-AT_O1_P4-5__OBJ-AT_O1_P4-5) (and (kHOLDING_O1__OBJ-AT_O1_P4-5) (not(kOBJ-AT_O1_P4-5__OBJ-AT_O1_P4-5)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P4-5))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P4-12
:parameters ()
:precondition (and (kAT_P4-12))

:effect (and  (k-OBJ-AT_O1_P4-12)
(when (kOBJ-AT_O1_P4-12__OBJ-AT_O1_P4-12) (and (kHOLDING_O1__OBJ-AT_O1_P4-12) (not(kOBJ-AT_O1_P4-12__OBJ-AT_O1_P4-12)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P4-12))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P4-11
:parameters ()
:precondition (and (kAT_P4-11))

:effect (and  (k-OBJ-AT_O1_P4-11)
(when (kOBJ-AT_O1_P4-11__OBJ-AT_O1_P4-11) (and (kHOLDING_O1__OBJ-AT_O1_P4-11) (not(kOBJ-AT_O1_P4-11__OBJ-AT_O1_P4-11)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P4-11))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P4-10
:parameters ()
:precondition (and (kAT_P4-10))

:effect (and  (k-OBJ-AT_O1_P4-10)
(when (kOBJ-AT_O1_P4-10__OBJ-AT_O1_P4-10) (and (kHOLDING_O1__OBJ-AT_O1_P4-10) (not(kOBJ-AT_O1_P4-10__OBJ-AT_O1_P4-10)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P4-10))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P3-9
:parameters ()
:precondition (and (kAT_P3-9))

:effect (and  (k-OBJ-AT_O1_P3-9)
(when (kOBJ-AT_O1_P3-9__OBJ-AT_O1_P3-9) (and (kHOLDING_O1__OBJ-AT_O1_P3-9) (not(kOBJ-AT_O1_P3-9__OBJ-AT_O1_P3-9)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P3-9))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P3-8
:parameters ()
:precondition (and (kAT_P3-8))

:effect (and  (k-OBJ-AT_O1_P3-8)
(when (kOBJ-AT_O1_P3-8__OBJ-AT_O1_P3-8) (and (kHOLDING_O1__OBJ-AT_O1_P3-8) (not(kOBJ-AT_O1_P3-8__OBJ-AT_O1_P3-8)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P3-8))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P3-7
:parameters ()
:precondition (and (kAT_P3-7))

:effect (and  (k-OBJ-AT_O1_P3-7)
(when (kOBJ-AT_O1_P3-7__OBJ-AT_O1_P3-7) (and (kHOLDING_O1__OBJ-AT_O1_P3-7) (not(kOBJ-AT_O1_P3-7__OBJ-AT_O1_P3-7)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P3-7))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P3-6
:parameters ()
:precondition (and (kAT_P3-6))

:effect (and  (k-OBJ-AT_O1_P3-6)
(when (kOBJ-AT_O1_P3-6__OBJ-AT_O1_P3-6) (and (kHOLDING_O1__OBJ-AT_O1_P3-6) (not(kOBJ-AT_O1_P3-6__OBJ-AT_O1_P3-6)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P3-6))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P12-4
:parameters ()
:precondition (and (kAT_P12-4))

:effect (and  (k-OBJ-AT_O1_P12-4)
(when (kOBJ-AT_O1_P12-4__OBJ-AT_O1_P12-4) (and (kHOLDING_O1__OBJ-AT_O1_P12-4) (not(kOBJ-AT_O1_P12-4__OBJ-AT_O1_P12-4)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P12-4))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P12-12
:parameters ()
:precondition (and (kAT_P12-12))

:effect (and  (k-OBJ-AT_O1_P12-12)
(when (kOBJ-AT_O1_P12-12__OBJ-AT_O1_P12-12) (and (kHOLDING_O1__OBJ-AT_O1_P12-12) (not(kOBJ-AT_O1_P12-12__OBJ-AT_O1_P12-12)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P12-12))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P12-11
:parameters ()
:precondition (and (kAT_P12-11))

:effect (and  (k-OBJ-AT_O1_P12-11)
(when (kOBJ-AT_O1_P12-11__OBJ-AT_O1_P12-11) (and (kHOLDING_O1__OBJ-AT_O1_P12-11) (not(kOBJ-AT_O1_P12-11__OBJ-AT_O1_P12-11)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P12-11))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P11-4
:parameters ()
:precondition (and (kAT_P11-4))

:effect (and  (k-OBJ-AT_O1_P11-4)
(when (kOBJ-AT_O1_P11-4__OBJ-AT_O1_P11-4) (and (kHOLDING_O1__OBJ-AT_O1_P11-4) (not(kOBJ-AT_O1_P11-4__OBJ-AT_O1_P11-4)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P11-4))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P11-12
:parameters ()
:precondition (and (kAT_P11-12))

:effect (and  (k-OBJ-AT_O1_P11-12)
(when (kOBJ-AT_O1_P11-12__OBJ-AT_O1_P11-12) (and (kHOLDING_O1__OBJ-AT_O1_P11-12) (not(kOBJ-AT_O1_P11-12__OBJ-AT_O1_P11-12)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P11-12))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P11-11
:parameters ()
:precondition (and (kAT_P11-11))

:effect (and  (k-OBJ-AT_O1_P11-11)
(when (kOBJ-AT_O1_P11-11__OBJ-AT_O1_P11-11) (and (kHOLDING_O1__OBJ-AT_O1_P11-11) (not(kOBJ-AT_O1_P11-11__OBJ-AT_O1_P11-11)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P11-11))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P10-4
:parameters ()
:precondition (and (kAT_P10-4))

:effect (and  (k-OBJ-AT_O1_P10-4)
(when (kOBJ-AT_O1_P10-4__OBJ-AT_O1_P10-4) (and (kHOLDING_O1__OBJ-AT_O1_P10-4) (not(kOBJ-AT_O1_P10-4__OBJ-AT_O1_P10-4)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P10-4))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action MOVE_P9-4_P9-5
:parameters ()
:precondition (and (kAT_P9-4))

:effect (and  (not(kAT_P9-4)) (kAT_P9-5)
))
(:action MOVE_P9-4_P9-3
:parameters ()
:precondition (and (kAT_P9-4))

:effect (and  (not(kAT_P9-4)) (kAT_P9-3)
))
(:action MOVE_P9-4_P8-4
:parameters ()
:precondition (and (kAT_P9-4))

:effect (and  (not(kAT_P9-4)) (kAT_P8-4)
))
(:action MOVE_P9-4_P10-4
:parameters ()
:precondition (and (kAT_P9-4))

:effect (and  (not(kAT_P9-4)) (kAT_P10-4)
))
(:action MOVE_P8-4_P9-4
:parameters ()
:precondition (and (kAT_P8-4))

:effect (and  (not(kAT_P8-4)) (kAT_P9-4)
))
(:action MOVE_P8-4_P8-5
:parameters ()
:precondition (and (kAT_P8-4))

:effect (and  (not(kAT_P8-4)) (kAT_P8-5)
))
(:action MOVE_P8-4_P8-3
:parameters ()
:precondition (and (kAT_P8-4))

:effect (and  (not(kAT_P8-4)) (kAT_P8-3)
))
(:action MOVE_P8-4_P7-4
:parameters ()
:precondition (and (kAT_P8-4))

:effect (and  (not(kAT_P8-4)) (kAT_P7-4)
))
(:action MOVE_P7-4_P8-4
:parameters ()
:precondition (and (kAT_P7-4))

:effect (and  (not(kAT_P7-4)) (kAT_P8-4)
))
(:action MOVE_P7-4_P7-5
:parameters ()
:precondition (and (kAT_P7-4))

:effect (and  (not(kAT_P7-4)) (kAT_P7-5)
))
(:action MOVE_P7-4_P7-3
:parameters ()
:precondition (and (kAT_P7-4))

:effect (and  (not(kAT_P7-4)) (kAT_P7-3)
))
(:action MOVE_P7-4_P6-4
:parameters ()
:precondition (and (kAT_P7-4))

:effect (and  (not(kAT_P7-4)) (kAT_P6-4)
))
(:action MOVE_P6-4_P7-4
:parameters ()
:precondition (and (kAT_P6-4))

:effect (and  (not(kAT_P6-4)) (kAT_P7-4)
))
(:action MOVE_P6-4_P6-5
:parameters ()
:precondition (and (kAT_P6-4))

:effect (and  (not(kAT_P6-4)) (kAT_P6-5)
))
(:action MOVE_P6-4_P6-3
:parameters ()
:precondition (and (kAT_P6-4))

:effect (and  (not(kAT_P6-4)) (kAT_P6-3)
))
(:action MOVE_P6-4_P5-4
:parameters ()
:precondition (and (kAT_P6-4))

:effect (and  (not(kAT_P6-4)) (kAT_P5-4)
))
(:action MOVE_P5-5_P6-5
:parameters ()
:precondition (and (kAT_P5-5))

:effect (and  (not(kAT_P5-5)) (kAT_P6-5)
))
(:action MOVE_P5-5_P5-6
:parameters ()
:precondition (and (kAT_P5-5))

:effect (and  (not(kAT_P5-5)) (kAT_P5-6)
))
(:action MOVE_P5-5_P5-4
:parameters ()
:precondition (and (kAT_P5-5))

:effect (and  (not(kAT_P5-5)) (kAT_P5-4)
))
(:action MOVE_P5-5_P4-5
:parameters ()
:precondition (and (kAT_P5-5))

:effect (and  (not(kAT_P5-5)) (kAT_P4-5)
))
(:action MOVE_P5-12_P6-12
:parameters ()
:precondition (and (kAT_P5-12))

:effect (and  (not(kAT_P5-12)) (kAT_P6-12)
))
(:action MOVE_P5-12_P5-11
:parameters ()
:precondition (and (kAT_P5-12))

:effect (and  (not(kAT_P5-12)) (kAT_P5-11)
))
(:action MOVE_P5-12_P4-12
:parameters ()
:precondition (and (kAT_P5-12))

:effect (and  (not(kAT_P5-12)) (kAT_P4-12)
))
(:action MOVE_P5-11_P6-11
:parameters ()
:precondition (and (kAT_P5-11))

:effect (and  (not(kAT_P5-11)) (kAT_P6-11)
))
(:action MOVE_P5-11_P5-12
:parameters ()
:precondition (and (kAT_P5-11))

:effect (and  (not(kAT_P5-11)) (kAT_P5-12)
))
(:action MOVE_P5-11_P5-10
:parameters ()
:precondition (and (kAT_P5-11))

:effect (and  (not(kAT_P5-11)) (kAT_P5-10)
))
(:action MOVE_P5-11_P4-11
:parameters ()
:precondition (and (kAT_P5-11))

:effect (and  (not(kAT_P5-11)) (kAT_P4-11)
))
(:action MOVE_P5-10_P6-10
:parameters ()
:precondition (and (kAT_P5-10))

:effect (and  (not(kAT_P5-10)) (kAT_P6-10)
))
(:action MOVE_P5-10_P5-9
:parameters ()
:precondition (and (kAT_P5-10))

:effect (and  (not(kAT_P5-10)) (kAT_P5-9)
))
(:action MOVE_P5-10_P5-11
:parameters ()
:precondition (and (kAT_P5-10))

:effect (and  (not(kAT_P5-10)) (kAT_P5-11)
))
(:action MOVE_P5-10_P4-10
:parameters ()
:precondition (and (kAT_P5-10))

:effect (and  (not(kAT_P5-10)) (kAT_P4-10)
))
(:action MOVE_P4-9_P5-9
:parameters ()
:precondition (and (kAT_P4-9))

:effect (and  (not(kAT_P4-9)) (kAT_P5-9)
))
(:action MOVE_P4-9_P4-8
:parameters ()
:precondition (and (kAT_P4-9))

:effect (and  (not(kAT_P4-9)) (kAT_P4-8)
))
(:action MOVE_P4-9_P4-10
:parameters ()
:precondition (and (kAT_P4-9))

:effect (and  (not(kAT_P4-9)) (kAT_P4-10)
))
(:action MOVE_P4-9_P3-9
:parameters ()
:precondition (and (kAT_P4-9))

:effect (and  (not(kAT_P4-9)) (kAT_P3-9)
))
(:action MOVE_P4-8_P5-8
:parameters ()
:precondition (and (kAT_P4-8))

:effect (and  (not(kAT_P4-8)) (kAT_P5-8)
))
(:action MOVE_P4-8_P4-9
:parameters ()
:precondition (and (kAT_P4-8))

:effect (and  (not(kAT_P4-8)) (kAT_P4-9)
))
(:action MOVE_P4-8_P4-7
:parameters ()
:precondition (and (kAT_P4-8))

:effect (and  (not(kAT_P4-8)) (kAT_P4-7)
))
(:action MOVE_P4-8_P3-8
:parameters ()
:precondition (and (kAT_P4-8))

:effect (and  (not(kAT_P4-8)) (kAT_P3-8)
))
(:action MOVE_P4-7_P5-7
:parameters ()
:precondition (and (kAT_P4-7))

:effect (and  (not(kAT_P4-7)) (kAT_P5-7)
))
(:action MOVE_P4-7_P4-8
:parameters ()
:precondition (and (kAT_P4-7))

:effect (and  (not(kAT_P4-7)) (kAT_P4-8)
))
(:action MOVE_P4-7_P4-6
:parameters ()
:precondition (and (kAT_P4-7))

:effect (and  (not(kAT_P4-7)) (kAT_P4-6)
))
(:action MOVE_P4-7_P3-7
:parameters ()
:precondition (and (kAT_P4-7))

:effect (and  (not(kAT_P4-7)) (kAT_P3-7)
))
(:action MOVE_P4-6_P5-6
:parameters ()
:precondition (and (kAT_P4-6))

:effect (and  (not(kAT_P4-6)) (kAT_P5-6)
))
(:action MOVE_P4-6_P4-7
:parameters ()
:precondition (and (kAT_P4-6))

:effect (and  (not(kAT_P4-6)) (kAT_P4-7)
))
(:action MOVE_P4-6_P4-5
:parameters ()
:precondition (and (kAT_P4-6))

:effect (and  (not(kAT_P4-6)) (kAT_P4-5)
))
(:action MOVE_P4-6_P3-6
:parameters ()
:precondition (and (kAT_P4-6))

:effect (and  (not(kAT_P4-6)) (kAT_P3-6)
))
(:action MOVE_P12-5_P12-6
:parameters ()
:precondition (and (kAT_P12-5))

:effect (and  (not(kAT_P12-5)) (kAT_P12-6)
))
(:action MOVE_P12-5_P12-4
:parameters ()
:precondition (and (kAT_P12-5))

:effect (and  (not(kAT_P12-5)) (kAT_P12-4)
))
(:action MOVE_P12-5_P11-5
:parameters ()
:precondition (and (kAT_P12-5))

:effect (and  (not(kAT_P12-5)) (kAT_P11-5)
))
(:action MOVE_P12-12_P12-11
:parameters ()
:precondition (and (kAT_P12-12))

:effect (and  (not(kAT_P12-12)) (kAT_P12-11)
))
(:action MOVE_P12-12_P11-12
:parameters ()
:precondition (and (kAT_P12-12))

:effect (and  (not(kAT_P12-12)) (kAT_P11-12)
))
(:action MOVE_P12-11_P12-12
:parameters ()
:precondition (and (kAT_P12-11))

:effect (and  (not(kAT_P12-11)) (kAT_P12-12)
))
(:action MOVE_P12-11_P12-10
:parameters ()
:precondition (and (kAT_P12-11))

:effect (and  (not(kAT_P12-11)) (kAT_P12-10)
))
(:action MOVE_P12-11_P11-11
:parameters ()
:precondition (and (kAT_P12-11))

:effect (and  (not(kAT_P12-11)) (kAT_P11-11)
))
(:action MOVE_P12-10_P12-9
:parameters ()
:precondition (and (kAT_P12-10))

:effect (and  (not(kAT_P12-10)) (kAT_P12-9)
))
(:action MOVE_P12-10_P12-11
:parameters ()
:precondition (and (kAT_P12-10))

:effect (and  (not(kAT_P12-10)) (kAT_P12-11)
))
(:action MOVE_P12-10_P11-10
:parameters ()
:precondition (and (kAT_P12-10))

:effect (and  (not(kAT_P12-10)) (kAT_P11-10)
))
(:action MOVE_P11-5_P12-5
:parameters ()
:precondition (and (kAT_P11-5))

:effect (and  (not(kAT_P11-5)) (kAT_P12-5)
))
(:action MOVE_P11-5_P11-6
:parameters ()
:precondition (and (kAT_P11-5))

:effect (and  (not(kAT_P11-5)) (kAT_P11-6)
))
(:action MOVE_P11-5_P11-4
:parameters ()
:precondition (and (kAT_P11-5))

:effect (and  (not(kAT_P11-5)) (kAT_P11-4)
))
(:action MOVE_P11-5_P10-5
:parameters ()
:precondition (and (kAT_P11-5))

:effect (and  (not(kAT_P11-5)) (kAT_P10-5)
))
(:action MOVE_P11-12_P12-12
:parameters ()
:precondition (and (kAT_P11-12))

:effect (and  (not(kAT_P11-12)) (kAT_P12-12)
))
(:action MOVE_P11-12_P11-11
:parameters ()
:precondition (and (kAT_P11-12))

:effect (and  (not(kAT_P11-12)) (kAT_P11-11)
))
(:action MOVE_P11-12_P10-12
:parameters ()
:precondition (and (kAT_P11-12))

:effect (and  (not(kAT_P11-12)) (kAT_P10-12)
))
(:action MOVE_P11-11_P12-11
:parameters ()
:precondition (and (kAT_P11-11))

:effect (and  (not(kAT_P11-11)) (kAT_P12-11)
))
(:action MOVE_P11-11_P11-12
:parameters ()
:precondition (and (kAT_P11-11))

:effect (and  (not(kAT_P11-11)) (kAT_P11-12)
))
(:action MOVE_P11-11_P11-10
:parameters ()
:precondition (and (kAT_P11-11))

:effect (and  (not(kAT_P11-11)) (kAT_P11-10)
))
(:action MOVE_P11-11_P10-11
:parameters ()
:precondition (and (kAT_P11-11))

:effect (and  (not(kAT_P11-11)) (kAT_P10-11)
))
(:action MOVE_P11-10_P12-10
:parameters ()
:precondition (and (kAT_P11-10))

:effect (and  (not(kAT_P11-10)) (kAT_P12-10)
))
(:action MOVE_P11-10_P11-9
:parameters ()
:precondition (and (kAT_P11-10))

:effect (and  (not(kAT_P11-10)) (kAT_P11-9)
))
(:action MOVE_P11-10_P11-11
:parameters ()
:precondition (and (kAT_P11-10))

:effect (and  (not(kAT_P11-10)) (kAT_P11-11)
))
(:action MOVE_P11-10_P10-10
:parameters ()
:precondition (and (kAT_P11-10))

:effect (and  (not(kAT_P11-10)) (kAT_P10-10)
))
(:action MOVE_P10-5_P9-5
:parameters ()
:precondition (and (kAT_P10-5))

:effect (and  (not(kAT_P10-5)) (kAT_P9-5)
))
(:action MOVE_P10-5_P11-5
:parameters ()
:precondition (and (kAT_P10-5))

:effect (and  (not(kAT_P10-5)) (kAT_P11-5)
))
(:action MOVE_P10-5_P10-6
:parameters ()
:precondition (and (kAT_P10-5))

:effect (and  (not(kAT_P10-5)) (kAT_P10-6)
))
(:action MOVE_P10-5_P10-4
:parameters ()
:precondition (and (kAT_P10-5))

:effect (and  (not(kAT_P10-5)) (kAT_P10-4)
))
(:action MOVE_P10-12_P9-12
:parameters ()
:precondition (and (kAT_P10-12))

:effect (and  (not(kAT_P10-12)) (kAT_P9-12)
))
(:action MOVE_P10-12_P11-12
:parameters ()
:precondition (and (kAT_P10-12))

:effect (and  (not(kAT_P10-12)) (kAT_P11-12)
))
(:action MOVE_P10-12_P10-11
:parameters ()
:precondition (and (kAT_P10-12))

:effect (and  (not(kAT_P10-12)) (kAT_P10-11)
))
(:action MOVE_P10-11_P9-11
:parameters ()
:precondition (and (kAT_P10-11))

:effect (and  (not(kAT_P10-11)) (kAT_P9-11)
))
(:action MOVE_P10-11_P11-11
:parameters ()
:precondition (and (kAT_P10-11))

:effect (and  (not(kAT_P10-11)) (kAT_P11-11)
))
(:action MOVE_P10-11_P10-12
:parameters ()
:precondition (and (kAT_P10-11))

:effect (and  (not(kAT_P10-11)) (kAT_P10-12)
))
(:action MOVE_P10-11_P10-10
:parameters ()
:precondition (and (kAT_P10-11))

:effect (and  (not(kAT_P10-11)) (kAT_P10-10)
))
(:action MOVE_P10-10_P9-10
:parameters ()
:precondition (and (kAT_P10-10))

:effect (and  (not(kAT_P10-10)) (kAT_P9-10)
))
(:action MOVE_P10-10_P11-10
:parameters ()
:precondition (and (kAT_P10-10))

:effect (and  (not(kAT_P10-10)) (kAT_P11-10)
))
(:action MOVE_P10-10_P10-9
:parameters ()
:precondition (and (kAT_P10-10))

:effect (and  (not(kAT_P10-10)) (kAT_P10-9)
))
(:action MOVE_P10-10_P10-11
:parameters ()
:precondition (and (kAT_P10-10))

:effect (and  (not(kAT_P10-10)) (kAT_P10-11)
))
(:action PICKUP_O1_P9-4
:parameters ()
:precondition (and (kAT_P9-4))

:effect (and  (k-OBJ-AT_O1_P9-4)
(when (kOBJ-AT_O1_P9-4__OBJ-AT_O1_P9-4) (and (kHOLDING_O1__OBJ-AT_O1_P9-4) (not(kOBJ-AT_O1_P9-4__OBJ-AT_O1_P9-4)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P9-4))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P9-12
:parameters ()
:precondition (and (kAT_P9-12))

:effect (and  (k-OBJ-AT_O1_P9-12)
(when (kOBJ-AT_O1_P9-12__OBJ-AT_O1_P9-12) (and (kHOLDING_O1__OBJ-AT_O1_P9-12) (not(kOBJ-AT_O1_P9-12__OBJ-AT_O1_P9-12)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P9-12))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P9-11
:parameters ()
:precondition (and (kAT_P9-11))

:effect (and  (k-OBJ-AT_O1_P9-11)
(when (kOBJ-AT_O1_P9-11__OBJ-AT_O1_P9-11) (and (kHOLDING_O1__OBJ-AT_O1_P9-11) (not(kOBJ-AT_O1_P9-11__OBJ-AT_O1_P9-11)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P9-11))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P8-4
:parameters ()
:precondition (and (kAT_P8-4))

:effect (and  (k-OBJ-AT_O1_P8-4)
(when (kOBJ-AT_O1_P8-4__OBJ-AT_O1_P8-4) (and (kHOLDING_O1__OBJ-AT_O1_P8-4) (not(kOBJ-AT_O1_P8-4__OBJ-AT_O1_P8-4)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P8-4))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P8-12
:parameters ()
:precondition (and (kAT_P8-12))

:effect (and  (k-OBJ-AT_O1_P8-12)
(when (kOBJ-AT_O1_P8-12__OBJ-AT_O1_P8-12) (and (kHOLDING_O1__OBJ-AT_O1_P8-12) (not(kOBJ-AT_O1_P8-12__OBJ-AT_O1_P8-12)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P8-12))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P8-11
:parameters ()
:precondition (and (kAT_P8-11))

:effect (and  (k-OBJ-AT_O1_P8-11)
(when (kOBJ-AT_O1_P8-11__OBJ-AT_O1_P8-11) (and (kHOLDING_O1__OBJ-AT_O1_P8-11) (not(kOBJ-AT_O1_P8-11__OBJ-AT_O1_P8-11)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P8-11))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P7-4
:parameters ()
:precondition (and (kAT_P7-4))

:effect (and  (k-OBJ-AT_O1_P7-4)
(when (kOBJ-AT_O1_P7-4__OBJ-AT_O1_P7-4) (and (kHOLDING_O1__OBJ-AT_O1_P7-4) (not(kOBJ-AT_O1_P7-4__OBJ-AT_O1_P7-4)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P7-4))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P7-12
:parameters ()
:precondition (and (kAT_P7-12))

:effect (and  (k-OBJ-AT_O1_P7-12)
(when (kOBJ-AT_O1_P7-12__OBJ-AT_O1_P7-12) (and (kHOLDING_O1__OBJ-AT_O1_P7-12) (not(kOBJ-AT_O1_P7-12__OBJ-AT_O1_P7-12)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P7-12))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P7-11
:parameters ()
:precondition (and (kAT_P7-11))

:effect (and  (k-OBJ-AT_O1_P7-11)
(when (kOBJ-AT_O1_P7-11__OBJ-AT_O1_P7-11) (and (kHOLDING_O1__OBJ-AT_O1_P7-11) (not(kOBJ-AT_O1_P7-11__OBJ-AT_O1_P7-11)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P7-11))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P6-4
:parameters ()
:precondition (and (kAT_P6-4))

:effect (and  (k-OBJ-AT_O1_P6-4)
(when (kOBJ-AT_O1_P6-4__OBJ-AT_O1_P6-4) (and (kHOLDING_O1__OBJ-AT_O1_P6-4) (not(kOBJ-AT_O1_P6-4__OBJ-AT_O1_P6-4)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P6-4))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P6-12
:parameters ()
:precondition (and (kAT_P6-12))

:effect (and  (k-OBJ-AT_O1_P6-12)
(when (kOBJ-AT_O1_P6-12__OBJ-AT_O1_P6-12) (and (kHOLDING_O1__OBJ-AT_O1_P6-12) (not(kOBJ-AT_O1_P6-12__OBJ-AT_O1_P6-12)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P6-12))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P6-11
:parameters ()
:precondition (and (kAT_P6-11))

:effect (and  (k-OBJ-AT_O1_P6-11)
(when (kOBJ-AT_O1_P6-11__OBJ-AT_O1_P6-11) (and (kHOLDING_O1__OBJ-AT_O1_P6-11) (not(kOBJ-AT_O1_P6-11__OBJ-AT_O1_P6-11)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P6-11))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P5-5
:parameters ()
:precondition (and (kAT_P5-5))

:effect (and  (k-OBJ-AT_O1_P5-5)
(when (kOBJ-AT_O1_P5-5__OBJ-AT_O1_P5-5) (and (kHOLDING_O1__OBJ-AT_O1_P5-5) (not(kOBJ-AT_O1_P5-5__OBJ-AT_O1_P5-5)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P5-5))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P5-12
:parameters ()
:precondition (and (kAT_P5-12))

:effect (and  (k-OBJ-AT_O1_P5-12)
(when (kOBJ-AT_O1_P5-12__OBJ-AT_O1_P5-12) (and (kHOLDING_O1__OBJ-AT_O1_P5-12) (not(kOBJ-AT_O1_P5-12__OBJ-AT_O1_P5-12)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P5-12))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P5-11
:parameters ()
:precondition (and (kAT_P5-11))

:effect (and  (k-OBJ-AT_O1_P5-11)
(when (kOBJ-AT_O1_P5-11__OBJ-AT_O1_P5-11) (and (kHOLDING_O1__OBJ-AT_O1_P5-11) (not(kOBJ-AT_O1_P5-11__OBJ-AT_O1_P5-11)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P5-11))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P5-10
:parameters ()
:precondition (and (kAT_P5-10))

:effect (and  (k-OBJ-AT_O1_P5-10)
(when (kOBJ-AT_O1_P5-10__OBJ-AT_O1_P5-10) (and (kHOLDING_O1__OBJ-AT_O1_P5-10) (not(kOBJ-AT_O1_P5-10__OBJ-AT_O1_P5-10)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P5-10))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P4-9
:parameters ()
:precondition (and (kAT_P4-9))

:effect (and  (k-OBJ-AT_O1_P4-9)
(when (kOBJ-AT_O1_P4-9__OBJ-AT_O1_P4-9) (and (kHOLDING_O1__OBJ-AT_O1_P4-9) (not(kOBJ-AT_O1_P4-9__OBJ-AT_O1_P4-9)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P4-9))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P4-8
:parameters ()
:precondition (and (kAT_P4-8))

:effect (and  (k-OBJ-AT_O1_P4-8)
(when (kOBJ-AT_O1_P4-8__OBJ-AT_O1_P4-8) (and (kHOLDING_O1__OBJ-AT_O1_P4-8) (not(kOBJ-AT_O1_P4-8__OBJ-AT_O1_P4-8)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P4-8))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P4-7
:parameters ()
:precondition (and (kAT_P4-7))

:effect (and  (k-OBJ-AT_O1_P4-7)
(when (kOBJ-AT_O1_P4-7__OBJ-AT_O1_P4-7) (and (kHOLDING_O1__OBJ-AT_O1_P4-7) (not(kOBJ-AT_O1_P4-7__OBJ-AT_O1_P4-7)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P4-7))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P4-6
:parameters ()
:precondition (and (kAT_P4-6))

:effect (and  (k-OBJ-AT_O1_P4-6)
(when (kOBJ-AT_O1_P4-6__OBJ-AT_O1_P4-6) (and (kHOLDING_O1__OBJ-AT_O1_P4-6) (not(kOBJ-AT_O1_P4-6__OBJ-AT_O1_P4-6)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P4-6))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P12-9
:parameters ()
:precondition (and (kAT_P12-9))

:effect (and  (k-OBJ-AT_O1_P12-9)
(when (kOBJ-AT_O1_P12-9__OBJ-AT_O1_P12-9) (and (kHOLDING_O1__OBJ-AT_O1_P12-9) (not(kOBJ-AT_O1_P12-9__OBJ-AT_O1_P12-9)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P12-9))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P12-8
:parameters ()
:precondition (and (kAT_P12-8))

:effect (and  (k-OBJ-AT_O1_P12-8)
(when (kOBJ-AT_O1_P12-8__OBJ-AT_O1_P12-8) (and (kHOLDING_O1__OBJ-AT_O1_P12-8) (not(kOBJ-AT_O1_P12-8__OBJ-AT_O1_P12-8)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P12-8))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P12-7
:parameters ()
:precondition (and (kAT_P12-7))

:effect (and  (k-OBJ-AT_O1_P12-7)
(when (kOBJ-AT_O1_P12-7__OBJ-AT_O1_P12-7) (and (kHOLDING_O1__OBJ-AT_O1_P12-7) (not(kOBJ-AT_O1_P12-7__OBJ-AT_O1_P12-7)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P12-7))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P12-6
:parameters ()
:precondition (and (kAT_P12-6))

:effect (and  (k-OBJ-AT_O1_P12-6)
(when (kOBJ-AT_O1_P12-6__OBJ-AT_O1_P12-6) (and (kHOLDING_O1__OBJ-AT_O1_P12-6) (not(kOBJ-AT_O1_P12-6__OBJ-AT_O1_P12-6)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P12-6))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P12-5
:parameters ()
:precondition (and (kAT_P12-5))

:effect (and  (k-OBJ-AT_O1_P12-5)
(when (kOBJ-AT_O1_P12-5__OBJ-AT_O1_P12-5) (and (kHOLDING_O1__OBJ-AT_O1_P12-5) (not(kOBJ-AT_O1_P12-5__OBJ-AT_O1_P12-5)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P12-5))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P12-10
:parameters ()
:precondition (and (kAT_P12-10))

:effect (and  (k-OBJ-AT_O1_P12-10)
(when (kOBJ-AT_O1_P12-10__OBJ-AT_O1_P12-10) (and (kHOLDING_O1__OBJ-AT_O1_P12-10) (not(kOBJ-AT_O1_P12-10__OBJ-AT_O1_P12-10)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P12-10))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P11-9
:parameters ()
:precondition (and (kAT_P11-9))

:effect (and  (k-OBJ-AT_O1_P11-9)
(when (kOBJ-AT_O1_P11-9__OBJ-AT_O1_P11-9) (and (kHOLDING_O1__OBJ-AT_O1_P11-9) (not(kOBJ-AT_O1_P11-9__OBJ-AT_O1_P11-9)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P11-9))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P11-8
:parameters ()
:precondition (and (kAT_P11-8))

:effect (and  (k-OBJ-AT_O1_P11-8)
(when (kOBJ-AT_O1_P11-8__OBJ-AT_O1_P11-8) (and (kHOLDING_O1__OBJ-AT_O1_P11-8) (not(kOBJ-AT_O1_P11-8__OBJ-AT_O1_P11-8)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P11-8))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P11-7
:parameters ()
:precondition (and (kAT_P11-7))

:effect (and  (k-OBJ-AT_O1_P11-7)
(when (kOBJ-AT_O1_P11-7__OBJ-AT_O1_P11-7) (and (kHOLDING_O1__OBJ-AT_O1_P11-7) (not(kOBJ-AT_O1_P11-7__OBJ-AT_O1_P11-7)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P11-7))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P11-6
:parameters ()
:precondition (and (kAT_P11-6))

:effect (and  (k-OBJ-AT_O1_P11-6)
(when (kOBJ-AT_O1_P11-6__OBJ-AT_O1_P11-6) (and (kHOLDING_O1__OBJ-AT_O1_P11-6) (not(kOBJ-AT_O1_P11-6__OBJ-AT_O1_P11-6)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P11-6))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P11-5
:parameters ()
:precondition (and (kAT_P11-5))

:effect (and  (k-OBJ-AT_O1_P11-5)
(when (kOBJ-AT_O1_P11-5__OBJ-AT_O1_P11-5) (and (kHOLDING_O1__OBJ-AT_O1_P11-5) (not(kOBJ-AT_O1_P11-5__OBJ-AT_O1_P11-5)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P11-5))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P11-10
:parameters ()
:precondition (and (kAT_P11-10))

:effect (and  (k-OBJ-AT_O1_P11-10)
(when (kOBJ-AT_O1_P11-10__OBJ-AT_O1_P11-10) (and (kHOLDING_O1__OBJ-AT_O1_P11-10) (not(kOBJ-AT_O1_P11-10__OBJ-AT_O1_P11-10)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P11-10))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P10-5
:parameters ()
:precondition (and (kAT_P10-5))

:effect (and  (k-OBJ-AT_O1_P10-5)
(when (kOBJ-AT_O1_P10-5__OBJ-AT_O1_P10-5) (and (kHOLDING_O1__OBJ-AT_O1_P10-5) (not(kOBJ-AT_O1_P10-5__OBJ-AT_O1_P10-5)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P10-5))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P10-12
:parameters ()
:precondition (and (kAT_P10-12))

:effect (and  (k-OBJ-AT_O1_P10-12)
(when (kOBJ-AT_O1_P10-12__OBJ-AT_O1_P10-12) (and (kHOLDING_O1__OBJ-AT_O1_P10-12) (not(kOBJ-AT_O1_P10-12__OBJ-AT_O1_P10-12)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P10-12))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P10-11
:parameters ()
:precondition (and (kAT_P10-11))

:effect (and  (k-OBJ-AT_O1_P10-11)
(when (kOBJ-AT_O1_P10-11__OBJ-AT_O1_P10-11) (and (kHOLDING_O1__OBJ-AT_O1_P10-11) (not(kOBJ-AT_O1_P10-11__OBJ-AT_O1_P10-11)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P10-11))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P10-10
:parameters ()
:precondition (and (kAT_P10-10))

:effect (and  (k-OBJ-AT_O1_P10-10)
(when (kOBJ-AT_O1_P10-10__OBJ-AT_O1_P10-10) (and (kHOLDING_O1__OBJ-AT_O1_P10-10) (not(kOBJ-AT_O1_P10-10__OBJ-AT_O1_P10-10)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P10-10))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action MOVE_P9-5_P9-6
:parameters ()
:precondition (and (kAT_P9-5))

:effect (and  (not(kAT_P9-5)) (kAT_P9-6)
))
(:action MOVE_P9-5_P9-4
:parameters ()
:precondition (and (kAT_P9-5))

:effect (and  (not(kAT_P9-5)) (kAT_P9-4)
))
(:action MOVE_P9-5_P8-5
:parameters ()
:precondition (and (kAT_P9-5))

:effect (and  (not(kAT_P9-5)) (kAT_P8-5)
))
(:action MOVE_P9-5_P10-5
:parameters ()
:precondition (and (kAT_P9-5))

:effect (and  (not(kAT_P9-5)) (kAT_P10-5)
))
(:action MOVE_P9-12_P9-11
:parameters ()
:precondition (and (kAT_P9-12))

:effect (and  (not(kAT_P9-12)) (kAT_P9-11)
))
(:action MOVE_P9-12_P8-12
:parameters ()
:precondition (and (kAT_P9-12))

:effect (and  (not(kAT_P9-12)) (kAT_P8-12)
))
(:action MOVE_P9-12_P10-12
:parameters ()
:precondition (and (kAT_P9-12))

:effect (and  (not(kAT_P9-12)) (kAT_P10-12)
))
(:action MOVE_P9-11_P9-12
:parameters ()
:precondition (and (kAT_P9-11))

:effect (and  (not(kAT_P9-11)) (kAT_P9-12)
))
(:action MOVE_P9-11_P9-10
:parameters ()
:precondition (and (kAT_P9-11))

:effect (and  (not(kAT_P9-11)) (kAT_P9-10)
))
(:action MOVE_P9-11_P8-11
:parameters ()
:precondition (and (kAT_P9-11))

:effect (and  (not(kAT_P9-11)) (kAT_P8-11)
))
(:action MOVE_P9-11_P10-11
:parameters ()
:precondition (and (kAT_P9-11))

:effect (and  (not(kAT_P9-11)) (kAT_P10-11)
))
(:action MOVE_P9-10_P9-9
:parameters ()
:precondition (and (kAT_P9-10))

:effect (and  (not(kAT_P9-10)) (kAT_P9-9)
))
(:action MOVE_P9-10_P9-11
:parameters ()
:precondition (and (kAT_P9-10))

:effect (and  (not(kAT_P9-10)) (kAT_P9-11)
))
(:action MOVE_P9-10_P8-10
:parameters ()
:precondition (and (kAT_P9-10))

:effect (and  (not(kAT_P9-10)) (kAT_P8-10)
))
(:action MOVE_P9-10_P10-10
:parameters ()
:precondition (and (kAT_P9-10))

:effect (and  (not(kAT_P9-10)) (kAT_P10-10)
))
(:action MOVE_P8-5_P9-5
:parameters ()
:precondition (and (kAT_P8-5))

:effect (and  (not(kAT_P8-5)) (kAT_P9-5)
))
(:action MOVE_P8-5_P8-6
:parameters ()
:precondition (and (kAT_P8-5))

:effect (and  (not(kAT_P8-5)) (kAT_P8-6)
))
(:action MOVE_P8-5_P8-4
:parameters ()
:precondition (and (kAT_P8-5))

:effect (and  (not(kAT_P8-5)) (kAT_P8-4)
))
(:action MOVE_P8-5_P7-5
:parameters ()
:precondition (and (kAT_P8-5))

:effect (and  (not(kAT_P8-5)) (kAT_P7-5)
))
(:action MOVE_P8-12_P9-12
:parameters ()
:precondition (and (kAT_P8-12))

:effect (and  (not(kAT_P8-12)) (kAT_P9-12)
))
(:action MOVE_P8-12_P8-11
:parameters ()
:precondition (and (kAT_P8-12))

:effect (and  (not(kAT_P8-12)) (kAT_P8-11)
))
(:action MOVE_P8-12_P7-12
:parameters ()
:precondition (and (kAT_P8-12))

:effect (and  (not(kAT_P8-12)) (kAT_P7-12)
))
(:action MOVE_P8-11_P9-11
:parameters ()
:precondition (and (kAT_P8-11))

:effect (and  (not(kAT_P8-11)) (kAT_P9-11)
))
(:action MOVE_P8-11_P8-12
:parameters ()
:precondition (and (kAT_P8-11))

:effect (and  (not(kAT_P8-11)) (kAT_P8-12)
))
(:action MOVE_P8-11_P8-10
:parameters ()
:precondition (and (kAT_P8-11))

:effect (and  (not(kAT_P8-11)) (kAT_P8-10)
))
(:action MOVE_P8-11_P7-11
:parameters ()
:precondition (and (kAT_P8-11))

:effect (and  (not(kAT_P8-11)) (kAT_P7-11)
))
(:action MOVE_P8-10_P9-10
:parameters ()
:precondition (and (kAT_P8-10))

:effect (and  (not(kAT_P8-10)) (kAT_P9-10)
))
(:action MOVE_P8-10_P8-9
:parameters ()
:precondition (and (kAT_P8-10))

:effect (and  (not(kAT_P8-10)) (kAT_P8-9)
))
(:action MOVE_P8-10_P8-11
:parameters ()
:precondition (and (kAT_P8-10))

:effect (and  (not(kAT_P8-10)) (kAT_P8-11)
))
(:action MOVE_P8-10_P7-10
:parameters ()
:precondition (and (kAT_P8-10))

:effect (and  (not(kAT_P8-10)) (kAT_P7-10)
))
(:action MOVE_P7-5_P8-5
:parameters ()
:precondition (and (kAT_P7-5))

:effect (and  (not(kAT_P7-5)) (kAT_P8-5)
))
(:action MOVE_P7-5_P7-6
:parameters ()
:precondition (and (kAT_P7-5))

:effect (and  (not(kAT_P7-5)) (kAT_P7-6)
))
(:action MOVE_P7-5_P7-4
:parameters ()
:precondition (and (kAT_P7-5))

:effect (and  (not(kAT_P7-5)) (kAT_P7-4)
))
(:action MOVE_P7-5_P6-5
:parameters ()
:precondition (and (kAT_P7-5))

:effect (and  (not(kAT_P7-5)) (kAT_P6-5)
))
(:action MOVE_P7-12_P8-12
:parameters ()
:precondition (and (kAT_P7-12))

:effect (and  (not(kAT_P7-12)) (kAT_P8-12)
))
(:action MOVE_P7-12_P7-11
:parameters ()
:precondition (and (kAT_P7-12))

:effect (and  (not(kAT_P7-12)) (kAT_P7-11)
))
(:action MOVE_P7-12_P6-12
:parameters ()
:precondition (and (kAT_P7-12))

:effect (and  (not(kAT_P7-12)) (kAT_P6-12)
))
(:action MOVE_P7-11_P8-11
:parameters ()
:precondition (and (kAT_P7-11))

:effect (and  (not(kAT_P7-11)) (kAT_P8-11)
))
(:action MOVE_P7-11_P7-12
:parameters ()
:precondition (and (kAT_P7-11))

:effect (and  (not(kAT_P7-11)) (kAT_P7-12)
))
(:action MOVE_P7-11_P7-10
:parameters ()
:precondition (and (kAT_P7-11))

:effect (and  (not(kAT_P7-11)) (kAT_P7-10)
))
(:action MOVE_P7-11_P6-11
:parameters ()
:precondition (and (kAT_P7-11))

:effect (and  (not(kAT_P7-11)) (kAT_P6-11)
))
(:action MOVE_P7-10_P8-10
:parameters ()
:precondition (and (kAT_P7-10))

:effect (and  (not(kAT_P7-10)) (kAT_P8-10)
))
(:action MOVE_P7-10_P7-9
:parameters ()
:precondition (and (kAT_P7-10))

:effect (and  (not(kAT_P7-10)) (kAT_P7-9)
))
(:action MOVE_P7-10_P7-11
:parameters ()
:precondition (and (kAT_P7-10))

:effect (and  (not(kAT_P7-10)) (kAT_P7-11)
))
(:action MOVE_P7-10_P6-10
:parameters ()
:precondition (and (kAT_P7-10))

:effect (and  (not(kAT_P7-10)) (kAT_P6-10)
))
(:action MOVE_P6-5_P7-5
:parameters ()
:precondition (and (kAT_P6-5))

:effect (and  (not(kAT_P6-5)) (kAT_P7-5)
))
(:action MOVE_P6-5_P6-6
:parameters ()
:precondition (and (kAT_P6-5))

:effect (and  (not(kAT_P6-5)) (kAT_P6-6)
))
(:action MOVE_P6-5_P6-4
:parameters ()
:precondition (and (kAT_P6-5))

:effect (and  (not(kAT_P6-5)) (kAT_P6-4)
))
(:action MOVE_P6-5_P5-5
:parameters ()
:precondition (and (kAT_P6-5))

:effect (and  (not(kAT_P6-5)) (kAT_P5-5)
))
(:action MOVE_P6-12_P7-12
:parameters ()
:precondition (and (kAT_P6-12))

:effect (and  (not(kAT_P6-12)) (kAT_P7-12)
))
(:action MOVE_P6-12_P6-11
:parameters ()
:precondition (and (kAT_P6-12))

:effect (and  (not(kAT_P6-12)) (kAT_P6-11)
))
(:action MOVE_P6-12_P5-12
:parameters ()
:precondition (and (kAT_P6-12))

:effect (and  (not(kAT_P6-12)) (kAT_P5-12)
))
(:action MOVE_P6-11_P7-11
:parameters ()
:precondition (and (kAT_P6-11))

:effect (and  (not(kAT_P6-11)) (kAT_P7-11)
))
(:action MOVE_P6-11_P6-12
:parameters ()
:precondition (and (kAT_P6-11))

:effect (and  (not(kAT_P6-11)) (kAT_P6-12)
))
(:action MOVE_P6-11_P6-10
:parameters ()
:precondition (and (kAT_P6-11))

:effect (and  (not(kAT_P6-11)) (kAT_P6-10)
))
(:action MOVE_P6-11_P5-11
:parameters ()
:precondition (and (kAT_P6-11))

:effect (and  (not(kAT_P6-11)) (kAT_P5-11)
))
(:action MOVE_P6-10_P7-10
:parameters ()
:precondition (and (kAT_P6-10))

:effect (and  (not(kAT_P6-10)) (kAT_P7-10)
))
(:action MOVE_P6-10_P6-9
:parameters ()
:precondition (and (kAT_P6-10))

:effect (and  (not(kAT_P6-10)) (kAT_P6-9)
))
(:action MOVE_P6-10_P6-11
:parameters ()
:precondition (and (kAT_P6-10))

:effect (and  (not(kAT_P6-10)) (kAT_P6-11)
))
(:action MOVE_P6-10_P5-10
:parameters ()
:precondition (and (kAT_P6-10))

:effect (and  (not(kAT_P6-10)) (kAT_P5-10)
))
(:action MOVE_P5-9_P6-9
:parameters ()
:precondition (and (kAT_P5-9))

:effect (and  (not(kAT_P5-9)) (kAT_P6-9)
))
(:action MOVE_P5-9_P5-8
:parameters ()
:precondition (and (kAT_P5-9))

:effect (and  (not(kAT_P5-9)) (kAT_P5-8)
))
(:action MOVE_P5-9_P5-10
:parameters ()
:precondition (and (kAT_P5-9))

:effect (and  (not(kAT_P5-9)) (kAT_P5-10)
))
(:action MOVE_P5-9_P4-9
:parameters ()
:precondition (and (kAT_P5-9))

:effect (and  (not(kAT_P5-9)) (kAT_P4-9)
))
(:action MOVE_P5-8_P6-8
:parameters ()
:precondition (and (kAT_P5-8))

:effect (and  (not(kAT_P5-8)) (kAT_P6-8)
))
(:action MOVE_P5-8_P5-9
:parameters ()
:precondition (and (kAT_P5-8))

:effect (and  (not(kAT_P5-8)) (kAT_P5-9)
))
(:action MOVE_P5-8_P5-7
:parameters ()
:precondition (and (kAT_P5-8))

:effect (and  (not(kAT_P5-8)) (kAT_P5-7)
))
(:action MOVE_P5-8_P4-8
:parameters ()
:precondition (and (kAT_P5-8))

:effect (and  (not(kAT_P5-8)) (kAT_P4-8)
))
(:action MOVE_P5-7_P6-7
:parameters ()
:precondition (and (kAT_P5-7))

:effect (and  (not(kAT_P5-7)) (kAT_P6-7)
))
(:action MOVE_P5-7_P5-8
:parameters ()
:precondition (and (kAT_P5-7))

:effect (and  (not(kAT_P5-7)) (kAT_P5-8)
))
(:action MOVE_P5-7_P5-6
:parameters ()
:precondition (and (kAT_P5-7))

:effect (and  (not(kAT_P5-7)) (kAT_P5-6)
))
(:action MOVE_P5-7_P4-7
:parameters ()
:precondition (and (kAT_P5-7))

:effect (and  (not(kAT_P5-7)) (kAT_P4-7)
))
(:action MOVE_P5-6_P6-6
:parameters ()
:precondition (and (kAT_P5-6))

:effect (and  (not(kAT_P5-6)) (kAT_P6-6)
))
(:action MOVE_P5-6_P5-7
:parameters ()
:precondition (and (kAT_P5-6))

:effect (and  (not(kAT_P5-6)) (kAT_P5-7)
))
(:action MOVE_P5-6_P5-5
:parameters ()
:precondition (and (kAT_P5-6))

:effect (and  (not(kAT_P5-6)) (kAT_P5-5)
))
(:action MOVE_P5-6_P4-6
:parameters ()
:precondition (and (kAT_P5-6))

:effect (and  (not(kAT_P5-6)) (kAT_P4-6)
))
(:action MOVE_P12-9_P12-8
:parameters ()
:precondition (and (kAT_P12-9))

:effect (and  (not(kAT_P12-9)) (kAT_P12-8)
))
(:action MOVE_P12-9_P12-10
:parameters ()
:precondition (and (kAT_P12-9))

:effect (and  (not(kAT_P12-9)) (kAT_P12-10)
))
(:action MOVE_P12-9_P11-9
:parameters ()
:precondition (and (kAT_P12-9))

:effect (and  (not(kAT_P12-9)) (kAT_P11-9)
))
(:action MOVE_P12-8_P12-9
:parameters ()
:precondition (and (kAT_P12-8))

:effect (and  (not(kAT_P12-8)) (kAT_P12-9)
))
(:action MOVE_P12-8_P12-7
:parameters ()
:precondition (and (kAT_P12-8))

:effect (and  (not(kAT_P12-8)) (kAT_P12-7)
))
(:action MOVE_P12-8_P11-8
:parameters ()
:precondition (and (kAT_P12-8))

:effect (and  (not(kAT_P12-8)) (kAT_P11-8)
))
(:action MOVE_P12-7_P12-8
:parameters ()
:precondition (and (kAT_P12-7))

:effect (and  (not(kAT_P12-7)) (kAT_P12-8)
))
(:action MOVE_P12-7_P12-6
:parameters ()
:precondition (and (kAT_P12-7))

:effect (and  (not(kAT_P12-7)) (kAT_P12-6)
))
(:action MOVE_P12-7_P11-7
:parameters ()
:precondition (and (kAT_P12-7))

:effect (and  (not(kAT_P12-7)) (kAT_P11-7)
))
(:action MOVE_P12-6_P12-7
:parameters ()
:precondition (and (kAT_P12-6))

:effect (and  (not(kAT_P12-6)) (kAT_P12-7)
))
(:action MOVE_P12-6_P12-5
:parameters ()
:precondition (and (kAT_P12-6))

:effect (and  (not(kAT_P12-6)) (kAT_P12-5)
))
(:action MOVE_P12-6_P11-6
:parameters ()
:precondition (and (kAT_P12-6))

:effect (and  (not(kAT_P12-6)) (kAT_P11-6)
))
(:action MOVE_P11-9_P12-9
:parameters ()
:precondition (and (kAT_P11-9))

:effect (and  (not(kAT_P11-9)) (kAT_P12-9)
))
(:action MOVE_P11-9_P11-8
:parameters ()
:precondition (and (kAT_P11-9))

:effect (and  (not(kAT_P11-9)) (kAT_P11-8)
))
(:action MOVE_P11-9_P11-10
:parameters ()
:precondition (and (kAT_P11-9))

:effect (and  (not(kAT_P11-9)) (kAT_P11-10)
))
(:action MOVE_P11-9_P10-9
:parameters ()
:precondition (and (kAT_P11-9))

:effect (and  (not(kAT_P11-9)) (kAT_P10-9)
))
(:action MOVE_P11-8_P12-8
:parameters ()
:precondition (and (kAT_P11-8))

:effect (and  (not(kAT_P11-8)) (kAT_P12-8)
))
(:action MOVE_P11-8_P11-9
:parameters ()
:precondition (and (kAT_P11-8))

:effect (and  (not(kAT_P11-8)) (kAT_P11-9)
))
(:action MOVE_P11-8_P11-7
:parameters ()
:precondition (and (kAT_P11-8))

:effect (and  (not(kAT_P11-8)) (kAT_P11-7)
))
(:action MOVE_P11-8_P10-8
:parameters ()
:precondition (and (kAT_P11-8))

:effect (and  (not(kAT_P11-8)) (kAT_P10-8)
))
(:action MOVE_P11-7_P12-7
:parameters ()
:precondition (and (kAT_P11-7))

:effect (and  (not(kAT_P11-7)) (kAT_P12-7)
))
(:action MOVE_P11-7_P11-8
:parameters ()
:precondition (and (kAT_P11-7))

:effect (and  (not(kAT_P11-7)) (kAT_P11-8)
))
(:action MOVE_P11-7_P11-6
:parameters ()
:precondition (and (kAT_P11-7))

:effect (and  (not(kAT_P11-7)) (kAT_P11-6)
))
(:action MOVE_P11-7_P10-7
:parameters ()
:precondition (and (kAT_P11-7))

:effect (and  (not(kAT_P11-7)) (kAT_P10-7)
))
(:action MOVE_P11-6_P12-6
:parameters ()
:precondition (and (kAT_P11-6))

:effect (and  (not(kAT_P11-6)) (kAT_P12-6)
))
(:action MOVE_P11-6_P11-7
:parameters ()
:precondition (and (kAT_P11-6))

:effect (and  (not(kAT_P11-6)) (kAT_P11-7)
))
(:action MOVE_P11-6_P11-5
:parameters ()
:precondition (and (kAT_P11-6))

:effect (and  (not(kAT_P11-6)) (kAT_P11-5)
))
(:action MOVE_P11-6_P10-6
:parameters ()
:precondition (and (kAT_P11-6))

:effect (and  (not(kAT_P11-6)) (kAT_P10-6)
))
(:action MOVE_P10-9_P9-9
:parameters ()
:precondition (and (kAT_P10-9))

:effect (and  (not(kAT_P10-9)) (kAT_P9-9)
))
(:action MOVE_P10-9_P11-9
:parameters ()
:precondition (and (kAT_P10-9))

:effect (and  (not(kAT_P10-9)) (kAT_P11-9)
))
(:action MOVE_P10-9_P10-8
:parameters ()
:precondition (and (kAT_P10-9))

:effect (and  (not(kAT_P10-9)) (kAT_P10-8)
))
(:action MOVE_P10-9_P10-10
:parameters ()
:precondition (and (kAT_P10-9))

:effect (and  (not(kAT_P10-9)) (kAT_P10-10)
))
(:action MOVE_P10-8_P9-8
:parameters ()
:precondition (and (kAT_P10-8))

:effect (and  (not(kAT_P10-8)) (kAT_P9-8)
))
(:action MOVE_P10-8_P11-8
:parameters ()
:precondition (and (kAT_P10-8))

:effect (and  (not(kAT_P10-8)) (kAT_P11-8)
))
(:action MOVE_P10-8_P10-9
:parameters ()
:precondition (and (kAT_P10-8))

:effect (and  (not(kAT_P10-8)) (kAT_P10-9)
))
(:action MOVE_P10-8_P10-7
:parameters ()
:precondition (and (kAT_P10-8))

:effect (and  (not(kAT_P10-8)) (kAT_P10-7)
))
(:action MOVE_P10-7_P9-7
:parameters ()
:precondition (and (kAT_P10-7))

:effect (and  (not(kAT_P10-7)) (kAT_P9-7)
))
(:action MOVE_P10-7_P11-7
:parameters ()
:precondition (and (kAT_P10-7))

:effect (and  (not(kAT_P10-7)) (kAT_P11-7)
))
(:action MOVE_P10-7_P10-8
:parameters ()
:precondition (and (kAT_P10-7))

:effect (and  (not(kAT_P10-7)) (kAT_P10-8)
))
(:action MOVE_P10-7_P10-6
:parameters ()
:precondition (and (kAT_P10-7))

:effect (and  (not(kAT_P10-7)) (kAT_P10-6)
))
(:action MOVE_P10-6_P9-6
:parameters ()
:precondition (and (kAT_P10-6))

:effect (and  (not(kAT_P10-6)) (kAT_P9-6)
))
(:action MOVE_P10-6_P11-6
:parameters ()
:precondition (and (kAT_P10-6))

:effect (and  (not(kAT_P10-6)) (kAT_P11-6)
))
(:action MOVE_P10-6_P10-7
:parameters ()
:precondition (and (kAT_P10-6))

:effect (and  (not(kAT_P10-6)) (kAT_P10-7)
))
(:action MOVE_P10-6_P10-5
:parameters ()
:precondition (and (kAT_P10-6))

:effect (and  (not(kAT_P10-6)) (kAT_P10-5)
))
(:action PICKUP_O1_P9-9
:parameters ()
:precondition (and (kAT_P9-9))

:effect (and  (k-OBJ-AT_O1_P9-9)
(when (kOBJ-AT_O1_P9-9__OBJ-AT_O1_P9-9) (and (kHOLDING_O1__OBJ-AT_O1_P9-9) (not(kOBJ-AT_O1_P9-9__OBJ-AT_O1_P9-9)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P9-9))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P9-8
:parameters ()
:precondition (and (kAT_P9-8))

:effect (and  (k-OBJ-AT_O1_P9-8)
(when (kOBJ-AT_O1_P9-8__OBJ-AT_O1_P9-8) (and (kHOLDING_O1__OBJ-AT_O1_P9-8) (not(kOBJ-AT_O1_P9-8__OBJ-AT_O1_P9-8)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P9-8))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P9-7
:parameters ()
:precondition (and (kAT_P9-7))

:effect (and  (k-OBJ-AT_O1_P9-7)
(when (kOBJ-AT_O1_P9-7__OBJ-AT_O1_P9-7) (and (kHOLDING_O1__OBJ-AT_O1_P9-7) (not(kOBJ-AT_O1_P9-7__OBJ-AT_O1_P9-7)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P9-7))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P9-6
:parameters ()
:precondition (and (kAT_P9-6))

:effect (and  (k-OBJ-AT_O1_P9-6)
(when (kOBJ-AT_O1_P9-6__OBJ-AT_O1_P9-6) (and (kHOLDING_O1__OBJ-AT_O1_P9-6) (not(kOBJ-AT_O1_P9-6__OBJ-AT_O1_P9-6)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P9-6))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P9-5
:parameters ()
:precondition (and (kAT_P9-5))

:effect (and  (k-OBJ-AT_O1_P9-5)
(when (kOBJ-AT_O1_P9-5__OBJ-AT_O1_P9-5) (and (kHOLDING_O1__OBJ-AT_O1_P9-5) (not(kOBJ-AT_O1_P9-5__OBJ-AT_O1_P9-5)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P9-5))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P9-10
:parameters ()
:precondition (and (kAT_P9-10))

:effect (and  (k-OBJ-AT_O1_P9-10)
(when (kOBJ-AT_O1_P9-10__OBJ-AT_O1_P9-10) (and (kHOLDING_O1__OBJ-AT_O1_P9-10) (not(kOBJ-AT_O1_P9-10__OBJ-AT_O1_P9-10)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P9-10))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P8-9
:parameters ()
:precondition (and (kAT_P8-9))

:effect (and  (k-OBJ-AT_O1_P8-9)
(when (kOBJ-AT_O1_P8-9__OBJ-AT_O1_P8-9) (and (kHOLDING_O1__OBJ-AT_O1_P8-9) (not(kOBJ-AT_O1_P8-9__OBJ-AT_O1_P8-9)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P8-9))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P8-8
:parameters ()
:precondition (and (kAT_P8-8))

:effect (and  (k-OBJ-AT_O1_P8-8)
(when (kOBJ-AT_O1_P8-8__OBJ-AT_O1_P8-8) (and (kHOLDING_O1__OBJ-AT_O1_P8-8) (not(kOBJ-AT_O1_P8-8__OBJ-AT_O1_P8-8)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P8-8))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P8-7
:parameters ()
:precondition (and (kAT_P8-7))

:effect (and  (k-OBJ-AT_O1_P8-7)
(when (kOBJ-AT_O1_P8-7__OBJ-AT_O1_P8-7) (and (kHOLDING_O1__OBJ-AT_O1_P8-7) (not(kOBJ-AT_O1_P8-7__OBJ-AT_O1_P8-7)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P8-7))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P8-6
:parameters ()
:precondition (and (kAT_P8-6))

:effect (and  (k-OBJ-AT_O1_P8-6)
(when (kOBJ-AT_O1_P8-6__OBJ-AT_O1_P8-6) (and (kHOLDING_O1__OBJ-AT_O1_P8-6) (not(kOBJ-AT_O1_P8-6__OBJ-AT_O1_P8-6)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P8-6))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P8-5
:parameters ()
:precondition (and (kAT_P8-5))

:effect (and  (k-OBJ-AT_O1_P8-5)
(when (kOBJ-AT_O1_P8-5__OBJ-AT_O1_P8-5) (and (kHOLDING_O1__OBJ-AT_O1_P8-5) (not(kOBJ-AT_O1_P8-5__OBJ-AT_O1_P8-5)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P8-5))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P8-10
:parameters ()
:precondition (and (kAT_P8-10))

:effect (and  (k-OBJ-AT_O1_P8-10)
(when (kOBJ-AT_O1_P8-10__OBJ-AT_O1_P8-10) (and (kHOLDING_O1__OBJ-AT_O1_P8-10) (not(kOBJ-AT_O1_P8-10__OBJ-AT_O1_P8-10)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P8-10))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P7-9
:parameters ()
:precondition (and (kAT_P7-9))

:effect (and  (k-OBJ-AT_O1_P7-9)
(when (kOBJ-AT_O1_P7-9__OBJ-AT_O1_P7-9) (and (kHOLDING_O1__OBJ-AT_O1_P7-9) (not(kOBJ-AT_O1_P7-9__OBJ-AT_O1_P7-9)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P7-9))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P7-8
:parameters ()
:precondition (and (kAT_P7-8))

:effect (and  (k-OBJ-AT_O1_P7-8)
(when (kOBJ-AT_O1_P7-8__OBJ-AT_O1_P7-8) (and (kHOLDING_O1__OBJ-AT_O1_P7-8) (not(kOBJ-AT_O1_P7-8__OBJ-AT_O1_P7-8)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P7-8))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P7-7
:parameters ()
:precondition (and (kAT_P7-7))

:effect (and  (k-OBJ-AT_O1_P7-7)
(when (kOBJ-AT_O1_P7-7__OBJ-AT_O1_P7-7) (and (kHOLDING_O1__OBJ-AT_O1_P7-7) (not(kOBJ-AT_O1_P7-7__OBJ-AT_O1_P7-7)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P7-7))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P7-6
:parameters ()
:precondition (and (kAT_P7-6))

:effect (and  (k-OBJ-AT_O1_P7-6)
(when (kOBJ-AT_O1_P7-6__OBJ-AT_O1_P7-6) (and (kHOLDING_O1__OBJ-AT_O1_P7-6) (not(kOBJ-AT_O1_P7-6__OBJ-AT_O1_P7-6)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P7-6))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P7-5
:parameters ()
:precondition (and (kAT_P7-5))

:effect (and  (k-OBJ-AT_O1_P7-5)
(when (kOBJ-AT_O1_P7-5__OBJ-AT_O1_P7-5) (and (kHOLDING_O1__OBJ-AT_O1_P7-5) (not(kOBJ-AT_O1_P7-5__OBJ-AT_O1_P7-5)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P7-5))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P7-10
:parameters ()
:precondition (and (kAT_P7-10))

:effect (and  (k-OBJ-AT_O1_P7-10)
(when (kOBJ-AT_O1_P7-10__OBJ-AT_O1_P7-10) (and (kHOLDING_O1__OBJ-AT_O1_P7-10) (not(kOBJ-AT_O1_P7-10__OBJ-AT_O1_P7-10)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P7-10))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P6-9
:parameters ()
:precondition (and (kAT_P6-9))

:effect (and  (k-OBJ-AT_O1_P6-9)
(when (kOBJ-AT_O1_P6-9__OBJ-AT_O1_P6-9) (and (kHOLDING_O1__OBJ-AT_O1_P6-9) (not(kOBJ-AT_O1_P6-9__OBJ-AT_O1_P6-9)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P6-9))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P6-8
:parameters ()
:precondition (and (kAT_P6-8))

:effect (and  (k-OBJ-AT_O1_P6-8)
(when (kOBJ-AT_O1_P6-8__OBJ-AT_O1_P6-8) (and (kHOLDING_O1__OBJ-AT_O1_P6-8) (not(kOBJ-AT_O1_P6-8__OBJ-AT_O1_P6-8)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P6-8))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P6-7
:parameters ()
:precondition (and (kAT_P6-7))

:effect (and  (k-OBJ-AT_O1_P6-7)
(when (kOBJ-AT_O1_P6-7__OBJ-AT_O1_P6-7) (and (kHOLDING_O1__OBJ-AT_O1_P6-7) (not(kOBJ-AT_O1_P6-7__OBJ-AT_O1_P6-7)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P6-7))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P6-6
:parameters ()
:precondition (and (kAT_P6-6))

:effect (and  (k-OBJ-AT_O1_P6-6)
(when (kOBJ-AT_O1_P6-6__OBJ-AT_O1_P6-6) (and (kHOLDING_O1__OBJ-AT_O1_P6-6) (not(kOBJ-AT_O1_P6-6__OBJ-AT_O1_P6-6)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P6-6))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P6-5
:parameters ()
:precondition (and (kAT_P6-5))

:effect (and  (k-OBJ-AT_O1_P6-5)
(when (kOBJ-AT_O1_P6-5__OBJ-AT_O1_P6-5) (and (kHOLDING_O1__OBJ-AT_O1_P6-5) (not(kOBJ-AT_O1_P6-5__OBJ-AT_O1_P6-5)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P6-5))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P6-10
:parameters ()
:precondition (and (kAT_P6-10))

:effect (and  (k-OBJ-AT_O1_P6-10)
(when (kOBJ-AT_O1_P6-10__OBJ-AT_O1_P6-10) (and (kHOLDING_O1__OBJ-AT_O1_P6-10) (not(kOBJ-AT_O1_P6-10__OBJ-AT_O1_P6-10)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P6-10))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P5-9
:parameters ()
:precondition (and (kAT_P5-9))

:effect (and  (k-OBJ-AT_O1_P5-9)
(when (kOBJ-AT_O1_P5-9__OBJ-AT_O1_P5-9) (and (kHOLDING_O1__OBJ-AT_O1_P5-9) (not(kOBJ-AT_O1_P5-9__OBJ-AT_O1_P5-9)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P5-9))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P5-8
:parameters ()
:precondition (and (kAT_P5-8))

:effect (and  (k-OBJ-AT_O1_P5-8)
(when (kOBJ-AT_O1_P5-8__OBJ-AT_O1_P5-8) (and (kHOLDING_O1__OBJ-AT_O1_P5-8) (not(kOBJ-AT_O1_P5-8__OBJ-AT_O1_P5-8)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P5-8))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P5-7
:parameters ()
:precondition (and (kAT_P5-7))

:effect (and  (k-OBJ-AT_O1_P5-7)
(when (kOBJ-AT_O1_P5-7__OBJ-AT_O1_P5-7) (and (kHOLDING_O1__OBJ-AT_O1_P5-7) (not(kOBJ-AT_O1_P5-7__OBJ-AT_O1_P5-7)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P5-7))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P5-6
:parameters ()
:precondition (and (kAT_P5-6))

:effect (and  (k-OBJ-AT_O1_P5-6)
(when (kOBJ-AT_O1_P5-6__OBJ-AT_O1_P5-6) (and (kHOLDING_O1__OBJ-AT_O1_P5-6) (not(kOBJ-AT_O1_P5-6__OBJ-AT_O1_P5-6)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P5-6))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P10-9
:parameters ()
:precondition (and (kAT_P10-9))

:effect (and  (k-OBJ-AT_O1_P10-9)
(when (kOBJ-AT_O1_P10-9__OBJ-AT_O1_P10-9) (and (kHOLDING_O1__OBJ-AT_O1_P10-9) (not(kOBJ-AT_O1_P10-9__OBJ-AT_O1_P10-9)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P10-9))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P10-8
:parameters ()
:precondition (and (kAT_P10-8))

:effect (and  (k-OBJ-AT_O1_P10-8)
(when (kOBJ-AT_O1_P10-8__OBJ-AT_O1_P10-8) (and (kHOLDING_O1__OBJ-AT_O1_P10-8) (not(kOBJ-AT_O1_P10-8__OBJ-AT_O1_P10-8)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P10-8))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P10-7
:parameters ()
:precondition (and (kAT_P10-7))

:effect (and  (k-OBJ-AT_O1_P10-7)
(when (kOBJ-AT_O1_P10-7__OBJ-AT_O1_P10-7) (and (kHOLDING_O1__OBJ-AT_O1_P10-7) (not(kOBJ-AT_O1_P10-7__OBJ-AT_O1_P10-7)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P10-7))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action PICKUP_O1_P10-6
:parameters ()
:precondition (and (kAT_P10-6))

:effect (and  (k-OBJ-AT_O1_P10-6)
(when (kOBJ-AT_O1_P10-6__OBJ-AT_O1_P10-6) (and (not(kOBJ-AT_O1_P10-6__OBJ-AT_O1_P10-6)) (kHOLDING_O1__OBJ-AT_O1_P10-6))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P10-6))  (not(k-HOLDING_O1))) ;; Cancellation. 
))
(:action MOVE_P9-9_P9-8
:parameters ()
:precondition (and (kAT_P9-9))

:effect (and  (not(kAT_P9-9)) (kAT_P9-8)
))
(:action MOVE_P9-9_P9-10
:parameters ()
:precondition (and (kAT_P9-9))

:effect (and  (not(kAT_P9-9)) (kAT_P9-10)
))
(:action MOVE_P9-9_P8-9
:parameters ()
:precondition (and (kAT_P9-9))

:effect (and  (not(kAT_P9-9)) (kAT_P8-9)
))
(:action MOVE_P9-9_P10-9
:parameters ()
:precondition (and (kAT_P9-9))

:effect (and  (not(kAT_P9-9)) (kAT_P10-9)
))
(:action MOVE_P9-8_P9-9
:parameters ()
:precondition (and (kAT_P9-8))

:effect (and  (not(kAT_P9-8)) (kAT_P9-9)
))
(:action MOVE_P9-8_P9-7
:parameters ()
:precondition (and (kAT_P9-8))

:effect (and  (not(kAT_P9-8)) (kAT_P9-7)
))
(:action MOVE_P9-8_P8-8
:parameters ()
:precondition (and (kAT_P9-8))

:effect (and  (not(kAT_P9-8)) (kAT_P8-8)
))
(:action MOVE_P9-8_P10-8
:parameters ()
:precondition (and (kAT_P9-8))

:effect (and  (not(kAT_P9-8)) (kAT_P10-8)
))
(:action MOVE_P9-7_P9-8
:parameters ()
:precondition (and (kAT_P9-7))

:effect (and  (not(kAT_P9-7)) (kAT_P9-8)
))
(:action MOVE_P9-7_P9-6
:parameters ()
:precondition (and (kAT_P9-7))

:effect (and  (not(kAT_P9-7)) (kAT_P9-6)
))
(:action MOVE_P9-7_P8-7
:parameters ()
:precondition (and (kAT_P9-7))

:effect (and  (not(kAT_P9-7)) (kAT_P8-7)
))
(:action MOVE_P9-7_P10-7
:parameters ()
:precondition (and (kAT_P9-7))

:effect (and  (not(kAT_P9-7)) (kAT_P10-7)
))
(:action MOVE_P9-6_P9-7
:parameters ()
:precondition (and (kAT_P9-6))

:effect (and  (not(kAT_P9-6)) (kAT_P9-7)
))
(:action MOVE_P9-6_P9-5
:parameters ()
:precondition (and (kAT_P9-6))

:effect (and  (not(kAT_P9-6)) (kAT_P9-5)
))
(:action MOVE_P9-6_P8-6
:parameters ()
:precondition (and (kAT_P9-6))

:effect (and  (not(kAT_P9-6)) (kAT_P8-6)
))
(:action MOVE_P9-6_P10-6
:parameters ()
:precondition (and (kAT_P9-6))

:effect (and  (not(kAT_P9-6)) (kAT_P10-6)
))
(:action MOVE_P8-9_P9-9
:parameters ()
:precondition (and (kAT_P8-9))

:effect (and  (not(kAT_P8-9)) (kAT_P9-9)
))
(:action MOVE_P8-9_P8-8
:parameters ()
:precondition (and (kAT_P8-9))

:effect (and  (not(kAT_P8-9)) (kAT_P8-8)
))
(:action MOVE_P8-9_P8-10
:parameters ()
:precondition (and (kAT_P8-9))

:effect (and  (not(kAT_P8-9)) (kAT_P8-10)
))
(:action MOVE_P8-9_P7-9
:parameters ()
:precondition (and (kAT_P8-9))

:effect (and  (not(kAT_P8-9)) (kAT_P7-9)
))
(:action MOVE_P8-8_P9-8
:parameters ()
:precondition (and (kAT_P8-8))

:effect (and  (not(kAT_P8-8)) (kAT_P9-8)
))
(:action MOVE_P8-8_P8-9
:parameters ()
:precondition (and (kAT_P8-8))

:effect (and  (not(kAT_P8-8)) (kAT_P8-9)
))
(:action MOVE_P8-8_P8-7
:parameters ()
:precondition (and (kAT_P8-8))

:effect (and  (not(kAT_P8-8)) (kAT_P8-7)
))
(:action MOVE_P8-8_P7-8
:parameters ()
:precondition (and (kAT_P8-8))

:effect (and  (not(kAT_P8-8)) (kAT_P7-8)
))
(:action MOVE_P8-7_P9-7
:parameters ()
:precondition (and (kAT_P8-7))

:effect (and  (not(kAT_P8-7)) (kAT_P9-7)
))
(:action MOVE_P8-7_P8-8
:parameters ()
:precondition (and (kAT_P8-7))

:effect (and  (not(kAT_P8-7)) (kAT_P8-8)
))
(:action MOVE_P8-7_P8-6
:parameters ()
:precondition (and (kAT_P8-7))

:effect (and  (not(kAT_P8-7)) (kAT_P8-6)
))
(:action MOVE_P8-7_P7-7
:parameters ()
:precondition (and (kAT_P8-7))

:effect (and  (not(kAT_P8-7)) (kAT_P7-7)
))
(:action MOVE_P8-6_P9-6
:parameters ()
:precondition (and (kAT_P8-6))

:effect (and  (not(kAT_P8-6)) (kAT_P9-6)
))
(:action MOVE_P8-6_P8-7
:parameters ()
:precondition (and (kAT_P8-6))

:effect (and  (not(kAT_P8-6)) (kAT_P8-7)
))
(:action MOVE_P8-6_P8-5
:parameters ()
:precondition (and (kAT_P8-6))

:effect (and  (not(kAT_P8-6)) (kAT_P8-5)
))
(:action MOVE_P8-6_P7-6
:parameters ()
:precondition (and (kAT_P8-6))

:effect (and  (not(kAT_P8-6)) (kAT_P7-6)
))
(:action MOVE_P7-9_P8-9
:parameters ()
:precondition (and (kAT_P7-9))

:effect (and  (not(kAT_P7-9)) (kAT_P8-9)
))
(:action MOVE_P7-9_P7-8
:parameters ()
:precondition (and (kAT_P7-9))

:effect (and  (not(kAT_P7-9)) (kAT_P7-8)
))
(:action MOVE_P7-9_P7-10
:parameters ()
:precondition (and (kAT_P7-9))

:effect (and  (not(kAT_P7-9)) (kAT_P7-10)
))
(:action MOVE_P7-9_P6-9
:parameters ()
:precondition (and (kAT_P7-9))

:effect (and  (not(kAT_P7-9)) (kAT_P6-9)
))
(:action MOVE_P7-8_P8-8
:parameters ()
:precondition (and (kAT_P7-8))

:effect (and  (not(kAT_P7-8)) (kAT_P8-8)
))
(:action MOVE_P7-8_P7-9
:parameters ()
:precondition (and (kAT_P7-8))

:effect (and  (not(kAT_P7-8)) (kAT_P7-9)
))
(:action MOVE_P7-8_P7-7
:parameters ()
:precondition (and (kAT_P7-8))

:effect (and  (not(kAT_P7-8)) (kAT_P7-7)
))
(:action MOVE_P7-8_P6-8
:parameters ()
:precondition (and (kAT_P7-8))

:effect (and  (not(kAT_P7-8)) (kAT_P6-8)
))
(:action MOVE_P7-7_P8-7
:parameters ()
:precondition (and (kAT_P7-7))

:effect (and  (not(kAT_P7-7)) (kAT_P8-7)
))
(:action MOVE_P7-7_P7-8
:parameters ()
:precondition (and (kAT_P7-7))

:effect (and  (not(kAT_P7-7)) (kAT_P7-8)
))
(:action MOVE_P7-7_P7-6
:parameters ()
:precondition (and (kAT_P7-7))

:effect (and  (not(kAT_P7-7)) (kAT_P7-6)
))
(:action MOVE_P7-7_P6-7
:parameters ()
:precondition (and (kAT_P7-7))

:effect (and  (not(kAT_P7-7)) (kAT_P6-7)
))
(:action MOVE_P7-6_P8-6
:parameters ()
:precondition (and (kAT_P7-6))

:effect (and  (not(kAT_P7-6)) (kAT_P8-6)
))
(:action MOVE_P7-6_P7-7
:parameters ()
:precondition (and (kAT_P7-6))

:effect (and  (not(kAT_P7-6)) (kAT_P7-7)
))
(:action MOVE_P7-6_P7-5
:parameters ()
:precondition (and (kAT_P7-6))

:effect (and  (not(kAT_P7-6)) (kAT_P7-5)
))
(:action MOVE_P7-6_P6-6
:parameters ()
:precondition (and (kAT_P7-6))

:effect (and  (not(kAT_P7-6)) (kAT_P6-6)
))
(:action MOVE_P6-9_P7-9
:parameters ()
:precondition (and (kAT_P6-9))

:effect (and  (not(kAT_P6-9)) (kAT_P7-9)
))
(:action MOVE_P6-9_P6-8
:parameters ()
:precondition (and (kAT_P6-9))

:effect (and  (not(kAT_P6-9)) (kAT_P6-8)
))
(:action MOVE_P6-9_P6-10
:parameters ()
:precondition (and (kAT_P6-9))

:effect (and  (not(kAT_P6-9)) (kAT_P6-10)
))
(:action MOVE_P6-9_P5-9
:parameters ()
:precondition (and (kAT_P6-9))

:effect (and  (not(kAT_P6-9)) (kAT_P5-9)
))
(:action MOVE_P6-8_P7-8
:parameters ()
:precondition (and (kAT_P6-8))

:effect (and  (not(kAT_P6-8)) (kAT_P7-8)
))
(:action MOVE_P6-8_P6-9
:parameters ()
:precondition (and (kAT_P6-8))

:effect (and  (not(kAT_P6-8)) (kAT_P6-9)
))
(:action MOVE_P6-8_P6-7
:parameters ()
:precondition (and (kAT_P6-8))

:effect (and  (not(kAT_P6-8)) (kAT_P6-7)
))
(:action MOVE_P6-8_P5-8
:parameters ()
:precondition (and (kAT_P6-8))

:effect (and  (not(kAT_P6-8)) (kAT_P5-8)
))
(:action MOVE_P6-7_P7-7
:parameters ()
:precondition (and (kAT_P6-7))

:effect (and  (not(kAT_P6-7)) (kAT_P7-7)
))
(:action MOVE_P6-7_P6-8
:parameters ()
:precondition (and (kAT_P6-7))

:effect (and  (not(kAT_P6-7)) (kAT_P6-8)
))
(:action MOVE_P6-7_P6-6
:parameters ()
:precondition (and (kAT_P6-7))

:effect (and  (not(kAT_P6-7)) (kAT_P6-6)
))
(:action MOVE_P6-7_P5-7
:parameters ()
:precondition (and (kAT_P6-7))

:effect (and  (not(kAT_P6-7)) (kAT_P5-7)
))
(:action MOVE_P6-6_P7-6
:parameters ()
:precondition (and (kAT_P6-6))

:effect (and  (not(kAT_P6-6)) (kAT_P7-6)
))
(:action MOVE_P6-6_P6-7
:parameters ()
:precondition (and (kAT_P6-6))

:effect (and  (not(kAT_P6-6)) (kAT_P6-7)
))
(:action MOVE_P6-6_P6-5
:parameters ()
:precondition (and (kAT_P6-6))

:effect (and  (not(kAT_P6-6)) (kAT_P6-5)
))
(:action MOVE_P6-6_P5-6
:parameters ()
:precondition (and (kAT_P6-6))

:effect (and  (not(kAT_P6-6)) (kAT_P5-6)
))
(:action MERGE_DISPOSED_O1
:parameters ()
:precondition (and)

:effect (and 
(when(and (kDISPOSED_O1__OBJ-AT_O1_P12-12) (kDISPOSED_O1__OBJ-AT_O1_P12-11) (kDISPOSED_O1__OBJ-AT_O1_P12-10) (kDISPOSED_O1__OBJ-AT_O1_P12-9) (kDISPOSED_O1__OBJ-AT_O1_P12-8) (kDISPOSED_O1__OBJ-AT_O1_P12-7) (kDISPOSED_O1__OBJ-AT_O1_P12-6) (kDISPOSED_O1__OBJ-AT_O1_P12-5) (kDISPOSED_O1__OBJ-AT_O1_P12-4) (kDISPOSED_O1__OBJ-AT_O1_P12-3) (kDISPOSED_O1__OBJ-AT_O1_P12-2) (kDISPOSED_O1__OBJ-AT_O1_P12-1) (kDISPOSED_O1__OBJ-AT_O1_P11-12) (kDISPOSED_O1__OBJ-AT_O1_P11-11) (kDISPOSED_O1__OBJ-AT_O1_P11-10) (kDISPOSED_O1__OBJ-AT_O1_P11-9) (kDISPOSED_O1__OBJ-AT_O1_P11-8) (kDISPOSED_O1__OBJ-AT_O1_P11-7) (kDISPOSED_O1__OBJ-AT_O1_P11-6) (kDISPOSED_O1__OBJ-AT_O1_P11-5) (kDISPOSED_O1__OBJ-AT_O1_P11-4) (kDISPOSED_O1__OBJ-AT_O1_P11-3) (kDISPOSED_O1__OBJ-AT_O1_P11-2) (kDISPOSED_O1__OBJ-AT_O1_P11-1) (kDISPOSED_O1__OBJ-AT_O1_P10-12) (kDISPOSED_O1__OBJ-AT_O1_P10-11) (kDISPOSED_O1__OBJ-AT_O1_P10-10) (kDISPOSED_O1__OBJ-AT_O1_P10-9) (kDISPOSED_O1__OBJ-AT_O1_P10-8) (kDISPOSED_O1__OBJ-AT_O1_P10-7) (kDISPOSED_O1__OBJ-AT_O1_P10-6) (kDISPOSED_O1__OBJ-AT_O1_P10-5) (kDISPOSED_O1__OBJ-AT_O1_P10-4) (kDISPOSED_O1__OBJ-AT_O1_P10-3) (kDISPOSED_O1__OBJ-AT_O1_P10-2) (kDISPOSED_O1__OBJ-AT_O1_P10-1) (kDISPOSED_O1__OBJ-AT_O1_P9-12) (kDISPOSED_O1__OBJ-AT_O1_P9-11) (kDISPOSED_O1__OBJ-AT_O1_P9-10) (kDISPOSED_O1__OBJ-AT_O1_P9-9) (kDISPOSED_O1__OBJ-AT_O1_P9-8) (kDISPOSED_O1__OBJ-AT_O1_P9-7) (kDISPOSED_O1__OBJ-AT_O1_P9-6) (kDISPOSED_O1__OBJ-AT_O1_P9-5) (kDISPOSED_O1__OBJ-AT_O1_P9-4) (kDISPOSED_O1__OBJ-AT_O1_P9-3) (kDISPOSED_O1__OBJ-AT_O1_P9-2) (kDISPOSED_O1__OBJ-AT_O1_P9-1) (kDISPOSED_O1__OBJ-AT_O1_P8-12) (kDISPOSED_O1__OBJ-AT_O1_P8-11) (kDISPOSED_O1__OBJ-AT_O1_P8-10) (kDISPOSED_O1__OBJ-AT_O1_P8-9) (kDISPOSED_O1__OBJ-AT_O1_P8-8) (kDISPOSED_O1__OBJ-AT_O1_P8-7) (kDISPOSED_O1__OBJ-AT_O1_P8-6) (kDISPOSED_O1__OBJ-AT_O1_P8-5) (kDISPOSED_O1__OBJ-AT_O1_P8-4) (kDISPOSED_O1__OBJ-AT_O1_P8-3) (kDISPOSED_O1__OBJ-AT_O1_P8-2) (kDISPOSED_O1__OBJ-AT_O1_P8-1) (kDISPOSED_O1__OBJ-AT_O1_P7-12) (kDISPOSED_O1__OBJ-AT_O1_P7-11) (kDISPOSED_O1__OBJ-AT_O1_P7-10) (kDISPOSED_O1__OBJ-AT_O1_P7-9) (kDISPOSED_O1__OBJ-AT_O1_P7-8) (kDISPOSED_O1__OBJ-AT_O1_P7-7) (kDISPOSED_O1__OBJ-AT_O1_P7-6) (kDISPOSED_O1__OBJ-AT_O1_P7-5) (kDISPOSED_O1__OBJ-AT_O1_P7-4) (kDISPOSED_O1__OBJ-AT_O1_P7-3) (kDISPOSED_O1__OBJ-AT_O1_P7-2) (kDISPOSED_O1__OBJ-AT_O1_P7-1) (kDISPOSED_O1__OBJ-AT_O1_P6-12) (kDISPOSED_O1__OBJ-AT_O1_P6-11) (kDISPOSED_O1__OBJ-AT_O1_P6-10) (kDISPOSED_O1__OBJ-AT_O1_P6-9) (kDISPOSED_O1__OBJ-AT_O1_P6-8) (kDISPOSED_O1__OBJ-AT_O1_P6-7) (kDISPOSED_O1__OBJ-AT_O1_P6-6) (kDISPOSED_O1__OBJ-AT_O1_P6-5) (kDISPOSED_O1__OBJ-AT_O1_P6-4) (kDISPOSED_O1__OBJ-AT_O1_P6-3) (kDISPOSED_O1__OBJ-AT_O1_P6-2) (kDISPOSED_O1__OBJ-AT_O1_P6-1) (kDISPOSED_O1__OBJ-AT_O1_P5-12) (kDISPOSED_O1__OBJ-AT_O1_P5-11) (kDISPOSED_O1__OBJ-AT_O1_P5-10) (kDISPOSED_O1__OBJ-AT_O1_P5-9) (kDISPOSED_O1__OBJ-AT_O1_P5-8) (kDISPOSED_O1__OBJ-AT_O1_P5-7) (kDISPOSED_O1__OBJ-AT_O1_P5-6) (kDISPOSED_O1__OBJ-AT_O1_P5-5) (kDISPOSED_O1__OBJ-AT_O1_P5-4) (kDISPOSED_O1__OBJ-AT_O1_P5-3) (kDISPOSED_O1__OBJ-AT_O1_P5-2) (kDISPOSED_O1__OBJ-AT_O1_P5-1) (kDISPOSED_O1__OBJ-AT_O1_P4-12) (kDISPOSED_O1__OBJ-AT_O1_P4-11) (kDISPOSED_O1__OBJ-AT_O1_P4-10) (kDISPOSED_O1__OBJ-AT_O1_P4-9) (kDISPOSED_O1__OBJ-AT_O1_P4-8) (kDISPOSED_O1__OBJ-AT_O1_P4-7) (kDISPOSED_O1__OBJ-AT_O1_P4-6) (kDISPOSED_O1__OBJ-AT_O1_P4-5) (kDISPOSED_O1__OBJ-AT_O1_P4-4) (kDISPOSED_O1__OBJ-AT_O1_P4-3) (kDISPOSED_O1__OBJ-AT_O1_P4-2) (kDISPOSED_O1__OBJ-AT_O1_P4-1) (kDISPOSED_O1__OBJ-AT_O1_P3-12) (kDISPOSED_O1__OBJ-AT_O1_P3-11) (kDISPOSED_O1__OBJ-AT_O1_P3-10) (kDISPOSED_O1__OBJ-AT_O1_P3-9) (kDISPOSED_O1__OBJ-AT_O1_P3-8) (kDISPOSED_O1__OBJ-AT_O1_P3-7) (kDISPOSED_O1__OBJ-AT_O1_P3-6) (kDISPOSED_O1__OBJ-AT_O1_P3-5) (kDISPOSED_O1__OBJ-AT_O1_P3-4) (kDISPOSED_O1__OBJ-AT_O1_P3-3) (kDISPOSED_O1__OBJ-AT_O1_P3-2) (kDISPOSED_O1__OBJ-AT_O1_P3-1) (kDISPOSED_O1__OBJ-AT_O1_P2-12) (kDISPOSED_O1__OBJ-AT_O1_P2-11) (kDISPOSED_O1__OBJ-AT_O1_P2-10) (kDISPOSED_O1__OBJ-AT_O1_P2-9) (kDISPOSED_O1__OBJ-AT_O1_P2-8) (kDISPOSED_O1__OBJ-AT_O1_P2-7) (kDISPOSED_O1__OBJ-AT_O1_P2-6) (kDISPOSED_O1__OBJ-AT_O1_P2-5) (kDISPOSED_O1__OBJ-AT_O1_P2-4) (kDISPOSED_O1__OBJ-AT_O1_P2-3) (kDISPOSED_O1__OBJ-AT_O1_P2-2) (kDISPOSED_O1__OBJ-AT_O1_P2-1) (kDISPOSED_O1__OBJ-AT_O1_P1-12) (kDISPOSED_O1__OBJ-AT_O1_P1-11) (kDISPOSED_O1__OBJ-AT_O1_P1-10) (kDISPOSED_O1__OBJ-AT_O1_P1-9) (kDISPOSED_O1__OBJ-AT_O1_P1-8) (kDISPOSED_O1__OBJ-AT_O1_P1-7) (kDISPOSED_O1__OBJ-AT_O1_P1-6) (kDISPOSED_O1__OBJ-AT_O1_P1-5) (kDISPOSED_O1__OBJ-AT_O1_P1-4) (kDISPOSED_O1__OBJ-AT_O1_P1-3) (kDISPOSED_O1__OBJ-AT_O1_P1-1) (kDISPOSED_O1__OBJ-AT_O1_P1-2))  (kDISPOSED_O1)) ;;MERGE. 
))
)
