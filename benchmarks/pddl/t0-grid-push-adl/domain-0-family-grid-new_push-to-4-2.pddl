(define (domain PUSH-TO)
(:requirements :negative-preconditions :conditional-effects)
	(:predicates
(kHOLDING_O1)
(kHOLDING_O1__OBJ-AT_O1_P4-4)
(kHOLDING_O1__OBJ-AT_O1_P4-3)
(kHOLDING_O1__OBJ-AT_O1_P4-2)
(kHOLDING_O1__OBJ-AT_O1_P4-1)
(kHOLDING_O1__OBJ-AT_O1_P3-4)
(kHOLDING_O1__OBJ-AT_O1_P3-3)
(kHOLDING_O1__OBJ-AT_O1_P3-2)
(kHOLDING_O1__OBJ-AT_O1_P3-1)
(kHOLDING_O1__OBJ-AT_O1_P2-4)
(kHOLDING_O1__OBJ-AT_O1_P2-3)
(kHOLDING_O1__OBJ-AT_O1_P2-2)
(kHOLDING_O1__OBJ-AT_O1_P2-1)
(kHOLDING_O1__OBJ-AT_O1_P1-4)
(kHOLDING_O1__OBJ-AT_O1_P1-3)
(kHOLDING_O1__OBJ-AT_O1_P1-1)
(kHOLDING_O1__OBJ-AT_O1_P1-2)
(kHOLDING_O2)
(kHOLDING_O2__OBJ-AT_O2_P4-4)
(kHOLDING_O2__OBJ-AT_O2_P4-3)
(kHOLDING_O2__OBJ-AT_O2_P4-2)
(kHOLDING_O2__OBJ-AT_O2_P4-1)
(kHOLDING_O2__OBJ-AT_O2_P3-4)
(kHOLDING_O2__OBJ-AT_O2_P3-3)
(kHOLDING_O2__OBJ-AT_O2_P3-2)
(kHOLDING_O2__OBJ-AT_O2_P3-1)
(kHOLDING_O2__OBJ-AT_O2_P2-4)
(kHOLDING_O2__OBJ-AT_O2_P2-3)
(kHOLDING_O2__OBJ-AT_O2_P2-2)
(kHOLDING_O2__OBJ-AT_O2_P2-1)
(kHOLDING_O2__OBJ-AT_O2_P1-4)
(kHOLDING_O2__OBJ-AT_O2_P1-3)
(kHOLDING_O2__OBJ-AT_O2_P1-1)
(kHOLDING_O2__OBJ-AT_O2_P1-2)
(kAT_P2-2)
(kAT_P1-2)
(kAT_P2-1)
(kAT_P2-3)
(kAT_P3-2)
(kAT_P1-3)
(kAT_P2-4)
(kAT_P3-3)
(kAT_P1-4)
(kAT_P3-4)
(kAT_P3-1)
(kAT_P4-2)
(kAT_P4-3)
(kAT_P4-4)
(kAT_P4-1)
(k-OBJ-AT_O1_P4-4)
(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-4)
(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-3)
(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-2)
(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-1)
(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-4)
(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-3)
(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-2)
(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-1)
(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-4)
(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-3)
(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-2)
(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-1)
(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-4)
(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-3)
(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-1)
(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-2)
(k-OBJ-AT_O2_P4-4)
(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-4)
(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-3)
(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-2)
(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-1)
(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-4)
(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-3)
(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-2)
(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-1)
(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-4)
(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-3)
(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-2)
(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-1)
(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-4)
(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-3)
(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-1)
(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-2)
(k-OBJ-AT_O2_P1-2)
(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-4)
(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-3)
(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-2)
(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-1)
(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-4)
(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-3)
(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-2)
(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-1)
(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-4)
(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-3)
(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-2)
(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-1)
(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-4)
(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-3)
(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-1)
(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-2)
(k-OBJ-AT_O2_P1-1)
(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-4)
(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-3)
(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-2)
(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-1)
(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-4)
(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-3)
(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-2)
(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-1)
(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-4)
(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-3)
(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-2)
(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-1)
(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-4)
(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-3)
(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-1)
(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-2)
(k-OBJ-AT_O1_P1-2)
(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-4)
(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-3)
(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-2)
(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-1)
(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-4)
(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-3)
(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-2)
(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-1)
(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-4)
(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-3)
(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-2)
(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-1)
(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-4)
(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-3)
(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-1)
(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-2)
(k-OBJ-AT_O1_P1-1)
(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-4)
(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-3)
(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-2)
(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-1)
(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-4)
(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-3)
(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-2)
(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-1)
(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-4)
(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-3)
(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-2)
(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-1)
(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-4)
(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-3)
(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-1)
(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-2)
(k-OBJ-AT_O2_P1-3)
(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-4)
(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-3)
(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-2)
(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-1)
(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-4)
(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-3)
(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-2)
(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-1)
(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-4)
(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-3)
(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-2)
(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-1)
(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-4)
(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-3)
(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-1)
(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-2)
(k-OBJ-AT_O1_P1-3)
(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-4)
(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-3)
(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-2)
(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-1)
(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-4)
(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-3)
(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-2)
(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-1)
(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-4)
(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-3)
(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-2)
(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-1)
(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-4)
(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-3)
(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-1)
(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-2)
(k-OBJ-AT_O2_P2-2)
(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-4)
(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-3)
(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-2)
(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-1)
(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-4)
(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-3)
(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-2)
(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-1)
(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-4)
(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-3)
(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-2)
(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-1)
(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-4)
(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-3)
(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-1)
(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-2)
(k-OBJ-AT_O1_P2-2)
(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-4)
(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-3)
(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-2)
(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-1)
(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-4)
(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-3)
(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-2)
(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-1)
(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-4)
(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-3)
(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-2)
(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-1)
(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-4)
(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-3)
(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-1)
(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-2)
(k-OBJ-AT_O2_P1-4)
(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-4)
(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-3)
(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-2)
(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-1)
(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-4)
(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-3)
(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-2)
(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-1)
(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-4)
(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-3)
(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-2)
(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-1)
(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-4)
(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-3)
(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-1)
(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-2)
(k-OBJ-AT_O1_P1-4)
(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-4)
(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-3)
(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-2)
(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-1)
(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-4)
(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-3)
(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-2)
(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-1)
(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-4)
(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-3)
(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-2)
(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-1)
(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-4)
(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-3)
(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-1)
(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-2)
(k-OBJ-AT_O2_P2-3)
(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-4)
(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-3)
(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-2)
(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-1)
(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-4)
(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-3)
(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-2)
(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-1)
(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-4)
(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-3)
(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-2)
(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-1)
(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-4)
(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-3)
(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-1)
(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-2)
(k-OBJ-AT_O1_P2-3)
(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-4)
(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-3)
(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-2)
(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-1)
(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-4)
(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-3)
(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-2)
(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-1)
(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-4)
(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-3)
(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-2)
(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-1)
(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-4)
(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-3)
(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-1)
(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-2)
(k-OBJ-AT_O2_P2-4)
(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-4)
(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-3)
(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-2)
(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-1)
(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-4)
(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-3)
(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-2)
(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-1)
(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-4)
(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-3)
(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-2)
(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-1)
(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-4)
(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-3)
(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-1)
(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-2)
(k-OBJ-AT_O1_P2-4)
(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-4)
(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-3)
(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-2)
(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-1)
(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-4)
(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-3)
(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-2)
(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-1)
(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-4)
(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-3)
(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-2)
(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-1)
(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-4)
(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-3)
(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-1)
(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-2)
(k-OBJ-AT_O2_P2-1)
(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-4)
(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-3)
(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-2)
(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-1)
(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-4)
(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-3)
(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-2)
(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-1)
(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-4)
(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-3)
(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-2)
(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-1)
(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-4)
(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-3)
(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-1)
(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-2)
(k-OBJ-AT_O1_P2-1)
(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-4)
(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-3)
(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-2)
(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-1)
(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-4)
(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-3)
(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-2)
(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-1)
(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-4)
(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-3)
(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-2)
(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-1)
(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-4)
(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-3)
(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-1)
(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-2)
(k-OBJ-AT_O2_P3-1)
(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-4)
(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-3)
(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-2)
(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-1)
(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-4)
(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-3)
(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-2)
(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-1)
(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-4)
(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-3)
(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-2)
(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-1)
(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-4)
(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-3)
(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-1)
(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-2)
(k-OBJ-AT_O1_P3-1)
(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-4)
(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-3)
(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-2)
(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-1)
(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-4)
(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-3)
(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-2)
(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-1)
(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-4)
(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-3)
(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-2)
(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-1)
(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-4)
(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-3)
(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-1)
(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-2)
(k-OBJ-AT_O2_P3-2)
(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-4)
(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-3)
(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-2)
(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-1)
(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-4)
(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-3)
(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-2)
(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-1)
(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-4)
(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-3)
(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-2)
(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-1)
(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-4)
(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-3)
(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-1)
(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-2)
(k-OBJ-AT_O1_P3-2)
(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-4)
(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-3)
(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-2)
(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-1)
(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-4)
(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-3)
(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-2)
(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-1)
(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-4)
(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-3)
(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-2)
(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-1)
(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-4)
(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-3)
(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-1)
(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-2)
(k-OBJ-AT_O2_P3-3)
(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-4)
(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-3)
(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-2)
(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-1)
(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-4)
(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-3)
(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-2)
(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-1)
(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-4)
(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-3)
(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-2)
(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-1)
(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-4)
(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-3)
(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-1)
(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-2)
(k-OBJ-AT_O1_P3-3)
(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-4)
(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-3)
(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-2)
(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-1)
(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-4)
(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-3)
(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-2)
(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-1)
(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-4)
(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-3)
(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-2)
(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-1)
(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-4)
(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-3)
(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-1)
(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-2)
(k-OBJ-AT_O2_P3-4)
(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-4)
(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-3)
(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-2)
(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-1)
(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-4)
(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-3)
(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-2)
(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-1)
(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-4)
(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-3)
(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-2)
(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-1)
(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-4)
(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-3)
(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-1)
(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-2)
(k-OBJ-AT_O1_P3-4)
(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-4)
(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-3)
(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-2)
(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-1)
(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-4)
(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-3)
(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-2)
(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-1)
(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-4)
(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-3)
(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-2)
(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-1)
(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-4)
(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-3)
(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-1)
(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-2)
(k-OBJ-AT_O2_P4-1)
(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-4)
(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-3)
(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-2)
(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-1)
(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-4)
(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-3)
(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-2)
(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-1)
(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-4)
(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-3)
(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-2)
(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-1)
(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-4)
(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-3)
(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-1)
(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-2)
(k-OBJ-AT_O1_P4-1)
(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-4)
(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-3)
(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-2)
(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-1)
(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-4)
(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-3)
(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-2)
(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-1)
(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-4)
(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-3)
(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-2)
(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-1)
(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-4)
(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-3)
(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-1)
(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-2)
(k-OBJ-AT_O2_P4-2)
(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-4)
(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-3)
(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-2)
(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-1)
(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-4)
(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-3)
(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-2)
(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-1)
(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-4)
(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-3)
(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-2)
(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-1)
(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-4)
(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-3)
(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-1)
(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-2)
(k-OBJ-AT_O1_P4-2)
(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-4)
(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-3)
(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-2)
(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-1)
(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-4)
(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-3)
(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-2)
(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-1)
(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-4)
(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-3)
(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-2)
(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-1)
(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-4)
(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-3)
(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-1)
(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-2)
(k-OBJ-AT_O2_P4-3)
(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-4)
(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-3)
(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-2)
(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-1)
(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-4)
(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-3)
(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-2)
(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-1)
(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-4)
(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-3)
(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-2)
(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-1)
(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-4)
(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-3)
(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-1)
(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-2)
(k-OBJ-AT_O1_P4-3)
(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-4)
(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-3)
(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-2)
(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-1)
(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-4)
(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-3)
(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-2)
(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-1)
(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-4)
(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-3)
(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-2)
(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-1)
(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-4)
(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-3)
(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-1)
(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-2)
(kAT_P1-1)
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
(:action PUSH_P1-1_P2-1
:parameters ()
:precondition (and (kAT_P1-1))

:effect (and  (k-OBJ-AT_O2_P1-1) (k-OBJ-AT_O1_P1-1)
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P1-1))  (not(k-OBJ-AT_O2_P2-1))) ;; Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P1-1))  (not(k-OBJ-AT_O1_P2-1))) ;; Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P1-1_P1-2
:parameters ()
:precondition (and (kAT_P1-1))

