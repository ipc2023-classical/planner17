(define (problem maintenance-scheduling-1-3-40-40-3-1)
 (:domain maintenance-scheduling-domain)
 (:objects d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 d15 d16 d17 d18 d19 d20 d21 d22 d23 d24 d25 d26 d27 d28 d29 d30 d31 d32 d33 d34 d35 d36 d37 d38 d39 d40 d41 - day
   FRA BER HAM - airport
   ap1 ap2 ap3 ap4 ap5 ap6 ap7 ap8 ap9 ap10 ap11 ap12 ap13 ap14 ap15 ap16 ap17 ap18 ap19 ap20 ap21 ap22 ap23 ap24 ap25 ap26 ap27 ap28 ap29 ap30 ap31 ap32 ap33 ap34 ap35 ap36 ap37 ap38 ap39 ap40 - plane)
 (:init
  (today d1)  (today d2)  (today d3)  (today d4)  (today d5)  (today d6)  (today d7)  (today d8)  (today d9)  (today d10)  (today d11)  (today d12)  (today d13)  (today d14)  (today d15)  (today d16)  (today d17)  (today d18)  (today d19)  (today d20)  (today d21)  (today d22)  (today d23)  (today d24)  (today d25)  (today d26)  (today d27)  (today d28)  (today d29)  (today d30)  (today d31)  (today d32)  (today d33)  (today d34)  (today d35)  (today d36)  (today d37)  (today d38)  (today d39)  (today d40)  (at ap1 d16 FRA)
  (at ap1 d1 BER)
  (at ap1 d4 BER)
  (at ap2 d10 FRA)
  (at ap2 d37 BER)
  (at ap2 d5 HAM)
  (at ap3 d12 FRA)
  (at ap3 d4 HAM)
  (at ap3 d9 HAM)
  (at ap4 d10 FRA)
  (at ap4 d12 BER)
  (at ap4 d20 BER)
  (at ap5 d18 FRA)
  (at ap5 d10 BER)
  (at ap5 d15 BER)
  (at ap6 d5 FRA)
  (at ap6 d38 FRA)
  (at ap6 d1 HAM)
  (at ap7 d9 FRA)
  (at ap7 d31 FRA)
  (at ap7 d17 HAM)
  (at ap8 d29 FRA)
  (at ap8 d35 FRA)
  (at ap8 d25 HAM)
  (at ap9 d10 BER)
  (at ap9 d34 BER)
  (at ap9 d19 HAM)
  (at ap10 d8 FRA)
  (at ap10 d26 FRA)
  (at ap10 d14 HAM)
  (at ap11 d1 FRA)
  (at ap11 d14 BER)
  (at ap11 d31 HAM)
  (at ap12 d11 FRA)
  (at ap12 d36 FRA)
  (at ap12 d17 HAM)
  (at ap13 d19 FRA)
  (at ap13 d38 BER)
  (at ap13 d38 HAM)
  (at ap14 d20 FRA)
  (at ap14 d39 FRA)
  (at ap14 d14 HAM)
  (at ap15 d1 BER)
  (at ap15 d32 HAM)
  (at ap15 d34 HAM)
  (at ap16 d30 FRA)
  (at ap16 d39 FRA)
  (at ap16 d38 BER)
  (at ap17 d36 FRA)
  (at ap17 d1 BER)
  (at ap17 d15 HAM)
  (at ap18 d36 FRA)
  (at ap18 d1 BER)
  (at ap18 d28 HAM)
  (at ap19 d36 FRA)
  (at ap19 d34 HAM)
  (at ap19 d34 HAM)
  (at ap20 d38 FRA)
  (at ap20 d10 BER)
  (at ap20 d35 BER)
  (at ap21 d4 FRA)
  (at ap21 d20 FRA)
  (at ap21 d38 BER)
  (at ap22 d34 FRA)
  (at ap22 d36 FRA)
  (at ap22 d28 HAM)
  (at ap23 d19 BER)
  (at ap23 d29 BER)
  (at ap23 d7 HAM)
  (at ap24 d25 FRA)
  (at ap24 d14 BER)
  (at ap24 d18 BER)
  (at ap25 d31 FRA)
  (at ap25 d1 BER)
  (at ap25 d21 BER)
  (at ap26 d31 BER)
  (at ap26 d4 HAM)
  (at ap26 d14 HAM)
  (at ap27 d21 BER)
  (at ap27 d30 BER)
  (at ap27 d33 BER)
  (at ap28 d24 BER)
  (at ap28 d31 BER)
  (at ap28 d10 HAM)
  (at ap29 d1 BER)
  (at ap29 d11 BER)
  (at ap29 d30 HAM)
  (at ap30 d17 FRA)
  (at ap30 d31 BER)
  (at ap30 d27 HAM)
  (at ap31 d17 FRA)
  (at ap31 d5 HAM)
  (at ap31 d25 HAM)
  (at ap32 d32 FRA)
  (at ap32 d39 FRA)
  (at ap32 d21 HAM)
  (at ap33 d6 FRA)
  (at ap33 d10 FRA)
  (at ap33 d19 HAM)
  (at ap34 d13 FRA)
  (at ap34 d1 HAM)
  (at ap34 d29 HAM)
  (at ap35 d5 FRA)
  (at ap35 d9 FRA)
  (at ap35 d18 BER)
  (at ap36 d11 FRA)
  (at ap36 d11 HAM)
  (at ap36 d34 HAM)
  (at ap37 d28 FRA)
  (at ap37 d1 HAM)
  (at ap37 d4 HAM)
  (at ap38 d12 FRA)
  (at ap38 d40 FRA)
  (at ap38 d31 HAM)
  (at ap39 d2 FRA)
  (at ap39 d15 HAM)
  (at ap39 d29 HAM)
  (at ap40 d21 BER)
  (at ap40 d36 BER)
  (at ap40 d6 HAM)
)
  (:goal (and
 (done ap1)
 (done ap2)
 (done ap3)
 (done ap4)
 (done ap5)
 (done ap6)
 (done ap7)
 (done ap8)
 (done ap9)
 (done ap10)
 (done ap11)
 (done ap12)
 (done ap13)
 (done ap14)
 (done ap15)
 (done ap16)
 (done ap17)
 (done ap18)
 (done ap19)
 (done ap20)
 (done ap21)
 (done ap22)
 (done ap23)
 (done ap24)
 (done ap25)
 (done ap26)
 (done ap27)
 (done ap28)
 (done ap29)
 (done ap30)
 (done ap31)
 (done ap32)
 (done ap33)
 (done ap34)
 (done ap35)
 (done ap36)
 (done ap37)
 (done ap38)
 (done ap39)
 (done ap40)
  ))
  )