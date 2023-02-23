(define (problem freecell-f4-c6-s4-i5-012-112-212-312
)(:domain freecell)
(:objects 
          C0 CA C2 C3 C4 C5 C6 C7 C8 C9 C10 C11 C12
          H0 HA H2 H3 H4 H5 H6 H7 H8 H9 H10 H11 H12
          S0 SA S2 S3 S4 S5 S6 S7 S8 S9 S10 S11 S12
          D0 DA D2 D3 D4 D5 D6 D7 D8 D9 D10 D11 D12
 - card
          CELLN0 CELLN1 CELLN2 CELLN3 CELLN4 
 - cellnum
          COLN0 COLN1 COLN2 COLN3 COLN4 COLN5 COLN6 
 - colnum
          N0 N1 N2 N3 N4 N5 N6 N7 N8 N9 N10 N11 N12 
 - num
           C H S D
 - suit
)
(:init
(VALUE C0 N0)
(VALUE CA N1)
(VALUE C2 N2)
(VALUE C3 N3)
(VALUE C4 N4)
(VALUE C5 N5)
(VALUE C6 N6)
(VALUE C7 N7)
(VALUE C8 N8)
(VALUE C9 N9)
(VALUE C10 N10)
(VALUE C11 N11)
(VALUE C12 N12)
(VALUE H0 N0)
(VALUE HA N1)
(VALUE H2 N2)
(VALUE H3 N3)
(VALUE H4 N4)
(VALUE H5 N5)
(VALUE H6 N6)
(VALUE H7 N7)
(VALUE H8 N8)
(VALUE H9 N9)
(VALUE H10 N10)
(VALUE H11 N11)
(VALUE H12 N12)
(VALUE S0 N0)
(VALUE SA N1)
(VALUE S2 N2)
(VALUE S3 N3)
(VALUE S4 N4)
(VALUE S5 N5)
(VALUE S6 N6)
(VALUE S7 N7)
(VALUE S8 N8)
(VALUE S9 N9)
(VALUE S10 N10)
(VALUE S11 N11)
(VALUE S12 N12)
(VALUE D0 N0)
(VALUE DA N1)
(VALUE D2 N2)
(VALUE D3 N3)
(VALUE D4 N4)
(VALUE D5 N5)
(VALUE D6 N6)
(VALUE D7 N7)
(VALUE D8 N8)
(VALUE D9 N9)
(VALUE D10 N10)
(VALUE D11 N11)
(VALUE D12 N12)
(CELLSUCCESSOR CELLN1 CELLN0)
(CELLSUCCESSOR CELLN2 CELLN1)
(CELLSUCCESSOR CELLN3 CELLN2)
(CELLSUCCESSOR CELLN4 CELLN3)
(COLSUCCESSOR COLN1 COLN0)
(COLSUCCESSOR COLN2 COLN1)
(COLSUCCESSOR COLN3 COLN2)
(COLSUCCESSOR COLN4 COLN3)
(COLSUCCESSOR COLN5 COLN4)
(COLSUCCESSOR COLN6 COLN5)
(SUCCESSOR N1 N0)
(SUCCESSOR N2 N1)
(SUCCESSOR N3 N2)
(SUCCESSOR N4 N3)
(SUCCESSOR N5 N4)
(SUCCESSOR N6 N5)
(SUCCESSOR N7 N6)
(SUCCESSOR N8 N7)
(SUCCESSOR N9 N8)
(SUCCESSOR N10 N9)
(SUCCESSOR N11 N10)
(SUCCESSOR N12 N11)
(HASSUIT C0 C)
(HASSUIT CA C)
(HASSUIT C2 C)
(HASSUIT C3 C)
(HASSUIT C4 C)
(HASSUIT C5 C)
(HASSUIT C6 C)
(HASSUIT C7 C)
(HASSUIT C8 C)
(HASSUIT C9 C)
(HASSUIT C10 C)
(HASSUIT C11 C)
(HASSUIT C12 C)
(HASSUIT H0 H)
(HASSUIT HA H)
(HASSUIT H2 H)
(HASSUIT H3 H)
(HASSUIT H4 H)
(HASSUIT H5 H)
(HASSUIT H6 H)
(HASSUIT H7 H)
(HASSUIT H8 H)
(HASSUIT H9 H)
(HASSUIT H10 H)
(HASSUIT H11 H)
(HASSUIT H12 H)
(HASSUIT S0 S)
(HASSUIT SA S)
(HASSUIT S2 S)
(HASSUIT S3 S)
(HASSUIT S4 S)
(HASSUIT S5 S)
(HASSUIT S6 S)
(HASSUIT S7 S)
(HASSUIT S8 S)
(HASSUIT S9 S)
(HASSUIT S10 S)
(HASSUIT S11 S)
(HASSUIT S12 S)
(HASSUIT D0 D)
(HASSUIT DA D)
(HASSUIT D2 D)
(HASSUIT D3 D)
(HASSUIT D4 D)
(HASSUIT D5 D)
(HASSUIT D6 D)
(HASSUIT D7 D)
(HASSUIT D8 D)
(HASSUIT D9 D)
(HASSUIT D10 D)
(HASSUIT D11 D)
(HASSUIT D12 D)
(CANSTACK C2 H3)
(CANSTACK C2 D3)
(CANSTACK C3 H4)
(CANSTACK C3 D4)
(CANSTACK C4 H5)
(CANSTACK C4 D5)
(CANSTACK C5 H6)
(CANSTACK C5 D6)
(CANSTACK C6 H7)
(CANSTACK C6 D7)
(CANSTACK C7 H8)
(CANSTACK C7 D8)
(CANSTACK C8 H9)
(CANSTACK C8 D9)
(CANSTACK C9 H10)
(CANSTACK C9 D10)
(CANSTACK C10 H11)
(CANSTACK C10 D11)
(CANSTACK C11 H12)
(CANSTACK C11 D12)
(CANSTACK H2 C3)
(CANSTACK H2 S3)
(CANSTACK H3 C4)
(CANSTACK H3 S4)
(CANSTACK H4 C5)
(CANSTACK H4 S5)
(CANSTACK H5 C6)
(CANSTACK H5 S6)
(CANSTACK H6 C7)
(CANSTACK H6 S7)
(CANSTACK H7 C8)
(CANSTACK H7 S8)
(CANSTACK H8 C9)
(CANSTACK H8 S9)
(CANSTACK H9 C10)
(CANSTACK H9 S10)
(CANSTACK H10 C11)
(CANSTACK H10 S11)
(CANSTACK H11 C12)
(CANSTACK H11 S12)
(CANSTACK S2 H3)
(CANSTACK S2 D3)
(CANSTACK S3 H4)
(CANSTACK S3 D4)
(CANSTACK S4 H5)
(CANSTACK S4 D5)
(CANSTACK S5 H6)
(CANSTACK S5 D6)
(CANSTACK S6 H7)
(CANSTACK S6 D7)
(CANSTACK S7 H8)
(CANSTACK S7 D8)
(CANSTACK S8 H9)
(CANSTACK S8 D9)
(CANSTACK S9 H10)
(CANSTACK S9 D10)
(CANSTACK S10 H11)
(CANSTACK S10 D11)
(CANSTACK S11 H12)
(CANSTACK S11 D12)
(CANSTACK D2 C3)
(CANSTACK D2 S3)
(CANSTACK D3 C4)
(CANSTACK D3 S4)
(CANSTACK D4 C5)
(CANSTACK D4 S5)
(CANSTACK D5 C6)
(CANSTACK D5 S6)
(CANSTACK D6 C7)
(CANSTACK D6 S7)
(CANSTACK D7 C8)
(CANSTACK D7 S8)
(CANSTACK D8 C9)
(CANSTACK D8 S9)
(CANSTACK D9 C10)
(CANSTACK D9 S10)
(CANSTACK D10 C11)
(CANSTACK D10 S11)
(CANSTACK D11 C12)
(CANSTACK D11 S12)
(HOME C0)
(HOME H0)
(HOME S0)
(HOME D0)
(CELLSPACE CELLN4)
(COLSPACE COLN1)

(BOTTOMCOL D6)
(ON H9 D6)
(ON D9 H9)
(ON S12 D9)
(ON C2 S12)
(ON H7 C2)
(ON D2 H7)
(ON DA D2)
(CLEAR DA)

(BOTTOMCOL H5)
(ON S11 H5)
(ON S5 S11)
(ON C5 S5)
(ON S9 C5)
(ON D4 S9)
(ON D7 D4)
(ON D3 D7)
(CLEAR D3)

(BOTTOMCOL D11)
(ON H3 D11)
(ON S7 H3)
(ON D10 S7)
(ON S6 D10)
(ON S2 S6)
(ON C4 S2)
(ON C3 C4)
(ON C8 C3)
(ON H2 C8)
(ON S4 H2)
(ON C11 S4)
(ON C10 C11)
(CLEAR C10)

(BOTTOMCOL S8)
(ON C12 S8)
(ON S3 C12)
(ON S10 S3)
(ON C9 S10)
(ON CA C9)
(ON HA CA)
(ON C6 HA)
(ON H8 C6)
(ON H11 H8)
(ON C7 H11)
(CLEAR C7)

(BOTTOMCOL SA)
(ON D8 SA)
(ON H12 D8)
(ON H10 H12)
(ON H4 H10)
(ON D12 H4)
(ON D5 D12)
(ON H6 D5)
(CLEAR H6)
)
(:goal
(and
(HOME C12)
(HOME H12)
(HOME S12)
(HOME D12)
)
)
)