:effect (and  (k-OBJ-AT_O2_P1-1) (k-OBJ-AT_O1_P1-1)
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P1-1))  (not(k-OBJ-AT_O2_P1-2))) ;; Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P1-1))  (not(k-OBJ-AT_O1_P1-2))) ;; Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PICKUP_O2_P1-1
:parameters ()
:precondition (and (kAT_P1-1))

:effect (and  (k-OBJ-AT_O2_P1-1)
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-2) (and (kHOLDING_O2__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-4) (and (kHOLDING_O2__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-3) (and (kHOLDING_O2__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-2) (and (kHOLDING_O2__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-1) (and (kHOLDING_O2__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-4) (and (kHOLDING_O2__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-3) (and (kHOLDING_O2__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-2) (and (kHOLDING_O2__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-1) (and (kHOLDING_O2__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-4) (and (kHOLDING_O2__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-3) (and (kHOLDING_O2__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-2) (and (kHOLDING_O2__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-1) (and (kHOLDING_O2__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-4) (and (kHOLDING_O2__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-3) (and (kHOLDING_O2__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-1) (and (kHOLDING_O2__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
))
(:action PICKUP_O1_P1-1
:parameters ()
:precondition (and (kAT_P1-1))

:effect (and  (k-OBJ-AT_O1_P1-1)
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-2) (and (kHOLDING_O1__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-4) (and (kHOLDING_O1__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-3) (and (kHOLDING_O1__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-2) (and (kHOLDING_O1__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-1) (and (kHOLDING_O1__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-4) (and (kHOLDING_O1__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-3) (and (kHOLDING_O1__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-2) (and (kHOLDING_O1__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-1) (and (kHOLDING_O1__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-4) (and (kHOLDING_O1__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-3) (and (kHOLDING_O1__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-2) (and (kHOLDING_O1__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-1) (and (kHOLDING_O1__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-4) (and (kHOLDING_O1__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-3) (and (kHOLDING_O1__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-1) (and (kHOLDING_O1__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
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
(:action MOVE_P1-4_P2-4
:parameters ()
:precondition (and (kAT_P1-4))

:effect (and  (not(kAT_P1-4)) (kAT_P2-4)
))
(:action MOVE_P1-4_P1-3
:parameters ()
:precondition (and (kAT_P1-4))

:effect (and  (not(kAT_P1-4)) (kAT_P1-3)
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
(:action PUSH_P4-4_P4-3
:parameters ()
:precondition (and (kAT_P4-4))

:effect (and  (k-OBJ-AT_O2_P4-4) (k-OBJ-AT_O1_P4-4)
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-2) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-2)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P4-4))  (not(k-OBJ-AT_O1_P4-3))) ;; Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-4) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-4)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-3) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-3)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-2) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-2)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-1) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-1)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-4) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-4)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-3) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-3)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-2) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-2)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-1) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-1)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-4) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-4)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-3) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-3)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-2) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-2)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-1) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-1)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-4) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-4)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-3) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-3)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-1) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-1)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-2) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-2)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P4-4))  (not(k-OBJ-AT_O2_P4-3))) ;; Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-4) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-4)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-3) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-3)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-2) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-2)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-1) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-1)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-4) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-4)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-3) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-3)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-2) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-2)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-1) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-1)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-4) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-4)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-3) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-3)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-2) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-2)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-1) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-1)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-4) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-4)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-3) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-3)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-1) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-1)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-1))) ;; Support.  Cancellation. 
))
(:action PUSH_P4-4_P3-4
:parameters ()
:precondition (and (kAT_P4-4))

:effect (and  (k-OBJ-AT_O2_P4-4) (k-OBJ-AT_O1_P4-4)
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-2) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-2)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P4-4))  (not(k-OBJ-AT_O1_P3-4))) ;; Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-4) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-4)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-3) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-3)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-2) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-2)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-1) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-1)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-4) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-4)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-3) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-3)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-2) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-2)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-1) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-1)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-4) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-4)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-3) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-3)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-2) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-2)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-1) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-1)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-4) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-4)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-3) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-3)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-1) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-1)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-2) (and (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-2)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P4-4))  (not(k-OBJ-AT_O2_P3-4))) ;; Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-4) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-4)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-3) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-3)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-2) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-2)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-1) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-1)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-4) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-4)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-3) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-3)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-2) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-2)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-1) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-1)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-4) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-4)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-3) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-3)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-2) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-2)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-1) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-1)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-4) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-4)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-3) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-3)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-1) (and (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-1)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-1))) ;; Support.  Cancellation. 
))
(:action PUSH_P4-3_P4-4
:parameters ()
:precondition (and (kAT_P4-3))

:effect (and  (k-OBJ-AT_O1_P4-3) (k-OBJ-AT_O2_P4-3)
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P4-3))  (not(k-OBJ-AT_O2_P4-4))) ;; Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P4-3))  (not(k-OBJ-AT_O1_P4-4))) ;; Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P4-3_P4-2
:parameters ()
:precondition (and (kAT_P4-3))

