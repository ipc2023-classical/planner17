(define (domain SORTNET)
(:requirements :negative-preconditions :conditional-effects)
	(:predicates
(c)
(g)
(h)
(j)
(k)
(l)
(m)
(q)
(r)
(t)
(u)
(v)
(x)
(y)
(z)
(bb)
(cb)
(gb)
(hb)
(jb)
(kb)
(lb)
(mb)
(qb)
(rb)
(tb)
(ub)
(vb)
(xb)
(yb)
(zb)
(bc)
(cc)
(gc)
(hc)
(jc)
(kc)
(lc)
(mc)
(qc)
(rc)
(tc)
(uc)
(vc)
(xc)
(yc)
(zc)
(bd)
(cd)
(gd)
(hd)
(jd)
(kd)
(ld)
(md)
(qd)
(rd)
(td)
(ud)
(vd)
(xd)
(yd)
(zd)
(be)
(ce)
(ge)
(he)
(je)
(ke)
(le)
(me)
(qe)
(re)
(te)
(ue)
(ve)
(xe)
(ye)
(ze)
(bf)
(cf)
(gf)
(hf)
(jf)
(kf)
(lf)
(mf)
(qf)
(rf)
(tf)
(uf)
(vf)
(xf)
(yf)
(zf)
(bg)
(cg)
(gg)
(hg)
(jg)
(kg)
(lg)
(mg)
(qg)
(rg)
(tg)
(ug)
(vg)
(xg)
(yg)
(zg)
(bh)
(ch)
(gh)
(hh)
(jh)
(kh)
(lh)
(mh)
(qh)
(rh)
(th)
(uh)
(vh)
(xh)
(yh)
(zh)
(bi)
(ci)
(gi)
(hi)
(ji)
(ki)
(li)
(mi)
(qi)
(ri)
(ti)
(ui)
(vi)
(xi)
(yi)
(zi)
(bj)
(cj)
(gj)
(hj)
(jj)
(kj)
(lj)
(mj)
(qj)
(rj)
(tj)
(uj)
(vj)
(xj)
(yj)
(zj)
(bk)
(ck)
(gk)
(hk)
(jk)
(kk)
(lk)
(mk)
(qk)
(rk)
(tk)
(uk)
(vk)
(xk)
(yk)
(zk)
(bl)
(cl)
(gl)
(hl)
(jl)
(kl)
(ll)
(ml)
(ql)
(rl)
(tl)
(ul)
(vl)
(xl)
(yl)
(zl)
(bm)
(cm)
(gm)
(hm)
(jm)
(km)
(lm)
(mm)
(qm)
(rm)
(tm)
(um)
(vm)
(xm)
(ym)
(zm)
(bn)
(cn)
(gn)
(hn)
(jn)
(kn)
(ln)
(mn)
(qn)
(rn)
(tn)
(un)
(vn)
(xn)
(yn)
(zn)
(bo)
(co)
(go)
(ho)
(jo)
(ko)
(lo)
(mo)
(qo)
(ro)
(to)
(uo)
(vo)
(xo)
(yo)
(zo)
(bp)
(cp)
(gp)
(hp)
(jp)
(kp)
(lp)
(mp)
(qp)
(rp)
(tp)
(up)
(vp)
(xp)
(yp)
(zp)
(bq)
(cq)
(gq)
(hq)
(jq)
(kq)
(lq)
(mq)
(qq)
(rq)
(tq)
(uq)
(vq)
(xq)
(yq)
(zq)
(bs)
(cs)
(gs)
(hs)
(js)
(ks)
(ls)
(ms)
(qs)
(rs)
(ts)
(us)
(vs)
(xs)
(ys)
(zs)
(br)
(cr)
(gr)
(hr)
(jr)
(kr)
(lr)
(mr)
(qr)
(rr)
(tr)
(ur)
(vr)
(xr)
(yr)
(zr)
(bt)
(ct)
(gt)
(ht)
(jt)
(kt)
(lt)
(mt)
(qt)
(rt)
(tt)
(ut)
(vt)
(xt)
(yt)
(zt)
(bu)
(cu)
(gu)
(hu)
(ju)
(ku)
(lu)
(mu)
(qu)
(ru)
(tu)
(uu)
(vu)
(xu)
(yu)
(zu)
(bv)
(cv)
(gv)
(hv)
(jv)
(kv)
(lv)
(mv)
(qv)
(rv)
(tv)
(uv)
(vv)
(xv)
(yv)
(zv)
(bw)
(cw)
(gw)
(hw)
(jw)
(kw)
(lw)
(mw)
(qw)
(rw)
(tw)
(uw)
(vw)
(xw)
(yw)
(zw)
(bx)
(cx)
(gx)
(hx)
(jx)
(kx)
(lx)
(mx)
(qx)
(rx)
(tx)
(ux)
(vx)
(xx)
(yx)
(zx)
(by)
(cy)
(gy)
(hy)
(jy)
(ky)
(ly)
(my)
(qy)
(ry)
(ty)
(uy)
(vy)
(xy)
(yy)
(zy)
(bz)
(cz)
(gz)
(hz)
(jz)
(kz)
(lz)
(mz)
(qz)
(rz)
(tz)
(uz)
(vz)
(xz)
(yz)
(zz)
(b1)
(c1)
(g1)
(h1)
(j1)
(k1)
(l1)
(m1)
(q1)
(r1)
(t1)
(u1)
(v1)
(x1)
(y1)
(z1)
(b2)
(c2)
(g2)
(h2)
(j2)
(k2)
(l2)
(m2)
(q2)
(r2)
(t2)
(u2)
(v2)
(x2)
(y2)
(z2)
(b3)
(c3)
(g3)
(h3)
(j3)
(k3)
(l3)
(m3)
(q3)
(r3)
(t3)
(u3)
(v3)
(x3)
(y3)
(z3)
(b4)
(c4)
(g4)
(h4)
(j4)
(k4)
(l4)
(m4)
(q4)
(r4)
(t4)
(u4)
(v4)
(x4)
(y4)
(z4)
(b5)
(c5)
(g5)
(h5)
(j5)
(k5)
(l5)
(m5)
(q5)
(r5)
(t5)
(u5)
(v5)
(x5)
(y5)
(z5)
(b6)
(c6)
(g6)
(h6)
(j6)
(k6)
(l6)
(m6)
(q6)
(r6)
(t6)
(u6)
(v6)
(x6)
(y6)
(z6)
(b7)
(c7)
(g7)
(h7)
(j7)
(k7)
(l7)
(m7)
(q7)
(r7)
(t7)
(u7)
(v7)
(x7)
(y7)
(z7)
(b8)
(c8)
(g8)
(h8)
(j8)
(k8)
(l8)
(m8)
(q8)
(r8)
(t8)
(u8)
(v8)
(x8)
(y8)
(z8)
(b9)
(c9)
(g9)
(h9)
(j9)
(k9)
(l9)
(m9)
(q9)
(r9)
(t9)
(u9)
(v9)
(x9)
(y9)
(z9)
(b0)
(c0)
(g0)
(h0)
(j0)
(k0)
(l0)
(m0)
(q0)
(r0)
(t0)
(u0)
(v0)
(x0)
(y0)
(z0)
(bab)
(cab)
(gab)
(hab)
(jab)
(kab)
(lab)
(mab)
(qab)
(rab)
(tab)
(uab)
(vab)
(xab)
(yab)
(zab)
(bbb)
(cbb)
(gbb)
(hbb)
(jbb)
(kbb)
(lbb)
(mbb)
(qbb)
(rbb)
(tbb)
(ubb)
(vbb)
(xbb)
(ybb)
(zbb)
(bcb)
(ccb)
(gcb)
(hcb)
(jcb)
(kcb)
(lcb)
(mcb)
(qcb)
(rcb)
(tcb)
(ucb)
(vcb)
(xcb)
(ycb)
(zcb)
(bdb)
(cdb)
(gdb)
(hdb)
(jdb)
(kdb)
(ldb)
(mdb)
(qdb)
(rdb)
(tdb)
(udb)
(vdb)
(xdb)
(ydb)
(zdb)
(beb)
(ceb)
(geb)
(heb)
(jeb)
(keb)
(leb)
(meb)
(qeb)
(reb)
(teb)
(ueb)
(veb)
(xeb)
(yeb)
(zeb)
(bfb)
(cfb)
(gfb)
(hfb)
(jfb)
(kfb)
(lfb)
(mfb)
(qfb)
(rfb)
(tfb)
(ufb)
(vfb)
(xfb)
(yfb)
(zfb)
(bgb)
(cgb)
(ggb)
(hgb)
(jgb)
(kgb)
(lgb)
(mgb)
(qgb)
(rgb)
(tgb)
(ugb)
(vgb)
(xgb)
(ygb)
(zgb)
(bhb)
(chb)
(ghb)
(hhb)
(jhb)
(khb)
(lhb)
(mhb)
(qhb)
(rhb)
(thb)
(uhb)
(vhb)
(xhb)
(yhb)
(zhb)
(bib)
(cib)
(gib)
(hib)
(jib)
(kib)
(lib)
(mib)
(qib)
(rib)
(tib)
(uib)
(vib)
(xib)
(yib)
(zib)
(bjb)
(cjb)
(gjb)
(hjb)
(jjb)
(kjb)
(ljb)
(mjb)
(qjb)
(rjb)
(tjb)
(ujb)
(vjb)
(xjb)
(yjb)
(zjb)
(bkb)
(ckb)
(gkb)
(hkb)
(jkb)
(kkb)
(lkb)
(mkb)
(qkb)
(rkb)
(tkb)
(ukb)
(vkb)
(xkb)
(ykb)
(zkb)
(blb)
(clb)
(glb)
(hlb)
(jlb)
(klb)
(llb)
(mlb)
(qlb)
(rlb)
(tlb)
(ulb)
(vlb)
(xlb)
(ylb)
(zlb)
(bmb)
(cmb)
(gmb)
(hmb)
(jmb)
(kmb)
(lmb)
(mmb)
(qmb)
(rmb)
(tmb)
(umb)
(vmb)
(xmb)
(ymb)
(zmb)
(bnb)
(cnb)
(gnb)
(hnb)
(jnb)
(knb)
(lnb)
(mnb)
(qnb)
(rnb)
(tnb)
(unb)
(vnb)
(xnb)
(ynb)
(znb)
(bob)
(cob)
(gob)
(hob)
(job)
(kob)
(lob)
(mob)
(qob)
(rob)
(tob)
(uob)
(vob)
(xob)
(yob)
(zob)
(bpb)
(cpb)
(gpb)
(hpb)
(jpb)
(kpb)
(lpb)
(mpb)
(qpb)
(rpb)
(tpb)
(upb)
(vpb)
(xpb)
(ypb)
(zpb)
(bqb)
(cqb)
(gqb)
(hqb)
(jqb)
(kqb)
(lqb)
(mqb)
(qqb)
(rqb)
(tqb)
(vqb)
(yqb)
(bsb)
(gsb)
(jsb)
(lsb)
(qsb)
(tsb)
(vsb)
(xsb)
(ysb)
(brb)
(crb)
(grb)
(jrb)
(krb)
(lrb)
(qrb)
(rrb)
(trb)
(vrb)
(yrb)
(btb)
(gtb)
(jtb)
(ktb)
(ltb)
(qtb)
(rtb)
(ttb)
(vtb)
(ytb)
(bub)
(cub)
(gub)
(jub)
(lub)
(qub)
(rub)
(tub)
(vub)
(yub)
(bvb)
(gvb)
(jvb)
(lvb)
(mvb)
(qvb)
(tvb)
(vvb)
(yvb)
(bwb)
(gwb)
(jwb)
(lwb)
(qwb)
(rwb)
(twb)
(uwb)
(vwb)
(xwb)
(ywb)
(zwb)
(bxb)
(cxb)
(gxb)
(hxb)
(jxb)
(kxb)
(lxb)
(mxb)
(qxb)
(rxb)
(txb)
(uxb)
(vxb)
(xxb)
(yxb)
(zxb)
(byb)
(cyb)
(gyb)
(hyb)
(jyb)
(kyb)
(lyb)
(myb)
(qyb)
(tyb)
(uyb)
(vyb)
(xyb)
(yyb)
(zyb)
(bzb)
(czb)
(gzb)
(hzb)
(jzb)
(lzb)
(mzb)
(qzb)
(rzb)
(tzb)
(uzb)
(vzb)
(yzb)
(zzb)
(b1b)
(c1b)
(g1b)
(h1b)
(j1b)
(l1b)
(m1b)
(q1b)
(t1b)
(u1b)
(v1b)
(y1b)
(z1b)
(b2b)
(c2b)
(g2b)
(h2b)
(j2b)
(k2b)
(l2b)
(m2b)
(q2b)
(t2b)
(u2b)
(v2b)
(y2b)
(z2b)
(b3b)
(c3b)
(g3b)
(h3b)
(j3b)
(k3b)
(l3b)
(m3b)
(q3b)
(t3b)
(v3b)
(y3b)
(z3b)
(b4b)
(g4b)
(j4b)
(l4b)
(m4b)
(q4b)
(t4b)
(v4b)
(y4b)
(b5b)
(g5b)
(h5b)
(j5b)
(l5b)
(m5b)
(q5b)
(t5b)
(v5b)
(y5b)
(z5b)
(b6b)
(g6b)
(h6b)
(j6b)
(l6b)
(q6b)
(t6b)
(u6b)
(v6b)
(y6b)
(b7b)
(g7b)
(j7b)
(l7b)
(m7b)
(q7b)
(r7b)
(t7b)
(u7b)
(v7b)
(x7b)
(y7b)
(z7b)
(b8b)
(c8b)
(g8b)
(h8b)
(j8b)
(k8b)
(l8b)
(m8b)
(q8b)
(r8b)
(t8b)
(u8b)
(v8b)
(x8b)
(y8b)
(z8b)
(b9b)
(c9b)
(g9b)
(h9b)
(j9b)
(k9b)
(l9b)
(m9b)
(q9b)
(r9b)
(t9b)
(u9b)
(v9b)
(x9b)
(y9b)
(z9b)
(b0b)
(c0b)
(g0b)
(h0b)
(j0b)
(k0b)
(l0b)
(m0b)
(q0b)
(r0b)
(t0b)
(u0b)
(v0b)
(x0b)
(y0b)
(z0b)
(bac)
(cac)
(gac)
(hac)
(jac)
(kac)
(lac)
(mac)
(qac)
(rac)
(tac)
(uac)
(vac)
(xac)
(yac)
(zac)
(bbc)
(cbc)
(gbc)
(hbc)
(jbc)
(kbc)
(lbc)
(mbc)
(qbc)
(rbc)
(tbc)
(ubc)
(vbc)
(xbc)
(ybc)
(zbc)
(bcc)
(ccc)
(gcc)
(hcc)
(jcc)
(kcc)
(lcc)
(mcc)
(qcc)
(rcc)
(tcc)
(ucc)
(vcc)
(xcc)
(ycc)
(zcc)
(bdc)
(cdc)
(gdc)
(hdc)
(jdc)
(kdc)
(ldc)
(mdc)
(qdc)
(rdc)
(tdc)
(udc)
(vdc)
(xdc)
(ydc)
(zdc)
(bec)
(cec)
(gec)
(hec)
(jec)
(kec)
(lec)
(qec)
(tec)
(vec)
(xec)
(yec)
(bfc)
(gfc)
(jfc)
(kfc)
(lfc)
(qfc)
(tfc)
(vfc)
(jgc)
(kgc)
(lgc)
(qgc)
(tgc)
(vgc)
(xgc)
(ygc)
(bhc)
(chc)
(ghc)
(jhc)
(lhc)
(qhc)
(rhc)
(thc)
(vhc)
(xhc)
(yhc)
(bic)
(gic)
(jic)
(lic)
(mic)
(qic)
(ric)
(tic)
(uic)
(vic)
(xic)
(yic)
(zic)
(bjc)
(cjc)
(gjc)
(hjc)
(jjc)
(kjc)
(ljc)
(mjc)
(qjc)
(rjc)
(tjc)
(ujc)
(vjc)
(xjc)
(yjc)
(zjc)
(bkc)
(ckc)
(gkc)
(hkc)
(jkc)
(kkc)
(lkc)
(mkc)
(qkc)
(rkc)
(tkc)
(ukc)
(vkc)
(xkc)
(zkc)
(clc)
(glc)
(hlc)
(jlc)
(klc)
(llc)
(mlc)
(qlc)
(rlc)
(ulc)
(vlc)
(xlc)
(ylc)
(zlc)
(bmc)
(cmc)
(hmc)
(jmc)
(kmc)
(lmc)
(mmc)
(qmc)
(rmc)
(tmc)
(umc)
(xmc)
(ymc)
(zmc)
(bnc)
(gnc)
(jnc)
(knc)
(lnc)
(mnc)
(qnc)
(rnc)
(tnc)
(unc)
(vnc)
(xnc)
(ync)
(znc)
(boc)
(coc)
(goc)
(hoc)
(joc)
(koc)
(loc)
(moc)
(qoc)
(roc)
(toc)
(uoc)
(voc)
(xoc)
(yoc)
(zoc)
(bpc)
(cpc)
(gpc)
(hpc)
(jpc)
(kpc)
(lpc)
(mpc)
(qpc)
(rpc)
(tpc)
(upc)
(vpc)
(xpc)
(ypc)
(zpc)
(bqc)
(cqc)
(gqc)
(hqc)
(jqc)
(kqc)
(lqc)
(mqc)
(qqc)
(tqc)
(uqc)
(vqc)
(yqc)
(zqc)
(bsc)
(gsc)
(ksc)
(lsc)
(msc)
(qsc)
(tsc)
(usc)
(vsc)
(xsc)
(ysc)
(brc)
(crc)
(grc)
(jrc)
(lrc)
(mrc)
(qrc)
(rrc)
(trc)
(urc)
(vrc)
(xrc)
(yrc)
(zrc)
(btc)
(ctc)
(gtc)
(htc)
(jtc)
(ktc)
(ltc)
(mtc)
(qtc)
(rtc)
(ttc)
(utc)
(vtc)
(xtc)
(ytc)
(ztc)
(buc)
(cuc)
(guc)
(huc)
(juc)
(kuc)
(luc)
(muc)
(quc)
(ruc)
(tuc)
(uuc)
(vuc)
(xuc)
(yuc)
(zuc)
(bvc)
(cvc)
(gvc)
(hvc)
(jvc)
(kvc)
(lvc)
(mvc)
(qvc)
(rvc)
(tvc)
(uvc)
(vvc)
(xvc)
(yvc)
(zvc)
(bwc)
(gwc)
(hwc)
(jwc)
(kwc)
(lwc)
(mwc)
(qwc)
(rwc)
(twc)
(uwc)
(vwc)
(xwc)
(ywc)
(zwc)
(bxc)
(cxc)
(jxc)
(lxc)
(mxc)
(qxc)
(rxc)
(txc)
(uxc)
(vxc)
(xxc)
(yxc)
(zxc)
(byc)
(cyc)
(gyc)
(hyc)
(jyc)
(kyc)
(lyc)
(myc)
(qyc)
(ryc)
(tyc)
(uyc)
(vyc)
(xyc)
(yyc)
(zyc)
(bzc)
(czc)
(gzc)
(hzc)
(jzc)
(kzc)
(lzc)
(mzc)
(qzc)
(rzc)
(tzc)
(uzc)
(vzc)
(xzc)
(yzc)
(zzc)
(b1c)
(c1c)
(g1c)
(h1c)
(j1c)
(k1c)
(l1c)
(m1c)
(q1c)
(r1c)
(t1c)
(u1c)
(v1c)
(x1c)
(z1c)
(b2c)
(c2c)
(g2c)
(h2c)
(j2c)
(k2c)
(l2c)
(m2c)
(q2c)
(r2c)
(u2c)
(v2c)
(x2c)
(y2c)
(z2c)
(b3c)
(c3c)
(g3c)
(h3c)
(j3c)
(k3c)
(l3c)
(m3c)
(q3c)
(r3c)
(t3c)
(u3c)
(v3c)
(x3c)
(y3c)
(z3c)
(b4c)
(g4c)
(h4c)
(j4c)
(k4c)
(l4c)
(m4c)
(q4c)
(r4c)
(t4c)
(u4c)
(v4c)
(x4c)
(y4c)
(z4c)
(b5c)
(c5c)
(g5c)
(h5c)
(j5c)
(k5c)
(l5c)
(m5c)
(q5c)
(r5c)
(t5c)
(u5c)
(v5c)
(x5c)
(y5c)
(z5c)
(b6c)
(c6c)
(g6c)
(h6c)
(j6c)
(k6c)
(l6c)
(m6c)
(q6c)
(r6c)
(t6c)
(u6c)
(v6c)
(x6c)
(y6c)
(z6c)
(b7c)
(c7c)
(g7c)
(h7c)
(j7c)
(k7c)
(l7c)
(m7c)
(q7c)
(t7c)
(u7c)
(v7c)
(z7c)
(b8c)
(c8c)
(g8c)
(k8c)
(l8c)
(m8c)
(t8c)
(u8c)
(v8c)
(x8c)
(y8c)
(z8c)
(b9c)
(c9c)
(g9c)
(j9c)
(k9c)
(l9c)
(m9c)
(q9c)
(r9c)
(u9c)
(v9c)
(x9c)
(y9c)
(z9c)
(c0c)
(g0c)
(h0c)
(j0c)
(k0c)
(l0c)
(m0c)
(q0c)
(r0c)
(t0c)
(u0c)
(v0c)
(x0c)
(y0c)
(z0c)
(bad)
(cad)
(gad)
(had)
(jad)
(kad)
(lad)
(mad)
(qad)
(rad)
(tad)
(uad)
(vad)
(xad)
(yad)
(zad)
(bbd)
(cbd)
(gbd)
(hbd)
(jbd)
(kbd)
(lbd)
(mbd)
(qbd)
(rbd)
(tbd)
(ubd)
(vbd)
(xbd)
(ybd)
(zbd)
(bcd)
(gcd)
(hcd)
(jcd)
(kcd)
(lcd)
(mcd)
(qcd)
(rcd)
(tcd)
(ucd)
(vcd)
(xcd)
(ycd)
(zcd)
(bdd)
(cdd)
(gdd)
(jdd)
(ldd)
(mdd)
(qdd)
(rdd)
(tdd)
(udd)
(vdd)
(xdd)
(ydd)
(zdd)
(bed)
(ced)
(ged)
(hed)
(jed)
(ked)
(led)
(med)
(qed)
(red)
(ted)
(ued)
(ved)
(xed)
(yed)
(zed)
(bfd)
(cfd)
(gfd)
(hfd)
(jfd)
(kfd)
(lfd)
(mfd)
(qfd)
(rfd)
(tfd)
(ufd)
(vfd)
(xfd)
(yfd)
(zfd)
(bgd)
(cgd)
(ggd)
(hgd)
(jgd)
(kgd)
(lgd)
(mgd)
(qgd)
(rgd)
(tgd)
(ugd)
(vgd)
(xgd)
(ygd)
(zgd)
(bhd)
(chd)
(ghd)
(hhd)
(jhd)
(khd)
(lhd)
(mhd)
(qhd)
(rhd)
(uhd)
(vhd)
(xhd)
(yhd)
(zhd)
(bid)
(cid)
(gid)
(hid)
(jid)
(kid)
(lid)
(mid)
(qid)
(rid)
(tid)
(uid)
(vid)
(xid)
(yid)
(zid)
(bjd)
(cjd)
(gjd)
(hjd)
(jjd)
(kjd)
(ljd)
(mjd)
(qjd)
(rjd)
(tjd)
(ujd)
(vjd)
(xjd)
(yjd)
(zjd)
(bkd)
(ckd)
(gkd)
(hkd)
(jkd)
(kkd)
(lkd)
(mkd)
(qkd)
(rkd)
(tkd)
(ukd)
(vkd)
(xkd)
(ykd)
(zkd)
(bld)
(cld)
(gld)
(hld)
(jld)
(kld)
(lld)
(mld)
(qld)
(rld)
(tld)
(uld)
(vld)
(xld)
(yld)
(zld)
(bmd)
(cmd)
(gmd)
(hmd)
(jmd)
(kmd)
(lmd)
(mmd)
(qmd)
(umd)
(vmd)
(zmd)
(cnd)
(gnd)
(hnd)
(knd)
(lnd)
(mnd)
(rnd)
(tnd)
(und)
(vnd)
(xnd)
(ynd)
(znd)
(bod)
(cod)
(god)
(jod)
(kod)
(lod)
(mod)
(qod)
(rod)
(uod)
(vod)
(xod)
(yod)
(zod)
(cpd)
(gpd)
(hpd)
(kpd)
(mpd)
(qpd)
(rpd)
(tpd)
(upd)
(vpd)
(xpd)
(ypd)
(zpd)
(bqd)
(cqd)
(gqd)
(hqd)
(jqd)
(kqd)
(lqd)
(mqd)
(qqd)
(rqd)
(tqd)
(uqd)
(vqd)
(xqd)
(yqd)
(zqd)
(bsd)
(csd)
(gsd)
(hsd)
(jsd)
(ksd)
(lsd)
(msd)
(qsd)
(rsd)
(tsd)
(usd)
(vsd)
(xsd)
(ysd)
(brd)
(grd)
(hrd)
(jrd)
(lrd)
(mrd)
(qrd)
(rrd)
(trd)
(urd)
(vrd)
(xrd)
(yrd)
(zrd)
(btd)
(ctd)
(gtd)
(jtd)
(ltd)
(mtd)
(qtd)
(rtd)
(ttd)
(utd)
(vtd)
(xtd)
(ytd)
(ztd)
(bud)
(cud)
(gud)
(jud)
(kud)
(lud)
(qud)
(rud)
(tud)
(uud)
(vud)
(xud)
(yud)
(zud)
(bvd)
(cvd)
(gvd)
(hvd)
(jvd)
(kvd)
(lvd)
(mvd)
(qvd)
(rvd)
(tvd)
(uvd)
(vvd)
(xvd)
(yvd)
(zvd)
(bwd)
(cwd)
(gwd)
(hwd)
(jwd)
(kwd)
(lwd)
(mwd)
(qwd)
(rwd)
(twd)
(uwd)
(vwd)
(xwd)
(ywd)
(zwd)
(bxd)
(cxd)
(gxd)
(hxd)
(jxd)
(kxd)
(lxd)
(mxd)
(qxd)
(rxd)
(vxd)
(xxd)
(yxd)
(zxd)
(byd)
(cyd)
(gyd)
(hyd)
(jyd)
(kyd)
(lyd)
(myd)
(qyd)
(ryd)
(tyd)
(uyd)
(vyd)
(xyd)
(yyd)
(zyd)
(bzd)
(czd)
(gzd)
(hzd)
(jzd)
(kzd)
(lzd)
(mzd)
(qzd)
(rzd)
(tzd)
(uzd)
(vzd)
(xzd)
(yzd)
(zzd)
(b1d)
(c1d)
(g1d)
(h1d)
(j1d)
(k1d)
(l1d)
(m1d)
(q1d)
(r1d)
(t1d)
(u1d)
(v1d)
(x1d)
(y1d)
(z1d)
(b2d)
(c2d)
(g2d)
(h2d)
(j2d)
(k2d)
(l2d)
(m2d)
(q2d)
(r2d)
(t2d)
(u2d)
(v2d)
(x2d)
(y2d)
(z2d)
(b3d)
(c3d)
(g3d)
(h3d)
(j3d)
(k3d)
(l3d)
(m3d)
(q3d)
(u3d)
(x3d)
(z3d)
(c4d)
(h4d)
(k4d)
(m4d)
(r4d)
(t4d)
(u4d)
(v4d)
(x4d)
(y4d)
(z4d)
(b5d)
(c5d)
(g5d)
(h5d)
(j5d)
(k5d)
(l5d)
(m5d)
(q5d)
(r5d)
(u5d)
(v5d)
(x5d)
(y5d)
(z5d)
(c6d)
(g6d)
(h6d)
(k6d)
(m6d)
(q6d)
(r6d)
(u6d)
(x6d)
(z6d)
(c7d)
(g7d)
(h7d)
(j7d)
(k7d)
(l7d)
(m7d)
(q7d)
(r7d)
(t7d)
(u7d)
(v7d)
(x7d)
(y7d)
(z7d)
(b8d)
(c8d)
(g8d)
(h8d)
(j8d)
(k8d)
(l8d)
(m8d)
(q8d)
(r8d)
(t8d)
(v8d)
(y8d)
(b9d)
(g9d)
(j9d)
(l9d)
(q9d)
(t9d)
(v9d)
(x9d)
(y9d)
(z9d)
(b0d)
(c0d)
(g0d)
(j0d)
(l0d)
(m0d)
(q0d)
(r0d)
(t0d)
(u0d)
(v0d)
(y0d)
(bae)
(cae)
(gae)
(jae)
(kae)
(lae)
(qae)
(rae)
(tae)
(vae)
(yae)
(bbe)
(gbe)
(jbe)
(lbe)
(qbe)
(tbe)
(vbe)
(ybe)
(bce)
(gce)
(jce)
(lce)
(qce)
(tce)
(vce)
(yce)
(bde)
(gde)
(jde)
(lde)
(qde)
(vde)
(yde)
(bee)
(gee)
(jee)
(lee)
(qee)
(tee)
(uee)
(vee)
(xee)
(yee)
(zee)
(bfe)
(cfe)
(gfe)
(hfe)
(jfe)
(kfe)
(lfe)
(mfe)
(qfe)
(rfe)
(tfe)
(ufe)
(vfe)
(xfe)
(yfe)
(zfe)
(bge)
(cge)
(gge)
(hge)
(jge)
(kge)
(lge)
(mge)
(qge)
(rge)
(tge)
(uge)
(vge)
(xge)
(yge)
(zge)
(bhe)
(che)
(ghe)
(hhe)
(jhe)
(khe)
(lhe)
(mhe)
(qhe)
(rhe)
(the)
(uhe)
(vhe)
(xhe)
(yhe)
(zhe)
(bie)
(cie)
(gie)
(hie)
(jie)
(kie)
(lie)
(mie)
(qie)
(rie)
(uie)
(xie)
(zie)
(cje)
(hje)
(kje)
(mje)
(rje)
(tje)
(uje)
(vje)
(xje)
(yje)
(zje)
(bke)
(cke)
(gke)
(hke)
(jke)
(kke)
(lke)
(mke)
(qke)
(rke)
(uke)
(vke)
(xke)
(yke)
(zke)
(cle)
(gle)
(hle)
(kle)
(mle)
(qle)
(rle)
(ule)
(xle)
(zle)
(cme)
(gme)
(hme)
(jme)
(kme)
(lme)
(mme)
(qme)
(rme)
(tme)
(ume)
(vme)
(xme)
(yme)
(zme)
(bne)
(cne)
(gne)
(hne)
(jne)
(kne)
(lne)
(mne)
(qne)
(rne)
(tne)
(vne)
(yne)
(boe)
(goe)
(joe)
(loe)
(qoe)
(toe)
(voe)
(xoe)
(yoe)
(zoe)
(bpe)
(cpe)
(gpe)
(jpe)
(lpe)
(mpe)
(qpe)
(rpe)
(tpe)
(upe)
(vpe)
(ype)
(bqe)
(cqe)
(gqe)
(jqe)
(kqe)
(lqe)
)
(:action make_end_disj_goal
:parameters ()
:precondition (and (mic))

:effect (and  (m3) (ru) (lab) (qh) (qp) (not(mic)) (zfb)
(when (lqe)  (lmb)) ;; Support. 
(when (rmb) (and (c) (kc))) ;; Support. 
(when (xmb)  (g)) ;; Support. 
(when (cnb)  (h)) ;; Support. 
(when (knb)  (j)) ;; Support. 
(when (rnb)  (k)) ;; Support. 
(when (xnb)  (l)) ;; Support. 
(when (cob)  (m)) ;; Support. 
(when (kob)  (q)) ;; Support. 
(when (rob)  (r)) ;; Support. 
(when (xob)  (t)) ;; Support. 
(when (cpb)  (u)) ;; Support. 
(when (kpb)  (v)) ;; Support. 
(when (rpb)  (x)) ;; Support. 
(when (xpb)  (y)) ;; Support. 
(when (cqb)  (z)) ;; Support. 
(when (kqb)  (bb)) ;; Support. 
(when (rqb)  (cb)) ;; Support. 
(when (xsb)  (lb)) ;; Support. 
(when (crb)  (mb)) ;; Support. 
(when (krb)  (qb)) ;; Support. 
(when (rrb)  (rb)) ;; Support. 
(when (ktb)  (vb)) ;; Support. 
(when (rtb)  (xb)) ;; Support. 
(when (cub)  (zb)) ;; Support. 
(when (rub)  (cc)) ;; Support. 
(when (uwb)  (tc)) ;; Support. 
(when (zwb)  (uc)) ;; Support. 
(when (hxb)  (vc)) ;; Support. 
(when (mxb)  (xc)) ;; Support. 
(when (uxb)  (yc)) ;; Support. 
(when (zxb)  (zc)) ;; Support. 
(when (hyb)  (bd)) ;; Support. 
(when (myb)  (cd)) ;; Support. 
(when (uyb)  (gd)) ;; Support. 
(when (zyb)  (hd)) ;; Support. 
(when (hzb)  (jd)) ;; Support. 
(when (mzb)  (kd)) ;; Support. 
(when (uzb)  (ld)) ;; Support. 
(when (zzb)  (md)) ;; Support. 
(when (h1b)  (qd)) ;; Support. 
(when (m1b)  (rd)) ;; Support. 
(when (u1b)  (td)) ;; Support. 
(when (z1b)  (ud)) ;; Support. 
(when (h2b)  (vd)) ;; Support. 
(when (m2b)  (xd)) ;; Support. 
(when (u2b)  (yd)) ;; Support. 
(when (z2b)  (zd)) ;; Support. 
(when (h3b)  (be)) ;; Support. 
(when (m3b)  (ce)) ;; Support. 
(when (z3b)  (he)) ;; Support. 
(when (m4b)  (ke)) ;; Support. 
(when (h5b)  (qe)) ;; Support. 
(when (m5b)  (re)) ;; Support. 
(when (z5b)  (ue)) ;; Support. 
(when (h6b)  (ve)) ;; Support. 
(when (u6b)  (ye)) ;; Support. 
(when (m7b)  (cf)) ;; Support. 
(when (u7b)  (gf)) ;; Support. 
(when (z7b)  (hf)) ;; Support. 
(when (h8b)  (jf)) ;; Support. 
(when (m8b)  (kf)) ;; Support. 
(when (u8b)  (lf)) ;; Support. 
(when (z8b)  (mf)) ;; Support. 
(when (h9b)  (qf)) ;; Support. 
(when (m9b)  (rf)) ;; Support. 
(when (u9b)  (tf)) ;; Support. 
(when (z9b)  (uf)) ;; Support. 
(when (h0b)  (vf)) ;; Support. 
(when (m0b)  (xf)) ;; Support. 
(when (u0b)  (yf)) ;; Support. 
(when (z0b)  (zf)) ;; Support. 
(when (hac)  (bg)) ;; Support. 
(when (mac)  (cg)) ;; Support. 
(when (uac)  (gg)) ;; Support. 
(when (zac)  (hg)) ;; Support. 
(when (hbc)  (jg)) ;; Support. 
(when (mbc)  (kg)) ;; Support. 
(when (ubc)  (lg)) ;; Support. 
(when (zbc)  (mg)) ;; Support. 
(when (hcc)  (qg)) ;; Support. 
(when (mcc)  (rg)) ;; Support. 
(when (tcc)  (tg)) ;; Support. 
(when (xcc)  (ug)) ;; Support. 
(when (cdc)  (vg)) ;; Support. 
(when (kdc)  (xg)) ;; Support. 
(when (rdc)  (yg)) ;; Support. 
(when (xdc)  (zg)) ;; Support. 
(when (cec)  (bh)) ;; Support. 
(when (kec)  (ch)) ;; Support. 
(when (xec)  (hh)) ;; Support. 
(when (kfc)  (kh)) ;; Support. 
(when (kgc)  (rh)) ;; Support. 
(when (xgc)  (uh)) ;; Support. 
(when (chc)  (vh)) ;; Support. 
(when (rhc)  (yh)) ;; Support. 
(when (xhc)  (zh)) ;; Support. 
(when (tmb) (and (gi) (uo))) ;; Support. 
(when (ymb)  (hi)) ;; Support. 
(when (vmb)  (g)) ;; Support. 
(when (gnb)  (ji)) ;; Support. 
(when (bnb)  (h)) ;; Support. 
(when (lnb)  (ki)) ;; Support. 
(when (jnb)  (j)) ;; Support. 
(when (tnb)  (li)) ;; Support. 
(when (qnb)  (k)) ;; Support. 
(when (ynb)  (mi)) ;; Support. 
(when (vnb)  (l)) ;; Support. 
(when (gob)  (qi)) ;; Support. 
(when (bob)  (m)) ;; Support. 
(when (lob)  (ri)) ;; Support. 
(when (job)  (q)) ;; Support. 
(when (tob)  (ti)) ;; Support. 
(when (qob)  (r)) ;; Support. 
(when (yob)  (ui)) ;; Support. 
(when (vob)  (t)) ;; Support. 
(when (gpb)  (vi)) ;; Support. 
(when (bpb)  (u)) ;; Support. 
(when (lpb)  (xi)) ;; Support. 
(when (jpb)  (v)) ;; Support. 
(when (tpb)  (yi)) ;; Support. 
(when (qpb)  (x)) ;; Support. 
(when (ypb)  (zi)) ;; Support. 
(when (vpb)  (y)) ;; Support. 
(when (gqb)  (bj)) ;; Support. 
(when (bqb)  (z)) ;; Support. 
(when (lqb)  (cj)) ;; Support. 
(when (jqb)  (bb)) ;; Support. 
(when (tqb)  (gj)) ;; Support. 
(when (qqb)  (cb)) ;; Support. 
(when (yqb)  (hj)) ;; Support. 
(when (vqb)  (gb)) ;; Support. 
(when (gsb)  (jj)) ;; Support. 
(when (bsb)  (hb)) ;; Support. 
(when (lsb)  (kj)) ;; Support. 
(when (jsb)  (jb)) ;; Support. 
(when (tsb)  (lj)) ;; Support. 
(when (qsb)  (kb)) ;; Support. 
(when (ysb)  (mj)) ;; Support. 
(when (vsb)  (lb)) ;; Support. 
(when (grb)  (qj)) ;; Support. 
(when (brb)  (mb)) ;; Support. 
(when (lrb)  (rj)) ;; Support. 
(when (jrb)  (qb)) ;; Support. 
(when (trb)  (tj)) ;; Support. 
(when (qrb)  (rb)) ;; Support. 
(when (yrb)  (uj)) ;; Support. 
(when (vrb)  (tb)) ;; Support. 
(when (gtb)  (vj)) ;; Support. 
(when (btb)  (ub)) ;; Support. 
(when (ltb)  (xj)) ;; Support. 
(when (jtb)  (vb)) ;; Support. 
(when (ttb)  (yj)) ;; Support. 
(when (qtb)  (xb)) ;; Support. 
(when (ytb)  (zj)) ;; Support. 
(when (vtb)  (yb)) ;; Support. 
(when (gub)  (bk)) ;; Support. 
(when (bub)  (zb)) ;; Support. 
(when (lub)  (ck)) ;; Support. 
(when (jub)  (bc)) ;; Support. 
(when (tub)  (gk)) ;; Support. 
(when (qub)  (cc)) ;; Support. 
(when (yub)  (hk)) ;; Support. 
(when (vub)  (gc)) ;; Support. 
(when (gvb)  (jk)) ;; Support. 
(when (bvb)  (hc)) ;; Support. 
(when (lvb)  (kk)) ;; Support. 
(when (jvb)  (jc)) ;; Support. 
(when (qvb)  (lk)) ;; Support. 
(when (mvb)  (kc)) ;; Support. 
(when (vvb)  (mk)) ;; Support. 
(when (tvb)  (lc)) ;; Support. 
(when (bwb)  (qk)) ;; Support. 
(when (yvb)  (mc)) ;; Support. 
(when (jwb)  (rk)) ;; Support. 
(when (gwb)  (qc)) ;; Support. 
(when (qwb)  (tk)) ;; Support. 
(when (lwb)  (rc)) ;; Support. 
(when (vwb)  (uk)) ;; Support. 
(when (twb)  (tc)) ;; Support. 
(when (bxb)  (vk)) ;; Support. 
(when (ywb)  (uc)) ;; Support. 
(when (jxb)  (xk)) ;; Support. 
(when (gxb)  (vc)) ;; Support. 
(when (qxb)  (yk)) ;; Support. 
(when (lxb)  (xc)) ;; Support. 
(when (vxb)  (zk)) ;; Support. 
(when (txb)  (yc)) ;; Support. 
(when (byb)  (bl)) ;; Support. 
(when (yxb)  (zc)) ;; Support. 
(when (jyb)  (cl)) ;; Support. 
(when (gyb)  (bd)) ;; Support. 
(when (qyb)  (gl)) ;; Support. 
(when (lyb)  (cd)) ;; Support. 
(when (vyb)  (hl)) ;; Support. 
(when (tyb)  (gd)) ;; Support. 
(when (bzb)  (jl)) ;; Support. 
(when (yyb)  (hd)) ;; Support. 
(when (jzb)  (kl)) ;; Support. 
(when (gzb)  (jd)) ;; Support. 
(when (qzb)  (ll)) ;; Support. 
(when (lzb)  (kd)) ;; Support. 
(when (vzb)  (ml)) ;; Support. 
(when (tzb)  (ld)) ;; Support. 
(when (b1b)  (ql)) ;; Support. 
(when (yzb)  (md)) ;; Support. 
(when (j1b)  (rl)) ;; Support. 
(when (g1b)  (qd)) ;; Support. 
(when (q1b)  (tl)) ;; Support. 
(when (l1b)  (rd)) ;; Support. 
(when (v1b)  (ul)) ;; Support. 
(when (t1b)  (td)) ;; Support. 
(when (b2b)  (vl)) ;; Support. 
(when (y1b)  (ud)) ;; Support. 
(when (j2b)  (xl)) ;; Support. 
(when (g2b)  (vd)) ;; Support. 
(when (q2b)  (yl)) ;; Support. 
(when (l2b)  (xd)) ;; Support. 
(when (v2b)  (zl)) ;; Support. 
(when (t2b)  (yd)) ;; Support. 
(when (b3b)  (bm)) ;; Support. 
(when (y2b)  (zd)) ;; Support. 
(when (j3b)  (cm)) ;; Support. 
(when (g3b)  (be)) ;; Support. 
(when (q3b)  (gm)) ;; Support. 
(when (l3b)  (ce)) ;; Support. 
(when (v3b)  (hm)) ;; Support. 
(when (t3b)  (ge)) ;; Support. 
(when (b4b)  (jm)) ;; Support. 
(when (y3b)  (he)) ;; Support. 
(when (j4b)  (km)) ;; Support. 
(when (g4b)  (je)) ;; Support. 
(when (q4b)  (lm)) ;; Support. 
(when (l4b)  (ke)) ;; Support. 
(when (v4b)  (mm)) ;; Support. 
(when (t4b)  (le)) ;; Support. 
(when (b5b)  (qm)) ;; Support. 
(when (y4b)  (me)) ;; Support. 
(when (j5b)  (rm)) ;; Support. 
(when (g5b)  (qe)) ;; Support. 
(when (q5b)  (tm)) ;; Support. 
(when (l5b)  (re)) ;; Support. 
(when (v5b)  (um)) ;; Support. 
(when (t5b)  (te)) ;; Support. 
(when (b6b)  (vm)) ;; Support. 
(when (y5b)  (ue)) ;; Support. 
(when (j6b)  (xm)) ;; Support. 
(when (g6b)  (ve)) ;; Support. 
(when (q6b)  (ym)) ;; Support. 
(when (l6b)  (xe)) ;; Support. 
(when (v6b)  (zm)) ;; Support. 
(when (t6b)  (ye)) ;; Support. 
(when (b7b)  (bn)) ;; Support. 
(when (y6b)  (ze)) ;; Support. 
(when (j7b)  (cn)) ;; Support. 
(when (g7b)  (bf)) ;; Support. 
(when (q7b)  (gn)) ;; Support. 
(when (l7b)  (cf)) ;; Support. 
(when (v7b)  (hn)) ;; Support. 
(when (t7b)  (gf)) ;; Support. 
(when (b8b)  (jn)) ;; Support. 
(when (y7b)  (hf)) ;; Support. 
(when (j8b)  (kn)) ;; Support. 
(when (g8b)  (jf)) ;; Support. 
(when (q8b)  (ln)) ;; Support. 
(when (l8b)  (kf)) ;; Support. 
(when (v8b)  (mn)) ;; Support. 
(when (t8b)  (lf)) ;; Support. 
(when (b9b)  (qn)) ;; Support. 
(when (y8b)  (mf)) ;; Support. 
(when (j9b)  (rn)) ;; Support. 
(when (g9b)  (qf)) ;; Support. 
(when (q9b)  (tn)) ;; Support. 
(when (l9b)  (rf)) ;; Support. 
(when (v9b)  (un)) ;; Support. 
(when (t9b)  (tf)) ;; Support. 
(when (b0b)  (vn)) ;; Support. 
(when (y9b)  (uf)) ;; Support. 
(when (j0b)  (xn)) ;; Support. 
(when (g0b)  (vf)) ;; Support. 
(when (q0b)  (yn)) ;; Support. 
(when (l0b)  (xf)) ;; Support. 
(when (v0b)  (zn)) ;; Support. 
(when (t0b)  (yf)) ;; Support. 
(when (bac)  (bo)) ;; Support. 
(when (y0b)  (zf)) ;; Support. 
(when (jac)  (co)) ;; Support. 
(when (gac)  (bg)) ;; Support. 
(when (qac)  (go)) ;; Support. 
(when (lac)  (cg)) ;; Support. 
(when (vac)  (ho)) ;; Support. 
(when (tac)  (gg)) ;; Support. 
(when (bbc)  (jo)) ;; Support. 
(when (yac)  (hg)) ;; Support. 
(when (jbc)  (ko)) ;; Support. 
(when (gbc)  (jg)) ;; Support. 
(when (qbc)  (lo)) ;; Support. 
(when (lbc)  (kg)) ;; Support. 
(when (vbc)  (mo)) ;; Support. 
(when (tbc)  (lg)) ;; Support. 
(when (bcc)  (qo)) ;; Support. 
(when (ybc)  (mg)) ;; Support. 
(when (jcc)  (ro)) ;; Support. 
(when (gcc)  (qg)) ;; Support. 
(when (qcc)  (to)) ;; Support. 
(when (lcc)  (rg)) ;; Support. 
(when (ycc)  (vo)) ;; Support. 
(when (vcc)  (ug)) ;; Support. 
(when (gdc)  (xo)) ;; Support. 
(when (bdc)  (vg)) ;; Support. 
(when (ldc)  (yo)) ;; Support. 
(when (jdc)  (xg)) ;; Support. 
(when (tdc)  (zo)) ;; Support. 
(when (qdc)  (yg)) ;; Support. 
(when (ydc)  (bp)) ;; Support. 
(when (vdc)  (zg)) ;; Support. 
(when (gec)  (cp)) ;; Support. 
(when (bec)  (bh)) ;; Support. 
(when (lec)  (gp)) ;; Support. 
(when (jec)  (ch)) ;; Support. 
(when (tec)  (hp)) ;; Support. 
(when (qec)  (gh)) ;; Support. 
(when (yec)  (jp)) ;; Support. 
(when (vec)  (hh)) ;; Support. 
(when (gfc)  (kp)) ;; Support. 
(when (bfc)  (jh)) ;; Support. 
(when (lfc)  (lp)) ;; Support. 
(when (jfc)  (kh)) ;; Support. 
(when (tfc)  (mp)) ;; Support. 
(when (qfc)  (lh)) ;; Support. 
(when (vfc)  (mh)) ;; Support. 
(when (lgc)  (tp)) ;; Support. 
(when (jgc)  (rh)) ;; Support. 
(when (tgc)  (up)) ;; Support. 
(when (qgc)  (th)) ;; Support. 
(when (ygc)  (vp)) ;; Support. 
(when (vgc)  (uh)) ;; Support. 
(when (ghc)  (xp)) ;; Support. 
(when (bhc)  (vh)) ;; Support. 
(when (lhc)  (yp)) ;; Support. 
(when (jhc)  (xh)) ;; Support. 
(when (thc)  (zp)) ;; Support. 
(when (qhc)  (yh)) ;; Support. 
(when (yhc)  (bq)) ;; Support. 
(when (vhc)  (zh)) ;; Support. 
(when (gic)  (cq)) ;; Support. 
(when (bic)  (bi)) ;; Support. 
(when (lic)  (gq)) ;; Support. 
(when (jic)  (ci)) ;; Support. 
(when (qic) (and (gi) (lk))) ;; Support. 
(when (tic)  (hi)) ;; Support. 
(when (vic)  (ji)) ;; Support. 
(when (yic)  (ki)) ;; Support. 
(when (bjc)  (li)) ;; Support. 
(when (gjc)  (mi)) ;; Support. 
(when (jjc)  (qi)) ;; Support. 
(when (ljc)  (ri)) ;; Support. 
(when (qjc)  (ti)) ;; Support. 
(when (tjc)  (ui)) ;; Support. 
(when (vjc)  (vi)) ;; Support. 
(when (yjc)  (xi)) ;; Support. 
(when (bkc)  (yi)) ;; Support. 
(when (gkc)  (zi)) ;; Support. 
(when (jkc)  (bj)) ;; Support. 
(when (lkc)  (cj)) ;; Support. 
(when (qkc)  (gj)) ;; Support. 
(when (tkc)  (hj)) ;; Support. 
(when (vkc)  (jj)) ;; Support. 
(when (glc)  (mj)) ;; Support. 
(when (jlc)  (qj)) ;; Support. 
(when (llc)  (rj)) ;; Support. 
(when (qlc)  (tj)) ;; Support. 
(when (vlc)  (vj)) ;; Support. 
(when (ylc)  (xj)) ;; Support. 
(when (bmc)  (yj)) ;; Support. 
(when (jmc)  (bk)) ;; Support. 
(when (lmc)  (ck)) ;; Support. 
(when (qmc)  (gk)) ;; Support. 
(when (tmc)  (hk)) ;; Support. 
(when (ymc)  (kk)) ;; Support. 
(when (knc)  (rk)) ;; Support. 
(when (mnc)  (tk)) ;; Support. 
(when (rnc)  (uk)) ;; Support. 
(when (unc)  (vk)) ;; Support. 
(when (xnc)  (xk)) ;; Support. 
(when (znc)  (yk)) ;; Support. 
(when (coc)  (zk)) ;; Support. 
(when (hoc)  (bl)) ;; Support. 
(when (koc)  (cl)) ;; Support. 
(when (moc)  (gl)) ;; Support. 
(when (roc)  (hl)) ;; Support. 
(when (uoc)  (jl)) ;; Support. 
(when (xoc)  (kl)) ;; Support. 
(when (zoc)  (ll)) ;; Support. 
(when (cpc)  (ml)) ;; Support. 
(when (hpc)  (ql)) ;; Support. 
(when (kpc)  (rl)) ;; Support. 
(when (mpc)  (tl)) ;; Support. 
(when (rpc)  (ul)) ;; Support. 
(when (upc)  (vl)) ;; Support. 
(when (xpc)  (xl)) ;; Support. 
(when (zpc)  (yl)) ;; Support. 
(when (cqc)  (zl)) ;; Support. 
(when (hqc)  (bm)) ;; Support. 
(when (kqc)  (cm)) ;; Support. 
(when (mqc)  (gm)) ;; Support. 
(when (uqc)  (jm)) ;; Support. 
(when (zqc)  (lm)) ;; Support. 
(when (ksc)  (rm)) ;; Support. 
(when (msc)  (tm)) ;; Support. 
(when (usc)  (vm)) ;; Support. 
(when (xsc)  (xm)) ;; Support. 
(when (crc)  (zm)) ;; Support. 
(when (mrc)  (gn)) ;; Support. 
(when (rrc)  (hn)) ;; Support. 
(when (urc)  (jn)) ;; Support. 
(when (xrc)  (kn)) ;; Support. 
(when (zrc)  (ln)) ;; Support. 
(when (ctc)  (mn)) ;; Support. 
(when (htc)  (qn)) ;; Support. 
(when (ktc)  (rn)) ;; Support. 
(when (mtc)  (tn)) ;; Support. 
(when (rtc)  (un)) ;; Support. 
(when (utc)  (vn)) ;; Support. 
(when (xtc)  (xn)) ;; Support. 
(when (ztc)  (yn)) ;; Support. 
(when (cuc)  (zn)) ;; Support. 
(when (huc)  (bo)) ;; Support. 
(when (kuc)  (co)) ;; Support. 
(when (muc)  (go)) ;; Support. 
(when (ruc)  (ho)) ;; Support. 
(when (uuc)  (jo)) ;; Support. 
(when (xuc)  (ko)) ;; Support. 
(when (zuc)  (lo)) ;; Support. 
(when (cvc)  (mo)) ;; Support. 
(when (hvc)  (qo)) ;; Support. 
(when (kvc)  (ro)) ;; Support. 
(when (mvc)  (to)) ;; Support. 
(when (rvc)  (uo)) ;; Support. 
(when (tvc)  (vo)) ;; Support. 
(when (vvc)  (xo)) ;; Support. 
(when (yvc)  (yo)) ;; Support. 
(when (bwc)  (zo)) ;; Support. 
(when (gwc)  (bp)) ;; Support. 
(when (jwc)  (cp)) ;; Support. 
(when (lwc)  (gp)) ;; Support. 
(when (qwc)  (hp)) ;; Support. 
(when (twc)  (jp)) ;; Support. 
(when (vwc)  (kp)) ;; Support. 
(when (ywc)  (lp)) ;; Support. 
(when (bxc)  (mp)) ;; Support. 
(when (jxc)  (rp)) ;; Support. 
(when (lxc)  (tp)) ;; Support. 
(when (qxc)  (up)) ;; Support. 
(when (txc)  (vp)) ;; Support. 
(when (vxc)  (xp)) ;; Support. 
(when (yxc)  (yp)) ;; Support. 
(when (byc)  (zp)) ;; Support. 
(when (gyc)  (bq)) ;; Support. 
(when (jyc)  (cq)) ;; Support. 
(when (lyc)  (gq)) ;; Support. 
(when (ric) (and (hq) (vw))) ;; Support. 
(when (uic)  (jq)) ;; Support. 
(when (xic)  (kq)) ;; Support. 
(when (zic)  (lq)) ;; Support. 
(when (cjc)  (mq)) ;; Support. 
(when (hjc)  (qq)) ;; Support. 
(when (kjc)  (rq)) ;; Support. 
(when (mjc)  (tq)) ;; Support. 
(when (rjc)  (uq)) ;; Support. 
(when (ujc)  (vq)) ;; Support. 
(when (xjc)  (xq)) ;; Support. 
(when (zjc)  (yq)) ;; Support. 
(when (ckc)  (zq)) ;; Support. 
(when (hkc)  (bs)) ;; Support. 
(when (kkc)  (cs)) ;; Support. 
(when (mkc)  (gs)) ;; Support. 
(when (rkc)  (hs)) ;; Support. 
(when (ukc)  (js)) ;; Support. 
(when (xkc)  (ks)) ;; Support. 
(when (zkc)  (ls)) ;; Support. 
(when (clc)  (ms)) ;; Support. 
(when (hlc)  (qs)) ;; Support. 
(when (klc)  (rs)) ;; Support. 
(when (mlc)  (ts)) ;; Support. 
(when (rlc)  (us)) ;; Support. 
(when (ulc)  (vs)) ;; Support. 
(when (xlc)  (xs)) ;; Support. 
(when (zlc)  (ys)) ;; Support. 
(when (cmc)  (zs)) ;; Support. 
(when (hmc)  (br)) ;; Support. 
(when (kmc)  (cr)) ;; Support. 
(when (mmc)  (gr)) ;; Support. 
(when (rmc)  (hr)) ;; Support. 
(when (umc)  (jr)) ;; Support. 
(when (xmc)  (kr)) ;; Support. 
(when (zmc)  (lr)) ;; Support. 
(when (bnc)  (mr)) ;; Support. 
(when (gnc)  (qr)) ;; Support. 
(when (jnc)  (rr)) ;; Support. 
(when (lnc)  (tr)) ;; Support. 
(when (qnc)  (ur)) ;; Support. 
(when (tnc)  (vr)) ;; Support. 
(when (vnc)  (xr)) ;; Support. 
(when (ync)  (yr)) ;; Support. 
(when (boc)  (zr)) ;; Support. 
(when (goc)  (bt)) ;; Support. 
(when (joc)  (ct)) ;; Support. 
(when (loc)  (gt)) ;; Support. 
(when (qoc)  (ht)) ;; Support. 
(when (toc)  (jt)) ;; Support. 
(when (voc)  (kt)) ;; Support. 
(when (yoc)  (lt)) ;; Support. 
(when (bpc)  (mt)) ;; Support. 
(when (gpc)  (qt)) ;; Support. 
(when (jpc)  (rt)) ;; Support. 
(when (lpc)  (tt)) ;; Support. 
(when (qpc)  (ut)) ;; Support. 
(when (tpc)  (vt)) ;; Support. 
(when (vpc)  (xt)) ;; Support. 
(when (ypc)  (yt)) ;; Support. 
(when (bqc)  (zt)) ;; Support. 
(when (gqc)  (bu)) ;; Support. 
(when (jqc)  (cu)) ;; Support. 
(when (lqc)  (gu)) ;; Support. 
(when (qqc)  (hu)) ;; Support. 
(when (tqc)  (ju)) ;; Support. 
(when (vqc)  (ku)) ;; Support. 
(when (yqc)  (lu)) ;; Support. 
(when (bsc)  (mu)) ;; Support. 
(when (gsc)  (qu)) ;; Support. 
(when (lsc)  (tu)) ;; Support. 
(when (qsc)  (uu)) ;; Support. 
(when (tsc)  (vu)) ;; Support. 
(when (vsc)  (xu)) ;; Support. 
(when (ysc)  (yu)) ;; Support. 
(when (brc)  (zu)) ;; Support. 
(when (grc)  (bv)) ;; Support. 
(when (jrc)  (cv)) ;; Support. 
(when (lrc)  (gv)) ;; Support. 
(when (qrc)  (hv)) ;; Support. 
(when (trc)  (jv)) ;; Support. 
(when (vrc)  (kv)) ;; Support. 
(when (yrc)  (lv)) ;; Support. 
(when (btc)  (mv)) ;; Support. 
(when (gtc)  (qv)) ;; Support. 
(when (jtc)  (rv)) ;; Support. 
(when (ltc)  (tv)) ;; Support. 
(when (qtc)  (uv)) ;; Support. 
(when (ttc)  (vv)) ;; Support. 
(when (vtc)  (xv)) ;; Support. 
(when (ytc)  (yv)) ;; Support. 
(when (buc)  (zv)) ;; Support. 
(when (guc)  (bw)) ;; Support. 
(when (juc)  (cw)) ;; Support. 
(when (luc)  (gw)) ;; Support. 
(when (quc)  (hw)) ;; Support. 
(when (tuc)  (jw)) ;; Support. 
(when (vuc)  (kw)) ;; Support. 
(when (yuc)  (lw)) ;; Support. 
(when (bvc)  (mw)) ;; Support. 
(when (gvc)  (qw)) ;; Support. 
(when (jvc)  (rw)) ;; Support. 
(when (lvc)  (tw)) ;; Support. 
(when (qvc)  (uw)) ;; Support. 
(when (uvc)  (xw)) ;; Support. 
(when (xvc)  (yw)) ;; Support. 
(when (zvc)  (zw)) ;; Support. 
(when (hwc)  (cx)) ;; Support. 
(when (kwc)  (gx)) ;; Support. 
(when (mwc)  (hx)) ;; Support. 
(when (rwc)  (jx)) ;; Support. 
(when (uwc)  (kx)) ;; Support. 
(when (xwc)  (lx)) ;; Support. 
(when (zwc)  (mx)) ;; Support. 
(when (cxc)  (qx)) ;; Support. 
(when (mxc)  (ux)) ;; Support. 
(when (rxc)  (vx)) ;; Support. 
(when (uxc)  (xx)) ;; Support. 
(when (xxc)  (yx)) ;; Support. 
(when (zxc)  (zx)) ;; Support. 
(when (cyc)  (by)) ;; Support. 
(when (hyc)  (cy)) ;; Support. 
(when (kyc)  (gy)) ;; Support. 
(when (myc)  (hy)) ;; Support. 
(when (qyc) (and (hq) (mr))) ;; Support. 
(when (tyc)  (jq)) ;; Support. 
(when (vyc)  (kq)) ;; Support. 
(when (yyc)  (lq)) ;; Support. 
(when (bzc)  (mq)) ;; Support. 
(when (gzc)  (qq)) ;; Support. 
(when (jzc)  (rq)) ;; Support. 
(when (lzc)  (tq)) ;; Support. 
(when (qzc)  (uq)) ;; Support. 
(when (tzc)  (vq)) ;; Support. 
(when (vzc)  (xq)) ;; Support. 
(when (yzc)  (yq)) ;; Support. 
(when (b1c)  (zq)) ;; Support. 
(when (g1c)  (bs)) ;; Support. 
(when (j1c)  (cs)) ;; Support. 
(when (l1c)  (gs)) ;; Support. 
(when (q1c)  (hs)) ;; Support. 
(when (t1c)  (js)) ;; Support. 
(when (v1c)  (ks)) ;; Support. 
(when (b2c)  (ms)) ;; Support. 
(when (g2c)  (qs)) ;; Support. 
(when (j2c)  (rs)) ;; Support. 
(when (l2c)  (ts)) ;; Support. 
(when (q2c)  (us)) ;; Support. 
(when (v2c)  (xs)) ;; Support. 
(when (y2c)  (ys)) ;; Support. 
(when (b3c)  (zs)) ;; Support. 
(when (g3c)  (br)) ;; Support. 
(when (j3c)  (cr)) ;; Support. 
(when (l3c)  (gr)) ;; Support. 
(when (q3c)  (hr)) ;; Support. 
(when (t3c)  (jr)) ;; Support. 
(when (v3c)  (kr)) ;; Support. 
(when (y3c)  (lr)) ;; Support. 
(when (h4c)  (rr)) ;; Support. 
(when (k4c)  (tr)) ;; Support. 
(when (m4c)  (ur)) ;; Support. 
(when (r4c)  (vr)) ;; Support. 
(when (u4c)  (xr)) ;; Support. 
(when (x4c)  (yr)) ;; Support. 
(when (z4c)  (zr)) ;; Support. 
(when (c5c)  (bt)) ;; Support. 
(when (h5c)  (ct)) ;; Support. 
(when (k5c)  (gt)) ;; Support. 
(when (m5c)  (ht)) ;; Support. 
(when (r5c)  (jt)) ;; Support. 
(when (u5c)  (kt)) ;; Support. 
(when (x5c)  (lt)) ;; Support. 
(when (z5c)  (mt)) ;; Support. 
(when (c6c)  (qt)) ;; Support. 
(when (h6c)  (rt)) ;; Support. 
(when (k6c)  (tt)) ;; Support. 
(when (m6c)  (ut)) ;; Support. 
(when (r6c)  (vt)) ;; Support. 
(when (u6c)  (xt)) ;; Support. 
(when (x6c)  (yt)) ;; Support. 
(when (z6c)  (zt)) ;; Support. 
(when (c7c)  (bu)) ;; Support. 
(when (h7c)  (cu)) ;; Support. 
(when (k7c)  (gu)) ;; Support. 
(when (m7c)  (hu)) ;; Support. 
(when (u7c)  (ku)) ;; Support. 
(when (z7c)  (mu)) ;; Support. 
(when (c8c)  (qu)) ;; Support. 
(when (k8c)  (tu)) ;; Support. 
(when (m8c)  (uu)) ;; Support. 
(when (u8c)  (xu)) ;; Support. 
(when (x8c)  (yu)) ;; Support. 
(when (z8c)  (zu)) ;; Support. 
(when (c9c)  (bv)) ;; Support. 
(when (k9c)  (gv)) ;; Support. 
(when (m9c)  (hv)) ;; Support. 
(when (r9c)  (jv)) ;; Support. 
(when (u9c)  (kv)) ;; Support. 
(when (x9c)  (lv)) ;; Support. 
(when (z9c)  (mv)) ;; Support. 
(when (c0c)  (qv)) ;; Support. 
(when (h0c)  (rv)) ;; Support. 
(when (k0c)  (tv)) ;; Support. 
(when (m0c)  (uv)) ;; Support. 
(when (r0c)  (vv)) ;; Support. 
(when (u0c)  (xv)) ;; Support. 
(when (x0c)  (yv)) ;; Support. 
(when (z0c)  (zv)) ;; Support. 
(when (cad)  (bw)) ;; Support. 
(when (had)  (cw)) ;; Support. 
(when (kad)  (gw)) ;; Support. 
(when (mad)  (hw)) ;; Support. 
(when (rad)  (jw)) ;; Support. 
(when (uad)  (kw)) ;; Support. 
(when (xad)  (lw)) ;; Support. 
(when (zad)  (mw)) ;; Support. 
(when (cbd)  (qw)) ;; Support. 
(when (hbd)  (rw)) ;; Support. 
(when (kbd)  (tw)) ;; Support. 
(when (mbd)  (uw)) ;; Support. 
(when (rbd)  (vw)) ;; Support. 
(when (tbd)  (xw)) ;; Support. 
(when (vbd)  (yw)) ;; Support. 
(when (ybd)  (zw)) ;; Support. 
(when (bcd)  (bx)) ;; Support. 
(when (gcd)  (cx)) ;; Support. 
(when (jcd)  (gx)) ;; Support. 
(when (lcd)  (hx)) ;; Support. 
(when (qcd)  (jx)) ;; Support. 
(when (tcd)  (kx)) ;; Support. 
(when (vcd)  (lx)) ;; Support. 
(when (ycd)  (mx)) ;; Support. 
(when (bdd)  (qx)) ;; Support. 
(when (gdd)  (rx)) ;; Support. 
(when (jdd)  (tx)) ;; Support. 
(when (ldd)  (ux)) ;; Support. 
(when (qdd)  (vx)) ;; Support. 
(when (tdd)  (xx)) ;; Support. 
(when (vdd)  (yx)) ;; Support. 
(when (ydd)  (zx)) ;; Support. 
(when (bed)  (by)) ;; Support. 
(when (ged)  (cy)) ;; Support. 
(when (jed)  (gy)) ;; Support. 
(when (led)  (hy)) ;; Support. 
(when (ryc) (and (jy) (x5))) ;; Support. 
(when (uyc)  (ky)) ;; Support. 
(when (xyc)  (ly)) ;; Support. 
(when (zyc)  (my)) ;; Support. 
(when (czc)  (qy)) ;; Support. 
(when (hzc)  (ry)) ;; Support. 
(when (kzc)  (ty)) ;; Support. 
(when (mzc)  (uy)) ;; Support. 
(when (rzc)  (vy)) ;; Support. 
(when (uzc)  (xy)) ;; Support. 
(when (xzc)  (yy)) ;; Support. 
(when (zzc)  (zy)) ;; Support. 
(when (c1c)  (bz)) ;; Support. 
(when (h1c)  (cz)) ;; Support. 
(when (k1c)  (gz)) ;; Support. 
(when (m1c)  (hz)) ;; Support. 
(when (r1c)  (jz)) ;; Support. 
(when (u1c)  (kz)) ;; Support. 
(when (x1c)  (lz)) ;; Support. 
(when (z1c)  (mz)) ;; Support. 
(when (c2c)  (qz)) ;; Support. 
(when (h2c)  (rz)) ;; Support. 
(when (k2c)  (tz)) ;; Support. 
(when (m2c)  (uz)) ;; Support. 
(when (r2c)  (vz)) ;; Support. 
(when (u2c)  (xz)) ;; Support. 
(when (x2c)  (yz)) ;; Support. 
(when (z2c)  (zz)) ;; Support. 
(when (c3c)  (b1)) ;; Support. 
(when (h3c)  (c1)) ;; Support. 
(when (k3c)  (g1)) ;; Support. 
(when (m3c)  (h1)) ;; Support. 
(when (r3c)  (j1)) ;; Support. 
(when (u3c)  (k1)) ;; Support. 
(when (x3c)  (l1)) ;; Support. 
(when (z3c)  (m1)) ;; Support. 
(when (b4c)  (q1)) ;; Support. 
(when (g4c)  (r1)) ;; Support. 
(when (j4c)  (t1)) ;; Support. 
(when (l4c)  (u1)) ;; Support. 
(when (q4c)  (v1)) ;; Support. 
(when (t4c)  (x1)) ;; Support. 
(when (v4c)  (y1)) ;; Support. 
(when (y4c)  (z1)) ;; Support. 
(when (b5c)  (b2)) ;; Support. 
(when (g5c)  (c2)) ;; Support. 
(when (j5c)  (g2)) ;; Support. 
(when (l5c)  (h2)) ;; Support. 
(when (q5c)  (j2)) ;; Support. 
(when (t5c)  (k2)) ;; Support. 
(when (v5c)  (l2)) ;; Support. 
(when (y5c)  (m2)) ;; Support. 
(when (b6c)  (q2)) ;; Support. 
(when (g6c)  (r2)) ;; Support. 
(when (j6c)  (t2)) ;; Support. 
(when (l6c)  (u2)) ;; Support. 
(when (q6c)  (v2)) ;; Support. 
(when (t6c)  (x2)) ;; Support. 
(when (v6c)  (y2)) ;; Support. 
(when (y6c)  (z2)) ;; Support. 
(when (b7c)  (b3)) ;; Support. 
(when (g7c)  (c3)) ;; Support. 
(when (j7c)  (g3)) ;; Support. 
(when (l7c)  (h3)) ;; Support. 
(when (q7c)  (j3)) ;; Support. 
(when (t7c)  (k3)) ;; Support. 
(when (v7c)  (l3)) ;; Support. 
(when (b8c)  (q3)) ;; Support. 
(when (g8c)  (r3)) ;; Support. 
(when (l8c)  (u3)) ;; Support. 
(when (t8c)  (x3)) ;; Support. 
(when (v8c)  (y3)) ;; Support. 
(when (y8c)  (z3)) ;; Support. 
(when (b9c)  (b4)) ;; Support. 
(when (g9c)  (c4)) ;; Support. 
(when (j9c)  (g4)) ;; Support. 
(when (l9c)  (h4)) ;; Support. 
(when (q9c)  (j4)) ;; Support. 
(when (v9c)  (l4)) ;; Support. 
(when (y9c)  (m4)) ;; Support. 
(when (g0c)  (r4)) ;; Support. 
(when (j0c)  (t4)) ;; Support. 
(when (l0c)  (u4)) ;; Support. 
(when (q0c)  (v4)) ;; Support. 
(when (t0c)  (x4)) ;; Support. 
(when (v0c)  (y4)) ;; Support. 
(when (y0c)  (z4)) ;; Support. 
(when (bad)  (b5)) ;; Support. 
(when (gad)  (c5)) ;; Support. 
(when (jad)  (g5)) ;; Support. 
(when (lad)  (h5)) ;; Support. 
(when (qad)  (j5)) ;; Support. 
(when (tad)  (k5)) ;; Support. 
(when (vad)  (l5)) ;; Support. 
(when (yad)  (m5)) ;; Support. 
(when (bbd)  (q5)) ;; Support. 
(when (gbd)  (r5)) ;; Support. 
(when (jbd)  (t5)) ;; Support. 
(when (lbd)  (u5)) ;; Support. 
(when (qbd)  (v5)) ;; Support. 
(when (ubd)  (y5)) ;; Support. 
(when (xbd)  (z5)) ;; Support. 
(when (zbd)  (b6)) ;; Support. 
(when (hcd)  (g6)) ;; Support. 
(when (kcd)  (h6)) ;; Support. 
(when (mcd)  (j6)) ;; Support. 
(when (rcd)  (k6)) ;; Support. 
(when (ucd)  (l6)) ;; Support. 
(when (xcd)  (m6)) ;; Support. 
(when (zcd)  (q6)) ;; Support. 
(when (cdd)  (r6)) ;; Support. 
(when (mdd)  (v6)) ;; Support. 
(when (rdd)  (x6)) ;; Support. 
(when (udd)  (y6)) ;; Support. 
(when (xdd)  (z6)) ;; Support. 
(when (zdd)  (b7)) ;; Support. 
(when (ced)  (c7)) ;; Support. 
(when (hed)  (g7)) ;; Support. 
(when (ked)  (h7)) ;; Support. 
(when (med)  (j7)) ;; Support. 
(when (qed) (and (jy) (q1))) ;; Support. 
(when (ted)  (ky)) ;; Support. 
(when (ved)  (ly)) ;; Support. 
(when (yed)  (my)) ;; Support. 
(when (bfd)  (qy)) ;; Support. 
(when (gfd)  (ry)) ;; Support. 
(when (jfd)  (ty)) ;; Support. 
(when (lfd)  (uy)) ;; Support. 
(when (qfd)  (vy)) ;; Support. 
(when (tfd)  (xy)) ;; Support. 
(when (vfd)  (yy)) ;; Support. 
(when (yfd)  (zy)) ;; Support. 
(when (bgd)  (bz)) ;; Support. 
(when (ggd)  (cz)) ;; Support. 
(when (jgd)  (gz)) ;; Support. 
(when (lgd)  (hz)) ;; Support. 
(when (qgd)  (jz)) ;; Support. 
(when (tgd)  (kz)) ;; Support. 
(when (vgd)  (lz)) ;; Support. 
(when (ygd)  (mz)) ;; Support. 
(when (bhd)  (qz)) ;; Support. 
(when (ghd)  (rz)) ;; Support. 
(when (jhd)  (tz)) ;; Support. 
(when (lhd)  (uz)) ;; Support. 
(when (qhd)  (vz)) ;; Support. 
(when (vhd)  (yz)) ;; Support. 
(when (yhd)  (zz)) ;; Support. 
(when (bid)  (b1)) ;; Support. 
(when (gid)  (c1)) ;; Support. 
(when (jid)  (g1)) ;; Support. 
(when (lid)  (h1)) ;; Support. 
(when (qid)  (j1)) ;; Support. 
(when (tid)  (k1)) ;; Support. 
(when (vid)  (l1)) ;; Support. 
(when (yid)  (m1)) ;; Support. 
(when (cjd)  (r1)) ;; Support. 
(when (hjd)  (t1)) ;; Support. 
(when (kjd)  (u1)) ;; Support. 
(when (mjd)  (v1)) ;; Support. 
(when (rjd)  (x1)) ;; Support. 
(when (ujd)  (y1)) ;; Support. 
(when (xjd)  (z1)) ;; Support. 
(when (zjd)  (b2)) ;; Support. 
(when (ckd)  (c2)) ;; Support. 
(when (hkd)  (g2)) ;; Support. 
(when (kkd)  (h2)) ;; Support. 
(when (mkd)  (j2)) ;; Support. 
(when (rkd)  (k2)) ;; Support. 
(when (ukd)  (l2)) ;; Support. 
(when (xkd)  (m2)) ;; Support. 
(when (zkd)  (q2)) ;; Support. 
(when (cld)  (r2)) ;; Support. 
(when (hld)  (t2)) ;; Support. 
(when (kld)  (u2)) ;; Support. 
(when (mld)  (v2)) ;; Support. 
(when (rld)  (x2)) ;; Support. 
(when (uld)  (y2)) ;; Support. 
(when (xld)  (z2)) ;; Support. 
(when (zld)  (b3)) ;; Support. 
(when (cmd)  (c3)) ;; Support. 
(when (hmd)  (g3)) ;; Support. 
(when (kmd)  (h3)) ;; Support. 
(when (mmd)  (j3)) ;; Support. 
(when (umd)  (l3)) ;; Support. 
(when (zmd)  (q3)) ;; Support. 
(when (cnd)  (r3)) ;; Support. 
(when (hnd)  (t3)) ;; Support. 
(when (knd)  (u3)) ;; Support. 
(when (mnd)  (v3)) ;; Support. 
(when (rnd)  (x3)) ;; Support. 
(when (und)  (y3)) ;; Support. 
(when (xnd)  (z3)) ;; Support. 
(when (znd)  (b4)) ;; Support. 
(when (cod)  (c4)) ;; Support. 
(when (kod)  (h4)) ;; Support. 
(when (mod)  (j4)) ;; Support. 
(when (rod)  (k4)) ;; Support. 
(when (uod)  (l4)) ;; Support. 
(when (xod)  (m4)) ;; Support. 
(when (zod)  (q4)) ;; Support. 
(when (cpd)  (r4)) ;; Support. 
(when (hpd)  (t4)) ;; Support. 
(when (kpd)  (u4)) ;; Support. 
(when (mpd)  (v4)) ;; Support. 
(when (rpd)  (x4)) ;; Support. 
(when (upd)  (y4)) ;; Support. 
(when (xpd)  (z4)) ;; Support. 
(when (zpd)  (b5)) ;; Support. 
(when (cqd)  (c5)) ;; Support. 
(when (hqd)  (g5)) ;; Support. 
(when (kqd)  (h5)) ;; Support. 
(when (mqd)  (j5)) ;; Support. 
(when (rqd)  (k5)) ;; Support. 
(when (uqd)  (l5)) ;; Support. 
(when (xqd)  (m5)) ;; Support. 
(when (zqd)  (q5)) ;; Support. 
(when (csd)  (r5)) ;; Support. 
(when (hsd)  (t5)) ;; Support. 
(when (ksd)  (u5)) ;; Support. 
(when (msd)  (v5)) ;; Support. 
(when (rsd)  (x5)) ;; Support. 
(when (tsd)  (y5)) ;; Support. 
(when (vsd)  (z5)) ;; Support. 
(when (ysd)  (b6)) ;; Support. 
(when (brd)  (c6)) ;; Support. 
(when (grd)  (g6)) ;; Support. 
(when (jrd)  (h6)) ;; Support. 
(when (lrd)  (j6)) ;; Support. 
(when (qrd)  (k6)) ;; Support. 
(when (trd)  (l6)) ;; Support. 
(when (vrd)  (m6)) ;; Support. 
(when (yrd)  (q6)) ;; Support. 
(when (btd)  (r6)) ;; Support. 
(when (gtd)  (t6)) ;; Support. 
(when (jtd)  (u6)) ;; Support. 
(when (ltd)  (v6)) ;; Support. 
(when (qtd)  (x6)) ;; Support. 
(when (ttd)  (y6)) ;; Support. 
(when (vtd)  (z6)) ;; Support. 
(when (ytd)  (b7)) ;; Support. 
(when (bud)  (c7)) ;; Support. 
(when (gud)  (g7)) ;; Support. 
(when (jud)  (h7)) ;; Support. 
(when (lud)  (j7)) ;; Support. 
(when (red) (and (k7) (ycb))) ;; Support. 
(when (ued)  (l7)) ;; Support. 
(when (xed)  (m7)) ;; Support. 
(when (zed)  (q7)) ;; Support. 
(when (cfd)  (r7)) ;; Support. 
(when (hfd)  (t7)) ;; Support. 
(when (kfd)  (u7)) ;; Support. 
(when (mfd)  (v7)) ;; Support. 
(when (rfd)  (x7)) ;; Support. 
(when (ufd)  (y7)) ;; Support. 
(when (xfd)  (z7)) ;; Support. 
(when (zfd)  (b8)) ;; Support. 
(when (cgd)  (c8)) ;; Support. 
(when (hgd)  (g8)) ;; Support. 
(when (kgd)  (h8)) ;; Support. 
(when (mgd)  (j8)) ;; Support. 
(when (rgd)  (k8)) ;; Support. 
(when (ugd)  (l8)) ;; Support. 
(when (xgd)  (m8)) ;; Support. 
(when (zgd)  (q8)) ;; Support. 
(when (chd)  (r8)) ;; Support. 
(when (hhd)  (t8)) ;; Support. 
(when (khd)  (u8)) ;; Support. 
(when (mhd)  (v8)) ;; Support. 
(when (rhd)  (x8)) ;; Support. 
(when (uhd)  (y8)) ;; Support. 
(when (xhd)  (z8)) ;; Support. 
(when (zhd)  (b9)) ;; Support. 
(when (cid)  (c9)) ;; Support. 
(when (hid)  (g9)) ;; Support. 
(when (kid)  (h9)) ;; Support. 
(when (mid)  (j9)) ;; Support. 
(when (rid)  (k9)) ;; Support. 
(when (uid)  (l9)) ;; Support. 
(when (xid)  (m9)) ;; Support. 
(when (zid)  (q9)) ;; Support. 
(when (bjd)  (r9)) ;; Support. 
(when (gjd)  (t9)) ;; Support. 
(when (jjd)  (u9)) ;; Support. 
(when (ljd)  (v9)) ;; Support. 
(when (qjd)  (x9)) ;; Support. 
(when (tjd)  (y9)) ;; Support. 
(when (vjd)  (z9)) ;; Support. 
(when (yjd)  (b0)) ;; Support. 
(when (bkd)  (c0)) ;; Support. 
(when (gkd)  (g0)) ;; Support. 
(when (jkd)  (h0)) ;; Support. 
(when (lkd)  (j0)) ;; Support. 
(when (qkd)  (k0)) ;; Support. 
(when (tkd)  (l0)) ;; Support. 
(when (vkd)  (m0)) ;; Support. 
(when (ykd)  (q0)) ;; Support. 
(when (bld)  (r0)) ;; Support. 
(when (gld)  (t0)) ;; Support. 
(when (jld)  (u0)) ;; Support. 
(when (lld)  (v0)) ;; Support. 
(when (qld)  (x0)) ;; Support. 
(when (tld)  (y0)) ;; Support. 
(when (vld)  (z0)) ;; Support. 
(when (yld)  (bab)) ;; Support. 
(when (bmd)  (cab)) ;; Support. 
(when (gmd)  (gab)) ;; Support. 
(when (jmd)  (hab)) ;; Support. 
(when (lmd)  (jab)) ;; Support. 
(when (qmd)  (kab)) ;; Support. 
(when (vmd)  (mab)) ;; Support. 
(when (gnd)  (tab)) ;; Support. 
(when (lnd)  (vab)) ;; Support. 
(when (tnd)  (yab)) ;; Support. 
(when (vnd)  (zab)) ;; Support. 
(when (ynd)  (bbb)) ;; Support. 
(when (bod)  (cbb)) ;; Support. 
(when (god)  (gbb)) ;; Support. 
(when (jod)  (hbb)) ;; Support. 
(when (lod)  (jbb)) ;; Support. 
(when (qod)  (kbb)) ;; Support. 
(when (vod)  (mbb)) ;; Support. 
(when (yod)  (qbb)) ;; Support. 
(when (gpd)  (tbb)) ;; Support. 
(when (qpd)  (xbb)) ;; Support. 
(when (tpd)  (ybb)) ;; Support. 
(when (vpd)  (zbb)) ;; Support. 
(when (ypd)  (bcb)) ;; Support. 
(when (bqd)  (ccb)) ;; Support. 
(when (gqd)  (gcb)) ;; Support. 
(when (jqd)  (hcb)) ;; Support. 
(when (lqd)  (jcb)) ;; Support. 
(when (qqd)  (kcb)) ;; Support. 
(when (tqd)  (lcb)) ;; Support. 
(when (vqd)  (mcb)) ;; Support. 
(when (yqd)  (qcb)) ;; Support. 
(when (bsd)  (rcb)) ;; Support. 
(when (gsd)  (tcb)) ;; Support. 
(when (jsd)  (ucb)) ;; Support. 
(when (lsd)  (vcb)) ;; Support. 
(when (qsd)  (xcb)) ;; Support. 
(when (usd)  (zcb)) ;; Support. 
(when (xsd)  (bdb)) ;; Support. 
(when (hrd)  (hdb)) ;; Support. 
(when (mrd)  (kdb)) ;; Support. 
(when (rrd)  (ldb)) ;; Support. 
(when (urd)  (mdb)) ;; Support. 
(when (xrd)  (qdb)) ;; Support. 
(when (zrd)  (rdb)) ;; Support. 
(when (ctd)  (tdb)) ;; Support. 
(when (mtd)  (xdb)) ;; Support. 
(when (rtd)  (ydb)) ;; Support. 
(when (utd)  (zdb)) ;; Support. 
(when (xtd)  (beb)) ;; Support. 
(when (ztd)  (ceb)) ;; Support. 
(when (cud)  (geb)) ;; Support. 
(when (kud)  (jeb)) ;; Support. 
(when (qud) (and (k7) (r9))) ;; Support. 
(when (tud)  (l7)) ;; Support. 
(when (vud)  (m7)) ;; Support. 
(when (yud)  (q7)) ;; Support. 
(when (bvd)  (r7)) ;; Support. 
(when (gvd)  (t7)) ;; Support. 
(when (jvd)  (u7)) ;; Support. 
(when (lvd)  (v7)) ;; Support. 
(when (qvd)  (x7)) ;; Support. 
(when (tvd)  (y7)) ;; Support. 
(when (vvd)  (z7)) ;; Support. 
(when (yvd)  (b8)) ;; Support. 
(when (bwd)  (c8)) ;; Support. 
(when (gwd)  (g8)) ;; Support. 
(when (jwd)  (h8)) ;; Support. 
(when (lwd)  (j8)) ;; Support. 
(when (qwd)  (k8)) ;; Support. 
(when (twd)  (l8)) ;; Support. 
(when (vwd)  (m8)) ;; Support. 
(when (ywd)  (q8)) ;; Support. 
(when (bxd)  (r8)) ;; Support. 
(when (gxd)  (t8)) ;; Support. 
(when (jxd)  (u8)) ;; Support. 
(when (lxd)  (v8)) ;; Support. 
(when (qxd)  (x8)) ;; Support. 
(when (vxd)  (z8)) ;; Support. 
(when (yxd)  (b9)) ;; Support. 
(when (byd)  (c9)) ;; Support. 
(when (gyd)  (g9)) ;; Support. 
(when (jyd)  (h9)) ;; Support. 
(when (lyd)  (j9)) ;; Support. 
(when (qyd)  (k9)) ;; Support. 
(when (tyd)  (l9)) ;; Support. 
(when (vyd)  (m9)) ;; Support. 
(when (yyd)  (q9)) ;; Support. 
(when (czd)  (t9)) ;; Support. 
(when (hzd)  (u9)) ;; Support. 
(when (kzd)  (v9)) ;; Support. 
(when (mzd)  (x9)) ;; Support. 
(when (rzd)  (y9)) ;; Support. 
(when (uzd)  (z9)) ;; Support. 
(when (xzd)  (b0)) ;; Support. 
(when (zzd)  (c0)) ;; Support. 
(when (c1d)  (g0)) ;; Support. 
(when (h1d)  (h0)) ;; Support. 
(when (k1d)  (j0)) ;; Support. 
(when (m1d)  (k0)) ;; Support. 
(when (r1d)  (l0)) ;; Support. 
(when (u1d)  (m0)) ;; Support. 
(when (x1d)  (q0)) ;; Support. 
(when (z1d)  (r0)) ;; Support. 
(when (c2d)  (t0)) ;; Support. 
(when (h2d)  (u0)) ;; Support. 
(when (k2d)  (v0)) ;; Support. 
(when (m2d)  (x0)) ;; Support. 
(when (r2d)  (y0)) ;; Support. 
(when (u2d)  (z0)) ;; Support. 
(when (x2d)  (bab)) ;; Support. 
(when (z2d)  (cab)) ;; Support. 
(when (c3d)  (gab)) ;; Support. 
(when (h3d)  (hab)) ;; Support. 
(when (k3d)  (jab)) ;; Support. 
(when (m3d)  (kab)) ;; Support. 
(when (u3d)  (mab)) ;; Support. 
(when (x3d)  (qab)) ;; Support. 
(when (z3d)  (rab)) ;; Support. 
(when (c4d)  (tab)) ;; Support. 
(when (h4d)  (uab)) ;; Support. 
(when (k4d)  (vab)) ;; Support. 
(when (m4d)  (xab)) ;; Support. 
(when (r4d)  (yab)) ;; Support. 
(when (u4d)  (zab)) ;; Support. 
(when (x4d)  (bbb)) ;; Support. 
(when (z4d)  (cbb)) ;; Support. 
(when (c5d)  (gbb)) ;; Support. 
(when (h5d)  (hbb)) ;; Support. 
(when (k5d)  (jbb)) ;; Support. 
(when (m5d)  (kbb)) ;; Support. 
(when (r5d)  (lbb)) ;; Support. 
(when (u5d)  (mbb)) ;; Support. 
(when (x5d)  (qbb)) ;; Support. 
(when (z5d)  (rbb)) ;; Support. 
(when (c6d)  (tbb)) ;; Support. 
(when (h6d)  (ubb)) ;; Support. 
(when (k6d)  (vbb)) ;; Support. 
(when (m6d)  (xbb)) ;; Support. 
(when (r6d)  (ybb)) ;; Support. 
(when (u6d)  (zbb)) ;; Support. 
(when (x6d)  (bcb)) ;; Support. 
(when (z6d)  (ccb)) ;; Support. 
(when (c7d)  (gcb)) ;; Support. 
(when (h7d)  (hcb)) ;; Support. 
(when (k7d)  (jcb)) ;; Support. 
(when (m7d)  (kcb)) ;; Support. 
(when (r7d)  (lcb)) ;; Support. 
(when (u7d)  (mcb)) ;; Support. 
(when (x7d)  (qcb)) ;; Support. 
(when (z7d)  (rcb)) ;; Support. 
(when (c8d)  (tcb)) ;; Support. 
(when (h8d)  (ucb)) ;; Support. 
(when (k8d)  (vcb)) ;; Support. 
(when (m8d)  (xcb)) ;; Support. 
(when (r8d)  (ycb)) ;; Support. 
(when (t8d)  (zcb)) ;; Support. 
(when (v8d)  (bdb)) ;; Support. 
(when (y8d)  (cdb)) ;; Support. 
(when (b9d)  (gdb)) ;; Support. 
(when (g9d)  (hdb)) ;; Support. 
(when (j9d)  (jdb)) ;; Support. 
(when (l9d)  (kdb)) ;; Support. 
(when (q9d)  (ldb)) ;; Support. 
(when (t9d)  (mdb)) ;; Support. 
(when (v9d)  (qdb)) ;; Support. 
(when (y9d)  (rdb)) ;; Support. 
(when (b0d)  (tdb)) ;; Support. 
(when (g0d)  (udb)) ;; Support. 
(when (j0d)  (vdb)) ;; Support. 
(when (l0d)  (xdb)) ;; Support. 
(when (q0d)  (ydb)) ;; Support. 
(when (t0d)  (zdb)) ;; Support. 
(when (v0d)  (beb)) ;; Support. 
(when (y0d)  (ceb)) ;; Support. 
(when (bae)  (geb)) ;; Support. 
(when (gae)  (heb)) ;; Support. 
(when (jae)  (jeb)) ;; Support. 
(when (lae)  (keb)) ;; Support. 
(when (rud) (and (leb) (zkb))) ;; Support. 
(when (uud)  (meb)) ;; Support. 
(when (xud)  (qeb)) ;; Support. 
(when (zud)  (reb)) ;; Support. 
(when (cvd)  (teb)) ;; Support. 
(when (hvd)  (ueb)) ;; Support. 
(when (kvd)  (veb)) ;; Support. 
(when (mvd)  (xeb)) ;; Support. 
(when (rvd)  (yeb)) ;; Support. 
(when (uvd)  (zeb)) ;; Support. 
(when (xvd)  (bfb)) ;; Support. 
(when (zvd)  (cfb)) ;; Support. 
(when (cwd)  (gfb)) ;; Support. 
(when (hwd)  (hfb)) ;; Support. 
(when (kwd)  (jfb)) ;; Support. 
(when (mwd)  (kfb)) ;; Support. 
(when (rwd)  (lfb)) ;; Support. 
(when (uwd)  (mfb)) ;; Support. 
(when (xwd)  (qfb)) ;; Support. 
(when (zwd)  (rfb)) ;; Support. 
(when (cxd)  (tfb)) ;; Support. 
(when (hxd)  (ufb)) ;; Support. 
(when (kxd)  (vfb)) ;; Support. 
(when (mxd)  (xfb)) ;; Support. 
(when (rxd)  (yfb)) ;; Support. 
(when (xxd)  (bgb)) ;; Support. 
(when (zxd)  (cgb)) ;; Support. 
(when (cyd)  (ggb)) ;; Support. 
(when (hyd)  (hgb)) ;; Support. 
(when (kyd)  (jgb)) ;; Support. 
(when (myd)  (kgb)) ;; Support. 
(when (ryd)  (lgb)) ;; Support. 
(when (uyd)  (mgb)) ;; Support. 
(when (xyd)  (qgb)) ;; Support. 
(when (zyd)  (rgb)) ;; Support. 
(when (bzd)  (tgb)) ;; Support. 
(when (gzd)  (ugb)) ;; Support. 
(when (jzd)  (vgb)) ;; Support. 
(when (lzd)  (xgb)) ;; Support. 
(when (qzd)  (ygb)) ;; Support. 
(when (tzd)  (zgb)) ;; Support. 
(when (vzd)  (bhb)) ;; Support. 
(when (yzd)  (chb)) ;; Support. 
(when (b1d)  (ghb)) ;; Support. 
(when (g1d)  (hhb)) ;; Support. 
(when (j1d)  (jhb)) ;; Support. 
(when (l1d)  (khb)) ;; Support. 
(when (q1d)  (lhb)) ;; Support. 
(when (t1d)  (mhb)) ;; Support. 
(when (v1d)  (qhb)) ;; Support. 
(when (y1d)  (rhb)) ;; Support. 
(when (b2d)  (thb)) ;; Support. 
(when (g2d)  (uhb)) ;; Support. 
(when (j2d)  (vhb)) ;; Support. 
(when (l2d)  (xhb)) ;; Support. 
(when (q2d)  (yhb)) ;; Support. 
(when (t2d)  (zhb)) ;; Support. 
(when (v2d)  (bib)) ;; Support. 
(when (y2d)  (cib)) ;; Support. 
(when (b3d)  (gib)) ;; Support. 
(when (g3d)  (hib)) ;; Support. 
(when (j3d)  (jib)) ;; Support. 
(when (l3d)  (kib)) ;; Support. 
(when (q3d)  (lib)) ;; Support. 
(when (t4d)  (zib)) ;; Support. 
(when (v4d)  (bjb)) ;; Support. 
(when (y4d)  (cjb)) ;; Support. 
(when (b5d)  (gjb)) ;; Support. 
(when (g5d)  (hjb)) ;; Support. 
(when (j5d)  (jjb)) ;; Support. 
(when (l5d)  (kjb)) ;; Support. 
(when (q5d)  (ljb)) ;; Support. 
(when (v5d)  (qjb)) ;; Support. 
(when (y5d)  (rjb)) ;; Support. 
(when (g6d)  (ujb)) ;; Support. 
(when (q6d)  (yjb)) ;; Support. 
(when (g7d)  (hkb)) ;; Support. 
(when (j7d)  (jkb)) ;; Support. 
(when (l7d)  (kkb)) ;; Support. 
(when (q7d)  (lkb)) ;; Support. 
(when (t7d)  (mkb)) ;; Support. 
(when (v7d)  (qkb)) ;; Support. 
(when (y7d)  (rkb)) ;; Support. 
(when (b8d)  (tkb)) ;; Support. 
(when (g8d)  (ukb)) ;; Support. 
(when (j8d)  (vkb)) ;; Support. 
(when (l8d)  (xkb)) ;; Support. 
(when (q8d)  (ykb)) ;; Support. 
(when (x9d)  (rlb)) ;; Support. 
(when (z9d)  (tlb)) ;; Support. 
(when (c0d)  (ulb)) ;; Support. 
(when (m0d)  (ylb)) ;; Support. 
(when (r0d)  (zlb)) ;; Support. 
(when (u0d)  (bmb)) ;; Support. 
(when (cae)  (hmb)) ;; Support. 
(when (kae)  (kmb)) ;; Support. 
(when (tae)  (meb)) ;; Support. 
(when (vae)  (qeb)) ;; Support. 
(when (yae)  (reb)) ;; Support. 
(when (bbe)  (teb)) ;; Support. 
(when (gbe)  (ueb)) ;; Support. 
(when (jbe)  (veb)) ;; Support. 
(when (lbe)  (xeb)) ;; Support. 
(when (qbe)  (yeb)) ;; Support. 
(when (tbe)  (zeb)) ;; Support. 
(when (vbe)  (bfb)) ;; Support. 
(when (ybe)  (cfb)) ;; Support. 
(when (bce)  (gfb)) ;; Support. 
(when (gce)  (hfb)) ;; Support. 
(when (jce)  (jfb)) ;; Support. 
(when (lce)  (kfb)) ;; Support. 
(when (qce)  (lfb)) ;; Support. 
(when (tce)  (mfb)) ;; Support. 
(when (vce)  (qfb)) ;; Support. 
(when (yce)  (rfb)) ;; Support. 
(when (bde)  (tfb)) ;; Support. 
(when (gde)  (ufb)) ;; Support. 
(when (jde)  (vfb)) ;; Support. 
(when (lde)  (xfb)) ;; Support. 
(when (qde)  (yfb)) ;; Support. 
(when (vde)  (bgb)) ;; Support. 
(when (yde)  (cgb)) ;; Support. 
(when (bee)  (ggb)) ;; Support. 
(when (gee)  (hgb)) ;; Support. 
(when (jee)  (jgb)) ;; Support. 
(when (lee)  (kgb)) ;; Support. 
(when (qee)  (lgb)) ;; Support. 
(when (tee)  (mgb)) ;; Support. 
(when (vee)  (qgb)) ;; Support. 
(when (yee)  (rgb)) ;; Support. 
(when (cfe)  (ugb)) ;; Support. 
(when (hfe)  (vgb)) ;; Support. 
(when (kfe)  (xgb)) ;; Support. 
(when (mfe)  (ygb)) ;; Support. 
(when (rfe)  (zgb)) ;; Support. 
(when (ufe)  (bhb)) ;; Support. 
(when (xfe)  (chb)) ;; Support. 
(when (zfe)  (ghb)) ;; Support. 
(when (cge)  (hhb)) ;; Support. 
(when (hge)  (jhb)) ;; Support. 
(when (kge)  (khb)) ;; Support. 
(when (mge)  (lhb)) ;; Support. 
(when (rge)  (mhb)) ;; Support. 
(when (uge)  (qhb)) ;; Support. 
(when (xge)  (rhb)) ;; Support. 
(when (zge)  (thb)) ;; Support. 
(when (che)  (uhb)) ;; Support. 
(when (hhe)  (vhb)) ;; Support. 
(when (khe)  (xhb)) ;; Support. 
(when (mhe)  (yhb)) ;; Support. 
(when (rhe)  (zhb)) ;; Support. 
(when (uhe)  (bib)) ;; Support. 
(when (xhe)  (cib)) ;; Support. 
(when (zhe)  (gib)) ;; Support. 
(when (cie)  (hib)) ;; Support. 
(when (hie)  (jib)) ;; Support. 
(when (kie)  (kib)) ;; Support. 
(when (mie)  (lib)) ;; Support. 
(when (rie)  (mib)) ;; Support. 
(when (uie)  (qib)) ;; Support. 
(when (xie)  (rib)) ;; Support. 
(when (zie)  (tib)) ;; Support. 
(when (cje)  (uib)) ;; Support. 
(when (hje)  (vib)) ;; Support. 
(when (kje)  (xib)) ;; Support. 
(when (mje)  (yib)) ;; Support. 
(when (rje)  (zib)) ;; Support. 
(when (uje)  (bjb)) ;; Support. 
(when (xje)  (cjb)) ;; Support. 
(when (zje)  (gjb)) ;; Support. 
(when (cke)  (hjb)) ;; Support. 
(when (hke)  (jjb)) ;; Support. 
(when (kke)  (kjb)) ;; Support. 
(when (mke)  (ljb)) ;; Support. 
(when (rke)  (mjb)) ;; Support. 
(when (uke)  (qjb)) ;; Support. 
(when (xke)  (rjb)) ;; Support. 
(when (zke)  (tjb)) ;; Support. 
(when (cle)  (ujb)) ;; Support. 
(when (hle)  (vjb)) ;; Support. 
(when (kle)  (xjb)) ;; Support. 
(when (mle)  (yjb)) ;; Support. 
(when (rle)  (zjb)) ;; Support. 
(when (ule)  (bkb)) ;; Support. 
(when (xle)  (ckb)) ;; Support. 
(when (zle)  (gkb)) ;; Support. 
(when (cme)  (hkb)) ;; Support. 
(when (hme)  (jkb)) ;; Support. 
(when (kme)  (kkb)) ;; Support. 
(when (mme)  (lkb)) ;; Support. 
(when (rme)  (mkb)) ;; Support. 
(when (ume)  (qkb)) ;; Support. 
(when (xme)  (rkb)) ;; Support. 
(when (zme)  (tkb)) ;; Support. 
(when (cne)  (ukb)) ;; Support. 
(when (hne)  (vkb)) ;; Support. 
(when (kne)  (xkb)) ;; Support. 
(when (mne)  (ykb)) ;; Support. 
(when (rne)  (zkb)) ;; Support. 
(when (tne)  (blb)) ;; Support. 
(when (vne)  (clb)) ;; Support. 
(when (yne)  (glb)) ;; Support. 
(when (boe)  (hlb)) ;; Support. 
(when (goe)  (jlb)) ;; Support. 
(when (joe)  (klb)) ;; Support. 
(when (loe)  (llb)) ;; Support. 
(when (qoe)  (mlb)) ;; Support. 
(when (toe)  (qlb)) ;; Support. 
(when (voe)  (rlb)) ;; Support. 
(when (yoe)  (tlb)) ;; Support. 
(when (bpe)  (ulb)) ;; Support. 
(when (gpe)  (vlb)) ;; Support. 
(when (jpe)  (xlb)) ;; Support. 
(when (lpe)  (ylb)) ;; Support. 
(when (qpe)  (zlb)) ;; Support. 
(when (tpe)  (bmb)) ;; Support. 
(when (vpe)  (cmb)) ;; Support. 
(when (ype)  (gmb)) ;; Support. 
(when (bqe)  (hmb)) ;; Support. 
(when (gqe)  (jmb)) ;; Support. 
(when (jqe)  (kmb)) ;; Support. 
))
(:action CMPSWAP_L6_L7
:parameters ()
:precondition (and (mic))

:effect (and  (bzd) (rie) (not(qud))
(when (kqe) (and (kae) (not(jae)))) ;; Support.  Cancellation. 
(when (qud) (and (qae) (not(bfe)))) ;; Support.  Cancellation. 
(when (not(rud))  (not(rae))) ;; Cancellation. 
(when (tud)  (tae)) ;; Support. 
(when (vud)  (vae)) ;; Support. 
(when (yud)  (yae)) ;; Support. 
(when (bvd)  (bbe)) ;; Support. 
(when (gvd)  (gbe)) ;; Support. 
(when (jvd)  (jbe)) ;; Support. 
(when (lvd)  (lbe)) ;; Support. 
(when (qvd)  (qbe)) ;; Support. 
(when (tvd)  (tbe)) ;; Support. 
(when (vvd)  (vbe)) ;; Support. 
(when (yvd)  (ybe)) ;; Support. 
(when (bwd)  (bce)) ;; Support. 
(when (gwd)  (gce)) ;; Support. 
(when (jwd)  (jce)) ;; Support. 
(when (lwd)  (lce)) ;; Support. 
(when (qwd)  (qce)) ;; Support. 
(when (twd)  (tce)) ;; Support. 
(when (vwd)  (vce)) ;; Support. 
(when (ywd)  (yce)) ;; Support. 
(when (bxd)  (bde)) ;; Support. 
(when (gxd)  (gde)) ;; Support. 
(when (jxd)  (jde)) ;; Support. 
(when (lxd)  (lde)) ;; Support. 
(when (qxd)  (qde)) ;; Support. 
(when (vxd)  (vde)) ;; Support. 
(when (yxd)  (yde)) ;; Support. 
(when (byd)  (bee)) ;; Support. 
(when (gyd)  (gee)) ;; Support. 
(when (jyd)  (jee)) ;; Support. 
(when (lyd)  (lee)) ;; Support. 
(when (qyd)  (qee)) ;; Support. 
(when (tyd) (and (tee) (not(uee)))) ;; Support.  Cancellation. 
(when (vyd) (and (vee) (not(xee)))) ;; Support.  Cancellation. 
(when (yyd) (and (yee) (not(zee)))) ;; Support.  Cancellation. 
(when (czd) (and (cfe) (not(gfe)))) ;; Support.  Cancellation. 
(when (hzd) (and (hfe) (not(jfe)))) ;; Support.  Cancellation. 
(when (kzd) (and (kfe) (not(lfe)))) ;; Support.  Cancellation. 
(when (mzd) (and (mfe) (not(qfe)))) ;; Support.  Cancellation. 
(when (rzd) (and (rfe) (not(tfe)))) ;; Support.  Cancellation. 
(when (uzd) (and (ufe) (not(vfe)))) ;; Support.  Cancellation. 
(when (xzd) (and (xfe) (not(yfe)))) ;; Support.  Cancellation. 
(when (zzd) (and (zfe) (not(bge)))) ;; Support.  Cancellation. 
(when (c1d) (and (cge) (not(gge)))) ;; Support.  Cancellation. 
(when (h1d) (and (hge) (not(jge)))) ;; Support.  Cancellation. 
(when (k1d) (and (kge) (not(lge)))) ;; Support.  Cancellation. 
(when (m1d) (and (mge) (not(qge)))) ;; Support.  Cancellation. 
(when (r1d) (and (rge) (not(tge)))) ;; Support.  Cancellation. 
(when (u1d) (and (uge) (not(vge)))) ;; Support.  Cancellation. 
(when (x1d) (and (xge) (not(yge)))) ;; Support.  Cancellation. 
(when (z1d) (and (zge) (not(bhe)))) ;; Support.  Cancellation. 
(when (c2d) (and (che) (not(ghe)))) ;; Support.  Cancellation. 
(when (h2d) (and (hhe) (not(jhe)))) ;; Support.  Cancellation. 
(when (k2d) (and (khe) (not(lhe)))) ;; Support.  Cancellation. 
(when (m2d) (and (mhe) (not(qhe)))) ;; Support.  Cancellation. 
(when (r2d) (and (rhe) (not(the)))) ;; Support.  Cancellation. 
(when (u2d) (and (uhe) (not(vhe)))) ;; Support.  Cancellation. 
(when (x2d) (and (xhe) (not(yhe)))) ;; Support.  Cancellation. 
(when (z2d) (and (zhe) (not(bie)))) ;; Support.  Cancellation. 
(when (c3d) (and (cie) (not(gie)))) ;; Support.  Cancellation. 
(when (h3d) (and (hie) (not(jie)))) ;; Support.  Cancellation. 
(when (k3d) (and (kie) (not(lie)))) ;; Support.  Cancellation. 
(when (m3d) (and (mie) (not(qie)))) ;; Support.  Cancellation. 
(when (u3d)  (uie)) ;; Support. 
(when (x3d)  (xie)) ;; Support. 
(when (z3d)  (zie)) ;; Support. 
(when (c4d)  (cje)) ;; Support. 
(when (h4d)  (hje)) ;; Support. 
(when (k4d)  (kje)) ;; Support. 
(when (m4d)  (mje)) ;; Support. 
(when (r4d) (and (rje) (not(tje)))) ;; Support.  Cancellation. 
(when (u4d) (and (uje) (not(vje)))) ;; Support.  Cancellation. 
(when (x4d) (and (xje) (not(yje)))) ;; Support.  Cancellation. 
(when (z4d) (and (zje) (not(bke)))) ;; Support.  Cancellation. 
(when (c5d) (and (cke) (not(gke)))) ;; Support.  Cancellation. 
(when (h5d) (and (hke) (not(jke)))) ;; Support.  Cancellation. 
(when (k5d) (and (kke) (not(lke)))) ;; Support.  Cancellation. 
(when (m5d) (and (mke) (not(qke)))) ;; Support.  Cancellation. 
(when (r5d)  (rke)) ;; Support. 
(when (u5d) (and (uke) (not(vke)))) ;; Support.  Cancellation. 
(when (x5d) (and (xke) (not(yke)))) ;; Support.  Cancellation. 
(when (z5d)  (zke)) ;; Support. 
(when (c6d) (and (cle) (not(gle)))) ;; Support.  Cancellation. 
(when (h6d)  (hle)) ;; Support. 
(when (k6d)  (kle)) ;; Support. 
(when (m6d) (and (mle) (not(qle)))) ;; Support.  Cancellation. 
(when (r6d)  (rle)) ;; Support. 
(when (u6d)  (ule)) ;; Support. 
(when (x6d)  (xle)) ;; Support. 
(when (z6d)  (zle)) ;; Support. 
(when (c7d) (and (cme) (not(gme)))) ;; Support.  Cancellation. 
(when (h7d) (and (hme) (not(jme)))) ;; Support.  Cancellation. 
(when (k7d) (and (kme) (not(lme)))) ;; Support.  Cancellation. 
(when (m7d) (and (mme) (not(qme)))) ;; Support.  Cancellation. 
(when (r7d) (and (rme) (not(tme)))) ;; Support.  Cancellation. 
(when (u7d) (and (ume) (not(vme)))) ;; Support.  Cancellation. 
(when (x7d) (and (xme) (not(yme)))) ;; Support.  Cancellation. 
(when (z7d) (and (zme) (not(bne)))) ;; Support.  Cancellation. 
(when (c8d) (and (cne) (not(gne)))) ;; Support.  Cancellation. 
(when (h8d) (and (hne) (not(jne)))) ;; Support.  Cancellation. 
(when (k8d) (and (kne) (not(lne)))) ;; Support.  Cancellation. 
(when (m8d) (and (mne) (not(qne)))) ;; Support.  Cancellation. 
(when (r8d)  (rne)) ;; Support. 
(when (t8d)  (tne)) ;; Support. 
(when (v8d)  (vne)) ;; Support. 
(when (y8d)  (yne)) ;; Support. 
(when (b9d)  (boe)) ;; Support. 
(when (g9d)  (goe)) ;; Support. 
(when (j9d)  (joe)) ;; Support. 
(when (l9d)  (loe)) ;; Support. 
(when (q9d)  (qoe)) ;; Support. 
(when (t9d)  (toe)) ;; Support. 
(when (v9d) (and (voe) (not(xoe)))) ;; Support.  Cancellation. 
(when (y9d) (and (yoe) (not(zoe)))) ;; Support.  Cancellation. 
(when (b0d) (and (bpe) (not(cpe)))) ;; Support.  Cancellation. 
(when (g0d)  (gpe)) ;; Support. 
(when (j0d)  (jpe)) ;; Support. 
(when (l0d) (and (lpe) (not(mpe)))) ;; Support.  Cancellation. 
(when (q0d) (and (qpe) (not(rpe)))) ;; Support.  Cancellation. 
(when (t0d) (and (tpe) (not(upe)))) ;; Support.  Cancellation. 
(when (v0d)  (vpe)) ;; Support. 
(when (y0d)  (ype)) ;; Support. 
(when (bae) (and (bqe) (not(cqe)))) ;; Support.  Cancellation. 
(when (gae)  (gqe)) ;; Support. 
(when (jae) (and (jqe) (not(kqe)))) ;; Support.  Cancellation. 
(when (lae)  (lqe)) ;; Support. 
(when (rae) (and (rud) (not(r8d)))) ;; Support.  Cancellation. 
(when (uee) (and (uyd) (not(tyd)))) ;; Support.  Cancellation. 
(when (xee) (and (xyd) (not(vyd)))) ;; Support.  Cancellation. 
(when (zee) (and (zyd) (not(yyd)))) ;; Support.  Cancellation. 
(when (gfe) (and (gzd) (not(czd)))) ;; Support.  Cancellation. 
(when (jfe) (and (jzd) (not(hzd)))) ;; Support.  Cancellation. 
(when (lfe) (and (lzd) (not(kzd)))) ;; Support.  Cancellation. 
(when (qfe) (and (qzd) (not(mzd)))) ;; Support.  Cancellation. 
(when (tfe) (and (tzd) (not(rzd)))) ;; Support.  Cancellation. 
(when (vfe) (and (vzd) (not(uzd)))) ;; Support.  Cancellation. 
(when (yfe) (and (yzd) (not(xzd)))) ;; Support.  Cancellation. 
(when (bge) (and (b1d) (not(zzd)))) ;; Support.  Cancellation. 
(when (gge) (and (g1d) (not(c1d)))) ;; Support.  Cancellation. 
(when (jge) (and (j1d) (not(h1d)))) ;; Support.  Cancellation. 
(when (lge) (and (l1d) (not(k1d)))) ;; Support.  Cancellation. 
(when (qge) (and (q1d) (not(m1d)))) ;; Support.  Cancellation. 
(when (tge) (and (t1d) (not(r1d)))) ;; Support.  Cancellation. 
(when (vge) (and (v1d) (not(u1d)))) ;; Support.  Cancellation. 
(when (yge) (and (y1d) (not(x1d)))) ;; Support.  Cancellation. 
(when (bhe) (and (b2d) (not(z1d)))) ;; Support.  Cancellation. 
(when (ghe) (and (g2d) (not(c2d)))) ;; Support.  Cancellation. 
(when (jhe) (and (j2d) (not(h2d)))) ;; Support.  Cancellation. 
(when (lhe) (and (l2d) (not(k2d)))) ;; Support.  Cancellation. 
(when (qhe) (and (q2d) (not(m2d)))) ;; Support.  Cancellation. 
(when (the) (and (t2d) (not(r2d)))) ;; Support.  Cancellation. 
(when (vhe) (and (v2d) (not(u2d)))) ;; Support.  Cancellation. 
(when (yhe) (and (y2d) (not(x2d)))) ;; Support.  Cancellation. 
(when (bie) (and (b3d) (not(z2d)))) ;; Support.  Cancellation. 
(when (gie) (and (g3d) (not(c3d)))) ;; Support.  Cancellation. 
(when (jie) (and (j3d) (not(h3d)))) ;; Support.  Cancellation. 
(when (lie) (and (l3d) (not(k3d)))) ;; Support.  Cancellation. 
(when (qie) (and (q3d) (not(m3d)))) ;; Support.  Cancellation. 
(when (tje) (and (t4d) (not(r4d)))) ;; Support.  Cancellation. 
(when (vje) (and (v4d) (not(u4d)))) ;; Support.  Cancellation. 
(when (yje) (and (y4d) (not(x4d)))) ;; Support.  Cancellation. 
(when (bke) (and (b5d) (not(z4d)))) ;; Support.  Cancellation. 
(when (gke) (and (g5d) (not(c5d)))) ;; Support.  Cancellation. 
(when (jke) (and (j5d) (not(h5d)))) ;; Support.  Cancellation. 
(when (lke) (and (l5d) (not(k5d)))) ;; Support.  Cancellation. 
(when (qke) (and (q5d) (not(m5d)))) ;; Support.  Cancellation. 
(when (vke) (and (v5d) (not(u5d)))) ;; Support.  Cancellation. 
(when (yke) (and (y5d) (not(x5d)))) ;; Support.  Cancellation. 
(when (gle) (and (g6d) (not(c6d)))) ;; Support.  Cancellation. 
(when (qle) (and (q6d) (not(m6d)))) ;; Support.  Cancellation. 
(when (gme) (and (g7d) (not(c7d)))) ;; Support.  Cancellation. 
(when (jme) (and (j7d) (not(h7d)))) ;; Support.  Cancellation. 
(when (lme) (and (l7d) (not(k7d)))) ;; Support.  Cancellation. 
(when (qme) (and (q7d) (not(m7d)))) ;; Support.  Cancellation. 
(when (tme) (and (t7d) (not(r7d)))) ;; Support.  Cancellation. 
(when (vme) (and (v7d) (not(u7d)))) ;; Support.  Cancellation. 
(when (yme) (and (y7d) (not(x7d)))) ;; Support.  Cancellation. 
(when (bne) (and (b8d) (not(z7d)))) ;; Support.  Cancellation. 
(when (gne) (and (g8d) (not(c8d)))) ;; Support.  Cancellation. 
(when (jne) (and (j8d) (not(h8d)))) ;; Support.  Cancellation. 
(when (lne) (and (l8d) (not(k8d)))) ;; Support.  Cancellation. 
(when (qne) (and (q8d) (not(m8d)))) ;; Support.  Cancellation. 
(when (xoe) (and (x9d) (not(v9d)))) ;; Support.  Cancellation. 
(when (zoe) (and (z9d) (not(y9d)))) ;; Support.  Cancellation. 
(when (cpe) (and (c0d) (not(b0d)))) ;; Support.  Cancellation. 
(when (mpe) (and (m0d) (not(l0d)))) ;; Support.  Cancellation. 
(when (rpe) (and (r0d) (not(q0d)))) ;; Support.  Cancellation. 
(when (upe) (and (u0d) (not(t0d)))) ;; Support.  Cancellation. 
(when (cqe) (and (cae) (not(bae)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L5_L7
:parameters ()
:precondition (and (mic))

:effect (and  (xie) (not(qed)) (bjd)
(when (kqe) (and (kud) (not(jud)))) ;; Support.  Cancellation. 
(when (qed) (and (qae) (not(bfe)))) ;; Support.  Cancellation. 
(when (not(red))  (not(rae))) ;; Cancellation. 
(when (ted)  (tae)) ;; Support. 
(when (ved)  (vae)) ;; Support. 
(when (yed)  (yae)) ;; Support. 
(when (bfd)  (bbe)) ;; Support. 
(when (gfd)  (gbe)) ;; Support. 
(when (jfd)  (jbe)) ;; Support. 
(when (lfd)  (lbe)) ;; Support. 
(when (qfd)  (qbe)) ;; Support. 
(when (tfd)  (tbe)) ;; Support. 
(when (vfd)  (vbe)) ;; Support. 
(when (yfd)  (ybe)) ;; Support. 
(when (bgd)  (bce)) ;; Support. 
(when (ggd)  (gce)) ;; Support. 
(when (jgd)  (jce)) ;; Support. 
(when (lgd)  (lce)) ;; Support. 
(when (qgd)  (qce)) ;; Support. 
(when (tgd)  (tce)) ;; Support. 
(when (vgd)  (vce)) ;; Support. 
(when (ygd)  (yce)) ;; Support. 
(when (bhd)  (bde)) ;; Support. 
(when (ghd)  (gde)) ;; Support. 
(when (jhd)  (jde)) ;; Support. 
(when (lhd)  (lde)) ;; Support. 
(when (qhd)  (qde)) ;; Support. 
(when (vhd)  (vde)) ;; Support. 
(when (yhd)  (yde)) ;; Support. 
(when (bid)  (bee)) ;; Support. 
(when (gid)  (gee)) ;; Support. 
(when (jid)  (jee)) ;; Support. 
(when (lid)  (lee)) ;; Support. 
(when (qid)  (qee)) ;; Support. 
(when (tid) (and (tee) (not(uee)))) ;; Support.  Cancellation. 
(when (vid) (and (vee) (not(xee)))) ;; Support.  Cancellation. 
(when (yid) (and (yee) (not(zee)))) ;; Support.  Cancellation. 
(when (cjd) (and (cfe) (not(gfe)))) ;; Support.  Cancellation. 
(when (hjd) (and (hfe) (not(jfe)))) ;; Support.  Cancellation. 
(when (kjd) (and (kfe) (not(lfe)))) ;; Support.  Cancellation. 
(when (mjd) (and (mfe) (not(qfe)))) ;; Support.  Cancellation. 
(when (rjd) (and (rfe) (not(tfe)))) ;; Support.  Cancellation. 
(when (ujd) (and (ufe) (not(vfe)))) ;; Support.  Cancellation. 
(when (xjd) (and (xfe) (not(yfe)))) ;; Support.  Cancellation. 
(when (zjd) (and (zfe) (not(bge)))) ;; Support.  Cancellation. 
(when (ckd) (and (cge) (not(gge)))) ;; Support.  Cancellation. 
(when (hkd) (and (hge) (not(jge)))) ;; Support.  Cancellation. 
(when (kkd) (and (kge) (not(lge)))) ;; Support.  Cancellation. 
(when (mkd) (and (mge) (not(qge)))) ;; Support.  Cancellation. 
(when (rkd) (and (rge) (not(tge)))) ;; Support.  Cancellation. 
(when (ukd) (and (uge) (not(vge)))) ;; Support.  Cancellation. 
(when (xkd) (and (xge) (not(yge)))) ;; Support.  Cancellation. 
(when (zkd) (and (zge) (not(bhe)))) ;; Support.  Cancellation. 
(when (cld) (and (che) (not(ghe)))) ;; Support.  Cancellation. 
(when (hld) (and (hhe) (not(jhe)))) ;; Support.  Cancellation. 
(when (kld) (and (khe) (not(lhe)))) ;; Support.  Cancellation. 
(when (mld) (and (mhe) (not(qhe)))) ;; Support.  Cancellation. 
(when (rld) (and (rhe) (not(the)))) ;; Support.  Cancellation. 
(when (uld) (and (uhe) (not(vhe)))) ;; Support.  Cancellation. 
(when (xld) (and (xhe) (not(yhe)))) ;; Support.  Cancellation. 
(when (zld) (and (zhe) (not(bie)))) ;; Support.  Cancellation. 
(when (cmd) (and (cie) (not(gie)))) ;; Support.  Cancellation. 
(when (hmd) (and (hie) (not(jie)))) ;; Support.  Cancellation. 
(when (kmd) (and (kie) (not(lie)))) ;; Support.  Cancellation. 
(when (mmd) (and (mie) (not(qie)))) ;; Support.  Cancellation. 
(when (umd)  (uie)) ;; Support. 
(when (zmd)  (zie)) ;; Support. 
(when (cnd)  (cje)) ;; Support. 
(when (hnd)  (hje)) ;; Support. 
(when (knd)  (kje)) ;; Support. 
(when (mnd)  (mje)) ;; Support. 
(when (rnd) (and (rje) (not(tje)))) ;; Support.  Cancellation. 
(when (und) (and (uje) (not(vje)))) ;; Support.  Cancellation. 
(when (xnd) (and (xje) (not(yje)))) ;; Support.  Cancellation. 
(when (znd) (and (zje) (not(bke)))) ;; Support.  Cancellation. 
(when (cod) (and (cke) (not(gke)))) ;; Support.  Cancellation. 
(when (kod) (and (kke) (not(lke)))) ;; Support.  Cancellation. 
(when (mod) (and (mke) (not(qke)))) ;; Support.  Cancellation. 
(when (rod)  (rke)) ;; Support. 
(when (uod) (and (uke) (not(vke)))) ;; Support.  Cancellation. 
(when (xod) (and (xke) (not(yke)))) ;; Support.  Cancellation. 
(when (zod)  (zke)) ;; Support. 
(when (cpd) (and (cle) (not(gle)))) ;; Support.  Cancellation. 
(when (hpd)  (hle)) ;; Support. 
(when (kpd)  (kle)) ;; Support. 
(when (mpd) (and (mle) (not(qle)))) ;; Support.  Cancellation. 
(when (rpd)  (rle)) ;; Support. 
(when (upd)  (ule)) ;; Support. 
(when (xpd)  (xle)) ;; Support. 
(when (zpd)  (zle)) ;; Support. 
(when (cqd) (and (cme) (not(gme)))) ;; Support.  Cancellation. 
(when (hqd) (and (hme) (not(jme)))) ;; Support.  Cancellation. 
(when (kqd) (and (kme) (not(lme)))) ;; Support.  Cancellation. 
(when (mqd) (and (mme) (not(qme)))) ;; Support.  Cancellation. 
(when (rqd) (and (rme) (not(tme)))) ;; Support.  Cancellation. 
(when (uqd) (and (ume) (not(vme)))) ;; Support.  Cancellation. 
(when (xqd) (and (xme) (not(yme)))) ;; Support.  Cancellation. 
(when (zqd) (and (zme) (not(bne)))) ;; Support.  Cancellation. 
(when (csd) (and (cne) (not(gne)))) ;; Support.  Cancellation. 
(when (hsd) (and (hne) (not(jne)))) ;; Support.  Cancellation. 
(when (ksd) (and (kne) (not(lne)))) ;; Support.  Cancellation. 
(when (msd) (and (mne) (not(qne)))) ;; Support.  Cancellation. 
(when (rsd)  (rne)) ;; Support. 
(when (tsd)  (tne)) ;; Support. 
(when (vsd)  (vne)) ;; Support. 
(when (ysd)  (yne)) ;; Support. 
(when (brd)  (boe)) ;; Support. 
(when (grd)  (goe)) ;; Support. 
(when (jrd)  (joe)) ;; Support. 
(when (lrd)  (loe)) ;; Support. 
(when (qrd)  (qoe)) ;; Support. 
(when (trd)  (toe)) ;; Support. 
(when (vrd) (and (voe) (not(xoe)))) ;; Support.  Cancellation. 
(when (yrd) (and (yoe) (not(zoe)))) ;; Support.  Cancellation. 
(when (btd) (and (bpe) (not(cpe)))) ;; Support.  Cancellation. 
(when (gtd)  (gpe)) ;; Support. 
(when (jtd)  (jpe)) ;; Support. 
(when (ltd) (and (lpe) (not(mpe)))) ;; Support.  Cancellation. 
(when (qtd) (and (qpe) (not(rpe)))) ;; Support.  Cancellation. 
(when (ttd) (and (tpe) (not(upe)))) ;; Support.  Cancellation. 
(when (vtd)  (vpe)) ;; Support. 
(when (ytd)  (ype)) ;; Support. 
(when (bud) (and (bqe) (not(cqe)))) ;; Support.  Cancellation. 
(when (gud)  (gqe)) ;; Support. 
(when (jud) (and (jqe) (not(kqe)))) ;; Support.  Cancellation. 
(when (lud)  (lqe)) ;; Support. 
(when (rae) (and (red) (not(rsd)))) ;; Support.  Cancellation. 
(when (uee) (and (uid) (not(tid)))) ;; Support.  Cancellation. 
(when (xee) (and (xid) (not(vid)))) ;; Support.  Cancellation. 
(when (zee) (and (zid) (not(yid)))) ;; Support.  Cancellation. 
(when (gfe) (and (gjd) (not(cjd)))) ;; Support.  Cancellation. 
(when (jfe) (and (jjd) (not(hjd)))) ;; Support.  Cancellation. 
(when (lfe) (and (ljd) (not(kjd)))) ;; Support.  Cancellation. 
(when (qfe) (and (qjd) (not(mjd)))) ;; Support.  Cancellation. 
(when (tfe) (and (tjd) (not(rjd)))) ;; Support.  Cancellation. 
(when (vfe) (and (vjd) (not(ujd)))) ;; Support.  Cancellation. 
(when (yfe) (and (yjd) (not(xjd)))) ;; Support.  Cancellation. 
(when (bge) (and (bkd) (not(zjd)))) ;; Support.  Cancellation. 
(when (gge) (and (gkd) (not(ckd)))) ;; Support.  Cancellation. 
(when (jge) (and (jkd) (not(hkd)))) ;; Support.  Cancellation. 
(when (lge) (and (lkd) (not(kkd)))) ;; Support.  Cancellation. 
(when (qge) (and (qkd) (not(mkd)))) ;; Support.  Cancellation. 
(when (tge) (and (tkd) (not(rkd)))) ;; Support.  Cancellation. 
(when (vge) (and (vkd) (not(ukd)))) ;; Support.  Cancellation. 
(when (yge) (and (ykd) (not(xkd)))) ;; Support.  Cancellation. 
(when (bhe) (and (bld) (not(zkd)))) ;; Support.  Cancellation. 
(when (ghe) (and (gld) (not(cld)))) ;; Support.  Cancellation. 
(when (jhe) (and (jld) (not(hld)))) ;; Support.  Cancellation. 
(when (lhe) (and (lld) (not(kld)))) ;; Support.  Cancellation. 
(when (qhe) (and (qld) (not(mld)))) ;; Support.  Cancellation. 
(when (the) (and (tld) (not(rld)))) ;; Support.  Cancellation. 
(when (vhe) (and (vld) (not(uld)))) ;; Support.  Cancellation. 
(when (yhe) (and (yld) (not(xld)))) ;; Support.  Cancellation. 
(when (bie) (and (bmd) (not(zld)))) ;; Support.  Cancellation. 
(when (gie) (and (gmd) (not(cmd)))) ;; Support.  Cancellation. 
(when (jie) (and (jmd) (not(hmd)))) ;; Support.  Cancellation. 
(when (lie) (and (lmd) (not(kmd)))) ;; Support.  Cancellation. 
(when (qie) (and (qmd) (not(mmd)))) ;; Support.  Cancellation. 
(when (tje) (and (tnd) (not(rnd)))) ;; Support.  Cancellation. 
(when (vje) (and (vnd) (not(und)))) ;; Support.  Cancellation. 
(when (yje) (and (ynd) (not(xnd)))) ;; Support.  Cancellation. 
(when (bke) (and (bod) (not(znd)))) ;; Support.  Cancellation. 
(when (gke) (and (god) (not(cod)))) ;; Support.  Cancellation. 
(when (jke)  (jod)) ;; Support. 
(when (lke) (and (lod) (not(kod)))) ;; Support.  Cancellation. 
(when (qke) (and (qod) (not(mod)))) ;; Support.  Cancellation. 
(when (vke) (and (vod) (not(uod)))) ;; Support.  Cancellation. 
(when (yke) (and (yod) (not(xod)))) ;; Support.  Cancellation. 
(when (gle) (and (gpd) (not(cpd)))) ;; Support.  Cancellation. 
(when (qle) (and (qpd) (not(mpd)))) ;; Support.  Cancellation. 
(when (gme) (and (gqd) (not(cqd)))) ;; Support.  Cancellation. 
(when (jme) (and (jqd) (not(hqd)))) ;; Support.  Cancellation. 
(when (lme) (and (lqd) (not(kqd)))) ;; Support.  Cancellation. 
(when (qme) (and (qqd) (not(mqd)))) ;; Support.  Cancellation. 
(when (tme) (and (tqd) (not(rqd)))) ;; Support.  Cancellation. 
(when (vme) (and (vqd) (not(uqd)))) ;; Support.  Cancellation. 
(when (yme) (and (yqd) (not(xqd)))) ;; Support.  Cancellation. 
(when (bne) (and (bsd) (not(zqd)))) ;; Support.  Cancellation. 
(when (gne) (and (gsd) (not(csd)))) ;; Support.  Cancellation. 
(when (jne) (and (jsd) (not(hsd)))) ;; Support.  Cancellation. 
(when (lne) (and (lsd) (not(ksd)))) ;; Support.  Cancellation. 
(when (qne) (and (qsd) (not(msd)))) ;; Support.  Cancellation. 
(when (xoe) (and (xrd) (not(vrd)))) ;; Support.  Cancellation. 
(when (zoe) (and (zrd) (not(yrd)))) ;; Support.  Cancellation. 
(when (cpe) (and (ctd) (not(btd)))) ;; Support.  Cancellation. 
(when (mpe) (and (mtd) (not(ltd)))) ;; Support.  Cancellation. 
(when (rpe) (and (rtd) (not(qtd)))) ;; Support.  Cancellation. 
(when (upe) (and (utd) (not(ttd)))) ;; Support.  Cancellation. 
(when (cqe) (and (cud) (not(bud)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L5_L6
:parameters ()
:precondition (and (mic))

:effect (and  (x3d) (uhd)
(when (kae) (and (kud) (not(jud)))) ;; Support.  Cancellation. 
(when (qed) (and (qud) (not(bzd)))) ;; Support.  Cancellation. 
(when (not(red))  (not(rud))) ;; Cancellation. 
(when (ted) (and (tud) (not(uud)))) ;; Support.  Cancellation. 
(when (ved) (and (vud) (not(xud)))) ;; Support.  Cancellation. 
(when (yed) (and (yud) (not(zud)))) ;; Support.  Cancellation. 
(when (bfd) (and (bvd) (not(cvd)))) ;; Support.  Cancellation. 
(when (gfd) (and (gvd) (not(hvd)))) ;; Support.  Cancellation. 
(when (jfd) (and (jvd) (not(kvd)))) ;; Support.  Cancellation. 
(when (lfd) (and (lvd) (not(mvd)))) ;; Support.  Cancellation. 
(when (qfd) (and (qvd) (not(rvd)))) ;; Support.  Cancellation. 
(when (tfd) (and (tvd) (not(uvd)))) ;; Support.  Cancellation. 
(when (vfd) (and (vvd) (not(xvd)))) ;; Support.  Cancellation. 
(when (yfd) (and (yvd) (not(zvd)))) ;; Support.  Cancellation. 
(when (bgd) (and (bwd) (not(cwd)))) ;; Support.  Cancellation. 
(when (ggd) (and (gwd) (not(hwd)))) ;; Support.  Cancellation. 
(when (jgd) (and (jwd) (not(kwd)))) ;; Support.  Cancellation. 
(when (lgd) (and (lwd) (not(mwd)))) ;; Support.  Cancellation. 
(when (qgd) (and (qwd) (not(rwd)))) ;; Support.  Cancellation. 
(when (tgd) (and (twd) (not(uwd)))) ;; Support.  Cancellation. 
(when (vgd) (and (vwd) (not(xwd)))) ;; Support.  Cancellation. 
(when (ygd) (and (ywd) (not(zwd)))) ;; Support.  Cancellation. 
(when (bhd) (and (bxd) (not(cxd)))) ;; Support.  Cancellation. 
(when (ghd) (and (gxd) (not(hxd)))) ;; Support.  Cancellation. 
(when (jhd) (and (jxd) (not(kxd)))) ;; Support.  Cancellation. 
(when (lhd) (and (lxd) (not(mxd)))) ;; Support.  Cancellation. 
(when (qhd) (and (qxd) (not(rxd)))) ;; Support.  Cancellation. 
(when (vhd) (and (vxd) (not(xxd)))) ;; Support.  Cancellation. 
(when (yhd) (and (yxd) (not(zxd)))) ;; Support.  Cancellation. 
(when (bid) (and (byd) (not(cyd)))) ;; Support.  Cancellation. 
(when (gid) (and (gyd) (not(hyd)))) ;; Support.  Cancellation. 
(when (jid) (and (jyd) (not(kyd)))) ;; Support.  Cancellation. 
(when (lid) (and (lyd) (not(myd)))) ;; Support.  Cancellation. 
(when (qid) (and (qyd) (not(ryd)))) ;; Support.  Cancellation. 
(when (tid) (and (tyd) (not(uyd)))) ;; Support.  Cancellation. 
(when (vid) (and (vyd) (not(xyd)))) ;; Support.  Cancellation. 
(when (yid) (and (yyd) (not(zyd)))) ;; Support.  Cancellation. 
(when (cjd) (and (czd) (not(gzd)))) ;; Support.  Cancellation. 
(when (hjd) (and (hzd) (not(jzd)))) ;; Support.  Cancellation. 
(when (kjd) (and (kzd) (not(lzd)))) ;; Support.  Cancellation. 
(when (mjd) (and (mzd) (not(qzd)))) ;; Support.  Cancellation. 
(when (rjd) (and (rzd) (not(tzd)))) ;; Support.  Cancellation. 
(when (ujd) (and (uzd) (not(vzd)))) ;; Support.  Cancellation. 
(when (xjd) (and (xzd) (not(yzd)))) ;; Support.  Cancellation. 
(when (zjd) (and (zzd) (not(b1d)))) ;; Support.  Cancellation. 
(when (ckd) (and (c1d) (not(g1d)))) ;; Support.  Cancellation. 
(when (hkd) (and (h1d) (not(j1d)))) ;; Support.  Cancellation. 
(when (kkd) (and (k1d) (not(l1d)))) ;; Support.  Cancellation. 
(when (mkd) (and (m1d) (not(q1d)))) ;; Support.  Cancellation. 
(when (rkd) (and (r1d) (not(t1d)))) ;; Support.  Cancellation. 
(when (ukd) (and (u1d) (not(v1d)))) ;; Support.  Cancellation. 
(when (xkd) (and (x1d) (not(y1d)))) ;; Support.  Cancellation. 
(when (zkd) (and (z1d) (not(b2d)))) ;; Support.  Cancellation. 
(when (cld) (and (c2d) (not(g2d)))) ;; Support.  Cancellation. 
(when (hld) (and (h2d) (not(j2d)))) ;; Support.  Cancellation. 
(when (kld) (and (k2d) (not(l2d)))) ;; Support.  Cancellation. 
(when (mld) (and (m2d) (not(q2d)))) ;; Support.  Cancellation. 
(when (rld) (and (r2d) (not(t2d)))) ;; Support.  Cancellation. 
(when (uld) (and (u2d) (not(v2d)))) ;; Support.  Cancellation. 
(when (xld) (and (x2d) (not(y2d)))) ;; Support.  Cancellation. 
(when (zld) (and (z2d) (not(b3d)))) ;; Support.  Cancellation. 
(when (cmd) (and (c3d) (not(g3d)))) ;; Support.  Cancellation. 
(when (hmd) (and (h3d) (not(j3d)))) ;; Support.  Cancellation. 
(when (kmd) (and (k3d) (not(l3d)))) ;; Support.  Cancellation. 
(when (mmd) (and (m3d) (not(q3d)))) ;; Support.  Cancellation. 
(when (umd)  (u3d)) ;; Support. 
(when (zmd)  (z3d)) ;; Support. 
(when (cnd)  (c4d)) ;; Support. 
(when (hnd)  (h4d)) ;; Support. 
(when (knd)  (k4d)) ;; Support. 
(when (mnd)  (m4d)) ;; Support. 
(when (rnd) (and (r4d) (not(t4d)))) ;; Support.  Cancellation. 
(when (und) (and (u4d) (not(v4d)))) ;; Support.  Cancellation. 
(when (xnd) (and (x4d) (not(y4d)))) ;; Support.  Cancellation. 
(when (znd) (and (z4d) (not(b5d)))) ;; Support.  Cancellation. 
(when (cod) (and (c5d) (not(g5d)))) ;; Support.  Cancellation. 
(when (kod) (and (k5d) (not(l5d)))) ;; Support.  Cancellation. 
(when (mod) (and (m5d) (not(q5d)))) ;; Support.  Cancellation. 
(when (rod)  (r5d)) ;; Support. 
(when (uod) (and (u5d) (not(v5d)))) ;; Support.  Cancellation. 
(when (xod) (and (x5d) (not(y5d)))) ;; Support.  Cancellation. 
(when (zod)  (z5d)) ;; Support. 
(when (cpd) (and (c6d) (not(g6d)))) ;; Support.  Cancellation. 
(when (hpd)  (h6d)) ;; Support. 
(when (kpd)  (k6d)) ;; Support. 
(when (mpd) (and (m6d) (not(q6d)))) ;; Support.  Cancellation. 
(when (rpd)  (r6d)) ;; Support. 
(when (upd)  (u6d)) ;; Support. 
(when (xpd)  (x6d)) ;; Support. 
(when (zpd)  (z6d)) ;; Support. 
(when (cqd) (and (c7d) (not(g7d)))) ;; Support.  Cancellation. 
(when (hqd) (and (h7d) (not(j7d)))) ;; Support.  Cancellation. 
(when (kqd) (and (k7d) (not(l7d)))) ;; Support.  Cancellation. 
(when (mqd) (and (m7d) (not(q7d)))) ;; Support.  Cancellation. 
(when (rqd) (and (r7d) (not(t7d)))) ;; Support.  Cancellation. 
(when (uqd) (and (u7d) (not(v7d)))) ;; Support.  Cancellation. 
(when (xqd) (and (x7d) (not(y7d)))) ;; Support.  Cancellation. 
(when (zqd) (and (z7d) (not(b8d)))) ;; Support.  Cancellation. 
(when (csd) (and (c8d) (not(g8d)))) ;; Support.  Cancellation. 
(when (hsd) (and (h8d) (not(j8d)))) ;; Support.  Cancellation. 
(when (ksd) (and (k8d) (not(l8d)))) ;; Support.  Cancellation. 
(when (msd) (and (m8d) (not(q8d)))) ;; Support.  Cancellation. 
(when (rsd)  (r8d)) ;; Support. 
(when (tsd)  (t8d)) ;; Support. 
(when (vsd)  (v8d)) ;; Support. 
(when (ysd)  (y8d)) ;; Support. 
(when (brd)  (b9d)) ;; Support. 
(when (grd)  (g9d)) ;; Support. 
(when (jrd)  (j9d)) ;; Support. 
(when (lrd)  (l9d)) ;; Support. 
(when (qrd)  (q9d)) ;; Support. 
(when (trd)  (t9d)) ;; Support. 
(when (vrd) (and (v9d) (not(x9d)))) ;; Support.  Cancellation. 
(when (yrd) (and (y9d) (not(z9d)))) ;; Support.  Cancellation. 
(when (btd) (and (b0d) (not(c0d)))) ;; Support.  Cancellation. 
(when (gtd)  (g0d)) ;; Support. 
(when (jtd)  (j0d)) ;; Support. 
(when (ltd) (and (l0d) (not(m0d)))) ;; Support.  Cancellation. 
(when (qtd) (and (q0d) (not(r0d)))) ;; Support.  Cancellation. 
(when (ttd) (and (t0d) (not(u0d)))) ;; Support.  Cancellation. 
(when (vtd)  (v0d)) ;; Support. 
(when (ytd)  (y0d)) ;; Support. 
(when (bud) (and (bae) (not(cae)))) ;; Support.  Cancellation. 
(when (gud)  (gae)) ;; Support. 
(when (jud) (and (jae) (not(kae)))) ;; Support.  Cancellation. 
(when (lud)  (lae)) ;; Support. 
(when (rud) (and (red) (not(rsd)))) ;; Support.  Cancellation. 
(when (not(qud))  (not(qed))) ;; Cancellation. 
(when (uud) (and (ued) (not(ted)))) ;; Support.  Cancellation. 
(when (xud) (and (xed) (not(ved)))) ;; Support.  Cancellation. 
(when (zud) (and (zed) (not(yed)))) ;; Support.  Cancellation. 
(when (cvd) (and (cfd) (not(bfd)))) ;; Support.  Cancellation. 
(when (hvd) (and (hfd) (not(gfd)))) ;; Support.  Cancellation. 
(when (kvd) (and (kfd) (not(jfd)))) ;; Support.  Cancellation. 
(when (mvd) (and (mfd) (not(lfd)))) ;; Support.  Cancellation. 
(when (rvd) (and (rfd) (not(qfd)))) ;; Support.  Cancellation. 
(when (uvd) (and (ufd) (not(tfd)))) ;; Support.  Cancellation. 
(when (xvd) (and (xfd) (not(vfd)))) ;; Support.  Cancellation. 
(when (zvd) (and (zfd) (not(yfd)))) ;; Support.  Cancellation. 
(when (cwd) (and (cgd) (not(bgd)))) ;; Support.  Cancellation. 
(when (hwd) (and (hgd) (not(ggd)))) ;; Support.  Cancellation. 
(when (kwd) (and (kgd) (not(jgd)))) ;; Support.  Cancellation. 
(when (mwd) (and (mgd) (not(lgd)))) ;; Support.  Cancellation. 
(when (rwd) (and (rgd) (not(qgd)))) ;; Support.  Cancellation. 
(when (uwd) (and (ugd) (not(tgd)))) ;; Support.  Cancellation. 
(when (xwd) (and (xgd) (not(vgd)))) ;; Support.  Cancellation. 
(when (zwd) (and (zgd) (not(ygd)))) ;; Support.  Cancellation. 
(when (cxd) (and (chd) (not(bhd)))) ;; Support.  Cancellation. 
(when (hxd) (and (hhd) (not(ghd)))) ;; Support.  Cancellation. 
(when (kxd) (and (khd) (not(jhd)))) ;; Support.  Cancellation. 
(when (mxd) (and (mhd) (not(lhd)))) ;; Support.  Cancellation. 
(when (rxd) (and (rhd) (not(qhd)))) ;; Support.  Cancellation. 
(when (xxd) (and (xhd) (not(vhd)))) ;; Support.  Cancellation. 
(when (zxd) (and (zhd) (not(yhd)))) ;; Support.  Cancellation. 
(when (cyd) (and (cid) (not(bid)))) ;; Support.  Cancellation. 
(when (hyd) (and (hid) (not(gid)))) ;; Support.  Cancellation. 
(when (kyd) (and (kid) (not(jid)))) ;; Support.  Cancellation. 
(when (myd) (and (mid) (not(lid)))) ;; Support.  Cancellation. 
(when (ryd) (and (rid) (not(qid)))) ;; Support.  Cancellation. 
(when (uyd) (and (uid) (not(tid)))) ;; Support.  Cancellation. 
(when (xyd) (and (xid) (not(vid)))) ;; Support.  Cancellation. 
(when (zyd) (and (zid) (not(yid)))) ;; Support.  Cancellation. 
(when (bzd)  (bjd)) ;; Support. 
(when (gzd) (and (gjd) (not(cjd)))) ;; Support.  Cancellation. 
(when (jzd) (and (jjd) (not(hjd)))) ;; Support.  Cancellation. 
(when (lzd) (and (ljd) (not(kjd)))) ;; Support.  Cancellation. 
(when (qzd) (and (qjd) (not(mjd)))) ;; Support.  Cancellation. 
(when (tzd) (and (tjd) (not(rjd)))) ;; Support.  Cancellation. 
(when (vzd) (and (vjd) (not(ujd)))) ;; Support.  Cancellation. 
(when (yzd) (and (yjd) (not(xjd)))) ;; Support.  Cancellation. 
(when (b1d) (and (bkd) (not(zjd)))) ;; Support.  Cancellation. 
(when (g1d) (and (gkd) (not(ckd)))) ;; Support.  Cancellation. 
(when (j1d) (and (jkd) (not(hkd)))) ;; Support.  Cancellation. 
(when (l1d) (and (lkd) (not(kkd)))) ;; Support.  Cancellation. 
(when (q1d) (and (qkd) (not(mkd)))) ;; Support.  Cancellation. 
(when (t1d) (and (tkd) (not(rkd)))) ;; Support.  Cancellation. 
(when (v1d) (and (vkd) (not(ukd)))) ;; Support.  Cancellation. 
(when (y1d) (and (ykd) (not(xkd)))) ;; Support.  Cancellation. 
(when (b2d) (and (bld) (not(zkd)))) ;; Support.  Cancellation. 
(when (g2d) (and (gld) (not(cld)))) ;; Support.  Cancellation. 
(when (j2d) (and (jld) (not(hld)))) ;; Support.  Cancellation. 
(when (l2d) (and (lld) (not(kld)))) ;; Support.  Cancellation. 
(when (q2d) (and (qld) (not(mld)))) ;; Support.  Cancellation. 
(when (t2d) (and (tld) (not(rld)))) ;; Support.  Cancellation. 
(when (v2d) (and (vld) (not(uld)))) ;; Support.  Cancellation. 
(when (y2d) (and (yld) (not(xld)))) ;; Support.  Cancellation. 
(when (b3d) (and (bmd) (not(zld)))) ;; Support.  Cancellation. 
(when (g3d) (and (gmd) (not(cmd)))) ;; Support.  Cancellation. 
(when (j3d) (and (jmd) (not(hmd)))) ;; Support.  Cancellation. 
(when (l3d) (and (lmd) (not(kmd)))) ;; Support.  Cancellation. 
(when (q3d) (and (qmd) (not(mmd)))) ;; Support.  Cancellation. 
(when (t4d) (and (tnd) (not(rnd)))) ;; Support.  Cancellation. 
(when (v4d) (and (vnd) (not(und)))) ;; Support.  Cancellation. 
(when (y4d) (and (ynd) (not(xnd)))) ;; Support.  Cancellation. 
(when (b5d) (and (bod) (not(znd)))) ;; Support.  Cancellation. 
(when (g5d) (and (god) (not(cod)))) ;; Support.  Cancellation. 
(when (j5d)  (jod)) ;; Support. 
(when (l5d) (and (lod) (not(kod)))) ;; Support.  Cancellation. 
(when (q5d) (and (qod) (not(mod)))) ;; Support.  Cancellation. 
(when (v5d) (and (vod) (not(uod)))) ;; Support.  Cancellation. 
(when (y5d) (and (yod) (not(xod)))) ;; Support.  Cancellation. 
(when (g6d) (and (gpd) (not(cpd)))) ;; Support.  Cancellation. 
(when (q6d) (and (qpd) (not(mpd)))) ;; Support.  Cancellation. 
(when (g7d) (and (gqd) (not(cqd)))) ;; Support.  Cancellation. 
(when (j7d) (and (jqd) (not(hqd)))) ;; Support.  Cancellation. 
(when (l7d) (and (lqd) (not(kqd)))) ;; Support.  Cancellation. 
(when (q7d) (and (qqd) (not(mqd)))) ;; Support.  Cancellation. 
(when (t7d) (and (tqd) (not(rqd)))) ;; Support.  Cancellation. 
(when (v7d) (and (vqd) (not(uqd)))) ;; Support.  Cancellation. 
(when (y7d) (and (yqd) (not(xqd)))) ;; Support.  Cancellation. 
(when (b8d) (and (bsd) (not(zqd)))) ;; Support.  Cancellation. 
(when (g8d) (and (gsd) (not(csd)))) ;; Support.  Cancellation. 
(when (j8d) (and (jsd) (not(hsd)))) ;; Support.  Cancellation. 
(when (l8d) (and (lsd) (not(ksd)))) ;; Support.  Cancellation. 
(when (q8d) (and (qsd) (not(msd)))) ;; Support.  Cancellation. 
(when (x9d) (and (xrd) (not(vrd)))) ;; Support.  Cancellation. 
(when (z9d) (and (zrd) (not(yrd)))) ;; Support.  Cancellation. 
(when (c0d) (and (ctd) (not(btd)))) ;; Support.  Cancellation. 
(when (m0d) (and (mtd) (not(ltd)))) ;; Support.  Cancellation. 
(when (r0d) (and (rtd) (not(qtd)))) ;; Support.  Cancellation. 
(when (u0d) (and (utd) (not(ttd)))) ;; Support.  Cancellation. 
(when (cae) (and (cud) (not(bud)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L4_L7
:parameters ()
:precondition (and (mic))

:effect (and  (hje) (b4c) (not(qyc))
(when (kqe) (and (ked) (not(jed)))) ;; Support.  Cancellation. 
(when (qyc) (and (qae) (not(bfe)))) ;; Support.  Cancellation. 
(when (not(ryc))  (not(rae))) ;; Cancellation. 
(when (tyc)  (tae)) ;; Support. 
(when (vyc)  (vae)) ;; Support. 
(when (yyc)  (yae)) ;; Support. 
(when (bzc)  (bbe)) ;; Support. 
(when (gzc)  (gbe)) ;; Support. 
(when (jzc)  (jbe)) ;; Support. 
(when (lzc)  (lbe)) ;; Support. 
(when (qzc)  (qbe)) ;; Support. 
(when (tzc)  (tbe)) ;; Support. 
(when (vzc)  (vbe)) ;; Support. 
(when (yzc)  (ybe)) ;; Support. 
(when (b1c)  (bce)) ;; Support. 
(when (g1c)  (gce)) ;; Support. 
(when (j1c)  (jce)) ;; Support. 
(when (l1c)  (lce)) ;; Support. 
(when (q1c)  (qce)) ;; Support. 
(when (t1c)  (tce)) ;; Support. 
(when (v1c)  (vce)) ;; Support. 
(when (b2c)  (bde)) ;; Support. 
(when (g2c)  (gde)) ;; Support. 
(when (j2c)  (jde)) ;; Support. 
(when (l2c)  (lde)) ;; Support. 
(when (q2c)  (qde)) ;; Support. 
(when (v2c)  (vde)) ;; Support. 
(when (y2c)  (yde)) ;; Support. 
(when (b3c)  (bee)) ;; Support. 
(when (g3c)  (gee)) ;; Support. 
(when (j3c)  (jee)) ;; Support. 
(when (l3c)  (lee)) ;; Support. 
(when (q3c)  (qee)) ;; Support. 
(when (t3c) (and (tee) (not(uee)))) ;; Support.  Cancellation. 
(when (v3c) (and (vee) (not(xee)))) ;; Support.  Cancellation. 
(when (y3c) (and (yee) (not(zee)))) ;; Support.  Cancellation. 
(when (h4c) (and (hfe) (not(jfe)))) ;; Support.  Cancellation. 
(when (k4c) (and (kfe) (not(lfe)))) ;; Support.  Cancellation. 
(when (m4c) (and (mfe) (not(qfe)))) ;; Support.  Cancellation. 
(when (r4c) (and (rfe) (not(tfe)))) ;; Support.  Cancellation. 
(when (u4c) (and (ufe) (not(vfe)))) ;; Support.  Cancellation. 
(when (x4c) (and (xfe) (not(yfe)))) ;; Support.  Cancellation. 
(when (z4c) (and (zfe) (not(bge)))) ;; Support.  Cancellation. 
(when (c5c) (and (cge) (not(gge)))) ;; Support.  Cancellation. 
(when (h5c) (and (hge) (not(jge)))) ;; Support.  Cancellation. 
(when (k5c) (and (kge) (not(lge)))) ;; Support.  Cancellation. 
(when (m5c) (and (mge) (not(qge)))) ;; Support.  Cancellation. 
(when (r5c) (and (rge) (not(tge)))) ;; Support.  Cancellation. 
(when (u5c) (and (uge) (not(vge)))) ;; Support.  Cancellation. 
(when (x5c) (and (xge) (not(yge)))) ;; Support.  Cancellation. 
(when (z5c) (and (zge) (not(bhe)))) ;; Support.  Cancellation. 
(when (c6c) (and (che) (not(ghe)))) ;; Support.  Cancellation. 
(when (h6c) (and (hhe) (not(jhe)))) ;; Support.  Cancellation. 
(when (k6c) (and (khe) (not(lhe)))) ;; Support.  Cancellation. 
(when (m6c) (and (mhe) (not(qhe)))) ;; Support.  Cancellation. 
(when (r6c) (and (rhe) (not(the)))) ;; Support.  Cancellation. 
(when (u6c) (and (uhe) (not(vhe)))) ;; Support.  Cancellation. 
(when (x6c) (and (xhe) (not(yhe)))) ;; Support.  Cancellation. 
(when (z6c) (and (zhe) (not(bie)))) ;; Support.  Cancellation. 
(when (c7c) (and (cie) (not(gie)))) ;; Support.  Cancellation. 
(when (h7c) (and (hie) (not(jie)))) ;; Support.  Cancellation. 
(when (k7c) (and (kie) (not(lie)))) ;; Support.  Cancellation. 
(when (m7c) (and (mie) (not(qie)))) ;; Support.  Cancellation. 
(when (u7c)  (uie)) ;; Support. 
(when (z7c)  (zie)) ;; Support. 
(when (c8c)  (cje)) ;; Support. 
(when (k8c)  (kje)) ;; Support. 
(when (m8c)  (mje)) ;; Support. 
(when (u8c) (and (uje) (not(vje)))) ;; Support.  Cancellation. 
(when (x8c) (and (xje) (not(yje)))) ;; Support.  Cancellation. 
(when (z8c) (and (zje) (not(bke)))) ;; Support.  Cancellation. 
(when (c9c) (and (cke) (not(gke)))) ;; Support.  Cancellation. 
(when (k9c) (and (kke) (not(lke)))) ;; Support.  Cancellation. 
(when (m9c) (and (mke) (not(qke)))) ;; Support.  Cancellation. 
(when (r9c)  (rke)) ;; Support. 
(when (u9c) (and (uke) (not(vke)))) ;; Support.  Cancellation. 
(when (x9c) (and (xke) (not(yke)))) ;; Support.  Cancellation. 
(when (z9c)  (zke)) ;; Support. 
(when (c0c) (and (cle) (not(gle)))) ;; Support.  Cancellation. 
(when (h0c)  (hle)) ;; Support. 
(when (k0c)  (kle)) ;; Support. 
(when (m0c) (and (mle) (not(qle)))) ;; Support.  Cancellation. 
(when (r0c)  (rle)) ;; Support. 
(when (u0c)  (ule)) ;; Support. 
(when (x0c)  (xle)) ;; Support. 
(when (z0c)  (zle)) ;; Support. 
(when (cad) (and (cme) (not(gme)))) ;; Support.  Cancellation. 
(when (had) (and (hme) (not(jme)))) ;; Support.  Cancellation. 
(when (kad) (and (kme) (not(lme)))) ;; Support.  Cancellation. 
(when (mad) (and (mme) (not(qme)))) ;; Support.  Cancellation. 
(when (rad) (and (rme) (not(tme)))) ;; Support.  Cancellation. 
(when (uad) (and (ume) (not(vme)))) ;; Support.  Cancellation. 
(when (xad) (and (xme) (not(yme)))) ;; Support.  Cancellation. 
(when (zad) (and (zme) (not(bne)))) ;; Support.  Cancellation. 
(when (cbd) (and (cne) (not(gne)))) ;; Support.  Cancellation. 
(when (hbd) (and (hne) (not(jne)))) ;; Support.  Cancellation. 
(when (kbd) (and (kne) (not(lne)))) ;; Support.  Cancellation. 
(when (mbd) (and (mne) (not(qne)))) ;; Support.  Cancellation. 
(when (rbd)  (rne)) ;; Support. 
(when (tbd)  (tne)) ;; Support. 
(when (vbd)  (vne)) ;; Support. 
(when (ybd)  (yne)) ;; Support. 
(when (bcd)  (boe)) ;; Support. 
(when (gcd)  (goe)) ;; Support. 
(when (jcd)  (joe)) ;; Support. 
(when (lcd)  (loe)) ;; Support. 
(when (qcd)  (qoe)) ;; Support. 
(when (tcd)  (toe)) ;; Support. 
(when (vcd) (and (voe) (not(xoe)))) ;; Support.  Cancellation. 
(when (ycd) (and (yoe) (not(zoe)))) ;; Support.  Cancellation. 
(when (bdd) (and (bpe) (not(cpe)))) ;; Support.  Cancellation. 
(when (gdd)  (gpe)) ;; Support. 
(when (jdd)  (jpe)) ;; Support. 
(when (ldd) (and (lpe) (not(mpe)))) ;; Support.  Cancellation. 
(when (qdd) (and (qpe) (not(rpe)))) ;; Support.  Cancellation. 
(when (tdd) (and (tpe) (not(upe)))) ;; Support.  Cancellation. 
(when (vdd)  (vpe)) ;; Support. 
(when (ydd)  (ype)) ;; Support. 
(when (bed) (and (bqe) (not(cqe)))) ;; Support.  Cancellation. 
(when (ged)  (gqe)) ;; Support. 
(when (jed) (and (jqe) (not(kqe)))) ;; Support.  Cancellation. 
(when (led)  (lqe)) ;; Support. 
(when (rae) (and (ryc) (not(rbd)))) ;; Support.  Cancellation. 
(when (uee) (and (u3c) (not(t3c)))) ;; Support.  Cancellation. 
(when (xee) (and (x3c) (not(v3c)))) ;; Support.  Cancellation. 
(when (zee) (and (z3c) (not(y3c)))) ;; Support.  Cancellation. 
(when (gfe)  (g4c)) ;; Support. 
(when (jfe) (and (j4c) (not(h4c)))) ;; Support.  Cancellation. 
(when (lfe) (and (l4c) (not(k4c)))) ;; Support.  Cancellation. 
(when (qfe) (and (q4c) (not(m4c)))) ;; Support.  Cancellation. 
(when (tfe) (and (t4c) (not(r4c)))) ;; Support.  Cancellation. 
(when (vfe) (and (v4c) (not(u4c)))) ;; Support.  Cancellation. 
(when (yfe) (and (y4c) (not(x4c)))) ;; Support.  Cancellation. 
(when (bge) (and (b5c) (not(z4c)))) ;; Support.  Cancellation. 
(when (gge) (and (g5c) (not(c5c)))) ;; Support.  Cancellation. 
(when (jge) (and (j5c) (not(h5c)))) ;; Support.  Cancellation. 
(when (lge) (and (l5c) (not(k5c)))) ;; Support.  Cancellation. 
(when (qge) (and (q5c) (not(m5c)))) ;; Support.  Cancellation. 
(when (tge) (and (t5c) (not(r5c)))) ;; Support.  Cancellation. 
(when (vge) (and (v5c) (not(u5c)))) ;; Support.  Cancellation. 
(when (yge) (and (y5c) (not(x5c)))) ;; Support.  Cancellation. 
(when (bhe) (and (b6c) (not(z5c)))) ;; Support.  Cancellation. 
(when (ghe) (and (g6c) (not(c6c)))) ;; Support.  Cancellation. 
(when (jhe) (and (j6c) (not(h6c)))) ;; Support.  Cancellation. 
(when (lhe) (and (l6c) (not(k6c)))) ;; Support.  Cancellation. 
(when (qhe) (and (q6c) (not(m6c)))) ;; Support.  Cancellation. 
(when (the) (and (t6c) (not(r6c)))) ;; Support.  Cancellation. 
(when (vhe) (and (v6c) (not(u6c)))) ;; Support.  Cancellation. 
(when (yhe) (and (y6c) (not(x6c)))) ;; Support.  Cancellation. 
(when (bie) (and (b7c) (not(z6c)))) ;; Support.  Cancellation. 
(when (gie) (and (g7c) (not(c7c)))) ;; Support.  Cancellation. 
(when (jie) (and (j7c) (not(h7c)))) ;; Support.  Cancellation. 
(when (lie) (and (l7c) (not(k7c)))) ;; Support.  Cancellation. 
(when (qie) (and (q7c) (not(m7c)))) ;; Support.  Cancellation. 
(when (tje)  (t8c)) ;; Support. 
(when (vje) (and (v8c) (not(u8c)))) ;; Support.  Cancellation. 
(when (yje) (and (y8c) (not(x8c)))) ;; Support.  Cancellation. 
(when (bke) (and (b9c) (not(z8c)))) ;; Support.  Cancellation. 
(when (gke) (and (g9c) (not(c9c)))) ;; Support.  Cancellation. 
(when (jke)  (j9c)) ;; Support. 
(when (lke) (and (l9c) (not(k9c)))) ;; Support.  Cancellation. 
(when (qke) (and (q9c) (not(m9c)))) ;; Support.  Cancellation. 
(when (vke) (and (v9c) (not(u9c)))) ;; Support.  Cancellation. 
(when (yke) (and (y9c) (not(x9c)))) ;; Support.  Cancellation. 
(when (gle) (and (g0c) (not(c0c)))) ;; Support.  Cancellation. 
(when (qle) (and (q0c) (not(m0c)))) ;; Support.  Cancellation. 
(when (gme) (and (gad) (not(cad)))) ;; Support.  Cancellation. 
(when (jme) (and (jad) (not(had)))) ;; Support.  Cancellation. 
(when (lme) (and (lad) (not(kad)))) ;; Support.  Cancellation. 
(when (qme) (and (qad) (not(mad)))) ;; Support.  Cancellation. 
(when (tme) (and (tad) (not(rad)))) ;; Support.  Cancellation. 
(when (vme) (and (vad) (not(uad)))) ;; Support.  Cancellation. 
(when (yme) (and (yad) (not(xad)))) ;; Support.  Cancellation. 
(when (bne) (and (bbd) (not(zad)))) ;; Support.  Cancellation. 
(when (gne) (and (gbd) (not(cbd)))) ;; Support.  Cancellation. 
(when (jne) (and (jbd) (not(hbd)))) ;; Support.  Cancellation. 
(when (lne) (and (lbd) (not(kbd)))) ;; Support.  Cancellation. 
(when (qne) (and (qbd) (not(mbd)))) ;; Support.  Cancellation. 
(when (xoe) (and (xcd) (not(vcd)))) ;; Support.  Cancellation. 
(when (zoe) (and (zcd) (not(ycd)))) ;; Support.  Cancellation. 
(when (cpe) (and (cdd) (not(bdd)))) ;; Support.  Cancellation. 
(when (mpe) (and (mdd) (not(ldd)))) ;; Support.  Cancellation. 
(when (rpe) (and (rdd) (not(qdd)))) ;; Support.  Cancellation. 
(when (upe) (and (udd) (not(tdd)))) ;; Support.  Cancellation. 
(when (cqe) (and (ced) (not(bed)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L4_L6
:parameters ()
:precondition (and (mic))

:effect (and  (h4d) (u2c)
(when (kae) (and (ked) (not(jed)))) ;; Support.  Cancellation. 
(when (qyc) (and (qud) (not(bzd)))) ;; Support.  Cancellation. 
(when (not(ryc))  (not(rud))) ;; Cancellation. 
(when (tyc) (and (tud) (not(uud)))) ;; Support.  Cancellation. 
(when (vyc) (and (vud) (not(xud)))) ;; Support.  Cancellation. 
(when (yyc) (and (yud) (not(zud)))) ;; Support.  Cancellation. 
(when (bzc) (and (bvd) (not(cvd)))) ;; Support.  Cancellation. 
(when (gzc) (and (gvd) (not(hvd)))) ;; Support.  Cancellation. 
(when (jzc) (and (jvd) (not(kvd)))) ;; Support.  Cancellation. 
(when (lzc) (and (lvd) (not(mvd)))) ;; Support.  Cancellation. 
(when (qzc) (and (qvd) (not(rvd)))) ;; Support.  Cancellation. 
(when (tzc) (and (tvd) (not(uvd)))) ;; Support.  Cancellation. 
(when (vzc) (and (vvd) (not(xvd)))) ;; Support.  Cancellation. 
(when (yzc) (and (yvd) (not(zvd)))) ;; Support.  Cancellation. 
(when (b1c) (and (bwd) (not(cwd)))) ;; Support.  Cancellation. 
(when (g1c) (and (gwd) (not(hwd)))) ;; Support.  Cancellation. 
(when (j1c) (and (jwd) (not(kwd)))) ;; Support.  Cancellation. 
(when (l1c) (and (lwd) (not(mwd)))) ;; Support.  Cancellation. 
(when (q1c) (and (qwd) (not(rwd)))) ;; Support.  Cancellation. 
(when (t1c) (and (twd) (not(uwd)))) ;; Support.  Cancellation. 
(when (v1c) (and (vwd) (not(xwd)))) ;; Support.  Cancellation. 
(when (b2c) (and (bxd) (not(cxd)))) ;; Support.  Cancellation. 
(when (g2c) (and (gxd) (not(hxd)))) ;; Support.  Cancellation. 
(when (j2c) (and (jxd) (not(kxd)))) ;; Support.  Cancellation. 
(when (l2c) (and (lxd) (not(mxd)))) ;; Support.  Cancellation. 
(when (q2c) (and (qxd) (not(rxd)))) ;; Support.  Cancellation. 
(when (v2c) (and (vxd) (not(xxd)))) ;; Support.  Cancellation. 
(when (y2c) (and (yxd) (not(zxd)))) ;; Support.  Cancellation. 
(when (b3c) (and (byd) (not(cyd)))) ;; Support.  Cancellation. 
(when (g3c) (and (gyd) (not(hyd)))) ;; Support.  Cancellation. 
(when (j3c) (and (jyd) (not(kyd)))) ;; Support.  Cancellation. 
(when (l3c) (and (lyd) (not(myd)))) ;; Support.  Cancellation. 
(when (q3c) (and (qyd) (not(ryd)))) ;; Support.  Cancellation. 
(when (t3c) (and (tyd) (not(uyd)))) ;; Support.  Cancellation. 
(when (v3c) (and (vyd) (not(xyd)))) ;; Support.  Cancellation. 
(when (y3c) (and (yyd) (not(zyd)))) ;; Support.  Cancellation. 
(when (h4c) (and (hzd) (not(jzd)))) ;; Support.  Cancellation. 
(when (k4c) (and (kzd) (not(lzd)))) ;; Support.  Cancellation. 
(when (m4c) (and (mzd) (not(qzd)))) ;; Support.  Cancellation. 
(when (r4c) (and (rzd) (not(tzd)))) ;; Support.  Cancellation. 
(when (u4c) (and (uzd) (not(vzd)))) ;; Support.  Cancellation. 
(when (x4c) (and (xzd) (not(yzd)))) ;; Support.  Cancellation. 
(when (z4c) (and (zzd) (not(b1d)))) ;; Support.  Cancellation. 
(when (c5c) (and (c1d) (not(g1d)))) ;; Support.  Cancellation. 
(when (h5c) (and (h1d) (not(j1d)))) ;; Support.  Cancellation. 
(when (k5c) (and (k1d) (not(l1d)))) ;; Support.  Cancellation. 
(when (m5c) (and (m1d) (not(q1d)))) ;; Support.  Cancellation. 
(when (r5c) (and (r1d) (not(t1d)))) ;; Support.  Cancellation. 
(when (u5c) (and (u1d) (not(v1d)))) ;; Support.  Cancellation. 
(when (x5c) (and (x1d) (not(y1d)))) ;; Support.  Cancellation. 
(when (z5c) (and (z1d) (not(b2d)))) ;; Support.  Cancellation. 
(when (c6c) (and (c2d) (not(g2d)))) ;; Support.  Cancellation. 
(when (h6c) (and (h2d) (not(j2d)))) ;; Support.  Cancellation. 
(when (k6c) (and (k2d) (not(l2d)))) ;; Support.  Cancellation. 
(when (m6c) (and (m2d) (not(q2d)))) ;; Support.  Cancellation. 
(when (r6c) (and (r2d) (not(t2d)))) ;; Support.  Cancellation. 
(when (u6c) (and (u2d) (not(v2d)))) ;; Support.  Cancellation. 
(when (x6c) (and (x2d) (not(y2d)))) ;; Support.  Cancellation. 
(when (z6c) (and (z2d) (not(b3d)))) ;; Support.  Cancellation. 
(when (c7c) (and (c3d) (not(g3d)))) ;; Support.  Cancellation. 
(when (h7c) (and (h3d) (not(j3d)))) ;; Support.  Cancellation. 
(when (k7c) (and (k3d) (not(l3d)))) ;; Support.  Cancellation. 
(when (m7c) (and (m3d) (not(q3d)))) ;; Support.  Cancellation. 
(when (u7c)  (u3d)) ;; Support. 
(when (z7c)  (z3d)) ;; Support. 
(when (c8c)  (c4d)) ;; Support. 
(when (k8c)  (k4d)) ;; Support. 
(when (m8c)  (m4d)) ;; Support. 
(when (u8c) (and (u4d) (not(v4d)))) ;; Support.  Cancellation. 
(when (x8c) (and (x4d) (not(y4d)))) ;; Support.  Cancellation. 
(when (z8c) (and (z4d) (not(b5d)))) ;; Support.  Cancellation. 
(when (c9c) (and (c5d) (not(g5d)))) ;; Support.  Cancellation. 
(when (k9c) (and (k5d) (not(l5d)))) ;; Support.  Cancellation. 
(when (m9c) (and (m5d) (not(q5d)))) ;; Support.  Cancellation. 
(when (r9c)  (r5d)) ;; Support. 
(when (u9c) (and (u5d) (not(v5d)))) ;; Support.  Cancellation. 
(when (x9c) (and (x5d) (not(y5d)))) ;; Support.  Cancellation. 
(when (z9c)  (z5d)) ;; Support. 
(when (c0c) (and (c6d) (not(g6d)))) ;; Support.  Cancellation. 
(when (h0c)  (h6d)) ;; Support. 
(when (k0c)  (k6d)) ;; Support. 
(when (m0c) (and (m6d) (not(q6d)))) ;; Support.  Cancellation. 
(when (r0c)  (r6d)) ;; Support. 
(when (u0c)  (u6d)) ;; Support. 
(when (x0c)  (x6d)) ;; Support. 
(when (z0c)  (z6d)) ;; Support. 
(when (cad) (and (c7d) (not(g7d)))) ;; Support.  Cancellation. 
(when (had) (and (h7d) (not(j7d)))) ;; Support.  Cancellation. 
(when (kad) (and (k7d) (not(l7d)))) ;; Support.  Cancellation. 
(when (mad) (and (m7d) (not(q7d)))) ;; Support.  Cancellation. 
(when (rad) (and (r7d) (not(t7d)))) ;; Support.  Cancellation. 
(when (uad) (and (u7d) (not(v7d)))) ;; Support.  Cancellation. 
(when (xad) (and (x7d) (not(y7d)))) ;; Support.  Cancellation. 
(when (zad) (and (z7d) (not(b8d)))) ;; Support.  Cancellation. 
(when (cbd) (and (c8d) (not(g8d)))) ;; Support.  Cancellation. 
(when (hbd) (and (h8d) (not(j8d)))) ;; Support.  Cancellation. 
(when (kbd) (and (k8d) (not(l8d)))) ;; Support.  Cancellation. 
(when (mbd) (and (m8d) (not(q8d)))) ;; Support.  Cancellation. 
(when (rbd)  (r8d)) ;; Support. 
(when (tbd)  (t8d)) ;; Support. 
(when (vbd)  (v8d)) ;; Support. 
(when (ybd)  (y8d)) ;; Support. 
(when (bcd)  (b9d)) ;; Support. 
(when (gcd)  (g9d)) ;; Support. 
(when (jcd)  (j9d)) ;; Support. 
(when (lcd)  (l9d)) ;; Support. 
(when (qcd)  (q9d)) ;; Support. 
(when (tcd)  (t9d)) ;; Support. 
(when (vcd) (and (v9d) (not(x9d)))) ;; Support.  Cancellation. 
(when (ycd) (and (y9d) (not(z9d)))) ;; Support.  Cancellation. 
(when (bdd) (and (b0d) (not(c0d)))) ;; Support.  Cancellation. 
(when (gdd)  (g0d)) ;; Support. 
(when (jdd)  (j0d)) ;; Support. 
(when (ldd) (and (l0d) (not(m0d)))) ;; Support.  Cancellation. 
(when (qdd) (and (q0d) (not(r0d)))) ;; Support.  Cancellation. 
(when (tdd) (and (t0d) (not(u0d)))) ;; Support.  Cancellation. 
(when (vdd)  (v0d)) ;; Support. 
(when (ydd)  (y0d)) ;; Support. 
(when (bed) (and (bae) (not(cae)))) ;; Support.  Cancellation. 
(when (ged)  (gae)) ;; Support. 
(when (jed) (and (jae) (not(kae)))) ;; Support.  Cancellation. 
(when (led)  (lae)) ;; Support. 
(when (rud) (and (ryc) (not(rbd)))) ;; Support.  Cancellation. 
(when (not(qud))  (not(qyc))) ;; Cancellation. 
(when (uud) (and (uyc) (not(tyc)))) ;; Support.  Cancellation. 
(when (xud) (and (xyc) (not(vyc)))) ;; Support.  Cancellation. 
(when (zud) (and (zyc) (not(yyc)))) ;; Support.  Cancellation. 
(when (cvd) (and (czc) (not(bzc)))) ;; Support.  Cancellation. 
(when (hvd) (and (hzc) (not(gzc)))) ;; Support.  Cancellation. 
(when (kvd) (and (kzc) (not(jzc)))) ;; Support.  Cancellation. 
(when (mvd) (and (mzc) (not(lzc)))) ;; Support.  Cancellation. 
(when (rvd) (and (rzc) (not(qzc)))) ;; Support.  Cancellation. 
(when (uvd) (and (uzc) (not(tzc)))) ;; Support.  Cancellation. 
(when (xvd) (and (xzc) (not(vzc)))) ;; Support.  Cancellation. 
(when (zvd) (and (zzc) (not(yzc)))) ;; Support.  Cancellation. 
(when (cwd) (and (c1c) (not(b1c)))) ;; Support.  Cancellation. 
(when (hwd) (and (h1c) (not(g1c)))) ;; Support.  Cancellation. 
(when (kwd) (and (k1c) (not(j1c)))) ;; Support.  Cancellation. 
(when (mwd) (and (m1c) (not(l1c)))) ;; Support.  Cancellation. 
(when (rwd) (and (r1c) (not(q1c)))) ;; Support.  Cancellation. 
(when (uwd) (and (u1c) (not(t1c)))) ;; Support.  Cancellation. 
(when (xwd) (and (x1c) (not(v1c)))) ;; Support.  Cancellation. 
(when (zwd)  (z1c)) ;; Support. 
(when (cxd) (and (c2c) (not(b2c)))) ;; Support.  Cancellation. 
(when (hxd) (and (h2c) (not(g2c)))) ;; Support.  Cancellation. 
(when (kxd) (and (k2c) (not(j2c)))) ;; Support.  Cancellation. 
(when (mxd) (and (m2c) (not(l2c)))) ;; Support.  Cancellation. 
(when (rxd) (and (r2c) (not(q2c)))) ;; Support.  Cancellation. 
(when (xxd) (and (x2c) (not(v2c)))) ;; Support.  Cancellation. 
(when (zxd) (and (z2c) (not(y2c)))) ;; Support.  Cancellation. 
(when (cyd) (and (c3c) (not(b3c)))) ;; Support.  Cancellation. 
(when (hyd) (and (h3c) (not(g3c)))) ;; Support.  Cancellation. 
(when (kyd) (and (k3c) (not(j3c)))) ;; Support.  Cancellation. 
(when (myd) (and (m3c) (not(l3c)))) ;; Support.  Cancellation. 
(when (ryd) (and (r3c) (not(q3c)))) ;; Support.  Cancellation. 
(when (uyd) (and (u3c) (not(t3c)))) ;; Support.  Cancellation. 
(when (xyd) (and (x3c) (not(v3c)))) ;; Support.  Cancellation. 
(when (zyd) (and (z3c) (not(y3c)))) ;; Support.  Cancellation. 
(when (bzd)  (b4c)) ;; Support. 
(when (gzd)  (g4c)) ;; Support. 
(when (jzd) (and (j4c) (not(h4c)))) ;; Support.  Cancellation. 
(when (lzd) (and (l4c) (not(k4c)))) ;; Support.  Cancellation. 
(when (qzd) (and (q4c) (not(m4c)))) ;; Support.  Cancellation. 
(when (tzd) (and (t4c) (not(r4c)))) ;; Support.  Cancellation. 
(when (vzd) (and (v4c) (not(u4c)))) ;; Support.  Cancellation. 
(when (yzd) (and (y4c) (not(x4c)))) ;; Support.  Cancellation. 
(when (b1d) (and (b5c) (not(z4c)))) ;; Support.  Cancellation. 
(when (g1d) (and (g5c) (not(c5c)))) ;; Support.  Cancellation. 
(when (j1d) (and (j5c) (not(h5c)))) ;; Support.  Cancellation. 
(when (l1d) (and (l5c) (not(k5c)))) ;; Support.  Cancellation. 
(when (q1d) (and (q5c) (not(m5c)))) ;; Support.  Cancellation. 
(when (t1d) (and (t5c) (not(r5c)))) ;; Support.  Cancellation. 
(when (v1d) (and (v5c) (not(u5c)))) ;; Support.  Cancellation. 
(when (y1d) (and (y5c) (not(x5c)))) ;; Support.  Cancellation. 
(when (b2d) (and (b6c) (not(z5c)))) ;; Support.  Cancellation. 
(when (g2d) (and (g6c) (not(c6c)))) ;; Support.  Cancellation. 
(when (j2d) (and (j6c) (not(h6c)))) ;; Support.  Cancellation. 
(when (l2d) (and (l6c) (not(k6c)))) ;; Support.  Cancellation. 
(when (q2d) (and (q6c) (not(m6c)))) ;; Support.  Cancellation. 
(when (t2d) (and (t6c) (not(r6c)))) ;; Support.  Cancellation. 
(when (v2d) (and (v6c) (not(u6c)))) ;; Support.  Cancellation. 
(when (y2d) (and (y6c) (not(x6c)))) ;; Support.  Cancellation. 
(when (b3d) (and (b7c) (not(z6c)))) ;; Support.  Cancellation. 
(when (g3d) (and (g7c) (not(c7c)))) ;; Support.  Cancellation. 
(when (j3d) (and (j7c) (not(h7c)))) ;; Support.  Cancellation. 
(when (l3d) (and (l7c) (not(k7c)))) ;; Support.  Cancellation. 
(when (q3d) (and (q7c) (not(m7c)))) ;; Support.  Cancellation. 
(when (t4d)  (t8c)) ;; Support. 
(when (v4d) (and (v8c) (not(u8c)))) ;; Support.  Cancellation. 
(when (y4d) (and (y8c) (not(x8c)))) ;; Support.  Cancellation. 
(when (b5d) (and (b9c) (not(z8c)))) ;; Support.  Cancellation. 
(when (g5d) (and (g9c) (not(c9c)))) ;; Support.  Cancellation. 
(when (j5d)  (j9c)) ;; Support. 
(when (l5d) (and (l9c) (not(k9c)))) ;; Support.  Cancellation. 
(when (q5d) (and (q9c) (not(m9c)))) ;; Support.  Cancellation. 
(when (v5d) (and (v9c) (not(u9c)))) ;; Support.  Cancellation. 
(when (y5d) (and (y9c) (not(x9c)))) ;; Support.  Cancellation. 
(when (g6d) (and (g0c) (not(c0c)))) ;; Support.  Cancellation. 
(when (q6d) (and (q0c) (not(m0c)))) ;; Support.  Cancellation. 
(when (g7d) (and (gad) (not(cad)))) ;; Support.  Cancellation. 
(when (j7d) (and (jad) (not(had)))) ;; Support.  Cancellation. 
(when (l7d) (and (lad) (not(kad)))) ;; Support.  Cancellation. 
(when (q7d) (and (qad) (not(mad)))) ;; Support.  Cancellation. 
(when (t7d) (and (tad) (not(rad)))) ;; Support.  Cancellation. 
(when (v7d) (and (vad) (not(uad)))) ;; Support.  Cancellation. 
(when (y7d) (and (yad) (not(xad)))) ;; Support.  Cancellation. 
(when (b8d) (and (bbd) (not(zad)))) ;; Support.  Cancellation. 
(when (g8d) (and (gbd) (not(cbd)))) ;; Support.  Cancellation. 
(when (j8d) (and (jbd) (not(hbd)))) ;; Support.  Cancellation. 
(when (l8d) (and (lbd) (not(kbd)))) ;; Support.  Cancellation. 
(when (q8d) (and (qbd) (not(mbd)))) ;; Support.  Cancellation. 
(when (x9d) (and (xcd) (not(vcd)))) ;; Support.  Cancellation. 
(when (z9d) (and (zcd) (not(ycd)))) ;; Support.  Cancellation. 
(when (c0d) (and (cdd) (not(bdd)))) ;; Support.  Cancellation. 
(when (m0d) (and (mdd) (not(ldd)))) ;; Support.  Cancellation. 
(when (r0d) (and (rdd) (not(qdd)))) ;; Support.  Cancellation. 
(when (u0d) (and (udd) (not(tdd)))) ;; Support.  Cancellation. 
(when (cae) (and (ced) (not(bed)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L4_L5
:parameters ()
:precondition (and (mic))

:effect (and  (hnd) (t7c)
(when (kud) (and (ked) (not(jed)))) ;; Support.  Cancellation. 
(when (qyc) (and (qed) (not(bjd)))) ;; Support.  Cancellation. 
(when (not(ryc))  (not(red))) ;; Cancellation. 
(when (tyc) (and (ted) (not(ued)))) ;; Support.  Cancellation. 
(when (vyc) (and (ved) (not(xed)))) ;; Support.  Cancellation. 
(when (yyc) (and (yed) (not(zed)))) ;; Support.  Cancellation. 
(when (bzc) (and (bfd) (not(cfd)))) ;; Support.  Cancellation. 
(when (gzc) (and (gfd) (not(hfd)))) ;; Support.  Cancellation. 
(when (jzc) (and (jfd) (not(kfd)))) ;; Support.  Cancellation. 
(when (lzc) (and (lfd) (not(mfd)))) ;; Support.  Cancellation. 
(when (qzc) (and (qfd) (not(rfd)))) ;; Support.  Cancellation. 
(when (tzc) (and (tfd) (not(ufd)))) ;; Support.  Cancellation. 
(when (vzc) (and (vfd) (not(xfd)))) ;; Support.  Cancellation. 
(when (yzc) (and (yfd) (not(zfd)))) ;; Support.  Cancellation. 
(when (b1c) (and (bgd) (not(cgd)))) ;; Support.  Cancellation. 
(when (g1c) (and (ggd) (not(hgd)))) ;; Support.  Cancellation. 
(when (j1c) (and (jgd) (not(kgd)))) ;; Support.  Cancellation. 
(when (l1c) (and (lgd) (not(mgd)))) ;; Support.  Cancellation. 
(when (q1c) (and (qgd) (not(rgd)))) ;; Support.  Cancellation. 
(when (t1c) (and (tgd) (not(ugd)))) ;; Support.  Cancellation. 
(when (v1c) (and (vgd) (not(xgd)))) ;; Support.  Cancellation. 
(when (b2c) (and (bhd) (not(chd)))) ;; Support.  Cancellation. 
(when (g2c) (and (ghd) (not(hhd)))) ;; Support.  Cancellation. 
(when (j2c) (and (jhd) (not(khd)))) ;; Support.  Cancellation. 
(when (l2c) (and (lhd) (not(mhd)))) ;; Support.  Cancellation. 
(when (q2c) (and (qhd) (not(rhd)))) ;; Support.  Cancellation. 
(when (v2c) (and (vhd) (not(xhd)))) ;; Support.  Cancellation. 
(when (y2c) (and (yhd) (not(zhd)))) ;; Support.  Cancellation. 
(when (b3c) (and (bid) (not(cid)))) ;; Support.  Cancellation. 
(when (g3c) (and (gid) (not(hid)))) ;; Support.  Cancellation. 
(when (j3c) (and (jid) (not(kid)))) ;; Support.  Cancellation. 
(when (l3c) (and (lid) (not(mid)))) ;; Support.  Cancellation. 
(when (q3c) (and (qid) (not(rid)))) ;; Support.  Cancellation. 
(when (t3c) (and (tid) (not(uid)))) ;; Support.  Cancellation. 
(when (v3c) (and (vid) (not(xid)))) ;; Support.  Cancellation. 
(when (y3c) (and (yid) (not(zid)))) ;; Support.  Cancellation. 
(when (h4c) (and (hjd) (not(jjd)))) ;; Support.  Cancellation. 
(when (k4c) (and (kjd) (not(ljd)))) ;; Support.  Cancellation. 
(when (m4c) (and (mjd) (not(qjd)))) ;; Support.  Cancellation. 
(when (r4c) (and (rjd) (not(tjd)))) ;; Support.  Cancellation. 
(when (u4c) (and (ujd) (not(vjd)))) ;; Support.  Cancellation. 
(when (x4c) (and (xjd) (not(yjd)))) ;; Support.  Cancellation. 
(when (z4c) (and (zjd) (not(bkd)))) ;; Support.  Cancellation. 
(when (c5c) (and (ckd) (not(gkd)))) ;; Support.  Cancellation. 
(when (h5c) (and (hkd) (not(jkd)))) ;; Support.  Cancellation. 
(when (k5c) (and (kkd) (not(lkd)))) ;; Support.  Cancellation. 
(when (m5c) (and (mkd) (not(qkd)))) ;; Support.  Cancellation. 
(when (r5c) (and (rkd) (not(tkd)))) ;; Support.  Cancellation. 
(when (u5c) (and (ukd) (not(vkd)))) ;; Support.  Cancellation. 
(when (x5c) (and (xkd) (not(ykd)))) ;; Support.  Cancellation. 
(when (z5c) (and (zkd) (not(bld)))) ;; Support.  Cancellation. 
(when (c6c) (and (cld) (not(gld)))) ;; Support.  Cancellation. 
(when (h6c) (and (hld) (not(jld)))) ;; Support.  Cancellation. 
(when (k6c) (and (kld) (not(lld)))) ;; Support.  Cancellation. 
(when (m6c) (and (mld) (not(qld)))) ;; Support.  Cancellation. 
(when (r6c) (and (rld) (not(tld)))) ;; Support.  Cancellation. 
(when (u6c) (and (uld) (not(vld)))) ;; Support.  Cancellation. 
(when (x6c) (and (xld) (not(yld)))) ;; Support.  Cancellation. 
(when (z6c) (and (zld) (not(bmd)))) ;; Support.  Cancellation. 
(when (c7c) (and (cmd) (not(gmd)))) ;; Support.  Cancellation. 
(when (h7c) (and (hmd) (not(jmd)))) ;; Support.  Cancellation. 
(when (k7c) (and (kmd) (not(lmd)))) ;; Support.  Cancellation. 
(when (m7c) (and (mmd) (not(qmd)))) ;; Support.  Cancellation. 
(when (u7c) (and (umd) (not(vmd)))) ;; Support.  Cancellation. 
(when (z7c)  (zmd)) ;; Support. 
(when (c8c) (and (cnd) (not(gnd)))) ;; Support.  Cancellation. 
(when (k8c) (and (knd) (not(lnd)))) ;; Support.  Cancellation. 
(when (m8c)  (mnd)) ;; Support. 
(when (u8c) (and (und) (not(vnd)))) ;; Support.  Cancellation. 
(when (x8c) (and (xnd) (not(ynd)))) ;; Support.  Cancellation. 
(when (z8c) (and (znd) (not(bod)))) ;; Support.  Cancellation. 
(when (c9c) (and (cod) (not(god)))) ;; Support.  Cancellation. 
(when (k9c) (and (kod) (not(lod)))) ;; Support.  Cancellation. 
(when (m9c) (and (mod) (not(qod)))) ;; Support.  Cancellation. 
(when (r9c)  (rod)) ;; Support. 
(when (u9c) (and (uod) (not(vod)))) ;; Support.  Cancellation. 
(when (x9c) (and (xod) (not(yod)))) ;; Support.  Cancellation. 
(when (z9c)  (zod)) ;; Support. 
(when (c0c) (and (cpd) (not(gpd)))) ;; Support.  Cancellation. 
(when (h0c)  (hpd)) ;; Support. 
(when (k0c)  (kpd)) ;; Support. 
(when (m0c) (and (mpd) (not(qpd)))) ;; Support.  Cancellation. 
(when (r0c) (and (rpd) (not(tpd)))) ;; Support.  Cancellation. 
(when (u0c) (and (upd) (not(vpd)))) ;; Support.  Cancellation. 
(when (x0c) (and (xpd) (not(ypd)))) ;; Support.  Cancellation. 
(when (z0c) (and (zpd) (not(bqd)))) ;; Support.  Cancellation. 
(when (cad) (and (cqd) (not(gqd)))) ;; Support.  Cancellation. 
(when (had) (and (hqd) (not(jqd)))) ;; Support.  Cancellation. 
(when (kad) (and (kqd) (not(lqd)))) ;; Support.  Cancellation. 
(when (mad) (and (mqd) (not(qqd)))) ;; Support.  Cancellation. 
(when (rad) (and (rqd) (not(tqd)))) ;; Support.  Cancellation. 
(when (uad) (and (uqd) (not(vqd)))) ;; Support.  Cancellation. 
(when (xad) (and (xqd) (not(yqd)))) ;; Support.  Cancellation. 
(when (zad) (and (zqd) (not(bsd)))) ;; Support.  Cancellation. 
(when (cbd) (and (csd) (not(gsd)))) ;; Support.  Cancellation. 
(when (hbd) (and (hsd) (not(jsd)))) ;; Support.  Cancellation. 
(when (kbd) (and (ksd) (not(lsd)))) ;; Support.  Cancellation. 
(when (mbd) (and (msd) (not(qsd)))) ;; Support.  Cancellation. 
(when (rbd)  (rsd)) ;; Support. 
(when (tbd) (and (tsd) (not(usd)))) ;; Support.  Cancellation. 
(when (vbd) (and (vsd) (not(xsd)))) ;; Support.  Cancellation. 
(when (ybd)  (ysd)) ;; Support. 
(when (bcd)  (brd)) ;; Support. 
(when (gcd) (and (grd) (not(hrd)))) ;; Support.  Cancellation. 
(when (jcd)  (jrd)) ;; Support. 
(when (lcd) (and (lrd) (not(mrd)))) ;; Support.  Cancellation. 
(when (qcd) (and (qrd) (not(rrd)))) ;; Support.  Cancellation. 
(when (tcd) (and (trd) (not(urd)))) ;; Support.  Cancellation. 
(when (vcd) (and (vrd) (not(xrd)))) ;; Support.  Cancellation. 
(when (ycd) (and (yrd) (not(zrd)))) ;; Support.  Cancellation. 
(when (bdd) (and (btd) (not(ctd)))) ;; Support.  Cancellation. 
(when (gdd)  (gtd)) ;; Support. 
(when (jdd)  (jtd)) ;; Support. 
(when (ldd) (and (ltd) (not(mtd)))) ;; Support.  Cancellation. 
(when (qdd) (and (qtd) (not(rtd)))) ;; Support.  Cancellation. 
(when (tdd) (and (ttd) (not(utd)))) ;; Support.  Cancellation. 
(when (vdd) (and (vtd) (not(xtd)))) ;; Support.  Cancellation. 
(when (ydd) (and (ytd) (not(ztd)))) ;; Support.  Cancellation. 
(when (bed) (and (bud) (not(cud)))) ;; Support.  Cancellation. 
(when (ged)  (gud)) ;; Support. 
(when (jed) (and (jud) (not(kud)))) ;; Support.  Cancellation. 
(when (led)  (lud)) ;; Support. 
(when (red) (and (ryc) (not(rbd)))) ;; Support.  Cancellation. 
(when (not(qed))  (not(qyc))) ;; Cancellation. 
(when (ued) (and (uyc) (not(tyc)))) ;; Support.  Cancellation. 
(when (xed) (and (xyc) (not(vyc)))) ;; Support.  Cancellation. 
(when (zed) (and (zyc) (not(yyc)))) ;; Support.  Cancellation. 
(when (cfd) (and (czc) (not(bzc)))) ;; Support.  Cancellation. 
(when (hfd) (and (hzc) (not(gzc)))) ;; Support.  Cancellation. 
(when (kfd) (and (kzc) (not(jzc)))) ;; Support.  Cancellation. 
(when (mfd) (and (mzc) (not(lzc)))) ;; Support.  Cancellation. 
(when (rfd) (and (rzc) (not(qzc)))) ;; Support.  Cancellation. 
(when (ufd) (and (uzc) (not(tzc)))) ;; Support.  Cancellation. 
(when (xfd) (and (xzc) (not(vzc)))) ;; Support.  Cancellation. 
(when (zfd) (and (zzc) (not(yzc)))) ;; Support.  Cancellation. 
(when (cgd) (and (c1c) (not(b1c)))) ;; Support.  Cancellation. 
(when (hgd) (and (h1c) (not(g1c)))) ;; Support.  Cancellation. 
(when (kgd) (and (k1c) (not(j1c)))) ;; Support.  Cancellation. 
(when (mgd) (and (m1c) (not(l1c)))) ;; Support.  Cancellation. 
(when (rgd) (and (r1c) (not(q1c)))) ;; Support.  Cancellation. 
(when (ugd) (and (u1c) (not(t1c)))) ;; Support.  Cancellation. 
(when (xgd) (and (x1c) (not(v1c)))) ;; Support.  Cancellation. 
(when (zgd)  (z1c)) ;; Support. 
(when (chd) (and (c2c) (not(b2c)))) ;; Support.  Cancellation. 
(when (hhd) (and (h2c) (not(g2c)))) ;; Support.  Cancellation. 
(when (khd) (and (k2c) (not(j2c)))) ;; Support.  Cancellation. 
(when (mhd) (and (m2c) (not(l2c)))) ;; Support.  Cancellation. 
(when (rhd) (and (r2c) (not(q2c)))) ;; Support.  Cancellation. 
(when (uhd)  (u2c)) ;; Support. 
(when (xhd) (and (x2c) (not(v2c)))) ;; Support.  Cancellation. 
(when (zhd) (and (z2c) (not(y2c)))) ;; Support.  Cancellation. 
(when (cid) (and (c3c) (not(b3c)))) ;; Support.  Cancellation. 
(when (hid) (and (h3c) (not(g3c)))) ;; Support.  Cancellation. 
(when (kid) (and (k3c) (not(j3c)))) ;; Support.  Cancellation. 
(when (mid) (and (m3c) (not(l3c)))) ;; Support.  Cancellation. 
(when (rid) (and (r3c) (not(q3c)))) ;; Support.  Cancellation. 
(when (uid) (and (u3c) (not(t3c)))) ;; Support.  Cancellation. 
(when (xid) (and (x3c) (not(v3c)))) ;; Support.  Cancellation. 
(when (zid) (and (z3c) (not(y3c)))) ;; Support.  Cancellation. 
(when (bjd)  (b4c)) ;; Support. 
(when (gjd)  (g4c)) ;; Support. 
(when (jjd) (and (j4c) (not(h4c)))) ;; Support.  Cancellation. 
(when (ljd) (and (l4c) (not(k4c)))) ;; Support.  Cancellation. 
(when (qjd) (and (q4c) (not(m4c)))) ;; Support.  Cancellation. 
(when (tjd) (and (t4c) (not(r4c)))) ;; Support.  Cancellation. 
(when (vjd) (and (v4c) (not(u4c)))) ;; Support.  Cancellation. 
(when (yjd) (and (y4c) (not(x4c)))) ;; Support.  Cancellation. 
(when (bkd) (and (b5c) (not(z4c)))) ;; Support.  Cancellation. 
(when (gkd) (and (g5c) (not(c5c)))) ;; Support.  Cancellation. 
(when (jkd) (and (j5c) (not(h5c)))) ;; Support.  Cancellation. 
(when (lkd) (and (l5c) (not(k5c)))) ;; Support.  Cancellation. 
(when (qkd) (and (q5c) (not(m5c)))) ;; Support.  Cancellation. 
(when (tkd) (and (t5c) (not(r5c)))) ;; Support.  Cancellation. 
(when (vkd) (and (v5c) (not(u5c)))) ;; Support.  Cancellation. 
(when (ykd) (and (y5c) (not(x5c)))) ;; Support.  Cancellation. 
(when (bld) (and (b6c) (not(z5c)))) ;; Support.  Cancellation. 
(when (gld) (and (g6c) (not(c6c)))) ;; Support.  Cancellation. 
(when (jld) (and (j6c) (not(h6c)))) ;; Support.  Cancellation. 
(when (lld) (and (l6c) (not(k6c)))) ;; Support.  Cancellation. 
(when (qld) (and (q6c) (not(m6c)))) ;; Support.  Cancellation. 
(when (tld) (and (t6c) (not(r6c)))) ;; Support.  Cancellation. 
(when (vld) (and (v6c) (not(u6c)))) ;; Support.  Cancellation. 
(when (yld) (and (y6c) (not(x6c)))) ;; Support.  Cancellation. 
(when (bmd) (and (b7c) (not(z6c)))) ;; Support.  Cancellation. 
(when (gmd) (and (g7c) (not(c7c)))) ;; Support.  Cancellation. 
(when (jmd) (and (j7c) (not(h7c)))) ;; Support.  Cancellation. 
(when (lmd) (and (l7c) (not(k7c)))) ;; Support.  Cancellation. 
(when (qmd) (and (q7c) (not(m7c)))) ;; Support.  Cancellation. 
(when (vmd) (and (v7c) (not(u7c)))) ;; Support.  Cancellation. 
(when (gnd) (and (g8c) (not(c8c)))) ;; Support.  Cancellation. 
(when (lnd) (and (l8c) (not(k8c)))) ;; Support.  Cancellation. 
(when (tnd)  (t8c)) ;; Support. 
(when (vnd) (and (v8c) (not(u8c)))) ;; Support.  Cancellation. 
(when (ynd) (and (y8c) (not(x8c)))) ;; Support.  Cancellation. 
(when (bod) (and (b9c) (not(z8c)))) ;; Support.  Cancellation. 
(when (god) (and (g9c) (not(c9c)))) ;; Support.  Cancellation. 
(when (jod)  (j9c)) ;; Support. 
(when (lod) (and (l9c) (not(k9c)))) ;; Support.  Cancellation. 
(when (qod) (and (q9c) (not(m9c)))) ;; Support.  Cancellation. 
(when (vod) (and (v9c) (not(u9c)))) ;; Support.  Cancellation. 
(when (yod) (and (y9c) (not(x9c)))) ;; Support.  Cancellation. 
(when (gpd) (and (g0c) (not(c0c)))) ;; Support.  Cancellation. 
(when (qpd) (and (q0c) (not(m0c)))) ;; Support.  Cancellation. 
(when (tpd) (and (t0c) (not(r0c)))) ;; Support.  Cancellation. 
(when (vpd) (and (v0c) (not(u0c)))) ;; Support.  Cancellation. 
(when (ypd) (and (y0c) (not(x0c)))) ;; Support.  Cancellation. 
(when (bqd) (and (bad) (not(z0c)))) ;; Support.  Cancellation. 
(when (gqd) (and (gad) (not(cad)))) ;; Support.  Cancellation. 
(when (jqd) (and (jad) (not(had)))) ;; Support.  Cancellation. 
(when (lqd) (and (lad) (not(kad)))) ;; Support.  Cancellation. 
(when (qqd) (and (qad) (not(mad)))) ;; Support.  Cancellation. 
(when (tqd) (and (tad) (not(rad)))) ;; Support.  Cancellation. 
(when (vqd) (and (vad) (not(uad)))) ;; Support.  Cancellation. 
(when (yqd) (and (yad) (not(xad)))) ;; Support.  Cancellation. 
(when (bsd) (and (bbd) (not(zad)))) ;; Support.  Cancellation. 
(when (gsd) (and (gbd) (not(cbd)))) ;; Support.  Cancellation. 
(when (jsd) (and (jbd) (not(hbd)))) ;; Support.  Cancellation. 
(when (lsd) (and (lbd) (not(kbd)))) ;; Support.  Cancellation. 
(when (qsd) (and (qbd) (not(mbd)))) ;; Support.  Cancellation. 
(when (usd) (and (ubd) (not(tbd)))) ;; Support.  Cancellation. 
(when (xsd) (and (xbd) (not(vbd)))) ;; Support.  Cancellation. 
(when (hrd) (and (hcd) (not(gcd)))) ;; Support.  Cancellation. 
(when (mrd) (and (mcd) (not(lcd)))) ;; Support.  Cancellation. 
(when (rrd) (and (rcd) (not(qcd)))) ;; Support.  Cancellation. 
(when (urd) (and (ucd) (not(tcd)))) ;; Support.  Cancellation. 
(when (xrd) (and (xcd) (not(vcd)))) ;; Support.  Cancellation. 
(when (zrd) (and (zcd) (not(ycd)))) ;; Support.  Cancellation. 
(when (ctd) (and (cdd) (not(bdd)))) ;; Support.  Cancellation. 
(when (mtd) (and (mdd) (not(ldd)))) ;; Support.  Cancellation. 
(when (rtd) (and (rdd) (not(qdd)))) ;; Support.  Cancellation. 
(when (utd) (and (udd) (not(tdd)))) ;; Support.  Cancellation. 
(when (xtd) (and (xdd) (not(vdd)))) ;; Support.  Cancellation. 
(when (ztd) (and (zdd) (not(ydd)))) ;; Support.  Cancellation. 
(when (cud) (and (ced) (not(bed)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L3_L7
:parameters ()
:precondition (and (mic))

:effect (and  (bnc) (gpe) (not(qic))
(when (kqe) (and (kyc) (not(jyc)))) ;; Support.  Cancellation. 
(when (qic) (and (qae) (not(bfe)))) ;; Support.  Cancellation. 
(when (not(ric))  (not(rae))) ;; Cancellation. 
(when (tic)  (tae)) ;; Support. 
(when (vic)  (vae)) ;; Support. 
(when (yic)  (yae)) ;; Support. 
(when (bjc)  (bbe)) ;; Support. 
(when (gjc)  (gbe)) ;; Support. 
(when (jjc)  (jbe)) ;; Support. 
(when (ljc)  (lbe)) ;; Support. 
(when (qjc)  (qbe)) ;; Support. 
(when (tjc)  (tbe)) ;; Support. 
(when (vjc)  (vbe)) ;; Support. 
(when (yjc)  (ybe)) ;; Support. 
(when (bkc)  (bce)) ;; Support. 
(when (gkc)  (gce)) ;; Support. 
(when (jkc)  (jce)) ;; Support. 
(when (lkc)  (lce)) ;; Support. 
(when (qkc)  (qce)) ;; Support. 
(when (tkc)  (tce)) ;; Support. 
(when (vkc)  (vce)) ;; Support. 
(when (glc)  (gde)) ;; Support. 
(when (jlc)  (jde)) ;; Support. 
(when (llc)  (lde)) ;; Support. 
(when (qlc)  (qde)) ;; Support. 
(when (vlc)  (vde)) ;; Support. 
(when (ylc)  (yde)) ;; Support. 
(when (bmc)  (bee)) ;; Support. 
(when (jmc)  (jee)) ;; Support. 
(when (lmc)  (lee)) ;; Support. 
(when (qmc)  (qee)) ;; Support. 
(when (tmc) (and (tee) (not(uee)))) ;; Support.  Cancellation. 
(when (ymc) (and (yee) (not(zee)))) ;; Support.  Cancellation. 
(when (knc) (and (kfe) (not(lfe)))) ;; Support.  Cancellation. 
(when (mnc) (and (mfe) (not(qfe)))) ;; Support.  Cancellation. 
(when (rnc) (and (rfe) (not(tfe)))) ;; Support.  Cancellation. 
(when (unc) (and (ufe) (not(vfe)))) ;; Support.  Cancellation. 
(when (xnc) (and (xfe) (not(yfe)))) ;; Support.  Cancellation. 
(when (znc) (and (zfe) (not(bge)))) ;; Support.  Cancellation. 
(when (coc) (and (cge) (not(gge)))) ;; Support.  Cancellation. 
(when (hoc) (and (hge) (not(jge)))) ;; Support.  Cancellation. 
(when (koc) (and (kge) (not(lge)))) ;; Support.  Cancellation. 
(when (moc) (and (mge) (not(qge)))) ;; Support.  Cancellation. 
(when (roc) (and (rge) (not(tge)))) ;; Support.  Cancellation. 
(when (uoc) (and (uge) (not(vge)))) ;; Support.  Cancellation. 
(when (xoc) (and (xge) (not(yge)))) ;; Support.  Cancellation. 
(when (zoc) (and (zge) (not(bhe)))) ;; Support.  Cancellation. 
(when (cpc) (and (che) (not(ghe)))) ;; Support.  Cancellation. 
(when (hpc) (and (hhe) (not(jhe)))) ;; Support.  Cancellation. 
(when (kpc) (and (khe) (not(lhe)))) ;; Support.  Cancellation. 
(when (mpc) (and (mhe) (not(qhe)))) ;; Support.  Cancellation. 
(when (rpc) (and (rhe) (not(the)))) ;; Support.  Cancellation. 
(when (upc) (and (uhe) (not(vhe)))) ;; Support.  Cancellation. 
(when (xpc) (and (xhe) (not(yhe)))) ;; Support.  Cancellation. 
(when (zpc) (and (zhe) (not(bie)))) ;; Support.  Cancellation. 
(when (cqc) (and (cie) (not(gie)))) ;; Support.  Cancellation. 
(when (hqc) (and (hie) (not(jie)))) ;; Support.  Cancellation. 
(when (kqc) (and (kie) (not(lie)))) ;; Support.  Cancellation. 
(when (mqc) (and (mie) (not(qie)))) ;; Support.  Cancellation. 
(when (uqc)  (uie)) ;; Support. 
(when (zqc)  (zie)) ;; Support. 
(when (ksc)  (kje)) ;; Support. 
(when (msc)  (mje)) ;; Support. 
(when (usc) (and (uje) (not(vje)))) ;; Support.  Cancellation. 
(when (xsc) (and (xje) (not(yje)))) ;; Support.  Cancellation. 
(when (crc) (and (cke) (not(gke)))) ;; Support.  Cancellation. 
(when (mrc) (and (mke) (not(qke)))) ;; Support.  Cancellation. 
(when (rrc)  (rke)) ;; Support. 
(when (urc) (and (uke) (not(vke)))) ;; Support.  Cancellation. 
(when (xrc) (and (xke) (not(yke)))) ;; Support.  Cancellation. 
(when (zrc)  (zke)) ;; Support. 
(when (ctc) (and (cle) (not(gle)))) ;; Support.  Cancellation. 
(when (htc)  (hle)) ;; Support. 
(when (ktc)  (kle)) ;; Support. 
(when (mtc) (and (mle) (not(qle)))) ;; Support.  Cancellation. 
(when (rtc)  (rle)) ;; Support. 
(when (utc)  (ule)) ;; Support. 
(when (xtc)  (xle)) ;; Support. 
(when (ztc)  (zle)) ;; Support. 
(when (cuc) (and (cme) (not(gme)))) ;; Support.  Cancellation. 
(when (huc) (and (hme) (not(jme)))) ;; Support.  Cancellation. 
(when (kuc) (and (kme) (not(lme)))) ;; Support.  Cancellation. 
(when (muc) (and (mme) (not(qme)))) ;; Support.  Cancellation. 
(when (ruc) (and (rme) (not(tme)))) ;; Support.  Cancellation. 
(when (uuc) (and (ume) (not(vme)))) ;; Support.  Cancellation. 
(when (xuc) (and (xme) (not(yme)))) ;; Support.  Cancellation. 
(when (zuc) (and (zme) (not(bne)))) ;; Support.  Cancellation. 
(when (cvc) (and (cne) (not(gne)))) ;; Support.  Cancellation. 
(when (hvc) (and (hne) (not(jne)))) ;; Support.  Cancellation. 
(when (kvc) (and (kne) (not(lne)))) ;; Support.  Cancellation. 
(when (mvc) (and (mne) (not(qne)))) ;; Support.  Cancellation. 
(when (rvc)  (rne)) ;; Support. 
(when (tvc)  (tne)) ;; Support. 
(when (vvc)  (vne)) ;; Support. 
(when (yvc)  (yne)) ;; Support. 
(when (bwc)  (boe)) ;; Support. 
(when (gwc)  (goe)) ;; Support. 
(when (jwc)  (joe)) ;; Support. 
(when (lwc)  (loe)) ;; Support. 
(when (qwc)  (qoe)) ;; Support. 
(when (twc)  (toe)) ;; Support. 
(when (vwc) (and (voe) (not(xoe)))) ;; Support.  Cancellation. 
(when (ywc) (and (yoe) (not(zoe)))) ;; Support.  Cancellation. 
(when (bxc) (and (bpe) (not(cpe)))) ;; Support.  Cancellation. 
(when (jxc)  (jpe)) ;; Support. 
(when (lxc) (and (lpe) (not(mpe)))) ;; Support.  Cancellation. 
(when (qxc) (and (qpe) (not(rpe)))) ;; Support.  Cancellation. 
(when (txc) (and (tpe) (not(upe)))) ;; Support.  Cancellation. 
(when (vxc)  (vpe)) ;; Support. 
(when (yxc)  (ype)) ;; Support. 
(when (byc) (and (bqe) (not(cqe)))) ;; Support.  Cancellation. 
(when (gyc)  (gqe)) ;; Support. 
(when (jyc) (and (jqe) (not(kqe)))) ;; Support.  Cancellation. 
(when (lyc)  (lqe)) ;; Support. 
(when (rae) (and (ric) (not(rvc)))) ;; Support.  Cancellation. 
(when (uee) (and (umc) (not(tmc)))) ;; Support.  Cancellation. 
(when (xee)  (xmc)) ;; Support. 
(when (zee) (and (zmc) (not(ymc)))) ;; Support.  Cancellation. 
(when (gfe)  (gnc)) ;; Support. 
(when (jfe)  (jnc)) ;; Support. 
(when (lfe) (and (lnc) (not(knc)))) ;; Support.  Cancellation. 
(when (qfe) (and (qnc) (not(mnc)))) ;; Support.  Cancellation. 
(when (tfe) (and (tnc) (not(rnc)))) ;; Support.  Cancellation. 
(when (vfe) (and (vnc) (not(unc)))) ;; Support.  Cancellation. 
(when (yfe) (and (ync) (not(xnc)))) ;; Support.  Cancellation. 
(when (bge) (and (boc) (not(znc)))) ;; Support.  Cancellation. 
(when (gge) (and (goc) (not(coc)))) ;; Support.  Cancellation. 
(when (jge) (and (joc) (not(hoc)))) ;; Support.  Cancellation. 
(when (lge) (and (loc) (not(koc)))) ;; Support.  Cancellation. 
(when (qge) (and (qoc) (not(moc)))) ;; Support.  Cancellation. 
(when (tge) (and (toc) (not(roc)))) ;; Support.  Cancellation. 
(when (vge) (and (voc) (not(uoc)))) ;; Support.  Cancellation. 
(when (yge) (and (yoc) (not(xoc)))) ;; Support.  Cancellation. 
(when (bhe) (and (bpc) (not(zoc)))) ;; Support.  Cancellation. 
(when (ghe) (and (gpc) (not(cpc)))) ;; Support.  Cancellation. 
(when (jhe) (and (jpc) (not(hpc)))) ;; Support.  Cancellation. 
(when (lhe) (and (lpc) (not(kpc)))) ;; Support.  Cancellation. 
(when (qhe) (and (qpc) (not(mpc)))) ;; Support.  Cancellation. 
(when (the) (and (tpc) (not(rpc)))) ;; Support.  Cancellation. 
(when (vhe) (and (vpc) (not(upc)))) ;; Support.  Cancellation. 
(when (yhe) (and (ypc) (not(xpc)))) ;; Support.  Cancellation. 
(when (bie) (and (bqc) (not(zpc)))) ;; Support.  Cancellation. 
(when (gie) (and (gqc) (not(cqc)))) ;; Support.  Cancellation. 
(when (jie) (and (jqc) (not(hqc)))) ;; Support.  Cancellation. 
(when (lie) (and (lqc) (not(kqc)))) ;; Support.  Cancellation. 
(when (qie) (and (qqc) (not(mqc)))) ;; Support.  Cancellation. 
(when (tje)  (tsc)) ;; Support. 
(when (vje) (and (vsc) (not(usc)))) ;; Support.  Cancellation. 
(when (yje) (and (ysc) (not(xsc)))) ;; Support.  Cancellation. 
(when (bke)  (brc)) ;; Support. 
(when (gke) (and (grc) (not(crc)))) ;; Support.  Cancellation. 
(when (jke)  (jrc)) ;; Support. 
(when (lke)  (lrc)) ;; Support. 
(when (qke) (and (qrc) (not(mrc)))) ;; Support.  Cancellation. 
(when (vke) (and (vrc) (not(urc)))) ;; Support.  Cancellation. 
(when (yke) (and (yrc) (not(xrc)))) ;; Support.  Cancellation. 
(when (gle) (and (gtc) (not(ctc)))) ;; Support.  Cancellation. 
(when (qle) (and (qtc) (not(mtc)))) ;; Support.  Cancellation. 
(when (gme) (and (guc) (not(cuc)))) ;; Support.  Cancellation. 
(when (jme) (and (juc) (not(huc)))) ;; Support.  Cancellation. 
(when (lme) (and (luc) (not(kuc)))) ;; Support.  Cancellation. 
(when (qme) (and (quc) (not(muc)))) ;; Support.  Cancellation. 
(when (tme) (and (tuc) (not(ruc)))) ;; Support.  Cancellation. 
(when (vme) (and (vuc) (not(uuc)))) ;; Support.  Cancellation. 
(when (yme) (and (yuc) (not(xuc)))) ;; Support.  Cancellation. 
(when (bne) (and (bvc) (not(zuc)))) ;; Support.  Cancellation. 
(when (gne) (and (gvc) (not(cvc)))) ;; Support.  Cancellation. 
(when (jne) (and (jvc) (not(hvc)))) ;; Support.  Cancellation. 
(when (lne) (and (lvc) (not(kvc)))) ;; Support.  Cancellation. 
(when (qne) (and (qvc) (not(mvc)))) ;; Support.  Cancellation. 
(when (xoe) (and (xwc) (not(vwc)))) ;; Support.  Cancellation. 
(when (zoe) (and (zwc) (not(ywc)))) ;; Support.  Cancellation. 
(when (cpe) (and (cxc) (not(bxc)))) ;; Support.  Cancellation. 
(when (mpe) (and (mxc) (not(lxc)))) ;; Support.  Cancellation. 
(when (rpe) (and (rxc) (not(qxc)))) ;; Support.  Cancellation. 
(when (upe) (and (uxc) (not(txc)))) ;; Support.  Cancellation. 
(when (cqe) (and (cyc) (not(byc)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L3_L6
:parameters ()
:precondition (and (mic))

:effect (and  (g0d) (ulc)
(when (kae) (and (kyc) (not(jyc)))) ;; Support.  Cancellation. 
(when (qic) (and (qud) (not(bzd)))) ;; Support.  Cancellation. 
(when (not(ric))  (not(rud))) ;; Cancellation. 
(when (tic) (and (tud) (not(uud)))) ;; Support.  Cancellation. 
(when (vic) (and (vud) (not(xud)))) ;; Support.  Cancellation. 
(when (yic) (and (yud) (not(zud)))) ;; Support.  Cancellation. 
(when (bjc) (and (bvd) (not(cvd)))) ;; Support.  Cancellation. 
(when (gjc) (and (gvd) (not(hvd)))) ;; Support.  Cancellation. 
(when (jjc) (and (jvd) (not(kvd)))) ;; Support.  Cancellation. 
(when (ljc) (and (lvd) (not(mvd)))) ;; Support.  Cancellation. 
(when (qjc) (and (qvd) (not(rvd)))) ;; Support.  Cancellation. 
(when (tjc) (and (tvd) (not(uvd)))) ;; Support.  Cancellation. 
(when (vjc) (and (vvd) (not(xvd)))) ;; Support.  Cancellation. 
(when (yjc) (and (yvd) (not(zvd)))) ;; Support.  Cancellation. 
(when (bkc) (and (bwd) (not(cwd)))) ;; Support.  Cancellation. 
(when (gkc) (and (gwd) (not(hwd)))) ;; Support.  Cancellation. 
(when (jkc) (and (jwd) (not(kwd)))) ;; Support.  Cancellation. 
(when (lkc) (and (lwd) (not(mwd)))) ;; Support.  Cancellation. 
(when (qkc) (and (qwd) (not(rwd)))) ;; Support.  Cancellation. 
(when (tkc) (and (twd) (not(uwd)))) ;; Support.  Cancellation. 
(when (vkc) (and (vwd) (not(xwd)))) ;; Support.  Cancellation. 
(when (glc) (and (gxd) (not(hxd)))) ;; Support.  Cancellation. 
(when (jlc) (and (jxd) (not(kxd)))) ;; Support.  Cancellation. 
(when (llc) (and (lxd) (not(mxd)))) ;; Support.  Cancellation. 
(when (qlc) (and (qxd) (not(rxd)))) ;; Support.  Cancellation. 
(when (vlc) (and (vxd) (not(xxd)))) ;; Support.  Cancellation. 
(when (ylc) (and (yxd) (not(zxd)))) ;; Support.  Cancellation. 
(when (bmc) (and (byd) (not(cyd)))) ;; Support.  Cancellation. 
(when (jmc) (and (jyd) (not(kyd)))) ;; Support.  Cancellation. 
(when (lmc) (and (lyd) (not(myd)))) ;; Support.  Cancellation. 
(when (qmc) (and (qyd) (not(ryd)))) ;; Support.  Cancellation. 
(when (tmc) (and (tyd) (not(uyd)))) ;; Support.  Cancellation. 
(when (ymc) (and (yyd) (not(zyd)))) ;; Support.  Cancellation. 
(when (knc) (and (kzd) (not(lzd)))) ;; Support.  Cancellation. 
(when (mnc) (and (mzd) (not(qzd)))) ;; Support.  Cancellation. 
(when (rnc) (and (rzd) (not(tzd)))) ;; Support.  Cancellation. 
(when (unc) (and (uzd) (not(vzd)))) ;; Support.  Cancellation. 
(when (xnc) (and (xzd) (not(yzd)))) ;; Support.  Cancellation. 
(when (znc) (and (zzd) (not(b1d)))) ;; Support.  Cancellation. 
(when (coc) (and (c1d) (not(g1d)))) ;; Support.  Cancellation. 
(when (hoc) (and (h1d) (not(j1d)))) ;; Support.  Cancellation. 
(when (koc) (and (k1d) (not(l1d)))) ;; Support.  Cancellation. 
(when (moc) (and (m1d) (not(q1d)))) ;; Support.  Cancellation. 
(when (roc) (and (r1d) (not(t1d)))) ;; Support.  Cancellation. 
(when (uoc) (and (u1d) (not(v1d)))) ;; Support.  Cancellation. 
(when (xoc) (and (x1d) (not(y1d)))) ;; Support.  Cancellation. 
(when (zoc) (and (z1d) (not(b2d)))) ;; Support.  Cancellation. 
(when (cpc) (and (c2d) (not(g2d)))) ;; Support.  Cancellation. 
(when (hpc) (and (h2d) (not(j2d)))) ;; Support.  Cancellation. 
(when (kpc) (and (k2d) (not(l2d)))) ;; Support.  Cancellation. 
(when (mpc) (and (m2d) (not(q2d)))) ;; Support.  Cancellation. 
(when (rpc) (and (r2d) (not(t2d)))) ;; Support.  Cancellation. 
(when (upc) (and (u2d) (not(v2d)))) ;; Support.  Cancellation. 
(when (xpc) (and (x2d) (not(y2d)))) ;; Support.  Cancellation. 
(when (zpc) (and (z2d) (not(b3d)))) ;; Support.  Cancellation. 
(when (cqc) (and (c3d) (not(g3d)))) ;; Support.  Cancellation. 
(when (hqc) (and (h3d) (not(j3d)))) ;; Support.  Cancellation. 
(when (kqc) (and (k3d) (not(l3d)))) ;; Support.  Cancellation. 
(when (mqc) (and (m3d) (not(q3d)))) ;; Support.  Cancellation. 
(when (uqc)  (u3d)) ;; Support. 
(when (zqc)  (z3d)) ;; Support. 
(when (ksc)  (k4d)) ;; Support. 
(when (msc)  (m4d)) ;; Support. 
(when (usc) (and (u4d) (not(v4d)))) ;; Support.  Cancellation. 
(when (xsc) (and (x4d) (not(y4d)))) ;; Support.  Cancellation. 
(when (crc) (and (c5d) (not(g5d)))) ;; Support.  Cancellation. 
(when (mrc) (and (m5d) (not(q5d)))) ;; Support.  Cancellation. 
(when (rrc)  (r5d)) ;; Support. 
(when (urc) (and (u5d) (not(v5d)))) ;; Support.  Cancellation. 
(when (xrc) (and (x5d) (not(y5d)))) ;; Support.  Cancellation. 
(when (zrc)  (z5d)) ;; Support. 
(when (ctc) (and (c6d) (not(g6d)))) ;; Support.  Cancellation. 
(when (htc)  (h6d)) ;; Support. 
(when (ktc)  (k6d)) ;; Support. 
(when (mtc) (and (m6d) (not(q6d)))) ;; Support.  Cancellation. 
(when (rtc)  (r6d)) ;; Support. 
(when (utc)  (u6d)) ;; Support. 
(when (xtc)  (x6d)) ;; Support. 
(when (ztc)  (z6d)) ;; Support. 
(when (cuc) (and (c7d) (not(g7d)))) ;; Support.  Cancellation. 
(when (huc) (and (h7d) (not(j7d)))) ;; Support.  Cancellation. 
(when (kuc) (and (k7d) (not(l7d)))) ;; Support.  Cancellation. 
(when (muc) (and (m7d) (not(q7d)))) ;; Support.  Cancellation. 
(when (ruc) (and (r7d) (not(t7d)))) ;; Support.  Cancellation. 
(when (uuc) (and (u7d) (not(v7d)))) ;; Support.  Cancellation. 
(when (xuc) (and (x7d) (not(y7d)))) ;; Support.  Cancellation. 
(when (zuc) (and (z7d) (not(b8d)))) ;; Support.  Cancellation. 
(when (cvc) (and (c8d) (not(g8d)))) ;; Support.  Cancellation. 
(when (hvc) (and (h8d) (not(j8d)))) ;; Support.  Cancellation. 
(when (kvc) (and (k8d) (not(l8d)))) ;; Support.  Cancellation. 
(when (mvc) (and (m8d) (not(q8d)))) ;; Support.  Cancellation. 
(when (rvc)  (r8d)) ;; Support. 
(when (tvc)  (t8d)) ;; Support. 
(when (vvc)  (v8d)) ;; Support. 
(when (yvc)  (y8d)) ;; Support. 
(when (bwc)  (b9d)) ;; Support. 
(when (gwc)  (g9d)) ;; Support. 
(when (jwc)  (j9d)) ;; Support. 
(when (lwc)  (l9d)) ;; Support. 
(when (qwc)  (q9d)) ;; Support. 
(when (twc)  (t9d)) ;; Support. 
(when (vwc) (and (v9d) (not(x9d)))) ;; Support.  Cancellation. 
(when (ywc) (and (y9d) (not(z9d)))) ;; Support.  Cancellation. 
(when (bxc) (and (b0d) (not(c0d)))) ;; Support.  Cancellation. 
(when (jxc)  (j0d)) ;; Support. 
(when (lxc) (and (l0d) (not(m0d)))) ;; Support.  Cancellation. 
(when (qxc) (and (q0d) (not(r0d)))) ;; Support.  Cancellation. 
(when (txc) (and (t0d) (not(u0d)))) ;; Support.  Cancellation. 
(when (vxc)  (v0d)) ;; Support. 
(when (yxc)  (y0d)) ;; Support. 
(when (byc) (and (bae) (not(cae)))) ;; Support.  Cancellation. 
(when (gyc)  (gae)) ;; Support. 
(when (jyc) (and (jae) (not(kae)))) ;; Support.  Cancellation. 
(when (lyc)  (lae)) ;; Support. 
(when (rud) (and (ric) (not(rvc)))) ;; Support.  Cancellation. 
(when (not(qud))  (not(qic))) ;; Cancellation. 
(when (uud) (and (uic) (not(tic)))) ;; Support.  Cancellation. 
(when (xud) (and (xic) (not(vic)))) ;; Support.  Cancellation. 
(when (zud) (and (zic) (not(yic)))) ;; Support.  Cancellation. 
(when (cvd) (and (cjc) (not(bjc)))) ;; Support.  Cancellation. 
(when (hvd) (and (hjc) (not(gjc)))) ;; Support.  Cancellation. 
(when (kvd) (and (kjc) (not(jjc)))) ;; Support.  Cancellation. 
(when (mvd) (and (mjc) (not(ljc)))) ;; Support.  Cancellation. 
(when (rvd) (and (rjc) (not(qjc)))) ;; Support.  Cancellation. 
(when (uvd) (and (ujc) (not(tjc)))) ;; Support.  Cancellation. 
(when (xvd) (and (xjc) (not(vjc)))) ;; Support.  Cancellation. 
(when (zvd) (and (zjc) (not(yjc)))) ;; Support.  Cancellation. 
(when (cwd) (and (ckc) (not(bkc)))) ;; Support.  Cancellation. 
(when (hwd) (and (hkc) (not(gkc)))) ;; Support.  Cancellation. 
(when (kwd) (and (kkc) (not(jkc)))) ;; Support.  Cancellation. 
(when (mwd) (and (mkc) (not(lkc)))) ;; Support.  Cancellation. 
(when (rwd) (and (rkc) (not(qkc)))) ;; Support.  Cancellation. 
(when (uwd) (and (ukc) (not(tkc)))) ;; Support.  Cancellation. 
(when (xwd) (and (xkc) (not(vkc)))) ;; Support.  Cancellation. 
(when (zwd)  (zkc)) ;; Support. 
(when (cxd)  (clc)) ;; Support. 
(when (hxd) (and (hlc) (not(glc)))) ;; Support.  Cancellation. 
(when (kxd) (and (klc) (not(jlc)))) ;; Support.  Cancellation. 
(when (mxd) (and (mlc) (not(llc)))) ;; Support.  Cancellation. 
(when (rxd) (and (rlc) (not(qlc)))) ;; Support.  Cancellation. 
(when (xxd) (and (xlc) (not(vlc)))) ;; Support.  Cancellation. 
(when (zxd) (and (zlc) (not(ylc)))) ;; Support.  Cancellation. 
(when (cyd) (and (cmc) (not(bmc)))) ;; Support.  Cancellation. 
(when (hyd)  (hmc)) ;; Support. 
(when (kyd) (and (kmc) (not(jmc)))) ;; Support.  Cancellation. 
(when (myd) (and (mmc) (not(lmc)))) ;; Support.  Cancellation. 
(when (ryd) (and (rmc) (not(qmc)))) ;; Support.  Cancellation. 
(when (uyd) (and (umc) (not(tmc)))) ;; Support.  Cancellation. 
(when (xyd)  (xmc)) ;; Support. 
(when (zyd) (and (zmc) (not(ymc)))) ;; Support.  Cancellation. 
(when (bzd)  (bnc)) ;; Support. 
(when (gzd)  (gnc)) ;; Support. 
(when (jzd)  (jnc)) ;; Support. 
(when (lzd) (and (lnc) (not(knc)))) ;; Support.  Cancellation. 
(when (qzd) (and (qnc) (not(mnc)))) ;; Support.  Cancellation. 
(when (tzd) (and (tnc) (not(rnc)))) ;; Support.  Cancellation. 
(when (vzd) (and (vnc) (not(unc)))) ;; Support.  Cancellation. 
(when (yzd) (and (ync) (not(xnc)))) ;; Support.  Cancellation. 
(when (b1d) (and (boc) (not(znc)))) ;; Support.  Cancellation. 
(when (g1d) (and (goc) (not(coc)))) ;; Support.  Cancellation. 
(when (j1d) (and (joc) (not(hoc)))) ;; Support.  Cancellation. 
(when (l1d) (and (loc) (not(koc)))) ;; Support.  Cancellation. 
(when (q1d) (and (qoc) (not(moc)))) ;; Support.  Cancellation. 
(when (t1d) (and (toc) (not(roc)))) ;; Support.  Cancellation. 
(when (v1d) (and (voc) (not(uoc)))) ;; Support.  Cancellation. 
(when (y1d) (and (yoc) (not(xoc)))) ;; Support.  Cancellation. 
(when (b2d) (and (bpc) (not(zoc)))) ;; Support.  Cancellation. 
(when (g2d) (and (gpc) (not(cpc)))) ;; Support.  Cancellation. 
(when (j2d) (and (jpc) (not(hpc)))) ;; Support.  Cancellation. 
(when (l2d) (and (lpc) (not(kpc)))) ;; Support.  Cancellation. 
(when (q2d) (and (qpc) (not(mpc)))) ;; Support.  Cancellation. 
(when (t2d) (and (tpc) (not(rpc)))) ;; Support.  Cancellation. 
(when (v2d) (and (vpc) (not(upc)))) ;; Support.  Cancellation. 
(when (y2d) (and (ypc) (not(xpc)))) ;; Support.  Cancellation. 
(when (b3d) (and (bqc) (not(zpc)))) ;; Support.  Cancellation. 
(when (g3d) (and (gqc) (not(cqc)))) ;; Support.  Cancellation. 
(when (j3d) (and (jqc) (not(hqc)))) ;; Support.  Cancellation. 
(when (l3d) (and (lqc) (not(kqc)))) ;; Support.  Cancellation. 
(when (q3d) (and (qqc) (not(mqc)))) ;; Support.  Cancellation. 
(when (t4d)  (tsc)) ;; Support. 
(when (v4d) (and (vsc) (not(usc)))) ;; Support.  Cancellation. 
(when (y4d) (and (ysc) (not(xsc)))) ;; Support.  Cancellation. 
(when (b5d)  (brc)) ;; Support. 
(when (g5d) (and (grc) (not(crc)))) ;; Support.  Cancellation. 
(when (j5d)  (jrc)) ;; Support. 
(when (l5d)  (lrc)) ;; Support. 
(when (q5d) (and (qrc) (not(mrc)))) ;; Support.  Cancellation. 
(when (v5d) (and (vrc) (not(urc)))) ;; Support.  Cancellation. 
(when (y5d) (and (yrc) (not(xrc)))) ;; Support.  Cancellation. 
(when (g6d) (and (gtc) (not(ctc)))) ;; Support.  Cancellation. 
(when (q6d) (and (qtc) (not(mtc)))) ;; Support.  Cancellation. 
(when (g7d) (and (guc) (not(cuc)))) ;; Support.  Cancellation. 
(when (j7d) (and (juc) (not(huc)))) ;; Support.  Cancellation. 
(when (l7d) (and (luc) (not(kuc)))) ;; Support.  Cancellation. 
(when (q7d) (and (quc) (not(muc)))) ;; Support.  Cancellation. 
(when (t7d) (and (tuc) (not(ruc)))) ;; Support.  Cancellation. 
(when (v7d) (and (vuc) (not(uuc)))) ;; Support.  Cancellation. 
(when (y7d) (and (yuc) (not(xuc)))) ;; Support.  Cancellation. 
(when (b8d) (and (bvc) (not(zuc)))) ;; Support.  Cancellation. 
(when (g8d) (and (gvc) (not(cvc)))) ;; Support.  Cancellation. 
(when (j8d) (and (jvc) (not(hvc)))) ;; Support.  Cancellation. 
(when (l8d) (and (lvc) (not(kvc)))) ;; Support.  Cancellation. 
(when (q8d) (and (qvc) (not(mvc)))) ;; Support.  Cancellation. 
(when (x9d) (and (xwc) (not(vwc)))) ;; Support.  Cancellation. 
(when (z9d) (and (zwc) (not(ywc)))) ;; Support.  Cancellation. 
(when (c0d) (and (cxc) (not(bxc)))) ;; Support.  Cancellation. 
(when (m0d) (and (mxc) (not(lxc)))) ;; Support.  Cancellation. 
(when (r0d) (and (rxc) (not(qxc)))) ;; Support.  Cancellation. 
(when (u0d) (and (uxc) (not(txc)))) ;; Support.  Cancellation. 
(when (cae) (and (cyc) (not(byc)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L3_L5
:parameters ()
:precondition (and (mic))

:effect (and  (gtd) (tqc)
(when (kud) (and (kyc) (not(jyc)))) ;; Support.  Cancellation. 
(when (qic) (and (qed) (not(bjd)))) ;; Support.  Cancellation. 
(when (not(ric))  (not(red))) ;; Cancellation. 
(when (tic) (and (ted) (not(ued)))) ;; Support.  Cancellation. 
(when (vic) (and (ved) (not(xed)))) ;; Support.  Cancellation. 
(when (yic) (and (yed) (not(zed)))) ;; Support.  Cancellation. 
(when (bjc) (and (bfd) (not(cfd)))) ;; Support.  Cancellation. 
(when (gjc) (and (gfd) (not(hfd)))) ;; Support.  Cancellation. 
(when (jjc) (and (jfd) (not(kfd)))) ;; Support.  Cancellation. 
(when (ljc) (and (lfd) (not(mfd)))) ;; Support.  Cancellation. 
(when (qjc) (and (qfd) (not(rfd)))) ;; Support.  Cancellation. 
(when (tjc) (and (tfd) (not(ufd)))) ;; Support.  Cancellation. 
(when (vjc) (and (vfd) (not(xfd)))) ;; Support.  Cancellation. 
(when (yjc) (and (yfd) (not(zfd)))) ;; Support.  Cancellation. 
(when (bkc) (and (bgd) (not(cgd)))) ;; Support.  Cancellation. 
(when (gkc) (and (ggd) (not(hgd)))) ;; Support.  Cancellation. 
(when (jkc) (and (jgd) (not(kgd)))) ;; Support.  Cancellation. 
(when (lkc) (and (lgd) (not(mgd)))) ;; Support.  Cancellation. 
(when (qkc) (and (qgd) (not(rgd)))) ;; Support.  Cancellation. 
(when (tkc) (and (tgd) (not(ugd)))) ;; Support.  Cancellation. 
(when (vkc) (and (vgd) (not(xgd)))) ;; Support.  Cancellation. 
(when (glc) (and (ghd) (not(hhd)))) ;; Support.  Cancellation. 
(when (jlc) (and (jhd) (not(khd)))) ;; Support.  Cancellation. 
(when (llc) (and (lhd) (not(mhd)))) ;; Support.  Cancellation. 
(when (qlc) (and (qhd) (not(rhd)))) ;; Support.  Cancellation. 
(when (vlc) (and (vhd) (not(xhd)))) ;; Support.  Cancellation. 
(when (ylc) (and (yhd) (not(zhd)))) ;; Support.  Cancellation. 
(when (bmc) (and (bid) (not(cid)))) ;; Support.  Cancellation. 
(when (jmc) (and (jid) (not(kid)))) ;; Support.  Cancellation. 
(when (lmc) (and (lid) (not(mid)))) ;; Support.  Cancellation. 
(when (qmc) (and (qid) (not(rid)))) ;; Support.  Cancellation. 
(when (tmc) (and (tid) (not(uid)))) ;; Support.  Cancellation. 
(when (ymc) (and (yid) (not(zid)))) ;; Support.  Cancellation. 
(when (knc) (and (kjd) (not(ljd)))) ;; Support.  Cancellation. 
(when (mnc) (and (mjd) (not(qjd)))) ;; Support.  Cancellation. 
(when (rnc) (and (rjd) (not(tjd)))) ;; Support.  Cancellation. 
(when (unc) (and (ujd) (not(vjd)))) ;; Support.  Cancellation. 
(when (xnc) (and (xjd) (not(yjd)))) ;; Support.  Cancellation. 
(when (znc) (and (zjd) (not(bkd)))) ;; Support.  Cancellation. 
(when (coc) (and (ckd) (not(gkd)))) ;; Support.  Cancellation. 
(when (hoc) (and (hkd) (not(jkd)))) ;; Support.  Cancellation. 
(when (koc) (and (kkd) (not(lkd)))) ;; Support.  Cancellation. 
(when (moc) (and (mkd) (not(qkd)))) ;; Support.  Cancellation. 
(when (roc) (and (rkd) (not(tkd)))) ;; Support.  Cancellation. 
(when (uoc) (and (ukd) (not(vkd)))) ;; Support.  Cancellation. 
(when (xoc) (and (xkd) (not(ykd)))) ;; Support.  Cancellation. 
(when (zoc) (and (zkd) (not(bld)))) ;; Support.  Cancellation. 
(when (cpc) (and (cld) (not(gld)))) ;; Support.  Cancellation. 
(when (hpc) (and (hld) (not(jld)))) ;; Support.  Cancellation. 
(when (kpc) (and (kld) (not(lld)))) ;; Support.  Cancellation. 
(when (mpc) (and (mld) (not(qld)))) ;; Support.  Cancellation. 
(when (rpc) (and (rld) (not(tld)))) ;; Support.  Cancellation. 
(when (upc) (and (uld) (not(vld)))) ;; Support.  Cancellation. 
(when (xpc) (and (xld) (not(yld)))) ;; Support.  Cancellation. 
(when (zpc) (and (zld) (not(bmd)))) ;; Support.  Cancellation. 
(when (cqc) (and (cmd) (not(gmd)))) ;; Support.  Cancellation. 
(when (hqc) (and (hmd) (not(jmd)))) ;; Support.  Cancellation. 
(when (kqc) (and (kmd) (not(lmd)))) ;; Support.  Cancellation. 
(when (mqc) (and (mmd) (not(qmd)))) ;; Support.  Cancellation. 
(when (uqc) (and (umd) (not(vmd)))) ;; Support.  Cancellation. 
(when (zqc)  (zmd)) ;; Support. 
(when (ksc) (and (knd) (not(lnd)))) ;; Support.  Cancellation. 
(when (msc)  (mnd)) ;; Support. 
(when (usc) (and (und) (not(vnd)))) ;; Support.  Cancellation. 
(when (xsc) (and (xnd) (not(ynd)))) ;; Support.  Cancellation. 
(when (crc) (and (cod) (not(god)))) ;; Support.  Cancellation. 
(when (mrc) (and (mod) (not(qod)))) ;; Support.  Cancellation. 
(when (rrc)  (rod)) ;; Support. 
(when (urc) (and (uod) (not(vod)))) ;; Support.  Cancellation. 
(when (xrc) (and (xod) (not(yod)))) ;; Support.  Cancellation. 
(when (zrc)  (zod)) ;; Support. 
(when (ctc) (and (cpd) (not(gpd)))) ;; Support.  Cancellation. 
(when (htc)  (hpd)) ;; Support. 
(when (ktc)  (kpd)) ;; Support. 
(when (mtc) (and (mpd) (not(qpd)))) ;; Support.  Cancellation. 
(when (rtc) (and (rpd) (not(tpd)))) ;; Support.  Cancellation. 
(when (utc) (and (upd) (not(vpd)))) ;; Support.  Cancellation. 
(when (xtc) (and (xpd) (not(ypd)))) ;; Support.  Cancellation. 
(when (ztc) (and (zpd) (not(bqd)))) ;; Support.  Cancellation. 
(when (cuc) (and (cqd) (not(gqd)))) ;; Support.  Cancellation. 
(when (huc) (and (hqd) (not(jqd)))) ;; Support.  Cancellation. 
(when (kuc) (and (kqd) (not(lqd)))) ;; Support.  Cancellation. 
(when (muc) (and (mqd) (not(qqd)))) ;; Support.  Cancellation. 
(when (ruc) (and (rqd) (not(tqd)))) ;; Support.  Cancellation. 
(when (uuc) (and (uqd) (not(vqd)))) ;; Support.  Cancellation. 
(when (xuc) (and (xqd) (not(yqd)))) ;; Support.  Cancellation. 
(when (zuc) (and (zqd) (not(bsd)))) ;; Support.  Cancellation. 
(when (cvc) (and (csd) (not(gsd)))) ;; Support.  Cancellation. 
(when (hvc) (and (hsd) (not(jsd)))) ;; Support.  Cancellation. 
(when (kvc) (and (ksd) (not(lsd)))) ;; Support.  Cancellation. 
(when (mvc) (and (msd) (not(qsd)))) ;; Support.  Cancellation. 
(when (rvc)  (rsd)) ;; Support. 
(when (tvc) (and (tsd) (not(usd)))) ;; Support.  Cancellation. 
(when (vvc) (and (vsd) (not(xsd)))) ;; Support.  Cancellation. 
(when (yvc)  (ysd)) ;; Support. 
(when (bwc)  (brd)) ;; Support. 
(when (gwc) (and (grd) (not(hrd)))) ;; Support.  Cancellation. 
(when (jwc)  (jrd)) ;; Support. 
(when (lwc) (and (lrd) (not(mrd)))) ;; Support.  Cancellation. 
(when (qwc) (and (qrd) (not(rrd)))) ;; Support.  Cancellation. 
(when (twc) (and (trd) (not(urd)))) ;; Support.  Cancellation. 
(when (vwc) (and (vrd) (not(xrd)))) ;; Support.  Cancellation. 
(when (ywc) (and (yrd) (not(zrd)))) ;; Support.  Cancellation. 
(when (bxc) (and (btd) (not(ctd)))) ;; Support.  Cancellation. 
(when (jxc)  (jtd)) ;; Support. 
(when (lxc) (and (ltd) (not(mtd)))) ;; Support.  Cancellation. 
(when (qxc) (and (qtd) (not(rtd)))) ;; Support.  Cancellation. 
(when (txc) (and (ttd) (not(utd)))) ;; Support.  Cancellation. 
(when (vxc) (and (vtd) (not(xtd)))) ;; Support.  Cancellation. 
(when (yxc) (and (ytd) (not(ztd)))) ;; Support.  Cancellation. 
(when (byc) (and (bud) (not(cud)))) ;; Support.  Cancellation. 
(when (gyc)  (gud)) ;; Support. 
(when (jyc) (and (jud) (not(kud)))) ;; Support.  Cancellation. 
(when (lyc)  (lud)) ;; Support. 
(when (red) (and (ric) (not(rvc)))) ;; Support.  Cancellation. 
(when (not(qed))  (not(qic))) ;; Cancellation. 
(when (ued) (and (uic) (not(tic)))) ;; Support.  Cancellation. 
(when (xed) (and (xic) (not(vic)))) ;; Support.  Cancellation. 
(when (zed) (and (zic) (not(yic)))) ;; Support.  Cancellation. 
(when (cfd) (and (cjc) (not(bjc)))) ;; Support.  Cancellation. 
(when (hfd) (and (hjc) (not(gjc)))) ;; Support.  Cancellation. 
(when (kfd) (and (kjc) (not(jjc)))) ;; Support.  Cancellation. 
(when (mfd) (and (mjc) (not(ljc)))) ;; Support.  Cancellation. 
(when (rfd) (and (rjc) (not(qjc)))) ;; Support.  Cancellation. 
(when (ufd) (and (ujc) (not(tjc)))) ;; Support.  Cancellation. 
(when (xfd) (and (xjc) (not(vjc)))) ;; Support.  Cancellation. 
(when (zfd) (and (zjc) (not(yjc)))) ;; Support.  Cancellation. 
(when (cgd) (and (ckc) (not(bkc)))) ;; Support.  Cancellation. 
(when (hgd) (and (hkc) (not(gkc)))) ;; Support.  Cancellation. 
(when (kgd) (and (kkc) (not(jkc)))) ;; Support.  Cancellation. 
(when (mgd) (and (mkc) (not(lkc)))) ;; Support.  Cancellation. 
(when (rgd) (and (rkc) (not(qkc)))) ;; Support.  Cancellation. 
(when (ugd) (and (ukc) (not(tkc)))) ;; Support.  Cancellation. 
(when (xgd) (and (xkc) (not(vkc)))) ;; Support.  Cancellation. 
(when (zgd)  (zkc)) ;; Support. 
(when (chd)  (clc)) ;; Support. 
(when (hhd) (and (hlc) (not(glc)))) ;; Support.  Cancellation. 
(when (khd) (and (klc) (not(jlc)))) ;; Support.  Cancellation. 
(when (mhd) (and (mlc) (not(llc)))) ;; Support.  Cancellation. 
(when (rhd) (and (rlc) (not(qlc)))) ;; Support.  Cancellation. 
(when (uhd)  (ulc)) ;; Support. 
(when (xhd) (and (xlc) (not(vlc)))) ;; Support.  Cancellation. 
(when (zhd) (and (zlc) (not(ylc)))) ;; Support.  Cancellation. 
(when (cid) (and (cmc) (not(bmc)))) ;; Support.  Cancellation. 
(when (hid)  (hmc)) ;; Support. 
(when (kid) (and (kmc) (not(jmc)))) ;; Support.  Cancellation. 
(when (mid) (and (mmc) (not(lmc)))) ;; Support.  Cancellation. 
(when (rid) (and (rmc) (not(qmc)))) ;; Support.  Cancellation. 
(when (uid) (and (umc) (not(tmc)))) ;; Support.  Cancellation. 
(when (xid)  (xmc)) ;; Support. 
(when (zid) (and (zmc) (not(ymc)))) ;; Support.  Cancellation. 
(when (bjd)  (bnc)) ;; Support. 
(when (gjd)  (gnc)) ;; Support. 
(when (jjd)  (jnc)) ;; Support. 
(when (ljd) (and (lnc) (not(knc)))) ;; Support.  Cancellation. 
(when (qjd) (and (qnc) (not(mnc)))) ;; Support.  Cancellation. 
(when (tjd) (and (tnc) (not(rnc)))) ;; Support.  Cancellation. 
(when (vjd) (and (vnc) (not(unc)))) ;; Support.  Cancellation. 
(when (yjd) (and (ync) (not(xnc)))) ;; Support.  Cancellation. 
(when (bkd) (and (boc) (not(znc)))) ;; Support.  Cancellation. 
(when (gkd) (and (goc) (not(coc)))) ;; Support.  Cancellation. 
(when (jkd) (and (joc) (not(hoc)))) ;; Support.  Cancellation. 
(when (lkd) (and (loc) (not(koc)))) ;; Support.  Cancellation. 
(when (qkd) (and (qoc) (not(moc)))) ;; Support.  Cancellation. 
(when (tkd) (and (toc) (not(roc)))) ;; Support.  Cancellation. 
(when (vkd) (and (voc) (not(uoc)))) ;; Support.  Cancellation. 
(when (ykd) (and (yoc) (not(xoc)))) ;; Support.  Cancellation. 
(when (bld) (and (bpc) (not(zoc)))) ;; Support.  Cancellation. 
(when (gld) (and (gpc) (not(cpc)))) ;; Support.  Cancellation. 
(when (jld) (and (jpc) (not(hpc)))) ;; Support.  Cancellation. 
(when (lld) (and (lpc) (not(kpc)))) ;; Support.  Cancellation. 
(when (qld) (and (qpc) (not(mpc)))) ;; Support.  Cancellation. 
(when (tld) (and (tpc) (not(rpc)))) ;; Support.  Cancellation. 
(when (vld) (and (vpc) (not(upc)))) ;; Support.  Cancellation. 
(when (yld) (and (ypc) (not(xpc)))) ;; Support.  Cancellation. 
(when (bmd) (and (bqc) (not(zpc)))) ;; Support.  Cancellation. 
(when (gmd) (and (gqc) (not(cqc)))) ;; Support.  Cancellation. 
(when (jmd) (and (jqc) (not(hqc)))) ;; Support.  Cancellation. 
(when (lmd) (and (lqc) (not(kqc)))) ;; Support.  Cancellation. 
(when (qmd) (and (qqc) (not(mqc)))) ;; Support.  Cancellation. 
(when (vmd) (and (vqc) (not(uqc)))) ;; Support.  Cancellation. 
(when (gnd)  (gsc)) ;; Support. 
(when (lnd) (and (lsc) (not(ksc)))) ;; Support.  Cancellation. 
(when (tnd)  (tsc)) ;; Support. 
(when (vnd) (and (vsc) (not(usc)))) ;; Support.  Cancellation. 
(when (ynd) (and (ysc) (not(xsc)))) ;; Support.  Cancellation. 
(when (bod)  (brc)) ;; Support. 
(when (god) (and (grc) (not(crc)))) ;; Support.  Cancellation. 
(when (jod)  (jrc)) ;; Support. 
(when (lod)  (lrc)) ;; Support. 
(when (qod) (and (qrc) (not(mrc)))) ;; Support.  Cancellation. 
(when (vod) (and (vrc) (not(urc)))) ;; Support.  Cancellation. 
(when (yod) (and (yrc) (not(xrc)))) ;; Support.  Cancellation. 
(when (gpd) (and (gtc) (not(ctc)))) ;; Support.  Cancellation. 
(when (qpd) (and (qtc) (not(mtc)))) ;; Support.  Cancellation. 
(when (tpd) (and (ttc) (not(rtc)))) ;; Support.  Cancellation. 
(when (vpd) (and (vtc) (not(utc)))) ;; Support.  Cancellation. 
(when (ypd) (and (ytc) (not(xtc)))) ;; Support.  Cancellation. 
(when (bqd) (and (buc) (not(ztc)))) ;; Support.  Cancellation. 
(when (gqd) (and (guc) (not(cuc)))) ;; Support.  Cancellation. 
(when (jqd) (and (juc) (not(huc)))) ;; Support.  Cancellation. 
(when (lqd) (and (luc) (not(kuc)))) ;; Support.  Cancellation. 
(when (qqd) (and (quc) (not(muc)))) ;; Support.  Cancellation. 
(when (tqd) (and (tuc) (not(ruc)))) ;; Support.  Cancellation. 
(when (vqd) (and (vuc) (not(uuc)))) ;; Support.  Cancellation. 
(when (yqd) (and (yuc) (not(xuc)))) ;; Support.  Cancellation. 
(when (bsd) (and (bvc) (not(zuc)))) ;; Support.  Cancellation. 
(when (gsd) (and (gvc) (not(cvc)))) ;; Support.  Cancellation. 
(when (jsd) (and (jvc) (not(hvc)))) ;; Support.  Cancellation. 
(when (lsd) (and (lvc) (not(kvc)))) ;; Support.  Cancellation. 
(when (qsd) (and (qvc) (not(mvc)))) ;; Support.  Cancellation. 
(when (usd) (and (uvc) (not(tvc)))) ;; Support.  Cancellation. 
(when (xsd) (and (xvc) (not(vvc)))) ;; Support.  Cancellation. 
(when (hrd) (and (hwc) (not(gwc)))) ;; Support.  Cancellation. 
(when (mrd) (and (mwc) (not(lwc)))) ;; Support.  Cancellation. 
(when (rrd) (and (rwc) (not(qwc)))) ;; Support.  Cancellation. 
(when (urd) (and (uwc) (not(twc)))) ;; Support.  Cancellation. 
(when (xrd) (and (xwc) (not(vwc)))) ;; Support.  Cancellation. 
(when (zrd) (and (zwc) (not(ywc)))) ;; Support.  Cancellation. 
(when (ctd) (and (cxc) (not(bxc)))) ;; Support.  Cancellation. 
(when (mtd) (and (mxc) (not(lxc)))) ;; Support.  Cancellation. 
(when (rtd) (and (rxc) (not(qxc)))) ;; Support.  Cancellation. 
(when (utd) (and (uxc) (not(txc)))) ;; Support.  Cancellation. 
(when (xtd) (and (xxc) (not(vxc)))) ;; Support.  Cancellation. 
(when (ztd) (and (zxc) (not(yxc)))) ;; Support.  Cancellation. 
(when (cud) (and (cyc) (not(byc)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L3_L4
:parameters ()
:precondition (and (mic))

:effect (and  (gdd) (yqc)
(when (med) (and (myc) (not(lyc)))) ;; Support.  Cancellation. 
(when (qic) (and (qyc) (not(b4c)))) ;; Support.  Cancellation. 
(when (not(ric))  (not(ryc))) ;; Cancellation. 
(when (tic) (and (tyc) (not(uyc)))) ;; Support.  Cancellation. 
(when (vic) (and (vyc) (not(xyc)))) ;; Support.  Cancellation. 
(when (yic) (and (yyc) (not(zyc)))) ;; Support.  Cancellation. 
(when (bjc) (and (bzc) (not(czc)))) ;; Support.  Cancellation. 
(when (gjc) (and (gzc) (not(hzc)))) ;; Support.  Cancellation. 
(when (jjc) (and (jzc) (not(kzc)))) ;; Support.  Cancellation. 
(when (ljc) (and (lzc) (not(mzc)))) ;; Support.  Cancellation. 
(when (qjc) (and (qzc) (not(rzc)))) ;; Support.  Cancellation. 
(when (tjc) (and (tzc) (not(uzc)))) ;; Support.  Cancellation. 
(when (vjc) (and (vzc) (not(xzc)))) ;; Support.  Cancellation. 
(when (yjc) (and (yzc) (not(zzc)))) ;; Support.  Cancellation. 
(when (bkc) (and (b1c) (not(c1c)))) ;; Support.  Cancellation. 
(when (gkc) (and (g1c) (not(h1c)))) ;; Support.  Cancellation. 
(when (jkc) (and (j1c) (not(k1c)))) ;; Support.  Cancellation. 
(when (lkc) (and (l1c) (not(m1c)))) ;; Support.  Cancellation. 
(when (qkc) (and (q1c) (not(r1c)))) ;; Support.  Cancellation. 
(when (tkc) (and (t1c) (not(u1c)))) ;; Support.  Cancellation. 
(when (vkc) (and (v1c) (not(x1c)))) ;; Support.  Cancellation. 
(when (glc) (and (g2c) (not(h2c)))) ;; Support.  Cancellation. 
(when (jlc) (and (j2c) (not(k2c)))) ;; Support.  Cancellation. 
(when (llc) (and (l2c) (not(m2c)))) ;; Support.  Cancellation. 
(when (qlc) (and (q2c) (not(r2c)))) ;; Support.  Cancellation. 
(when (vlc) (and (v2c) (not(x2c)))) ;; Support.  Cancellation. 
(when (ylc) (and (y2c) (not(z2c)))) ;; Support.  Cancellation. 
(when (bmc) (and (b3c) (not(c3c)))) ;; Support.  Cancellation. 
(when (jmc) (and (j3c) (not(k3c)))) ;; Support.  Cancellation. 
(when (lmc) (and (l3c) (not(m3c)))) ;; Support.  Cancellation. 
(when (qmc) (and (q3c) (not(r3c)))) ;; Support.  Cancellation. 
(when (tmc) (and (t3c) (not(u3c)))) ;; Support.  Cancellation. 
(when (ymc) (and (y3c) (not(z3c)))) ;; Support.  Cancellation. 
(when (knc) (and (k4c) (not(l4c)))) ;; Support.  Cancellation. 
(when (mnc) (and (m4c) (not(q4c)))) ;; Support.  Cancellation. 
(when (rnc) (and (r4c) (not(t4c)))) ;; Support.  Cancellation. 
(when (unc) (and (u4c) (not(v4c)))) ;; Support.  Cancellation. 
(when (xnc) (and (x4c) (not(y4c)))) ;; Support.  Cancellation. 
(when (znc) (and (z4c) (not(b5c)))) ;; Support.  Cancellation. 
(when (coc) (and (c5c) (not(g5c)))) ;; Support.  Cancellation. 
(when (hoc) (and (h5c) (not(j5c)))) ;; Support.  Cancellation. 
(when (koc) (and (k5c) (not(l5c)))) ;; Support.  Cancellation. 
(when (moc) (and (m5c) (not(q5c)))) ;; Support.  Cancellation. 
(when (roc) (and (r5c) (not(t5c)))) ;; Support.  Cancellation. 
(when (uoc) (and (u5c) (not(v5c)))) ;; Support.  Cancellation. 
(when (xoc) (and (x5c) (not(y5c)))) ;; Support.  Cancellation. 
(when (zoc) (and (z5c) (not(b6c)))) ;; Support.  Cancellation. 
(when (cpc) (and (c6c) (not(g6c)))) ;; Support.  Cancellation. 
(when (hpc) (and (h6c) (not(j6c)))) ;; Support.  Cancellation. 
(when (kpc) (and (k6c) (not(l6c)))) ;; Support.  Cancellation. 
(when (mpc) (and (m6c) (not(q6c)))) ;; Support.  Cancellation. 
(when (rpc) (and (r6c) (not(t6c)))) ;; Support.  Cancellation. 
(when (upc) (and (u6c) (not(v6c)))) ;; Support.  Cancellation. 
(when (xpc) (and (x6c) (not(y6c)))) ;; Support.  Cancellation. 
(when (zpc) (and (z6c) (not(b7c)))) ;; Support.  Cancellation. 
(when (cqc) (and (c7c) (not(g7c)))) ;; Support.  Cancellation. 
(when (hqc) (and (h7c) (not(j7c)))) ;; Support.  Cancellation. 
(when (kqc) (and (k7c) (not(l7c)))) ;; Support.  Cancellation. 
(when (mqc) (and (m7c) (not(q7c)))) ;; Support.  Cancellation. 
(when (uqc) (and (u7c) (not(v7c)))) ;; Support.  Cancellation. 
(when (zqc) (and (z7c) (not(b8c)))) ;; Support.  Cancellation. 
(when (ksc) (and (k8c) (not(l8c)))) ;; Support.  Cancellation. 
(when (msc)  (m8c)) ;; Support. 
(when (usc) (and (u8c) (not(v8c)))) ;; Support.  Cancellation. 
(when (xsc) (and (x8c) (not(y8c)))) ;; Support.  Cancellation. 
(when (crc) (and (c9c) (not(g9c)))) ;; Support.  Cancellation. 
(when (mrc) (and (m9c) (not(q9c)))) ;; Support.  Cancellation. 
(when (rrc)  (r9c)) ;; Support. 
(when (urc) (and (u9c) (not(v9c)))) ;; Support.  Cancellation. 
(when (xrc) (and (x9c) (not(y9c)))) ;; Support.  Cancellation. 
(when (zrc)  (z9c)) ;; Support. 
(when (ctc) (and (c0c) (not(g0c)))) ;; Support.  Cancellation. 
(when (htc) (and (h0c) (not(j0c)))) ;; Support.  Cancellation. 
(when (ktc) (and (k0c) (not(l0c)))) ;; Support.  Cancellation. 
(when (mtc) (and (m0c) (not(q0c)))) ;; Support.  Cancellation. 
(when (rtc) (and (r0c) (not(t0c)))) ;; Support.  Cancellation. 
(when (utc) (and (u0c) (not(v0c)))) ;; Support.  Cancellation. 
(when (xtc) (and (x0c) (not(y0c)))) ;; Support.  Cancellation. 
(when (ztc) (and (z0c) (not(bad)))) ;; Support.  Cancellation. 
(when (cuc) (and (cad) (not(gad)))) ;; Support.  Cancellation. 
(when (huc) (and (had) (not(jad)))) ;; Support.  Cancellation. 
(when (kuc) (and (kad) (not(lad)))) ;; Support.  Cancellation. 
(when (muc) (and (mad) (not(qad)))) ;; Support.  Cancellation. 
(when (ruc) (and (rad) (not(tad)))) ;; Support.  Cancellation. 
(when (uuc) (and (uad) (not(vad)))) ;; Support.  Cancellation. 
(when (xuc) (and (xad) (not(yad)))) ;; Support.  Cancellation. 
(when (zuc) (and (zad) (not(bbd)))) ;; Support.  Cancellation. 
(when (cvc) (and (cbd) (not(gbd)))) ;; Support.  Cancellation. 
(when (hvc) (and (hbd) (not(jbd)))) ;; Support.  Cancellation. 
(when (kvc) (and (kbd) (not(lbd)))) ;; Support.  Cancellation. 
(when (mvc) (and (mbd) (not(qbd)))) ;; Support.  Cancellation. 
(when (rvc)  (rbd)) ;; Support. 
(when (tvc) (and (tbd) (not(ubd)))) ;; Support.  Cancellation. 
(when (vvc) (and (vbd) (not(xbd)))) ;; Support.  Cancellation. 
(when (yvc) (and (ybd) (not(zbd)))) ;; Support.  Cancellation. 
(when (bwc)  (bcd)) ;; Support. 
(when (gwc) (and (gcd) (not(hcd)))) ;; Support.  Cancellation. 
(when (jwc) (and (jcd) (not(kcd)))) ;; Support.  Cancellation. 
(when (lwc) (and (lcd) (not(mcd)))) ;; Support.  Cancellation. 
(when (qwc) (and (qcd) (not(rcd)))) ;; Support.  Cancellation. 
(when (twc) (and (tcd) (not(ucd)))) ;; Support.  Cancellation. 
(when (vwc) (and (vcd) (not(xcd)))) ;; Support.  Cancellation. 
(when (ywc) (and (ycd) (not(zcd)))) ;; Support.  Cancellation. 
(when (bxc) (and (bdd) (not(cdd)))) ;; Support.  Cancellation. 
(when (jxc)  (jdd)) ;; Support. 
(when (lxc) (and (ldd) (not(mdd)))) ;; Support.  Cancellation. 
(when (qxc) (and (qdd) (not(rdd)))) ;; Support.  Cancellation. 
(when (txc) (and (tdd) (not(udd)))) ;; Support.  Cancellation. 
(when (vxc) (and (vdd) (not(xdd)))) ;; Support.  Cancellation. 
(when (yxc) (and (ydd) (not(zdd)))) ;; Support.  Cancellation. 
(when (byc) (and (bed) (not(ced)))) ;; Support.  Cancellation. 
(when (gyc) (and (ged) (not(hed)))) ;; Support.  Cancellation. 
(when (jyc) (and (jed) (not(ked)))) ;; Support.  Cancellation. 
(when (lyc) (and (led) (not(med)))) ;; Support.  Cancellation. 
(when (ryc) (and (ric) (not(rvc)))) ;; Support.  Cancellation. 
(when (not(qyc))  (not(qic))) ;; Cancellation. 
(when (uyc) (and (uic) (not(tic)))) ;; Support.  Cancellation. 
(when (xyc) (and (xic) (not(vic)))) ;; Support.  Cancellation. 
(when (zyc) (and (zic) (not(yic)))) ;; Support.  Cancellation. 
(when (czc) (and (cjc) (not(bjc)))) ;; Support.  Cancellation. 
(when (hzc) (and (hjc) (not(gjc)))) ;; Support.  Cancellation. 
(when (kzc) (and (kjc) (not(jjc)))) ;; Support.  Cancellation. 
(when (mzc) (and (mjc) (not(ljc)))) ;; Support.  Cancellation. 
(when (rzc) (and (rjc) (not(qjc)))) ;; Support.  Cancellation. 
(when (uzc) (and (ujc) (not(tjc)))) ;; Support.  Cancellation. 
(when (xzc) (and (xjc) (not(vjc)))) ;; Support.  Cancellation. 
(when (zzc) (and (zjc) (not(yjc)))) ;; Support.  Cancellation. 
(when (c1c) (and (ckc) (not(bkc)))) ;; Support.  Cancellation. 
(when (h1c) (and (hkc) (not(gkc)))) ;; Support.  Cancellation. 
(when (k1c) (and (kkc) (not(jkc)))) ;; Support.  Cancellation. 
(when (m1c) (and (mkc) (not(lkc)))) ;; Support.  Cancellation. 
(when (r1c) (and (rkc) (not(qkc)))) ;; Support.  Cancellation. 
(when (u1c) (and (ukc) (not(tkc)))) ;; Support.  Cancellation. 
(when (x1c) (and (xkc) (not(vkc)))) ;; Support.  Cancellation. 
(when (z1c)  (zkc)) ;; Support. 
(when (c2c)  (clc)) ;; Support. 
(when (h2c) (and (hlc) (not(glc)))) ;; Support.  Cancellation. 
(when (k2c) (and (klc) (not(jlc)))) ;; Support.  Cancellation. 
(when (m2c) (and (mlc) (not(llc)))) ;; Support.  Cancellation. 
(when (r2c) (and (rlc) (not(qlc)))) ;; Support.  Cancellation. 
(when (u2c)  (ulc)) ;; Support. 
(when (x2c) (and (xlc) (not(vlc)))) ;; Support.  Cancellation. 
(when (z2c) (and (zlc) (not(ylc)))) ;; Support.  Cancellation. 
(when (c3c) (and (cmc) (not(bmc)))) ;; Support.  Cancellation. 
(when (h3c)  (hmc)) ;; Support. 
(when (k3c) (and (kmc) (not(jmc)))) ;; Support.  Cancellation. 
(when (m3c) (and (mmc) (not(lmc)))) ;; Support.  Cancellation. 
(when (r3c) (and (rmc) (not(qmc)))) ;; Support.  Cancellation. 
(when (u3c) (and (umc) (not(tmc)))) ;; Support.  Cancellation. 
(when (x3c)  (xmc)) ;; Support. 
(when (z3c) (and (zmc) (not(ymc)))) ;; Support.  Cancellation. 
(when (b4c)  (bnc)) ;; Support. 
(when (g4c)  (gnc)) ;; Support. 
(when (j4c)  (jnc)) ;; Support. 
(when (l4c) (and (lnc) (not(knc)))) ;; Support.  Cancellation. 
(when (q4c) (and (qnc) (not(mnc)))) ;; Support.  Cancellation. 
(when (t4c) (and (tnc) (not(rnc)))) ;; Support.  Cancellation. 
(when (v4c) (and (vnc) (not(unc)))) ;; Support.  Cancellation. 
(when (y4c) (and (ync) (not(xnc)))) ;; Support.  Cancellation. 
(when (b5c) (and (boc) (not(znc)))) ;; Support.  Cancellation. 
(when (g5c) (and (goc) (not(coc)))) ;; Support.  Cancellation. 
(when (j5c) (and (joc) (not(hoc)))) ;; Support.  Cancellation. 
(when (l5c) (and (loc) (not(koc)))) ;; Support.  Cancellation. 
(when (q5c) (and (qoc) (not(moc)))) ;; Support.  Cancellation. 
(when (t5c) (and (toc) (not(roc)))) ;; Support.  Cancellation. 
(when (v5c) (and (voc) (not(uoc)))) ;; Support.  Cancellation. 
(when (y5c) (and (yoc) (not(xoc)))) ;; Support.  Cancellation. 
(when (b6c) (and (bpc) (not(zoc)))) ;; Support.  Cancellation. 
(when (g6c) (and (gpc) (not(cpc)))) ;; Support.  Cancellation. 
(when (j6c) (and (jpc) (not(hpc)))) ;; Support.  Cancellation. 
(when (l6c) (and (lpc) (not(kpc)))) ;; Support.  Cancellation. 
(when (q6c) (and (qpc) (not(mpc)))) ;; Support.  Cancellation. 
(when (t6c) (and (tpc) (not(rpc)))) ;; Support.  Cancellation. 
(when (v6c) (and (vpc) (not(upc)))) ;; Support.  Cancellation. 
(when (y6c) (and (ypc) (not(xpc)))) ;; Support.  Cancellation. 
(when (b7c) (and (bqc) (not(zpc)))) ;; Support.  Cancellation. 
(when (g7c) (and (gqc) (not(cqc)))) ;; Support.  Cancellation. 
(when (j7c) (and (jqc) (not(hqc)))) ;; Support.  Cancellation. 
(when (l7c) (and (lqc) (not(kqc)))) ;; Support.  Cancellation. 
(when (q7c) (and (qqc) (not(mqc)))) ;; Support.  Cancellation. 
(when (t7c)  (tqc)) ;; Support. 
(when (v7c) (and (vqc) (not(uqc)))) ;; Support.  Cancellation. 
(when (b8c) (and (bsc) (not(zqc)))) ;; Support.  Cancellation. 
(when (g8c)  (gsc)) ;; Support. 
(when (l8c) (and (lsc) (not(ksc)))) ;; Support.  Cancellation. 
(when (t8c)  (tsc)) ;; Support. 
(when (v8c) (and (vsc) (not(usc)))) ;; Support.  Cancellation. 
(when (y8c) (and (ysc) (not(xsc)))) ;; Support.  Cancellation. 
(when (b9c)  (brc)) ;; Support. 
(when (g9c) (and (grc) (not(crc)))) ;; Support.  Cancellation. 
(when (j9c)  (jrc)) ;; Support. 
(when (l9c)  (lrc)) ;; Support. 
(when (q9c) (and (qrc) (not(mrc)))) ;; Support.  Cancellation. 
(when (v9c) (and (vrc) (not(urc)))) ;; Support.  Cancellation. 
(when (y9c) (and (yrc) (not(xrc)))) ;; Support.  Cancellation. 
(when (g0c) (and (gtc) (not(ctc)))) ;; Support.  Cancellation. 
(when (j0c) (and (jtc) (not(htc)))) ;; Support.  Cancellation. 
(when (l0c) (and (ltc) (not(ktc)))) ;; Support.  Cancellation. 
(when (q0c) (and (qtc) (not(mtc)))) ;; Support.  Cancellation. 
(when (t0c) (and (ttc) (not(rtc)))) ;; Support.  Cancellation. 
(when (v0c) (and (vtc) (not(utc)))) ;; Support.  Cancellation. 
(when (y0c) (and (ytc) (not(xtc)))) ;; Support.  Cancellation. 
(when (bad) (and (buc) (not(ztc)))) ;; Support.  Cancellation. 
(when (gad) (and (guc) (not(cuc)))) ;; Support.  Cancellation. 
(when (jad) (and (juc) (not(huc)))) ;; Support.  Cancellation. 
(when (lad) (and (luc) (not(kuc)))) ;; Support.  Cancellation. 
(when (qad) (and (quc) (not(muc)))) ;; Support.  Cancellation. 
(when (tad) (and (tuc) (not(ruc)))) ;; Support.  Cancellation. 
(when (vad) (and (vuc) (not(uuc)))) ;; Support.  Cancellation. 
(when (yad) (and (yuc) (not(xuc)))) ;; Support.  Cancellation. 
(when (bbd) (and (bvc) (not(zuc)))) ;; Support.  Cancellation. 
(when (gbd) (and (gvc) (not(cvc)))) ;; Support.  Cancellation. 
(when (jbd) (and (jvc) (not(hvc)))) ;; Support.  Cancellation. 
(when (lbd) (and (lvc) (not(kvc)))) ;; Support.  Cancellation. 
(when (qbd) (and (qvc) (not(mvc)))) ;; Support.  Cancellation. 
(when (ubd) (and (uvc) (not(tvc)))) ;; Support.  Cancellation. 
(when (xbd) (and (xvc) (not(vvc)))) ;; Support.  Cancellation. 
(when (zbd) (and (zvc) (not(yvc)))) ;; Support.  Cancellation. 
(when (hcd) (and (hwc) (not(gwc)))) ;; Support.  Cancellation. 
(when (kcd) (and (kwc) (not(jwc)))) ;; Support.  Cancellation. 
(when (mcd) (and (mwc) (not(lwc)))) ;; Support.  Cancellation. 
(when (rcd) (and (rwc) (not(qwc)))) ;; Support.  Cancellation. 
(when (ucd) (and (uwc) (not(twc)))) ;; Support.  Cancellation. 
(when (xcd) (and (xwc) (not(vwc)))) ;; Support.  Cancellation. 
(when (zcd) (and (zwc) (not(ywc)))) ;; Support.  Cancellation. 
(when (cdd) (and (cxc) (not(bxc)))) ;; Support.  Cancellation. 
(when (mdd) (and (mxc) (not(lxc)))) ;; Support.  Cancellation. 
(when (rdd) (and (rxc) (not(qxc)))) ;; Support.  Cancellation. 
(when (udd) (and (uxc) (not(txc)))) ;; Support.  Cancellation. 
(when (xdd) (and (xxc) (not(vxc)))) ;; Support.  Cancellation. 
(when (zdd) (and (zxc) (not(yxc)))) ;; Support.  Cancellation. 
(when (ced) (and (cyc) (not(byc)))) ;; Support.  Cancellation. 
(when (hed) (and (hyc) (not(gyc)))) ;; Support.  Cancellation. 
(when (ked) (and (kyc) (not(jyc)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L2_L7
:parameters ()
:precondition (and (mic))

:effect (and  (qvb) (jpe) (not(rmb))
(when (kqe)  (gic)) ;; Support. 
(when (rmb) (and (qae) (not(bfe)))) ;; Support.  Cancellation. 
(when (not(tmb))  (not(rae))) ;; Cancellation. 
(when (xmb)  (tae)) ;; Support. 
(when (cnb)  (vae)) ;; Support. 
(when (knb)  (yae)) ;; Support. 
(when (rnb)  (bbe)) ;; Support. 
(when (xnb)  (gbe)) ;; Support. 
(when (cob)  (jbe)) ;; Support. 
(when (kob)  (lbe)) ;; Support. 
(when (rob)  (qbe)) ;; Support. 
(when (xob)  (tbe)) ;; Support. 
(when (cpb)  (vbe)) ;; Support. 
(when (kpb)  (ybe)) ;; Support. 
(when (rpb)  (bce)) ;; Support. 
(when (xpb)  (gce)) ;; Support. 
(when (cqb)  (jce)) ;; Support. 
(when (kqb)  (lce)) ;; Support. 
(when (rqb)  (qce)) ;; Support. 
(when (xsb)  (gde)) ;; Support. 
(when (crb)  (jde)) ;; Support. 
(when (krb)  (lde)) ;; Support. 
(when (rrb)  (qde)) ;; Support. 
(when (ktb)  (yde)) ;; Support. 
(when (rtb)  (bee)) ;; Support. 
(when (cub)  (jee)) ;; Support. 
(when (rub)  (qee)) ;; Support. 
(when (uwb) (and (rfe) (not(tfe)))) ;; Support.  Cancellation. 
(when (zwb) (and (ufe) (not(vfe)))) ;; Support.  Cancellation. 
(when (hxb) (and (xfe) (not(yfe)))) ;; Support.  Cancellation. 
(when (mxb) (and (zfe) (not(bge)))) ;; Support.  Cancellation. 
(when (uxb) (and (cge) (not(gge)))) ;; Support.  Cancellation. 
(when (zxb) (and (hge) (not(jge)))) ;; Support.  Cancellation. 
(when (hyb) (and (kge) (not(lge)))) ;; Support.  Cancellation. 
(when (myb) (and (mge) (not(qge)))) ;; Support.  Cancellation. 
(when (uyb) (and (rge) (not(tge)))) ;; Support.  Cancellation. 
(when (zyb) (and (uge) (not(vge)))) ;; Support.  Cancellation. 
(when (hzb) (and (xge) (not(yge)))) ;; Support.  Cancellation. 
(when (mzb) (and (zge) (not(bhe)))) ;; Support.  Cancellation. 
(when (uzb) (and (che) (not(ghe)))) ;; Support.  Cancellation. 
(when (zzb) (and (hhe) (not(jhe)))) ;; Support.  Cancellation. 
(when (h1b) (and (khe) (not(lhe)))) ;; Support.  Cancellation. 
(when (m1b) (and (mhe) (not(qhe)))) ;; Support.  Cancellation. 
(when (u1b) (and (rhe) (not(the)))) ;; Support.  Cancellation. 
(when (z1b) (and (uhe) (not(vhe)))) ;; Support.  Cancellation. 
(when (h2b) (and (xhe) (not(yhe)))) ;; Support.  Cancellation. 
(when (m2b) (and (zhe) (not(bie)))) ;; Support.  Cancellation. 
(when (u2b) (and (cie) (not(gie)))) ;; Support.  Cancellation. 
(when (z2b) (and (hie) (not(jie)))) ;; Support.  Cancellation. 
(when (h3b) (and (kie) (not(lie)))) ;; Support.  Cancellation. 
(when (m3b) (and (mie) (not(qie)))) ;; Support.  Cancellation. 
(when (z3b)  (uie)) ;; Support. 
(when (m4b)  (zie)) ;; Support. 
(when (h5b)  (kje)) ;; Support. 
(when (m5b)  (mje)) ;; Support. 
(when (z5b) (and (uje) (not(vje)))) ;; Support.  Cancellation. 
(when (h6b) (and (xje) (not(yje)))) ;; Support.  Cancellation. 
(when (u6b) (and (cke) (not(gke)))) ;; Support.  Cancellation. 
(when (m7b) (and (mke) (not(qke)))) ;; Support.  Cancellation. 
(when (u7b)  (rke)) ;; Support. 
(when (z7b) (and (uke) (not(vke)))) ;; Support.  Cancellation. 
(when (h8b) (and (xke) (not(yke)))) ;; Support.  Cancellation. 
(when (m8b)  (zke)) ;; Support. 
(when (u8b) (and (cle) (not(gle)))) ;; Support.  Cancellation. 
(when (z8b)  (hle)) ;; Support. 
(when (h9b)  (kle)) ;; Support. 
(when (m9b) (and (mle) (not(qle)))) ;; Support.  Cancellation. 
(when (u9b)  (rle)) ;; Support. 
(when (z9b)  (ule)) ;; Support. 
(when (h0b)  (xle)) ;; Support. 
(when (m0b)  (zle)) ;; Support. 
(when (u0b) (and (cme) (not(gme)))) ;; Support.  Cancellation. 
(when (z0b) (and (hme) (not(jme)))) ;; Support.  Cancellation. 
(when (hac) (and (kme) (not(lme)))) ;; Support.  Cancellation. 
(when (mac) (and (mme) (not(qme)))) ;; Support.  Cancellation. 
(when (uac) (and (rme) (not(tme)))) ;; Support.  Cancellation. 
(when (zac) (and (ume) (not(vme)))) ;; Support.  Cancellation. 
(when (hbc) (and (xme) (not(yme)))) ;; Support.  Cancellation. 
(when (mbc) (and (zme) (not(bne)))) ;; Support.  Cancellation. 
(when (ubc) (and (cne) (not(gne)))) ;; Support.  Cancellation. 
(when (zbc) (and (hne) (not(jne)))) ;; Support.  Cancellation. 
(when (hcc) (and (kne) (not(lne)))) ;; Support.  Cancellation. 
(when (mcc) (and (mne) (not(qne)))) ;; Support.  Cancellation. 
(when (tcc)  (rne)) ;; Support. 
(when (xcc)  (tne)) ;; Support. 
(when (cdc)  (vne)) ;; Support. 
(when (kdc)  (yne)) ;; Support. 
(when (rdc)  (boe)) ;; Support. 
(when (xdc)  (goe)) ;; Support. 
(when (cec)  (joe)) ;; Support. 
(when (kec)  (loe)) ;; Support. 
(when (xec)  (toe)) ;; Support. 
(when (kfc) (and (yoe) (not(zoe)))) ;; Support.  Cancellation. 
(when (kgc) (and (lpe) (not(mpe)))) ;; Support.  Cancellation. 
(when (xgc) (and (tpe) (not(upe)))) ;; Support.  Cancellation. 
(when (chc)  (vpe)) ;; Support. 
(when (rhc) (and (bqe) (not(cqe)))) ;; Support.  Cancellation. 
(when (xhc)  (gqe)) ;; Support. 
(when (rae) (and (tmb) (not(tcc)))) ;; Support.  Cancellation. 
(when (uee)  (yub)) ;; Support. 
(when (xee)  (gvb)) ;; Support. 
(when (zee)  (lvb)) ;; Support. 
(when (gfe)  (vvb)) ;; Support. 
(when (jfe)  (bwb)) ;; Support. 
(when (lfe)  (jwb)) ;; Support. 
(when (qfe)  (qwb)) ;; Support. 
(when (tfe) (and (vwb) (not(uwb)))) ;; Support.  Cancellation. 
(when (vfe) (and (bxb) (not(zwb)))) ;; Support.  Cancellation. 
(when (yfe) (and (jxb) (not(hxb)))) ;; Support.  Cancellation. 
(when (bge) (and (qxb) (not(mxb)))) ;; Support.  Cancellation. 
(when (gge) (and (vxb) (not(uxb)))) ;; Support.  Cancellation. 
(when (jge) (and (byb) (not(zxb)))) ;; Support.  Cancellation. 
(when (lge) (and (jyb) (not(hyb)))) ;; Support.  Cancellation. 
(when (qge) (and (qyb) (not(myb)))) ;; Support.  Cancellation. 
(when (tge) (and (vyb) (not(uyb)))) ;; Support.  Cancellation. 
(when (vge) (and (bzb) (not(zyb)))) ;; Support.  Cancellation. 
(when (yge) (and (jzb) (not(hzb)))) ;; Support.  Cancellation. 
(when (bhe) (and (qzb) (not(mzb)))) ;; Support.  Cancellation. 
(when (ghe) (and (vzb) (not(uzb)))) ;; Support.  Cancellation. 
(when (jhe) (and (b1b) (not(zzb)))) ;; Support.  Cancellation. 
(when (lhe) (and (j1b) (not(h1b)))) ;; Support.  Cancellation. 
(when (qhe) (and (q1b) (not(m1b)))) ;; Support.  Cancellation. 
(when (the) (and (v1b) (not(u1b)))) ;; Support.  Cancellation. 
(when (vhe) (and (b2b) (not(z1b)))) ;; Support.  Cancellation. 
(when (yhe) (and (j2b) (not(h2b)))) ;; Support.  Cancellation. 
(when (bie) (and (q2b) (not(m2b)))) ;; Support.  Cancellation. 
(when (gie) (and (v2b) (not(u2b)))) ;; Support.  Cancellation. 
(when (jie) (and (b3b) (not(z2b)))) ;; Support.  Cancellation. 
(when (lie) (and (j3b) (not(h3b)))) ;; Support.  Cancellation. 
(when (qie) (and (q3b) (not(m3b)))) ;; Support.  Cancellation. 
(when (tje)  (v5b)) ;; Support. 
(when (vje) (and (b6b) (not(z5b)))) ;; Support.  Cancellation. 
(when (yje) (and (j6b) (not(h6b)))) ;; Support.  Cancellation. 
(when (bke)  (q6b)) ;; Support. 
(when (gke) (and (v6b) (not(u6b)))) ;; Support.  Cancellation. 
(when (jke)  (b7b)) ;; Support. 
(when (lke)  (j7b)) ;; Support. 
(when (qke) (and (q7b) (not(m7b)))) ;; Support.  Cancellation. 
(when (vke) (and (b8b) (not(z7b)))) ;; Support.  Cancellation. 
(when (yke) (and (j8b) (not(h8b)))) ;; Support.  Cancellation. 
(when (gle) (and (v8b) (not(u8b)))) ;; Support.  Cancellation. 
(when (qle) (and (q9b) (not(m9b)))) ;; Support.  Cancellation. 
(when (gme) (and (v0b) (not(u0b)))) ;; Support.  Cancellation. 
(when (jme) (and (bac) (not(z0b)))) ;; Support.  Cancellation. 
(when (lme) (and (jac) (not(hac)))) ;; Support.  Cancellation. 
(when (qme) (and (qac) (not(mac)))) ;; Support.  Cancellation. 
(when (tme) (and (vac) (not(uac)))) ;; Support.  Cancellation. 
(when (vme) (and (bbc) (not(zac)))) ;; Support.  Cancellation. 
(when (yme) (and (jbc) (not(hbc)))) ;; Support.  Cancellation. 
(when (bne) (and (qbc) (not(mbc)))) ;; Support.  Cancellation. 
(when (gne) (and (vbc) (not(ubc)))) ;; Support.  Cancellation. 
(when (jne) (and (bcc) (not(zbc)))) ;; Support.  Cancellation. 
(when (lne) (and (jcc) (not(hcc)))) ;; Support.  Cancellation. 
(when (qne) (and (qcc) (not(mcc)))) ;; Support.  Cancellation. 
(when (xoe)  (gfc)) ;; Support. 
(when (zoe) (and (lfc) (not(kfc)))) ;; Support.  Cancellation. 
(when (cpe)  (tfc)) ;; Support. 
(when (mpe) (and (lgc) (not(kgc)))) ;; Support.  Cancellation. 
(when (rpe)  (tgc)) ;; Support. 
(when (upe) (and (ygc) (not(xgc)))) ;; Support.  Cancellation. 
(when (cqe) (and (thc) (not(rhc)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L2_L6
:parameters ()
:precondition (and (mic))

:effect (and  (j0d) (yrb)
(when (kae)  (gic)) ;; Support. 
(when (rmb) (and (qud) (not(bzd)))) ;; Support.  Cancellation. 
(when (not(tmb))  (not(rud))) ;; Cancellation. 
(when (xmb) (and (tud) (not(uud)))) ;; Support.  Cancellation. 
(when (cnb) (and (vud) (not(xud)))) ;; Support.  Cancellation. 
(when (knb) (and (yud) (not(zud)))) ;; Support.  Cancellation. 
(when (rnb) (and (bvd) (not(cvd)))) ;; Support.  Cancellation. 
(when (xnb) (and (gvd) (not(hvd)))) ;; Support.  Cancellation. 
(when (cob) (and (jvd) (not(kvd)))) ;; Support.  Cancellation. 
(when (kob) (and (lvd) (not(mvd)))) ;; Support.  Cancellation. 
(when (rob) (and (qvd) (not(rvd)))) ;; Support.  Cancellation. 
(when (xob) (and (tvd) (not(uvd)))) ;; Support.  Cancellation. 
(when (cpb) (and (vvd) (not(xvd)))) ;; Support.  Cancellation. 
(when (kpb) (and (yvd) (not(zvd)))) ;; Support.  Cancellation. 
(when (rpb) (and (bwd) (not(cwd)))) ;; Support.  Cancellation. 
(when (xpb) (and (gwd) (not(hwd)))) ;; Support.  Cancellation. 
(when (cqb) (and (jwd) (not(kwd)))) ;; Support.  Cancellation. 
(when (kqb) (and (lwd) (not(mwd)))) ;; Support.  Cancellation. 
(when (rqb) (and (qwd) (not(rwd)))) ;; Support.  Cancellation. 
(when (xsb) (and (gxd) (not(hxd)))) ;; Support.  Cancellation. 
(when (crb) (and (jxd) (not(kxd)))) ;; Support.  Cancellation. 
(when (krb) (and (lxd) (not(mxd)))) ;; Support.  Cancellation. 
(when (rrb) (and (qxd) (not(rxd)))) ;; Support.  Cancellation. 
(when (ktb) (and (yxd) (not(zxd)))) ;; Support.  Cancellation. 
(when (rtb) (and (byd) (not(cyd)))) ;; Support.  Cancellation. 
(when (cub) (and (jyd) (not(kyd)))) ;; Support.  Cancellation. 
(when (rub) (and (qyd) (not(ryd)))) ;; Support.  Cancellation. 
(when (uwb) (and (rzd) (not(tzd)))) ;; Support.  Cancellation. 
(when (zwb) (and (uzd) (not(vzd)))) ;; Support.  Cancellation. 
(when (hxb) (and (xzd) (not(yzd)))) ;; Support.  Cancellation. 
(when (mxb) (and (zzd) (not(b1d)))) ;; Support.  Cancellation. 
(when (uxb) (and (c1d) (not(g1d)))) ;; Support.  Cancellation. 
(when (zxb) (and (h1d) (not(j1d)))) ;; Support.  Cancellation. 
(when (hyb) (and (k1d) (not(l1d)))) ;; Support.  Cancellation. 
(when (myb) (and (m1d) (not(q1d)))) ;; Support.  Cancellation. 
(when (uyb) (and (r1d) (not(t1d)))) ;; Support.  Cancellation. 
(when (zyb) (and (u1d) (not(v1d)))) ;; Support.  Cancellation. 
(when (hzb) (and (x1d) (not(y1d)))) ;; Support.  Cancellation. 
(when (mzb) (and (z1d) (not(b2d)))) ;; Support.  Cancellation. 
(when (uzb) (and (c2d) (not(g2d)))) ;; Support.  Cancellation. 
(when (zzb) (and (h2d) (not(j2d)))) ;; Support.  Cancellation. 
(when (h1b) (and (k2d) (not(l2d)))) ;; Support.  Cancellation. 
(when (m1b) (and (m2d) (not(q2d)))) ;; Support.  Cancellation. 
(when (u1b) (and (r2d) (not(t2d)))) ;; Support.  Cancellation. 
(when (z1b) (and (u2d) (not(v2d)))) ;; Support.  Cancellation. 
(when (h2b) (and (x2d) (not(y2d)))) ;; Support.  Cancellation. 
(when (m2b) (and (z2d) (not(b3d)))) ;; Support.  Cancellation. 
(when (u2b) (and (c3d) (not(g3d)))) ;; Support.  Cancellation. 
(when (z2b) (and (h3d) (not(j3d)))) ;; Support.  Cancellation. 
(when (h3b) (and (k3d) (not(l3d)))) ;; Support.  Cancellation. 
(when (m3b) (and (m3d) (not(q3d)))) ;; Support.  Cancellation. 
(when (z3b)  (u3d)) ;; Support. 
(when (m4b)  (z3d)) ;; Support. 
(when (h5b)  (k4d)) ;; Support. 
(when (m5b)  (m4d)) ;; Support. 
(when (z5b) (and (u4d) (not(v4d)))) ;; Support.  Cancellation. 
(when (h6b) (and (x4d) (not(y4d)))) ;; Support.  Cancellation. 
(when (u6b) (and (c5d) (not(g5d)))) ;; Support.  Cancellation. 
(when (m7b) (and (m5d) (not(q5d)))) ;; Support.  Cancellation. 
(when (u7b)  (r5d)) ;; Support. 
(when (z7b) (and (u5d) (not(v5d)))) ;; Support.  Cancellation. 
(when (h8b) (and (x5d) (not(y5d)))) ;; Support.  Cancellation. 
(when (m8b)  (z5d)) ;; Support. 
(when (u8b) (and (c6d) (not(g6d)))) ;; Support.  Cancellation. 
(when (z8b)  (h6d)) ;; Support. 
(when (h9b)  (k6d)) ;; Support. 
(when (m9b) (and (m6d) (not(q6d)))) ;; Support.  Cancellation. 
(when (u9b)  (r6d)) ;; Support. 
(when (z9b)  (u6d)) ;; Support. 
(when (h0b)  (x6d)) ;; Support. 
(when (m0b)  (z6d)) ;; Support. 
(when (u0b) (and (c7d) (not(g7d)))) ;; Support.  Cancellation. 
(when (z0b) (and (h7d) (not(j7d)))) ;; Support.  Cancellation. 
(when (hac) (and (k7d) (not(l7d)))) ;; Support.  Cancellation. 
(when (mac) (and (m7d) (not(q7d)))) ;; Support.  Cancellation. 
(when (uac) (and (r7d) (not(t7d)))) ;; Support.  Cancellation. 
(when (zac) (and (u7d) (not(v7d)))) ;; Support.  Cancellation. 
(when (hbc) (and (x7d) (not(y7d)))) ;; Support.  Cancellation. 
(when (mbc) (and (z7d) (not(b8d)))) ;; Support.  Cancellation. 
(when (ubc) (and (c8d) (not(g8d)))) ;; Support.  Cancellation. 
(when (zbc) (and (h8d) (not(j8d)))) ;; Support.  Cancellation. 
(when (hcc) (and (k8d) (not(l8d)))) ;; Support.  Cancellation. 
(when (mcc) (and (m8d) (not(q8d)))) ;; Support.  Cancellation. 
(when (tcc)  (r8d)) ;; Support. 
(when (xcc)  (t8d)) ;; Support. 
(when (cdc)  (v8d)) ;; Support. 
(when (kdc)  (y8d)) ;; Support. 
(when (rdc)  (b9d)) ;; Support. 
(when (xdc)  (g9d)) ;; Support. 
(when (cec)  (j9d)) ;; Support. 
(when (kec)  (l9d)) ;; Support. 
(when (xec)  (t9d)) ;; Support. 
(when (kfc) (and (y9d) (not(z9d)))) ;; Support.  Cancellation. 
(when (kgc) (and (l0d) (not(m0d)))) ;; Support.  Cancellation. 
(when (xgc) (and (t0d) (not(u0d)))) ;; Support.  Cancellation. 
(when (chc)  (v0d)) ;; Support. 
(when (rhc) (and (bae) (not(cae)))) ;; Support.  Cancellation. 
(when (xhc)  (gae)) ;; Support. 
(when (rud) (and (tmb) (not(tcc)))) ;; Support.  Cancellation. 
(when (not(qud))  (not(rmb))) ;; Cancellation. 
(when (uud) (and (ymb) (not(xmb)))) ;; Support.  Cancellation. 
(when (xud) (and (gnb) (not(cnb)))) ;; Support.  Cancellation. 
(when (zud) (and (lnb) (not(knb)))) ;; Support.  Cancellation. 
(when (cvd) (and (tnb) (not(rnb)))) ;; Support.  Cancellation. 
(when (hvd) (and (ynb) (not(xnb)))) ;; Support.  Cancellation. 
(when (kvd) (and (gob) (not(cob)))) ;; Support.  Cancellation. 
(when (mvd) (and (lob) (not(kob)))) ;; Support.  Cancellation. 
(when (rvd) (and (tob) (not(rob)))) ;; Support.  Cancellation. 
(when (uvd) (and (yob) (not(xob)))) ;; Support.  Cancellation. 
(when (xvd) (and (gpb) (not(cpb)))) ;; Support.  Cancellation. 
(when (zvd) (and (lpb) (not(kpb)))) ;; Support.  Cancellation. 
(when (cwd) (and (tpb) (not(rpb)))) ;; Support.  Cancellation. 
(when (hwd) (and (ypb) (not(xpb)))) ;; Support.  Cancellation. 
(when (kwd) (and (gqb) (not(cqb)))) ;; Support.  Cancellation. 
(when (mwd) (and (lqb) (not(kqb)))) ;; Support.  Cancellation. 
(when (rwd) (and (tqb) (not(rqb)))) ;; Support.  Cancellation. 
(when (uwd)  (yqb)) ;; Support. 
(when (xwd)  (gsb)) ;; Support. 
(when (zwd)  (lsb)) ;; Support. 
(when (cxd)  (tsb)) ;; Support. 
(when (hxd) (and (ysb) (not(xsb)))) ;; Support.  Cancellation. 
(when (kxd) (and (grb) (not(crb)))) ;; Support.  Cancellation. 
(when (mxd) (and (lrb) (not(krb)))) ;; Support.  Cancellation. 
(when (rxd) (and (trb) (not(rrb)))) ;; Support.  Cancellation. 
(when (xxd)  (gtb)) ;; Support. 
(when (zxd) (and (ltb) (not(ktb)))) ;; Support.  Cancellation. 
(when (cyd) (and (ttb) (not(rtb)))) ;; Support.  Cancellation. 
(when (hyd)  (ytb)) ;; Support. 
(when (kyd) (and (gub) (not(cub)))) ;; Support.  Cancellation. 
(when (myd)  (lub)) ;; Support. 
(when (ryd) (and (tub) (not(rub)))) ;; Support.  Cancellation. 
(when (uyd)  (yub)) ;; Support. 
(when (xyd)  (gvb)) ;; Support. 
(when (zyd)  (lvb)) ;; Support. 
(when (bzd)  (qvb)) ;; Support. 
(when (gzd)  (vvb)) ;; Support. 
(when (jzd)  (bwb)) ;; Support. 
(when (lzd)  (jwb)) ;; Support. 
(when (qzd)  (qwb)) ;; Support. 
(when (tzd) (and (vwb) (not(uwb)))) ;; Support.  Cancellation. 
(when (vzd) (and (bxb) (not(zwb)))) ;; Support.  Cancellation. 
(when (yzd) (and (jxb) (not(hxb)))) ;; Support.  Cancellation. 
(when (b1d) (and (qxb) (not(mxb)))) ;; Support.  Cancellation. 
(when (g1d) (and (vxb) (not(uxb)))) ;; Support.  Cancellation. 
(when (j1d) (and (byb) (not(zxb)))) ;; Support.  Cancellation. 
(when (l1d) (and (jyb) (not(hyb)))) ;; Support.  Cancellation. 
(when (q1d) (and (qyb) (not(myb)))) ;; Support.  Cancellation. 
(when (t1d) (and (vyb) (not(uyb)))) ;; Support.  Cancellation. 
(when (v1d) (and (bzb) (not(zyb)))) ;; Support.  Cancellation. 
(when (y1d) (and (jzb) (not(hzb)))) ;; Support.  Cancellation. 
(when (b2d) (and (qzb) (not(mzb)))) ;; Support.  Cancellation. 
(when (g2d) (and (vzb) (not(uzb)))) ;; Support.  Cancellation. 
(when (j2d) (and (b1b) (not(zzb)))) ;; Support.  Cancellation. 
(when (l2d) (and (j1b) (not(h1b)))) ;; Support.  Cancellation. 
(when (q2d) (and (q1b) (not(m1b)))) ;; Support.  Cancellation. 
(when (t2d) (and (v1b) (not(u1b)))) ;; Support.  Cancellation. 
(when (v2d) (and (b2b) (not(z1b)))) ;; Support.  Cancellation. 
(when (y2d) (and (j2b) (not(h2b)))) ;; Support.  Cancellation. 
(when (b3d) (and (q2b) (not(m2b)))) ;; Support.  Cancellation. 
(when (g3d) (and (v2b) (not(u2b)))) ;; Support.  Cancellation. 
(when (j3d) (and (b3b) (not(z2b)))) ;; Support.  Cancellation. 
(when (l3d) (and (j3b) (not(h3b)))) ;; Support.  Cancellation. 
(when (q3d) (and (q3b) (not(m3b)))) ;; Support.  Cancellation. 
(when (t4d)  (v5b)) ;; Support. 
(when (v4d) (and (b6b) (not(z5b)))) ;; Support.  Cancellation. 
(when (y4d) (and (j6b) (not(h6b)))) ;; Support.  Cancellation. 
(when (b5d)  (q6b)) ;; Support. 
(when (g5d) (and (v6b) (not(u6b)))) ;; Support.  Cancellation. 
(when (j5d)  (b7b)) ;; Support. 
(when (l5d)  (j7b)) ;; Support. 
(when (q5d) (and (q7b) (not(m7b)))) ;; Support.  Cancellation. 
(when (v5d) (and (b8b) (not(z7b)))) ;; Support.  Cancellation. 
(when (y5d) (and (j8b) (not(h8b)))) ;; Support.  Cancellation. 
(when (g6d) (and (v8b) (not(u8b)))) ;; Support.  Cancellation. 
(when (q6d) (and (q9b) (not(m9b)))) ;; Support.  Cancellation. 
(when (g7d) (and (v0b) (not(u0b)))) ;; Support.  Cancellation. 
(when (j7d) (and (bac) (not(z0b)))) ;; Support.  Cancellation. 
(when (l7d) (and (jac) (not(hac)))) ;; Support.  Cancellation. 
(when (q7d) (and (qac) (not(mac)))) ;; Support.  Cancellation. 
(when (t7d) (and (vac) (not(uac)))) ;; Support.  Cancellation. 
(when (v7d) (and (bbc) (not(zac)))) ;; Support.  Cancellation. 
(when (y7d) (and (jbc) (not(hbc)))) ;; Support.  Cancellation. 
(when (b8d) (and (qbc) (not(mbc)))) ;; Support.  Cancellation. 
(when (g8d) (and (vbc) (not(ubc)))) ;; Support.  Cancellation. 
(when (j8d) (and (bcc) (not(zbc)))) ;; Support.  Cancellation. 
(when (l8d) (and (jcc) (not(hcc)))) ;; Support.  Cancellation. 
(when (q8d) (and (qcc) (not(mcc)))) ;; Support.  Cancellation. 
(when (x9d)  (gfc)) ;; Support. 
(when (z9d) (and (lfc) (not(kfc)))) ;; Support.  Cancellation. 
(when (c0d)  (tfc)) ;; Support. 
(when (m0d) (and (lgc) (not(kgc)))) ;; Support.  Cancellation. 
(when (r0d)  (tgc)) ;; Support. 
(when (u0d) (and (ygc) (not(xgc)))) ;; Support.  Cancellation. 
(when (cae) (and (thc) (not(rhc)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L2_L5
:parameters ()
:precondition (and (mic))

:effect (and  (jtd) (v3b)
(when (kud)  (gic)) ;; Support. 
(when (rmb) (and (qed) (not(bjd)))) ;; Support.  Cancellation. 
(when (not(tmb))  (not(red))) ;; Cancellation. 
(when (xmb) (and (ted) (not(ued)))) ;; Support.  Cancellation. 
(when (cnb) (and (ved) (not(xed)))) ;; Support.  Cancellation. 
(when (knb) (and (yed) (not(zed)))) ;; Support.  Cancellation. 
(when (rnb) (and (bfd) (not(cfd)))) ;; Support.  Cancellation. 
(when (xnb) (and (gfd) (not(hfd)))) ;; Support.  Cancellation. 
(when (cob) (and (jfd) (not(kfd)))) ;; Support.  Cancellation. 
(when (kob) (and (lfd) (not(mfd)))) ;; Support.  Cancellation. 
(when (rob) (and (qfd) (not(rfd)))) ;; Support.  Cancellation. 
(when (xob) (and (tfd) (not(ufd)))) ;; Support.  Cancellation. 
(when (cpb) (and (vfd) (not(xfd)))) ;; Support.  Cancellation. 
(when (kpb) (and (yfd) (not(zfd)))) ;; Support.  Cancellation. 
(when (rpb) (and (bgd) (not(cgd)))) ;; Support.  Cancellation. 
(when (xpb) (and (ggd) (not(hgd)))) ;; Support.  Cancellation. 
(when (cqb) (and (jgd) (not(kgd)))) ;; Support.  Cancellation. 
(when (kqb) (and (lgd) (not(mgd)))) ;; Support.  Cancellation. 
(when (rqb) (and (qgd) (not(rgd)))) ;; Support.  Cancellation. 
(when (xsb) (and (ghd) (not(hhd)))) ;; Support.  Cancellation. 
(when (crb) (and (jhd) (not(khd)))) ;; Support.  Cancellation. 
(when (krb) (and (lhd) (not(mhd)))) ;; Support.  Cancellation. 
(when (rrb) (and (qhd) (not(rhd)))) ;; Support.  Cancellation. 
(when (ktb) (and (yhd) (not(zhd)))) ;; Support.  Cancellation. 
(when (rtb) (and (bid) (not(cid)))) ;; Support.  Cancellation. 
(when (cub) (and (jid) (not(kid)))) ;; Support.  Cancellation. 
(when (rub) (and (qid) (not(rid)))) ;; Support.  Cancellation. 
(when (uwb) (and (rjd) (not(tjd)))) ;; Support.  Cancellation. 
(when (zwb) (and (ujd) (not(vjd)))) ;; Support.  Cancellation. 
(when (hxb) (and (xjd) (not(yjd)))) ;; Support.  Cancellation. 
(when (mxb) (and (zjd) (not(bkd)))) ;; Support.  Cancellation. 
(when (uxb) (and (ckd) (not(gkd)))) ;; Support.  Cancellation. 
(when (zxb) (and (hkd) (not(jkd)))) ;; Support.  Cancellation. 
(when (hyb) (and (kkd) (not(lkd)))) ;; Support.  Cancellation. 
(when (myb) (and (mkd) (not(qkd)))) ;; Support.  Cancellation. 
(when (uyb) (and (rkd) (not(tkd)))) ;; Support.  Cancellation. 
(when (zyb) (and (ukd) (not(vkd)))) ;; Support.  Cancellation. 
(when (hzb) (and (xkd) (not(ykd)))) ;; Support.  Cancellation. 
(when (mzb) (and (zkd) (not(bld)))) ;; Support.  Cancellation. 
(when (uzb) (and (cld) (not(gld)))) ;; Support.  Cancellation. 
(when (zzb) (and (hld) (not(jld)))) ;; Support.  Cancellation. 
(when (h1b) (and (kld) (not(lld)))) ;; Support.  Cancellation. 
(when (m1b) (and (mld) (not(qld)))) ;; Support.  Cancellation. 
(when (u1b) (and (rld) (not(tld)))) ;; Support.  Cancellation. 
(when (z1b) (and (uld) (not(vld)))) ;; Support.  Cancellation. 
(when (h2b) (and (xld) (not(yld)))) ;; Support.  Cancellation. 
(when (m2b) (and (zld) (not(bmd)))) ;; Support.  Cancellation. 
(when (u2b) (and (cmd) (not(gmd)))) ;; Support.  Cancellation. 
(when (z2b) (and (hmd) (not(jmd)))) ;; Support.  Cancellation. 
(when (h3b) (and (kmd) (not(lmd)))) ;; Support.  Cancellation. 
(when (m3b) (and (mmd) (not(qmd)))) ;; Support.  Cancellation. 
(when (z3b) (and (umd) (not(vmd)))) ;; Support.  Cancellation. 
(when (m4b)  (zmd)) ;; Support. 
(when (h5b) (and (knd) (not(lnd)))) ;; Support.  Cancellation. 
(when (m5b)  (mnd)) ;; Support. 
(when (z5b) (and (und) (not(vnd)))) ;; Support.  Cancellation. 
(when (h6b) (and (xnd) (not(ynd)))) ;; Support.  Cancellation. 
(when (u6b) (and (cod) (not(god)))) ;; Support.  Cancellation. 
(when (m7b) (and (mod) (not(qod)))) ;; Support.  Cancellation. 
(when (u7b)  (rod)) ;; Support. 
(when (z7b) (and (uod) (not(vod)))) ;; Support.  Cancellation. 
(when (h8b) (and (xod) (not(yod)))) ;; Support.  Cancellation. 
(when (m8b)  (zod)) ;; Support. 
(when (u8b) (and (cpd) (not(gpd)))) ;; Support.  Cancellation. 
(when (z8b)  (hpd)) ;; Support. 
(when (h9b)  (kpd)) ;; Support. 
(when (m9b) (and (mpd) (not(qpd)))) ;; Support.  Cancellation. 
(when (u9b) (and (rpd) (not(tpd)))) ;; Support.  Cancellation. 
(when (z9b) (and (upd) (not(vpd)))) ;; Support.  Cancellation. 
(when (h0b) (and (xpd) (not(ypd)))) ;; Support.  Cancellation. 
(when (m0b) (and (zpd) (not(bqd)))) ;; Support.  Cancellation. 
(when (u0b) (and (cqd) (not(gqd)))) ;; Support.  Cancellation. 
(when (z0b) (and (hqd) (not(jqd)))) ;; Support.  Cancellation. 
(when (hac) (and (kqd) (not(lqd)))) ;; Support.  Cancellation. 
(when (mac) (and (mqd) (not(qqd)))) ;; Support.  Cancellation. 
(when (uac) (and (rqd) (not(tqd)))) ;; Support.  Cancellation. 
(when (zac) (and (uqd) (not(vqd)))) ;; Support.  Cancellation. 
(when (hbc) (and (xqd) (not(yqd)))) ;; Support.  Cancellation. 
(when (mbc) (and (zqd) (not(bsd)))) ;; Support.  Cancellation. 
(when (ubc) (and (csd) (not(gsd)))) ;; Support.  Cancellation. 
(when (zbc) (and (hsd) (not(jsd)))) ;; Support.  Cancellation. 
(when (hcc) (and (ksd) (not(lsd)))) ;; Support.  Cancellation. 
(when (mcc) (and (msd) (not(qsd)))) ;; Support.  Cancellation. 
(when (tcc)  (rsd)) ;; Support. 
(when (xcc) (and (tsd) (not(usd)))) ;; Support.  Cancellation. 
(when (cdc) (and (vsd) (not(xsd)))) ;; Support.  Cancellation. 
(when (kdc)  (ysd)) ;; Support. 
(when (rdc)  (brd)) ;; Support. 
(when (xdc) (and (grd) (not(hrd)))) ;; Support.  Cancellation. 
(when (cec)  (jrd)) ;; Support. 
(when (kec) (and (lrd) (not(mrd)))) ;; Support.  Cancellation. 
(when (xec) (and (trd) (not(urd)))) ;; Support.  Cancellation. 
(when (kfc) (and (yrd) (not(zrd)))) ;; Support.  Cancellation. 
(when (kgc) (and (ltd) (not(mtd)))) ;; Support.  Cancellation. 
(when (xgc) (and (ttd) (not(utd)))) ;; Support.  Cancellation. 
(when (chc) (and (vtd) (not(xtd)))) ;; Support.  Cancellation. 
(when (rhc) (and (bud) (not(cud)))) ;; Support.  Cancellation. 
(when (xhc)  (gud)) ;; Support. 
(when (red) (and (tmb) (not(tcc)))) ;; Support.  Cancellation. 
(when (not(qed))  (not(rmb))) ;; Cancellation. 
(when (ued) (and (ymb) (not(xmb)))) ;; Support.  Cancellation. 
(when (xed) (and (gnb) (not(cnb)))) ;; Support.  Cancellation. 
(when (zed) (and (lnb) (not(knb)))) ;; Support.  Cancellation. 
(when (cfd) (and (tnb) (not(rnb)))) ;; Support.  Cancellation. 
(when (hfd) (and (ynb) (not(xnb)))) ;; Support.  Cancellation. 
(when (kfd) (and (gob) (not(cob)))) ;; Support.  Cancellation. 
(when (mfd) (and (lob) (not(kob)))) ;; Support.  Cancellation. 
(when (rfd) (and (tob) (not(rob)))) ;; Support.  Cancellation. 
(when (ufd) (and (yob) (not(xob)))) ;; Support.  Cancellation. 
(when (xfd) (and (gpb) (not(cpb)))) ;; Support.  Cancellation. 
(when (zfd) (and (lpb) (not(kpb)))) ;; Support.  Cancellation. 
(when (cgd) (and (tpb) (not(rpb)))) ;; Support.  Cancellation. 
(when (hgd) (and (ypb) (not(xpb)))) ;; Support.  Cancellation. 
(when (kgd) (and (gqb) (not(cqb)))) ;; Support.  Cancellation. 
(when (mgd) (and (lqb) (not(kqb)))) ;; Support.  Cancellation. 
(when (rgd) (and (tqb) (not(rqb)))) ;; Support.  Cancellation. 
(when (ugd)  (yqb)) ;; Support. 
(when (xgd)  (gsb)) ;; Support. 
(when (zgd)  (lsb)) ;; Support. 
(when (chd)  (tsb)) ;; Support. 
(when (hhd) (and (ysb) (not(xsb)))) ;; Support.  Cancellation. 
(when (khd) (and (grb) (not(crb)))) ;; Support.  Cancellation. 
(when (mhd) (and (lrb) (not(krb)))) ;; Support.  Cancellation. 
(when (rhd) (and (trb) (not(rrb)))) ;; Support.  Cancellation. 
(when (uhd)  (yrb)) ;; Support. 
(when (xhd)  (gtb)) ;; Support. 
(when (zhd) (and (ltb) (not(ktb)))) ;; Support.  Cancellation. 
(when (cid) (and (ttb) (not(rtb)))) ;; Support.  Cancellation. 
(when (hid)  (ytb)) ;; Support. 
(when (kid) (and (gub) (not(cub)))) ;; Support.  Cancellation. 
(when (mid)  (lub)) ;; Support. 
(when (rid) (and (tub) (not(rub)))) ;; Support.  Cancellation. 
(when (uid)  (yub)) ;; Support. 
(when (xid)  (gvb)) ;; Support. 
(when (zid)  (lvb)) ;; Support. 
(when (bjd)  (qvb)) ;; Support. 
(when (gjd)  (vvb)) ;; Support. 
(when (jjd)  (bwb)) ;; Support. 
(when (ljd)  (jwb)) ;; Support. 
(when (qjd)  (qwb)) ;; Support. 
(when (tjd) (and (vwb) (not(uwb)))) ;; Support.  Cancellation. 
(when (vjd) (and (bxb) (not(zwb)))) ;; Support.  Cancellation. 
(when (yjd) (and (jxb) (not(hxb)))) ;; Support.  Cancellation. 
(when (bkd) (and (qxb) (not(mxb)))) ;; Support.  Cancellation. 
(when (gkd) (and (vxb) (not(uxb)))) ;; Support.  Cancellation. 
(when (jkd) (and (byb) (not(zxb)))) ;; Support.  Cancellation. 
(when (lkd) (and (jyb) (not(hyb)))) ;; Support.  Cancellation. 
(when (qkd) (and (qyb) (not(myb)))) ;; Support.  Cancellation. 
(when (tkd) (and (vyb) (not(uyb)))) ;; Support.  Cancellation. 
(when (vkd) (and (bzb) (not(zyb)))) ;; Support.  Cancellation. 
(when (ykd) (and (jzb) (not(hzb)))) ;; Support.  Cancellation. 
(when (bld) (and (qzb) (not(mzb)))) ;; Support.  Cancellation. 
(when (gld) (and (vzb) (not(uzb)))) ;; Support.  Cancellation. 
(when (jld) (and (b1b) (not(zzb)))) ;; Support.  Cancellation. 
(when (lld) (and (j1b) (not(h1b)))) ;; Support.  Cancellation. 
(when (qld) (and (q1b) (not(m1b)))) ;; Support.  Cancellation. 
(when (tld) (and (v1b) (not(u1b)))) ;; Support.  Cancellation. 
(when (vld) (and (b2b) (not(z1b)))) ;; Support.  Cancellation. 
(when (yld) (and (j2b) (not(h2b)))) ;; Support.  Cancellation. 
(when (bmd) (and (q2b) (not(m2b)))) ;; Support.  Cancellation. 
(when (gmd) (and (v2b) (not(u2b)))) ;; Support.  Cancellation. 
(when (jmd) (and (b3b) (not(z2b)))) ;; Support.  Cancellation. 
(when (lmd) (and (j3b) (not(h3b)))) ;; Support.  Cancellation. 
(when (qmd) (and (q3b) (not(m3b)))) ;; Support.  Cancellation. 
(when (vmd) (and (b4b) (not(z3b)))) ;; Support.  Cancellation. 
(when (gnd)  (v4b)) ;; Support. 
(when (lnd) (and (j5b) (not(h5b)))) ;; Support.  Cancellation. 
(when (tnd)  (v5b)) ;; Support. 
(when (vnd) (and (b6b) (not(z5b)))) ;; Support.  Cancellation. 
(when (ynd) (and (j6b) (not(h6b)))) ;; Support.  Cancellation. 
(when (bod)  (q6b)) ;; Support. 
(when (god) (and (v6b) (not(u6b)))) ;; Support.  Cancellation. 
(when (jod)  (b7b)) ;; Support. 
(when (lod)  (j7b)) ;; Support. 
(when (qod) (and (q7b) (not(m7b)))) ;; Support.  Cancellation. 
(when (vod) (and (b8b) (not(z7b)))) ;; Support.  Cancellation. 
(when (yod) (and (j8b) (not(h8b)))) ;; Support.  Cancellation. 
(when (gpd) (and (v8b) (not(u8b)))) ;; Support.  Cancellation. 
(when (qpd) (and (q9b) (not(m9b)))) ;; Support.  Cancellation. 
(when (tpd) (and (v9b) (not(u9b)))) ;; Support.  Cancellation. 
(when (vpd) (and (b0b) (not(z9b)))) ;; Support.  Cancellation. 
(when (ypd) (and (j0b) (not(h0b)))) ;; Support.  Cancellation. 
(when (bqd) (and (q0b) (not(m0b)))) ;; Support.  Cancellation. 
(when (gqd) (and (v0b) (not(u0b)))) ;; Support.  Cancellation. 
(when (jqd) (and (bac) (not(z0b)))) ;; Support.  Cancellation. 
(when (lqd) (and (jac) (not(hac)))) ;; Support.  Cancellation. 
(when (qqd) (and (qac) (not(mac)))) ;; Support.  Cancellation. 
(when (tqd) (and (vac) (not(uac)))) ;; Support.  Cancellation. 
(when (vqd) (and (bbc) (not(zac)))) ;; Support.  Cancellation. 
(when (yqd) (and (jbc) (not(hbc)))) ;; Support.  Cancellation. 
(when (bsd) (and (qbc) (not(mbc)))) ;; Support.  Cancellation. 
(when (gsd) (and (vbc) (not(ubc)))) ;; Support.  Cancellation. 
(when (jsd) (and (bcc) (not(zbc)))) ;; Support.  Cancellation. 
(when (lsd) (and (jcc) (not(hcc)))) ;; Support.  Cancellation. 
(when (qsd) (and (qcc) (not(mcc)))) ;; Support.  Cancellation. 
(when (usd) (and (ycc) (not(xcc)))) ;; Support.  Cancellation. 
(when (xsd) (and (gdc) (not(cdc)))) ;; Support.  Cancellation. 
(when (hrd) (and (ydc) (not(xdc)))) ;; Support.  Cancellation. 
(when (mrd) (and (lec) (not(kec)))) ;; Support.  Cancellation. 
(when (rrd)  (tec)) ;; Support. 
(when (urd) (and (yec) (not(xec)))) ;; Support.  Cancellation. 
(when (xrd)  (gfc)) ;; Support. 
(when (zrd) (and (lfc) (not(kfc)))) ;; Support.  Cancellation. 
(when (ctd)  (tfc)) ;; Support. 
(when (mtd) (and (lgc) (not(kgc)))) ;; Support.  Cancellation. 
(when (rtd)  (tgc)) ;; Support. 
(when (utd) (and (ygc) (not(xgc)))) ;; Support.  Cancellation. 
(when (xtd) (and (ghc) (not(chc)))) ;; Support.  Cancellation. 
(when (ztd)  (lhc)) ;; Support. 
(when (cud) (and (thc) (not(rhc)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L2_L4
:parameters ()
:precondition (and (mic))

:effect (and  (jdd) (j4b)
(when (med)  (lic)) ;; Support. 
(when (rmb) (and (qyc) (not(b4c)))) ;; Support.  Cancellation. 
(when (not(tmb))  (not(ryc))) ;; Cancellation. 
(when (xmb) (and (tyc) (not(uyc)))) ;; Support.  Cancellation. 
(when (cnb) (and (vyc) (not(xyc)))) ;; Support.  Cancellation. 
(when (knb) (and (yyc) (not(zyc)))) ;; Support.  Cancellation. 
(when (rnb) (and (bzc) (not(czc)))) ;; Support.  Cancellation. 
(when (xnb) (and (gzc) (not(hzc)))) ;; Support.  Cancellation. 
(when (cob) (and (jzc) (not(kzc)))) ;; Support.  Cancellation. 
(when (kob) (and (lzc) (not(mzc)))) ;; Support.  Cancellation. 
(when (rob) (and (qzc) (not(rzc)))) ;; Support.  Cancellation. 
(when (xob) (and (tzc) (not(uzc)))) ;; Support.  Cancellation. 
(when (cpb) (and (vzc) (not(xzc)))) ;; Support.  Cancellation. 
(when (kpb) (and (yzc) (not(zzc)))) ;; Support.  Cancellation. 
(when (rpb) (and (b1c) (not(c1c)))) ;; Support.  Cancellation. 
(when (xpb) (and (g1c) (not(h1c)))) ;; Support.  Cancellation. 
(when (cqb) (and (j1c) (not(k1c)))) ;; Support.  Cancellation. 
(when (kqb) (and (l1c) (not(m1c)))) ;; Support.  Cancellation. 
(when (rqb) (and (q1c) (not(r1c)))) ;; Support.  Cancellation. 
(when (xsb) (and (g2c) (not(h2c)))) ;; Support.  Cancellation. 
(when (crb) (and (j2c) (not(k2c)))) ;; Support.  Cancellation. 
(when (krb) (and (l2c) (not(m2c)))) ;; Support.  Cancellation. 
(when (rrb) (and (q2c) (not(r2c)))) ;; Support.  Cancellation. 
(when (ktb) (and (y2c) (not(z2c)))) ;; Support.  Cancellation. 
(when (rtb) (and (b3c) (not(c3c)))) ;; Support.  Cancellation. 
(when (cub) (and (j3c) (not(k3c)))) ;; Support.  Cancellation. 
(when (rub) (and (q3c) (not(r3c)))) ;; Support.  Cancellation. 
(when (uwb) (and (r4c) (not(t4c)))) ;; Support.  Cancellation. 
(when (zwb) (and (u4c) (not(v4c)))) ;; Support.  Cancellation. 
(when (hxb) (and (x4c) (not(y4c)))) ;; Support.  Cancellation. 
(when (mxb) (and (z4c) (not(b5c)))) ;; Support.  Cancellation. 
(when (uxb) (and (c5c) (not(g5c)))) ;; Support.  Cancellation. 
(when (zxb) (and (h5c) (not(j5c)))) ;; Support.  Cancellation. 
(when (hyb) (and (k5c) (not(l5c)))) ;; Support.  Cancellation. 
(when (myb) (and (m5c) (not(q5c)))) ;; Support.  Cancellation. 
(when (uyb) (and (r5c) (not(t5c)))) ;; Support.  Cancellation. 
(when (zyb) (and (u5c) (not(v5c)))) ;; Support.  Cancellation. 
(when (hzb) (and (x5c) (not(y5c)))) ;; Support.  Cancellation. 
(when (mzb) (and (z5c) (not(b6c)))) ;; Support.  Cancellation. 
(when (uzb) (and (c6c) (not(g6c)))) ;; Support.  Cancellation. 
(when (zzb) (and (h6c) (not(j6c)))) ;; Support.  Cancellation. 
(when (h1b) (and (k6c) (not(l6c)))) ;; Support.  Cancellation. 
(when (m1b) (and (m6c) (not(q6c)))) ;; Support.  Cancellation. 
(when (u1b) (and (r6c) (not(t6c)))) ;; Support.  Cancellation. 
(when (z1b) (and (u6c) (not(v6c)))) ;; Support.  Cancellation. 
(when (h2b) (and (x6c) (not(y6c)))) ;; Support.  Cancellation. 
(when (m2b) (and (z6c) (not(b7c)))) ;; Support.  Cancellation. 
(when (u2b) (and (c7c) (not(g7c)))) ;; Support.  Cancellation. 
(when (z2b) (and (h7c) (not(j7c)))) ;; Support.  Cancellation. 
(when (h3b) (and (k7c) (not(l7c)))) ;; Support.  Cancellation. 
(when (m3b) (and (m7c) (not(q7c)))) ;; Support.  Cancellation. 
(when (z3b) (and (u7c) (not(v7c)))) ;; Support.  Cancellation. 
(when (m4b) (and (z7c) (not(b8c)))) ;; Support.  Cancellation. 
(when (h5b) (and (k8c) (not(l8c)))) ;; Support.  Cancellation. 
(when (m5b)  (m8c)) ;; Support. 
(when (z5b) (and (u8c) (not(v8c)))) ;; Support.  Cancellation. 
(when (h6b) (and (x8c) (not(y8c)))) ;; Support.  Cancellation. 
(when (u6b) (and (c9c) (not(g9c)))) ;; Support.  Cancellation. 
(when (m7b) (and (m9c) (not(q9c)))) ;; Support.  Cancellation. 
(when (u7b)  (r9c)) ;; Support. 
(when (z7b) (and (u9c) (not(v9c)))) ;; Support.  Cancellation. 
(when (h8b) (and (x9c) (not(y9c)))) ;; Support.  Cancellation. 
(when (m8b)  (z9c)) ;; Support. 
(when (u8b) (and (c0c) (not(g0c)))) ;; Support.  Cancellation. 
(when (z8b) (and (h0c) (not(j0c)))) ;; Support.  Cancellation. 
(when (h9b) (and (k0c) (not(l0c)))) ;; Support.  Cancellation. 
(when (m9b) (and (m0c) (not(q0c)))) ;; Support.  Cancellation. 
(when (u9b) (and (r0c) (not(t0c)))) ;; Support.  Cancellation. 
(when (z9b) (and (u0c) (not(v0c)))) ;; Support.  Cancellation. 
(when (h0b) (and (x0c) (not(y0c)))) ;; Support.  Cancellation. 
(when (m0b) (and (z0c) (not(bad)))) ;; Support.  Cancellation. 
(when (u0b) (and (cad) (not(gad)))) ;; Support.  Cancellation. 
(when (z0b) (and (had) (not(jad)))) ;; Support.  Cancellation. 
(when (hac) (and (kad) (not(lad)))) ;; Support.  Cancellation. 
(when (mac) (and (mad) (not(qad)))) ;; Support.  Cancellation. 
(when (uac) (and (rad) (not(tad)))) ;; Support.  Cancellation. 
(when (zac) (and (uad) (not(vad)))) ;; Support.  Cancellation. 
(when (hbc) (and (xad) (not(yad)))) ;; Support.  Cancellation. 
(when (mbc) (and (zad) (not(bbd)))) ;; Support.  Cancellation. 
(when (ubc) (and (cbd) (not(gbd)))) ;; Support.  Cancellation. 
(when (zbc) (and (hbd) (not(jbd)))) ;; Support.  Cancellation. 
(when (hcc) (and (kbd) (not(lbd)))) ;; Support.  Cancellation. 
(when (mcc) (and (mbd) (not(qbd)))) ;; Support.  Cancellation. 
(when (tcc)  (rbd)) ;; Support. 
(when (xcc) (and (tbd) (not(ubd)))) ;; Support.  Cancellation. 
(when (cdc) (and (vbd) (not(xbd)))) ;; Support.  Cancellation. 
(when (kdc) (and (ybd) (not(zbd)))) ;; Support.  Cancellation. 
(when (rdc)  (bcd)) ;; Support. 
(when (xdc) (and (gcd) (not(hcd)))) ;; Support.  Cancellation. 
(when (cec) (and (jcd) (not(kcd)))) ;; Support.  Cancellation. 
(when (kec) (and (lcd) (not(mcd)))) ;; Support.  Cancellation. 
(when (xec) (and (tcd) (not(ucd)))) ;; Support.  Cancellation. 
(when (kfc) (and (ycd) (not(zcd)))) ;; Support.  Cancellation. 
(when (kgc) (and (ldd) (not(mdd)))) ;; Support.  Cancellation. 
(when (xgc) (and (tdd) (not(udd)))) ;; Support.  Cancellation. 
(when (chc) (and (vdd) (not(xdd)))) ;; Support.  Cancellation. 
(when (rhc) (and (bed) (not(ced)))) ;; Support.  Cancellation. 
(when (xhc) (and (ged) (not(hed)))) ;; Support.  Cancellation. 
(when (ryc) (and (tmb) (not(tcc)))) ;; Support.  Cancellation. 
(when (not(qyc))  (not(rmb))) ;; Cancellation. 
(when (uyc) (and (ymb) (not(xmb)))) ;; Support.  Cancellation. 
(when (xyc) (and (gnb) (not(cnb)))) ;; Support.  Cancellation. 
(when (zyc) (and (lnb) (not(knb)))) ;; Support.  Cancellation. 
(when (czc) (and (tnb) (not(rnb)))) ;; Support.  Cancellation. 
(when (hzc) (and (ynb) (not(xnb)))) ;; Support.  Cancellation. 
(when (kzc) (and (gob) (not(cob)))) ;; Support.  Cancellation. 
(when (mzc) (and (lob) (not(kob)))) ;; Support.  Cancellation. 
(when (rzc) (and (tob) (not(rob)))) ;; Support.  Cancellation. 
(when (uzc) (and (yob) (not(xob)))) ;; Support.  Cancellation. 
(when (xzc) (and (gpb) (not(cpb)))) ;; Support.  Cancellation. 
(when (zzc) (and (lpb) (not(kpb)))) ;; Support.  Cancellation. 
(when (c1c) (and (tpb) (not(rpb)))) ;; Support.  Cancellation. 
(when (h1c) (and (ypb) (not(xpb)))) ;; Support.  Cancellation. 
(when (k1c) (and (gqb) (not(cqb)))) ;; Support.  Cancellation. 
(when (m1c) (and (lqb) (not(kqb)))) ;; Support.  Cancellation. 
(when (r1c) (and (tqb) (not(rqb)))) ;; Support.  Cancellation. 
(when (u1c)  (yqb)) ;; Support. 
(when (x1c)  (gsb)) ;; Support. 
(when (z1c)  (lsb)) ;; Support. 
(when (c2c)  (tsb)) ;; Support. 
(when (h2c) (and (ysb) (not(xsb)))) ;; Support.  Cancellation. 
(when (k2c) (and (grb) (not(crb)))) ;; Support.  Cancellation. 
(when (m2c) (and (lrb) (not(krb)))) ;; Support.  Cancellation. 
(when (r2c) (and (trb) (not(rrb)))) ;; Support.  Cancellation. 
(when (u2c)  (yrb)) ;; Support. 
(when (x2c)  (gtb)) ;; Support. 
(when (z2c) (and (ltb) (not(ktb)))) ;; Support.  Cancellation. 
(when (c3c) (and (ttb) (not(rtb)))) ;; Support.  Cancellation. 
(when (h3c)  (ytb)) ;; Support. 
(when (k3c) (and (gub) (not(cub)))) ;; Support.  Cancellation. 
(when (m3c)  (lub)) ;; Support. 
(when (r3c) (and (tub) (not(rub)))) ;; Support.  Cancellation. 
(when (u3c)  (yub)) ;; Support. 
(when (x3c)  (gvb)) ;; Support. 
(when (z3c)  (lvb)) ;; Support. 
(when (b4c)  (qvb)) ;; Support. 
(when (g4c)  (vvb)) ;; Support. 
(when (j4c)  (bwb)) ;; Support. 
(when (l4c)  (jwb)) ;; Support. 
(when (q4c)  (qwb)) ;; Support. 
(when (t4c) (and (vwb) (not(uwb)))) ;; Support.  Cancellation. 
(when (v4c) (and (bxb) (not(zwb)))) ;; Support.  Cancellation. 
(when (y4c) (and (jxb) (not(hxb)))) ;; Support.  Cancellation. 
(when (b5c) (and (qxb) (not(mxb)))) ;; Support.  Cancellation. 
(when (g5c) (and (vxb) (not(uxb)))) ;; Support.  Cancellation. 
(when (j5c) (and (byb) (not(zxb)))) ;; Support.  Cancellation. 
(when (l5c) (and (jyb) (not(hyb)))) ;; Support.  Cancellation. 
(when (q5c) (and (qyb) (not(myb)))) ;; Support.  Cancellation. 
(when (t5c) (and (vyb) (not(uyb)))) ;; Support.  Cancellation. 
(when (v5c) (and (bzb) (not(zyb)))) ;; Support.  Cancellation. 
(when (y5c) (and (jzb) (not(hzb)))) ;; Support.  Cancellation. 
(when (b6c) (and (qzb) (not(mzb)))) ;; Support.  Cancellation. 
(when (g6c) (and (vzb) (not(uzb)))) ;; Support.  Cancellation. 
(when (j6c) (and (b1b) (not(zzb)))) ;; Support.  Cancellation. 
(when (l6c) (and (j1b) (not(h1b)))) ;; Support.  Cancellation. 
(when (q6c) (and (q1b) (not(m1b)))) ;; Support.  Cancellation. 
(when (t6c) (and (v1b) (not(u1b)))) ;; Support.  Cancellation. 
(when (v6c) (and (b2b) (not(z1b)))) ;; Support.  Cancellation. 
(when (y6c) (and (j2b) (not(h2b)))) ;; Support.  Cancellation. 
(when (b7c) (and (q2b) (not(m2b)))) ;; Support.  Cancellation. 
(when (g7c) (and (v2b) (not(u2b)))) ;; Support.  Cancellation. 
(when (j7c) (and (b3b) (not(z2b)))) ;; Support.  Cancellation. 
(when (l7c) (and (j3b) (not(h3b)))) ;; Support.  Cancellation. 
(when (q7c) (and (q3b) (not(m3b)))) ;; Support.  Cancellation. 
(when (t7c)  (v3b)) ;; Support. 
(when (v7c) (and (b4b) (not(z3b)))) ;; Support.  Cancellation. 
(when (b8c) (and (q4b) (not(m4b)))) ;; Support.  Cancellation. 
(when (g8c)  (v4b)) ;; Support. 
(when (l8c) (and (j5b) (not(h5b)))) ;; Support.  Cancellation. 
(when (t8c)  (v5b)) ;; Support. 
(when (v8c) (and (b6b) (not(z5b)))) ;; Support.  Cancellation. 
(when (y8c) (and (j6b) (not(h6b)))) ;; Support.  Cancellation. 
(when (b9c)  (q6b)) ;; Support. 
(when (g9c) (and (v6b) (not(u6b)))) ;; Support.  Cancellation. 
(when (j9c)  (b7b)) ;; Support. 
(when (l9c)  (j7b)) ;; Support. 
(when (q9c) (and (q7b) (not(m7b)))) ;; Support.  Cancellation. 
(when (v9c) (and (b8b) (not(z7b)))) ;; Support.  Cancellation. 
(when (y9c) (and (j8b) (not(h8b)))) ;; Support.  Cancellation. 
(when (g0c) (and (v8b) (not(u8b)))) ;; Support.  Cancellation. 
(when (j0c) (and (b9b) (not(z8b)))) ;; Support.  Cancellation. 
(when (l0c) (and (j9b) (not(h9b)))) ;; Support.  Cancellation. 
(when (q0c) (and (q9b) (not(m9b)))) ;; Support.  Cancellation. 
(when (t0c) (and (v9b) (not(u9b)))) ;; Support.  Cancellation. 
(when (v0c) (and (b0b) (not(z9b)))) ;; Support.  Cancellation. 
(when (y0c) (and (j0b) (not(h0b)))) ;; Support.  Cancellation. 
(when (bad) (and (q0b) (not(m0b)))) ;; Support.  Cancellation. 
(when (gad) (and (v0b) (not(u0b)))) ;; Support.  Cancellation. 
(when (jad) (and (bac) (not(z0b)))) ;; Support.  Cancellation. 
(when (lad) (and (jac) (not(hac)))) ;; Support.  Cancellation. 
(when (qad) (and (qac) (not(mac)))) ;; Support.  Cancellation. 
(when (tad) (and (vac) (not(uac)))) ;; Support.  Cancellation. 
(when (vad) (and (bbc) (not(zac)))) ;; Support.  Cancellation. 
(when (yad) (and (jbc) (not(hbc)))) ;; Support.  Cancellation. 
(when (bbd) (and (qbc) (not(mbc)))) ;; Support.  Cancellation. 
(when (gbd) (and (vbc) (not(ubc)))) ;; Support.  Cancellation. 
(when (jbd) (and (bcc) (not(zbc)))) ;; Support.  Cancellation. 
(when (lbd) (and (jcc) (not(hcc)))) ;; Support.  Cancellation. 
(when (qbd) (and (qcc) (not(mcc)))) ;; Support.  Cancellation. 
(when (ubd) (and (ycc) (not(xcc)))) ;; Support.  Cancellation. 
(when (xbd) (and (gdc) (not(cdc)))) ;; Support.  Cancellation. 
(when (zbd) (and (ldc) (not(kdc)))) ;; Support.  Cancellation. 
(when (hcd) (and (ydc) (not(xdc)))) ;; Support.  Cancellation. 
(when (kcd) (and (gec) (not(cec)))) ;; Support.  Cancellation. 
(when (mcd) (and (lec) (not(kec)))) ;; Support.  Cancellation. 
(when (rcd)  (tec)) ;; Support. 
(when (ucd) (and (yec) (not(xec)))) ;; Support.  Cancellation. 
(when (xcd)  (gfc)) ;; Support. 
(when (zcd) (and (lfc) (not(kfc)))) ;; Support.  Cancellation. 
(when (cdd)  (tfc)) ;; Support. 
(when (mdd) (and (lgc) (not(kgc)))) ;; Support.  Cancellation. 
(when (rdd)  (tgc)) ;; Support. 
(when (udd) (and (ygc) (not(xgc)))) ;; Support.  Cancellation. 
(when (xdd) (and (ghc) (not(chc)))) ;; Support.  Cancellation. 
(when (zdd)  (lhc)) ;; Support. 
(when (ced) (and (thc) (not(rhc)))) ;; Support.  Cancellation. 
(when (hed) (and (yhc) (not(xhc)))) ;; Support.  Cancellation. 
(when (ked)  (gic)) ;; Support. 
))
(:action CMPSWAP_L2_L3
:parameters ()
:precondition (and (mic))

:effect (and  (jxc) (b5b)
(when (myc)  (lic)) ;; Support. 
(when (rmb) (and (qic) (not(bnc)))) ;; Support.  Cancellation. 
(when (not(tmb))  (not(ric))) ;; Cancellation. 
(when (xmb) (and (tic) (not(uic)))) ;; Support.  Cancellation. 
(when (cnb) (and (vic) (not(xic)))) ;; Support.  Cancellation. 
(when (knb) (and (yic) (not(zic)))) ;; Support.  Cancellation. 
(when (rnb) (and (bjc) (not(cjc)))) ;; Support.  Cancellation. 
(when (xnb) (and (gjc) (not(hjc)))) ;; Support.  Cancellation. 
(when (cob) (and (jjc) (not(kjc)))) ;; Support.  Cancellation. 
(when (kob) (and (ljc) (not(mjc)))) ;; Support.  Cancellation. 
(when (rob) (and (qjc) (not(rjc)))) ;; Support.  Cancellation. 
(when (xob) (and (tjc) (not(ujc)))) ;; Support.  Cancellation. 
(when (cpb) (and (vjc) (not(xjc)))) ;; Support.  Cancellation. 
(when (kpb) (and (yjc) (not(zjc)))) ;; Support.  Cancellation. 
(when (rpb) (and (bkc) (not(ckc)))) ;; Support.  Cancellation. 
(when (xpb) (and (gkc) (not(hkc)))) ;; Support.  Cancellation. 
(when (cqb) (and (jkc) (not(kkc)))) ;; Support.  Cancellation. 
(when (kqb) (and (lkc) (not(mkc)))) ;; Support.  Cancellation. 
(when (rqb) (and (qkc) (not(rkc)))) ;; Support.  Cancellation. 
(when (xsb) (and (glc) (not(hlc)))) ;; Support.  Cancellation. 
(when (crb) (and (jlc) (not(klc)))) ;; Support.  Cancellation. 
(when (krb) (and (llc) (not(mlc)))) ;; Support.  Cancellation. 
(when (rrb) (and (qlc) (not(rlc)))) ;; Support.  Cancellation. 
(when (ktb) (and (ylc) (not(zlc)))) ;; Support.  Cancellation. 
(when (rtb) (and (bmc) (not(cmc)))) ;; Support.  Cancellation. 
(when (cub) (and (jmc) (not(kmc)))) ;; Support.  Cancellation. 
(when (rub) (and (qmc) (not(rmc)))) ;; Support.  Cancellation. 
(when (uwb) (and (rnc) (not(tnc)))) ;; Support.  Cancellation. 
(when (zwb) (and (unc) (not(vnc)))) ;; Support.  Cancellation. 
(when (hxb) (and (xnc) (not(ync)))) ;; Support.  Cancellation. 
(when (mxb) (and (znc) (not(boc)))) ;; Support.  Cancellation. 
(when (uxb) (and (coc) (not(goc)))) ;; Support.  Cancellation. 
(when (zxb) (and (hoc) (not(joc)))) ;; Support.  Cancellation. 
(when (hyb) (and (koc) (not(loc)))) ;; Support.  Cancellation. 
(when (myb) (and (moc) (not(qoc)))) ;; Support.  Cancellation. 
(when (uyb) (and (roc) (not(toc)))) ;; Support.  Cancellation. 
(when (zyb) (and (uoc) (not(voc)))) ;; Support.  Cancellation. 
(when (hzb) (and (xoc) (not(yoc)))) ;; Support.  Cancellation. 
(when (mzb) (and (zoc) (not(bpc)))) ;; Support.  Cancellation. 
(when (uzb) (and (cpc) (not(gpc)))) ;; Support.  Cancellation. 
(when (zzb) (and (hpc) (not(jpc)))) ;; Support.  Cancellation. 
(when (h1b) (and (kpc) (not(lpc)))) ;; Support.  Cancellation. 
(when (m1b) (and (mpc) (not(qpc)))) ;; Support.  Cancellation. 
(when (u1b) (and (rpc) (not(tpc)))) ;; Support.  Cancellation. 
(when (z1b) (and (upc) (not(vpc)))) ;; Support.  Cancellation. 
(when (h2b) (and (xpc) (not(ypc)))) ;; Support.  Cancellation. 
(when (m2b) (and (zpc) (not(bqc)))) ;; Support.  Cancellation. 
(when (u2b) (and (cqc) (not(gqc)))) ;; Support.  Cancellation. 
(when (z2b) (and (hqc) (not(jqc)))) ;; Support.  Cancellation. 
(when (h3b) (and (kqc) (not(lqc)))) ;; Support.  Cancellation. 
(when (m3b) (and (mqc) (not(qqc)))) ;; Support.  Cancellation. 
(when (z3b) (and (uqc) (not(vqc)))) ;; Support.  Cancellation. 
(when (m4b) (and (zqc) (not(bsc)))) ;; Support.  Cancellation. 
(when (h5b) (and (ksc) (not(lsc)))) ;; Support.  Cancellation. 
(when (m5b) (and (msc) (not(qsc)))) ;; Support.  Cancellation. 
(when (z5b) (and (usc) (not(vsc)))) ;; Support.  Cancellation. 
(when (h6b) (and (xsc) (not(ysc)))) ;; Support.  Cancellation. 
(when (u6b) (and (crc) (not(grc)))) ;; Support.  Cancellation. 
(when (m7b) (and (mrc) (not(qrc)))) ;; Support.  Cancellation. 
(when (u7b) (and (rrc) (not(trc)))) ;; Support.  Cancellation. 
(when (z7b) (and (urc) (not(vrc)))) ;; Support.  Cancellation. 
(when (h8b) (and (xrc) (not(yrc)))) ;; Support.  Cancellation. 
(when (m8b) (and (zrc) (not(btc)))) ;; Support.  Cancellation. 
(when (u8b) (and (ctc) (not(gtc)))) ;; Support.  Cancellation. 
(when (z8b) (and (htc) (not(jtc)))) ;; Support.  Cancellation. 
(when (h9b) (and (ktc) (not(ltc)))) ;; Support.  Cancellation. 
(when (m9b) (and (mtc) (not(qtc)))) ;; Support.  Cancellation. 
(when (u9b) (and (rtc) (not(ttc)))) ;; Support.  Cancellation. 
(when (z9b) (and (utc) (not(vtc)))) ;; Support.  Cancellation. 
(when (h0b) (and (xtc) (not(ytc)))) ;; Support.  Cancellation. 
(when (m0b) (and (ztc) (not(buc)))) ;; Support.  Cancellation. 
(when (u0b) (and (cuc) (not(guc)))) ;; Support.  Cancellation. 
(when (z0b) (and (huc) (not(juc)))) ;; Support.  Cancellation. 
(when (hac) (and (kuc) (not(luc)))) ;; Support.  Cancellation. 
(when (mac) (and (muc) (not(quc)))) ;; Support.  Cancellation. 
(when (uac) (and (ruc) (not(tuc)))) ;; Support.  Cancellation. 
(when (zac) (and (uuc) (not(vuc)))) ;; Support.  Cancellation. 
(when (hbc) (and (xuc) (not(yuc)))) ;; Support.  Cancellation. 
(when (mbc) (and (zuc) (not(bvc)))) ;; Support.  Cancellation. 
(when (ubc) (and (cvc) (not(gvc)))) ;; Support.  Cancellation. 
(when (zbc) (and (hvc) (not(jvc)))) ;; Support.  Cancellation. 
(when (hcc) (and (kvc) (not(lvc)))) ;; Support.  Cancellation. 
(when (mcc) (and (mvc) (not(qvc)))) ;; Support.  Cancellation. 
(when (tcc)  (rvc)) ;; Support. 
(when (xcc) (and (tvc) (not(uvc)))) ;; Support.  Cancellation. 
(when (cdc) (and (vvc) (not(xvc)))) ;; Support.  Cancellation. 
(when (kdc) (and (yvc) (not(zvc)))) ;; Support.  Cancellation. 
(when (rdc)  (bwc)) ;; Support. 
(when (xdc) (and (gwc) (not(hwc)))) ;; Support.  Cancellation. 
(when (cec) (and (jwc) (not(kwc)))) ;; Support.  Cancellation. 
(when (kec) (and (lwc) (not(mwc)))) ;; Support.  Cancellation. 
(when (xec) (and (twc) (not(uwc)))) ;; Support.  Cancellation. 
(when (kfc) (and (ywc) (not(zwc)))) ;; Support.  Cancellation. 
(when (kgc) (and (lxc) (not(mxc)))) ;; Support.  Cancellation. 
(when (xgc) (and (txc) (not(uxc)))) ;; Support.  Cancellation. 
(when (chc) (and (vxc) (not(xxc)))) ;; Support.  Cancellation. 
(when (rhc) (and (byc) (not(cyc)))) ;; Support.  Cancellation. 
(when (xhc) (and (gyc) (not(hyc)))) ;; Support.  Cancellation. 
(when (ric) (and (tmb) (not(tcc)))) ;; Support.  Cancellation. 
(when (not(qic))  (not(rmb))) ;; Cancellation. 
(when (uic) (and (ymb) (not(xmb)))) ;; Support.  Cancellation. 
(when (xic) (and (gnb) (not(cnb)))) ;; Support.  Cancellation. 
(when (zic) (and (lnb) (not(knb)))) ;; Support.  Cancellation. 
(when (cjc) (and (tnb) (not(rnb)))) ;; Support.  Cancellation. 
(when (hjc) (and (ynb) (not(xnb)))) ;; Support.  Cancellation. 
(when (kjc) (and (gob) (not(cob)))) ;; Support.  Cancellation. 
(when (mjc) (and (lob) (not(kob)))) ;; Support.  Cancellation. 
(when (rjc) (and (tob) (not(rob)))) ;; Support.  Cancellation. 
(when (ujc) (and (yob) (not(xob)))) ;; Support.  Cancellation. 
(when (xjc) (and (gpb) (not(cpb)))) ;; Support.  Cancellation. 
(when (zjc) (and (lpb) (not(kpb)))) ;; Support.  Cancellation. 
(when (ckc) (and (tpb) (not(rpb)))) ;; Support.  Cancellation. 
(when (hkc) (and (ypb) (not(xpb)))) ;; Support.  Cancellation. 
(when (kkc) (and (gqb) (not(cqb)))) ;; Support.  Cancellation. 
(when (mkc) (and (lqb) (not(kqb)))) ;; Support.  Cancellation. 
(when (rkc) (and (tqb) (not(rqb)))) ;; Support.  Cancellation. 
(when (ukc)  (yqb)) ;; Support. 
(when (xkc)  (gsb)) ;; Support. 
(when (zkc)  (lsb)) ;; Support. 
(when (clc)  (tsb)) ;; Support. 
(when (hlc) (and (ysb) (not(xsb)))) ;; Support.  Cancellation. 
(when (klc) (and (grb) (not(crb)))) ;; Support.  Cancellation. 
(when (mlc) (and (lrb) (not(krb)))) ;; Support.  Cancellation. 
(when (rlc) (and (trb) (not(rrb)))) ;; Support.  Cancellation. 
(when (ulc)  (yrb)) ;; Support. 
(when (xlc)  (gtb)) ;; Support. 
(when (zlc) (and (ltb) (not(ktb)))) ;; Support.  Cancellation. 
(when (cmc) (and (ttb) (not(rtb)))) ;; Support.  Cancellation. 
(when (hmc)  (ytb)) ;; Support. 
(when (kmc) (and (gub) (not(cub)))) ;; Support.  Cancellation. 
(when (mmc)  (lub)) ;; Support. 
(when (rmc) (and (tub) (not(rub)))) ;; Support.  Cancellation. 
(when (umc)  (yub)) ;; Support. 
(when (xmc)  (gvb)) ;; Support. 
(when (zmc)  (lvb)) ;; Support. 
(when (bnc)  (qvb)) ;; Support. 
(when (gnc)  (vvb)) ;; Support. 
(when (jnc)  (bwb)) ;; Support. 
(when (lnc)  (jwb)) ;; Support. 
(when (qnc)  (qwb)) ;; Support. 
(when (tnc) (and (vwb) (not(uwb)))) ;; Support.  Cancellation. 
(when (vnc) (and (bxb) (not(zwb)))) ;; Support.  Cancellation. 
(when (ync) (and (jxb) (not(hxb)))) ;; Support.  Cancellation. 
(when (boc) (and (qxb) (not(mxb)))) ;; Support.  Cancellation. 
(when (goc) (and (vxb) (not(uxb)))) ;; Support.  Cancellation. 
(when (joc) (and (byb) (not(zxb)))) ;; Support.  Cancellation. 
(when (loc) (and (jyb) (not(hyb)))) ;; Support.  Cancellation. 
(when (qoc) (and (qyb) (not(myb)))) ;; Support.  Cancellation. 
(when (toc) (and (vyb) (not(uyb)))) ;; Support.  Cancellation. 
(when (voc) (and (bzb) (not(zyb)))) ;; Support.  Cancellation. 
(when (yoc) (and (jzb) (not(hzb)))) ;; Support.  Cancellation. 
(when (bpc) (and (qzb) (not(mzb)))) ;; Support.  Cancellation. 
(when (gpc) (and (vzb) (not(uzb)))) ;; Support.  Cancellation. 
(when (jpc) (and (b1b) (not(zzb)))) ;; Support.  Cancellation. 
(when (lpc) (and (j1b) (not(h1b)))) ;; Support.  Cancellation. 
(when (qpc) (and (q1b) (not(m1b)))) ;; Support.  Cancellation. 
(when (tpc) (and (v1b) (not(u1b)))) ;; Support.  Cancellation. 
(when (vpc) (and (b2b) (not(z1b)))) ;; Support.  Cancellation. 
(when (ypc) (and (j2b) (not(h2b)))) ;; Support.  Cancellation. 
(when (bqc) (and (q2b) (not(m2b)))) ;; Support.  Cancellation. 
(when (gqc) (and (v2b) (not(u2b)))) ;; Support.  Cancellation. 
(when (jqc) (and (b3b) (not(z2b)))) ;; Support.  Cancellation. 
(when (lqc) (and (j3b) (not(h3b)))) ;; Support.  Cancellation. 
(when (qqc) (and (q3b) (not(m3b)))) ;; Support.  Cancellation. 
(when (tqc)  (v3b)) ;; Support. 
(when (vqc) (and (b4b) (not(z3b)))) ;; Support.  Cancellation. 
(when (yqc)  (j4b)) ;; Support. 
(when (bsc) (and (q4b) (not(m4b)))) ;; Support.  Cancellation. 
(when (gsc)  (v4b)) ;; Support. 
(when (lsc) (and (j5b) (not(h5b)))) ;; Support.  Cancellation. 
(when (qsc) (and (q5b) (not(m5b)))) ;; Support.  Cancellation. 
(when (tsc)  (v5b)) ;; Support. 
(when (vsc) (and (b6b) (not(z5b)))) ;; Support.  Cancellation. 
(when (ysc) (and (j6b) (not(h6b)))) ;; Support.  Cancellation. 
(when (brc)  (q6b)) ;; Support. 
(when (grc) (and (v6b) (not(u6b)))) ;; Support.  Cancellation. 
(when (jrc)  (b7b)) ;; Support. 
(when (lrc)  (j7b)) ;; Support. 
(when (qrc) (and (q7b) (not(m7b)))) ;; Support.  Cancellation. 
(when (trc) (and (v7b) (not(u7b)))) ;; Support.  Cancellation. 
(when (vrc) (and (b8b) (not(z7b)))) ;; Support.  Cancellation. 
(when (yrc) (and (j8b) (not(h8b)))) ;; Support.  Cancellation. 
(when (btc) (and (q8b) (not(m8b)))) ;; Support.  Cancellation. 
(when (gtc) (and (v8b) (not(u8b)))) ;; Support.  Cancellation. 
(when (jtc) (and (b9b) (not(z8b)))) ;; Support.  Cancellation. 
(when (ltc) (and (j9b) (not(h9b)))) ;; Support.  Cancellation. 
(when (qtc) (and (q9b) (not(m9b)))) ;; Support.  Cancellation. 
(when (ttc) (and (v9b) (not(u9b)))) ;; Support.  Cancellation. 
(when (vtc) (and (b0b) (not(z9b)))) ;; Support.  Cancellation. 
(when (ytc) (and (j0b) (not(h0b)))) ;; Support.  Cancellation. 
(when (buc) (and (q0b) (not(m0b)))) ;; Support.  Cancellation. 
(when (guc) (and (v0b) (not(u0b)))) ;; Support.  Cancellation. 
(when (juc) (and (bac) (not(z0b)))) ;; Support.  Cancellation. 
(when (luc) (and (jac) (not(hac)))) ;; Support.  Cancellation. 
(when (quc) (and (qac) (not(mac)))) ;; Support.  Cancellation. 
(when (tuc) (and (vac) (not(uac)))) ;; Support.  Cancellation. 
(when (vuc) (and (bbc) (not(zac)))) ;; Support.  Cancellation. 
(when (yuc) (and (jbc) (not(hbc)))) ;; Support.  Cancellation. 
(when (bvc) (and (qbc) (not(mbc)))) ;; Support.  Cancellation. 
(when (gvc) (and (vbc) (not(ubc)))) ;; Support.  Cancellation. 
(when (jvc) (and (bcc) (not(zbc)))) ;; Support.  Cancellation. 
(when (lvc) (and (jcc) (not(hcc)))) ;; Support.  Cancellation. 
(when (qvc) (and (qcc) (not(mcc)))) ;; Support.  Cancellation. 
(when (uvc) (and (ycc) (not(xcc)))) ;; Support.  Cancellation. 
(when (xvc) (and (gdc) (not(cdc)))) ;; Support.  Cancellation. 
(when (zvc) (and (ldc) (not(kdc)))) ;; Support.  Cancellation. 
(when (hwc) (and (ydc) (not(xdc)))) ;; Support.  Cancellation. 
(when (kwc) (and (gec) (not(cec)))) ;; Support.  Cancellation. 
(when (mwc) (and (lec) (not(kec)))) ;; Support.  Cancellation. 
(when (rwc)  (tec)) ;; Support. 
(when (uwc) (and (yec) (not(xec)))) ;; Support.  Cancellation. 
(when (xwc)  (gfc)) ;; Support. 
(when (zwc) (and (lfc) (not(kfc)))) ;; Support.  Cancellation. 
(when (cxc)  (tfc)) ;; Support. 
(when (mxc) (and (lgc) (not(kgc)))) ;; Support.  Cancellation. 
(when (rxc)  (tgc)) ;; Support. 
(when (uxc) (and (ygc) (not(xgc)))) ;; Support.  Cancellation. 
(when (xxc) (and (ghc) (not(chc)))) ;; Support.  Cancellation. 
(when (zxc)  (lhc)) ;; Support. 
(when (cyc) (and (thc) (not(rhc)))) ;; Support.  Cancellation. 
(when (hyc) (and (yhc) (not(xhc)))) ;; Support.  Cancellation. 
(when (kyc)  (gic)) ;; Support. 
))
(:action CMPSWAP_L1_L7
:parameters ()
:precondition (and (mic))

:effect (and  (not(rae)) (not(mmb)) (rne) (mvb)
(when (kqe)  (bic)) ;; Support. 
(when (mmb) (and (qae) (not(bfe)))) ;; Support.  Cancellation. 
(when (umb)  (tae)) ;; Support. 
(when (zmb)  (vae)) ;; Support. 
(when (hnb)  (yae)) ;; Support. 
(when (mnb)  (bbe)) ;; Support. 
(when (unb)  (gbe)) ;; Support. 
(when (znb)  (jbe)) ;; Support. 
(when (hob)  (lbe)) ;; Support. 
(when (mob)  (qbe)) ;; Support. 
(when (uob)  (tbe)) ;; Support. 
(when (zob)  (vbe)) ;; Support. 
(when (hpb)  (ybe)) ;; Support. 
(when (mpb)  (bce)) ;; Support. 
(when (upb)  (gce)) ;; Support. 
(when (zpb)  (jce)) ;; Support. 
(when (hqb)  (lce)) ;; Support. 
(when (mqb)  (qce)) ;; Support. 
(when (rwb) (and (rfe) (not(tfe)))) ;; Support.  Cancellation. 
(when (xwb) (and (ufe) (not(vfe)))) ;; Support.  Cancellation. 
(when (cxb) (and (xfe) (not(yfe)))) ;; Support.  Cancellation. 
(when (kxb) (and (zfe) (not(bge)))) ;; Support.  Cancellation. 
(when (rxb) (and (cge) (not(gge)))) ;; Support.  Cancellation. 
(when (xxb) (and (hge) (not(jge)))) ;; Support.  Cancellation. 
(when (cyb) (and (kge) (not(lge)))) ;; Support.  Cancellation. 
(when (kyb) (and (mge) (not(qge)))) ;; Support.  Cancellation. 
(when (xyb) (and (uge) (not(vge)))) ;; Support.  Cancellation. 
(when (czb) (and (xge) (not(yge)))) ;; Support.  Cancellation. 
(when (rzb) (and (che) (not(ghe)))) ;; Support.  Cancellation. 
(when (c1b) (and (khe) (not(lhe)))) ;; Support.  Cancellation. 
(when (c2b) (and (xhe) (not(yhe)))) ;; Support.  Cancellation. 
(when (k2b) (and (zhe) (not(bie)))) ;; Support.  Cancellation. 
(when (c3b) (and (kie) (not(lie)))) ;; Support.  Cancellation. 
(when (k3b) (and (mie) (not(qie)))) ;; Support.  Cancellation. 
(when (r7b)  (rke)) ;; Support. 
(when (x7b) (and (uke) (not(vke)))) ;; Support.  Cancellation. 
(when (c8b) (and (xke) (not(yke)))) ;; Support.  Cancellation. 
(when (k8b)  (zke)) ;; Support. 
(when (r8b) (and (cle) (not(gle)))) ;; Support.  Cancellation. 
(when (x8b)  (hle)) ;; Support. 
(when (c9b)  (kle)) ;; Support. 
(when (k9b) (and (mle) (not(qle)))) ;; Support.  Cancellation. 
(when (r9b)  (rle)) ;; Support. 
(when (x9b)  (ule)) ;; Support. 
(when (c0b)  (xle)) ;; Support. 
(when (k0b)  (zle)) ;; Support. 
(when (r0b) (and (cme) (not(gme)))) ;; Support.  Cancellation. 
(when (x0b) (and (hme) (not(jme)))) ;; Support.  Cancellation. 
(when (cac) (and (kme) (not(lme)))) ;; Support.  Cancellation. 
(when (kac) (and (mme) (not(qme)))) ;; Support.  Cancellation. 
(when (rac) (and (rme) (not(tme)))) ;; Support.  Cancellation. 
(when (xac) (and (ume) (not(vme)))) ;; Support.  Cancellation. 
(when (cbc) (and (xme) (not(yme)))) ;; Support.  Cancellation. 
(when (kbc) (and (zme) (not(bne)))) ;; Support.  Cancellation. 
(when (rbc) (and (cne) (not(gne)))) ;; Support.  Cancellation. 
(when (xbc) (and (hne) (not(jne)))) ;; Support.  Cancellation. 
(when (ccc) (and (kne) (not(lne)))) ;; Support.  Cancellation. 
(when (kcc) (and (mne) (not(qne)))) ;; Support.  Cancellation. 
(when (ucc)  (tne)) ;; Support. 
(when (zcc)  (vne)) ;; Support. 
(when (hdc)  (yne)) ;; Support. 
(when (mdc)  (boe)) ;; Support. 
(when (udc)  (goe)) ;; Support. 
(when (zdc)  (joe)) ;; Support. 
(when (hec)  (loe)) ;; Support. 
(when (rae) (and (qmb) (not(rcc)))) ;; Support.  Cancellation. 
(when (uee)  (vub)) ;; Support. 
(when (xee)  (bvb)) ;; Support. 
(when (zee)  (jvb)) ;; Support. 
(when (gfe)  (tvb)) ;; Support. 
(when (jfe)  (yvb)) ;; Support. 
(when (lfe)  (gwb)) ;; Support. 
(when (qfe)  (lwb)) ;; Support. 
(when (tfe) (and (twb) (not(rwb)))) ;; Support.  Cancellation. 
(when (vfe) (and (ywb) (not(xwb)))) ;; Support.  Cancellation. 
(when (yfe) (and (gxb) (not(cxb)))) ;; Support.  Cancellation. 
(when (bge) (and (lxb) (not(kxb)))) ;; Support.  Cancellation. 
(when (gge) (and (txb) (not(rxb)))) ;; Support.  Cancellation. 
(when (jge) (and (yxb) (not(xxb)))) ;; Support.  Cancellation. 
(when (lge) (and (gyb) (not(cyb)))) ;; Support.  Cancellation. 
(when (qge) (and (lyb) (not(kyb)))) ;; Support.  Cancellation. 
(when (tge)  (tyb)) ;; Support. 
(when (vge) (and (yyb) (not(xyb)))) ;; Support.  Cancellation. 
(when (yge) (and (gzb) (not(czb)))) ;; Support.  Cancellation. 
(when (bhe)  (lzb)) ;; Support. 
(when (ghe) (and (tzb) (not(rzb)))) ;; Support.  Cancellation. 
(when (jhe)  (yzb)) ;; Support. 
(when (lhe) (and (g1b) (not(c1b)))) ;; Support.  Cancellation. 
(when (qhe)  (l1b)) ;; Support. 
(when (the)  (t1b)) ;; Support. 
(when (vhe)  (y1b)) ;; Support. 
(when (yhe) (and (g2b) (not(c2b)))) ;; Support.  Cancellation. 
(when (bie) (and (l2b) (not(k2b)))) ;; Support.  Cancellation. 
(when (gie)  (t2b)) ;; Support. 
(when (jie)  (y2b)) ;; Support. 
(when (lie) (and (g3b) (not(c3b)))) ;; Support.  Cancellation. 
(when (qie) (and (l3b) (not(k3b)))) ;; Support.  Cancellation. 
(when (tje)  (t5b)) ;; Support. 
(when (vje)  (y5b)) ;; Support. 
(when (yje)  (g6b)) ;; Support. 
(when (bke)  (l6b)) ;; Support. 
(when (gke)  (t6b)) ;; Support. 
(when (jke)  (y6b)) ;; Support. 
(when (lke)  (g7b)) ;; Support. 
(when (qke)  (l7b)) ;; Support. 
(when (vke) (and (y7b) (not(x7b)))) ;; Support.  Cancellation. 
(when (yke) (and (g8b) (not(c8b)))) ;; Support.  Cancellation. 
(when (gle) (and (t8b) (not(r8b)))) ;; Support.  Cancellation. 
(when (qle) (and (l9b) (not(k9b)))) ;; Support.  Cancellation. 
(when (gme) (and (t0b) (not(r0b)))) ;; Support.  Cancellation. 
(when (jme) (and (y0b) (not(x0b)))) ;; Support.  Cancellation. 
(when (lme) (and (gac) (not(cac)))) ;; Support.  Cancellation. 
(when (qme) (and (lac) (not(kac)))) ;; Support.  Cancellation. 
(when (tme) (and (tac) (not(rac)))) ;; Support.  Cancellation. 
(when (vme) (and (yac) (not(xac)))) ;; Support.  Cancellation. 
(when (yme) (and (gbc) (not(cbc)))) ;; Support.  Cancellation. 
(when (bne) (and (lbc) (not(kbc)))) ;; Support.  Cancellation. 
(when (gne) (and (tbc) (not(rbc)))) ;; Support.  Cancellation. 
(when (jne) (and (ybc) (not(xbc)))) ;; Support.  Cancellation. 
(when (lne) (and (gcc) (not(ccc)))) ;; Support.  Cancellation. 
(when (qne) (and (lcc) (not(kcc)))) ;; Support.  Cancellation. 
(when (xoe)  (bfc)) ;; Support. 
(when (zoe)  (jfc)) ;; Support. 
(when (cpe)  (qfc)) ;; Support. 
(when (mpe)  (jgc)) ;; Support. 
(when (rpe)  (qgc)) ;; Support. 
(when (upe)  (vgc)) ;; Support. 
(when (cqe)  (qhc)) ;; Support. 
))
(:action CMPSWAP_L1_L6
:parameters ()
:precondition (and (mic))

:effect (and  (vrb) (not(rud)) (r8d)
(when (kae)  (bic)) ;; Support. 
(when (mmb) (and (qud) (not(bzd)))) ;; Support.  Cancellation. 
(when (umb) (and (tud) (not(uud)))) ;; Support.  Cancellation. 
(when (zmb) (and (vud) (not(xud)))) ;; Support.  Cancellation. 
(when (hnb) (and (yud) (not(zud)))) ;; Support.  Cancellation. 
(when (mnb) (and (bvd) (not(cvd)))) ;; Support.  Cancellation. 
(when (unb) (and (gvd) (not(hvd)))) ;; Support.  Cancellation. 
(when (znb) (and (jvd) (not(kvd)))) ;; Support.  Cancellation. 
(when (hob) (and (lvd) (not(mvd)))) ;; Support.  Cancellation. 
(when (mob) (and (qvd) (not(rvd)))) ;; Support.  Cancellation. 
(when (uob) (and (tvd) (not(uvd)))) ;; Support.  Cancellation. 
(when (zob) (and (vvd) (not(xvd)))) ;; Support.  Cancellation. 
(when (hpb) (and (yvd) (not(zvd)))) ;; Support.  Cancellation. 
(when (mpb) (and (bwd) (not(cwd)))) ;; Support.  Cancellation. 
(when (upb) (and (gwd) (not(hwd)))) ;; Support.  Cancellation. 
(when (zpb) (and (jwd) (not(kwd)))) ;; Support.  Cancellation. 
(when (hqb) (and (lwd) (not(mwd)))) ;; Support.  Cancellation. 
(when (mqb) (and (qwd) (not(rwd)))) ;; Support.  Cancellation. 
(when (rwb) (and (rzd) (not(tzd)))) ;; Support.  Cancellation. 
(when (xwb) (and (uzd) (not(vzd)))) ;; Support.  Cancellation. 
(when (cxb) (and (xzd) (not(yzd)))) ;; Support.  Cancellation. 
(when (kxb) (and (zzd) (not(b1d)))) ;; Support.  Cancellation. 
(when (rxb) (and (c1d) (not(g1d)))) ;; Support.  Cancellation. 
(when (xxb) (and (h1d) (not(j1d)))) ;; Support.  Cancellation. 
(when (cyb) (and (k1d) (not(l1d)))) ;; Support.  Cancellation. 
(when (kyb) (and (m1d) (not(q1d)))) ;; Support.  Cancellation. 
(when (xyb) (and (u1d) (not(v1d)))) ;; Support.  Cancellation. 
(when (czb) (and (x1d) (not(y1d)))) ;; Support.  Cancellation. 
(when (rzb) (and (c2d) (not(g2d)))) ;; Support.  Cancellation. 
(when (c1b) (and (k2d) (not(l2d)))) ;; Support.  Cancellation. 
(when (c2b) (and (x2d) (not(y2d)))) ;; Support.  Cancellation. 
(when (k2b) (and (z2d) (not(b3d)))) ;; Support.  Cancellation. 
(when (c3b) (and (k3d) (not(l3d)))) ;; Support.  Cancellation. 
(when (k3b) (and (m3d) (not(q3d)))) ;; Support.  Cancellation. 
(when (r7b)  (r5d)) ;; Support. 
(when (x7b) (and (u5d) (not(v5d)))) ;; Support.  Cancellation. 
(when (c8b) (and (x5d) (not(y5d)))) ;; Support.  Cancellation. 
(when (k8b)  (z5d)) ;; Support. 
(when (r8b) (and (c6d) (not(g6d)))) ;; Support.  Cancellation. 
(when (x8b)  (h6d)) ;; Support. 
(when (c9b)  (k6d)) ;; Support. 
(when (k9b) (and (m6d) (not(q6d)))) ;; Support.  Cancellation. 
(when (r9b)  (r6d)) ;; Support. 
(when (x9b)  (u6d)) ;; Support. 
(when (c0b)  (x6d)) ;; Support. 
(when (k0b)  (z6d)) ;; Support. 
(when (r0b) (and (c7d) (not(g7d)))) ;; Support.  Cancellation. 
(when (x0b) (and (h7d) (not(j7d)))) ;; Support.  Cancellation. 
(when (cac) (and (k7d) (not(l7d)))) ;; Support.  Cancellation. 
(when (kac) (and (m7d) (not(q7d)))) ;; Support.  Cancellation. 
(when (rac) (and (r7d) (not(t7d)))) ;; Support.  Cancellation. 
(when (xac) (and (u7d) (not(v7d)))) ;; Support.  Cancellation. 
(when (cbc) (and (x7d) (not(y7d)))) ;; Support.  Cancellation. 
(when (kbc) (and (z7d) (not(b8d)))) ;; Support.  Cancellation. 
(when (rbc) (and (c8d) (not(g8d)))) ;; Support.  Cancellation. 
(when (xbc) (and (h8d) (not(j8d)))) ;; Support.  Cancellation. 
(when (ccc) (and (k8d) (not(l8d)))) ;; Support.  Cancellation. 
(when (kcc) (and (m8d) (not(q8d)))) ;; Support.  Cancellation. 
(when (ucc)  (t8d)) ;; Support. 
(when (zcc)  (v8d)) ;; Support. 
(when (hdc)  (y8d)) ;; Support. 
(when (mdc)  (b9d)) ;; Support. 
(when (udc)  (g9d)) ;; Support. 
(when (zdc)  (j9d)) ;; Support. 
(when (hec)  (l9d)) ;; Support. 
(when (rud) (and (qmb) (not(rcc)))) ;; Support.  Cancellation. 
(when (not(qud))  (not(mmb))) ;; Cancellation. 
(when (uud) (and (vmb) (not(umb)))) ;; Support.  Cancellation. 
(when (xud) (and (bnb) (not(zmb)))) ;; Support.  Cancellation. 
(when (zud) (and (jnb) (not(hnb)))) ;; Support.  Cancellation. 
(when (cvd) (and (qnb) (not(mnb)))) ;; Support.  Cancellation. 
(when (hvd) (and (vnb) (not(unb)))) ;; Support.  Cancellation. 
(when (kvd) (and (bob) (not(znb)))) ;; Support.  Cancellation. 
(when (mvd) (and (job) (not(hob)))) ;; Support.  Cancellation. 
(when (rvd) (and (qob) (not(mob)))) ;; Support.  Cancellation. 
(when (uvd) (and (vob) (not(uob)))) ;; Support.  Cancellation. 
(when (xvd) (and (bpb) (not(zob)))) ;; Support.  Cancellation. 
(when (zvd) (and (jpb) (not(hpb)))) ;; Support.  Cancellation. 
(when (cwd) (and (qpb) (not(mpb)))) ;; Support.  Cancellation. 
(when (hwd) (and (vpb) (not(upb)))) ;; Support.  Cancellation. 
(when (kwd) (and (bqb) (not(zpb)))) ;; Support.  Cancellation. 
(when (mwd) (and (jqb) (not(hqb)))) ;; Support.  Cancellation. 
(when (rwd) (and (qqb) (not(mqb)))) ;; Support.  Cancellation. 
(when (uwd)  (vqb)) ;; Support. 
(when (xwd)  (bsb)) ;; Support. 
(when (zwd)  (jsb)) ;; Support. 
(when (cxd)  (qsb)) ;; Support. 
(when (hxd)  (vsb)) ;; Support. 
(when (kxd)  (brb)) ;; Support. 
(when (mxd)  (jrb)) ;; Support. 
(when (rxd)  (qrb)) ;; Support. 
(when (xxd)  (btb)) ;; Support. 
(when (zxd)  (jtb)) ;; Support. 
(when (cyd)  (qtb)) ;; Support. 
(when (hyd)  (vtb)) ;; Support. 
(when (kyd)  (bub)) ;; Support. 
(when (myd)  (jub)) ;; Support. 
(when (ryd)  (qub)) ;; Support. 
(when (uyd)  (vub)) ;; Support. 
(when (xyd)  (bvb)) ;; Support. 
(when (zyd)  (jvb)) ;; Support. 
(when (bzd)  (mvb)) ;; Support. 
(when (gzd)  (tvb)) ;; Support. 
(when (jzd)  (yvb)) ;; Support. 
(when (lzd)  (gwb)) ;; Support. 
(when (qzd)  (lwb)) ;; Support. 
(when (tzd) (and (twb) (not(rwb)))) ;; Support.  Cancellation. 
(when (vzd) (and (ywb) (not(xwb)))) ;; Support.  Cancellation. 
(when (yzd) (and (gxb) (not(cxb)))) ;; Support.  Cancellation. 
(when (b1d) (and (lxb) (not(kxb)))) ;; Support.  Cancellation. 
(when (g1d) (and (txb) (not(rxb)))) ;; Support.  Cancellation. 
(when (j1d) (and (yxb) (not(xxb)))) ;; Support.  Cancellation. 
(when (l1d) (and (gyb) (not(cyb)))) ;; Support.  Cancellation. 
(when (q1d) (and (lyb) (not(kyb)))) ;; Support.  Cancellation. 
(when (t1d)  (tyb)) ;; Support. 
(when (v1d) (and (yyb) (not(xyb)))) ;; Support.  Cancellation. 
(when (y1d) (and (gzb) (not(czb)))) ;; Support.  Cancellation. 
(when (b2d)  (lzb)) ;; Support. 
(when (g2d) (and (tzb) (not(rzb)))) ;; Support.  Cancellation. 
(when (j2d)  (yzb)) ;; Support. 
(when (l2d) (and (g1b) (not(c1b)))) ;; Support.  Cancellation. 
(when (q2d)  (l1b)) ;; Support. 
(when (t2d)  (t1b)) ;; Support. 
(when (v2d)  (y1b)) ;; Support. 
(when (y2d) (and (g2b) (not(c2b)))) ;; Support.  Cancellation. 
(when (b3d) (and (l2b) (not(k2b)))) ;; Support.  Cancellation. 
(when (g3d)  (t2b)) ;; Support. 
(when (j3d)  (y2b)) ;; Support. 
(when (l3d) (and (g3b) (not(c3b)))) ;; Support.  Cancellation. 
(when (q3d) (and (l3b) (not(k3b)))) ;; Support.  Cancellation. 
(when (t4d)  (t5b)) ;; Support. 
(when (v4d)  (y5b)) ;; Support. 
(when (y4d)  (g6b)) ;; Support. 
(when (b5d)  (l6b)) ;; Support. 
(when (g5d)  (t6b)) ;; Support. 
(when (j5d)  (y6b)) ;; Support. 
(when (l5d)  (g7b)) ;; Support. 
(when (q5d)  (l7b)) ;; Support. 
(when (v5d) (and (y7b) (not(x7b)))) ;; Support.  Cancellation. 
(when (y5d) (and (g8b) (not(c8b)))) ;; Support.  Cancellation. 
(when (g6d) (and (t8b) (not(r8b)))) ;; Support.  Cancellation. 
(when (q6d) (and (l9b) (not(k9b)))) ;; Support.  Cancellation. 
(when (g7d) (and (t0b) (not(r0b)))) ;; Support.  Cancellation. 
(when (j7d) (and (y0b) (not(x0b)))) ;; Support.  Cancellation. 
(when (l7d) (and (gac) (not(cac)))) ;; Support.  Cancellation. 
(when (q7d) (and (lac) (not(kac)))) ;; Support.  Cancellation. 
(when (t7d) (and (tac) (not(rac)))) ;; Support.  Cancellation. 
(when (v7d) (and (yac) (not(xac)))) ;; Support.  Cancellation. 
(when (y7d) (and (gbc) (not(cbc)))) ;; Support.  Cancellation. 
(when (b8d) (and (lbc) (not(kbc)))) ;; Support.  Cancellation. 
(when (g8d) (and (tbc) (not(rbc)))) ;; Support.  Cancellation. 
(when (j8d) (and (ybc) (not(xbc)))) ;; Support.  Cancellation. 
(when (l8d) (and (gcc) (not(ccc)))) ;; Support.  Cancellation. 
(when (q8d) (and (lcc) (not(kcc)))) ;; Support.  Cancellation. 
(when (x9d)  (bfc)) ;; Support. 
(when (z9d)  (jfc)) ;; Support. 
(when (c0d)  (qfc)) ;; Support. 
(when (m0d)  (jgc)) ;; Support. 
(when (r0d)  (qgc)) ;; Support. 
(when (u0d)  (vgc)) ;; Support. 
(when (cae)  (qhc)) ;; Support. 
))
(:action CMPSWAP_L1_L5
:parameters ()
:precondition (and (mic))

:effect (and  (rsd) (not(red)) (t3b)
(when (kud)  (bic)) ;; Support. 
(when (mmb) (and (qed) (not(bjd)))) ;; Support.  Cancellation. 
(when (umb) (and (ted) (not(ued)))) ;; Support.  Cancellation. 
(when (zmb) (and (ved) (not(xed)))) ;; Support.  Cancellation. 
(when (hnb) (and (yed) (not(zed)))) ;; Support.  Cancellation. 
(when (mnb) (and (bfd) (not(cfd)))) ;; Support.  Cancellation. 
(when (unb) (and (gfd) (not(hfd)))) ;; Support.  Cancellation. 
(when (znb) (and (jfd) (not(kfd)))) ;; Support.  Cancellation. 
(when (hob) (and (lfd) (not(mfd)))) ;; Support.  Cancellation. 
(when (mob) (and (qfd) (not(rfd)))) ;; Support.  Cancellation. 
(when (uob) (and (tfd) (not(ufd)))) ;; Support.  Cancellation. 
(when (zob) (and (vfd) (not(xfd)))) ;; Support.  Cancellation. 
(when (hpb) (and (yfd) (not(zfd)))) ;; Support.  Cancellation. 
(when (mpb) (and (bgd) (not(cgd)))) ;; Support.  Cancellation. 
(when (upb) (and (ggd) (not(hgd)))) ;; Support.  Cancellation. 
(when (zpb) (and (jgd) (not(kgd)))) ;; Support.  Cancellation. 
(when (hqb) (and (lgd) (not(mgd)))) ;; Support.  Cancellation. 
(when (mqb) (and (qgd) (not(rgd)))) ;; Support.  Cancellation. 
(when (rwb) (and (rjd) (not(tjd)))) ;; Support.  Cancellation. 
(when (xwb) (and (ujd) (not(vjd)))) ;; Support.  Cancellation. 
(when (cxb) (and (xjd) (not(yjd)))) ;; Support.  Cancellation. 
(when (kxb) (and (zjd) (not(bkd)))) ;; Support.  Cancellation. 
(when (rxb) (and (ckd) (not(gkd)))) ;; Support.  Cancellation. 
(when (xxb) (and (hkd) (not(jkd)))) ;; Support.  Cancellation. 
(when (cyb) (and (kkd) (not(lkd)))) ;; Support.  Cancellation. 
(when (kyb) (and (mkd) (not(qkd)))) ;; Support.  Cancellation. 
(when (xyb) (and (ukd) (not(vkd)))) ;; Support.  Cancellation. 
(when (czb) (and (xkd) (not(ykd)))) ;; Support.  Cancellation. 
(when (rzb) (and (cld) (not(gld)))) ;; Support.  Cancellation. 
(when (c1b) (and (kld) (not(lld)))) ;; Support.  Cancellation. 
(when (c2b) (and (xld) (not(yld)))) ;; Support.  Cancellation. 
(when (k2b) (and (zld) (not(bmd)))) ;; Support.  Cancellation. 
(when (c3b) (and (kmd) (not(lmd)))) ;; Support.  Cancellation. 
(when (k3b) (and (mmd) (not(qmd)))) ;; Support.  Cancellation. 
(when (r7b)  (rod)) ;; Support. 
(when (x7b) (and (uod) (not(vod)))) ;; Support.  Cancellation. 
(when (c8b) (and (xod) (not(yod)))) ;; Support.  Cancellation. 
(when (k8b)  (zod)) ;; Support. 
(when (r8b) (and (cpd) (not(gpd)))) ;; Support.  Cancellation. 
(when (x8b)  (hpd)) ;; Support. 
(when (c9b)  (kpd)) ;; Support. 
(when (k9b) (and (mpd) (not(qpd)))) ;; Support.  Cancellation. 
(when (r9b) (and (rpd) (not(tpd)))) ;; Support.  Cancellation. 
(when (x9b) (and (upd) (not(vpd)))) ;; Support.  Cancellation. 
(when (c0b) (and (xpd) (not(ypd)))) ;; Support.  Cancellation. 
(when (k0b) (and (zpd) (not(bqd)))) ;; Support.  Cancellation. 
(when (r0b) (and (cqd) (not(gqd)))) ;; Support.  Cancellation. 
(when (x0b) (and (hqd) (not(jqd)))) ;; Support.  Cancellation. 
(when (cac) (and (kqd) (not(lqd)))) ;; Support.  Cancellation. 
(when (kac) (and (mqd) (not(qqd)))) ;; Support.  Cancellation. 
(when (rac) (and (rqd) (not(tqd)))) ;; Support.  Cancellation. 
(when (xac) (and (uqd) (not(vqd)))) ;; Support.  Cancellation. 
(when (cbc) (and (xqd) (not(yqd)))) ;; Support.  Cancellation. 
(when (kbc) (and (zqd) (not(bsd)))) ;; Support.  Cancellation. 
(when (rbc) (and (csd) (not(gsd)))) ;; Support.  Cancellation. 
(when (xbc) (and (hsd) (not(jsd)))) ;; Support.  Cancellation. 
(when (ccc) (and (ksd) (not(lsd)))) ;; Support.  Cancellation. 
(when (kcc) (and (msd) (not(qsd)))) ;; Support.  Cancellation. 
(when (ucc) (and (tsd) (not(usd)))) ;; Support.  Cancellation. 
(when (zcc) (and (vsd) (not(xsd)))) ;; Support.  Cancellation. 
(when (hdc)  (ysd)) ;; Support. 
(when (mdc)  (brd)) ;; Support. 
(when (udc) (and (grd) (not(hrd)))) ;; Support.  Cancellation. 
(when (zdc)  (jrd)) ;; Support. 
(when (hec) (and (lrd) (not(mrd)))) ;; Support.  Cancellation. 
(when (red) (and (qmb) (not(rcc)))) ;; Support.  Cancellation. 
(when (not(qed))  (not(mmb))) ;; Cancellation. 
(when (ued) (and (vmb) (not(umb)))) ;; Support.  Cancellation. 
(when (xed) (and (bnb) (not(zmb)))) ;; Support.  Cancellation. 
(when (zed) (and (jnb) (not(hnb)))) ;; Support.  Cancellation. 
(when (cfd) (and (qnb) (not(mnb)))) ;; Support.  Cancellation. 
(when (hfd) (and (vnb) (not(unb)))) ;; Support.  Cancellation. 
(when (kfd) (and (bob) (not(znb)))) ;; Support.  Cancellation. 
(when (mfd) (and (job) (not(hob)))) ;; Support.  Cancellation. 
(when (rfd) (and (qob) (not(mob)))) ;; Support.  Cancellation. 
(when (ufd) (and (vob) (not(uob)))) ;; Support.  Cancellation. 
(when (xfd) (and (bpb) (not(zob)))) ;; Support.  Cancellation. 
(when (zfd) (and (jpb) (not(hpb)))) ;; Support.  Cancellation. 
(when (cgd) (and (qpb) (not(mpb)))) ;; Support.  Cancellation. 
(when (hgd) (and (vpb) (not(upb)))) ;; Support.  Cancellation. 
(when (kgd) (and (bqb) (not(zpb)))) ;; Support.  Cancellation. 
(when (mgd) (and (jqb) (not(hqb)))) ;; Support.  Cancellation. 
(when (rgd) (and (qqb) (not(mqb)))) ;; Support.  Cancellation. 
(when (ugd)  (vqb)) ;; Support. 
(when (xgd)  (bsb)) ;; Support. 
(when (zgd)  (jsb)) ;; Support. 
(when (chd)  (qsb)) ;; Support. 
(when (hhd)  (vsb)) ;; Support. 
(when (khd)  (brb)) ;; Support. 
(when (mhd)  (jrb)) ;; Support. 
(when (rhd)  (qrb)) ;; Support. 
(when (uhd)  (vrb)) ;; Support. 
(when (xhd)  (btb)) ;; Support. 
(when (zhd)  (jtb)) ;; Support. 
(when (cid)  (qtb)) ;; Support. 
(when (hid)  (vtb)) ;; Support. 
(when (kid)  (bub)) ;; Support. 
(when (mid)  (jub)) ;; Support. 
(when (rid)  (qub)) ;; Support. 
(when (uid)  (vub)) ;; Support. 
(when (xid)  (bvb)) ;; Support. 
(when (zid)  (jvb)) ;; Support. 
(when (bjd)  (mvb)) ;; Support. 
(when (gjd)  (tvb)) ;; Support. 
(when (jjd)  (yvb)) ;; Support. 
(when (ljd)  (gwb)) ;; Support. 
(when (qjd)  (lwb)) ;; Support. 
(when (tjd) (and (twb) (not(rwb)))) ;; Support.  Cancellation. 
(when (vjd) (and (ywb) (not(xwb)))) ;; Support.  Cancellation. 
(when (yjd) (and (gxb) (not(cxb)))) ;; Support.  Cancellation. 
(when (bkd) (and (lxb) (not(kxb)))) ;; Support.  Cancellation. 
(when (gkd) (and (txb) (not(rxb)))) ;; Support.  Cancellation. 
(when (jkd) (and (yxb) (not(xxb)))) ;; Support.  Cancellation. 
(when (lkd) (and (gyb) (not(cyb)))) ;; Support.  Cancellation. 
(when (qkd) (and (lyb) (not(kyb)))) ;; Support.  Cancellation. 
(when (tkd)  (tyb)) ;; Support. 
(when (vkd) (and (yyb) (not(xyb)))) ;; Support.  Cancellation. 
(when (ykd) (and (gzb) (not(czb)))) ;; Support.  Cancellation. 
(when (bld)  (lzb)) ;; Support. 
(when (gld) (and (tzb) (not(rzb)))) ;; Support.  Cancellation. 
(when (jld)  (yzb)) ;; Support. 
(when (lld) (and (g1b) (not(c1b)))) ;; Support.  Cancellation. 
(when (qld)  (l1b)) ;; Support. 
(when (tld)  (t1b)) ;; Support. 
(when (vld)  (y1b)) ;; Support. 
(when (yld) (and (g2b) (not(c2b)))) ;; Support.  Cancellation. 
(when (bmd) (and (l2b) (not(k2b)))) ;; Support.  Cancellation. 
(when (gmd)  (t2b)) ;; Support. 
(when (jmd)  (y2b)) ;; Support. 
(when (lmd) (and (g3b) (not(c3b)))) ;; Support.  Cancellation. 
(when (qmd) (and (l3b) (not(k3b)))) ;; Support.  Cancellation. 
(when (vmd)  (y3b)) ;; Support. 
(when (gnd)  (t4b)) ;; Support. 
(when (lnd)  (g5b)) ;; Support. 
(when (tnd)  (t5b)) ;; Support. 
(when (vnd)  (y5b)) ;; Support. 
(when (ynd)  (g6b)) ;; Support. 
(when (bod)  (l6b)) ;; Support. 
(when (god)  (t6b)) ;; Support. 
(when (jod)  (y6b)) ;; Support. 
(when (lod)  (g7b)) ;; Support. 
(when (qod)  (l7b)) ;; Support. 
(when (vod) (and (y7b) (not(x7b)))) ;; Support.  Cancellation. 
(when (yod) (and (g8b) (not(c8b)))) ;; Support.  Cancellation. 
(when (gpd) (and (t8b) (not(r8b)))) ;; Support.  Cancellation. 
(when (qpd) (and (l9b) (not(k9b)))) ;; Support.  Cancellation. 
(when (tpd) (and (t9b) (not(r9b)))) ;; Support.  Cancellation. 
(when (vpd) (and (y9b) (not(x9b)))) ;; Support.  Cancellation. 
(when (ypd) (and (g0b) (not(c0b)))) ;; Support.  Cancellation. 
(when (bqd) (and (l0b) (not(k0b)))) ;; Support.  Cancellation. 
(when (gqd) (and (t0b) (not(r0b)))) ;; Support.  Cancellation. 
(when (jqd) (and (y0b) (not(x0b)))) ;; Support.  Cancellation. 
(when (lqd) (and (gac) (not(cac)))) ;; Support.  Cancellation. 
(when (qqd) (and (lac) (not(kac)))) ;; Support.  Cancellation. 
(when (tqd) (and (tac) (not(rac)))) ;; Support.  Cancellation. 
(when (vqd) (and (yac) (not(xac)))) ;; Support.  Cancellation. 
(when (yqd) (and (gbc) (not(cbc)))) ;; Support.  Cancellation. 
(when (bsd) (and (lbc) (not(kbc)))) ;; Support.  Cancellation. 
(when (gsd) (and (tbc) (not(rbc)))) ;; Support.  Cancellation. 
(when (jsd) (and (ybc) (not(xbc)))) ;; Support.  Cancellation. 
(when (lsd) (and (gcc) (not(ccc)))) ;; Support.  Cancellation. 
(when (qsd) (and (lcc) (not(kcc)))) ;; Support.  Cancellation. 
(when (usd) (and (vcc) (not(ucc)))) ;; Support.  Cancellation. 
(when (xsd) (and (bdc) (not(zcc)))) ;; Support.  Cancellation. 
(when (hrd) (and (vdc) (not(udc)))) ;; Support.  Cancellation. 
(when (mrd) (and (jec) (not(hec)))) ;; Support.  Cancellation. 
(when (rrd)  (qec)) ;; Support. 
(when (urd)  (vec)) ;; Support. 
(when (xrd)  (bfc)) ;; Support. 
(when (zrd)  (jfc)) ;; Support. 
(when (ctd)  (qfc)) ;; Support. 
(when (mtd)  (jgc)) ;; Support. 
(when (rtd)  (qgc)) ;; Support. 
(when (utd)  (vgc)) ;; Support. 
(when (xtd)  (bhc)) ;; Support. 
(when (ztd)  (jhc)) ;; Support. 
(when (cud)  (qhc)) ;; Support. 
))
(:action CMPSWAP_L1_L4
:parameters ()
:precondition (and (mic))

:effect (and  (not(ryc)) (rbd) (g4b)
(when (med)  (jic)) ;; Support. 
(when (mmb) (and (qyc) (not(b4c)))) ;; Support.  Cancellation. 
(when (umb) (and (tyc) (not(uyc)))) ;; Support.  Cancellation. 
(when (zmb) (and (vyc) (not(xyc)))) ;; Support.  Cancellation. 
(when (hnb) (and (yyc) (not(zyc)))) ;; Support.  Cancellation. 
(when (mnb) (and (bzc) (not(czc)))) ;; Support.  Cancellation. 
(when (unb) (and (gzc) (not(hzc)))) ;; Support.  Cancellation. 
(when (znb) (and (jzc) (not(kzc)))) ;; Support.  Cancellation. 
(when (hob) (and (lzc) (not(mzc)))) ;; Support.  Cancellation. 
(when (mob) (and (qzc) (not(rzc)))) ;; Support.  Cancellation. 
(when (uob) (and (tzc) (not(uzc)))) ;; Support.  Cancellation. 
(when (zob) (and (vzc) (not(xzc)))) ;; Support.  Cancellation. 
(when (hpb) (and (yzc) (not(zzc)))) ;; Support.  Cancellation. 
(when (mpb) (and (b1c) (not(c1c)))) ;; Support.  Cancellation. 
(when (upb) (and (g1c) (not(h1c)))) ;; Support.  Cancellation. 
(when (zpb) (and (j1c) (not(k1c)))) ;; Support.  Cancellation. 
(when (hqb) (and (l1c) (not(m1c)))) ;; Support.  Cancellation. 
(when (mqb) (and (q1c) (not(r1c)))) ;; Support.  Cancellation. 
(when (rwb) (and (r4c) (not(t4c)))) ;; Support.  Cancellation. 
(when (xwb) (and (u4c) (not(v4c)))) ;; Support.  Cancellation. 
(when (cxb) (and (x4c) (not(y4c)))) ;; Support.  Cancellation. 
(when (kxb) (and (z4c) (not(b5c)))) ;; Support.  Cancellation. 
(when (rxb) (and (c5c) (not(g5c)))) ;; Support.  Cancellation. 
(when (xxb) (and (h5c) (not(j5c)))) ;; Support.  Cancellation. 
(when (cyb) (and (k5c) (not(l5c)))) ;; Support.  Cancellation. 
(when (kyb) (and (m5c) (not(q5c)))) ;; Support.  Cancellation. 
(when (xyb) (and (u5c) (not(v5c)))) ;; Support.  Cancellation. 
(when (czb) (and (x5c) (not(y5c)))) ;; Support.  Cancellation. 
(when (rzb) (and (c6c) (not(g6c)))) ;; Support.  Cancellation. 
(when (c1b) (and (k6c) (not(l6c)))) ;; Support.  Cancellation. 
(when (c2b) (and (x6c) (not(y6c)))) ;; Support.  Cancellation. 
(when (k2b) (and (z6c) (not(b7c)))) ;; Support.  Cancellation. 
(when (c3b) (and (k7c) (not(l7c)))) ;; Support.  Cancellation. 
(when (k3b) (and (m7c) (not(q7c)))) ;; Support.  Cancellation. 
(when (r7b)  (r9c)) ;; Support. 
(when (x7b) (and (u9c) (not(v9c)))) ;; Support.  Cancellation. 
(when (c8b) (and (x9c) (not(y9c)))) ;; Support.  Cancellation. 
(when (k8b)  (z9c)) ;; Support. 
(when (r8b) (and (c0c) (not(g0c)))) ;; Support.  Cancellation. 
(when (x8b) (and (h0c) (not(j0c)))) ;; Support.  Cancellation. 
(when (c9b) (and (k0c) (not(l0c)))) ;; Support.  Cancellation. 
(when (k9b) (and (m0c) (not(q0c)))) ;; Support.  Cancellation. 
(when (r9b) (and (r0c) (not(t0c)))) ;; Support.  Cancellation. 
(when (x9b) (and (u0c) (not(v0c)))) ;; Support.  Cancellation. 
(when (c0b) (and (x0c) (not(y0c)))) ;; Support.  Cancellation. 
(when (k0b) (and (z0c) (not(bad)))) ;; Support.  Cancellation. 
(when (r0b) (and (cad) (not(gad)))) ;; Support.  Cancellation. 
(when (x0b) (and (had) (not(jad)))) ;; Support.  Cancellation. 
(when (cac) (and (kad) (not(lad)))) ;; Support.  Cancellation. 
(when (kac) (and (mad) (not(qad)))) ;; Support.  Cancellation. 
(when (rac) (and (rad) (not(tad)))) ;; Support.  Cancellation. 
(when (xac) (and (uad) (not(vad)))) ;; Support.  Cancellation. 
(when (cbc) (and (xad) (not(yad)))) ;; Support.  Cancellation. 
(when (kbc) (and (zad) (not(bbd)))) ;; Support.  Cancellation. 
(when (rbc) (and (cbd) (not(gbd)))) ;; Support.  Cancellation. 
(when (xbc) (and (hbd) (not(jbd)))) ;; Support.  Cancellation. 
(when (ccc) (and (kbd) (not(lbd)))) ;; Support.  Cancellation. 
(when (kcc) (and (mbd) (not(qbd)))) ;; Support.  Cancellation. 
(when (ucc) (and (tbd) (not(ubd)))) ;; Support.  Cancellation. 
(when (zcc) (and (vbd) (not(xbd)))) ;; Support.  Cancellation. 
(when (hdc) (and (ybd) (not(zbd)))) ;; Support.  Cancellation. 
(when (mdc)  (bcd)) ;; Support. 
(when (udc) (and (gcd) (not(hcd)))) ;; Support.  Cancellation. 
(when (zdc) (and (jcd) (not(kcd)))) ;; Support.  Cancellation. 
(when (hec) (and (lcd) (not(mcd)))) ;; Support.  Cancellation. 
(when (ryc) (and (qmb) (not(rcc)))) ;; Support.  Cancellation. 
(when (not(qyc))  (not(mmb))) ;; Cancellation. 
(when (uyc) (and (vmb) (not(umb)))) ;; Support.  Cancellation. 
(when (xyc) (and (bnb) (not(zmb)))) ;; Support.  Cancellation. 
(when (zyc) (and (jnb) (not(hnb)))) ;; Support.  Cancellation. 
(when (czc) (and (qnb) (not(mnb)))) ;; Support.  Cancellation. 
(when (hzc) (and (vnb) (not(unb)))) ;; Support.  Cancellation. 
(when (kzc) (and (bob) (not(znb)))) ;; Support.  Cancellation. 
(when (mzc) (and (job) (not(hob)))) ;; Support.  Cancellation. 
(when (rzc) (and (qob) (not(mob)))) ;; Support.  Cancellation. 
(when (uzc) (and (vob) (not(uob)))) ;; Support.  Cancellation. 
(when (xzc) (and (bpb) (not(zob)))) ;; Support.  Cancellation. 
(when (zzc) (and (jpb) (not(hpb)))) ;; Support.  Cancellation. 
(when (c1c) (and (qpb) (not(mpb)))) ;; Support.  Cancellation. 
(when (h1c) (and (vpb) (not(upb)))) ;; Support.  Cancellation. 
(when (k1c) (and (bqb) (not(zpb)))) ;; Support.  Cancellation. 
(when (m1c) (and (jqb) (not(hqb)))) ;; Support.  Cancellation. 
(when (r1c) (and (qqb) (not(mqb)))) ;; Support.  Cancellation. 
(when (u1c)  (vqb)) ;; Support. 
(when (x1c)  (bsb)) ;; Support. 
(when (z1c)  (jsb)) ;; Support. 
(when (c2c)  (qsb)) ;; Support. 
(when (h2c)  (vsb)) ;; Support. 
(when (k2c)  (brb)) ;; Support. 
(when (m2c)  (jrb)) ;; Support. 
(when (r2c)  (qrb)) ;; Support. 
(when (u2c)  (vrb)) ;; Support. 
(when (x2c)  (btb)) ;; Support. 
(when (z2c)  (jtb)) ;; Support. 
(when (c3c)  (qtb)) ;; Support. 
(when (h3c)  (vtb)) ;; Support. 
(when (k3c)  (bub)) ;; Support. 
(when (m3c)  (jub)) ;; Support. 
(when (r3c)  (qub)) ;; Support. 
(when (u3c)  (vub)) ;; Support. 
(when (x3c)  (bvb)) ;; Support. 
(when (z3c)  (jvb)) ;; Support. 
(when (b4c)  (mvb)) ;; Support. 
(when (g4c)  (tvb)) ;; Support. 
(when (j4c)  (yvb)) ;; Support. 
(when (l4c)  (gwb)) ;; Support. 
(when (q4c)  (lwb)) ;; Support. 
(when (t4c) (and (twb) (not(rwb)))) ;; Support.  Cancellation. 
(when (v4c) (and (ywb) (not(xwb)))) ;; Support.  Cancellation. 
(when (y4c) (and (gxb) (not(cxb)))) ;; Support.  Cancellation. 
(when (b5c) (and (lxb) (not(kxb)))) ;; Support.  Cancellation. 
(when (g5c) (and (txb) (not(rxb)))) ;; Support.  Cancellation. 
(when (j5c) (and (yxb) (not(xxb)))) ;; Support.  Cancellation. 
(when (l5c) (and (gyb) (not(cyb)))) ;; Support.  Cancellation. 
(when (q5c) (and (lyb) (not(kyb)))) ;; Support.  Cancellation. 
(when (t5c)  (tyb)) ;; Support. 
(when (v5c) (and (yyb) (not(xyb)))) ;; Support.  Cancellation. 
(when (y5c) (and (gzb) (not(czb)))) ;; Support.  Cancellation. 
(when (b6c)  (lzb)) ;; Support. 
(when (g6c) (and (tzb) (not(rzb)))) ;; Support.  Cancellation. 
(when (j6c)  (yzb)) ;; Support. 
(when (l6c) (and (g1b) (not(c1b)))) ;; Support.  Cancellation. 
(when (q6c)  (l1b)) ;; Support. 
(when (t6c)  (t1b)) ;; Support. 
(when (v6c)  (y1b)) ;; Support. 
(when (y6c) (and (g2b) (not(c2b)))) ;; Support.  Cancellation. 
(when (b7c) (and (l2b) (not(k2b)))) ;; Support.  Cancellation. 
(when (g7c)  (t2b)) ;; Support. 
(when (j7c)  (y2b)) ;; Support. 
(when (l7c) (and (g3b) (not(c3b)))) ;; Support.  Cancellation. 
(when (q7c) (and (l3b) (not(k3b)))) ;; Support.  Cancellation. 
(when (t7c)  (t3b)) ;; Support. 
(when (v7c)  (y3b)) ;; Support. 
(when (b8c)  (l4b)) ;; Support. 
(when (g8c)  (t4b)) ;; Support. 
(when (l8c)  (g5b)) ;; Support. 
(when (t8c)  (t5b)) ;; Support. 
(when (v8c)  (y5b)) ;; Support. 
(when (y8c)  (g6b)) ;; Support. 
(when (b9c)  (l6b)) ;; Support. 
(when (g9c)  (t6b)) ;; Support. 
(when (j9c)  (y6b)) ;; Support. 
(when (l9c)  (g7b)) ;; Support. 
(when (q9c)  (l7b)) ;; Support. 
(when (v9c) (and (y7b) (not(x7b)))) ;; Support.  Cancellation. 
(when (y9c) (and (g8b) (not(c8b)))) ;; Support.  Cancellation. 
(when (g0c) (and (t8b) (not(r8b)))) ;; Support.  Cancellation. 
(when (j0c) (and (y8b) (not(x8b)))) ;; Support.  Cancellation. 
(when (l0c) (and (g9b) (not(c9b)))) ;; Support.  Cancellation. 
(when (q0c) (and (l9b) (not(k9b)))) ;; Support.  Cancellation. 
(when (t0c) (and (t9b) (not(r9b)))) ;; Support.  Cancellation. 
(when (v0c) (and (y9b) (not(x9b)))) ;; Support.  Cancellation. 
(when (y0c) (and (g0b) (not(c0b)))) ;; Support.  Cancellation. 
(when (bad) (and (l0b) (not(k0b)))) ;; Support.  Cancellation. 
(when (gad) (and (t0b) (not(r0b)))) ;; Support.  Cancellation. 
(when (jad) (and (y0b) (not(x0b)))) ;; Support.  Cancellation. 
(when (lad) (and (gac) (not(cac)))) ;; Support.  Cancellation. 
(when (qad) (and (lac) (not(kac)))) ;; Support.  Cancellation. 
(when (tad) (and (tac) (not(rac)))) ;; Support.  Cancellation. 
(when (vad) (and (yac) (not(xac)))) ;; Support.  Cancellation. 
(when (yad) (and (gbc) (not(cbc)))) ;; Support.  Cancellation. 
(when (bbd) (and (lbc) (not(kbc)))) ;; Support.  Cancellation. 
(when (gbd) (and (tbc) (not(rbc)))) ;; Support.  Cancellation. 
(when (jbd) (and (ybc) (not(xbc)))) ;; Support.  Cancellation. 
(when (lbd) (and (gcc) (not(ccc)))) ;; Support.  Cancellation. 
(when (qbd) (and (lcc) (not(kcc)))) ;; Support.  Cancellation. 
(when (ubd) (and (vcc) (not(ucc)))) ;; Support.  Cancellation. 
(when (xbd) (and (bdc) (not(zcc)))) ;; Support.  Cancellation. 
(when (zbd) (and (jdc) (not(hdc)))) ;; Support.  Cancellation. 
(when (hcd) (and (vdc) (not(udc)))) ;; Support.  Cancellation. 
(when (kcd) (and (bec) (not(zdc)))) ;; Support.  Cancellation. 
(when (mcd) (and (jec) (not(hec)))) ;; Support.  Cancellation. 
(when (rcd)  (qec)) ;; Support. 
(when (ucd)  (vec)) ;; Support. 
(when (xcd)  (bfc)) ;; Support. 
(when (zcd)  (jfc)) ;; Support. 
(when (cdd)  (qfc)) ;; Support. 
(when (mdd)  (jgc)) ;; Support. 
(when (rdd)  (qgc)) ;; Support. 
(when (udd)  (vgc)) ;; Support. 
(when (xdd)  (bhc)) ;; Support. 
(when (zdd)  (jhc)) ;; Support. 
(when (ced)  (qhc)) ;; Support. 
(when (hed)  (vhc)) ;; Support. 
(when (ked)  (bic)) ;; Support. 
))
(:action CMPSWAP_L1_L3
:parameters ()
:precondition (and (mic))

:effect (and  (not(ric)) (y4b) (rvc)
(when (myc)  (jic)) ;; Support. 
(when (mmb) (and (qic) (not(bnc)))) ;; Support.  Cancellation. 
(when (umb) (and (tic) (not(uic)))) ;; Support.  Cancellation. 
(when (zmb) (and (vic) (not(xic)))) ;; Support.  Cancellation. 
(when (hnb) (and (yic) (not(zic)))) ;; Support.  Cancellation. 
(when (mnb) (and (bjc) (not(cjc)))) ;; Support.  Cancellation. 
(when (unb) (and (gjc) (not(hjc)))) ;; Support.  Cancellation. 
(when (znb) (and (jjc) (not(kjc)))) ;; Support.  Cancellation. 
(when (hob) (and (ljc) (not(mjc)))) ;; Support.  Cancellation. 
(when (mob) (and (qjc) (not(rjc)))) ;; Support.  Cancellation. 
(when (uob) (and (tjc) (not(ujc)))) ;; Support.  Cancellation. 
(when (zob) (and (vjc) (not(xjc)))) ;; Support.  Cancellation. 
(when (hpb) (and (yjc) (not(zjc)))) ;; Support.  Cancellation. 
(when (mpb) (and (bkc) (not(ckc)))) ;; Support.  Cancellation. 
(when (upb) (and (gkc) (not(hkc)))) ;; Support.  Cancellation. 
(when (zpb) (and (jkc) (not(kkc)))) ;; Support.  Cancellation. 
(when (hqb) (and (lkc) (not(mkc)))) ;; Support.  Cancellation. 
(when (mqb) (and (qkc) (not(rkc)))) ;; Support.  Cancellation. 
(when (rwb) (and (rnc) (not(tnc)))) ;; Support.  Cancellation. 
(when (xwb) (and (unc) (not(vnc)))) ;; Support.  Cancellation. 
(when (cxb) (and (xnc) (not(ync)))) ;; Support.  Cancellation. 
(when (kxb) (and (znc) (not(boc)))) ;; Support.  Cancellation. 
(when (rxb) (and (coc) (not(goc)))) ;; Support.  Cancellation. 
(when (xxb) (and (hoc) (not(joc)))) ;; Support.  Cancellation. 
(when (cyb) (and (koc) (not(loc)))) ;; Support.  Cancellation. 
(when (kyb) (and (moc) (not(qoc)))) ;; Support.  Cancellation. 
(when (xyb) (and (uoc) (not(voc)))) ;; Support.  Cancellation. 
(when (czb) (and (xoc) (not(yoc)))) ;; Support.  Cancellation. 
(when (rzb) (and (cpc) (not(gpc)))) ;; Support.  Cancellation. 
(when (c1b) (and (kpc) (not(lpc)))) ;; Support.  Cancellation. 
(when (c2b) (and (xpc) (not(ypc)))) ;; Support.  Cancellation. 
(when (k2b) (and (zpc) (not(bqc)))) ;; Support.  Cancellation. 
(when (c3b) (and (kqc) (not(lqc)))) ;; Support.  Cancellation. 
(when (k3b) (and (mqc) (not(qqc)))) ;; Support.  Cancellation. 
(when (r7b) (and (rrc) (not(trc)))) ;; Support.  Cancellation. 
(when (x7b) (and (urc) (not(vrc)))) ;; Support.  Cancellation. 
(when (c8b) (and (xrc) (not(yrc)))) ;; Support.  Cancellation. 
(when (k8b) (and (zrc) (not(btc)))) ;; Support.  Cancellation. 
(when (r8b) (and (ctc) (not(gtc)))) ;; Support.  Cancellation. 
(when (x8b) (and (htc) (not(jtc)))) ;; Support.  Cancellation. 
(when (c9b) (and (ktc) (not(ltc)))) ;; Support.  Cancellation. 
(when (k9b) (and (mtc) (not(qtc)))) ;; Support.  Cancellation. 
(when (r9b) (and (rtc) (not(ttc)))) ;; Support.  Cancellation. 
(when (x9b) (and (utc) (not(vtc)))) ;; Support.  Cancellation. 
(when (c0b) (and (xtc) (not(ytc)))) ;; Support.  Cancellation. 
(when (k0b) (and (ztc) (not(buc)))) ;; Support.  Cancellation. 
(when (r0b) (and (cuc) (not(guc)))) ;; Support.  Cancellation. 
(when (x0b) (and (huc) (not(juc)))) ;; Support.  Cancellation. 
(when (cac) (and (kuc) (not(luc)))) ;; Support.  Cancellation. 
(when (kac) (and (muc) (not(quc)))) ;; Support.  Cancellation. 
(when (rac) (and (ruc) (not(tuc)))) ;; Support.  Cancellation. 
(when (xac) (and (uuc) (not(vuc)))) ;; Support.  Cancellation. 
(when (cbc) (and (xuc) (not(yuc)))) ;; Support.  Cancellation. 
(when (kbc) (and (zuc) (not(bvc)))) ;; Support.  Cancellation. 
(when (rbc) (and (cvc) (not(gvc)))) ;; Support.  Cancellation. 
(when (xbc) (and (hvc) (not(jvc)))) ;; Support.  Cancellation. 
(when (ccc) (and (kvc) (not(lvc)))) ;; Support.  Cancellation. 
(when (kcc) (and (mvc) (not(qvc)))) ;; Support.  Cancellation. 
(when (ucc) (and (tvc) (not(uvc)))) ;; Support.  Cancellation. 
(when (zcc) (and (vvc) (not(xvc)))) ;; Support.  Cancellation. 
(when (hdc) (and (yvc) (not(zvc)))) ;; Support.  Cancellation. 
(when (mdc)  (bwc)) ;; Support. 
(when (udc) (and (gwc) (not(hwc)))) ;; Support.  Cancellation. 
(when (zdc) (and (jwc) (not(kwc)))) ;; Support.  Cancellation. 
(when (hec) (and (lwc) (not(mwc)))) ;; Support.  Cancellation. 
(when (ric) (and (qmb) (not(rcc)))) ;; Support.  Cancellation. 
(when (not(qic))  (not(mmb))) ;; Cancellation. 
(when (uic) (and (vmb) (not(umb)))) ;; Support.  Cancellation. 
(when (xic) (and (bnb) (not(zmb)))) ;; Support.  Cancellation. 
(when (zic) (and (jnb) (not(hnb)))) ;; Support.  Cancellation. 
(when (cjc) (and (qnb) (not(mnb)))) ;; Support.  Cancellation. 
(when (hjc) (and (vnb) (not(unb)))) ;; Support.  Cancellation. 
(when (kjc) (and (bob) (not(znb)))) ;; Support.  Cancellation. 
(when (mjc) (and (job) (not(hob)))) ;; Support.  Cancellation. 
(when (rjc) (and (qob) (not(mob)))) ;; Support.  Cancellation. 
(when (ujc) (and (vob) (not(uob)))) ;; Support.  Cancellation. 
(when (xjc) (and (bpb) (not(zob)))) ;; Support.  Cancellation. 
(when (zjc) (and (jpb) (not(hpb)))) ;; Support.  Cancellation. 
(when (ckc) (and (qpb) (not(mpb)))) ;; Support.  Cancellation. 
(when (hkc) (and (vpb) (not(upb)))) ;; Support.  Cancellation. 
(when (kkc) (and (bqb) (not(zpb)))) ;; Support.  Cancellation. 
(when (mkc) (and (jqb) (not(hqb)))) ;; Support.  Cancellation. 
(when (rkc) (and (qqb) (not(mqb)))) ;; Support.  Cancellation. 
(when (ukc)  (vqb)) ;; Support. 
(when (xkc)  (bsb)) ;; Support. 
(when (zkc)  (jsb)) ;; Support. 
(when (clc)  (qsb)) ;; Support. 
(when (hlc)  (vsb)) ;; Support. 
(when (klc)  (brb)) ;; Support. 
(when (mlc)  (jrb)) ;; Support. 
(when (rlc)  (qrb)) ;; Support. 
(when (ulc)  (vrb)) ;; Support. 
(when (xlc)  (btb)) ;; Support. 
(when (zlc)  (jtb)) ;; Support. 
(when (cmc)  (qtb)) ;; Support. 
(when (hmc)  (vtb)) ;; Support. 
(when (kmc)  (bub)) ;; Support. 
(when (mmc)  (jub)) ;; Support. 
(when (rmc)  (qub)) ;; Support. 
(when (umc)  (vub)) ;; Support. 
(when (xmc)  (bvb)) ;; Support. 
(when (zmc)  (jvb)) ;; Support. 
(when (bnc)  (mvb)) ;; Support. 
(when (gnc)  (tvb)) ;; Support. 
(when (jnc)  (yvb)) ;; Support. 
(when (lnc)  (gwb)) ;; Support. 
(when (qnc)  (lwb)) ;; Support. 
(when (tnc) (and (twb) (not(rwb)))) ;; Support.  Cancellation. 
(when (vnc) (and (ywb) (not(xwb)))) ;; Support.  Cancellation. 
(when (ync) (and (gxb) (not(cxb)))) ;; Support.  Cancellation. 
(when (boc) (and (lxb) (not(kxb)))) ;; Support.  Cancellation. 
(when (goc) (and (txb) (not(rxb)))) ;; Support.  Cancellation. 
(when (joc) (and (yxb) (not(xxb)))) ;; Support.  Cancellation. 
(when (loc) (and (gyb) (not(cyb)))) ;; Support.  Cancellation. 
(when (qoc) (and (lyb) (not(kyb)))) ;; Support.  Cancellation. 
(when (toc)  (tyb)) ;; Support. 
(when (voc) (and (yyb) (not(xyb)))) ;; Support.  Cancellation. 
(when (yoc) (and (gzb) (not(czb)))) ;; Support.  Cancellation. 
(when (bpc)  (lzb)) ;; Support. 
(when (gpc) (and (tzb) (not(rzb)))) ;; Support.  Cancellation. 
(when (jpc)  (yzb)) ;; Support. 
(when (lpc) (and (g1b) (not(c1b)))) ;; Support.  Cancellation. 
(when (qpc)  (l1b)) ;; Support. 
(when (tpc)  (t1b)) ;; Support. 
(when (vpc)  (y1b)) ;; Support. 
(when (ypc) (and (g2b) (not(c2b)))) ;; Support.  Cancellation. 
(when (bqc) (and (l2b) (not(k2b)))) ;; Support.  Cancellation. 
(when (gqc)  (t2b)) ;; Support. 
(when (jqc)  (y2b)) ;; Support. 
(when (lqc) (and (g3b) (not(c3b)))) ;; Support.  Cancellation. 
(when (qqc) (and (l3b) (not(k3b)))) ;; Support.  Cancellation. 
(when (tqc)  (t3b)) ;; Support. 
(when (vqc)  (y3b)) ;; Support. 
(when (yqc)  (g4b)) ;; Support. 
(when (bsc)  (l4b)) ;; Support. 
(when (gsc)  (t4b)) ;; Support. 
(when (lsc)  (g5b)) ;; Support. 
(when (qsc)  (l5b)) ;; Support. 
(when (tsc)  (t5b)) ;; Support. 
(when (vsc)  (y5b)) ;; Support. 
(when (ysc)  (g6b)) ;; Support. 
(when (brc)  (l6b)) ;; Support. 
(when (grc)  (t6b)) ;; Support. 
(when (jrc)  (y6b)) ;; Support. 
(when (lrc)  (g7b)) ;; Support. 
(when (qrc)  (l7b)) ;; Support. 
(when (trc) (and (t7b) (not(r7b)))) ;; Support.  Cancellation. 
(when (vrc) (and (y7b) (not(x7b)))) ;; Support.  Cancellation. 
(when (yrc) (and (g8b) (not(c8b)))) ;; Support.  Cancellation. 
(when (btc) (and (l8b) (not(k8b)))) ;; Support.  Cancellation. 
(when (gtc) (and (t8b) (not(r8b)))) ;; Support.  Cancellation. 
(when (jtc) (and (y8b) (not(x8b)))) ;; Support.  Cancellation. 
(when (ltc) (and (g9b) (not(c9b)))) ;; Support.  Cancellation. 
(when (qtc) (and (l9b) (not(k9b)))) ;; Support.  Cancellation. 
(when (ttc) (and (t9b) (not(r9b)))) ;; Support.  Cancellation. 
(when (vtc) (and (y9b) (not(x9b)))) ;; Support.  Cancellation. 
(when (ytc) (and (g0b) (not(c0b)))) ;; Support.  Cancellation. 
(when (buc) (and (l0b) (not(k0b)))) ;; Support.  Cancellation. 
(when (guc) (and (t0b) (not(r0b)))) ;; Support.  Cancellation. 
(when (juc) (and (y0b) (not(x0b)))) ;; Support.  Cancellation. 
(when (luc) (and (gac) (not(cac)))) ;; Support.  Cancellation. 
(when (quc) (and (lac) (not(kac)))) ;; Support.  Cancellation. 
(when (tuc) (and (tac) (not(rac)))) ;; Support.  Cancellation. 
(when (vuc) (and (yac) (not(xac)))) ;; Support.  Cancellation. 
(when (yuc) (and (gbc) (not(cbc)))) ;; Support.  Cancellation. 
(when (bvc) (and (lbc) (not(kbc)))) ;; Support.  Cancellation. 
(when (gvc) (and (tbc) (not(rbc)))) ;; Support.  Cancellation. 
(when (jvc) (and (ybc) (not(xbc)))) ;; Support.  Cancellation. 
(when (lvc) (and (gcc) (not(ccc)))) ;; Support.  Cancellation. 
(when (qvc) (and (lcc) (not(kcc)))) ;; Support.  Cancellation. 
(when (uvc) (and (vcc) (not(ucc)))) ;; Support.  Cancellation. 
(when (xvc) (and (bdc) (not(zcc)))) ;; Support.  Cancellation. 
(when (zvc) (and (jdc) (not(hdc)))) ;; Support.  Cancellation. 
(when (hwc) (and (vdc) (not(udc)))) ;; Support.  Cancellation. 
(when (kwc) (and (bec) (not(zdc)))) ;; Support.  Cancellation. 
(when (mwc) (and (jec) (not(hec)))) ;; Support.  Cancellation. 
(when (rwc)  (qec)) ;; Support. 
(when (uwc)  (vec)) ;; Support. 
(when (xwc)  (bfc)) ;; Support. 
(when (zwc)  (jfc)) ;; Support. 
(when (cxc)  (qfc)) ;; Support. 
(when (mxc)  (jgc)) ;; Support. 
(when (rxc)  (qgc)) ;; Support. 
(when (uxc)  (vgc)) ;; Support. 
(when (xxc)  (bhc)) ;; Support. 
(when (zxc)  (jhc)) ;; Support. 
(when (cyc)  (qhc)) ;; Support. 
(when (hyc)  (vhc)) ;; Support. 
(when (kyc)  (bic)) ;; Support. 
))
(:action CMPSWAP_L1_L2
:parameters ()
:precondition (and (mic))

:effect (and  (tcc) (not(tmb)) (vfc)
(when (lic)  (jic)) ;; Support. 
(when (mmb) (and (rmb) (not(qvb)))) ;; Support.  Cancellation. 
(when (umb) (and (xmb) (not(ymb)))) ;; Support.  Cancellation. 
(when (zmb) (and (cnb) (not(gnb)))) ;; Support.  Cancellation. 
(when (hnb) (and (knb) (not(lnb)))) ;; Support.  Cancellation. 
(when (mnb) (and (rnb) (not(tnb)))) ;; Support.  Cancellation. 
(when (unb) (and (xnb) (not(ynb)))) ;; Support.  Cancellation. 
(when (znb) (and (cob) (not(gob)))) ;; Support.  Cancellation. 
(when (hob) (and (kob) (not(lob)))) ;; Support.  Cancellation. 
(when (mob) (and (rob) (not(tob)))) ;; Support.  Cancellation. 
(when (uob) (and (xob) (not(yob)))) ;; Support.  Cancellation. 
(when (zob) (and (cpb) (not(gpb)))) ;; Support.  Cancellation. 
(when (hpb) (and (kpb) (not(lpb)))) ;; Support.  Cancellation. 
(when (mpb) (and (rpb) (not(tpb)))) ;; Support.  Cancellation. 
(when (upb) (and (xpb) (not(ypb)))) ;; Support.  Cancellation. 
(when (zpb) (and (cqb) (not(gqb)))) ;; Support.  Cancellation. 
(when (hqb) (and (kqb) (not(lqb)))) ;; Support.  Cancellation. 
(when (mqb) (and (rqb) (not(tqb)))) ;; Support.  Cancellation. 
(when (rwb) (and (uwb) (not(vwb)))) ;; Support.  Cancellation. 
(when (xwb) (and (zwb) (not(bxb)))) ;; Support.  Cancellation. 
(when (cxb) (and (hxb) (not(jxb)))) ;; Support.  Cancellation. 
(when (kxb) (and (mxb) (not(qxb)))) ;; Support.  Cancellation. 
(when (rxb) (and (uxb) (not(vxb)))) ;; Support.  Cancellation. 
(when (xxb) (and (zxb) (not(byb)))) ;; Support.  Cancellation. 
(when (cyb) (and (hyb) (not(jyb)))) ;; Support.  Cancellation. 
(when (kyb) (and (myb) (not(qyb)))) ;; Support.  Cancellation. 
(when (xyb) (and (zyb) (not(bzb)))) ;; Support.  Cancellation. 
(when (czb) (and (hzb) (not(jzb)))) ;; Support.  Cancellation. 
(when (rzb) (and (uzb) (not(vzb)))) ;; Support.  Cancellation. 
(when (c1b) (and (h1b) (not(j1b)))) ;; Support.  Cancellation. 
(when (c2b) (and (h2b) (not(j2b)))) ;; Support.  Cancellation. 
(when (k2b) (and (m2b) (not(q2b)))) ;; Support.  Cancellation. 
(when (c3b) (and (h3b) (not(j3b)))) ;; Support.  Cancellation. 
(when (k3b) (and (m3b) (not(q3b)))) ;; Support.  Cancellation. 
(when (r7b) (and (u7b) (not(v7b)))) ;; Support.  Cancellation. 
(when (x7b) (and (z7b) (not(b8b)))) ;; Support.  Cancellation. 
(when (c8b) (and (h8b) (not(j8b)))) ;; Support.  Cancellation. 
(when (k8b) (and (m8b) (not(q8b)))) ;; Support.  Cancellation. 
(when (r8b) (and (u8b) (not(v8b)))) ;; Support.  Cancellation. 
(when (x8b) (and (z8b) (not(b9b)))) ;; Support.  Cancellation. 
(when (c9b) (and (h9b) (not(j9b)))) ;; Support.  Cancellation. 
(when (k9b) (and (m9b) (not(q9b)))) ;; Support.  Cancellation. 
(when (r9b) (and (u9b) (not(v9b)))) ;; Support.  Cancellation. 
(when (x9b) (and (z9b) (not(b0b)))) ;; Support.  Cancellation. 
(when (c0b) (and (h0b) (not(j0b)))) ;; Support.  Cancellation. 
(when (k0b) (and (m0b) (not(q0b)))) ;; Support.  Cancellation. 
(when (r0b) (and (u0b) (not(v0b)))) ;; Support.  Cancellation. 
(when (x0b) (and (z0b) (not(bac)))) ;; Support.  Cancellation. 
(when (cac) (and (hac) (not(jac)))) ;; Support.  Cancellation. 
(when (kac) (and (mac) (not(qac)))) ;; Support.  Cancellation. 
(when (rac) (and (uac) (not(vac)))) ;; Support.  Cancellation. 
(when (xac) (and (zac) (not(bbc)))) ;; Support.  Cancellation. 
(when (cbc) (and (hbc) (not(jbc)))) ;; Support.  Cancellation. 
(when (kbc) (and (mbc) (not(qbc)))) ;; Support.  Cancellation. 
(when (rbc) (and (ubc) (not(vbc)))) ;; Support.  Cancellation. 
(when (xbc) (and (zbc) (not(bcc)))) ;; Support.  Cancellation. 
(when (ccc) (and (hcc) (not(jcc)))) ;; Support.  Cancellation. 
(when (kcc) (and (mcc) (not(qcc)))) ;; Support.  Cancellation. 
(when (ucc) (and (xcc) (not(ycc)))) ;; Support.  Cancellation. 
(when (zcc) (and (cdc) (not(gdc)))) ;; Support.  Cancellation. 
(when (hdc) (and (kdc) (not(ldc)))) ;; Support.  Cancellation. 
(when (mdc) (and (rdc) (not(tdc)))) ;; Support.  Cancellation. 
(when (udc) (and (xdc) (not(ydc)))) ;; Support.  Cancellation. 
(when (zdc) (and (cec) (not(gec)))) ;; Support.  Cancellation. 
(when (hec) (and (kec) (not(lec)))) ;; Support.  Cancellation. 
(when (tmb) (and (qmb) (not(rcc)))) ;; Support.  Cancellation. 
(when (not(rmb))  (not(mmb))) ;; Cancellation. 
(when (ymb) (and (vmb) (not(umb)))) ;; Support.  Cancellation. 
(when (gnb) (and (bnb) (not(zmb)))) ;; Support.  Cancellation. 
(when (lnb) (and (jnb) (not(hnb)))) ;; Support.  Cancellation. 
(when (tnb) (and (qnb) (not(mnb)))) ;; Support.  Cancellation. 
(when (ynb) (and (vnb) (not(unb)))) ;; Support.  Cancellation. 
(when (gob) (and (bob) (not(znb)))) ;; Support.  Cancellation. 
(when (lob) (and (job) (not(hob)))) ;; Support.  Cancellation. 
(when (tob) (and (qob) (not(mob)))) ;; Support.  Cancellation. 
(when (yob) (and (vob) (not(uob)))) ;; Support.  Cancellation. 
(when (gpb) (and (bpb) (not(zob)))) ;; Support.  Cancellation. 
(when (lpb) (and (jpb) (not(hpb)))) ;; Support.  Cancellation. 
(when (tpb) (and (qpb) (not(mpb)))) ;; Support.  Cancellation. 
(when (ypb) (and (vpb) (not(upb)))) ;; Support.  Cancellation. 
(when (gqb) (and (bqb) (not(zpb)))) ;; Support.  Cancellation. 
(when (lqb) (and (jqb) (not(hqb)))) ;; Support.  Cancellation. 
(when (tqb) (and (qqb) (not(mqb)))) ;; Support.  Cancellation. 
(when (yqb)  (vqb)) ;; Support. 
(when (gsb)  (bsb)) ;; Support. 
(when (lsb)  (jsb)) ;; Support. 
(when (tsb)  (qsb)) ;; Support. 
(when (ysb)  (vsb)) ;; Support. 
(when (grb)  (brb)) ;; Support. 
(when (lrb)  (jrb)) ;; Support. 
(when (trb)  (qrb)) ;; Support. 
(when (yrb)  (vrb)) ;; Support. 
(when (gtb)  (btb)) ;; Support. 
(when (ltb)  (jtb)) ;; Support. 
(when (ttb)  (qtb)) ;; Support. 
(when (ytb)  (vtb)) ;; Support. 
(when (gub)  (bub)) ;; Support. 
(when (lub)  (jub)) ;; Support. 
(when (tub)  (qub)) ;; Support. 
(when (yub)  (vub)) ;; Support. 
(when (gvb)  (bvb)) ;; Support. 
(when (lvb)  (jvb)) ;; Support. 
(when (qvb)  (mvb)) ;; Support. 
(when (vvb)  (tvb)) ;; Support. 
(when (bwb)  (yvb)) ;; Support. 
(when (jwb)  (gwb)) ;; Support. 
(when (qwb)  (lwb)) ;; Support. 
(when (vwb) (and (twb) (not(rwb)))) ;; Support.  Cancellation. 
(when (bxb) (and (ywb) (not(xwb)))) ;; Support.  Cancellation. 
(when (jxb) (and (gxb) (not(cxb)))) ;; Support.  Cancellation. 
(when (qxb) (and (lxb) (not(kxb)))) ;; Support.  Cancellation. 
(when (vxb) (and (txb) (not(rxb)))) ;; Support.  Cancellation. 
(when (byb) (and (yxb) (not(xxb)))) ;; Support.  Cancellation. 
(when (jyb) (and (gyb) (not(cyb)))) ;; Support.  Cancellation. 
(when (qyb) (and (lyb) (not(kyb)))) ;; Support.  Cancellation. 
(when (vyb)  (tyb)) ;; Support. 
(when (bzb) (and (yyb) (not(xyb)))) ;; Support.  Cancellation. 
(when (jzb) (and (gzb) (not(czb)))) ;; Support.  Cancellation. 
(when (qzb)  (lzb)) ;; Support. 
(when (vzb) (and (tzb) (not(rzb)))) ;; Support.  Cancellation. 
(when (b1b)  (yzb)) ;; Support. 
(when (j1b) (and (g1b) (not(c1b)))) ;; Support.  Cancellation. 
(when (q1b)  (l1b)) ;; Support. 
(when (v1b)  (t1b)) ;; Support. 
(when (b2b)  (y1b)) ;; Support. 
(when (j2b) (and (g2b) (not(c2b)))) ;; Support.  Cancellation. 
(when (q2b) (and (l2b) (not(k2b)))) ;; Support.  Cancellation. 
(when (v2b)  (t2b)) ;; Support. 
(when (b3b)  (y2b)) ;; Support. 
(when (j3b) (and (g3b) (not(c3b)))) ;; Support.  Cancellation. 
(when (q3b) (and (l3b) (not(k3b)))) ;; Support.  Cancellation. 
(when (v3b)  (t3b)) ;; Support. 
(when (b4b)  (y3b)) ;; Support. 
(when (j4b)  (g4b)) ;; Support. 
(when (q4b)  (l4b)) ;; Support. 
(when (v4b)  (t4b)) ;; Support. 
(when (b5b)  (y4b)) ;; Support. 
(when (j5b)  (g5b)) ;; Support. 
(when (q5b)  (l5b)) ;; Support. 
(when (v5b)  (t5b)) ;; Support. 
(when (b6b)  (y5b)) ;; Support. 
(when (j6b)  (g6b)) ;; Support. 
(when (q6b)  (l6b)) ;; Support. 
(when (v6b)  (t6b)) ;; Support. 
(when (b7b)  (y6b)) ;; Support. 
(when (j7b)  (g7b)) ;; Support. 
(when (q7b)  (l7b)) ;; Support. 
(when (v7b) (and (t7b) (not(r7b)))) ;; Support.  Cancellation. 
(when (b8b) (and (y7b) (not(x7b)))) ;; Support.  Cancellation. 
(when (j8b) (and (g8b) (not(c8b)))) ;; Support.  Cancellation. 
(when (q8b) (and (l8b) (not(k8b)))) ;; Support.  Cancellation. 
(when (v8b) (and (t8b) (not(r8b)))) ;; Support.  Cancellation. 
(when (b9b) (and (y8b) (not(x8b)))) ;; Support.  Cancellation. 
(when (j9b) (and (g9b) (not(c9b)))) ;; Support.  Cancellation. 
(when (q9b) (and (l9b) (not(k9b)))) ;; Support.  Cancellation. 
(when (v9b) (and (t9b) (not(r9b)))) ;; Support.  Cancellation. 
(when (b0b) (and (y9b) (not(x9b)))) ;; Support.  Cancellation. 
(when (j0b) (and (g0b) (not(c0b)))) ;; Support.  Cancellation. 
(when (q0b) (and (l0b) (not(k0b)))) ;; Support.  Cancellation. 
(when (v0b) (and (t0b) (not(r0b)))) ;; Support.  Cancellation. 
(when (bac) (and (y0b) (not(x0b)))) ;; Support.  Cancellation. 
(when (jac) (and (gac) (not(cac)))) ;; Support.  Cancellation. 
(when (qac) (and (lac) (not(kac)))) ;; Support.  Cancellation. 
(when (vac) (and (tac) (not(rac)))) ;; Support.  Cancellation. 
(when (bbc) (and (yac) (not(xac)))) ;; Support.  Cancellation. 
(when (jbc) (and (gbc) (not(cbc)))) ;; Support.  Cancellation. 
(when (qbc) (and (lbc) (not(kbc)))) ;; Support.  Cancellation. 
(when (vbc) (and (tbc) (not(rbc)))) ;; Support.  Cancellation. 
(when (bcc) (and (ybc) (not(xbc)))) ;; Support.  Cancellation. 
(when (jcc) (and (gcc) (not(ccc)))) ;; Support.  Cancellation. 
(when (qcc) (and (lcc) (not(kcc)))) ;; Support.  Cancellation. 
(when (ycc) (and (vcc) (not(ucc)))) ;; Support.  Cancellation. 
(when (gdc) (and (bdc) (not(zcc)))) ;; Support.  Cancellation. 
(when (ldc) (and (jdc) (not(hdc)))) ;; Support.  Cancellation. 
(when (tdc) (and (qdc) (not(mdc)))) ;; Support.  Cancellation. 
(when (ydc) (and (vdc) (not(udc)))) ;; Support.  Cancellation. 
(when (gec) (and (bec) (not(zdc)))) ;; Support.  Cancellation. 
(when (lec) (and (jec) (not(hec)))) ;; Support.  Cancellation. 
(when (tec)  (qec)) ;; Support. 
(when (yec)  (vec)) ;; Support. 
(when (gfc)  (bfc)) ;; Support. 
(when (lfc)  (jfc)) ;; Support. 
(when (tfc)  (qfc)) ;; Support. 
(when (lgc)  (jgc)) ;; Support. 
(when (tgc)  (qgc)) ;; Support. 
(when (ygc)  (vgc)) ;; Support. 
(when (ghc)  (bhc)) ;; Support. 
(when (lhc)  (jhc)) ;; Support. 
(when (thc)  (qhc)) ;; Support. 
(when (yhc)  (vhc)) ;; Support. 
(when (gic)  (bic)) ;; Support. 
))
(:action MERGE_CLAUSES
:parameters ()
:precondition (and)

:effect (and 
(when (mmb)  (mmb)) ;;reasoning over static clause. 
(when (rmb)  (rmb)) ;;reasoning over static clause. 
(when (tmb)  (tmb)) ;;reasoning over static clause. 
(when (qic)  (qic)) ;;reasoning over static clause. 
(when (ric)  (ric)) ;;reasoning over static clause. 
(when (qyc)  (qyc)) ;;reasoning over static clause. 
(when (ryc)  (ryc)) ;;reasoning over static clause. 
(when (qed)  (qed)) ;;reasoning over static clause. 
(when (red)  (red)) ;;reasoning over static clause. 
(when (qud)  (qud)) ;;reasoning over static clause. 
(when (rud)  (rud)) ;;reasoning over static clause. 
(when (rae)  (rae)) ;;reasoning over static clause. 
))
(:action MERGE_end_5
:parameters ()
:precondition (and)

:effect (and 
(when(and (meb) (qeb) (reb) (teb) (ueb) (veb) (xeb) (yeb) (zeb) (bfb) (cfb) (gfb) (hfb) (jfb) (kfb) (lfb) (mfb) (qfb) (rfb) (tfb) (ufb) (vfb) (xfb) (yfb) (zfb) (bgb) (cgb) (ggb) (hgb) (jgb) (kgb) (lgb) (mgb) (qgb) (rgb) (tgb) (ugb) (vgb) (xgb) (ygb) (zgb) (bhb) (chb) (ghb) (hhb) (jhb) (khb) (lhb) (mhb) (qhb) (rhb) (thb) (uhb) (vhb) (xhb) (yhb) (zhb) (bib) (cib) (gib) (hib) (jib) (kib) (lib) (mib) (qib) (rib) (tib) (uib) (vib) (xib) (yib) (zib) (bjb) (cjb) (gjb) (hjb) (jjb) (kjb) (ljb) (mjb) (qjb) (rjb) (tjb) (ujb) (vjb) (xjb) (yjb) (zjb) (bkb) (ckb) (gkb) (hkb) (jkb) (kkb) (lkb) (mkb) (qkb) (rkb) (tkb) (ukb) (vkb) (xkb) (ykb) (zkb) (blb) (clb) (glb) (hlb) (jlb) (klb) (llb) (mlb) (qlb) (rlb) (tlb) (ulb) (vlb) (xlb) (ylb) (zlb) (bmb) (cmb) (gmb) (hmb) (jmb) (kmb) (lmb))  (leb)) ;;MERGE. 
))
(:action MERGE_end_4
:parameters ()
:precondition (and)

:effect (and 
(when(and (l7) (m7) (q7) (r7) (t7) (u7) (v7) (x7) (y7) (z7) (b8) (c8) (g8) (h8) (j8) (k8) (l8) (m8) (q8) (r8) (t8) (u8) (v8) (x8) (y8) (z8) (b9) (c9) (g9) (h9) (j9) (k9) (l9) (m9) (q9) (r9) (t9) (u9) (v9) (x9) (y9) (z9) (b0) (c0) (g0) (h0) (j0) (k0) (l0) (m0) (q0) (r0) (t0) (u0) (v0) (x0) (y0) (z0) (bab) (cab) (gab) (hab) (jab) (kab) (lab) (mab) (qab) (rab) (tab) (uab) (vab) (xab) (yab) (zab) (bbb) (cbb) (gbb) (hbb) (jbb) (kbb) (lbb) (mbb) (qbb) (rbb) (tbb) (ubb) (vbb) (xbb) (ybb) (zbb) (bcb) (ccb) (gcb) (hcb) (jcb) (kcb) (lcb) (mcb) (qcb) (rcb) (tcb) (ucb) (vcb) (xcb) (ycb) (zcb) (bdb) (cdb) (gdb) (hdb) (jdb) (kdb) (ldb) (mdb) (qdb) (rdb) (tdb) (udb) (vdb) (xdb) (ydb) (zdb) (beb) (ceb) (geb) (heb) (jeb) (keb))  (k7)) ;;MERGE. 
))
(:action MERGE_end_3
:parameters ()
:precondition (and)

:effect (and 
(when(and (ky) (ly) (my) (qy) (ry) (ty) (uy) (vy) (xy) (yy) (zy) (bz) (cz) (gz) (hz) (jz) (kz) (lz) (mz) (qz) (rz) (tz) (uz) (vz) (xz) (yz) (zz) (b1) (c1) (g1) (h1) (j1) (k1) (l1) (m1) (q1) (r1) (t1) (u1) (v1) (x1) (y1) (z1) (b2) (c2) (g2) (h2) (j2) (k2) (l2) (m2) (q2) (r2) (t2) (u2) (v2) (x2) (y2) (z2) (b3) (c3) (g3) (h3) (j3) (k3) (l3) (m3) (q3) (r3) (t3) (u3) (v3) (x3) (y3) (z3) (b4) (c4) (g4) (h4) (j4) (k4) (l4) (m4) (q4) (r4) (t4) (u4) (v4) (x4) (y4) (z4) (b5) (c5) (g5) (h5) (j5) (k5) (l5) (m5) (q5) (r5) (t5) (u5) (v5) (x5) (y5) (z5) (b6) (c6) (g6) (h6) (j6) (k6) (l6) (m6) (q6) (r6) (t6) (u6) (v6) (x6) (y6) (z6) (b7) (c7) (g7) (h7) (j7))  (jy)) ;;MERGE. 
))
(:action MERGE_end_2
:parameters ()
:precondition (and)

:effect (and 
(when(and (jq) (kq) (lq) (mq) (qq) (rq) (tq) (uq) (vq) (xq) (yq) (zq) (bs) (cs) (gs) (hs) (js) (ks) (ls) (ms) (qs) (rs) (ts) (us) (vs) (xs) (ys) (zs) (br) (cr) (gr) (hr) (jr) (kr) (lr) (mr) (qr) (rr) (tr) (ur) (vr) (xr) (yr) (zr) (bt) (ct) (gt) (ht) (jt) (kt) (lt) (mt) (qt) (rt) (tt) (ut) (vt) (xt) (yt) (zt) (bu) (cu) (gu) (hu) (ju) (ku) (lu) (mu) (qu) (ru) (tu) (uu) (vu) (xu) (yu) (zu) (bv) (cv) (gv) (hv) (jv) (kv) (lv) (mv) (qv) (rv) (tv) (uv) (vv) (xv) (yv) (zv) (bw) (cw) (gw) (hw) (jw) (kw) (lw) (mw) (qw) (rw) (tw) (uw) (vw) (xw) (yw) (zw) (bx) (cx) (gx) (hx) (jx) (kx) (lx) (mx) (qx) (rx) (tx) (ux) (vx) (xx) (yx) (zx) (by) (cy) (gy) (hy))  (hq)) ;;MERGE. 
))
(:action MERGE_end_1
:parameters ()
:precondition (and)

:effect (and 
(when(and (hi) (ji) (ki) (li) (mi) (qi) (ri) (ti) (ui) (vi) (xi) (yi) (zi) (bj) (cj) (gj) (hj) (jj) (kj) (lj) (mj) (qj) (rj) (tj) (uj) (vj) (xj) (yj) (zj) (bk) (ck) (gk) (hk) (jk) (kk) (lk) (mk) (qk) (rk) (tk) (uk) (vk) (xk) (yk) (zk) (bl) (cl) (gl) (hl) (jl) (kl) (ll) (ml) (ql) (rl) (tl) (ul) (vl) (xl) (yl) (zl) (bm) (cm) (gm) (hm) (jm) (km) (lm) (mm) (qm) (rm) (tm) (um) (vm) (xm) (ym) (zm) (bn) (cn) (gn) (hn) (jn) (kn) (ln) (mn) (qn) (rn) (tn) (un) (vn) (xn) (yn) (zn) (bo) (co) (go) (ho) (jo) (ko) (lo) (mo) (qo) (ro) (to) (uo) (vo) (xo) (yo) (zo) (bp) (cp) (gp) (hp) (jp) (kp) (lp) (mp) (qp) (rp) (tp) (up) (vp) (xp) (yp) (zp) (bq) (cq) (gq))  (gi)) ;;MERGE. 
))
(:action MERGE_end_0
:parameters ()
:precondition (and)

:effect (and 
(when(and (g) (h) (j) (k) (l) (m) (q) (r) (t) (u) (v) (x) (y) (z) (bb) (cb) (gb) (hb) (jb) (kb) (lb) (mb) (qb) (rb) (tb) (ub) (vb) (xb) (yb) (zb) (bc) (cc) (gc) (hc) (jc) (kc) (lc) (mc) (qc) (rc) (tc) (uc) (vc) (xc) (yc) (zc) (bd) (cd) (gd) (hd) (jd) (kd) (ld) (md) (qd) (rd) (td) (ud) (vd) (xd) (yd) (zd) (be) (ce) (ge) (he) (je) (ke) (le) (me) (qe) (re) (te) (ue) (ve) (xe) (ye) (ze) (bf) (cf) (gf) (hf) (jf) (kf) (lf) (mf) (qf) (rf) (tf) (uf) (vf) (xf) (yf) (zf) (bg) (cg) (gg) (hg) (jg) (kg) (lg) (mg) (qg) (rg) (tg) (ug) (vg) (xg) (yg) (zg) (bh) (ch) (gh) (hh) (jh) (kh) (lh) (mh) (qh) (rh) (th) (uh) (vh) (xh) (yh) (zh) (bi) (ci))  (c)) ;;MERGE. 
))
)