:effect (and  (k-OBJ-AT_O1_P4-3) (k-OBJ-AT_O2_P4-3)
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P4-3))  (not(k-OBJ-AT_O2_P4-2))) ;; Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P4-3))  (not(k-OBJ-AT_O1_P4-2))) ;; Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P4-3_P3-3
:parameters ()
:precondition (and (kAT_P4-3))

:effect (and  (k-OBJ-AT_O1_P4-3) (k-OBJ-AT_O2_P4-3)
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P4-3))  (not(k-OBJ-AT_O2_P3-3))) ;; Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P4-3))  (not(k-OBJ-AT_O1_P3-3))) ;; Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P4-2_P4-3
:parameters ()
:precondition (and (kAT_P4-2))

:effect (and  (k-OBJ-AT_O1_P4-2) (k-OBJ-AT_O2_P4-2)
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P4-2))  (not(k-OBJ-AT_O2_P4-3))) ;; Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P4-2))  (not(k-OBJ-AT_O1_P4-3))) ;; Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P4-2_P4-1
:parameters ()
:precondition (and (kAT_P4-2))

:effect (and  (k-OBJ-AT_O1_P4-2) (k-OBJ-AT_O2_P4-2)
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P4-2))  (not(k-OBJ-AT_O2_P4-1))) ;; Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P4-2))  (not(k-OBJ-AT_O1_P4-1))) ;; Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P4-2_P3-2
:parameters ()
:precondition (and (kAT_P4-2))

:effect (and  (k-OBJ-AT_O1_P4-2) (k-OBJ-AT_O2_P4-2)
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P4-2))  (not(k-OBJ-AT_O2_P3-2))) ;; Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P4-2))  (not(k-OBJ-AT_O1_P3-2))) ;; Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P4-1_P4-2
:parameters ()
:precondition (and (kAT_P4-1))

:effect (and  (k-OBJ-AT_O1_P4-1) (k-OBJ-AT_O2_P4-1)
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P4-1))  (not(k-OBJ-AT_O2_P4-2))) ;; Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P4-1))  (not(k-OBJ-AT_O1_P4-2))) ;; Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P4-1_P3-1
:parameters ()
:precondition (and (kAT_P4-1))

:effect (and  (k-OBJ-AT_O1_P4-1) (k-OBJ-AT_O2_P4-1)
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P4-1))  (not(k-OBJ-AT_O2_P3-1))) ;; Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P4-1))  (not(k-OBJ-AT_O1_P3-1))) ;; Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P3-4_P4-4
:parameters ()
:precondition (and (kAT_P3-4))

:effect (and  (k-OBJ-AT_O1_P3-4) (k-OBJ-AT_O2_P3-4)
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P3-4))  (not(k-OBJ-AT_O2_P4-4))) ;; Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P3-4))  (not(k-OBJ-AT_O1_P4-4))) ;; Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P3-4_P3-3
:parameters ()
:precondition (and (kAT_P3-4))

:effect (and  (k-OBJ-AT_O1_P3-4) (k-OBJ-AT_O2_P3-4)
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P3-4))  (not(k-OBJ-AT_O2_P3-3))) ;; Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P3-4))  (not(k-OBJ-AT_O1_P3-3))) ;; Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P3-4_P2-4
:parameters ()
:precondition (and (kAT_P3-4))

:effect (and  (k-OBJ-AT_O1_P3-4) (k-OBJ-AT_O2_P3-4)
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P3-4))  (not(k-OBJ-AT_O2_P2-4))) ;; Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P3-4))  (not(k-OBJ-AT_O1_P2-4))) ;; Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P3-3_P4-3
:parameters ()
:precondition (and (kAT_P3-3))

:effect (and  (k-OBJ-AT_O1_P3-3) (k-OBJ-AT_O2_P3-3)
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-2) (and (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-2)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P3-3))  (not(k-OBJ-AT_O2_P4-3))) ;; Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-4) (and (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-4)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-3) (and (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-3)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-2) (and (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-2)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-1) (and (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-1)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-4) (and (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-4)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-3) (and (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-3)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-2) (and (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-2)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-1) (and (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-1)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-4) (and (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-4)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-3) (and (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-3)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-2) (and (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-2)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-1) (and (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-1)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-4) (and (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-4)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-3) (and (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-3)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-1) (and (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-1)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-2) (and (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-2)) (kOBJ-AT_O2_P4-3__OBJ-AT_O2_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P3-3))  (not(k-OBJ-AT_O1_P4-3))) ;; Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-4) (and (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-4)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-3) (and (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-3)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-2) (and (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-2)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-1) (and (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-1)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-4) (and (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-4)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-3) (and (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-3)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-2) (and (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-2)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-1) (and (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-1)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-4) (and (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-4)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-3) (and (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-3)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-2) (and (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-2)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-1) (and (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-1)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-4) (and (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-4)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-3) (and (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-3)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-1) (and (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-1)) (kOBJ-AT_O1_P4-3__OBJ-AT_O1_P1-1))) ;; Support.  Cancellation. 
))
(:action PUSH_P3-3_P3-4
:parameters ()
:precondition (and (kAT_P3-3))

:effect (and  (k-OBJ-AT_O1_P3-3) (k-OBJ-AT_O2_P3-3)
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P3-3))  (not(k-OBJ-AT_O2_P3-4))) ;; Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P3-3))  (not(k-OBJ-AT_O1_P3-4))) ;; Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P3-3_P3-2
:parameters ()
:precondition (and (kAT_P3-3))

:effect (and  (k-OBJ-AT_O1_P3-3) (k-OBJ-AT_O2_P3-3)
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P3-3))  (not(k-OBJ-AT_O2_P3-2))) ;; Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P3-3))  (not(k-OBJ-AT_O1_P3-2))) ;; Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P3-3_P2-3
:parameters ()
:precondition (and (kAT_P3-3))

:effect (and  (k-OBJ-AT_O1_P3-3) (k-OBJ-AT_O2_P3-3)
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P3-3))  (not(k-OBJ-AT_O2_P2-3))) ;; Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P3-3))  (not(k-OBJ-AT_O1_P2-3))) ;; Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P3-2_P4-2
:parameters ()
:precondition (and (kAT_P3-2))

:effect (and  (k-OBJ-AT_O1_P3-2) (k-OBJ-AT_O2_P3-2)
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-2) (and (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-2)) (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P3-2))  (not(k-OBJ-AT_O2_P4-2))) ;; Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-4) (and (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-4)) (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-3) (and (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-3)) (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-2) (and (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-2)) (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-1) (and (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-1)) (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-4) (and (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-4)) (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-3) (and (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-3)) (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-2) (and (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-2)) (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-1) (and (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-1)) (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-4) (and (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-4)) (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-3) (and (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-3)) (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-2) (and (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-2)) (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-1) (and (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-1)) (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-4) (and (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-4)) (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-3) (and (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-3)) (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-1) (and (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-1)) (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-2) (and (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-2)) (kOBJ-AT_O2_P4-2__OBJ-AT_O2_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P3-2))  (not(k-OBJ-AT_O1_P4-2))) ;; Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-4) (and (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-4)) (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-3) (and (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-3)) (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-2) (and (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-2)) (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-1) (and (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-1)) (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-4) (and (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-4)) (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-3) (and (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-3)) (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-2) (and (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-2)) (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-1) (and (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-1)) (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-4) (and (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-4)) (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-3) (and (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-3)) (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-2) (and (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-2)) (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-1) (and (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-1)) (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-4) (and (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-4)) (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-3) (and (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-3)) (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-1) (and (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-1)) (kOBJ-AT_O1_P4-2__OBJ-AT_O1_P1-1))) ;; Support.  Cancellation. 
))
(:action PUSH_P3-2_P3-3
:parameters ()
:precondition (and (kAT_P3-2))

:effect (and  (k-OBJ-AT_O1_P3-2) (k-OBJ-AT_O2_P3-2)
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P3-2))  (not(k-OBJ-AT_O2_P3-3))) ;; Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P3-2))  (not(k-OBJ-AT_O1_P3-3))) ;; Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P3-2_P3-1
:parameters ()
:precondition (and (kAT_P3-2))

:effect (and  (k-OBJ-AT_O1_P3-2) (k-OBJ-AT_O2_P3-2)
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P3-2))  (not(k-OBJ-AT_O2_P3-1))) ;; Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P3-2))  (not(k-OBJ-AT_O1_P3-1))) ;; Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P3-2_P2-2
:parameters ()
:precondition (and (kAT_P3-2))

:effect (and  (k-OBJ-AT_O1_P3-2) (k-OBJ-AT_O2_P3-2)
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P3-2))  (not(k-OBJ-AT_O2_P2-2))) ;; Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P3-2))  (not(k-OBJ-AT_O1_P2-2))) ;; Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P3-1_P4-1
:parameters ()
:precondition (and (kAT_P3-1))

:effect (and  (k-OBJ-AT_O1_P3-1) (k-OBJ-AT_O2_P3-1)
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-2) (and (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-2)) (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P3-1))  (not(k-OBJ-AT_O2_P4-1))) ;; Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-4) (and (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-4)) (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-3) (and (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-3)) (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-2) (and (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-2)) (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-1) (and (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-1)) (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-4) (and (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-4)) (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-3) (and (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-3)) (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-2) (and (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-2)) (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-1) (and (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-1)) (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-4) (and (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-4)) (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-3) (and (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-3)) (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-2) (and (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-2)) (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-1) (and (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-1)) (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-4) (and (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-4)) (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-3) (and (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-3)) (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-1) (and (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-1)) (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-2) (and (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-2)) (kOBJ-AT_O2_P4-1__OBJ-AT_O2_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P3-1))  (not(k-OBJ-AT_O1_P4-1))) ;; Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-4) (and (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-4)) (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-3) (and (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-3)) (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-2) (and (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-2)) (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-1) (and (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-1)) (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-4) (and (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-4)) (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-3) (and (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-3)) (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-2) (and (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-2)) (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-1) (and (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-1)) (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-4) (and (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-4)) (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-3) (and (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-3)) (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-2) (and (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-2)) (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-1) (and (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-1)) (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-4) (and (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-4)) (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-3) (and (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-3)) (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-1) (and (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-1)) (kOBJ-AT_O1_P4-1__OBJ-AT_O1_P1-1))) ;; Support.  Cancellation. 
))
(:action PUSH_P3-1_P3-2
:parameters ()
:precondition (and (kAT_P3-1))

:effect (and  (k-OBJ-AT_O1_P3-1) (k-OBJ-AT_O2_P3-1)
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P3-1))  (not(k-OBJ-AT_O2_P3-2))) ;; Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P3-1))  (not(k-OBJ-AT_O1_P3-2))) ;; Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P3-1_P2-1
:parameters ()
:precondition (and (kAT_P3-1))

:effect (and  (k-OBJ-AT_O1_P3-1) (k-OBJ-AT_O2_P3-1)
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P3-1))  (not(k-OBJ-AT_O2_P2-1))) ;; Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P3-1))  (not(k-OBJ-AT_O1_P2-1))) ;; Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P2-4_P3-4
:parameters ()
:precondition (and (kAT_P2-4))

:effect (and  (k-OBJ-AT_O1_P2-4) (k-OBJ-AT_O2_P2-4)
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-2) (and (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-2)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P2-4))  (not(k-OBJ-AT_O2_P3-4))) ;; Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-4) (and (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-4)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-3) (and (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-3)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-2) (and (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-2)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-1) (and (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-1)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-4) (and (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-4)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-3) (and (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-3)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-2) (and (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-2)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-1) (and (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-1)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-4) (and (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-4)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-3) (and (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-3)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-2) (and (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-2)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-1) (and (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-1)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-4) (and (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-4)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-3) (and (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-3)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-1) (and (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-1)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-2) (and (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-2)) (kOBJ-AT_O2_P3-4__OBJ-AT_O2_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P2-4))  (not(k-OBJ-AT_O1_P3-4))) ;; Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-4) (and (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-4)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-3) (and (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-3)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-2) (and (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-2)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-1) (and (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-1)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-4) (and (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-4)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-3) (and (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-3)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-2) (and (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-2)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-1) (and (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-1)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-4) (and (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-4)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-3) (and (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-3)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-2) (and (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-2)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-1) (and (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-1)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-4) (and (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-4)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-3) (and (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-3)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-1) (and (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-1)) (kOBJ-AT_O1_P3-4__OBJ-AT_O1_P1-1))) ;; Support.  Cancellation. 
))
(:action PUSH_P2-4_P2-3
:parameters ()
:precondition (and (kAT_P2-4))

:effect (and  (k-OBJ-AT_O1_P2-4) (k-OBJ-AT_O2_P2-4)
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P2-4))  (not(k-OBJ-AT_O2_P2-3))) ;; Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P2-4))  (not(k-OBJ-AT_O1_P2-3))) ;; Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P2-4_P1-4
:parameters ()
:precondition (and (kAT_P2-4))

:effect (and  (k-OBJ-AT_O1_P2-4) (k-OBJ-AT_O2_P2-4)
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P2-4))  (not(k-OBJ-AT_O2_P1-4))) ;; Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P2-4))  (not(k-OBJ-AT_O1_P1-4))) ;; Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P2-3_P3-3
:parameters ()
:precondition (and (kAT_P2-3))

:effect (and  (k-OBJ-AT_O1_P2-3) (k-OBJ-AT_O2_P2-3)
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-2) (and (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-2)) (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P2-3))  (not(k-OBJ-AT_O2_P3-3))) ;; Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-4) (and (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-4)) (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-3) (and (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-3)) (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-2) (and (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-2)) (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-1) (and (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-1)) (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-4) (and (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-4)) (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-3) (and (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-3)) (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-2) (and (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-2)) (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-1) (and (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-1)) (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-4) (and (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-4)) (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-3) (and (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-3)) (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-2) (and (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-2)) (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-1) (and (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-1)) (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-4) (and (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-4)) (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-3) (and (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-3)) (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-1) (and (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-1)) (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-2) (and (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-2)) (kOBJ-AT_O2_P3-3__OBJ-AT_O2_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P2-3))  (not(k-OBJ-AT_O1_P3-3))) ;; Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-4) (and (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-4)) (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-3) (and (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-3)) (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-2) (and (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-2)) (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-1) (and (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-1)) (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-4) (and (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-4)) (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-3) (and (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-3)) (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-2) (and (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-2)) (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-1) (and (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-1)) (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-4) (and (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-4)) (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-3) (and (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-3)) (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-2) (and (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-2)) (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-1) (and (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-1)) (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-4) (and (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-4)) (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-3) (and (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-3)) (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-1) (and (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-1)) (kOBJ-AT_O1_P3-3__OBJ-AT_O1_P1-1))) ;; Support.  Cancellation. 
))
(:action PUSH_P2-3_P2-4
:parameters ()
:precondition (and (kAT_P2-3))

:effect (and  (k-OBJ-AT_O1_P2-3) (k-OBJ-AT_O2_P2-3)
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P2-3))  (not(k-OBJ-AT_O2_P2-4))) ;; Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P2-3))  (not(k-OBJ-AT_O1_P2-4))) ;; Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P2-3_P2-2
:parameters ()
:precondition (and (kAT_P2-3))

:effect (and  (k-OBJ-AT_O1_P2-3) (k-OBJ-AT_O2_P2-3)
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P2-3))  (not(k-OBJ-AT_O2_P2-2))) ;; Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P2-3))  (not(k-OBJ-AT_O1_P2-2))) ;; Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P2-3_P1-3
:parameters ()
:precondition (and (kAT_P2-3))

:effect (and  (k-OBJ-AT_O1_P2-3) (k-OBJ-AT_O2_P2-3)
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P2-3))  (not(k-OBJ-AT_O2_P1-3))) ;; Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P2-3))  (not(k-OBJ-AT_O1_P1-3))) ;; Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P2-2_P3-2
:parameters ()
:precondition (and (kAT_P2-2))

:effect (and  (k-OBJ-AT_O1_P2-2) (k-OBJ-AT_O2_P2-2)
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-2) (and (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-2)) (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P2-2))  (not(k-OBJ-AT_O2_P3-2))) ;; Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-4) (and (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-4)) (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-3) (and (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-3)) (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-2) (and (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-2)) (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-1) (and (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-1)) (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-4) (and (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-4)) (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-3) (and (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-3)) (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-2) (and (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-2)) (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-1) (and (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-1)) (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-4) (and (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-4)) (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-3) (and (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-3)) (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-2) (and (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-2)) (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-1) (and (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-1)) (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-4) (and (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-4)) (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-3) (and (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-3)) (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-1) (and (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-1)) (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-2) (and (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-2)) (kOBJ-AT_O2_P3-2__OBJ-AT_O2_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P2-2))  (not(k-OBJ-AT_O1_P3-2))) ;; Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-4) (and (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-4)) (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-3) (and (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-3)) (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-2) (and (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-2)) (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-1) (and (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-1)) (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-4) (and (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-4)) (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-3) (and (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-3)) (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-2) (and (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-2)) (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-1) (and (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-1)) (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-4) (and (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-4)) (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-3) (and (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-3)) (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-2) (and (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-2)) (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-1) (and (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-1)) (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-4) (and (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-4)) (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-3) (and (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-3)) (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-1) (and (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-1)) (kOBJ-AT_O1_P3-2__OBJ-AT_O1_P1-1))) ;; Support.  Cancellation. 
))
(:action PUSH_P2-2_P2-3
:parameters ()
:precondition (and (kAT_P2-2))

:effect (and  (k-OBJ-AT_O1_P2-2) (k-OBJ-AT_O2_P2-2)
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P2-2))  (not(k-OBJ-AT_O2_P2-3))) ;; Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P2-2))  (not(k-OBJ-AT_O1_P2-3))) ;; Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P2-2_P2-1
:parameters ()
:precondition (and (kAT_P2-2))

:effect (and  (k-OBJ-AT_O1_P2-2) (k-OBJ-AT_O2_P2-2)
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P2-2))  (not(k-OBJ-AT_O2_P2-1))) ;; Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P2-2))  (not(k-OBJ-AT_O1_P2-1))) ;; Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P2-2_P1-2
:parameters ()
:precondition (and (kAT_P2-2))

:effect (and  (k-OBJ-AT_O1_P2-2) (k-OBJ-AT_O2_P2-2)
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P2-2))  (not(k-OBJ-AT_O2_P1-2))) ;; Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P2-2))  (not(k-OBJ-AT_O1_P1-2))) ;; Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P2-1_P3-1
:parameters ()
:precondition (and (kAT_P2-1))

:effect (and  (k-OBJ-AT_O1_P2-1) (k-OBJ-AT_O2_P2-1)
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-2) (and (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-2)) (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P2-1))  (not(k-OBJ-AT_O2_P3-1))) ;; Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-4) (and (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-4)) (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-3) (and (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-3)) (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-2) (and (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-2)) (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-1) (and (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-1)) (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-4) (and (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-4)) (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-3) (and (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-3)) (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-2) (and (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-2)) (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-1) (and (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-1)) (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-4) (and (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-4)) (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-3) (and (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-3)) (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-2) (and (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-2)) (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-1) (and (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-1)) (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-4) (and (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-4)) (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-3) (and (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-3)) (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-1) (and (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-1)) (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-2) (and (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-2)) (kOBJ-AT_O2_P3-1__OBJ-AT_O2_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P2-1))  (not(k-OBJ-AT_O1_P3-1))) ;; Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-4) (and (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-4)) (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-3) (and (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-3)) (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-2) (and (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-2)) (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-1) (and (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-1)) (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-4) (and (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-4)) (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-3) (and (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-3)) (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-2) (and (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-2)) (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-1) (and (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-1)) (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-4) (and (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-4)) (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-3) (and (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-3)) (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-2) (and (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-2)) (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-1) (and (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-1)) (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-4) (and (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-4)) (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-3) (and (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-3)) (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-1) (and (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-1)) (kOBJ-AT_O1_P3-1__OBJ-AT_O1_P1-1))) ;; Support.  Cancellation. 
))
(:action PUSH_P2-1_P2-2
:parameters ()
:precondition (and (kAT_P2-1))

:effect (and  (k-OBJ-AT_O1_P2-1) (k-OBJ-AT_O2_P2-1)
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P2-1))  (not(k-OBJ-AT_O2_P2-2))) ;; Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P2-1))  (not(k-OBJ-AT_O1_P2-2))) ;; Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P2-1_P1-1
:parameters ()
:precondition (and (kAT_P2-1))

:effect (and  (k-OBJ-AT_O1_P2-1) (k-OBJ-AT_O2_P2-1)
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P2-1))  (not(k-OBJ-AT_O2_P1-1))) ;; Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P2-1__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P2-1))  (not(k-OBJ-AT_O1_P1-1))) ;; Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P2-1__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P1-4_P2-4
:parameters ()
:precondition (and (kAT_P1-4))

:effect (and  (k-OBJ-AT_O1_P1-4) (k-OBJ-AT_O2_P1-4)
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-2) (and (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-2)) (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P1-4))  (not(k-OBJ-AT_O2_P2-4))) ;; Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-4) (and (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-4)) (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-3) (and (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-3)) (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-2) (and (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-2)) (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-1) (and (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-1)) (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-4) (and (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-4)) (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-3) (and (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-3)) (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-2) (and (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-2)) (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-1) (and (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-1)) (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-4) (and (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-4)) (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-3) (and (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-3)) (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-2) (and (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-2)) (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-1) (and (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-1)) (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-4) (and (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-4)) (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-3) (and (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-3)) (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-1) (and (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-1)) (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-2) (and (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-2)) (kOBJ-AT_O2_P2-4__OBJ-AT_O2_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P1-4))  (not(k-OBJ-AT_O1_P2-4))) ;; Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-4) (and (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-4)) (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-3) (and (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-3)) (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-2) (and (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-2)) (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-1) (and (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-1)) (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-4) (and (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-4)) (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-3) (and (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-3)) (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-2) (and (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-2)) (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-1) (and (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-1)) (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-4) (and (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-4)) (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-3) (and (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-3)) (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-2) (and (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-2)) (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-1) (and (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-1)) (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-4) (and (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-4)) (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-3) (and (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-3)) (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-1) (and (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-1)) (kOBJ-AT_O1_P2-4__OBJ-AT_O1_P1-1))) ;; Support.  Cancellation. 
))
(:action PUSH_P1-4_P1-3
:parameters ()
:precondition (and (kAT_P1-4))

:effect (and  (k-OBJ-AT_O1_P1-4) (k-OBJ-AT_O2_P1-4)
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P1-4))  (not(k-OBJ-AT_O2_P1-3))) ;; Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P1-4))  (not(k-OBJ-AT_O1_P1-3))) ;; Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P1-3_P2-3
:parameters ()
:precondition (and (kAT_P1-3))

:effect (and  (k-OBJ-AT_O1_P1-3) (k-OBJ-AT_O2_P1-3)
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-2) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-2)) (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P1-3))  (not(k-OBJ-AT_O2_P2-3))) ;; Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-4) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-4)) (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-3) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-3)) (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-2) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-2)) (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-1) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-1)) (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-4) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-4)) (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-3) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-3)) (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-2) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-2)) (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-1) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-1)) (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-4) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-4)) (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-3) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-3)) (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-2) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-2)) (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-1) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-1)) (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-4) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-4)) (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-3) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-3)) (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-1) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-1)) (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-2) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-2)) (kOBJ-AT_O2_P2-3__OBJ-AT_O2_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P1-3))  (not(k-OBJ-AT_O1_P2-3))) ;; Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-4) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-4)) (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-3) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-3)) (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-2) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-2)) (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-1) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-1)) (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-4) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-4)) (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-3) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-3)) (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-2) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-2)) (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-1) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-1)) (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-4) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-4)) (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-3) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-3)) (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-2) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-2)) (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-1) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-1)) (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-4) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-4)) (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-3) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-3)) (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-1) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-1)) (kOBJ-AT_O1_P2-3__OBJ-AT_O1_P1-1))) ;; Support.  Cancellation. 
))
(:action PUSH_P1-3_P1-4
:parameters ()
:precondition (and (kAT_P1-3))

:effect (and  (k-OBJ-AT_O1_P1-3) (k-OBJ-AT_O2_P1-3)
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-2) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-2)) (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P1-3))  (not(k-OBJ-AT_O2_P1-4))) ;; Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-4) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-4)) (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-3) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-3)) (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-2) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-2)) (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-1) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-1)) (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-4) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-4)) (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-3) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-3)) (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-2) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-2)) (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-1) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-1)) (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-4) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-4)) (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-3) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-3)) (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-2) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-2)) (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-1) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-1)) (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-4) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-4)) (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-3) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-3)) (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-1) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-1)) (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-2) (and (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-2)) (kOBJ-AT_O2_P1-4__OBJ-AT_O2_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P1-3))  (not(k-OBJ-AT_O1_P1-4))) ;; Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-4) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-4)) (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-3) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-3)) (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-2) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-2)) (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-1) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-1)) (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-4) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-4)) (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-3) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-3)) (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-2) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-2)) (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-1) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-1)) (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-4) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-4)) (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-3) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-3)) (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-2) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-2)) (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-1) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-1)) (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-4) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-4)) (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-3) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-3)) (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-1) (and (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-1)) (kOBJ-AT_O1_P1-4__OBJ-AT_O1_P1-1))) ;; Support.  Cancellation. 
))
(:action PUSH_P1-3_P1-2
:parameters ()
:precondition (and (kAT_P1-3))

:effect (and  (k-OBJ-AT_O1_P1-3) (k-OBJ-AT_O2_P1-3)
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-2) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P1-3))  (not(k-OBJ-AT_O2_P1-2))) ;; Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-4) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-3) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-2) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-1) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-4) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-3) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-2) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-1) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-4) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-3) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-2) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-1) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-4) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-3) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-1) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-2) (and (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P1-3))  (not(k-OBJ-AT_O1_P1-2))) ;; Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-4) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-3) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-2) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-1) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-4) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-3) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-2) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-1) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-4) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-3) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-2) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-1) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-4) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-3) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-1) (and (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
))
(:action PUSH_P1-2_P2-2
:parameters ()
:precondition (and (kAT_P1-2))

:effect (and  (k-OBJ-AT_O1_P1-2) (k-OBJ-AT_O2_P1-2)
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-2) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-2)) (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P1-2))  (not(k-OBJ-AT_O2_P2-2))) ;; Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-4) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-4)) (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-3) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-3)) (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-2) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-2)) (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-1) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-1)) (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-4) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-4)) (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-3) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-3)) (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-2) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-2)) (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-1) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-1)) (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-4) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-4)) (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-3) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-3)) (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-2) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-2)) (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-1) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-1)) (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-4) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-4)) (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-3) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-3)) (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-1) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-1)) (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-2) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-2)) (kOBJ-AT_O2_P2-2__OBJ-AT_O2_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P1-2))  (not(k-OBJ-AT_O1_P2-2))) ;; Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-4) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-4)) (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-3) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-3)) (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-2) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-2)) (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-1) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-1)) (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-4) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-4)) (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-3) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-3)) (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-2) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-2)) (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-1) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-1)) (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-4) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-4)) (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-3) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-3)) (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-2) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-2)) (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-1) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-1)) (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-4) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-4)) (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-3) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-3)) (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-1) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-1)) (kOBJ-AT_O1_P2-2__OBJ-AT_O1_P1-1))) ;; Support.  Cancellation. 
))
(:action PUSH_P1-2_P1-3
:parameters ()
:precondition (and (kAT_P1-2))

:effect (and  (k-OBJ-AT_O1_P1-2) (k-OBJ-AT_O2_P1-2)
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-2) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-2)) (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P1-2))  (not(k-OBJ-AT_O2_P1-3))) ;; Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-4) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-4)) (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-3) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-3)) (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-2) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-2)) (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-1) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-1)) (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-4) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-4)) (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-3) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-3)) (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-2) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-2)) (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-1) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-1)) (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-4) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-4)) (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-3) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-3)) (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-2) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-2)) (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-1) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-1)) (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-4) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-4)) (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-3) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-3)) (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-1) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-1)) (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-2) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-2)) (kOBJ-AT_O2_P1-3__OBJ-AT_O2_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P1-2))  (not(k-OBJ-AT_O1_P1-3))) ;; Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-4) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-4)) (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-3) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-3)) (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-2) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-2)) (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-1) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-1)) (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-4) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-4)) (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-3) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-3)) (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-2) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-2)) (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-1) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-1)) (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-4) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-4)) (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-3) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-3)) (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-2) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-2)) (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-1) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-1)) (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-4) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-4)) (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-3) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-3)) (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-1) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-1)) (kOBJ-AT_O1_P1-3__OBJ-AT_O1_P1-1))) ;; Support.  Cancellation. 
))
(:action PUSH_P1-2_P1-1
:parameters ()
:precondition (and (kAT_P1-2))

:effect (and  (k-OBJ-AT_O1_P1-2) (k-OBJ-AT_O2_P1-2)
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-2) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-2)) (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O2_P1-2))  (not(k-OBJ-AT_O2_P1-1))) ;; Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-4) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-4)) (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-3) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-3)) (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-2) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-2)) (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-1) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P4-1)) (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-4) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-4)) (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-3) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-3)) (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-2) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-2)) (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-1) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P3-1)) (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-4) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-4)) (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-3) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-3)) (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-2) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-2)) (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-1) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P2-1)) (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-4) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-4)) (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-3) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-3)) (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-1) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-1)) (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-2) (and (not(kOBJ-AT_O2_P1-2__OBJ-AT_O2_P1-2)) (kOBJ-AT_O2_P1-1__OBJ-AT_O2_P1-2))) ;; Support.  Cancellation. 
(when (not(k-OBJ-AT_O1_P1-2))  (not(k-OBJ-AT_O1_P1-1))) ;; Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-4) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-4)) (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-3) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-3)) (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-2) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-2)) (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-1) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P4-1)) (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P4-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-4) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-4)) (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-3) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-3)) (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-2) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-2)) (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-1) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P3-1)) (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P3-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-4) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-4)) (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-3) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-3)) (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-2) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-2)) (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-2))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-1) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P2-1)) (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P2-1))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-4) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-4)) (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-4))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-3) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-3)) (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-3))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-1) (and (not(kOBJ-AT_O1_P1-2__OBJ-AT_O1_P1-1)) (kOBJ-AT_O1_P1-1__OBJ-AT_O1_P1-1))) ;; Support.  Cancellation. 
))
(:action PICKUP_O2_P4-4
:parameters ()
:precondition (and (kAT_P4-4))

:effect (and  (k-OBJ-AT_O2_P4-4)
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-2) (and (kHOLDING_O2__OBJ-AT_O2_P1-2) (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-4) (and (kHOLDING_O2__OBJ-AT_O2_P4-4) (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-3) (and (kHOLDING_O2__OBJ-AT_O2_P4-3) (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-2) (and (kHOLDING_O2__OBJ-AT_O2_P4-2) (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-1) (and (kHOLDING_O2__OBJ-AT_O2_P4-1) (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-4) (and (kHOLDING_O2__OBJ-AT_O2_P3-4) (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-3) (and (kHOLDING_O2__OBJ-AT_O2_P3-3) (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-2) (and (kHOLDING_O2__OBJ-AT_O2_P3-2) (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-1) (and (kHOLDING_O2__OBJ-AT_O2_P3-1) (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-4) (and (kHOLDING_O2__OBJ-AT_O2_P2-4) (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-3) (and (kHOLDING_O2__OBJ-AT_O2_P2-3) (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-2) (and (kHOLDING_O2__OBJ-AT_O2_P2-2) (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-1) (and (kHOLDING_O2__OBJ-AT_O2_P2-1) (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-4) (and (kHOLDING_O2__OBJ-AT_O2_P1-4) (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-3) (and (kHOLDING_O2__OBJ-AT_O2_P1-3) (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-1) (and (kHOLDING_O2__OBJ-AT_O2_P1-1) (not(kOBJ-AT_O2_P4-4__OBJ-AT_O2_P1-1)))) ;; Support.  Cancellation. 
))
(:action PICKUP_O1_P4-4
:parameters ()
:precondition (and (kAT_P4-4))

:effect (and  (k-OBJ-AT_O1_P4-4)
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-2) (and (kHOLDING_O1__OBJ-AT_O1_P1-2) (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-4) (and (kHOLDING_O1__OBJ-AT_O1_P4-4) (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-3) (and (kHOLDING_O1__OBJ-AT_O1_P4-3) (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-2) (and (kHOLDING_O1__OBJ-AT_O1_P4-2) (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-1) (and (kHOLDING_O1__OBJ-AT_O1_P4-1) (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P4-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-4) (and (kHOLDING_O1__OBJ-AT_O1_P3-4) (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-3) (and (kHOLDING_O1__OBJ-AT_O1_P3-3) (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-2) (and (kHOLDING_O1__OBJ-AT_O1_P3-2) (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-1) (and (kHOLDING_O1__OBJ-AT_O1_P3-1) (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P3-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-4) (and (kHOLDING_O1__OBJ-AT_O1_P2-4) (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-3) (and (kHOLDING_O1__OBJ-AT_O1_P2-3) (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-2) (and (kHOLDING_O1__OBJ-AT_O1_P2-2) (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-2)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-1) (and (kHOLDING_O1__OBJ-AT_O1_P2-1) (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P2-1)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-4) (and (kHOLDING_O1__OBJ-AT_O1_P1-4) (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-4)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-3) (and (kHOLDING_O1__OBJ-AT_O1_P1-3) (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-3)))) ;; Support.  Cancellation. 
(when (kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-1) (and (kHOLDING_O1__OBJ-AT_O1_P1-1) (not(kOBJ-AT_O1_P4-4__OBJ-AT_O1_P1-1)))) ;; Support.  Cancellation. 
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
(:action MOVE_P3-4_P4-4
:parameters ()
:precondition (and (kAT_P3-4))

:effect (and  (not(kAT_P3-4)) (kAT_P4-4)
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
(:action MOVE_P2-4_P3-4
:parameters ()
:precondition (and (kAT_P2-4))

:effect (and  (not(kAT_P2-4)) (kAT_P3-4)
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
(:action MERGE_HOLDING_O2
:parameters ()
:precondition (and)

:effect (and 
(when(and (kHOLDING_O2__OBJ-AT_O2_P4-4) (kHOLDING_O2__OBJ-AT_O2_P4-3) (kHOLDING_O2__OBJ-AT_O2_P4-2) (kHOLDING_O2__OBJ-AT_O2_P4-1) (kHOLDING_O2__OBJ-AT_O2_P3-4) (kHOLDING_O2__OBJ-AT_O2_P3-3) (kHOLDING_O2__OBJ-AT_O2_P3-2) (kHOLDING_O2__OBJ-AT_O2_P3-1) (kHOLDING_O2__OBJ-AT_O2_P2-4) (kHOLDING_O2__OBJ-AT_O2_P2-3) (kHOLDING_O2__OBJ-AT_O2_P2-2) (kHOLDING_O2__OBJ-AT_O2_P2-1) (kHOLDING_O2__OBJ-AT_O2_P1-4) (kHOLDING_O2__OBJ-AT_O2_P1-3) (kHOLDING_O2__OBJ-AT_O2_P1-1) (kHOLDING_O2__OBJ-AT_O2_P1-2))  (kHOLDING_O2)) ;;MERGE. 
))
(:action MERGE_HOLDING_O1
:parameters ()
:precondition (and)

:effect (and 
(when(and (kHOLDING_O1__OBJ-AT_O1_P4-4) (kHOLDING_O1__OBJ-AT_O1_P4-3) (kHOLDING_O1__OBJ-AT_O1_P4-2) (kHOLDING_O1__OBJ-AT_O1_P4-1) (kHOLDING_O1__OBJ-AT_O1_P3-4) (kHOLDING_O1__OBJ-AT_O1_P3-3) (kHOLDING_O1__OBJ-AT_O1_P3-2) (kHOLDING_O1__OBJ-AT_O1_P3-1) (kHOLDING_O1__OBJ-AT_O1_P2-4) (kHOLDING_O1__OBJ-AT_O1_P2-3) (kHOLDING_O1__OBJ-AT_O1_P2-2) (kHOLDING_O1__OBJ-AT_O1_P2-1) (kHOLDING_O1__OBJ-AT_O1_P1-4) (kHOLDING_O1__OBJ-AT_O1_P1-3) (kHOLDING_O1__OBJ-AT_O1_P1-1) (kHOLDING_O1__OBJ-AT_O1_P1-2))  (kHOLDING_O1)) ;;MERGE. 
))
)
