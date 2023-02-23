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
(uqb)
(vqb)
(xqb)
(yqb)
(zqb)
(bsb)
(csb)
(gsb)
(hsb)
(jsb)
(ksb)
(lsb)
(msb)
(qsb)
(rsb)
(tsb)
(usb)
(vsb)
(xsb)
(ysb)
(zsb)
(brb)
(crb)
(grb)
(hrb)
(jrb)
(krb)
(lrb)
(mrb)
(qrb)
(rrb)
(trb)
(urb)
(vrb)
(xrb)
(yrb)
(zrb)
(btb)
(ctb)
(gtb)
(htb)
(jtb)
(ktb)
(ltb)
(mtb)
(qtb)
(rtb)
(ttb)
(utb)
(vtb)
(xtb)
(ytb)
(ztb)
(bub)
(cub)
(gub)
(hub)
(jub)
(kub)
(lub)
(mub)
(qub)
(rub)
(tub)
(uub)
(vub)
(xub)
(yub)
(zub)
(bvb)
(cvb)
(gvb)
(hvb)
(jvb)
(kvb)
(lvb)
(mvb)
(qvb)
(rvb)
(tvb)
(uvb)
(vvb)
(xvb)
(yvb)
(zvb)
(bwb)
(cwb)
(gwb)
(hwb)
(jwb)
(kwb)
(lwb)
(mwb)
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
(ryb)
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
(kzb)
(lzb)
(mzb)
(qzb)
(rzb)
(tzb)
(uzb)
(vzb)
(xzb)
(yzb)
(zzb)
(b1b)
(c1b)
(g1b)
(h1b)
(j1b)
(k1b)
(l1b)
(m1b)
(q1b)
(r1b)
(t1b)
(u1b)
(v1b)
(x1b)
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
(r2b)
(t2b)
(u2b)
(v2b)
(x2b)
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
(r3b)
(t3b)
(u3b)
(v3b)
(x3b)
(y3b)
(z3b)
(b4b)
(c4b)
(g4b)
(h4b)
(j4b)
(k4b)
(l4b)
(m4b)
(q4b)
(r4b)
(t4b)
(u4b)
(v4b)
(x4b)
(y4b)
(z4b)
(b5b)
(c5b)
(g5b)
(h5b)
(j5b)
(k5b)
(l5b)
(m5b)
(q5b)
(r5b)
(t5b)
(u5b)
(v5b)
(x5b)
(y5b)
(z5b)
(b6b)
(c6b)
(g6b)
(h6b)
(j6b)
(k6b)
(l6b)
(m6b)
(q6b)
(r6b)
(t6b)
(u6b)
(v6b)
(x6b)
(y6b)
(z6b)
(b7b)
(c7b)
(g7b)
(h7b)
(j7b)
(k7b)
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
(mec)
(qec)
(rec)
(tec)
(uec)
(vec)
(xec)
(yec)
(zec)
(bfc)
(cfc)
(gfc)
(hfc)
(jfc)
(kfc)
(lfc)
(mfc)
(qfc)
(rfc)
(tfc)
(ufc)
(vfc)
(xfc)
(yfc)
(zfc)
(bgc)
(cgc)
(ggc)
(hgc)
(jgc)
(kgc)
(lgc)
(mgc)
(qgc)
(rgc)
(tgc)
(ugc)
(vgc)
(xgc)
(ygc)
(zgc)
(bhc)
(chc)
(ghc)
(hhc)
(jhc)
(khc)
(lhc)
(mhc)
(qhc)
(rhc)
(thc)
(uhc)
(vhc)
(xhc)
(yhc)
(zhc)
(bic)
(cic)
(gic)
(hic)
(jic)
(kic)
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
(ykc)
(zkc)
(blc)
(clc)
(glc)
(hlc)
(jlc)
(klc)
(llc)
(mlc)
(qlc)
(rlc)
(tlc)
(ulc)
(vlc)
(xlc)
(ylc)
(zlc)
(bmc)
(cmc)
(gmc)
(hmc)
(jmc)
(kmc)
(lmc)
(mmc)
(qmc)
(rmc)
(tmc)
(umc)
(vmc)
(xmc)
(ymc)
(zmc)
(bnc)
(cnc)
(gnc)
(hnc)
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
(rqc)
(tqc)
(uqc)
(vqc)
(xqc)
(yqc)
(zqc)
(bsc)
(csc)
(gsc)
(hsc)
(jsc)
(ksc)
(lsc)
(msc)
(qsc)
(rsc)
(tsc)
(usc)
(vsc)
(xsc)
(ysc)
(zsc)
(brc)
(crc)
(grc)
(hrc)
(jrc)
(krc)
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
(cwc)
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
(gxc)
(hxc)
(jxc)
(kxc)
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
(y1c)
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
(t2c)
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
(c4c)
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
(r7c)
(t7c)
(u7c)
(v7c)
(x7c)
(y7c)
(z7c)
(b8c)
(c8c)
(g8c)
(h8c)
(j8c)
(k8c)
(l8c)
(m8c)
(q8c)
(r8c)
(t8c)
(u8c)
(v8c)
(x8c)
(y8c)
(z8c)
(b9c)
(c9c)
(g9c)
(h9c)
(j9c)
(k9c)
(l9c)
(m9c)
(q9c)
(r9c)
(t9c)
(u9c)
(v9c)
(x9c)
(y9c)
(z9c)
(b0c)
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
(ccd)
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
(hdd)
(jdd)
(kdd)
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
(thd)
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
(rmd)
(tmd)
(umd)
(vmd)
(xmd)
(ymd)
(zmd)
(bnd)
(cnd)
(gnd)
(hnd)
(jnd)
(knd)
(lnd)
(mnd)
(qnd)
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
(hod)
(jod)
(kod)
(lod)
(mod)
(qod)
(rod)
(tod)
(uod)
(vod)
(xod)
(yod)
(zod)
(bpd)
(cpd)
(gpd)
(hpd)
(jpd)
(kpd)
(lpd)
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
(zsd)
(brd)
(crd)
(grd)
(hrd)
(jrd)
(krd)
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
(htd)
(jtd)
(ktd)
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
(hud)
(jud)
(kud)
(lud)
(mud)
(qud)
(rud)
(tud)
(uud)
(xud)
(zud)
(cvd)
(hvd)
(kvd)
(mvd)
(rvd)
(uvd)
(xvd)
(yvd)
(zvd)
(cwd)
(gwd)
(hwd)
(kwd)
(lwd)
(mwd)
(rwd)
(twd)
(uwd)
(xwd)
(zwd)
(cxd)
(hxd)
(kxd)
(lxd)
(mxd)
(rxd)
(txd)
(uxd)
(xxd)
(zxd)
(cyd)
(gyd)
(hyd)
(kyd)
(lyd)
(myd)
(ryd)
(uyd)
(xyd)
(yyd)
(zyd)
(czd)
(gzd)
(hzd)
(kzd)
(lzd)
(mzd)
(rzd)
(tzd)
(uzd)
(xzd)
(yzd)
(zzd)
(c1d)
(g1d)
(h1d)
(k1d)
(l1d)
(m1d)
(r1d)
(t1d)
(u1d)
(x1d)
(z1d)
(c2d)
(h2d)
(k2d)
(m2d)
(r2d)
(u2d)
(x2d)
(z2d)
(c3d)
(h3d)
(k3d)
(m3d)
(q3d)
(r3d)
(u3d)
(x3d)
(z3d)
(c4d)
(h4d)
(k4d)
(m4d)
(r4d)
(u4d)
(x4d)
(z4d)
(c5d)
(h5d)
(k5d)
(m5d)
(r5d)
(u5d)
(x5d)
(z5d)
(c6d)
(h6d)
(k6d)
(m6d)
(r6d)
(u6d)
(x6d)
(z6d)
(c7d)
(h7d)
(k7d)
(m7d)
(r7d)
(u7d)
(v7d)
(x7d)
(z7d)
(b8d)
(c8d)
(h8d)
(j8d)
(k8d)
(m8d)
(q8d)
(r8d)
(u8d)
(v8d)
(x8d)
(z8d)
(b9d)
(c9d)
(h9d)
(j9d)
(k9d)
(m9d)
(q9d)
(r9d)
(u9d)
(v9d)
(x9d)
(z9d)
(b0d)
(c0d)
(h0d)
(j0d)
(k0d)
(m0d)
(q0d)
(r0d)
(u0d)
(v0d)
(x0d)
(z0d)
(bae)
(cae)
(hae)
(jae)
(kae)
(mae)
(qae)
(rae)
(uae)
(vae)
(xae)
(zae)
(bbe)
(cbe)
(hbe)
(jbe)
(kbe)
(mbe)
(qbe)
(rbe)
(ube)
(vbe)
(xbe)
(zbe)
(bce)
(cce)
(hce)
(jce)
(kce)
(mce)
(qce)
(rce)
(uce)
(vce)
(xce)
(zce)
(bde)
(cde)
(hde)
(jde)
(kde)
(mde)
(qde)
(rde)
(ude)
(vde)
(xde)
(zde)
(bee)
(cee)
(hee)
(jee)
(kee)
(mee)
(qee)
(ree)
(uee)
(xee)
(zee)
(cfe)
(hfe)
(kfe)
(mfe)
(rfe)
(ufe)
(xfe)
(zfe)
(cge)
(hge)
(kge)
(mge)
(rge)
(uge)
(xge)
(zge)
(che)
(hhe)
(khe)
(mhe)
(rhe)
(uhe)
(xhe)
(zhe)
(cie)
(hie)
(kie)
(mie)
(rie)
(tie)
(uie)
(vie)
(xie)
(yie)
(zie)
(bje)
(cje)
(gje)
(hje)
(jje)
(kje)
(lje)
(mje)
(qje)
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
(tke)
(uke)
(vke)
(xke)
(yke)
(zke)
(ble)
(cle)
(gle)
(hle)
(jle)
(kle)
(lle)
(mle)
(qle)
(rle)
(tle)
(ule)
(vle)
(xle)
(yle)
(zle)
(bme)
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
(une)
(vne)
(xne)
(yne)
(zne)
(boe)
(coe)
(goe)
(hoe)
(joe)
(koe)
(loe)
(moe)
(qoe)
(roe)
(toe)
(uoe)
(voe)
(xoe)
(yoe)
(zoe)
(bpe)
(cpe)
(gpe)
(hpe)
(jpe)
(kpe)
(lpe)
(mpe)
(qpe)
(rpe)
(tpe)
(upe)
(vpe)
(xpe)
(ype)
(zpe)
(bqe)
(cqe)
(gqe)
(hqe)
(jqe)
(kqe)
(lqe)
(mqe)
(qqe)
(rqe)
(tqe)
(uqe)
(vqe)
(xqe)
(yqe)
(zqe)
(bse)
(cse)
(gse)
(hse)
(jse)
(kse)
(lse)
(mse)
(qse)
(rse)
(tse)
(use)
(vse)
(xse)
(yse)
(zse)
(bre)
(cre)
(gre)
(hre)
(jre)
(kre)
(lre)
(mre)
(qre)
(rre)
(tre)
(ure)
(vre)
(xre)
(yre)
(zre)
(bte)
(cte)
(gte)
(hte)
(jte)
(kte)
(lte)
(mte)
(qte)
(rte)
(tte)
(ute)
(vte)
(xte)
(yte)
(zte)
(bue)
(cue)
(gue)
(hue)
(jue)
(kue)
(lue)
(mue)
(que)
(rue)
(tue)
(uue)
(vue)
(xue)
(yue)
(zue)
(bve)
(cve)
(gve)
(hve)
(jve)
(kve)
(lve)
(mve)
(qve)
(rve)
(tve)
(uve)
(vve)
(xve)
(yve)
(zve)
(bwe)
(cwe)
(gwe)
(hwe)
(jwe)
(kwe)
(lwe)
(mwe)
(qwe)
(rwe)
(twe)
(uwe)
(vwe)
(xwe)
(ywe)
(zwe)
(bxe)
(cxe)
(gxe)
(hxe)
(jxe)
(kxe)
(lxe)
(mxe)
(qxe)
(rxe)
(txe)
(uxe)
(vxe)
(xxe)
(yxe)
(zxe)
(bye)
(cye)
(gye)
(hye)
(jye)
(kye)
(lye)
(mye)
(rye)
(tye)
(uye)
(xye)
(yye)
(zye)
(cze)
(gze)
(hze)
(kze)
(lze)
(mze)
(rze)
(tze)
(uze)
(xze)
(yze)
(zze)
(c1e)
(g1e)
(h1e)
(r1e)
(u1e)
(x1e)
(z1e)
(c2e)
(k2e)
(m2e)
(r2e)
(u2e)
(x2e)
(z2e)
(c3e)
(h3e)
(k3e)
(m3e)
(r3e)
(u3e)
(x3e)
(z3e)
(c4e)
(h4e)
(k4e)
(m4e)
(r4e)
(t4e)
(u4e)
(x4e)
(y4e)
(z4e)
(c5e)
(g5e)
(h5e)
(k5e)
(l5e)
(m5e)
(r5e)
(u5e)
(x5e)
(y5e)
(z5e)
(c6e)
(h6e)
(k6e)
(l6e)
(m6e)
(r6e)
(u6e)
(x6e)
(y6e)
(z6e)
(c7e)
(h7e)
(k7e)
(l7e)
(m7e)
(q7e)
(r7e)
(t7e)
(u7e)
(v7e)
(x7e)
(y7e)
(z7e)
(b8e)
(c8e)
(g8e)
(h8e)
(j8e)
(k8e)
(l8e)
(m8e)
(q8e)
(r8e)
(t8e)
(u8e)
(v8e)
(x8e)
(y8e)
(z8e)
(b9e)
(c9e)
(g9e)
(h9e)
(j9e)
(k9e)
(l9e)
(m9e)
(q9e)
(r9e)
(t9e)
(u9e)
(v9e)
(x9e)
(y9e)
(z9e)
(b0e)
(c0e)
(g0e)
(h0e)
(j0e)
(k0e)
(l0e)
(m0e)
(q0e)
(r0e)
(t0e)
(u0e)
(v0e)
(x0e)
(y0e)
(z0e)
(baf)
(caf)
(gaf)
(haf)
(jaf)
(kaf)
(laf)
(maf)
(qaf)
(raf)
(taf)
(uaf)
(vaf)
(xaf)
(yaf)
(zaf)
(bbf)
(cbf)
(gbf)
(hbf)
(jbf)
(kbf)
(lbf)
(mbf)
(qbf)
(rbf)
(tbf)
(ubf)
(vbf)
(xbf)
(ybf)
(zbf)
(bcf)
(ccf)
(gcf)
(hcf)
(jcf)
(kcf)
(lcf)
(mcf)
(qcf)
(rcf)
(tcf)
(ucf)
(vcf)
(xcf)
(ycf)
(zcf)
(bdf)
(cdf)
(gdf)
(hdf)
(jdf)
(kdf)
(ldf)
(mdf)
(qdf)
(rdf)
(tdf)
(udf)
(vdf)
(xdf)
(ydf)
(zdf)
(bef)
(cef)
(gef)
(hef)
(jef)
(kef)
(lef)
(mef)
(qef)
(ref)
(tef)
(uef)
(vef)
(xef)
(yef)
(zef)
(bff)
(cff)
(gff)
(hff)
(jff)
(kff)
(lff)
(mff)
(qff)
(rff)
(tff)
(vff)
(yff)
(zff)
(bgf)
(cgf)
(ggf)
(jgf)
(kgf)
(lgf)
(mgf)
(qgf)
(tgf)
(ugf)
(vgf)
(xgf)
(ygf)
(zgf)
(bhf)
(chf)
(ghf)
(hhf)
(jhf)
(khf)
(lhf)
(mhf)
(qhf)
(rhf)
(thf)
(uhf)
(vhf)
(yhf)
(zhf)
(bif)
(gif)
(hif)
(jif)
(kif)
(lif)
(qif)
(rif)
(tif)
(uif)
(xif)
(yif)
(zif)
(cjf)
(hjf)
(kjf)
(ljf)
(mjf)
(qjf)
(rjf)
(ujf)
(xjf)
(zjf)
(ckf)
(gkf)
(hkf)
(jkf)
(kkf)
(lkf)
(mkf)
(qkf)
(rkf)
(tkf)
(ukf)
(vkf)
(xkf)
(ykf)
(zkf)
(blf)
(clf)
(glf)
(hlf)
(jlf)
(klf)
(llf)
(mlf)
(qlf)
(rlf)
(tlf)
(ulf)
(vlf)
(xlf)
(ylf)
(zlf)
(bmf)
(cmf)
(gmf)
(hmf)
(jmf)
(kmf)
(lmf)
(mmf)
(qmf)
(rmf)
(tmf)
(umf)
(vmf)
(xmf)
(ymf)
(zmf)
(bnf)
(cnf)
(gnf)
(hnf)
(jnf)
(knf)
(lnf)
(mnf)
(qnf)
(rnf)
(tnf)
(unf)
(vnf)
(xnf)
(ynf)
(znf)
(bof)
(cof)
(gof)
(hof)
(jof)
(kof)
(lof)
(mof)
(qof)
(rof)
(uof)
(xof)
(zof)
(cpf)
(hpf)
(kpf)
(mpf)
(rpf)
(upf)
(xpf)
(zpf)
(cqf)
(hqf)
(kqf)
(mqf)
(tqf)
(uqf)
(vqf)
(xqf)
(yqf)
(zqf)
(bsf)
(csf)
(gsf)
(hsf)
(jsf)
(ksf)
(lsf)
(msf)
(qsf)
(rsf)
(tsf)
(usf)
(vsf)
(xsf)
(ysf)
(zsf)
(brf)
(crf)
(grf)
(hrf)
(jrf)
(krf)
(lrf)
(mrf)
(qrf)
(rrf)
(trf)
(urf)
(vrf)
(xrf)
(yrf)
(zrf)
(btf)
(ctf)
(gtf)
(htf)
(jtf)
(ktf)
(ltf)
(mtf)
(qtf)
(rtf)
(ttf)
(utf)
(vtf)
(xtf)
(ytf)
(ztf)
(buf)
(cuf)
(guf)
(huf)
(juf)
(kuf)
(luf)
(muf)
(quf)
(ruf)
(tuf)
(uuf)
(vuf)
(xuf)
(yuf)
(zuf)
(bvf)
(cvf)
(gvf)
(hvf)
(jvf)
(kvf)
(lvf)
(mvf)
(qvf)
(rvf)
(tvf)
(uvf)
(vvf)
(xvf)
(yvf)
(zvf)
(bwf)
(cwf)
(gwf)
(hwf)
(jwf)
(kwf)
(mwf)
(qwf)
(rwf)
(twf)
(uwf)
(vwf)
(xwf)
(ywf)
(zwf)
(bxf)
(cxf)
(gxf)
(hxf)
(jxf)
(kxf)
(lxf)
(mxf)
(qxf)
(rxf)
(txf)
(uxf)
(vxf)
(xxf)
(yxf)
(zxf)
(byf)
(cyf)
(gyf)
(hyf)
(jyf)
(kyf)
(lyf)
(myf)
(qyf)
(ryf)
(tyf)
(uyf)
(vyf)
(xyf)
(yyf)
(zyf)
(bzf)
(czf)
(gzf)
(hzf)
(jzf)
(kzf)
(lzf)
(mzf)
(rzf)
(tzf)
(uzf)
(vzf)
(zzf)
(b1f)
(c1f)
(g1f)
(h1f)
(j1f)
(k1f)
(l1f)
(m1f)
(q1f)
(r1f)
(t1f)
(u1f)
(v1f)
(x1f)
(y1f)
(z1f)
(b2f)
(c2f)
(g2f)
(h2f)
(j2f)
(k2f)
(l2f)
(m2f)
(q2f)
(r2f)
(t2f)
(u2f)
(v2f)
(x2f)
(y2f)
(z2f)
(b3f)
(c3f)
(g3f)
(h3f)
(j3f)
(k3f)
(l3f)
(m3f)
(q3f)
(r3f)
(t3f)
(u3f)
(v3f)
(x3f)
(y3f)
(z3f)
(b4f)
(c4f)
(g4f)
(h4f)
(j4f)
(k4f)
(l4f)
(m4f)
(q4f)
(r4f)
(t4f)
(u4f)
(v4f)
(x4f)
(y4f)
(z4f)
(b5f)
(c5f)
(g5f)
(h5f)
(j5f)
(k5f)
(l5f)
(m5f)
(q5f)
(r5f)
(t5f)
(u5f)
(v5f)
(x5f)
(y5f)
(z5f)
(b6f)
(c6f)
(g6f)
(h6f)
(j6f)
(k6f)
(l6f)
(m6f)
(q6f)
(r6f)
(t6f)
(u6f)
(v6f)
(x6f)
(y6f)
(z6f)
(b7f)
(c7f)
(g7f)
(h7f)
(j7f)
(k7f)
(l7f)
(m7f)
(q7f)
(r7f)
(t7f)
(u7f)
(v7f)
(x7f)
(y7f)
(z7f)
(b8f)
(c8f)
(g8f)
(h8f)
(j8f)
(k8f)
(l8f)
(m8f)
(q8f)
(r8f)
(t8f)
(u8f)
(v8f)
(x8f)
(y8f)
(z8f)
(b9f)
(c9f)
(g9f)
(h9f)
(j9f)
(k9f)
(l9f)
(m9f)
(q9f)
(r9f)
(t9f)
(u9f)
(v9f)
(x9f)
(y9f)
(z9f)
(b0f)
(c0f)
(g0f)
(h0f)
(j0f)
(k0f)
(l0f)
(m0f)
(q0f)
(r0f)
(t0f)
(u0f)
(v0f)
(x0f)
(y0f)
(z0f)
(bag)
(cag)
(gag)
(hag)
(jag)
(kag)
(lag)
(mag)
(qag)
(rag)
(tag)
(uag)
(vag)
(xag)
(yag)
(zag)
(bbg)
(cbg)
(gbg)
(hbg)
(jbg)
(kbg)
(lbg)
(mbg)
(qbg)
(rbg)
(tbg)
(vbg)
(ybg)
(zbg)
(bcg)
(ccg)
(gcg)
(hcg)
(jcg)
(kcg)
(lcg)
(mcg)
(qcg)
(rcg)
(tcg)
(ucg)
(vcg)
(xcg)
(ycg)
(zcg)
(bdg)
(cdg)
(gdg)
(hdg)
(jdg)
(kdg)
(ldg)
(mdg)
(qdg)
(rdg)
(tdg)
(udg)
(vdg)
(xdg)
(ydg)
(zdg)
(beg)
(ceg)
(geg)
(heg)
(jeg)
(keg)
(leg)
(qeg)
(reg)
(teg)
(ueg)
(veg)
(xeg)
(yeg)
(zeg)
(cfg)
(gfg)
(hfg)
(kfg)
(lfg)
(mfg)
(qfg)
(rfg)
(tfg)
(ufg)
(vfg)
(xfg)
(zfg)
(cgg)
(ggg)
(hgg)
(jgg)
(kgg)
(lgg)
(mgg)
(qgg)
(rgg)
(tgg)
(ugg)
(vgg)
(xgg)
(ygg)
(zgg)
(bhg)
(chg)
(ghg)
(hhg)
(jhg)
(khg)
(lhg)
(mhg)
(qhg)
(rhg)
(thg)
(uhg)
(vhg)
(xhg)
(yhg)
(zhg)
(big)
(cig)
(gig)
(hig)
(jig)
(kig)
(lig)
(mig)
(qig)
(rig)
(tig)
(uig)
(vig)
(xig)
(yig)
(zig)
(bjg)
(cjg)
(gjg)
(hjg)
(jjg)
(kjg)
(ljg)
(mjg)
(qjg)
(rjg)
(tjg)
(ujg)
(vjg)
(xjg)
(yjg)
(bkg)
(ckg)
(gkg)
(hkg)
(jkg)
(kkg)
(lkg)
(mkg)
(qkg)
(rkg)
(tkg)
(ukg)
(vkg)
(xkg)
(ykg)
(zkg)
(blg)
(clg)
(hlg)
(klg)
(mlg)
(rlg)
(tlg)
(ulg)
(vlg)
(xlg)
(zlg)
(cmg)
(hmg)
(lmg)
(mmg)
(tmg)
(umg)
(vmg)
(xmg)
(ymg)
(zmg)
(bng)
(cng)
(gng)
(hng)
(jng)
(kng)
(lng)
(mng)
(qng)
(rng)
(tng)
(ung)
(vng)
(xng)
(yng)
(zng)
(bog)
(cog)
(gog)
(hog)
(jog)
(kog)
(log)
(mog)
(qog)
(rog)
(tog)
(uog)
(vog)
(xog)
(yog)
(zog)
(bpg)
(cpg)
(gpg)
(jpg)
(kpg)
(lpg)
(qpg)
(rpg)
(tpg)
(upg)
(vpg)
(xpg)
(ypg)
(zpg)
(bqg)
(cqg)
(gqg)
(hqg)
(jqg)
(kqg)
(lqg)
(mqg)
(qqg)
(rqg)
(tqg)
(uqg)
(vqg)
(xqg)
(yqg)
(zqg)
(bsg)
(csg)
(gsg)
(hsg)
(jsg)
(ksg)
(lsg)
(msg)
(qsg)
(rsg)
(tsg)
(usg)
(vsg)
(xsg)
(ysg)
(zsg)
(brg)
(crg)
(grg)
(hrg)
(jrg)
(krg)
(mrg)
(qrg)
(rrg)
(trg)
(urg)
(vrg)
(xrg)
(yrg)
(zrg)
(btg)
(ctg)
(gtg)
(htg)
(jtg)
(ktg)
(ltg)
(mtg)
(qtg)
(rtg)
(ttg)
(utg)
(vtg)
(xtg)
(ytg)
(ztg)
(bug)
(cug)
(gug)
(hug)
(jug)
(kug)
(lug)
(mug)
(qug)
(rug)
(tug)
(uug)
(vug)
(xug)
(yug)
(zug)
(bvg)
(cvg)
(gvg)
(hvg)
(jvg)
(kvg)
(lvg)
(mvg)
(rvg)
(tvg)
(uvg)
(vvg)
(xvg)
(zvg)
(bwg)
(cwg)
(gwg)
(hwg)
(jwg)
(kwg)
(lwg)
(mwg)
(qwg)
(rwg)
(twg)
(uwg)
(vwg)
(xwg)
(ywg)
(zwg)
(bxg)
(cxg)
(gxg)
(hxg)
(jxg)
(kxg)
(lxg)
(mxg)
(qxg)
(rxg)
(txg)
(uxg)
(vxg)
(xxg)
(yxg)
(zxg)
(byg)
(cyg)
(gyg)
(hyg)
(jyg)
(kyg)
(lyg)
(myg)
(qyg)
(ryg)
(tyg)
(uyg)
(vyg)
(xyg)
(yyg)
(zyg)
(bzg)
(czg)
(gzg)
(hzg)
(jzg)
(kzg)
(lzg)
(mzg)
(qzg)
(rzg)
(tzg)
(uzg)
(vzg)
(xzg)
(yzg)
(zzg)
(b1g)
(c1g)
(g1g)
(h1g)
(j1g)
(k1g)
(l1g)
(m1g)
(q1g)
(r1g)
(t1g)
(u1g)
(v1g)
(x1g)
(y1g)
(z1g)
(b2g)
(c2g)
(g2g)
(h2g)
(j2g)
(k2g)
(l2g)
(m2g)
(q2g)
(r2g)
(t2g)
(u2g)
(v2g)
(x2g)
(y2g)
(z2g)
(b3g)
(c3g)
(g3g)
(h3g)
(j3g)
(k3g)
(l3g)
(m3g)
(q3g)
(r3g)
(t3g)
(u3g)
(v3g)
(x3g)
(y3g)
(z3g)
(b4g)
(c4g)
(g4g)
(h4g)
(j4g)
(k4g)
(l4g)
(m4g)
(q4g)
(r4g)
(t4g)
(u4g)
(v4g)
(x4g)
(y4g)
(z4g)
(b5g)
(c5g)
(g5g)
(h5g)
(j5g)
(k5g)
(l5g)
(m5g)
(q5g)
(r5g)
(t5g)
(u5g)
(v5g)
(x5g)
(y5g)
(z5g)
(b6g)
(c6g)
(g6g)
(h6g)
(j6g)
(k6g)
(l6g)
(m6g)
(q6g)
(r6g)
(t6g)
(u6g)
(v6g)
(x6g)
(y6g)
(z6g)
(b7g)
(c7g)
(g7g)
(h7g)
(j7g)
(k7g)
(l7g)
(m7g)
(q7g)
(r7g)
(t7g)
(u7g)
(v7g)
(x7g)
(y7g)
(z7g)
(b8g)
(c8g)
(g8g)
(h8g)
(j8g)
(k8g)
(l8g)
(m8g)
(q8g)
(r8g)
(t8g)
(u8g)
(v8g)
(x8g)
(y8g)
(z8g)
(b9g)
(c9g)
(g9g)
(h9g)
(j9g)
(k9g)
(l9g)
(m9g)
(q9g)
(r9g)
(t9g)
(u9g)
(v9g)
(x9g)
(y9g)
(z9g)
(b0g)
(c0g)
(g0g)
(h0g)
(j0g)
(k0g)
(l0g)
(m0g)
(q0g)
(r0g)
(t0g)
(u0g)
(v0g)
(x0g)
(y0g)
(z0g)
(bah)
(cah)
(gah)
(hah)
(jah)
(kah)
(lah)
(qah)
(rah)
(tah)
(uah)
(vah)
(xah)
(yah)
(zah)
(bbh)
(cbh)
(gbh)
(hbh)
(kbh)
(lbh)
(mbh)
(qbh)
(rbh)
(tbh)
(ubh)
(vbh)
(xbh)
(zbh)
(bch)
(cch)
(gch)
(hch)
(jch)
(kch)
(lch)
(mch)
(qch)
(rch)
(tch)
(uch)
(vch)
(xch)
(ych)
(zch)
(bdh)
(cdh)
(gdh)
(hdh)
(jdh)
(kdh)
(ldh)
(mdh)
(qdh)
(rdh)
(tdh)
(udh)
(vdh)
(xdh)
(ydh)
(zdh)
(beh)
(ceh)
(geh)
(heh)
(jeh)
(keh)
(leh)
(meh)
(qeh)
(reh)
(teh)
(ueh)
(veh)
(xeh)
(yeh)
(zeh)
(bfh)
(cfh)
(gfh)
(hfh)
(jfh)
(kfh)
(lfh)
(mfh)
(qfh)
(rfh)
(tfh)
(ufh)
(vfh)
(xfh)
(yfh)
(bgh)
(ggh)
(hgh)
(jgh)
(kgh)
(lgh)
(mgh)
(qgh)
(rgh)
(tgh)
(ugh)
(vgh)
(xgh)
(ygh)
(zgh)
(bhh)
(chh)
(hhh)
(khh)
(lhh)
(mhh)
(qhh)
(rhh)
(thh)
(uhh)
(vhh)
(xhh)
(zhh)
(gih)
(hih)
(lih)
(mih)
(qih)
(tih)
(uih)
(vih)
(xih)
(yih)
(zih)
(bjh)
(cjh)
(gjh)
(hjh)
(jjh)
(kjh)
(ljh)
(mjh)
(qjh)
(rjh)
(tjh)
(ujh)
(vjh)
(xjh)
(yjh)
(zjh)
(bkh)
(ckh)
(gkh)
(hkh)
(jkh)
(kkh)
(lkh)
(mkh)
(qkh)
(rkh)
(tkh)
(ukh)
(vkh)
(xkh)
(ykh)
(zkh)
(blh)
(clh)
(glh)
(jlh)
(llh)
(qlh)
(tlh)
(ulh)
(vlh)
(xlh)
(ylh)
(zlh)
(bmh)
(cmh)
(gmh)
(hmh)
(jmh)
(kmh)
(lmh)
(mmh)
(qmh)
(rmh)
(tmh)
(umh)
(vmh)
(xmh)
(ymh)
(zmh)
(bnh)
(cnh)
(gnh)
(hnh)
(jnh)
(knh)
(lnh)
(qnh)
(rnh)
(tnh)
(unh)
(vnh)
(xnh)
(ynh)
(znh)
(boh)
(coh)
(goh)
(hoh)
(koh)
(moh)
(qoh)
(roh)
(toh)
(uoh)
(voh)
(xoh)
(yoh)
(zoh)
(bph)
(cph)
(gph)
(hph)
(jph)
(kph)
(lph)
(mph)
(qph)
(rph)
(tph)
(uph)
(vph)
(xph)
(yph)
(zph)
(bqh)
(cqh)
(gqh)
(hqh)
(jqh)
(kqh)
(lqh)
(mqh)
(qqh)
(rqh)
(tqh)
(uqh)
(vqh)
(xqh)
(zqh)
(bsh)
(csh)
(gsh)
(hsh)
(jsh)
(ksh)
(lsh)
(msh)
(rsh)
(tsh)
(ush)
(vsh)
(xsh)
(zsh)
(crh)
(grh)
(hrh)
(jrh)
(krh)
(lrh)
(mrh)
(qrh)
(rrh)
(trh)
(urh)
(vrh)
(xrh)
(yrh)
(zrh)
(bth)
(cth)
(gth)
(hth)
(jth)
(kth)
(lth)
(mth)
(qth)
(rth)
(tth)
(uth)
(vth)
(xth)
(yth)
(zth)
(buh)
(cuh)
(guh)
(huh)
(juh)
(kuh)
(luh)
(muh)
(quh)
(ruh)
(tuh)
(uuh)
(vuh)
(xuh)
(yuh)
(zuh)
(bvh)
(cvh)
(gvh)
(hvh)
(jvh)
(kvh)
(lvh)
(mvh)
(qvh)
(rvh)
(tvh)
(uvh)
(vvh)
(xvh)
(yvh)
(zvh)
(bwh)
(cwh)
(gwh)
(hwh)
(jwh)
(kwh)
(lwh)
(mwh)
(qwh)
(rwh)
(twh)
(uwh)
(vwh)
(xwh)
(ywh)
(zwh)
(bxh)
(cxh)
(gxh)
(hxh)
(jxh)
(kxh)
(lxh)
(mxh)
(qxh)
(rxh)
(txh)
(uxh)
(vxh)
(xxh)
(yxh)
(zxh)
(byh)
(cyh)
(gyh)
(hyh)
(jyh)
(kyh)
(lyh)
(myh)
(qyh)
(ryh)
(tyh)
(uyh)
(vyh)
(xyh)
(yyh)
(zyh)
(bzh)
(czh)
(gzh)
(hzh)
(jzh)
(kzh)
(lzh)
(mzh)
(qzh)
(rzh)
(tzh)
(uzh)
(vzh)
(xzh)
(yzh)
(zzh)
(b1h)
(c1h)
(g1h)
(h1h)
(j1h)
(k1h)
(l1h)
(m1h)
(q1h)
(r1h)
(t1h)
(u1h)
(v1h)
(x1h)
(y1h)
(z1h)
(b2h)
(c2h)
(g2h)
(h2h)
(j2h)
(k2h)
(l2h)
(m2h)
(q2h)
(r2h)
(t2h)
(u2h)
(v2h)
(x2h)
(y2h)
(z2h)
(b3h)
(c3h)
(g3h)
(h3h)
(j3h)
(k3h)
(l3h)
(m3h)
(q3h)
(r3h)
(t3h)
(u3h)
(v3h)
(x3h)
(y3h)
(z3h)
(b4h)
(c4h)
(g4h)
(h4h)
(j4h)
(k4h)
(l4h)
(m4h)
(q4h)
(r4h)
(t4h)
(u4h)
(v4h)
(x4h)
(y4h)
(z4h)
(b5h)
(c5h)
(g5h)
(h5h)
(j5h)
(k5h)
(l5h)
(m5h)
(q5h)
(r5h)
(t5h)
(u5h)
(v5h)
(x5h)
(y5h)
(z5h)
(b6h)
(c6h)
(g6h)
(h6h)
(j6h)
(k6h)
(l6h)
(m6h)
(q6h)
(r6h)
(t6h)
(u6h)
(v6h)
(x6h)
(y6h)
(z6h)
(b7h)
(c7h)
(g7h)
(h7h)
(j7h)
(k7h)
(l7h)
(m7h)
(q7h)
(r7h)
(t7h)
(u7h)
(v7h)
(x7h)
(y7h)
(z7h)
(b8h)
(c8h)
(g8h)
(h8h)
(k8h)
(l8h)
(m8h)
(q8h)
(r8h)
(t8h)
(u8h)
(v8h)
(x8h)
(y8h)
(z8h)
(b9h)
(c9h)
(g9h)
(h9h)
(j9h)
(k9h)
(l9h)
(m9h)
(q9h)
(r9h)
(t9h)
(u9h)
(v9h)
(x9h)
(y9h)
(z9h)
(b0h)
(c0h)
(g0h)
(h0h)
(j0h)
(k0h)
(l0h)
(m0h)
(q0h)
(r0h)
(t0h)
(u0h)
(v0h)
(x0h)
(y0h)
(z0h)
(bai)
(cai)
(gai)
(hai)
(jai)
(kai)
(lai)
(mai)
(qai)
(rai)
(tai)
(uai)
(vai)
(xai)
(yai)
(zai)
(bbi)
(cbi)
(gbi)
(hbi)
(jbi)
(kbi)
(lbi)
(mbi)
(qbi)
(rbi)
(tbi)
(ubi)
(vbi)
(xbi)
(ybi)
(bci)
(gci)
(hci)
(jci)
(kci)
(lci)
(qci)
(tci)
(uci)
(vci)
(xci)
(yci)
(zci)
(bdi)
(cdi)
(gdi)
(hdi)
(kdi)
(ldi)
(mdi)
(qdi)
(rdi)
(tdi)
(udi)
(vdi)
(gei)
(hei)
(jei)
(lei)
(mei)
(qei)
(tei)
(uei)
(vei)
(xei)
(yei)
(zei)
(bfi)
(cfi)
(gfi)
(hfi)
(jfi)
(kfi)
(lfi)
(mfi)
(qfi)
(rfi)
(tfi)
(ufi)
(vfi)
(xfi)
(yfi)
(zfi)
(bgi)
(cgi)
(ggi)
(hgi)
(jgi)
(kgi)
(lgi)
(mgi)
(qgi)
(rgi)
(tgi)
(vgi)
(ygi)
(bhi)
(ghi)
(jhi)
(lhi)
(qhi)
(thi)
(uhi)
(vhi)
(xhi)
(yhi)
(zhi)
(bii)
(cii)
(gii)
(hii)
(jii)
(kii)
(lii)
(mii)
(qii)
(rii)
(tii)
(uii)
(vii)
(xii)
(yii)
(zii)
(bji)
(cji)
(gji)
(hji)
(jji)
(kji)
(lji)
(qji)
(rji)
(tji)
(uji)
(vji)
(xji)
(yji)
(zji)
(bki)
(cki)
(gki)
(hki)
(kki)
(mki)
(qki)
(rki)
(tki)
(uki)
(vki)
(xki)
(yki)
(zki)
(bli)
(cli)
(hli)
(kli)
(lli)
(mli)
(qli)
(rli)
(uli)
(vli)
(xli)
(yli)
(zli)
(cmi)
(gmi)
(hmi)
(jmi)
(kmi)
(lmi)
(mmi)
(qmi)
(rmi)
(tmi)
(umi)
(xmi)
(zmi)
(bni)
(cni)
(gni)
(hni)
(kni)
(lni)
(mni)
(rni)
(tni)
(uni)
(vni)
(xni)
(zni)
(coi)
(hoi)
(joi)
(koi)
(moi)
(qoi)
(roi)
(toi)
(uoi)
(voi)
(xoi)
(yoi)
(zoi)
(bpi)
(cpi)
(gpi)
(hpi)
(jpi)
(kpi)
(lpi)
(mpi)
(qpi)
(rpi)
(tpi)
(upi)
(vpi)
(xpi)
(ypi)
(zpi)
(bqi)
(cqi)
(gqi)
(hqi)
(jqi)
(kqi)
(lqi)
(mqi)
(qqi)
(rqi)
(tqi)
(uqi)
(vqi)
(xqi)
(yqi)
(zqi)
(bsi)
(csi)
(gsi)
(hsi)
(jsi)
(ksi)
(lsi)
(msi)
(qsi)
(rsi)
(tsi)
(usi)
(vsi)
(xsi)
(ysi)
(zsi)
(bri)
(cri)
(gri)
(hri)
(jri)
(kri)
(lri)
(mri)
(qri)
(rri)
(tri)
(uri)
(vri)
(xri)
(yri)
(zri)
(bti)
(cti)
(gti)
(hti)
(jti)
(kti)
(lti)
(mti)
(qti)
(rti)
(tti)
(uti)
(vti)
(xti)
(yti)
(zti)
(bui)
(cui)
(gui)
(hui)
(jui)
(kui)
(lui)
(mui)
(qui)
(rui)
(tui)
(uui)
(vui)
(xui)
(yui)
(zui)
(bvi)
(cvi)
(gvi)
(hvi)
(jvi)
(kvi)
(lvi)
(mvi)
(qvi)
(rvi)
(tvi)
(uvi)
(vvi)
(xvi)
(yvi)
(zvi)
(bwi)
(cwi)
(gwi)
(hwi)
(jwi)
(kwi)
(lwi)
(mwi)
(qwi)
(rwi)
(twi)
(uwi)
(vwi)
(xwi)
(ywi)
(zwi)
(bxi)
(cxi)
(gxi)
(hxi)
(jxi)
(kxi)
(lxi)
(mxi)
(qxi)
(rxi)
(txi)
(uxi)
(vxi)
(xxi)
(yxi)
(zxi)
(byi)
(cyi)
(gyi)
(hyi)
(jyi)
(kyi)
(lyi)
(myi)
(qyi)
(ryi)
(tyi)
(uyi)
(vyi)
(xyi)
(yyi)
(zyi)
(bzi)
(czi)
(gzi)
(hzi)
(jzi)
(kzi)
(lzi)
(mzi)
(qzi)
(rzi)
(tzi)
(uzi)
(vzi)
(xzi)
(yzi)
(zzi)
(b1i)
(c1i)
(g1i)
(h1i)
(j1i)
(k1i)
(l1i)
(m1i)
(q1i)
(r1i)
(t1i)
(u1i)
(v1i)
(x1i)
(y1i)
(z1i)
(b2i)
(c2i)
(g2i)
(h2i)
(j2i)
(k2i)
(l2i)
(m2i)
(q2i)
(r2i)
(t2i)
(u2i)
(v2i)
(x2i)
(y2i)
(z2i)
(b3i)
(c3i)
(g3i)
(h3i)
(j3i)
(k3i)
(l3i)
(m3i)
(q3i)
(r3i)
(t3i)
(u3i)
(v3i)
(x3i)
(y3i)
(z3i)
(b4i)
(c4i)
(g4i)
(h4i)
(l4i)
(m4i)
(q4i)
(r4i)
(t4i)
(u4i)
(v4i)
(x4i)
(y4i)
(z4i)
(b5i)
(c5i)
(g5i)
(h5i)
(j5i)
(k5i)
(l5i)
(m5i)
(q5i)
(r5i)
(t5i)
(u5i)
(v5i)
(x5i)
(y5i)
(z5i)
(b6i)
(c6i)
(g6i)
(h6i)
(j6i)
(k6i)
(l6i)
(m6i)
(q6i)
(r6i)
(t6i)
(u6i)
(v6i)
(x6i)
(y6i)
(z6i)
(b7i)
(c7i)
(g7i)
(h7i)
(j7i)
(k7i)
(l7i)
(m7i)
(q7i)
(r7i)
(t7i)
(u7i)
(v7i)
(x7i)
(y7i)
(z7i)
(b8i)
(c8i)
(g8i)
(h8i)
(j8i)
(k8i)
(l8i)
(m8i)
(q8i)
(r8i)
(t8i)
(v8i)
(y8i)
(b9i)
(g9i)
(j9i)
(l9i)
(q9i)
(t9i)
(u9i)
(v9i)
(x9i)
(y9i)
(z9i)
(b0i)
(c0i)
(g0i)
(h0i)
(j0i)
(k0i)
(l0i)
(m0i)
(q0i)
(r0i)
(t0i)
(v0i)
(baj)
(gaj)
(jaj)
(laj)
(qaj)
(taj)
(uaj)
(vaj)
(xaj)
(yaj)
(zaj)
(bbj)
(cbj)
(gbj)
(hbj)
(jbj)
(kbj)
(lbj)
(mbj)
(qbj)
(rbj)
(tbj)
(ubj)
(vbj)
(xbj)
(ybj)
(zbj)
(bcj)
(ccj)
(gcj)
(hcj)
(jcj)
(kcj)
(lcj)
(mcj)
(qcj)
(rcj)
(tcj)
(vcj)
(ycj)
(bdj)
(gdj)
(jdj)
(ldj)
(qdj)
(tdj)
(vdj)
(ydj)
(bej)
(gej)
(jej)
(lej)
(qej)
(tej)
(uej)
(vej)
(xej)
(yej)
(bfj)
(gfj)
(hfj)
(jfj)
(kfj)
(lfj)
(qfj)
(rfj)
(tfj)
(ufj)
(vfj)
(xfj)
(yfj)
(zfj)
(bgj)
(cgj)
(hgj)
(kgj)
(mgj)
(rgj)
(tgj)
(ugj)
(vgj)
(xgj)
(zgj)
(chj)
(hhj)
(khj)
(lhj)
(mhj)
(qhj)
(rhj)
(uhj)
(xhj)
(zhj)
(cij)
(gij)
(hij)
(jij)
(kij)
(lij)
(mij)
(qij)
(rij)
(uij)
(xij)
(zij)
(cjj)
(hjj)
(kjj)
(mjj)
(rjj)
(ujj)
(xjj)
(zjj)
(ckj)
(hkj)
(kkj)
(mkj)
(rkj)
(tkj)
(ukj)
(vkj)
(xkj)
(ykj)
(zkj)
(blj)
(clj)
(glj)
(hlj)
(jlj)
(klj)
(llj)
(mlj)
(qlj)
(rlj)
(tlj)
(ulj)
(vlj)
(xlj)
(ylj)
(zlj)
(bmj)
(cmj)
(gmj)
(hmj)
(jmj)
(kmj)
(lmj)
(mmj)
(qmj)
(rmj)
(tmj)
(umj)
(xmj)
(ymj)
(zmj)
(bnj)
(cnj)
(hnj)
(jnj)
(knj)
(lnj)
(mnj)
(rnj)
(unj)
(vnj)
(xnj)
(ynj)
(znj)
(boj)
(coj)
(goj)
(hoj)
(koj)
(moj)
(roj)
(uoj)
(xoj)
(zoj)
(cpj)
(hpj)
(kpj)
(mpj)
(rpj)
(upj)
(vpj)
(xpj)
(ypj)
(zpj)
(bqj)
(cqj)
(gqj)
(hqj)
(jqj)
(kqj)
(lqj)
(mqj)
(qqj)
(rqj)
(tqj)
(uqj)
(xqj)
(zqj)
(csj)
(hsj)
(ksj)
(msj)
(rsj)
(usj)
(xsj)
(zsj)
(crj)
(hrj)
(krj)
(mrj)
(rrj)
(urj)
(vrj)
(xrj)
(yrj)
(zrj)
(btj)
(ctj)
(gtj)
(htj)
(jtj)
(ktj)
(ltj)
(mtj)
(qtj)
(rtj)
(ttj)
(utj)
(vtj)
(xtj)
(ytj)
(ztj)
(buj)
(cuj)
(guj)
(huj)
(juj)
(kuj)
(luj)
(muj)
(quj)
(ruj)
(tuj)
(uuj)
(vuj)
(xuj)
(yuj)
(zuj)
(bvj)
(cvj)
(gvj)
(hvj)
(jvj)
(kvj)
(lvj)
(mvj)
(qvj)
(rvj)
(tvj)
(uvj)
(vvj)
(xvj)
(yvj)
(zvj)
(bwj)
(cwj)
(gwj)
(hwj)
(jwj)
(kwj)
(lwj)
(mwj)
(qwj)
(rwj)
(twj)
(uwj)
(vwj)
(xwj)
(ywj)
(zwj)
(bxj)
(cxj)
(gxj)
(hxj)
(jxj)
(kxj)
(lxj)
(mxj)
(qxj)
(rxj)
(txj)
(uxj)
(vxj)
(xxj)
(yxj)
(zxj)
(byj)
(cyj)
(gyj)
(hyj)
(jyj)
(kyj)
(lyj)
(myj)
(qyj)
(ryj)
(tyj)
(vyj)
(yyj)
(bzj)
(gzj)
(lzj)
(qzj)
(tzj)
(vzj)
(yzj)
(b1j)
(g1j)
(j1j)
(l1j)
(q1j)
(t1j)
(v1j)
(y1j)
(b2j)
(g2j)
(j2j)
(l2j)
(q2j)
(t2j)
(v2j)
(y2j)
(b3j)
(g3j)
(j3j)
(l3j)
(q3j)
(t3j)
(u3j)
(v3j)
(x3j)
(y3j)
(z3j)
(b4j)
(c4j)
(g4j)
(h4j)
(j4j)
(k4j)
(l4j)
(m4j)
(q4j)
(r4j)
(t4j)
(v4j)
(y4j)
(b5j)
(g5j)
(j5j)
(l5j)
(q5j)
(t5j)
(u5j)
(v5j)
(x5j)
(y5j)
(z5j)
(b6j)
(c6j)
(g6j)
(h6j)
(j6j)
(k6j)
(l6j)
(m6j)
(q6j)
(r6j)
(t6j)
(v6j)
(y6j)
(b7j)
(g7j)
(j7j)
(l7j)
(q7j)
(t7j)
(u7j)
(v7j)
(x7j)
(y7j)
(z7j)
(b8j)
(c8j)
(g8j)
(h8j)
(j8j)
(k8j)
(l8j)
(m8j)
(q8j)
(r8j)
(t8j)
(u8j)
(v8j)
(x8j)
(y8j)
(z8j)
(b9j)
(c9j)
(g9j)
(h9j)
(j9j)
(k9j)
(l9j)
(m9j)
(q9j)
(r9j)
(t9j)
(v9j)
(y9j)
(b0j)
(g0j)
(j0j)
(l0j)
(q0j)
(t0j)
(v0j)
(y0j)
(bak)
(gak)
(jak)
(lak)
(qak)
(tak)
(uak)
(vak)
(xak)
(yak)
(bbk)
(gbk)
(hbk)
(jbk)
(kbk)
(lbk)
(qbk)
(rbk)
(tbk)
(ubk)
(vbk)
(xbk)
(ybk)
(zbk)
(bck)
(cck)
(hck)
(kck)
(mck)
(rck)
(tck)
(uck)
(vck)
(xck)
(zck)
(cdk)
(hdk)
(kdk)
(ldk)
(mdk)
(qdk)
(rdk)
(udk)
(xdk)
(zdk)
(cek)
(gek)
(hek)
(jek)
(kek)
(lek)
(mek)
(qek)
(rek)
(uek)
(xek)
(zek)
(cfk)
(hfk)
(kfk)
(mfk)
(rfk)
(ufk)
(xfk)
(zfk)
(cgk)
(hgk)
(kgk)
(mgk)
(rgk)
(tgk)
(ugk)
(vgk)
(xgk)
(ygk)
(zgk)
(bhk)
(chk)
(ghk)
(hhk)
(jhk)
(khk)
(lhk)
(mhk)
(qhk)
(rhk)
(thk)
(uhk)
(vhk)
(xhk)
(yhk)
(zhk)
(bik)
(cik)
(gik)
(hik)
(jik)
(kik)
(lik)
(mik)
(qik)
)
(:action make_end_disj_goal
:parameters ()
:precondition (and (q7e))

:effect (and  (x5c) (ro) (ccc) (x5) (hgb) (not(q7e)) (crc) (gwb)
(when (mik)  (med)) ;; Support. 
(when (ted) (and (c) (cg))) ;; Support. 
(when (yed)  (g)) ;; Support. 
(when (gfd)  (h)) ;; Support. 
(when (lfd)  (j)) ;; Support. 
(when (tfd)  (k)) ;; Support. 
(when (yfd)  (l)) ;; Support. 
(when (ggd)  (m)) ;; Support. 
(when (lgd)  (q)) ;; Support. 
(when (tgd)  (r)) ;; Support. 
(when (ygd)  (t)) ;; Support. 
(when (ghd)  (u)) ;; Support. 
(when (lhd)  (v)) ;; Support. 
(when (thd)  (x)) ;; Support. 
(when (yhd)  (y)) ;; Support. 
(when (gid)  (z)) ;; Support. 
(when (lid)  (bb)) ;; Support. 
(when (tid)  (cb)) ;; Support. 
(when (yid)  (gb)) ;; Support. 
(when (gjd)  (hb)) ;; Support. 
(when (ljd)  (jb)) ;; Support. 
(when (tjd)  (kb)) ;; Support. 
(when (yjd)  (lb)) ;; Support. 
(when (gkd)  (mb)) ;; Support. 
(when (lkd)  (qb)) ;; Support. 
(when (tkd)  (rb)) ;; Support. 
(when (ykd)  (tb)) ;; Support. 
(when (gld)  (ub)) ;; Support. 
(when (lld)  (vb)) ;; Support. 
(when (tld)  (xb)) ;; Support. 
(when (yld)  (yb)) ;; Support. 
(when (gmd)  (zb)) ;; Support. 
(when (lmd)  (bc)) ;; Support. 
(when (tmd)  (cc)) ;; Support. 
(when (ymd)  (gc)) ;; Support. 
(when (gnd)  (hc)) ;; Support. 
(when (lnd)  (jc)) ;; Support. 
(when (tnd)  (kc)) ;; Support. 
(when (ynd)  (lc)) ;; Support. 
(when (god)  (mc)) ;; Support. 
(when (lod)  (qc)) ;; Support. 
(when (tod)  (rc)) ;; Support. 
(when (yod)  (tc)) ;; Support. 
(when (gpd)  (uc)) ;; Support. 
(when (lpd)  (vc)) ;; Support. 
(when (tpd)  (xc)) ;; Support. 
(when (ypd)  (yc)) ;; Support. 
(when (gqd)  (zc)) ;; Support. 
(when (lqd)  (bd)) ;; Support. 
(when (tqd)  (cd)) ;; Support. 
(when (yqd)  (gd)) ;; Support. 
(when (gsd)  (hd)) ;; Support. 
(when (lsd)  (jd)) ;; Support. 
(when (tsd)  (kd)) ;; Support. 
(when (ysd)  (ld)) ;; Support. 
(when (grd)  (md)) ;; Support. 
(when (lrd)  (qd)) ;; Support. 
(when (trd)  (rd)) ;; Support. 
(when (yrd)  (td)) ;; Support. 
(when (gtd)  (ud)) ;; Support. 
(when (ltd)  (vd)) ;; Support. 
(when (ttd)  (xd)) ;; Support. 
(when (ytd)  (yd)) ;; Support. 
(when (gud)  (zd)) ;; Support. 
(when (lud)  (be)) ;; Support. 
(when (tud)  (ce)) ;; Support. 
(when (yvd)  (le)) ;; Support. 
(when (gwd)  (me)) ;; Support. 
(when (lwd)  (qe)) ;; Support. 
(when (twd)  (re)) ;; Support. 
(when (lxd)  (ve)) ;; Support. 
(when (txd)  (xe)) ;; Support. 
(when (gyd)  (ze)) ;; Support. 
(when (lyd)  (bf)) ;; Support. 
(when (yyd)  (gf)) ;; Support. 
(when (gzd)  (hf)) ;; Support. 
(when (lzd)  (jf)) ;; Support. 
(when (tzd)  (kf)) ;; Support. 
(when (yzd)  (lf)) ;; Support. 
(when (g1d)  (mf)) ;; Support. 
(when (l1d)  (qf)) ;; Support. 
(when (t1d)  (rf)) ;; Support. 
(when (v7d)  (gh)) ;; Support. 
(when (b8d)  (hh)) ;; Support. 
(when (j8d)  (jh)) ;; Support. 
(when (q8d)  (kh)) ;; Support. 
(when (v8d)  (lh)) ;; Support. 
(when (b9d)  (mh)) ;; Support. 
(when (j9d)  (qh)) ;; Support. 
(when (q9d)  (rh)) ;; Support. 
(when (v9d)  (th)) ;; Support. 
(when (b0d)  (uh)) ;; Support. 
(when (j0d)  (vh)) ;; Support. 
(when (q0d)  (xh)) ;; Support. 
(when (v0d)  (yh)) ;; Support. 
(when (bae)  (zh)) ;; Support. 
(when (jae)  (bi)) ;; Support. 
(when (qae)  (ci)) ;; Support. 
(when (vae)  (gi)) ;; Support. 
(when (bbe)  (hi)) ;; Support. 
(when (jbe)  (ji)) ;; Support. 
(when (qbe)  (ki)) ;; Support. 
(when (vbe)  (li)) ;; Support. 
(when (bce)  (mi)) ;; Support. 
(when (jce)  (qi)) ;; Support. 
(when (qce)  (ri)) ;; Support. 
(when (vce)  (ti)) ;; Support. 
(when (bde)  (ui)) ;; Support. 
(when (jde)  (vi)) ;; Support. 
(when (qde)  (xi)) ;; Support. 
(when (vde)  (yi)) ;; Support. 
(when (bee)  (zi)) ;; Support. 
(when (jee)  (bj)) ;; Support. 
(when (qee)  (cj)) ;; Support. 
(when (vie)  (gk)) ;; Support. 
(when (bje)  (hk)) ;; Support. 
(when (jje)  (jk)) ;; Support. 
(when (qje)  (kk)) ;; Support. 
(when (vje)  (lk)) ;; Support. 
(when (bke)  (mk)) ;; Support. 
(when (jke)  (qk)) ;; Support. 
(when (qke)  (rk)) ;; Support. 
(when (vke)  (tk)) ;; Support. 
(when (ble)  (uk)) ;; Support. 
(when (jle)  (vk)) ;; Support. 
(when (qle)  (xk)) ;; Support. 
(when (vle)  (yk)) ;; Support. 
(when (bme)  (zk)) ;; Support. 
(when (jme)  (bl)) ;; Support. 
(when (qme)  (cl)) ;; Support. 
(when (vme)  (gl)) ;; Support. 
(when (bne)  (hl)) ;; Support. 
(when (jne)  (jl)) ;; Support. 
(when (qne)  (kl)) ;; Support. 
(when (vne)  (ll)) ;; Support. 
(when (boe)  (ml)) ;; Support. 
(when (joe)  (ql)) ;; Support. 
(when (qoe)  (rl)) ;; Support. 
(when (voe)  (tl)) ;; Support. 
(when (bpe)  (ul)) ;; Support. 
(when (jpe)  (vl)) ;; Support. 
(when (qpe)  (xl)) ;; Support. 
(when (vpe)  (yl)) ;; Support. 
(when (bqe)  (zl)) ;; Support. 
(when (jqe)  (bm)) ;; Support. 
(when (qqe)  (cm)) ;; Support. 
(when (vqe)  (gm)) ;; Support. 
(when (bse)  (hm)) ;; Support. 
(when (jse)  (jm)) ;; Support. 
(when (qse)  (km)) ;; Support. 
(when (vse)  (lm)) ;; Support. 
(when (bre)  (mm)) ;; Support. 
(when (jre)  (qm)) ;; Support. 
(when (mre)  (rm)) ;; Support. 
(when (tre)  (tm)) ;; Support. 
(when (yre)  (um)) ;; Support. 
(when (gte)  (vm)) ;; Support. 
(when (lte)  (xm)) ;; Support. 
(when (tte)  (ym)) ;; Support. 
(when (yte)  (zm)) ;; Support. 
(when (gue)  (bn)) ;; Support. 
(when (lue)  (cn)) ;; Support. 
(when (tue)  (gn)) ;; Support. 
(when (yue)  (hn)) ;; Support. 
(when (gve)  (jn)) ;; Support. 
(when (lve)  (kn)) ;; Support. 
(when (tve)  (ln)) ;; Support. 
(when (yve)  (mn)) ;; Support. 
(when (gwe)  (qn)) ;; Support. 
(when (lwe)  (rn)) ;; Support. 
(when (twe)  (tn)) ;; Support. 
(when (ywe)  (un)) ;; Support. 
(when (gxe)  (vn)) ;; Support. 
(when (lxe)  (xn)) ;; Support. 
(when (txe)  (yn)) ;; Support. 
(when (yxe)  (zn)) ;; Support. 
(when (gye)  (bo)) ;; Support. 
(when (lye)  (co)) ;; Support. 
(when (tye)  (go)) ;; Support. 
(when (yye)  (ho)) ;; Support. 
(when (gze)  (jo)) ;; Support. 
(when (lze)  (ko)) ;; Support. 
(when (tze)  (lo)) ;; Support. 
(when (yze)  (mo)) ;; Support. 
(when (g1e)  (qo)) ;; Support. 
(when (t4e)  (lp)) ;; Support. 
(when (y4e)  (mp)) ;; Support. 
(when (g5e)  (qp)) ;; Support. 
(when (l5e)  (rp)) ;; Support. 
(when (y5e)  (up)) ;; Support. 
(when (l6e)  (xp)) ;; Support. 
(when (y6e)  (zp)) ;; Support. 
(when (l7e)  (cq)) ;; Support. 
(when (ued) (and (gq) (t3))) ;; Support. 
(when (zed)  (hq)) ;; Support. 
(when (xed)  (g)) ;; Support. 
(when (hfd)  (jq)) ;; Support. 
(when (cfd)  (h)) ;; Support. 
(when (mfd)  (kq)) ;; Support. 
(when (kfd)  (j)) ;; Support. 
(when (ufd)  (lq)) ;; Support. 
(when (rfd)  (k)) ;; Support. 
(when (zfd)  (mq)) ;; Support. 
(when (xfd)  (l)) ;; Support. 
(when (hgd)  (qq)) ;; Support. 
(when (cgd)  (m)) ;; Support. 
(when (mgd)  (rq)) ;; Support. 
(when (kgd)  (q)) ;; Support. 
(when (ugd)  (tq)) ;; Support. 
(when (rgd)  (r)) ;; Support. 
(when (zgd)  (uq)) ;; Support. 
(when (xgd)  (t)) ;; Support. 
(when (hhd)  (vq)) ;; Support. 
(when (chd)  (u)) ;; Support. 
(when (mhd)  (xq)) ;; Support. 
(when (khd)  (v)) ;; Support. 
(when (uhd)  (yq)) ;; Support. 
(when (rhd)  (x)) ;; Support. 
(when (zhd)  (zq)) ;; Support. 
(when (xhd)  (y)) ;; Support. 
(when (hid)  (bs)) ;; Support. 
(when (cid)  (z)) ;; Support. 
(when (mid)  (cs)) ;; Support. 
(when (kid)  (bb)) ;; Support. 
(when (uid)  (gs)) ;; Support. 
(when (rid)  (cb)) ;; Support. 
(when (zid)  (hs)) ;; Support. 
(when (xid)  (gb)) ;; Support. 
(when (hjd)  (js)) ;; Support. 
(when (cjd)  (hb)) ;; Support. 
(when (mjd)  (ks)) ;; Support. 
(when (kjd)  (jb)) ;; Support. 
(when (ujd)  (ls)) ;; Support. 
(when (rjd)  (kb)) ;; Support. 
(when (zjd)  (ms)) ;; Support. 
(when (xjd)  (lb)) ;; Support. 
(when (hkd)  (qs)) ;; Support. 
(when (ckd)  (mb)) ;; Support. 
(when (mkd)  (rs)) ;; Support. 
(when (kkd)  (qb)) ;; Support. 
(when (ukd)  (ts)) ;; Support. 
(when (rkd)  (rb)) ;; Support. 
(when (zkd)  (us)) ;; Support. 
(when (xkd)  (tb)) ;; Support. 
(when (hld)  (vs)) ;; Support. 
(when (cld)  (ub)) ;; Support. 
(when (mld)  (xs)) ;; Support. 
(when (kld)  (vb)) ;; Support. 
(when (uld)  (ys)) ;; Support. 
(when (rld)  (xb)) ;; Support. 
(when (zld)  (zs)) ;; Support. 
(when (xld)  (yb)) ;; Support. 
(when (hmd)  (br)) ;; Support. 
(when (cmd)  (zb)) ;; Support. 
(when (mmd)  (cr)) ;; Support. 
(when (kmd)  (bc)) ;; Support. 
(when (umd)  (gr)) ;; Support. 
(when (rmd)  (cc)) ;; Support. 
(when (zmd)  (hr)) ;; Support. 
(when (xmd)  (gc)) ;; Support. 
(when (hnd)  (jr)) ;; Support. 
(when (cnd)  (hc)) ;; Support. 
(when (mnd)  (kr)) ;; Support. 
(when (knd)  (jc)) ;; Support. 
(when (und)  (lr)) ;; Support. 
(when (rnd)  (kc)) ;; Support. 
(when (znd)  (mr)) ;; Support. 
(when (xnd)  (lc)) ;; Support. 
(when (hod)  (qr)) ;; Support. 
(when (cod)  (mc)) ;; Support. 
(when (mod)  (rr)) ;; Support. 
(when (kod)  (qc)) ;; Support. 
(when (uod)  (tr)) ;; Support. 
(when (rod)  (rc)) ;; Support. 
(when (zod)  (ur)) ;; Support. 
(when (xod)  (tc)) ;; Support. 
(when (hpd)  (vr)) ;; Support. 
(when (cpd)  (uc)) ;; Support. 
(when (mpd)  (xr)) ;; Support. 
(when (kpd)  (vc)) ;; Support. 
(when (upd)  (yr)) ;; Support. 
(when (rpd)  (xc)) ;; Support. 
(when (zpd)  (zr)) ;; Support. 
(when (xpd)  (yc)) ;; Support. 
(when (hqd)  (bt)) ;; Support. 
(when (cqd)  (zc)) ;; Support. 
(when (mqd)  (ct)) ;; Support. 
(when (kqd)  (bd)) ;; Support. 
(when (uqd)  (gt)) ;; Support. 
(when (rqd)  (cd)) ;; Support. 
(when (zqd)  (ht)) ;; Support. 
(when (xqd)  (gd)) ;; Support. 
(when (hsd)  (jt)) ;; Support. 
(when (csd)  (hd)) ;; Support. 
(when (msd)  (kt)) ;; Support. 
(when (ksd)  (jd)) ;; Support. 
(when (usd)  (lt)) ;; Support. 
(when (rsd)  (kd)) ;; Support. 
(when (zsd)  (mt)) ;; Support. 
(when (xsd)  (ld)) ;; Support. 
(when (hrd)  (qt)) ;; Support. 
(when (crd)  (md)) ;; Support. 
(when (mrd)  (rt)) ;; Support. 
(when (krd)  (qd)) ;; Support. 
(when (urd)  (tt)) ;; Support. 
(when (rrd)  (rd)) ;; Support. 
(when (zrd)  (ut)) ;; Support. 
(when (xrd)  (td)) ;; Support. 
(when (htd)  (vt)) ;; Support. 
(when (ctd)  (ud)) ;; Support. 
(when (mtd)  (xt)) ;; Support. 
(when (ktd)  (vd)) ;; Support. 
(when (utd)  (yt)) ;; Support. 
(when (rtd)  (xd)) ;; Support. 
(when (ztd)  (zt)) ;; Support. 
(when (xtd)  (yd)) ;; Support. 
(when (hud)  (bu)) ;; Support. 
(when (cud)  (zd)) ;; Support. 
(when (mud)  (cu)) ;; Support. 
(when (kud)  (be)) ;; Support. 
(when (uud)  (gu)) ;; Support. 
(when (rud)  (ce)) ;; Support. 
(when (zud)  (hu)) ;; Support. 
(when (xud)  (ge)) ;; Support. 
(when (hvd)  (ju)) ;; Support. 
(when (cvd)  (he)) ;; Support. 
(when (mvd)  (ku)) ;; Support. 
(when (kvd)  (je)) ;; Support. 
(when (uvd)  (lu)) ;; Support. 
(when (rvd)  (ke)) ;; Support. 
(when (zvd)  (mu)) ;; Support. 
(when (xvd)  (le)) ;; Support. 
(when (hwd)  (qu)) ;; Support. 
(when (cwd)  (me)) ;; Support. 
(when (mwd)  (ru)) ;; Support. 
(when (kwd)  (qe)) ;; Support. 
(when (uwd)  (tu)) ;; Support. 
(when (rwd)  (re)) ;; Support. 
(when (zwd)  (uu)) ;; Support. 
(when (xwd)  (te)) ;; Support. 
(when (hxd)  (vu)) ;; Support. 
(when (cxd)  (ue)) ;; Support. 
(when (mxd)  (xu)) ;; Support. 
(when (kxd)  (ve)) ;; Support. 
(when (uxd)  (yu)) ;; Support. 
(when (rxd)  (xe)) ;; Support. 
(when (zxd)  (zu)) ;; Support. 
(when (xxd)  (ye)) ;; Support. 
(when (hyd)  (bv)) ;; Support. 
(when (cyd)  (ze)) ;; Support. 
(when (myd)  (cv)) ;; Support. 
(when (kyd)  (bf)) ;; Support. 
(when (uyd)  (gv)) ;; Support. 
(when (ryd)  (cf)) ;; Support. 
(when (zyd)  (hv)) ;; Support. 
(when (xyd)  (gf)) ;; Support. 
(when (hzd)  (jv)) ;; Support. 
(when (czd)  (hf)) ;; Support. 
(when (mzd)  (kv)) ;; Support. 
(when (kzd)  (jf)) ;; Support. 
(when (uzd)  (lv)) ;; Support. 
(when (rzd)  (kf)) ;; Support. 
(when (zzd)  (mv)) ;; Support. 
(when (xzd)  (lf)) ;; Support. 
(when (h1d)  (qv)) ;; Support. 
(when (c1d)  (mf)) ;; Support. 
(when (m1d)  (rv)) ;; Support. 
(when (k1d)  (qf)) ;; Support. 
(when (u1d)  (tv)) ;; Support. 
(when (r1d)  (rf)) ;; Support. 
(when (z1d)  (uv)) ;; Support. 
(when (x1d)  (tf)) ;; Support. 
(when (h2d)  (vv)) ;; Support. 
(when (c2d)  (uf)) ;; Support. 
(when (m2d)  (xv)) ;; Support. 
(when (k2d)  (vf)) ;; Support. 
(when (u2d)  (yv)) ;; Support. 
(when (r2d)  (xf)) ;; Support. 
(when (z2d)  (zv)) ;; Support. 
(when (x2d)  (yf)) ;; Support. 
(when (h3d)  (bw)) ;; Support. 
(when (c3d)  (zf)) ;; Support. 
(when (m3d)  (cw)) ;; Support. 
(when (k3d)  (bg)) ;; Support. 
(when (r3d)  (gw)) ;; Support. 
(when (q3d)  (cg)) ;; Support. 
(when (x3d)  (hw)) ;; Support. 
(when (u3d)  (gg)) ;; Support. 
(when (c4d)  (jw)) ;; Support. 
(when (z3d)  (hg)) ;; Support. 
(when (k4d)  (kw)) ;; Support. 
(when (h4d)  (jg)) ;; Support. 
(when (r4d)  (lw)) ;; Support. 
(when (m4d)  (kg)) ;; Support. 
(when (x4d)  (mw)) ;; Support. 
(when (u4d)  (lg)) ;; Support. 
(when (c5d)  (qw)) ;; Support. 
(when (z4d)  (mg)) ;; Support. 
(when (k5d)  (rw)) ;; Support. 
(when (h5d)  (qg)) ;; Support. 
(when (r5d)  (tw)) ;; Support. 
(when (m5d)  (rg)) ;; Support. 
(when (x5d)  (uw)) ;; Support. 
(when (u5d)  (tg)) ;; Support. 
(when (c6d)  (vw)) ;; Support. 
(when (z5d)  (ug)) ;; Support. 
(when (k6d)  (xw)) ;; Support. 
(when (h6d)  (vg)) ;; Support. 
(when (r6d)  (yw)) ;; Support. 
(when (m6d)  (xg)) ;; Support. 
(when (x6d)  (zw)) ;; Support. 
(when (u6d)  (yg)) ;; Support. 
(when (c7d)  (bx)) ;; Support. 
(when (z6d)  (zg)) ;; Support. 
(when (k7d)  (cx)) ;; Support. 
(when (h7d)  (bh)) ;; Support. 
(when (r7d)  (gx)) ;; Support. 
(when (m7d)  (ch)) ;; Support. 
(when (x7d)  (hx)) ;; Support. 
(when (u7d)  (gh)) ;; Support. 
(when (c8d)  (jx)) ;; Support. 
(when (z7d)  (hh)) ;; Support. 
(when (k8d)  (kx)) ;; Support. 
(when (h8d)  (jh)) ;; Support. 
(when (r8d)  (lx)) ;; Support. 
(when (m8d)  (kh)) ;; Support. 
(when (x8d)  (mx)) ;; Support. 
(when (u8d)  (lh)) ;; Support. 
(when (c9d)  (qx)) ;; Support. 
(when (z8d)  (mh)) ;; Support. 
(when (k9d)  (rx)) ;; Support. 
(when (h9d)  (qh)) ;; Support. 
(when (r9d)  (tx)) ;; Support. 
(when (m9d)  (rh)) ;; Support. 
(when (x9d)  (ux)) ;; Support. 
(when (u9d)  (th)) ;; Support. 
(when (c0d)  (vx)) ;; Support. 
(when (z9d)  (uh)) ;; Support. 
(when (k0d)  (xx)) ;; Support. 
(when (h0d)  (vh)) ;; Support. 
(when (r0d)  (yx)) ;; Support. 
(when (m0d)  (xh)) ;; Support. 
(when (x0d)  (zx)) ;; Support. 
(when (u0d)  (yh)) ;; Support. 
(when (cae)  (by)) ;; Support. 
(when (z0d)  (zh)) ;; Support. 
(when (kae)  (cy)) ;; Support. 
(when (hae)  (bi)) ;; Support. 
(when (rae)  (gy)) ;; Support. 
(when (mae)  (ci)) ;; Support. 
(when (xae)  (hy)) ;; Support. 
(when (uae)  (gi)) ;; Support. 
(when (cbe)  (jy)) ;; Support. 
(when (zae)  (hi)) ;; Support. 
(when (kbe)  (ky)) ;; Support. 
(when (hbe)  (ji)) ;; Support. 
(when (rbe)  (ly)) ;; Support. 
(when (mbe)  (ki)) ;; Support. 
(when (xbe)  (my)) ;; Support. 
(when (ube)  (li)) ;; Support. 
(when (cce)  (qy)) ;; Support. 
(when (zbe)  (mi)) ;; Support. 
(when (kce)  (ry)) ;; Support. 
(when (hce)  (qi)) ;; Support. 
(when (rce)  (ty)) ;; Support. 
(when (mce)  (ri)) ;; Support. 
(when (xce)  (uy)) ;; Support. 
(when (uce)  (ti)) ;; Support. 
(when (cde)  (vy)) ;; Support. 
(when (zce)  (ui)) ;; Support. 
(when (kde)  (xy)) ;; Support. 
(when (hde)  (vi)) ;; Support. 
(when (rde)  (yy)) ;; Support. 
(when (mde)  (xi)) ;; Support. 
(when (xde)  (zy)) ;; Support. 
(when (ude)  (yi)) ;; Support. 
(when (cee)  (bz)) ;; Support. 
(when (zde)  (zi)) ;; Support. 
(when (kee)  (cz)) ;; Support. 
(when (hee)  (bj)) ;; Support. 
(when (ree)  (gz)) ;; Support. 
(when (mee)  (cj)) ;; Support. 
(when (xee)  (hz)) ;; Support. 
(when (uee)  (gj)) ;; Support. 
(when (cfe)  (jz)) ;; Support. 
(when (zee)  (hj)) ;; Support. 
(when (kfe)  (kz)) ;; Support. 
(when (hfe)  (jj)) ;; Support. 
(when (rfe)  (lz)) ;; Support. 
(when (mfe)  (kj)) ;; Support. 
(when (xfe)  (mz)) ;; Support. 
(when (ufe)  (lj)) ;; Support. 
(when (cge)  (qz)) ;; Support. 
(when (zfe)  (mj)) ;; Support. 
(when (kge)  (rz)) ;; Support. 
(when (hge)  (qj)) ;; Support. 
(when (rge)  (tz)) ;; Support. 
(when (mge)  (rj)) ;; Support. 
(when (xge)  (uz)) ;; Support. 
(when (uge)  (tj)) ;; Support. 
(when (che)  (vz)) ;; Support. 
(when (zge)  (uj)) ;; Support. 
(when (khe)  (xz)) ;; Support. 
(when (hhe)  (vj)) ;; Support. 
(when (rhe)  (yz)) ;; Support. 
(when (mhe)  (xj)) ;; Support. 
(when (xhe)  (zz)) ;; Support. 
(when (uhe)  (yj)) ;; Support. 
(when (cie)  (b1)) ;; Support. 
(when (zhe)  (zj)) ;; Support. 
(when (kie)  (c1)) ;; Support. 
(when (hie)  (bk)) ;; Support. 
(when (rie)  (g1)) ;; Support. 
(when (mie)  (ck)) ;; Support. 
(when (xie)  (h1)) ;; Support. 
(when (uie)  (gk)) ;; Support. 
(when (cje)  (j1)) ;; Support. 
(when (zie)  (hk)) ;; Support. 
(when (kje)  (k1)) ;; Support. 
(when (hje)  (jk)) ;; Support. 
(when (rje)  (l1)) ;; Support. 
(when (mje)  (kk)) ;; Support. 
(when (xje)  (m1)) ;; Support. 
(when (uje)  (lk)) ;; Support. 
(when (cke)  (q1)) ;; Support. 
(when (zje)  (mk)) ;; Support. 
(when (kke)  (r1)) ;; Support. 
(when (hke)  (qk)) ;; Support. 
(when (rke)  (t1)) ;; Support. 
(when (mke)  (rk)) ;; Support. 
(when (xke)  (u1)) ;; Support. 
(when (uke)  (tk)) ;; Support. 
(when (cle)  (v1)) ;; Support. 
(when (zke)  (uk)) ;; Support. 
(when (kle)  (x1)) ;; Support. 
(when (hle)  (vk)) ;; Support. 
(when (rle)  (y1)) ;; Support. 
(when (mle)  (xk)) ;; Support. 
(when (xle)  (z1)) ;; Support. 
(when (ule)  (yk)) ;; Support. 
(when (cme)  (b2)) ;; Support. 
(when (zle)  (zk)) ;; Support. 
(when (kme)  (c2)) ;; Support. 
(when (hme)  (bl)) ;; Support. 
(when (rme)  (g2)) ;; Support. 
(when (mme)  (cl)) ;; Support. 
(when (xme)  (h2)) ;; Support. 
(when (ume)  (gl)) ;; Support. 
(when (cne)  (j2)) ;; Support. 
(when (zme)  (hl)) ;; Support. 
(when (kne)  (k2)) ;; Support. 
(when (hne)  (jl)) ;; Support. 
(when (rne)  (l2)) ;; Support. 
(when (mne)  (kl)) ;; Support. 
(when (xne)  (m2)) ;; Support. 
(when (une)  (ll)) ;; Support. 
(when (coe)  (q2)) ;; Support. 
(when (zne)  (ml)) ;; Support. 
(when (koe)  (r2)) ;; Support. 
(when (hoe)  (ql)) ;; Support. 
(when (roe)  (t2)) ;; Support. 
(when (moe)  (rl)) ;; Support. 
(when (xoe)  (u2)) ;; Support. 
(when (uoe)  (tl)) ;; Support. 
(when (cpe)  (v2)) ;; Support. 
(when (zoe)  (ul)) ;; Support. 
(when (kpe)  (x2)) ;; Support. 
(when (hpe)  (vl)) ;; Support. 
(when (rpe)  (y2)) ;; Support. 
(when (mpe)  (xl)) ;; Support. 
(when (xpe)  (z2)) ;; Support. 
(when (upe)  (yl)) ;; Support. 
(when (cqe)  (b3)) ;; Support. 
(when (zpe)  (zl)) ;; Support. 
(when (kqe)  (c3)) ;; Support. 
(when (hqe)  (bm)) ;; Support. 
(when (rqe)  (g3)) ;; Support. 
(when (mqe)  (cm)) ;; Support. 
(when (xqe)  (h3)) ;; Support. 
(when (uqe)  (gm)) ;; Support. 
(when (cse)  (j3)) ;; Support. 
(when (zqe)  (hm)) ;; Support. 
(when (kse)  (k3)) ;; Support. 
(when (hse)  (jm)) ;; Support. 
(when (rse)  (l3)) ;; Support. 
(when (mse)  (km)) ;; Support. 
(when (xse)  (m3)) ;; Support. 
(when (use)  (lm)) ;; Support. 
(when (cre)  (q3)) ;; Support. 
(when (zse)  (mm)) ;; Support. 
(when (kre)  (r3)) ;; Support. 
(when (hre)  (qm)) ;; Support. 
(when (ure)  (u3)) ;; Support. 
(when (rre)  (tm)) ;; Support. 
(when (zre)  (v3)) ;; Support. 
(when (xre)  (um)) ;; Support. 
(when (hte)  (x3)) ;; Support. 
(when (cte)  (vm)) ;; Support. 
(when (mte)  (y3)) ;; Support. 
(when (kte)  (xm)) ;; Support. 
(when (ute)  (z3)) ;; Support. 
(when (rte)  (ym)) ;; Support. 
(when (zte)  (b4)) ;; Support. 
(when (xte)  (zm)) ;; Support. 
(when (hue)  (c4)) ;; Support. 
(when (cue)  (bn)) ;; Support. 
(when (mue)  (g4)) ;; Support. 
(when (kue)  (cn)) ;; Support. 
(when (uue)  (h4)) ;; Support. 
(when (rue)  (gn)) ;; Support. 
(when (zue)  (j4)) ;; Support. 
(when (xue)  (hn)) ;; Support. 
(when (hve)  (k4)) ;; Support. 
(when (cve)  (jn)) ;; Support. 
(when (mve)  (l4)) ;; Support. 
(when (kve)  (kn)) ;; Support. 
(when (uve)  (m4)) ;; Support. 
(when (rve)  (ln)) ;; Support. 
(when (zve)  (q4)) ;; Support. 
(when (xve)  (mn)) ;; Support. 
(when (hwe)  (r4)) ;; Support. 
(when (cwe)  (qn)) ;; Support. 
(when (mwe)  (t4)) ;; Support. 
(when (kwe)  (rn)) ;; Support. 
(when (uwe)  (u4)) ;; Support. 
(when (rwe)  (tn)) ;; Support. 
(when (zwe)  (v4)) ;; Support. 
(when (xwe)  (un)) ;; Support. 
(when (hxe)  (x4)) ;; Support. 
(when (cxe)  (vn)) ;; Support. 
(when (mxe)  (y4)) ;; Support. 
(when (kxe)  (xn)) ;; Support. 
(when (uxe)  (z4)) ;; Support. 
(when (rxe)  (yn)) ;; Support. 
(when (zxe)  (b5)) ;; Support. 
(when (xxe)  (zn)) ;; Support. 
(when (hye)  (c5)) ;; Support. 
(when (cye)  (bo)) ;; Support. 
(when (mye)  (g5)) ;; Support. 
(when (kye)  (co)) ;; Support. 
(when (uye)  (h5)) ;; Support. 
(when (rye)  (go)) ;; Support. 
(when (zye)  (j5)) ;; Support. 
(when (xye)  (ho)) ;; Support. 
(when (hze)  (k5)) ;; Support. 
(when (cze)  (jo)) ;; Support. 
(when (mze)  (l5)) ;; Support. 
(when (kze)  (ko)) ;; Support. 
(when (uze)  (m5)) ;; Support. 
(when (rze)  (lo)) ;; Support. 
(when (zze)  (q5)) ;; Support. 
(when (xze)  (mo)) ;; Support. 
(when (h1e)  (r5)) ;; Support. 
(when (c1e)  (qo)) ;; Support. 
(when (u1e)  (u5)) ;; Support. 
(when (r1e)  (to)) ;; Support. 
(when (z1e)  (v5)) ;; Support. 
(when (x1e)  (uo)) ;; Support. 
(when (c2e)  (vo)) ;; Support. 
(when (m2e)  (y5)) ;; Support. 
(when (k2e)  (xo)) ;; Support. 
(when (u2e)  (z5)) ;; Support. 
(when (r2e)  (yo)) ;; Support. 
(when (z2e)  (b6)) ;; Support. 
(when (x2e)  (zo)) ;; Support. 
(when (h3e)  (c6)) ;; Support. 
(when (c3e)  (bp)) ;; Support. 
(when (m3e)  (g6)) ;; Support. 
(when (k3e)  (cp)) ;; Support. 
(when (u3e)  (h6)) ;; Support. 
(when (r3e)  (gp)) ;; Support. 
(when (z3e)  (j6)) ;; Support. 
(when (x3e)  (hp)) ;; Support. 
(when (h4e)  (k6)) ;; Support. 
(when (c4e)  (jp)) ;; Support. 
(when (m4e)  (l6)) ;; Support. 
(when (k4e)  (kp)) ;; Support. 
(when (u4e)  (m6)) ;; Support. 
(when (r4e)  (lp)) ;; Support. 
(when (z4e)  (q6)) ;; Support. 
(when (x4e)  (mp)) ;; Support. 
(when (h5e)  (r6)) ;; Support. 
(when (c5e)  (qp)) ;; Support. 
(when (m5e)  (t6)) ;; Support. 
(when (k5e)  (rp)) ;; Support. 
(when (u5e)  (u6)) ;; Support. 
(when (r5e)  (tp)) ;; Support. 
(when (z5e)  (v6)) ;; Support. 
(when (x5e)  (up)) ;; Support. 
(when (h6e)  (x6)) ;; Support. 
(when (c6e)  (vp)) ;; Support. 
(when (m6e)  (y6)) ;; Support. 
(when (k6e)  (xp)) ;; Support. 
(when (u6e)  (z6)) ;; Support. 
(when (r6e)  (yp)) ;; Support. 
(when (z6e)  (b7)) ;; Support. 
(when (x6e)  (zp)) ;; Support. 
(when (h7e)  (c7)) ;; Support. 
(when (c7e)  (bq)) ;; Support. 
(when (m7e)  (g7)) ;; Support. 
(when (k7e)  (cq)) ;; Support. 
(when (r7e) (and (gq) (gw))) ;; Support. 
(when (u7e)  (hq)) ;; Support. 
(when (x7e)  (jq)) ;; Support. 
(when (z7e)  (kq)) ;; Support. 
(when (c8e)  (lq)) ;; Support. 
(when (h8e)  (mq)) ;; Support. 
(when (k8e)  (qq)) ;; Support. 
(when (m8e)  (rq)) ;; Support. 
(when (r8e)  (tq)) ;; Support. 
(when (u8e)  (uq)) ;; Support. 
(when (x8e)  (vq)) ;; Support. 
(when (z8e)  (xq)) ;; Support. 
(when (c9e)  (yq)) ;; Support. 
(when (h9e)  (zq)) ;; Support. 
(when (k9e)  (bs)) ;; Support. 
(when (m9e)  (cs)) ;; Support. 
(when (r9e)  (gs)) ;; Support. 
(when (u9e)  (hs)) ;; Support. 
(when (x9e)  (js)) ;; Support. 
(when (z9e)  (ks)) ;; Support. 
(when (c0e)  (ls)) ;; Support. 
(when (h0e)  (ms)) ;; Support. 
(when (k0e)  (qs)) ;; Support. 
(when (m0e)  (rs)) ;; Support. 
(when (r0e)  (ts)) ;; Support. 
(when (u0e)  (us)) ;; Support. 
(when (x0e)  (vs)) ;; Support. 
(when (z0e)  (xs)) ;; Support. 
(when (caf)  (ys)) ;; Support. 
(when (haf)  (zs)) ;; Support. 
(when (kaf)  (br)) ;; Support. 
(when (maf)  (cr)) ;; Support. 
(when (raf)  (gr)) ;; Support. 
(when (uaf)  (hr)) ;; Support. 
(when (xaf)  (jr)) ;; Support. 
(when (zaf)  (kr)) ;; Support. 
(when (cbf)  (lr)) ;; Support. 
(when (hbf)  (mr)) ;; Support. 
(when (kbf)  (qr)) ;; Support. 
(when (mbf)  (rr)) ;; Support. 
(when (rbf)  (tr)) ;; Support. 
(when (ubf)  (ur)) ;; Support. 
(when (xbf)  (vr)) ;; Support. 
(when (zbf)  (xr)) ;; Support. 
(when (ccf)  (yr)) ;; Support. 
(when (hcf)  (zr)) ;; Support. 
(when (kcf)  (bt)) ;; Support. 
(when (mcf)  (ct)) ;; Support. 
(when (rcf)  (gt)) ;; Support. 
(when (ucf)  (ht)) ;; Support. 
(when (xcf)  (jt)) ;; Support. 
(when (zcf)  (kt)) ;; Support. 
(when (cdf)  (lt)) ;; Support. 
(when (hdf)  (mt)) ;; Support. 
(when (kdf)  (qt)) ;; Support. 
(when (mdf)  (rt)) ;; Support. 
(when (rdf)  (tt)) ;; Support. 
(when (udf)  (ut)) ;; Support. 
(when (xdf)  (vt)) ;; Support. 
(when (zdf)  (xt)) ;; Support. 
(when (cef)  (yt)) ;; Support. 
(when (hef)  (zt)) ;; Support. 
(when (kef)  (bu)) ;; Support. 
(when (mef)  (cu)) ;; Support. 
(when (ref)  (gu)) ;; Support. 
(when (uef)  (hu)) ;; Support. 
(when (xef)  (ju)) ;; Support. 
(when (zef)  (ku)) ;; Support. 
(when (cff)  (lu)) ;; Support. 
(when (hff)  (mu)) ;; Support. 
(when (kff)  (qu)) ;; Support. 
(when (mff)  (ru)) ;; Support. 
(when (rff)  (tu)) ;; Support. 
(when (zff)  (xu)) ;; Support. 
(when (cgf)  (yu)) ;; Support. 
(when (kgf)  (bv)) ;; Support. 
(when (mgf)  (cv)) ;; Support. 
(when (ugf)  (hv)) ;; Support. 
(when (xgf)  (jv)) ;; Support. 
(when (zgf)  (kv)) ;; Support. 
(when (chf)  (lv)) ;; Support. 
(when (hhf)  (mv)) ;; Support. 
(when (khf)  (qv)) ;; Support. 
(when (mhf)  (rv)) ;; Support. 
(when (rhf)  (tv)) ;; Support. 
(when (uhf)  (uv)) ;; Support. 
(when (zhf)  (xv)) ;; Support. 
(when (hif)  (zv)) ;; Support. 
(when (kif)  (bw)) ;; Support. 
(when (tif)  (hw)) ;; Support. 
(when (yif)  (kw)) ;; Support. 
(when (ljf)  (rw)) ;; Support. 
(when (qjf)  (tw)) ;; Support. 
(when (gkf)  (zw)) ;; Support. 
(when (jkf)  (bx)) ;; Support. 
(when (lkf)  (cx)) ;; Support. 
(when (qkf)  (gx)) ;; Support. 
(when (tkf)  (hx)) ;; Support. 
(when (vkf)  (jx)) ;; Support. 
(when (ykf)  (kx)) ;; Support. 
(when (blf)  (lx)) ;; Support. 
(when (glf)  (mx)) ;; Support. 
(when (jlf)  (qx)) ;; Support. 
(when (llf)  (rx)) ;; Support. 
(when (qlf)  (tx)) ;; Support. 
(when (tlf)  (ux)) ;; Support. 
(when (vlf)  (vx)) ;; Support. 
(when (ylf)  (xx)) ;; Support. 
(when (bmf)  (yx)) ;; Support. 
(when (gmf)  (zx)) ;; Support. 
(when (jmf)  (by)) ;; Support. 
(when (lmf)  (cy)) ;; Support. 
(when (qmf)  (gy)) ;; Support. 
(when (tmf)  (hy)) ;; Support. 
(when (vmf)  (jy)) ;; Support. 
(when (ymf)  (ky)) ;; Support. 
(when (bnf)  (ly)) ;; Support. 
(when (gnf)  (my)) ;; Support. 
(when (jnf)  (qy)) ;; Support. 
(when (lnf)  (ry)) ;; Support. 
(when (qnf)  (ty)) ;; Support. 
(when (tnf)  (uy)) ;; Support. 
(when (vnf)  (vy)) ;; Support. 
(when (ynf)  (xy)) ;; Support. 
(when (bof)  (yy)) ;; Support. 
(when (gof)  (zy)) ;; Support. 
(when (jof)  (bz)) ;; Support. 
(when (lof)  (cz)) ;; Support. 
(when (qof)  (gz)) ;; Support. 
(when (tqf)  (h1)) ;; Support. 
(when (vqf)  (j1)) ;; Support. 
(when (yqf)  (k1)) ;; Support. 
(when (bsf)  (l1)) ;; Support. 
(when (gsf)  (m1)) ;; Support. 
(when (jsf)  (q1)) ;; Support. 
(when (lsf)  (r1)) ;; Support. 
(when (qsf)  (t1)) ;; Support. 
(when (tsf)  (u1)) ;; Support. 
(when (vsf)  (v1)) ;; Support. 
(when (ysf)  (x1)) ;; Support. 
(when (brf)  (y1)) ;; Support. 
(when (grf)  (z1)) ;; Support. 
(when (jrf)  (b2)) ;; Support. 
(when (lrf)  (c2)) ;; Support. 
(when (qrf)  (g2)) ;; Support. 
(when (trf)  (h2)) ;; Support. 
(when (vrf)  (j2)) ;; Support. 
(when (yrf)  (k2)) ;; Support. 
(when (btf)  (l2)) ;; Support. 
(when (gtf)  (m2)) ;; Support. 
(when (jtf)  (q2)) ;; Support. 
(when (ltf)  (r2)) ;; Support. 
(when (qtf)  (t2)) ;; Support. 
(when (ttf)  (u2)) ;; Support. 
(when (vtf)  (v2)) ;; Support. 
(when (ytf)  (x2)) ;; Support. 
(when (buf)  (y2)) ;; Support. 
(when (guf)  (z2)) ;; Support. 
(when (juf)  (b3)) ;; Support. 
(when (luf)  (c3)) ;; Support. 
(when (quf)  (g3)) ;; Support. 
(when (tuf)  (h3)) ;; Support. 
(when (vuf)  (j3)) ;; Support. 
(when (yuf)  (k3)) ;; Support. 
(when (bvf)  (l3)) ;; Support. 
(when (gvf)  (m3)) ;; Support. 
(when (jvf)  (q3)) ;; Support. 
(when (lvf)  (r3)) ;; Support. 
(when (qvf)  (t3)) ;; Support. 
(when (rvf)  (u3)) ;; Support. 
(when (uvf)  (v3)) ;; Support. 
(when (xvf)  (x3)) ;; Support. 
(when (zvf)  (y3)) ;; Support. 
(when (cwf)  (z3)) ;; Support. 
(when (hwf)  (b4)) ;; Support. 
(when (kwf)  (c4)) ;; Support. 
(when (mwf)  (g4)) ;; Support. 
(when (rwf)  (h4)) ;; Support. 
(when (uwf)  (j4)) ;; Support. 
(when (xwf)  (k4)) ;; Support. 
(when (zwf)  (l4)) ;; Support. 
(when (cxf)  (m4)) ;; Support. 
(when (hxf)  (q4)) ;; Support. 
(when (kxf)  (r4)) ;; Support. 
(when (mxf)  (t4)) ;; Support. 
(when (rxf)  (u4)) ;; Support. 
(when (uxf)  (v4)) ;; Support. 
(when (xxf)  (x4)) ;; Support. 
(when (zxf)  (y4)) ;; Support. 
(when (cyf)  (z4)) ;; Support. 
(when (hyf)  (b5)) ;; Support. 
(when (kyf)  (c5)) ;; Support. 
(when (myf)  (g5)) ;; Support. 
(when (ryf)  (h5)) ;; Support. 
(when (uyf)  (j5)) ;; Support. 
(when (xyf)  (k5)) ;; Support. 
(when (zyf)  (l5)) ;; Support. 
(when (czf)  (m5)) ;; Support. 
(when (hzf)  (q5)) ;; Support. 
(when (kzf)  (r5)) ;; Support. 
(when (mzf)  (t5)) ;; Support. 
(when (rzf)  (u5)) ;; Support. 
(when (uzf)  (v5)) ;; Support. 
(when (zzf)  (y5)) ;; Support. 
(when (c1f)  (z5)) ;; Support. 
(when (h1f)  (b6)) ;; Support. 
(when (k1f)  (c6)) ;; Support. 
(when (m1f)  (g6)) ;; Support. 
(when (r1f)  (h6)) ;; Support. 
(when (u1f)  (j6)) ;; Support. 
(when (x1f)  (k6)) ;; Support. 
(when (z1f)  (l6)) ;; Support. 
(when (c2f)  (m6)) ;; Support. 
(when (h2f)  (q6)) ;; Support. 
(when (k2f)  (r6)) ;; Support. 
(when (m2f)  (t6)) ;; Support. 
(when (r2f)  (u6)) ;; Support. 
(when (u2f)  (v6)) ;; Support. 
(when (x2f)  (x6)) ;; Support. 
(when (z2f)  (y6)) ;; Support. 
(when (c3f)  (z6)) ;; Support. 
(when (h3f)  (b7)) ;; Support. 
(when (k3f)  (c7)) ;; Support. 
(when (m3f)  (g7)) ;; Support. 
(when (t7e) (and (h7) (uib))) ;; Support. 
(when (v7e)  (j7)) ;; Support. 
(when (y7e)  (k7)) ;; Support. 
(when (b8e)  (l7)) ;; Support. 
(when (g8e)  (m7)) ;; Support. 
(when (j8e)  (q7)) ;; Support. 
(when (l8e)  (r7)) ;; Support. 
(when (q8e)  (t7)) ;; Support. 
(when (t8e)  (u7)) ;; Support. 
(when (v8e)  (v7)) ;; Support. 
(when (y8e)  (x7)) ;; Support. 
(when (b9e)  (y7)) ;; Support. 
(when (g9e)  (z7)) ;; Support. 
(when (j9e)  (b8)) ;; Support. 
(when (l9e)  (c8)) ;; Support. 
(when (q9e)  (g8)) ;; Support. 
(when (t9e)  (h8)) ;; Support. 
(when (v9e)  (j8)) ;; Support. 
(when (y9e)  (k8)) ;; Support. 
(when (b0e)  (l8)) ;; Support. 
(when (g0e)  (m8)) ;; Support. 
(when (j0e)  (q8)) ;; Support. 
(when (l0e)  (r8)) ;; Support. 
(when (q0e)  (t8)) ;; Support. 
(when (t0e)  (u8)) ;; Support. 
(when (v0e)  (v8)) ;; Support. 
(when (y0e)  (x8)) ;; Support. 
(when (baf)  (y8)) ;; Support. 
(when (gaf)  (z8)) ;; Support. 
(when (jaf)  (b9)) ;; Support. 
(when (laf)  (c9)) ;; Support. 
(when (qaf)  (g9)) ;; Support. 
(when (taf)  (h9)) ;; Support. 
(when (vaf)  (j9)) ;; Support. 
(when (yaf)  (k9)) ;; Support. 
(when (bbf)  (l9)) ;; Support. 
(when (gbf)  (m9)) ;; Support. 
(when (jbf)  (q9)) ;; Support. 
(when (lbf)  (r9)) ;; Support. 
(when (qbf)  (t9)) ;; Support. 
(when (tbf)  (u9)) ;; Support. 
(when (vbf)  (v9)) ;; Support. 
(when (ybf)  (x9)) ;; Support. 
(when (bcf)  (y9)) ;; Support. 
(when (gcf)  (z9)) ;; Support. 
(when (jcf)  (b0)) ;; Support. 
(when (lcf)  (c0)) ;; Support. 
(when (qcf)  (g0)) ;; Support. 
(when (tcf)  (h0)) ;; Support. 
(when (vcf)  (j0)) ;; Support. 
(when (ycf)  (k0)) ;; Support. 
(when (bdf)  (l0)) ;; Support. 
(when (gdf)  (m0)) ;; Support. 
(when (jdf)  (q0)) ;; Support. 
(when (ldf)  (r0)) ;; Support. 
(when (qdf)  (t0)) ;; Support. 
(when (tdf)  (u0)) ;; Support. 
(when (vdf)  (v0)) ;; Support. 
(when (ydf)  (x0)) ;; Support. 
(when (bef)  (y0)) ;; Support. 
(when (gef)  (z0)) ;; Support. 
(when (jef)  (bab)) ;; Support. 
(when (lef)  (cab)) ;; Support. 
(when (qef)  (gab)) ;; Support. 
(when (tef)  (hab)) ;; Support. 
(when (vef)  (jab)) ;; Support. 
(when (yef)  (kab)) ;; Support. 
(when (bff)  (lab)) ;; Support. 
(when (gff)  (mab)) ;; Support. 
(when (jff)  (qab)) ;; Support. 
(when (lff)  (rab)) ;; Support. 
(when (qff)  (tab)) ;; Support. 
(when (tff)  (uab)) ;; Support. 
(when (vff)  (vab)) ;; Support. 
(when (yff)  (xab)) ;; Support. 
(when (bgf)  (yab)) ;; Support. 
(when (ggf)  (zab)) ;; Support. 
(when (jgf)  (bbb)) ;; Support. 
(when (lgf)  (cbb)) ;; Support. 
(when (qgf)  (gbb)) ;; Support. 
(when (tgf)  (hbb)) ;; Support. 
(when (vgf)  (jbb)) ;; Support. 
(when (ygf)  (kbb)) ;; Support. 
(when (bhf)  (lbb)) ;; Support. 
(when (ghf)  (mbb)) ;; Support. 
(when (jhf)  (qbb)) ;; Support. 
(when (lhf)  (rbb)) ;; Support. 
(when (qhf)  (tbb)) ;; Support. 
(when (thf)  (ubb)) ;; Support. 
(when (vhf)  (vbb)) ;; Support. 
(when (yhf)  (xbb)) ;; Support. 
(when (bif)  (ybb)) ;; Support. 
(when (gif)  (zbb)) ;; Support. 
(when (jif)  (bcb)) ;; Support. 
(when (lif)  (ccb)) ;; Support. 
(when (qif)  (gcb)) ;; Support. 
(when (rif)  (hcb)) ;; Support. 
(when (uif)  (jcb)) ;; Support. 
(when (xif)  (kcb)) ;; Support. 
(when (zif)  (lcb)) ;; Support. 
(when (cjf)  (mcb)) ;; Support. 
(when (hjf)  (qcb)) ;; Support. 
(when (kjf)  (rcb)) ;; Support. 
(when (mjf)  (tcb)) ;; Support. 
(when (rjf)  (ucb)) ;; Support. 
(when (ujf)  (vcb)) ;; Support. 
(when (xjf)  (xcb)) ;; Support. 
(when (zjf)  (ycb)) ;; Support. 
(when (ckf)  (zcb)) ;; Support. 
(when (hkf)  (bdb)) ;; Support. 
(when (kkf)  (cdb)) ;; Support. 
(when (mkf)  (gdb)) ;; Support. 
(when (rkf)  (hdb)) ;; Support. 
(when (ukf)  (jdb)) ;; Support. 
(when (xkf)  (kdb)) ;; Support. 
(when (zkf)  (ldb)) ;; Support. 
(when (clf)  (mdb)) ;; Support. 
(when (hlf)  (qdb)) ;; Support. 
(when (klf)  (rdb)) ;; Support. 
(when (mlf)  (tdb)) ;; Support. 
(when (rlf)  (udb)) ;; Support. 
(when (ulf)  (vdb)) ;; Support. 
(when (xlf)  (xdb)) ;; Support. 
(when (zlf)  (ydb)) ;; Support. 
(when (cmf)  (zdb)) ;; Support. 
(when (hmf)  (beb)) ;; Support. 
(when (kmf)  (ceb)) ;; Support. 
(when (mmf)  (geb)) ;; Support. 
(when (rmf)  (heb)) ;; Support. 
(when (umf)  (jeb)) ;; Support. 
(when (xmf)  (keb)) ;; Support. 
(when (zmf)  (leb)) ;; Support. 
(when (cnf)  (meb)) ;; Support. 
(when (hnf)  (qeb)) ;; Support. 
(when (knf)  (reb)) ;; Support. 
(when (mnf)  (teb)) ;; Support. 
(when (rnf)  (ueb)) ;; Support. 
(when (unf)  (veb)) ;; Support. 
(when (xnf)  (xeb)) ;; Support. 
(when (znf)  (yeb)) ;; Support. 
(when (cof)  (zeb)) ;; Support. 
(when (hof)  (bfb)) ;; Support. 
(when (kof)  (cfb)) ;; Support. 
(when (mof)  (gfb)) ;; Support. 
(when (rof)  (hfb)) ;; Support. 
(when (uof)  (jfb)) ;; Support. 
(when (xof)  (kfb)) ;; Support. 
(when (zof)  (lfb)) ;; Support. 
(when (cpf)  (mfb)) ;; Support. 
(when (hpf)  (qfb)) ;; Support. 
(when (kpf)  (rfb)) ;; Support. 
(when (mpf)  (tfb)) ;; Support. 
(when (rpf)  (ufb)) ;; Support. 
(when (upf)  (vfb)) ;; Support. 
(when (xpf)  (xfb)) ;; Support. 
(when (zpf)  (yfb)) ;; Support. 
(when (cqf)  (zfb)) ;; Support. 
(when (hqf)  (bgb)) ;; Support. 
(when (kqf)  (cgb)) ;; Support. 
(when (mqf)  (ggb)) ;; Support. 
(when (uqf)  (jgb)) ;; Support. 
(when (xqf)  (kgb)) ;; Support. 
(when (zqf)  (lgb)) ;; Support. 
(when (csf)  (mgb)) ;; Support. 
(when (hsf)  (qgb)) ;; Support. 
(when (ksf)  (rgb)) ;; Support. 
(when (msf)  (tgb)) ;; Support. 
(when (rsf)  (ugb)) ;; Support. 
(when (usf)  (vgb)) ;; Support. 
(when (xsf)  (xgb)) ;; Support. 
(when (zsf)  (ygb)) ;; Support. 
(when (crf)  (zgb)) ;; Support. 
(when (hrf)  (bhb)) ;; Support. 
(when (krf)  (chb)) ;; Support. 
(when (mrf)  (ghb)) ;; Support. 
(when (rrf)  (hhb)) ;; Support. 
(when (urf)  (jhb)) ;; Support. 
(when (xrf)  (khb)) ;; Support. 
(when (zrf)  (lhb)) ;; Support. 
(when (ctf)  (mhb)) ;; Support. 
(when (htf)  (qhb)) ;; Support. 
(when (ktf)  (rhb)) ;; Support. 
(when (mtf)  (thb)) ;; Support. 
(when (rtf)  (uhb)) ;; Support. 
(when (utf)  (vhb)) ;; Support. 
(when (xtf)  (xhb)) ;; Support. 
(when (ztf)  (yhb)) ;; Support. 
(when (cuf)  (zhb)) ;; Support. 
(when (huf)  (bib)) ;; Support. 
(when (kuf)  (cib)) ;; Support. 
(when (muf)  (gib)) ;; Support. 
(when (ruf)  (hib)) ;; Support. 
(when (uuf)  (jib)) ;; Support. 
(when (xuf)  (kib)) ;; Support. 
(when (zuf)  (lib)) ;; Support. 
(when (cvf)  (mib)) ;; Support. 
(when (hvf)  (qib)) ;; Support. 
(when (kvf)  (rib)) ;; Support. 
(when (mvf)  (tib)) ;; Support. 
(when (tvf)  (vib)) ;; Support. 
(when (vvf)  (xib)) ;; Support. 
(when (yvf)  (yib)) ;; Support. 
(when (bwf)  (zib)) ;; Support. 
(when (gwf)  (bjb)) ;; Support. 
(when (jwf)  (cjb)) ;; Support. 
(when (qwf)  (hjb)) ;; Support. 
(when (twf)  (jjb)) ;; Support. 
(when (vwf)  (kjb)) ;; Support. 
(when (ywf)  (ljb)) ;; Support. 
(when (bxf)  (mjb)) ;; Support. 
(when (gxf)  (qjb)) ;; Support. 
(when (jxf)  (rjb)) ;; Support. 
(when (lxf)  (tjb)) ;; Support. 
(when (qxf)  (ujb)) ;; Support. 
(when (txf)  (vjb)) ;; Support. 
(when (vxf)  (xjb)) ;; Support. 
(when (yxf)  (yjb)) ;; Support. 
(when (byf)  (zjb)) ;; Support. 
(when (gyf)  (bkb)) ;; Support. 
(when (jyf)  (ckb)) ;; Support. 
(when (lyf)  (gkb)) ;; Support. 
(when (qyf)  (hkb)) ;; Support. 
(when (tyf)  (jkb)) ;; Support. 
(when (vyf)  (kkb)) ;; Support. 
(when (yyf)  (lkb)) ;; Support. 
(when (bzf)  (mkb)) ;; Support. 
(when (gzf)  (qkb)) ;; Support. 
(when (jzf)  (rkb)) ;; Support. 
(when (lzf)  (tkb)) ;; Support. 
(when (tzf)  (vkb)) ;; Support. 
(when (vzf)  (xkb)) ;; Support. 
(when (b1f)  (zkb)) ;; Support. 
(when (g1f)  (blb)) ;; Support. 
(when (j1f)  (clb)) ;; Support. 
(when (l1f)  (glb)) ;; Support. 
(when (q1f)  (hlb)) ;; Support. 
(when (t1f)  (jlb)) ;; Support. 
(when (v1f)  (klb)) ;; Support. 
(when (y1f)  (llb)) ;; Support. 
(when (b2f)  (mlb)) ;; Support. 
(when (g2f)  (qlb)) ;; Support. 
(when (j2f)  (rlb)) ;; Support. 
(when (l2f)  (tlb)) ;; Support. 
(when (q2f)  (ulb)) ;; Support. 
(when (t2f)  (vlb)) ;; Support. 
(when (v2f)  (xlb)) ;; Support. 
(when (y2f)  (ylb)) ;; Support. 
(when (b3f)  (zlb)) ;; Support. 
(when (g3f)  (bmb)) ;; Support. 
(when (j3f)  (cmb)) ;; Support. 
(when (l3f)  (gmb)) ;; Support. 
(when (q3f)  (hmb)) ;; Support. 
(when (r3f) (and (h7) (hcb))) ;; Support. 
(when (u3f)  (j7)) ;; Support. 
(when (x3f)  (k7)) ;; Support. 
(when (z3f)  (l7)) ;; Support. 
(when (c4f)  (m7)) ;; Support. 
(when (h4f)  (q7)) ;; Support. 
(when (k4f)  (r7)) ;; Support. 
(when (m4f)  (t7)) ;; Support. 
(when (r4f)  (u7)) ;; Support. 
(when (u4f)  (v7)) ;; Support. 
(when (x4f)  (x7)) ;; Support. 
(when (z4f)  (y7)) ;; Support. 
(when (c5f)  (z7)) ;; Support. 
(when (h5f)  (b8)) ;; Support. 
(when (k5f)  (c8)) ;; Support. 
(when (m5f)  (g8)) ;; Support. 
(when (r5f)  (h8)) ;; Support. 
(when (u5f)  (j8)) ;; Support. 
(when (x5f)  (k8)) ;; Support. 
(when (z5f)  (l8)) ;; Support. 
(when (c6f)  (m8)) ;; Support. 
(when (h6f)  (q8)) ;; Support. 
(when (k6f)  (r8)) ;; Support. 
(when (m6f)  (t8)) ;; Support. 
(when (r6f)  (u8)) ;; Support. 
(when (u6f)  (v8)) ;; Support. 
(when (x6f)  (x8)) ;; Support. 
(when (z6f)  (y8)) ;; Support. 
(when (c7f)  (z8)) ;; Support. 
(when (h7f)  (b9)) ;; Support. 
(when (k7f)  (c9)) ;; Support. 
(when (m7f)  (g9)) ;; Support. 
(when (r7f)  (h9)) ;; Support. 
(when (u7f)  (j9)) ;; Support. 
(when (x7f)  (k9)) ;; Support. 
(when (z7f)  (l9)) ;; Support. 
(when (c8f)  (m9)) ;; Support. 
(when (h8f)  (q9)) ;; Support. 
(when (k8f)  (r9)) ;; Support. 
(when (m8f)  (t9)) ;; Support. 
(when (r8f)  (u9)) ;; Support. 
(when (u8f)  (v9)) ;; Support. 
(when (x8f)  (x9)) ;; Support. 
(when (z8f)  (y9)) ;; Support. 
(when (c9f)  (z9)) ;; Support. 
(when (h9f)  (b0)) ;; Support. 
(when (k9f)  (c0)) ;; Support. 
(when (m9f)  (g0)) ;; Support. 
(when (r9f)  (h0)) ;; Support. 
(when (u9f)  (j0)) ;; Support. 
(when (x9f)  (k0)) ;; Support. 
(when (z9f)  (l0)) ;; Support. 
(when (c0f)  (m0)) ;; Support. 
(when (h0f)  (q0)) ;; Support. 
(when (k0f)  (r0)) ;; Support. 
(when (m0f)  (t0)) ;; Support. 
(when (r0f)  (u0)) ;; Support. 
(when (u0f)  (v0)) ;; Support. 
(when (x0f)  (x0)) ;; Support. 
(when (z0f)  (y0)) ;; Support. 
(when (cag)  (z0)) ;; Support. 
(when (hag)  (bab)) ;; Support. 
(when (kag)  (cab)) ;; Support. 
(when (mag)  (gab)) ;; Support. 
(when (rag)  (hab)) ;; Support. 
(when (uag)  (jab)) ;; Support. 
(when (xag)  (kab)) ;; Support. 
(when (zag)  (lab)) ;; Support. 
(when (cbg)  (mab)) ;; Support. 
(when (hbg)  (qab)) ;; Support. 
(when (kbg)  (rab)) ;; Support. 
(when (mbg)  (tab)) ;; Support. 
(when (rbg)  (uab)) ;; Support. 
(when (zbg)  (yab)) ;; Support. 
(when (ccg)  (zab)) ;; Support. 
(when (hcg)  (bbb)) ;; Support. 
(when (kcg)  (cbb)) ;; Support. 
(when (mcg)  (gbb)) ;; Support. 
(when (rcg)  (hbb)) ;; Support. 
(when (ucg)  (jbb)) ;; Support. 
(when (xcg)  (kbb)) ;; Support. 
(when (zcg)  (lbb)) ;; Support. 
(when (cdg)  (mbb)) ;; Support. 
(when (hdg)  (qbb)) ;; Support. 
(when (kdg)  (rbb)) ;; Support. 
(when (mdg)  (tbb)) ;; Support. 
(when (rdg)  (ubb)) ;; Support. 
(when (udg)  (vbb)) ;; Support. 
(when (xdg)  (xbb)) ;; Support. 
(when (zdg)  (ybb)) ;; Support. 
(when (ceg)  (zbb)) ;; Support. 
(when (heg)  (bcb)) ;; Support. 
(when (keg)  (ccb)) ;; Support. 
(when (teg)  (jcb)) ;; Support. 
(when (veg)  (kcb)) ;; Support. 
(when (yeg)  (lcb)) ;; Support. 
(when (gfg)  (qcb)) ;; Support. 
(when (lfg)  (tcb)) ;; Support. 
(when (qfg)  (ucb)) ;; Support. 
(when (tfg)  (vcb)) ;; Support. 
(when (vfg)  (xcb)) ;; Support. 
(when (ggg)  (bdb)) ;; Support. 
(when (jgg)  (cdb)) ;; Support. 
(when (lgg)  (gdb)) ;; Support. 
(when (qgg)  (hdb)) ;; Support. 
(when (tgg)  (jdb)) ;; Support. 
(when (vgg)  (kdb)) ;; Support. 
(when (ygg)  (ldb)) ;; Support. 
(when (bhg)  (mdb)) ;; Support. 
(when (ghg)  (qdb)) ;; Support. 
(when (jhg)  (rdb)) ;; Support. 
(when (lhg)  (tdb)) ;; Support. 
(when (qhg)  (udb)) ;; Support. 
(when (thg)  (vdb)) ;; Support. 
(when (vhg)  (xdb)) ;; Support. 
(when (yhg)  (ydb)) ;; Support. 
(when (big)  (zdb)) ;; Support. 
(when (gig)  (beb)) ;; Support. 
(when (jig)  (ceb)) ;; Support. 
(when (lig)  (geb)) ;; Support. 
(when (qig)  (heb)) ;; Support. 
(when (tig)  (jeb)) ;; Support. 
(when (vig)  (keb)) ;; Support. 
(when (yig)  (leb)) ;; Support. 
(when (bjg)  (meb)) ;; Support. 
(when (gjg)  (qeb)) ;; Support. 
(when (jjg)  (reb)) ;; Support. 
(when (ljg)  (teb)) ;; Support. 
(when (qjg)  (ueb)) ;; Support. 
(when (tjg)  (veb)) ;; Support. 
(when (vjg)  (xeb)) ;; Support. 
(when (yjg)  (yeb)) ;; Support. 
(when (bkg)  (zeb)) ;; Support. 
(when (gkg)  (bfb)) ;; Support. 
(when (jkg)  (cfb)) ;; Support. 
(when (lkg)  (gfb)) ;; Support. 
(when (qkg)  (hfb)) ;; Support. 
(when (tkg)  (jfb)) ;; Support. 
(when (vkg)  (kfb)) ;; Support. 
(when (ykg)  (lfb)) ;; Support. 
(when (blg)  (mfb)) ;; Support. 
(when (tlg)  (vfb)) ;; Support. 
(when (vlg)  (xfb)) ;; Support. 
(when (lmg)  (ggb)) ;; Support. 
(when (tmg)  (jgb)) ;; Support. 
(when (vmg)  (kgb)) ;; Support. 
(when (ymg)  (lgb)) ;; Support. 
(when (bng)  (mgb)) ;; Support. 
(when (gng)  (qgb)) ;; Support. 
(when (jng)  (rgb)) ;; Support. 
(when (lng)  (tgb)) ;; Support. 
(when (qng)  (ugb)) ;; Support. 
(when (tng)  (vgb)) ;; Support. 
(when (vng)  (xgb)) ;; Support. 
(when (yng)  (ygb)) ;; Support. 
(when (bog)  (zgb)) ;; Support. 
(when (gog)  (bhb)) ;; Support. 
(when (jog)  (chb)) ;; Support. 
(when (log)  (ghb)) ;; Support. 
(when (qog)  (hhb)) ;; Support. 
(when (tog)  (jhb)) ;; Support. 
(when (vog)  (khb)) ;; Support. 
(when (yog)  (lhb)) ;; Support. 
(when (bpg)  (mhb)) ;; Support. 
(when (gpg)  (qhb)) ;; Support. 
(when (jpg)  (rhb)) ;; Support. 
(when (lpg)  (thb)) ;; Support. 
(when (qpg)  (uhb)) ;; Support. 
(when (tpg)  (vhb)) ;; Support. 
(when (vpg)  (xhb)) ;; Support. 
(when (ypg)  (yhb)) ;; Support. 
(when (bqg)  (zhb)) ;; Support. 
(when (gqg)  (bib)) ;; Support. 
(when (jqg)  (cib)) ;; Support. 
(when (lqg)  (gib)) ;; Support. 
(when (qqg)  (hib)) ;; Support. 
(when (tqg)  (jib)) ;; Support. 
(when (vqg)  (kib)) ;; Support. 
(when (yqg)  (lib)) ;; Support. 
(when (bsg)  (mib)) ;; Support. 
(when (gsg)  (qib)) ;; Support. 
(when (jsg)  (rib)) ;; Support. 
(when (lsg)  (tib)) ;; Support. 
(when (qsg)  (uib)) ;; Support. 
(when (rsg)  (vib)) ;; Support. 
(when (usg)  (xib)) ;; Support. 
(when (xsg)  (yib)) ;; Support. 
(when (zsg)  (zib)) ;; Support. 
(when (crg)  (bjb)) ;; Support. 
(when (hrg)  (cjb)) ;; Support. 
(when (krg)  (gjb)) ;; Support. 
(when (mrg)  (hjb)) ;; Support. 
(when (rrg)  (jjb)) ;; Support. 
(when (urg)  (kjb)) ;; Support. 
(when (xrg)  (ljb)) ;; Support. 
(when (zrg)  (mjb)) ;; Support. 
(when (ctg)  (qjb)) ;; Support. 
(when (htg)  (rjb)) ;; Support. 
(when (ktg)  (tjb)) ;; Support. 
(when (mtg)  (ujb)) ;; Support. 
(when (rtg)  (vjb)) ;; Support. 
(when (utg)  (xjb)) ;; Support. 
(when (xtg)  (yjb)) ;; Support. 
(when (ztg)  (zjb)) ;; Support. 
(when (cug)  (bkb)) ;; Support. 
(when (hug)  (ckb)) ;; Support. 
(when (kug)  (gkb)) ;; Support. 
(when (mug)  (hkb)) ;; Support. 
(when (rug)  (jkb)) ;; Support. 
(when (uug)  (kkb)) ;; Support. 
(when (xug)  (lkb)) ;; Support. 
(when (zug)  (mkb)) ;; Support. 
(when (cvg)  (qkb)) ;; Support. 
(when (hvg)  (rkb)) ;; Support. 
(when (kvg)  (tkb)) ;; Support. 
(when (mvg)  (ukb)) ;; Support. 
(when (rvg)  (vkb)) ;; Support. 
(when (uvg)  (xkb)) ;; Support. 
(when (xvg)  (ykb)) ;; Support. 
(when (zvg)  (zkb)) ;; Support. 
(when (cwg)  (blb)) ;; Support. 
(when (hwg)  (clb)) ;; Support. 
(when (kwg)  (glb)) ;; Support. 
(when (mwg)  (hlb)) ;; Support. 
(when (rwg)  (jlb)) ;; Support. 
(when (uwg)  (klb)) ;; Support. 
(when (xwg)  (llb)) ;; Support. 
(when (zwg)  (mlb)) ;; Support. 
(when (cxg)  (qlb)) ;; Support. 
(when (hxg)  (rlb)) ;; Support. 
(when (kxg)  (tlb)) ;; Support. 
(when (mxg)  (ulb)) ;; Support. 
(when (rxg)  (vlb)) ;; Support. 
(when (uxg)  (xlb)) ;; Support. 
(when (xxg)  (ylb)) ;; Support. 
(when (zxg)  (zlb)) ;; Support. 
(when (cyg)  (bmb)) ;; Support. 
(when (hyg)  (cmb)) ;; Support. 
(when (kyg)  (gmb)) ;; Support. 
(when (myg)  (hmb)) ;; Support. 
(when (t3f) (and (jmb) (vyb))) ;; Support. 
(when (v3f)  (kmb)) ;; Support. 
(when (y3f)  (lmb)) ;; Support. 
(when (b4f)  (mmb)) ;; Support. 
(when (g4f)  (qmb)) ;; Support. 
(when (j4f)  (rmb)) ;; Support. 
(when (l4f)  (tmb)) ;; Support. 
(when (q4f)  (umb)) ;; Support. 
(when (t4f)  (vmb)) ;; Support. 
(when (v4f)  (xmb)) ;; Support. 
(when (y4f)  (ymb)) ;; Support. 
(when (b5f)  (zmb)) ;; Support. 
(when (g5f)  (bnb)) ;; Support. 
(when (j5f)  (cnb)) ;; Support. 
(when (l5f)  (gnb)) ;; Support. 
(when (q5f)  (hnb)) ;; Support. 
(when (t5f)  (jnb)) ;; Support. 
(when (v5f)  (knb)) ;; Support. 
(when (y5f)  (lnb)) ;; Support. 
(when (b6f)  (mnb)) ;; Support. 
(when (g6f)  (qnb)) ;; Support. 
(when (j6f)  (rnb)) ;; Support. 
(when (l6f)  (tnb)) ;; Support. 
(when (q6f)  (unb)) ;; Support. 
(when (t6f)  (vnb)) ;; Support. 
(when (v6f)  (xnb)) ;; Support. 
(when (y6f)  (ynb)) ;; Support. 
(when (b7f)  (znb)) ;; Support. 
(when (g7f)  (bob)) ;; Support. 
(when (j7f)  (cob)) ;; Support. 
(when (l7f)  (gob)) ;; Support. 
(when (q7f)  (hob)) ;; Support. 
(when (t7f)  (job)) ;; Support. 
(when (v7f)  (kob)) ;; Support. 
(when (y7f)  (lob)) ;; Support. 
(when (b8f)  (mob)) ;; Support. 
(when (g8f)  (qob)) ;; Support. 
(when (j8f)  (rob)) ;; Support. 
(when (l8f)  (tob)) ;; Support. 
(when (q8f)  (uob)) ;; Support. 
(when (t8f)  (vob)) ;; Support. 
(when (v8f)  (xob)) ;; Support. 
(when (y8f)  (yob)) ;; Support. 
(when (b9f)  (zob)) ;; Support. 
(when (g9f)  (bpb)) ;; Support. 
(when (j9f)  (cpb)) ;; Support. 
(when (l9f)  (gpb)) ;; Support. 
(when (q9f)  (hpb)) ;; Support. 
(when (t9f)  (jpb)) ;; Support. 
(when (v9f)  (kpb)) ;; Support. 
(when (y9f)  (lpb)) ;; Support. 
(when (b0f)  (mpb)) ;; Support. 
(when (g0f)  (qpb)) ;; Support. 
(when (j0f)  (rpb)) ;; Support. 
(when (l0f)  (tpb)) ;; Support. 
(when (q0f)  (upb)) ;; Support. 
(when (t0f)  (vpb)) ;; Support. 
(when (v0f)  (xpb)) ;; Support. 
(when (y0f)  (ypb)) ;; Support. 
(when (bag)  (zpb)) ;; Support. 
(when (gag)  (bqb)) ;; Support. 
(when (jag)  (cqb)) ;; Support. 
(when (lag)  (gqb)) ;; Support. 
(when (qag)  (hqb)) ;; Support. 
(when (tag)  (jqb)) ;; Support. 
(when (vag)  (kqb)) ;; Support. 
(when (yag)  (lqb)) ;; Support. 
(when (bbg)  (mqb)) ;; Support. 
(when (gbg)  (qqb)) ;; Support. 
(when (jbg)  (rqb)) ;; Support. 
(when (lbg)  (tqb)) ;; Support. 
(when (qbg)  (uqb)) ;; Support. 
(when (tbg)  (vqb)) ;; Support. 
(when (vbg)  (xqb)) ;; Support. 
(when (ybg)  (yqb)) ;; Support. 
(when (bcg)  (zqb)) ;; Support. 
(when (gcg)  (bsb)) ;; Support. 
(when (jcg)  (csb)) ;; Support. 
(when (lcg)  (gsb)) ;; Support. 
(when (qcg)  (hsb)) ;; Support. 
(when (tcg)  (jsb)) ;; Support. 
(when (vcg)  (ksb)) ;; Support. 
(when (ycg)  (lsb)) ;; Support. 
(when (bdg)  (msb)) ;; Support. 
(when (gdg)  (qsb)) ;; Support. 
(when (jdg)  (rsb)) ;; Support. 
(when (ldg)  (tsb)) ;; Support. 
(when (qdg)  (usb)) ;; Support. 
(when (tdg)  (vsb)) ;; Support. 
(when (vdg)  (xsb)) ;; Support. 
(when (ydg)  (ysb)) ;; Support. 
(when (beg)  (zsb)) ;; Support. 
(when (geg)  (brb)) ;; Support. 
(when (jeg)  (crb)) ;; Support. 
(when (leg)  (grb)) ;; Support. 
(when (qeg)  (hrb)) ;; Support. 
(when (reg)  (jrb)) ;; Support. 
(when (ueg)  (krb)) ;; Support. 
(when (xeg)  (lrb)) ;; Support. 
(when (zeg)  (mrb)) ;; Support. 
(when (cfg)  (qrb)) ;; Support. 
(when (hfg)  (rrb)) ;; Support. 
(when (kfg)  (trb)) ;; Support. 
(when (mfg)  (urb)) ;; Support. 
(when (rfg)  (vrb)) ;; Support. 
(when (ufg)  (xrb)) ;; Support. 
(when (xfg)  (yrb)) ;; Support. 
(when (zfg)  (zrb)) ;; Support. 
(when (cgg)  (btb)) ;; Support. 
(when (hgg)  (ctb)) ;; Support. 
(when (kgg)  (gtb)) ;; Support. 
(when (mgg)  (htb)) ;; Support. 
(when (rgg)  (jtb)) ;; Support. 
(when (ugg)  (ktb)) ;; Support. 
(when (xgg)  (ltb)) ;; Support. 
(when (zgg)  (mtb)) ;; Support. 
(when (chg)  (qtb)) ;; Support. 
(when (hhg)  (rtb)) ;; Support. 
(when (khg)  (ttb)) ;; Support. 
(when (mhg)  (utb)) ;; Support. 
(when (rhg)  (vtb)) ;; Support. 
(when (uhg)  (xtb)) ;; Support. 
(when (xhg)  (ytb)) ;; Support. 
(when (zhg)  (ztb)) ;; Support. 
(when (cig)  (bub)) ;; Support. 
(when (hig)  (cub)) ;; Support. 
(when (kig)  (gub)) ;; Support. 
(when (mig)  (hub)) ;; Support. 
(when (rig)  (jub)) ;; Support. 
(when (uig)  (kub)) ;; Support. 
(when (xig)  (lub)) ;; Support. 
(when (zig)  (mub)) ;; Support. 
(when (cjg)  (qub)) ;; Support. 
(when (hjg)  (rub)) ;; Support. 
(when (kjg)  (tub)) ;; Support. 
(when (mjg)  (uub)) ;; Support. 
(when (rjg)  (vub)) ;; Support. 
(when (ujg)  (xub)) ;; Support. 
(when (xjg)  (yub)) ;; Support. 
(when (ckg)  (bvb)) ;; Support. 
(when (hkg)  (cvb)) ;; Support. 
(when (kkg)  (gvb)) ;; Support. 
(when (mkg)  (hvb)) ;; Support. 
(when (rkg)  (jvb)) ;; Support. 
(when (ukg)  (kvb)) ;; Support. 
(when (xkg)  (lvb)) ;; Support. 
(when (zkg)  (mvb)) ;; Support. 
(when (clg)  (qvb)) ;; Support. 
(when (hlg)  (rvb)) ;; Support. 
(when (klg)  (tvb)) ;; Support. 
(when (mlg)  (uvb)) ;; Support. 
(when (rlg)  (vvb)) ;; Support. 
(when (ulg)  (xvb)) ;; Support. 
(when (xlg)  (yvb)) ;; Support. 
(when (zlg)  (zvb)) ;; Support. 
(when (cmg)  (bwb)) ;; Support. 
(when (hmg)  (cwb)) ;; Support. 
(when (mmg)  (hwb)) ;; Support. 
(when (umg)  (kwb)) ;; Support. 
(when (xmg)  (lwb)) ;; Support. 
(when (zmg)  (mwb)) ;; Support. 
(when (cng)  (qwb)) ;; Support. 
(when (hng)  (rwb)) ;; Support. 
(when (kng)  (twb)) ;; Support. 
(when (mng)  (uwb)) ;; Support. 
(when (rng)  (vwb)) ;; Support. 
(when (ung)  (xwb)) ;; Support. 
(when (xng)  (ywb)) ;; Support. 
(when (zng)  (zwb)) ;; Support. 
(when (cog)  (bxb)) ;; Support. 
(when (hog)  (cxb)) ;; Support. 
(when (kog)  (gxb)) ;; Support. 
(when (mog)  (hxb)) ;; Support. 
(when (rog)  (jxb)) ;; Support. 
(when (uog)  (kxb)) ;; Support. 
(when (xog)  (lxb)) ;; Support. 
(when (zog)  (mxb)) ;; Support. 
(when (cpg)  (qxb)) ;; Support. 
(when (kpg)  (txb)) ;; Support. 
(when (rpg)  (vxb)) ;; Support. 
(when (upg)  (xxb)) ;; Support. 
(when (xpg)  (yxb)) ;; Support. 
(when (zpg)  (zxb)) ;; Support. 
(when (cqg)  (byb)) ;; Support. 
(when (hqg)  (cyb)) ;; Support. 
(when (kqg)  (gyb)) ;; Support. 
(when (mqg)  (hyb)) ;; Support. 
(when (rqg)  (jyb)) ;; Support. 
(when (uqg)  (kyb)) ;; Support. 
(when (xqg)  (lyb)) ;; Support. 
(when (zqg)  (myb)) ;; Support. 
(when (csg)  (qyb)) ;; Support. 
(when (hsg)  (ryb)) ;; Support. 
(when (ksg)  (tyb)) ;; Support. 
(when (msg)  (uyb)) ;; Support. 
(when (tsg)  (xyb)) ;; Support. 
(when (vsg)  (yyb)) ;; Support. 
(when (ysg)  (zyb)) ;; Support. 
(when (brg)  (bzb)) ;; Support. 
(when (grg)  (czb)) ;; Support. 
(when (jrg)  (gzb)) ;; Support. 
(when (qrg)  (jzb)) ;; Support. 
(when (trg)  (kzb)) ;; Support. 
(when (vrg)  (lzb)) ;; Support. 
(when (yrg)  (mzb)) ;; Support. 
(when (btg)  (qzb)) ;; Support. 
(when (gtg)  (rzb)) ;; Support. 
(when (jtg)  (tzb)) ;; Support. 
(when (ltg)  (uzb)) ;; Support. 
(when (qtg)  (vzb)) ;; Support. 
(when (ttg)  (xzb)) ;; Support. 
(when (vtg)  (yzb)) ;; Support. 
(when (ytg)  (zzb)) ;; Support. 
(when (bug)  (b1b)) ;; Support. 
(when (gug)  (c1b)) ;; Support. 
(when (jug)  (g1b)) ;; Support. 
(when (lug)  (h1b)) ;; Support. 
(when (qug)  (j1b)) ;; Support. 
(when (tug)  (k1b)) ;; Support. 
(when (vug)  (l1b)) ;; Support. 
(when (yug)  (m1b)) ;; Support. 
(when (bvg)  (q1b)) ;; Support. 
(when (gvg)  (r1b)) ;; Support. 
(when (jvg)  (t1b)) ;; Support. 
(when (lvg)  (u1b)) ;; Support. 
(when (tvg)  (x1b)) ;; Support. 
(when (vvg)  (y1b)) ;; Support. 
(when (bwg)  (b2b)) ;; Support. 
(when (gwg)  (c2b)) ;; Support. 
(when (jwg)  (g2b)) ;; Support. 
(when (lwg)  (h2b)) ;; Support. 
(when (qwg)  (j2b)) ;; Support. 
(when (twg)  (k2b)) ;; Support. 
(when (vwg)  (l2b)) ;; Support. 
(when (ywg)  (m2b)) ;; Support. 
(when (bxg)  (q2b)) ;; Support. 
(when (gxg)  (r2b)) ;; Support. 
(when (jxg)  (t2b)) ;; Support. 
(when (lxg)  (u2b)) ;; Support. 
(when (qxg)  (v2b)) ;; Support. 
(when (txg)  (x2b)) ;; Support. 
(when (vxg)  (y2b)) ;; Support. 
(when (yxg)  (z2b)) ;; Support. 
(when (byg)  (b3b)) ;; Support. 
(when (gyg)  (c3b)) ;; Support. 
(when (jyg)  (g3b)) ;; Support. 
(when (lyg)  (h3b)) ;; Support. 
(when (qyg)  (j3b)) ;; Support. 
(when (ryg) (and (jmb) (jrb))) ;; Support. 
(when (uyg)  (kmb)) ;; Support. 
(when (xyg)  (lmb)) ;; Support. 
(when (zyg)  (mmb)) ;; Support. 
(when (czg)  (qmb)) ;; Support. 
(when (hzg)  (rmb)) ;; Support. 
(when (kzg)  (tmb)) ;; Support. 
(when (mzg)  (umb)) ;; Support. 
(when (rzg)  (vmb)) ;; Support. 
(when (uzg)  (xmb)) ;; Support. 
(when (xzg)  (ymb)) ;; Support. 
(when (zzg)  (zmb)) ;; Support. 
(when (c1g)  (bnb)) ;; Support. 
(when (h1g)  (cnb)) ;; Support. 
(when (k1g)  (gnb)) ;; Support. 
(when (m1g)  (hnb)) ;; Support. 
(when (r1g)  (jnb)) ;; Support. 
(when (u1g)  (knb)) ;; Support. 
(when (x1g)  (lnb)) ;; Support. 
(when (z1g)  (mnb)) ;; Support. 
(when (c2g)  (qnb)) ;; Support. 
(when (h2g)  (rnb)) ;; Support. 
(when (k2g)  (tnb)) ;; Support. 
(when (m2g)  (unb)) ;; Support. 
(when (r2g)  (vnb)) ;; Support. 
(when (u2g)  (xnb)) ;; Support. 
(when (x2g)  (ynb)) ;; Support. 
(when (z2g)  (znb)) ;; Support. 
(when (c3g)  (bob)) ;; Support. 
(when (h3g)  (cob)) ;; Support. 
(when (k3g)  (gob)) ;; Support. 
(when (m3g)  (hob)) ;; Support. 
(when (r3g)  (job)) ;; Support. 
(when (u3g)  (kob)) ;; Support. 
(when (x3g)  (lob)) ;; Support. 
(when (z3g)  (mob)) ;; Support. 
(when (c4g)  (qob)) ;; Support. 
(when (h4g)  (rob)) ;; Support. 
(when (k4g)  (tob)) ;; Support. 
(when (m4g)  (uob)) ;; Support. 
(when (r4g)  (vob)) ;; Support. 
(when (u4g)  (xob)) ;; Support. 
(when (x4g)  (yob)) ;; Support. 
(when (z4g)  (zob)) ;; Support. 
(when (c5g)  (bpb)) ;; Support. 
(when (h5g)  (cpb)) ;; Support. 
(when (k5g)  (gpb)) ;; Support. 
(when (m5g)  (hpb)) ;; Support. 
(when (r5g)  (jpb)) ;; Support. 
(when (u5g)  (kpb)) ;; Support. 
(when (x5g)  (lpb)) ;; Support. 
(when (z5g)  (mpb)) ;; Support. 
(when (c6g)  (qpb)) ;; Support. 
(when (h6g)  (rpb)) ;; Support. 
(when (k6g)  (tpb)) ;; Support. 
(when (m6g)  (upb)) ;; Support. 
(when (r6g)  (vpb)) ;; Support. 
(when (u6g)  (xpb)) ;; Support. 
(when (x6g)  (ypb)) ;; Support. 
(when (z6g)  (zpb)) ;; Support. 
(when (c7g)  (bqb)) ;; Support. 
(when (h7g)  (cqb)) ;; Support. 
(when (k7g)  (gqb)) ;; Support. 
(when (m7g)  (hqb)) ;; Support. 
(when (r7g)  (jqb)) ;; Support. 
(when (u7g)  (kqb)) ;; Support. 
(when (x7g)  (lqb)) ;; Support. 
(when (z7g)  (mqb)) ;; Support. 
(when (c8g)  (qqb)) ;; Support. 
(when (h8g)  (rqb)) ;; Support. 
(when (k8g)  (tqb)) ;; Support. 
(when (m8g)  (uqb)) ;; Support. 
(when (r8g)  (vqb)) ;; Support. 
(when (u8g)  (xqb)) ;; Support. 
(when (x8g)  (yqb)) ;; Support. 
(when (z8g)  (zqb)) ;; Support. 
(when (c9g)  (bsb)) ;; Support. 
(when (h9g)  (csb)) ;; Support. 
(when (k9g)  (gsb)) ;; Support. 
(when (m9g)  (hsb)) ;; Support. 
(when (r9g)  (jsb)) ;; Support. 
(when (u9g)  (ksb)) ;; Support. 
(when (x9g)  (lsb)) ;; Support. 
(when (z9g)  (msb)) ;; Support. 
(when (c0g)  (qsb)) ;; Support. 
(when (h0g)  (rsb)) ;; Support. 
(when (k0g)  (tsb)) ;; Support. 
(when (m0g)  (usb)) ;; Support. 
(when (r0g)  (vsb)) ;; Support. 
(when (u0g)  (xsb)) ;; Support. 
(when (x0g)  (ysb)) ;; Support. 
(when (z0g)  (zsb)) ;; Support. 
(when (cah)  (brb)) ;; Support. 
(when (hah)  (crb)) ;; Support. 
(when (kah)  (grb)) ;; Support. 
(when (tah)  (krb)) ;; Support. 
(when (vah)  (lrb)) ;; Support. 
(when (yah)  (mrb)) ;; Support. 
(when (bbh)  (qrb)) ;; Support. 
(when (gbh)  (rrb)) ;; Support. 
(when (lbh)  (urb)) ;; Support. 
(when (qbh)  (vrb)) ;; Support. 
(when (tbh)  (xrb)) ;; Support. 
(when (vbh)  (yrb)) ;; Support. 
(when (bch)  (btb)) ;; Support. 
(when (gch)  (ctb)) ;; Support. 
(when (jch)  (gtb)) ;; Support. 
(when (lch)  (htb)) ;; Support. 
(when (qch)  (jtb)) ;; Support. 
(when (tch)  (ktb)) ;; Support. 
(when (vch)  (ltb)) ;; Support. 
(when (ych)  (mtb)) ;; Support. 
(when (bdh)  (qtb)) ;; Support. 
(when (gdh)  (rtb)) ;; Support. 
(when (jdh)  (ttb)) ;; Support. 
(when (ldh)  (utb)) ;; Support. 
(when (qdh)  (vtb)) ;; Support. 
(when (tdh)  (xtb)) ;; Support. 
(when (vdh)  (ytb)) ;; Support. 
(when (ydh)  (ztb)) ;; Support. 
(when (beh)  (bub)) ;; Support. 
(when (geh)  (cub)) ;; Support. 
(when (jeh)  (gub)) ;; Support. 
(when (leh)  (hub)) ;; Support. 
(when (qeh)  (jub)) ;; Support. 
(when (teh)  (kub)) ;; Support. 
(when (veh)  (lub)) ;; Support. 
(when (yeh)  (mub)) ;; Support. 
(when (bfh)  (qub)) ;; Support. 
(when (gfh)  (rub)) ;; Support. 
(when (jfh)  (tub)) ;; Support. 
(when (lfh)  (uub)) ;; Support. 
(when (qfh)  (vub)) ;; Support. 
(when (tfh)  (xub)) ;; Support. 
(when (vfh)  (yub)) ;; Support. 
(when (yfh)  (zub)) ;; Support. 
(when (bgh)  (bvb)) ;; Support. 
(when (ggh)  (cvb)) ;; Support. 
(when (jgh)  (gvb)) ;; Support. 
(when (lgh)  (hvb)) ;; Support. 
(when (qgh)  (jvb)) ;; Support. 
(when (tgh)  (kvb)) ;; Support. 
(when (vgh)  (lvb)) ;; Support. 
(when (ygh)  (mvb)) ;; Support. 
(when (bhh)  (qvb)) ;; Support. 
(when (lhh)  (uvb)) ;; Support. 
(when (qhh)  (vvb)) ;; Support. 
(when (thh)  (xvb)) ;; Support. 
(when (vhh)  (yvb)) ;; Support. 
(when (gih)  (cwb)) ;; Support. 
(when (lih)  (hwb)) ;; Support. 
(when (qih)  (jwb)) ;; Support. 
(when (tih)  (kwb)) ;; Support. 
(when (vih)  (lwb)) ;; Support. 
(when (yih)  (mwb)) ;; Support. 
(when (bjh)  (qwb)) ;; Support. 
(when (gjh)  (rwb)) ;; Support. 
(when (jjh)  (twb)) ;; Support. 
(when (ljh)  (uwb)) ;; Support. 
(when (qjh)  (vwb)) ;; Support. 
(when (tjh)  (xwb)) ;; Support. 
(when (vjh)  (ywb)) ;; Support. 
(when (yjh)  (zwb)) ;; Support. 
(when (bkh)  (bxb)) ;; Support. 
(when (gkh)  (cxb)) ;; Support. 
(when (jkh)  (gxb)) ;; Support. 
(when (lkh)  (hxb)) ;; Support. 
(when (qkh)  (jxb)) ;; Support. 
(when (tkh)  (kxb)) ;; Support. 
(when (vkh)  (lxb)) ;; Support. 
(when (ykh)  (mxb)) ;; Support. 
(when (blh)  (qxb)) ;; Support. 
(when (glh)  (rxb)) ;; Support. 
(when (jlh)  (txb)) ;; Support. 
(when (llh)  (uxb)) ;; Support. 
(when (qlh)  (vxb)) ;; Support. 
(when (tlh)  (xxb)) ;; Support. 
(when (vlh)  (yxb)) ;; Support. 
(when (ylh)  (zxb)) ;; Support. 
(when (bmh)  (byb)) ;; Support. 
(when (gmh)  (cyb)) ;; Support. 
(when (jmh)  (gyb)) ;; Support. 
(when (lmh)  (hyb)) ;; Support. 
(when (qmh)  (jyb)) ;; Support. 
(when (tmh)  (kyb)) ;; Support. 
(when (vmh)  (lyb)) ;; Support. 
(when (ymh)  (myb)) ;; Support. 
(when (bnh)  (qyb)) ;; Support. 
(when (gnh)  (ryb)) ;; Support. 
(when (jnh)  (tyb)) ;; Support. 
(when (lnh)  (uyb)) ;; Support. 
(when (qnh)  (vyb)) ;; Support. 
(when (rnh)  (xyb)) ;; Support. 
(when (unh)  (yyb)) ;; Support. 
(when (xnh)  (zyb)) ;; Support. 
(when (znh)  (bzb)) ;; Support. 
(when (coh)  (czb)) ;; Support. 
(when (hoh)  (gzb)) ;; Support. 
(when (koh)  (hzb)) ;; Support. 
(when (moh)  (jzb)) ;; Support. 
(when (roh)  (kzb)) ;; Support. 
(when (uoh)  (lzb)) ;; Support. 
(when (xoh)  (mzb)) ;; Support. 
(when (zoh)  (qzb)) ;; Support. 
(when (cph)  (rzb)) ;; Support. 
(when (hph)  (tzb)) ;; Support. 
(when (kph)  (uzb)) ;; Support. 
(when (mph)  (vzb)) ;; Support. 
(when (rph)  (xzb)) ;; Support. 
(when (uph)  (yzb)) ;; Support. 
(when (xph)  (zzb)) ;; Support. 
(when (zph)  (b1b)) ;; Support. 
(when (cqh)  (c1b)) ;; Support. 
(when (hqh)  (g1b)) ;; Support. 
(when (kqh)  (h1b)) ;; Support. 
(when (mqh)  (j1b)) ;; Support. 
(when (rqh)  (k1b)) ;; Support. 
(when (uqh)  (l1b)) ;; Support. 
(when (xqh)  (m1b)) ;; Support. 
(when (zqh)  (q1b)) ;; Support. 
(when (csh)  (r1b)) ;; Support. 
(when (hsh)  (t1b)) ;; Support. 
(when (ksh)  (u1b)) ;; Support. 
(when (msh)  (v1b)) ;; Support. 
(when (rsh)  (x1b)) ;; Support. 
(when (ush)  (y1b)) ;; Support. 
(when (xsh)  (z1b)) ;; Support. 
(when (zsh)  (b2b)) ;; Support. 
(when (crh)  (c2b)) ;; Support. 
(when (hrh)  (g2b)) ;; Support. 
(when (krh)  (h2b)) ;; Support. 
(when (mrh)  (j2b)) ;; Support. 
(when (rrh)  (k2b)) ;; Support. 
(when (urh)  (l2b)) ;; Support. 
(when (xrh)  (m2b)) ;; Support. 
(when (zrh)  (q2b)) ;; Support. 
(when (cth)  (r2b)) ;; Support. 
(when (hth)  (t2b)) ;; Support. 
(when (kth)  (u2b)) ;; Support. 
(when (mth)  (v2b)) ;; Support. 
(when (rth)  (x2b)) ;; Support. 
(when (uth)  (y2b)) ;; Support. 
(when (xth)  (z2b)) ;; Support. 
(when (zth)  (b3b)) ;; Support. 
(when (cuh)  (c3b)) ;; Support. 
(when (huh)  (g3b)) ;; Support. 
(when (kuh)  (h3b)) ;; Support. 
(when (muh)  (j3b)) ;; Support. 
(when (tyg) (and (k3b) (xec))) ;; Support. 
(when (vyg)  (l3b)) ;; Support. 
(when (yyg)  (m3b)) ;; Support. 
(when (bzg)  (q3b)) ;; Support. 
(when (gzg)  (r3b)) ;; Support. 
(when (jzg)  (t3b)) ;; Support. 
(when (lzg)  (u3b)) ;; Support. 
(when (qzg)  (v3b)) ;; Support. 
(when (tzg)  (x3b)) ;; Support. 
(when (vzg)  (y3b)) ;; Support. 
(when (yzg)  (z3b)) ;; Support. 
(when (b1g)  (b4b)) ;; Support. 
(when (g1g)  (c4b)) ;; Support. 
(when (j1g)  (g4b)) ;; Support. 
(when (l1g)  (h4b)) ;; Support. 
(when (q1g)  (j4b)) ;; Support. 
(when (t1g)  (k4b)) ;; Support. 
(when (v1g)  (l4b)) ;; Support. 
(when (y1g)  (m4b)) ;; Support. 
(when (b2g)  (q4b)) ;; Support. 
(when (g2g)  (r4b)) ;; Support. 
(when (j2g)  (t4b)) ;; Support. 
(when (l2g)  (u4b)) ;; Support. 
(when (q2g)  (v4b)) ;; Support. 
(when (t2g)  (x4b)) ;; Support. 
(when (v2g)  (y4b)) ;; Support. 
(when (y2g)  (z4b)) ;; Support. 
(when (b3g)  (b5b)) ;; Support. 
(when (g3g)  (c5b)) ;; Support. 
(when (j3g)  (g5b)) ;; Support. 
(when (l3g)  (h5b)) ;; Support. 
(when (q3g)  (j5b)) ;; Support. 
(when (t3g)  (k5b)) ;; Support. 
(when (v3g)  (l5b)) ;; Support. 
(when (y3g)  (m5b)) ;; Support. 
(when (b4g)  (q5b)) ;; Support. 
(when (g4g)  (r5b)) ;; Support. 
(when (j4g)  (t5b)) ;; Support. 
(when (l4g)  (u5b)) ;; Support. 
(when (q4g)  (v5b)) ;; Support. 
(when (t4g)  (x5b)) ;; Support. 
(when (v4g)  (y5b)) ;; Support. 
(when (y4g)  (z5b)) ;; Support. 
(when (b5g)  (b6b)) ;; Support. 
(when (g5g)  (c6b)) ;; Support. 
(when (j5g)  (g6b)) ;; Support. 
(when (l5g)  (h6b)) ;; Support. 
(when (q5g)  (j6b)) ;; Support. 
(when (t5g)  (k6b)) ;; Support. 
(when (v5g)  (l6b)) ;; Support. 
(when (y5g)  (m6b)) ;; Support. 
(when (b6g)  (q6b)) ;; Support. 
(when (g6g)  (r6b)) ;; Support. 
(when (j6g)  (t6b)) ;; Support. 
(when (l6g)  (u6b)) ;; Support. 
(when (q6g)  (v6b)) ;; Support. 
(when (t6g)  (x6b)) ;; Support. 
(when (v6g)  (y6b)) ;; Support. 
(when (y6g)  (z6b)) ;; Support. 
(when (b7g)  (b7b)) ;; Support. 
(when (g7g)  (c7b)) ;; Support. 
(when (j7g)  (g7b)) ;; Support. 
(when (l7g)  (h7b)) ;; Support. 
(when (q7g)  (j7b)) ;; Support. 
(when (t7g)  (k7b)) ;; Support. 
(when (v7g)  (l7b)) ;; Support. 
(when (y7g)  (m7b)) ;; Support. 
(when (b8g)  (q7b)) ;; Support. 
(when (g8g)  (r7b)) ;; Support. 
(when (j8g)  (t7b)) ;; Support. 
(when (l8g)  (u7b)) ;; Support. 
(when (q8g)  (v7b)) ;; Support. 
(when (t8g)  (x7b)) ;; Support. 
(when (v8g)  (y7b)) ;; Support. 
(when (y8g)  (z7b)) ;; Support. 
(when (b9g)  (b8b)) ;; Support. 
(when (g9g)  (c8b)) ;; Support. 
(when (j9g)  (g8b)) ;; Support. 
(when (l9g)  (h8b)) ;; Support. 
(when (q9g)  (j8b)) ;; Support. 
(when (t9g)  (k8b)) ;; Support. 
(when (v9g)  (l8b)) ;; Support. 
(when (y9g)  (m8b)) ;; Support. 
(when (b0g)  (q8b)) ;; Support. 
(when (g0g)  (r8b)) ;; Support. 
(when (j0g)  (t8b)) ;; Support. 
(when (l0g)  (u8b)) ;; Support. 
(when (q0g)  (v8b)) ;; Support. 
(when (t0g)  (x8b)) ;; Support. 
(when (v0g)  (y8b)) ;; Support. 
(when (y0g)  (z8b)) ;; Support. 
(when (bah)  (b9b)) ;; Support. 
(when (gah)  (c9b)) ;; Support. 
(when (jah)  (g9b)) ;; Support. 
(when (lah)  (h9b)) ;; Support. 
(when (qah)  (j9b)) ;; Support. 
(when (rah)  (k9b)) ;; Support. 
(when (uah)  (l9b)) ;; Support. 
(when (xah)  (m9b)) ;; Support. 
(when (zah)  (q9b)) ;; Support. 
(when (cbh)  (r9b)) ;; Support. 
(when (hbh)  (t9b)) ;; Support. 
(when (kbh)  (u9b)) ;; Support. 
(when (mbh)  (v9b)) ;; Support. 
(when (rbh)  (x9b)) ;; Support. 
(when (ubh)  (y9b)) ;; Support. 
(when (xbh)  (z9b)) ;; Support. 
(when (zbh)  (b0b)) ;; Support. 
(when (cch)  (c0b)) ;; Support. 
(when (hch)  (g0b)) ;; Support. 
(when (kch)  (h0b)) ;; Support. 
(when (mch)  (j0b)) ;; Support. 
(when (rch)  (k0b)) ;; Support. 
(when (uch)  (l0b)) ;; Support. 
(when (xch)  (m0b)) ;; Support. 
(when (zch)  (q0b)) ;; Support. 
(when (cdh)  (r0b)) ;; Support. 
(when (hdh)  (t0b)) ;; Support. 
(when (kdh)  (u0b)) ;; Support. 
(when (mdh)  (v0b)) ;; Support. 
(when (rdh)  (x0b)) ;; Support. 
(when (udh)  (y0b)) ;; Support. 
(when (xdh)  (z0b)) ;; Support. 
(when (zdh)  (bac)) ;; Support. 
(when (ceh)  (cac)) ;; Support. 
(when (heh)  (gac)) ;; Support. 
(when (keh)  (hac)) ;; Support. 
(when (meh)  (jac)) ;; Support. 
(when (reh)  (kac)) ;; Support. 
(when (ueh)  (lac)) ;; Support. 
(when (xeh)  (mac)) ;; Support. 
(when (zeh)  (qac)) ;; Support. 
(when (cfh)  (rac)) ;; Support. 
(when (hfh)  (tac)) ;; Support. 
(when (kfh)  (uac)) ;; Support. 
(when (mfh)  (vac)) ;; Support. 
(when (rfh)  (xac)) ;; Support. 
(when (ufh)  (yac)) ;; Support. 
(when (xfh)  (zac)) ;; Support. 
(when (hgh)  (gbc)) ;; Support. 
(when (kgh)  (hbc)) ;; Support. 
(when (mgh)  (jbc)) ;; Support. 
(when (rgh)  (kbc)) ;; Support. 
(when (ugh)  (lbc)) ;; Support. 
(when (xgh)  (mbc)) ;; Support. 
(when (zgh)  (qbc)) ;; Support. 
(when (chh)  (rbc)) ;; Support. 
(when (hhh)  (tbc)) ;; Support. 
(when (khh)  (ubc)) ;; Support. 
(when (mhh)  (vbc)) ;; Support. 
(when (rhh)  (xbc)) ;; Support. 
(when (uhh)  (ybc)) ;; Support. 
(when (xhh)  (zbc)) ;; Support. 
(when (zhh)  (bcc)) ;; Support. 
(when (hih)  (gcc)) ;; Support. 
(when (mih)  (jcc)) ;; Support. 
(when (uih)  (lcc)) ;; Support. 
(when (xih)  (mcc)) ;; Support. 
(when (zih)  (qcc)) ;; Support. 
(when (cjh)  (rcc)) ;; Support. 
(when (hjh)  (tcc)) ;; Support. 
(when (kjh)  (ucc)) ;; Support. 
(when (mjh)  (vcc)) ;; Support. 
(when (rjh)  (xcc)) ;; Support. 
(when (ujh)  (ycc)) ;; Support. 
(when (xjh)  (zcc)) ;; Support. 
(when (zjh)  (bdc)) ;; Support. 
(when (ckh)  (cdc)) ;; Support. 
(when (hkh)  (gdc)) ;; Support. 
(when (kkh)  (hdc)) ;; Support. 
(when (mkh)  (jdc)) ;; Support. 
(when (rkh)  (kdc)) ;; Support. 
(when (ukh)  (ldc)) ;; Support. 
(when (xkh)  (mdc)) ;; Support. 
(when (zkh)  (qdc)) ;; Support. 
(when (clh)  (rdc)) ;; Support. 
(when (ulh)  (ydc)) ;; Support. 
(when (xlh)  (zdc)) ;; Support. 
(when (zlh)  (bec)) ;; Support. 
(when (cmh)  (cec)) ;; Support. 
(when (hmh)  (gec)) ;; Support. 
(when (kmh)  (hec)) ;; Support. 
(when (mmh)  (jec)) ;; Support. 
(when (rmh)  (kec)) ;; Support. 
(when (umh)  (lec)) ;; Support. 
(when (xmh)  (mec)) ;; Support. 
(when (zmh)  (qec)) ;; Support. 
(when (cnh)  (rec)) ;; Support. 
(when (hnh)  (tec)) ;; Support. 
(when (knh)  (uec)) ;; Support. 
(when (tnh)  (yec)) ;; Support. 
(when (vnh)  (zec)) ;; Support. 
(when (ynh)  (bfc)) ;; Support. 
(when (boh)  (cfc)) ;; Support. 
(when (goh)  (gfc)) ;; Support. 
(when (qoh)  (kfc)) ;; Support. 
(when (toh)  (lfc)) ;; Support. 
(when (voh)  (mfc)) ;; Support. 
(when (yoh)  (qfc)) ;; Support. 
(when (bph)  (rfc)) ;; Support. 
(when (gph)  (tfc)) ;; Support. 
(when (jph)  (ufc)) ;; Support. 
(when (lph)  (vfc)) ;; Support. 
(when (qph)  (xfc)) ;; Support. 
(when (tph)  (yfc)) ;; Support. 
(when (vph)  (zfc)) ;; Support. 
(when (yph)  (bgc)) ;; Support. 
(when (bqh)  (cgc)) ;; Support. 
(when (gqh)  (ggc)) ;; Support. 
(when (jqh)  (hgc)) ;; Support. 
(when (lqh)  (jgc)) ;; Support. 
(when (qqh)  (kgc)) ;; Support. 
(when (tqh)  (lgc)) ;; Support. 
(when (vqh)  (mgc)) ;; Support. 
(when (bsh)  (rgc)) ;; Support. 
(when (gsh)  (tgc)) ;; Support. 
(when (jsh)  (ugc)) ;; Support. 
(when (lsh)  (vgc)) ;; Support. 
(when (tsh)  (ygc)) ;; Support. 
(when (vsh)  (zgc)) ;; Support. 
(when (grh)  (ghc)) ;; Support. 
(when (jrh)  (hhc)) ;; Support. 
(when (lrh)  (jhc)) ;; Support. 
(when (qrh)  (khc)) ;; Support. 
(when (trh)  (lhc)) ;; Support. 
(when (vrh)  (mhc)) ;; Support. 
(when (yrh)  (qhc)) ;; Support. 
(when (bth)  (rhc)) ;; Support. 
(when (gth)  (thc)) ;; Support. 
(when (jth)  (uhc)) ;; Support. 
(when (lth)  (vhc)) ;; Support. 
(when (qth)  (xhc)) ;; Support. 
(when (tth)  (yhc)) ;; Support. 
(when (vth)  (zhc)) ;; Support. 
(when (yth)  (bic)) ;; Support. 
(when (buh)  (cic)) ;; Support. 
(when (guh)  (gic)) ;; Support. 
(when (juh)  (hic)) ;; Support. 
(when (luh)  (jic)) ;; Support. 
(when (quh)  (kic)) ;; Support. 
(when (ruh) (and (k3b) (k9b))) ;; Support. 
(when (uuh)  (l3b)) ;; Support. 
(when (xuh)  (m3b)) ;; Support. 
(when (zuh)  (q3b)) ;; Support. 
(when (cvh)  (r3b)) ;; Support. 
(when (hvh)  (t3b)) ;; Support. 
(when (kvh)  (u3b)) ;; Support. 
(when (mvh)  (v3b)) ;; Support. 
(when (rvh)  (x3b)) ;; Support. 
(when (uvh)  (y3b)) ;; Support. 
(when (xvh)  (z3b)) ;; Support. 
(when (zvh)  (b4b)) ;; Support. 
(when (cwh)  (c4b)) ;; Support. 
(when (hwh)  (g4b)) ;; Support. 
(when (kwh)  (h4b)) ;; Support. 
(when (mwh)  (j4b)) ;; Support. 
(when (rwh)  (k4b)) ;; Support. 
(when (uwh)  (l4b)) ;; Support. 
(when (xwh)  (m4b)) ;; Support. 
(when (zwh)  (q4b)) ;; Support. 
(when (cxh)  (r4b)) ;; Support. 
(when (hxh)  (t4b)) ;; Support. 
(when (kxh)  (u4b)) ;; Support. 
(when (mxh)  (v4b)) ;; Support. 
(when (rxh)  (x4b)) ;; Support. 
(when (uxh)  (y4b)) ;; Support. 
(when (xxh)  (z4b)) ;; Support. 
(when (zxh)  (b5b)) ;; Support. 
(when (cyh)  (c5b)) ;; Support. 
(when (hyh)  (g5b)) ;; Support. 
(when (kyh)  (h5b)) ;; Support. 
(when (myh)  (j5b)) ;; Support. 
(when (ryh)  (k5b)) ;; Support. 
(when (uyh)  (l5b)) ;; Support. 
(when (xyh)  (m5b)) ;; Support. 
(when (zyh)  (q5b)) ;; Support. 
(when (czh)  (r5b)) ;; Support. 
(when (hzh)  (t5b)) ;; Support. 
(when (kzh)  (u5b)) ;; Support. 
(when (mzh)  (v5b)) ;; Support. 
(when (rzh)  (x5b)) ;; Support. 
(when (uzh)  (y5b)) ;; Support. 
(when (xzh)  (z5b)) ;; Support. 
(when (zzh)  (b6b)) ;; Support. 
(when (c1h)  (c6b)) ;; Support. 
(when (h1h)  (g6b)) ;; Support. 
(when (k1h)  (h6b)) ;; Support. 
(when (m1h)  (j6b)) ;; Support. 
(when (r1h)  (k6b)) ;; Support. 
(when (u1h)  (l6b)) ;; Support. 
(when (x1h)  (m6b)) ;; Support. 
(when (z1h)  (q6b)) ;; Support. 
(when (c2h)  (r6b)) ;; Support. 
(when (h2h)  (t6b)) ;; Support. 
(when (k2h)  (u6b)) ;; Support. 
(when (m2h)  (v6b)) ;; Support. 
(when (r2h)  (x6b)) ;; Support. 
(when (u2h)  (y6b)) ;; Support. 
(when (x2h)  (z6b)) ;; Support. 
(when (z2h)  (b7b)) ;; Support. 
(when (c3h)  (c7b)) ;; Support. 
(when (h3h)  (g7b)) ;; Support. 
(when (k3h)  (h7b)) ;; Support. 
(when (m3h)  (j7b)) ;; Support. 
(when (r3h)  (k7b)) ;; Support. 
(when (u3h)  (l7b)) ;; Support. 
(when (x3h)  (m7b)) ;; Support. 
(when (z3h)  (q7b)) ;; Support. 
(when (c4h)  (r7b)) ;; Support. 
(when (h4h)  (t7b)) ;; Support. 
(when (k4h)  (u7b)) ;; Support. 
(when (m4h)  (v7b)) ;; Support. 
(when (r4h)  (x7b)) ;; Support. 
(when (u4h)  (y7b)) ;; Support. 
(when (x4h)  (z7b)) ;; Support. 
(when (z4h)  (b8b)) ;; Support. 
(when (c5h)  (c8b)) ;; Support. 
(when (h5h)  (g8b)) ;; Support. 
(when (k5h)  (h8b)) ;; Support. 
(when (m5h)  (j8b)) ;; Support. 
(when (r5h)  (k8b)) ;; Support. 
(when (u5h)  (l8b)) ;; Support. 
(when (x5h)  (m8b)) ;; Support. 
(when (z5h)  (q8b)) ;; Support. 
(when (c6h)  (r8b)) ;; Support. 
(when (h6h)  (t8b)) ;; Support. 
(when (k6h)  (u8b)) ;; Support. 
(when (m6h)  (v8b)) ;; Support. 
(when (r6h)  (x8b)) ;; Support. 
(when (u6h)  (y8b)) ;; Support. 
(when (x6h)  (z8b)) ;; Support. 
(when (z6h)  (b9b)) ;; Support. 
(when (c7h)  (c9b)) ;; Support. 
(when (h7h)  (g9b)) ;; Support. 
(when (k7h)  (h9b)) ;; Support. 
(when (m7h)  (j9b)) ;; Support. 
(when (t7h)  (l9b)) ;; Support. 
(when (v7h)  (m9b)) ;; Support. 
(when (y7h)  (q9b)) ;; Support. 
(when (b8h)  (r9b)) ;; Support. 
(when (g8h)  (t9b)) ;; Support. 
(when (l8h)  (v9b)) ;; Support. 
(when (q8h)  (x9b)) ;; Support. 
(when (t8h)  (y9b)) ;; Support. 
(when (v8h)  (z9b)) ;; Support. 
(when (y8h)  (b0b)) ;; Support. 
(when (b9h)  (c0b)) ;; Support. 
(when (g9h)  (g0b)) ;; Support. 
(when (j9h)  (h0b)) ;; Support. 
(when (l9h)  (j0b)) ;; Support. 
(when (q9h)  (k0b)) ;; Support. 
(when (t9h)  (l0b)) ;; Support. 
(when (v9h)  (m0b)) ;; Support. 
(when (y9h)  (q0b)) ;; Support. 
(when (b0h)  (r0b)) ;; Support. 
(when (g0h)  (t0b)) ;; Support. 
(when (j0h)  (u0b)) ;; Support. 
(when (l0h)  (v0b)) ;; Support. 
(when (q0h)  (x0b)) ;; Support. 
(when (t0h)  (y0b)) ;; Support. 
(when (v0h)  (z0b)) ;; Support. 
(when (y0h)  (bac)) ;; Support. 
(when (bai)  (cac)) ;; Support. 
(when (gai)  (gac)) ;; Support. 
(when (jai)  (hac)) ;; Support. 
(when (lai)  (jac)) ;; Support. 
(when (qai)  (kac)) ;; Support. 
(when (tai)  (lac)) ;; Support. 
(when (vai)  (mac)) ;; Support. 
(when (yai)  (qac)) ;; Support. 
(when (bbi)  (rac)) ;; Support. 
(when (gbi)  (tac)) ;; Support. 
(when (jbi)  (uac)) ;; Support. 
(when (lbi)  (vac)) ;; Support. 
(when (qbi)  (xac)) ;; Support. 
(when (tbi)  (yac)) ;; Support. 
(when (vbi)  (zac)) ;; Support. 
(when (ybi)  (bbc)) ;; Support. 
(when (bci)  (cbc)) ;; Support. 
(when (gci)  (gbc)) ;; Support. 
(when (jci)  (hbc)) ;; Support. 
(when (lci)  (jbc)) ;; Support. 
(when (qci)  (kbc)) ;; Support. 
(when (tci)  (lbc)) ;; Support. 
(when (vci)  (mbc)) ;; Support. 
(when (yci)  (qbc)) ;; Support. 
(when (bdi)  (rbc)) ;; Support. 
(when (gdi)  (tbc)) ;; Support. 
(when (ldi)  (vbc)) ;; Support. 
(when (qdi)  (xbc)) ;; Support. 
(when (tdi)  (ybc)) ;; Support. 
(when (vdi)  (zbc)) ;; Support. 
(when (gei)  (gcc)) ;; Support. 
(when (jei)  (hcc)) ;; Support. 
(when (lei)  (jcc)) ;; Support. 
(when (qei)  (kcc)) ;; Support. 
(when (tei)  (lcc)) ;; Support. 
(when (vei)  (mcc)) ;; Support. 
(when (yei)  (qcc)) ;; Support. 
(when (bfi)  (rcc)) ;; Support. 
(when (gfi)  (tcc)) ;; Support. 
(when (jfi)  (ucc)) ;; Support. 
(when (lfi)  (vcc)) ;; Support. 
(when (qfi)  (xcc)) ;; Support. 
(when (tfi)  (ycc)) ;; Support. 
(when (vfi)  (zcc)) ;; Support. 
(when (yfi)  (bdc)) ;; Support. 
(when (bgi)  (cdc)) ;; Support. 
(when (ggi)  (gdc)) ;; Support. 
(when (jgi)  (hdc)) ;; Support. 
(when (lgi)  (jdc)) ;; Support. 
(when (qgi)  (kdc)) ;; Support. 
(when (tgi)  (ldc)) ;; Support. 
(when (vgi)  (mdc)) ;; Support. 
(when (ygi)  (qdc)) ;; Support. 
(when (bhi)  (rdc)) ;; Support. 
(when (ghi)  (tdc)) ;; Support. 
(when (jhi)  (udc)) ;; Support. 
(when (lhi)  (vdc)) ;; Support. 
(when (qhi)  (xdc)) ;; Support. 
(when (thi)  (ydc)) ;; Support. 
(when (vhi)  (zdc)) ;; Support. 
(when (yhi)  (bec)) ;; Support. 
(when (bii)  (cec)) ;; Support. 
(when (gii)  (gec)) ;; Support. 
(when (jii)  (hec)) ;; Support. 
(when (lii)  (jec)) ;; Support. 
(when (qii)  (kec)) ;; Support. 
(when (tii)  (lec)) ;; Support. 
(when (vii)  (mec)) ;; Support. 
(when (yii)  (qec)) ;; Support. 
(when (bji)  (rec)) ;; Support. 
(when (gji)  (tec)) ;; Support. 
(when (jji)  (uec)) ;; Support. 
(when (lji)  (vec)) ;; Support. 
(when (qji)  (xec)) ;; Support. 
(when (rji)  (yec)) ;; Support. 
(when (uji)  (zec)) ;; Support. 
(when (xji)  (bfc)) ;; Support. 
(when (zji)  (cfc)) ;; Support. 
(when (cki)  (gfc)) ;; Support. 
(when (hki)  (hfc)) ;; Support. 
(when (kki)  (jfc)) ;; Support. 
(when (mki)  (kfc)) ;; Support. 
(when (rki)  (lfc)) ;; Support. 
(when (uki)  (mfc)) ;; Support. 
(when (xki)  (qfc)) ;; Support. 
(when (zki)  (rfc)) ;; Support. 
(when (cli)  (tfc)) ;; Support. 
(when (hli)  (ufc)) ;; Support. 
(when (kli)  (vfc)) ;; Support. 
(when (mli)  (xfc)) ;; Support. 
(when (rli)  (yfc)) ;; Support. 
(when (uli)  (zfc)) ;; Support. 
(when (xli)  (bgc)) ;; Support. 
(when (zli)  (cgc)) ;; Support. 
(when (cmi)  (ggc)) ;; Support. 
(when (hmi)  (hgc)) ;; Support. 
(when (kmi)  (jgc)) ;; Support. 
(when (mmi)  (kgc)) ;; Support. 
(when (rmi)  (lgc)) ;; Support. 
(when (umi)  (mgc)) ;; Support. 
(when (xmi)  (qgc)) ;; Support. 
(when (zmi)  (rgc)) ;; Support. 
(when (cni)  (tgc)) ;; Support. 
(when (hni)  (ugc)) ;; Support. 
(when (kni)  (vgc)) ;; Support. 
(when (mni)  (xgc)) ;; Support. 
(when (rni)  (ygc)) ;; Support. 
(when (uni)  (zgc)) ;; Support. 
(when (xni)  (bhc)) ;; Support. 
(when (zni)  (chc)) ;; Support. 
(when (coi)  (ghc)) ;; Support. 
(when (hoi)  (hhc)) ;; Support. 
(when (koi)  (jhc)) ;; Support. 
(when (moi)  (khc)) ;; Support. 
(when (roi)  (lhc)) ;; Support. 
(when (uoi)  (mhc)) ;; Support. 
(when (xoi)  (qhc)) ;; Support. 
(when (zoi)  (rhc)) ;; Support. 
(when (cpi)  (thc)) ;; Support. 
(when (hpi)  (uhc)) ;; Support. 
(when (kpi)  (vhc)) ;; Support. 
(when (mpi)  (xhc)) ;; Support. 
(when (rpi)  (yhc)) ;; Support. 
(when (upi)  (zhc)) ;; Support. 
(when (xpi)  (bic)) ;; Support. 
(when (zpi)  (cic)) ;; Support. 
(when (cqi)  (gic)) ;; Support. 
(when (hqi)  (hic)) ;; Support. 
(when (kqi)  (jic)) ;; Support. 
(when (mqi)  (kic)) ;; Support. 
(when (tuh) (and (lic) (yuc))) ;; Support. 
(when (vuh)  (mic)) ;; Support. 
(when (yuh)  (qic)) ;; Support. 
(when (bvh)  (ric)) ;; Support. 
(when (gvh)  (tic)) ;; Support. 
(when (jvh)  (uic)) ;; Support. 
(when (lvh)  (vic)) ;; Support. 
(when (qvh)  (xic)) ;; Support. 
(when (tvh)  (yic)) ;; Support. 
(when (vvh)  (zic)) ;; Support. 
(when (yvh)  (bjc)) ;; Support. 
(when (bwh)  (cjc)) ;; Support. 
(when (gwh)  (gjc)) ;; Support. 
(when (jwh)  (hjc)) ;; Support. 
(when (lwh)  (jjc)) ;; Support. 
(when (qwh)  (kjc)) ;; Support. 
(when (twh)  (ljc)) ;; Support. 
(when (vwh)  (mjc)) ;; Support. 
(when (ywh)  (qjc)) ;; Support. 
(when (bxh)  (rjc)) ;; Support. 
(when (gxh)  (tjc)) ;; Support. 
(when (jxh)  (ujc)) ;; Support. 
(when (lxh)  (vjc)) ;; Support. 
(when (qxh)  (xjc)) ;; Support. 
(when (txh)  (yjc)) ;; Support. 
(when (vxh)  (zjc)) ;; Support. 
(when (yxh)  (bkc)) ;; Support. 
(when (byh)  (ckc)) ;; Support. 
(when (gyh)  (gkc)) ;; Support. 
(when (jyh)  (hkc)) ;; Support. 
(when (lyh)  (jkc)) ;; Support. 
(when (qyh)  (kkc)) ;; Support. 
(when (tyh)  (lkc)) ;; Support. 
(when (vyh)  (mkc)) ;; Support. 
(when (yyh)  (qkc)) ;; Support. 
(when (bzh)  (rkc)) ;; Support. 
(when (gzh)  (tkc)) ;; Support. 
(when (jzh)  (ukc)) ;; Support. 
(when (lzh)  (vkc)) ;; Support. 
(when (qzh)  (xkc)) ;; Support. 
(when (tzh)  (ykc)) ;; Support. 
(when (vzh)  (zkc)) ;; Support. 
(when (yzh)  (blc)) ;; Support. 
(when (b1h)  (clc)) ;; Support. 
(when (g1h)  (glc)) ;; Support. 
(when (j1h)  (hlc)) ;; Support. 
(when (l1h)  (jlc)) ;; Support. 
(when (q1h)  (klc)) ;; Support. 
(when (t1h)  (llc)) ;; Support. 
(when (v1h)  (mlc)) ;; Support. 
(when (y1h)  (qlc)) ;; Support. 
(when (b2h)  (rlc)) ;; Support. 
(when (g2h)  (tlc)) ;; Support. 
(when (j2h)  (ulc)) ;; Support. 
(when (l2h)  (vlc)) ;; Support. 
(when (q2h)  (xlc)) ;; Support. 
(when (t2h)  (ylc)) ;; Support. 
(when (v2h)  (zlc)) ;; Support. 
(when (y2h)  (bmc)) ;; Support. 
(when (b3h)  (cmc)) ;; Support. 
(when (g3h)  (gmc)) ;; Support. 
(when (j3h)  (hmc)) ;; Support. 
(when (l3h)  (jmc)) ;; Support. 
(when (q3h)  (kmc)) ;; Support. 
(when (t3h)  (lmc)) ;; Support. 
(when (v3h)  (mmc)) ;; Support. 
(when (y3h)  (qmc)) ;; Support. 
(when (b4h)  (rmc)) ;; Support. 
(when (g4h)  (tmc)) ;; Support. 
(when (j4h)  (umc)) ;; Support. 
(when (l4h)  (vmc)) ;; Support. 
(when (q4h)  (xmc)) ;; Support. 
(when (t4h)  (ymc)) ;; Support. 
(when (v4h)  (zmc)) ;; Support. 
(when (y4h)  (bnc)) ;; Support. 
(when (b5h)  (cnc)) ;; Support. 
(when (g5h)  (gnc)) ;; Support. 
(when (j5h)  (hnc)) ;; Support. 
(when (l5h)  (jnc)) ;; Support. 
(when (q5h)  (knc)) ;; Support. 
(when (t5h)  (lnc)) ;; Support. 
(when (v5h)  (mnc)) ;; Support. 
(when (y5h)  (qnc)) ;; Support. 
(when (b6h)  (rnc)) ;; Support. 
(when (g6h)  (tnc)) ;; Support. 
(when (j6h)  (unc)) ;; Support. 
(when (l6h)  (vnc)) ;; Support. 
(when (q6h)  (xnc)) ;; Support. 
(when (t6h)  (ync)) ;; Support. 
(when (v6h)  (znc)) ;; Support. 
(when (y6h)  (boc)) ;; Support. 
(when (b7h)  (coc)) ;; Support. 
(when (g7h)  (goc)) ;; Support. 
(when (j7h)  (hoc)) ;; Support. 
(when (l7h)  (joc)) ;; Support. 
(when (q7h)  (koc)) ;; Support. 
(when (r7h)  (loc)) ;; Support. 
(when (u7h)  (moc)) ;; Support. 
(when (x7h)  (qoc)) ;; Support. 
(when (z7h)  (roc)) ;; Support. 
(when (c8h)  (toc)) ;; Support. 
(when (h8h)  (uoc)) ;; Support. 
(when (k8h)  (voc)) ;; Support. 
(when (m8h)  (xoc)) ;; Support. 
(when (r8h)  (yoc)) ;; Support. 
(when (u8h)  (zoc)) ;; Support. 
(when (x8h)  (bpc)) ;; Support. 
(when (z8h)  (cpc)) ;; Support. 
(when (c9h)  (gpc)) ;; Support. 
(when (h9h)  (hpc)) ;; Support. 
(when (k9h)  (jpc)) ;; Support. 
(when (m9h)  (kpc)) ;; Support. 
(when (r9h)  (lpc)) ;; Support. 
(when (u9h)  (mpc)) ;; Support. 
(when (x9h)  (qpc)) ;; Support. 
(when (z9h)  (rpc)) ;; Support. 
(when (c0h)  (tpc)) ;; Support. 
(when (h0h)  (upc)) ;; Support. 
(when (k0h)  (vpc)) ;; Support. 
(when (m0h)  (xpc)) ;; Support. 
(when (r0h)  (ypc)) ;; Support. 
(when (u0h)  (zpc)) ;; Support. 
(when (x0h)  (bqc)) ;; Support. 
(when (z0h)  (cqc)) ;; Support. 
(when (cai)  (gqc)) ;; Support. 
(when (hai)  (hqc)) ;; Support. 
(when (kai)  (jqc)) ;; Support. 
(when (mai)  (kqc)) ;; Support. 
(when (rai)  (lqc)) ;; Support. 
(when (uai)  (mqc)) ;; Support. 
(when (xai)  (qqc)) ;; Support. 
(when (zai)  (rqc)) ;; Support. 
(when (cbi)  (tqc)) ;; Support. 
(when (hbi)  (uqc)) ;; Support. 
(when (kbi)  (vqc)) ;; Support. 
(when (mbi)  (xqc)) ;; Support. 
(when (rbi)  (yqc)) ;; Support. 
(when (ubi)  (zqc)) ;; Support. 
(when (xbi)  (bsc)) ;; Support. 
(when (hci)  (hsc)) ;; Support. 
(when (kci)  (jsc)) ;; Support. 
(when (uci)  (msc)) ;; Support. 
(when (xci)  (qsc)) ;; Support. 
(when (zci)  (rsc)) ;; Support. 
(when (cdi)  (tsc)) ;; Support. 
(when (hdi)  (usc)) ;; Support. 
(when (kdi)  (vsc)) ;; Support. 
(when (mdi)  (xsc)) ;; Support. 
(when (rdi)  (ysc)) ;; Support. 
(when (udi)  (zsc)) ;; Support. 
(when (hei)  (hrc)) ;; Support. 
(when (mei)  (krc)) ;; Support. 
(when (uei)  (mrc)) ;; Support. 
(when (xei)  (qrc)) ;; Support. 
(when (zei)  (rrc)) ;; Support. 
(when (cfi)  (trc)) ;; Support. 
(when (hfi)  (urc)) ;; Support. 
(when (kfi)  (vrc)) ;; Support. 
(when (mfi)  (xrc)) ;; Support. 
(when (rfi)  (yrc)) ;; Support. 
(when (ufi)  (zrc)) ;; Support. 
(when (xfi)  (btc)) ;; Support. 
(when (zfi)  (ctc)) ;; Support. 
(when (cgi)  (gtc)) ;; Support. 
(when (hgi)  (htc)) ;; Support. 
(when (kgi)  (jtc)) ;; Support. 
(when (mgi)  (ktc)) ;; Support. 
(when (rgi)  (ltc)) ;; Support. 
(when (uhi)  (ztc)) ;; Support. 
(when (xhi)  (buc)) ;; Support. 
(when (zhi)  (cuc)) ;; Support. 
(when (cii)  (guc)) ;; Support. 
(when (hii)  (huc)) ;; Support. 
(when (kii)  (juc)) ;; Support. 
(when (mii)  (kuc)) ;; Support. 
(when (rii)  (luc)) ;; Support. 
(when (uii)  (muc)) ;; Support. 
(when (xii)  (quc)) ;; Support. 
(when (zii)  (ruc)) ;; Support. 
(when (cji)  (tuc)) ;; Support. 
(when (hji)  (uuc)) ;; Support. 
(when (kji)  (vuc)) ;; Support. 
(when (tji)  (zuc)) ;; Support. 
(when (vji)  (bvc)) ;; Support. 
(when (yji)  (cvc)) ;; Support. 
(when (bki)  (gvc)) ;; Support. 
(when (gki)  (hvc)) ;; Support. 
(when (qki)  (lvc)) ;; Support. 
(when (tki)  (mvc)) ;; Support. 
(when (vki)  (qvc)) ;; Support. 
(when (yki)  (rvc)) ;; Support. 
(when (bli)  (tvc)) ;; Support. 
(when (lli)  (xvc)) ;; Support. 
(when (qli)  (yvc)) ;; Support. 
(when (vli)  (bwc)) ;; Support. 
(when (yli)  (cwc)) ;; Support. 
(when (gmi)  (hwc)) ;; Support. 
(when (jmi)  (jwc)) ;; Support. 
(when (lmi)  (kwc)) ;; Support. 
(when (qmi)  (lwc)) ;; Support. 
(when (tmi)  (mwc)) ;; Support. 
(when (bni)  (twc)) ;; Support. 
(when (gni)  (uwc)) ;; Support. 
(when (lni)  (xwc)) ;; Support. 
(when (tni)  (zwc)) ;; Support. 
(when (vni)  (bxc)) ;; Support. 
(when (joi)  (jxc)) ;; Support. 
(when (qoi)  (lxc)) ;; Support. 
(when (toi)  (mxc)) ;; Support. 
(when (voi)  (qxc)) ;; Support. 
(when (yoi)  (rxc)) ;; Support. 
(when (bpi)  (txc)) ;; Support. 
(when (gpi)  (uxc)) ;; Support. 
(when (jpi)  (vxc)) ;; Support. 
(when (lpi)  (xxc)) ;; Support. 
(when (qpi)  (yxc)) ;; Support. 
(when (tpi)  (zxc)) ;; Support. 
(when (vpi)  (byc)) ;; Support. 
(when (ypi)  (cyc)) ;; Support. 
(when (bqi)  (gyc)) ;; Support. 
(when (gqi)  (hyc)) ;; Support. 
(when (jqi)  (jyc)) ;; Support. 
(when (lqi)  (kyc)) ;; Support. 
(when (qqi)  (lyc)) ;; Support. 
(when (rqi) (and (lic) (loc))) ;; Support. 
(when (uqi)  (mic)) ;; Support. 
(when (xqi)  (qic)) ;; Support. 
(when (zqi)  (ric)) ;; Support. 
(when (csi)  (tic)) ;; Support. 
(when (hsi)  (uic)) ;; Support. 
(when (ksi)  (vic)) ;; Support. 
(when (msi)  (xic)) ;; Support. 
(when (rsi)  (yic)) ;; Support. 
(when (usi)  (zic)) ;; Support. 
(when (xsi)  (bjc)) ;; Support. 
(when (zsi)  (cjc)) ;; Support. 
(when (cri)  (gjc)) ;; Support. 
(when (hri)  (hjc)) ;; Support. 
(when (kri)  (jjc)) ;; Support. 
(when (mri)  (kjc)) ;; Support. 
(when (rri)  (ljc)) ;; Support. 
(when (uri)  (mjc)) ;; Support. 
(when (xri)  (qjc)) ;; Support. 
(when (zri)  (rjc)) ;; Support. 
(when (cti)  (tjc)) ;; Support. 
(when (hti)  (ujc)) ;; Support. 
(when (kti)  (vjc)) ;; Support. 
(when (mti)  (xjc)) ;; Support. 
(when (rti)  (yjc)) ;; Support. 
(when (uti)  (zjc)) ;; Support. 
(when (xti)  (bkc)) ;; Support. 
(when (zti)  (ckc)) ;; Support. 
(when (cui)  (gkc)) ;; Support. 
(when (hui)  (hkc)) ;; Support. 
(when (kui)  (jkc)) ;; Support. 
(when (mui)  (kkc)) ;; Support. 
(when (rui)  (lkc)) ;; Support. 
(when (uui)  (mkc)) ;; Support. 
(when (xui)  (qkc)) ;; Support. 
(when (zui)  (rkc)) ;; Support. 
(when (cvi)  (tkc)) ;; Support. 
(when (hvi)  (ukc)) ;; Support. 
(when (kvi)  (vkc)) ;; Support. 
(when (mvi)  (xkc)) ;; Support. 
(when (rvi)  (ykc)) ;; Support. 
(when (uvi)  (zkc)) ;; Support. 
(when (xvi)  (blc)) ;; Support. 
(when (zvi)  (clc)) ;; Support. 
(when (cwi)  (glc)) ;; Support. 
(when (hwi)  (hlc)) ;; Support. 
(when (kwi)  (jlc)) ;; Support. 
(when (mwi)  (klc)) ;; Support. 
(when (rwi)  (llc)) ;; Support. 
(when (uwi)  (mlc)) ;; Support. 
(when (xwi)  (qlc)) ;; Support. 
(when (zwi)  (rlc)) ;; Support. 
(when (cxi)  (tlc)) ;; Support. 
(when (hxi)  (ulc)) ;; Support. 
(when (kxi)  (vlc)) ;; Support. 
(when (mxi)  (xlc)) ;; Support. 
(when (rxi)  (ylc)) ;; Support. 
(when (uxi)  (zlc)) ;; Support. 
(when (xxi)  (bmc)) ;; Support. 
(when (zxi)  (cmc)) ;; Support. 
(when (cyi)  (gmc)) ;; Support. 
(when (hyi)  (hmc)) ;; Support. 
(when (kyi)  (jmc)) ;; Support. 
(when (myi)  (kmc)) ;; Support. 
(when (ryi)  (lmc)) ;; Support. 
(when (uyi)  (mmc)) ;; Support. 
(when (xyi)  (qmc)) ;; Support. 
(when (zyi)  (rmc)) ;; Support. 
(when (czi)  (tmc)) ;; Support. 
(when (hzi)  (umc)) ;; Support. 
(when (kzi)  (vmc)) ;; Support. 
(when (mzi)  (xmc)) ;; Support. 
(when (rzi)  (ymc)) ;; Support. 
(when (uzi)  (zmc)) ;; Support. 
(when (xzi)  (bnc)) ;; Support. 
(when (zzi)  (cnc)) ;; Support. 
(when (c1i)  (gnc)) ;; Support. 
(when (h1i)  (hnc)) ;; Support. 
(when (k1i)  (jnc)) ;; Support. 
(when (m1i)  (knc)) ;; Support. 
(when (r1i)  (lnc)) ;; Support. 
(when (u1i)  (mnc)) ;; Support. 
(when (x1i)  (qnc)) ;; Support. 
(when (z1i)  (rnc)) ;; Support. 
(when (c2i)  (tnc)) ;; Support. 
(when (h2i)  (unc)) ;; Support. 
(when (k2i)  (vnc)) ;; Support. 
(when (m2i)  (xnc)) ;; Support. 
(when (r2i)  (ync)) ;; Support. 
(when (u2i)  (znc)) ;; Support. 
(when (x2i)  (boc)) ;; Support. 
(when (z2i)  (coc)) ;; Support. 
(when (c3i)  (goc)) ;; Support. 
(when (h3i)  (hoc)) ;; Support. 
(when (k3i)  (joc)) ;; Support. 
(when (m3i)  (koc)) ;; Support. 
(when (t3i)  (moc)) ;; Support. 
(when (v3i)  (qoc)) ;; Support. 
(when (y3i)  (roc)) ;; Support. 
(when (b4i)  (toc)) ;; Support. 
(when (g4i)  (uoc)) ;; Support. 
(when (l4i)  (xoc)) ;; Support. 
(when (q4i)  (yoc)) ;; Support. 
(when (t4i)  (zoc)) ;; Support. 
(when (v4i)  (bpc)) ;; Support. 
(when (y4i)  (cpc)) ;; Support. 
(when (b5i)  (gpc)) ;; Support. 
(when (g5i)  (hpc)) ;; Support. 
(when (j5i)  (jpc)) ;; Support. 
(when (l5i)  (kpc)) ;; Support. 
(when (q5i)  (lpc)) ;; Support. 
(when (t5i)  (mpc)) ;; Support. 
(when (v5i)  (qpc)) ;; Support. 
(when (y5i)  (rpc)) ;; Support. 
(when (b6i)  (tpc)) ;; Support. 
(when (g6i)  (upc)) ;; Support. 
(when (j6i)  (vpc)) ;; Support. 
(when (l6i)  (xpc)) ;; Support. 
(when (q6i)  (ypc)) ;; Support. 
(when (t6i)  (zpc)) ;; Support. 
(when (v6i)  (bqc)) ;; Support. 
(when (y6i)  (cqc)) ;; Support. 
(when (b7i)  (gqc)) ;; Support. 
(when (g7i)  (hqc)) ;; Support. 
(when (j7i)  (jqc)) ;; Support. 
(when (l7i)  (kqc)) ;; Support. 
(when (q7i)  (lqc)) ;; Support. 
(when (t7i)  (mqc)) ;; Support. 
(when (v7i)  (qqc)) ;; Support. 
(when (y7i)  (rqc)) ;; Support. 
(when (b8i)  (tqc)) ;; Support. 
(when (g8i)  (uqc)) ;; Support. 
(when (j8i)  (vqc)) ;; Support. 
(when (l8i)  (xqc)) ;; Support. 
(when (q8i)  (yqc)) ;; Support. 
(when (t8i)  (zqc)) ;; Support. 
(when (v8i)  (bsc)) ;; Support. 
(when (y8i)  (csc)) ;; Support. 
(when (b9i)  (gsc)) ;; Support. 
(when (g9i)  (hsc)) ;; Support. 
(when (j9i)  (jsc)) ;; Support. 
(when (l9i)  (ksc)) ;; Support. 
(when (q9i)  (lsc)) ;; Support. 
(when (t9i)  (msc)) ;; Support. 
(when (v9i)  (qsc)) ;; Support. 
(when (y9i)  (rsc)) ;; Support. 
(when (b0i)  (tsc)) ;; Support. 
(when (g0i)  (usc)) ;; Support. 
(when (j0i)  (vsc)) ;; Support. 
(when (l0i)  (xsc)) ;; Support. 
(when (q0i)  (ysc)) ;; Support. 
(when (t0i)  (zsc)) ;; Support. 
(when (v0i)  (brc)) ;; Support. 
(when (baj)  (grc)) ;; Support. 
(when (gaj)  (hrc)) ;; Support. 
(when (jaj)  (jrc)) ;; Support. 
(when (laj)  (krc)) ;; Support. 
(when (qaj)  (lrc)) ;; Support. 
(when (taj)  (mrc)) ;; Support. 
(when (vaj)  (qrc)) ;; Support. 
(when (yaj)  (rrc)) ;; Support. 
(when (bbj)  (trc)) ;; Support. 
(when (gbj)  (urc)) ;; Support. 
(when (jbj)  (vrc)) ;; Support. 
(when (lbj)  (xrc)) ;; Support. 
(when (qbj)  (yrc)) ;; Support. 
(when (tbj)  (zrc)) ;; Support. 
(when (vbj)  (btc)) ;; Support. 
(when (ybj)  (ctc)) ;; Support. 
(when (bcj)  (gtc)) ;; Support. 
(when (gcj)  (htc)) ;; Support. 
(when (jcj)  (jtc)) ;; Support. 
(when (lcj)  (ktc)) ;; Support. 
(when (qcj)  (ltc)) ;; Support. 
(when (tcj)  (mtc)) ;; Support. 
(when (vcj)  (qtc)) ;; Support. 
(when (ycj)  (rtc)) ;; Support. 
(when (bdj)  (ttc)) ;; Support. 
(when (gdj)  (utc)) ;; Support. 
(when (jdj)  (vtc)) ;; Support. 
(when (ldj)  (xtc)) ;; Support. 
(when (qdj)  (ytc)) ;; Support. 
(when (tdj)  (ztc)) ;; Support. 
(when (vdj)  (buc)) ;; Support. 
(when (ydj)  (cuc)) ;; Support. 
(when (bej)  (guc)) ;; Support. 
(when (gej)  (huc)) ;; Support. 
(when (jej)  (juc)) ;; Support. 
(when (lej)  (kuc)) ;; Support. 
(when (qej)  (luc)) ;; Support. 
(when (tej)  (muc)) ;; Support. 
(when (vej)  (quc)) ;; Support. 
(when (yej)  (ruc)) ;; Support. 
(when (bfj)  (tuc)) ;; Support. 
(when (gfj)  (uuc)) ;; Support. 
(when (jfj)  (vuc)) ;; Support. 
(when (lfj)  (xuc)) ;; Support. 
(when (qfj)  (yuc)) ;; Support. 
(when (rfj)  (zuc)) ;; Support. 
(when (ufj)  (bvc)) ;; Support. 
(when (xfj)  (cvc)) ;; Support. 
(when (zfj)  (gvc)) ;; Support. 
(when (cgj)  (hvc)) ;; Support. 
(when (hgj)  (jvc)) ;; Support. 
(when (kgj)  (kvc)) ;; Support. 
(when (mgj)  (lvc)) ;; Support. 
(when (rgj)  (mvc)) ;; Support. 
(when (ugj)  (qvc)) ;; Support. 
(when (xgj)  (rvc)) ;; Support. 
(when (zgj)  (tvc)) ;; Support. 
(when (chj)  (uvc)) ;; Support. 
(when (hhj)  (vvc)) ;; Support. 
(when (khj)  (xvc)) ;; Support. 
(when (mhj)  (yvc)) ;; Support. 
(when (rhj)  (zvc)) ;; Support. 
(when (uhj)  (bwc)) ;; Support. 
(when (xhj)  (cwc)) ;; Support. 
(when (zhj)  (gwc)) ;; Support. 
(when (cij)  (hwc)) ;; Support. 
(when (hij)  (jwc)) ;; Support. 
(when (kij)  (kwc)) ;; Support. 
(when (mij)  (lwc)) ;; Support. 
(when (rij)  (mwc)) ;; Support. 
(when (uij)  (qwc)) ;; Support. 
(when (xij)  (rwc)) ;; Support. 
(when (zij)  (twc)) ;; Support. 
(when (cjj)  (uwc)) ;; Support. 
(when (hjj)  (vwc)) ;; Support. 
(when (kjj)  (xwc)) ;; Support. 
(when (mjj)  (ywc)) ;; Support. 
(when (rjj)  (zwc)) ;; Support. 
(when (ujj)  (bxc)) ;; Support. 
(when (xjj)  (cxc)) ;; Support. 
(when (zjj)  (gxc)) ;; Support. 
(when (ckj)  (hxc)) ;; Support. 
(when (hkj)  (jxc)) ;; Support. 
(when (kkj)  (kxc)) ;; Support. 
(when (mkj)  (lxc)) ;; Support. 
(when (rkj)  (mxc)) ;; Support. 
(when (ukj)  (qxc)) ;; Support. 
(when (xkj)  (rxc)) ;; Support. 
(when (zkj)  (txc)) ;; Support. 
(when (clj)  (uxc)) ;; Support. 
(when (hlj)  (vxc)) ;; Support. 
(when (klj)  (xxc)) ;; Support. 
(when (mlj)  (yxc)) ;; Support. 
(when (rlj)  (zxc)) ;; Support. 
(when (ulj)  (byc)) ;; Support. 
(when (xlj)  (cyc)) ;; Support. 
(when (zlj)  (gyc)) ;; Support. 
(when (cmj)  (hyc)) ;; Support. 
(when (hmj)  (jyc)) ;; Support. 
(when (kmj)  (kyc)) ;; Support. 
(when (mmj)  (lyc)) ;; Support. 
(when (tqi) (and (myc) (zad))) ;; Support. 
(when (vqi)  (qyc)) ;; Support. 
(when (yqi)  (ryc)) ;; Support. 
(when (bsi)  (tyc)) ;; Support. 
(when (gsi)  (uyc)) ;; Support. 
(when (jsi)  (vyc)) ;; Support. 
(when (lsi)  (xyc)) ;; Support. 
(when (qsi)  (yyc)) ;; Support. 
(when (tsi)  (zyc)) ;; Support. 
(when (vsi)  (bzc)) ;; Support. 
(when (ysi)  (czc)) ;; Support. 
(when (bri)  (gzc)) ;; Support. 
(when (gri)  (hzc)) ;; Support. 
(when (jri)  (jzc)) ;; Support. 
(when (lri)  (kzc)) ;; Support. 
(when (qri)  (lzc)) ;; Support. 
(when (tri)  (mzc)) ;; Support. 
(when (vri)  (qzc)) ;; Support. 
(when (yri)  (rzc)) ;; Support. 
(when (bti)  (tzc)) ;; Support. 
(when (gti)  (uzc)) ;; Support. 
(when (jti)  (vzc)) ;; Support. 
(when (lti)  (xzc)) ;; Support. 
(when (qti)  (yzc)) ;; Support. 
(when (tti)  (zzc)) ;; Support. 
(when (vti)  (b1c)) ;; Support. 
(when (yti)  (c1c)) ;; Support. 
(when (bui)  (g1c)) ;; Support. 
(when (gui)  (h1c)) ;; Support. 
(when (jui)  (j1c)) ;; Support. 
(when (lui)  (k1c)) ;; Support. 
(when (qui)  (l1c)) ;; Support. 
(when (tui)  (m1c)) ;; Support. 
(when (vui)  (q1c)) ;; Support. 
(when (yui)  (r1c)) ;; Support. 
(when (bvi)  (t1c)) ;; Support. 
(when (gvi)  (u1c)) ;; Support. 
(when (jvi)  (v1c)) ;; Support. 
(when (lvi)  (x1c)) ;; Support. 
(when (qvi)  (y1c)) ;; Support. 
(when (tvi)  (z1c)) ;; Support. 
(when (vvi)  (b2c)) ;; Support. 
(when (yvi)  (c2c)) ;; Support. 
(when (bwi)  (g2c)) ;; Support. 
(when (gwi)  (h2c)) ;; Support. 
(when (jwi)  (j2c)) ;; Support. 
(when (lwi)  (k2c)) ;; Support. 
(when (qwi)  (l2c)) ;; Support. 
(when (twi)  (m2c)) ;; Support. 
(when (vwi)  (q2c)) ;; Support. 
(when (ywi)  (r2c)) ;; Support. 
(when (bxi)  (t2c)) ;; Support. 
(when (gxi)  (u2c)) ;; Support. 
(when (jxi)  (v2c)) ;; Support. 
(when (lxi)  (x2c)) ;; Support. 
(when (qxi)  (y2c)) ;; Support. 
(when (txi)  (z2c)) ;; Support. 
(when (vxi)  (b3c)) ;; Support. 
(when (yxi)  (c3c)) ;; Support. 
(when (byi)  (g3c)) ;; Support. 
(when (gyi)  (h3c)) ;; Support. 
(when (jyi)  (j3c)) ;; Support. 
(when (lyi)  (k3c)) ;; Support. 
(when (qyi)  (l3c)) ;; Support. 
(when (tyi)  (m3c)) ;; Support. 
(when (vyi)  (q3c)) ;; Support. 
(when (yyi)  (r3c)) ;; Support. 
(when (bzi)  (t3c)) ;; Support. 
(when (gzi)  (u3c)) ;; Support. 
(when (jzi)  (v3c)) ;; Support. 
(when (lzi)  (x3c)) ;; Support. 
(when (qzi)  (y3c)) ;; Support. 
(when (tzi)  (z3c)) ;; Support. 
(when (vzi)  (b4c)) ;; Support. 
(when (yzi)  (c4c)) ;; Support. 
(when (b1i)  (g4c)) ;; Support. 
(when (g1i)  (h4c)) ;; Support. 
(when (j1i)  (j4c)) ;; Support. 
(when (l1i)  (k4c)) ;; Support. 
(when (q1i)  (l4c)) ;; Support. 
(when (t1i)  (m4c)) ;; Support. 
(when (v1i)  (q4c)) ;; Support. 
(when (y1i)  (r4c)) ;; Support. 
(when (b2i)  (t4c)) ;; Support. 
(when (g2i)  (u4c)) ;; Support. 
(when (j2i)  (v4c)) ;; Support. 
(when (l2i)  (x4c)) ;; Support. 
(when (q2i)  (y4c)) ;; Support. 
(when (t2i)  (z4c)) ;; Support. 
(when (v2i)  (b5c)) ;; Support. 
(when (y2i)  (c5c)) ;; Support. 
(when (b3i)  (g5c)) ;; Support. 
(when (g3i)  (h5c)) ;; Support. 
(when (j3i)  (j5c)) ;; Support. 
(when (l3i)  (k5c)) ;; Support. 
(when (q3i)  (l5c)) ;; Support. 
(when (r3i)  (m5c)) ;; Support. 
(when (u3i)  (q5c)) ;; Support. 
(when (x3i)  (r5c)) ;; Support. 
(when (z3i)  (t5c)) ;; Support. 
(when (c4i)  (u5c)) ;; Support. 
(when (h4i)  (v5c)) ;; Support. 
(when (m4i)  (y5c)) ;; Support. 
(when (r4i)  (z5c)) ;; Support. 
(when (u4i)  (b6c)) ;; Support. 
(when (x4i)  (c6c)) ;; Support. 
(when (z4i)  (g6c)) ;; Support. 
(when (c5i)  (h6c)) ;; Support. 
(when (h5i)  (j6c)) ;; Support. 
(when (k5i)  (k6c)) ;; Support. 
(when (m5i)  (l6c)) ;; Support. 
(when (r5i)  (m6c)) ;; Support. 
(when (u5i)  (q6c)) ;; Support. 
(when (x5i)  (r6c)) ;; Support. 
(when (z5i)  (t6c)) ;; Support. 
(when (c6i)  (u6c)) ;; Support. 
(when (h6i)  (v6c)) ;; Support. 
(when (k6i)  (x6c)) ;; Support. 
(when (m6i)  (y6c)) ;; Support. 
(when (r6i)  (z6c)) ;; Support. 
(when (u6i)  (b7c)) ;; Support. 
(when (x6i)  (c7c)) ;; Support. 
(when (z6i)  (g7c)) ;; Support. 
(when (c7i)  (h7c)) ;; Support. 
(when (h7i)  (j7c)) ;; Support. 
(when (k7i)  (k7c)) ;; Support. 
(when (m7i)  (l7c)) ;; Support. 
(when (r7i)  (m7c)) ;; Support. 
(when (u7i)  (q7c)) ;; Support. 
(when (x7i)  (r7c)) ;; Support. 
(when (z7i)  (t7c)) ;; Support. 
(when (c8i)  (u7c)) ;; Support. 
(when (h8i)  (v7c)) ;; Support. 
(when (k8i)  (x7c)) ;; Support. 
(when (m8i)  (y7c)) ;; Support. 
(when (r8i)  (z7c)) ;; Support. 
(when (u9i)  (q8c)) ;; Support. 
(when (x9i)  (r8c)) ;; Support. 
(when (z9i)  (t8c)) ;; Support. 
(when (c0i)  (u8c)) ;; Support. 
(when (h0i)  (v8c)) ;; Support. 
(when (k0i)  (x8c)) ;; Support. 
(when (m0i)  (y8c)) ;; Support. 
(when (r0i)  (z8c)) ;; Support. 
(when (uaj)  (q9c)) ;; Support. 
(when (xaj)  (r9c)) ;; Support. 
(when (zaj)  (t9c)) ;; Support. 
(when (cbj)  (u9c)) ;; Support. 
(when (hbj)  (v9c)) ;; Support. 
(when (kbj)  (x9c)) ;; Support. 
(when (mbj)  (y9c)) ;; Support. 
(when (rbj)  (z9c)) ;; Support. 
(when (ubj)  (b0c)) ;; Support. 
(when (xbj)  (c0c)) ;; Support. 
(when (zbj)  (g0c)) ;; Support. 
(when (ccj)  (h0c)) ;; Support. 
(when (hcj)  (j0c)) ;; Support. 
(when (kcj)  (k0c)) ;; Support. 
(when (mcj)  (l0c)) ;; Support. 
(when (rcj)  (m0c)) ;; Support. 
(when (uej)  (qad)) ;; Support. 
(when (xej)  (rad)) ;; Support. 
(when (hfj)  (vad)) ;; Support. 
(when (kfj)  (xad)) ;; Support. 
(when (tfj)  (bbd)) ;; Support. 
(when (vfj)  (cbd)) ;; Support. 
(when (yfj)  (gbd)) ;; Support. 
(when (bgj)  (hbd)) ;; Support. 
(when (tgj)  (qbd)) ;; Support. 
(when (vgj)  (rbd)) ;; Support. 
(when (lhj)  (ybd)) ;; Support. 
(when (qhj)  (zbd)) ;; Support. 
(when (gij)  (jcd)) ;; Support. 
(when (jij)  (kcd)) ;; Support. 
(when (lij)  (lcd)) ;; Support. 
(when (qij)  (mcd)) ;; Support. 
(when (tkj)  (qdd)) ;; Support. 
(when (vkj)  (rdd)) ;; Support. 
(when (ykj)  (tdd)) ;; Support. 
(when (blj)  (udd)) ;; Support. 
(when (glj)  (vdd)) ;; Support. 
(when (jlj)  (xdd)) ;; Support. 
(when (llj)  (ydd)) ;; Support. 
(when (qlj)  (zdd)) ;; Support. 
(when (tlj)  (bed)) ;; Support. 
(when (vlj)  (ced)) ;; Support. 
(when (ylj)  (ged)) ;; Support. 
(when (bmj)  (hed)) ;; Support. 
(when (gmj)  (jed)) ;; Support. 
(when (jmj)  (ked)) ;; Support. 
(when (lmj)  (led)) ;; Support. 
(when (qmj)  (med)) ;; Support. 
(when (umj)  (qyc)) ;; Support. 
(when (xmj)  (ryc)) ;; Support. 
(when (zmj)  (tyc)) ;; Support. 
(when (cnj)  (uyc)) ;; Support. 
(when (hnj)  (vyc)) ;; Support. 
(when (knj)  (xyc)) ;; Support. 
(when (mnj)  (yyc)) ;; Support. 
(when (rnj)  (zyc)) ;; Support. 
(when (unj)  (bzc)) ;; Support. 
(when (xnj)  (czc)) ;; Support. 
(when (znj)  (gzc)) ;; Support. 
(when (coj)  (hzc)) ;; Support. 
(when (hoj)  (jzc)) ;; Support. 
(when (koj)  (kzc)) ;; Support. 
(when (moj)  (lzc)) ;; Support. 
(when (roj)  (mzc)) ;; Support. 
(when (uoj)  (qzc)) ;; Support. 
(when (xoj)  (rzc)) ;; Support. 
(when (zoj)  (tzc)) ;; Support. 
(when (cpj)  (uzc)) ;; Support. 
(when (hpj)  (vzc)) ;; Support. 
(when (kpj)  (xzc)) ;; Support. 
(when (mpj)  (yzc)) ;; Support. 
(when (rpj)  (zzc)) ;; Support. 
(when (upj)  (b1c)) ;; Support. 
(when (xpj)  (c1c)) ;; Support. 
(when (zpj)  (g1c)) ;; Support. 
(when (cqj)  (h1c)) ;; Support. 
(when (hqj)  (j1c)) ;; Support. 
(when (kqj)  (k1c)) ;; Support. 
(when (mqj)  (l1c)) ;; Support. 
(when (rqj)  (m1c)) ;; Support. 
(when (uqj)  (q1c)) ;; Support. 
(when (xqj)  (r1c)) ;; Support. 
(when (zqj)  (t1c)) ;; Support. 
(when (csj)  (u1c)) ;; Support. 
(when (hsj)  (v1c)) ;; Support. 
(when (ksj)  (x1c)) ;; Support. 
(when (msj)  (y1c)) ;; Support. 
(when (rsj)  (z1c)) ;; Support. 
(when (usj)  (b2c)) ;; Support. 
(when (xsj)  (c2c)) ;; Support. 
(when (zsj)  (g2c)) ;; Support. 
(when (crj)  (h2c)) ;; Support. 
(when (hrj)  (j2c)) ;; Support. 
(when (krj)  (k2c)) ;; Support. 
(when (mrj)  (l2c)) ;; Support. 
(when (rrj)  (m2c)) ;; Support. 
(when (urj)  (q2c)) ;; Support. 
(when (xrj)  (r2c)) ;; Support. 
(when (zrj)  (t2c)) ;; Support. 
(when (ctj)  (u2c)) ;; Support. 
(when (htj)  (v2c)) ;; Support. 
(when (ktj)  (x2c)) ;; Support. 
(when (mtj)  (y2c)) ;; Support. 
(when (rtj)  (z2c)) ;; Support. 
(when (utj)  (b3c)) ;; Support. 
(when (xtj)  (c3c)) ;; Support. 
(when (ztj)  (g3c)) ;; Support. 
(when (cuj)  (h3c)) ;; Support. 
(when (huj)  (j3c)) ;; Support. 
(when (kuj)  (k3c)) ;; Support. 
(when (muj)  (l3c)) ;; Support. 
(when (ruj)  (m3c)) ;; Support. 
(when (uuj)  (q3c)) ;; Support. 
(when (xuj)  (r3c)) ;; Support. 
(when (zuj)  (t3c)) ;; Support. 
(when (cvj)  (u3c)) ;; Support. 
(when (hvj)  (v3c)) ;; Support. 
(when (kvj)  (x3c)) ;; Support. 
(when (mvj)  (y3c)) ;; Support. 
(when (rvj)  (z3c)) ;; Support. 
(when (uvj)  (b4c)) ;; Support. 
(when (xvj)  (c4c)) ;; Support. 
(when (zvj)  (g4c)) ;; Support. 
(when (cwj)  (h4c)) ;; Support. 
(when (hwj)  (j4c)) ;; Support. 
(when (kwj)  (k4c)) ;; Support. 
(when (mwj)  (l4c)) ;; Support. 
(when (rwj)  (m4c)) ;; Support. 
(when (uwj)  (q4c)) ;; Support. 
(when (xwj)  (r4c)) ;; Support. 
(when (zwj)  (t4c)) ;; Support. 
(when (cxj)  (u4c)) ;; Support. 
(when (hxj)  (v4c)) ;; Support. 
(when (kxj)  (x4c)) ;; Support. 
(when (mxj)  (y4c)) ;; Support. 
(when (rxj)  (z4c)) ;; Support. 
(when (uxj)  (b5c)) ;; Support. 
(when (xxj)  (c5c)) ;; Support. 
(when (zxj)  (g5c)) ;; Support. 
(when (cyj)  (h5c)) ;; Support. 
(when (hyj)  (j5c)) ;; Support. 
(when (kyj)  (k5c)) ;; Support. 
(when (myj)  (l5c)) ;; Support. 
(when (tyj)  (q5c)) ;; Support. 
(when (vyj)  (r5c)) ;; Support. 
(when (yyj)  (t5c)) ;; Support. 
(when (bzj)  (u5c)) ;; Support. 
(when (gzj)  (v5c)) ;; Support. 
(when (lzj)  (y5c)) ;; Support. 
(when (qzj)  (z5c)) ;; Support. 
(when (tzj)  (b6c)) ;; Support. 
(when (vzj)  (c6c)) ;; Support. 
(when (yzj)  (g6c)) ;; Support. 
(when (b1j)  (h6c)) ;; Support. 
(when (g1j)  (j6c)) ;; Support. 
(when (j1j)  (k6c)) ;; Support. 
(when (l1j)  (l6c)) ;; Support. 
(when (q1j)  (m6c)) ;; Support. 
(when (t1j)  (q6c)) ;; Support. 
(when (v1j)  (r6c)) ;; Support. 
(when (y1j)  (t6c)) ;; Support. 
(when (b2j)  (u6c)) ;; Support. 
(when (g2j)  (v6c)) ;; Support. 
(when (j2j)  (x6c)) ;; Support. 
(when (l2j)  (y6c)) ;; Support. 
(when (q2j)  (z6c)) ;; Support. 
(when (t2j)  (b7c)) ;; Support. 
(when (v2j)  (c7c)) ;; Support. 
(when (y2j)  (g7c)) ;; Support. 
(when (b3j)  (h7c)) ;; Support. 
(when (g3j)  (j7c)) ;; Support. 
(when (j3j)  (k7c)) ;; Support. 
(when (l3j)  (l7c)) ;; Support. 
(when (q3j)  (m7c)) ;; Support. 
(when (t3j)  (q7c)) ;; Support. 
(when (v3j)  (r7c)) ;; Support. 
(when (y3j)  (t7c)) ;; Support. 
(when (b4j)  (u7c)) ;; Support. 
(when (g4j)  (v7c)) ;; Support. 
(when (j4j)  (x7c)) ;; Support. 
(when (l4j)  (y7c)) ;; Support. 
(when (q4j)  (z7c)) ;; Support. 
(when (t4j)  (b8c)) ;; Support. 
(when (v4j)  (c8c)) ;; Support. 
(when (y4j)  (g8c)) ;; Support. 
(when (b5j)  (h8c)) ;; Support. 
(when (g5j)  (j8c)) ;; Support. 
(when (j5j)  (k8c)) ;; Support. 
(when (l5j)  (l8c)) ;; Support. 
(when (q5j)  (m8c)) ;; Support. 
(when (t5j)  (q8c)) ;; Support. 
(when (v5j)  (r8c)) ;; Support. 
(when (y5j)  (t8c)) ;; Support. 
(when (b6j)  (u8c)) ;; Support. 
(when (g6j)  (v8c)) ;; Support. 
(when (j6j)  (x8c)) ;; Support. 
(when (l6j)  (y8c)) ;; Support. 
(when (q6j)  (z8c)) ;; Support. 
(when (t6j)  (b9c)) ;; Support. 
(when (v6j)  (c9c)) ;; Support. 
(when (y6j)  (g9c)) ;; Support. 
(when (b7j)  (h9c)) ;; Support. 
(when (g7j)  (j9c)) ;; Support. 
(when (j7j)  (k9c)) ;; Support. 
(when (l7j)  (l9c)) ;; Support. 
(when (q7j)  (m9c)) ;; Support. 
(when (t7j)  (q9c)) ;; Support. 
(when (v7j)  (r9c)) ;; Support. 
(when (y7j)  (t9c)) ;; Support. 
(when (b8j)  (u9c)) ;; Support. 
(when (g8j)  (v9c)) ;; Support. 
(when (j8j)  (x9c)) ;; Support. 
(when (l8j)  (y9c)) ;; Support. 
(when (q8j)  (z9c)) ;; Support. 
(when (t8j)  (b0c)) ;; Support. 
(when (v8j)  (c0c)) ;; Support. 
(when (y8j)  (g0c)) ;; Support. 
(when (b9j)  (h0c)) ;; Support. 
(when (g9j)  (j0c)) ;; Support. 
(when (j9j)  (k0c)) ;; Support. 
(when (l9j)  (l0c)) ;; Support. 
(when (q9j)  (m0c)) ;; Support. 
(when (t9j)  (q0c)) ;; Support. 
(when (v9j)  (r0c)) ;; Support. 
(when (y9j)  (t0c)) ;; Support. 
(when (b0j)  (u0c)) ;; Support. 
(when (g0j)  (v0c)) ;; Support. 
(when (j0j)  (x0c)) ;; Support. 
(when (l0j)  (y0c)) ;; Support. 
(when (q0j)  (z0c)) ;; Support. 
(when (t0j)  (bad)) ;; Support. 
(when (v0j)  (cad)) ;; Support. 
(when (y0j)  (gad)) ;; Support. 
(when (bak)  (had)) ;; Support. 
(when (gak)  (jad)) ;; Support. 
(when (jak)  (kad)) ;; Support. 
(when (lak)  (lad)) ;; Support. 
(when (qak)  (mad)) ;; Support. 
(when (tak)  (qad)) ;; Support. 
(when (vak)  (rad)) ;; Support. 
(when (yak)  (tad)) ;; Support. 
(when (bbk)  (uad)) ;; Support. 
(when (gbk)  (vad)) ;; Support. 
(when (jbk)  (xad)) ;; Support. 
(when (lbk)  (yad)) ;; Support. 
(when (qbk)  (zad)) ;; Support. 
(when (rbk)  (bbd)) ;; Support. 
(when (ubk)  (cbd)) ;; Support. 
(when (xbk)  (gbd)) ;; Support. 
(when (zbk)  (hbd)) ;; Support. 
(when (cck)  (jbd)) ;; Support. 
(when (hck)  (kbd)) ;; Support. 
(when (kck)  (lbd)) ;; Support. 
(when (mck)  (mbd)) ;; Support. 
(when (rck)  (qbd)) ;; Support. 
(when (uck)  (rbd)) ;; Support. 
(when (xck)  (tbd)) ;; Support. 
(when (zck)  (ubd)) ;; Support. 
(when (cdk)  (vbd)) ;; Support. 
(when (hdk)  (xbd)) ;; Support. 
(when (kdk)  (ybd)) ;; Support. 
(when (mdk)  (zbd)) ;; Support. 
(when (rdk)  (bcd)) ;; Support. 
(when (udk)  (ccd)) ;; Support. 
(when (xdk)  (gcd)) ;; Support. 
(when (zdk)  (hcd)) ;; Support. 
(when (cek)  (jcd)) ;; Support. 
(when (hek)  (kcd)) ;; Support. 
(when (kek)  (lcd)) ;; Support. 
(when (mek)  (mcd)) ;; Support. 
(when (rek)  (qcd)) ;; Support. 
(when (uek)  (rcd)) ;; Support. 
(when (xek)  (tcd)) ;; Support. 
(when (zek)  (ucd)) ;; Support. 
(when (cfk)  (vcd)) ;; Support. 
(when (hfk)  (xcd)) ;; Support. 
(when (kfk)  (ycd)) ;; Support. 
(when (mfk)  (zcd)) ;; Support. 
(when (rfk)  (bdd)) ;; Support. 
(when (ufk)  (cdd)) ;; Support. 
(when (xfk)  (gdd)) ;; Support. 
(when (zfk)  (hdd)) ;; Support. 
(when (cgk)  (jdd)) ;; Support. 
(when (hgk)  (kdd)) ;; Support. 
(when (kgk)  (ldd)) ;; Support. 
(when (mgk)  (mdd)) ;; Support. 
(when (rgk)  (qdd)) ;; Support. 
(when (ugk)  (rdd)) ;; Support. 
(when (xgk)  (tdd)) ;; Support. 
(when (zgk)  (udd)) ;; Support. 
(when (chk)  (vdd)) ;; Support. 
(when (hhk)  (xdd)) ;; Support. 
(when (khk)  (ydd)) ;; Support. 
(when (mhk)  (zdd)) ;; Support. 
(when (rhk)  (bed)) ;; Support. 
(when (uhk)  (ced)) ;; Support. 
(when (xhk)  (ged)) ;; Support. 
(when (zhk)  (hed)) ;; Support. 
(when (cik)  (jed)) ;; Support. 
(when (hik)  (ked)) ;; Support. 
(when (kik)  (led)) ;; Support. 
))
(:action CMPSWAP_L7_L8
:parameters ()
:precondition (and (q7e))

:effect (and  (r3i) (not(rqi)) (y6j)
(when (qik) (and (qmj) (not(mmj)))) ;; Support.  Cancellation. 
(when (rqi) (and (rmj) (not(ryj)))) ;; Support.  Cancellation. 
(when (not(tqi))  (not(tmj))) ;; Cancellation. 
(when (uqi)  (umj)) ;; Support. 
(when (xqi) (and (xmj) (not(ymj)))) ;; Support.  Cancellation. 
(when (zqi) (and (zmj) (not(bnj)))) ;; Support.  Cancellation. 
(when (csi)  (cnj)) ;; Support. 
(when (hsi) (and (hnj) (not(jnj)))) ;; Support.  Cancellation. 
(when (ksi) (and (knj) (not(lnj)))) ;; Support.  Cancellation. 
(when (msi)  (mnj)) ;; Support. 
(when (rsi)  (rnj)) ;; Support. 
(when (usi) (and (unj) (not(vnj)))) ;; Support.  Cancellation. 
(when (xsi) (and (xnj) (not(ynj)))) ;; Support.  Cancellation. 
(when (zsi) (and (znj) (not(boj)))) ;; Support.  Cancellation. 
(when (cri) (and (coj) (not(goj)))) ;; Support.  Cancellation. 
(when (hri)  (hoj)) ;; Support. 
(when (kri)  (koj)) ;; Support. 
(when (mri)  (moj)) ;; Support. 
(when (rri)  (roj)) ;; Support. 
(when (uri)  (uoj)) ;; Support. 
(when (xri)  (xoj)) ;; Support. 
(when (zri)  (zoj)) ;; Support. 
(when (cti)  (cpj)) ;; Support. 
(when (hti)  (hpj)) ;; Support. 
(when (kti)  (kpj)) ;; Support. 
(when (mti)  (mpj)) ;; Support. 
(when (rti)  (rpj)) ;; Support. 
(when (uti) (and (upj) (not(vpj)))) ;; Support.  Cancellation. 
(when (xti) (and (xpj) (not(ypj)))) ;; Support.  Cancellation. 
(when (zti) (and (zpj) (not(bqj)))) ;; Support.  Cancellation. 
(when (cui) (and (cqj) (not(gqj)))) ;; Support.  Cancellation. 
(when (hui) (and (hqj) (not(jqj)))) ;; Support.  Cancellation. 
(when (kui) (and (kqj) (not(lqj)))) ;; Support.  Cancellation. 
(when (mui) (and (mqj) (not(qqj)))) ;; Support.  Cancellation. 
(when (rui) (and (rqj) (not(tqj)))) ;; Support.  Cancellation. 
(when (uui)  (uqj)) ;; Support. 
(when (xui)  (xqj)) ;; Support. 
(when (zui)  (zqj)) ;; Support. 
(when (cvi)  (csj)) ;; Support. 
(when (hvi)  (hsj)) ;; Support. 
(when (kvi)  (ksj)) ;; Support. 
(when (mvi)  (msj)) ;; Support. 
(when (rvi)  (rsj)) ;; Support. 
(when (uvi)  (usj)) ;; Support. 
(when (xvi)  (xsj)) ;; Support. 
(when (zvi)  (zsj)) ;; Support. 
(when (cwi)  (crj)) ;; Support. 
(when (hwi)  (hrj)) ;; Support. 
(when (kwi)  (krj)) ;; Support. 
(when (mwi)  (mrj)) ;; Support. 
(when (rwi)  (rrj)) ;; Support. 
(when (uwi) (and (urj) (not(vrj)))) ;; Support.  Cancellation. 
(when (xwi) (and (xrj) (not(yrj)))) ;; Support.  Cancellation. 
(when (zwi) (and (zrj) (not(btj)))) ;; Support.  Cancellation. 
(when (cxi) (and (ctj) (not(gtj)))) ;; Support.  Cancellation. 
(when (hxi) (and (htj) (not(jtj)))) ;; Support.  Cancellation. 
(when (kxi) (and (ktj) (not(ltj)))) ;; Support.  Cancellation. 
(when (mxi) (and (mtj) (not(qtj)))) ;; Support.  Cancellation. 
(when (rxi) (and (rtj) (not(ttj)))) ;; Support.  Cancellation. 
(when (uxi) (and (utj) (not(vtj)))) ;; Support.  Cancellation. 
(when (xxi) (and (xtj) (not(ytj)))) ;; Support.  Cancellation. 
(when (zxi) (and (ztj) (not(buj)))) ;; Support.  Cancellation. 
(when (cyi) (and (cuj) (not(guj)))) ;; Support.  Cancellation. 
(when (hyi) (and (huj) (not(juj)))) ;; Support.  Cancellation. 
(when (kyi) (and (kuj) (not(luj)))) ;; Support.  Cancellation. 
(when (myi) (and (muj) (not(quj)))) ;; Support.  Cancellation. 
(when (ryi) (and (ruj) (not(tuj)))) ;; Support.  Cancellation. 
(when (uyi) (and (uuj) (not(vuj)))) ;; Support.  Cancellation. 
(when (xyi) (and (xuj) (not(yuj)))) ;; Support.  Cancellation. 
(when (zyi) (and (zuj) (not(bvj)))) ;; Support.  Cancellation. 
(when (czi) (and (cvj) (not(gvj)))) ;; Support.  Cancellation. 
(when (hzi) (and (hvj) (not(jvj)))) ;; Support.  Cancellation. 
(when (kzi) (and (kvj) (not(lvj)))) ;; Support.  Cancellation. 
(when (mzi) (and (mvj) (not(qvj)))) ;; Support.  Cancellation. 
(when (rzi) (and (rvj) (not(tvj)))) ;; Support.  Cancellation. 
(when (uzi) (and (uvj) (not(vvj)))) ;; Support.  Cancellation. 
(when (xzi) (and (xvj) (not(yvj)))) ;; Support.  Cancellation. 
(when (zzi) (and (zvj) (not(bwj)))) ;; Support.  Cancellation. 
(when (c1i) (and (cwj) (not(gwj)))) ;; Support.  Cancellation. 
(when (h1i) (and (hwj) (not(jwj)))) ;; Support.  Cancellation. 
(when (k1i) (and (kwj) (not(lwj)))) ;; Support.  Cancellation. 
(when (m1i) (and (mwj) (not(qwj)))) ;; Support.  Cancellation. 
(when (r1i) (and (rwj) (not(twj)))) ;; Support.  Cancellation. 
(when (u1i) (and (uwj) (not(vwj)))) ;; Support.  Cancellation. 
(when (x1i) (and (xwj) (not(ywj)))) ;; Support.  Cancellation. 
(when (z1i) (and (zwj) (not(bxj)))) ;; Support.  Cancellation. 
(when (c2i) (and (cxj) (not(gxj)))) ;; Support.  Cancellation. 
(when (h2i) (and (hxj) (not(jxj)))) ;; Support.  Cancellation. 
(when (k2i) (and (kxj) (not(lxj)))) ;; Support.  Cancellation. 
(when (m2i) (and (mxj) (not(qxj)))) ;; Support.  Cancellation. 
(when (r2i) (and (rxj) (not(txj)))) ;; Support.  Cancellation. 
(when (u2i) (and (uxj) (not(vxj)))) ;; Support.  Cancellation. 
(when (x2i) (and (xxj) (not(yxj)))) ;; Support.  Cancellation. 
(when (z2i) (and (zxj) (not(byj)))) ;; Support.  Cancellation. 
(when (c3i) (and (cyj) (not(gyj)))) ;; Support.  Cancellation. 
(when (h3i) (and (hyj) (not(jyj)))) ;; Support.  Cancellation. 
(when (k3i) (and (kyj) (not(lyj)))) ;; Support.  Cancellation. 
(when (m3i) (and (myj) (not(qyj)))) ;; Support.  Cancellation. 
(when (t3i)  (tyj)) ;; Support. 
(when (v3i)  (vyj)) ;; Support. 
(when (y3i)  (yyj)) ;; Support. 
(when (b4i)  (bzj)) ;; Support. 
(when (g4i)  (gzj)) ;; Support. 
(when (l4i)  (lzj)) ;; Support. 
(when (q4i)  (qzj)) ;; Support. 
(when (t4i)  (tzj)) ;; Support. 
(when (v4i)  (vzj)) ;; Support. 
(when (y4i)  (yzj)) ;; Support. 
(when (b5i)  (b1j)) ;; Support. 
(when (g5i)  (g1j)) ;; Support. 
(when (j5i)  (j1j)) ;; Support. 
(when (l5i)  (l1j)) ;; Support. 
(when (q5i)  (q1j)) ;; Support. 
(when (t5i)  (t1j)) ;; Support. 
(when (v5i)  (v1j)) ;; Support. 
(when (y5i)  (y1j)) ;; Support. 
(when (b6i)  (b2j)) ;; Support. 
(when (g6i)  (g2j)) ;; Support. 
(when (j6i)  (j2j)) ;; Support. 
(when (l6i)  (l2j)) ;; Support. 
(when (q6i)  (q2j)) ;; Support. 
(when (t6i)  (t2j)) ;; Support. 
(when (v6i)  (v2j)) ;; Support. 
(when (y6i)  (y2j)) ;; Support. 
(when (b7i)  (b3j)) ;; Support. 
(when (g7i)  (g3j)) ;; Support. 
(when (j7i)  (j3j)) ;; Support. 
(when (l7i)  (l3j)) ;; Support. 
(when (q7i)  (q3j)) ;; Support. 
(when (t7i) (and (t3j) (not(u3j)))) ;; Support.  Cancellation. 
(when (v7i) (and (v3j) (not(x3j)))) ;; Support.  Cancellation. 
(when (y7i) (and (y3j) (not(z3j)))) ;; Support.  Cancellation. 
(when (b8i) (and (b4j) (not(c4j)))) ;; Support.  Cancellation. 
(when (g8i) (and (g4j) (not(h4j)))) ;; Support.  Cancellation. 
(when (j8i) (and (j4j) (not(k4j)))) ;; Support.  Cancellation. 
(when (l8i) (and (l4j) (not(m4j)))) ;; Support.  Cancellation. 
(when (q8i) (and (q4j) (not(r4j)))) ;; Support.  Cancellation. 
(when (t8i)  (t4j)) ;; Support. 
(when (v8i)  (v4j)) ;; Support. 
(when (y8i)  (y4j)) ;; Support. 
(when (b9i)  (b5j)) ;; Support. 
(when (g9i)  (g5j)) ;; Support. 
(when (j9i)  (j5j)) ;; Support. 
(when (l9i)  (l5j)) ;; Support. 
(when (q9i)  (q5j)) ;; Support. 
(when (t9i) (and (t5j) (not(u5j)))) ;; Support.  Cancellation. 
(when (v9i) (and (v5j) (not(x5j)))) ;; Support.  Cancellation. 
(when (y9i) (and (y5j) (not(z5j)))) ;; Support.  Cancellation. 
(when (b0i) (and (b6j) (not(c6j)))) ;; Support.  Cancellation. 
(when (g0i) (and (g6j) (not(h6j)))) ;; Support.  Cancellation. 
(when (j0i) (and (j6j) (not(k6j)))) ;; Support.  Cancellation. 
(when (l0i) (and (l6j) (not(m6j)))) ;; Support.  Cancellation. 
(when (q0i) (and (q6j) (not(r6j)))) ;; Support.  Cancellation. 
(when (t0i)  (t6j)) ;; Support. 
(when (v0i)  (v6j)) ;; Support. 
(when (baj)  (b7j)) ;; Support. 
(when (gaj)  (g7j)) ;; Support. 
(when (jaj)  (j7j)) ;; Support. 
(when (laj)  (l7j)) ;; Support. 
(when (qaj)  (q7j)) ;; Support. 
(when (taj) (and (t7j) (not(u7j)))) ;; Support.  Cancellation. 
(when (vaj) (and (v7j) (not(x7j)))) ;; Support.  Cancellation. 
(when (yaj) (and (y7j) (not(z7j)))) ;; Support.  Cancellation. 
(when (bbj) (and (b8j) (not(c8j)))) ;; Support.  Cancellation. 
(when (gbj) (and (g8j) (not(h8j)))) ;; Support.  Cancellation. 
(when (jbj) (and (j8j) (not(k8j)))) ;; Support.  Cancellation. 
(when (lbj) (and (l8j) (not(m8j)))) ;; Support.  Cancellation. 
(when (qbj) (and (q8j) (not(r8j)))) ;; Support.  Cancellation. 
(when (tbj) (and (t8j) (not(u8j)))) ;; Support.  Cancellation. 
(when (vbj) (and (v8j) (not(x8j)))) ;; Support.  Cancellation. 
(when (ybj) (and (y8j) (not(z8j)))) ;; Support.  Cancellation. 
(when (bcj) (and (b9j) (not(c9j)))) ;; Support.  Cancellation. 
(when (gcj) (and (g9j) (not(h9j)))) ;; Support.  Cancellation. 
(when (jcj) (and (j9j) (not(k9j)))) ;; Support.  Cancellation. 
(when (lcj) (and (l9j) (not(m9j)))) ;; Support.  Cancellation. 
(when (qcj) (and (q9j) (not(r9j)))) ;; Support.  Cancellation. 
(when (tcj)  (t9j)) ;; Support. 
(when (vcj)  (v9j)) ;; Support. 
(when (ycj)  (y9j)) ;; Support. 
(when (bdj)  (b0j)) ;; Support. 
(when (gdj)  (g0j)) ;; Support. 
(when (jdj)  (j0j)) ;; Support. 
(when (ldj)  (l0j)) ;; Support. 
(when (qdj)  (q0j)) ;; Support. 
(when (tdj)  (t0j)) ;; Support. 
(when (vdj)  (v0j)) ;; Support. 
(when (ydj)  (y0j)) ;; Support. 
(when (bej)  (bak)) ;; Support. 
(when (gej)  (gak)) ;; Support. 
(when (jej)  (jak)) ;; Support. 
(when (lej)  (lak)) ;; Support. 
(when (qej)  (qak)) ;; Support. 
(when (tej) (and (tak) (not(uak)))) ;; Support.  Cancellation. 
(when (vej) (and (vak) (not(xak)))) ;; Support.  Cancellation. 
(when (yej)  (yak)) ;; Support. 
(when (bfj)  (bbk)) ;; Support. 
(when (gfj) (and (gbk) (not(hbk)))) ;; Support.  Cancellation. 
(when (jfj) (and (jbk) (not(kbk)))) ;; Support.  Cancellation. 
(when (lfj)  (lbk)) ;; Support. 
(when (qfj)  (qbk)) ;; Support. 
(when (rfj) (and (rbk) (not(tbk)))) ;; Support.  Cancellation. 
(when (ufj) (and (ubk) (not(vbk)))) ;; Support.  Cancellation. 
(when (xfj) (and (xbk) (not(ybk)))) ;; Support.  Cancellation. 
(when (zfj) (and (zbk) (not(bck)))) ;; Support.  Cancellation. 
(when (cgj)  (cck)) ;; Support. 
(when (hgj)  (hck)) ;; Support. 
(when (kgj)  (kck)) ;; Support. 
(when (mgj)  (mck)) ;; Support. 
(when (rgj) (and (rck) (not(tck)))) ;; Support.  Cancellation. 
(when (ugj) (and (uck) (not(vck)))) ;; Support.  Cancellation. 
(when (xgj)  (xck)) ;; Support. 
(when (zgj)  (zck)) ;; Support. 
(when (chj)  (cdk)) ;; Support. 
(when (hhj)  (hdk)) ;; Support. 
(when (khj) (and (kdk) (not(ldk)))) ;; Support.  Cancellation. 
(when (mhj) (and (mdk) (not(qdk)))) ;; Support.  Cancellation. 
(when (rhj)  (rdk)) ;; Support. 
(when (uhj)  (udk)) ;; Support. 
(when (xhj)  (xdk)) ;; Support. 
(when (zhj)  (zdk)) ;; Support. 
(when (cij) (and (cek) (not(gek)))) ;; Support.  Cancellation. 
(when (hij) (and (hek) (not(jek)))) ;; Support.  Cancellation. 
(when (kij) (and (kek) (not(lek)))) ;; Support.  Cancellation. 
(when (mij) (and (mek) (not(qek)))) ;; Support.  Cancellation. 
(when (rij)  (rek)) ;; Support. 
(when (uij)  (uek)) ;; Support. 
(when (xij)  (xek)) ;; Support. 
(when (zij)  (zek)) ;; Support. 
(when (cjj)  (cfk)) ;; Support. 
(when (hjj)  (hfk)) ;; Support. 
(when (kjj)  (kfk)) ;; Support. 
(when (mjj)  (mfk)) ;; Support. 
(when (rjj)  (rfk)) ;; Support. 
(when (ujj)  (ufk)) ;; Support. 
(when (xjj)  (xfk)) ;; Support. 
(when (zjj)  (zfk)) ;; Support. 
(when (ckj)  (cgk)) ;; Support. 
(when (hkj)  (hgk)) ;; Support. 
(when (kkj)  (kgk)) ;; Support. 
(when (mkj)  (mgk)) ;; Support. 
(when (rkj) (and (rgk) (not(tgk)))) ;; Support.  Cancellation. 
(when (ukj) (and (ugk) (not(vgk)))) ;; Support.  Cancellation. 
(when (xkj) (and (xgk) (not(ygk)))) ;; Support.  Cancellation. 
(when (zkj) (and (zgk) (not(bhk)))) ;; Support.  Cancellation. 
(when (clj) (and (chk) (not(ghk)))) ;; Support.  Cancellation. 
(when (hlj) (and (hhk) (not(jhk)))) ;; Support.  Cancellation. 
(when (klj) (and (khk) (not(lhk)))) ;; Support.  Cancellation. 
(when (mlj) (and (mhk) (not(qhk)))) ;; Support.  Cancellation. 
(when (rlj) (and (rhk) (not(thk)))) ;; Support.  Cancellation. 
(when (ulj) (and (uhk) (not(vhk)))) ;; Support.  Cancellation. 
(when (xlj) (and (xhk) (not(yhk)))) ;; Support.  Cancellation. 
(when (zlj) (and (zhk) (not(bik)))) ;; Support.  Cancellation. 
(when (cmj) (and (cik) (not(gik)))) ;; Support.  Cancellation. 
(when (hmj) (and (hik) (not(jik)))) ;; Support.  Cancellation. 
(when (kmj) (and (kik) (not(lik)))) ;; Support.  Cancellation. 
(when (mmj) (and (mik) (not(qik)))) ;; Support.  Cancellation. 
(when (tmj) (and (tqi) (not(qfj)))) ;; Support.  Cancellation. 
(when (ymj) (and (yqi) (not(xqi)))) ;; Support.  Cancellation. 
(when (bnj) (and (bsi) (not(zqi)))) ;; Support.  Cancellation. 
(when (jnj) (and (jsi) (not(hsi)))) ;; Support.  Cancellation. 
(when (lnj) (and (lsi) (not(ksi)))) ;; Support.  Cancellation. 
(when (vnj) (and (vsi) (not(usi)))) ;; Support.  Cancellation. 
(when (ynj) (and (ysi) (not(xsi)))) ;; Support.  Cancellation. 
(when (boj) (and (bri) (not(zsi)))) ;; Support.  Cancellation. 
(when (goj) (and (gri) (not(cri)))) ;; Support.  Cancellation. 
(when (vpj) (and (vti) (not(uti)))) ;; Support.  Cancellation. 
(when (ypj) (and (yti) (not(xti)))) ;; Support.  Cancellation. 
(when (bqj) (and (bui) (not(zti)))) ;; Support.  Cancellation. 
(when (gqj) (and (gui) (not(cui)))) ;; Support.  Cancellation. 
(when (jqj) (and (jui) (not(hui)))) ;; Support.  Cancellation. 
(when (lqj) (and (lui) (not(kui)))) ;; Support.  Cancellation. 
(when (qqj) (and (qui) (not(mui)))) ;; Support.  Cancellation. 
(when (tqj) (and (tui) (not(rui)))) ;; Support.  Cancellation. 
(when (vrj) (and (vwi) (not(uwi)))) ;; Support.  Cancellation. 
(when (yrj) (and (ywi) (not(xwi)))) ;; Support.  Cancellation. 
(when (btj) (and (bxi) (not(zwi)))) ;; Support.  Cancellation. 
(when (gtj) (and (gxi) (not(cxi)))) ;; Support.  Cancellation. 
(when (jtj) (and (jxi) (not(hxi)))) ;; Support.  Cancellation. 
(when (ltj) (and (lxi) (not(kxi)))) ;; Support.  Cancellation. 
(when (qtj) (and (qxi) (not(mxi)))) ;; Support.  Cancellation. 
(when (ttj) (and (txi) (not(rxi)))) ;; Support.  Cancellation. 
(when (vtj) (and (vxi) (not(uxi)))) ;; Support.  Cancellation. 
(when (ytj) (and (yxi) (not(xxi)))) ;; Support.  Cancellation. 
(when (buj) (and (byi) (not(zxi)))) ;; Support.  Cancellation. 
(when (guj) (and (gyi) (not(cyi)))) ;; Support.  Cancellation. 
(when (juj) (and (jyi) (not(hyi)))) ;; Support.  Cancellation. 
(when (luj) (and (lyi) (not(kyi)))) ;; Support.  Cancellation. 
(when (quj) (and (qyi) (not(myi)))) ;; Support.  Cancellation. 
(when (tuj) (and (tyi) (not(ryi)))) ;; Support.  Cancellation. 
(when (vuj) (and (vyi) (not(uyi)))) ;; Support.  Cancellation. 
(when (yuj) (and (yyi) (not(xyi)))) ;; Support.  Cancellation. 
(when (bvj) (and (bzi) (not(zyi)))) ;; Support.  Cancellation. 
(when (gvj) (and (gzi) (not(czi)))) ;; Support.  Cancellation. 
(when (jvj) (and (jzi) (not(hzi)))) ;; Support.  Cancellation. 
(when (lvj) (and (lzi) (not(kzi)))) ;; Support.  Cancellation. 
(when (qvj) (and (qzi) (not(mzi)))) ;; Support.  Cancellation. 
(when (tvj) (and (tzi) (not(rzi)))) ;; Support.  Cancellation. 
(when (vvj) (and (vzi) (not(uzi)))) ;; Support.  Cancellation. 
(when (yvj) (and (yzi) (not(xzi)))) ;; Support.  Cancellation. 
(when (bwj) (and (b1i) (not(zzi)))) ;; Support.  Cancellation. 
(when (gwj) (and (g1i) (not(c1i)))) ;; Support.  Cancellation. 
(when (jwj) (and (j1i) (not(h1i)))) ;; Support.  Cancellation. 
(when (lwj) (and (l1i) (not(k1i)))) ;; Support.  Cancellation. 
(when (qwj) (and (q1i) (not(m1i)))) ;; Support.  Cancellation. 
(when (twj) (and (t1i) (not(r1i)))) ;; Support.  Cancellation. 
(when (vwj) (and (v1i) (not(u1i)))) ;; Support.  Cancellation. 
(when (ywj) (and (y1i) (not(x1i)))) ;; Support.  Cancellation. 
(when (bxj) (and (b2i) (not(z1i)))) ;; Support.  Cancellation. 
(when (gxj) (and (g2i) (not(c2i)))) ;; Support.  Cancellation. 
(when (jxj) (and (j2i) (not(h2i)))) ;; Support.  Cancellation. 
(when (lxj) (and (l2i) (not(k2i)))) ;; Support.  Cancellation. 
(when (qxj) (and (q2i) (not(m2i)))) ;; Support.  Cancellation. 
(when (txj) (and (t2i) (not(r2i)))) ;; Support.  Cancellation. 
(when (vxj) (and (v2i) (not(u2i)))) ;; Support.  Cancellation. 
(when (yxj) (and (y2i) (not(x2i)))) ;; Support.  Cancellation. 
(when (byj) (and (b3i) (not(z2i)))) ;; Support.  Cancellation. 
(when (gyj) (and (g3i) (not(c3i)))) ;; Support.  Cancellation. 
(when (jyj) (and (j3i) (not(h3i)))) ;; Support.  Cancellation. 
(when (lyj) (and (l3i) (not(k3i)))) ;; Support.  Cancellation. 
(when (qyj) (and (q3i) (not(m3i)))) ;; Support.  Cancellation. 
(when (u3j) (and (u7i) (not(t7i)))) ;; Support.  Cancellation. 
(when (x3j) (and (x7i) (not(v7i)))) ;; Support.  Cancellation. 
(when (z3j) (and (z7i) (not(y7i)))) ;; Support.  Cancellation. 
(when (c4j) (and (c8i) (not(b8i)))) ;; Support.  Cancellation. 
(when (h4j) (and (h8i) (not(g8i)))) ;; Support.  Cancellation. 
(when (k4j) (and (k8i) (not(j8i)))) ;; Support.  Cancellation. 
(when (m4j) (and (m8i) (not(l8i)))) ;; Support.  Cancellation. 
(when (r4j) (and (r8i) (not(q8i)))) ;; Support.  Cancellation. 
(when (u5j) (and (u9i) (not(t9i)))) ;; Support.  Cancellation. 
(when (x5j) (and (x9i) (not(v9i)))) ;; Support.  Cancellation. 
(when (z5j) (and (z9i) (not(y9i)))) ;; Support.  Cancellation. 
(when (c6j) (and (c0i) (not(b0i)))) ;; Support.  Cancellation. 
(when (h6j) (and (h0i) (not(g0i)))) ;; Support.  Cancellation. 
(when (k6j) (and (k0i) (not(j0i)))) ;; Support.  Cancellation. 
(when (m6j) (and (m0i) (not(l0i)))) ;; Support.  Cancellation. 
(when (r6j) (and (r0i) (not(q0i)))) ;; Support.  Cancellation. 
(when (u7j) (and (uaj) (not(taj)))) ;; Support.  Cancellation. 
(when (x7j) (and (xaj) (not(vaj)))) ;; Support.  Cancellation. 
(when (z7j) (and (zaj) (not(yaj)))) ;; Support.  Cancellation. 
(when (c8j) (and (cbj) (not(bbj)))) ;; Support.  Cancellation. 
(when (h8j) (and (hbj) (not(gbj)))) ;; Support.  Cancellation. 
(when (k8j) (and (kbj) (not(jbj)))) ;; Support.  Cancellation. 
(when (m8j) (and (mbj) (not(lbj)))) ;; Support.  Cancellation. 
(when (r8j) (and (rbj) (not(qbj)))) ;; Support.  Cancellation. 
(when (u8j) (and (ubj) (not(tbj)))) ;; Support.  Cancellation. 
(when (x8j) (and (xbj) (not(vbj)))) ;; Support.  Cancellation. 
(when (z8j) (and (zbj) (not(ybj)))) ;; Support.  Cancellation. 
(when (c9j) (and (ccj) (not(bcj)))) ;; Support.  Cancellation. 
(when (h9j) (and (hcj) (not(gcj)))) ;; Support.  Cancellation. 
(when (k9j) (and (kcj) (not(jcj)))) ;; Support.  Cancellation. 
(when (m9j) (and (mcj) (not(lcj)))) ;; Support.  Cancellation. 
(when (r9j) (and (rcj) (not(qcj)))) ;; Support.  Cancellation. 
(when (uak) (and (uej) (not(tej)))) ;; Support.  Cancellation. 
(when (xak) (and (xej) (not(vej)))) ;; Support.  Cancellation. 
(when (hbk) (and (hfj) (not(gfj)))) ;; Support.  Cancellation. 
(when (kbk) (and (kfj) (not(jfj)))) ;; Support.  Cancellation. 
(when (tbk) (and (tfj) (not(rfj)))) ;; Support.  Cancellation. 
(when (vbk) (and (vfj) (not(ufj)))) ;; Support.  Cancellation. 
(when (ybk) (and (yfj) (not(xfj)))) ;; Support.  Cancellation. 
(when (bck) (and (bgj) (not(zfj)))) ;; Support.  Cancellation. 
(when (tck) (and (tgj) (not(rgj)))) ;; Support.  Cancellation. 
(when (vck) (and (vgj) (not(ugj)))) ;; Support.  Cancellation. 
(when (ldk) (and (lhj) (not(khj)))) ;; Support.  Cancellation. 
(when (qdk) (and (qhj) (not(mhj)))) ;; Support.  Cancellation. 
(when (gek) (and (gij) (not(cij)))) ;; Support.  Cancellation. 
(when (jek) (and (jij) (not(hij)))) ;; Support.  Cancellation. 
(when (lek) (and (lij) (not(kij)))) ;; Support.  Cancellation. 
(when (qek) (and (qij) (not(mij)))) ;; Support.  Cancellation. 
(when (tgk) (and (tkj) (not(rkj)))) ;; Support.  Cancellation. 
(when (vgk) (and (vkj) (not(ukj)))) ;; Support.  Cancellation. 
(when (ygk) (and (ykj) (not(xkj)))) ;; Support.  Cancellation. 
(when (bhk) (and (blj) (not(zkj)))) ;; Support.  Cancellation. 
(when (ghk) (and (glj) (not(clj)))) ;; Support.  Cancellation. 
(when (jhk) (and (jlj) (not(hlj)))) ;; Support.  Cancellation. 
(when (lhk) (and (llj) (not(klj)))) ;; Support.  Cancellation. 
(when (qhk) (and (qlj) (not(mlj)))) ;; Support.  Cancellation. 
(when (thk) (and (tlj) (not(rlj)))) ;; Support.  Cancellation. 
(when (vhk) (and (vlj) (not(ulj)))) ;; Support.  Cancellation. 
(when (yhk) (and (ylj) (not(xlj)))) ;; Support.  Cancellation. 
(when (bik) (and (bmj) (not(zlj)))) ;; Support.  Cancellation. 
(when (gik) (and (gmj) (not(cmj)))) ;; Support.  Cancellation. 
(when (jik) (and (jmj) (not(hmj)))) ;; Support.  Cancellation. 
(when (lik) (and (lmj) (not(kmj)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L6_L8
:parameters ()
:precondition (and (q7e))

:effect (and  (not(ruh)) (b7j) (r7h)
(when (qik) (and (qqi) (not(mqi)))) ;; Support.  Cancellation. 
(when (ruh) (and (rmj) (not(ryj)))) ;; Support.  Cancellation. 
(when (not(tuh))  (not(tmj))) ;; Cancellation. 
(when (uuh)  (umj)) ;; Support. 
(when (xuh) (and (xmj) (not(ymj)))) ;; Support.  Cancellation. 
(when (zuh) (and (zmj) (not(bnj)))) ;; Support.  Cancellation. 
(when (cvh)  (cnj)) ;; Support. 
(when (hvh) (and (hnj) (not(jnj)))) ;; Support.  Cancellation. 
(when (kvh) (and (knj) (not(lnj)))) ;; Support.  Cancellation. 
(when (mvh)  (mnj)) ;; Support. 
(when (rvh)  (rnj)) ;; Support. 
(when (uvh) (and (unj) (not(vnj)))) ;; Support.  Cancellation. 
(when (xvh) (and (xnj) (not(ynj)))) ;; Support.  Cancellation. 
(when (zvh) (and (znj) (not(boj)))) ;; Support.  Cancellation. 
(when (cwh) (and (coj) (not(goj)))) ;; Support.  Cancellation. 
(when (hwh)  (hoj)) ;; Support. 
(when (kwh)  (koj)) ;; Support. 
(when (mwh)  (moj)) ;; Support. 
(when (rwh)  (roj)) ;; Support. 
(when (uwh)  (uoj)) ;; Support. 
(when (xwh)  (xoj)) ;; Support. 
(when (zwh)  (zoj)) ;; Support. 
(when (cxh)  (cpj)) ;; Support. 
(when (hxh)  (hpj)) ;; Support. 
(when (kxh)  (kpj)) ;; Support. 
(when (mxh)  (mpj)) ;; Support. 
(when (rxh)  (rpj)) ;; Support. 
(when (uxh) (and (upj) (not(vpj)))) ;; Support.  Cancellation. 
(when (xxh) (and (xpj) (not(ypj)))) ;; Support.  Cancellation. 
(when (zxh) (and (zpj) (not(bqj)))) ;; Support.  Cancellation. 
(when (cyh) (and (cqj) (not(gqj)))) ;; Support.  Cancellation. 
(when (hyh) (and (hqj) (not(jqj)))) ;; Support.  Cancellation. 
(when (kyh) (and (kqj) (not(lqj)))) ;; Support.  Cancellation. 
(when (myh) (and (mqj) (not(qqj)))) ;; Support.  Cancellation. 
(when (ryh) (and (rqj) (not(tqj)))) ;; Support.  Cancellation. 
(when (uyh)  (uqj)) ;; Support. 
(when (xyh)  (xqj)) ;; Support. 
(when (zyh)  (zqj)) ;; Support. 
(when (czh)  (csj)) ;; Support. 
(when (hzh)  (hsj)) ;; Support. 
(when (kzh)  (ksj)) ;; Support. 
(when (mzh)  (msj)) ;; Support. 
(when (rzh)  (rsj)) ;; Support. 
(when (uzh)  (usj)) ;; Support. 
(when (xzh)  (xsj)) ;; Support. 
(when (zzh)  (zsj)) ;; Support. 
(when (c1h)  (crj)) ;; Support. 
(when (h1h)  (hrj)) ;; Support. 
(when (k1h)  (krj)) ;; Support. 
(when (m1h)  (mrj)) ;; Support. 
(when (r1h)  (rrj)) ;; Support. 
(when (u1h) (and (urj) (not(vrj)))) ;; Support.  Cancellation. 
(when (x1h) (and (xrj) (not(yrj)))) ;; Support.  Cancellation. 
(when (z1h) (and (zrj) (not(btj)))) ;; Support.  Cancellation. 
(when (c2h) (and (ctj) (not(gtj)))) ;; Support.  Cancellation. 
(when (h2h) (and (htj) (not(jtj)))) ;; Support.  Cancellation. 
(when (k2h) (and (ktj) (not(ltj)))) ;; Support.  Cancellation. 
(when (m2h) (and (mtj) (not(qtj)))) ;; Support.  Cancellation. 
(when (r2h) (and (rtj) (not(ttj)))) ;; Support.  Cancellation. 
(when (u2h) (and (utj) (not(vtj)))) ;; Support.  Cancellation. 
(when (x2h) (and (xtj) (not(ytj)))) ;; Support.  Cancellation. 
(when (z2h) (and (ztj) (not(buj)))) ;; Support.  Cancellation. 
(when (c3h) (and (cuj) (not(guj)))) ;; Support.  Cancellation. 
(when (h3h) (and (huj) (not(juj)))) ;; Support.  Cancellation. 
(when (k3h) (and (kuj) (not(luj)))) ;; Support.  Cancellation. 
(when (m3h) (and (muj) (not(quj)))) ;; Support.  Cancellation. 
(when (r3h) (and (ruj) (not(tuj)))) ;; Support.  Cancellation. 
(when (u3h) (and (uuj) (not(vuj)))) ;; Support.  Cancellation. 
(when (x3h) (and (xuj) (not(yuj)))) ;; Support.  Cancellation. 
(when (z3h) (and (zuj) (not(bvj)))) ;; Support.  Cancellation. 
(when (c4h) (and (cvj) (not(gvj)))) ;; Support.  Cancellation. 
(when (h4h) (and (hvj) (not(jvj)))) ;; Support.  Cancellation. 
(when (k4h) (and (kvj) (not(lvj)))) ;; Support.  Cancellation. 
(when (m4h) (and (mvj) (not(qvj)))) ;; Support.  Cancellation. 
(when (r4h) (and (rvj) (not(tvj)))) ;; Support.  Cancellation. 
(when (u4h) (and (uvj) (not(vvj)))) ;; Support.  Cancellation. 
(when (x4h) (and (xvj) (not(yvj)))) ;; Support.  Cancellation. 
(when (z4h) (and (zvj) (not(bwj)))) ;; Support.  Cancellation. 
(when (c5h) (and (cwj) (not(gwj)))) ;; Support.  Cancellation. 
(when (h5h) (and (hwj) (not(jwj)))) ;; Support.  Cancellation. 
(when (k5h) (and (kwj) (not(lwj)))) ;; Support.  Cancellation. 
(when (m5h) (and (mwj) (not(qwj)))) ;; Support.  Cancellation. 
(when (r5h) (and (rwj) (not(twj)))) ;; Support.  Cancellation. 
(when (u5h) (and (uwj) (not(vwj)))) ;; Support.  Cancellation. 
(when (x5h) (and (xwj) (not(ywj)))) ;; Support.  Cancellation. 
(when (z5h) (and (zwj) (not(bxj)))) ;; Support.  Cancellation. 
(when (c6h) (and (cxj) (not(gxj)))) ;; Support.  Cancellation. 
(when (h6h) (and (hxj) (not(jxj)))) ;; Support.  Cancellation. 
(when (k6h) (and (kxj) (not(lxj)))) ;; Support.  Cancellation. 
(when (m6h) (and (mxj) (not(qxj)))) ;; Support.  Cancellation. 
(when (r6h) (and (rxj) (not(txj)))) ;; Support.  Cancellation. 
(when (u6h) (and (uxj) (not(vxj)))) ;; Support.  Cancellation. 
(when (x6h) (and (xxj) (not(yxj)))) ;; Support.  Cancellation. 
(when (z6h) (and (zxj) (not(byj)))) ;; Support.  Cancellation. 
(when (c7h) (and (cyj) (not(gyj)))) ;; Support.  Cancellation. 
(when (h7h) (and (hyj) (not(jyj)))) ;; Support.  Cancellation. 
(when (k7h) (and (kyj) (not(lyj)))) ;; Support.  Cancellation. 
(when (m7h) (and (myj) (not(qyj)))) ;; Support.  Cancellation. 
(when (t7h)  (tyj)) ;; Support. 
(when (v7h)  (vyj)) ;; Support. 
(when (y7h)  (yyj)) ;; Support. 
(when (b8h)  (bzj)) ;; Support. 
(when (g8h)  (gzj)) ;; Support. 
(when (l8h)  (lzj)) ;; Support. 
(when (q8h)  (qzj)) ;; Support. 
(when (t8h)  (tzj)) ;; Support. 
(when (v8h)  (vzj)) ;; Support. 
(when (y8h)  (yzj)) ;; Support. 
(when (b9h)  (b1j)) ;; Support. 
(when (g9h)  (g1j)) ;; Support. 
(when (j9h)  (j1j)) ;; Support. 
(when (l9h)  (l1j)) ;; Support. 
(when (q9h)  (q1j)) ;; Support. 
(when (t9h)  (t1j)) ;; Support. 
(when (v9h)  (v1j)) ;; Support. 
(when (y9h)  (y1j)) ;; Support. 
(when (b0h)  (b2j)) ;; Support. 
(when (g0h)  (g2j)) ;; Support. 
(when (j0h)  (j2j)) ;; Support. 
(when (l0h)  (l2j)) ;; Support. 
(when (q0h)  (q2j)) ;; Support. 
(when (t0h)  (t2j)) ;; Support. 
(when (v0h)  (v2j)) ;; Support. 
(when (y0h)  (y2j)) ;; Support. 
(when (bai)  (b3j)) ;; Support. 
(when (gai)  (g3j)) ;; Support. 
(when (jai)  (j3j)) ;; Support. 
(when (lai)  (l3j)) ;; Support. 
(when (qai)  (q3j)) ;; Support. 
(when (tai) (and (t3j) (not(u3j)))) ;; Support.  Cancellation. 
(when (vai) (and (v3j) (not(x3j)))) ;; Support.  Cancellation. 
(when (yai) (and (y3j) (not(z3j)))) ;; Support.  Cancellation. 
(when (bbi) (and (b4j) (not(c4j)))) ;; Support.  Cancellation. 
(when (gbi) (and (g4j) (not(h4j)))) ;; Support.  Cancellation. 
(when (jbi) (and (j4j) (not(k4j)))) ;; Support.  Cancellation. 
(when (lbi) (and (l4j) (not(m4j)))) ;; Support.  Cancellation. 
(when (qbi) (and (q4j) (not(r4j)))) ;; Support.  Cancellation. 
(when (tbi)  (t4j)) ;; Support. 
(when (vbi)  (v4j)) ;; Support. 
(when (ybi)  (y4j)) ;; Support. 
(when (bci)  (b5j)) ;; Support. 
(when (gci)  (g5j)) ;; Support. 
(when (jci)  (j5j)) ;; Support. 
(when (lci)  (l5j)) ;; Support. 
(when (qci)  (q5j)) ;; Support. 
(when (tci) (and (t5j) (not(u5j)))) ;; Support.  Cancellation. 
(when (vci) (and (v5j) (not(x5j)))) ;; Support.  Cancellation. 
(when (yci) (and (y5j) (not(z5j)))) ;; Support.  Cancellation. 
(when (bdi) (and (b6j) (not(c6j)))) ;; Support.  Cancellation. 
(when (gdi) (and (g6j) (not(h6j)))) ;; Support.  Cancellation. 
(when (ldi) (and (l6j) (not(m6j)))) ;; Support.  Cancellation. 
(when (qdi) (and (q6j) (not(r6j)))) ;; Support.  Cancellation. 
(when (tdi)  (t6j)) ;; Support. 
(when (vdi)  (v6j)) ;; Support. 
(when (gei)  (g7j)) ;; Support. 
(when (jei)  (j7j)) ;; Support. 
(when (lei)  (l7j)) ;; Support. 
(when (qei)  (q7j)) ;; Support. 
(when (tei) (and (t7j) (not(u7j)))) ;; Support.  Cancellation. 
(when (vei) (and (v7j) (not(x7j)))) ;; Support.  Cancellation. 
(when (yei) (and (y7j) (not(z7j)))) ;; Support.  Cancellation. 
(when (bfi) (and (b8j) (not(c8j)))) ;; Support.  Cancellation. 
(when (gfi) (and (g8j) (not(h8j)))) ;; Support.  Cancellation. 
(when (jfi) (and (j8j) (not(k8j)))) ;; Support.  Cancellation. 
(when (lfi) (and (l8j) (not(m8j)))) ;; Support.  Cancellation. 
(when (qfi) (and (q8j) (not(r8j)))) ;; Support.  Cancellation. 
(when (tfi) (and (t8j) (not(u8j)))) ;; Support.  Cancellation. 
(when (vfi) (and (v8j) (not(x8j)))) ;; Support.  Cancellation. 
(when (yfi) (and (y8j) (not(z8j)))) ;; Support.  Cancellation. 
(when (bgi) (and (b9j) (not(c9j)))) ;; Support.  Cancellation. 
(when (ggi) (and (g9j) (not(h9j)))) ;; Support.  Cancellation. 
(when (jgi) (and (j9j) (not(k9j)))) ;; Support.  Cancellation. 
(when (lgi) (and (l9j) (not(m9j)))) ;; Support.  Cancellation. 
(when (qgi) (and (q9j) (not(r9j)))) ;; Support.  Cancellation. 
(when (tgi)  (t9j)) ;; Support. 
(when (vgi)  (v9j)) ;; Support. 
(when (ygi)  (y9j)) ;; Support. 
(when (bhi)  (b0j)) ;; Support. 
(when (ghi)  (g0j)) ;; Support. 
(when (jhi)  (j0j)) ;; Support. 
(when (lhi)  (l0j)) ;; Support. 
(when (qhi)  (q0j)) ;; Support. 
(when (thi)  (t0j)) ;; Support. 
(when (vhi)  (v0j)) ;; Support. 
(when (yhi)  (y0j)) ;; Support. 
(when (bii)  (bak)) ;; Support. 
(when (gii)  (gak)) ;; Support. 
(when (jii)  (jak)) ;; Support. 
(when (lii)  (lak)) ;; Support. 
(when (qii)  (qak)) ;; Support. 
(when (tii) (and (tak) (not(uak)))) ;; Support.  Cancellation. 
(when (vii) (and (vak) (not(xak)))) ;; Support.  Cancellation. 
(when (yii)  (yak)) ;; Support. 
(when (bji)  (bbk)) ;; Support. 
(when (gji) (and (gbk) (not(hbk)))) ;; Support.  Cancellation. 
(when (jji) (and (jbk) (not(kbk)))) ;; Support.  Cancellation. 
(when (lji)  (lbk)) ;; Support. 
(when (qji)  (qbk)) ;; Support. 
(when (rji) (and (rbk) (not(tbk)))) ;; Support.  Cancellation. 
(when (uji) (and (ubk) (not(vbk)))) ;; Support.  Cancellation. 
(when (xji) (and (xbk) (not(ybk)))) ;; Support.  Cancellation. 
(when (zji) (and (zbk) (not(bck)))) ;; Support.  Cancellation. 
(when (cki)  (cck)) ;; Support. 
(when (hki)  (hck)) ;; Support. 
(when (kki)  (kck)) ;; Support. 
(when (mki)  (mck)) ;; Support. 
(when (rki) (and (rck) (not(tck)))) ;; Support.  Cancellation. 
(when (uki) (and (uck) (not(vck)))) ;; Support.  Cancellation. 
(when (xki)  (xck)) ;; Support. 
(when (zki)  (zck)) ;; Support. 
(when (cli)  (cdk)) ;; Support. 
(when (hli)  (hdk)) ;; Support. 
(when (kli) (and (kdk) (not(ldk)))) ;; Support.  Cancellation. 
(when (mli) (and (mdk) (not(qdk)))) ;; Support.  Cancellation. 
(when (rli)  (rdk)) ;; Support. 
(when (uli)  (udk)) ;; Support. 
(when (xli)  (xdk)) ;; Support. 
(when (zli)  (zdk)) ;; Support. 
(when (cmi) (and (cek) (not(gek)))) ;; Support.  Cancellation. 
(when (hmi) (and (hek) (not(jek)))) ;; Support.  Cancellation. 
(when (kmi) (and (kek) (not(lek)))) ;; Support.  Cancellation. 
(when (mmi) (and (mek) (not(qek)))) ;; Support.  Cancellation. 
(when (rmi)  (rek)) ;; Support. 
(when (umi)  (uek)) ;; Support. 
(when (xmi)  (xek)) ;; Support. 
(when (zmi)  (zek)) ;; Support. 
(when (cni)  (cfk)) ;; Support. 
(when (hni)  (hfk)) ;; Support. 
(when (kni)  (kfk)) ;; Support. 
(when (mni)  (mfk)) ;; Support. 
(when (rni)  (rfk)) ;; Support. 
(when (uni)  (ufk)) ;; Support. 
(when (xni)  (xfk)) ;; Support. 
(when (zni)  (zfk)) ;; Support. 
(when (coi)  (cgk)) ;; Support. 
(when (hoi)  (hgk)) ;; Support. 
(when (koi)  (kgk)) ;; Support. 
(when (moi)  (mgk)) ;; Support. 
(when (roi) (and (rgk) (not(tgk)))) ;; Support.  Cancellation. 
(when (uoi) (and (ugk) (not(vgk)))) ;; Support.  Cancellation. 
(when (xoi) (and (xgk) (not(ygk)))) ;; Support.  Cancellation. 
(when (zoi) (and (zgk) (not(bhk)))) ;; Support.  Cancellation. 
(when (cpi) (and (chk) (not(ghk)))) ;; Support.  Cancellation. 
(when (hpi) (and (hhk) (not(jhk)))) ;; Support.  Cancellation. 
(when (kpi) (and (khk) (not(lhk)))) ;; Support.  Cancellation. 
(when (mpi) (and (mhk) (not(qhk)))) ;; Support.  Cancellation. 
(when (rpi) (and (rhk) (not(thk)))) ;; Support.  Cancellation. 
(when (upi) (and (uhk) (not(vhk)))) ;; Support.  Cancellation. 
(when (xpi) (and (xhk) (not(yhk)))) ;; Support.  Cancellation. 
(when (zpi) (and (zhk) (not(bik)))) ;; Support.  Cancellation. 
(when (cqi) (and (cik) (not(gik)))) ;; Support.  Cancellation. 
(when (hqi) (and (hik) (not(jik)))) ;; Support.  Cancellation. 
(when (kqi) (and (kik) (not(lik)))) ;; Support.  Cancellation. 
(when (mqi) (and (mik) (not(qik)))) ;; Support.  Cancellation. 
(when (tmj) (and (tuh) (not(qji)))) ;; Support.  Cancellation. 
(when (ymj) (and (yuh) (not(xuh)))) ;; Support.  Cancellation. 
(when (bnj) (and (bvh) (not(zuh)))) ;; Support.  Cancellation. 
(when (jnj) (and (jvh) (not(hvh)))) ;; Support.  Cancellation. 
(when (lnj) (and (lvh) (not(kvh)))) ;; Support.  Cancellation. 
(when (vnj) (and (vvh) (not(uvh)))) ;; Support.  Cancellation. 
(when (ynj) (and (yvh) (not(xvh)))) ;; Support.  Cancellation. 
(when (boj) (and (bwh) (not(zvh)))) ;; Support.  Cancellation. 
(when (goj) (and (gwh) (not(cwh)))) ;; Support.  Cancellation. 
(when (vpj) (and (vxh) (not(uxh)))) ;; Support.  Cancellation. 
(when (ypj) (and (yxh) (not(xxh)))) ;; Support.  Cancellation. 
(when (bqj) (and (byh) (not(zxh)))) ;; Support.  Cancellation. 
(when (gqj) (and (gyh) (not(cyh)))) ;; Support.  Cancellation. 
(when (jqj) (and (jyh) (not(hyh)))) ;; Support.  Cancellation. 
(when (lqj) (and (lyh) (not(kyh)))) ;; Support.  Cancellation. 
(when (qqj) (and (qyh) (not(myh)))) ;; Support.  Cancellation. 
(when (tqj) (and (tyh) (not(ryh)))) ;; Support.  Cancellation. 
(when (vrj) (and (v1h) (not(u1h)))) ;; Support.  Cancellation. 
(when (yrj) (and (y1h) (not(x1h)))) ;; Support.  Cancellation. 
(when (btj) (and (b2h) (not(z1h)))) ;; Support.  Cancellation. 
(when (gtj) (and (g2h) (not(c2h)))) ;; Support.  Cancellation. 
(when (jtj) (and (j2h) (not(h2h)))) ;; Support.  Cancellation. 
(when (ltj) (and (l2h) (not(k2h)))) ;; Support.  Cancellation. 
(when (qtj) (and (q2h) (not(m2h)))) ;; Support.  Cancellation. 
(when (ttj) (and (t2h) (not(r2h)))) ;; Support.  Cancellation. 
(when (vtj) (and (v2h) (not(u2h)))) ;; Support.  Cancellation. 
(when (ytj) (and (y2h) (not(x2h)))) ;; Support.  Cancellation. 
(when (buj) (and (b3h) (not(z2h)))) ;; Support.  Cancellation. 
(when (guj) (and (g3h) (not(c3h)))) ;; Support.  Cancellation. 
(when (juj) (and (j3h) (not(h3h)))) ;; Support.  Cancellation. 
(when (luj) (and (l3h) (not(k3h)))) ;; Support.  Cancellation. 
(when (quj) (and (q3h) (not(m3h)))) ;; Support.  Cancellation. 
(when (tuj) (and (t3h) (not(r3h)))) ;; Support.  Cancellation. 
(when (vuj) (and (v3h) (not(u3h)))) ;; Support.  Cancellation. 
(when (yuj) (and (y3h) (not(x3h)))) ;; Support.  Cancellation. 
(when (bvj) (and (b4h) (not(z3h)))) ;; Support.  Cancellation. 
(when (gvj) (and (g4h) (not(c4h)))) ;; Support.  Cancellation. 
(when (jvj) (and (j4h) (not(h4h)))) ;; Support.  Cancellation. 
(when (lvj) (and (l4h) (not(k4h)))) ;; Support.  Cancellation. 
(when (qvj) (and (q4h) (not(m4h)))) ;; Support.  Cancellation. 
(when (tvj) (and (t4h) (not(r4h)))) ;; Support.  Cancellation. 
(when (vvj) (and (v4h) (not(u4h)))) ;; Support.  Cancellation. 
(when (yvj) (and (y4h) (not(x4h)))) ;; Support.  Cancellation. 
(when (bwj) (and (b5h) (not(z4h)))) ;; Support.  Cancellation. 
(when (gwj) (and (g5h) (not(c5h)))) ;; Support.  Cancellation. 
(when (jwj) (and (j5h) (not(h5h)))) ;; Support.  Cancellation. 
(when (lwj) (and (l5h) (not(k5h)))) ;; Support.  Cancellation. 
(when (qwj) (and (q5h) (not(m5h)))) ;; Support.  Cancellation. 
(when (twj) (and (t5h) (not(r5h)))) ;; Support.  Cancellation. 
(when (vwj) (and (v5h) (not(u5h)))) ;; Support.  Cancellation. 
(when (ywj) (and (y5h) (not(x5h)))) ;; Support.  Cancellation. 
(when (bxj) (and (b6h) (not(z5h)))) ;; Support.  Cancellation. 
(when (gxj) (and (g6h) (not(c6h)))) ;; Support.  Cancellation. 
(when (jxj) (and (j6h) (not(h6h)))) ;; Support.  Cancellation. 
(when (lxj) (and (l6h) (not(k6h)))) ;; Support.  Cancellation. 
(when (qxj) (and (q6h) (not(m6h)))) ;; Support.  Cancellation. 
(when (txj) (and (t6h) (not(r6h)))) ;; Support.  Cancellation. 
(when (vxj) (and (v6h) (not(u6h)))) ;; Support.  Cancellation. 
(when (yxj) (and (y6h) (not(x6h)))) ;; Support.  Cancellation. 
(when (byj) (and (b7h) (not(z6h)))) ;; Support.  Cancellation. 
(when (gyj) (and (g7h) (not(c7h)))) ;; Support.  Cancellation. 
(when (jyj) (and (j7h) (not(h7h)))) ;; Support.  Cancellation. 
(when (lyj) (and (l7h) (not(k7h)))) ;; Support.  Cancellation. 
(when (qyj) (and (q7h) (not(m7h)))) ;; Support.  Cancellation. 
(when (u3j) (and (uai) (not(tai)))) ;; Support.  Cancellation. 
(when (x3j) (and (xai) (not(vai)))) ;; Support.  Cancellation. 
(when (z3j) (and (zai) (not(yai)))) ;; Support.  Cancellation. 
(when (c4j) (and (cbi) (not(bbi)))) ;; Support.  Cancellation. 
(when (h4j) (and (hbi) (not(gbi)))) ;; Support.  Cancellation. 
(when (k4j) (and (kbi) (not(jbi)))) ;; Support.  Cancellation. 
(when (m4j) (and (mbi) (not(lbi)))) ;; Support.  Cancellation. 
(when (r4j) (and (rbi) (not(qbi)))) ;; Support.  Cancellation. 
(when (u5j) (and (uci) (not(tci)))) ;; Support.  Cancellation. 
(when (x5j) (and (xci) (not(vci)))) ;; Support.  Cancellation. 
(when (z5j) (and (zci) (not(yci)))) ;; Support.  Cancellation. 
(when (c6j) (and (cdi) (not(bdi)))) ;; Support.  Cancellation. 
(when (h6j) (and (hdi) (not(gdi)))) ;; Support.  Cancellation. 
(when (k6j)  (kdi)) ;; Support. 
(when (m6j) (and (mdi) (not(ldi)))) ;; Support.  Cancellation. 
(when (r6j) (and (rdi) (not(qdi)))) ;; Support.  Cancellation. 
(when (u7j) (and (uei) (not(tei)))) ;; Support.  Cancellation. 
(when (x7j) (and (xei) (not(vei)))) ;; Support.  Cancellation. 
(when (z7j) (and (zei) (not(yei)))) ;; Support.  Cancellation. 
(when (c8j) (and (cfi) (not(bfi)))) ;; Support.  Cancellation. 
(when (h8j) (and (hfi) (not(gfi)))) ;; Support.  Cancellation. 
(when (k8j) (and (kfi) (not(jfi)))) ;; Support.  Cancellation. 
(when (m8j) (and (mfi) (not(lfi)))) ;; Support.  Cancellation. 
(when (r8j) (and (rfi) (not(qfi)))) ;; Support.  Cancellation. 
(when (u8j) (and (ufi) (not(tfi)))) ;; Support.  Cancellation. 
(when (x8j) (and (xfi) (not(vfi)))) ;; Support.  Cancellation. 
(when (z8j) (and (zfi) (not(yfi)))) ;; Support.  Cancellation. 
(when (c9j) (and (cgi) (not(bgi)))) ;; Support.  Cancellation. 
(when (h9j) (and (hgi) (not(ggi)))) ;; Support.  Cancellation. 
(when (k9j) (and (kgi) (not(jgi)))) ;; Support.  Cancellation. 
(when (m9j) (and (mgi) (not(lgi)))) ;; Support.  Cancellation. 
(when (r9j) (and (rgi) (not(qgi)))) ;; Support.  Cancellation. 
(when (uak) (and (uii) (not(tii)))) ;; Support.  Cancellation. 
(when (xak) (and (xii) (not(vii)))) ;; Support.  Cancellation. 
(when (hbk) (and (hji) (not(gji)))) ;; Support.  Cancellation. 
(when (kbk) (and (kji) (not(jji)))) ;; Support.  Cancellation. 
(when (tbk) (and (tji) (not(rji)))) ;; Support.  Cancellation. 
(when (vbk) (and (vji) (not(uji)))) ;; Support.  Cancellation. 
(when (ybk) (and (yji) (not(xji)))) ;; Support.  Cancellation. 
(when (bck) (and (bki) (not(zji)))) ;; Support.  Cancellation. 
(when (tck) (and (tki) (not(rki)))) ;; Support.  Cancellation. 
(when (vck) (and (vki) (not(uki)))) ;; Support.  Cancellation. 
(when (ldk) (and (lli) (not(kli)))) ;; Support.  Cancellation. 
(when (qdk) (and (qli) (not(mli)))) ;; Support.  Cancellation. 
(when (gek) (and (gmi) (not(cmi)))) ;; Support.  Cancellation. 
(when (jek) (and (jmi) (not(hmi)))) ;; Support.  Cancellation. 
(when (lek) (and (lmi) (not(kmi)))) ;; Support.  Cancellation. 
(when (qek) (and (qmi) (not(mmi)))) ;; Support.  Cancellation. 
(when (tgk) (and (toi) (not(roi)))) ;; Support.  Cancellation. 
(when (vgk) (and (voi) (not(uoi)))) ;; Support.  Cancellation. 
(when (ygk) (and (yoi) (not(xoi)))) ;; Support.  Cancellation. 
(when (bhk) (and (bpi) (not(zoi)))) ;; Support.  Cancellation. 
(when (ghk) (and (gpi) (not(cpi)))) ;; Support.  Cancellation. 
(when (jhk) (and (jpi) (not(hpi)))) ;; Support.  Cancellation. 
(when (lhk) (and (lpi) (not(kpi)))) ;; Support.  Cancellation. 
(when (qhk) (and (qpi) (not(mpi)))) ;; Support.  Cancellation. 
(when (thk) (and (tpi) (not(rpi)))) ;; Support.  Cancellation. 
(when (vhk) (and (vpi) (not(upi)))) ;; Support.  Cancellation. 
(when (yhk) (and (ypi) (not(xpi)))) ;; Support.  Cancellation. 
(when (bik) (and (bqi) (not(zpi)))) ;; Support.  Cancellation. 
(when (gik) (and (gqi) (not(cqi)))) ;; Support.  Cancellation. 
(when (jik) (and (jqi) (not(hqi)))) ;; Support.  Cancellation. 
(when (lik) (and (lqi) (not(kqi)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L6_L7
:parameters ()
:precondition (and (q7e))

:effect (and  (baj) (k8h)
(when (qmj) (and (qqi) (not(mqi)))) ;; Support.  Cancellation. 
(when (ruh) (and (rqi) (not(r3i)))) ;; Support.  Cancellation. 
(when (not(tuh))  (not(tqi))) ;; Cancellation. 
(when (uuh) (and (uqi) (not(vqi)))) ;; Support.  Cancellation. 
(when (xuh) (and (xqi) (not(yqi)))) ;; Support.  Cancellation. 
(when (zuh) (and (zqi) (not(bsi)))) ;; Support.  Cancellation. 
(when (cvh) (and (csi) (not(gsi)))) ;; Support.  Cancellation. 
(when (hvh) (and (hsi) (not(jsi)))) ;; Support.  Cancellation. 
(when (kvh) (and (ksi) (not(lsi)))) ;; Support.  Cancellation. 
(when (mvh) (and (msi) (not(qsi)))) ;; Support.  Cancellation. 
(when (rvh) (and (rsi) (not(tsi)))) ;; Support.  Cancellation. 
(when (uvh) (and (usi) (not(vsi)))) ;; Support.  Cancellation. 
(when (xvh) (and (xsi) (not(ysi)))) ;; Support.  Cancellation. 
(when (zvh) (and (zsi) (not(bri)))) ;; Support.  Cancellation. 
(when (cwh) (and (cri) (not(gri)))) ;; Support.  Cancellation. 
(when (hwh) (and (hri) (not(jri)))) ;; Support.  Cancellation. 
(when (kwh) (and (kri) (not(lri)))) ;; Support.  Cancellation. 
(when (mwh) (and (mri) (not(qri)))) ;; Support.  Cancellation. 
(when (rwh) (and (rri) (not(tri)))) ;; Support.  Cancellation. 
(when (uwh) (and (uri) (not(vri)))) ;; Support.  Cancellation. 
(when (xwh) (and (xri) (not(yri)))) ;; Support.  Cancellation. 
(when (zwh) (and (zri) (not(bti)))) ;; Support.  Cancellation. 
(when (cxh) (and (cti) (not(gti)))) ;; Support.  Cancellation. 
(when (hxh) (and (hti) (not(jti)))) ;; Support.  Cancellation. 
(when (kxh) (and (kti) (not(lti)))) ;; Support.  Cancellation. 
(when (mxh) (and (mti) (not(qti)))) ;; Support.  Cancellation. 
(when (rxh) (and (rti) (not(tti)))) ;; Support.  Cancellation. 
(when (uxh) (and (uti) (not(vti)))) ;; Support.  Cancellation. 
(when (xxh) (and (xti) (not(yti)))) ;; Support.  Cancellation. 
(when (zxh) (and (zti) (not(bui)))) ;; Support.  Cancellation. 
(when (cyh) (and (cui) (not(gui)))) ;; Support.  Cancellation. 
(when (hyh) (and (hui) (not(jui)))) ;; Support.  Cancellation. 
(when (kyh) (and (kui) (not(lui)))) ;; Support.  Cancellation. 
(when (myh) (and (mui) (not(qui)))) ;; Support.  Cancellation. 
(when (ryh) (and (rui) (not(tui)))) ;; Support.  Cancellation. 
(when (uyh) (and (uui) (not(vui)))) ;; Support.  Cancellation. 
(when (xyh) (and (xui) (not(yui)))) ;; Support.  Cancellation. 
(when (zyh) (and (zui) (not(bvi)))) ;; Support.  Cancellation. 
(when (czh) (and (cvi) (not(gvi)))) ;; Support.  Cancellation. 
(when (hzh) (and (hvi) (not(jvi)))) ;; Support.  Cancellation. 
(when (kzh) (and (kvi) (not(lvi)))) ;; Support.  Cancellation. 
(when (mzh) (and (mvi) (not(qvi)))) ;; Support.  Cancellation. 
(when (rzh) (and (rvi) (not(tvi)))) ;; Support.  Cancellation. 
(when (uzh) (and (uvi) (not(vvi)))) ;; Support.  Cancellation. 
(when (xzh) (and (xvi) (not(yvi)))) ;; Support.  Cancellation. 
(when (zzh) (and (zvi) (not(bwi)))) ;; Support.  Cancellation. 
(when (c1h) (and (cwi) (not(gwi)))) ;; Support.  Cancellation. 
(when (h1h) (and (hwi) (not(jwi)))) ;; Support.  Cancellation. 
(when (k1h) (and (kwi) (not(lwi)))) ;; Support.  Cancellation. 
(when (m1h) (and (mwi) (not(qwi)))) ;; Support.  Cancellation. 
(when (r1h) (and (rwi) (not(twi)))) ;; Support.  Cancellation. 
(when (u1h) (and (uwi) (not(vwi)))) ;; Support.  Cancellation. 
(when (x1h) (and (xwi) (not(ywi)))) ;; Support.  Cancellation. 
(when (z1h) (and (zwi) (not(bxi)))) ;; Support.  Cancellation. 
(when (c2h) (and (cxi) (not(gxi)))) ;; Support.  Cancellation. 
(when (h2h) (and (hxi) (not(jxi)))) ;; Support.  Cancellation. 
(when (k2h) (and (kxi) (not(lxi)))) ;; Support.  Cancellation. 
(when (m2h) (and (mxi) (not(qxi)))) ;; Support.  Cancellation. 
(when (r2h) (and (rxi) (not(txi)))) ;; Support.  Cancellation. 
(when (u2h) (and (uxi) (not(vxi)))) ;; Support.  Cancellation. 
(when (x2h) (and (xxi) (not(yxi)))) ;; Support.  Cancellation. 
(when (z2h) (and (zxi) (not(byi)))) ;; Support.  Cancellation. 
(when (c3h) (and (cyi) (not(gyi)))) ;; Support.  Cancellation. 
(when (h3h) (and (hyi) (not(jyi)))) ;; Support.  Cancellation. 
(when (k3h) (and (kyi) (not(lyi)))) ;; Support.  Cancellation. 
(when (m3h) (and (myi) (not(qyi)))) ;; Support.  Cancellation. 
(when (r3h) (and (ryi) (not(tyi)))) ;; Support.  Cancellation. 
(when (u3h) (and (uyi) (not(vyi)))) ;; Support.  Cancellation. 
(when (x3h) (and (xyi) (not(yyi)))) ;; Support.  Cancellation. 
(when (z3h) (and (zyi) (not(bzi)))) ;; Support.  Cancellation. 
(when (c4h) (and (czi) (not(gzi)))) ;; Support.  Cancellation. 
(when (h4h) (and (hzi) (not(jzi)))) ;; Support.  Cancellation. 
(when (k4h) (and (kzi) (not(lzi)))) ;; Support.  Cancellation. 
(when (m4h) (and (mzi) (not(qzi)))) ;; Support.  Cancellation. 
(when (r4h) (and (rzi) (not(tzi)))) ;; Support.  Cancellation. 
(when (u4h) (and (uzi) (not(vzi)))) ;; Support.  Cancellation. 
(when (x4h) (and (xzi) (not(yzi)))) ;; Support.  Cancellation. 
(when (z4h) (and (zzi) (not(b1i)))) ;; Support.  Cancellation. 
(when (c5h) (and (c1i) (not(g1i)))) ;; Support.  Cancellation. 
(when (h5h) (and (h1i) (not(j1i)))) ;; Support.  Cancellation. 
(when (k5h) (and (k1i) (not(l1i)))) ;; Support.  Cancellation. 
(when (m5h) (and (m1i) (not(q1i)))) ;; Support.  Cancellation. 
(when (r5h) (and (r1i) (not(t1i)))) ;; Support.  Cancellation. 
(when (u5h) (and (u1i) (not(v1i)))) ;; Support.  Cancellation. 
(when (x5h) (and (x1i) (not(y1i)))) ;; Support.  Cancellation. 
(when (z5h) (and (z1i) (not(b2i)))) ;; Support.  Cancellation. 
(when (c6h) (and (c2i) (not(g2i)))) ;; Support.  Cancellation. 
(when (h6h) (and (h2i) (not(j2i)))) ;; Support.  Cancellation. 
(when (k6h) (and (k2i) (not(l2i)))) ;; Support.  Cancellation. 
(when (m6h) (and (m2i) (not(q2i)))) ;; Support.  Cancellation. 
(when (r6h) (and (r2i) (not(t2i)))) ;; Support.  Cancellation. 
(when (u6h) (and (u2i) (not(v2i)))) ;; Support.  Cancellation. 
(when (x6h) (and (x2i) (not(y2i)))) ;; Support.  Cancellation. 
(when (z6h) (and (z2i) (not(b3i)))) ;; Support.  Cancellation. 
(when (c7h) (and (c3i) (not(g3i)))) ;; Support.  Cancellation. 
(when (h7h) (and (h3i) (not(j3i)))) ;; Support.  Cancellation. 
(when (k7h) (and (k3i) (not(l3i)))) ;; Support.  Cancellation. 
(when (m7h) (and (m3i) (not(q3i)))) ;; Support.  Cancellation. 
(when (t7h) (and (t3i) (not(u3i)))) ;; Support.  Cancellation. 
(when (v7h) (and (v3i) (not(x3i)))) ;; Support.  Cancellation. 
(when (y7h) (and (y3i) (not(z3i)))) ;; Support.  Cancellation. 
(when (b8h) (and (b4i) (not(c4i)))) ;; Support.  Cancellation. 
(when (g8h) (and (g4i) (not(h4i)))) ;; Support.  Cancellation. 
(when (l8h) (and (l4i) (not(m4i)))) ;; Support.  Cancellation. 
(when (q8h) (and (q4i) (not(r4i)))) ;; Support.  Cancellation. 
(when (t8h) (and (t4i) (not(u4i)))) ;; Support.  Cancellation. 
(when (v8h) (and (v4i) (not(x4i)))) ;; Support.  Cancellation. 
(when (y8h) (and (y4i) (not(z4i)))) ;; Support.  Cancellation. 
(when (b9h) (and (b5i) (not(c5i)))) ;; Support.  Cancellation. 
(when (g9h) (and (g5i) (not(h5i)))) ;; Support.  Cancellation. 
(when (j9h) (and (j5i) (not(k5i)))) ;; Support.  Cancellation. 
(when (l9h) (and (l5i) (not(m5i)))) ;; Support.  Cancellation. 
(when (q9h) (and (q5i) (not(r5i)))) ;; Support.  Cancellation. 
(when (t9h) (and (t5i) (not(u5i)))) ;; Support.  Cancellation. 
(when (v9h) (and (v5i) (not(x5i)))) ;; Support.  Cancellation. 
(when (y9h) (and (y5i) (not(z5i)))) ;; Support.  Cancellation. 
(when (b0h) (and (b6i) (not(c6i)))) ;; Support.  Cancellation. 
(when (g0h) (and (g6i) (not(h6i)))) ;; Support.  Cancellation. 
(when (j0h) (and (j6i) (not(k6i)))) ;; Support.  Cancellation. 
(when (l0h) (and (l6i) (not(m6i)))) ;; Support.  Cancellation. 
(when (q0h) (and (q6i) (not(r6i)))) ;; Support.  Cancellation. 
(when (t0h) (and (t6i) (not(u6i)))) ;; Support.  Cancellation. 
(when (v0h) (and (v6i) (not(x6i)))) ;; Support.  Cancellation. 
(when (y0h) (and (y6i) (not(z6i)))) ;; Support.  Cancellation. 
(when (bai) (and (b7i) (not(c7i)))) ;; Support.  Cancellation. 
(when (gai) (and (g7i) (not(h7i)))) ;; Support.  Cancellation. 
(when (jai) (and (j7i) (not(k7i)))) ;; Support.  Cancellation. 
(when (lai) (and (l7i) (not(m7i)))) ;; Support.  Cancellation. 
(when (qai) (and (q7i) (not(r7i)))) ;; Support.  Cancellation. 
(when (tai) (and (t7i) (not(u7i)))) ;; Support.  Cancellation. 
(when (vai) (and (v7i) (not(x7i)))) ;; Support.  Cancellation. 
(when (yai) (and (y7i) (not(z7i)))) ;; Support.  Cancellation. 
(when (bbi) (and (b8i) (not(c8i)))) ;; Support.  Cancellation. 
(when (gbi) (and (g8i) (not(h8i)))) ;; Support.  Cancellation. 
(when (jbi) (and (j8i) (not(k8i)))) ;; Support.  Cancellation. 
(when (lbi) (and (l8i) (not(m8i)))) ;; Support.  Cancellation. 
(when (qbi) (and (q8i) (not(r8i)))) ;; Support.  Cancellation. 
(when (tbi)  (t8i)) ;; Support. 
(when (vbi)  (v8i)) ;; Support. 
(when (ybi)  (y8i)) ;; Support. 
(when (bci)  (b9i)) ;; Support. 
(when (gci)  (g9i)) ;; Support. 
(when (jci)  (j9i)) ;; Support. 
(when (lci)  (l9i)) ;; Support. 
(when (qci)  (q9i)) ;; Support. 
(when (tci) (and (t9i) (not(u9i)))) ;; Support.  Cancellation. 
(when (vci) (and (v9i) (not(x9i)))) ;; Support.  Cancellation. 
(when (yci) (and (y9i) (not(z9i)))) ;; Support.  Cancellation. 
(when (bdi) (and (b0i) (not(c0i)))) ;; Support.  Cancellation. 
(when (gdi) (and (g0i) (not(h0i)))) ;; Support.  Cancellation. 
(when (ldi) (and (l0i) (not(m0i)))) ;; Support.  Cancellation. 
(when (qdi) (and (q0i) (not(r0i)))) ;; Support.  Cancellation. 
(when (tdi)  (t0i)) ;; Support. 
(when (vdi)  (v0i)) ;; Support. 
(when (gei)  (gaj)) ;; Support. 
(when (jei)  (jaj)) ;; Support. 
(when (lei)  (laj)) ;; Support. 
(when (qei)  (qaj)) ;; Support. 
(when (tei) (and (taj) (not(uaj)))) ;; Support.  Cancellation. 
(when (vei) (and (vaj) (not(xaj)))) ;; Support.  Cancellation. 
(when (yei) (and (yaj) (not(zaj)))) ;; Support.  Cancellation. 
(when (bfi) (and (bbj) (not(cbj)))) ;; Support.  Cancellation. 
(when (gfi) (and (gbj) (not(hbj)))) ;; Support.  Cancellation. 
(when (jfi) (and (jbj) (not(kbj)))) ;; Support.  Cancellation. 
(when (lfi) (and (lbj) (not(mbj)))) ;; Support.  Cancellation. 
(when (qfi) (and (qbj) (not(rbj)))) ;; Support.  Cancellation. 
(when (tfi) (and (tbj) (not(ubj)))) ;; Support.  Cancellation. 
(when (vfi) (and (vbj) (not(xbj)))) ;; Support.  Cancellation. 
(when (yfi) (and (ybj) (not(zbj)))) ;; Support.  Cancellation. 
(when (bgi) (and (bcj) (not(ccj)))) ;; Support.  Cancellation. 
(when (ggi) (and (gcj) (not(hcj)))) ;; Support.  Cancellation. 
(when (jgi) (and (jcj) (not(kcj)))) ;; Support.  Cancellation. 
(when (lgi) (and (lcj) (not(mcj)))) ;; Support.  Cancellation. 
(when (qgi) (and (qcj) (not(rcj)))) ;; Support.  Cancellation. 
(when (tgi)  (tcj)) ;; Support. 
(when (vgi)  (vcj)) ;; Support. 
(when (ygi)  (ycj)) ;; Support. 
(when (bhi)  (bdj)) ;; Support. 
(when (ghi)  (gdj)) ;; Support. 
(when (jhi)  (jdj)) ;; Support. 
(when (lhi)  (ldj)) ;; Support. 
(when (qhi)  (qdj)) ;; Support. 
(when (thi)  (tdj)) ;; Support. 
(when (vhi)  (vdj)) ;; Support. 
(when (yhi)  (ydj)) ;; Support. 
(when (bii)  (bej)) ;; Support. 
(when (gii)  (gej)) ;; Support. 
(when (jii)  (jej)) ;; Support. 
(when (lii)  (lej)) ;; Support. 
(when (qii)  (qej)) ;; Support. 
(when (tii) (and (tej) (not(uej)))) ;; Support.  Cancellation. 
(when (vii) (and (vej) (not(xej)))) ;; Support.  Cancellation. 
(when (yii)  (yej)) ;; Support. 
(when (bji)  (bfj)) ;; Support. 
(when (gji) (and (gfj) (not(hfj)))) ;; Support.  Cancellation. 
(when (jji) (and (jfj) (not(kfj)))) ;; Support.  Cancellation. 
(when (lji)  (lfj)) ;; Support. 
(when (qji)  (qfj)) ;; Support. 
(when (rji) (and (rfj) (not(tfj)))) ;; Support.  Cancellation. 
(when (uji) (and (ufj) (not(vfj)))) ;; Support.  Cancellation. 
(when (xji) (and (xfj) (not(yfj)))) ;; Support.  Cancellation. 
(when (zji) (and (zfj) (not(bgj)))) ;; Support.  Cancellation. 
(when (cki)  (cgj)) ;; Support. 
(when (hki)  (hgj)) ;; Support. 
(when (kki)  (kgj)) ;; Support. 
(when (mki)  (mgj)) ;; Support. 
(when (rki) (and (rgj) (not(tgj)))) ;; Support.  Cancellation. 
(when (uki) (and (ugj) (not(vgj)))) ;; Support.  Cancellation. 
(when (xki)  (xgj)) ;; Support. 
(when (zki)  (zgj)) ;; Support. 
(when (cli)  (chj)) ;; Support. 
(when (hli)  (hhj)) ;; Support. 
(when (kli) (and (khj) (not(lhj)))) ;; Support.  Cancellation. 
(when (mli) (and (mhj) (not(qhj)))) ;; Support.  Cancellation. 
(when (rli)  (rhj)) ;; Support. 
(when (uli)  (uhj)) ;; Support. 
(when (xli)  (xhj)) ;; Support. 
(when (zli)  (zhj)) ;; Support. 
(when (cmi) (and (cij) (not(gij)))) ;; Support.  Cancellation. 
(when (hmi) (and (hij) (not(jij)))) ;; Support.  Cancellation. 
(when (kmi) (and (kij) (not(lij)))) ;; Support.  Cancellation. 
(when (mmi) (and (mij) (not(qij)))) ;; Support.  Cancellation. 
(when (rmi)  (rij)) ;; Support. 
(when (umi)  (uij)) ;; Support. 
(when (xmi)  (xij)) ;; Support. 
(when (zmi)  (zij)) ;; Support. 
(when (cni)  (cjj)) ;; Support. 
(when (hni)  (hjj)) ;; Support. 
(when (kni)  (kjj)) ;; Support. 
(when (mni)  (mjj)) ;; Support. 
(when (rni)  (rjj)) ;; Support. 
(when (uni)  (ujj)) ;; Support. 
(when (xni)  (xjj)) ;; Support. 
(when (zni)  (zjj)) ;; Support. 
(when (coi)  (ckj)) ;; Support. 
(when (hoi)  (hkj)) ;; Support. 
(when (koi)  (kkj)) ;; Support. 
(when (moi)  (mkj)) ;; Support. 
(when (roi) (and (rkj) (not(tkj)))) ;; Support.  Cancellation. 
(when (uoi) (and (ukj) (not(vkj)))) ;; Support.  Cancellation. 
(when (xoi) (and (xkj) (not(ykj)))) ;; Support.  Cancellation. 
(when (zoi) (and (zkj) (not(blj)))) ;; Support.  Cancellation. 
(when (cpi) (and (clj) (not(glj)))) ;; Support.  Cancellation. 
(when (hpi) (and (hlj) (not(jlj)))) ;; Support.  Cancellation. 
(when (kpi) (and (klj) (not(llj)))) ;; Support.  Cancellation. 
(when (mpi) (and (mlj) (not(qlj)))) ;; Support.  Cancellation. 
(when (rpi) (and (rlj) (not(tlj)))) ;; Support.  Cancellation. 
(when (upi) (and (ulj) (not(vlj)))) ;; Support.  Cancellation. 
(when (xpi) (and (xlj) (not(ylj)))) ;; Support.  Cancellation. 
(when (zpi) (and (zlj) (not(bmj)))) ;; Support.  Cancellation. 
(when (cqi) (and (cmj) (not(gmj)))) ;; Support.  Cancellation. 
(when (hqi) (and (hmj) (not(jmj)))) ;; Support.  Cancellation. 
(when (kqi) (and (kmj) (not(lmj)))) ;; Support.  Cancellation. 
(when (mqi) (and (mmj) (not(qmj)))) ;; Support.  Cancellation. 
(when (tqi) (and (tuh) (not(qji)))) ;; Support.  Cancellation. 
(when (not(rqi))  (not(ruh))) ;; Cancellation. 
(when (vqi) (and (vuh) (not(uuh)))) ;; Support.  Cancellation. 
(when (yqi) (and (yuh) (not(xuh)))) ;; Support.  Cancellation. 
(when (bsi) (and (bvh) (not(zuh)))) ;; Support.  Cancellation. 
(when (gsi) (and (gvh) (not(cvh)))) ;; Support.  Cancellation. 
(when (jsi) (and (jvh) (not(hvh)))) ;; Support.  Cancellation. 
(when (lsi) (and (lvh) (not(kvh)))) ;; Support.  Cancellation. 
(when (qsi) (and (qvh) (not(mvh)))) ;; Support.  Cancellation. 
(when (tsi) (and (tvh) (not(rvh)))) ;; Support.  Cancellation. 
(when (vsi) (and (vvh) (not(uvh)))) ;; Support.  Cancellation. 
(when (ysi) (and (yvh) (not(xvh)))) ;; Support.  Cancellation. 
(when (bri) (and (bwh) (not(zvh)))) ;; Support.  Cancellation. 
(when (gri) (and (gwh) (not(cwh)))) ;; Support.  Cancellation. 
(when (jri) (and (jwh) (not(hwh)))) ;; Support.  Cancellation. 
(when (lri) (and (lwh) (not(kwh)))) ;; Support.  Cancellation. 
(when (qri) (and (qwh) (not(mwh)))) ;; Support.  Cancellation. 
(when (tri) (and (twh) (not(rwh)))) ;; Support.  Cancellation. 
(when (vri) (and (vwh) (not(uwh)))) ;; Support.  Cancellation. 
(when (yri) (and (ywh) (not(xwh)))) ;; Support.  Cancellation. 
(when (bti) (and (bxh) (not(zwh)))) ;; Support.  Cancellation. 
(when (gti) (and (gxh) (not(cxh)))) ;; Support.  Cancellation. 
(when (jti) (and (jxh) (not(hxh)))) ;; Support.  Cancellation. 
(when (lti) (and (lxh) (not(kxh)))) ;; Support.  Cancellation. 
(when (qti) (and (qxh) (not(mxh)))) ;; Support.  Cancellation. 
(when (tti) (and (txh) (not(rxh)))) ;; Support.  Cancellation. 
(when (vti) (and (vxh) (not(uxh)))) ;; Support.  Cancellation. 
(when (yti) (and (yxh) (not(xxh)))) ;; Support.  Cancellation. 
(when (bui) (and (byh) (not(zxh)))) ;; Support.  Cancellation. 
(when (gui) (and (gyh) (not(cyh)))) ;; Support.  Cancellation. 
(when (jui) (and (jyh) (not(hyh)))) ;; Support.  Cancellation. 
(when (lui) (and (lyh) (not(kyh)))) ;; Support.  Cancellation. 
(when (qui) (and (qyh) (not(myh)))) ;; Support.  Cancellation. 
(when (tui) (and (tyh) (not(ryh)))) ;; Support.  Cancellation. 
(when (vui) (and (vyh) (not(uyh)))) ;; Support.  Cancellation. 
(when (yui) (and (yyh) (not(xyh)))) ;; Support.  Cancellation. 
(when (bvi) (and (bzh) (not(zyh)))) ;; Support.  Cancellation. 
(when (gvi) (and (gzh) (not(czh)))) ;; Support.  Cancellation. 
(when (jvi) (and (jzh) (not(hzh)))) ;; Support.  Cancellation. 
(when (lvi) (and (lzh) (not(kzh)))) ;; Support.  Cancellation. 
(when (qvi) (and (qzh) (not(mzh)))) ;; Support.  Cancellation. 
(when (tvi) (and (tzh) (not(rzh)))) ;; Support.  Cancellation. 
(when (vvi) (and (vzh) (not(uzh)))) ;; Support.  Cancellation. 
(when (yvi) (and (yzh) (not(xzh)))) ;; Support.  Cancellation. 
(when (bwi) (and (b1h) (not(zzh)))) ;; Support.  Cancellation. 
(when (gwi) (and (g1h) (not(c1h)))) ;; Support.  Cancellation. 
(when (jwi) (and (j1h) (not(h1h)))) ;; Support.  Cancellation. 
(when (lwi) (and (l1h) (not(k1h)))) ;; Support.  Cancellation. 
(when (qwi) (and (q1h) (not(m1h)))) ;; Support.  Cancellation. 
(when (twi) (and (t1h) (not(r1h)))) ;; Support.  Cancellation. 
(when (vwi) (and (v1h) (not(u1h)))) ;; Support.  Cancellation. 
(when (ywi) (and (y1h) (not(x1h)))) ;; Support.  Cancellation. 
(when (bxi) (and (b2h) (not(z1h)))) ;; Support.  Cancellation. 
(when (gxi) (and (g2h) (not(c2h)))) ;; Support.  Cancellation. 
(when (jxi) (and (j2h) (not(h2h)))) ;; Support.  Cancellation. 
(when (lxi) (and (l2h) (not(k2h)))) ;; Support.  Cancellation. 
(when (qxi) (and (q2h) (not(m2h)))) ;; Support.  Cancellation. 
(when (txi) (and (t2h) (not(r2h)))) ;; Support.  Cancellation. 
(when (vxi) (and (v2h) (not(u2h)))) ;; Support.  Cancellation. 
(when (yxi) (and (y2h) (not(x2h)))) ;; Support.  Cancellation. 
(when (byi) (and (b3h) (not(z2h)))) ;; Support.  Cancellation. 
(when (gyi) (and (g3h) (not(c3h)))) ;; Support.  Cancellation. 
(when (jyi) (and (j3h) (not(h3h)))) ;; Support.  Cancellation. 
(when (lyi) (and (l3h) (not(k3h)))) ;; Support.  Cancellation. 
(when (qyi) (and (q3h) (not(m3h)))) ;; Support.  Cancellation. 
(when (tyi) (and (t3h) (not(r3h)))) ;; Support.  Cancellation. 
(when (vyi) (and (v3h) (not(u3h)))) ;; Support.  Cancellation. 
(when (yyi) (and (y3h) (not(x3h)))) ;; Support.  Cancellation. 
(when (bzi) (and (b4h) (not(z3h)))) ;; Support.  Cancellation. 
(when (gzi) (and (g4h) (not(c4h)))) ;; Support.  Cancellation. 
(when (jzi) (and (j4h) (not(h4h)))) ;; Support.  Cancellation. 
(when (lzi) (and (l4h) (not(k4h)))) ;; Support.  Cancellation. 
(when (qzi) (and (q4h) (not(m4h)))) ;; Support.  Cancellation. 
(when (tzi) (and (t4h) (not(r4h)))) ;; Support.  Cancellation. 
(when (vzi) (and (v4h) (not(u4h)))) ;; Support.  Cancellation. 
(when (yzi) (and (y4h) (not(x4h)))) ;; Support.  Cancellation. 
(when (b1i) (and (b5h) (not(z4h)))) ;; Support.  Cancellation. 
(when (g1i) (and (g5h) (not(c5h)))) ;; Support.  Cancellation. 
(when (j1i) (and (j5h) (not(h5h)))) ;; Support.  Cancellation. 
(when (l1i) (and (l5h) (not(k5h)))) ;; Support.  Cancellation. 
(when (q1i) (and (q5h) (not(m5h)))) ;; Support.  Cancellation. 
(when (t1i) (and (t5h) (not(r5h)))) ;; Support.  Cancellation. 
(when (v1i) (and (v5h) (not(u5h)))) ;; Support.  Cancellation. 
(when (y1i) (and (y5h) (not(x5h)))) ;; Support.  Cancellation. 
(when (b2i) (and (b6h) (not(z5h)))) ;; Support.  Cancellation. 
(when (g2i) (and (g6h) (not(c6h)))) ;; Support.  Cancellation. 
(when (j2i) (and (j6h) (not(h6h)))) ;; Support.  Cancellation. 
(when (l2i) (and (l6h) (not(k6h)))) ;; Support.  Cancellation. 
(when (q2i) (and (q6h) (not(m6h)))) ;; Support.  Cancellation. 
(when (t2i) (and (t6h) (not(r6h)))) ;; Support.  Cancellation. 
(when (v2i) (and (v6h) (not(u6h)))) ;; Support.  Cancellation. 
(when (y2i) (and (y6h) (not(x6h)))) ;; Support.  Cancellation. 
(when (b3i) (and (b7h) (not(z6h)))) ;; Support.  Cancellation. 
(when (g3i) (and (g7h) (not(c7h)))) ;; Support.  Cancellation. 
(when (j3i) (and (j7h) (not(h7h)))) ;; Support.  Cancellation. 
(when (l3i) (and (l7h) (not(k7h)))) ;; Support.  Cancellation. 
(when (q3i) (and (q7h) (not(m7h)))) ;; Support.  Cancellation. 
(when (r3i)  (r7h)) ;; Support. 
(when (u3i) (and (u7h) (not(t7h)))) ;; Support.  Cancellation. 
(when (x3i) (and (x7h) (not(v7h)))) ;; Support.  Cancellation. 
(when (z3i) (and (z7h) (not(y7h)))) ;; Support.  Cancellation. 
(when (c4i) (and (c8h) (not(b8h)))) ;; Support.  Cancellation. 
(when (h4i) (and (h8h) (not(g8h)))) ;; Support.  Cancellation. 
(when (m4i) (and (m8h) (not(l8h)))) ;; Support.  Cancellation. 
(when (r4i) (and (r8h) (not(q8h)))) ;; Support.  Cancellation. 
(when (u4i) (and (u8h) (not(t8h)))) ;; Support.  Cancellation. 
(when (x4i) (and (x8h) (not(v8h)))) ;; Support.  Cancellation. 
(when (z4i) (and (z8h) (not(y8h)))) ;; Support.  Cancellation. 
(when (c5i) (and (c9h) (not(b9h)))) ;; Support.  Cancellation. 
(when (h5i) (and (h9h) (not(g9h)))) ;; Support.  Cancellation. 
(when (k5i) (and (k9h) (not(j9h)))) ;; Support.  Cancellation. 
(when (m5i) (and (m9h) (not(l9h)))) ;; Support.  Cancellation. 
(when (r5i) (and (r9h) (not(q9h)))) ;; Support.  Cancellation. 
(when (u5i) (and (u9h) (not(t9h)))) ;; Support.  Cancellation. 
(when (x5i) (and (x9h) (not(v9h)))) ;; Support.  Cancellation. 
(when (z5i) (and (z9h) (not(y9h)))) ;; Support.  Cancellation. 
(when (c6i) (and (c0h) (not(b0h)))) ;; Support.  Cancellation. 
(when (h6i) (and (h0h) (not(g0h)))) ;; Support.  Cancellation. 
(when (k6i) (and (k0h) (not(j0h)))) ;; Support.  Cancellation. 
(when (m6i) (and (m0h) (not(l0h)))) ;; Support.  Cancellation. 
(when (r6i) (and (r0h) (not(q0h)))) ;; Support.  Cancellation. 
(when (u6i) (and (u0h) (not(t0h)))) ;; Support.  Cancellation. 
(when (x6i) (and (x0h) (not(v0h)))) ;; Support.  Cancellation. 
(when (z6i) (and (z0h) (not(y0h)))) ;; Support.  Cancellation. 
(when (c7i) (and (cai) (not(bai)))) ;; Support.  Cancellation. 
(when (h7i) (and (hai) (not(gai)))) ;; Support.  Cancellation. 
(when (k7i) (and (kai) (not(jai)))) ;; Support.  Cancellation. 
(when (m7i) (and (mai) (not(lai)))) ;; Support.  Cancellation. 
(when (r7i) (and (rai) (not(qai)))) ;; Support.  Cancellation. 
(when (u7i) (and (uai) (not(tai)))) ;; Support.  Cancellation. 
(when (x7i) (and (xai) (not(vai)))) ;; Support.  Cancellation. 
(when (z7i) (and (zai) (not(yai)))) ;; Support.  Cancellation. 
(when (c8i) (and (cbi) (not(bbi)))) ;; Support.  Cancellation. 
(when (h8i) (and (hbi) (not(gbi)))) ;; Support.  Cancellation. 
(when (k8i) (and (kbi) (not(jbi)))) ;; Support.  Cancellation. 
(when (m8i) (and (mbi) (not(lbi)))) ;; Support.  Cancellation. 
(when (r8i) (and (rbi) (not(qbi)))) ;; Support.  Cancellation. 
(when (u9i) (and (uci) (not(tci)))) ;; Support.  Cancellation. 
(when (x9i) (and (xci) (not(vci)))) ;; Support.  Cancellation. 
(when (z9i) (and (zci) (not(yci)))) ;; Support.  Cancellation. 
(when (c0i) (and (cdi) (not(bdi)))) ;; Support.  Cancellation. 
(when (h0i) (and (hdi) (not(gdi)))) ;; Support.  Cancellation. 
(when (k0i)  (kdi)) ;; Support. 
(when (m0i) (and (mdi) (not(ldi)))) ;; Support.  Cancellation. 
(when (r0i) (and (rdi) (not(qdi)))) ;; Support.  Cancellation. 
(when (uaj) (and (uei) (not(tei)))) ;; Support.  Cancellation. 
(when (xaj) (and (xei) (not(vei)))) ;; Support.  Cancellation. 
(when (zaj) (and (zei) (not(yei)))) ;; Support.  Cancellation. 
(when (cbj) (and (cfi) (not(bfi)))) ;; Support.  Cancellation. 
(when (hbj) (and (hfi) (not(gfi)))) ;; Support.  Cancellation. 
(when (kbj) (and (kfi) (not(jfi)))) ;; Support.  Cancellation. 
(when (mbj) (and (mfi) (not(lfi)))) ;; Support.  Cancellation. 
(when (rbj) (and (rfi) (not(qfi)))) ;; Support.  Cancellation. 
(when (ubj) (and (ufi) (not(tfi)))) ;; Support.  Cancellation. 
(when (xbj) (and (xfi) (not(vfi)))) ;; Support.  Cancellation. 
(when (zbj) (and (zfi) (not(yfi)))) ;; Support.  Cancellation. 
(when (ccj) (and (cgi) (not(bgi)))) ;; Support.  Cancellation. 
(when (hcj) (and (hgi) (not(ggi)))) ;; Support.  Cancellation. 
(when (kcj) (and (kgi) (not(jgi)))) ;; Support.  Cancellation. 
(when (mcj) (and (mgi) (not(lgi)))) ;; Support.  Cancellation. 
(when (rcj) (and (rgi) (not(qgi)))) ;; Support.  Cancellation. 
(when (uej) (and (uii) (not(tii)))) ;; Support.  Cancellation. 
(when (xej) (and (xii) (not(vii)))) ;; Support.  Cancellation. 
(when (hfj) (and (hji) (not(gji)))) ;; Support.  Cancellation. 
(when (kfj) (and (kji) (not(jji)))) ;; Support.  Cancellation. 
(when (tfj) (and (tji) (not(rji)))) ;; Support.  Cancellation. 
(when (vfj) (and (vji) (not(uji)))) ;; Support.  Cancellation. 
(when (yfj) (and (yji) (not(xji)))) ;; Support.  Cancellation. 
(when (bgj) (and (bki) (not(zji)))) ;; Support.  Cancellation. 
(when (tgj) (and (tki) (not(rki)))) ;; Support.  Cancellation. 
(when (vgj) (and (vki) (not(uki)))) ;; Support.  Cancellation. 
(when (lhj) (and (lli) (not(kli)))) ;; Support.  Cancellation. 
(when (qhj) (and (qli) (not(mli)))) ;; Support.  Cancellation. 
(when (gij) (and (gmi) (not(cmi)))) ;; Support.  Cancellation. 
(when (jij) (and (jmi) (not(hmi)))) ;; Support.  Cancellation. 
(when (lij) (and (lmi) (not(kmi)))) ;; Support.  Cancellation. 
(when (qij) (and (qmi) (not(mmi)))) ;; Support.  Cancellation. 
(when (tkj) (and (toi) (not(roi)))) ;; Support.  Cancellation. 
(when (vkj) (and (voi) (not(uoi)))) ;; Support.  Cancellation. 
(when (ykj) (and (yoi) (not(xoi)))) ;; Support.  Cancellation. 
(when (blj) (and (bpi) (not(zoi)))) ;; Support.  Cancellation. 
(when (glj) (and (gpi) (not(cpi)))) ;; Support.  Cancellation. 
(when (jlj) (and (jpi) (not(hpi)))) ;; Support.  Cancellation. 
(when (llj) (and (lpi) (not(kpi)))) ;; Support.  Cancellation. 
(when (qlj) (and (qpi) (not(mpi)))) ;; Support.  Cancellation. 
(when (tlj) (and (tpi) (not(rpi)))) ;; Support.  Cancellation. 
(when (vlj) (and (vpi) (not(upi)))) ;; Support.  Cancellation. 
(when (ylj) (and (ypi) (not(xpi)))) ;; Support.  Cancellation. 
(when (bmj) (and (bqi) (not(zpi)))) ;; Support.  Cancellation. 
(when (gmj) (and (gqi) (not(cqi)))) ;; Support.  Cancellation. 
(when (jmj) (and (jqi) (not(hqi)))) ;; Support.  Cancellation. 
(when (lmj) (and (lqi) (not(kqi)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L5_L8
:parameters ()
:precondition (and (q7e))

:effect (and  (rah) (j7j) (not(ryg))
(when (qik) (and (quh) (not(muh)))) ;; Support.  Cancellation. 
(when (ryg) (and (rmj) (not(ryj)))) ;; Support.  Cancellation. 
(when (not(tyg))  (not(tmj))) ;; Cancellation. 
(when (uyg)  (umj)) ;; Support. 
(when (xyg) (and (xmj) (not(ymj)))) ;; Support.  Cancellation. 
(when (zyg) (and (zmj) (not(bnj)))) ;; Support.  Cancellation. 
(when (czg)  (cnj)) ;; Support. 
(when (hzg) (and (hnj) (not(jnj)))) ;; Support.  Cancellation. 
(when (kzg) (and (knj) (not(lnj)))) ;; Support.  Cancellation. 
(when (mzg)  (mnj)) ;; Support. 
(when (rzg)  (rnj)) ;; Support. 
(when (uzg) (and (unj) (not(vnj)))) ;; Support.  Cancellation. 
(when (xzg) (and (xnj) (not(ynj)))) ;; Support.  Cancellation. 
(when (zzg) (and (znj) (not(boj)))) ;; Support.  Cancellation. 
(when (c1g) (and (coj) (not(goj)))) ;; Support.  Cancellation. 
(when (h1g)  (hoj)) ;; Support. 
(when (k1g)  (koj)) ;; Support. 
(when (m1g)  (moj)) ;; Support. 
(when (r1g)  (roj)) ;; Support. 
(when (u1g)  (uoj)) ;; Support. 
(when (x1g)  (xoj)) ;; Support. 
(when (z1g)  (zoj)) ;; Support. 
(when (c2g)  (cpj)) ;; Support. 
(when (h2g)  (hpj)) ;; Support. 
(when (k2g)  (kpj)) ;; Support. 
(when (m2g)  (mpj)) ;; Support. 
(when (r2g)  (rpj)) ;; Support. 
(when (u2g) (and (upj) (not(vpj)))) ;; Support.  Cancellation. 
(when (x2g) (and (xpj) (not(ypj)))) ;; Support.  Cancellation. 
(when (z2g) (and (zpj) (not(bqj)))) ;; Support.  Cancellation. 
(when (c3g) (and (cqj) (not(gqj)))) ;; Support.  Cancellation. 
(when (h3g) (and (hqj) (not(jqj)))) ;; Support.  Cancellation. 
(when (k3g) (and (kqj) (not(lqj)))) ;; Support.  Cancellation. 
(when (m3g) (and (mqj) (not(qqj)))) ;; Support.  Cancellation. 
(when (r3g) (and (rqj) (not(tqj)))) ;; Support.  Cancellation. 
(when (u3g)  (uqj)) ;; Support. 
(when (x3g)  (xqj)) ;; Support. 
(when (z3g)  (zqj)) ;; Support. 
(when (c4g)  (csj)) ;; Support. 
(when (h4g)  (hsj)) ;; Support. 
(when (k4g)  (ksj)) ;; Support. 
(when (m4g)  (msj)) ;; Support. 
(when (r4g)  (rsj)) ;; Support. 
(when (u4g)  (usj)) ;; Support. 
(when (x4g)  (xsj)) ;; Support. 
(when (z4g)  (zsj)) ;; Support. 
(when (c5g)  (crj)) ;; Support. 
(when (h5g)  (hrj)) ;; Support. 
(when (k5g)  (krj)) ;; Support. 
(when (m5g)  (mrj)) ;; Support. 
(when (r5g)  (rrj)) ;; Support. 
(when (u5g) (and (urj) (not(vrj)))) ;; Support.  Cancellation. 
(when (x5g) (and (xrj) (not(yrj)))) ;; Support.  Cancellation. 
(when (z5g) (and (zrj) (not(btj)))) ;; Support.  Cancellation. 
(when (c6g) (and (ctj) (not(gtj)))) ;; Support.  Cancellation. 
(when (h6g) (and (htj) (not(jtj)))) ;; Support.  Cancellation. 
(when (k6g) (and (ktj) (not(ltj)))) ;; Support.  Cancellation. 
(when (m6g) (and (mtj) (not(qtj)))) ;; Support.  Cancellation. 
(when (r6g) (and (rtj) (not(ttj)))) ;; Support.  Cancellation. 
(when (u6g) (and (utj) (not(vtj)))) ;; Support.  Cancellation. 
(when (x6g) (and (xtj) (not(ytj)))) ;; Support.  Cancellation. 
(when (z6g) (and (ztj) (not(buj)))) ;; Support.  Cancellation. 
(when (c7g) (and (cuj) (not(guj)))) ;; Support.  Cancellation. 
(when (h7g) (and (huj) (not(juj)))) ;; Support.  Cancellation. 
(when (k7g) (and (kuj) (not(luj)))) ;; Support.  Cancellation. 
(when (m7g) (and (muj) (not(quj)))) ;; Support.  Cancellation. 
(when (r7g) (and (ruj) (not(tuj)))) ;; Support.  Cancellation. 
(when (u7g) (and (uuj) (not(vuj)))) ;; Support.  Cancellation. 
(when (x7g) (and (xuj) (not(yuj)))) ;; Support.  Cancellation. 
(when (z7g) (and (zuj) (not(bvj)))) ;; Support.  Cancellation. 
(when (c8g) (and (cvj) (not(gvj)))) ;; Support.  Cancellation. 
(when (h8g) (and (hvj) (not(jvj)))) ;; Support.  Cancellation. 
(when (k8g) (and (kvj) (not(lvj)))) ;; Support.  Cancellation. 
(when (m8g) (and (mvj) (not(qvj)))) ;; Support.  Cancellation. 
(when (r8g) (and (rvj) (not(tvj)))) ;; Support.  Cancellation. 
(when (u8g) (and (uvj) (not(vvj)))) ;; Support.  Cancellation. 
(when (x8g) (and (xvj) (not(yvj)))) ;; Support.  Cancellation. 
(when (z8g) (and (zvj) (not(bwj)))) ;; Support.  Cancellation. 
(when (c9g) (and (cwj) (not(gwj)))) ;; Support.  Cancellation. 
(when (h9g) (and (hwj) (not(jwj)))) ;; Support.  Cancellation. 
(when (k9g) (and (kwj) (not(lwj)))) ;; Support.  Cancellation. 
(when (m9g) (and (mwj) (not(qwj)))) ;; Support.  Cancellation. 
(when (r9g) (and (rwj) (not(twj)))) ;; Support.  Cancellation. 
(when (u9g) (and (uwj) (not(vwj)))) ;; Support.  Cancellation. 
(when (x9g) (and (xwj) (not(ywj)))) ;; Support.  Cancellation. 
(when (z9g) (and (zwj) (not(bxj)))) ;; Support.  Cancellation. 
(when (c0g) (and (cxj) (not(gxj)))) ;; Support.  Cancellation. 
(when (h0g) (and (hxj) (not(jxj)))) ;; Support.  Cancellation. 
(when (k0g) (and (kxj) (not(lxj)))) ;; Support.  Cancellation. 
(when (m0g) (and (mxj) (not(qxj)))) ;; Support.  Cancellation. 
(when (r0g) (and (rxj) (not(txj)))) ;; Support.  Cancellation. 
(when (u0g) (and (uxj) (not(vxj)))) ;; Support.  Cancellation. 
(when (x0g) (and (xxj) (not(yxj)))) ;; Support.  Cancellation. 
(when (z0g) (and (zxj) (not(byj)))) ;; Support.  Cancellation. 
(when (cah) (and (cyj) (not(gyj)))) ;; Support.  Cancellation. 
(when (hah) (and (hyj) (not(jyj)))) ;; Support.  Cancellation. 
(when (kah) (and (kyj) (not(lyj)))) ;; Support.  Cancellation. 
(when (tah)  (tyj)) ;; Support. 
(when (vah)  (vyj)) ;; Support. 
(when (yah)  (yyj)) ;; Support. 
(when (bbh)  (bzj)) ;; Support. 
(when (gbh)  (gzj)) ;; Support. 
(when (lbh)  (lzj)) ;; Support. 
(when (qbh)  (qzj)) ;; Support. 
(when (tbh)  (tzj)) ;; Support. 
(when (vbh)  (vzj)) ;; Support. 
(when (bch)  (b1j)) ;; Support. 
(when (gch)  (g1j)) ;; Support. 
(when (jch)  (j1j)) ;; Support. 
(when (lch)  (l1j)) ;; Support. 
(when (qch)  (q1j)) ;; Support. 
(when (tch)  (t1j)) ;; Support. 
(when (vch)  (v1j)) ;; Support. 
(when (ych)  (y1j)) ;; Support. 
(when (bdh)  (b2j)) ;; Support. 
(when (gdh)  (g2j)) ;; Support. 
(when (jdh)  (j2j)) ;; Support. 
(when (ldh)  (l2j)) ;; Support. 
(when (qdh)  (q2j)) ;; Support. 
(when (tdh)  (t2j)) ;; Support. 
(when (vdh)  (v2j)) ;; Support. 
(when (ydh)  (y2j)) ;; Support. 
(when (beh)  (b3j)) ;; Support. 
(when (geh)  (g3j)) ;; Support. 
(when (jeh)  (j3j)) ;; Support. 
(when (leh)  (l3j)) ;; Support. 
(when (qeh)  (q3j)) ;; Support. 
(when (teh) (and (t3j) (not(u3j)))) ;; Support.  Cancellation. 
(when (veh) (and (v3j) (not(x3j)))) ;; Support.  Cancellation. 
(when (yeh) (and (y3j) (not(z3j)))) ;; Support.  Cancellation. 
(when (bfh) (and (b4j) (not(c4j)))) ;; Support.  Cancellation. 
(when (gfh) (and (g4j) (not(h4j)))) ;; Support.  Cancellation. 
(when (jfh) (and (j4j) (not(k4j)))) ;; Support.  Cancellation. 
(when (lfh) (and (l4j) (not(m4j)))) ;; Support.  Cancellation. 
(when (qfh) (and (q4j) (not(r4j)))) ;; Support.  Cancellation. 
(when (tfh)  (t4j)) ;; Support. 
(when (vfh)  (v4j)) ;; Support. 
(when (yfh)  (y4j)) ;; Support. 
(when (bgh)  (b5j)) ;; Support. 
(when (ggh)  (g5j)) ;; Support. 
(when (jgh)  (j5j)) ;; Support. 
(when (lgh)  (l5j)) ;; Support. 
(when (qgh)  (q5j)) ;; Support. 
(when (tgh) (and (t5j) (not(u5j)))) ;; Support.  Cancellation. 
(when (vgh) (and (v5j) (not(x5j)))) ;; Support.  Cancellation. 
(when (ygh) (and (y5j) (not(z5j)))) ;; Support.  Cancellation. 
(when (bhh) (and (b6j) (not(c6j)))) ;; Support.  Cancellation. 
(when (lhh) (and (l6j) (not(m6j)))) ;; Support.  Cancellation. 
(when (qhh) (and (q6j) (not(r6j)))) ;; Support.  Cancellation. 
(when (thh)  (t6j)) ;; Support. 
(when (vhh)  (v6j)) ;; Support. 
(when (gih)  (g7j)) ;; Support. 
(when (lih)  (l7j)) ;; Support. 
(when (qih)  (q7j)) ;; Support. 
(when (tih) (and (t7j) (not(u7j)))) ;; Support.  Cancellation. 
(when (vih) (and (v7j) (not(x7j)))) ;; Support.  Cancellation. 
(when (yih) (and (y7j) (not(z7j)))) ;; Support.  Cancellation. 
(when (bjh) (and (b8j) (not(c8j)))) ;; Support.  Cancellation. 
(when (gjh) (and (g8j) (not(h8j)))) ;; Support.  Cancellation. 
(when (jjh) (and (j8j) (not(k8j)))) ;; Support.  Cancellation. 
(when (ljh) (and (l8j) (not(m8j)))) ;; Support.  Cancellation. 
(when (qjh) (and (q8j) (not(r8j)))) ;; Support.  Cancellation. 
(when (tjh) (and (t8j) (not(u8j)))) ;; Support.  Cancellation. 
(when (vjh) (and (v8j) (not(x8j)))) ;; Support.  Cancellation. 
(when (yjh) (and (y8j) (not(z8j)))) ;; Support.  Cancellation. 
(when (bkh) (and (b9j) (not(c9j)))) ;; Support.  Cancellation. 
(when (gkh) (and (g9j) (not(h9j)))) ;; Support.  Cancellation. 
(when (jkh) (and (j9j) (not(k9j)))) ;; Support.  Cancellation. 
(when (lkh) (and (l9j) (not(m9j)))) ;; Support.  Cancellation. 
(when (qkh) (and (q9j) (not(r9j)))) ;; Support.  Cancellation. 
(when (tkh)  (t9j)) ;; Support. 
(when (vkh)  (v9j)) ;; Support. 
(when (ykh)  (y9j)) ;; Support. 
(when (blh)  (b0j)) ;; Support. 
(when (glh)  (g0j)) ;; Support. 
(when (jlh)  (j0j)) ;; Support. 
(when (llh)  (l0j)) ;; Support. 
(when (qlh)  (q0j)) ;; Support. 
(when (tlh)  (t0j)) ;; Support. 
(when (vlh)  (v0j)) ;; Support. 
(when (ylh)  (y0j)) ;; Support. 
(when (bmh)  (bak)) ;; Support. 
(when (gmh)  (gak)) ;; Support. 
(when (jmh)  (jak)) ;; Support. 
(when (lmh)  (lak)) ;; Support. 
(when (qmh)  (qak)) ;; Support. 
(when (tmh) (and (tak) (not(uak)))) ;; Support.  Cancellation. 
(when (vmh) (and (vak) (not(xak)))) ;; Support.  Cancellation. 
(when (ymh)  (yak)) ;; Support. 
(when (bnh)  (bbk)) ;; Support. 
(when (gnh) (and (gbk) (not(hbk)))) ;; Support.  Cancellation. 
(when (jnh) (and (jbk) (not(kbk)))) ;; Support.  Cancellation. 
(when (lnh)  (lbk)) ;; Support. 
(when (qnh)  (qbk)) ;; Support. 
(when (rnh) (and (rbk) (not(tbk)))) ;; Support.  Cancellation. 
(when (unh) (and (ubk) (not(vbk)))) ;; Support.  Cancellation. 
(when (xnh) (and (xbk) (not(ybk)))) ;; Support.  Cancellation. 
(when (znh) (and (zbk) (not(bck)))) ;; Support.  Cancellation. 
(when (coh)  (cck)) ;; Support. 
(when (hoh)  (hck)) ;; Support. 
(when (koh)  (kck)) ;; Support. 
(when (moh)  (mck)) ;; Support. 
(when (roh) (and (rck) (not(tck)))) ;; Support.  Cancellation. 
(when (uoh) (and (uck) (not(vck)))) ;; Support.  Cancellation. 
(when (xoh)  (xck)) ;; Support. 
(when (zoh)  (zck)) ;; Support. 
(when (cph)  (cdk)) ;; Support. 
(when (hph)  (hdk)) ;; Support. 
(when (kph) (and (kdk) (not(ldk)))) ;; Support.  Cancellation. 
(when (mph) (and (mdk) (not(qdk)))) ;; Support.  Cancellation. 
(when (rph)  (rdk)) ;; Support. 
(when (uph)  (udk)) ;; Support. 
(when (xph)  (xdk)) ;; Support. 
(when (zph)  (zdk)) ;; Support. 
(when (cqh) (and (cek) (not(gek)))) ;; Support.  Cancellation. 
(when (hqh) (and (hek) (not(jek)))) ;; Support.  Cancellation. 
(when (kqh) (and (kek) (not(lek)))) ;; Support.  Cancellation. 
(when (mqh) (and (mek) (not(qek)))) ;; Support.  Cancellation. 
(when (rqh)  (rek)) ;; Support. 
(when (uqh)  (uek)) ;; Support. 
(when (xqh)  (xek)) ;; Support. 
(when (zqh)  (zek)) ;; Support. 
(when (csh)  (cfk)) ;; Support. 
(when (hsh)  (hfk)) ;; Support. 
(when (ksh)  (kfk)) ;; Support. 
(when (msh)  (mfk)) ;; Support. 
(when (rsh)  (rfk)) ;; Support. 
(when (ush)  (ufk)) ;; Support. 
(when (xsh)  (xfk)) ;; Support. 
(when (zsh)  (zfk)) ;; Support. 
(when (crh)  (cgk)) ;; Support. 
(when (hrh)  (hgk)) ;; Support. 
(when (krh)  (kgk)) ;; Support. 
(when (mrh)  (mgk)) ;; Support. 
(when (rrh) (and (rgk) (not(tgk)))) ;; Support.  Cancellation. 
(when (urh) (and (ugk) (not(vgk)))) ;; Support.  Cancellation. 
(when (xrh) (and (xgk) (not(ygk)))) ;; Support.  Cancellation. 
(when (zrh) (and (zgk) (not(bhk)))) ;; Support.  Cancellation. 
(when (cth) (and (chk) (not(ghk)))) ;; Support.  Cancellation. 
(when (hth) (and (hhk) (not(jhk)))) ;; Support.  Cancellation. 
(when (kth) (and (khk) (not(lhk)))) ;; Support.  Cancellation. 
(when (mth) (and (mhk) (not(qhk)))) ;; Support.  Cancellation. 
(when (rth) (and (rhk) (not(thk)))) ;; Support.  Cancellation. 
(when (uth) (and (uhk) (not(vhk)))) ;; Support.  Cancellation. 
(when (xth) (and (xhk) (not(yhk)))) ;; Support.  Cancellation. 
(when (zth) (and (zhk) (not(bik)))) ;; Support.  Cancellation. 
(when (cuh) (and (cik) (not(gik)))) ;; Support.  Cancellation. 
(when (huh) (and (hik) (not(jik)))) ;; Support.  Cancellation. 
(when (kuh) (and (kik) (not(lik)))) ;; Support.  Cancellation. 
(when (muh) (and (mik) (not(qik)))) ;; Support.  Cancellation. 
(when (tmj) (and (tyg) (not(qnh)))) ;; Support.  Cancellation. 
(when (ymj) (and (yyg) (not(xyg)))) ;; Support.  Cancellation. 
(when (bnj) (and (bzg) (not(zyg)))) ;; Support.  Cancellation. 
(when (jnj) (and (jzg) (not(hzg)))) ;; Support.  Cancellation. 
(when (lnj) (and (lzg) (not(kzg)))) ;; Support.  Cancellation. 
(when (vnj) (and (vzg) (not(uzg)))) ;; Support.  Cancellation. 
(when (ynj) (and (yzg) (not(xzg)))) ;; Support.  Cancellation. 
(when (boj) (and (b1g) (not(zzg)))) ;; Support.  Cancellation. 
(when (goj) (and (g1g) (not(c1g)))) ;; Support.  Cancellation. 
(when (vpj) (and (v2g) (not(u2g)))) ;; Support.  Cancellation. 
(when (ypj) (and (y2g) (not(x2g)))) ;; Support.  Cancellation. 
(when (bqj) (and (b3g) (not(z2g)))) ;; Support.  Cancellation. 
(when (gqj) (and (g3g) (not(c3g)))) ;; Support.  Cancellation. 
(when (jqj) (and (j3g) (not(h3g)))) ;; Support.  Cancellation. 
(when (lqj) (and (l3g) (not(k3g)))) ;; Support.  Cancellation. 
(when (qqj) (and (q3g) (not(m3g)))) ;; Support.  Cancellation. 
(when (tqj) (and (t3g) (not(r3g)))) ;; Support.  Cancellation. 
(when (vrj) (and (v5g) (not(u5g)))) ;; Support.  Cancellation. 
(when (yrj) (and (y5g) (not(x5g)))) ;; Support.  Cancellation. 
(when (btj) (and (b6g) (not(z5g)))) ;; Support.  Cancellation. 
(when (gtj) (and (g6g) (not(c6g)))) ;; Support.  Cancellation. 
(when (jtj) (and (j6g) (not(h6g)))) ;; Support.  Cancellation. 
(when (ltj) (and (l6g) (not(k6g)))) ;; Support.  Cancellation. 
(when (qtj) (and (q6g) (not(m6g)))) ;; Support.  Cancellation. 
(when (ttj) (and (t6g) (not(r6g)))) ;; Support.  Cancellation. 
(when (vtj) (and (v6g) (not(u6g)))) ;; Support.  Cancellation. 
(when (ytj) (and (y6g) (not(x6g)))) ;; Support.  Cancellation. 
(when (buj) (and (b7g) (not(z6g)))) ;; Support.  Cancellation. 
(when (guj) (and (g7g) (not(c7g)))) ;; Support.  Cancellation. 
(when (juj) (and (j7g) (not(h7g)))) ;; Support.  Cancellation. 
(when (luj) (and (l7g) (not(k7g)))) ;; Support.  Cancellation. 
(when (quj) (and (q7g) (not(m7g)))) ;; Support.  Cancellation. 
(when (tuj) (and (t7g) (not(r7g)))) ;; Support.  Cancellation. 
(when (vuj) (and (v7g) (not(u7g)))) ;; Support.  Cancellation. 
(when (yuj) (and (y7g) (not(x7g)))) ;; Support.  Cancellation. 
(when (bvj) (and (b8g) (not(z7g)))) ;; Support.  Cancellation. 
(when (gvj) (and (g8g) (not(c8g)))) ;; Support.  Cancellation. 
(when (jvj) (and (j8g) (not(h8g)))) ;; Support.  Cancellation. 
(when (lvj) (and (l8g) (not(k8g)))) ;; Support.  Cancellation. 
(when (qvj) (and (q8g) (not(m8g)))) ;; Support.  Cancellation. 
(when (tvj) (and (t8g) (not(r8g)))) ;; Support.  Cancellation. 
(when (vvj) (and (v8g) (not(u8g)))) ;; Support.  Cancellation. 
(when (yvj) (and (y8g) (not(x8g)))) ;; Support.  Cancellation. 
(when (bwj) (and (b9g) (not(z8g)))) ;; Support.  Cancellation. 
(when (gwj) (and (g9g) (not(c9g)))) ;; Support.  Cancellation. 
(when (jwj) (and (j9g) (not(h9g)))) ;; Support.  Cancellation. 
(when (lwj) (and (l9g) (not(k9g)))) ;; Support.  Cancellation. 
(when (qwj) (and (q9g) (not(m9g)))) ;; Support.  Cancellation. 
(when (twj) (and (t9g) (not(r9g)))) ;; Support.  Cancellation. 
(when (vwj) (and (v9g) (not(u9g)))) ;; Support.  Cancellation. 
(when (ywj) (and (y9g) (not(x9g)))) ;; Support.  Cancellation. 
(when (bxj) (and (b0g) (not(z9g)))) ;; Support.  Cancellation. 
(when (gxj) (and (g0g) (not(c0g)))) ;; Support.  Cancellation. 
(when (jxj) (and (j0g) (not(h0g)))) ;; Support.  Cancellation. 
(when (lxj) (and (l0g) (not(k0g)))) ;; Support.  Cancellation. 
(when (qxj) (and (q0g) (not(m0g)))) ;; Support.  Cancellation. 
(when (txj) (and (t0g) (not(r0g)))) ;; Support.  Cancellation. 
(when (vxj) (and (v0g) (not(u0g)))) ;; Support.  Cancellation. 
(when (yxj) (and (y0g) (not(x0g)))) ;; Support.  Cancellation. 
(when (byj) (and (bah) (not(z0g)))) ;; Support.  Cancellation. 
(when (gyj) (and (gah) (not(cah)))) ;; Support.  Cancellation. 
(when (jyj) (and (jah) (not(hah)))) ;; Support.  Cancellation. 
(when (lyj) (and (lah) (not(kah)))) ;; Support.  Cancellation. 
(when (qyj)  (qah)) ;; Support. 
(when (u3j) (and (ueh) (not(teh)))) ;; Support.  Cancellation. 
(when (x3j) (and (xeh) (not(veh)))) ;; Support.  Cancellation. 
(when (z3j) (and (zeh) (not(yeh)))) ;; Support.  Cancellation. 
(when (c4j) (and (cfh) (not(bfh)))) ;; Support.  Cancellation. 
(when (h4j) (and (hfh) (not(gfh)))) ;; Support.  Cancellation. 
(when (k4j) (and (kfh) (not(jfh)))) ;; Support.  Cancellation. 
(when (m4j) (and (mfh) (not(lfh)))) ;; Support.  Cancellation. 
(when (r4j) (and (rfh) (not(qfh)))) ;; Support.  Cancellation. 
(when (u5j) (and (ugh) (not(tgh)))) ;; Support.  Cancellation. 
(when (x5j) (and (xgh) (not(vgh)))) ;; Support.  Cancellation. 
(when (z5j) (and (zgh) (not(ygh)))) ;; Support.  Cancellation. 
(when (c6j) (and (chh) (not(bhh)))) ;; Support.  Cancellation. 
(when (h6j)  (hhh)) ;; Support. 
(when (k6j)  (khh)) ;; Support. 
(when (m6j) (and (mhh) (not(lhh)))) ;; Support.  Cancellation. 
(when (r6j) (and (rhh) (not(qhh)))) ;; Support.  Cancellation. 
(when (u7j) (and (uih) (not(tih)))) ;; Support.  Cancellation. 
(when (x7j) (and (xih) (not(vih)))) ;; Support.  Cancellation. 
(when (z7j) (and (zih) (not(yih)))) ;; Support.  Cancellation. 
(when (c8j) (and (cjh) (not(bjh)))) ;; Support.  Cancellation. 
(when (h8j) (and (hjh) (not(gjh)))) ;; Support.  Cancellation. 
(when (k8j) (and (kjh) (not(jjh)))) ;; Support.  Cancellation. 
(when (m8j) (and (mjh) (not(ljh)))) ;; Support.  Cancellation. 
(when (r8j) (and (rjh) (not(qjh)))) ;; Support.  Cancellation. 
(when (u8j) (and (ujh) (not(tjh)))) ;; Support.  Cancellation. 
(when (x8j) (and (xjh) (not(vjh)))) ;; Support.  Cancellation. 
(when (z8j) (and (zjh) (not(yjh)))) ;; Support.  Cancellation. 
(when (c9j) (and (ckh) (not(bkh)))) ;; Support.  Cancellation. 
(when (h9j) (and (hkh) (not(gkh)))) ;; Support.  Cancellation. 
(when (k9j) (and (kkh) (not(jkh)))) ;; Support.  Cancellation. 
(when (m9j) (and (mkh) (not(lkh)))) ;; Support.  Cancellation. 
(when (r9j) (and (rkh) (not(qkh)))) ;; Support.  Cancellation. 
(when (uak) (and (umh) (not(tmh)))) ;; Support.  Cancellation. 
(when (xak) (and (xmh) (not(vmh)))) ;; Support.  Cancellation. 
(when (hbk) (and (hnh) (not(gnh)))) ;; Support.  Cancellation. 
(when (kbk) (and (knh) (not(jnh)))) ;; Support.  Cancellation. 
(when (tbk) (and (tnh) (not(rnh)))) ;; Support.  Cancellation. 
(when (vbk) (and (vnh) (not(unh)))) ;; Support.  Cancellation. 
(when (ybk) (and (ynh) (not(xnh)))) ;; Support.  Cancellation. 
(when (bck) (and (boh) (not(znh)))) ;; Support.  Cancellation. 
(when (tck) (and (toh) (not(roh)))) ;; Support.  Cancellation. 
(when (vck) (and (voh) (not(uoh)))) ;; Support.  Cancellation. 
(when (ldk) (and (lph) (not(kph)))) ;; Support.  Cancellation. 
(when (qdk) (and (qph) (not(mph)))) ;; Support.  Cancellation. 
(when (gek) (and (gqh) (not(cqh)))) ;; Support.  Cancellation. 
(when (jek) (and (jqh) (not(hqh)))) ;; Support.  Cancellation. 
(when (lek) (and (lqh) (not(kqh)))) ;; Support.  Cancellation. 
(when (qek) (and (qqh) (not(mqh)))) ;; Support.  Cancellation. 
(when (tgk) (and (trh) (not(rrh)))) ;; Support.  Cancellation. 
(when (vgk) (and (vrh) (not(urh)))) ;; Support.  Cancellation. 
(when (ygk) (and (yrh) (not(xrh)))) ;; Support.  Cancellation. 
(when (bhk) (and (bth) (not(zrh)))) ;; Support.  Cancellation. 
(when (ghk) (and (gth) (not(cth)))) ;; Support.  Cancellation. 
(when (jhk) (and (jth) (not(hth)))) ;; Support.  Cancellation. 
(when (lhk) (and (lth) (not(kth)))) ;; Support.  Cancellation. 
(when (qhk) (and (qth) (not(mth)))) ;; Support.  Cancellation. 
(when (thk) (and (tth) (not(rth)))) ;; Support.  Cancellation. 
(when (vhk) (and (vth) (not(uth)))) ;; Support.  Cancellation. 
(when (yhk) (and (yth) (not(xth)))) ;; Support.  Cancellation. 
(when (bik) (and (buh) (not(zth)))) ;; Support.  Cancellation. 
(when (gik) (and (guh) (not(cuh)))) ;; Support.  Cancellation. 
(when (jik) (and (juh) (not(huh)))) ;; Support.  Cancellation. 
(when (lik) (and (luh) (not(kuh)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L5_L7
:parameters ()
:precondition (and (q7e))

:effect (and  (jaj) (kbh)
(when (qmj) (and (quh) (not(muh)))) ;; Support.  Cancellation. 
(when (ryg) (and (rqi) (not(r3i)))) ;; Support.  Cancellation. 
(when (not(tyg))  (not(tqi))) ;; Cancellation. 
(when (uyg) (and (uqi) (not(vqi)))) ;; Support.  Cancellation. 
(when (xyg) (and (xqi) (not(yqi)))) ;; Support.  Cancellation. 
(when (zyg) (and (zqi) (not(bsi)))) ;; Support.  Cancellation. 
(when (czg) (and (csi) (not(gsi)))) ;; Support.  Cancellation. 
(when (hzg) (and (hsi) (not(jsi)))) ;; Support.  Cancellation. 
(when (kzg) (and (ksi) (not(lsi)))) ;; Support.  Cancellation. 
(when (mzg) (and (msi) (not(qsi)))) ;; Support.  Cancellation. 
(when (rzg) (and (rsi) (not(tsi)))) ;; Support.  Cancellation. 
(when (uzg) (and (usi) (not(vsi)))) ;; Support.  Cancellation. 
(when (xzg) (and (xsi) (not(ysi)))) ;; Support.  Cancellation. 
(when (zzg) (and (zsi) (not(bri)))) ;; Support.  Cancellation. 
(when (c1g) (and (cri) (not(gri)))) ;; Support.  Cancellation. 
(when (h1g) (and (hri) (not(jri)))) ;; Support.  Cancellation. 
(when (k1g) (and (kri) (not(lri)))) ;; Support.  Cancellation. 
(when (m1g) (and (mri) (not(qri)))) ;; Support.  Cancellation. 
(when (r1g) (and (rri) (not(tri)))) ;; Support.  Cancellation. 
(when (u1g) (and (uri) (not(vri)))) ;; Support.  Cancellation. 
(when (x1g) (and (xri) (not(yri)))) ;; Support.  Cancellation. 
(when (z1g) (and (zri) (not(bti)))) ;; Support.  Cancellation. 
(when (c2g) (and (cti) (not(gti)))) ;; Support.  Cancellation. 
(when (h2g) (and (hti) (not(jti)))) ;; Support.  Cancellation. 
(when (k2g) (and (kti) (not(lti)))) ;; Support.  Cancellation. 
(when (m2g) (and (mti) (not(qti)))) ;; Support.  Cancellation. 
(when (r2g) (and (rti) (not(tti)))) ;; Support.  Cancellation. 
(when (u2g) (and (uti) (not(vti)))) ;; Support.  Cancellation. 
(when (x2g) (and (xti) (not(yti)))) ;; Support.  Cancellation. 
(when (z2g) (and (zti) (not(bui)))) ;; Support.  Cancellation. 
(when (c3g) (and (cui) (not(gui)))) ;; Support.  Cancellation. 
(when (h3g) (and (hui) (not(jui)))) ;; Support.  Cancellation. 
(when (k3g) (and (kui) (not(lui)))) ;; Support.  Cancellation. 
(when (m3g) (and (mui) (not(qui)))) ;; Support.  Cancellation. 
(when (r3g) (and (rui) (not(tui)))) ;; Support.  Cancellation. 
(when (u3g) (and (uui) (not(vui)))) ;; Support.  Cancellation. 
(when (x3g) (and (xui) (not(yui)))) ;; Support.  Cancellation. 
(when (z3g) (and (zui) (not(bvi)))) ;; Support.  Cancellation. 
(when (c4g) (and (cvi) (not(gvi)))) ;; Support.  Cancellation. 
(when (h4g) (and (hvi) (not(jvi)))) ;; Support.  Cancellation. 
(when (k4g) (and (kvi) (not(lvi)))) ;; Support.  Cancellation. 
(when (m4g) (and (mvi) (not(qvi)))) ;; Support.  Cancellation. 
(when (r4g) (and (rvi) (not(tvi)))) ;; Support.  Cancellation. 
(when (u4g) (and (uvi) (not(vvi)))) ;; Support.  Cancellation. 
(when (x4g) (and (xvi) (not(yvi)))) ;; Support.  Cancellation. 
(when (z4g) (and (zvi) (not(bwi)))) ;; Support.  Cancellation. 
(when (c5g) (and (cwi) (not(gwi)))) ;; Support.  Cancellation. 
(when (h5g) (and (hwi) (not(jwi)))) ;; Support.  Cancellation. 
(when (k5g) (and (kwi) (not(lwi)))) ;; Support.  Cancellation. 
(when (m5g) (and (mwi) (not(qwi)))) ;; Support.  Cancellation. 
(when (r5g) (and (rwi) (not(twi)))) ;; Support.  Cancellation. 
(when (u5g) (and (uwi) (not(vwi)))) ;; Support.  Cancellation. 
(when (x5g) (and (xwi) (not(ywi)))) ;; Support.  Cancellation. 
(when (z5g) (and (zwi) (not(bxi)))) ;; Support.  Cancellation. 
(when (c6g) (and (cxi) (not(gxi)))) ;; Support.  Cancellation. 
(when (h6g) (and (hxi) (not(jxi)))) ;; Support.  Cancellation. 
(when (k6g) (and (kxi) (not(lxi)))) ;; Support.  Cancellation. 
(when (m6g) (and (mxi) (not(qxi)))) ;; Support.  Cancellation. 
(when (r6g) (and (rxi) (not(txi)))) ;; Support.  Cancellation. 
(when (u6g) (and (uxi) (not(vxi)))) ;; Support.  Cancellation. 
(when (x6g) (and (xxi) (not(yxi)))) ;; Support.  Cancellation. 
(when (z6g) (and (zxi) (not(byi)))) ;; Support.  Cancellation. 
(when (c7g) (and (cyi) (not(gyi)))) ;; Support.  Cancellation. 
(when (h7g) (and (hyi) (not(jyi)))) ;; Support.  Cancellation. 
(when (k7g) (and (kyi) (not(lyi)))) ;; Support.  Cancellation. 
(when (m7g) (and (myi) (not(qyi)))) ;; Support.  Cancellation. 
(when (r7g) (and (ryi) (not(tyi)))) ;; Support.  Cancellation. 
(when (u7g) (and (uyi) (not(vyi)))) ;; Support.  Cancellation. 
(when (x7g) (and (xyi) (not(yyi)))) ;; Support.  Cancellation. 
(when (z7g) (and (zyi) (not(bzi)))) ;; Support.  Cancellation. 
(when (c8g) (and (czi) (not(gzi)))) ;; Support.  Cancellation. 
(when (h8g) (and (hzi) (not(jzi)))) ;; Support.  Cancellation. 
(when (k8g) (and (kzi) (not(lzi)))) ;; Support.  Cancellation. 
(when (m8g) (and (mzi) (not(qzi)))) ;; Support.  Cancellation. 
(when (r8g) (and (rzi) (not(tzi)))) ;; Support.  Cancellation. 
(when (u8g) (and (uzi) (not(vzi)))) ;; Support.  Cancellation. 
(when (x8g) (and (xzi) (not(yzi)))) ;; Support.  Cancellation. 
(when (z8g) (and (zzi) (not(b1i)))) ;; Support.  Cancellation. 
(when (c9g) (and (c1i) (not(g1i)))) ;; Support.  Cancellation. 
(when (h9g) (and (h1i) (not(j1i)))) ;; Support.  Cancellation. 
(when (k9g) (and (k1i) (not(l1i)))) ;; Support.  Cancellation. 
(when (m9g) (and (m1i) (not(q1i)))) ;; Support.  Cancellation. 
(when (r9g) (and (r1i) (not(t1i)))) ;; Support.  Cancellation. 
(when (u9g) (and (u1i) (not(v1i)))) ;; Support.  Cancellation. 
(when (x9g) (and (x1i) (not(y1i)))) ;; Support.  Cancellation. 
(when (z9g) (and (z1i) (not(b2i)))) ;; Support.  Cancellation. 
(when (c0g) (and (c2i) (not(g2i)))) ;; Support.  Cancellation. 
(when (h0g) (and (h2i) (not(j2i)))) ;; Support.  Cancellation. 
(when (k0g) (and (k2i) (not(l2i)))) ;; Support.  Cancellation. 
(when (m0g) (and (m2i) (not(q2i)))) ;; Support.  Cancellation. 
(when (r0g) (and (r2i) (not(t2i)))) ;; Support.  Cancellation. 
(when (u0g) (and (u2i) (not(v2i)))) ;; Support.  Cancellation. 
(when (x0g) (and (x2i) (not(y2i)))) ;; Support.  Cancellation. 
(when (z0g) (and (z2i) (not(b3i)))) ;; Support.  Cancellation. 
(when (cah) (and (c3i) (not(g3i)))) ;; Support.  Cancellation. 
(when (hah) (and (h3i) (not(j3i)))) ;; Support.  Cancellation. 
(when (kah) (and (k3i) (not(l3i)))) ;; Support.  Cancellation. 
(when (tah) (and (t3i) (not(u3i)))) ;; Support.  Cancellation. 
(when (vah) (and (v3i) (not(x3i)))) ;; Support.  Cancellation. 
(when (yah) (and (y3i) (not(z3i)))) ;; Support.  Cancellation. 
(when (bbh) (and (b4i) (not(c4i)))) ;; Support.  Cancellation. 
(when (gbh) (and (g4i) (not(h4i)))) ;; Support.  Cancellation. 
(when (lbh) (and (l4i) (not(m4i)))) ;; Support.  Cancellation. 
(when (qbh) (and (q4i) (not(r4i)))) ;; Support.  Cancellation. 
(when (tbh) (and (t4i) (not(u4i)))) ;; Support.  Cancellation. 
(when (vbh) (and (v4i) (not(x4i)))) ;; Support.  Cancellation. 
(when (bch) (and (b5i) (not(c5i)))) ;; Support.  Cancellation. 
(when (gch) (and (g5i) (not(h5i)))) ;; Support.  Cancellation. 
(when (jch) (and (j5i) (not(k5i)))) ;; Support.  Cancellation. 
(when (lch) (and (l5i) (not(m5i)))) ;; Support.  Cancellation. 
(when (qch) (and (q5i) (not(r5i)))) ;; Support.  Cancellation. 
(when (tch) (and (t5i) (not(u5i)))) ;; Support.  Cancellation. 
(when (vch) (and (v5i) (not(x5i)))) ;; Support.  Cancellation. 
(when (ych) (and (y5i) (not(z5i)))) ;; Support.  Cancellation. 
(when (bdh) (and (b6i) (not(c6i)))) ;; Support.  Cancellation. 
(when (gdh) (and (g6i) (not(h6i)))) ;; Support.  Cancellation. 
(when (jdh) (and (j6i) (not(k6i)))) ;; Support.  Cancellation. 
(when (ldh) (and (l6i) (not(m6i)))) ;; Support.  Cancellation. 
(when (qdh) (and (q6i) (not(r6i)))) ;; Support.  Cancellation. 
(when (tdh) (and (t6i) (not(u6i)))) ;; Support.  Cancellation. 
(when (vdh) (and (v6i) (not(x6i)))) ;; Support.  Cancellation. 
(when (ydh) (and (y6i) (not(z6i)))) ;; Support.  Cancellation. 
(when (beh) (and (b7i) (not(c7i)))) ;; Support.  Cancellation. 
(when (geh) (and (g7i) (not(h7i)))) ;; Support.  Cancellation. 
(when (jeh) (and (j7i) (not(k7i)))) ;; Support.  Cancellation. 
(when (leh) (and (l7i) (not(m7i)))) ;; Support.  Cancellation. 
(when (qeh) (and (q7i) (not(r7i)))) ;; Support.  Cancellation. 
(when (teh) (and (t7i) (not(u7i)))) ;; Support.  Cancellation. 
(when (veh) (and (v7i) (not(x7i)))) ;; Support.  Cancellation. 
(when (yeh) (and (y7i) (not(z7i)))) ;; Support.  Cancellation. 
(when (bfh) (and (b8i) (not(c8i)))) ;; Support.  Cancellation. 
(when (gfh) (and (g8i) (not(h8i)))) ;; Support.  Cancellation. 
(when (jfh) (and (j8i) (not(k8i)))) ;; Support.  Cancellation. 
(when (lfh) (and (l8i) (not(m8i)))) ;; Support.  Cancellation. 
(when (qfh) (and (q8i) (not(r8i)))) ;; Support.  Cancellation. 
(when (tfh)  (t8i)) ;; Support. 
(when (vfh)  (v8i)) ;; Support. 
(when (yfh)  (y8i)) ;; Support. 
(when (bgh)  (b9i)) ;; Support. 
(when (ggh)  (g9i)) ;; Support. 
(when (jgh)  (j9i)) ;; Support. 
(when (lgh)  (l9i)) ;; Support. 
(when (qgh)  (q9i)) ;; Support. 
(when (tgh) (and (t9i) (not(u9i)))) ;; Support.  Cancellation. 
(when (vgh) (and (v9i) (not(x9i)))) ;; Support.  Cancellation. 
(when (ygh) (and (y9i) (not(z9i)))) ;; Support.  Cancellation. 
(when (bhh) (and (b0i) (not(c0i)))) ;; Support.  Cancellation. 
(when (lhh) (and (l0i) (not(m0i)))) ;; Support.  Cancellation. 
(when (qhh) (and (q0i) (not(r0i)))) ;; Support.  Cancellation. 
(when (thh)  (t0i)) ;; Support. 
(when (vhh)  (v0i)) ;; Support. 
(when (gih)  (gaj)) ;; Support. 
(when (lih)  (laj)) ;; Support. 
(when (qih)  (qaj)) ;; Support. 
(when (tih) (and (taj) (not(uaj)))) ;; Support.  Cancellation. 
(when (vih) (and (vaj) (not(xaj)))) ;; Support.  Cancellation. 
(when (yih) (and (yaj) (not(zaj)))) ;; Support.  Cancellation. 
(when (bjh) (and (bbj) (not(cbj)))) ;; Support.  Cancellation. 
(when (gjh) (and (gbj) (not(hbj)))) ;; Support.  Cancellation. 
(when (jjh) (and (jbj) (not(kbj)))) ;; Support.  Cancellation. 
(when (ljh) (and (lbj) (not(mbj)))) ;; Support.  Cancellation. 
(when (qjh) (and (qbj) (not(rbj)))) ;; Support.  Cancellation. 
(when (tjh) (and (tbj) (not(ubj)))) ;; Support.  Cancellation. 
(when (vjh) (and (vbj) (not(xbj)))) ;; Support.  Cancellation. 
(when (yjh) (and (ybj) (not(zbj)))) ;; Support.  Cancellation. 
(when (bkh) (and (bcj) (not(ccj)))) ;; Support.  Cancellation. 
(when (gkh) (and (gcj) (not(hcj)))) ;; Support.  Cancellation. 
(when (jkh) (and (jcj) (not(kcj)))) ;; Support.  Cancellation. 
(when (lkh) (and (lcj) (not(mcj)))) ;; Support.  Cancellation. 
(when (qkh) (and (qcj) (not(rcj)))) ;; Support.  Cancellation. 
(when (tkh)  (tcj)) ;; Support. 
(when (vkh)  (vcj)) ;; Support. 
(when (ykh)  (ycj)) ;; Support. 
(when (blh)  (bdj)) ;; Support. 
(when (glh)  (gdj)) ;; Support. 
(when (jlh)  (jdj)) ;; Support. 
(when (llh)  (ldj)) ;; Support. 
(when (qlh)  (qdj)) ;; Support. 
(when (tlh)  (tdj)) ;; Support. 
(when (vlh)  (vdj)) ;; Support. 
(when (ylh)  (ydj)) ;; Support. 
(when (bmh)  (bej)) ;; Support. 
(when (gmh)  (gej)) ;; Support. 
(when (jmh)  (jej)) ;; Support. 
(when (lmh)  (lej)) ;; Support. 
(when (qmh)  (qej)) ;; Support. 
(when (tmh) (and (tej) (not(uej)))) ;; Support.  Cancellation. 
(when (vmh) (and (vej) (not(xej)))) ;; Support.  Cancellation. 
(when (ymh)  (yej)) ;; Support. 
(when (bnh)  (bfj)) ;; Support. 
(when (gnh) (and (gfj) (not(hfj)))) ;; Support.  Cancellation. 
(when (jnh) (and (jfj) (not(kfj)))) ;; Support.  Cancellation. 
(when (lnh)  (lfj)) ;; Support. 
(when (qnh)  (qfj)) ;; Support. 
(when (rnh) (and (rfj) (not(tfj)))) ;; Support.  Cancellation. 
(when (unh) (and (ufj) (not(vfj)))) ;; Support.  Cancellation. 
(when (xnh) (and (xfj) (not(yfj)))) ;; Support.  Cancellation. 
(when (znh) (and (zfj) (not(bgj)))) ;; Support.  Cancellation. 
(when (coh)  (cgj)) ;; Support. 
(when (hoh)  (hgj)) ;; Support. 
(when (koh)  (kgj)) ;; Support. 
(when (moh)  (mgj)) ;; Support. 
(when (roh) (and (rgj) (not(tgj)))) ;; Support.  Cancellation. 
(when (uoh) (and (ugj) (not(vgj)))) ;; Support.  Cancellation. 
(when (xoh)  (xgj)) ;; Support. 
(when (zoh)  (zgj)) ;; Support. 
(when (cph)  (chj)) ;; Support. 
(when (hph)  (hhj)) ;; Support. 
(when (kph) (and (khj) (not(lhj)))) ;; Support.  Cancellation. 
(when (mph) (and (mhj) (not(qhj)))) ;; Support.  Cancellation. 
(when (rph)  (rhj)) ;; Support. 
(when (uph)  (uhj)) ;; Support. 
(when (xph)  (xhj)) ;; Support. 
(when (zph)  (zhj)) ;; Support. 
(when (cqh) (and (cij) (not(gij)))) ;; Support.  Cancellation. 
(when (hqh) (and (hij) (not(jij)))) ;; Support.  Cancellation. 
(when (kqh) (and (kij) (not(lij)))) ;; Support.  Cancellation. 
(when (mqh) (and (mij) (not(qij)))) ;; Support.  Cancellation. 
(when (rqh)  (rij)) ;; Support. 
(when (uqh)  (uij)) ;; Support. 
(when (xqh)  (xij)) ;; Support. 
(when (zqh)  (zij)) ;; Support. 
(when (csh)  (cjj)) ;; Support. 
(when (hsh)  (hjj)) ;; Support. 
(when (ksh)  (kjj)) ;; Support. 
(when (msh)  (mjj)) ;; Support. 
(when (rsh)  (rjj)) ;; Support. 
(when (ush)  (ujj)) ;; Support. 
(when (xsh)  (xjj)) ;; Support. 
(when (zsh)  (zjj)) ;; Support. 
(when (crh)  (ckj)) ;; Support. 
(when (hrh)  (hkj)) ;; Support. 
(when (krh)  (kkj)) ;; Support. 
(when (mrh)  (mkj)) ;; Support. 
(when (rrh) (and (rkj) (not(tkj)))) ;; Support.  Cancellation. 
(when (urh) (and (ukj) (not(vkj)))) ;; Support.  Cancellation. 
(when (xrh) (and (xkj) (not(ykj)))) ;; Support.  Cancellation. 
(when (zrh) (and (zkj) (not(blj)))) ;; Support.  Cancellation. 
(when (cth) (and (clj) (not(glj)))) ;; Support.  Cancellation. 
(when (hth) (and (hlj) (not(jlj)))) ;; Support.  Cancellation. 
(when (kth) (and (klj) (not(llj)))) ;; Support.  Cancellation. 
(when (mth) (and (mlj) (not(qlj)))) ;; Support.  Cancellation. 
(when (rth) (and (rlj) (not(tlj)))) ;; Support.  Cancellation. 
(when (uth) (and (ulj) (not(vlj)))) ;; Support.  Cancellation. 
(when (xth) (and (xlj) (not(ylj)))) ;; Support.  Cancellation. 
(when (zth) (and (zlj) (not(bmj)))) ;; Support.  Cancellation. 
(when (cuh) (and (cmj) (not(gmj)))) ;; Support.  Cancellation. 
(when (huh) (and (hmj) (not(jmj)))) ;; Support.  Cancellation. 
(when (kuh) (and (kmj) (not(lmj)))) ;; Support.  Cancellation. 
(when (muh) (and (mmj) (not(qmj)))) ;; Support.  Cancellation. 
(when (tqi) (and (tyg) (not(qnh)))) ;; Support.  Cancellation. 
(when (not(rqi))  (not(ryg))) ;; Cancellation. 
(when (vqi) (and (vyg) (not(uyg)))) ;; Support.  Cancellation. 
(when (yqi) (and (yyg) (not(xyg)))) ;; Support.  Cancellation. 
(when (bsi) (and (bzg) (not(zyg)))) ;; Support.  Cancellation. 
(when (gsi) (and (gzg) (not(czg)))) ;; Support.  Cancellation. 
(when (jsi) (and (jzg) (not(hzg)))) ;; Support.  Cancellation. 
(when (lsi) (and (lzg) (not(kzg)))) ;; Support.  Cancellation. 
(when (qsi) (and (qzg) (not(mzg)))) ;; Support.  Cancellation. 
(when (tsi) (and (tzg) (not(rzg)))) ;; Support.  Cancellation. 
(when (vsi) (and (vzg) (not(uzg)))) ;; Support.  Cancellation. 
(when (ysi) (and (yzg) (not(xzg)))) ;; Support.  Cancellation. 
(when (bri) (and (b1g) (not(zzg)))) ;; Support.  Cancellation. 
(when (gri) (and (g1g) (not(c1g)))) ;; Support.  Cancellation. 
(when (jri) (and (j1g) (not(h1g)))) ;; Support.  Cancellation. 
(when (lri) (and (l1g) (not(k1g)))) ;; Support.  Cancellation. 
(when (qri) (and (q1g) (not(m1g)))) ;; Support.  Cancellation. 
(when (tri) (and (t1g) (not(r1g)))) ;; Support.  Cancellation. 
(when (vri) (and (v1g) (not(u1g)))) ;; Support.  Cancellation. 
(when (yri) (and (y1g) (not(x1g)))) ;; Support.  Cancellation. 
(when (bti) (and (b2g) (not(z1g)))) ;; Support.  Cancellation. 
(when (gti) (and (g2g) (not(c2g)))) ;; Support.  Cancellation. 
(when (jti) (and (j2g) (not(h2g)))) ;; Support.  Cancellation. 
(when (lti) (and (l2g) (not(k2g)))) ;; Support.  Cancellation. 
(when (qti) (and (q2g) (not(m2g)))) ;; Support.  Cancellation. 
(when (tti) (and (t2g) (not(r2g)))) ;; Support.  Cancellation. 
(when (vti) (and (v2g) (not(u2g)))) ;; Support.  Cancellation. 
(when (yti) (and (y2g) (not(x2g)))) ;; Support.  Cancellation. 
(when (bui) (and (b3g) (not(z2g)))) ;; Support.  Cancellation. 
(when (gui) (and (g3g) (not(c3g)))) ;; Support.  Cancellation. 
(when (jui) (and (j3g) (not(h3g)))) ;; Support.  Cancellation. 
(when (lui) (and (l3g) (not(k3g)))) ;; Support.  Cancellation. 
(when (qui) (and (q3g) (not(m3g)))) ;; Support.  Cancellation. 
(when (tui) (and (t3g) (not(r3g)))) ;; Support.  Cancellation. 
(when (vui) (and (v3g) (not(u3g)))) ;; Support.  Cancellation. 
(when (yui) (and (y3g) (not(x3g)))) ;; Support.  Cancellation. 
(when (bvi) (and (b4g) (not(z3g)))) ;; Support.  Cancellation. 
(when (gvi) (and (g4g) (not(c4g)))) ;; Support.  Cancellation. 
(when (jvi) (and (j4g) (not(h4g)))) ;; Support.  Cancellation. 
(when (lvi) (and (l4g) (not(k4g)))) ;; Support.  Cancellation. 
(when (qvi) (and (q4g) (not(m4g)))) ;; Support.  Cancellation. 
(when (tvi) (and (t4g) (not(r4g)))) ;; Support.  Cancellation. 
(when (vvi) (and (v4g) (not(u4g)))) ;; Support.  Cancellation. 
(when (yvi) (and (y4g) (not(x4g)))) ;; Support.  Cancellation. 
(when (bwi) (and (b5g) (not(z4g)))) ;; Support.  Cancellation. 
(when (gwi) (and (g5g) (not(c5g)))) ;; Support.  Cancellation. 
(when (jwi) (and (j5g) (not(h5g)))) ;; Support.  Cancellation. 
(when (lwi) (and (l5g) (not(k5g)))) ;; Support.  Cancellation. 
(when (qwi) (and (q5g) (not(m5g)))) ;; Support.  Cancellation. 
(when (twi) (and (t5g) (not(r5g)))) ;; Support.  Cancellation. 
(when (vwi) (and (v5g) (not(u5g)))) ;; Support.  Cancellation. 
(when (ywi) (and (y5g) (not(x5g)))) ;; Support.  Cancellation. 
(when (bxi) (and (b6g) (not(z5g)))) ;; Support.  Cancellation. 
(when (gxi) (and (g6g) (not(c6g)))) ;; Support.  Cancellation. 
(when (jxi) (and (j6g) (not(h6g)))) ;; Support.  Cancellation. 
(when (lxi) (and (l6g) (not(k6g)))) ;; Support.  Cancellation. 
(when (qxi) (and (q6g) (not(m6g)))) ;; Support.  Cancellation. 
(when (txi) (and (t6g) (not(r6g)))) ;; Support.  Cancellation. 
(when (vxi) (and (v6g) (not(u6g)))) ;; Support.  Cancellation. 
(when (yxi) (and (y6g) (not(x6g)))) ;; Support.  Cancellation. 
(when (byi) (and (b7g) (not(z6g)))) ;; Support.  Cancellation. 
(when (gyi) (and (g7g) (not(c7g)))) ;; Support.  Cancellation. 
(when (jyi) (and (j7g) (not(h7g)))) ;; Support.  Cancellation. 
(when (lyi) (and (l7g) (not(k7g)))) ;; Support.  Cancellation. 
(when (qyi) (and (q7g) (not(m7g)))) ;; Support.  Cancellation. 
(when (tyi) (and (t7g) (not(r7g)))) ;; Support.  Cancellation. 
(when (vyi) (and (v7g) (not(u7g)))) ;; Support.  Cancellation. 
(when (yyi) (and (y7g) (not(x7g)))) ;; Support.  Cancellation. 
(when (bzi) (and (b8g) (not(z7g)))) ;; Support.  Cancellation. 
(when (gzi) (and (g8g) (not(c8g)))) ;; Support.  Cancellation. 
(when (jzi) (and (j8g) (not(h8g)))) ;; Support.  Cancellation. 
(when (lzi) (and (l8g) (not(k8g)))) ;; Support.  Cancellation. 
(when (qzi) (and (q8g) (not(m8g)))) ;; Support.  Cancellation. 
(when (tzi) (and (t8g) (not(r8g)))) ;; Support.  Cancellation. 
(when (vzi) (and (v8g) (not(u8g)))) ;; Support.  Cancellation. 
(when (yzi) (and (y8g) (not(x8g)))) ;; Support.  Cancellation. 
(when (b1i) (and (b9g) (not(z8g)))) ;; Support.  Cancellation. 
(when (g1i) (and (g9g) (not(c9g)))) ;; Support.  Cancellation. 
(when (j1i) (and (j9g) (not(h9g)))) ;; Support.  Cancellation. 
(when (l1i) (and (l9g) (not(k9g)))) ;; Support.  Cancellation. 
(when (q1i) (and (q9g) (not(m9g)))) ;; Support.  Cancellation. 
(when (t1i) (and (t9g) (not(r9g)))) ;; Support.  Cancellation. 
(when (v1i) (and (v9g) (not(u9g)))) ;; Support.  Cancellation. 
(when (y1i) (and (y9g) (not(x9g)))) ;; Support.  Cancellation. 
(when (b2i) (and (b0g) (not(z9g)))) ;; Support.  Cancellation. 
(when (g2i) (and (g0g) (not(c0g)))) ;; Support.  Cancellation. 
(when (j2i) (and (j0g) (not(h0g)))) ;; Support.  Cancellation. 
(when (l2i) (and (l0g) (not(k0g)))) ;; Support.  Cancellation. 
(when (q2i) (and (q0g) (not(m0g)))) ;; Support.  Cancellation. 
(when (t2i) (and (t0g) (not(r0g)))) ;; Support.  Cancellation. 
(when (v2i) (and (v0g) (not(u0g)))) ;; Support.  Cancellation. 
(when (y2i) (and (y0g) (not(x0g)))) ;; Support.  Cancellation. 
(when (b3i) (and (bah) (not(z0g)))) ;; Support.  Cancellation. 
(when (g3i) (and (gah) (not(cah)))) ;; Support.  Cancellation. 
(when (j3i) (and (jah) (not(hah)))) ;; Support.  Cancellation. 
(when (l3i) (and (lah) (not(kah)))) ;; Support.  Cancellation. 
(when (q3i)  (qah)) ;; Support. 
(when (r3i)  (rah)) ;; Support. 
(when (u3i) (and (uah) (not(tah)))) ;; Support.  Cancellation. 
(when (x3i) (and (xah) (not(vah)))) ;; Support.  Cancellation. 
(when (z3i) (and (zah) (not(yah)))) ;; Support.  Cancellation. 
(when (c4i) (and (cbh) (not(bbh)))) ;; Support.  Cancellation. 
(when (h4i) (and (hbh) (not(gbh)))) ;; Support.  Cancellation. 
(when (m4i) (and (mbh) (not(lbh)))) ;; Support.  Cancellation. 
(when (r4i) (and (rbh) (not(qbh)))) ;; Support.  Cancellation. 
(when (u4i) (and (ubh) (not(tbh)))) ;; Support.  Cancellation. 
(when (x4i) (and (xbh) (not(vbh)))) ;; Support.  Cancellation. 
(when (z4i)  (zbh)) ;; Support. 
(when (c5i) (and (cch) (not(bch)))) ;; Support.  Cancellation. 
(when (h5i) (and (hch) (not(gch)))) ;; Support.  Cancellation. 
(when (k5i) (and (kch) (not(jch)))) ;; Support.  Cancellation. 
(when (m5i) (and (mch) (not(lch)))) ;; Support.  Cancellation. 
(when (r5i) (and (rch) (not(qch)))) ;; Support.  Cancellation. 
(when (u5i) (and (uch) (not(tch)))) ;; Support.  Cancellation. 
(when (x5i) (and (xch) (not(vch)))) ;; Support.  Cancellation. 
(when (z5i) (and (zch) (not(ych)))) ;; Support.  Cancellation. 
(when (c6i) (and (cdh) (not(bdh)))) ;; Support.  Cancellation. 
(when (h6i) (and (hdh) (not(gdh)))) ;; Support.  Cancellation. 
(when (k6i) (and (kdh) (not(jdh)))) ;; Support.  Cancellation. 
(when (m6i) (and (mdh) (not(ldh)))) ;; Support.  Cancellation. 
(when (r6i) (and (rdh) (not(qdh)))) ;; Support.  Cancellation. 
(when (u6i) (and (udh) (not(tdh)))) ;; Support.  Cancellation. 
(when (x6i) (and (xdh) (not(vdh)))) ;; Support.  Cancellation. 
(when (z6i) (and (zdh) (not(ydh)))) ;; Support.  Cancellation. 
(when (c7i) (and (ceh) (not(beh)))) ;; Support.  Cancellation. 
(when (h7i) (and (heh) (not(geh)))) ;; Support.  Cancellation. 
(when (k7i) (and (keh) (not(jeh)))) ;; Support.  Cancellation. 
(when (m7i) (and (meh) (not(leh)))) ;; Support.  Cancellation. 
(when (r7i) (and (reh) (not(qeh)))) ;; Support.  Cancellation. 
(when (u7i) (and (ueh) (not(teh)))) ;; Support.  Cancellation. 
(when (x7i) (and (xeh) (not(veh)))) ;; Support.  Cancellation. 
(when (z7i) (and (zeh) (not(yeh)))) ;; Support.  Cancellation. 
(when (c8i) (and (cfh) (not(bfh)))) ;; Support.  Cancellation. 
(when (h8i) (and (hfh) (not(gfh)))) ;; Support.  Cancellation. 
(when (k8i) (and (kfh) (not(jfh)))) ;; Support.  Cancellation. 
(when (m8i) (and (mfh) (not(lfh)))) ;; Support.  Cancellation. 
(when (r8i) (and (rfh) (not(qfh)))) ;; Support.  Cancellation. 
(when (u9i) (and (ugh) (not(tgh)))) ;; Support.  Cancellation. 
(when (x9i) (and (xgh) (not(vgh)))) ;; Support.  Cancellation. 
(when (z9i) (and (zgh) (not(ygh)))) ;; Support.  Cancellation. 
(when (c0i) (and (chh) (not(bhh)))) ;; Support.  Cancellation. 
(when (h0i)  (hhh)) ;; Support. 
(when (k0i)  (khh)) ;; Support. 
(when (m0i) (and (mhh) (not(lhh)))) ;; Support.  Cancellation. 
(when (r0i) (and (rhh) (not(qhh)))) ;; Support.  Cancellation. 
(when (uaj) (and (uih) (not(tih)))) ;; Support.  Cancellation. 
(when (xaj) (and (xih) (not(vih)))) ;; Support.  Cancellation. 
(when (zaj) (and (zih) (not(yih)))) ;; Support.  Cancellation. 
(when (cbj) (and (cjh) (not(bjh)))) ;; Support.  Cancellation. 
(when (hbj) (and (hjh) (not(gjh)))) ;; Support.  Cancellation. 
(when (kbj) (and (kjh) (not(jjh)))) ;; Support.  Cancellation. 
(when (mbj) (and (mjh) (not(ljh)))) ;; Support.  Cancellation. 
(when (rbj) (and (rjh) (not(qjh)))) ;; Support.  Cancellation. 
(when (ubj) (and (ujh) (not(tjh)))) ;; Support.  Cancellation. 
(when (xbj) (and (xjh) (not(vjh)))) ;; Support.  Cancellation. 
(when (zbj) (and (zjh) (not(yjh)))) ;; Support.  Cancellation. 
(when (ccj) (and (ckh) (not(bkh)))) ;; Support.  Cancellation. 
(when (hcj) (and (hkh) (not(gkh)))) ;; Support.  Cancellation. 
(when (kcj) (and (kkh) (not(jkh)))) ;; Support.  Cancellation. 
(when (mcj) (and (mkh) (not(lkh)))) ;; Support.  Cancellation. 
(when (rcj) (and (rkh) (not(qkh)))) ;; Support.  Cancellation. 
(when (uej) (and (umh) (not(tmh)))) ;; Support.  Cancellation. 
(when (xej) (and (xmh) (not(vmh)))) ;; Support.  Cancellation. 
(when (hfj) (and (hnh) (not(gnh)))) ;; Support.  Cancellation. 
(when (kfj) (and (knh) (not(jnh)))) ;; Support.  Cancellation. 
(when (tfj) (and (tnh) (not(rnh)))) ;; Support.  Cancellation. 
(when (vfj) (and (vnh) (not(unh)))) ;; Support.  Cancellation. 
(when (yfj) (and (ynh) (not(xnh)))) ;; Support.  Cancellation. 
(when (bgj) (and (boh) (not(znh)))) ;; Support.  Cancellation. 
(when (tgj) (and (toh) (not(roh)))) ;; Support.  Cancellation. 
(when (vgj) (and (voh) (not(uoh)))) ;; Support.  Cancellation. 
(when (lhj) (and (lph) (not(kph)))) ;; Support.  Cancellation. 
(when (qhj) (and (qph) (not(mph)))) ;; Support.  Cancellation. 
(when (gij) (and (gqh) (not(cqh)))) ;; Support.  Cancellation. 
(when (jij) (and (jqh) (not(hqh)))) ;; Support.  Cancellation. 
(when (lij) (and (lqh) (not(kqh)))) ;; Support.  Cancellation. 
(when (qij) (and (qqh) (not(mqh)))) ;; Support.  Cancellation. 
(when (tkj) (and (trh) (not(rrh)))) ;; Support.  Cancellation. 
(when (vkj) (and (vrh) (not(urh)))) ;; Support.  Cancellation. 
(when (ykj) (and (yrh) (not(xrh)))) ;; Support.  Cancellation. 
(when (blj) (and (bth) (not(zrh)))) ;; Support.  Cancellation. 
(when (glj) (and (gth) (not(cth)))) ;; Support.  Cancellation. 
(when (jlj) (and (jth) (not(hth)))) ;; Support.  Cancellation. 
(when (llj) (and (lth) (not(kth)))) ;; Support.  Cancellation. 
(when (qlj) (and (qth) (not(mth)))) ;; Support.  Cancellation. 
(when (tlj) (and (tth) (not(rth)))) ;; Support.  Cancellation. 
(when (vlj) (and (vth) (not(uth)))) ;; Support.  Cancellation. 
(when (ylj) (and (yth) (not(xth)))) ;; Support.  Cancellation. 
(when (bmj) (and (buh) (not(zth)))) ;; Support.  Cancellation. 
(when (gmj) (and (guh) (not(cuh)))) ;; Support.  Cancellation. 
(when (jmj) (and (juh) (not(huh)))) ;; Support.  Cancellation. 
(when (lmj) (and (luh) (not(kuh)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L5_L6
:parameters ()
:precondition (and (q7e))

:effect (and  (jei) (zhh)
(when (qqi) (and (quh) (not(muh)))) ;; Support.  Cancellation. 
(when (ryg) (and (ruh) (not(r7h)))) ;; Support.  Cancellation. 
(when (not(tyg))  (not(tuh))) ;; Cancellation. 
(when (uyg) (and (uuh) (not(vuh)))) ;; Support.  Cancellation. 
(when (xyg) (and (xuh) (not(yuh)))) ;; Support.  Cancellation. 
(when (zyg) (and (zuh) (not(bvh)))) ;; Support.  Cancellation. 
(when (czg) (and (cvh) (not(gvh)))) ;; Support.  Cancellation. 
(when (hzg) (and (hvh) (not(jvh)))) ;; Support.  Cancellation. 
(when (kzg) (and (kvh) (not(lvh)))) ;; Support.  Cancellation. 
(when (mzg) (and (mvh) (not(qvh)))) ;; Support.  Cancellation. 
(when (rzg) (and (rvh) (not(tvh)))) ;; Support.  Cancellation. 
(when (uzg) (and (uvh) (not(vvh)))) ;; Support.  Cancellation. 
(when (xzg) (and (xvh) (not(yvh)))) ;; Support.  Cancellation. 
(when (zzg) (and (zvh) (not(bwh)))) ;; Support.  Cancellation. 
(when (c1g) (and (cwh) (not(gwh)))) ;; Support.  Cancellation. 
(when (h1g) (and (hwh) (not(jwh)))) ;; Support.  Cancellation. 
(when (k1g) (and (kwh) (not(lwh)))) ;; Support.  Cancellation. 
(when (m1g) (and (mwh) (not(qwh)))) ;; Support.  Cancellation. 
(when (r1g) (and (rwh) (not(twh)))) ;; Support.  Cancellation. 
(when (u1g) (and (uwh) (not(vwh)))) ;; Support.  Cancellation. 
(when (x1g) (and (xwh) (not(ywh)))) ;; Support.  Cancellation. 
(when (z1g) (and (zwh) (not(bxh)))) ;; Support.  Cancellation. 
(when (c2g) (and (cxh) (not(gxh)))) ;; Support.  Cancellation. 
(when (h2g) (and (hxh) (not(jxh)))) ;; Support.  Cancellation. 
(when (k2g) (and (kxh) (not(lxh)))) ;; Support.  Cancellation. 
(when (m2g) (and (mxh) (not(qxh)))) ;; Support.  Cancellation. 
(when (r2g) (and (rxh) (not(txh)))) ;; Support.  Cancellation. 
(when (u2g) (and (uxh) (not(vxh)))) ;; Support.  Cancellation. 
(when (x2g) (and (xxh) (not(yxh)))) ;; Support.  Cancellation. 
(when (z2g) (and (zxh) (not(byh)))) ;; Support.  Cancellation. 
(when (c3g) (and (cyh) (not(gyh)))) ;; Support.  Cancellation. 
(when (h3g) (and (hyh) (not(jyh)))) ;; Support.  Cancellation. 
(when (k3g) (and (kyh) (not(lyh)))) ;; Support.  Cancellation. 
(when (m3g) (and (myh) (not(qyh)))) ;; Support.  Cancellation. 
(when (r3g) (and (ryh) (not(tyh)))) ;; Support.  Cancellation. 
(when (u3g) (and (uyh) (not(vyh)))) ;; Support.  Cancellation. 
(when (x3g) (and (xyh) (not(yyh)))) ;; Support.  Cancellation. 
(when (z3g) (and (zyh) (not(bzh)))) ;; Support.  Cancellation. 
(when (c4g) (and (czh) (not(gzh)))) ;; Support.  Cancellation. 
(when (h4g) (and (hzh) (not(jzh)))) ;; Support.  Cancellation. 
(when (k4g) (and (kzh) (not(lzh)))) ;; Support.  Cancellation. 
(when (m4g) (and (mzh) (not(qzh)))) ;; Support.  Cancellation. 
(when (r4g) (and (rzh) (not(tzh)))) ;; Support.  Cancellation. 
(when (u4g) (and (uzh) (not(vzh)))) ;; Support.  Cancellation. 
(when (x4g) (and (xzh) (not(yzh)))) ;; Support.  Cancellation. 
(when (z4g) (and (zzh) (not(b1h)))) ;; Support.  Cancellation. 
(when (c5g) (and (c1h) (not(g1h)))) ;; Support.  Cancellation. 
(when (h5g) (and (h1h) (not(j1h)))) ;; Support.  Cancellation. 
(when (k5g) (and (k1h) (not(l1h)))) ;; Support.  Cancellation. 
(when (m5g) (and (m1h) (not(q1h)))) ;; Support.  Cancellation. 
(when (r5g) (and (r1h) (not(t1h)))) ;; Support.  Cancellation. 
(when (u5g) (and (u1h) (not(v1h)))) ;; Support.  Cancellation. 
(when (x5g) (and (x1h) (not(y1h)))) ;; Support.  Cancellation. 
(when (z5g) (and (z1h) (not(b2h)))) ;; Support.  Cancellation. 
(when (c6g) (and (c2h) (not(g2h)))) ;; Support.  Cancellation. 
(when (h6g) (and (h2h) (not(j2h)))) ;; Support.  Cancellation. 
(when (k6g) (and (k2h) (not(l2h)))) ;; Support.  Cancellation. 
(when (m6g) (and (m2h) (not(q2h)))) ;; Support.  Cancellation. 
(when (r6g) (and (r2h) (not(t2h)))) ;; Support.  Cancellation. 
(when (u6g) (and (u2h) (not(v2h)))) ;; Support.  Cancellation. 
(when (x6g) (and (x2h) (not(y2h)))) ;; Support.  Cancellation. 
(when (z6g) (and (z2h) (not(b3h)))) ;; Support.  Cancellation. 
(when (c7g) (and (c3h) (not(g3h)))) ;; Support.  Cancellation. 
(when (h7g) (and (h3h) (not(j3h)))) ;; Support.  Cancellation. 
(when (k7g) (and (k3h) (not(l3h)))) ;; Support.  Cancellation. 
(when (m7g) (and (m3h) (not(q3h)))) ;; Support.  Cancellation. 
(when (r7g) (and (r3h) (not(t3h)))) ;; Support.  Cancellation. 
(when (u7g) (and (u3h) (not(v3h)))) ;; Support.  Cancellation. 
(when (x7g) (and (x3h) (not(y3h)))) ;; Support.  Cancellation. 
(when (z7g) (and (z3h) (not(b4h)))) ;; Support.  Cancellation. 
(when (c8g) (and (c4h) (not(g4h)))) ;; Support.  Cancellation. 
(when (h8g) (and (h4h) (not(j4h)))) ;; Support.  Cancellation. 
(when (k8g) (and (k4h) (not(l4h)))) ;; Support.  Cancellation. 
(when (m8g) (and (m4h) (not(q4h)))) ;; Support.  Cancellation. 
(when (r8g) (and (r4h) (not(t4h)))) ;; Support.  Cancellation. 
(when (u8g) (and (u4h) (not(v4h)))) ;; Support.  Cancellation. 
(when (x8g) (and (x4h) (not(y4h)))) ;; Support.  Cancellation. 
(when (z8g) (and (z4h) (not(b5h)))) ;; Support.  Cancellation. 
(when (c9g) (and (c5h) (not(g5h)))) ;; Support.  Cancellation. 
(when (h9g) (and (h5h) (not(j5h)))) ;; Support.  Cancellation. 
(when (k9g) (and (k5h) (not(l5h)))) ;; Support.  Cancellation. 
(when (m9g) (and (m5h) (not(q5h)))) ;; Support.  Cancellation. 
(when (r9g) (and (r5h) (not(t5h)))) ;; Support.  Cancellation. 
(when (u9g) (and (u5h) (not(v5h)))) ;; Support.  Cancellation. 
(when (x9g) (and (x5h) (not(y5h)))) ;; Support.  Cancellation. 
(when (z9g) (and (z5h) (not(b6h)))) ;; Support.  Cancellation. 
(when (c0g) (and (c6h) (not(g6h)))) ;; Support.  Cancellation. 
(when (h0g) (and (h6h) (not(j6h)))) ;; Support.  Cancellation. 
(when (k0g) (and (k6h) (not(l6h)))) ;; Support.  Cancellation. 
(when (m0g) (and (m6h) (not(q6h)))) ;; Support.  Cancellation. 
(when (r0g) (and (r6h) (not(t6h)))) ;; Support.  Cancellation. 
(when (u0g) (and (u6h) (not(v6h)))) ;; Support.  Cancellation. 
(when (x0g) (and (x6h) (not(y6h)))) ;; Support.  Cancellation. 
(when (z0g) (and (z6h) (not(b7h)))) ;; Support.  Cancellation. 
(when (cah) (and (c7h) (not(g7h)))) ;; Support.  Cancellation. 
(when (hah) (and (h7h) (not(j7h)))) ;; Support.  Cancellation. 
(when (kah) (and (k7h) (not(l7h)))) ;; Support.  Cancellation. 
(when (tah) (and (t7h) (not(u7h)))) ;; Support.  Cancellation. 
(when (vah) (and (v7h) (not(x7h)))) ;; Support.  Cancellation. 
(when (yah) (and (y7h) (not(z7h)))) ;; Support.  Cancellation. 
(when (bbh) (and (b8h) (not(c8h)))) ;; Support.  Cancellation. 
(when (gbh) (and (g8h) (not(h8h)))) ;; Support.  Cancellation. 
(when (lbh) (and (l8h) (not(m8h)))) ;; Support.  Cancellation. 
(when (qbh) (and (q8h) (not(r8h)))) ;; Support.  Cancellation. 
(when (tbh) (and (t8h) (not(u8h)))) ;; Support.  Cancellation. 
(when (vbh) (and (v8h) (not(x8h)))) ;; Support.  Cancellation. 
(when (bch) (and (b9h) (not(c9h)))) ;; Support.  Cancellation. 
(when (gch) (and (g9h) (not(h9h)))) ;; Support.  Cancellation. 
(when (jch) (and (j9h) (not(k9h)))) ;; Support.  Cancellation. 
(when (lch) (and (l9h) (not(m9h)))) ;; Support.  Cancellation. 
(when (qch) (and (q9h) (not(r9h)))) ;; Support.  Cancellation. 
(when (tch) (and (t9h) (not(u9h)))) ;; Support.  Cancellation. 
(when (vch) (and (v9h) (not(x9h)))) ;; Support.  Cancellation. 
(when (ych) (and (y9h) (not(z9h)))) ;; Support.  Cancellation. 
(when (bdh) (and (b0h) (not(c0h)))) ;; Support.  Cancellation. 
(when (gdh) (and (g0h) (not(h0h)))) ;; Support.  Cancellation. 
(when (jdh) (and (j0h) (not(k0h)))) ;; Support.  Cancellation. 
(when (ldh) (and (l0h) (not(m0h)))) ;; Support.  Cancellation. 
(when (qdh) (and (q0h) (not(r0h)))) ;; Support.  Cancellation. 
(when (tdh) (and (t0h) (not(u0h)))) ;; Support.  Cancellation. 
(when (vdh) (and (v0h) (not(x0h)))) ;; Support.  Cancellation. 
(when (ydh) (and (y0h) (not(z0h)))) ;; Support.  Cancellation. 
(when (beh) (and (bai) (not(cai)))) ;; Support.  Cancellation. 
(when (geh) (and (gai) (not(hai)))) ;; Support.  Cancellation. 
(when (jeh) (and (jai) (not(kai)))) ;; Support.  Cancellation. 
(when (leh) (and (lai) (not(mai)))) ;; Support.  Cancellation. 
(when (qeh) (and (qai) (not(rai)))) ;; Support.  Cancellation. 
(when (teh) (and (tai) (not(uai)))) ;; Support.  Cancellation. 
(when (veh) (and (vai) (not(xai)))) ;; Support.  Cancellation. 
(when (yeh) (and (yai) (not(zai)))) ;; Support.  Cancellation. 
(when (bfh) (and (bbi) (not(cbi)))) ;; Support.  Cancellation. 
(when (gfh) (and (gbi) (not(hbi)))) ;; Support.  Cancellation. 
(when (jfh) (and (jbi) (not(kbi)))) ;; Support.  Cancellation. 
(when (lfh) (and (lbi) (not(mbi)))) ;; Support.  Cancellation. 
(when (qfh) (and (qbi) (not(rbi)))) ;; Support.  Cancellation. 
(when (tfh) (and (tbi) (not(ubi)))) ;; Support.  Cancellation. 
(when (vfh) (and (vbi) (not(xbi)))) ;; Support.  Cancellation. 
(when (yfh)  (ybi)) ;; Support. 
(when (bgh)  (bci)) ;; Support. 
(when (ggh) (and (gci) (not(hci)))) ;; Support.  Cancellation. 
(when (jgh) (and (jci) (not(kci)))) ;; Support.  Cancellation. 
(when (lgh)  (lci)) ;; Support. 
(when (qgh)  (qci)) ;; Support. 
(when (tgh) (and (tci) (not(uci)))) ;; Support.  Cancellation. 
(when (vgh) (and (vci) (not(xci)))) ;; Support.  Cancellation. 
(when (ygh) (and (yci) (not(zci)))) ;; Support.  Cancellation. 
(when (bhh) (and (bdi) (not(cdi)))) ;; Support.  Cancellation. 
(when (lhh) (and (ldi) (not(mdi)))) ;; Support.  Cancellation. 
(when (qhh) (and (qdi) (not(rdi)))) ;; Support.  Cancellation. 
(when (thh) (and (tdi) (not(udi)))) ;; Support.  Cancellation. 
(when (vhh)  (vdi)) ;; Support. 
(when (gih) (and (gei) (not(hei)))) ;; Support.  Cancellation. 
(when (lih) (and (lei) (not(mei)))) ;; Support.  Cancellation. 
(when (qih)  (qei)) ;; Support. 
(when (tih) (and (tei) (not(uei)))) ;; Support.  Cancellation. 
(when (vih) (and (vei) (not(xei)))) ;; Support.  Cancellation. 
(when (yih) (and (yei) (not(zei)))) ;; Support.  Cancellation. 
(when (bjh) (and (bfi) (not(cfi)))) ;; Support.  Cancellation. 
(when (gjh) (and (gfi) (not(hfi)))) ;; Support.  Cancellation. 
(when (jjh) (and (jfi) (not(kfi)))) ;; Support.  Cancellation. 
(when (ljh) (and (lfi) (not(mfi)))) ;; Support.  Cancellation. 
(when (qjh) (and (qfi) (not(rfi)))) ;; Support.  Cancellation. 
(when (tjh) (and (tfi) (not(ufi)))) ;; Support.  Cancellation. 
(when (vjh) (and (vfi) (not(xfi)))) ;; Support.  Cancellation. 
(when (yjh) (and (yfi) (not(zfi)))) ;; Support.  Cancellation. 
(when (bkh) (and (bgi) (not(cgi)))) ;; Support.  Cancellation. 
(when (gkh) (and (ggi) (not(hgi)))) ;; Support.  Cancellation. 
(when (jkh) (and (jgi) (not(kgi)))) ;; Support.  Cancellation. 
(when (lkh) (and (lgi) (not(mgi)))) ;; Support.  Cancellation. 
(when (qkh) (and (qgi) (not(rgi)))) ;; Support.  Cancellation. 
(when (tkh)  (tgi)) ;; Support. 
(when (vkh)  (vgi)) ;; Support. 
(when (ykh)  (ygi)) ;; Support. 
(when (blh)  (bhi)) ;; Support. 
(when (glh)  (ghi)) ;; Support. 
(when (jlh)  (jhi)) ;; Support. 
(when (llh)  (lhi)) ;; Support. 
(when (qlh)  (qhi)) ;; Support. 
(when (tlh) (and (thi) (not(uhi)))) ;; Support.  Cancellation. 
(when (vlh) (and (vhi) (not(xhi)))) ;; Support.  Cancellation. 
(when (ylh) (and (yhi) (not(zhi)))) ;; Support.  Cancellation. 
(when (bmh) (and (bii) (not(cii)))) ;; Support.  Cancellation. 
(when (gmh) (and (gii) (not(hii)))) ;; Support.  Cancellation. 
(when (jmh) (and (jii) (not(kii)))) ;; Support.  Cancellation. 
(when (lmh) (and (lii) (not(mii)))) ;; Support.  Cancellation. 
(when (qmh) (and (qii) (not(rii)))) ;; Support.  Cancellation. 
(when (tmh) (and (tii) (not(uii)))) ;; Support.  Cancellation. 
(when (vmh) (and (vii) (not(xii)))) ;; Support.  Cancellation. 
(when (ymh) (and (yii) (not(zii)))) ;; Support.  Cancellation. 
(when (bnh) (and (bji) (not(cji)))) ;; Support.  Cancellation. 
(when (gnh) (and (gji) (not(hji)))) ;; Support.  Cancellation. 
(when (jnh) (and (jji) (not(kji)))) ;; Support.  Cancellation. 
(when (lnh)  (lji)) ;; Support. 
(when (qnh)  (qji)) ;; Support. 
(when (rnh) (and (rji) (not(tji)))) ;; Support.  Cancellation. 
(when (unh) (and (uji) (not(vji)))) ;; Support.  Cancellation. 
(when (xnh) (and (xji) (not(yji)))) ;; Support.  Cancellation. 
(when (znh) (and (zji) (not(bki)))) ;; Support.  Cancellation. 
(when (coh) (and (cki) (not(gki)))) ;; Support.  Cancellation. 
(when (hoh)  (hki)) ;; Support. 
(when (koh)  (kki)) ;; Support. 
(when (moh) (and (mki) (not(qki)))) ;; Support.  Cancellation. 
(when (roh) (and (rki) (not(tki)))) ;; Support.  Cancellation. 
(when (uoh) (and (uki) (not(vki)))) ;; Support.  Cancellation. 
(when (xoh) (and (xki) (not(yki)))) ;; Support.  Cancellation. 
(when (zoh) (and (zki) (not(bli)))) ;; Support.  Cancellation. 
(when (cph)  (cli)) ;; Support. 
(when (hph)  (hli)) ;; Support. 
(when (kph) (and (kli) (not(lli)))) ;; Support.  Cancellation. 
(when (mph) (and (mli) (not(qli)))) ;; Support.  Cancellation. 
(when (rph)  (rli)) ;; Support. 
(when (uph) (and (uli) (not(vli)))) ;; Support.  Cancellation. 
(when (xph) (and (xli) (not(yli)))) ;; Support.  Cancellation. 
(when (zph)  (zli)) ;; Support. 
(when (cqh) (and (cmi) (not(gmi)))) ;; Support.  Cancellation. 
(when (hqh) (and (hmi) (not(jmi)))) ;; Support.  Cancellation. 
(when (kqh) (and (kmi) (not(lmi)))) ;; Support.  Cancellation. 
(when (mqh) (and (mmi) (not(qmi)))) ;; Support.  Cancellation. 
(when (rqh) (and (rmi) (not(tmi)))) ;; Support.  Cancellation. 
(when (uqh)  (umi)) ;; Support. 
(when (xqh)  (xmi)) ;; Support. 
(when (zqh) (and (zmi) (not(bni)))) ;; Support.  Cancellation. 
(when (csh) (and (cni) (not(gni)))) ;; Support.  Cancellation. 
(when (hsh)  (hni)) ;; Support. 
(when (ksh) (and (kni) (not(lni)))) ;; Support.  Cancellation. 
(when (msh)  (mni)) ;; Support. 
(when (rsh) (and (rni) (not(tni)))) ;; Support.  Cancellation. 
(when (ush) (and (uni) (not(vni)))) ;; Support.  Cancellation. 
(when (xsh)  (xni)) ;; Support. 
(when (zsh)  (zni)) ;; Support. 
(when (crh)  (coi)) ;; Support. 
(when (hrh) (and (hoi) (not(joi)))) ;; Support.  Cancellation. 
(when (krh)  (koi)) ;; Support. 
(when (mrh) (and (moi) (not(qoi)))) ;; Support.  Cancellation. 
(when (rrh) (and (roi) (not(toi)))) ;; Support.  Cancellation. 
(when (urh) (and (uoi) (not(voi)))) ;; Support.  Cancellation. 
(when (xrh) (and (xoi) (not(yoi)))) ;; Support.  Cancellation. 
(when (zrh) (and (zoi) (not(bpi)))) ;; Support.  Cancellation. 
(when (cth) (and (cpi) (not(gpi)))) ;; Support.  Cancellation. 
(when (hth) (and (hpi) (not(jpi)))) ;; Support.  Cancellation. 
(when (kth) (and (kpi) (not(lpi)))) ;; Support.  Cancellation. 
(when (mth) (and (mpi) (not(qpi)))) ;; Support.  Cancellation. 
(when (rth) (and (rpi) (not(tpi)))) ;; Support.  Cancellation. 
(when (uth) (and (upi) (not(vpi)))) ;; Support.  Cancellation. 
(when (xth) (and (xpi) (not(ypi)))) ;; Support.  Cancellation. 
(when (zth) (and (zpi) (not(bqi)))) ;; Support.  Cancellation. 
(when (cuh) (and (cqi) (not(gqi)))) ;; Support.  Cancellation. 
(when (huh) (and (hqi) (not(jqi)))) ;; Support.  Cancellation. 
(when (kuh) (and (kqi) (not(lqi)))) ;; Support.  Cancellation. 
(when (muh) (and (mqi) (not(qqi)))) ;; Support.  Cancellation. 
(when (tuh) (and (tyg) (not(qnh)))) ;; Support.  Cancellation. 
(when (not(ruh))  (not(ryg))) ;; Cancellation. 
(when (vuh) (and (vyg) (not(uyg)))) ;; Support.  Cancellation. 
(when (yuh) (and (yyg) (not(xyg)))) ;; Support.  Cancellation. 
(when (bvh) (and (bzg) (not(zyg)))) ;; Support.  Cancellation. 
(when (gvh) (and (gzg) (not(czg)))) ;; Support.  Cancellation. 
(when (jvh) (and (jzg) (not(hzg)))) ;; Support.  Cancellation. 
(when (lvh) (and (lzg) (not(kzg)))) ;; Support.  Cancellation. 
(when (qvh) (and (qzg) (not(mzg)))) ;; Support.  Cancellation. 
(when (tvh) (and (tzg) (not(rzg)))) ;; Support.  Cancellation. 
(when (vvh) (and (vzg) (not(uzg)))) ;; Support.  Cancellation. 
(when (yvh) (and (yzg) (not(xzg)))) ;; Support.  Cancellation. 
(when (bwh) (and (b1g) (not(zzg)))) ;; Support.  Cancellation. 
(when (gwh) (and (g1g) (not(c1g)))) ;; Support.  Cancellation. 
(when (jwh) (and (j1g) (not(h1g)))) ;; Support.  Cancellation. 
(when (lwh) (and (l1g) (not(k1g)))) ;; Support.  Cancellation. 
(when (qwh) (and (q1g) (not(m1g)))) ;; Support.  Cancellation. 
(when (twh) (and (t1g) (not(r1g)))) ;; Support.  Cancellation. 
(when (vwh) (and (v1g) (not(u1g)))) ;; Support.  Cancellation. 
(when (ywh) (and (y1g) (not(x1g)))) ;; Support.  Cancellation. 
(when (bxh) (and (b2g) (not(z1g)))) ;; Support.  Cancellation. 
(when (gxh) (and (g2g) (not(c2g)))) ;; Support.  Cancellation. 
(when (jxh) (and (j2g) (not(h2g)))) ;; Support.  Cancellation. 
(when (lxh) (and (l2g) (not(k2g)))) ;; Support.  Cancellation. 
(when (qxh) (and (q2g) (not(m2g)))) ;; Support.  Cancellation. 
(when (txh) (and (t2g) (not(r2g)))) ;; Support.  Cancellation. 
(when (vxh) (and (v2g) (not(u2g)))) ;; Support.  Cancellation. 
(when (yxh) (and (y2g) (not(x2g)))) ;; Support.  Cancellation. 
(when (byh) (and (b3g) (not(z2g)))) ;; Support.  Cancellation. 
(when (gyh) (and (g3g) (not(c3g)))) ;; Support.  Cancellation. 
(when (jyh) (and (j3g) (not(h3g)))) ;; Support.  Cancellation. 
(when (lyh) (and (l3g) (not(k3g)))) ;; Support.  Cancellation. 
(when (qyh) (and (q3g) (not(m3g)))) ;; Support.  Cancellation. 
(when (tyh) (and (t3g) (not(r3g)))) ;; Support.  Cancellation. 
(when (vyh) (and (v3g) (not(u3g)))) ;; Support.  Cancellation. 
(when (yyh) (and (y3g) (not(x3g)))) ;; Support.  Cancellation. 
(when (bzh) (and (b4g) (not(z3g)))) ;; Support.  Cancellation. 
(when (gzh) (and (g4g) (not(c4g)))) ;; Support.  Cancellation. 
(when (jzh) (and (j4g) (not(h4g)))) ;; Support.  Cancellation. 
(when (lzh) (and (l4g) (not(k4g)))) ;; Support.  Cancellation. 
(when (qzh) (and (q4g) (not(m4g)))) ;; Support.  Cancellation. 
(when (tzh) (and (t4g) (not(r4g)))) ;; Support.  Cancellation. 
(when (vzh) (and (v4g) (not(u4g)))) ;; Support.  Cancellation. 
(when (yzh) (and (y4g) (not(x4g)))) ;; Support.  Cancellation. 
(when (b1h) (and (b5g) (not(z4g)))) ;; Support.  Cancellation. 
(when (g1h) (and (g5g) (not(c5g)))) ;; Support.  Cancellation. 
(when (j1h) (and (j5g) (not(h5g)))) ;; Support.  Cancellation. 
(when (l1h) (and (l5g) (not(k5g)))) ;; Support.  Cancellation. 
(when (q1h) (and (q5g) (not(m5g)))) ;; Support.  Cancellation. 
(when (t1h) (and (t5g) (not(r5g)))) ;; Support.  Cancellation. 
(when (v1h) (and (v5g) (not(u5g)))) ;; Support.  Cancellation. 
(when (y1h) (and (y5g) (not(x5g)))) ;; Support.  Cancellation. 
(when (b2h) (and (b6g) (not(z5g)))) ;; Support.  Cancellation. 
(when (g2h) (and (g6g) (not(c6g)))) ;; Support.  Cancellation. 
(when (j2h) (and (j6g) (not(h6g)))) ;; Support.  Cancellation. 
(when (l2h) (and (l6g) (not(k6g)))) ;; Support.  Cancellation. 
(when (q2h) (and (q6g) (not(m6g)))) ;; Support.  Cancellation. 
(when (t2h) (and (t6g) (not(r6g)))) ;; Support.  Cancellation. 
(when (v2h) (and (v6g) (not(u6g)))) ;; Support.  Cancellation. 
(when (y2h) (and (y6g) (not(x6g)))) ;; Support.  Cancellation. 
(when (b3h) (and (b7g) (not(z6g)))) ;; Support.  Cancellation. 
(when (g3h) (and (g7g) (not(c7g)))) ;; Support.  Cancellation. 
(when (j3h) (and (j7g) (not(h7g)))) ;; Support.  Cancellation. 
(when (l3h) (and (l7g) (not(k7g)))) ;; Support.  Cancellation. 
(when (q3h) (and (q7g) (not(m7g)))) ;; Support.  Cancellation. 
(when (t3h) (and (t7g) (not(r7g)))) ;; Support.  Cancellation. 
(when (v3h) (and (v7g) (not(u7g)))) ;; Support.  Cancellation. 
(when (y3h) (and (y7g) (not(x7g)))) ;; Support.  Cancellation. 
(when (b4h) (and (b8g) (not(z7g)))) ;; Support.  Cancellation. 
(when (g4h) (and (g8g) (not(c8g)))) ;; Support.  Cancellation. 
(when (j4h) (and (j8g) (not(h8g)))) ;; Support.  Cancellation. 
(when (l4h) (and (l8g) (not(k8g)))) ;; Support.  Cancellation. 
(when (q4h) (and (q8g) (not(m8g)))) ;; Support.  Cancellation. 
(when (t4h) (and (t8g) (not(r8g)))) ;; Support.  Cancellation. 
(when (v4h) (and (v8g) (not(u8g)))) ;; Support.  Cancellation. 
(when (y4h) (and (y8g) (not(x8g)))) ;; Support.  Cancellation. 
(when (b5h) (and (b9g) (not(z8g)))) ;; Support.  Cancellation. 
(when (g5h) (and (g9g) (not(c9g)))) ;; Support.  Cancellation. 
(when (j5h) (and (j9g) (not(h9g)))) ;; Support.  Cancellation. 
(when (l5h) (and (l9g) (not(k9g)))) ;; Support.  Cancellation. 
(when (q5h) (and (q9g) (not(m9g)))) ;; Support.  Cancellation. 
(when (t5h) (and (t9g) (not(r9g)))) ;; Support.  Cancellation. 
(when (v5h) (and (v9g) (not(u9g)))) ;; Support.  Cancellation. 
(when (y5h) (and (y9g) (not(x9g)))) ;; Support.  Cancellation. 
(when (b6h) (and (b0g) (not(z9g)))) ;; Support.  Cancellation. 
(when (g6h) (and (g0g) (not(c0g)))) ;; Support.  Cancellation. 
(when (j6h) (and (j0g) (not(h0g)))) ;; Support.  Cancellation. 
(when (l6h) (and (l0g) (not(k0g)))) ;; Support.  Cancellation. 
(when (q6h) (and (q0g) (not(m0g)))) ;; Support.  Cancellation. 
(when (t6h) (and (t0g) (not(r0g)))) ;; Support.  Cancellation. 
(when (v6h) (and (v0g) (not(u0g)))) ;; Support.  Cancellation. 
(when (y6h) (and (y0g) (not(x0g)))) ;; Support.  Cancellation. 
(when (b7h) (and (bah) (not(z0g)))) ;; Support.  Cancellation. 
(when (g7h) (and (gah) (not(cah)))) ;; Support.  Cancellation. 
(when (j7h) (and (jah) (not(hah)))) ;; Support.  Cancellation. 
(when (l7h) (and (lah) (not(kah)))) ;; Support.  Cancellation. 
(when (q7h)  (qah)) ;; Support. 
(when (r7h)  (rah)) ;; Support. 
(when (u7h) (and (uah) (not(tah)))) ;; Support.  Cancellation. 
(when (x7h) (and (xah) (not(vah)))) ;; Support.  Cancellation. 
(when (z7h) (and (zah) (not(yah)))) ;; Support.  Cancellation. 
(when (c8h) (and (cbh) (not(bbh)))) ;; Support.  Cancellation. 
(when (h8h) (and (hbh) (not(gbh)))) ;; Support.  Cancellation. 
(when (k8h)  (kbh)) ;; Support. 
(when (m8h) (and (mbh) (not(lbh)))) ;; Support.  Cancellation. 
(when (r8h) (and (rbh) (not(qbh)))) ;; Support.  Cancellation. 
(when (u8h) (and (ubh) (not(tbh)))) ;; Support.  Cancellation. 
(when (x8h) (and (xbh) (not(vbh)))) ;; Support.  Cancellation. 
(when (z8h)  (zbh)) ;; Support. 
(when (c9h) (and (cch) (not(bch)))) ;; Support.  Cancellation. 
(when (h9h) (and (hch) (not(gch)))) ;; Support.  Cancellation. 
(when (k9h) (and (kch) (not(jch)))) ;; Support.  Cancellation. 
(when (m9h) (and (mch) (not(lch)))) ;; Support.  Cancellation. 
(when (r9h) (and (rch) (not(qch)))) ;; Support.  Cancellation. 
(when (u9h) (and (uch) (not(tch)))) ;; Support.  Cancellation. 
(when (x9h) (and (xch) (not(vch)))) ;; Support.  Cancellation. 
(when (z9h) (and (zch) (not(ych)))) ;; Support.  Cancellation. 
(when (c0h) (and (cdh) (not(bdh)))) ;; Support.  Cancellation. 
(when (h0h) (and (hdh) (not(gdh)))) ;; Support.  Cancellation. 
(when (k0h) (and (kdh) (not(jdh)))) ;; Support.  Cancellation. 
(when (m0h) (and (mdh) (not(ldh)))) ;; Support.  Cancellation. 
(when (r0h) (and (rdh) (not(qdh)))) ;; Support.  Cancellation. 
(when (u0h) (and (udh) (not(tdh)))) ;; Support.  Cancellation. 
(when (x0h) (and (xdh) (not(vdh)))) ;; Support.  Cancellation. 
(when (z0h) (and (zdh) (not(ydh)))) ;; Support.  Cancellation. 
(when (cai) (and (ceh) (not(beh)))) ;; Support.  Cancellation. 
(when (hai) (and (heh) (not(geh)))) ;; Support.  Cancellation. 
(when (kai) (and (keh) (not(jeh)))) ;; Support.  Cancellation. 
(when (mai) (and (meh) (not(leh)))) ;; Support.  Cancellation. 
(when (rai) (and (reh) (not(qeh)))) ;; Support.  Cancellation. 
(when (uai) (and (ueh) (not(teh)))) ;; Support.  Cancellation. 
(when (xai) (and (xeh) (not(veh)))) ;; Support.  Cancellation. 
(when (zai) (and (zeh) (not(yeh)))) ;; Support.  Cancellation. 
(when (cbi) (and (cfh) (not(bfh)))) ;; Support.  Cancellation. 
(when (hbi) (and (hfh) (not(gfh)))) ;; Support.  Cancellation. 
(when (kbi) (and (kfh) (not(jfh)))) ;; Support.  Cancellation. 
(when (mbi) (and (mfh) (not(lfh)))) ;; Support.  Cancellation. 
(when (rbi) (and (rfh) (not(qfh)))) ;; Support.  Cancellation. 
(when (ubi) (and (ufh) (not(tfh)))) ;; Support.  Cancellation. 
(when (xbi) (and (xfh) (not(vfh)))) ;; Support.  Cancellation. 
(when (hci) (and (hgh) (not(ggh)))) ;; Support.  Cancellation. 
(when (kci) (and (kgh) (not(jgh)))) ;; Support.  Cancellation. 
(when (uci) (and (ugh) (not(tgh)))) ;; Support.  Cancellation. 
(when (xci) (and (xgh) (not(vgh)))) ;; Support.  Cancellation. 
(when (zci) (and (zgh) (not(ygh)))) ;; Support.  Cancellation. 
(when (cdi) (and (chh) (not(bhh)))) ;; Support.  Cancellation. 
(when (hdi)  (hhh)) ;; Support. 
(when (kdi)  (khh)) ;; Support. 
(when (mdi) (and (mhh) (not(lhh)))) ;; Support.  Cancellation. 
(when (rdi) (and (rhh) (not(qhh)))) ;; Support.  Cancellation. 
(when (udi) (and (uhh) (not(thh)))) ;; Support.  Cancellation. 
(when (hei) (and (hih) (not(gih)))) ;; Support.  Cancellation. 
(when (mei) (and (mih) (not(lih)))) ;; Support.  Cancellation. 
(when (uei) (and (uih) (not(tih)))) ;; Support.  Cancellation. 
(when (xei) (and (xih) (not(vih)))) ;; Support.  Cancellation. 
(when (zei) (and (zih) (not(yih)))) ;; Support.  Cancellation. 
(when (cfi) (and (cjh) (not(bjh)))) ;; Support.  Cancellation. 
(when (hfi) (and (hjh) (not(gjh)))) ;; Support.  Cancellation. 
(when (kfi) (and (kjh) (not(jjh)))) ;; Support.  Cancellation. 
(when (mfi) (and (mjh) (not(ljh)))) ;; Support.  Cancellation. 
(when (rfi) (and (rjh) (not(qjh)))) ;; Support.  Cancellation. 
(when (ufi) (and (ujh) (not(tjh)))) ;; Support.  Cancellation. 
(when (xfi) (and (xjh) (not(vjh)))) ;; Support.  Cancellation. 
(when (zfi) (and (zjh) (not(yjh)))) ;; Support.  Cancellation. 
(when (cgi) (and (ckh) (not(bkh)))) ;; Support.  Cancellation. 
(when (hgi) (and (hkh) (not(gkh)))) ;; Support.  Cancellation. 
(when (kgi) (and (kkh) (not(jkh)))) ;; Support.  Cancellation. 
(when (mgi) (and (mkh) (not(lkh)))) ;; Support.  Cancellation. 
(when (rgi) (and (rkh) (not(qkh)))) ;; Support.  Cancellation. 
(when (uhi) (and (ulh) (not(tlh)))) ;; Support.  Cancellation. 
(when (xhi) (and (xlh) (not(vlh)))) ;; Support.  Cancellation. 
(when (zhi) (and (zlh) (not(ylh)))) ;; Support.  Cancellation. 
(when (cii) (and (cmh) (not(bmh)))) ;; Support.  Cancellation. 
(when (hii) (and (hmh) (not(gmh)))) ;; Support.  Cancellation. 
(when (kii) (and (kmh) (not(jmh)))) ;; Support.  Cancellation. 
(when (mii) (and (mmh) (not(lmh)))) ;; Support.  Cancellation. 
(when (rii) (and (rmh) (not(qmh)))) ;; Support.  Cancellation. 
(when (uii) (and (umh) (not(tmh)))) ;; Support.  Cancellation. 
(when (xii) (and (xmh) (not(vmh)))) ;; Support.  Cancellation. 
(when (zii) (and (zmh) (not(ymh)))) ;; Support.  Cancellation. 
(when (cji) (and (cnh) (not(bnh)))) ;; Support.  Cancellation. 
(when (hji) (and (hnh) (not(gnh)))) ;; Support.  Cancellation. 
(when (kji) (and (knh) (not(jnh)))) ;; Support.  Cancellation. 
(when (tji) (and (tnh) (not(rnh)))) ;; Support.  Cancellation. 
(when (vji) (and (vnh) (not(unh)))) ;; Support.  Cancellation. 
(when (yji) (and (ynh) (not(xnh)))) ;; Support.  Cancellation. 
(when (bki) (and (boh) (not(znh)))) ;; Support.  Cancellation. 
(when (gki) (and (goh) (not(coh)))) ;; Support.  Cancellation. 
(when (qki) (and (qoh) (not(moh)))) ;; Support.  Cancellation. 
(when (tki) (and (toh) (not(roh)))) ;; Support.  Cancellation. 
(when (vki) (and (voh) (not(uoh)))) ;; Support.  Cancellation. 
(when (yki) (and (yoh) (not(xoh)))) ;; Support.  Cancellation. 
(when (bli) (and (bph) (not(zoh)))) ;; Support.  Cancellation. 
(when (lli) (and (lph) (not(kph)))) ;; Support.  Cancellation. 
(when (qli) (and (qph) (not(mph)))) ;; Support.  Cancellation. 
(when (vli) (and (vph) (not(uph)))) ;; Support.  Cancellation. 
(when (yli) (and (yph) (not(xph)))) ;; Support.  Cancellation. 
(when (gmi) (and (gqh) (not(cqh)))) ;; Support.  Cancellation. 
(when (jmi) (and (jqh) (not(hqh)))) ;; Support.  Cancellation. 
(when (lmi) (and (lqh) (not(kqh)))) ;; Support.  Cancellation. 
(when (qmi) (and (qqh) (not(mqh)))) ;; Support.  Cancellation. 
(when (tmi) (and (tqh) (not(rqh)))) ;; Support.  Cancellation. 
(when (bni) (and (bsh) (not(zqh)))) ;; Support.  Cancellation. 
(when (gni) (and (gsh) (not(csh)))) ;; Support.  Cancellation. 
(when (lni) (and (lsh) (not(ksh)))) ;; Support.  Cancellation. 
(when (tni) (and (tsh) (not(rsh)))) ;; Support.  Cancellation. 
(when (vni) (and (vsh) (not(ush)))) ;; Support.  Cancellation. 
(when (joi) (and (jrh) (not(hrh)))) ;; Support.  Cancellation. 
(when (qoi) (and (qrh) (not(mrh)))) ;; Support.  Cancellation. 
(when (toi) (and (trh) (not(rrh)))) ;; Support.  Cancellation. 
(when (voi) (and (vrh) (not(urh)))) ;; Support.  Cancellation. 
(when (yoi) (and (yrh) (not(xrh)))) ;; Support.  Cancellation. 
(when (bpi) (and (bth) (not(zrh)))) ;; Support.  Cancellation. 
(when (gpi) (and (gth) (not(cth)))) ;; Support.  Cancellation. 
(when (jpi) (and (jth) (not(hth)))) ;; Support.  Cancellation. 
(when (lpi) (and (lth) (not(kth)))) ;; Support.  Cancellation. 
(when (qpi) (and (qth) (not(mth)))) ;; Support.  Cancellation. 
(when (tpi) (and (tth) (not(rth)))) ;; Support.  Cancellation. 
(when (vpi) (and (vth) (not(uth)))) ;; Support.  Cancellation. 
(when (ypi) (and (yth) (not(xth)))) ;; Support.  Cancellation. 
(when (bqi) (and (buh) (not(zth)))) ;; Support.  Cancellation. 
(when (gqi) (and (guh) (not(cuh)))) ;; Support.  Cancellation. 
(when (jqi) (and (juh) (not(huh)))) ;; Support.  Cancellation. 
(when (lqi) (and (luh) (not(kuh)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L4_L8
:parameters ()
:precondition (and (q7e))

:effect (and  (q7j) (reg) (not(r3f))
(when (qik) (and (qyg) (not(myg)))) ;; Support.  Cancellation. 
(when (r3f) (and (rmj) (not(ryj)))) ;; Support.  Cancellation. 
(when (not(t3f))  (not(tmj))) ;; Cancellation. 
(when (u3f)  (umj)) ;; Support. 
(when (x3f) (and (xmj) (not(ymj)))) ;; Support.  Cancellation. 
(when (z3f) (and (zmj) (not(bnj)))) ;; Support.  Cancellation. 
(when (c4f)  (cnj)) ;; Support. 
(when (h4f) (and (hnj) (not(jnj)))) ;; Support.  Cancellation. 
(when (k4f) (and (knj) (not(lnj)))) ;; Support.  Cancellation. 
(when (m4f)  (mnj)) ;; Support. 
(when (r4f)  (rnj)) ;; Support. 
(when (u4f) (and (unj) (not(vnj)))) ;; Support.  Cancellation. 
(when (x4f) (and (xnj) (not(ynj)))) ;; Support.  Cancellation. 
(when (z4f) (and (znj) (not(boj)))) ;; Support.  Cancellation. 
(when (c5f) (and (coj) (not(goj)))) ;; Support.  Cancellation. 
(when (h5f)  (hoj)) ;; Support. 
(when (k5f)  (koj)) ;; Support. 
(when (m5f)  (moj)) ;; Support. 
(when (r5f)  (roj)) ;; Support. 
(when (u5f)  (uoj)) ;; Support. 
(when (x5f)  (xoj)) ;; Support. 
(when (z5f)  (zoj)) ;; Support. 
(when (c6f)  (cpj)) ;; Support. 
(when (h6f)  (hpj)) ;; Support. 
(when (k6f)  (kpj)) ;; Support. 
(when (m6f)  (mpj)) ;; Support. 
(when (r6f)  (rpj)) ;; Support. 
(when (u6f) (and (upj) (not(vpj)))) ;; Support.  Cancellation. 
(when (x6f) (and (xpj) (not(ypj)))) ;; Support.  Cancellation. 
(when (z6f) (and (zpj) (not(bqj)))) ;; Support.  Cancellation. 
(when (c7f) (and (cqj) (not(gqj)))) ;; Support.  Cancellation. 
(when (h7f) (and (hqj) (not(jqj)))) ;; Support.  Cancellation. 
(when (k7f) (and (kqj) (not(lqj)))) ;; Support.  Cancellation. 
(when (m7f) (and (mqj) (not(qqj)))) ;; Support.  Cancellation. 
(when (r7f) (and (rqj) (not(tqj)))) ;; Support.  Cancellation. 
(when (u7f)  (uqj)) ;; Support. 
(when (x7f)  (xqj)) ;; Support. 
(when (z7f)  (zqj)) ;; Support. 
(when (c8f)  (csj)) ;; Support. 
(when (h8f)  (hsj)) ;; Support. 
(when (k8f)  (ksj)) ;; Support. 
(when (m8f)  (msj)) ;; Support. 
(when (r8f)  (rsj)) ;; Support. 
(when (u8f)  (usj)) ;; Support. 
(when (x8f)  (xsj)) ;; Support. 
(when (z8f)  (zsj)) ;; Support. 
(when (c9f)  (crj)) ;; Support. 
(when (h9f)  (hrj)) ;; Support. 
(when (k9f)  (krj)) ;; Support. 
(when (m9f)  (mrj)) ;; Support. 
(when (r9f)  (rrj)) ;; Support. 
(when (u9f) (and (urj) (not(vrj)))) ;; Support.  Cancellation. 
(when (x9f) (and (xrj) (not(yrj)))) ;; Support.  Cancellation. 
(when (z9f) (and (zrj) (not(btj)))) ;; Support.  Cancellation. 
(when (c0f) (and (ctj) (not(gtj)))) ;; Support.  Cancellation. 
(when (h0f) (and (htj) (not(jtj)))) ;; Support.  Cancellation. 
(when (k0f) (and (ktj) (not(ltj)))) ;; Support.  Cancellation. 
(when (m0f) (and (mtj) (not(qtj)))) ;; Support.  Cancellation. 
(when (r0f) (and (rtj) (not(ttj)))) ;; Support.  Cancellation. 
(when (u0f) (and (utj) (not(vtj)))) ;; Support.  Cancellation. 
(when (x0f) (and (xtj) (not(ytj)))) ;; Support.  Cancellation. 
(when (z0f) (and (ztj) (not(buj)))) ;; Support.  Cancellation. 
(when (cag) (and (cuj) (not(guj)))) ;; Support.  Cancellation. 
(when (hag) (and (huj) (not(juj)))) ;; Support.  Cancellation. 
(when (kag) (and (kuj) (not(luj)))) ;; Support.  Cancellation. 
(when (mag) (and (muj) (not(quj)))) ;; Support.  Cancellation. 
(when (rag) (and (ruj) (not(tuj)))) ;; Support.  Cancellation. 
(when (uag) (and (uuj) (not(vuj)))) ;; Support.  Cancellation. 
(when (xag) (and (xuj) (not(yuj)))) ;; Support.  Cancellation. 
(when (zag) (and (zuj) (not(bvj)))) ;; Support.  Cancellation. 
(when (cbg) (and (cvj) (not(gvj)))) ;; Support.  Cancellation. 
(when (hbg) (and (hvj) (not(jvj)))) ;; Support.  Cancellation. 
(when (kbg) (and (kvj) (not(lvj)))) ;; Support.  Cancellation. 
(when (mbg) (and (mvj) (not(qvj)))) ;; Support.  Cancellation. 
(when (rbg) (and (rvj) (not(tvj)))) ;; Support.  Cancellation. 
(when (zbg) (and (zvj) (not(bwj)))) ;; Support.  Cancellation. 
(when (ccg) (and (cwj) (not(gwj)))) ;; Support.  Cancellation. 
(when (hcg) (and (hwj) (not(jwj)))) ;; Support.  Cancellation. 
(when (kcg) (and (kwj) (not(lwj)))) ;; Support.  Cancellation. 
(when (mcg) (and (mwj) (not(qwj)))) ;; Support.  Cancellation. 
(when (rcg) (and (rwj) (not(twj)))) ;; Support.  Cancellation. 
(when (ucg) (and (uwj) (not(vwj)))) ;; Support.  Cancellation. 
(when (xcg) (and (xwj) (not(ywj)))) ;; Support.  Cancellation. 
(when (zcg) (and (zwj) (not(bxj)))) ;; Support.  Cancellation. 
(when (cdg) (and (cxj) (not(gxj)))) ;; Support.  Cancellation. 
(when (hdg) (and (hxj) (not(jxj)))) ;; Support.  Cancellation. 
(when (kdg) (and (kxj) (not(lxj)))) ;; Support.  Cancellation. 
(when (mdg) (and (mxj) (not(qxj)))) ;; Support.  Cancellation. 
(when (rdg) (and (rxj) (not(txj)))) ;; Support.  Cancellation. 
(when (udg) (and (uxj) (not(vxj)))) ;; Support.  Cancellation. 
(when (xdg) (and (xxj) (not(yxj)))) ;; Support.  Cancellation. 
(when (zdg) (and (zxj) (not(byj)))) ;; Support.  Cancellation. 
(when (ceg) (and (cyj) (not(gyj)))) ;; Support.  Cancellation. 
(when (heg) (and (hyj) (not(jyj)))) ;; Support.  Cancellation. 
(when (keg) (and (kyj) (not(lyj)))) ;; Support.  Cancellation. 
(when (teg)  (tyj)) ;; Support. 
(when (veg)  (vyj)) ;; Support. 
(when (yeg)  (yyj)) ;; Support. 
(when (gfg)  (gzj)) ;; Support. 
(when (lfg)  (lzj)) ;; Support. 
(when (qfg)  (qzj)) ;; Support. 
(when (tfg)  (tzj)) ;; Support. 
(when (vfg)  (vzj)) ;; Support. 
(when (ggg)  (g1j)) ;; Support. 
(when (jgg)  (j1j)) ;; Support. 
(when (lgg)  (l1j)) ;; Support. 
(when (qgg)  (q1j)) ;; Support. 
(when (tgg)  (t1j)) ;; Support. 
(when (vgg)  (v1j)) ;; Support. 
(when (ygg)  (y1j)) ;; Support. 
(when (bhg)  (b2j)) ;; Support. 
(when (ghg)  (g2j)) ;; Support. 
(when (jhg)  (j2j)) ;; Support. 
(when (lhg)  (l2j)) ;; Support. 
(when (qhg)  (q2j)) ;; Support. 
(when (thg)  (t2j)) ;; Support. 
(when (vhg)  (v2j)) ;; Support. 
(when (yhg)  (y2j)) ;; Support. 
(when (big)  (b3j)) ;; Support. 
(when (gig)  (g3j)) ;; Support. 
(when (jig)  (j3j)) ;; Support. 
(when (lig)  (l3j)) ;; Support. 
(when (qig)  (q3j)) ;; Support. 
(when (tig) (and (t3j) (not(u3j)))) ;; Support.  Cancellation. 
(when (vig) (and (v3j) (not(x3j)))) ;; Support.  Cancellation. 
(when (yig) (and (y3j) (not(z3j)))) ;; Support.  Cancellation. 
(when (bjg) (and (b4j) (not(c4j)))) ;; Support.  Cancellation. 
(when (gjg) (and (g4j) (not(h4j)))) ;; Support.  Cancellation. 
(when (jjg) (and (j4j) (not(k4j)))) ;; Support.  Cancellation. 
(when (ljg) (and (l4j) (not(m4j)))) ;; Support.  Cancellation. 
(when (qjg) (and (q4j) (not(r4j)))) ;; Support.  Cancellation. 
(when (tjg)  (t4j)) ;; Support. 
(when (vjg)  (v4j)) ;; Support. 
(when (yjg)  (y4j)) ;; Support. 
(when (bkg)  (b5j)) ;; Support. 
(when (gkg)  (g5j)) ;; Support. 
(when (jkg)  (j5j)) ;; Support. 
(when (lkg)  (l5j)) ;; Support. 
(when (qkg)  (q5j)) ;; Support. 
(when (tkg) (and (t5j) (not(u5j)))) ;; Support.  Cancellation. 
(when (vkg) (and (v5j) (not(x5j)))) ;; Support.  Cancellation. 
(when (ykg) (and (y5j) (not(z5j)))) ;; Support.  Cancellation. 
(when (blg) (and (b6j) (not(c6j)))) ;; Support.  Cancellation. 
(when (tlg)  (t6j)) ;; Support. 
(when (vlg)  (v6j)) ;; Support. 
(when (lmg)  (l7j)) ;; Support. 
(when (tmg) (and (t7j) (not(u7j)))) ;; Support.  Cancellation. 
(when (vmg) (and (v7j) (not(x7j)))) ;; Support.  Cancellation. 
(when (ymg) (and (y7j) (not(z7j)))) ;; Support.  Cancellation. 
(when (bng) (and (b8j) (not(c8j)))) ;; Support.  Cancellation. 
(when (gng) (and (g8j) (not(h8j)))) ;; Support.  Cancellation. 
(when (jng) (and (j8j) (not(k8j)))) ;; Support.  Cancellation. 
(when (lng) (and (l8j) (not(m8j)))) ;; Support.  Cancellation. 
(when (qng) (and (q8j) (not(r8j)))) ;; Support.  Cancellation. 
(when (tng) (and (t8j) (not(u8j)))) ;; Support.  Cancellation. 
(when (vng) (and (v8j) (not(x8j)))) ;; Support.  Cancellation. 
(when (yng) (and (y8j) (not(z8j)))) ;; Support.  Cancellation. 
(when (bog) (and (b9j) (not(c9j)))) ;; Support.  Cancellation. 
(when (gog) (and (g9j) (not(h9j)))) ;; Support.  Cancellation. 
(when (jog) (and (j9j) (not(k9j)))) ;; Support.  Cancellation. 
(when (log) (and (l9j) (not(m9j)))) ;; Support.  Cancellation. 
(when (qog) (and (q9j) (not(r9j)))) ;; Support.  Cancellation. 
(when (tog)  (t9j)) ;; Support. 
(when (vog)  (v9j)) ;; Support. 
(when (yog)  (y9j)) ;; Support. 
(when (bpg)  (b0j)) ;; Support. 
(when (gpg)  (g0j)) ;; Support. 
(when (jpg)  (j0j)) ;; Support. 
(when (lpg)  (l0j)) ;; Support. 
(when (qpg)  (q0j)) ;; Support. 
(when (tpg)  (t0j)) ;; Support. 
(when (vpg)  (v0j)) ;; Support. 
(when (ypg)  (y0j)) ;; Support. 
(when (bqg)  (bak)) ;; Support. 
(when (gqg)  (gak)) ;; Support. 
(when (jqg)  (jak)) ;; Support. 
(when (lqg)  (lak)) ;; Support. 
(when (qqg)  (qak)) ;; Support. 
(when (tqg) (and (tak) (not(uak)))) ;; Support.  Cancellation. 
(when (vqg) (and (vak) (not(xak)))) ;; Support.  Cancellation. 
(when (yqg)  (yak)) ;; Support. 
(when (bsg)  (bbk)) ;; Support. 
(when (gsg) (and (gbk) (not(hbk)))) ;; Support.  Cancellation. 
(when (jsg) (and (jbk) (not(kbk)))) ;; Support.  Cancellation. 
(when (lsg)  (lbk)) ;; Support. 
(when (qsg)  (qbk)) ;; Support. 
(when (rsg) (and (rbk) (not(tbk)))) ;; Support.  Cancellation. 
(when (usg) (and (ubk) (not(vbk)))) ;; Support.  Cancellation. 
(when (xsg) (and (xbk) (not(ybk)))) ;; Support.  Cancellation. 
(when (zsg) (and (zbk) (not(bck)))) ;; Support.  Cancellation. 
(when (crg)  (cck)) ;; Support. 
(when (hrg)  (hck)) ;; Support. 
(when (krg)  (kck)) ;; Support. 
(when (mrg)  (mck)) ;; Support. 
(when (rrg) (and (rck) (not(tck)))) ;; Support.  Cancellation. 
(when (urg) (and (uck) (not(vck)))) ;; Support.  Cancellation. 
(when (xrg)  (xck)) ;; Support. 
(when (zrg)  (zck)) ;; Support. 
(when (ctg)  (cdk)) ;; Support. 
(when (htg)  (hdk)) ;; Support. 
(when (ktg) (and (kdk) (not(ldk)))) ;; Support.  Cancellation. 
(when (mtg) (and (mdk) (not(qdk)))) ;; Support.  Cancellation. 
(when (rtg)  (rdk)) ;; Support. 
(when (utg)  (udk)) ;; Support. 
(when (xtg)  (xdk)) ;; Support. 
(when (ztg)  (zdk)) ;; Support. 
(when (cug) (and (cek) (not(gek)))) ;; Support.  Cancellation. 
(when (hug) (and (hek) (not(jek)))) ;; Support.  Cancellation. 
(when (kug) (and (kek) (not(lek)))) ;; Support.  Cancellation. 
(when (mug) (and (mek) (not(qek)))) ;; Support.  Cancellation. 
(when (rug)  (rek)) ;; Support. 
(when (uug)  (uek)) ;; Support. 
(when (xug)  (xek)) ;; Support. 
(when (zug)  (zek)) ;; Support. 
(when (cvg)  (cfk)) ;; Support. 
(when (hvg)  (hfk)) ;; Support. 
(when (kvg)  (kfk)) ;; Support. 
(when (mvg)  (mfk)) ;; Support. 
(when (rvg)  (rfk)) ;; Support. 
(when (uvg)  (ufk)) ;; Support. 
(when (xvg)  (xfk)) ;; Support. 
(when (zvg)  (zfk)) ;; Support. 
(when (cwg)  (cgk)) ;; Support. 
(when (hwg)  (hgk)) ;; Support. 
(when (kwg)  (kgk)) ;; Support. 
(when (mwg)  (mgk)) ;; Support. 
(when (rwg) (and (rgk) (not(tgk)))) ;; Support.  Cancellation. 
(when (uwg) (and (ugk) (not(vgk)))) ;; Support.  Cancellation. 
(when (xwg) (and (xgk) (not(ygk)))) ;; Support.  Cancellation. 
(when (zwg) (and (zgk) (not(bhk)))) ;; Support.  Cancellation. 
(when (cxg) (and (chk) (not(ghk)))) ;; Support.  Cancellation. 
(when (hxg) (and (hhk) (not(jhk)))) ;; Support.  Cancellation. 
(when (kxg) (and (khk) (not(lhk)))) ;; Support.  Cancellation. 
(when (mxg) (and (mhk) (not(qhk)))) ;; Support.  Cancellation. 
(when (rxg) (and (rhk) (not(thk)))) ;; Support.  Cancellation. 
(when (uxg) (and (uhk) (not(vhk)))) ;; Support.  Cancellation. 
(when (xxg) (and (xhk) (not(yhk)))) ;; Support.  Cancellation. 
(when (zxg) (and (zhk) (not(bik)))) ;; Support.  Cancellation. 
(when (cyg) (and (cik) (not(gik)))) ;; Support.  Cancellation. 
(when (hyg) (and (hik) (not(jik)))) ;; Support.  Cancellation. 
(when (kyg) (and (kik) (not(lik)))) ;; Support.  Cancellation. 
(when (myg) (and (mik) (not(qik)))) ;; Support.  Cancellation. 
(when (tmj) (and (t3f) (not(qsg)))) ;; Support.  Cancellation. 
(when (ymj) (and (y3f) (not(x3f)))) ;; Support.  Cancellation. 
(when (bnj) (and (b4f) (not(z3f)))) ;; Support.  Cancellation. 
(when (jnj) (and (j4f) (not(h4f)))) ;; Support.  Cancellation. 
(when (lnj) (and (l4f) (not(k4f)))) ;; Support.  Cancellation. 
(when (vnj) (and (v4f) (not(u4f)))) ;; Support.  Cancellation. 
(when (ynj) (and (y4f) (not(x4f)))) ;; Support.  Cancellation. 
(when (boj) (and (b5f) (not(z4f)))) ;; Support.  Cancellation. 
(when (goj) (and (g5f) (not(c5f)))) ;; Support.  Cancellation. 
(when (vpj) (and (v6f) (not(u6f)))) ;; Support.  Cancellation. 
(when (ypj) (and (y6f) (not(x6f)))) ;; Support.  Cancellation. 
(when (bqj) (and (b7f) (not(z6f)))) ;; Support.  Cancellation. 
(when (gqj) (and (g7f) (not(c7f)))) ;; Support.  Cancellation. 
(when (jqj) (and (j7f) (not(h7f)))) ;; Support.  Cancellation. 
(when (lqj) (and (l7f) (not(k7f)))) ;; Support.  Cancellation. 
(when (qqj) (and (q7f) (not(m7f)))) ;; Support.  Cancellation. 
(when (tqj) (and (t7f) (not(r7f)))) ;; Support.  Cancellation. 
(when (vrj) (and (v9f) (not(u9f)))) ;; Support.  Cancellation. 
(when (yrj) (and (y9f) (not(x9f)))) ;; Support.  Cancellation. 
(when (btj) (and (b0f) (not(z9f)))) ;; Support.  Cancellation. 
(when (gtj) (and (g0f) (not(c0f)))) ;; Support.  Cancellation. 
(when (jtj) (and (j0f) (not(h0f)))) ;; Support.  Cancellation. 
(when (ltj) (and (l0f) (not(k0f)))) ;; Support.  Cancellation. 
(when (qtj) (and (q0f) (not(m0f)))) ;; Support.  Cancellation. 
(when (ttj) (and (t0f) (not(r0f)))) ;; Support.  Cancellation. 
(when (vtj) (and (v0f) (not(u0f)))) ;; Support.  Cancellation. 
(when (ytj) (and (y0f) (not(x0f)))) ;; Support.  Cancellation. 
(when (buj) (and (bag) (not(z0f)))) ;; Support.  Cancellation. 
(when (guj) (and (gag) (not(cag)))) ;; Support.  Cancellation. 
(when (juj) (and (jag) (not(hag)))) ;; Support.  Cancellation. 
(when (luj) (and (lag) (not(kag)))) ;; Support.  Cancellation. 
(when (quj) (and (qag) (not(mag)))) ;; Support.  Cancellation. 
(when (tuj) (and (tag) (not(rag)))) ;; Support.  Cancellation. 
(when (vuj) (and (vag) (not(uag)))) ;; Support.  Cancellation. 
(when (yuj) (and (yag) (not(xag)))) ;; Support.  Cancellation. 
(when (bvj) (and (bbg) (not(zag)))) ;; Support.  Cancellation. 
(when (gvj) (and (gbg) (not(cbg)))) ;; Support.  Cancellation. 
(when (jvj) (and (jbg) (not(hbg)))) ;; Support.  Cancellation. 
(when (lvj) (and (lbg) (not(kbg)))) ;; Support.  Cancellation. 
(when (qvj) (and (qbg) (not(mbg)))) ;; Support.  Cancellation. 
(when (tvj) (and (tbg) (not(rbg)))) ;; Support.  Cancellation. 
(when (vvj)  (vbg)) ;; Support. 
(when (yvj)  (ybg)) ;; Support. 
(when (bwj) (and (bcg) (not(zbg)))) ;; Support.  Cancellation. 
(when (gwj) (and (gcg) (not(ccg)))) ;; Support.  Cancellation. 
(when (jwj) (and (jcg) (not(hcg)))) ;; Support.  Cancellation. 
(when (lwj) (and (lcg) (not(kcg)))) ;; Support.  Cancellation. 
(when (qwj) (and (qcg) (not(mcg)))) ;; Support.  Cancellation. 
(when (twj) (and (tcg) (not(rcg)))) ;; Support.  Cancellation. 
(when (vwj) (and (vcg) (not(ucg)))) ;; Support.  Cancellation. 
(when (ywj) (and (ycg) (not(xcg)))) ;; Support.  Cancellation. 
(when (bxj) (and (bdg) (not(zcg)))) ;; Support.  Cancellation. 
(when (gxj) (and (gdg) (not(cdg)))) ;; Support.  Cancellation. 
(when (jxj) (and (jdg) (not(hdg)))) ;; Support.  Cancellation. 
(when (lxj) (and (ldg) (not(kdg)))) ;; Support.  Cancellation. 
(when (qxj) (and (qdg) (not(mdg)))) ;; Support.  Cancellation. 
(when (txj) (and (tdg) (not(rdg)))) ;; Support.  Cancellation. 
(when (vxj) (and (vdg) (not(udg)))) ;; Support.  Cancellation. 
(when (yxj) (and (ydg) (not(xdg)))) ;; Support.  Cancellation. 
(when (byj) (and (beg) (not(zdg)))) ;; Support.  Cancellation. 
(when (gyj) (and (geg) (not(ceg)))) ;; Support.  Cancellation. 
(when (jyj) (and (jeg) (not(heg)))) ;; Support.  Cancellation. 
(when (lyj) (and (leg) (not(keg)))) ;; Support.  Cancellation. 
(when (qyj)  (qeg)) ;; Support. 
(when (u3j) (and (uig) (not(tig)))) ;; Support.  Cancellation. 
(when (x3j) (and (xig) (not(vig)))) ;; Support.  Cancellation. 
(when (z3j) (and (zig) (not(yig)))) ;; Support.  Cancellation. 
(when (c4j) (and (cjg) (not(bjg)))) ;; Support.  Cancellation. 
(when (h4j) (and (hjg) (not(gjg)))) ;; Support.  Cancellation. 
(when (k4j) (and (kjg) (not(jjg)))) ;; Support.  Cancellation. 
(when (m4j) (and (mjg) (not(ljg)))) ;; Support.  Cancellation. 
(when (r4j) (and (rjg) (not(qjg)))) ;; Support.  Cancellation. 
(when (u5j) (and (ukg) (not(tkg)))) ;; Support.  Cancellation. 
(when (x5j) (and (xkg) (not(vkg)))) ;; Support.  Cancellation. 
(when (z5j) (and (zkg) (not(ykg)))) ;; Support.  Cancellation. 
(when (c6j) (and (clg) (not(blg)))) ;; Support.  Cancellation. 
(when (h6j)  (hlg)) ;; Support. 
(when (k6j)  (klg)) ;; Support. 
(when (m6j)  (mlg)) ;; Support. 
(when (r6j)  (rlg)) ;; Support. 
(when (u7j) (and (umg) (not(tmg)))) ;; Support.  Cancellation. 
(when (x7j) (and (xmg) (not(vmg)))) ;; Support.  Cancellation. 
(when (z7j) (and (zmg) (not(ymg)))) ;; Support.  Cancellation. 
(when (c8j) (and (cng) (not(bng)))) ;; Support.  Cancellation. 
(when (h8j) (and (hng) (not(gng)))) ;; Support.  Cancellation. 
(when (k8j) (and (kng) (not(jng)))) ;; Support.  Cancellation. 
(when (m8j) (and (mng) (not(lng)))) ;; Support.  Cancellation. 
(when (r8j) (and (rng) (not(qng)))) ;; Support.  Cancellation. 
(when (u8j) (and (ung) (not(tng)))) ;; Support.  Cancellation. 
(when (x8j) (and (xng) (not(vng)))) ;; Support.  Cancellation. 
(when (z8j) (and (zng) (not(yng)))) ;; Support.  Cancellation. 
(when (c9j) (and (cog) (not(bog)))) ;; Support.  Cancellation. 
(when (h9j) (and (hog) (not(gog)))) ;; Support.  Cancellation. 
(when (k9j) (and (kog) (not(jog)))) ;; Support.  Cancellation. 
(when (m9j) (and (mog) (not(log)))) ;; Support.  Cancellation. 
(when (r9j) (and (rog) (not(qog)))) ;; Support.  Cancellation. 
(when (uak) (and (uqg) (not(tqg)))) ;; Support.  Cancellation. 
(when (xak) (and (xqg) (not(vqg)))) ;; Support.  Cancellation. 
(when (hbk) (and (hsg) (not(gsg)))) ;; Support.  Cancellation. 
(when (kbk) (and (ksg) (not(jsg)))) ;; Support.  Cancellation. 
(when (tbk) (and (tsg) (not(rsg)))) ;; Support.  Cancellation. 
(when (vbk) (and (vsg) (not(usg)))) ;; Support.  Cancellation. 
(when (ybk) (and (ysg) (not(xsg)))) ;; Support.  Cancellation. 
(when (bck) (and (brg) (not(zsg)))) ;; Support.  Cancellation. 
(when (tck) (and (trg) (not(rrg)))) ;; Support.  Cancellation. 
(when (vck) (and (vrg) (not(urg)))) ;; Support.  Cancellation. 
(when (ldk) (and (ltg) (not(ktg)))) ;; Support.  Cancellation. 
(when (qdk) (and (qtg) (not(mtg)))) ;; Support.  Cancellation. 
(when (gek) (and (gug) (not(cug)))) ;; Support.  Cancellation. 
(when (jek) (and (jug) (not(hug)))) ;; Support.  Cancellation. 
(when (lek) (and (lug) (not(kug)))) ;; Support.  Cancellation. 
(when (qek) (and (qug) (not(mug)))) ;; Support.  Cancellation. 
(when (tgk) (and (twg) (not(rwg)))) ;; Support.  Cancellation. 
(when (vgk) (and (vwg) (not(uwg)))) ;; Support.  Cancellation. 
(when (ygk) (and (ywg) (not(xwg)))) ;; Support.  Cancellation. 
(when (bhk) (and (bxg) (not(zwg)))) ;; Support.  Cancellation. 
(when (ghk) (and (gxg) (not(cxg)))) ;; Support.  Cancellation. 
(when (jhk) (and (jxg) (not(hxg)))) ;; Support.  Cancellation. 
(when (lhk) (and (lxg) (not(kxg)))) ;; Support.  Cancellation. 
(when (qhk) (and (qxg) (not(mxg)))) ;; Support.  Cancellation. 
(when (thk) (and (txg) (not(rxg)))) ;; Support.  Cancellation. 
(when (vhk) (and (vxg) (not(uxg)))) ;; Support.  Cancellation. 
(when (yhk) (and (yxg) (not(xxg)))) ;; Support.  Cancellation. 
(when (bik) (and (byg) (not(zxg)))) ;; Support.  Cancellation. 
(when (gik) (and (gyg) (not(cyg)))) ;; Support.  Cancellation. 
(when (jik) (and (jyg) (not(hyg)))) ;; Support.  Cancellation. 
(when (lik) (and (lyg) (not(kyg)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L4_L7
:parameters ()
:precondition (and (q7e))

:effect (and  (qaj) (kfg)
(when (qmj) (and (qyg) (not(myg)))) ;; Support.  Cancellation. 
(when (r3f) (and (rqi) (not(r3i)))) ;; Support.  Cancellation. 
(when (not(t3f))  (not(tqi))) ;; Cancellation. 
(when (u3f) (and (uqi) (not(vqi)))) ;; Support.  Cancellation. 
(when (x3f) (and (xqi) (not(yqi)))) ;; Support.  Cancellation. 
(when (z3f) (and (zqi) (not(bsi)))) ;; Support.  Cancellation. 
(when (c4f) (and (csi) (not(gsi)))) ;; Support.  Cancellation. 
(when (h4f) (and (hsi) (not(jsi)))) ;; Support.  Cancellation. 
(when (k4f) (and (ksi) (not(lsi)))) ;; Support.  Cancellation. 
(when (m4f) (and (msi) (not(qsi)))) ;; Support.  Cancellation. 
(when (r4f) (and (rsi) (not(tsi)))) ;; Support.  Cancellation. 
(when (u4f) (and (usi) (not(vsi)))) ;; Support.  Cancellation. 
(when (x4f) (and (xsi) (not(ysi)))) ;; Support.  Cancellation. 
(when (z4f) (and (zsi) (not(bri)))) ;; Support.  Cancellation. 
(when (c5f) (and (cri) (not(gri)))) ;; Support.  Cancellation. 
(when (h5f) (and (hri) (not(jri)))) ;; Support.  Cancellation. 
(when (k5f) (and (kri) (not(lri)))) ;; Support.  Cancellation. 
(when (m5f) (and (mri) (not(qri)))) ;; Support.  Cancellation. 
(when (r5f) (and (rri) (not(tri)))) ;; Support.  Cancellation. 
(when (u5f) (and (uri) (not(vri)))) ;; Support.  Cancellation. 
(when (x5f) (and (xri) (not(yri)))) ;; Support.  Cancellation. 
(when (z5f) (and (zri) (not(bti)))) ;; Support.  Cancellation. 
(when (c6f) (and (cti) (not(gti)))) ;; Support.  Cancellation. 
(when (h6f) (and (hti) (not(jti)))) ;; Support.  Cancellation. 
(when (k6f) (and (kti) (not(lti)))) ;; Support.  Cancellation. 
(when (m6f) (and (mti) (not(qti)))) ;; Support.  Cancellation. 
(when (r6f) (and (rti) (not(tti)))) ;; Support.  Cancellation. 
(when (u6f) (and (uti) (not(vti)))) ;; Support.  Cancellation. 
(when (x6f) (and (xti) (not(yti)))) ;; Support.  Cancellation. 
(when (z6f) (and (zti) (not(bui)))) ;; Support.  Cancellation. 
(when (c7f) (and (cui) (not(gui)))) ;; Support.  Cancellation. 
(when (h7f) (and (hui) (not(jui)))) ;; Support.  Cancellation. 
(when (k7f) (and (kui) (not(lui)))) ;; Support.  Cancellation. 
(when (m7f) (and (mui) (not(qui)))) ;; Support.  Cancellation. 
(when (r7f) (and (rui) (not(tui)))) ;; Support.  Cancellation. 
(when (u7f) (and (uui) (not(vui)))) ;; Support.  Cancellation. 
(when (x7f) (and (xui) (not(yui)))) ;; Support.  Cancellation. 
(when (z7f) (and (zui) (not(bvi)))) ;; Support.  Cancellation. 
(when (c8f) (and (cvi) (not(gvi)))) ;; Support.  Cancellation. 
(when (h8f) (and (hvi) (not(jvi)))) ;; Support.  Cancellation. 
(when (k8f) (and (kvi) (not(lvi)))) ;; Support.  Cancellation. 
(when (m8f) (and (mvi) (not(qvi)))) ;; Support.  Cancellation. 
(when (r8f) (and (rvi) (not(tvi)))) ;; Support.  Cancellation. 
(when (u8f) (and (uvi) (not(vvi)))) ;; Support.  Cancellation. 
(when (x8f) (and (xvi) (not(yvi)))) ;; Support.  Cancellation. 
(when (z8f) (and (zvi) (not(bwi)))) ;; Support.  Cancellation. 
(when (c9f) (and (cwi) (not(gwi)))) ;; Support.  Cancellation. 
(when (h9f) (and (hwi) (not(jwi)))) ;; Support.  Cancellation. 
(when (k9f) (and (kwi) (not(lwi)))) ;; Support.  Cancellation. 
(when (m9f) (and (mwi) (not(qwi)))) ;; Support.  Cancellation. 
(when (r9f) (and (rwi) (not(twi)))) ;; Support.  Cancellation. 
(when (u9f) (and (uwi) (not(vwi)))) ;; Support.  Cancellation. 
(when (x9f) (and (xwi) (not(ywi)))) ;; Support.  Cancellation. 
(when (z9f) (and (zwi) (not(bxi)))) ;; Support.  Cancellation. 
(when (c0f) (and (cxi) (not(gxi)))) ;; Support.  Cancellation. 
(when (h0f) (and (hxi) (not(jxi)))) ;; Support.  Cancellation. 
(when (k0f) (and (kxi) (not(lxi)))) ;; Support.  Cancellation. 
(when (m0f) (and (mxi) (not(qxi)))) ;; Support.  Cancellation. 
(when (r0f) (and (rxi) (not(txi)))) ;; Support.  Cancellation. 
(when (u0f) (and (uxi) (not(vxi)))) ;; Support.  Cancellation. 
(when (x0f) (and (xxi) (not(yxi)))) ;; Support.  Cancellation. 
(when (z0f) (and (zxi) (not(byi)))) ;; Support.  Cancellation. 
(when (cag) (and (cyi) (not(gyi)))) ;; Support.  Cancellation. 
(when (hag) (and (hyi) (not(jyi)))) ;; Support.  Cancellation. 
(when (kag) (and (kyi) (not(lyi)))) ;; Support.  Cancellation. 
(when (mag) (and (myi) (not(qyi)))) ;; Support.  Cancellation. 
(when (rag) (and (ryi) (not(tyi)))) ;; Support.  Cancellation. 
(when (uag) (and (uyi) (not(vyi)))) ;; Support.  Cancellation. 
(when (xag) (and (xyi) (not(yyi)))) ;; Support.  Cancellation. 
(when (zag) (and (zyi) (not(bzi)))) ;; Support.  Cancellation. 
(when (cbg) (and (czi) (not(gzi)))) ;; Support.  Cancellation. 
(when (hbg) (and (hzi) (not(jzi)))) ;; Support.  Cancellation. 
(when (kbg) (and (kzi) (not(lzi)))) ;; Support.  Cancellation. 
(when (mbg) (and (mzi) (not(qzi)))) ;; Support.  Cancellation. 
(when (rbg) (and (rzi) (not(tzi)))) ;; Support.  Cancellation. 
(when (zbg) (and (zzi) (not(b1i)))) ;; Support.  Cancellation. 
(when (ccg) (and (c1i) (not(g1i)))) ;; Support.  Cancellation. 
(when (hcg) (and (h1i) (not(j1i)))) ;; Support.  Cancellation. 
(when (kcg) (and (k1i) (not(l1i)))) ;; Support.  Cancellation. 
(when (mcg) (and (m1i) (not(q1i)))) ;; Support.  Cancellation. 
(when (rcg) (and (r1i) (not(t1i)))) ;; Support.  Cancellation. 
(when (ucg) (and (u1i) (not(v1i)))) ;; Support.  Cancellation. 
(when (xcg) (and (x1i) (not(y1i)))) ;; Support.  Cancellation. 
(when (zcg) (and (z1i) (not(b2i)))) ;; Support.  Cancellation. 
(when (cdg) (and (c2i) (not(g2i)))) ;; Support.  Cancellation. 
(when (hdg) (and (h2i) (not(j2i)))) ;; Support.  Cancellation. 
(when (kdg) (and (k2i) (not(l2i)))) ;; Support.  Cancellation. 
(when (mdg) (and (m2i) (not(q2i)))) ;; Support.  Cancellation. 
(when (rdg) (and (r2i) (not(t2i)))) ;; Support.  Cancellation. 
(when (udg) (and (u2i) (not(v2i)))) ;; Support.  Cancellation. 
(when (xdg) (and (x2i) (not(y2i)))) ;; Support.  Cancellation. 
(when (zdg) (and (z2i) (not(b3i)))) ;; Support.  Cancellation. 
(when (ceg) (and (c3i) (not(g3i)))) ;; Support.  Cancellation. 
(when (heg) (and (h3i) (not(j3i)))) ;; Support.  Cancellation. 
(when (keg) (and (k3i) (not(l3i)))) ;; Support.  Cancellation. 
(when (teg) (and (t3i) (not(u3i)))) ;; Support.  Cancellation. 
(when (veg) (and (v3i) (not(x3i)))) ;; Support.  Cancellation. 
(when (yeg) (and (y3i) (not(z3i)))) ;; Support.  Cancellation. 
(when (gfg) (and (g4i) (not(h4i)))) ;; Support.  Cancellation. 
(when (lfg) (and (l4i) (not(m4i)))) ;; Support.  Cancellation. 
(when (qfg) (and (q4i) (not(r4i)))) ;; Support.  Cancellation. 
(when (tfg) (and (t4i) (not(u4i)))) ;; Support.  Cancellation. 
(when (vfg) (and (v4i) (not(x4i)))) ;; Support.  Cancellation. 
(when (ggg) (and (g5i) (not(h5i)))) ;; Support.  Cancellation. 
(when (jgg) (and (j5i) (not(k5i)))) ;; Support.  Cancellation. 
(when (lgg) (and (l5i) (not(m5i)))) ;; Support.  Cancellation. 
(when (qgg) (and (q5i) (not(r5i)))) ;; Support.  Cancellation. 
(when (tgg) (and (t5i) (not(u5i)))) ;; Support.  Cancellation. 
(when (vgg) (and (v5i) (not(x5i)))) ;; Support.  Cancellation. 
(when (ygg) (and (y5i) (not(z5i)))) ;; Support.  Cancellation. 
(when (bhg) (and (b6i) (not(c6i)))) ;; Support.  Cancellation. 
(when (ghg) (and (g6i) (not(h6i)))) ;; Support.  Cancellation. 
(when (jhg) (and (j6i) (not(k6i)))) ;; Support.  Cancellation. 
(when (lhg) (and (l6i) (not(m6i)))) ;; Support.  Cancellation. 
(when (qhg) (and (q6i) (not(r6i)))) ;; Support.  Cancellation. 
(when (thg) (and (t6i) (not(u6i)))) ;; Support.  Cancellation. 
(when (vhg) (and (v6i) (not(x6i)))) ;; Support.  Cancellation. 
(when (yhg) (and (y6i) (not(z6i)))) ;; Support.  Cancellation. 
(when (big) (and (b7i) (not(c7i)))) ;; Support.  Cancellation. 
(when (gig) (and (g7i) (not(h7i)))) ;; Support.  Cancellation. 
(when (jig) (and (j7i) (not(k7i)))) ;; Support.  Cancellation. 
(when (lig) (and (l7i) (not(m7i)))) ;; Support.  Cancellation. 
(when (qig) (and (q7i) (not(r7i)))) ;; Support.  Cancellation. 
(when (tig) (and (t7i) (not(u7i)))) ;; Support.  Cancellation. 
(when (vig) (and (v7i) (not(x7i)))) ;; Support.  Cancellation. 
(when (yig) (and (y7i) (not(z7i)))) ;; Support.  Cancellation. 
(when (bjg) (and (b8i) (not(c8i)))) ;; Support.  Cancellation. 
(when (gjg) (and (g8i) (not(h8i)))) ;; Support.  Cancellation. 
(when (jjg) (and (j8i) (not(k8i)))) ;; Support.  Cancellation. 
(when (ljg) (and (l8i) (not(m8i)))) ;; Support.  Cancellation. 
(when (qjg) (and (q8i) (not(r8i)))) ;; Support.  Cancellation. 
(when (tjg)  (t8i)) ;; Support. 
(when (vjg)  (v8i)) ;; Support. 
(when (yjg)  (y8i)) ;; Support. 
(when (bkg)  (b9i)) ;; Support. 
(when (gkg)  (g9i)) ;; Support. 
(when (jkg)  (j9i)) ;; Support. 
(when (lkg)  (l9i)) ;; Support. 
(when (qkg)  (q9i)) ;; Support. 
(when (tkg) (and (t9i) (not(u9i)))) ;; Support.  Cancellation. 
(when (vkg) (and (v9i) (not(x9i)))) ;; Support.  Cancellation. 
(when (ykg) (and (y9i) (not(z9i)))) ;; Support.  Cancellation. 
(when (blg) (and (b0i) (not(c0i)))) ;; Support.  Cancellation. 
(when (tlg)  (t0i)) ;; Support. 
(when (vlg)  (v0i)) ;; Support. 
(when (lmg)  (laj)) ;; Support. 
(when (tmg) (and (taj) (not(uaj)))) ;; Support.  Cancellation. 
(when (vmg) (and (vaj) (not(xaj)))) ;; Support.  Cancellation. 
(when (ymg) (and (yaj) (not(zaj)))) ;; Support.  Cancellation. 
(when (bng) (and (bbj) (not(cbj)))) ;; Support.  Cancellation. 
(when (gng) (and (gbj) (not(hbj)))) ;; Support.  Cancellation. 
(when (jng) (and (jbj) (not(kbj)))) ;; Support.  Cancellation. 
(when (lng) (and (lbj) (not(mbj)))) ;; Support.  Cancellation. 
(when (qng) (and (qbj) (not(rbj)))) ;; Support.  Cancellation. 
(when (tng) (and (tbj) (not(ubj)))) ;; Support.  Cancellation. 
(when (vng) (and (vbj) (not(xbj)))) ;; Support.  Cancellation. 
(when (yng) (and (ybj) (not(zbj)))) ;; Support.  Cancellation. 
(when (bog) (and (bcj) (not(ccj)))) ;; Support.  Cancellation. 
(when (gog) (and (gcj) (not(hcj)))) ;; Support.  Cancellation. 
(when (jog) (and (jcj) (not(kcj)))) ;; Support.  Cancellation. 
(when (log) (and (lcj) (not(mcj)))) ;; Support.  Cancellation. 
(when (qog) (and (qcj) (not(rcj)))) ;; Support.  Cancellation. 
(when (tog)  (tcj)) ;; Support. 
(when (vog)  (vcj)) ;; Support. 
(when (yog)  (ycj)) ;; Support. 
(when (bpg)  (bdj)) ;; Support. 
(when (gpg)  (gdj)) ;; Support. 
(when (jpg)  (jdj)) ;; Support. 
(when (lpg)  (ldj)) ;; Support. 
(when (qpg)  (qdj)) ;; Support. 
(when (tpg)  (tdj)) ;; Support. 
(when (vpg)  (vdj)) ;; Support. 
(when (ypg)  (ydj)) ;; Support. 
(when (bqg)  (bej)) ;; Support. 
(when (gqg)  (gej)) ;; Support. 
(when (jqg)  (jej)) ;; Support. 
(when (lqg)  (lej)) ;; Support. 
(when (qqg)  (qej)) ;; Support. 
(when (tqg) (and (tej) (not(uej)))) ;; Support.  Cancellation. 
(when (vqg) (and (vej) (not(xej)))) ;; Support.  Cancellation. 
(when (yqg)  (yej)) ;; Support. 
(when (bsg)  (bfj)) ;; Support. 
(when (gsg) (and (gfj) (not(hfj)))) ;; Support.  Cancellation. 
(when (jsg) (and (jfj) (not(kfj)))) ;; Support.  Cancellation. 
(when (lsg)  (lfj)) ;; Support. 
(when (qsg)  (qfj)) ;; Support. 
(when (rsg) (and (rfj) (not(tfj)))) ;; Support.  Cancellation. 
(when (usg) (and (ufj) (not(vfj)))) ;; Support.  Cancellation. 
(when (xsg) (and (xfj) (not(yfj)))) ;; Support.  Cancellation. 
(when (zsg) (and (zfj) (not(bgj)))) ;; Support.  Cancellation. 
(when (crg)  (cgj)) ;; Support. 
(when (hrg)  (hgj)) ;; Support. 
(when (krg)  (kgj)) ;; Support. 
(when (mrg)  (mgj)) ;; Support. 
(when (rrg) (and (rgj) (not(tgj)))) ;; Support.  Cancellation. 
(when (urg) (and (ugj) (not(vgj)))) ;; Support.  Cancellation. 
(when (xrg)  (xgj)) ;; Support. 
(when (zrg)  (zgj)) ;; Support. 
(when (ctg)  (chj)) ;; Support. 
(when (htg)  (hhj)) ;; Support. 
(when (ktg) (and (khj) (not(lhj)))) ;; Support.  Cancellation. 
(when (mtg) (and (mhj) (not(qhj)))) ;; Support.  Cancellation. 
(when (rtg)  (rhj)) ;; Support. 
(when (utg)  (uhj)) ;; Support. 
(when (xtg)  (xhj)) ;; Support. 
(when (ztg)  (zhj)) ;; Support. 
(when (cug) (and (cij) (not(gij)))) ;; Support.  Cancellation. 
(when (hug) (and (hij) (not(jij)))) ;; Support.  Cancellation. 
(when (kug) (and (kij) (not(lij)))) ;; Support.  Cancellation. 
(when (mug) (and (mij) (not(qij)))) ;; Support.  Cancellation. 
(when (rug)  (rij)) ;; Support. 
(when (uug)  (uij)) ;; Support. 
(when (xug)  (xij)) ;; Support. 
(when (zug)  (zij)) ;; Support. 
(when (cvg)  (cjj)) ;; Support. 
(when (hvg)  (hjj)) ;; Support. 
(when (kvg)  (kjj)) ;; Support. 
(when (mvg)  (mjj)) ;; Support. 
(when (rvg)  (rjj)) ;; Support. 
(when (uvg)  (ujj)) ;; Support. 
(when (xvg)  (xjj)) ;; Support. 
(when (zvg)  (zjj)) ;; Support. 
(when (cwg)  (ckj)) ;; Support. 
(when (hwg)  (hkj)) ;; Support. 
(when (kwg)  (kkj)) ;; Support. 
(when (mwg)  (mkj)) ;; Support. 
(when (rwg) (and (rkj) (not(tkj)))) ;; Support.  Cancellation. 
(when (uwg) (and (ukj) (not(vkj)))) ;; Support.  Cancellation. 
(when (xwg) (and (xkj) (not(ykj)))) ;; Support.  Cancellation. 
(when (zwg) (and (zkj) (not(blj)))) ;; Support.  Cancellation. 
(when (cxg) (and (clj) (not(glj)))) ;; Support.  Cancellation. 
(when (hxg) (and (hlj) (not(jlj)))) ;; Support.  Cancellation. 
(when (kxg) (and (klj) (not(llj)))) ;; Support.  Cancellation. 
(when (mxg) (and (mlj) (not(qlj)))) ;; Support.  Cancellation. 
(when (rxg) (and (rlj) (not(tlj)))) ;; Support.  Cancellation. 
(when (uxg) (and (ulj) (not(vlj)))) ;; Support.  Cancellation. 
(when (xxg) (and (xlj) (not(ylj)))) ;; Support.  Cancellation. 
(when (zxg) (and (zlj) (not(bmj)))) ;; Support.  Cancellation. 
(when (cyg) (and (cmj) (not(gmj)))) ;; Support.  Cancellation. 
(when (hyg) (and (hmj) (not(jmj)))) ;; Support.  Cancellation. 
(when (kyg) (and (kmj) (not(lmj)))) ;; Support.  Cancellation. 
(when (myg) (and (mmj) (not(qmj)))) ;; Support.  Cancellation. 
(when (tqi) (and (t3f) (not(qsg)))) ;; Support.  Cancellation. 
(when (not(rqi))  (not(r3f))) ;; Cancellation. 
(when (vqi) (and (v3f) (not(u3f)))) ;; Support.  Cancellation. 
(when (yqi) (and (y3f) (not(x3f)))) ;; Support.  Cancellation. 
(when (bsi) (and (b4f) (not(z3f)))) ;; Support.  Cancellation. 
(when (gsi) (and (g4f) (not(c4f)))) ;; Support.  Cancellation. 
(when (jsi) (and (j4f) (not(h4f)))) ;; Support.  Cancellation. 
(when (lsi) (and (l4f) (not(k4f)))) ;; Support.  Cancellation. 
(when (qsi) (and (q4f) (not(m4f)))) ;; Support.  Cancellation. 
(when (tsi) (and (t4f) (not(r4f)))) ;; Support.  Cancellation. 
(when (vsi) (and (v4f) (not(u4f)))) ;; Support.  Cancellation. 
(when (ysi) (and (y4f) (not(x4f)))) ;; Support.  Cancellation. 
(when (bri) (and (b5f) (not(z4f)))) ;; Support.  Cancellation. 
(when (gri) (and (g5f) (not(c5f)))) ;; Support.  Cancellation. 
(when (jri) (and (j5f) (not(h5f)))) ;; Support.  Cancellation. 
(when (lri) (and (l5f) (not(k5f)))) ;; Support.  Cancellation. 
(when (qri) (and (q5f) (not(m5f)))) ;; Support.  Cancellation. 
(when (tri) (and (t5f) (not(r5f)))) ;; Support.  Cancellation. 
(when (vri) (and (v5f) (not(u5f)))) ;; Support.  Cancellation. 
(when (yri) (and (y5f) (not(x5f)))) ;; Support.  Cancellation. 
(when (bti) (and (b6f) (not(z5f)))) ;; Support.  Cancellation. 
(when (gti) (and (g6f) (not(c6f)))) ;; Support.  Cancellation. 
(when (jti) (and (j6f) (not(h6f)))) ;; Support.  Cancellation. 
(when (lti) (and (l6f) (not(k6f)))) ;; Support.  Cancellation. 
(when (qti) (and (q6f) (not(m6f)))) ;; Support.  Cancellation. 
(when (tti) (and (t6f) (not(r6f)))) ;; Support.  Cancellation. 
(when (vti) (and (v6f) (not(u6f)))) ;; Support.  Cancellation. 
(when (yti) (and (y6f) (not(x6f)))) ;; Support.  Cancellation. 
(when (bui) (and (b7f) (not(z6f)))) ;; Support.  Cancellation. 
(when (gui) (and (g7f) (not(c7f)))) ;; Support.  Cancellation. 
(when (jui) (and (j7f) (not(h7f)))) ;; Support.  Cancellation. 
(when (lui) (and (l7f) (not(k7f)))) ;; Support.  Cancellation. 
(when (qui) (and (q7f) (not(m7f)))) ;; Support.  Cancellation. 
(when (tui) (and (t7f) (not(r7f)))) ;; Support.  Cancellation. 
(when (vui) (and (v7f) (not(u7f)))) ;; Support.  Cancellation. 
(when (yui) (and (y7f) (not(x7f)))) ;; Support.  Cancellation. 
(when (bvi) (and (b8f) (not(z7f)))) ;; Support.  Cancellation. 
(when (gvi) (and (g8f) (not(c8f)))) ;; Support.  Cancellation. 
(when (jvi) (and (j8f) (not(h8f)))) ;; Support.  Cancellation. 
(when (lvi) (and (l8f) (not(k8f)))) ;; Support.  Cancellation. 
(when (qvi) (and (q8f) (not(m8f)))) ;; Support.  Cancellation. 
(when (tvi) (and (t8f) (not(r8f)))) ;; Support.  Cancellation. 
(when (vvi) (and (v8f) (not(u8f)))) ;; Support.  Cancellation. 
(when (yvi) (and (y8f) (not(x8f)))) ;; Support.  Cancellation. 
(when (bwi) (and (b9f) (not(z8f)))) ;; Support.  Cancellation. 
(when (gwi) (and (g9f) (not(c9f)))) ;; Support.  Cancellation. 
(when (jwi) (and (j9f) (not(h9f)))) ;; Support.  Cancellation. 
(when (lwi) (and (l9f) (not(k9f)))) ;; Support.  Cancellation. 
(when (qwi) (and (q9f) (not(m9f)))) ;; Support.  Cancellation. 
(when (twi) (and (t9f) (not(r9f)))) ;; Support.  Cancellation. 
(when (vwi) (and (v9f) (not(u9f)))) ;; Support.  Cancellation. 
(when (ywi) (and (y9f) (not(x9f)))) ;; Support.  Cancellation. 
(when (bxi) (and (b0f) (not(z9f)))) ;; Support.  Cancellation. 
(when (gxi) (and (g0f) (not(c0f)))) ;; Support.  Cancellation. 
(when (jxi) (and (j0f) (not(h0f)))) ;; Support.  Cancellation. 
(when (lxi) (and (l0f) (not(k0f)))) ;; Support.  Cancellation. 
(when (qxi) (and (q0f) (not(m0f)))) ;; Support.  Cancellation. 
(when (txi) (and (t0f) (not(r0f)))) ;; Support.  Cancellation. 
(when (vxi) (and (v0f) (not(u0f)))) ;; Support.  Cancellation. 
(when (yxi) (and (y0f) (not(x0f)))) ;; Support.  Cancellation. 
(when (byi) (and (bag) (not(z0f)))) ;; Support.  Cancellation. 
(when (gyi) (and (gag) (not(cag)))) ;; Support.  Cancellation. 
(when (jyi) (and (jag) (not(hag)))) ;; Support.  Cancellation. 
(when (lyi) (and (lag) (not(kag)))) ;; Support.  Cancellation. 
(when (qyi) (and (qag) (not(mag)))) ;; Support.  Cancellation. 
(when (tyi) (and (tag) (not(rag)))) ;; Support.  Cancellation. 
(when (vyi) (and (vag) (not(uag)))) ;; Support.  Cancellation. 
(when (yyi) (and (yag) (not(xag)))) ;; Support.  Cancellation. 
(when (bzi) (and (bbg) (not(zag)))) ;; Support.  Cancellation. 
(when (gzi) (and (gbg) (not(cbg)))) ;; Support.  Cancellation. 
(when (jzi) (and (jbg) (not(hbg)))) ;; Support.  Cancellation. 
(when (lzi) (and (lbg) (not(kbg)))) ;; Support.  Cancellation. 
(when (qzi) (and (qbg) (not(mbg)))) ;; Support.  Cancellation. 
(when (tzi) (and (tbg) (not(rbg)))) ;; Support.  Cancellation. 
(when (vzi)  (vbg)) ;; Support. 
(when (yzi)  (ybg)) ;; Support. 
(when (b1i) (and (bcg) (not(zbg)))) ;; Support.  Cancellation. 
(when (g1i) (and (gcg) (not(ccg)))) ;; Support.  Cancellation. 
(when (j1i) (and (jcg) (not(hcg)))) ;; Support.  Cancellation. 
(when (l1i) (and (lcg) (not(kcg)))) ;; Support.  Cancellation. 
(when (q1i) (and (qcg) (not(mcg)))) ;; Support.  Cancellation. 
(when (t1i) (and (tcg) (not(rcg)))) ;; Support.  Cancellation. 
(when (v1i) (and (vcg) (not(ucg)))) ;; Support.  Cancellation. 
(when (y1i) (and (ycg) (not(xcg)))) ;; Support.  Cancellation. 
(when (b2i) (and (bdg) (not(zcg)))) ;; Support.  Cancellation. 
(when (g2i) (and (gdg) (not(cdg)))) ;; Support.  Cancellation. 
(when (j2i) (and (jdg) (not(hdg)))) ;; Support.  Cancellation. 
(when (l2i) (and (ldg) (not(kdg)))) ;; Support.  Cancellation. 
(when (q2i) (and (qdg) (not(mdg)))) ;; Support.  Cancellation. 
(when (t2i) (and (tdg) (not(rdg)))) ;; Support.  Cancellation. 
(when (v2i) (and (vdg) (not(udg)))) ;; Support.  Cancellation. 
(when (y2i) (and (ydg) (not(xdg)))) ;; Support.  Cancellation. 
(when (b3i) (and (beg) (not(zdg)))) ;; Support.  Cancellation. 
(when (g3i) (and (geg) (not(ceg)))) ;; Support.  Cancellation. 
(when (j3i) (and (jeg) (not(heg)))) ;; Support.  Cancellation. 
(when (l3i) (and (leg) (not(keg)))) ;; Support.  Cancellation. 
(when (q3i)  (qeg)) ;; Support. 
(when (r3i)  (reg)) ;; Support. 
(when (u3i) (and (ueg) (not(teg)))) ;; Support.  Cancellation. 
(when (x3i) (and (xeg) (not(veg)))) ;; Support.  Cancellation. 
(when (z3i) (and (zeg) (not(yeg)))) ;; Support.  Cancellation. 
(when (c4i)  (cfg)) ;; Support. 
(when (h4i) (and (hfg) (not(gfg)))) ;; Support.  Cancellation. 
(when (m4i) (and (mfg) (not(lfg)))) ;; Support.  Cancellation. 
(when (r4i) (and (rfg) (not(qfg)))) ;; Support.  Cancellation. 
(when (u4i) (and (ufg) (not(tfg)))) ;; Support.  Cancellation. 
(when (x4i) (and (xfg) (not(vfg)))) ;; Support.  Cancellation. 
(when (z4i)  (zfg)) ;; Support. 
(when (c5i)  (cgg)) ;; Support. 
(when (h5i) (and (hgg) (not(ggg)))) ;; Support.  Cancellation. 
(when (k5i) (and (kgg) (not(jgg)))) ;; Support.  Cancellation. 
(when (m5i) (and (mgg) (not(lgg)))) ;; Support.  Cancellation. 
(when (r5i) (and (rgg) (not(qgg)))) ;; Support.  Cancellation. 
(when (u5i) (and (ugg) (not(tgg)))) ;; Support.  Cancellation. 
(when (x5i) (and (xgg) (not(vgg)))) ;; Support.  Cancellation. 
(when (z5i) (and (zgg) (not(ygg)))) ;; Support.  Cancellation. 
(when (c6i) (and (chg) (not(bhg)))) ;; Support.  Cancellation. 
(when (h6i) (and (hhg) (not(ghg)))) ;; Support.  Cancellation. 
(when (k6i) (and (khg) (not(jhg)))) ;; Support.  Cancellation. 
(when (m6i) (and (mhg) (not(lhg)))) ;; Support.  Cancellation. 
(when (r6i) (and (rhg) (not(qhg)))) ;; Support.  Cancellation. 
(when (u6i) (and (uhg) (not(thg)))) ;; Support.  Cancellation. 
(when (x6i) (and (xhg) (not(vhg)))) ;; Support.  Cancellation. 
(when (z6i) (and (zhg) (not(yhg)))) ;; Support.  Cancellation. 
(when (c7i) (and (cig) (not(big)))) ;; Support.  Cancellation. 
(when (h7i) (and (hig) (not(gig)))) ;; Support.  Cancellation. 
(when (k7i) (and (kig) (not(jig)))) ;; Support.  Cancellation. 
(when (m7i) (and (mig) (not(lig)))) ;; Support.  Cancellation. 
(when (r7i) (and (rig) (not(qig)))) ;; Support.  Cancellation. 
(when (u7i) (and (uig) (not(tig)))) ;; Support.  Cancellation. 
(when (x7i) (and (xig) (not(vig)))) ;; Support.  Cancellation. 
(when (z7i) (and (zig) (not(yig)))) ;; Support.  Cancellation. 
(when (c8i) (and (cjg) (not(bjg)))) ;; Support.  Cancellation. 
(when (h8i) (and (hjg) (not(gjg)))) ;; Support.  Cancellation. 
(when (k8i) (and (kjg) (not(jjg)))) ;; Support.  Cancellation. 
(when (m8i) (and (mjg) (not(ljg)))) ;; Support.  Cancellation. 
(when (r8i) (and (rjg) (not(qjg)))) ;; Support.  Cancellation. 
(when (u9i) (and (ukg) (not(tkg)))) ;; Support.  Cancellation. 
(when (x9i) (and (xkg) (not(vkg)))) ;; Support.  Cancellation. 
(when (z9i) (and (zkg) (not(ykg)))) ;; Support.  Cancellation. 
(when (c0i) (and (clg) (not(blg)))) ;; Support.  Cancellation. 
(when (h0i)  (hlg)) ;; Support. 
(when (k0i)  (klg)) ;; Support. 
(when (m0i)  (mlg)) ;; Support. 
(when (r0i)  (rlg)) ;; Support. 
(when (uaj) (and (umg) (not(tmg)))) ;; Support.  Cancellation. 
(when (xaj) (and (xmg) (not(vmg)))) ;; Support.  Cancellation. 
(when (zaj) (and (zmg) (not(ymg)))) ;; Support.  Cancellation. 
(when (cbj) (and (cng) (not(bng)))) ;; Support.  Cancellation. 
(when (hbj) (and (hng) (not(gng)))) ;; Support.  Cancellation. 
(when (kbj) (and (kng) (not(jng)))) ;; Support.  Cancellation. 
(when (mbj) (and (mng) (not(lng)))) ;; Support.  Cancellation. 
(when (rbj) (and (rng) (not(qng)))) ;; Support.  Cancellation. 
(when (ubj) (and (ung) (not(tng)))) ;; Support.  Cancellation. 
(when (xbj) (and (xng) (not(vng)))) ;; Support.  Cancellation. 
(when (zbj) (and (zng) (not(yng)))) ;; Support.  Cancellation. 
(when (ccj) (and (cog) (not(bog)))) ;; Support.  Cancellation. 
(when (hcj) (and (hog) (not(gog)))) ;; Support.  Cancellation. 
(when (kcj) (and (kog) (not(jog)))) ;; Support.  Cancellation. 
(when (mcj) (and (mog) (not(log)))) ;; Support.  Cancellation. 
(when (rcj) (and (rog) (not(qog)))) ;; Support.  Cancellation. 
(when (uej) (and (uqg) (not(tqg)))) ;; Support.  Cancellation. 
(when (xej) (and (xqg) (not(vqg)))) ;; Support.  Cancellation. 
(when (hfj) (and (hsg) (not(gsg)))) ;; Support.  Cancellation. 
(when (kfj) (and (ksg) (not(jsg)))) ;; Support.  Cancellation. 
(when (tfj) (and (tsg) (not(rsg)))) ;; Support.  Cancellation. 
(when (vfj) (and (vsg) (not(usg)))) ;; Support.  Cancellation. 
(when (yfj) (and (ysg) (not(xsg)))) ;; Support.  Cancellation. 
(when (bgj) (and (brg) (not(zsg)))) ;; Support.  Cancellation. 
(when (tgj) (and (trg) (not(rrg)))) ;; Support.  Cancellation. 
(when (vgj) (and (vrg) (not(urg)))) ;; Support.  Cancellation. 
(when (lhj) (and (ltg) (not(ktg)))) ;; Support.  Cancellation. 
(when (qhj) (and (qtg) (not(mtg)))) ;; Support.  Cancellation. 
(when (gij) (and (gug) (not(cug)))) ;; Support.  Cancellation. 
(when (jij) (and (jug) (not(hug)))) ;; Support.  Cancellation. 
(when (lij) (and (lug) (not(kug)))) ;; Support.  Cancellation. 
(when (qij) (and (qug) (not(mug)))) ;; Support.  Cancellation. 
(when (tkj) (and (twg) (not(rwg)))) ;; Support.  Cancellation. 
(when (vkj) (and (vwg) (not(uwg)))) ;; Support.  Cancellation. 
(when (ykj) (and (ywg) (not(xwg)))) ;; Support.  Cancellation. 
(when (blj) (and (bxg) (not(zwg)))) ;; Support.  Cancellation. 
(when (glj) (and (gxg) (not(cxg)))) ;; Support.  Cancellation. 
(when (jlj) (and (jxg) (not(hxg)))) ;; Support.  Cancellation. 
(when (llj) (and (lxg) (not(kxg)))) ;; Support.  Cancellation. 
(when (qlj) (and (qxg) (not(mxg)))) ;; Support.  Cancellation. 
(when (tlj) (and (txg) (not(rxg)))) ;; Support.  Cancellation. 
(when (vlj) (and (vxg) (not(uxg)))) ;; Support.  Cancellation. 
(when (ylj) (and (yxg) (not(xxg)))) ;; Support.  Cancellation. 
(when (bmj) (and (byg) (not(zxg)))) ;; Support.  Cancellation. 
(when (gmj) (and (gyg) (not(cyg)))) ;; Support.  Cancellation. 
(when (jmj) (and (jyg) (not(hyg)))) ;; Support.  Cancellation. 
(when (lmj) (and (lyg) (not(kyg)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L4_L6
:parameters ()
:precondition (and (q7e))

:effect (and  (qei) (zlg)
(when (qqi) (and (qyg) (not(myg)))) ;; Support.  Cancellation. 
(when (r3f) (and (ruh) (not(r7h)))) ;; Support.  Cancellation. 
(when (not(t3f))  (not(tuh))) ;; Cancellation. 
(when (u3f) (and (uuh) (not(vuh)))) ;; Support.  Cancellation. 
(when (x3f) (and (xuh) (not(yuh)))) ;; Support.  Cancellation. 
(when (z3f) (and (zuh) (not(bvh)))) ;; Support.  Cancellation. 
(when (c4f) (and (cvh) (not(gvh)))) ;; Support.  Cancellation. 
(when (h4f) (and (hvh) (not(jvh)))) ;; Support.  Cancellation. 
(when (k4f) (and (kvh) (not(lvh)))) ;; Support.  Cancellation. 
(when (m4f) (and (mvh) (not(qvh)))) ;; Support.  Cancellation. 
(when (r4f) (and (rvh) (not(tvh)))) ;; Support.  Cancellation. 
(when (u4f) (and (uvh) (not(vvh)))) ;; Support.  Cancellation. 
(when (x4f) (and (xvh) (not(yvh)))) ;; Support.  Cancellation. 
(when (z4f) (and (zvh) (not(bwh)))) ;; Support.  Cancellation. 
(when (c5f) (and (cwh) (not(gwh)))) ;; Support.  Cancellation. 
(when (h5f) (and (hwh) (not(jwh)))) ;; Support.  Cancellation. 
(when (k5f) (and (kwh) (not(lwh)))) ;; Support.  Cancellation. 
(when (m5f) (and (mwh) (not(qwh)))) ;; Support.  Cancellation. 
(when (r5f) (and (rwh) (not(twh)))) ;; Support.  Cancellation. 
(when (u5f) (and (uwh) (not(vwh)))) ;; Support.  Cancellation. 
(when (x5f) (and (xwh) (not(ywh)))) ;; Support.  Cancellation. 
(when (z5f) (and (zwh) (not(bxh)))) ;; Support.  Cancellation. 
(when (c6f) (and (cxh) (not(gxh)))) ;; Support.  Cancellation. 
(when (h6f) (and (hxh) (not(jxh)))) ;; Support.  Cancellation. 
(when (k6f) (and (kxh) (not(lxh)))) ;; Support.  Cancellation. 
(when (m6f) (and (mxh) (not(qxh)))) ;; Support.  Cancellation. 
(when (r6f) (and (rxh) (not(txh)))) ;; Support.  Cancellation. 
(when (u6f) (and (uxh) (not(vxh)))) ;; Support.  Cancellation. 
(when (x6f) (and (xxh) (not(yxh)))) ;; Support.  Cancellation. 
(when (z6f) (and (zxh) (not(byh)))) ;; Support.  Cancellation. 
(when (c7f) (and (cyh) (not(gyh)))) ;; Support.  Cancellation. 
(when (h7f) (and (hyh) (not(jyh)))) ;; Support.  Cancellation. 
(when (k7f) (and (kyh) (not(lyh)))) ;; Support.  Cancellation. 
(when (m7f) (and (myh) (not(qyh)))) ;; Support.  Cancellation. 
(when (r7f) (and (ryh) (not(tyh)))) ;; Support.  Cancellation. 
(when (u7f) (and (uyh) (not(vyh)))) ;; Support.  Cancellation. 
(when (x7f) (and (xyh) (not(yyh)))) ;; Support.  Cancellation. 
(when (z7f) (and (zyh) (not(bzh)))) ;; Support.  Cancellation. 
(when (c8f) (and (czh) (not(gzh)))) ;; Support.  Cancellation. 
(when (h8f) (and (hzh) (not(jzh)))) ;; Support.  Cancellation. 
(when (k8f) (and (kzh) (not(lzh)))) ;; Support.  Cancellation. 
(when (m8f) (and (mzh) (not(qzh)))) ;; Support.  Cancellation. 
(when (r8f) (and (rzh) (not(tzh)))) ;; Support.  Cancellation. 
(when (u8f) (and (uzh) (not(vzh)))) ;; Support.  Cancellation. 
(when (x8f) (and (xzh) (not(yzh)))) ;; Support.  Cancellation. 
(when (z8f) (and (zzh) (not(b1h)))) ;; Support.  Cancellation. 
(when (c9f) (and (c1h) (not(g1h)))) ;; Support.  Cancellation. 
(when (h9f) (and (h1h) (not(j1h)))) ;; Support.  Cancellation. 
(when (k9f) (and (k1h) (not(l1h)))) ;; Support.  Cancellation. 
(when (m9f) (and (m1h) (not(q1h)))) ;; Support.  Cancellation. 
(when (r9f) (and (r1h) (not(t1h)))) ;; Support.  Cancellation. 
(when (u9f) (and (u1h) (not(v1h)))) ;; Support.  Cancellation. 
(when (x9f) (and (x1h) (not(y1h)))) ;; Support.  Cancellation. 
(when (z9f) (and (z1h) (not(b2h)))) ;; Support.  Cancellation. 
(when (c0f) (and (c2h) (not(g2h)))) ;; Support.  Cancellation. 
(when (h0f) (and (h2h) (not(j2h)))) ;; Support.  Cancellation. 
(when (k0f) (and (k2h) (not(l2h)))) ;; Support.  Cancellation. 
(when (m0f) (and (m2h) (not(q2h)))) ;; Support.  Cancellation. 
(when (r0f) (and (r2h) (not(t2h)))) ;; Support.  Cancellation. 
(when (u0f) (and (u2h) (not(v2h)))) ;; Support.  Cancellation. 
(when (x0f) (and (x2h) (not(y2h)))) ;; Support.  Cancellation. 
(when (z0f) (and (z2h) (not(b3h)))) ;; Support.  Cancellation. 
(when (cag) (and (c3h) (not(g3h)))) ;; Support.  Cancellation. 
(when (hag) (and (h3h) (not(j3h)))) ;; Support.  Cancellation. 
(when (kag) (and (k3h) (not(l3h)))) ;; Support.  Cancellation. 
(when (mag) (and (m3h) (not(q3h)))) ;; Support.  Cancellation. 
(when (rag) (and (r3h) (not(t3h)))) ;; Support.  Cancellation. 
(when (uag) (and (u3h) (not(v3h)))) ;; Support.  Cancellation. 
(when (xag) (and (x3h) (not(y3h)))) ;; Support.  Cancellation. 
(when (zag) (and (z3h) (not(b4h)))) ;; Support.  Cancellation. 
(when (cbg) (and (c4h) (not(g4h)))) ;; Support.  Cancellation. 
(when (hbg) (and (h4h) (not(j4h)))) ;; Support.  Cancellation. 
(when (kbg) (and (k4h) (not(l4h)))) ;; Support.  Cancellation. 
(when (mbg) (and (m4h) (not(q4h)))) ;; Support.  Cancellation. 
(when (rbg) (and (r4h) (not(t4h)))) ;; Support.  Cancellation. 
(when (zbg) (and (z4h) (not(b5h)))) ;; Support.  Cancellation. 
(when (ccg) (and (c5h) (not(g5h)))) ;; Support.  Cancellation. 
(when (hcg) (and (h5h) (not(j5h)))) ;; Support.  Cancellation. 
(when (kcg) (and (k5h) (not(l5h)))) ;; Support.  Cancellation. 
(when (mcg) (and (m5h) (not(q5h)))) ;; Support.  Cancellation. 
(when (rcg) (and (r5h) (not(t5h)))) ;; Support.  Cancellation. 
(when (ucg) (and (u5h) (not(v5h)))) ;; Support.  Cancellation. 
(when (xcg) (and (x5h) (not(y5h)))) ;; Support.  Cancellation. 
(when (zcg) (and (z5h) (not(b6h)))) ;; Support.  Cancellation. 
(when (cdg) (and (c6h) (not(g6h)))) ;; Support.  Cancellation. 
(when (hdg) (and (h6h) (not(j6h)))) ;; Support.  Cancellation. 
(when (kdg) (and (k6h) (not(l6h)))) ;; Support.  Cancellation. 
(when (mdg) (and (m6h) (not(q6h)))) ;; Support.  Cancellation. 
(when (rdg) (and (r6h) (not(t6h)))) ;; Support.  Cancellation. 
(when (udg) (and (u6h) (not(v6h)))) ;; Support.  Cancellation. 
(when (xdg) (and (x6h) (not(y6h)))) ;; Support.  Cancellation. 
(when (zdg) (and (z6h) (not(b7h)))) ;; Support.  Cancellation. 
(when (ceg) (and (c7h) (not(g7h)))) ;; Support.  Cancellation. 
(when (heg) (and (h7h) (not(j7h)))) ;; Support.  Cancellation. 
(when (keg) (and (k7h) (not(l7h)))) ;; Support.  Cancellation. 
(when (teg) (and (t7h) (not(u7h)))) ;; Support.  Cancellation. 
(when (veg) (and (v7h) (not(x7h)))) ;; Support.  Cancellation. 
(when (yeg) (and (y7h) (not(z7h)))) ;; Support.  Cancellation. 
(when (gfg) (and (g8h) (not(h8h)))) ;; Support.  Cancellation. 
(when (lfg) (and (l8h) (not(m8h)))) ;; Support.  Cancellation. 
(when (qfg) (and (q8h) (not(r8h)))) ;; Support.  Cancellation. 
(when (tfg) (and (t8h) (not(u8h)))) ;; Support.  Cancellation. 
(when (vfg) (and (v8h) (not(x8h)))) ;; Support.  Cancellation. 
(when (ggg) (and (g9h) (not(h9h)))) ;; Support.  Cancellation. 
(when (jgg) (and (j9h) (not(k9h)))) ;; Support.  Cancellation. 
(when (lgg) (and (l9h) (not(m9h)))) ;; Support.  Cancellation. 
(when (qgg) (and (q9h) (not(r9h)))) ;; Support.  Cancellation. 
(when (tgg) (and (t9h) (not(u9h)))) ;; Support.  Cancellation. 
(when (vgg) (and (v9h) (not(x9h)))) ;; Support.  Cancellation. 
(when (ygg) (and (y9h) (not(z9h)))) ;; Support.  Cancellation. 
(when (bhg) (and (b0h) (not(c0h)))) ;; Support.  Cancellation. 
(when (ghg) (and (g0h) (not(h0h)))) ;; Support.  Cancellation. 
(when (jhg) (and (j0h) (not(k0h)))) ;; Support.  Cancellation. 
(when (lhg) (and (l0h) (not(m0h)))) ;; Support.  Cancellation. 
(when (qhg) (and (q0h) (not(r0h)))) ;; Support.  Cancellation. 
(when (thg) (and (t0h) (not(u0h)))) ;; Support.  Cancellation. 
(when (vhg) (and (v0h) (not(x0h)))) ;; Support.  Cancellation. 
(when (yhg) (and (y0h) (not(z0h)))) ;; Support.  Cancellation. 
(when (big) (and (bai) (not(cai)))) ;; Support.  Cancellation. 
(when (gig) (and (gai) (not(hai)))) ;; Support.  Cancellation. 
(when (jig) (and (jai) (not(kai)))) ;; Support.  Cancellation. 
(when (lig) (and (lai) (not(mai)))) ;; Support.  Cancellation. 
(when (qig) (and (qai) (not(rai)))) ;; Support.  Cancellation. 
(when (tig) (and (tai) (not(uai)))) ;; Support.  Cancellation. 
(when (vig) (and (vai) (not(xai)))) ;; Support.  Cancellation. 
(when (yig) (and (yai) (not(zai)))) ;; Support.  Cancellation. 
(when (bjg) (and (bbi) (not(cbi)))) ;; Support.  Cancellation. 
(when (gjg) (and (gbi) (not(hbi)))) ;; Support.  Cancellation. 
(when (jjg) (and (jbi) (not(kbi)))) ;; Support.  Cancellation. 
(when (ljg) (and (lbi) (not(mbi)))) ;; Support.  Cancellation. 
(when (qjg) (and (qbi) (not(rbi)))) ;; Support.  Cancellation. 
(when (tjg) (and (tbi) (not(ubi)))) ;; Support.  Cancellation. 
(when (vjg) (and (vbi) (not(xbi)))) ;; Support.  Cancellation. 
(when (yjg)  (ybi)) ;; Support. 
(when (bkg)  (bci)) ;; Support. 
(when (gkg) (and (gci) (not(hci)))) ;; Support.  Cancellation. 
(when (jkg) (and (jci) (not(kci)))) ;; Support.  Cancellation. 
(when (lkg)  (lci)) ;; Support. 
(when (qkg)  (qci)) ;; Support. 
(when (tkg) (and (tci) (not(uci)))) ;; Support.  Cancellation. 
(when (vkg) (and (vci) (not(xci)))) ;; Support.  Cancellation. 
(when (ykg) (and (yci) (not(zci)))) ;; Support.  Cancellation. 
(when (blg) (and (bdi) (not(cdi)))) ;; Support.  Cancellation. 
(when (tlg) (and (tdi) (not(udi)))) ;; Support.  Cancellation. 
(when (vlg)  (vdi)) ;; Support. 
(when (lmg) (and (lei) (not(mei)))) ;; Support.  Cancellation. 
(when (tmg) (and (tei) (not(uei)))) ;; Support.  Cancellation. 
(when (vmg) (and (vei) (not(xei)))) ;; Support.  Cancellation. 
(when (ymg) (and (yei) (not(zei)))) ;; Support.  Cancellation. 
(when (bng) (and (bfi) (not(cfi)))) ;; Support.  Cancellation. 
(when (gng) (and (gfi) (not(hfi)))) ;; Support.  Cancellation. 
(when (jng) (and (jfi) (not(kfi)))) ;; Support.  Cancellation. 
(when (lng) (and (lfi) (not(mfi)))) ;; Support.  Cancellation. 
(when (qng) (and (qfi) (not(rfi)))) ;; Support.  Cancellation. 
(when (tng) (and (tfi) (not(ufi)))) ;; Support.  Cancellation. 
(when (vng) (and (vfi) (not(xfi)))) ;; Support.  Cancellation. 
(when (yng) (and (yfi) (not(zfi)))) ;; Support.  Cancellation. 
(when (bog) (and (bgi) (not(cgi)))) ;; Support.  Cancellation. 
(when (gog) (and (ggi) (not(hgi)))) ;; Support.  Cancellation. 
(when (jog) (and (jgi) (not(kgi)))) ;; Support.  Cancellation. 
(when (log) (and (lgi) (not(mgi)))) ;; Support.  Cancellation. 
(when (qog) (and (qgi) (not(rgi)))) ;; Support.  Cancellation. 
(when (tog)  (tgi)) ;; Support. 
(when (vog)  (vgi)) ;; Support. 
(when (yog)  (ygi)) ;; Support. 
(when (bpg)  (bhi)) ;; Support. 
(when (gpg)  (ghi)) ;; Support. 
(when (jpg)  (jhi)) ;; Support. 
(when (lpg)  (lhi)) ;; Support. 
(when (qpg)  (qhi)) ;; Support. 
(when (tpg) (and (thi) (not(uhi)))) ;; Support.  Cancellation. 
(when (vpg) (and (vhi) (not(xhi)))) ;; Support.  Cancellation. 
(when (ypg) (and (yhi) (not(zhi)))) ;; Support.  Cancellation. 
(when (bqg) (and (bii) (not(cii)))) ;; Support.  Cancellation. 
(when (gqg) (and (gii) (not(hii)))) ;; Support.  Cancellation. 
(when (jqg) (and (jii) (not(kii)))) ;; Support.  Cancellation. 
(when (lqg) (and (lii) (not(mii)))) ;; Support.  Cancellation. 
(when (qqg) (and (qii) (not(rii)))) ;; Support.  Cancellation. 
(when (tqg) (and (tii) (not(uii)))) ;; Support.  Cancellation. 
(when (vqg) (and (vii) (not(xii)))) ;; Support.  Cancellation. 
(when (yqg) (and (yii) (not(zii)))) ;; Support.  Cancellation. 
(when (bsg) (and (bji) (not(cji)))) ;; Support.  Cancellation. 
(when (gsg) (and (gji) (not(hji)))) ;; Support.  Cancellation. 
(when (jsg) (and (jji) (not(kji)))) ;; Support.  Cancellation. 
(when (lsg)  (lji)) ;; Support. 
(when (qsg)  (qji)) ;; Support. 
(when (rsg) (and (rji) (not(tji)))) ;; Support.  Cancellation. 
(when (usg) (and (uji) (not(vji)))) ;; Support.  Cancellation. 
(when (xsg) (and (xji) (not(yji)))) ;; Support.  Cancellation. 
(when (zsg) (and (zji) (not(bki)))) ;; Support.  Cancellation. 
(when (crg) (and (cki) (not(gki)))) ;; Support.  Cancellation. 
(when (hrg)  (hki)) ;; Support. 
(when (krg)  (kki)) ;; Support. 
(when (mrg) (and (mki) (not(qki)))) ;; Support.  Cancellation. 
(when (rrg) (and (rki) (not(tki)))) ;; Support.  Cancellation. 
(when (urg) (and (uki) (not(vki)))) ;; Support.  Cancellation. 
(when (xrg) (and (xki) (not(yki)))) ;; Support.  Cancellation. 
(when (zrg) (and (zki) (not(bli)))) ;; Support.  Cancellation. 
(when (ctg)  (cli)) ;; Support. 
(when (htg)  (hli)) ;; Support. 
(when (ktg) (and (kli) (not(lli)))) ;; Support.  Cancellation. 
(when (mtg) (and (mli) (not(qli)))) ;; Support.  Cancellation. 
(when (rtg)  (rli)) ;; Support. 
(when (utg) (and (uli) (not(vli)))) ;; Support.  Cancellation. 
(when (xtg) (and (xli) (not(yli)))) ;; Support.  Cancellation. 
(when (ztg)  (zli)) ;; Support. 
(when (cug) (and (cmi) (not(gmi)))) ;; Support.  Cancellation. 
(when (hug) (and (hmi) (not(jmi)))) ;; Support.  Cancellation. 
(when (kug) (and (kmi) (not(lmi)))) ;; Support.  Cancellation. 
(when (mug) (and (mmi) (not(qmi)))) ;; Support.  Cancellation. 
(when (rug) (and (rmi) (not(tmi)))) ;; Support.  Cancellation. 
(when (uug)  (umi)) ;; Support. 
(when (xug)  (xmi)) ;; Support. 
(when (zug) (and (zmi) (not(bni)))) ;; Support.  Cancellation. 
(when (cvg) (and (cni) (not(gni)))) ;; Support.  Cancellation. 
(when (hvg)  (hni)) ;; Support. 
(when (kvg) (and (kni) (not(lni)))) ;; Support.  Cancellation. 
(when (mvg)  (mni)) ;; Support. 
(when (rvg) (and (rni) (not(tni)))) ;; Support.  Cancellation. 
(when (uvg) (and (uni) (not(vni)))) ;; Support.  Cancellation. 
(when (xvg)  (xni)) ;; Support. 
(when (zvg)  (zni)) ;; Support. 
(when (cwg)  (coi)) ;; Support. 
(when (hwg) (and (hoi) (not(joi)))) ;; Support.  Cancellation. 
(when (kwg)  (koi)) ;; Support. 
(when (mwg) (and (moi) (not(qoi)))) ;; Support.  Cancellation. 
(when (rwg) (and (roi) (not(toi)))) ;; Support.  Cancellation. 
(when (uwg) (and (uoi) (not(voi)))) ;; Support.  Cancellation. 
(when (xwg) (and (xoi) (not(yoi)))) ;; Support.  Cancellation. 
(when (zwg) (and (zoi) (not(bpi)))) ;; Support.  Cancellation. 
(when (cxg) (and (cpi) (not(gpi)))) ;; Support.  Cancellation. 
(when (hxg) (and (hpi) (not(jpi)))) ;; Support.  Cancellation. 
(when (kxg) (and (kpi) (not(lpi)))) ;; Support.  Cancellation. 
(when (mxg) (and (mpi) (not(qpi)))) ;; Support.  Cancellation. 
(when (rxg) (and (rpi) (not(tpi)))) ;; Support.  Cancellation. 
(when (uxg) (and (upi) (not(vpi)))) ;; Support.  Cancellation. 
(when (xxg) (and (xpi) (not(ypi)))) ;; Support.  Cancellation. 
(when (zxg) (and (zpi) (not(bqi)))) ;; Support.  Cancellation. 
(when (cyg) (and (cqi) (not(gqi)))) ;; Support.  Cancellation. 
(when (hyg) (and (hqi) (not(jqi)))) ;; Support.  Cancellation. 
(when (kyg) (and (kqi) (not(lqi)))) ;; Support.  Cancellation. 
(when (myg) (and (mqi) (not(qqi)))) ;; Support.  Cancellation. 
(when (tuh) (and (t3f) (not(qsg)))) ;; Support.  Cancellation. 
(when (not(ruh))  (not(r3f))) ;; Cancellation. 
(when (vuh) (and (v3f) (not(u3f)))) ;; Support.  Cancellation. 
(when (yuh) (and (y3f) (not(x3f)))) ;; Support.  Cancellation. 
(when (bvh) (and (b4f) (not(z3f)))) ;; Support.  Cancellation. 
(when (gvh) (and (g4f) (not(c4f)))) ;; Support.  Cancellation. 
(when (jvh) (and (j4f) (not(h4f)))) ;; Support.  Cancellation. 
(when (lvh) (and (l4f) (not(k4f)))) ;; Support.  Cancellation. 
(when (qvh) (and (q4f) (not(m4f)))) ;; Support.  Cancellation. 
(when (tvh) (and (t4f) (not(r4f)))) ;; Support.  Cancellation. 
(when (vvh) (and (v4f) (not(u4f)))) ;; Support.  Cancellation. 
(when (yvh) (and (y4f) (not(x4f)))) ;; Support.  Cancellation. 
(when (bwh) (and (b5f) (not(z4f)))) ;; Support.  Cancellation. 
(when (gwh) (and (g5f) (not(c5f)))) ;; Support.  Cancellation. 
(when (jwh) (and (j5f) (not(h5f)))) ;; Support.  Cancellation. 
(when (lwh) (and (l5f) (not(k5f)))) ;; Support.  Cancellation. 
(when (qwh) (and (q5f) (not(m5f)))) ;; Support.  Cancellation. 
(when (twh) (and (t5f) (not(r5f)))) ;; Support.  Cancellation. 
(when (vwh) (and (v5f) (not(u5f)))) ;; Support.  Cancellation. 
(when (ywh) (and (y5f) (not(x5f)))) ;; Support.  Cancellation. 
(when (bxh) (and (b6f) (not(z5f)))) ;; Support.  Cancellation. 
(when (gxh) (and (g6f) (not(c6f)))) ;; Support.  Cancellation. 
(when (jxh) (and (j6f) (not(h6f)))) ;; Support.  Cancellation. 
(when (lxh) (and (l6f) (not(k6f)))) ;; Support.  Cancellation. 
(when (qxh) (and (q6f) (not(m6f)))) ;; Support.  Cancellation. 
(when (txh) (and (t6f) (not(r6f)))) ;; Support.  Cancellation. 
(when (vxh) (and (v6f) (not(u6f)))) ;; Support.  Cancellation. 
(when (yxh) (and (y6f) (not(x6f)))) ;; Support.  Cancellation. 
(when (byh) (and (b7f) (not(z6f)))) ;; Support.  Cancellation. 
(when (gyh) (and (g7f) (not(c7f)))) ;; Support.  Cancellation. 
(when (jyh) (and (j7f) (not(h7f)))) ;; Support.  Cancellation. 
(when (lyh) (and (l7f) (not(k7f)))) ;; Support.  Cancellation. 
(when (qyh) (and (q7f) (not(m7f)))) ;; Support.  Cancellation. 
(when (tyh) (and (t7f) (not(r7f)))) ;; Support.  Cancellation. 
(when (vyh) (and (v7f) (not(u7f)))) ;; Support.  Cancellation. 
(when (yyh) (and (y7f) (not(x7f)))) ;; Support.  Cancellation. 
(when (bzh) (and (b8f) (not(z7f)))) ;; Support.  Cancellation. 
(when (gzh) (and (g8f) (not(c8f)))) ;; Support.  Cancellation. 
(when (jzh) (and (j8f) (not(h8f)))) ;; Support.  Cancellation. 
(when (lzh) (and (l8f) (not(k8f)))) ;; Support.  Cancellation. 
(when (qzh) (and (q8f) (not(m8f)))) ;; Support.  Cancellation. 
(when (tzh) (and (t8f) (not(r8f)))) ;; Support.  Cancellation. 
(when (vzh) (and (v8f) (not(u8f)))) ;; Support.  Cancellation. 
(when (yzh) (and (y8f) (not(x8f)))) ;; Support.  Cancellation. 
(when (b1h) (and (b9f) (not(z8f)))) ;; Support.  Cancellation. 
(when (g1h) (and (g9f) (not(c9f)))) ;; Support.  Cancellation. 
(when (j1h) (and (j9f) (not(h9f)))) ;; Support.  Cancellation. 
(when (l1h) (and (l9f) (not(k9f)))) ;; Support.  Cancellation. 
(when (q1h) (and (q9f) (not(m9f)))) ;; Support.  Cancellation. 
(when (t1h) (and (t9f) (not(r9f)))) ;; Support.  Cancellation. 
(when (v1h) (and (v9f) (not(u9f)))) ;; Support.  Cancellation. 
(when (y1h) (and (y9f) (not(x9f)))) ;; Support.  Cancellation. 
(when (b2h) (and (b0f) (not(z9f)))) ;; Support.  Cancellation. 
(when (g2h) (and (g0f) (not(c0f)))) ;; Support.  Cancellation. 
(when (j2h) (and (j0f) (not(h0f)))) ;; Support.  Cancellation. 
(when (l2h) (and (l0f) (not(k0f)))) ;; Support.  Cancellation. 
(when (q2h) (and (q0f) (not(m0f)))) ;; Support.  Cancellation. 
(when (t2h) (and (t0f) (not(r0f)))) ;; Support.  Cancellation. 
(when (v2h) (and (v0f) (not(u0f)))) ;; Support.  Cancellation. 
(when (y2h) (and (y0f) (not(x0f)))) ;; Support.  Cancellation. 
(when (b3h) (and (bag) (not(z0f)))) ;; Support.  Cancellation. 
(when (g3h) (and (gag) (not(cag)))) ;; Support.  Cancellation. 
(when (j3h) (and (jag) (not(hag)))) ;; Support.  Cancellation. 
(when (l3h) (and (lag) (not(kag)))) ;; Support.  Cancellation. 
(when (q3h) (and (qag) (not(mag)))) ;; Support.  Cancellation. 
(when (t3h) (and (tag) (not(rag)))) ;; Support.  Cancellation. 
(when (v3h) (and (vag) (not(uag)))) ;; Support.  Cancellation. 
(when (y3h) (and (yag) (not(xag)))) ;; Support.  Cancellation. 
(when (b4h) (and (bbg) (not(zag)))) ;; Support.  Cancellation. 
(when (g4h) (and (gbg) (not(cbg)))) ;; Support.  Cancellation. 
(when (j4h) (and (jbg) (not(hbg)))) ;; Support.  Cancellation. 
(when (l4h) (and (lbg) (not(kbg)))) ;; Support.  Cancellation. 
(when (q4h) (and (qbg) (not(mbg)))) ;; Support.  Cancellation. 
(when (t4h) (and (tbg) (not(rbg)))) ;; Support.  Cancellation. 
(when (v4h)  (vbg)) ;; Support. 
(when (y4h)  (ybg)) ;; Support. 
(when (b5h) (and (bcg) (not(zbg)))) ;; Support.  Cancellation. 
(when (g5h) (and (gcg) (not(ccg)))) ;; Support.  Cancellation. 
(when (j5h) (and (jcg) (not(hcg)))) ;; Support.  Cancellation. 
(when (l5h) (and (lcg) (not(kcg)))) ;; Support.  Cancellation. 
(when (q5h) (and (qcg) (not(mcg)))) ;; Support.  Cancellation. 
(when (t5h) (and (tcg) (not(rcg)))) ;; Support.  Cancellation. 
(when (v5h) (and (vcg) (not(ucg)))) ;; Support.  Cancellation. 
(when (y5h) (and (ycg) (not(xcg)))) ;; Support.  Cancellation. 
(when (b6h) (and (bdg) (not(zcg)))) ;; Support.  Cancellation. 
(when (g6h) (and (gdg) (not(cdg)))) ;; Support.  Cancellation. 
(when (j6h) (and (jdg) (not(hdg)))) ;; Support.  Cancellation. 
(when (l6h) (and (ldg) (not(kdg)))) ;; Support.  Cancellation. 
(when (q6h) (and (qdg) (not(mdg)))) ;; Support.  Cancellation. 
(when (t6h) (and (tdg) (not(rdg)))) ;; Support.  Cancellation. 
(when (v6h) (and (vdg) (not(udg)))) ;; Support.  Cancellation. 
(when (y6h) (and (ydg) (not(xdg)))) ;; Support.  Cancellation. 
(when (b7h) (and (beg) (not(zdg)))) ;; Support.  Cancellation. 
(when (g7h) (and (geg) (not(ceg)))) ;; Support.  Cancellation. 
(when (j7h) (and (jeg) (not(heg)))) ;; Support.  Cancellation. 
(when (l7h) (and (leg) (not(keg)))) ;; Support.  Cancellation. 
(when (q7h)  (qeg)) ;; Support. 
(when (r7h)  (reg)) ;; Support. 
(when (u7h) (and (ueg) (not(teg)))) ;; Support.  Cancellation. 
(when (x7h) (and (xeg) (not(veg)))) ;; Support.  Cancellation. 
(when (z7h) (and (zeg) (not(yeg)))) ;; Support.  Cancellation. 
(when (c8h)  (cfg)) ;; Support. 
(when (h8h) (and (hfg) (not(gfg)))) ;; Support.  Cancellation. 
(when (k8h)  (kfg)) ;; Support. 
(when (m8h) (and (mfg) (not(lfg)))) ;; Support.  Cancellation. 
(when (r8h) (and (rfg) (not(qfg)))) ;; Support.  Cancellation. 
(when (u8h) (and (ufg) (not(tfg)))) ;; Support.  Cancellation. 
(when (x8h) (and (xfg) (not(vfg)))) ;; Support.  Cancellation. 
(when (z8h)  (zfg)) ;; Support. 
(when (c9h)  (cgg)) ;; Support. 
(when (h9h) (and (hgg) (not(ggg)))) ;; Support.  Cancellation. 
(when (k9h) (and (kgg) (not(jgg)))) ;; Support.  Cancellation. 
(when (m9h) (and (mgg) (not(lgg)))) ;; Support.  Cancellation. 
(when (r9h) (and (rgg) (not(qgg)))) ;; Support.  Cancellation. 
(when (u9h) (and (ugg) (not(tgg)))) ;; Support.  Cancellation. 
(when (x9h) (and (xgg) (not(vgg)))) ;; Support.  Cancellation. 
(when (z9h) (and (zgg) (not(ygg)))) ;; Support.  Cancellation. 
(when (c0h) (and (chg) (not(bhg)))) ;; Support.  Cancellation. 
(when (h0h) (and (hhg) (not(ghg)))) ;; Support.  Cancellation. 
(when (k0h) (and (khg) (not(jhg)))) ;; Support.  Cancellation. 
(when (m0h) (and (mhg) (not(lhg)))) ;; Support.  Cancellation. 
(when (r0h) (and (rhg) (not(qhg)))) ;; Support.  Cancellation. 
(when (u0h) (and (uhg) (not(thg)))) ;; Support.  Cancellation. 
(when (x0h) (and (xhg) (not(vhg)))) ;; Support.  Cancellation. 
(when (z0h) (and (zhg) (not(yhg)))) ;; Support.  Cancellation. 
(when (cai) (and (cig) (not(big)))) ;; Support.  Cancellation. 
(when (hai) (and (hig) (not(gig)))) ;; Support.  Cancellation. 
(when (kai) (and (kig) (not(jig)))) ;; Support.  Cancellation. 
(when (mai) (and (mig) (not(lig)))) ;; Support.  Cancellation. 
(when (rai) (and (rig) (not(qig)))) ;; Support.  Cancellation. 
(when (uai) (and (uig) (not(tig)))) ;; Support.  Cancellation. 
(when (xai) (and (xig) (not(vig)))) ;; Support.  Cancellation. 
(when (zai) (and (zig) (not(yig)))) ;; Support.  Cancellation. 
(when (cbi) (and (cjg) (not(bjg)))) ;; Support.  Cancellation. 
(when (hbi) (and (hjg) (not(gjg)))) ;; Support.  Cancellation. 
(when (kbi) (and (kjg) (not(jjg)))) ;; Support.  Cancellation. 
(when (mbi) (and (mjg) (not(ljg)))) ;; Support.  Cancellation. 
(when (rbi) (and (rjg) (not(qjg)))) ;; Support.  Cancellation. 
(when (ubi) (and (ujg) (not(tjg)))) ;; Support.  Cancellation. 
(when (xbi) (and (xjg) (not(vjg)))) ;; Support.  Cancellation. 
(when (hci) (and (hkg) (not(gkg)))) ;; Support.  Cancellation. 
(when (kci) (and (kkg) (not(jkg)))) ;; Support.  Cancellation. 
(when (uci) (and (ukg) (not(tkg)))) ;; Support.  Cancellation. 
(when (xci) (and (xkg) (not(vkg)))) ;; Support.  Cancellation. 
(when (zci) (and (zkg) (not(ykg)))) ;; Support.  Cancellation. 
(when (cdi) (and (clg) (not(blg)))) ;; Support.  Cancellation. 
(when (hdi)  (hlg)) ;; Support. 
(when (kdi)  (klg)) ;; Support. 
(when (mdi)  (mlg)) ;; Support. 
(when (rdi)  (rlg)) ;; Support. 
(when (udi) (and (ulg) (not(tlg)))) ;; Support.  Cancellation. 
(when (hei)  (hmg)) ;; Support. 
(when (mei) (and (mmg) (not(lmg)))) ;; Support.  Cancellation. 
(when (uei) (and (umg) (not(tmg)))) ;; Support.  Cancellation. 
(when (xei) (and (xmg) (not(vmg)))) ;; Support.  Cancellation. 
(when (zei) (and (zmg) (not(ymg)))) ;; Support.  Cancellation. 
(when (cfi) (and (cng) (not(bng)))) ;; Support.  Cancellation. 
(when (hfi) (and (hng) (not(gng)))) ;; Support.  Cancellation. 
(when (kfi) (and (kng) (not(jng)))) ;; Support.  Cancellation. 
(when (mfi) (and (mng) (not(lng)))) ;; Support.  Cancellation. 
(when (rfi) (and (rng) (not(qng)))) ;; Support.  Cancellation. 
(when (ufi) (and (ung) (not(tng)))) ;; Support.  Cancellation. 
(when (xfi) (and (xng) (not(vng)))) ;; Support.  Cancellation. 
(when (zfi) (and (zng) (not(yng)))) ;; Support.  Cancellation. 
(when (cgi) (and (cog) (not(bog)))) ;; Support.  Cancellation. 
(when (hgi) (and (hog) (not(gog)))) ;; Support.  Cancellation. 
(when (kgi) (and (kog) (not(jog)))) ;; Support.  Cancellation. 
(when (mgi) (and (mog) (not(log)))) ;; Support.  Cancellation. 
(when (rgi) (and (rog) (not(qog)))) ;; Support.  Cancellation. 
(when (uhi) (and (upg) (not(tpg)))) ;; Support.  Cancellation. 
(when (xhi) (and (xpg) (not(vpg)))) ;; Support.  Cancellation. 
(when (zhi) (and (zpg) (not(ypg)))) ;; Support.  Cancellation. 
(when (cii) (and (cqg) (not(bqg)))) ;; Support.  Cancellation. 
(when (hii) (and (hqg) (not(gqg)))) ;; Support.  Cancellation. 
(when (kii) (and (kqg) (not(jqg)))) ;; Support.  Cancellation. 
(when (mii) (and (mqg) (not(lqg)))) ;; Support.  Cancellation. 
(when (rii) (and (rqg) (not(qqg)))) ;; Support.  Cancellation. 
(when (uii) (and (uqg) (not(tqg)))) ;; Support.  Cancellation. 
(when (xii) (and (xqg) (not(vqg)))) ;; Support.  Cancellation. 
(when (zii) (and (zqg) (not(yqg)))) ;; Support.  Cancellation. 
(when (cji) (and (csg) (not(bsg)))) ;; Support.  Cancellation. 
(when (hji) (and (hsg) (not(gsg)))) ;; Support.  Cancellation. 
(when (kji) (and (ksg) (not(jsg)))) ;; Support.  Cancellation. 
(when (tji) (and (tsg) (not(rsg)))) ;; Support.  Cancellation. 
(when (vji) (and (vsg) (not(usg)))) ;; Support.  Cancellation. 
(when (yji) (and (ysg) (not(xsg)))) ;; Support.  Cancellation. 
(when (bki) (and (brg) (not(zsg)))) ;; Support.  Cancellation. 
(when (gki) (and (grg) (not(crg)))) ;; Support.  Cancellation. 
(when (qki) (and (qrg) (not(mrg)))) ;; Support.  Cancellation. 
(when (tki) (and (trg) (not(rrg)))) ;; Support.  Cancellation. 
(when (vki) (and (vrg) (not(urg)))) ;; Support.  Cancellation. 
(when (yki) (and (yrg) (not(xrg)))) ;; Support.  Cancellation. 
(when (bli) (and (btg) (not(zrg)))) ;; Support.  Cancellation. 
(when (lli) (and (ltg) (not(ktg)))) ;; Support.  Cancellation. 
(when (qli) (and (qtg) (not(mtg)))) ;; Support.  Cancellation. 
(when (vli) (and (vtg) (not(utg)))) ;; Support.  Cancellation. 
(when (yli) (and (ytg) (not(xtg)))) ;; Support.  Cancellation. 
(when (gmi) (and (gug) (not(cug)))) ;; Support.  Cancellation. 
(when (jmi) (and (jug) (not(hug)))) ;; Support.  Cancellation. 
(when (lmi) (and (lug) (not(kug)))) ;; Support.  Cancellation. 
(when (qmi) (and (qug) (not(mug)))) ;; Support.  Cancellation. 
(when (tmi) (and (tug) (not(rug)))) ;; Support.  Cancellation. 
(when (bni) (and (bvg) (not(zug)))) ;; Support.  Cancellation. 
(when (gni) (and (gvg) (not(cvg)))) ;; Support.  Cancellation. 
(when (lni) (and (lvg) (not(kvg)))) ;; Support.  Cancellation. 
(when (tni) (and (tvg) (not(rvg)))) ;; Support.  Cancellation. 
(when (vni) (and (vvg) (not(uvg)))) ;; Support.  Cancellation. 
(when (joi) (and (jwg) (not(hwg)))) ;; Support.  Cancellation. 
(when (qoi) (and (qwg) (not(mwg)))) ;; Support.  Cancellation. 
(when (toi) (and (twg) (not(rwg)))) ;; Support.  Cancellation. 
(when (voi) (and (vwg) (not(uwg)))) ;; Support.  Cancellation. 
(when (yoi) (and (ywg) (not(xwg)))) ;; Support.  Cancellation. 
(when (bpi) (and (bxg) (not(zwg)))) ;; Support.  Cancellation. 
(when (gpi) (and (gxg) (not(cxg)))) ;; Support.  Cancellation. 
(when (jpi) (and (jxg) (not(hxg)))) ;; Support.  Cancellation. 
(when (lpi) (and (lxg) (not(kxg)))) ;; Support.  Cancellation. 
(when (qpi) (and (qxg) (not(mxg)))) ;; Support.  Cancellation. 
(when (tpi) (and (txg) (not(rxg)))) ;; Support.  Cancellation. 
(when (vpi) (and (vxg) (not(uxg)))) ;; Support.  Cancellation. 
(when (ypi) (and (yxg) (not(xxg)))) ;; Support.  Cancellation. 
(when (bqi) (and (byg) (not(zxg)))) ;; Support.  Cancellation. 
(when (gqi) (and (gyg) (not(cyg)))) ;; Support.  Cancellation. 
(when (jqi) (and (jyg) (not(hyg)))) ;; Support.  Cancellation. 
(when (lqi) (and (lyg) (not(kyg)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L4_L5
:parameters ()
:precondition (and (q7e))

:effect (and  (qih) (cmg)
(when (quh) (and (qyg) (not(myg)))) ;; Support.  Cancellation. 
(when (r3f) (and (ryg) (not(rah)))) ;; Support.  Cancellation. 
(when (not(t3f))  (not(tyg))) ;; Cancellation. 
(when (u3f) (and (uyg) (not(vyg)))) ;; Support.  Cancellation. 
(when (x3f) (and (xyg) (not(yyg)))) ;; Support.  Cancellation. 
(when (z3f) (and (zyg) (not(bzg)))) ;; Support.  Cancellation. 
(when (c4f) (and (czg) (not(gzg)))) ;; Support.  Cancellation. 
(when (h4f) (and (hzg) (not(jzg)))) ;; Support.  Cancellation. 
(when (k4f) (and (kzg) (not(lzg)))) ;; Support.  Cancellation. 
(when (m4f) (and (mzg) (not(qzg)))) ;; Support.  Cancellation. 
(when (r4f) (and (rzg) (not(tzg)))) ;; Support.  Cancellation. 
(when (u4f) (and (uzg) (not(vzg)))) ;; Support.  Cancellation. 
(when (x4f) (and (xzg) (not(yzg)))) ;; Support.  Cancellation. 
(when (z4f) (and (zzg) (not(b1g)))) ;; Support.  Cancellation. 
(when (c5f) (and (c1g) (not(g1g)))) ;; Support.  Cancellation. 
(when (h5f) (and (h1g) (not(j1g)))) ;; Support.  Cancellation. 
(when (k5f) (and (k1g) (not(l1g)))) ;; Support.  Cancellation. 
(when (m5f) (and (m1g) (not(q1g)))) ;; Support.  Cancellation. 
(when (r5f) (and (r1g) (not(t1g)))) ;; Support.  Cancellation. 
(when (u5f) (and (u1g) (not(v1g)))) ;; Support.  Cancellation. 
(when (x5f) (and (x1g) (not(y1g)))) ;; Support.  Cancellation. 
(when (z5f) (and (z1g) (not(b2g)))) ;; Support.  Cancellation. 
(when (c6f) (and (c2g) (not(g2g)))) ;; Support.  Cancellation. 
(when (h6f) (and (h2g) (not(j2g)))) ;; Support.  Cancellation. 
(when (k6f) (and (k2g) (not(l2g)))) ;; Support.  Cancellation. 
(when (m6f) (and (m2g) (not(q2g)))) ;; Support.  Cancellation. 
(when (r6f) (and (r2g) (not(t2g)))) ;; Support.  Cancellation. 
(when (u6f) (and (u2g) (not(v2g)))) ;; Support.  Cancellation. 
(when (x6f) (and (x2g) (not(y2g)))) ;; Support.  Cancellation. 
(when (z6f) (and (z2g) (not(b3g)))) ;; Support.  Cancellation. 
(when (c7f) (and (c3g) (not(g3g)))) ;; Support.  Cancellation. 
(when (h7f) (and (h3g) (not(j3g)))) ;; Support.  Cancellation. 
(when (k7f) (and (k3g) (not(l3g)))) ;; Support.  Cancellation. 
(when (m7f) (and (m3g) (not(q3g)))) ;; Support.  Cancellation. 
(when (r7f) (and (r3g) (not(t3g)))) ;; Support.  Cancellation. 
(when (u7f) (and (u3g) (not(v3g)))) ;; Support.  Cancellation. 
(when (x7f) (and (x3g) (not(y3g)))) ;; Support.  Cancellation. 
(when (z7f) (and (z3g) (not(b4g)))) ;; Support.  Cancellation. 
(when (c8f) (and (c4g) (not(g4g)))) ;; Support.  Cancellation. 
(when (h8f) (and (h4g) (not(j4g)))) ;; Support.  Cancellation. 
(when (k8f) (and (k4g) (not(l4g)))) ;; Support.  Cancellation. 
(when (m8f) (and (m4g) (not(q4g)))) ;; Support.  Cancellation. 
(when (r8f) (and (r4g) (not(t4g)))) ;; Support.  Cancellation. 
(when (u8f) (and (u4g) (not(v4g)))) ;; Support.  Cancellation. 
(when (x8f) (and (x4g) (not(y4g)))) ;; Support.  Cancellation. 
(when (z8f) (and (z4g) (not(b5g)))) ;; Support.  Cancellation. 
(when (c9f) (and (c5g) (not(g5g)))) ;; Support.  Cancellation. 
(when (h9f) (and (h5g) (not(j5g)))) ;; Support.  Cancellation. 
(when (k9f) (and (k5g) (not(l5g)))) ;; Support.  Cancellation. 
(when (m9f) (and (m5g) (not(q5g)))) ;; Support.  Cancellation. 
(when (r9f) (and (r5g) (not(t5g)))) ;; Support.  Cancellation. 
(when (u9f) (and (u5g) (not(v5g)))) ;; Support.  Cancellation. 
(when (x9f) (and (x5g) (not(y5g)))) ;; Support.  Cancellation. 
(when (z9f) (and (z5g) (not(b6g)))) ;; Support.  Cancellation. 
(when (c0f) (and (c6g) (not(g6g)))) ;; Support.  Cancellation. 
(when (h0f) (and (h6g) (not(j6g)))) ;; Support.  Cancellation. 
(when (k0f) (and (k6g) (not(l6g)))) ;; Support.  Cancellation. 
(when (m0f) (and (m6g) (not(q6g)))) ;; Support.  Cancellation. 
(when (r0f) (and (r6g) (not(t6g)))) ;; Support.  Cancellation. 
(when (u0f) (and (u6g) (not(v6g)))) ;; Support.  Cancellation. 
(when (x0f) (and (x6g) (not(y6g)))) ;; Support.  Cancellation. 
(when (z0f) (and (z6g) (not(b7g)))) ;; Support.  Cancellation. 
(when (cag) (and (c7g) (not(g7g)))) ;; Support.  Cancellation. 
(when (hag) (and (h7g) (not(j7g)))) ;; Support.  Cancellation. 
(when (kag) (and (k7g) (not(l7g)))) ;; Support.  Cancellation. 
(when (mag) (and (m7g) (not(q7g)))) ;; Support.  Cancellation. 
(when (rag) (and (r7g) (not(t7g)))) ;; Support.  Cancellation. 
(when (uag) (and (u7g) (not(v7g)))) ;; Support.  Cancellation. 
(when (xag) (and (x7g) (not(y7g)))) ;; Support.  Cancellation. 
(when (zag) (and (z7g) (not(b8g)))) ;; Support.  Cancellation. 
(when (cbg) (and (c8g) (not(g8g)))) ;; Support.  Cancellation. 
(when (hbg) (and (h8g) (not(j8g)))) ;; Support.  Cancellation. 
(when (kbg) (and (k8g) (not(l8g)))) ;; Support.  Cancellation. 
(when (mbg) (and (m8g) (not(q8g)))) ;; Support.  Cancellation. 
(when (rbg) (and (r8g) (not(t8g)))) ;; Support.  Cancellation. 
(when (zbg) (and (z8g) (not(b9g)))) ;; Support.  Cancellation. 
(when (ccg) (and (c9g) (not(g9g)))) ;; Support.  Cancellation. 
(when (hcg) (and (h9g) (not(j9g)))) ;; Support.  Cancellation. 
(when (kcg) (and (k9g) (not(l9g)))) ;; Support.  Cancellation. 
(when (mcg) (and (m9g) (not(q9g)))) ;; Support.  Cancellation. 
(when (rcg) (and (r9g) (not(t9g)))) ;; Support.  Cancellation. 
(when (ucg) (and (u9g) (not(v9g)))) ;; Support.  Cancellation. 
(when (xcg) (and (x9g) (not(y9g)))) ;; Support.  Cancellation. 
(when (zcg) (and (z9g) (not(b0g)))) ;; Support.  Cancellation. 
(when (cdg) (and (c0g) (not(g0g)))) ;; Support.  Cancellation. 
(when (hdg) (and (h0g) (not(j0g)))) ;; Support.  Cancellation. 
(when (kdg) (and (k0g) (not(l0g)))) ;; Support.  Cancellation. 
(when (mdg) (and (m0g) (not(q0g)))) ;; Support.  Cancellation. 
(when (rdg) (and (r0g) (not(t0g)))) ;; Support.  Cancellation. 
(when (udg) (and (u0g) (not(v0g)))) ;; Support.  Cancellation. 
(when (xdg) (and (x0g) (not(y0g)))) ;; Support.  Cancellation. 
(when (zdg) (and (z0g) (not(bah)))) ;; Support.  Cancellation. 
(when (ceg) (and (cah) (not(gah)))) ;; Support.  Cancellation. 
(when (heg) (and (hah) (not(jah)))) ;; Support.  Cancellation. 
(when (keg) (and (kah) (not(lah)))) ;; Support.  Cancellation. 
(when (teg) (and (tah) (not(uah)))) ;; Support.  Cancellation. 
(when (veg) (and (vah) (not(xah)))) ;; Support.  Cancellation. 
(when (yeg) (and (yah) (not(zah)))) ;; Support.  Cancellation. 
(when (gfg) (and (gbh) (not(hbh)))) ;; Support.  Cancellation. 
(when (lfg) (and (lbh) (not(mbh)))) ;; Support.  Cancellation. 
(when (qfg) (and (qbh) (not(rbh)))) ;; Support.  Cancellation. 
(when (tfg) (and (tbh) (not(ubh)))) ;; Support.  Cancellation. 
(when (vfg) (and (vbh) (not(xbh)))) ;; Support.  Cancellation. 
(when (ggg) (and (gch) (not(hch)))) ;; Support.  Cancellation. 
(when (jgg) (and (jch) (not(kch)))) ;; Support.  Cancellation. 
(when (lgg) (and (lch) (not(mch)))) ;; Support.  Cancellation. 
(when (qgg) (and (qch) (not(rch)))) ;; Support.  Cancellation. 
(when (tgg) (and (tch) (not(uch)))) ;; Support.  Cancellation. 
(when (vgg) (and (vch) (not(xch)))) ;; Support.  Cancellation. 
(when (ygg) (and (ych) (not(zch)))) ;; Support.  Cancellation. 
(when (bhg) (and (bdh) (not(cdh)))) ;; Support.  Cancellation. 
(when (ghg) (and (gdh) (not(hdh)))) ;; Support.  Cancellation. 
(when (jhg) (and (jdh) (not(kdh)))) ;; Support.  Cancellation. 
(when (lhg) (and (ldh) (not(mdh)))) ;; Support.  Cancellation. 
(when (qhg) (and (qdh) (not(rdh)))) ;; Support.  Cancellation. 
(when (thg) (and (tdh) (not(udh)))) ;; Support.  Cancellation. 
(when (vhg) (and (vdh) (not(xdh)))) ;; Support.  Cancellation. 
(when (yhg) (and (ydh) (not(zdh)))) ;; Support.  Cancellation. 
(when (big) (and (beh) (not(ceh)))) ;; Support.  Cancellation. 
(when (gig) (and (geh) (not(heh)))) ;; Support.  Cancellation. 
(when (jig) (and (jeh) (not(keh)))) ;; Support.  Cancellation. 
(when (lig) (and (leh) (not(meh)))) ;; Support.  Cancellation. 
(when (qig) (and (qeh) (not(reh)))) ;; Support.  Cancellation. 
(when (tig) (and (teh) (not(ueh)))) ;; Support.  Cancellation. 
(when (vig) (and (veh) (not(xeh)))) ;; Support.  Cancellation. 
(when (yig) (and (yeh) (not(zeh)))) ;; Support.  Cancellation. 
(when (bjg) (and (bfh) (not(cfh)))) ;; Support.  Cancellation. 
(when (gjg) (and (gfh) (not(hfh)))) ;; Support.  Cancellation. 
(when (jjg) (and (jfh) (not(kfh)))) ;; Support.  Cancellation. 
(when (ljg) (and (lfh) (not(mfh)))) ;; Support.  Cancellation. 
(when (qjg) (and (qfh) (not(rfh)))) ;; Support.  Cancellation. 
(when (tjg) (and (tfh) (not(ufh)))) ;; Support.  Cancellation. 
(when (vjg) (and (vfh) (not(xfh)))) ;; Support.  Cancellation. 
(when (yjg)  (yfh)) ;; Support. 
(when (bkg)  (bgh)) ;; Support. 
(when (gkg) (and (ggh) (not(hgh)))) ;; Support.  Cancellation. 
(when (jkg) (and (jgh) (not(kgh)))) ;; Support.  Cancellation. 
(when (lkg) (and (lgh) (not(mgh)))) ;; Support.  Cancellation. 
(when (qkg) (and (qgh) (not(rgh)))) ;; Support.  Cancellation. 
(when (tkg) (and (tgh) (not(ugh)))) ;; Support.  Cancellation. 
(when (vkg) (and (vgh) (not(xgh)))) ;; Support.  Cancellation. 
(when (ykg) (and (ygh) (not(zgh)))) ;; Support.  Cancellation. 
(when (blg) (and (bhh) (not(chh)))) ;; Support.  Cancellation. 
(when (tlg) (and (thh) (not(uhh)))) ;; Support.  Cancellation. 
(when (vlg) (and (vhh) (not(xhh)))) ;; Support.  Cancellation. 
(when (lmg) (and (lih) (not(mih)))) ;; Support.  Cancellation. 
(when (tmg) (and (tih) (not(uih)))) ;; Support.  Cancellation. 
(when (vmg) (and (vih) (not(xih)))) ;; Support.  Cancellation. 
(when (ymg) (and (yih) (not(zih)))) ;; Support.  Cancellation. 
(when (bng) (and (bjh) (not(cjh)))) ;; Support.  Cancellation. 
(when (gng) (and (gjh) (not(hjh)))) ;; Support.  Cancellation. 
(when (jng) (and (jjh) (not(kjh)))) ;; Support.  Cancellation. 
(when (lng) (and (ljh) (not(mjh)))) ;; Support.  Cancellation. 
(when (qng) (and (qjh) (not(rjh)))) ;; Support.  Cancellation. 
(when (tng) (and (tjh) (not(ujh)))) ;; Support.  Cancellation. 
(when (vng) (and (vjh) (not(xjh)))) ;; Support.  Cancellation. 
(when (yng) (and (yjh) (not(zjh)))) ;; Support.  Cancellation. 
(when (bog) (and (bkh) (not(ckh)))) ;; Support.  Cancellation. 
(when (gog) (and (gkh) (not(hkh)))) ;; Support.  Cancellation. 
(when (jog) (and (jkh) (not(kkh)))) ;; Support.  Cancellation. 
(when (log) (and (lkh) (not(mkh)))) ;; Support.  Cancellation. 
(when (qog) (and (qkh) (not(rkh)))) ;; Support.  Cancellation. 
(when (tog) (and (tkh) (not(ukh)))) ;; Support.  Cancellation. 
(when (vog) (and (vkh) (not(xkh)))) ;; Support.  Cancellation. 
(when (yog) (and (ykh) (not(zkh)))) ;; Support.  Cancellation. 
(when (bpg) (and (blh) (not(clh)))) ;; Support.  Cancellation. 
(when (gpg)  (glh)) ;; Support. 
(when (jpg)  (jlh)) ;; Support. 
(when (lpg)  (llh)) ;; Support. 
(when (qpg)  (qlh)) ;; Support. 
(when (tpg) (and (tlh) (not(ulh)))) ;; Support.  Cancellation. 
(when (vpg) (and (vlh) (not(xlh)))) ;; Support.  Cancellation. 
(when (ypg) (and (ylh) (not(zlh)))) ;; Support.  Cancellation. 
(when (bqg) (and (bmh) (not(cmh)))) ;; Support.  Cancellation. 
(when (gqg) (and (gmh) (not(hmh)))) ;; Support.  Cancellation. 
(when (jqg) (and (jmh) (not(kmh)))) ;; Support.  Cancellation. 
(when (lqg) (and (lmh) (not(mmh)))) ;; Support.  Cancellation. 
(when (qqg) (and (qmh) (not(rmh)))) ;; Support.  Cancellation. 
(when (tqg) (and (tmh) (not(umh)))) ;; Support.  Cancellation. 
(when (vqg) (and (vmh) (not(xmh)))) ;; Support.  Cancellation. 
(when (yqg) (and (ymh) (not(zmh)))) ;; Support.  Cancellation. 
(when (bsg) (and (bnh) (not(cnh)))) ;; Support.  Cancellation. 
(when (gsg) (and (gnh) (not(hnh)))) ;; Support.  Cancellation. 
(when (jsg) (and (jnh) (not(knh)))) ;; Support.  Cancellation. 
(when (lsg)  (lnh)) ;; Support. 
(when (qsg)  (qnh)) ;; Support. 
(when (rsg) (and (rnh) (not(tnh)))) ;; Support.  Cancellation. 
(when (usg) (and (unh) (not(vnh)))) ;; Support.  Cancellation. 
(when (xsg) (and (xnh) (not(ynh)))) ;; Support.  Cancellation. 
(when (zsg) (and (znh) (not(boh)))) ;; Support.  Cancellation. 
(when (crg) (and (coh) (not(goh)))) ;; Support.  Cancellation. 
(when (hrg)  (hoh)) ;; Support. 
(when (krg)  (koh)) ;; Support. 
(when (mrg) (and (moh) (not(qoh)))) ;; Support.  Cancellation. 
(when (rrg) (and (roh) (not(toh)))) ;; Support.  Cancellation. 
(when (urg) (and (uoh) (not(voh)))) ;; Support.  Cancellation. 
(when (xrg) (and (xoh) (not(yoh)))) ;; Support.  Cancellation. 
(when (zrg) (and (zoh) (not(bph)))) ;; Support.  Cancellation. 
(when (ctg) (and (cph) (not(gph)))) ;; Support.  Cancellation. 
(when (htg) (and (hph) (not(jph)))) ;; Support.  Cancellation. 
(when (ktg) (and (kph) (not(lph)))) ;; Support.  Cancellation. 
(when (mtg) (and (mph) (not(qph)))) ;; Support.  Cancellation. 
(when (rtg) (and (rph) (not(tph)))) ;; Support.  Cancellation. 
(when (utg) (and (uph) (not(vph)))) ;; Support.  Cancellation. 
(when (xtg) (and (xph) (not(yph)))) ;; Support.  Cancellation. 
(when (ztg) (and (zph) (not(bqh)))) ;; Support.  Cancellation. 
(when (cug) (and (cqh) (not(gqh)))) ;; Support.  Cancellation. 
(when (hug) (and (hqh) (not(jqh)))) ;; Support.  Cancellation. 
(when (kug) (and (kqh) (not(lqh)))) ;; Support.  Cancellation. 
(when (mug) (and (mqh) (not(qqh)))) ;; Support.  Cancellation. 
(when (rug) (and (rqh) (not(tqh)))) ;; Support.  Cancellation. 
(when (uug) (and (uqh) (not(vqh)))) ;; Support.  Cancellation. 
(when (xug)  (xqh)) ;; Support. 
(when (zug) (and (zqh) (not(bsh)))) ;; Support.  Cancellation. 
(when (cvg) (and (csh) (not(gsh)))) ;; Support.  Cancellation. 
(when (hvg) (and (hsh) (not(jsh)))) ;; Support.  Cancellation. 
(when (kvg) (and (ksh) (not(lsh)))) ;; Support.  Cancellation. 
(when (mvg)  (msh)) ;; Support. 
(when (rvg) (and (rsh) (not(tsh)))) ;; Support.  Cancellation. 
(when (uvg) (and (ush) (not(vsh)))) ;; Support.  Cancellation. 
(when (xvg)  (xsh)) ;; Support. 
(when (zvg)  (zsh)) ;; Support. 
(when (cwg) (and (crh) (not(grh)))) ;; Support.  Cancellation. 
(when (hwg) (and (hrh) (not(jrh)))) ;; Support.  Cancellation. 
(when (kwg) (and (krh) (not(lrh)))) ;; Support.  Cancellation. 
(when (mwg) (and (mrh) (not(qrh)))) ;; Support.  Cancellation. 
(when (rwg) (and (rrh) (not(trh)))) ;; Support.  Cancellation. 
(when (uwg) (and (urh) (not(vrh)))) ;; Support.  Cancellation. 
(when (xwg) (and (xrh) (not(yrh)))) ;; Support.  Cancellation. 
(when (zwg) (and (zrh) (not(bth)))) ;; Support.  Cancellation. 
(when (cxg) (and (cth) (not(gth)))) ;; Support.  Cancellation. 
(when (hxg) (and (hth) (not(jth)))) ;; Support.  Cancellation. 
(when (kxg) (and (kth) (not(lth)))) ;; Support.  Cancellation. 
(when (mxg) (and (mth) (not(qth)))) ;; Support.  Cancellation. 
(when (rxg) (and (rth) (not(tth)))) ;; Support.  Cancellation. 
(when (uxg) (and (uth) (not(vth)))) ;; Support.  Cancellation. 
(when (xxg) (and (xth) (not(yth)))) ;; Support.  Cancellation. 
(when (zxg) (and (zth) (not(buh)))) ;; Support.  Cancellation. 
(when (cyg) (and (cuh) (not(guh)))) ;; Support.  Cancellation. 
(when (hyg) (and (huh) (not(juh)))) ;; Support.  Cancellation. 
(when (kyg) (and (kuh) (not(luh)))) ;; Support.  Cancellation. 
(when (myg) (and (muh) (not(quh)))) ;; Support.  Cancellation. 
(when (tyg) (and (t3f) (not(qsg)))) ;; Support.  Cancellation. 
(when (not(ryg))  (not(r3f))) ;; Cancellation. 
(when (vyg) (and (v3f) (not(u3f)))) ;; Support.  Cancellation. 
(when (yyg) (and (y3f) (not(x3f)))) ;; Support.  Cancellation. 
(when (bzg) (and (b4f) (not(z3f)))) ;; Support.  Cancellation. 
(when (gzg) (and (g4f) (not(c4f)))) ;; Support.  Cancellation. 
(when (jzg) (and (j4f) (not(h4f)))) ;; Support.  Cancellation. 
(when (lzg) (and (l4f) (not(k4f)))) ;; Support.  Cancellation. 
(when (qzg) (and (q4f) (not(m4f)))) ;; Support.  Cancellation. 
(when (tzg) (and (t4f) (not(r4f)))) ;; Support.  Cancellation. 
(when (vzg) (and (v4f) (not(u4f)))) ;; Support.  Cancellation. 
(when (yzg) (and (y4f) (not(x4f)))) ;; Support.  Cancellation. 
(when (b1g) (and (b5f) (not(z4f)))) ;; Support.  Cancellation. 
(when (g1g) (and (g5f) (not(c5f)))) ;; Support.  Cancellation. 
(when (j1g) (and (j5f) (not(h5f)))) ;; Support.  Cancellation. 
(when (l1g) (and (l5f) (not(k5f)))) ;; Support.  Cancellation. 
(when (q1g) (and (q5f) (not(m5f)))) ;; Support.  Cancellation. 
(when (t1g) (and (t5f) (not(r5f)))) ;; Support.  Cancellation. 
(when (v1g) (and (v5f) (not(u5f)))) ;; Support.  Cancellation. 
(when (y1g) (and (y5f) (not(x5f)))) ;; Support.  Cancellation. 
(when (b2g) (and (b6f) (not(z5f)))) ;; Support.  Cancellation. 
(when (g2g) (and (g6f) (not(c6f)))) ;; Support.  Cancellation. 
(when (j2g) (and (j6f) (not(h6f)))) ;; Support.  Cancellation. 
(when (l2g) (and (l6f) (not(k6f)))) ;; Support.  Cancellation. 
(when (q2g) (and (q6f) (not(m6f)))) ;; Support.  Cancellation. 
(when (t2g) (and (t6f) (not(r6f)))) ;; Support.  Cancellation. 
(when (v2g) (and (v6f) (not(u6f)))) ;; Support.  Cancellation. 
(when (y2g) (and (y6f) (not(x6f)))) ;; Support.  Cancellation. 
(when (b3g) (and (b7f) (not(z6f)))) ;; Support.  Cancellation. 
(when (g3g) (and (g7f) (not(c7f)))) ;; Support.  Cancellation. 
(when (j3g) (and (j7f) (not(h7f)))) ;; Support.  Cancellation. 
(when (l3g) (and (l7f) (not(k7f)))) ;; Support.  Cancellation. 
(when (q3g) (and (q7f) (not(m7f)))) ;; Support.  Cancellation. 
(when (t3g) (and (t7f) (not(r7f)))) ;; Support.  Cancellation. 
(when (v3g) (and (v7f) (not(u7f)))) ;; Support.  Cancellation. 
(when (y3g) (and (y7f) (not(x7f)))) ;; Support.  Cancellation. 
(when (b4g) (and (b8f) (not(z7f)))) ;; Support.  Cancellation. 
(when (g4g) (and (g8f) (not(c8f)))) ;; Support.  Cancellation. 
(when (j4g) (and (j8f) (not(h8f)))) ;; Support.  Cancellation. 
(when (l4g) (and (l8f) (not(k8f)))) ;; Support.  Cancellation. 
(when (q4g) (and (q8f) (not(m8f)))) ;; Support.  Cancellation. 
(when (t4g) (and (t8f) (not(r8f)))) ;; Support.  Cancellation. 
(when (v4g) (and (v8f) (not(u8f)))) ;; Support.  Cancellation. 
(when (y4g) (and (y8f) (not(x8f)))) ;; Support.  Cancellation. 
(when (b5g) (and (b9f) (not(z8f)))) ;; Support.  Cancellation. 
(when (g5g) (and (g9f) (not(c9f)))) ;; Support.  Cancellation. 
(when (j5g) (and (j9f) (not(h9f)))) ;; Support.  Cancellation. 
(when (l5g) (and (l9f) (not(k9f)))) ;; Support.  Cancellation. 
(when (q5g) (and (q9f) (not(m9f)))) ;; Support.  Cancellation. 
(when (t5g) (and (t9f) (not(r9f)))) ;; Support.  Cancellation. 
(when (v5g) (and (v9f) (not(u9f)))) ;; Support.  Cancellation. 
(when (y5g) (and (y9f) (not(x9f)))) ;; Support.  Cancellation. 
(when (b6g) (and (b0f) (not(z9f)))) ;; Support.  Cancellation. 
(when (g6g) (and (g0f) (not(c0f)))) ;; Support.  Cancellation. 
(when (j6g) (and (j0f) (not(h0f)))) ;; Support.  Cancellation. 
(when (l6g) (and (l0f) (not(k0f)))) ;; Support.  Cancellation. 
(when (q6g) (and (q0f) (not(m0f)))) ;; Support.  Cancellation. 
(when (t6g) (and (t0f) (not(r0f)))) ;; Support.  Cancellation. 
(when (v6g) (and (v0f) (not(u0f)))) ;; Support.  Cancellation. 
(when (y6g) (and (y0f) (not(x0f)))) ;; Support.  Cancellation. 
(when (b7g) (and (bag) (not(z0f)))) ;; Support.  Cancellation. 
(when (g7g) (and (gag) (not(cag)))) ;; Support.  Cancellation. 
(when (j7g) (and (jag) (not(hag)))) ;; Support.  Cancellation. 
(when (l7g) (and (lag) (not(kag)))) ;; Support.  Cancellation. 
(when (q7g) (and (qag) (not(mag)))) ;; Support.  Cancellation. 
(when (t7g) (and (tag) (not(rag)))) ;; Support.  Cancellation. 
(when (v7g) (and (vag) (not(uag)))) ;; Support.  Cancellation. 
(when (y7g) (and (yag) (not(xag)))) ;; Support.  Cancellation. 
(when (b8g) (and (bbg) (not(zag)))) ;; Support.  Cancellation. 
(when (g8g) (and (gbg) (not(cbg)))) ;; Support.  Cancellation. 
(when (j8g) (and (jbg) (not(hbg)))) ;; Support.  Cancellation. 
(when (l8g) (and (lbg) (not(kbg)))) ;; Support.  Cancellation. 
(when (q8g) (and (qbg) (not(mbg)))) ;; Support.  Cancellation. 
(when (t8g) (and (tbg) (not(rbg)))) ;; Support.  Cancellation. 
(when (v8g)  (vbg)) ;; Support. 
(when (y8g)  (ybg)) ;; Support. 
(when (b9g) (and (bcg) (not(zbg)))) ;; Support.  Cancellation. 
(when (g9g) (and (gcg) (not(ccg)))) ;; Support.  Cancellation. 
(when (j9g) (and (jcg) (not(hcg)))) ;; Support.  Cancellation. 
(when (l9g) (and (lcg) (not(kcg)))) ;; Support.  Cancellation. 
(when (q9g) (and (qcg) (not(mcg)))) ;; Support.  Cancellation. 
(when (t9g) (and (tcg) (not(rcg)))) ;; Support.  Cancellation. 
(when (v9g) (and (vcg) (not(ucg)))) ;; Support.  Cancellation. 
(when (y9g) (and (ycg) (not(xcg)))) ;; Support.  Cancellation. 
(when (b0g) (and (bdg) (not(zcg)))) ;; Support.  Cancellation. 
(when (g0g) (and (gdg) (not(cdg)))) ;; Support.  Cancellation. 
(when (j0g) (and (jdg) (not(hdg)))) ;; Support.  Cancellation. 
(when (l0g) (and (ldg) (not(kdg)))) ;; Support.  Cancellation. 
(when (q0g) (and (qdg) (not(mdg)))) ;; Support.  Cancellation. 
(when (t0g) (and (tdg) (not(rdg)))) ;; Support.  Cancellation. 
(when (v0g) (and (vdg) (not(udg)))) ;; Support.  Cancellation. 
(when (y0g) (and (ydg) (not(xdg)))) ;; Support.  Cancellation. 
(when (bah) (and (beg) (not(zdg)))) ;; Support.  Cancellation. 
(when (gah) (and (geg) (not(ceg)))) ;; Support.  Cancellation. 
(when (jah) (and (jeg) (not(heg)))) ;; Support.  Cancellation. 
(when (lah) (and (leg) (not(keg)))) ;; Support.  Cancellation. 
(when (qah)  (qeg)) ;; Support. 
(when (rah)  (reg)) ;; Support. 
(when (uah) (and (ueg) (not(teg)))) ;; Support.  Cancellation. 
(when (xah) (and (xeg) (not(veg)))) ;; Support.  Cancellation. 
(when (zah) (and (zeg) (not(yeg)))) ;; Support.  Cancellation. 
(when (cbh)  (cfg)) ;; Support. 
(when (hbh) (and (hfg) (not(gfg)))) ;; Support.  Cancellation. 
(when (kbh)  (kfg)) ;; Support. 
(when (mbh) (and (mfg) (not(lfg)))) ;; Support.  Cancellation. 
(when (rbh) (and (rfg) (not(qfg)))) ;; Support.  Cancellation. 
(when (ubh) (and (ufg) (not(tfg)))) ;; Support.  Cancellation. 
(when (xbh) (and (xfg) (not(vfg)))) ;; Support.  Cancellation. 
(when (zbh)  (zfg)) ;; Support. 
(when (cch)  (cgg)) ;; Support. 
(when (hch) (and (hgg) (not(ggg)))) ;; Support.  Cancellation. 
(when (kch) (and (kgg) (not(jgg)))) ;; Support.  Cancellation. 
(when (mch) (and (mgg) (not(lgg)))) ;; Support.  Cancellation. 
(when (rch) (and (rgg) (not(qgg)))) ;; Support.  Cancellation. 
(when (uch) (and (ugg) (not(tgg)))) ;; Support.  Cancellation. 
(when (xch) (and (xgg) (not(vgg)))) ;; Support.  Cancellation. 
(when (zch) (and (zgg) (not(ygg)))) ;; Support.  Cancellation. 
(when (cdh) (and (chg) (not(bhg)))) ;; Support.  Cancellation. 
(when (hdh) (and (hhg) (not(ghg)))) ;; Support.  Cancellation. 
(when (kdh) (and (khg) (not(jhg)))) ;; Support.  Cancellation. 
(when (mdh) (and (mhg) (not(lhg)))) ;; Support.  Cancellation. 
(when (rdh) (and (rhg) (not(qhg)))) ;; Support.  Cancellation. 
(when (udh) (and (uhg) (not(thg)))) ;; Support.  Cancellation. 
(when (xdh) (and (xhg) (not(vhg)))) ;; Support.  Cancellation. 
(when (zdh) (and (zhg) (not(yhg)))) ;; Support.  Cancellation. 
(when (ceh) (and (cig) (not(big)))) ;; Support.  Cancellation. 
(when (heh) (and (hig) (not(gig)))) ;; Support.  Cancellation. 
(when (keh) (and (kig) (not(jig)))) ;; Support.  Cancellation. 
(when (meh) (and (mig) (not(lig)))) ;; Support.  Cancellation. 
(when (reh) (and (rig) (not(qig)))) ;; Support.  Cancellation. 
(when (ueh) (and (uig) (not(tig)))) ;; Support.  Cancellation. 
(when (xeh) (and (xig) (not(vig)))) ;; Support.  Cancellation. 
(when (zeh) (and (zig) (not(yig)))) ;; Support.  Cancellation. 
(when (cfh) (and (cjg) (not(bjg)))) ;; Support.  Cancellation. 
(when (hfh) (and (hjg) (not(gjg)))) ;; Support.  Cancellation. 
(when (kfh) (and (kjg) (not(jjg)))) ;; Support.  Cancellation. 
(when (mfh) (and (mjg) (not(ljg)))) ;; Support.  Cancellation. 
(when (rfh) (and (rjg) (not(qjg)))) ;; Support.  Cancellation. 
(when (ufh) (and (ujg) (not(tjg)))) ;; Support.  Cancellation. 
(when (xfh) (and (xjg) (not(vjg)))) ;; Support.  Cancellation. 
(when (hgh) (and (hkg) (not(gkg)))) ;; Support.  Cancellation. 
(when (kgh) (and (kkg) (not(jkg)))) ;; Support.  Cancellation. 
(when (mgh) (and (mkg) (not(lkg)))) ;; Support.  Cancellation. 
(when (rgh) (and (rkg) (not(qkg)))) ;; Support.  Cancellation. 
(when (ugh) (and (ukg) (not(tkg)))) ;; Support.  Cancellation. 
(when (xgh) (and (xkg) (not(vkg)))) ;; Support.  Cancellation. 
(when (zgh) (and (zkg) (not(ykg)))) ;; Support.  Cancellation. 
(when (chh) (and (clg) (not(blg)))) ;; Support.  Cancellation. 
(when (hhh)  (hlg)) ;; Support. 
(when (khh)  (klg)) ;; Support. 
(when (mhh)  (mlg)) ;; Support. 
(when (rhh)  (rlg)) ;; Support. 
(when (uhh) (and (ulg) (not(tlg)))) ;; Support.  Cancellation. 
(when (xhh) (and (xlg) (not(vlg)))) ;; Support.  Cancellation. 
(when (zhh)  (zlg)) ;; Support. 
(when (hih)  (hmg)) ;; Support. 
(when (mih) (and (mmg) (not(lmg)))) ;; Support.  Cancellation. 
(when (uih) (and (umg) (not(tmg)))) ;; Support.  Cancellation. 
(when (xih) (and (xmg) (not(vmg)))) ;; Support.  Cancellation. 
(when (zih) (and (zmg) (not(ymg)))) ;; Support.  Cancellation. 
(when (cjh) (and (cng) (not(bng)))) ;; Support.  Cancellation. 
(when (hjh) (and (hng) (not(gng)))) ;; Support.  Cancellation. 
(when (kjh) (and (kng) (not(jng)))) ;; Support.  Cancellation. 
(when (mjh) (and (mng) (not(lng)))) ;; Support.  Cancellation. 
(when (rjh) (and (rng) (not(qng)))) ;; Support.  Cancellation. 
(when (ujh) (and (ung) (not(tng)))) ;; Support.  Cancellation. 
(when (xjh) (and (xng) (not(vng)))) ;; Support.  Cancellation. 
(when (zjh) (and (zng) (not(yng)))) ;; Support.  Cancellation. 
(when (ckh) (and (cog) (not(bog)))) ;; Support.  Cancellation. 
(when (hkh) (and (hog) (not(gog)))) ;; Support.  Cancellation. 
(when (kkh) (and (kog) (not(jog)))) ;; Support.  Cancellation. 
(when (mkh) (and (mog) (not(log)))) ;; Support.  Cancellation. 
(when (rkh) (and (rog) (not(qog)))) ;; Support.  Cancellation. 
(when (ukh) (and (uog) (not(tog)))) ;; Support.  Cancellation. 
(when (xkh) (and (xog) (not(vog)))) ;; Support.  Cancellation. 
(when (zkh) (and (zog) (not(yog)))) ;; Support.  Cancellation. 
(when (clh) (and (cpg) (not(bpg)))) ;; Support.  Cancellation. 
(when (ulh) (and (upg) (not(tpg)))) ;; Support.  Cancellation. 
(when (xlh) (and (xpg) (not(vpg)))) ;; Support.  Cancellation. 
(when (zlh) (and (zpg) (not(ypg)))) ;; Support.  Cancellation. 
(when (cmh) (and (cqg) (not(bqg)))) ;; Support.  Cancellation. 
(when (hmh) (and (hqg) (not(gqg)))) ;; Support.  Cancellation. 
(when (kmh) (and (kqg) (not(jqg)))) ;; Support.  Cancellation. 
(when (mmh) (and (mqg) (not(lqg)))) ;; Support.  Cancellation. 
(when (rmh) (and (rqg) (not(qqg)))) ;; Support.  Cancellation. 
(when (umh) (and (uqg) (not(tqg)))) ;; Support.  Cancellation. 
(when (xmh) (and (xqg) (not(vqg)))) ;; Support.  Cancellation. 
(when (zmh) (and (zqg) (not(yqg)))) ;; Support.  Cancellation. 
(when (cnh) (and (csg) (not(bsg)))) ;; Support.  Cancellation. 
(when (hnh) (and (hsg) (not(gsg)))) ;; Support.  Cancellation. 
(when (knh) (and (ksg) (not(jsg)))) ;; Support.  Cancellation. 
(when (tnh) (and (tsg) (not(rsg)))) ;; Support.  Cancellation. 
(when (vnh) (and (vsg) (not(usg)))) ;; Support.  Cancellation. 
(when (ynh) (and (ysg) (not(xsg)))) ;; Support.  Cancellation. 
(when (boh) (and (brg) (not(zsg)))) ;; Support.  Cancellation. 
(when (goh) (and (grg) (not(crg)))) ;; Support.  Cancellation. 
(when (qoh) (and (qrg) (not(mrg)))) ;; Support.  Cancellation. 
(when (toh) (and (trg) (not(rrg)))) ;; Support.  Cancellation. 
(when (voh) (and (vrg) (not(urg)))) ;; Support.  Cancellation. 
(when (yoh) (and (yrg) (not(xrg)))) ;; Support.  Cancellation. 
(when (bph) (and (btg) (not(zrg)))) ;; Support.  Cancellation. 
(when (gph) (and (gtg) (not(ctg)))) ;; Support.  Cancellation. 
(when (jph) (and (jtg) (not(htg)))) ;; Support.  Cancellation. 
(when (lph) (and (ltg) (not(ktg)))) ;; Support.  Cancellation. 
(when (qph) (and (qtg) (not(mtg)))) ;; Support.  Cancellation. 
(when (tph) (and (ttg) (not(rtg)))) ;; Support.  Cancellation. 
(when (vph) (and (vtg) (not(utg)))) ;; Support.  Cancellation. 
(when (yph) (and (ytg) (not(xtg)))) ;; Support.  Cancellation. 
(when (bqh) (and (bug) (not(ztg)))) ;; Support.  Cancellation. 
(when (gqh) (and (gug) (not(cug)))) ;; Support.  Cancellation. 
(when (jqh) (and (jug) (not(hug)))) ;; Support.  Cancellation. 
(when (lqh) (and (lug) (not(kug)))) ;; Support.  Cancellation. 
(when (qqh) (and (qug) (not(mug)))) ;; Support.  Cancellation. 
(when (tqh) (and (tug) (not(rug)))) ;; Support.  Cancellation. 
(when (vqh) (and (vug) (not(uug)))) ;; Support.  Cancellation. 
(when (bsh) (and (bvg) (not(zug)))) ;; Support.  Cancellation. 
(when (gsh) (and (gvg) (not(cvg)))) ;; Support.  Cancellation. 
(when (jsh) (and (jvg) (not(hvg)))) ;; Support.  Cancellation. 
(when (lsh) (and (lvg) (not(kvg)))) ;; Support.  Cancellation. 
(when (tsh) (and (tvg) (not(rvg)))) ;; Support.  Cancellation. 
(when (vsh) (and (vvg) (not(uvg)))) ;; Support.  Cancellation. 
(when (grh) (and (gwg) (not(cwg)))) ;; Support.  Cancellation. 
(when (jrh) (and (jwg) (not(hwg)))) ;; Support.  Cancellation. 
(when (lrh) (and (lwg) (not(kwg)))) ;; Support.  Cancellation. 
(when (qrh) (and (qwg) (not(mwg)))) ;; Support.  Cancellation. 
(when (trh) (and (twg) (not(rwg)))) ;; Support.  Cancellation. 
(when (vrh) (and (vwg) (not(uwg)))) ;; Support.  Cancellation. 
(when (yrh) (and (ywg) (not(xwg)))) ;; Support.  Cancellation. 
(when (bth) (and (bxg) (not(zwg)))) ;; Support.  Cancellation. 
(when (gth) (and (gxg) (not(cxg)))) ;; Support.  Cancellation. 
(when (jth) (and (jxg) (not(hxg)))) ;; Support.  Cancellation. 
(when (lth) (and (lxg) (not(kxg)))) ;; Support.  Cancellation. 
(when (qth) (and (qxg) (not(mxg)))) ;; Support.  Cancellation. 
(when (tth) (and (txg) (not(rxg)))) ;; Support.  Cancellation. 
(when (vth) (and (vxg) (not(uxg)))) ;; Support.  Cancellation. 
(when (yth) (and (yxg) (not(xxg)))) ;; Support.  Cancellation. 
(when (buh) (and (byg) (not(zxg)))) ;; Support.  Cancellation. 
(when (guh) (and (gyg) (not(cyg)))) ;; Support.  Cancellation. 
(when (juh) (and (jyg) (not(hyg)))) ;; Support.  Cancellation. 
(when (luh) (and (lyg) (not(kyg)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L3_L8
:parameters ()
:precondition (and (q7e))

:effect (and  (not(r7e)) (xfk) (rif)
(when (qik) (and (q3f) (not(m3f)))) ;; Support.  Cancellation. 
(when (r7e) (and (rmj) (not(ryj)))) ;; Support.  Cancellation. 
(when (not(t7e))  (not(tmj))) ;; Cancellation. 
(when (u7e)  (umj)) ;; Support. 
(when (x7e) (and (xmj) (not(ymj)))) ;; Support.  Cancellation. 
(when (z7e) (and (zmj) (not(bnj)))) ;; Support.  Cancellation. 
(when (c8e)  (cnj)) ;; Support. 
(when (h8e) (and (hnj) (not(jnj)))) ;; Support.  Cancellation. 
(when (k8e) (and (knj) (not(lnj)))) ;; Support.  Cancellation. 
(when (m8e)  (mnj)) ;; Support. 
(when (r8e)  (rnj)) ;; Support. 
(when (u8e) (and (unj) (not(vnj)))) ;; Support.  Cancellation. 
(when (x8e) (and (xnj) (not(ynj)))) ;; Support.  Cancellation. 
(when (z8e) (and (znj) (not(boj)))) ;; Support.  Cancellation. 
(when (c9e) (and (coj) (not(goj)))) ;; Support.  Cancellation. 
(when (h9e)  (hoj)) ;; Support. 
(when (k9e)  (koj)) ;; Support. 
(when (m9e)  (moj)) ;; Support. 
(when (r9e)  (roj)) ;; Support. 
(when (u9e)  (uoj)) ;; Support. 
(when (x9e)  (xoj)) ;; Support. 
(when (z9e)  (zoj)) ;; Support. 
(when (c0e)  (cpj)) ;; Support. 
(when (h0e)  (hpj)) ;; Support. 
(when (k0e)  (kpj)) ;; Support. 
(when (m0e)  (mpj)) ;; Support. 
(when (r0e)  (rpj)) ;; Support. 
(when (u0e) (and (upj) (not(vpj)))) ;; Support.  Cancellation. 
(when (x0e) (and (xpj) (not(ypj)))) ;; Support.  Cancellation. 
(when (z0e) (and (zpj) (not(bqj)))) ;; Support.  Cancellation. 
(when (caf) (and (cqj) (not(gqj)))) ;; Support.  Cancellation. 
(when (haf) (and (hqj) (not(jqj)))) ;; Support.  Cancellation. 
(when (kaf) (and (kqj) (not(lqj)))) ;; Support.  Cancellation. 
(when (maf) (and (mqj) (not(qqj)))) ;; Support.  Cancellation. 
(when (raf) (and (rqj) (not(tqj)))) ;; Support.  Cancellation. 
(when (uaf)  (uqj)) ;; Support. 
(when (xaf)  (xqj)) ;; Support. 
(when (zaf)  (zqj)) ;; Support. 
(when (cbf)  (csj)) ;; Support. 
(when (hbf)  (hsj)) ;; Support. 
(when (kbf)  (ksj)) ;; Support. 
(when (mbf)  (msj)) ;; Support. 
(when (rbf)  (rsj)) ;; Support. 
(when (ubf)  (usj)) ;; Support. 
(when (xbf)  (xsj)) ;; Support. 
(when (zbf)  (zsj)) ;; Support. 
(when (ccf)  (crj)) ;; Support. 
(when (hcf)  (hrj)) ;; Support. 
(when (kcf)  (krj)) ;; Support. 
(when (mcf)  (mrj)) ;; Support. 
(when (rcf)  (rrj)) ;; Support. 
(when (ucf) (and (urj) (not(vrj)))) ;; Support.  Cancellation. 
(when (xcf) (and (xrj) (not(yrj)))) ;; Support.  Cancellation. 
(when (zcf) (and (zrj) (not(btj)))) ;; Support.  Cancellation. 
(when (cdf) (and (ctj) (not(gtj)))) ;; Support.  Cancellation. 
(when (hdf) (and (htj) (not(jtj)))) ;; Support.  Cancellation. 
(when (kdf) (and (ktj) (not(ltj)))) ;; Support.  Cancellation. 
(when (mdf) (and (mtj) (not(qtj)))) ;; Support.  Cancellation. 
(when (rdf) (and (rtj) (not(ttj)))) ;; Support.  Cancellation. 
(when (udf) (and (utj) (not(vtj)))) ;; Support.  Cancellation. 
(when (xdf) (and (xtj) (not(ytj)))) ;; Support.  Cancellation. 
(when (zdf) (and (ztj) (not(buj)))) ;; Support.  Cancellation. 
(when (cef) (and (cuj) (not(guj)))) ;; Support.  Cancellation. 
(when (hef) (and (huj) (not(juj)))) ;; Support.  Cancellation. 
(when (kef) (and (kuj) (not(luj)))) ;; Support.  Cancellation. 
(when (mef) (and (muj) (not(quj)))) ;; Support.  Cancellation. 
(when (ref) (and (ruj) (not(tuj)))) ;; Support.  Cancellation. 
(when (uef) (and (uuj) (not(vuj)))) ;; Support.  Cancellation. 
(when (xef) (and (xuj) (not(yuj)))) ;; Support.  Cancellation. 
(when (zef) (and (zuj) (not(bvj)))) ;; Support.  Cancellation. 
(when (cff) (and (cvj) (not(gvj)))) ;; Support.  Cancellation. 
(when (hff) (and (hvj) (not(jvj)))) ;; Support.  Cancellation. 
(when (kff) (and (kvj) (not(lvj)))) ;; Support.  Cancellation. 
(when (mff) (and (mvj) (not(qvj)))) ;; Support.  Cancellation. 
(when (rff) (and (rvj) (not(tvj)))) ;; Support.  Cancellation. 
(when (zff) (and (zvj) (not(bwj)))) ;; Support.  Cancellation. 
(when (cgf) (and (cwj) (not(gwj)))) ;; Support.  Cancellation. 
(when (kgf) (and (kwj) (not(lwj)))) ;; Support.  Cancellation. 
(when (mgf) (and (mwj) (not(qwj)))) ;; Support.  Cancellation. 
(when (ugf) (and (uwj) (not(vwj)))) ;; Support.  Cancellation. 
(when (xgf) (and (xwj) (not(ywj)))) ;; Support.  Cancellation. 
(when (zgf) (and (zwj) (not(bxj)))) ;; Support.  Cancellation. 
(when (chf) (and (cxj) (not(gxj)))) ;; Support.  Cancellation. 
(when (hhf) (and (hxj) (not(jxj)))) ;; Support.  Cancellation. 
(when (khf) (and (kxj) (not(lxj)))) ;; Support.  Cancellation. 
(when (mhf) (and (mxj) (not(qxj)))) ;; Support.  Cancellation. 
(when (rhf) (and (rxj) (not(txj)))) ;; Support.  Cancellation. 
(when (uhf) (and (uxj) (not(vxj)))) ;; Support.  Cancellation. 
(when (zhf) (and (zxj) (not(byj)))) ;; Support.  Cancellation. 
(when (hif) (and (hyj) (not(jyj)))) ;; Support.  Cancellation. 
(when (kif) (and (kyj) (not(lyj)))) ;; Support.  Cancellation. 
(when (tif)  (tyj)) ;; Support. 
(when (yif)  (yyj)) ;; Support. 
(when (ljf)  (lzj)) ;; Support. 
(when (qjf)  (qzj)) ;; Support. 
(when (gkf)  (g1j)) ;; Support. 
(when (jkf)  (j1j)) ;; Support. 
(when (lkf)  (l1j)) ;; Support. 
(when (qkf)  (q1j)) ;; Support. 
(when (tkf)  (t1j)) ;; Support. 
(when (vkf)  (v1j)) ;; Support. 
(when (ykf)  (y1j)) ;; Support. 
(when (blf)  (b2j)) ;; Support. 
(when (glf)  (g2j)) ;; Support. 
(when (jlf)  (j2j)) ;; Support. 
(when (llf)  (l2j)) ;; Support. 
(when (qlf)  (q2j)) ;; Support. 
(when (tlf)  (t2j)) ;; Support. 
(when (vlf)  (v2j)) ;; Support. 
(when (ylf)  (y2j)) ;; Support. 
(when (bmf)  (b3j)) ;; Support. 
(when (gmf)  (g3j)) ;; Support. 
(when (jmf)  (j3j)) ;; Support. 
(when (lmf)  (l3j)) ;; Support. 
(when (qmf)  (q3j)) ;; Support. 
(when (tmf) (and (t3j) (not(u3j)))) ;; Support.  Cancellation. 
(when (vmf) (and (v3j) (not(x3j)))) ;; Support.  Cancellation. 
(when (ymf) (and (y3j) (not(z3j)))) ;; Support.  Cancellation. 
(when (bnf) (and (b4j) (not(c4j)))) ;; Support.  Cancellation. 
(when (gnf) (and (g4j) (not(h4j)))) ;; Support.  Cancellation. 
(when (jnf) (and (j4j) (not(k4j)))) ;; Support.  Cancellation. 
(when (lnf) (and (l4j) (not(m4j)))) ;; Support.  Cancellation. 
(when (qnf) (and (q4j) (not(r4j)))) ;; Support.  Cancellation. 
(when (tnf)  (t4j)) ;; Support. 
(when (vnf)  (v4j)) ;; Support. 
(when (ynf)  (y4j)) ;; Support. 
(when (bof)  (b5j)) ;; Support. 
(when (gof)  (g5j)) ;; Support. 
(when (jof)  (j5j)) ;; Support. 
(when (lof)  (l5j)) ;; Support. 
(when (qof)  (q5j)) ;; Support. 
(when (tqf) (and (t7j) (not(u7j)))) ;; Support.  Cancellation. 
(when (vqf) (and (v7j) (not(x7j)))) ;; Support.  Cancellation. 
(when (yqf) (and (y7j) (not(z7j)))) ;; Support.  Cancellation. 
(when (bsf) (and (b8j) (not(c8j)))) ;; Support.  Cancellation. 
(when (gsf) (and (g8j) (not(h8j)))) ;; Support.  Cancellation. 
(when (jsf) (and (j8j) (not(k8j)))) ;; Support.  Cancellation. 
(when (lsf) (and (l8j) (not(m8j)))) ;; Support.  Cancellation. 
(when (qsf) (and (q8j) (not(r8j)))) ;; Support.  Cancellation. 
(when (tsf) (and (t8j) (not(u8j)))) ;; Support.  Cancellation. 
(when (vsf) (and (v8j) (not(x8j)))) ;; Support.  Cancellation. 
(when (ysf) (and (y8j) (not(z8j)))) ;; Support.  Cancellation. 
(when (brf) (and (b9j) (not(c9j)))) ;; Support.  Cancellation. 
(when (grf) (and (g9j) (not(h9j)))) ;; Support.  Cancellation. 
(when (jrf) (and (j9j) (not(k9j)))) ;; Support.  Cancellation. 
(when (lrf) (and (l9j) (not(m9j)))) ;; Support.  Cancellation. 
(when (qrf) (and (q9j) (not(r9j)))) ;; Support.  Cancellation. 
(when (trf)  (t9j)) ;; Support. 
(when (vrf)  (v9j)) ;; Support. 
(when (yrf)  (y9j)) ;; Support. 
(when (btf)  (b0j)) ;; Support. 
(when (gtf)  (g0j)) ;; Support. 
(when (jtf)  (j0j)) ;; Support. 
(when (ltf)  (l0j)) ;; Support. 
(when (qtf)  (q0j)) ;; Support. 
(when (ttf)  (t0j)) ;; Support. 
(when (vtf)  (v0j)) ;; Support. 
(when (ytf)  (y0j)) ;; Support. 
(when (buf)  (bak)) ;; Support. 
(when (guf)  (gak)) ;; Support. 
(when (juf)  (jak)) ;; Support. 
(when (luf)  (lak)) ;; Support. 
(when (quf)  (qak)) ;; Support. 
(when (tuf) (and (tak) (not(uak)))) ;; Support.  Cancellation. 
(when (vuf) (and (vak) (not(xak)))) ;; Support.  Cancellation. 
(when (yuf)  (yak)) ;; Support. 
(when (bvf)  (bbk)) ;; Support. 
(when (gvf) (and (gbk) (not(hbk)))) ;; Support.  Cancellation. 
(when (jvf) (and (jbk) (not(kbk)))) ;; Support.  Cancellation. 
(when (lvf)  (lbk)) ;; Support. 
(when (qvf)  (qbk)) ;; Support. 
(when (rvf) (and (rbk) (not(tbk)))) ;; Support.  Cancellation. 
(when (uvf) (and (ubk) (not(vbk)))) ;; Support.  Cancellation. 
(when (xvf) (and (xbk) (not(ybk)))) ;; Support.  Cancellation. 
(when (zvf) (and (zbk) (not(bck)))) ;; Support.  Cancellation. 
(when (cwf)  (cck)) ;; Support. 
(when (hwf)  (hck)) ;; Support. 
(when (kwf)  (kck)) ;; Support. 
(when (mwf)  (mck)) ;; Support. 
(when (rwf) (and (rck) (not(tck)))) ;; Support.  Cancellation. 
(when (uwf) (and (uck) (not(vck)))) ;; Support.  Cancellation. 
(when (xwf)  (xck)) ;; Support. 
(when (zwf)  (zck)) ;; Support. 
(when (cxf)  (cdk)) ;; Support. 
(when (hxf)  (hdk)) ;; Support. 
(when (kxf) (and (kdk) (not(ldk)))) ;; Support.  Cancellation. 
(when (mxf) (and (mdk) (not(qdk)))) ;; Support.  Cancellation. 
(when (rxf)  (rdk)) ;; Support. 
(when (uxf)  (udk)) ;; Support. 
(when (xxf)  (xdk)) ;; Support. 
(when (zxf)  (zdk)) ;; Support. 
(when (cyf) (and (cek) (not(gek)))) ;; Support.  Cancellation. 
(when (hyf) (and (hek) (not(jek)))) ;; Support.  Cancellation. 
(when (kyf) (and (kek) (not(lek)))) ;; Support.  Cancellation. 
(when (myf) (and (mek) (not(qek)))) ;; Support.  Cancellation. 
(when (ryf)  (rek)) ;; Support. 
(when (uyf)  (uek)) ;; Support. 
(when (xyf)  (xek)) ;; Support. 
(when (zyf)  (zek)) ;; Support. 
(when (czf)  (cfk)) ;; Support. 
(when (hzf)  (hfk)) ;; Support. 
(when (kzf)  (kfk)) ;; Support. 
(when (mzf)  (mfk)) ;; Support. 
(when (rzf)  (rfk)) ;; Support. 
(when (uzf)  (ufk)) ;; Support. 
(when (zzf)  (zfk)) ;; Support. 
(when (c1f)  (cgk)) ;; Support. 
(when (h1f)  (hgk)) ;; Support. 
(when (k1f)  (kgk)) ;; Support. 
(when (m1f)  (mgk)) ;; Support. 
(when (r1f) (and (rgk) (not(tgk)))) ;; Support.  Cancellation. 
(when (u1f) (and (ugk) (not(vgk)))) ;; Support.  Cancellation. 
(when (x1f) (and (xgk) (not(ygk)))) ;; Support.  Cancellation. 
(when (z1f) (and (zgk) (not(bhk)))) ;; Support.  Cancellation. 
(when (c2f) (and (chk) (not(ghk)))) ;; Support.  Cancellation. 
(when (h2f) (and (hhk) (not(jhk)))) ;; Support.  Cancellation. 
(when (k2f) (and (khk) (not(lhk)))) ;; Support.  Cancellation. 
(when (m2f) (and (mhk) (not(qhk)))) ;; Support.  Cancellation. 
(when (r2f) (and (rhk) (not(thk)))) ;; Support.  Cancellation. 
(when (u2f) (and (uhk) (not(vhk)))) ;; Support.  Cancellation. 
(when (x2f) (and (xhk) (not(yhk)))) ;; Support.  Cancellation. 
(when (z2f) (and (zhk) (not(bik)))) ;; Support.  Cancellation. 
(when (c3f) (and (cik) (not(gik)))) ;; Support.  Cancellation. 
(when (h3f) (and (hik) (not(jik)))) ;; Support.  Cancellation. 
(when (k3f) (and (kik) (not(lik)))) ;; Support.  Cancellation. 
(when (m3f) (and (mik) (not(qik)))) ;; Support.  Cancellation. 
(when (tmj) (and (t7e) (not(qvf)))) ;; Support.  Cancellation. 
(when (ymj) (and (y7e) (not(x7e)))) ;; Support.  Cancellation. 
(when (bnj) (and (b8e) (not(z7e)))) ;; Support.  Cancellation. 
(when (jnj) (and (j8e) (not(h8e)))) ;; Support.  Cancellation. 
(when (lnj) (and (l8e) (not(k8e)))) ;; Support.  Cancellation. 
(when (vnj) (and (v8e) (not(u8e)))) ;; Support.  Cancellation. 
(when (ynj) (and (y8e) (not(x8e)))) ;; Support.  Cancellation. 
(when (boj) (and (b9e) (not(z8e)))) ;; Support.  Cancellation. 
(when (goj) (and (g9e) (not(c9e)))) ;; Support.  Cancellation. 
(when (vpj) (and (v0e) (not(u0e)))) ;; Support.  Cancellation. 
(when (ypj) (and (y0e) (not(x0e)))) ;; Support.  Cancellation. 
(when (bqj) (and (baf) (not(z0e)))) ;; Support.  Cancellation. 
(when (gqj) (and (gaf) (not(caf)))) ;; Support.  Cancellation. 
(when (jqj) (and (jaf) (not(haf)))) ;; Support.  Cancellation. 
(when (lqj) (and (laf) (not(kaf)))) ;; Support.  Cancellation. 
(when (qqj) (and (qaf) (not(maf)))) ;; Support.  Cancellation. 
(when (tqj) (and (taf) (not(raf)))) ;; Support.  Cancellation. 
(when (vrj) (and (vcf) (not(ucf)))) ;; Support.  Cancellation. 
(when (yrj) (and (ycf) (not(xcf)))) ;; Support.  Cancellation. 
(when (btj) (and (bdf) (not(zcf)))) ;; Support.  Cancellation. 
(when (gtj) (and (gdf) (not(cdf)))) ;; Support.  Cancellation. 
(when (jtj) (and (jdf) (not(hdf)))) ;; Support.  Cancellation. 
(when (ltj) (and (ldf) (not(kdf)))) ;; Support.  Cancellation. 
(when (qtj) (and (qdf) (not(mdf)))) ;; Support.  Cancellation. 
(when (ttj) (and (tdf) (not(rdf)))) ;; Support.  Cancellation. 
(when (vtj) (and (vdf) (not(udf)))) ;; Support.  Cancellation. 
(when (ytj) (and (ydf) (not(xdf)))) ;; Support.  Cancellation. 
(when (buj) (and (bef) (not(zdf)))) ;; Support.  Cancellation. 
(when (guj) (and (gef) (not(cef)))) ;; Support.  Cancellation. 
(when (juj) (and (jef) (not(hef)))) ;; Support.  Cancellation. 
(when (luj) (and (lef) (not(kef)))) ;; Support.  Cancellation. 
(when (quj) (and (qef) (not(mef)))) ;; Support.  Cancellation. 
(when (tuj) (and (tef) (not(ref)))) ;; Support.  Cancellation. 
(when (vuj) (and (vef) (not(uef)))) ;; Support.  Cancellation. 
(when (yuj) (and (yef) (not(xef)))) ;; Support.  Cancellation. 
(when (bvj) (and (bff) (not(zef)))) ;; Support.  Cancellation. 
(when (gvj) (and (gff) (not(cff)))) ;; Support.  Cancellation. 
(when (jvj) (and (jff) (not(hff)))) ;; Support.  Cancellation. 
(when (lvj) (and (lff) (not(kff)))) ;; Support.  Cancellation. 
(when (qvj) (and (qff) (not(mff)))) ;; Support.  Cancellation. 
(when (tvj) (and (tff) (not(rff)))) ;; Support.  Cancellation. 
(when (vvj)  (vff)) ;; Support. 
(when (yvj)  (yff)) ;; Support. 
(when (bwj) (and (bgf) (not(zff)))) ;; Support.  Cancellation. 
(when (gwj) (and (ggf) (not(cgf)))) ;; Support.  Cancellation. 
(when (jwj)  (jgf)) ;; Support. 
(when (lwj) (and (lgf) (not(kgf)))) ;; Support.  Cancellation. 
(when (qwj) (and (qgf) (not(mgf)))) ;; Support.  Cancellation. 
(when (twj)  (tgf)) ;; Support. 
(when (vwj) (and (vgf) (not(ugf)))) ;; Support.  Cancellation. 
(when (ywj) (and (ygf) (not(xgf)))) ;; Support.  Cancellation. 
(when (bxj) (and (bhf) (not(zgf)))) ;; Support.  Cancellation. 
(when (gxj) (and (ghf) (not(chf)))) ;; Support.  Cancellation. 
(when (jxj) (and (jhf) (not(hhf)))) ;; Support.  Cancellation. 
(when (lxj) (and (lhf) (not(khf)))) ;; Support.  Cancellation. 
(when (qxj) (and (qhf) (not(mhf)))) ;; Support.  Cancellation. 
(when (txj) (and (thf) (not(rhf)))) ;; Support.  Cancellation. 
(when (vxj) (and (vhf) (not(uhf)))) ;; Support.  Cancellation. 
(when (yxj)  (yhf)) ;; Support. 
(when (byj) (and (bif) (not(zhf)))) ;; Support.  Cancellation. 
(when (gyj)  (gif)) ;; Support. 
(when (jyj) (and (jif) (not(hif)))) ;; Support.  Cancellation. 
(when (lyj) (and (lif) (not(kif)))) ;; Support.  Cancellation. 
(when (qyj)  (qif)) ;; Support. 
(when (u3j) (and (umf) (not(tmf)))) ;; Support.  Cancellation. 
(when (x3j) (and (xmf) (not(vmf)))) ;; Support.  Cancellation. 
(when (z3j) (and (zmf) (not(ymf)))) ;; Support.  Cancellation. 
(when (c4j) (and (cnf) (not(bnf)))) ;; Support.  Cancellation. 
(when (h4j) (and (hnf) (not(gnf)))) ;; Support.  Cancellation. 
(when (k4j) (and (knf) (not(jnf)))) ;; Support.  Cancellation. 
(when (m4j) (and (mnf) (not(lnf)))) ;; Support.  Cancellation. 
(when (r4j) (and (rnf) (not(qnf)))) ;; Support.  Cancellation. 
(when (u5j)  (uof)) ;; Support. 
(when (x5j)  (xof)) ;; Support. 
(when (z5j)  (zof)) ;; Support. 
(when (c6j)  (cpf)) ;; Support. 
(when (h6j)  (hpf)) ;; Support. 
(when (k6j)  (kpf)) ;; Support. 
(when (m6j)  (mpf)) ;; Support. 
(when (r6j)  (rpf)) ;; Support. 
(when (u7j) (and (uqf) (not(tqf)))) ;; Support.  Cancellation. 
(when (x7j) (and (xqf) (not(vqf)))) ;; Support.  Cancellation. 
(when (z7j) (and (zqf) (not(yqf)))) ;; Support.  Cancellation. 
(when (c8j) (and (csf) (not(bsf)))) ;; Support.  Cancellation. 
(when (h8j) (and (hsf) (not(gsf)))) ;; Support.  Cancellation. 
(when (k8j) (and (ksf) (not(jsf)))) ;; Support.  Cancellation. 
(when (m8j) (and (msf) (not(lsf)))) ;; Support.  Cancellation. 
(when (r8j) (and (rsf) (not(qsf)))) ;; Support.  Cancellation. 
(when (u8j) (and (usf) (not(tsf)))) ;; Support.  Cancellation. 
(when (x8j) (and (xsf) (not(vsf)))) ;; Support.  Cancellation. 
(when (z8j) (and (zsf) (not(ysf)))) ;; Support.  Cancellation. 
(when (c9j) (and (crf) (not(brf)))) ;; Support.  Cancellation. 
(when (h9j) (and (hrf) (not(grf)))) ;; Support.  Cancellation. 
(when (k9j) (and (krf) (not(jrf)))) ;; Support.  Cancellation. 
(when (m9j) (and (mrf) (not(lrf)))) ;; Support.  Cancellation. 
(when (r9j) (and (rrf) (not(qrf)))) ;; Support.  Cancellation. 
(when (uak) (and (uuf) (not(tuf)))) ;; Support.  Cancellation. 
(when (xak) (and (xuf) (not(vuf)))) ;; Support.  Cancellation. 
(when (hbk) (and (hvf) (not(gvf)))) ;; Support.  Cancellation. 
(when (kbk) (and (kvf) (not(jvf)))) ;; Support.  Cancellation. 
(when (tbk) (and (tvf) (not(rvf)))) ;; Support.  Cancellation. 
(when (vbk) (and (vvf) (not(uvf)))) ;; Support.  Cancellation. 
(when (ybk) (and (yvf) (not(xvf)))) ;; Support.  Cancellation. 
(when (bck) (and (bwf) (not(zvf)))) ;; Support.  Cancellation. 
(when (tck) (and (twf) (not(rwf)))) ;; Support.  Cancellation. 
(when (vck) (and (vwf) (not(uwf)))) ;; Support.  Cancellation. 
(when (ldk) (and (lxf) (not(kxf)))) ;; Support.  Cancellation. 
(when (qdk) (and (qxf) (not(mxf)))) ;; Support.  Cancellation. 
(when (gek) (and (gyf) (not(cyf)))) ;; Support.  Cancellation. 
(when (jek) (and (jyf) (not(hyf)))) ;; Support.  Cancellation. 
(when (lek) (and (lyf) (not(kyf)))) ;; Support.  Cancellation. 
(when (qek) (and (qyf) (not(myf)))) ;; Support.  Cancellation. 
(when (tgk) (and (t1f) (not(r1f)))) ;; Support.  Cancellation. 
(when (vgk) (and (v1f) (not(u1f)))) ;; Support.  Cancellation. 
(when (ygk) (and (y1f) (not(x1f)))) ;; Support.  Cancellation. 
(when (bhk) (and (b2f) (not(z1f)))) ;; Support.  Cancellation. 
(when (ghk) (and (g2f) (not(c2f)))) ;; Support.  Cancellation. 
(when (jhk) (and (j2f) (not(h2f)))) ;; Support.  Cancellation. 
(when (lhk) (and (l2f) (not(k2f)))) ;; Support.  Cancellation. 
(when (qhk) (and (q2f) (not(m2f)))) ;; Support.  Cancellation. 
(when (thk) (and (t2f) (not(r2f)))) ;; Support.  Cancellation. 
(when (vhk) (and (v2f) (not(u2f)))) ;; Support.  Cancellation. 
(when (yhk) (and (y2f) (not(x2f)))) ;; Support.  Cancellation. 
(when (bik) (and (b3f) (not(z2f)))) ;; Support.  Cancellation. 
(when (gik) (and (g3f) (not(c3f)))) ;; Support.  Cancellation. 
(when (jik) (and (j3f) (not(h3f)))) ;; Support.  Cancellation. 
(when (lik) (and (l3f) (not(k3f)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L3_L7
:parameters ()
:precondition (and (q7e))

:effect (and  (xjj) (kjf)
(when (qmj) (and (q3f) (not(m3f)))) ;; Support.  Cancellation. 
(when (r7e) (and (rqi) (not(r3i)))) ;; Support.  Cancellation. 
(when (not(t7e))  (not(tqi))) ;; Cancellation. 
(when (u7e) (and (uqi) (not(vqi)))) ;; Support.  Cancellation. 
(when (x7e) (and (xqi) (not(yqi)))) ;; Support.  Cancellation. 
(when (z7e) (and (zqi) (not(bsi)))) ;; Support.  Cancellation. 
(when (c8e) (and (csi) (not(gsi)))) ;; Support.  Cancellation. 
(when (h8e) (and (hsi) (not(jsi)))) ;; Support.  Cancellation. 
(when (k8e) (and (ksi) (not(lsi)))) ;; Support.  Cancellation. 
(when (m8e) (and (msi) (not(qsi)))) ;; Support.  Cancellation. 
(when (r8e) (and (rsi) (not(tsi)))) ;; Support.  Cancellation. 
(when (u8e) (and (usi) (not(vsi)))) ;; Support.  Cancellation. 
(when (x8e) (and (xsi) (not(ysi)))) ;; Support.  Cancellation. 
(when (z8e) (and (zsi) (not(bri)))) ;; Support.  Cancellation. 
(when (c9e) (and (cri) (not(gri)))) ;; Support.  Cancellation. 
(when (h9e) (and (hri) (not(jri)))) ;; Support.  Cancellation. 
(when (k9e) (and (kri) (not(lri)))) ;; Support.  Cancellation. 
(when (m9e) (and (mri) (not(qri)))) ;; Support.  Cancellation. 
(when (r9e) (and (rri) (not(tri)))) ;; Support.  Cancellation. 
(when (u9e) (and (uri) (not(vri)))) ;; Support.  Cancellation. 
(when (x9e) (and (xri) (not(yri)))) ;; Support.  Cancellation. 
(when (z9e) (and (zri) (not(bti)))) ;; Support.  Cancellation. 
(when (c0e) (and (cti) (not(gti)))) ;; Support.  Cancellation. 
(when (h0e) (and (hti) (not(jti)))) ;; Support.  Cancellation. 
(when (k0e) (and (kti) (not(lti)))) ;; Support.  Cancellation. 
(when (m0e) (and (mti) (not(qti)))) ;; Support.  Cancellation. 
(when (r0e) (and (rti) (not(tti)))) ;; Support.  Cancellation. 
(when (u0e) (and (uti) (not(vti)))) ;; Support.  Cancellation. 
(when (x0e) (and (xti) (not(yti)))) ;; Support.  Cancellation. 
(when (z0e) (and (zti) (not(bui)))) ;; Support.  Cancellation. 
(when (caf) (and (cui) (not(gui)))) ;; Support.  Cancellation. 
(when (haf) (and (hui) (not(jui)))) ;; Support.  Cancellation. 
(when (kaf) (and (kui) (not(lui)))) ;; Support.  Cancellation. 
(when (maf) (and (mui) (not(qui)))) ;; Support.  Cancellation. 
(when (raf) (and (rui) (not(tui)))) ;; Support.  Cancellation. 
(when (uaf) (and (uui) (not(vui)))) ;; Support.  Cancellation. 
(when (xaf) (and (xui) (not(yui)))) ;; Support.  Cancellation. 
(when (zaf) (and (zui) (not(bvi)))) ;; Support.  Cancellation. 
(when (cbf) (and (cvi) (not(gvi)))) ;; Support.  Cancellation. 
(when (hbf) (and (hvi) (not(jvi)))) ;; Support.  Cancellation. 
(when (kbf) (and (kvi) (not(lvi)))) ;; Support.  Cancellation. 
(when (mbf) (and (mvi) (not(qvi)))) ;; Support.  Cancellation. 
(when (rbf) (and (rvi) (not(tvi)))) ;; Support.  Cancellation. 
(when (ubf) (and (uvi) (not(vvi)))) ;; Support.  Cancellation. 
(when (xbf) (and (xvi) (not(yvi)))) ;; Support.  Cancellation. 
(when (zbf) (and (zvi) (not(bwi)))) ;; Support.  Cancellation. 
(when (ccf) (and (cwi) (not(gwi)))) ;; Support.  Cancellation. 
(when (hcf) (and (hwi) (not(jwi)))) ;; Support.  Cancellation. 
(when (kcf) (and (kwi) (not(lwi)))) ;; Support.  Cancellation. 
(when (mcf) (and (mwi) (not(qwi)))) ;; Support.  Cancellation. 
(when (rcf) (and (rwi) (not(twi)))) ;; Support.  Cancellation. 
(when (ucf) (and (uwi) (not(vwi)))) ;; Support.  Cancellation. 
(when (xcf) (and (xwi) (not(ywi)))) ;; Support.  Cancellation. 
(when (zcf) (and (zwi) (not(bxi)))) ;; Support.  Cancellation. 
(when (cdf) (and (cxi) (not(gxi)))) ;; Support.  Cancellation. 
(when (hdf) (and (hxi) (not(jxi)))) ;; Support.  Cancellation. 
(when (kdf) (and (kxi) (not(lxi)))) ;; Support.  Cancellation. 
(when (mdf) (and (mxi) (not(qxi)))) ;; Support.  Cancellation. 
(when (rdf) (and (rxi) (not(txi)))) ;; Support.  Cancellation. 
(when (udf) (and (uxi) (not(vxi)))) ;; Support.  Cancellation. 
(when (xdf) (and (xxi) (not(yxi)))) ;; Support.  Cancellation. 
(when (zdf) (and (zxi) (not(byi)))) ;; Support.  Cancellation. 
(when (cef) (and (cyi) (not(gyi)))) ;; Support.  Cancellation. 
(when (hef) (and (hyi) (not(jyi)))) ;; Support.  Cancellation. 
(when (kef) (and (kyi) (not(lyi)))) ;; Support.  Cancellation. 
(when (mef) (and (myi) (not(qyi)))) ;; Support.  Cancellation. 
(when (ref) (and (ryi) (not(tyi)))) ;; Support.  Cancellation. 
(when (uef) (and (uyi) (not(vyi)))) ;; Support.  Cancellation. 
(when (xef) (and (xyi) (not(yyi)))) ;; Support.  Cancellation. 
(when (zef) (and (zyi) (not(bzi)))) ;; Support.  Cancellation. 
(when (cff) (and (czi) (not(gzi)))) ;; Support.  Cancellation. 
(when (hff) (and (hzi) (not(jzi)))) ;; Support.  Cancellation. 
(when (kff) (and (kzi) (not(lzi)))) ;; Support.  Cancellation. 
(when (mff) (and (mzi) (not(qzi)))) ;; Support.  Cancellation. 
(when (rff) (and (rzi) (not(tzi)))) ;; Support.  Cancellation. 
(when (zff) (and (zzi) (not(b1i)))) ;; Support.  Cancellation. 
(when (cgf) (and (c1i) (not(g1i)))) ;; Support.  Cancellation. 
(when (kgf) (and (k1i) (not(l1i)))) ;; Support.  Cancellation. 
(when (mgf) (and (m1i) (not(q1i)))) ;; Support.  Cancellation. 
(when (ugf) (and (u1i) (not(v1i)))) ;; Support.  Cancellation. 
(when (xgf) (and (x1i) (not(y1i)))) ;; Support.  Cancellation. 
(when (zgf) (and (z1i) (not(b2i)))) ;; Support.  Cancellation. 
(when (chf) (and (c2i) (not(g2i)))) ;; Support.  Cancellation. 
(when (hhf) (and (h2i) (not(j2i)))) ;; Support.  Cancellation. 
(when (khf) (and (k2i) (not(l2i)))) ;; Support.  Cancellation. 
(when (mhf) (and (m2i) (not(q2i)))) ;; Support.  Cancellation. 
(when (rhf) (and (r2i) (not(t2i)))) ;; Support.  Cancellation. 
(when (uhf) (and (u2i) (not(v2i)))) ;; Support.  Cancellation. 
(when (zhf) (and (z2i) (not(b3i)))) ;; Support.  Cancellation. 
(when (hif) (and (h3i) (not(j3i)))) ;; Support.  Cancellation. 
(when (kif) (and (k3i) (not(l3i)))) ;; Support.  Cancellation. 
(when (tif) (and (t3i) (not(u3i)))) ;; Support.  Cancellation. 
(when (yif) (and (y3i) (not(z3i)))) ;; Support.  Cancellation. 
(when (ljf) (and (l4i) (not(m4i)))) ;; Support.  Cancellation. 
(when (qjf) (and (q4i) (not(r4i)))) ;; Support.  Cancellation. 
(when (gkf) (and (g5i) (not(h5i)))) ;; Support.  Cancellation. 
(when (jkf) (and (j5i) (not(k5i)))) ;; Support.  Cancellation. 
(when (lkf) (and (l5i) (not(m5i)))) ;; Support.  Cancellation. 
(when (qkf) (and (q5i) (not(r5i)))) ;; Support.  Cancellation. 
(when (tkf) (and (t5i) (not(u5i)))) ;; Support.  Cancellation. 
(when (vkf) (and (v5i) (not(x5i)))) ;; Support.  Cancellation. 
(when (ykf) (and (y5i) (not(z5i)))) ;; Support.  Cancellation. 
(when (blf) (and (b6i) (not(c6i)))) ;; Support.  Cancellation. 
(when (glf) (and (g6i) (not(h6i)))) ;; Support.  Cancellation. 
(when (jlf) (and (j6i) (not(k6i)))) ;; Support.  Cancellation. 
(when (llf) (and (l6i) (not(m6i)))) ;; Support.  Cancellation. 
(when (qlf) (and (q6i) (not(r6i)))) ;; Support.  Cancellation. 
(when (tlf) (and (t6i) (not(u6i)))) ;; Support.  Cancellation. 
(when (vlf) (and (v6i) (not(x6i)))) ;; Support.  Cancellation. 
(when (ylf) (and (y6i) (not(z6i)))) ;; Support.  Cancellation. 
(when (bmf) (and (b7i) (not(c7i)))) ;; Support.  Cancellation. 
(when (gmf) (and (g7i) (not(h7i)))) ;; Support.  Cancellation. 
(when (jmf) (and (j7i) (not(k7i)))) ;; Support.  Cancellation. 
(when (lmf) (and (l7i) (not(m7i)))) ;; Support.  Cancellation. 
(when (qmf) (and (q7i) (not(r7i)))) ;; Support.  Cancellation. 
(when (tmf) (and (t7i) (not(u7i)))) ;; Support.  Cancellation. 
(when (vmf) (and (v7i) (not(x7i)))) ;; Support.  Cancellation. 
(when (ymf) (and (y7i) (not(z7i)))) ;; Support.  Cancellation. 
(when (bnf) (and (b8i) (not(c8i)))) ;; Support.  Cancellation. 
(when (gnf) (and (g8i) (not(h8i)))) ;; Support.  Cancellation. 
(when (jnf) (and (j8i) (not(k8i)))) ;; Support.  Cancellation. 
(when (lnf) (and (l8i) (not(m8i)))) ;; Support.  Cancellation. 
(when (qnf) (and (q8i) (not(r8i)))) ;; Support.  Cancellation. 
(when (tnf)  (t8i)) ;; Support. 
(when (vnf)  (v8i)) ;; Support. 
(when (ynf)  (y8i)) ;; Support. 
(when (bof)  (b9i)) ;; Support. 
(when (gof)  (g9i)) ;; Support. 
(when (jof)  (j9i)) ;; Support. 
(when (lof)  (l9i)) ;; Support. 
(when (qof)  (q9i)) ;; Support. 
(when (tqf) (and (taj) (not(uaj)))) ;; Support.  Cancellation. 
(when (vqf) (and (vaj) (not(xaj)))) ;; Support.  Cancellation. 
(when (yqf) (and (yaj) (not(zaj)))) ;; Support.  Cancellation. 
(when (bsf) (and (bbj) (not(cbj)))) ;; Support.  Cancellation. 
(when (gsf) (and (gbj) (not(hbj)))) ;; Support.  Cancellation. 
(when (jsf) (and (jbj) (not(kbj)))) ;; Support.  Cancellation. 
(when (lsf) (and (lbj) (not(mbj)))) ;; Support.  Cancellation. 
(when (qsf) (and (qbj) (not(rbj)))) ;; Support.  Cancellation. 
(when (tsf) (and (tbj) (not(ubj)))) ;; Support.  Cancellation. 
(when (vsf) (and (vbj) (not(xbj)))) ;; Support.  Cancellation. 
(when (ysf) (and (ybj) (not(zbj)))) ;; Support.  Cancellation. 
(when (brf) (and (bcj) (not(ccj)))) ;; Support.  Cancellation. 
(when (grf) (and (gcj) (not(hcj)))) ;; Support.  Cancellation. 
(when (jrf) (and (jcj) (not(kcj)))) ;; Support.  Cancellation. 
(when (lrf) (and (lcj) (not(mcj)))) ;; Support.  Cancellation. 
(when (qrf) (and (qcj) (not(rcj)))) ;; Support.  Cancellation. 
(when (trf)  (tcj)) ;; Support. 
(when (vrf)  (vcj)) ;; Support. 
(when (yrf)  (ycj)) ;; Support. 
(when (btf)  (bdj)) ;; Support. 
(when (gtf)  (gdj)) ;; Support. 
(when (jtf)  (jdj)) ;; Support. 
(when (ltf)  (ldj)) ;; Support. 
(when (qtf)  (qdj)) ;; Support. 
(when (ttf)  (tdj)) ;; Support. 
(when (vtf)  (vdj)) ;; Support. 
(when (ytf)  (ydj)) ;; Support. 
(when (buf)  (bej)) ;; Support. 
(when (guf)  (gej)) ;; Support. 
(when (juf)  (jej)) ;; Support. 
(when (luf)  (lej)) ;; Support. 
(when (quf)  (qej)) ;; Support. 
(when (tuf) (and (tej) (not(uej)))) ;; Support.  Cancellation. 
(when (vuf) (and (vej) (not(xej)))) ;; Support.  Cancellation. 
(when (yuf)  (yej)) ;; Support. 
(when (bvf)  (bfj)) ;; Support. 
(when (gvf) (and (gfj) (not(hfj)))) ;; Support.  Cancellation. 
(when (jvf) (and (jfj) (not(kfj)))) ;; Support.  Cancellation. 
(when (lvf)  (lfj)) ;; Support. 
(when (qvf)  (qfj)) ;; Support. 
(when (rvf) (and (rfj) (not(tfj)))) ;; Support.  Cancellation. 
(when (uvf) (and (ufj) (not(vfj)))) ;; Support.  Cancellation. 
(when (xvf) (and (xfj) (not(yfj)))) ;; Support.  Cancellation. 
(when (zvf) (and (zfj) (not(bgj)))) ;; Support.  Cancellation. 
(when (cwf)  (cgj)) ;; Support. 
(when (hwf)  (hgj)) ;; Support. 
(when (kwf)  (kgj)) ;; Support. 
(when (mwf)  (mgj)) ;; Support. 
(when (rwf) (and (rgj) (not(tgj)))) ;; Support.  Cancellation. 
(when (uwf) (and (ugj) (not(vgj)))) ;; Support.  Cancellation. 
(when (xwf)  (xgj)) ;; Support. 
(when (zwf)  (zgj)) ;; Support. 
(when (cxf)  (chj)) ;; Support. 
(when (hxf)  (hhj)) ;; Support. 
(when (kxf) (and (khj) (not(lhj)))) ;; Support.  Cancellation. 
(when (mxf) (and (mhj) (not(qhj)))) ;; Support.  Cancellation. 
(when (rxf)  (rhj)) ;; Support. 
(when (uxf)  (uhj)) ;; Support. 
(when (xxf)  (xhj)) ;; Support. 
(when (zxf)  (zhj)) ;; Support. 
(when (cyf) (and (cij) (not(gij)))) ;; Support.  Cancellation. 
(when (hyf) (and (hij) (not(jij)))) ;; Support.  Cancellation. 
(when (kyf) (and (kij) (not(lij)))) ;; Support.  Cancellation. 
(when (myf) (and (mij) (not(qij)))) ;; Support.  Cancellation. 
(when (ryf)  (rij)) ;; Support. 
(when (uyf)  (uij)) ;; Support. 
(when (xyf)  (xij)) ;; Support. 
(when (zyf)  (zij)) ;; Support. 
(when (czf)  (cjj)) ;; Support. 
(when (hzf)  (hjj)) ;; Support. 
(when (kzf)  (kjj)) ;; Support. 
(when (mzf)  (mjj)) ;; Support. 
(when (rzf)  (rjj)) ;; Support. 
(when (uzf)  (ujj)) ;; Support. 
(when (zzf)  (zjj)) ;; Support. 
(when (c1f)  (ckj)) ;; Support. 
(when (h1f)  (hkj)) ;; Support. 
(when (k1f)  (kkj)) ;; Support. 
(when (m1f)  (mkj)) ;; Support. 
(when (r1f) (and (rkj) (not(tkj)))) ;; Support.  Cancellation. 
(when (u1f) (and (ukj) (not(vkj)))) ;; Support.  Cancellation. 
(when (x1f) (and (xkj) (not(ykj)))) ;; Support.  Cancellation. 
(when (z1f) (and (zkj) (not(blj)))) ;; Support.  Cancellation. 
(when (c2f) (and (clj) (not(glj)))) ;; Support.  Cancellation. 
(when (h2f) (and (hlj) (not(jlj)))) ;; Support.  Cancellation. 
(when (k2f) (and (klj) (not(llj)))) ;; Support.  Cancellation. 
(when (m2f) (and (mlj) (not(qlj)))) ;; Support.  Cancellation. 
(when (r2f) (and (rlj) (not(tlj)))) ;; Support.  Cancellation. 
(when (u2f) (and (ulj) (not(vlj)))) ;; Support.  Cancellation. 
(when (x2f) (and (xlj) (not(ylj)))) ;; Support.  Cancellation. 
(when (z2f) (and (zlj) (not(bmj)))) ;; Support.  Cancellation. 
(when (c3f) (and (cmj) (not(gmj)))) ;; Support.  Cancellation. 
(when (h3f) (and (hmj) (not(jmj)))) ;; Support.  Cancellation. 
(when (k3f) (and (kmj) (not(lmj)))) ;; Support.  Cancellation. 
(when (m3f) (and (mmj) (not(qmj)))) ;; Support.  Cancellation. 
(when (tqi) (and (t7e) (not(qvf)))) ;; Support.  Cancellation. 
(when (not(rqi))  (not(r7e))) ;; Cancellation. 
(when (vqi) (and (v7e) (not(u7e)))) ;; Support.  Cancellation. 
(when (yqi) (and (y7e) (not(x7e)))) ;; Support.  Cancellation. 
(when (bsi) (and (b8e) (not(z7e)))) ;; Support.  Cancellation. 
(when (gsi) (and (g8e) (not(c8e)))) ;; Support.  Cancellation. 
(when (jsi) (and (j8e) (not(h8e)))) ;; Support.  Cancellation. 
(when (lsi) (and (l8e) (not(k8e)))) ;; Support.  Cancellation. 
(when (qsi) (and (q8e) (not(m8e)))) ;; Support.  Cancellation. 
(when (tsi) (and (t8e) (not(r8e)))) ;; Support.  Cancellation. 
(when (vsi) (and (v8e) (not(u8e)))) ;; Support.  Cancellation. 
(when (ysi) (and (y8e) (not(x8e)))) ;; Support.  Cancellation. 
(when (bri) (and (b9e) (not(z8e)))) ;; Support.  Cancellation. 
(when (gri) (and (g9e) (not(c9e)))) ;; Support.  Cancellation. 
(when (jri) (and (j9e) (not(h9e)))) ;; Support.  Cancellation. 
(when (lri) (and (l9e) (not(k9e)))) ;; Support.  Cancellation. 
(when (qri) (and (q9e) (not(m9e)))) ;; Support.  Cancellation. 
(when (tri) (and (t9e) (not(r9e)))) ;; Support.  Cancellation. 
(when (vri) (and (v9e) (not(u9e)))) ;; Support.  Cancellation. 
(when (yri) (and (y9e) (not(x9e)))) ;; Support.  Cancellation. 
(when (bti) (and (b0e) (not(z9e)))) ;; Support.  Cancellation. 
(when (gti) (and (g0e) (not(c0e)))) ;; Support.  Cancellation. 
(when (jti) (and (j0e) (not(h0e)))) ;; Support.  Cancellation. 
(when (lti) (and (l0e) (not(k0e)))) ;; Support.  Cancellation. 
(when (qti) (and (q0e) (not(m0e)))) ;; Support.  Cancellation. 
(when (tti) (and (t0e) (not(r0e)))) ;; Support.  Cancellation. 
(when (vti) (and (v0e) (not(u0e)))) ;; Support.  Cancellation. 
(when (yti) (and (y0e) (not(x0e)))) ;; Support.  Cancellation. 
(when (bui) (and (baf) (not(z0e)))) ;; Support.  Cancellation. 
(when (gui) (and (gaf) (not(caf)))) ;; Support.  Cancellation. 
(when (jui) (and (jaf) (not(haf)))) ;; Support.  Cancellation. 
(when (lui) (and (laf) (not(kaf)))) ;; Support.  Cancellation. 
(when (qui) (and (qaf) (not(maf)))) ;; Support.  Cancellation. 
(when (tui) (and (taf) (not(raf)))) ;; Support.  Cancellation. 
(when (vui) (and (vaf) (not(uaf)))) ;; Support.  Cancellation. 
(when (yui) (and (yaf) (not(xaf)))) ;; Support.  Cancellation. 
(when (bvi) (and (bbf) (not(zaf)))) ;; Support.  Cancellation. 
(when (gvi) (and (gbf) (not(cbf)))) ;; Support.  Cancellation. 
(when (jvi) (and (jbf) (not(hbf)))) ;; Support.  Cancellation. 
(when (lvi) (and (lbf) (not(kbf)))) ;; Support.  Cancellation. 
(when (qvi) (and (qbf) (not(mbf)))) ;; Support.  Cancellation. 
(when (tvi) (and (tbf) (not(rbf)))) ;; Support.  Cancellation. 
(when (vvi) (and (vbf) (not(ubf)))) ;; Support.  Cancellation. 
(when (yvi) (and (ybf) (not(xbf)))) ;; Support.  Cancellation. 
(when (bwi) (and (bcf) (not(zbf)))) ;; Support.  Cancellation. 
(when (gwi) (and (gcf) (not(ccf)))) ;; Support.  Cancellation. 
(when (jwi) (and (jcf) (not(hcf)))) ;; Support.  Cancellation. 
(when (lwi) (and (lcf) (not(kcf)))) ;; Support.  Cancellation. 
(when (qwi) (and (qcf) (not(mcf)))) ;; Support.  Cancellation. 
(when (twi) (and (tcf) (not(rcf)))) ;; Support.  Cancellation. 
(when (vwi) (and (vcf) (not(ucf)))) ;; Support.  Cancellation. 
(when (ywi) (and (ycf) (not(xcf)))) ;; Support.  Cancellation. 
(when (bxi) (and (bdf) (not(zcf)))) ;; Support.  Cancellation. 
(when (gxi) (and (gdf) (not(cdf)))) ;; Support.  Cancellation. 
(when (jxi) (and (jdf) (not(hdf)))) ;; Support.  Cancellation. 
(when (lxi) (and (ldf) (not(kdf)))) ;; Support.  Cancellation. 
(when (qxi) (and (qdf) (not(mdf)))) ;; Support.  Cancellation. 
(when (txi) (and (tdf) (not(rdf)))) ;; Support.  Cancellation. 
(when (vxi) (and (vdf) (not(udf)))) ;; Support.  Cancellation. 
(when (yxi) (and (ydf) (not(xdf)))) ;; Support.  Cancellation. 
(when (byi) (and (bef) (not(zdf)))) ;; Support.  Cancellation. 
(when (gyi) (and (gef) (not(cef)))) ;; Support.  Cancellation. 
(when (jyi) (and (jef) (not(hef)))) ;; Support.  Cancellation. 
(when (lyi) (and (lef) (not(kef)))) ;; Support.  Cancellation. 
(when (qyi) (and (qef) (not(mef)))) ;; Support.  Cancellation. 
(when (tyi) (and (tef) (not(ref)))) ;; Support.  Cancellation. 
(when (vyi) (and (vef) (not(uef)))) ;; Support.  Cancellation. 
(when (yyi) (and (yef) (not(xef)))) ;; Support.  Cancellation. 
(when (bzi) (and (bff) (not(zef)))) ;; Support.  Cancellation. 
(when (gzi) (and (gff) (not(cff)))) ;; Support.  Cancellation. 
(when (jzi) (and (jff) (not(hff)))) ;; Support.  Cancellation. 
(when (lzi) (and (lff) (not(kff)))) ;; Support.  Cancellation. 
(when (qzi) (and (qff) (not(mff)))) ;; Support.  Cancellation. 
(when (tzi) (and (tff) (not(rff)))) ;; Support.  Cancellation. 
(when (vzi)  (vff)) ;; Support. 
(when (yzi)  (yff)) ;; Support. 
(when (b1i) (and (bgf) (not(zff)))) ;; Support.  Cancellation. 
(when (g1i) (and (ggf) (not(cgf)))) ;; Support.  Cancellation. 
(when (j1i)  (jgf)) ;; Support. 
(when (l1i) (and (lgf) (not(kgf)))) ;; Support.  Cancellation. 
(when (q1i) (and (qgf) (not(mgf)))) ;; Support.  Cancellation. 
(when (t1i)  (tgf)) ;; Support. 
(when (v1i) (and (vgf) (not(ugf)))) ;; Support.  Cancellation. 
(when (y1i) (and (ygf) (not(xgf)))) ;; Support.  Cancellation. 
(when (b2i) (and (bhf) (not(zgf)))) ;; Support.  Cancellation. 
(when (g2i) (and (ghf) (not(chf)))) ;; Support.  Cancellation. 
(when (j2i) (and (jhf) (not(hhf)))) ;; Support.  Cancellation. 
(when (l2i) (and (lhf) (not(khf)))) ;; Support.  Cancellation. 
(when (q2i) (and (qhf) (not(mhf)))) ;; Support.  Cancellation. 
(when (t2i) (and (thf) (not(rhf)))) ;; Support.  Cancellation. 
(when (v2i) (and (vhf) (not(uhf)))) ;; Support.  Cancellation. 
(when (y2i)  (yhf)) ;; Support. 
(when (b3i) (and (bif) (not(zhf)))) ;; Support.  Cancellation. 
(when (g3i)  (gif)) ;; Support. 
(when (j3i) (and (jif) (not(hif)))) ;; Support.  Cancellation. 
(when (l3i) (and (lif) (not(kif)))) ;; Support.  Cancellation. 
(when (q3i)  (qif)) ;; Support. 
(when (r3i)  (rif)) ;; Support. 
(when (u3i) (and (uif) (not(tif)))) ;; Support.  Cancellation. 
(when (x3i)  (xif)) ;; Support. 
(when (z3i) (and (zif) (not(yif)))) ;; Support.  Cancellation. 
(when (c4i)  (cjf)) ;; Support. 
(when (h4i)  (hjf)) ;; Support. 
(when (m4i) (and (mjf) (not(ljf)))) ;; Support.  Cancellation. 
(when (r4i) (and (rjf) (not(qjf)))) ;; Support.  Cancellation. 
(when (u4i)  (ujf)) ;; Support. 
(when (x4i)  (xjf)) ;; Support. 
(when (z4i)  (zjf)) ;; Support. 
(when (c5i)  (ckf)) ;; Support. 
(when (h5i) (and (hkf) (not(gkf)))) ;; Support.  Cancellation. 
(when (k5i) (and (kkf) (not(jkf)))) ;; Support.  Cancellation. 
(when (m5i) (and (mkf) (not(lkf)))) ;; Support.  Cancellation. 
(when (r5i) (and (rkf) (not(qkf)))) ;; Support.  Cancellation. 
(when (u5i) (and (ukf) (not(tkf)))) ;; Support.  Cancellation. 
(when (x5i) (and (xkf) (not(vkf)))) ;; Support.  Cancellation. 
(when (z5i) (and (zkf) (not(ykf)))) ;; Support.  Cancellation. 
(when (c6i) (and (clf) (not(blf)))) ;; Support.  Cancellation. 
(when (h6i) (and (hlf) (not(glf)))) ;; Support.  Cancellation. 
(when (k6i) (and (klf) (not(jlf)))) ;; Support.  Cancellation. 
(when (m6i) (and (mlf) (not(llf)))) ;; Support.  Cancellation. 
(when (r6i) (and (rlf) (not(qlf)))) ;; Support.  Cancellation. 
(when (u6i) (and (ulf) (not(tlf)))) ;; Support.  Cancellation. 
(when (x6i) (and (xlf) (not(vlf)))) ;; Support.  Cancellation. 
(when (z6i) (and (zlf) (not(ylf)))) ;; Support.  Cancellation. 
(when (c7i) (and (cmf) (not(bmf)))) ;; Support.  Cancellation. 
(when (h7i) (and (hmf) (not(gmf)))) ;; Support.  Cancellation. 
(when (k7i) (and (kmf) (not(jmf)))) ;; Support.  Cancellation. 
(when (m7i) (and (mmf) (not(lmf)))) ;; Support.  Cancellation. 
(when (r7i) (and (rmf) (not(qmf)))) ;; Support.  Cancellation. 
(when (u7i) (and (umf) (not(tmf)))) ;; Support.  Cancellation. 
(when (x7i) (and (xmf) (not(vmf)))) ;; Support.  Cancellation. 
(when (z7i) (and (zmf) (not(ymf)))) ;; Support.  Cancellation. 
(when (c8i) (and (cnf) (not(bnf)))) ;; Support.  Cancellation. 
(when (h8i) (and (hnf) (not(gnf)))) ;; Support.  Cancellation. 
(when (k8i) (and (knf) (not(jnf)))) ;; Support.  Cancellation. 
(when (m8i) (and (mnf) (not(lnf)))) ;; Support.  Cancellation. 
(when (r8i) (and (rnf) (not(qnf)))) ;; Support.  Cancellation. 
(when (u9i)  (uof)) ;; Support. 
(when (x9i)  (xof)) ;; Support. 
(when (z9i)  (zof)) ;; Support. 
(when (c0i)  (cpf)) ;; Support. 
(when (h0i)  (hpf)) ;; Support. 
(when (k0i)  (kpf)) ;; Support. 
(when (m0i)  (mpf)) ;; Support. 
(when (r0i)  (rpf)) ;; Support. 
(when (uaj) (and (uqf) (not(tqf)))) ;; Support.  Cancellation. 
(when (xaj) (and (xqf) (not(vqf)))) ;; Support.  Cancellation. 
(when (zaj) (and (zqf) (not(yqf)))) ;; Support.  Cancellation. 
(when (cbj) (and (csf) (not(bsf)))) ;; Support.  Cancellation. 
(when (hbj) (and (hsf) (not(gsf)))) ;; Support.  Cancellation. 
(when (kbj) (and (ksf) (not(jsf)))) ;; Support.  Cancellation. 
(when (mbj) (and (msf) (not(lsf)))) ;; Support.  Cancellation. 
(when (rbj) (and (rsf) (not(qsf)))) ;; Support.  Cancellation. 
(when (ubj) (and (usf) (not(tsf)))) ;; Support.  Cancellation. 
(when (xbj) (and (xsf) (not(vsf)))) ;; Support.  Cancellation. 
(when (zbj) (and (zsf) (not(ysf)))) ;; Support.  Cancellation. 
(when (ccj) (and (crf) (not(brf)))) ;; Support.  Cancellation. 
(when (hcj) (and (hrf) (not(grf)))) ;; Support.  Cancellation. 
(when (kcj) (and (krf) (not(jrf)))) ;; Support.  Cancellation. 
(when (mcj) (and (mrf) (not(lrf)))) ;; Support.  Cancellation. 
(when (rcj) (and (rrf) (not(qrf)))) ;; Support.  Cancellation. 
(when (uej) (and (uuf) (not(tuf)))) ;; Support.  Cancellation. 
(when (xej) (and (xuf) (not(vuf)))) ;; Support.  Cancellation. 
(when (hfj) (and (hvf) (not(gvf)))) ;; Support.  Cancellation. 
(when (kfj) (and (kvf) (not(jvf)))) ;; Support.  Cancellation. 
(when (tfj) (and (tvf) (not(rvf)))) ;; Support.  Cancellation. 
(when (vfj) (and (vvf) (not(uvf)))) ;; Support.  Cancellation. 
(when (yfj) (and (yvf) (not(xvf)))) ;; Support.  Cancellation. 
(when (bgj) (and (bwf) (not(zvf)))) ;; Support.  Cancellation. 
(when (tgj) (and (twf) (not(rwf)))) ;; Support.  Cancellation. 
(when (vgj) (and (vwf) (not(uwf)))) ;; Support.  Cancellation. 
(when (lhj) (and (lxf) (not(kxf)))) ;; Support.  Cancellation. 
(when (qhj) (and (qxf) (not(mxf)))) ;; Support.  Cancellation. 
(when (gij) (and (gyf) (not(cyf)))) ;; Support.  Cancellation. 
(when (jij) (and (jyf) (not(hyf)))) ;; Support.  Cancellation. 
(when (lij) (and (lyf) (not(kyf)))) ;; Support.  Cancellation. 
(when (qij) (and (qyf) (not(myf)))) ;; Support.  Cancellation. 
(when (tkj) (and (t1f) (not(r1f)))) ;; Support.  Cancellation. 
(when (vkj) (and (v1f) (not(u1f)))) ;; Support.  Cancellation. 
(when (ykj) (and (y1f) (not(x1f)))) ;; Support.  Cancellation. 
(when (blj) (and (b2f) (not(z1f)))) ;; Support.  Cancellation. 
(when (glj) (and (g2f) (not(c2f)))) ;; Support.  Cancellation. 
(when (jlj) (and (j2f) (not(h2f)))) ;; Support.  Cancellation. 
(when (llj) (and (l2f) (not(k2f)))) ;; Support.  Cancellation. 
(when (qlj) (and (q2f) (not(m2f)))) ;; Support.  Cancellation. 
(when (tlj) (and (t2f) (not(r2f)))) ;; Support.  Cancellation. 
(when (vlj) (and (v2f) (not(u2f)))) ;; Support.  Cancellation. 
(when (ylj) (and (y2f) (not(x2f)))) ;; Support.  Cancellation. 
(when (bmj) (and (b3f) (not(z2f)))) ;; Support.  Cancellation. 
(when (gmj) (and (g3f) (not(c3f)))) ;; Support.  Cancellation. 
(when (jmj) (and (j3f) (not(h3f)))) ;; Support.  Cancellation. 
(when (lmj) (and (l3f) (not(k3f)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L3_L6
:parameters ()
:precondition (and (q7e))

:effect (and  (xni) (zpf)
(when (qqi) (and (q3f) (not(m3f)))) ;; Support.  Cancellation. 
(when (r7e) (and (ruh) (not(r7h)))) ;; Support.  Cancellation. 
(when (not(t7e))  (not(tuh))) ;; Cancellation. 
(when (u7e) (and (uuh) (not(vuh)))) ;; Support.  Cancellation. 
(when (x7e) (and (xuh) (not(yuh)))) ;; Support.  Cancellation. 
(when (z7e) (and (zuh) (not(bvh)))) ;; Support.  Cancellation. 
(when (c8e) (and (cvh) (not(gvh)))) ;; Support.  Cancellation. 
(when (h8e) (and (hvh) (not(jvh)))) ;; Support.  Cancellation. 
(when (k8e) (and (kvh) (not(lvh)))) ;; Support.  Cancellation. 
(when (m8e) (and (mvh) (not(qvh)))) ;; Support.  Cancellation. 
(when (r8e) (and (rvh) (not(tvh)))) ;; Support.  Cancellation. 
(when (u8e) (and (uvh) (not(vvh)))) ;; Support.  Cancellation. 
(when (x8e) (and (xvh) (not(yvh)))) ;; Support.  Cancellation. 
(when (z8e) (and (zvh) (not(bwh)))) ;; Support.  Cancellation. 
(when (c9e) (and (cwh) (not(gwh)))) ;; Support.  Cancellation. 
(when (h9e) (and (hwh) (not(jwh)))) ;; Support.  Cancellation. 
(when (k9e) (and (kwh) (not(lwh)))) ;; Support.  Cancellation. 
(when (m9e) (and (mwh) (not(qwh)))) ;; Support.  Cancellation. 
(when (r9e) (and (rwh) (not(twh)))) ;; Support.  Cancellation. 
(when (u9e) (and (uwh) (not(vwh)))) ;; Support.  Cancellation. 
(when (x9e) (and (xwh) (not(ywh)))) ;; Support.  Cancellation. 
(when (z9e) (and (zwh) (not(bxh)))) ;; Support.  Cancellation. 
(when (c0e) (and (cxh) (not(gxh)))) ;; Support.  Cancellation. 
(when (h0e) (and (hxh) (not(jxh)))) ;; Support.  Cancellation. 
(when (k0e) (and (kxh) (not(lxh)))) ;; Support.  Cancellation. 
(when (m0e) (and (mxh) (not(qxh)))) ;; Support.  Cancellation. 
(when (r0e) (and (rxh) (not(txh)))) ;; Support.  Cancellation. 
(when (u0e) (and (uxh) (not(vxh)))) ;; Support.  Cancellation. 
(when (x0e) (and (xxh) (not(yxh)))) ;; Support.  Cancellation. 
(when (z0e) (and (zxh) (not(byh)))) ;; Support.  Cancellation. 
(when (caf) (and (cyh) (not(gyh)))) ;; Support.  Cancellation. 
(when (haf) (and (hyh) (not(jyh)))) ;; Support.  Cancellation. 
(when (kaf) (and (kyh) (not(lyh)))) ;; Support.  Cancellation. 
(when (maf) (and (myh) (not(qyh)))) ;; Support.  Cancellation. 
(when (raf) (and (ryh) (not(tyh)))) ;; Support.  Cancellation. 
(when (uaf) (and (uyh) (not(vyh)))) ;; Support.  Cancellation. 
(when (xaf) (and (xyh) (not(yyh)))) ;; Support.  Cancellation. 
(when (zaf) (and (zyh) (not(bzh)))) ;; Support.  Cancellation. 
(when (cbf) (and (czh) (not(gzh)))) ;; Support.  Cancellation. 
(when (hbf) (and (hzh) (not(jzh)))) ;; Support.  Cancellation. 
(when (kbf) (and (kzh) (not(lzh)))) ;; Support.  Cancellation. 
(when (mbf) (and (mzh) (not(qzh)))) ;; Support.  Cancellation. 
(when (rbf) (and (rzh) (not(tzh)))) ;; Support.  Cancellation. 
(when (ubf) (and (uzh) (not(vzh)))) ;; Support.  Cancellation. 
(when (xbf) (and (xzh) (not(yzh)))) ;; Support.  Cancellation. 
(when (zbf) (and (zzh) (not(b1h)))) ;; Support.  Cancellation. 
(when (ccf) (and (c1h) (not(g1h)))) ;; Support.  Cancellation. 
(when (hcf) (and (h1h) (not(j1h)))) ;; Support.  Cancellation. 
(when (kcf) (and (k1h) (not(l1h)))) ;; Support.  Cancellation. 
(when (mcf) (and (m1h) (not(q1h)))) ;; Support.  Cancellation. 
(when (rcf) (and (r1h) (not(t1h)))) ;; Support.  Cancellation. 
(when (ucf) (and (u1h) (not(v1h)))) ;; Support.  Cancellation. 
(when (xcf) (and (x1h) (not(y1h)))) ;; Support.  Cancellation. 
(when (zcf) (and (z1h) (not(b2h)))) ;; Support.  Cancellation. 
(when (cdf) (and (c2h) (not(g2h)))) ;; Support.  Cancellation. 
(when (hdf) (and (h2h) (not(j2h)))) ;; Support.  Cancellation. 
(when (kdf) (and (k2h) (not(l2h)))) ;; Support.  Cancellation. 
(when (mdf) (and (m2h) (not(q2h)))) ;; Support.  Cancellation. 
(when (rdf) (and (r2h) (not(t2h)))) ;; Support.  Cancellation. 
(when (udf) (and (u2h) (not(v2h)))) ;; Support.  Cancellation. 
(when (xdf) (and (x2h) (not(y2h)))) ;; Support.  Cancellation. 
(when (zdf) (and (z2h) (not(b3h)))) ;; Support.  Cancellation. 
(when (cef) (and (c3h) (not(g3h)))) ;; Support.  Cancellation. 
(when (hef) (and (h3h) (not(j3h)))) ;; Support.  Cancellation. 
(when (kef) (and (k3h) (not(l3h)))) ;; Support.  Cancellation. 
(when (mef) (and (m3h) (not(q3h)))) ;; Support.  Cancellation. 
(when (ref) (and (r3h) (not(t3h)))) ;; Support.  Cancellation. 
(when (uef) (and (u3h) (not(v3h)))) ;; Support.  Cancellation. 
(when (xef) (and (x3h) (not(y3h)))) ;; Support.  Cancellation. 
(when (zef) (and (z3h) (not(b4h)))) ;; Support.  Cancellation. 
(when (cff) (and (c4h) (not(g4h)))) ;; Support.  Cancellation. 
(when (hff) (and (h4h) (not(j4h)))) ;; Support.  Cancellation. 
(when (kff) (and (k4h) (not(l4h)))) ;; Support.  Cancellation. 
(when (mff) (and (m4h) (not(q4h)))) ;; Support.  Cancellation. 
(when (rff) (and (r4h) (not(t4h)))) ;; Support.  Cancellation. 
(when (zff) (and (z4h) (not(b5h)))) ;; Support.  Cancellation. 
(when (cgf) (and (c5h) (not(g5h)))) ;; Support.  Cancellation. 
(when (kgf) (and (k5h) (not(l5h)))) ;; Support.  Cancellation. 
(when (mgf) (and (m5h) (not(q5h)))) ;; Support.  Cancellation. 
(when (ugf) (and (u5h) (not(v5h)))) ;; Support.  Cancellation. 
(when (xgf) (and (x5h) (not(y5h)))) ;; Support.  Cancellation. 
(when (zgf) (and (z5h) (not(b6h)))) ;; Support.  Cancellation. 
(when (chf) (and (c6h) (not(g6h)))) ;; Support.  Cancellation. 
(when (hhf) (and (h6h) (not(j6h)))) ;; Support.  Cancellation. 
(when (khf) (and (k6h) (not(l6h)))) ;; Support.  Cancellation. 
(when (mhf) (and (m6h) (not(q6h)))) ;; Support.  Cancellation. 
(when (rhf) (and (r6h) (not(t6h)))) ;; Support.  Cancellation. 
(when (uhf) (and (u6h) (not(v6h)))) ;; Support.  Cancellation. 
(when (zhf) (and (z6h) (not(b7h)))) ;; Support.  Cancellation. 
(when (hif) (and (h7h) (not(j7h)))) ;; Support.  Cancellation. 
(when (kif) (and (k7h) (not(l7h)))) ;; Support.  Cancellation. 
(when (tif) (and (t7h) (not(u7h)))) ;; Support.  Cancellation. 
(when (yif) (and (y7h) (not(z7h)))) ;; Support.  Cancellation. 
(when (ljf) (and (l8h) (not(m8h)))) ;; Support.  Cancellation. 
(when (qjf) (and (q8h) (not(r8h)))) ;; Support.  Cancellation. 
(when (gkf) (and (g9h) (not(h9h)))) ;; Support.  Cancellation. 
(when (jkf) (and (j9h) (not(k9h)))) ;; Support.  Cancellation. 
(when (lkf) (and (l9h) (not(m9h)))) ;; Support.  Cancellation. 
(when (qkf) (and (q9h) (not(r9h)))) ;; Support.  Cancellation. 
(when (tkf) (and (t9h) (not(u9h)))) ;; Support.  Cancellation. 
(when (vkf) (and (v9h) (not(x9h)))) ;; Support.  Cancellation. 
(when (ykf) (and (y9h) (not(z9h)))) ;; Support.  Cancellation. 
(when (blf) (and (b0h) (not(c0h)))) ;; Support.  Cancellation. 
(when (glf) (and (g0h) (not(h0h)))) ;; Support.  Cancellation. 
(when (jlf) (and (j0h) (not(k0h)))) ;; Support.  Cancellation. 
(when (llf) (and (l0h) (not(m0h)))) ;; Support.  Cancellation. 
(when (qlf) (and (q0h) (not(r0h)))) ;; Support.  Cancellation. 
(when (tlf) (and (t0h) (not(u0h)))) ;; Support.  Cancellation. 
(when (vlf) (and (v0h) (not(x0h)))) ;; Support.  Cancellation. 
(when (ylf) (and (y0h) (not(z0h)))) ;; Support.  Cancellation. 
(when (bmf) (and (bai) (not(cai)))) ;; Support.  Cancellation. 
(when (gmf) (and (gai) (not(hai)))) ;; Support.  Cancellation. 
(when (jmf) (and (jai) (not(kai)))) ;; Support.  Cancellation. 
(when (lmf) (and (lai) (not(mai)))) ;; Support.  Cancellation. 
(when (qmf) (and (qai) (not(rai)))) ;; Support.  Cancellation. 
(when (tmf) (and (tai) (not(uai)))) ;; Support.  Cancellation. 
(when (vmf) (and (vai) (not(xai)))) ;; Support.  Cancellation. 
(when (ymf) (and (yai) (not(zai)))) ;; Support.  Cancellation. 
(when (bnf) (and (bbi) (not(cbi)))) ;; Support.  Cancellation. 
(when (gnf) (and (gbi) (not(hbi)))) ;; Support.  Cancellation. 
(when (jnf) (and (jbi) (not(kbi)))) ;; Support.  Cancellation. 
(when (lnf) (and (lbi) (not(mbi)))) ;; Support.  Cancellation. 
(when (qnf) (and (qbi) (not(rbi)))) ;; Support.  Cancellation. 
(when (tnf) (and (tbi) (not(ubi)))) ;; Support.  Cancellation. 
(when (vnf) (and (vbi) (not(xbi)))) ;; Support.  Cancellation. 
(when (ynf)  (ybi)) ;; Support. 
(when (bof)  (bci)) ;; Support. 
(when (gof) (and (gci) (not(hci)))) ;; Support.  Cancellation. 
(when (jof) (and (jci) (not(kci)))) ;; Support.  Cancellation. 
(when (lof)  (lci)) ;; Support. 
(when (qof)  (qci)) ;; Support. 
(when (tqf) (and (tei) (not(uei)))) ;; Support.  Cancellation. 
(when (vqf) (and (vei) (not(xei)))) ;; Support.  Cancellation. 
(when (yqf) (and (yei) (not(zei)))) ;; Support.  Cancellation. 
(when (bsf) (and (bfi) (not(cfi)))) ;; Support.  Cancellation. 
(when (gsf) (and (gfi) (not(hfi)))) ;; Support.  Cancellation. 
(when (jsf) (and (jfi) (not(kfi)))) ;; Support.  Cancellation. 
(when (lsf) (and (lfi) (not(mfi)))) ;; Support.  Cancellation. 
(when (qsf) (and (qfi) (not(rfi)))) ;; Support.  Cancellation. 
(when (tsf) (and (tfi) (not(ufi)))) ;; Support.  Cancellation. 
(when (vsf) (and (vfi) (not(xfi)))) ;; Support.  Cancellation. 
(when (ysf) (and (yfi) (not(zfi)))) ;; Support.  Cancellation. 
(when (brf) (and (bgi) (not(cgi)))) ;; Support.  Cancellation. 
(when (grf) (and (ggi) (not(hgi)))) ;; Support.  Cancellation. 
(when (jrf) (and (jgi) (not(kgi)))) ;; Support.  Cancellation. 
(when (lrf) (and (lgi) (not(mgi)))) ;; Support.  Cancellation. 
(when (qrf) (and (qgi) (not(rgi)))) ;; Support.  Cancellation. 
(when (trf)  (tgi)) ;; Support. 
(when (vrf)  (vgi)) ;; Support. 
(when (yrf)  (ygi)) ;; Support. 
(when (btf)  (bhi)) ;; Support. 
(when (gtf)  (ghi)) ;; Support. 
(when (jtf)  (jhi)) ;; Support. 
(when (ltf)  (lhi)) ;; Support. 
(when (qtf)  (qhi)) ;; Support. 
(when (ttf) (and (thi) (not(uhi)))) ;; Support.  Cancellation. 
(when (vtf) (and (vhi) (not(xhi)))) ;; Support.  Cancellation. 
(when (ytf) (and (yhi) (not(zhi)))) ;; Support.  Cancellation. 
(when (buf) (and (bii) (not(cii)))) ;; Support.  Cancellation. 
(when (guf) (and (gii) (not(hii)))) ;; Support.  Cancellation. 
(when (juf) (and (jii) (not(kii)))) ;; Support.  Cancellation. 
(when (luf) (and (lii) (not(mii)))) ;; Support.  Cancellation. 
(when (quf) (and (qii) (not(rii)))) ;; Support.  Cancellation. 
(when (tuf) (and (tii) (not(uii)))) ;; Support.  Cancellation. 
(when (vuf) (and (vii) (not(xii)))) ;; Support.  Cancellation. 
(when (yuf) (and (yii) (not(zii)))) ;; Support.  Cancellation. 
(when (bvf) (and (bji) (not(cji)))) ;; Support.  Cancellation. 
(when (gvf) (and (gji) (not(hji)))) ;; Support.  Cancellation. 
(when (jvf) (and (jji) (not(kji)))) ;; Support.  Cancellation. 
(when (lvf)  (lji)) ;; Support. 
(when (qvf)  (qji)) ;; Support. 
(when (rvf) (and (rji) (not(tji)))) ;; Support.  Cancellation. 
(when (uvf) (and (uji) (not(vji)))) ;; Support.  Cancellation. 
(when (xvf) (and (xji) (not(yji)))) ;; Support.  Cancellation. 
(when (zvf) (and (zji) (not(bki)))) ;; Support.  Cancellation. 
(when (cwf) (and (cki) (not(gki)))) ;; Support.  Cancellation. 
(when (hwf)  (hki)) ;; Support. 
(when (kwf)  (kki)) ;; Support. 
(when (mwf) (and (mki) (not(qki)))) ;; Support.  Cancellation. 
(when (rwf) (and (rki) (not(tki)))) ;; Support.  Cancellation. 
(when (uwf) (and (uki) (not(vki)))) ;; Support.  Cancellation. 
(when (xwf) (and (xki) (not(yki)))) ;; Support.  Cancellation. 
(when (zwf) (and (zki) (not(bli)))) ;; Support.  Cancellation. 
(when (cxf)  (cli)) ;; Support. 
(when (hxf)  (hli)) ;; Support. 
(when (kxf) (and (kli) (not(lli)))) ;; Support.  Cancellation. 
(when (mxf) (and (mli) (not(qli)))) ;; Support.  Cancellation. 
(when (rxf)  (rli)) ;; Support. 
(when (uxf) (and (uli) (not(vli)))) ;; Support.  Cancellation. 
(when (xxf) (and (xli) (not(yli)))) ;; Support.  Cancellation. 
(when (zxf)  (zli)) ;; Support. 
(when (cyf) (and (cmi) (not(gmi)))) ;; Support.  Cancellation. 
(when (hyf) (and (hmi) (not(jmi)))) ;; Support.  Cancellation. 
(when (kyf) (and (kmi) (not(lmi)))) ;; Support.  Cancellation. 
(when (myf) (and (mmi) (not(qmi)))) ;; Support.  Cancellation. 
(when (ryf) (and (rmi) (not(tmi)))) ;; Support.  Cancellation. 
(when (uyf)  (umi)) ;; Support. 
(when (xyf)  (xmi)) ;; Support. 
(when (zyf) (and (zmi) (not(bni)))) ;; Support.  Cancellation. 
(when (czf) (and (cni) (not(gni)))) ;; Support.  Cancellation. 
(when (hzf)  (hni)) ;; Support. 
(when (kzf) (and (kni) (not(lni)))) ;; Support.  Cancellation. 
(when (mzf)  (mni)) ;; Support. 
(when (rzf) (and (rni) (not(tni)))) ;; Support.  Cancellation. 
(when (uzf) (and (uni) (not(vni)))) ;; Support.  Cancellation. 
(when (zzf)  (zni)) ;; Support. 
(when (c1f)  (coi)) ;; Support. 
(when (h1f) (and (hoi) (not(joi)))) ;; Support.  Cancellation. 
(when (k1f)  (koi)) ;; Support. 
(when (m1f) (and (moi) (not(qoi)))) ;; Support.  Cancellation. 
(when (r1f) (and (roi) (not(toi)))) ;; Support.  Cancellation. 
(when (u1f) (and (uoi) (not(voi)))) ;; Support.  Cancellation. 
(when (x1f) (and (xoi) (not(yoi)))) ;; Support.  Cancellation. 
(when (z1f) (and (zoi) (not(bpi)))) ;; Support.  Cancellation. 
(when (c2f) (and (cpi) (not(gpi)))) ;; Support.  Cancellation. 
(when (h2f) (and (hpi) (not(jpi)))) ;; Support.  Cancellation. 
(when (k2f) (and (kpi) (not(lpi)))) ;; Support.  Cancellation. 
(when (m2f) (and (mpi) (not(qpi)))) ;; Support.  Cancellation. 
(when (r2f) (and (rpi) (not(tpi)))) ;; Support.  Cancellation. 
(when (u2f) (and (upi) (not(vpi)))) ;; Support.  Cancellation. 
(when (x2f) (and (xpi) (not(ypi)))) ;; Support.  Cancellation. 
(when (z2f) (and (zpi) (not(bqi)))) ;; Support.  Cancellation. 
(when (c3f) (and (cqi) (not(gqi)))) ;; Support.  Cancellation. 
(when (h3f) (and (hqi) (not(jqi)))) ;; Support.  Cancellation. 
(when (k3f) (and (kqi) (not(lqi)))) ;; Support.  Cancellation. 
(when (m3f) (and (mqi) (not(qqi)))) ;; Support.  Cancellation. 
(when (tuh) (and (t7e) (not(qvf)))) ;; Support.  Cancellation. 
(when (not(ruh))  (not(r7e))) ;; Cancellation. 
(when (vuh) (and (v7e) (not(u7e)))) ;; Support.  Cancellation. 
(when (yuh) (and (y7e) (not(x7e)))) ;; Support.  Cancellation. 
(when (bvh) (and (b8e) (not(z7e)))) ;; Support.  Cancellation. 
(when (gvh) (and (g8e) (not(c8e)))) ;; Support.  Cancellation. 
(when (jvh) (and (j8e) (not(h8e)))) ;; Support.  Cancellation. 
(when (lvh) (and (l8e) (not(k8e)))) ;; Support.  Cancellation. 
(when (qvh) (and (q8e) (not(m8e)))) ;; Support.  Cancellation. 
(when (tvh) (and (t8e) (not(r8e)))) ;; Support.  Cancellation. 
(when (vvh) (and (v8e) (not(u8e)))) ;; Support.  Cancellation. 
(when (yvh) (and (y8e) (not(x8e)))) ;; Support.  Cancellation. 
(when (bwh) (and (b9e) (not(z8e)))) ;; Support.  Cancellation. 
(when (gwh) (and (g9e) (not(c9e)))) ;; Support.  Cancellation. 
(when (jwh) (and (j9e) (not(h9e)))) ;; Support.  Cancellation. 
(when (lwh) (and (l9e) (not(k9e)))) ;; Support.  Cancellation. 
(when (qwh) (and (q9e) (not(m9e)))) ;; Support.  Cancellation. 
(when (twh) (and (t9e) (not(r9e)))) ;; Support.  Cancellation. 
(when (vwh) (and (v9e) (not(u9e)))) ;; Support.  Cancellation. 
(when (ywh) (and (y9e) (not(x9e)))) ;; Support.  Cancellation. 
(when (bxh) (and (b0e) (not(z9e)))) ;; Support.  Cancellation. 
(when (gxh) (and (g0e) (not(c0e)))) ;; Support.  Cancellation. 
(when (jxh) (and (j0e) (not(h0e)))) ;; Support.  Cancellation. 
(when (lxh) (and (l0e) (not(k0e)))) ;; Support.  Cancellation. 
(when (qxh) (and (q0e) (not(m0e)))) ;; Support.  Cancellation. 
(when (txh) (and (t0e) (not(r0e)))) ;; Support.  Cancellation. 
(when (vxh) (and (v0e) (not(u0e)))) ;; Support.  Cancellation. 
(when (yxh) (and (y0e) (not(x0e)))) ;; Support.  Cancellation. 
(when (byh) (and (baf) (not(z0e)))) ;; Support.  Cancellation. 
(when (gyh) (and (gaf) (not(caf)))) ;; Support.  Cancellation. 
(when (jyh) (and (jaf) (not(haf)))) ;; Support.  Cancellation. 
(when (lyh) (and (laf) (not(kaf)))) ;; Support.  Cancellation. 
(when (qyh) (and (qaf) (not(maf)))) ;; Support.  Cancellation. 
(when (tyh) (and (taf) (not(raf)))) ;; Support.  Cancellation. 
(when (vyh) (and (vaf) (not(uaf)))) ;; Support.  Cancellation. 
(when (yyh) (and (yaf) (not(xaf)))) ;; Support.  Cancellation. 
(when (bzh) (and (bbf) (not(zaf)))) ;; Support.  Cancellation. 
(when (gzh) (and (gbf) (not(cbf)))) ;; Support.  Cancellation. 
(when (jzh) (and (jbf) (not(hbf)))) ;; Support.  Cancellation. 
(when (lzh) (and (lbf) (not(kbf)))) ;; Support.  Cancellation. 
(when (qzh) (and (qbf) (not(mbf)))) ;; Support.  Cancellation. 
(when (tzh) (and (tbf) (not(rbf)))) ;; Support.  Cancellation. 
(when (vzh) (and (vbf) (not(ubf)))) ;; Support.  Cancellation. 
(when (yzh) (and (ybf) (not(xbf)))) ;; Support.  Cancellation. 
(when (b1h) (and (bcf) (not(zbf)))) ;; Support.  Cancellation. 
(when (g1h) (and (gcf) (not(ccf)))) ;; Support.  Cancellation. 
(when (j1h) (and (jcf) (not(hcf)))) ;; Support.  Cancellation. 
(when (l1h) (and (lcf) (not(kcf)))) ;; Support.  Cancellation. 
(when (q1h) (and (qcf) (not(mcf)))) ;; Support.  Cancellation. 
(when (t1h) (and (tcf) (not(rcf)))) ;; Support.  Cancellation. 
(when (v1h) (and (vcf) (not(ucf)))) ;; Support.  Cancellation. 
(when (y1h) (and (ycf) (not(xcf)))) ;; Support.  Cancellation. 
(when (b2h) (and (bdf) (not(zcf)))) ;; Support.  Cancellation. 
(when (g2h) (and (gdf) (not(cdf)))) ;; Support.  Cancellation. 
(when (j2h) (and (jdf) (not(hdf)))) ;; Support.  Cancellation. 
(when (l2h) (and (ldf) (not(kdf)))) ;; Support.  Cancellation. 
(when (q2h) (and (qdf) (not(mdf)))) ;; Support.  Cancellation. 
(when (t2h) (and (tdf) (not(rdf)))) ;; Support.  Cancellation. 
(when (v2h) (and (vdf) (not(udf)))) ;; Support.  Cancellation. 
(when (y2h) (and (ydf) (not(xdf)))) ;; Support.  Cancellation. 
(when (b3h) (and (bef) (not(zdf)))) ;; Support.  Cancellation. 
(when (g3h) (and (gef) (not(cef)))) ;; Support.  Cancellation. 
(when (j3h) (and (jef) (not(hef)))) ;; Support.  Cancellation. 
(when (l3h) (and (lef) (not(kef)))) ;; Support.  Cancellation. 
(when (q3h) (and (qef) (not(mef)))) ;; Support.  Cancellation. 
(when (t3h) (and (tef) (not(ref)))) ;; Support.  Cancellation. 
(when (v3h) (and (vef) (not(uef)))) ;; Support.  Cancellation. 
(when (y3h) (and (yef) (not(xef)))) ;; Support.  Cancellation. 
(when (b4h) (and (bff) (not(zef)))) ;; Support.  Cancellation. 
(when (g4h) (and (gff) (not(cff)))) ;; Support.  Cancellation. 
(when (j4h) (and (jff) (not(hff)))) ;; Support.  Cancellation. 
(when (l4h) (and (lff) (not(kff)))) ;; Support.  Cancellation. 
(when (q4h) (and (qff) (not(mff)))) ;; Support.  Cancellation. 
(when (t4h) (and (tff) (not(rff)))) ;; Support.  Cancellation. 
(when (v4h)  (vff)) ;; Support. 
(when (y4h)  (yff)) ;; Support. 
(when (b5h) (and (bgf) (not(zff)))) ;; Support.  Cancellation. 
(when (g5h) (and (ggf) (not(cgf)))) ;; Support.  Cancellation. 
(when (j5h)  (jgf)) ;; Support. 
(when (l5h) (and (lgf) (not(kgf)))) ;; Support.  Cancellation. 
(when (q5h) (and (qgf) (not(mgf)))) ;; Support.  Cancellation. 
(when (t5h)  (tgf)) ;; Support. 
(when (v5h) (and (vgf) (not(ugf)))) ;; Support.  Cancellation. 
(when (y5h) (and (ygf) (not(xgf)))) ;; Support.  Cancellation. 
(when (b6h) (and (bhf) (not(zgf)))) ;; Support.  Cancellation. 
(when (g6h) (and (ghf) (not(chf)))) ;; Support.  Cancellation. 
(when (j6h) (and (jhf) (not(hhf)))) ;; Support.  Cancellation. 
(when (l6h) (and (lhf) (not(khf)))) ;; Support.  Cancellation. 
(when (q6h) (and (qhf) (not(mhf)))) ;; Support.  Cancellation. 
(when (t6h) (and (thf) (not(rhf)))) ;; Support.  Cancellation. 
(when (v6h) (and (vhf) (not(uhf)))) ;; Support.  Cancellation. 
(when (y6h)  (yhf)) ;; Support. 
(when (b7h) (and (bif) (not(zhf)))) ;; Support.  Cancellation. 
(when (g7h)  (gif)) ;; Support. 
(when (j7h) (and (jif) (not(hif)))) ;; Support.  Cancellation. 
(when (l7h) (and (lif) (not(kif)))) ;; Support.  Cancellation. 
(when (q7h)  (qif)) ;; Support. 
(when (r7h)  (rif)) ;; Support. 
(when (u7h) (and (uif) (not(tif)))) ;; Support.  Cancellation. 
(when (x7h)  (xif)) ;; Support. 
(when (z7h) (and (zif) (not(yif)))) ;; Support.  Cancellation. 
(when (c8h)  (cjf)) ;; Support. 
(when (h8h)  (hjf)) ;; Support. 
(when (k8h)  (kjf)) ;; Support. 
(when (m8h) (and (mjf) (not(ljf)))) ;; Support.  Cancellation. 
(when (r8h) (and (rjf) (not(qjf)))) ;; Support.  Cancellation. 
(when (u8h)  (ujf)) ;; Support. 
(when (x8h)  (xjf)) ;; Support. 
(when (z8h)  (zjf)) ;; Support. 
(when (c9h)  (ckf)) ;; Support. 
(when (h9h) (and (hkf) (not(gkf)))) ;; Support.  Cancellation. 
(when (k9h) (and (kkf) (not(jkf)))) ;; Support.  Cancellation. 
(when (m9h) (and (mkf) (not(lkf)))) ;; Support.  Cancellation. 
(when (r9h) (and (rkf) (not(qkf)))) ;; Support.  Cancellation. 
(when (u9h) (and (ukf) (not(tkf)))) ;; Support.  Cancellation. 
(when (x9h) (and (xkf) (not(vkf)))) ;; Support.  Cancellation. 
(when (z9h) (and (zkf) (not(ykf)))) ;; Support.  Cancellation. 
(when (c0h) (and (clf) (not(blf)))) ;; Support.  Cancellation. 
(when (h0h) (and (hlf) (not(glf)))) ;; Support.  Cancellation. 
(when (k0h) (and (klf) (not(jlf)))) ;; Support.  Cancellation. 
(when (m0h) (and (mlf) (not(llf)))) ;; Support.  Cancellation. 
(when (r0h) (and (rlf) (not(qlf)))) ;; Support.  Cancellation. 
(when (u0h) (and (ulf) (not(tlf)))) ;; Support.  Cancellation. 
(when (x0h) (and (xlf) (not(vlf)))) ;; Support.  Cancellation. 
(when (z0h) (and (zlf) (not(ylf)))) ;; Support.  Cancellation. 
(when (cai) (and (cmf) (not(bmf)))) ;; Support.  Cancellation. 
(when (hai) (and (hmf) (not(gmf)))) ;; Support.  Cancellation. 
(when (kai) (and (kmf) (not(jmf)))) ;; Support.  Cancellation. 
(when (mai) (and (mmf) (not(lmf)))) ;; Support.  Cancellation. 
(when (rai) (and (rmf) (not(qmf)))) ;; Support.  Cancellation. 
(when (uai) (and (umf) (not(tmf)))) ;; Support.  Cancellation. 
(when (xai) (and (xmf) (not(vmf)))) ;; Support.  Cancellation. 
(when (zai) (and (zmf) (not(ymf)))) ;; Support.  Cancellation. 
(when (cbi) (and (cnf) (not(bnf)))) ;; Support.  Cancellation. 
(when (hbi) (and (hnf) (not(gnf)))) ;; Support.  Cancellation. 
(when (kbi) (and (knf) (not(jnf)))) ;; Support.  Cancellation. 
(when (mbi) (and (mnf) (not(lnf)))) ;; Support.  Cancellation. 
(when (rbi) (and (rnf) (not(qnf)))) ;; Support.  Cancellation. 
(when (ubi) (and (unf) (not(tnf)))) ;; Support.  Cancellation. 
(when (xbi) (and (xnf) (not(vnf)))) ;; Support.  Cancellation. 
(when (hci) (and (hof) (not(gof)))) ;; Support.  Cancellation. 
(when (kci) (and (kof) (not(jof)))) ;; Support.  Cancellation. 
(when (uci)  (uof)) ;; Support. 
(when (xci)  (xof)) ;; Support. 
(when (zci)  (zof)) ;; Support. 
(when (cdi)  (cpf)) ;; Support. 
(when (hdi)  (hpf)) ;; Support. 
(when (kdi)  (kpf)) ;; Support. 
(when (mdi)  (mpf)) ;; Support. 
(when (rdi)  (rpf)) ;; Support. 
(when (udi)  (upf)) ;; Support. 
(when (hei)  (hqf)) ;; Support. 
(when (mei)  (mqf)) ;; Support. 
(when (uei) (and (uqf) (not(tqf)))) ;; Support.  Cancellation. 
(when (xei) (and (xqf) (not(vqf)))) ;; Support.  Cancellation. 
(when (zei) (and (zqf) (not(yqf)))) ;; Support.  Cancellation. 
(when (cfi) (and (csf) (not(bsf)))) ;; Support.  Cancellation. 
(when (hfi) (and (hsf) (not(gsf)))) ;; Support.  Cancellation. 
(when (kfi) (and (ksf) (not(jsf)))) ;; Support.  Cancellation. 
(when (mfi) (and (msf) (not(lsf)))) ;; Support.  Cancellation. 
(when (rfi) (and (rsf) (not(qsf)))) ;; Support.  Cancellation. 
(when (ufi) (and (usf) (not(tsf)))) ;; Support.  Cancellation. 
(when (xfi) (and (xsf) (not(vsf)))) ;; Support.  Cancellation. 
(when (zfi) (and (zsf) (not(ysf)))) ;; Support.  Cancellation. 
(when (cgi) (and (crf) (not(brf)))) ;; Support.  Cancellation. 
(when (hgi) (and (hrf) (not(grf)))) ;; Support.  Cancellation. 
(when (kgi) (and (krf) (not(jrf)))) ;; Support.  Cancellation. 
(when (mgi) (and (mrf) (not(lrf)))) ;; Support.  Cancellation. 
(when (rgi) (and (rrf) (not(qrf)))) ;; Support.  Cancellation. 
(when (uhi) (and (utf) (not(ttf)))) ;; Support.  Cancellation. 
(when (xhi) (and (xtf) (not(vtf)))) ;; Support.  Cancellation. 
(when (zhi) (and (ztf) (not(ytf)))) ;; Support.  Cancellation. 
(when (cii) (and (cuf) (not(buf)))) ;; Support.  Cancellation. 
(when (hii) (and (huf) (not(guf)))) ;; Support.  Cancellation. 
(when (kii) (and (kuf) (not(juf)))) ;; Support.  Cancellation. 
(when (mii) (and (muf) (not(luf)))) ;; Support.  Cancellation. 
(when (rii) (and (ruf) (not(quf)))) ;; Support.  Cancellation. 
(when (uii) (and (uuf) (not(tuf)))) ;; Support.  Cancellation. 
(when (xii) (and (xuf) (not(vuf)))) ;; Support.  Cancellation. 
(when (zii) (and (zuf) (not(yuf)))) ;; Support.  Cancellation. 
(when (cji) (and (cvf) (not(bvf)))) ;; Support.  Cancellation. 
(when (hji) (and (hvf) (not(gvf)))) ;; Support.  Cancellation. 
(when (kji) (and (kvf) (not(jvf)))) ;; Support.  Cancellation. 
(when (tji) (and (tvf) (not(rvf)))) ;; Support.  Cancellation. 
(when (vji) (and (vvf) (not(uvf)))) ;; Support.  Cancellation. 
(when (yji) (and (yvf) (not(xvf)))) ;; Support.  Cancellation. 
(when (bki) (and (bwf) (not(zvf)))) ;; Support.  Cancellation. 
(when (gki) (and (gwf) (not(cwf)))) ;; Support.  Cancellation. 
(when (qki) (and (qwf) (not(mwf)))) ;; Support.  Cancellation. 
(when (tki) (and (twf) (not(rwf)))) ;; Support.  Cancellation. 
(when (vki) (and (vwf) (not(uwf)))) ;; Support.  Cancellation. 
(when (yki) (and (ywf) (not(xwf)))) ;; Support.  Cancellation. 
(when (bli) (and (bxf) (not(zwf)))) ;; Support.  Cancellation. 
(when (lli) (and (lxf) (not(kxf)))) ;; Support.  Cancellation. 
(when (qli) (and (qxf) (not(mxf)))) ;; Support.  Cancellation. 
(when (vli) (and (vxf) (not(uxf)))) ;; Support.  Cancellation. 
(when (yli) (and (yxf) (not(xxf)))) ;; Support.  Cancellation. 
(when (gmi) (and (gyf) (not(cyf)))) ;; Support.  Cancellation. 
(when (jmi) (and (jyf) (not(hyf)))) ;; Support.  Cancellation. 
(when (lmi) (and (lyf) (not(kyf)))) ;; Support.  Cancellation. 
(when (qmi) (and (qyf) (not(myf)))) ;; Support.  Cancellation. 
(when (tmi) (and (tyf) (not(ryf)))) ;; Support.  Cancellation. 
(when (bni) (and (bzf) (not(zyf)))) ;; Support.  Cancellation. 
(when (gni) (and (gzf) (not(czf)))) ;; Support.  Cancellation. 
(when (lni) (and (lzf) (not(kzf)))) ;; Support.  Cancellation. 
(when (tni) (and (tzf) (not(rzf)))) ;; Support.  Cancellation. 
(when (vni) (and (vzf) (not(uzf)))) ;; Support.  Cancellation. 
(when (joi) (and (j1f) (not(h1f)))) ;; Support.  Cancellation. 
(when (qoi) (and (q1f) (not(m1f)))) ;; Support.  Cancellation. 
(when (toi) (and (t1f) (not(r1f)))) ;; Support.  Cancellation. 
(when (voi) (and (v1f) (not(u1f)))) ;; Support.  Cancellation. 
(when (yoi) (and (y1f) (not(x1f)))) ;; Support.  Cancellation. 
(when (bpi) (and (b2f) (not(z1f)))) ;; Support.  Cancellation. 
(when (gpi) (and (g2f) (not(c2f)))) ;; Support.  Cancellation. 
(when (jpi) (and (j2f) (not(h2f)))) ;; Support.  Cancellation. 
(when (lpi) (and (l2f) (not(k2f)))) ;; Support.  Cancellation. 
(when (qpi) (and (q2f) (not(m2f)))) ;; Support.  Cancellation. 
(when (tpi) (and (t2f) (not(r2f)))) ;; Support.  Cancellation. 
(when (vpi) (and (v2f) (not(u2f)))) ;; Support.  Cancellation. 
(when (ypi) (and (y2f) (not(x2f)))) ;; Support.  Cancellation. 
(when (bqi) (and (b3f) (not(z2f)))) ;; Support.  Cancellation. 
(when (gqi) (and (g3f) (not(c3f)))) ;; Support.  Cancellation. 
(when (jqi) (and (j3f) (not(h3f)))) ;; Support.  Cancellation. 
(when (lqi) (and (l3f) (not(k3f)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L3_L5
:parameters ()
:precondition (and (q7e))

:effect (and  (xsh) (cqf)
(when (quh) (and (q3f) (not(m3f)))) ;; Support.  Cancellation. 
(when (r7e) (and (ryg) (not(rah)))) ;; Support.  Cancellation. 
(when (not(t7e))  (not(tyg))) ;; Cancellation. 
(when (u7e) (and (uyg) (not(vyg)))) ;; Support.  Cancellation. 
(when (x7e) (and (xyg) (not(yyg)))) ;; Support.  Cancellation. 
(when (z7e) (and (zyg) (not(bzg)))) ;; Support.  Cancellation. 
(when (c8e) (and (czg) (not(gzg)))) ;; Support.  Cancellation. 
(when (h8e) (and (hzg) (not(jzg)))) ;; Support.  Cancellation. 
(when (k8e) (and (kzg) (not(lzg)))) ;; Support.  Cancellation. 
(when (m8e) (and (mzg) (not(qzg)))) ;; Support.  Cancellation. 
(when (r8e) (and (rzg) (not(tzg)))) ;; Support.  Cancellation. 
(when (u8e) (and (uzg) (not(vzg)))) ;; Support.  Cancellation. 
(when (x8e) (and (xzg) (not(yzg)))) ;; Support.  Cancellation. 
(when (z8e) (and (zzg) (not(b1g)))) ;; Support.  Cancellation. 
(when (c9e) (and (c1g) (not(g1g)))) ;; Support.  Cancellation. 
(when (h9e) (and (h1g) (not(j1g)))) ;; Support.  Cancellation. 
(when (k9e) (and (k1g) (not(l1g)))) ;; Support.  Cancellation. 
(when (m9e) (and (m1g) (not(q1g)))) ;; Support.  Cancellation. 
(when (r9e) (and (r1g) (not(t1g)))) ;; Support.  Cancellation. 
(when (u9e) (and (u1g) (not(v1g)))) ;; Support.  Cancellation. 
(when (x9e) (and (x1g) (not(y1g)))) ;; Support.  Cancellation. 
(when (z9e) (and (z1g) (not(b2g)))) ;; Support.  Cancellation. 
(when (c0e) (and (c2g) (not(g2g)))) ;; Support.  Cancellation. 
(when (h0e) (and (h2g) (not(j2g)))) ;; Support.  Cancellation. 
(when (k0e) (and (k2g) (not(l2g)))) ;; Support.  Cancellation. 
(when (m0e) (and (m2g) (not(q2g)))) ;; Support.  Cancellation. 
(when (r0e) (and (r2g) (not(t2g)))) ;; Support.  Cancellation. 
(when (u0e) (and (u2g) (not(v2g)))) ;; Support.  Cancellation. 
(when (x0e) (and (x2g) (not(y2g)))) ;; Support.  Cancellation. 
(when (z0e) (and (z2g) (not(b3g)))) ;; Support.  Cancellation. 
(when (caf) (and (c3g) (not(g3g)))) ;; Support.  Cancellation. 
(when (haf) (and (h3g) (not(j3g)))) ;; Support.  Cancellation. 
(when (kaf) (and (k3g) (not(l3g)))) ;; Support.  Cancellation. 
(when (maf) (and (m3g) (not(q3g)))) ;; Support.  Cancellation. 
(when (raf) (and (r3g) (not(t3g)))) ;; Support.  Cancellation. 
(when (uaf) (and (u3g) (not(v3g)))) ;; Support.  Cancellation. 
(when (xaf) (and (x3g) (not(y3g)))) ;; Support.  Cancellation. 
(when (zaf) (and (z3g) (not(b4g)))) ;; Support.  Cancellation. 
(when (cbf) (and (c4g) (not(g4g)))) ;; Support.  Cancellation. 
(when (hbf) (and (h4g) (not(j4g)))) ;; Support.  Cancellation. 
(when (kbf) (and (k4g) (not(l4g)))) ;; Support.  Cancellation. 
(when (mbf) (and (m4g) (not(q4g)))) ;; Support.  Cancellation. 
(when (rbf) (and (r4g) (not(t4g)))) ;; Support.  Cancellation. 
(when (ubf) (and (u4g) (not(v4g)))) ;; Support.  Cancellation. 
(when (xbf) (and (x4g) (not(y4g)))) ;; Support.  Cancellation. 
(when (zbf) (and (z4g) (not(b5g)))) ;; Support.  Cancellation. 
(when (ccf) (and (c5g) (not(g5g)))) ;; Support.  Cancellation. 
(when (hcf) (and (h5g) (not(j5g)))) ;; Support.  Cancellation. 
(when (kcf) (and (k5g) (not(l5g)))) ;; Support.  Cancellation. 
(when (mcf) (and (m5g) (not(q5g)))) ;; Support.  Cancellation. 
(when (rcf) (and (r5g) (not(t5g)))) ;; Support.  Cancellation. 
(when (ucf) (and (u5g) (not(v5g)))) ;; Support.  Cancellation. 
(when (xcf) (and (x5g) (not(y5g)))) ;; Support.  Cancellation. 
(when (zcf) (and (z5g) (not(b6g)))) ;; Support.  Cancellation. 
(when (cdf) (and (c6g) (not(g6g)))) ;; Support.  Cancellation. 
(when (hdf) (and (h6g) (not(j6g)))) ;; Support.  Cancellation. 
(when (kdf) (and (k6g) (not(l6g)))) ;; Support.  Cancellation. 
(when (mdf) (and (m6g) (not(q6g)))) ;; Support.  Cancellation. 
(when (rdf) (and (r6g) (not(t6g)))) ;; Support.  Cancellation. 
(when (udf) (and (u6g) (not(v6g)))) ;; Support.  Cancellation. 
(when (xdf) (and (x6g) (not(y6g)))) ;; Support.  Cancellation. 
(when (zdf) (and (z6g) (not(b7g)))) ;; Support.  Cancellation. 
(when (cef) (and (c7g) (not(g7g)))) ;; Support.  Cancellation. 
(when (hef) (and (h7g) (not(j7g)))) ;; Support.  Cancellation. 
(when (kef) (and (k7g) (not(l7g)))) ;; Support.  Cancellation. 
(when (mef) (and (m7g) (not(q7g)))) ;; Support.  Cancellation. 
(when (ref) (and (r7g) (not(t7g)))) ;; Support.  Cancellation. 
(when (uef) (and (u7g) (not(v7g)))) ;; Support.  Cancellation. 
(when (xef) (and (x7g) (not(y7g)))) ;; Support.  Cancellation. 
(when (zef) (and (z7g) (not(b8g)))) ;; Support.  Cancellation. 
(when (cff) (and (c8g) (not(g8g)))) ;; Support.  Cancellation. 
(when (hff) (and (h8g) (not(j8g)))) ;; Support.  Cancellation. 
(when (kff) (and (k8g) (not(l8g)))) ;; Support.  Cancellation. 
(when (mff) (and (m8g) (not(q8g)))) ;; Support.  Cancellation. 
(when (rff) (and (r8g) (not(t8g)))) ;; Support.  Cancellation. 
(when (zff) (and (z8g) (not(b9g)))) ;; Support.  Cancellation. 
(when (cgf) (and (c9g) (not(g9g)))) ;; Support.  Cancellation. 
(when (kgf) (and (k9g) (not(l9g)))) ;; Support.  Cancellation. 
(when (mgf) (and (m9g) (not(q9g)))) ;; Support.  Cancellation. 
(when (ugf) (and (u9g) (not(v9g)))) ;; Support.  Cancellation. 
(when (xgf) (and (x9g) (not(y9g)))) ;; Support.  Cancellation. 
(when (zgf) (and (z9g) (not(b0g)))) ;; Support.  Cancellation. 
(when (chf) (and (c0g) (not(g0g)))) ;; Support.  Cancellation. 
(when (hhf) (and (h0g) (not(j0g)))) ;; Support.  Cancellation. 
(when (khf) (and (k0g) (not(l0g)))) ;; Support.  Cancellation. 
(when (mhf) (and (m0g) (not(q0g)))) ;; Support.  Cancellation. 
(when (rhf) (and (r0g) (not(t0g)))) ;; Support.  Cancellation. 
(when (uhf) (and (u0g) (not(v0g)))) ;; Support.  Cancellation. 
(when (zhf) (and (z0g) (not(bah)))) ;; Support.  Cancellation. 
(when (hif) (and (hah) (not(jah)))) ;; Support.  Cancellation. 
(when (kif) (and (kah) (not(lah)))) ;; Support.  Cancellation. 
(when (tif) (and (tah) (not(uah)))) ;; Support.  Cancellation. 
(when (yif) (and (yah) (not(zah)))) ;; Support.  Cancellation. 
(when (ljf) (and (lbh) (not(mbh)))) ;; Support.  Cancellation. 
(when (qjf) (and (qbh) (not(rbh)))) ;; Support.  Cancellation. 
(when (gkf) (and (gch) (not(hch)))) ;; Support.  Cancellation. 
(when (jkf) (and (jch) (not(kch)))) ;; Support.  Cancellation. 
(when (lkf) (and (lch) (not(mch)))) ;; Support.  Cancellation. 
(when (qkf) (and (qch) (not(rch)))) ;; Support.  Cancellation. 
(when (tkf) (and (tch) (not(uch)))) ;; Support.  Cancellation. 
(when (vkf) (and (vch) (not(xch)))) ;; Support.  Cancellation. 
(when (ykf) (and (ych) (not(zch)))) ;; Support.  Cancellation. 
(when (blf) (and (bdh) (not(cdh)))) ;; Support.  Cancellation. 
(when (glf) (and (gdh) (not(hdh)))) ;; Support.  Cancellation. 
(when (jlf) (and (jdh) (not(kdh)))) ;; Support.  Cancellation. 
(when (llf) (and (ldh) (not(mdh)))) ;; Support.  Cancellation. 
(when (qlf) (and (qdh) (not(rdh)))) ;; Support.  Cancellation. 
(when (tlf) (and (tdh) (not(udh)))) ;; Support.  Cancellation. 
(when (vlf) (and (vdh) (not(xdh)))) ;; Support.  Cancellation. 
(when (ylf) (and (ydh) (not(zdh)))) ;; Support.  Cancellation. 
(when (bmf) (and (beh) (not(ceh)))) ;; Support.  Cancellation. 
(when (gmf) (and (geh) (not(heh)))) ;; Support.  Cancellation. 
(when (jmf) (and (jeh) (not(keh)))) ;; Support.  Cancellation. 
(when (lmf) (and (leh) (not(meh)))) ;; Support.  Cancellation. 
(when (qmf) (and (qeh) (not(reh)))) ;; Support.  Cancellation. 
(when (tmf) (and (teh) (not(ueh)))) ;; Support.  Cancellation. 
(when (vmf) (and (veh) (not(xeh)))) ;; Support.  Cancellation. 
(when (ymf) (and (yeh) (not(zeh)))) ;; Support.  Cancellation. 
(when (bnf) (and (bfh) (not(cfh)))) ;; Support.  Cancellation. 
(when (gnf) (and (gfh) (not(hfh)))) ;; Support.  Cancellation. 
(when (jnf) (and (jfh) (not(kfh)))) ;; Support.  Cancellation. 
(when (lnf) (and (lfh) (not(mfh)))) ;; Support.  Cancellation. 
(when (qnf) (and (qfh) (not(rfh)))) ;; Support.  Cancellation. 
(when (tnf) (and (tfh) (not(ufh)))) ;; Support.  Cancellation. 
(when (vnf) (and (vfh) (not(xfh)))) ;; Support.  Cancellation. 
(when (ynf)  (yfh)) ;; Support. 
(when (bof)  (bgh)) ;; Support. 
(when (gof) (and (ggh) (not(hgh)))) ;; Support.  Cancellation. 
(when (jof) (and (jgh) (not(kgh)))) ;; Support.  Cancellation. 
(when (lof) (and (lgh) (not(mgh)))) ;; Support.  Cancellation. 
(when (qof) (and (qgh) (not(rgh)))) ;; Support.  Cancellation. 
(when (tqf) (and (tih) (not(uih)))) ;; Support.  Cancellation. 
(when (vqf) (and (vih) (not(xih)))) ;; Support.  Cancellation. 
(when (yqf) (and (yih) (not(zih)))) ;; Support.  Cancellation. 
(when (bsf) (and (bjh) (not(cjh)))) ;; Support.  Cancellation. 
(when (gsf) (and (gjh) (not(hjh)))) ;; Support.  Cancellation. 
(when (jsf) (and (jjh) (not(kjh)))) ;; Support.  Cancellation. 
(when (lsf) (and (ljh) (not(mjh)))) ;; Support.  Cancellation. 
(when (qsf) (and (qjh) (not(rjh)))) ;; Support.  Cancellation. 
(when (tsf) (and (tjh) (not(ujh)))) ;; Support.  Cancellation. 
(when (vsf) (and (vjh) (not(xjh)))) ;; Support.  Cancellation. 
(when (ysf) (and (yjh) (not(zjh)))) ;; Support.  Cancellation. 
(when (brf) (and (bkh) (not(ckh)))) ;; Support.  Cancellation. 
(when (grf) (and (gkh) (not(hkh)))) ;; Support.  Cancellation. 
(when (jrf) (and (jkh) (not(kkh)))) ;; Support.  Cancellation. 
(when (lrf) (and (lkh) (not(mkh)))) ;; Support.  Cancellation. 
(when (qrf) (and (qkh) (not(rkh)))) ;; Support.  Cancellation. 
(when (trf) (and (tkh) (not(ukh)))) ;; Support.  Cancellation. 
(when (vrf) (and (vkh) (not(xkh)))) ;; Support.  Cancellation. 
(when (yrf) (and (ykh) (not(zkh)))) ;; Support.  Cancellation. 
(when (btf) (and (blh) (not(clh)))) ;; Support.  Cancellation. 
(when (gtf)  (glh)) ;; Support. 
(when (jtf)  (jlh)) ;; Support. 
(when (ltf)  (llh)) ;; Support. 
(when (qtf)  (qlh)) ;; Support. 
(when (ttf) (and (tlh) (not(ulh)))) ;; Support.  Cancellation. 
(when (vtf) (and (vlh) (not(xlh)))) ;; Support.  Cancellation. 
(when (ytf) (and (ylh) (not(zlh)))) ;; Support.  Cancellation. 
(when (buf) (and (bmh) (not(cmh)))) ;; Support.  Cancellation. 
(when (guf) (and (gmh) (not(hmh)))) ;; Support.  Cancellation. 
(when (juf) (and (jmh) (not(kmh)))) ;; Support.  Cancellation. 
(when (luf) (and (lmh) (not(mmh)))) ;; Support.  Cancellation. 
(when (quf) (and (qmh) (not(rmh)))) ;; Support.  Cancellation. 
(when (tuf) (and (tmh) (not(umh)))) ;; Support.  Cancellation. 
(when (vuf) (and (vmh) (not(xmh)))) ;; Support.  Cancellation. 
(when (yuf) (and (ymh) (not(zmh)))) ;; Support.  Cancellation. 
(when (bvf) (and (bnh) (not(cnh)))) ;; Support.  Cancellation. 
(when (gvf) (and (gnh) (not(hnh)))) ;; Support.  Cancellation. 
(when (jvf) (and (jnh) (not(knh)))) ;; Support.  Cancellation. 
(when (lvf)  (lnh)) ;; Support. 
(when (qvf)  (qnh)) ;; Support. 
(when (rvf) (and (rnh) (not(tnh)))) ;; Support.  Cancellation. 
(when (uvf) (and (unh) (not(vnh)))) ;; Support.  Cancellation. 
(when (xvf) (and (xnh) (not(ynh)))) ;; Support.  Cancellation. 
(when (zvf) (and (znh) (not(boh)))) ;; Support.  Cancellation. 
(when (cwf) (and (coh) (not(goh)))) ;; Support.  Cancellation. 
(when (hwf)  (hoh)) ;; Support. 
(when (kwf)  (koh)) ;; Support. 
(when (mwf) (and (moh) (not(qoh)))) ;; Support.  Cancellation. 
(when (rwf) (and (roh) (not(toh)))) ;; Support.  Cancellation. 
(when (uwf) (and (uoh) (not(voh)))) ;; Support.  Cancellation. 
(when (xwf) (and (xoh) (not(yoh)))) ;; Support.  Cancellation. 
(when (zwf) (and (zoh) (not(bph)))) ;; Support.  Cancellation. 
(when (cxf) (and (cph) (not(gph)))) ;; Support.  Cancellation. 
(when (hxf) (and (hph) (not(jph)))) ;; Support.  Cancellation. 
(when (kxf) (and (kph) (not(lph)))) ;; Support.  Cancellation. 
(when (mxf) (and (mph) (not(qph)))) ;; Support.  Cancellation. 
(when (rxf) (and (rph) (not(tph)))) ;; Support.  Cancellation. 
(when (uxf) (and (uph) (not(vph)))) ;; Support.  Cancellation. 
(when (xxf) (and (xph) (not(yph)))) ;; Support.  Cancellation. 
(when (zxf) (and (zph) (not(bqh)))) ;; Support.  Cancellation. 
(when (cyf) (and (cqh) (not(gqh)))) ;; Support.  Cancellation. 
(when (hyf) (and (hqh) (not(jqh)))) ;; Support.  Cancellation. 
(when (kyf) (and (kqh) (not(lqh)))) ;; Support.  Cancellation. 
(when (myf) (and (mqh) (not(qqh)))) ;; Support.  Cancellation. 
(when (ryf) (and (rqh) (not(tqh)))) ;; Support.  Cancellation. 
(when (uyf) (and (uqh) (not(vqh)))) ;; Support.  Cancellation. 
(when (xyf)  (xqh)) ;; Support. 
(when (zyf) (and (zqh) (not(bsh)))) ;; Support.  Cancellation. 
(when (czf) (and (csh) (not(gsh)))) ;; Support.  Cancellation. 
(when (hzf) (and (hsh) (not(jsh)))) ;; Support.  Cancellation. 
(when (kzf) (and (ksh) (not(lsh)))) ;; Support.  Cancellation. 
(when (mzf)  (msh)) ;; Support. 
(when (rzf) (and (rsh) (not(tsh)))) ;; Support.  Cancellation. 
(when (uzf) (and (ush) (not(vsh)))) ;; Support.  Cancellation. 
(when (zzf)  (zsh)) ;; Support. 
(when (c1f) (and (crh) (not(grh)))) ;; Support.  Cancellation. 
(when (h1f) (and (hrh) (not(jrh)))) ;; Support.  Cancellation. 
(when (k1f) (and (krh) (not(lrh)))) ;; Support.  Cancellation. 
(when (m1f) (and (mrh) (not(qrh)))) ;; Support.  Cancellation. 
(when (r1f) (and (rrh) (not(trh)))) ;; Support.  Cancellation. 
(when (u1f) (and (urh) (not(vrh)))) ;; Support.  Cancellation. 
(when (x1f) (and (xrh) (not(yrh)))) ;; Support.  Cancellation. 
(when (z1f) (and (zrh) (not(bth)))) ;; Support.  Cancellation. 
(when (c2f) (and (cth) (not(gth)))) ;; Support.  Cancellation. 
(when (h2f) (and (hth) (not(jth)))) ;; Support.  Cancellation. 
(when (k2f) (and (kth) (not(lth)))) ;; Support.  Cancellation. 
(when (m2f) (and (mth) (not(qth)))) ;; Support.  Cancellation. 
(when (r2f) (and (rth) (not(tth)))) ;; Support.  Cancellation. 
(when (u2f) (and (uth) (not(vth)))) ;; Support.  Cancellation. 
(when (x2f) (and (xth) (not(yth)))) ;; Support.  Cancellation. 
(when (z2f) (and (zth) (not(buh)))) ;; Support.  Cancellation. 
(when (c3f) (and (cuh) (not(guh)))) ;; Support.  Cancellation. 
(when (h3f) (and (huh) (not(juh)))) ;; Support.  Cancellation. 
(when (k3f) (and (kuh) (not(luh)))) ;; Support.  Cancellation. 
(when (m3f) (and (muh) (not(quh)))) ;; Support.  Cancellation. 
(when (tyg) (and (t7e) (not(qvf)))) ;; Support.  Cancellation. 
(when (not(ryg))  (not(r7e))) ;; Cancellation. 
(when (vyg) (and (v7e) (not(u7e)))) ;; Support.  Cancellation. 
(when (yyg) (and (y7e) (not(x7e)))) ;; Support.  Cancellation. 
(when (bzg) (and (b8e) (not(z7e)))) ;; Support.  Cancellation. 
(when (gzg) (and (g8e) (not(c8e)))) ;; Support.  Cancellation. 
(when (jzg) (and (j8e) (not(h8e)))) ;; Support.  Cancellation. 
(when (lzg) (and (l8e) (not(k8e)))) ;; Support.  Cancellation. 
(when (qzg) (and (q8e) (not(m8e)))) ;; Support.  Cancellation. 
(when (tzg) (and (t8e) (not(r8e)))) ;; Support.  Cancellation. 
(when (vzg) (and (v8e) (not(u8e)))) ;; Support.  Cancellation. 
(when (yzg) (and (y8e) (not(x8e)))) ;; Support.  Cancellation. 
(when (b1g) (and (b9e) (not(z8e)))) ;; Support.  Cancellation. 
(when (g1g) (and (g9e) (not(c9e)))) ;; Support.  Cancellation. 
(when (j1g) (and (j9e) (not(h9e)))) ;; Support.  Cancellation. 
(when (l1g) (and (l9e) (not(k9e)))) ;; Support.  Cancellation. 
(when (q1g) (and (q9e) (not(m9e)))) ;; Support.  Cancellation. 
(when (t1g) (and (t9e) (not(r9e)))) ;; Support.  Cancellation. 
(when (v1g) (and (v9e) (not(u9e)))) ;; Support.  Cancellation. 
(when (y1g) (and (y9e) (not(x9e)))) ;; Support.  Cancellation. 
(when (b2g) (and (b0e) (not(z9e)))) ;; Support.  Cancellation. 
(when (g2g) (and (g0e) (not(c0e)))) ;; Support.  Cancellation. 
(when (j2g) (and (j0e) (not(h0e)))) ;; Support.  Cancellation. 
(when (l2g) (and (l0e) (not(k0e)))) ;; Support.  Cancellation. 
(when (q2g) (and (q0e) (not(m0e)))) ;; Support.  Cancellation. 
(when (t2g) (and (t0e) (not(r0e)))) ;; Support.  Cancellation. 
(when (v2g) (and (v0e) (not(u0e)))) ;; Support.  Cancellation. 
(when (y2g) (and (y0e) (not(x0e)))) ;; Support.  Cancellation. 
(when (b3g) (and (baf) (not(z0e)))) ;; Support.  Cancellation. 
(when (g3g) (and (gaf) (not(caf)))) ;; Support.  Cancellation. 
(when (j3g) (and (jaf) (not(haf)))) ;; Support.  Cancellation. 
(when (l3g) (and (laf) (not(kaf)))) ;; Support.  Cancellation. 
(when (q3g) (and (qaf) (not(maf)))) ;; Support.  Cancellation. 
(when (t3g) (and (taf) (not(raf)))) ;; Support.  Cancellation. 
(when (v3g) (and (vaf) (not(uaf)))) ;; Support.  Cancellation. 
(when (y3g) (and (yaf) (not(xaf)))) ;; Support.  Cancellation. 
(when (b4g) (and (bbf) (not(zaf)))) ;; Support.  Cancellation. 
(when (g4g) (and (gbf) (not(cbf)))) ;; Support.  Cancellation. 
(when (j4g) (and (jbf) (not(hbf)))) ;; Support.  Cancellation. 
(when (l4g) (and (lbf) (not(kbf)))) ;; Support.  Cancellation. 
(when (q4g) (and (qbf) (not(mbf)))) ;; Support.  Cancellation. 
(when (t4g) (and (tbf) (not(rbf)))) ;; Support.  Cancellation. 
(when (v4g) (and (vbf) (not(ubf)))) ;; Support.  Cancellation. 
(when (y4g) (and (ybf) (not(xbf)))) ;; Support.  Cancellation. 
(when (b5g) (and (bcf) (not(zbf)))) ;; Support.  Cancellation. 
(when (g5g) (and (gcf) (not(ccf)))) ;; Support.  Cancellation. 
(when (j5g) (and (jcf) (not(hcf)))) ;; Support.  Cancellation. 
(when (l5g) (and (lcf) (not(kcf)))) ;; Support.  Cancellation. 
(when (q5g) (and (qcf) (not(mcf)))) ;; Support.  Cancellation. 
(when (t5g) (and (tcf) (not(rcf)))) ;; Support.  Cancellation. 
(when (v5g) (and (vcf) (not(ucf)))) ;; Support.  Cancellation. 
(when (y5g) (and (ycf) (not(xcf)))) ;; Support.  Cancellation. 
(when (b6g) (and (bdf) (not(zcf)))) ;; Support.  Cancellation. 
(when (g6g) (and (gdf) (not(cdf)))) ;; Support.  Cancellation. 
(when (j6g) (and (jdf) (not(hdf)))) ;; Support.  Cancellation. 
(when (l6g) (and (ldf) (not(kdf)))) ;; Support.  Cancellation. 
(when (q6g) (and (qdf) (not(mdf)))) ;; Support.  Cancellation. 
(when (t6g) (and (tdf) (not(rdf)))) ;; Support.  Cancellation. 
(when (v6g) (and (vdf) (not(udf)))) ;; Support.  Cancellation. 
(when (y6g) (and (ydf) (not(xdf)))) ;; Support.  Cancellation. 
(when (b7g) (and (bef) (not(zdf)))) ;; Support.  Cancellation. 
(when (g7g) (and (gef) (not(cef)))) ;; Support.  Cancellation. 
(when (j7g) (and (jef) (not(hef)))) ;; Support.  Cancellation. 
(when (l7g) (and (lef) (not(kef)))) ;; Support.  Cancellation. 
(when (q7g) (and (qef) (not(mef)))) ;; Support.  Cancellation. 
(when (t7g) (and (tef) (not(ref)))) ;; Support.  Cancellation. 
(when (v7g) (and (vef) (not(uef)))) ;; Support.  Cancellation. 
(when (y7g) (and (yef) (not(xef)))) ;; Support.  Cancellation. 
(when (b8g) (and (bff) (not(zef)))) ;; Support.  Cancellation. 
(when (g8g) (and (gff) (not(cff)))) ;; Support.  Cancellation. 
(when (j8g) (and (jff) (not(hff)))) ;; Support.  Cancellation. 
(when (l8g) (and (lff) (not(kff)))) ;; Support.  Cancellation. 
(when (q8g) (and (qff) (not(mff)))) ;; Support.  Cancellation. 
(when (t8g) (and (tff) (not(rff)))) ;; Support.  Cancellation. 
(when (v8g)  (vff)) ;; Support. 
(when (y8g)  (yff)) ;; Support. 
(when (b9g) (and (bgf) (not(zff)))) ;; Support.  Cancellation. 
(when (g9g) (and (ggf) (not(cgf)))) ;; Support.  Cancellation. 
(when (j9g)  (jgf)) ;; Support. 
(when (l9g) (and (lgf) (not(kgf)))) ;; Support.  Cancellation. 
(when (q9g) (and (qgf) (not(mgf)))) ;; Support.  Cancellation. 
(when (t9g)  (tgf)) ;; Support. 
(when (v9g) (and (vgf) (not(ugf)))) ;; Support.  Cancellation. 
(when (y9g) (and (ygf) (not(xgf)))) ;; Support.  Cancellation. 
(when (b0g) (and (bhf) (not(zgf)))) ;; Support.  Cancellation. 
(when (g0g) (and (ghf) (not(chf)))) ;; Support.  Cancellation. 
(when (j0g) (and (jhf) (not(hhf)))) ;; Support.  Cancellation. 
(when (l0g) (and (lhf) (not(khf)))) ;; Support.  Cancellation. 
(when (q0g) (and (qhf) (not(mhf)))) ;; Support.  Cancellation. 
(when (t0g) (and (thf) (not(rhf)))) ;; Support.  Cancellation. 
(when (v0g) (and (vhf) (not(uhf)))) ;; Support.  Cancellation. 
(when (y0g)  (yhf)) ;; Support. 
(when (bah) (and (bif) (not(zhf)))) ;; Support.  Cancellation. 
(when (gah)  (gif)) ;; Support. 
(when (jah) (and (jif) (not(hif)))) ;; Support.  Cancellation. 
(when (lah) (and (lif) (not(kif)))) ;; Support.  Cancellation. 
(when (qah)  (qif)) ;; Support. 
(when (rah)  (rif)) ;; Support. 
(when (uah) (and (uif) (not(tif)))) ;; Support.  Cancellation. 
(when (xah)  (xif)) ;; Support. 
(when (zah) (and (zif) (not(yif)))) ;; Support.  Cancellation. 
(when (cbh)  (cjf)) ;; Support. 
(when (hbh)  (hjf)) ;; Support. 
(when (kbh)  (kjf)) ;; Support. 
(when (mbh) (and (mjf) (not(ljf)))) ;; Support.  Cancellation. 
(when (rbh) (and (rjf) (not(qjf)))) ;; Support.  Cancellation. 
(when (ubh)  (ujf)) ;; Support. 
(when (xbh)  (xjf)) ;; Support. 
(when (zbh)  (zjf)) ;; Support. 
(when (cch)  (ckf)) ;; Support. 
(when (hch) (and (hkf) (not(gkf)))) ;; Support.  Cancellation. 
(when (kch) (and (kkf) (not(jkf)))) ;; Support.  Cancellation. 
(when (mch) (and (mkf) (not(lkf)))) ;; Support.  Cancellation. 
(when (rch) (and (rkf) (not(qkf)))) ;; Support.  Cancellation. 
(when (uch) (and (ukf) (not(tkf)))) ;; Support.  Cancellation. 
(when (xch) (and (xkf) (not(vkf)))) ;; Support.  Cancellation. 
(when (zch) (and (zkf) (not(ykf)))) ;; Support.  Cancellation. 
(when (cdh) (and (clf) (not(blf)))) ;; Support.  Cancellation. 
(when (hdh) (and (hlf) (not(glf)))) ;; Support.  Cancellation. 
(when (kdh) (and (klf) (not(jlf)))) ;; Support.  Cancellation. 
(when (mdh) (and (mlf) (not(llf)))) ;; Support.  Cancellation. 
(when (rdh) (and (rlf) (not(qlf)))) ;; Support.  Cancellation. 
(when (udh) (and (ulf) (not(tlf)))) ;; Support.  Cancellation. 
(when (xdh) (and (xlf) (not(vlf)))) ;; Support.  Cancellation. 
(when (zdh) (and (zlf) (not(ylf)))) ;; Support.  Cancellation. 
(when (ceh) (and (cmf) (not(bmf)))) ;; Support.  Cancellation. 
(when (heh) (and (hmf) (not(gmf)))) ;; Support.  Cancellation. 
(when (keh) (and (kmf) (not(jmf)))) ;; Support.  Cancellation. 
(when (meh) (and (mmf) (not(lmf)))) ;; Support.  Cancellation. 
(when (reh) (and (rmf) (not(qmf)))) ;; Support.  Cancellation. 
(when (ueh) (and (umf) (not(tmf)))) ;; Support.  Cancellation. 
(when (xeh) (and (xmf) (not(vmf)))) ;; Support.  Cancellation. 
(when (zeh) (and (zmf) (not(ymf)))) ;; Support.  Cancellation. 
(when (cfh) (and (cnf) (not(bnf)))) ;; Support.  Cancellation. 
(when (hfh) (and (hnf) (not(gnf)))) ;; Support.  Cancellation. 
(when (kfh) (and (knf) (not(jnf)))) ;; Support.  Cancellation. 
(when (mfh) (and (mnf) (not(lnf)))) ;; Support.  Cancellation. 
(when (rfh) (and (rnf) (not(qnf)))) ;; Support.  Cancellation. 
(when (ufh) (and (unf) (not(tnf)))) ;; Support.  Cancellation. 
(when (xfh) (and (xnf) (not(vnf)))) ;; Support.  Cancellation. 
(when (hgh) (and (hof) (not(gof)))) ;; Support.  Cancellation. 
(when (kgh) (and (kof) (not(jof)))) ;; Support.  Cancellation. 
(when (mgh) (and (mof) (not(lof)))) ;; Support.  Cancellation. 
(when (rgh) (and (rof) (not(qof)))) ;; Support.  Cancellation. 
(when (ugh)  (uof)) ;; Support. 
(when (xgh)  (xof)) ;; Support. 
(when (zgh)  (zof)) ;; Support. 
(when (chh)  (cpf)) ;; Support. 
(when (hhh)  (hpf)) ;; Support. 
(when (khh)  (kpf)) ;; Support. 
(when (mhh)  (mpf)) ;; Support. 
(when (rhh)  (rpf)) ;; Support. 
(when (uhh)  (upf)) ;; Support. 
(when (xhh)  (xpf)) ;; Support. 
(when (zhh)  (zpf)) ;; Support. 
(when (hih)  (hqf)) ;; Support. 
(when (mih)  (mqf)) ;; Support. 
(when (uih) (and (uqf) (not(tqf)))) ;; Support.  Cancellation. 
(when (xih) (and (xqf) (not(vqf)))) ;; Support.  Cancellation. 
(when (zih) (and (zqf) (not(yqf)))) ;; Support.  Cancellation. 
(when (cjh) (and (csf) (not(bsf)))) ;; Support.  Cancellation. 
(when (hjh) (and (hsf) (not(gsf)))) ;; Support.  Cancellation. 
(when (kjh) (and (ksf) (not(jsf)))) ;; Support.  Cancellation. 
(when (mjh) (and (msf) (not(lsf)))) ;; Support.  Cancellation. 
(when (rjh) (and (rsf) (not(qsf)))) ;; Support.  Cancellation. 
(when (ujh) (and (usf) (not(tsf)))) ;; Support.  Cancellation. 
(when (xjh) (and (xsf) (not(vsf)))) ;; Support.  Cancellation. 
(when (zjh) (and (zsf) (not(ysf)))) ;; Support.  Cancellation. 
(when (ckh) (and (crf) (not(brf)))) ;; Support.  Cancellation. 
(when (hkh) (and (hrf) (not(grf)))) ;; Support.  Cancellation. 
(when (kkh) (and (krf) (not(jrf)))) ;; Support.  Cancellation. 
(when (mkh) (and (mrf) (not(lrf)))) ;; Support.  Cancellation. 
(when (rkh) (and (rrf) (not(qrf)))) ;; Support.  Cancellation. 
(when (ukh) (and (urf) (not(trf)))) ;; Support.  Cancellation. 
(when (xkh) (and (xrf) (not(vrf)))) ;; Support.  Cancellation. 
(when (zkh) (and (zrf) (not(yrf)))) ;; Support.  Cancellation. 
(when (clh) (and (ctf) (not(btf)))) ;; Support.  Cancellation. 
(when (ulh) (and (utf) (not(ttf)))) ;; Support.  Cancellation. 
(when (xlh) (and (xtf) (not(vtf)))) ;; Support.  Cancellation. 
(when (zlh) (and (ztf) (not(ytf)))) ;; Support.  Cancellation. 
(when (cmh) (and (cuf) (not(buf)))) ;; Support.  Cancellation. 
(when (hmh) (and (huf) (not(guf)))) ;; Support.  Cancellation. 
(when (kmh) (and (kuf) (not(juf)))) ;; Support.  Cancellation. 
(when (mmh) (and (muf) (not(luf)))) ;; Support.  Cancellation. 
(when (rmh) (and (ruf) (not(quf)))) ;; Support.  Cancellation. 
(when (umh) (and (uuf) (not(tuf)))) ;; Support.  Cancellation. 
(when (xmh) (and (xuf) (not(vuf)))) ;; Support.  Cancellation. 
(when (zmh) (and (zuf) (not(yuf)))) ;; Support.  Cancellation. 
(when (cnh) (and (cvf) (not(bvf)))) ;; Support.  Cancellation. 
(when (hnh) (and (hvf) (not(gvf)))) ;; Support.  Cancellation. 
(when (knh) (and (kvf) (not(jvf)))) ;; Support.  Cancellation. 
(when (tnh) (and (tvf) (not(rvf)))) ;; Support.  Cancellation. 
(when (vnh) (and (vvf) (not(uvf)))) ;; Support.  Cancellation. 
(when (ynh) (and (yvf) (not(xvf)))) ;; Support.  Cancellation. 
(when (boh) (and (bwf) (not(zvf)))) ;; Support.  Cancellation. 
(when (goh) (and (gwf) (not(cwf)))) ;; Support.  Cancellation. 
(when (qoh) (and (qwf) (not(mwf)))) ;; Support.  Cancellation. 
(when (toh) (and (twf) (not(rwf)))) ;; Support.  Cancellation. 
(when (voh) (and (vwf) (not(uwf)))) ;; Support.  Cancellation. 
(when (yoh) (and (ywf) (not(xwf)))) ;; Support.  Cancellation. 
(when (bph) (and (bxf) (not(zwf)))) ;; Support.  Cancellation. 
(when (gph) (and (gxf) (not(cxf)))) ;; Support.  Cancellation. 
(when (jph) (and (jxf) (not(hxf)))) ;; Support.  Cancellation. 
(when (lph) (and (lxf) (not(kxf)))) ;; Support.  Cancellation. 
(when (qph) (and (qxf) (not(mxf)))) ;; Support.  Cancellation. 
(when (tph) (and (txf) (not(rxf)))) ;; Support.  Cancellation. 
(when (vph) (and (vxf) (not(uxf)))) ;; Support.  Cancellation. 
(when (yph) (and (yxf) (not(xxf)))) ;; Support.  Cancellation. 
(when (bqh) (and (byf) (not(zxf)))) ;; Support.  Cancellation. 
(when (gqh) (and (gyf) (not(cyf)))) ;; Support.  Cancellation. 
(when (jqh) (and (jyf) (not(hyf)))) ;; Support.  Cancellation. 
(when (lqh) (and (lyf) (not(kyf)))) ;; Support.  Cancellation. 
(when (qqh) (and (qyf) (not(myf)))) ;; Support.  Cancellation. 
(when (tqh) (and (tyf) (not(ryf)))) ;; Support.  Cancellation. 
(when (vqh) (and (vyf) (not(uyf)))) ;; Support.  Cancellation. 
(when (bsh) (and (bzf) (not(zyf)))) ;; Support.  Cancellation. 
(when (gsh) (and (gzf) (not(czf)))) ;; Support.  Cancellation. 
(when (jsh) (and (jzf) (not(hzf)))) ;; Support.  Cancellation. 
(when (lsh) (and (lzf) (not(kzf)))) ;; Support.  Cancellation. 
(when (tsh) (and (tzf) (not(rzf)))) ;; Support.  Cancellation. 
(when (vsh) (and (vzf) (not(uzf)))) ;; Support.  Cancellation. 
(when (grh) (and (g1f) (not(c1f)))) ;; Support.  Cancellation. 
(when (jrh) (and (j1f) (not(h1f)))) ;; Support.  Cancellation. 
(when (lrh) (and (l1f) (not(k1f)))) ;; Support.  Cancellation. 
(when (qrh) (and (q1f) (not(m1f)))) ;; Support.  Cancellation. 
(when (trh) (and (t1f) (not(r1f)))) ;; Support.  Cancellation. 
(when (vrh) (and (v1f) (not(u1f)))) ;; Support.  Cancellation. 
(when (yrh) (and (y1f) (not(x1f)))) ;; Support.  Cancellation. 
(when (bth) (and (b2f) (not(z1f)))) ;; Support.  Cancellation. 
(when (gth) (and (g2f) (not(c2f)))) ;; Support.  Cancellation. 
(when (jth) (and (j2f) (not(h2f)))) ;; Support.  Cancellation. 
(when (lth) (and (l2f) (not(k2f)))) ;; Support.  Cancellation. 
(when (qth) (and (q2f) (not(m2f)))) ;; Support.  Cancellation. 
(when (tth) (and (t2f) (not(r2f)))) ;; Support.  Cancellation. 
(when (vth) (and (v2f) (not(u2f)))) ;; Support.  Cancellation. 
(when (yth) (and (y2f) (not(x2f)))) ;; Support.  Cancellation. 
(when (buh) (and (b3f) (not(z2f)))) ;; Support.  Cancellation. 
(when (guh) (and (g3f) (not(c3f)))) ;; Support.  Cancellation. 
(when (juh) (and (j3f) (not(h3f)))) ;; Support.  Cancellation. 
(when (luh) (and (l3f) (not(k3f)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L3_L4
:parameters ()
:precondition (and (q7e))

:effect (and  (xvg) (kqf)
(when (qyg) (and (q3f) (not(m3f)))) ;; Support.  Cancellation. 
(when (r7e) (and (r3f) (not(reg)))) ;; Support.  Cancellation. 
(when (not(t7e))  (not(t3f))) ;; Cancellation. 
(when (u7e) (and (u3f) (not(v3f)))) ;; Support.  Cancellation. 
(when (x7e) (and (x3f) (not(y3f)))) ;; Support.  Cancellation. 
(when (z7e) (and (z3f) (not(b4f)))) ;; Support.  Cancellation. 
(when (c8e) (and (c4f) (not(g4f)))) ;; Support.  Cancellation. 
(when (h8e) (and (h4f) (not(j4f)))) ;; Support.  Cancellation. 
(when (k8e) (and (k4f) (not(l4f)))) ;; Support.  Cancellation. 
(when (m8e) (and (m4f) (not(q4f)))) ;; Support.  Cancellation. 
(when (r8e) (and (r4f) (not(t4f)))) ;; Support.  Cancellation. 
(when (u8e) (and (u4f) (not(v4f)))) ;; Support.  Cancellation. 
(when (x8e) (and (x4f) (not(y4f)))) ;; Support.  Cancellation. 
(when (z8e) (and (z4f) (not(b5f)))) ;; Support.  Cancellation. 
(when (c9e) (and (c5f) (not(g5f)))) ;; Support.  Cancellation. 
(when (h9e) (and (h5f) (not(j5f)))) ;; Support.  Cancellation. 
(when (k9e) (and (k5f) (not(l5f)))) ;; Support.  Cancellation. 
(when (m9e) (and (m5f) (not(q5f)))) ;; Support.  Cancellation. 
(when (r9e) (and (r5f) (not(t5f)))) ;; Support.  Cancellation. 
(when (u9e) (and (u5f) (not(v5f)))) ;; Support.  Cancellation. 
(when (x9e) (and (x5f) (not(y5f)))) ;; Support.  Cancellation. 
(when (z9e) (and (z5f) (not(b6f)))) ;; Support.  Cancellation. 
(when (c0e) (and (c6f) (not(g6f)))) ;; Support.  Cancellation. 
(when (h0e) (and (h6f) (not(j6f)))) ;; Support.  Cancellation. 
(when (k0e) (and (k6f) (not(l6f)))) ;; Support.  Cancellation. 
(when (m0e) (and (m6f) (not(q6f)))) ;; Support.  Cancellation. 
(when (r0e) (and (r6f) (not(t6f)))) ;; Support.  Cancellation. 
(when (u0e) (and (u6f) (not(v6f)))) ;; Support.  Cancellation. 
(when (x0e) (and (x6f) (not(y6f)))) ;; Support.  Cancellation. 
(when (z0e) (and (z6f) (not(b7f)))) ;; Support.  Cancellation. 
(when (caf) (and (c7f) (not(g7f)))) ;; Support.  Cancellation. 
(when (haf) (and (h7f) (not(j7f)))) ;; Support.  Cancellation. 
(when (kaf) (and (k7f) (not(l7f)))) ;; Support.  Cancellation. 
(when (maf) (and (m7f) (not(q7f)))) ;; Support.  Cancellation. 
(when (raf) (and (r7f) (not(t7f)))) ;; Support.  Cancellation. 
(when (uaf) (and (u7f) (not(v7f)))) ;; Support.  Cancellation. 
(when (xaf) (and (x7f) (not(y7f)))) ;; Support.  Cancellation. 
(when (zaf) (and (z7f) (not(b8f)))) ;; Support.  Cancellation. 
(when (cbf) (and (c8f) (not(g8f)))) ;; Support.  Cancellation. 
(when (hbf) (and (h8f) (not(j8f)))) ;; Support.  Cancellation. 
(when (kbf) (and (k8f) (not(l8f)))) ;; Support.  Cancellation. 
(when (mbf) (and (m8f) (not(q8f)))) ;; Support.  Cancellation. 
(when (rbf) (and (r8f) (not(t8f)))) ;; Support.  Cancellation. 
(when (ubf) (and (u8f) (not(v8f)))) ;; Support.  Cancellation. 
(when (xbf) (and (x8f) (not(y8f)))) ;; Support.  Cancellation. 
(when (zbf) (and (z8f) (not(b9f)))) ;; Support.  Cancellation. 
(when (ccf) (and (c9f) (not(g9f)))) ;; Support.  Cancellation. 
(when (hcf) (and (h9f) (not(j9f)))) ;; Support.  Cancellation. 
(when (kcf) (and (k9f) (not(l9f)))) ;; Support.  Cancellation. 
(when (mcf) (and (m9f) (not(q9f)))) ;; Support.  Cancellation. 
(when (rcf) (and (r9f) (not(t9f)))) ;; Support.  Cancellation. 
(when (ucf) (and (u9f) (not(v9f)))) ;; Support.  Cancellation. 
(when (xcf) (and (x9f) (not(y9f)))) ;; Support.  Cancellation. 
(when (zcf) (and (z9f) (not(b0f)))) ;; Support.  Cancellation. 
(when (cdf) (and (c0f) (not(g0f)))) ;; Support.  Cancellation. 
(when (hdf) (and (h0f) (not(j0f)))) ;; Support.  Cancellation. 
(when (kdf) (and (k0f) (not(l0f)))) ;; Support.  Cancellation. 
(when (mdf) (and (m0f) (not(q0f)))) ;; Support.  Cancellation. 
(when (rdf) (and (r0f) (not(t0f)))) ;; Support.  Cancellation. 
(when (udf) (and (u0f) (not(v0f)))) ;; Support.  Cancellation. 
(when (xdf) (and (x0f) (not(y0f)))) ;; Support.  Cancellation. 
(when (zdf) (and (z0f) (not(bag)))) ;; Support.  Cancellation. 
(when (cef) (and (cag) (not(gag)))) ;; Support.  Cancellation. 
(when (hef) (and (hag) (not(jag)))) ;; Support.  Cancellation. 
(when (kef) (and (kag) (not(lag)))) ;; Support.  Cancellation. 
(when (mef) (and (mag) (not(qag)))) ;; Support.  Cancellation. 
(when (ref) (and (rag) (not(tag)))) ;; Support.  Cancellation. 
(when (uef) (and (uag) (not(vag)))) ;; Support.  Cancellation. 
(when (xef) (and (xag) (not(yag)))) ;; Support.  Cancellation. 
(when (zef) (and (zag) (not(bbg)))) ;; Support.  Cancellation. 
(when (cff) (and (cbg) (not(gbg)))) ;; Support.  Cancellation. 
(when (hff) (and (hbg) (not(jbg)))) ;; Support.  Cancellation. 
(when (kff) (and (kbg) (not(lbg)))) ;; Support.  Cancellation. 
(when (mff) (and (mbg) (not(qbg)))) ;; Support.  Cancellation. 
(when (rff) (and (rbg) (not(tbg)))) ;; Support.  Cancellation. 
(when (zff) (and (zbg) (not(bcg)))) ;; Support.  Cancellation. 
(when (cgf) (and (ccg) (not(gcg)))) ;; Support.  Cancellation. 
(when (kgf) (and (kcg) (not(lcg)))) ;; Support.  Cancellation. 
(when (mgf) (and (mcg) (not(qcg)))) ;; Support.  Cancellation. 
(when (ugf) (and (ucg) (not(vcg)))) ;; Support.  Cancellation. 
(when (xgf) (and (xcg) (not(ycg)))) ;; Support.  Cancellation. 
(when (zgf) (and (zcg) (not(bdg)))) ;; Support.  Cancellation. 
(when (chf) (and (cdg) (not(gdg)))) ;; Support.  Cancellation. 
(when (hhf) (and (hdg) (not(jdg)))) ;; Support.  Cancellation. 
(when (khf) (and (kdg) (not(ldg)))) ;; Support.  Cancellation. 
(when (mhf) (and (mdg) (not(qdg)))) ;; Support.  Cancellation. 
(when (rhf) (and (rdg) (not(tdg)))) ;; Support.  Cancellation. 
(when (uhf) (and (udg) (not(vdg)))) ;; Support.  Cancellation. 
(when (zhf) (and (zdg) (not(beg)))) ;; Support.  Cancellation. 
(when (hif) (and (heg) (not(jeg)))) ;; Support.  Cancellation. 
(when (kif) (and (keg) (not(leg)))) ;; Support.  Cancellation. 
(when (tif) (and (teg) (not(ueg)))) ;; Support.  Cancellation. 
(when (yif) (and (yeg) (not(zeg)))) ;; Support.  Cancellation. 
(when (ljf) (and (lfg) (not(mfg)))) ;; Support.  Cancellation. 
(when (qjf) (and (qfg) (not(rfg)))) ;; Support.  Cancellation. 
(when (gkf) (and (ggg) (not(hgg)))) ;; Support.  Cancellation. 
(when (jkf) (and (jgg) (not(kgg)))) ;; Support.  Cancellation. 
(when (lkf) (and (lgg) (not(mgg)))) ;; Support.  Cancellation. 
(when (qkf) (and (qgg) (not(rgg)))) ;; Support.  Cancellation. 
(when (tkf) (and (tgg) (not(ugg)))) ;; Support.  Cancellation. 
(when (vkf) (and (vgg) (not(xgg)))) ;; Support.  Cancellation. 
(when (ykf) (and (ygg) (not(zgg)))) ;; Support.  Cancellation. 
(when (blf) (and (bhg) (not(chg)))) ;; Support.  Cancellation. 
(when (glf) (and (ghg) (not(hhg)))) ;; Support.  Cancellation. 
(when (jlf) (and (jhg) (not(khg)))) ;; Support.  Cancellation. 
(when (llf) (and (lhg) (not(mhg)))) ;; Support.  Cancellation. 
(when (qlf) (and (qhg) (not(rhg)))) ;; Support.  Cancellation. 
(when (tlf) (and (thg) (not(uhg)))) ;; Support.  Cancellation. 
(when (vlf) (and (vhg) (not(xhg)))) ;; Support.  Cancellation. 
(when (ylf) (and (yhg) (not(zhg)))) ;; Support.  Cancellation. 
(when (bmf) (and (big) (not(cig)))) ;; Support.  Cancellation. 
(when (gmf) (and (gig) (not(hig)))) ;; Support.  Cancellation. 
(when (jmf) (and (jig) (not(kig)))) ;; Support.  Cancellation. 
(when (lmf) (and (lig) (not(mig)))) ;; Support.  Cancellation. 
(when (qmf) (and (qig) (not(rig)))) ;; Support.  Cancellation. 
(when (tmf) (and (tig) (not(uig)))) ;; Support.  Cancellation. 
(when (vmf) (and (vig) (not(xig)))) ;; Support.  Cancellation. 
(when (ymf) (and (yig) (not(zig)))) ;; Support.  Cancellation. 
(when (bnf) (and (bjg) (not(cjg)))) ;; Support.  Cancellation. 
(when (gnf) (and (gjg) (not(hjg)))) ;; Support.  Cancellation. 
(when (jnf) (and (jjg) (not(kjg)))) ;; Support.  Cancellation. 
(when (lnf) (and (ljg) (not(mjg)))) ;; Support.  Cancellation. 
(when (qnf) (and (qjg) (not(rjg)))) ;; Support.  Cancellation. 
(when (tnf) (and (tjg) (not(ujg)))) ;; Support.  Cancellation. 
(when (vnf) (and (vjg) (not(xjg)))) ;; Support.  Cancellation. 
(when (ynf)  (yjg)) ;; Support. 
(when (bof) (and (bkg) (not(ckg)))) ;; Support.  Cancellation. 
(when (gof) (and (gkg) (not(hkg)))) ;; Support.  Cancellation. 
(when (jof) (and (jkg) (not(kkg)))) ;; Support.  Cancellation. 
(when (lof) (and (lkg) (not(mkg)))) ;; Support.  Cancellation. 
(when (qof) (and (qkg) (not(rkg)))) ;; Support.  Cancellation. 
(when (tqf) (and (tmg) (not(umg)))) ;; Support.  Cancellation. 
(when (vqf) (and (vmg) (not(xmg)))) ;; Support.  Cancellation. 
(when (yqf) (and (ymg) (not(zmg)))) ;; Support.  Cancellation. 
(when (bsf) (and (bng) (not(cng)))) ;; Support.  Cancellation. 
(when (gsf) (and (gng) (not(hng)))) ;; Support.  Cancellation. 
(when (jsf) (and (jng) (not(kng)))) ;; Support.  Cancellation. 
(when (lsf) (and (lng) (not(mng)))) ;; Support.  Cancellation. 
(when (qsf) (and (qng) (not(rng)))) ;; Support.  Cancellation. 
(when (tsf) (and (tng) (not(ung)))) ;; Support.  Cancellation. 
(when (vsf) (and (vng) (not(xng)))) ;; Support.  Cancellation. 
(when (ysf) (and (yng) (not(zng)))) ;; Support.  Cancellation. 
(when (brf) (and (bog) (not(cog)))) ;; Support.  Cancellation. 
(when (grf) (and (gog) (not(hog)))) ;; Support.  Cancellation. 
(when (jrf) (and (jog) (not(kog)))) ;; Support.  Cancellation. 
(when (lrf) (and (log) (not(mog)))) ;; Support.  Cancellation. 
(when (qrf) (and (qog) (not(rog)))) ;; Support.  Cancellation. 
(when (trf) (and (tog) (not(uog)))) ;; Support.  Cancellation. 
(when (vrf) (and (vog) (not(xog)))) ;; Support.  Cancellation. 
(when (yrf) (and (yog) (not(zog)))) ;; Support.  Cancellation. 
(when (btf) (and (bpg) (not(cpg)))) ;; Support.  Cancellation. 
(when (gtf)  (gpg)) ;; Support. 
(when (jtf) (and (jpg) (not(kpg)))) ;; Support.  Cancellation. 
(when (ltf)  (lpg)) ;; Support. 
(when (qtf) (and (qpg) (not(rpg)))) ;; Support.  Cancellation. 
(when (ttf) (and (tpg) (not(upg)))) ;; Support.  Cancellation. 
(when (vtf) (and (vpg) (not(xpg)))) ;; Support.  Cancellation. 
(when (ytf) (and (ypg) (not(zpg)))) ;; Support.  Cancellation. 
(when (buf) (and (bqg) (not(cqg)))) ;; Support.  Cancellation. 
(when (guf) (and (gqg) (not(hqg)))) ;; Support.  Cancellation. 
(when (juf) (and (jqg) (not(kqg)))) ;; Support.  Cancellation. 
(when (luf) (and (lqg) (not(mqg)))) ;; Support.  Cancellation. 
(when (quf) (and (qqg) (not(rqg)))) ;; Support.  Cancellation. 
(when (tuf) (and (tqg) (not(uqg)))) ;; Support.  Cancellation. 
(when (vuf) (and (vqg) (not(xqg)))) ;; Support.  Cancellation. 
(when (yuf) (and (yqg) (not(zqg)))) ;; Support.  Cancellation. 
(when (bvf) (and (bsg) (not(csg)))) ;; Support.  Cancellation. 
(when (gvf) (and (gsg) (not(hsg)))) ;; Support.  Cancellation. 
(when (jvf) (and (jsg) (not(ksg)))) ;; Support.  Cancellation. 
(when (lvf) (and (lsg) (not(msg)))) ;; Support.  Cancellation. 
(when (qvf)  (qsg)) ;; Support. 
(when (rvf) (and (rsg) (not(tsg)))) ;; Support.  Cancellation. 
(when (uvf) (and (usg) (not(vsg)))) ;; Support.  Cancellation. 
(when (xvf) (and (xsg) (not(ysg)))) ;; Support.  Cancellation. 
(when (zvf) (and (zsg) (not(brg)))) ;; Support.  Cancellation. 
(when (cwf) (and (crg) (not(grg)))) ;; Support.  Cancellation. 
(when (hwf) (and (hrg) (not(jrg)))) ;; Support.  Cancellation. 
(when (kwf)  (krg)) ;; Support. 
(when (mwf) (and (mrg) (not(qrg)))) ;; Support.  Cancellation. 
(when (rwf) (and (rrg) (not(trg)))) ;; Support.  Cancellation. 
(when (uwf) (and (urg) (not(vrg)))) ;; Support.  Cancellation. 
(when (xwf) (and (xrg) (not(yrg)))) ;; Support.  Cancellation. 
(when (zwf) (and (zrg) (not(btg)))) ;; Support.  Cancellation. 
(when (cxf) (and (ctg) (not(gtg)))) ;; Support.  Cancellation. 
(when (hxf) (and (htg) (not(jtg)))) ;; Support.  Cancellation. 
(when (kxf) (and (ktg) (not(ltg)))) ;; Support.  Cancellation. 
(when (mxf) (and (mtg) (not(qtg)))) ;; Support.  Cancellation. 
(when (rxf) (and (rtg) (not(ttg)))) ;; Support.  Cancellation. 
(when (uxf) (and (utg) (not(vtg)))) ;; Support.  Cancellation. 
(when (xxf) (and (xtg) (not(ytg)))) ;; Support.  Cancellation. 
(when (zxf) (and (ztg) (not(bug)))) ;; Support.  Cancellation. 
(when (cyf) (and (cug) (not(gug)))) ;; Support.  Cancellation. 
(when (hyf) (and (hug) (not(jug)))) ;; Support.  Cancellation. 
(when (kyf) (and (kug) (not(lug)))) ;; Support.  Cancellation. 
(when (myf) (and (mug) (not(qug)))) ;; Support.  Cancellation. 
(when (ryf) (and (rug) (not(tug)))) ;; Support.  Cancellation. 
(when (uyf) (and (uug) (not(vug)))) ;; Support.  Cancellation. 
(when (xyf) (and (xug) (not(yug)))) ;; Support.  Cancellation. 
(when (zyf) (and (zug) (not(bvg)))) ;; Support.  Cancellation. 
(when (czf) (and (cvg) (not(gvg)))) ;; Support.  Cancellation. 
(when (hzf) (and (hvg) (not(jvg)))) ;; Support.  Cancellation. 
(when (kzf) (and (kvg) (not(lvg)))) ;; Support.  Cancellation. 
(when (mzf)  (mvg)) ;; Support. 
(when (rzf) (and (rvg) (not(tvg)))) ;; Support.  Cancellation. 
(when (uzf) (and (uvg) (not(vvg)))) ;; Support.  Cancellation. 
(when (zzf) (and (zvg) (not(bwg)))) ;; Support.  Cancellation. 
(when (c1f) (and (cwg) (not(gwg)))) ;; Support.  Cancellation. 
(when (h1f) (and (hwg) (not(jwg)))) ;; Support.  Cancellation. 
(when (k1f) (and (kwg) (not(lwg)))) ;; Support.  Cancellation. 
(when (m1f) (and (mwg) (not(qwg)))) ;; Support.  Cancellation. 
(when (r1f) (and (rwg) (not(twg)))) ;; Support.  Cancellation. 
(when (u1f) (and (uwg) (not(vwg)))) ;; Support.  Cancellation. 
(when (x1f) (and (xwg) (not(ywg)))) ;; Support.  Cancellation. 
(when (z1f) (and (zwg) (not(bxg)))) ;; Support.  Cancellation. 
(when (c2f) (and (cxg) (not(gxg)))) ;; Support.  Cancellation. 
(when (h2f) (and (hxg) (not(jxg)))) ;; Support.  Cancellation. 
(when (k2f) (and (kxg) (not(lxg)))) ;; Support.  Cancellation. 
(when (m2f) (and (mxg) (not(qxg)))) ;; Support.  Cancellation. 
(when (r2f) (and (rxg) (not(txg)))) ;; Support.  Cancellation. 
(when (u2f) (and (uxg) (not(vxg)))) ;; Support.  Cancellation. 
(when (x2f) (and (xxg) (not(yxg)))) ;; Support.  Cancellation. 
(when (z2f) (and (zxg) (not(byg)))) ;; Support.  Cancellation. 
(when (c3f) (and (cyg) (not(gyg)))) ;; Support.  Cancellation. 
(when (h3f) (and (hyg) (not(jyg)))) ;; Support.  Cancellation. 
(when (k3f) (and (kyg) (not(lyg)))) ;; Support.  Cancellation. 
(when (m3f) (and (myg) (not(qyg)))) ;; Support.  Cancellation. 
(when (t3f) (and (t7e) (not(qvf)))) ;; Support.  Cancellation. 
(when (not(r3f))  (not(r7e))) ;; Cancellation. 
(when (v3f) (and (v7e) (not(u7e)))) ;; Support.  Cancellation. 
(when (y3f) (and (y7e) (not(x7e)))) ;; Support.  Cancellation. 
(when (b4f) (and (b8e) (not(z7e)))) ;; Support.  Cancellation. 
(when (g4f) (and (g8e) (not(c8e)))) ;; Support.  Cancellation. 
(when (j4f) (and (j8e) (not(h8e)))) ;; Support.  Cancellation. 
(when (l4f) (and (l8e) (not(k8e)))) ;; Support.  Cancellation. 
(when (q4f) (and (q8e) (not(m8e)))) ;; Support.  Cancellation. 
(when (t4f) (and (t8e) (not(r8e)))) ;; Support.  Cancellation. 
(when (v4f) (and (v8e) (not(u8e)))) ;; Support.  Cancellation. 
(when (y4f) (and (y8e) (not(x8e)))) ;; Support.  Cancellation. 
(when (b5f) (and (b9e) (not(z8e)))) ;; Support.  Cancellation. 
(when (g5f) (and (g9e) (not(c9e)))) ;; Support.  Cancellation. 
(when (j5f) (and (j9e) (not(h9e)))) ;; Support.  Cancellation. 
(when (l5f) (and (l9e) (not(k9e)))) ;; Support.  Cancellation. 
(when (q5f) (and (q9e) (not(m9e)))) ;; Support.  Cancellation. 
(when (t5f) (and (t9e) (not(r9e)))) ;; Support.  Cancellation. 
(when (v5f) (and (v9e) (not(u9e)))) ;; Support.  Cancellation. 
(when (y5f) (and (y9e) (not(x9e)))) ;; Support.  Cancellation. 
(when (b6f) (and (b0e) (not(z9e)))) ;; Support.  Cancellation. 
(when (g6f) (and (g0e) (not(c0e)))) ;; Support.  Cancellation. 
(when (j6f) (and (j0e) (not(h0e)))) ;; Support.  Cancellation. 
(when (l6f) (and (l0e) (not(k0e)))) ;; Support.  Cancellation. 
(when (q6f) (and (q0e) (not(m0e)))) ;; Support.  Cancellation. 
(when (t6f) (and (t0e) (not(r0e)))) ;; Support.  Cancellation. 
(when (v6f) (and (v0e) (not(u0e)))) ;; Support.  Cancellation. 
(when (y6f) (and (y0e) (not(x0e)))) ;; Support.  Cancellation. 
(when (b7f) (and (baf) (not(z0e)))) ;; Support.  Cancellation. 
(when (g7f) (and (gaf) (not(caf)))) ;; Support.  Cancellation. 
(when (j7f) (and (jaf) (not(haf)))) ;; Support.  Cancellation. 
(when (l7f) (and (laf) (not(kaf)))) ;; Support.  Cancellation. 
(when (q7f) (and (qaf) (not(maf)))) ;; Support.  Cancellation. 
(when (t7f) (and (taf) (not(raf)))) ;; Support.  Cancellation. 
(when (v7f) (and (vaf) (not(uaf)))) ;; Support.  Cancellation. 
(when (y7f) (and (yaf) (not(xaf)))) ;; Support.  Cancellation. 
(when (b8f) (and (bbf) (not(zaf)))) ;; Support.  Cancellation. 
(when (g8f) (and (gbf) (not(cbf)))) ;; Support.  Cancellation. 
(when (j8f) (and (jbf) (not(hbf)))) ;; Support.  Cancellation. 
(when (l8f) (and (lbf) (not(kbf)))) ;; Support.  Cancellation. 
(when (q8f) (and (qbf) (not(mbf)))) ;; Support.  Cancellation. 
(when (t8f) (and (tbf) (not(rbf)))) ;; Support.  Cancellation. 
(when (v8f) (and (vbf) (not(ubf)))) ;; Support.  Cancellation. 
(when (y8f) (and (ybf) (not(xbf)))) ;; Support.  Cancellation. 
(when (b9f) (and (bcf) (not(zbf)))) ;; Support.  Cancellation. 
(when (g9f) (and (gcf) (not(ccf)))) ;; Support.  Cancellation. 
(when (j9f) (and (jcf) (not(hcf)))) ;; Support.  Cancellation. 
(when (l9f) (and (lcf) (not(kcf)))) ;; Support.  Cancellation. 
(when (q9f) (and (qcf) (not(mcf)))) ;; Support.  Cancellation. 
(when (t9f) (and (tcf) (not(rcf)))) ;; Support.  Cancellation. 
(when (v9f) (and (vcf) (not(ucf)))) ;; Support.  Cancellation. 
(when (y9f) (and (ycf) (not(xcf)))) ;; Support.  Cancellation. 
(when (b0f) (and (bdf) (not(zcf)))) ;; Support.  Cancellation. 
(when (g0f) (and (gdf) (not(cdf)))) ;; Support.  Cancellation. 
(when (j0f) (and (jdf) (not(hdf)))) ;; Support.  Cancellation. 
(when (l0f) (and (ldf) (not(kdf)))) ;; Support.  Cancellation. 
(when (q0f) (and (qdf) (not(mdf)))) ;; Support.  Cancellation. 
(when (t0f) (and (tdf) (not(rdf)))) ;; Support.  Cancellation. 
(when (v0f) (and (vdf) (not(udf)))) ;; Support.  Cancellation. 
(when (y0f) (and (ydf) (not(xdf)))) ;; Support.  Cancellation. 
(when (bag) (and (bef) (not(zdf)))) ;; Support.  Cancellation. 
(when (gag) (and (gef) (not(cef)))) ;; Support.  Cancellation. 
(when (jag) (and (jef) (not(hef)))) ;; Support.  Cancellation. 
(when (lag) (and (lef) (not(kef)))) ;; Support.  Cancellation. 
(when (qag) (and (qef) (not(mef)))) ;; Support.  Cancellation. 
(when (tag) (and (tef) (not(ref)))) ;; Support.  Cancellation. 
(when (vag) (and (vef) (not(uef)))) ;; Support.  Cancellation. 
(when (yag) (and (yef) (not(xef)))) ;; Support.  Cancellation. 
(when (bbg) (and (bff) (not(zef)))) ;; Support.  Cancellation. 
(when (gbg) (and (gff) (not(cff)))) ;; Support.  Cancellation. 
(when (jbg) (and (jff) (not(hff)))) ;; Support.  Cancellation. 
(when (lbg) (and (lff) (not(kff)))) ;; Support.  Cancellation. 
(when (qbg) (and (qff) (not(mff)))) ;; Support.  Cancellation. 
(when (tbg) (and (tff) (not(rff)))) ;; Support.  Cancellation. 
(when (vbg)  (vff)) ;; Support. 
(when (ybg)  (yff)) ;; Support. 
(when (bcg) (and (bgf) (not(zff)))) ;; Support.  Cancellation. 
(when (gcg) (and (ggf) (not(cgf)))) ;; Support.  Cancellation. 
(when (jcg)  (jgf)) ;; Support. 
(when (lcg) (and (lgf) (not(kgf)))) ;; Support.  Cancellation. 
(when (qcg) (and (qgf) (not(mgf)))) ;; Support.  Cancellation. 
(when (tcg)  (tgf)) ;; Support. 
(when (vcg) (and (vgf) (not(ugf)))) ;; Support.  Cancellation. 
(when (ycg) (and (ygf) (not(xgf)))) ;; Support.  Cancellation. 
(when (bdg) (and (bhf) (not(zgf)))) ;; Support.  Cancellation. 
(when (gdg) (and (ghf) (not(chf)))) ;; Support.  Cancellation. 
(when (jdg) (and (jhf) (not(hhf)))) ;; Support.  Cancellation. 
(when (ldg) (and (lhf) (not(khf)))) ;; Support.  Cancellation. 
(when (qdg) (and (qhf) (not(mhf)))) ;; Support.  Cancellation. 
(when (tdg) (and (thf) (not(rhf)))) ;; Support.  Cancellation. 
(when (vdg) (and (vhf) (not(uhf)))) ;; Support.  Cancellation. 
(when (ydg)  (yhf)) ;; Support. 
(when (beg) (and (bif) (not(zhf)))) ;; Support.  Cancellation. 
(when (geg)  (gif)) ;; Support. 
(when (jeg) (and (jif) (not(hif)))) ;; Support.  Cancellation. 
(when (leg) (and (lif) (not(kif)))) ;; Support.  Cancellation. 
(when (qeg)  (qif)) ;; Support. 
(when (reg)  (rif)) ;; Support. 
(when (ueg) (and (uif) (not(tif)))) ;; Support.  Cancellation. 
(when (xeg)  (xif)) ;; Support. 
(when (zeg) (and (zif) (not(yif)))) ;; Support.  Cancellation. 
(when (cfg)  (cjf)) ;; Support. 
(when (hfg)  (hjf)) ;; Support. 
(when (kfg)  (kjf)) ;; Support. 
(when (mfg) (and (mjf) (not(ljf)))) ;; Support.  Cancellation. 
(when (rfg) (and (rjf) (not(qjf)))) ;; Support.  Cancellation. 
(when (ufg)  (ujf)) ;; Support. 
(when (xfg)  (xjf)) ;; Support. 
(when (zfg)  (zjf)) ;; Support. 
(when (cgg)  (ckf)) ;; Support. 
(when (hgg) (and (hkf) (not(gkf)))) ;; Support.  Cancellation. 
(when (kgg) (and (kkf) (not(jkf)))) ;; Support.  Cancellation. 
(when (mgg) (and (mkf) (not(lkf)))) ;; Support.  Cancellation. 
(when (rgg) (and (rkf) (not(qkf)))) ;; Support.  Cancellation. 
(when (ugg) (and (ukf) (not(tkf)))) ;; Support.  Cancellation. 
(when (xgg) (and (xkf) (not(vkf)))) ;; Support.  Cancellation. 
(when (zgg) (and (zkf) (not(ykf)))) ;; Support.  Cancellation. 
(when (chg) (and (clf) (not(blf)))) ;; Support.  Cancellation. 
(when (hhg) (and (hlf) (not(glf)))) ;; Support.  Cancellation. 
(when (khg) (and (klf) (not(jlf)))) ;; Support.  Cancellation. 
(when (mhg) (and (mlf) (not(llf)))) ;; Support.  Cancellation. 
(when (rhg) (and (rlf) (not(qlf)))) ;; Support.  Cancellation. 
(when (uhg) (and (ulf) (not(tlf)))) ;; Support.  Cancellation. 
(when (xhg) (and (xlf) (not(vlf)))) ;; Support.  Cancellation. 
(when (zhg) (and (zlf) (not(ylf)))) ;; Support.  Cancellation. 
(when (cig) (and (cmf) (not(bmf)))) ;; Support.  Cancellation. 
(when (hig) (and (hmf) (not(gmf)))) ;; Support.  Cancellation. 
(when (kig) (and (kmf) (not(jmf)))) ;; Support.  Cancellation. 
(when (mig) (and (mmf) (not(lmf)))) ;; Support.  Cancellation. 
(when (rig) (and (rmf) (not(qmf)))) ;; Support.  Cancellation. 
(when (uig) (and (umf) (not(tmf)))) ;; Support.  Cancellation. 
(when (xig) (and (xmf) (not(vmf)))) ;; Support.  Cancellation. 
(when (zig) (and (zmf) (not(ymf)))) ;; Support.  Cancellation. 
(when (cjg) (and (cnf) (not(bnf)))) ;; Support.  Cancellation. 
(when (hjg) (and (hnf) (not(gnf)))) ;; Support.  Cancellation. 
(when (kjg) (and (knf) (not(jnf)))) ;; Support.  Cancellation. 
(when (mjg) (and (mnf) (not(lnf)))) ;; Support.  Cancellation. 
(when (rjg) (and (rnf) (not(qnf)))) ;; Support.  Cancellation. 
(when (ujg) (and (unf) (not(tnf)))) ;; Support.  Cancellation. 
(when (xjg) (and (xnf) (not(vnf)))) ;; Support.  Cancellation. 
(when (ckg) (and (cof) (not(bof)))) ;; Support.  Cancellation. 
(when (hkg) (and (hof) (not(gof)))) ;; Support.  Cancellation. 
(when (kkg) (and (kof) (not(jof)))) ;; Support.  Cancellation. 
(when (mkg) (and (mof) (not(lof)))) ;; Support.  Cancellation. 
(when (rkg) (and (rof) (not(qof)))) ;; Support.  Cancellation. 
(when (ukg)  (uof)) ;; Support. 
(when (xkg)  (xof)) ;; Support. 
(when (zkg)  (zof)) ;; Support. 
(when (clg)  (cpf)) ;; Support. 
(when (hlg)  (hpf)) ;; Support. 
(when (klg)  (kpf)) ;; Support. 
(when (mlg)  (mpf)) ;; Support. 
(when (rlg)  (rpf)) ;; Support. 
(when (ulg)  (upf)) ;; Support. 
(when (xlg)  (xpf)) ;; Support. 
(when (zlg)  (zpf)) ;; Support. 
(when (cmg)  (cqf)) ;; Support. 
(when (hmg)  (hqf)) ;; Support. 
(when (mmg)  (mqf)) ;; Support. 
(when (umg) (and (uqf) (not(tqf)))) ;; Support.  Cancellation. 
(when (xmg) (and (xqf) (not(vqf)))) ;; Support.  Cancellation. 
(when (zmg) (and (zqf) (not(yqf)))) ;; Support.  Cancellation. 
(when (cng) (and (csf) (not(bsf)))) ;; Support.  Cancellation. 
(when (hng) (and (hsf) (not(gsf)))) ;; Support.  Cancellation. 
(when (kng) (and (ksf) (not(jsf)))) ;; Support.  Cancellation. 
(when (mng) (and (msf) (not(lsf)))) ;; Support.  Cancellation. 
(when (rng) (and (rsf) (not(qsf)))) ;; Support.  Cancellation. 
(when (ung) (and (usf) (not(tsf)))) ;; Support.  Cancellation. 
(when (xng) (and (xsf) (not(vsf)))) ;; Support.  Cancellation. 
(when (zng) (and (zsf) (not(ysf)))) ;; Support.  Cancellation. 
(when (cog) (and (crf) (not(brf)))) ;; Support.  Cancellation. 
(when (hog) (and (hrf) (not(grf)))) ;; Support.  Cancellation. 
(when (kog) (and (krf) (not(jrf)))) ;; Support.  Cancellation. 
(when (mog) (and (mrf) (not(lrf)))) ;; Support.  Cancellation. 
(when (rog) (and (rrf) (not(qrf)))) ;; Support.  Cancellation. 
(when (uog) (and (urf) (not(trf)))) ;; Support.  Cancellation. 
(when (xog) (and (xrf) (not(vrf)))) ;; Support.  Cancellation. 
(when (zog) (and (zrf) (not(yrf)))) ;; Support.  Cancellation. 
(when (cpg) (and (ctf) (not(btf)))) ;; Support.  Cancellation. 
(when (kpg) (and (ktf) (not(jtf)))) ;; Support.  Cancellation. 
(when (rpg) (and (rtf) (not(qtf)))) ;; Support.  Cancellation. 
(when (upg) (and (utf) (not(ttf)))) ;; Support.  Cancellation. 
(when (xpg) (and (xtf) (not(vtf)))) ;; Support.  Cancellation. 
(when (zpg) (and (ztf) (not(ytf)))) ;; Support.  Cancellation. 
(when (cqg) (and (cuf) (not(buf)))) ;; Support.  Cancellation. 
(when (hqg) (and (huf) (not(guf)))) ;; Support.  Cancellation. 
(when (kqg) (and (kuf) (not(juf)))) ;; Support.  Cancellation. 
(when (mqg) (and (muf) (not(luf)))) ;; Support.  Cancellation. 
(when (rqg) (and (ruf) (not(quf)))) ;; Support.  Cancellation. 
(when (uqg) (and (uuf) (not(tuf)))) ;; Support.  Cancellation. 
(when (xqg) (and (xuf) (not(vuf)))) ;; Support.  Cancellation. 
(when (zqg) (and (zuf) (not(yuf)))) ;; Support.  Cancellation. 
(when (csg) (and (cvf) (not(bvf)))) ;; Support.  Cancellation. 
(when (hsg) (and (hvf) (not(gvf)))) ;; Support.  Cancellation. 
(when (ksg) (and (kvf) (not(jvf)))) ;; Support.  Cancellation. 
(when (msg) (and (mvf) (not(lvf)))) ;; Support.  Cancellation. 
(when (tsg) (and (tvf) (not(rvf)))) ;; Support.  Cancellation. 
(when (vsg) (and (vvf) (not(uvf)))) ;; Support.  Cancellation. 
(when (ysg) (and (yvf) (not(xvf)))) ;; Support.  Cancellation. 
(when (brg) (and (bwf) (not(zvf)))) ;; Support.  Cancellation. 
(when (grg) (and (gwf) (not(cwf)))) ;; Support.  Cancellation. 
(when (jrg) (and (jwf) (not(hwf)))) ;; Support.  Cancellation. 
(when (qrg) (and (qwf) (not(mwf)))) ;; Support.  Cancellation. 
(when (trg) (and (twf) (not(rwf)))) ;; Support.  Cancellation. 
(when (vrg) (and (vwf) (not(uwf)))) ;; Support.  Cancellation. 
(when (yrg) (and (ywf) (not(xwf)))) ;; Support.  Cancellation. 
(when (btg) (and (bxf) (not(zwf)))) ;; Support.  Cancellation. 
(when (gtg) (and (gxf) (not(cxf)))) ;; Support.  Cancellation. 
(when (jtg) (and (jxf) (not(hxf)))) ;; Support.  Cancellation. 
(when (ltg) (and (lxf) (not(kxf)))) ;; Support.  Cancellation. 
(when (qtg) (and (qxf) (not(mxf)))) ;; Support.  Cancellation. 
(when (ttg) (and (txf) (not(rxf)))) ;; Support.  Cancellation. 
(when (vtg) (and (vxf) (not(uxf)))) ;; Support.  Cancellation. 
(when (ytg) (and (yxf) (not(xxf)))) ;; Support.  Cancellation. 
(when (bug) (and (byf) (not(zxf)))) ;; Support.  Cancellation. 
(when (gug) (and (gyf) (not(cyf)))) ;; Support.  Cancellation. 
(when (jug) (and (jyf) (not(hyf)))) ;; Support.  Cancellation. 
(when (lug) (and (lyf) (not(kyf)))) ;; Support.  Cancellation. 
(when (qug) (and (qyf) (not(myf)))) ;; Support.  Cancellation. 
(when (tug) (and (tyf) (not(ryf)))) ;; Support.  Cancellation. 
(when (vug) (and (vyf) (not(uyf)))) ;; Support.  Cancellation. 
(when (yug) (and (yyf) (not(xyf)))) ;; Support.  Cancellation. 
(when (bvg) (and (bzf) (not(zyf)))) ;; Support.  Cancellation. 
(when (gvg) (and (gzf) (not(czf)))) ;; Support.  Cancellation. 
(when (jvg) (and (jzf) (not(hzf)))) ;; Support.  Cancellation. 
(when (lvg) (and (lzf) (not(kzf)))) ;; Support.  Cancellation. 
(when (tvg) (and (tzf) (not(rzf)))) ;; Support.  Cancellation. 
(when (vvg) (and (vzf) (not(uzf)))) ;; Support.  Cancellation. 
(when (bwg) (and (b1f) (not(zzf)))) ;; Support.  Cancellation. 
(when (gwg) (and (g1f) (not(c1f)))) ;; Support.  Cancellation. 
(when (jwg) (and (j1f) (not(h1f)))) ;; Support.  Cancellation. 
(when (lwg) (and (l1f) (not(k1f)))) ;; Support.  Cancellation. 
(when (qwg) (and (q1f) (not(m1f)))) ;; Support.  Cancellation. 
(when (twg) (and (t1f) (not(r1f)))) ;; Support.  Cancellation. 
(when (vwg) (and (v1f) (not(u1f)))) ;; Support.  Cancellation. 
(when (ywg) (and (y1f) (not(x1f)))) ;; Support.  Cancellation. 
(when (bxg) (and (b2f) (not(z1f)))) ;; Support.  Cancellation. 
(when (gxg) (and (g2f) (not(c2f)))) ;; Support.  Cancellation. 
(when (jxg) (and (j2f) (not(h2f)))) ;; Support.  Cancellation. 
(when (lxg) (and (l2f) (not(k2f)))) ;; Support.  Cancellation. 
(when (qxg) (and (q2f) (not(m2f)))) ;; Support.  Cancellation. 
(when (txg) (and (t2f) (not(r2f)))) ;; Support.  Cancellation. 
(when (vxg) (and (v2f) (not(u2f)))) ;; Support.  Cancellation. 
(when (yxg) (and (y2f) (not(x2f)))) ;; Support.  Cancellation. 
(when (byg) (and (b3f) (not(z2f)))) ;; Support.  Cancellation. 
(when (gyg) (and (g3f) (not(c3f)))) ;; Support.  Cancellation. 
(when (jyg) (and (j3f) (not(h3f)))) ;; Support.  Cancellation. 
(when (lyg) (and (l3f) (not(k3f)))) ;; Support.  Cancellation. 
))
(:action CMPSWAP_L2_L8
:parameters ()
:precondition (and (q7e))

:effect (and  (r3d) (mfk) (not(ted))
(when (qik) (and (m7e) (not(l7e)))) ;; Support.  Cancellation. 
(when (ted) (and (rmj) (not(ryj)))) ;; Support.  Cancellation. 
(when (not(ued))  (not(tmj))) ;; Cancellation. 
(when (yed)  (umj)) ;; Support. 
(when (gfd) (and (xmj) (not(ymj)))) ;; Support.  Cancellation. 
(when (lfd) (and (zmj) (not(bnj)))) ;; Support.  Cancellation. 
(when (tfd)  (cnj)) ;; Support. 
(when (yfd) (and (hnj) (not(jnj)))) ;; Support.  Cancellation. 
(when (ggd) (and (knj) (not(lnj)))) ;; Support.  Cancellation. 
(when (lgd)  (mnj)) ;; Support. 
(when (tgd)  (rnj)) ;; Support. 
(when (ygd) (and (unj) (not(vnj)))) ;; Support.  Cancellation. 
(when (ghd) (and (xnj) (not(ynj)))) ;; Support.  Cancellation. 
(when (lhd) (and (znj) (not(boj)))) ;; Support.  Cancellation. 
(when (thd) (and (coj) (not(goj)))) ;; Support.  Cancellation. 
(when (yhd)  (hoj)) ;; Support. 
(when (gid)  (koj)) ;; Support. 
(when (lid)  (moj)) ;; Support. 
(when (tid)  (roj)) ;; Support. 
(when (yid)  (uoj)) ;; Support. 
(when (gjd)  (xoj)) ;; Support. 
(when (ljd)  (zoj)) ;; Support. 
(when (tjd)  (cpj)) ;; Support. 
(when (yjd)  (hpj)) ;; Support. 
(when (gkd)  (kpj)) ;; Support. 
(when (lkd)  (mpj)) ;; Support. 
(when (tkd)  (rpj)) ;; Support. 
(when (ykd) (and (upj) (not(vpj)))) ;; Support.  Cancellation. 
(when (gld) (and (xpj) (not(ypj)))) ;; Support.  Cancellation. 
(when (lld) (and (zpj) (not(bqj)))) ;; Support.  Cancellation. 
(when (tld) (and (cqj) (not(gqj)))) ;; Support.  Cancellation. 
(when (yld) (and (hqj) (not(jqj)))) ;; Support.  Cancellation. 
(when (gmd) (and (kqj) (not(lqj)))) ;; Support.  Cancellation. 
(when (lmd) (and (mqj) (not(qqj)))) ;; Support.  Cancellation. 
(when (tmd) (and (rqj) (not(tqj)))) ;; Support.  Cancellation. 
(when (ymd)  (uqj)) ;; Support. 
(when (gnd)  (xqj)) ;; Support. 
(when (lnd)  (zqj)) ;; Support. 
(when (tnd)  (csj)) ;; Support. 
(when (ynd)  (hsj)) ;; Support. 
(when (god)  (ksj)) ;; Support. 
(when (lod)  (msj)) ;; Support. 
(when (tod)  (rsj)) ;; Support. 
(when (yod)  (usj)) ;; Support. 
(when (gpd)  (xsj)) ;; Support. 
(when (lpd)  (zsj)) ;; Support. 
(when (tpd)  (crj)) ;; Support. 
(when (ypd)  (hrj)) ;; Support. 
(when (gqd)  (krj)) ;; Support. 
(when (lqd)  (mrj)) ;; Support. 
(when (tqd)  (rrj)) ;; Support. 
(when (yqd) (and (urj) (not(vrj)))) ;; Support.  Cancellation. 
(when (gsd) (and (xrj) (not(yrj)))) ;; Support.  Cancellation. 
(when (lsd) (and (zrj) (not(btj)))) ;; Support.  Cancellation. 
(when (tsd) (and (ctj) (not(gtj)))) ;; Support.  Cancellation. 
(when (ysd) (and (htj) (not(jtj)))) ;; Support.  Cancellation. 
(when (grd) (and (ktj) (not(ltj)))) ;; Support.  Cancellation. 
(when (lrd) (and (mtj) (not(qtj)))) ;; Support.  Cancellation. 
(when (trd) (and (rtj) (not(ttj)))) ;; Support.  Cancellation. 
(when (yrd) (and (utj) (not(vtj)))) ;; Support.  Cancellation. 
(when (gtd) (and (xtj) (not(ytj)))) ;; Support.  Cancellation. 
(when (ltd) (and (ztj) (not(buj)))) ;; Support.  Cancellation. 
(when (ttd) (and (cuj) (not(guj)))) ;; Support.  Cancellation. 
(when (ytd) (and (huj) (not(juj)))) ;; Support.  Cancellation. 
(when (gud) (and (kuj) (not(luj)))) ;; Support.  Cancellation. 
(when (lud) (and (muj) (not(quj)))) ;; Support.  Cancellation. 
(when (tud) (and (ruj) (not(tuj)))) ;; Support.  Cancellation. 
(when (yvd) (and (hvj) (not(jvj)))) ;; Support.  Cancellation. 
(when (gwd) (and (kvj) (not(lvj)))) ;; Support.  Cancellation. 
(when (lwd) (and (mvj) (not(qvj)))) ;; Support.  Cancellation. 
(when (twd) (and (rvj) (not(tvj)))) ;; Support.  Cancellation. 
(when (lxd) (and (zvj) (not(bwj)))) ;; Support.  Cancellation. 
(when (txd) (and (cwj) (not(gwj)))) ;; Support.  Cancellation. 
(when (gyd) (and (kwj) (not(lwj)))) ;; Support.  Cancellation. 
(when (lyd) (and (mwj) (not(qwj)))) ;; Support.  Cancellation. 
(when (yyd) (and (uwj) (not(vwj)))) ;; Support.  Cancellation. 
(when (gzd) (and (xwj) (not(ywj)))) ;; Support.  Cancellation. 
(when (lzd) (and (zwj) (not(bxj)))) ;; Support.  Cancellation. 
(when (tzd) (and (cxj) (not(gxj)))) ;; Support.  Cancellation. 
(when (yzd) (and (hxj) (not(jxj)))) ;; Support.  Cancellation. 
(when (g1d) (and (kxj) (not(lxj)))) ;; Support.  Cancellation. 
(when (l1d) (and (mxj) (not(qxj)))) ;; Support.  Cancellation. 
(when (t1d) (and (rxj) (not(txj)))) ;; Support.  Cancellation. 
(when (v7d)  (t1j)) ;; Support. 
(when (b8d)  (v1j)) ;; Support. 
(when (j8d)  (y1j)) ;; Support. 
(when (q8d)  (b2j)) ;; Support. 
(when (v8d)  (g2j)) ;; Support. 
(when (b9d)  (j2j)) ;; Support. 
(when (j9d)  (l2j)) ;; Support. 
(when (q9d)  (q2j)) ;; Support. 
(when (v9d)  (t2j)) ;; Support. 
(when (b0d)  (v2j)) ;; Support. 
(when (j0d)  (y2j)) ;; Support. 
(when (q0d)  (b3j)) ;; Support. 
(when (v0d)  (g3j)) ;; Support. 
(when (bae)  (j3j)) ;; Support. 
(when (jae)  (l3j)) ;; Support. 
(when (qae)  (q3j)) ;; Support. 
(when (vae) (and (t3j) (not(u3j)))) ;; Support.  Cancellation. 
(when (bbe) (and (v3j) (not(x3j)))) ;; Support.  Cancellation. 
(when (jbe) (and (y3j) (not(z3j)))) ;; Support.  Cancellation. 
(when (qbe) (and (b4j) (not(c4j)))) ;; Support.  Cancellation. 
(when (vbe) (and (g4j) (not(h4j)))) ;; Support.  Cancellation. 
(when (bce) (and (j4j) (not(k4j)))) ;; Support.  Cancellation. 
(when (jce) (and (l4j) (not(m4j)))) ;; Support.  Cancellation. 
(when (qce) (and (q4j) (not(r4j)))) ;; Support.  Cancellation. 
(when (vce)  (t4j)) ;; Support. 
(when (bde)  (v4j)) ;; Support. 
(when (jde)  (y4j)) ;; Support. 
(when (qde)  (b5j)) ;; Support. 
(when (vde)  (g5j)) ;; Support. 
(when (bee)  (j5j)) ;; Support. 
(when (jee)  (l5j)) ;; Support. 
(when (qee)  (q5j)) ;; Support. 
(when (vie) (and (t7j) (not(u7j)))) ;; Support.  Cancellation. 
(when (bje) (and (v7j) (not(x7j)))) ;; Support.  Cancellation. 
(when (jje) (and (y7j) (not(z7j)))) ;; Support.  Cancellation. 
(when (qje) (and (b8j) (not(c8j)))) ;; Support.  Cancellation. 
(when (vje) (and (g8j) (not(h8j)))) ;; Support.  Cancellation. 
(when (bke) (and (j8j) (not(k8j)))) ;; Support.  Cancellation. 
(when (jke) (and (l8j) (not(m8j)))) ;; Support.  Cancellation. 
(when (qke) (and (q8j) (not(r8j)))) ;; Support.  Cancellation. 
(when (vke) (and (t8j) (not(u8j)))) ;; Support.  Cancellation. 
(when (ble) (and (v8j) (not(x8j)))) ;; Support.  Cancellation. 
(when (jle) (and (y8j) (not(z8j)))) ;; Support.  Cancellation. 
(when (qle) (and (b9j) (not(c9j)))) ;; Support.  Cancellation. 
(when (vle) (and (g9j) (not(h9j)))) ;; Support.  Cancellation. 
(when (bme) (and (j9j) (not(k9j)))) ;; Support.  Cancellation. 
(when (jme) (and (l9j) (not(m9j)))) ;; Support.  Cancellation. 
(when (qme) (and (q9j) (not(r9j)))) ;; Support.  Cancellation. 
(when (vme)  (t9j)) ;; Support. 
(when (bne)  (v9j)) ;; Support. 
(when (jne)  (y9j)) ;; Support. 
(when (qne)  (b0j)) ;; Support. 
(when (vne)  (g0j)) ;; Support. 
(when (boe)  (j0j)) ;; Support. 
(when (joe)  (l0j)) ;; Support. 
(when (qoe)  (q0j)) ;; Support. 
(when (voe)  (t0j)) ;; Support. 
(when (bpe)  (v0j)) ;; Support. 
(when (jpe)  (y0j)) ;; Support. 
(when (qpe)  (bak)) ;; Support. 
(when (vpe)  (gak)) ;; Support. 
(when (bqe)  (jak)) ;; Support. 
(when (jqe)  (lak)) ;; Support. 
(when (qqe)  (qak)) ;; Support. 
(when (vqe) (and (tak) (not(uak)))) ;; Support.  Cancellation. 
(when (bse) (and (vak) (not(xak)))) ;; Support.  Cancellation. 
(when (jse)  (yak)) ;; Support. 
(when (qse)  (bbk)) ;; Support. 
(when (vse) (and (gbk) (not(hbk)))) ;; Support.  Cancellation. 
(when (bre) (and (jbk) (not(kbk)))) ;; Support.  Cancellation. 
(when (jre)  (lbk)) ;; Support. 
(when (mre)  (qbk)) ;; Support. 
(when (tre) (and (rbk) (not(tbk)))) ;; Support.  Cancellation. 
(when (yre) (and (ubk) (not(vbk)))) ;; Support.  Cancellation. 
(when (gte) (and (xbk) (not(ybk)))) ;; Support.  Cancellation. 
(when (lte) (and (zbk) (not(bck)))) ;; Support.  Cancellation. 
(when (tte)  (cck)) ;; Support. 
(when (yte)  (hck)) ;; Support. 
(when (gue)  (kck)) ;; Support. 
(when (lue)  (mck)) ;; Support. 
(when (tue) (and (rck) (not(tck)))) ;; Support.  Cancellation. 
(when (yue) (and (uck) (not(vck)))) ;; Support.  Cancellation. 
(when (gve)  (xck)) ;; Support. 
(when (lve)  (zck)) ;; Support. 
(when (tve)  (cdk)) ;; Support. 
(when (yve)  (hdk)) ;; Support. 
(when (gwe) (and (kdk) (not(ldk)))) ;; Support.  Cancellation. 
(when (lwe) (and (mdk) (not(qdk)))) ;; Support.  Cancellation. 
(when (twe)  (rdk)) ;; Support. 
(when (ywe)  (udk)) ;; Support. 
(when (gxe)  (xdk)) ;; Support. 
(when (lxe)  (zdk)) ;; Support. 
(when (txe) (and (cek) (not(gek)))) ;; Support.  Cancellation. 
(when (yxe) (and (hek) (not(jek)))) ;; Support.  Cancellation. 
(when (gye) (and (kek) (not(lek)))) ;; Support.  Cancellation. 
(when (lye) (and (mek) (not(qek)))) ;; Support.  Cancellation. 
(when (tye)  (rek)) ;; Support. 
(when (yye)  (uek)) ;; Support. 
(when (gze)  (xek)) ;; Support. 
(when (lze)  (zek)) ;; Support. 
(when (tze)  (cfk)) ;; Support. 
(when (yze)  (hfk)) ;; Support. 
(when (g1e)  (kfk)) ;; Support. 
(when (t4e) (and (chk) (not(ghk)))) ;; Support.  Cancellation. 
(when (y4e) (and (hhk) (not(jhk)))) ;; Support.  Cancellation. 
(when (g5e) (and (khk) (not(lhk)))) ;; Support.  Cancellation. 
(when (l5e) (and (mhk) (not(qhk)))) ;; Support.  Cancellation. 
(when (y5e) (and (uhk) (not(vhk)))) ;; Support.  Cancellation. 
(when (l6e) (and (zhk) (not(bik)))) ;; Support.  Cancellation. 
(when (y6e) (and (hik) (not(jik)))) ;; Support.  Cancellation. 
(when (l7e) (and (mik) (not(qik)))) ;; Support.  Cancellation. 
(when (tmj) (and (ued) (not(mre)))) ;; Support.  Cancellation. 
(when (ymj) (and (hfd) (not(gfd)))) ;; Support.  Cancellation. 
(when (bnj) (and (mfd) (not(lfd)))) ;; Support.  Cancellation. 
(when (jnj) (and (zfd) (not(yfd)))) ;; Support.  Cancellation. 
(when (lnj) (and (hgd) (not(ggd)))) ;; Support.  Cancellation. 
(when (vnj) (and (zgd) (not(ygd)))) ;; Support.  Cancellation. 
(when (ynj) (and (hhd) (not(ghd)))) ;; Support.  Cancellation. 
(when (boj) (and (mhd) (not(lhd)))) ;; Support.  Cancellation. 
(when (goj) (and (uhd) (not(thd)))) ;; Support.  Cancellation. 
(when (vpj) (and (zkd) (not(ykd)))) ;; Support.  Cancellation. 
(when (ypj) (and (hld) (not(gld)))) ;; Support.  Cancellation. 
(when (bqj) (and (mld) (not(lld)))) ;; Support.  Cancellation. 
(when (gqj) (and (uld) (not(tld)))) ;; Support.  Cancellation. 
(when (jqj) (and (zld) (not(yld)))) ;; Support.  Cancellation. 
(when (lqj) (and (hmd) (not(gmd)))) ;; Support.  Cancellation. 
(when (qqj) (and (mmd) (not(lmd)))) ;; Support.  Cancellation. 
(when (tqj) (and (umd) (not(tmd)))) ;; Support.  Cancellation. 
(when (vrj) (and (zqd) (not(yqd)))) ;; Support.  Cancellation. 
(when (yrj) (and (hsd) (not(gsd)))) ;; Support.  Cancellation. 
(when (btj) (and (msd) (not(lsd)))) ;; Support.  Cancellation. 
(when (gtj) (and (usd) (not(tsd)))) ;; Support.  Cancellation. 
(when (jtj) (and (zsd) (not(ysd)))) ;; Support.  Cancellation. 
(when (ltj) (and (hrd) (not(grd)))) ;; Support.  Cancellation. 
(when (qtj) (and (mrd) (not(lrd)))) ;; Support.  Cancellation. 
(when (ttj) (and (urd) (not(trd)))) ;; Support.  Cancellation. 
(when (vtj) (and (zrd) (not(yrd)))) ;; Support.  Cancellation. 
(when (ytj) (and (htd) (not(gtd)))) ;; Support.  Cancellation. 
(when (buj) (and (mtd) (not(ltd)))) ;; Support.  Cancellation. 
(when (guj) (and (utd) (not(ttd)))) ;; Support.  Cancellation. 
(when (juj) (and (ztd) (not(ytd)))) ;; Support.  Cancellation. 
(when (luj) (and (hud) (not(gud)))) ;; Support.  Cancellation. 
(when (quj) (and (mud) (not(lud)))) ;; Support.  Cancellation. 
(when (tuj) (and (uud) (not(tud)))) ;; Support.  Cancellation. 
(when (vuj)  (zud)) ;; Support. 
(when (yuj)  (hvd)) ;; Support. 
(when (bvj)  (mvd)) ;; Support. 
(when (gvj)  (uvd)) ;; Support. 
(when (jvj) (and (zvd) (not(yvd)))) ;; Support.  Cancellation. 
(when (lvj) (and (hwd) (not(gwd)))) ;; Support.  Cancellation. 
(when (qvj) (and (mwd) (not(lwd)))) ;; Support.  Cancellation. 
(when (tvj) (and (uwd) (not(twd)))) ;; Support.  Cancellation. 
(when (vvj)  (zwd)) ;; Support. 
(when (yvj)  (hxd)) ;; Support. 
(when (bwj) (and (mxd) (not(lxd)))) ;; Support.  Cancellation. 
(when (gwj) (and (uxd) (not(txd)))) ;; Support.  Cancellation. 
(when (jwj)  (zxd)) ;; Support. 
(when (lwj) (and (hyd) (not(gyd)))) ;; Support.  Cancellation. 
(when (qwj) (and (myd) (not(lyd)))) ;; Support.  Cancellation. 
(when (twj)  (uyd)) ;; Support. 
(when (vwj) (and (zyd) (not(yyd)))) ;; Support.  Cancellation. 
(when (ywj) (and (hzd) (not(gzd)))) ;; Support.  Cancellation. 
(when (bxj) (and (mzd) (not(lzd)))) ;; Support.  Cancellation. 
(when (gxj) (and (uzd) (not(tzd)))) ;; Support.  Cancellation. 
(when (jxj) (and (zzd) (not(yzd)))) ;; Support.  Cancellation. 
(when (lxj) (and (h1d) (not(g1d)))) ;; Support.  Cancellation. 
(when (qxj) (and (m1d) (not(l1d)))) ;; Support.  Cancellation. 
(when (txj) (and (u1d) (not(t1d)))) ;; Support.  Cancellation. 
(when (vxj)  (z1d)) ;; Support. 
(when (yxj)  (h2d)) ;; Support. 
(when (byj)  (m2d)) ;; Support. 
(when (gyj)  (u2d)) ;; Support. 
(when (jyj)  (z2d)) ;; Support. 
(when (lyj)  (h3d)) ;; Support. 
(when (qyj)  (m3d)) ;; Support. 
(when (u3j) (and (xae) (not(vae)))) ;; Support.  Cancellation. 
(when (x3j) (and (cbe) (not(bbe)))) ;; Support.  Cancellation. 
(when (z3j) (and (kbe) (not(jbe)))) ;; Support.  Cancellation. 
(when (c4j) (and (rbe) (not(qbe)))) ;; Support.  Cancellation. 
(when (h4j) (and (xbe) (not(vbe)))) ;; Support.  Cancellation. 
(when (k4j) (and (cce) (not(bce)))) ;; Support.  Cancellation. 
(when (m4j) (and (kce) (not(jce)))) ;; Support.  Cancellation. 
(when (r4j) (and (rce) (not(qce)))) ;; Support.  Cancellation. 
(when (u5j)  (xee)) ;; Support. 
(when (x5j)  (cfe)) ;; Support. 
(when (z5j)  (kfe)) ;; Support. 
(when (c6j)  (rfe)) ;; Support. 
(when (h6j)  (xfe)) ;; Support. 
(when (k6j)  (cge)) ;; Support. 
(when (m6j)  (kge)) ;; Support. 
(when (r6j)  (rge)) ;; Support. 
(when (u7j) (and (xie) (not(vie)))) ;; Support.  Cancellation. 
(when (x7j) (and (cje) (not(bje)))) ;; Support.  Cancellation. 
(when (z7j) (and (kje) (not(jje)))) ;; Support.  Cancellation. 
(when (c8j) (and (rje) (not(qje)))) ;; Support.  Cancellation. 
(when (h8j) (and (xje) (not(vje)))) ;; Support.  Cancellation. 
(when (k8j) (and (cke) (not(bke)))) ;; Support.  Cancellation. 
(when (m8j) (and (kke) (not(jke)))) ;; Support.  Cancellation. 
(when (r8j) (and (rke) (not(qke)))) ;; Support.  Cancellation. 
(when (u8j) (and (xke) (not(vke)))) ;; Support.  Cancellation. 
(when (x8j) (and (cle) (not(ble)))) ;; Support.  Cancellation. 
(when (z8j) (and (kle) (not(jle)))) ;; Support.  Cancellation. 
(when (c9j) (and (rle) (not(qle)))) ;; Support.  Cancellation. 
(when (h9j) (and (xle) (not(vle)))) ;; Support.  Cancellation. 
(when (k9j) (and (cme) (not(bme)))) ;; Support.  Cancellation. 
(when (m9j) (and (kme) (not(jme)))) ;; Support.  Cancellation. 
(when (r9j) (and (rme) (not(qme)))) ;; Support.  Cancellation. 
(when (uak) (and (xqe) (not(vqe)))) ;; Support.  Cancellation. 
(when (xak) (and (cse) (not(bse)))) ;; Support.  Cancellation. 
(when (hbk) (and (xse) (not(vse)))) ;; Support.  Cancellation. 
(when (kbk) (and (cre) (not(bre)))) ;; Support.  Cancellation. 
(when (tbk) (and (ure) (not(tre)))) ;; Support.  Cancellation. 
(when (vbk) (and (zre) (not(yre)))) ;; Support.  Cancellation. 
(when (ybk) (and (hte) (not(gte)))) ;; Support.  Cancellation. 
(when (bck) (and (mte) (not(lte)))) ;; Support.  Cancellation. 
(when (tck) (and (uue) (not(tue)))) ;; Support.  Cancellation. 
(when (vck) (and (zue) (not(yue)))) ;; Support.  Cancellation. 
(when (ldk) (and (hwe) (not(gwe)))) ;; Support.  Cancellation. 
(when (qdk) (and (mwe) (not(lwe)))) ;; Support.  Cancellation. 
(when (gek) (and (uxe) (not(txe)))) ;; Support.  Cancellation. 
(when (jek) (and (zxe) (not(yxe)))) ;; Support.  Cancellation. 
(when (lek) (and (hye) (not(gye)))) ;; Support.  Cancellation. 
(when (qek) (and (mye) (not(lye)))) ;; Support.  Cancellation. 
(when (tgk)  (u3e)) ;; Support. 
(when (vgk)  (z3e)) ;; Support. 
(when (ygk)  (h4e)) ;; Support. 
(when (bhk)  (m4e)) ;; Support. 
(when (ghk) (and (u4e) (not(t4e)))) ;; Support.  Cancellation. 
(when (jhk) (and (z4e) (not(y4e)))) ;; Support.  Cancellation. 
(when (lhk) (and (h5e) (not(g5e)))) ;; Support.  Cancellation. 
(when (qhk) (and (m5e) (not(l5e)))) ;; Support.  Cancellation. 
(when (thk)  (u5e)) ;; Support. 
(when (vhk) (and (z5e) (not(y5e)))) ;; Support.  Cancellation. 
(when (yhk)  (h6e)) ;; Support. 
(when (bik) (and (m6e) (not(l6e)))) ;; Support.  Cancellation. 
(when (gik)  (u6e)) ;; Support. 
(when (jik) (and (z6e) (not(y6e)))) ;; Support.  Cancellation. 
(when (lik)  (h7e)) ;; Support. 
))
(:action CMPSWAP_L2_L7
:parameters ()
:precondition (and (q7e))

:effect (and  (mjj) (c5d)
(when (qmj) (and (m7e) (not(l7e)))) ;; Support.  Cancellation. 
(when (ted) (and (rqi) (not(r3i)))) ;; Support.  Cancellation. 
(when (not(ued))  (not(tqi))) ;; Cancellation. 
(when (yed) (and (uqi) (not(vqi)))) ;; Support.  Cancellation. 
(when (gfd) (and (xqi) (not(yqi)))) ;; Support.  Cancellation. 
(when (lfd) (and (zqi) (not(bsi)))) ;; Support.  Cancellation. 
(when (tfd) (and (csi) (not(gsi)))) ;; Support.  Cancellation. 
(when (yfd) (and (hsi) (not(jsi)))) ;; Support.  Cancellation. 
(when (ggd) (and (ksi) (not(lsi)))) ;; Support.  Cancellation. 
(when (lgd) (and (msi) (not(qsi)))) ;; Support.  Cancellation. 
(when (tgd) (and (rsi) (not(tsi)))) ;; Support.  Cancellation. 
(when (ygd) (and (usi) (not(vsi)))) ;; Support.  Cancellation. 
(when (ghd) (and (xsi) (not(ysi)))) ;; Support.  Cancellation. 
(when (lhd) (and (zsi) (not(bri)))) ;; Support.  Cancellation. 
(when (thd) (and (cri) (not(gri)))) ;; Support.  Cancellation. 
(when (yhd) (and (hri) (not(jri)))) ;; Support.  Cancellation. 
(when (gid) (and (kri) (not(lri)))) ;; Support.  Cancellation. 
(when (lid) (and (mri) (not(qri)))) ;; Support.  Cancellation. 
(when (tid) (and (rri) (not(tri)))) ;; Support.  Cancellation. 
(when (yid) (and (uri) (not(vri)))) ;; Support.  Cancellation. 
(when (gjd) (and (xri) (not(yri)))) ;; Support.  Cancellation. 
(when (ljd) (and (zri) (not(bti)))) ;; Support.  Cancellation. 
(when (tjd) (and (cti) (not(gti)))) ;; Support.  Cancellation. 
(when (yjd) (and (hti) (not(jti)))) ;; Support.  Cancellation. 
(when (gkd) (and (kti) (not(lti)))) ;; Support.  Cancellation. 
(when (lkd) (and (mti) (not(qti)))) ;; Support.  Cancellation. 
(when (tkd) (and (rti) (not(tti)))) ;; Support.  Cancellation. 
(when (ykd) (and (uti) (not(vti)))) ;; Support.  Cancellation. 
(when (gld) (and (xti) (not(yti)))) ;; Support.  Cancellation. 
(when (lld) (and (zti) (not(bui)))) ;; Support.  Cancellation. 
(when (tld) (and (cui) (not(gui)))) ;; Support.  Cancellation. 
(when (yld) (and (hui) (not(jui)))) ;; Support.  Cancellation. 
(when (gmd) (and (kui) (not(lui)))) ;; Support.  Cancellation. 
(when (lmd) (and (mui) (not(qui)))) ;; Support.  Cancellation. 
(when (tmd) (and (rui) (not(tui)))) ;; Support.  Cancellation. 
(when (ymd) (and (uui) (not(vui)))) ;; Support.  Cancellation. 
(when (gnd) (and (xui) (not(yui)))) ;; Support.  Cancellation. 
(when (lnd) (and (zui) (not(bvi)))) ;; Support.  Cancellation. 
(when (tnd) (and (cvi) (not(gvi)))) ;; Support.  Cancellation. 
(when (ynd) (and (hvi) (not(jvi)))) ;; Support.  Cancellation. 
(when (god) (and (kvi) (not(lvi)))) ;; Support.  Cancellation. 
(when (lod) (and (mvi) (not(qvi)))) ;; Support.  Cancellation. 
(when (tod) (and (rvi) (not(tvi)))) ;; Support.  Cancellation. 
(when (yod) (and (uvi) (not(vvi)))) ;; Support.  Cancellation. 
(when (gpd) (and (xvi) (not(yvi)))) ;; Support.  Cancellation. 
(when (lpd) (and (zvi) (not(bwi)))) ;; Support.  Cancellation. 
(when (tpd) (and (cwi) (not(gwi)))) ;; Support.  Cancellation. 
(when (ypd) (and (hwi) (not(jwi)))) ;; Support.  Cancellation. 
(when (gqd) (and (kwi) (not(lwi)))) ;; Support.  Cancellation. 
(when (lqd) (and (mwi) (not(qwi)))) ;; Support.  Cancellation. 
(when (tqd) (and (rwi) (not(twi)))) ;; Support.  Cancellation. 
(when (yqd) (and (uwi) (not(vwi)))) ;; Support.  Cancellation. 
(when (gsd) (and (xwi) (not(ywi)))) ;; Support.  Cancellation. 
(when (lsd) (and (zwi) (not(bxi)))) ;; Support.  Cancellation. 
(when (tsd) (and (cxi) (not(gxi)))) ;; Support.  Cancellation. 
(when (ysd) (and (hxi) (not(jxi)))) ;; Support.  Cancellation. 
(when (grd) (and (kxi) (not(lxi)))) ;; Support.  Cancellation. 
(when (lrd) (and (mxi) (not(qxi)))) ;; Support.  Cancellation. 
(when (trd) (and (rxi) (not(txi)))) ;; Support.  Cancellation. 
(when (yrd) (and (uxi) (not(vxi)))) ;; Support.  Cancellation. 
(when (gtd) (and (xxi) (not(yxi)))) ;; Support.  Cancellation. 
(when (ltd) (and (zxi) (not(byi)))) ;; Support.  Cancellation. 
(when (ttd) (and (cyi) (not(gyi)))) ;; Support.  Cancellation. 
(when (ytd) (and (hyi) (not(jyi)))) ;; Support.  Cancellation. 
(when (gud) (and (kyi) (not(lyi)))) ;; Support.  Cancellation. 
(when (lud) (and (myi) (not(qyi)))) ;; Support.  Cancellation. 
(when (tud) (and (ryi) (not(tyi)))) ;; Support.  Cancellation. 
(when (yvd) (and (hzi) (not(jzi)))) ;; Support.  Cancellation. 
(when (gwd) (and (kzi) (not(lzi)))) ;; Support.  Cancellation. 
(when (lwd) (and (mzi) (not(qzi)))) ;; Support.  Cancellation. 
(when (twd) (and (rzi) (not(tzi)))) ;; Support.  Cancellation. 
(when (lxd) (and (zzi) (not(b1i)))) ;; Support.  Cancellation. 
(when (txd) (and (c1i) (not(g1i)))) ;; Support.  Cancellation. 
(when (gyd) (and (k1i) (not(l1i)))) ;; Support.  Cancellation. 
(when (lyd) (and (m1i) (not(q1i)))) ;; Support.  Cancellation. 
(when (yyd) (and (u1i) (not(v1i)))) ;; Support.  Cancellation. 
(when (gzd) (and (x1i) (not(y1i)))) ;; Support.  Cancellation. 
(when (lzd) (and (z1i) (not(b2i)))) ;; Support.  Cancellation. 
(when (tzd) (and (c2i) (not(g2i)))) ;; Support.  Cancellation. 
(when (yzd) (and (h2i) (not(j2i)))) ;; Support.  Cancellation. 
(when (g1d) (and (k2i) (not(l2i)))) ;; Support.  Cancellation. 
(when (l1d) (and (m2i) (not(q2i)))) ;; Support.  Cancellation. 
(when (t1d) (and (r2i) (not(t2i)))) ;; Support.  Cancellation. 
(when (v7d) (and (t5i) (not(u5i)))) ;; Support.  Cancellation. 
(when (b8d) (and (v5i) (not(x5i)))) ;; Support.  Cancellation. 
(when (j8d) (and (y5i) (not(z5i)))) ;; Support.  Cancellation. 
(when (q8d) (and (b6i) (not(c6i)))) ;; Support.  Cancellation. 
(when (v8d) (and (g6i) (not(h6i)))) ;; Support.  Cancellation. 
(when (b9d) (and (j6i) (not(k6i)))) ;; Support.  Cancellation. 
(when (j9d) (and (l6i) (not(m6i)))) ;; Support.  Cancellation. 
(when (q9d) (and (q6i) (not(r6i)))) ;; Support.  Cancellation. 
(when (v9d) (and (t6i) (not(u6i)))) ;; Support.  Cancellation. 
(when (b0d) (and (v6i) (not(x6i)))) ;; Support.  Cancellation. 
(when (j0d) (and (y6i) (not(z6i)))) ;; Support.  Cancellation. 
(when (q0d) (and (b7i) (not(c7i)))) ;; Support.  Cancellation. 
(when (v0d) (and (g7i) (not(h7i)))) ;; Support.  Cancellation. 
(when (bae) (and (j7i) (not(k7i)))) ;; Support.  Cancellation. 
(when (jae) (and (l7i) (not(m7i)))) ;; Support.  Cancellation. 
(when (qae) (and (q7i) (not(r7i)))) ;; Support.  Cancellation. 
(when (vae) (and (t7i) (not(u7i)))) ;; Support.  Cancellation. 
(when (bbe) (and (v7i) (not(x7i)))) ;; Support.  Cancellation. 
(when (jbe) (and (y7i) (not(z7i)))) ;; Support.  Cancellation. 
(when (qbe) (and (b8i) (not(c8i)))) ;; Support.  Cancellation. 
(when (vbe) (and (g8i) (not(h8i)))) ;; Support.  Cancellation. 
(when (bce) (and (j8i) (not(k8i)))) ;; Support.  Cancellation. 
(when (jce) (and (l8i) (not(m8i)))) ;; Support.  Cancellation. 
(when (qce) (and (q8i) (not(r8i)))) ;; Support.  Cancellation. 
(when (vce)  (t8i)) ;; Support. 
(when (bde)  (v8i)) ;; Support. 
(when (jde)  (y8i)) ;; Support. 
(when (qde)  (b9i)) ;; Support. 
(when (vde)  (g9i)) ;; Support. 
(when (bee)  (j9i)) ;; Support. 
(when (jee)  (l9i)) ;; Support. 
(when (qee)  (q9i)) ;; Support. 
(when (vie) (and (taj) (not(uaj)))) ;; Support.  Cancellation. 
(when (bje) (and (vaj) (not(xaj)))) ;; Support.  Cancellation. 
(when (jje) (and (yaj) (not(zaj)))) ;; Support.  Cancellation. 
(when (qje) (and (bbj) (not(cbj)))) ;; Support.  Cancellation. 
(when (vje) (and (gbj) (not(hbj)))) ;; Support.  Cancellation. 
(when (bke) (and (jbj) (not(kbj)))) ;; Support.  Cancellation. 
(when (jke) (and (lbj) (not(mbj)))) ;; Support.  Cancellation. 
(when (qke) (and (qbj) (not(rbj)))) ;; Support.  Cancellation. 
(when (vke) (and (tbj) (not(ubj)))) ;; Support.  Cancellation. 
(when (ble) (and (vbj) (not(xbj)))) ;; Support.  Cancellation. 
(when (jle) (and (ybj) (not(zbj)))) ;; Support.  Cancellation. 
(when (qle) (and (bcj) (not(ccj)))) ;; Support.  Cancellation. 
(when (vle) (and (gcj) (not(hcj)))) ;; Support.  Cancellation. 
(when (bme) (and (jcj) (not(kcj)))) ;; Support.  Cancellation. 
(when (jme) (and (lcj) (not(mcj)))) ;; Support.  Cancellation. 
(when (qme) (and (qcj) (not(rcj)))) ;; Support.  Cancellation. 
(when (vme)  (tcj)) ;; Support. 
(when (bne)  (vcj)) ;; Support. 
(when (jne)  (ycj)) ;; Support. 
(when (qne)  (bdj)) ;; Support. 
(when (vne)  (gdj)) ;; Support. 
(when (boe)  (jdj)) ;; Support. 
(when (joe)  (ldj)) ;; Support. 
(when (qoe)  (qdj)) ;; Support. 
(when (voe)  (tdj)) ;; Support. 
(when (bpe)  (vdj)) ;; Support. 
(when (jpe)  (ydj)) ;; Support. 
(when (qpe)  (bej)) ;; Support. 
(when (vpe)  (gej)) ;; Support. 
(when (bqe)  (jej)) ;; Support. 
(when (jqe)  (lej)) ;; Support. 
(when (qqe)  (qej)) ;; Support. 
(when (vqe) (and (tej) (not(uej)))) ;; Support.  Cancellation. 
(when (bse) (and (vej) (not(xej)))) ;; Support.  Cancellation. 
(when (jse)  (yej)) ;; Support. 
(when (qse)  (bfj)) ;; Support. 
(when (vse) (and (gfj) (not(hfj)))) ;; Support.  Cancellation. 
(when (bre) (and (jfj) (not(kfj)))) ;; Support.  Cancellation. 
(when (jre)  (lfj)) ;; Support. 
(when (mre)  (qfj)) ;; Support. 
(when (tre) (and (rfj) (not(tfj)))) ;; Support.  Cancellation. 
(when (yre) (and (ufj) (not(vfj)))) ;; Support.  Cancellation. 
(when (gte) (and (xfj) (not(yfj)))) ;; Support.  Cancellation. 
(when (lte) (and (zfj) (not(bgj)))) ;; Support.  Cancellation. 
(when (tte)  (cgj)) ;; Support. 
(when (yte)  (hgj)) ;; Support. 
(when (gue)  (kgj)) ;; Support. 
(when (lue)  (mgj)) ;; Support. 
(when (tue) (and (rgj) (not(tgj)))) ;; Support.  Cancellation. 
(when (yue) (and (ugj) (not(vgj)))) ;; Support.  Cancellation. 
(when (gve)  (xgj)) ;; Support. 
(when (lve)  (zgj)) ;; Support. 
(when (tve)  (chj)) ;; Support. 
(when (yve)  (hhj)) ;; Support. 
(when (gwe) (and (khj) (not(lhj)))) ;; Support.  Cancellation. 
(when (lwe) (and (mhj) (not(qhj)))) ;; Support.  Cancellation. 
(when (twe)  (rhj)) ;; Support. 
(when (ywe)  (uhj)) ;; Support. 
(when (gxe)  (xhj)) ;; Support. 
(when (lxe)  (zhj)) ;; Support. 
(when (txe) (and (cij) (not(gij)))) ;; Support.  Cancellation. 
(when (yxe) (and (hij) (not(jij)))) ;; Support.  Cancellation. 
(when (gye) (and (kij) (not(lij)))) ;; Support.  Cancellation. 
(when (lye) (and (mij) (not(qij)))) ;; Support.  Cancellation. 
(when (tye)  (rij)) ;; Support. 
(when (yye)  (uij)) ;; Support. 
(when (gze)  (xij)) ;; Support. 
(when (lze)  (zij)) ;; Support. 
(when (tze)  (cjj)) ;; Support. 
(when (yze)  (hjj)) ;; Support. 
(when (g1e)  (kjj)) ;; Support. 
(when (t4e) (and (clj) (not(glj)))) ;; Support.  Cancellation. 
(when (y4e) (and (hlj) (not(jlj)))) ;; Support.  Cancellation. 
(when (g5e) (and (klj) (not(llj)))) ;; Support.  Cancellation. 
(when (l5e) (and (mlj) (not(qlj)))) ;; Support.  Cancellation. 
(when (y5e) (and (ulj) (not(vlj)))) ;; Support.  Cancellation. 
(when (l6e) (and (zlj) (not(bmj)))) ;; Support.  Cancellation. 
(when (y6e) (and (hmj) (not(jmj)))) ;; Support.  Cancellation. 
(when (l7e) (and (mmj) (not(qmj)))) ;; Support.  Cancellation. 
(when (tqi) (and (ued) (not(mre)))) ;; Support.  Cancellation. 
(when (not(rqi))  (not(ted))) ;; Cancellation. 
(when (vqi) (and (zed) (not(yed)))) ;; Support.  Cancellation. 
(when (yqi) (and (hfd) (not(gfd)))) ;; Support.  Cancellation. 
(when (bsi) (and (mfd) (not(lfd)))) ;; Support.  Cancellation. 
(when (gsi) (and (ufd) (not(tfd)))) ;; Support.  Cancellation. 
(when (jsi) (and (zfd) (not(yfd)))) ;; Support.  Cancellation. 
(when (lsi) (and (hgd) (not(ggd)))) ;; Support.  Cancellation. 
(when (qsi) (and (mgd) (not(lgd)))) ;; Support.  Cancellation. 
(when (tsi) (and (ugd) (not(tgd)))) ;; Support.  Cancellation. 
(when (vsi) (and (zgd) (not(ygd)))) ;; Support.  Cancellation. 
(when (ysi) (and (hhd) (not(ghd)))) ;; Support.  Cancellation. 
(when (bri) (and (mhd) (not(lhd)))) ;; Support.  Cancellation. 
(when (gri) (and (uhd) (not(thd)))) ;; Support.  Cancellation. 
(when (jri) (and (zhd) (not(yhd)))) ;; Support.  Cancellation. 
(when (lri) (and (hid) (not(gid)))) ;; Support.  Cancellation. 
(when (qri) (and (mid) (not(lid)))) ;; Support.  Cancellation. 
(when (tri) (and (uid) (not(tid)))) ;; Support.  Cancellation. 
(when (vri) (and (zid) (not(yid)))) ;; Support.  Cancellation. 
(when (yri) (and (hjd) (not(gjd)))) ;; Support.  Cancellation. 
(when (bti) (and (mjd) (not(ljd)))) ;; Support.  Cancellation. 
(when (gti) (and (ujd) (not(tjd)))) ;; Support.  Cancellation. 
(when (jti) (and (zjd) (not(yjd)))) ;; Support.  Cancellation. 
(when (lti) (and (hkd) (not(gkd)))) ;; Support.  Cancellation. 
(when (qti) (and (mkd) (not(lkd)))) ;; Support.  Cancellation. 
(when (tti) (and (ukd) (not(tkd)))) ;; Support.  Cancellation. 
(when (vti) (and (zkd) (not(ykd)))) ;; Support.  Cancellation. 
(when (yti) (and (hld) (not(gld)))) ;; Support.  Cancellation. 
(when (bui) (and (mld) (not(lld)))) ;; Support.  Cancellation. 
(when (gui) (and (uld) (not(tld)))) ;; Support.  Cancellation. 
(when (jui) (and (zld) (not(yld)))) ;; Support.  Cancellation. 
(when (lui) (and (hmd) (not(gmd)))) ;; Support.  Cancellation. 
(when (qui) (and (mmd) (not(lmd)))) ;; Support.  Cancellation. 
(when (tui) (and (umd) (not(tmd)))) ;; Support.  Cancellation. 
(when (vui) (and (zmd) (not(ymd)))) ;; Support.  Cancellation. 
(when (yui) (and (hnd) (not(gnd)))) ;; Support.  Cancellation. 
(when (bvi) (and (mnd) (not(lnd)))) ;; Support.  Cancellation. 
(when (gvi) (and (und) (not(tnd)))) ;; Support.  Cancellation. 
(when (jvi) (and (znd) (not(ynd)))) ;; Support.  Cancellation. 
(when (lvi) (and (hod) (not(god)))) ;; Support.  Cancellation. 
(when (qvi) (and (mod) (not(lod)))) ;; Support.  Cancellation. 
(when (tvi) (and (uod) (not(tod)))) ;; Support.  Cancellation. 
(when (vvi) (and (zod) (not(yod)))) ;; Support.  Cancellation. 
(when (yvi) (and (hpd) (not(gpd)))) ;; Support.  Cancellation. 
(when (bwi) (and (mpd) (not(lpd)))) ;; Support.  Cancellation. 
(when (gwi) (and (upd) (not(tpd)))) ;; Support.  Cancellation. 
(when (jwi) (and (zpd) (not(ypd)))) ;; Support.  Cancellation. 
(when (lwi) (and (hqd) (not(gqd)))) ;; Support.  Cancellation. 
(when (qwi) (and (mqd) (not(lqd)))) ;; Support.  Cancellation. 
(when (twi) (and (uqd) (not(tqd)))) ;; Support.  Cancellation. 
(when (vwi) (and (zqd) (not(yqd)))) ;; Support.  Cancellation. 
(when (ywi) (and (hsd) (not(gsd)))) ;; Support.  Cancellation. 
(when (bxi) (and (msd) (not(lsd)))) ;; Support.  Cancellation. 
(when (gxi) (and (usd) (not(tsd)))) ;; Support.  Cancellation. 
(when (jxi) (and (zsd) (not(ysd)))) ;; Support.  Cancellation. 
(when (lxi) (and (hrd) (not(grd)))) ;; Support.  Cancellation. 
(when (qxi) (and (mrd) (not(lrd)))) ;; Support.  Cancellation. 
(when (txi) (and (urd) (not(trd)))) ;; Support.  Cancellation. 
(when (vxi) (and (zrd) (not(yrd)))) ;; Support.  Cancellation. 
(when (yxi) (and (htd) (not(gtd)))) ;; Support.  Cancellation. 
(when (byi) (and (mtd) (not(ltd)))) ;; Support.  Cancellation. 
(when (gyi) (and (utd) (not(ttd)))) ;; Support.  Cancellation. 
(when (jyi) (and (ztd) (not(ytd)))) ;; Support.  Cancellation. 
(when (lyi) (and (hud) (not(gud)))) ;; Support.  Cancellation. 
(when (qyi) (and (mud) (not(lud)))) ;; Support.  Cancellation. 
(when (tyi) (and (uud) (not(tud)))) ;; Support.  Cancellation. 
(when (vyi)  (zud)) ;; Support. 
(when (yyi)  (hvd)) ;; Support. 
(when (bzi)  (mvd)) ;; Support. 
(when (gzi)  (uvd)) ;; Support. 
(when (jzi) (and (zvd) (not(yvd)))) ;; Support.  Cancellation. 
(when (lzi) (and (hwd) (not(gwd)))) ;; Support.  Cancellation. 
(when (qzi) (and (mwd) (not(lwd)))) ;; Support.  Cancellation. 
(when (tzi) (and (uwd) (not(twd)))) ;; Support.  Cancellation. 
(when (vzi)  (zwd)) ;; Support. 
(when (yzi)  (hxd)) ;; Support. 
(when (b1i) (and (mxd) (not(lxd)))) ;; Support.  Cancellation. 
(when (g1i) (and (uxd) (not(txd)))) ;; Support.  Cancellation. 
(when (j1i)  (zxd)) ;; Support. 
(when (l1i) (and (hyd) (not(gyd)))) ;; Support.  Cancellation. 
(when (q1i) (and (myd) (not(lyd)))) ;; Support.  Cancellation. 
(when (t1i)  (uyd)) ;; Support. 
(when (v1i) (and (zyd) (not(yyd)))) ;; Support.  Cancellation. 
(when (y1i) (and (hzd) (not(gzd)))) ;; Support.  Cancellation. 
(when (b2i) (and (mzd) (not(lzd)))) ;; Support.  Cancellation. 
(when (g2i) (and (uzd) (not(tzd)))) ;; Support.  Cancellation. 
(when (j2i) (and (zzd) (not(yzd)))) ;; Support.  Cancellation. 
(when (l2i) (and (h1d) (not(g1d)))) ;; Support.  Cancellation. 
(when (q2i) (and (m1d) (not(l1d)))) ;; Support.  Cancellation. 
(when (t2i) (and (u1d) (not(t1d)))) ;; Support.  Cancellation. 
(when (v2i)  (z1d)) ;; Support. 
(when (y2i)  (h2d)) ;; Support. 
(when (b3i)  (m2d)) ;; Support. 
(when (g3i)  (u2d)) ;; Support. 
(when (j3i)  (z2d)) ;; Support. 
(when (l3i)  (h3d)) ;; Support. 
(when (q3i)  (m3d)) ;; Support. 
(when (r3i)  (r3d)) ;; Support. 
(when (u3i)  (x3d)) ;; Support. 
(when (x3i)  (c4d)) ;; Support. 
(when (z3i)  (k4d)) ;; Support. 
(when (c4i)  (r4d)) ;; Support. 
(when (h4i)  (x4d)) ;; Support. 
(when (m4i)  (k5d)) ;; Support. 
(when (r4i)  (r5d)) ;; Support. 
(when (u4i)  (x5d)) ;; Support. 
(when (x4i)  (c6d)) ;; Support. 
(when (z4i)  (k6d)) ;; Support. 
(when (c5i)  (r6d)) ;; Support. 
(when (h5i)  (x6d)) ;; Support. 
(when (k5i)  (c7d)) ;; Support. 
(when (m5i)  (k7d)) ;; Support. 
(when (r5i)  (r7d)) ;; Support. 
(when (u5i) (and (x7d) (not(v7d)))) ;; Support.  Cancellation. 
(when (x5i) (and (c8d) (not(b8d)))) ;; Support.  Cancellation. 
(when (z5i) (and (k8d) (not(j8d)))) ;; Support.  Cancellation. 
(when (c6i) (and (r8d) (not(q8d)))) ;; Support.  Cancellation. 
(when (h6i) (and (x8d) (not(v8d)))) ;; Support.  Cancellation. 
(when (k6i) (and (c9d) (not(b9d)))) ;; Support.  Cancellation. 
(when (m6i) (and (k9d) (not(j9d)))) ;; Support.  Cancellation. 
(when (r6i) (and (r9d) (not(q9d)))) ;; Support.  Cancellation. 
(when (u6i) (and (x9d) (not(v9d)))) ;; Support.  Cancellation. 
(when (x6i) (and (c0d) (not(b0d)))) ;; Support.  Cancellation. 
(when (z6i) (and (k0d) (not(j0d)))) ;; Support.  Cancellation. 
(when (c7i) (and (r0d) (not(q0d)))) ;; Support.  Cancellation. 
(when (h7i) (and (x0d) (not(v0d)))) ;; Support.  Cancellation. 
(when (k7i) (and (cae) (not(bae)))) ;; Support.  Cancellation. 
(when (m7i) (and (kae) (not(jae)))) ;; Support.  Cancellation. 
(when (r7i) (and (rae) (not(qae)))) ;; Support.  Cancellation. 
(when (u7i) (and (xae) (not(vae)))) ;; Support.  Cancellation. 
(when (x7i) (and (cbe) (not(bbe)))) ;; Support.  Cancellation. 
(when (z7i) (and (kbe) (not(jbe)))) ;; Support.  Cancellation. 
(when (c8i) (and (rbe) (not(qbe)))) ;; Support.  Cancellation. 
(when (h8i) (and (xbe) (not(vbe)))) ;; Support.  Cancellation. 
(when (k8i) (and (cce) (not(bce)))) ;; Support.  Cancellation. 
(when (m8i) (and (kce) (not(jce)))) ;; Support.  Cancellation. 
(when (r8i) (and (rce) (not(qce)))) ;; Support.  Cancellation. 
(when (u9i)  (xee)) ;; Support. 
(when (x9i)  (cfe)) ;; Support. 
(when (z9i)  (kfe)) ;; Support. 
(when (c0i)  (rfe)) ;; Support. 
(when (h0i)  (xfe)) ;; Support. 
(when (k0i)  (cge)) ;; Support. 
(when (m0i)  (kge)) ;; Support. 
(when (r0i)  (rge)) ;; Support. 
(when (uaj) (and (xie) (not(vie)))) ;; Support.  Cancellation. 
(when (xaj) (and (cje) (not(bje)))) ;; Support.  Cancellation. 
(when (zaj) (and (kje) (not(jje)))) ;; Support.  Cancellation. 
(when (cbj) (and (rje) (not(qje)))) ;; Support.  Cancellation. 
(when (hbj) (and (xje) (not(vje)))) ;; Support.  Cancellation. 
(when (kbj) (and (cke) (not(bke)))) ;; Support.  Cancellation. 
(when (mbj) (and (kke) (not(jke)))) ;; Support.  Cancellation. 
(when (rbj) (and (rke) (not(qke)))) ;; Support.  Cancellation. 
(when (ubj) (and (xke) (not(vke)))) ;; Support.  Cancellation. 
(when (xbj) (and (cle) (not(ble)))) ;; Support.  Cancellation. 
(when (zbj) (and (kle) (not(jle)))) ;; Support.  Cancellation. 
(when (ccj) (and (rle) (not(qle)))) ;; Support.  Cancellation. 
(when (hcj) (and (xle) (not(vle)))) ;; Support.  Cancellation. 
(when (kcj) (and (cme) (not(bme)))) ;; Support.  Cancellation. 
(when (mcj) (and (kme) (not(jme)))) ;; Support.  Cancellation. 
(when (rcj) (and (rme) (not(qme)))) ;; Support.  Cancellation. 
(when (uej) (and (xqe) (not(vqe)))) ;; Support.  Cancellation. 
(when (xej) (and (cse) (not(bse)))) ;; Support.  Cancellation. 
(when (hfj) (and (xse) (not(vse)))) ;; Support.  Cancellation. 
(when (kfj) (and (cre) (not(bre)))) ;; Support.  Cancellation. 
(when (tfj) (and (ure) (not(tre)))) ;; Support.  Cancellation. 
(when (vfj) (and (zre) (not(yre)))) ;; Support.  Cancellation. 
(when (yfj) (and (hte) (not(gte)))) ;; Support.  Cancellation. 
(when (bgj) (and (mte) (not(lte)))) ;; Support.  Cancellation. 
(when (tgj) (and (uue) (not(tue)))) ;; Support.  Cancellation. 
(when (vgj) (and (zue) (not(yue)))) ;; Support.  Cancellation. 
(when (lhj) (and (hwe) (not(gwe)))) ;; Support.  Cancellation. 
(when (qhj) (and (mwe) (not(lwe)))) ;; Support.  Cancellation. 
(when (gij) (and (uxe) (not(txe)))) ;; Support.  Cancellation. 
(when (jij) (and (zxe) (not(yxe)))) ;; Support.  Cancellation. 
(when (lij) (and (hye) (not(gye)))) ;; Support.  Cancellation. 
(when (qij) (and (mye) (not(lye)))) ;; Support.  Cancellation. 
(when (tkj)  (u3e)) ;; Support. 
(when (vkj)  (z3e)) ;; Support. 
(when (ykj)  (h4e)) ;; Support. 
(when (blj)  (m4e)) ;; Support. 
(when (glj) (and (u4e) (not(t4e)))) ;; Support.  Cancellation. 
(when (jlj) (and (z4e) (not(y4e)))) ;; Support.  Cancellation. 
(when (llj) (and (h5e) (not(g5e)))) ;; Support.  Cancellation. 
(when (qlj) (and (m5e) (not(l5e)))) ;; Support.  Cancellation. 
(when (tlj)  (u5e)) ;; Support. 
(when (vlj) (and (z5e) (not(y5e)))) ;; Support.  Cancellation. 
(when (ylj)  (h6e)) ;; Support. 
(when (bmj) (and (m6e) (not(l6e)))) ;; Support.  Cancellation. 
(when (gmj)  (u6e)) ;; Support. 
(when (jmj) (and (z6e) (not(y6e)))) ;; Support.  Cancellation. 
(when (lmj)  (h7e)) ;; Support. 
))
(:action CMPSWAP_L2_L6
:parameters ()
:precondition (and (q7e))

:effect (and  (mni) (khe)
(when (qqi) (and (m7e) (not(l7e)))) ;; Support.  Cancellation. 
(when (ted) (and (ruh) (not(r7h)))) ;; Support.  Cancellation. 
(when (not(ued))  (not(tuh))) ;; Cancellation. 
(when (yed) (and (uuh) (not(vuh)))) ;; Support.  Cancellation. 
(when (gfd) (and (xuh) (not(yuh)))) ;; Support.  Cancellation. 
(when (lfd) (and (zuh) (not(bvh)))) ;; Support.  Cancellation. 
(when (tfd) (and (cvh) (not(gvh)))) ;; Support.  Cancellation. 
(when (yfd) (and (hvh) (not(jvh)))) ;; Support.  Cancellation. 
(when (ggd) (and (kvh) (not(lvh)))) ;; Support.  Cancellation. 
(when (lgd) (and (mvh) (not(qvh)))) ;; Support.  Cancellation. 
(when (tgd) (and (rvh) (not(tvh)))) ;; Support.  Cancellation. 
(when (ygd) (and (uvh) (not(vvh)))) ;; Support.  Cancellation. 
(when (ghd) (and (xvh) (not(yvh)))) ;; Support.  Cancellation. 
(when (lhd) (and (zvh) (not(bwh)))) ;; Support.  Cancellation. 
(when (thd) (and (cwh) (not(gwh)))) ;; Support.  Cancellation. 
(when (yhd) (and (hwh) (not(jwh)))) ;; Support.  Cancellation. 
(when (gid) (and (kwh) (not(lwh)))) ;; Support.  Cancellation. 
(when (lid) (and (mwh) (not(qwh)))) ;; Support.  Cancellation. 
(when (tid) (and (rwh) (not(twh)))) ;; Support.  Cancellation. 
(when (yid) (and (uwh) (not(vwh)))) ;; Support.  Cancellation. 
(when (gjd) (and (xwh) (not(ywh)))) ;; Support.  Cancellation. 
(when (ljd) (and (zwh) (not(bxh)))) ;; Support.  Cancellation. 
(when (tjd) (and (cxh) (not(gxh)))) ;; Support.  Cancellation. 
(when (yjd) (and (hxh) (not(jxh)))) ;; Support.  Cancellation. 
(when (gkd) (and (kxh) (not(lxh)))) ;; Support.  Cancellation. 
(when (lkd) (and (mxh) (not(qxh)))) ;; Support.  Cancellation. 
(when (tkd) (and (rxh) (not(txh)))) ;; Support.  Cancellation. 
(when (ykd) (and (uxh) (not(vxh)))) ;; Support.  Cancellation. 
(when (gld) (and (xxh) (not(yxh)))) ;; Support.  Cancellation. 
(when (lld) (and (zxh) (not(byh)))) ;; Support.  Cancellation. 
(when (tld) (and (cyh) (not(gyh)))) ;; Support.  Cancellation. 
(when (yld) (and (hyh) (not(jyh)))) ;; Support.  Cancellation. 
(when (gmd) (and (kyh) (not(lyh)))) ;; Support.  Cancellation. 
(when (lmd) (and (myh) (not(qyh)))) ;; Support.  Cancellation. 
(when (tmd) (and (ryh) (not(tyh)))) ;; Support.  Cancellation. 
(when (ymd) (and (uyh) (not(vyh)))) ;; Support.  Cancellation. 
(when (gnd) (and (xyh) (not(yyh)))) ;; Support.  Cancellation. 
(when (lnd) (and (zyh) (not(bzh)))) ;; Support.  Cancellation. 
(when (tnd) (and (czh) (not(gzh)))) ;; Support.  Cancellation. 
(when (ynd) (and (hzh) (not(jzh)))) ;; Support.  Cancellation. 
(when (god) (and (kzh) (not(lzh)))) ;; Support.  Cancellation. 
(when (lod) (and (mzh) (not(qzh)))) ;; Support.  Cancellation. 
(when (tod) (and (rzh) (not(tzh)))) ;; Support.  Cancellation. 
(when (yod) (and (uzh) (not(vzh)))) ;; Support.  Cancellation. 
(when (gpd) (and (xzh) (not(yzh)))) ;; Support.  Cancellation. 
(when (lpd) (and (zzh) (not(b1h)))) ;; Support.  Cancellation. 
(when (tpd) (and (c1h) (not(g1h)))) ;; Support.  Cancellation. 
(when (ypd) (and (h1h) (not(j1h)))) ;; Support.  Cancellation. 
(when (gqd) (and (k1h) (not(l1h)))) ;; Support.  Cancellation. 
(when (lqd) (and (m1h) (not(q1h)))) ;; Support.  Cancellation. 
(when (tqd) (and (r1h) (not(t1h)))) ;; Support.  Cancellation. 
(when (yqd) (and (u1h) (not(v1h)))) ;; Support.  Cancellation. 
(when (gsd) (and (x1h) (not(y1h)))) ;; Support.  Cancellation. 
(when (lsd) (and (z1h) (not(b2h)))) ;; Support.  Cancellation. 
(when (tsd) (and (c2h) (not(g2h)))) ;; Support.  Cancellation. 
(when (ysd) (and (h2h) (not(j2h)))) ;; Support.  Cancellation. 
(when (grd) (and (k2h) (not(l2h)))) ;; Support.  Cancellation. 
(when (lrd) (and (m2h) (not(q2h)))) ;; Support.  Cancellation. 
(when (trd) (and (r2h) (not(t2h)))) ;; Support.  Cancellation. 
(when (yrd) (and (u2h) (not(v2h)))) ;; Support.  Cancellation. 
(when (gtd) (and (x2h) (not(y2h)))) ;; Support.  Cancellation. 
(when (ltd) (and (z2h) (not(b3h)))) ;; Support.  Cancellation. 
(when (ttd) (and (c3h) (not(g3h)))) ;; Support.  Cancellation. 
(when (ytd) (and (h3h) (not(j3h)))) ;; Support.  Cancellation. 
(when (gud) (and (k3h) (not(l3h)))) ;; Support.  Cancellation. 
(when (lud) (and (m3h) (not(q3h)))) ;; Support.  Cancellation. 
(when (tud) (and (r3h) (not(t3h)))) ;; Support.  Cancellation. 
(when (yvd) (and (h4h) (not(j4h)))) ;; Support.  Cancellation. 
(when (gwd) (and (k4h) (not(l4h)))) ;; Support.  Cancellation. 
(when (lwd) (and (m4h) (not(q4h)))) ;; Support.  Cancellation. 
(when (twd) (and (r4h) (not(t4h)))) ;; Support.  Cancellation. 
(when (lxd) (and (z4h) (not(b5h)))) ;; Support.  Cancellation. 
(when (txd) (and (c5h) (not(g5h)))) ;; Support.  Cancellation. 
(when (gyd) (and (k5h) (not(l5h)))) ;; Support.  Cancellation. 
(when (lyd) (and (m5h) (not(q5h)))) ;; Support.  Cancellation. 
(when (yyd) (and (u5h) (not(v5h)))) ;; Support.  Cancellation. 
(when (gzd) (and (x5h) (not(y5h)))) ;; Support.  Cancellation. 
(when (lzd) (and (z5h) (not(b6h)))) ;; Support.  Cancellation. 
(when (tzd) (and (c6h) (not(g6h)))) ;; Support.  Cancellation. 
(when (yzd) (and (h6h) (not(j6h)))) ;; Support.  Cancellation. 
(when (g1d) (and (k6h) (not(l6h)))) ;; Support.  Cancellation. 
(when (l1d) (and (m6h) (not(q6h)))) ;; Support.  Cancellation. 
(when (t1d) (and (r6h) (not(t6h)))) ;; Support.  Cancellation. 
(when (v7d) (and (t9h) (not(u9h)))) ;; Support.  Cancellation. 
(when (b8d) (and (v9h) (not(x9h)))) ;; Support.  Cancellation. 
(when (j8d) (and (y9h) (not(z9h)))) ;; Support.  Cancellation. 
(when (q8d) (and (b0h) (not(c0h)))) ;; Support.  Cancellation. 
(when (v8d) (and (g0h) (not(h0h)))) ;; Support.  Cancellation. 
(when (b9d) (and (j0h) (not(k0h)))) ;; Support.  Cancellation. 
(when (j9d) (and (l0h) (not(m0h)))) ;; Support.  Cancellation. 
(when (q9d) (and (q0h) (not(r0h)))) ;; Support.  Cancellation. 
(when (v9d) (and (t0h) (not(u0h)))) ;; Support.  Cancellation. 
(when (b0d) (and (v0h) (not(x0h)))) ;; Support.  Cancellation. 
(when (j0d) (and (y0h) (not(z0h)))) ;; Support.  Cancellation. 
(when (q0d) (and (bai) (not(cai)))) ;; Support.  Cancellation. 
(when (v0d) (and (gai) (not(hai)))) ;; Support.  Cancellation. 
(when (bae) (and (jai) (not(kai)))) ;; Support.  Cancellation. 
(when (jae) (and (lai) (not(mai)))) ;; Support.  Cancellation. 
(when (qae) (and (qai) (not(rai)))) ;; Support.  Cancellation. 
(when (vae) (and (tai) (not(uai)))) ;; Support.  Cancellation. 
(when (bbe) (and (vai) (not(xai)))) ;; Support.  Cancellation. 
(when (jbe) (and (yai) (not(zai)))) ;; Support.  Cancellation. 
(when (qbe) (and (bbi) (not(cbi)))) ;; Support.  Cancellation. 
(when (vbe) (and (gbi) (not(hbi)))) ;; Support.  Cancellation. 
(when (bce) (and (jbi) (not(kbi)))) ;; Support.  Cancellation. 
(when (jce) (and (lbi) (not(mbi)))) ;; Support.  Cancellation. 
(when (qce) (and (qbi) (not(rbi)))) ;; Support.  Cancellation. 
(when (vce) (and (tbi) (not(ubi)))) ;; Support.  Cancellation. 
(when (bde) (and (vbi) (not(xbi)))) ;; Support.  Cancellation. 
(when (jde)  (ybi)) ;; Support. 
(when (qde)  (bci)) ;; Support. 
(when (vde) (and (gci) (not(hci)))) ;; Support.  Cancellation. 
(when (bee) (and (jci) (not(kci)))) ;; Support.  Cancellation. 
(when (jee)  (lci)) ;; Support. 
(when (qee)  (qci)) ;; Support. 
(when (vie) (and (tei) (not(uei)))) ;; Support.  Cancellation. 
(when (bje) (and (vei) (not(xei)))) ;; Support.  Cancellation. 
(when (jje) (and (yei) (not(zei)))) ;; Support.  Cancellation. 
(when (qje) (and (bfi) (not(cfi)))) ;; Support.  Cancellation. 
(when (vje) (and (gfi) (not(hfi)))) ;; Support.  Cancellation. 
(when (bke) (and (jfi) (not(kfi)))) ;; Support.  Cancellation. 
(when (jke) (and (lfi) (not(mfi)))) ;; Support.  Cancellation. 
(when (qke) (and (qfi) (not(rfi)))) ;; Support.  Cancellation. 
(when (vke) (and (tfi) (not(ufi)))) ;; Support.  Cancellation. 
(when (ble) (and (vfi) (not(xfi)))) ;; Support.  Cancellation. 
(when (jle) (and (yfi) (not(zfi)))) ;; Support.  Cancellation. 
(when (qle) (and (bgi) (not(cgi)))) ;; Support.  Cancellation. 
(when (vle) (and (ggi) (not(hgi)))) ;; Support.  Cancellation. 
(when (bme) (and (jgi) (not(kgi)))) ;; Support.  Cancellation. 
(when (jme) (and (lgi) (not(mgi)))) ;; Support.  Cancellation. 
(when (qme) (and (qgi) (not(rgi)))) ;; Support.  Cancellation. 
(when (vme)  (tgi)) ;; Support. 
(when (bne)  (vgi)) ;; Support. 
(when (jne)  (ygi)) ;; Support. 
(when (qne)  (bhi)) ;; Support. 
(when (vne)  (ghi)) ;; Support. 
(when (boe)  (jhi)) ;; Support. 
(when (joe)  (lhi)) ;; Support. 
(when (qoe)  (qhi)) ;; Support. 
(when (voe) (and (thi) (not(uhi)))) ;; Support.  Cancellation. 
(when (bpe) (and (vhi) (not(xhi)))) ;; Support.  Cancellation. 
(when (jpe) (and (yhi) (not(zhi)))) ;; Support.  Cancellation. 
(when (qpe) (and (bii) (not(cii)))) ;; Support.  Cancellation. 
(when (vpe) (and (gii) (not(hii)))) ;; Support.  Cancellation. 
(when (bqe) (and (jii) (not(kii)))) ;; Support.  Cancellation. 
(when (jqe) (and (lii) (not(mii)))) ;; Support.  Cancellation. 
(when (qqe) (and (qii) (not(rii)))) ;; Support.  Cancellation. 
(when (vqe) (and (tii) (not(uii)))) ;; Support.  Cancellation. 
(when (bse) (and (vii) (not(xii)))) ;; Support.  Cancellation. 
(when (jse) (and (yii) (not(zii)))) ;; Support.  Cancellation. 
(when (qse) (and (bji) (not(cji)))) ;; Support.  Cancellation. 
(when (vse) (and (gji) (not(hji)))) ;; Support.  Cancellation. 
(when (bre) (and (jji) (not(kji)))) ;; Support.  Cancellation. 
(when (jre)  (lji)) ;; Support. 
(when (mre)  (qji)) ;; Support. 
(when (tre) (and (rji) (not(tji)))) ;; Support.  Cancellation. 
(when (yre) (and (uji) (not(vji)))) ;; Support.  Cancellation. 
(when (gte) (and (xji) (not(yji)))) ;; Support.  Cancellation. 
(when (lte) (and (zji) (not(bki)))) ;; Support.  Cancellation. 
(when (tte) (and (cki) (not(gki)))) ;; Support.  Cancellation. 
(when (yte)  (hki)) ;; Support. 
(when (gue)  (kki)) ;; Support. 
(when (lue) (and (mki) (not(qki)))) ;; Support.  Cancellation. 
(when (tue) (and (rki) (not(tki)))) ;; Support.  Cancellation. 
(when (yue) (and (uki) (not(vki)))) ;; Support.  Cancellation. 
(when (gve) (and (xki) (not(yki)))) ;; Support.  Cancellation. 
(when (lve) (and (zki) (not(bli)))) ;; Support.  Cancellation. 
(when (tve)  (cli)) ;; Support. 
(when (yve)  (hli)) ;; Support. 
(when (gwe) (and (kli) (not(lli)))) ;; Support.  Cancellation. 
(when (lwe) (and (mli) (not(qli)))) ;; Support.  Cancellation. 
(when (twe)  (rli)) ;; Support. 
(when (ywe) (and (uli) (not(vli)))) ;; Support.  Cancellation. 
(when (gxe) (and (xli) (not(yli)))) ;; Support.  Cancellation. 
(when (lxe)  (zli)) ;; Support. 
(when (txe) (and (cmi) (not(gmi)))) ;; Support.  Cancellation. 
(when (yxe) (and (hmi) (not(jmi)))) ;; Support.  Cancellation. 
(when (gye) (and (kmi) (not(lmi)))) ;; Support.  Cancellation. 
(when (lye) (and (mmi) (not(qmi)))) ;; Support.  Cancellation. 
(when (tye) (and (rmi) (not(tmi)))) ;; Support.  Cancellation. 
(when (yye)  (umi)) ;; Support. 
(when (gze)  (xmi)) ;; Support. 
(when (lze) (and (zmi) (not(bni)))) ;; Support.  Cancellation. 
(when (tze) (and (cni) (not(gni)))) ;; Support.  Cancellation. 
(when (yze)  (hni)) ;; Support. 
(when (g1e) (and (kni) (not(lni)))) ;; Support.  Cancellation. 
(when (t4e) (and (cpi) (not(gpi)))) ;; Support.  Cancellation. 
(when (y4e) (and (hpi) (not(jpi)))) ;; Support.  Cancellation. 
(when (g5e) (and (kpi) (not(lpi)))) ;; Support.  Cancellation. 
(when (l5e) (and (mpi) (not(qpi)))) ;; Support.  Cancellation. 
(when (y5e) (and (upi) (not(vpi)))) ;; Support.  Cancellation. 
(when (l6e) (and (zpi) (not(bqi)))) ;; Support.  Cancellation. 
(when (y6e) (and (hqi) (not(jqi)))) ;; Support.  Cancellation. 
(when (l7e) (and (mqi) (not(qqi)))) ;; Support.  Cancellation. 
(when (tuh) (and (ued) (not(mre)))) ;; Support.  Cancellation. 
(when (not(ruh))  (not(ted))) ;; Cancellation. 
(when (vuh) (and (zed) (not(yed)))) ;; Support.  Cancellation. 
(when (yuh) (and (hfd) (not(gfd)))) ;; Support.  Cancellation. 
(when (bvh) (and (mfd) (not(lfd)))) ;; Support.  Cancellation. 
(when (gvh) (and (ufd) (not(tfd)))) ;; Support.  Cancellation. 
(when (jvh) (and (zfd) (not(yfd)))) ;; Support.  Cancellation. 
(when (lvh) (and (hgd) (not(ggd)))) ;; Support.  Cancellation. 
(when (qvh) (and (mgd) (not(lgd)))) ;; Support.  Cancellation. 
(when (tvh) (and (ugd) (not(tgd)))) ;; Support.  Cancellation. 
(when (vvh) (and (zgd) (not(ygd)))) ;; Support.  Cancellation. 
(when (yvh) (and (hhd) (not(ghd)))) ;; Support.  Cancellation. 
(when (bwh) (and (mhd) (not(lhd)))) ;; Support.  Cancellation. 
(when (gwh) (and (uhd) (not(thd)))) ;; Support.  Cancellation. 
(when (jwh) (and (zhd) (not(yhd)))) ;; Support.  Cancellation. 
(when (lwh) (and (hid) (not(gid)))) ;; Support.  Cancellation. 
(when (qwh) (and (mid) (not(lid)))) ;; Support.  Cancellation. 
(when (twh) (and (uid) (not(tid)))) ;; Support.  Cancellation. 
(when (vwh) (and (zid) (not(yid)))) ;; Support.  Cancellation. 
(when (ywh) (and (hjd) (not(gjd)))) ;; Support.  Cancellation. 
(when (bxh) (and (mjd) (not(ljd)))) ;; Support.  Cancellation. 
(when (gxh) (and (ujd) (not(tjd)))) ;; Support.  Cancellation. 
(when (jxh) (and (zjd) (not(yjd)))) ;; Support.  Cancellation. 
(when (lxh) (and (hkd) (not(gkd)))) ;; Support.  Cancellation. 
(when (qxh) (and (mkd) (not(lkd)))) ;; Support.  Cancellation. 
(when (txh) (and (ukd) (not(tkd)))) ;; Support.  Cancellation. 
(when (vxh) (and (zkd) (not(ykd)))) ;; Support.  Cancellation. 
(when (yxh) (and (hld) (not(gld)))) ;; Support.  Cancellation. 
(when (byh) (and (mld) (not(lld)))) ;; Support.  Cancellation. 
(when (gyh) (and (uld) (not(tld)))) ;; Support.  Cancellation. 
(when (jyh) (and (zld) (not(yld)))) ;; Support.  Cancellation. 
(when (lyh) (and (hmd) (not(gmd)))) ;; Support.  Cancellation. 
(when (qyh) (and (mmd) (not(lmd)))) ;; Support.  Cancellation. 
(when (tyh) (and (umd) (not(tmd)))) ;; Support.  Cancellation. 
(when (vyh) (and (zmd) (not(ymd)))) ;; Support.  Cancellation. 
(when (yyh) (and (hnd) (not(gnd)))) ;; Support.  Cancellation. 
(when (bzh) (and (mnd) (not(lnd)))) ;; Support.  Cancellation. 
(when (gzh) (and (und) (not(tnd)))) ;; Support.  Cancellation. 
(when (jzh) (and (znd) (not(ynd)))) ;; Support.  Cancellation. 
(when (lzh) (and (hod) (not(god)))) ;; Support.  Cancellation. 
(when (qzh) (and (mod) (not(lod)))) ;; Support.  Cancellation. 
(when (tzh) (and (uod) (not(tod)))) ;; Support.  Cancellation. 
(when (vzh) (and (zod) (not(yod)))) ;; Support.  Cancellation. 
(when (yzh) (and (hpd) (not(gpd)))) ;; Support.  Cancellation. 
(when (b1h) (and (mpd) (not(lpd)))) ;; Support.  Cancellation. 
(when (g1h) (and (upd) (not(tpd)))) ;; Support.  Cancellation. 
(when (j1h) (and (zpd) (not(ypd)))) ;; Support.  Cancellation. 
(when (l1h) (and (hqd) (not(gqd)))) ;; Support.  Cancellation. 
(when (q1h) (and (mqd) (not(lqd)))) ;; Support.  Cancellation. 
(when (t1h) (and (uqd) (not(tqd)))) ;; Support.  Cancellation. 
(when (v1h) (and (zqd) (not(yqd)))) ;; Support.  Cancellation. 
(when (y1h) (and (hsd) (not(gsd)))) ;; Support.  Cancellation. 
(when (b2h) (and (msd) (not(lsd)))) ;; Support.  Cancellation. 
(when (g2h) (and (usd) (not(tsd)))) ;; Support.  Cancellation. 
(when (j2h) (and (zsd) (not(ysd)))) ;; Support.  Cancellation. 
(when (l2h) (and (hrd) (not(grd)))) ;; Support.  Cancellation. 
(when (q2h) (and (mrd) (not(lrd)))) ;; Support.  Cancellation. 
(when (t2h) (and (urd) (not(trd)))) ;; Support.  Cancellation. 
(when (v2h) (and (zrd) (not(yrd)))) ;; Support.  Cancellation. 
(when (y2h) (and (htd) (not(gtd)))) ;; Support.  Cancellation. 
(when (b3h) (and (mtd) (not(ltd)))) ;; Support.  Cancellation. 
(when (g3h) (and (utd) (not(ttd)))) ;; Support.  Cancellation. 
(when (j3h) (and (ztd) (not(ytd)))) ;; Support.  Cancellation. 
(when (l3h) (and (hud) (not(gud)))) ;; Support.  Cancellation. 
(when (q3h) (and (mud) (not(lud)))) ;; Support.  Cancellation. 
(when (t3h) (and (uud) (not(tud)))) ;; Support.  Cancellation. 
(when (v3h)  (zud)) ;; Support. 
(when (y3h)  (hvd)) ;; Support. 
(when (b4h)  (mvd)) ;; Support. 
(when (g4h)  (uvd)) ;; Support. 
(when (j4h) (and (zvd) (not(yvd)))) ;; Support.  Cancellation. 
(when (l4h) (and (hwd) (not(gwd)))) ;; Support.  Cancellation. 
(when (q4h) (and (mwd) (not(lwd)))) ;; Support.  Cancellation. 
(when (t4h) (and (uwd) (not(twd)))) ;; Support.  Cancellation. 
(when (v4h)  (zwd)) ;; Support. 
(when (y4h)  (hxd)) ;; Support. 
(when (b5h) (and (mxd) (not(lxd)))) ;; Support.  Cancellation. 
(when (g5h) (and (uxd) (not(txd)))) ;; Support.  Cancellation. 
(when (j5h)  (zxd)) ;; Support. 
(when (l5h) (and (hyd) (not(gyd)))) ;; Support.  Cancellation. 
(when (q5h) (and (myd) (not(lyd)))) ;; Support.  Cancellation. 
(when (t5h)  (uyd)) ;; Support. 
(when (v5h) (and (zyd) (not(yyd)))) ;; Support.  Cancellation. 
(when (y5h) (and (hzd) (not(gzd)))) ;; Support.  Cancellation. 
(when (b6h) (and (mzd) (not(lzd)))) ;; Support.  Cancellation. 
(when (g6h) (and (uzd) (not(tzd)))) ;; Support.  Cancellation. 
(when (j6h) (and (zzd) (not(yzd)))) ;; Support.  Cancellation. 
(when (l6h) (and (h1d) (not(g1d)))) ;; Support.  Cancellation. 
(when (q6h) (and (m1d) (not(l1d)))) ;; Support.  Cancellation. 
(when (t6h) (and (u1d) (not(t1d)))) ;; Support.  Cancellation. 
(when (v6h)  (z1d)) ;; Support. 
(when (y6h)  (h2d)) ;; Support. 
(when (b7h)  (m2d)) ;; Support. 
(when (g7h)  (u2d)) ;; Support. 
(when (j7h)  (z2d)) ;; Support. 
(when (l7h)  (h3d)) ;; Support. 
(when (q7h)  (m3d)) ;; Support. 
(when (r7h)  (r3d)) ;; Support. 
(when (u7h)  (x3d)) ;; Support. 
(when (x7h)  (c4d)) ;; Support. 
(when (z7h)  (k4d)) ;; Support. 
(when (c8h)  (r4d)) ;; Support. 
(when (h8h)  (x4d)) ;; Support. 
(when (k8h)  (c5d)) ;; Support. 
(when (m8h)  (k5d)) ;; Support. 
(when (r8h)  (r5d)) ;; Support. 
(when (u8h)  (x5d)) ;; Support. 
(when (x8h)  (c6d)) ;; Support. 
(when (z8h)  (k6d)) ;; Support. 
(when (c9h)  (r6d)) ;; Support. 
(when (h9h)  (x6d)) ;; Support. 
(when (k9h)  (c7d)) ;; Support. 
(when (m9h)  (k7d)) ;; Support. 
(when (r9h)  (r7d)) ;; Support. 
(when (u9h) (and (x7d) (not(v7d)))) ;; Support.  Cancellation. 
(when (x9h) (and (c8d) (not(b8d)))) ;; Support.  Cancellation. 
(when (z9h) (and (k8d) (not(j8d)))) ;; Support.  Cancellation. 
(when (c0h) (and (r8d) (not(q8d)))) ;; Support.  Cancellation. 
(when (h0h) (and (x8d) (not(v8d)))) ;; Support.  Cancellation. 
(when (k0h) (and (c9d) (not(b9d)))) ;; Support.  Cancellation. 
(when (m0h) (and (k9d) (not(j9d)))) ;; Support.  Cancellation. 
(when (r0h) (and (r9d) (not(q9d)))) ;; Support.  Cancellation. 
(when (u0h) (and (x9d) (not(v9d)))) ;; Support.  Cancellation. 
(when (x0h) (and (c0d) (not(b0d)))) ;; Support.  Cancellation. 
(when (z0h) (and (k0d) (not(j0d)))) ;; Support.  Cancellation. 
(when (cai) (and (r0d) (not(q0d)))) ;; Support.  Cancellation. 
(when (hai) (and (x0d) (not(v0d)))) ;; Support.  Cancellation. 
(when (kai) (and (cae) (not(bae)))) ;; Support.  Cancellation. 
(when (mai) (and (kae) (not(jae)))) ;; Support.  Cancellation. 
(when (rai) (and (rae) (not(qae)))) ;; Support.  Cancellation. 
(when (uai) (and (xae) (not(vae)))) ;; Support.  Cancellation. 
(when (xai) (and (cbe) (not(bbe)))) ;; Support.  Cancellation. 
(when (zai) (and (kbe) (not(jbe)))) ;; Support.  Cancellation. 
(when (cbi) (and (rbe) (not(qbe)))) ;; Support.  Cancellation. 
(when (hbi) (and (xbe) (not(vbe)))) ;; Support.  Cancellation. 
(when (kbi) (and (cce) (not(bce)))) ;; Support.  Cancellation. 
(when (mbi) (and (kce) (not(jce)))) ;; Support.  Cancellation. 
(when (rbi) (and (rce) (not(qce)))) ;; Support.  Cancellation. 
(when (ubi) (and (xce) (not(vce)))) ;; Support.  Cancellation. 
(when (xbi) (and (cde) (not(bde)))) ;; Support.  Cancellation. 
(when (hci) (and (xde) (not(vde)))) ;; Support.  Cancellation. 
(when (kci) (and (cee) (not(bee)))) ;; Support.  Cancellation. 
(when (uci)  (xee)) ;; Support. 
(when (xci)  (cfe)) ;; Support. 
(when (zci)  (kfe)) ;; Support. 
(when (cdi)  (rfe)) ;; Support. 
(when (hdi)  (xfe)) ;; Support. 
(when (kdi)  (cge)) ;; Support. 
(when (mdi)  (kge)) ;; Support. 
(when (rdi)  (rge)) ;; Support. 
(when (udi)  (xge)) ;; Support. 
(when (hei)  (xhe)) ;; Support. 
(when (mei)  (kie)) ;; Support. 
(when (uei) (and (xie) (not(vie)))) ;; Support.  Cancellation. 
(when (xei) (and (cje) (not(bje)))) ;; Support.  Cancellation. 
(when (zei) (and (kje) (not(jje)))) ;; Support.  Cancellation. 
(when (cfi) (and (rje) (not(qje)))) ;; Support.  Cancellation. 
(when (hfi) (and (xje) (not(vje)))) ;; Support.  Cancellation. 
(when (kfi) (and (cke) (not(bke)))) ;; Support.  Cancellation. 
(when (mfi) (and (kke) (not(jke)))) ;; Support.  Cancellation. 
(when (rfi) (and (rke) (not(qke)))) ;; Support.  Cancellation. 
(when (ufi) (and (xke) (not(vke)))) ;; Support.  Cancellation. 
(when (xfi) (and (cle) (not(ble)))) ;; Support.  Cancellation. 
(when (zfi) (and (kle) (not(jle)))) ;; Support.  Cancellation. 
(when (cgi) (and (rle) (not(qle)))) ;; Support.  Cancellation. 
(when (hgi) (and (xle) (not(vle)))) ;; Support.  Cancellation. 
(when (kgi) (and (cme) (not(bme)))) ;; Support.  Cancellation. 
(when (mgi) (and (kme) (not(jme)))) ;; Support.  Cancellation. 
(when (rgi) (and (rme) (not(qme)))) ;; Support.  Cancellation. 
(when (uhi) (and (xoe) (not(voe)))) ;; Support.  Cancellation. 
(when (xhi) (and (cpe) (not(bpe)))) ;; Support.  Cancellation. 
(when (zhi) (and (kpe) (not(jpe)))) ;; Support.  Cancellation. 
(when (cii) (and (rpe) (not(qpe)))) ;; Support.  Cancellation. 
(when (hii) (and (xpe) (not(vpe)))) ;; Support.  Cancellation. 
(when (kii) (and (cqe) (not(bqe)))) ;; Support.  Cancellation. 
(when (mii) (and (kqe) (not(jqe)))) ;; Support.  Cancellation. 
(when (rii) (and (rqe) (not(qqe)))) ;; Support.  Cancellation. 
(when (uii) (and (xqe) (not(vqe)))) ;; Support.  Cancellation. 
(when (xii) (and (cse) (not(bse)))) ;; Support.  Cancellation. 
(when (zii) (and (kse) (not(jse)))) ;; Support.  Cancellation. 
(when (cji) (and (rse) (not(qse)))) ;; Support.  Cancellation. 
(when (hji) (and (xse) (not(vse)))) ;; Support.  Cancellation. 
(when (kji) (and (cre) (not(bre)))) ;; Support.  Cancellation. 
(when (tji) (and (ure) (not(tre)))) ;; Support.  Cancellation. 
(when (vji) (and (zre) (not(yre)))) ;; Support.  Cancellation. 
(when (yji) (and (hte) (not(gte)))) ;; Support.  Cancellation. 
(when (bki) (and (mte) (not(lte)))) ;; Support.  Cancellation. 
(when (gki) (and (ute) (not(tte)))) ;; Support.  Cancellation. 
(when (qki) (and (mue) (not(lue)))) ;; Support.  Cancellation. 
(when (tki) (and (uue) (not(tue)))) ;; Support.  Cancellation. 
(when (vki) (and (zue) (not(yue)))) ;; Support.  Cancellation. 
(when (yki) (and (hve) (not(gve)))) ;; Support.  Cancellation. 
(when (bli) (and (mve) (not(lve)))) ;; Support.  Cancellation. 
(when (lli) (and (hwe) (not(gwe)))) ;; Support.  Cancellation. 
(when (qli) (and (mwe) (not(lwe)))) ;; Support.  Cancellation. 
(when (vli) (and (zwe) (not(ywe)))) ;; Support.  Cancellation. 
(when (yli) (and (hxe) (not(gxe)))) ;; Support.  Cancellation. 
(when (gmi) (and (uxe) (not(txe)))) ;; Support.  Cancellation. 
(when (jmi) (and (zxe) (not(yxe)))) ;; Support.  Cancellation. 
(when (lmi) (and (hye) (not(gye)))) ;; Support.  Cancellation. 
(when (qmi) (and (mye) (not(lye)))) ;; Support.  Cancellation. 
(when (tmi) (and (uye) (not(tye)))) ;; Support.  Cancellation. 
(when (bni) (and (mze) (not(lze)))) ;; Support.  Cancellation. 
(when (gni) (and (uze) (not(tze)))) ;; Support.  Cancellation. 
(when (lni) (and (h1e) (not(g1e)))) ;; Support.  Cancellation. 
(when (tni)  (u1e)) ;; Support. 
(when (vni)  (z1e)) ;; Support. 
(when (joi)  (z2e)) ;; Support. 
(when (qoi)  (m3e)) ;; Support. 
(when (toi)  (u3e)) ;; Support. 
(when (voi)  (z3e)) ;; Support. 
(when (yoi)  (h4e)) ;; Support. 
(when (bpi)  (m4e)) ;; Support. 
(when (gpi) (and (u4e) (not(t4e)))) ;; Support.  Cancellation. 
(when (jpi) (and (z4e) (not(y4e)))) ;; Support.  Cancellation. 
(when (lpi) (and (h5e) (not(g5e)))) ;; Support.  Cancellation. 
(when (qpi) (and (m5e) (not(l5e)))) ;; Support.  Cancellation. 
(when (tpi)  (u5e)) ;; Support. 
(when (vpi) (and (z5e) (not(y5e)))) ;; Support.  Cancellation. 
(when (ypi)  (h6e)) ;; Support. 
(when (bqi) (and (m6e) (not(l6e)))) ;; Support.  Cancellation. 
(when (gqi)  (u6e)) ;; Support. 
(when (jqi) (and (z6e) (not(y6e)))) ;; Support.  Cancellation. 
(when (lqi)  (h7e)) ;; Support. 
))
(:action CMPSWAP_L2_L5
:parameters ()
:precondition (and (q7e))

:effect (and  (msh) (rhe)
(when (quh) (and (m7e) (not(l7e)))) ;; Support.  Cancellation. 
(when (ted) (and (ryg) (not(rah)))) ;; Support.  Cancellation. 
(when (not(ued))  (not(tyg))) ;; Cancellation. 
(when (yed) (and (uyg) (not(vyg)))) ;; Support.  Cancellation. 
(when (gfd) (and (xyg) (not(yyg)))) ;; Support.  Cancellation. 
(when (lfd) (and (zyg) (not(bzg)))) ;; Support.  Cancellation. 
(when (tfd) (and (czg) (not(gzg)))) ;; Support.  Cancellation. 
(when (yfd) (and (hzg) (not(jzg)))) ;; Support.  Cancellation. 
(when (ggd) (and (kzg) (not(lzg)))) ;; Support.  Cancellation. 
(when (lgd) (and (mzg) (not(qzg)))) ;; Support.  Cancellation. 
(when (tgd) (and (rzg) (not(tzg)))) ;; Support.  Cancellation. 
(when (ygd) (and (uzg) (not(vzg)))) ;; Support.  Cancellation. 
(when (ghd) (and (xzg) (not(yzg)))) ;; Support.  Cancellation. 
(when (lhd) (and (zzg) (not(b1g)))) ;; Support.  Cancellation. 
(when (thd) (and (c1g) (not(g1g)))) ;; Support.  Cancellation. 
(when (yhd) (and (h1g) (not(j1g)))) ;; Support.  Cancellation. 
(when (gid) (and (k1g) (not(l1g)))) ;; Support.  Cancellation. 
(when (lid) (and (m1g) (not(q1g)))) ;; Support.  Cancellation. 
(when (tid) (and (r1g) (not(t1g)))) ;; Support.  Cancellation. 
(when (yid) (and (u1g) (not(v1g)))) ;; Support.  Cancellation. 
(when (gjd) (and (x1g) (not(y1g)))) ;; Support.  Cancellation. 
(when (ljd) (and (z1g) (not(b2g)))) ;; Support.  Cancellation. 
(when (tjd) (and (c2g) (not(g2g)))) ;; Support.  Cancellation. 
(when (yjd) (and (h2g) (not(j2g)))) ;; Support.  Cancellation. 
(when (gkd) (and (k2g) (not(l2g)))) ;; Support.  Cancellation. 
(when (lkd) (and (m2g) (not(q2g)))) ;; Support.  Cancellation. 
(when (tkd) (and (r2g) (not(t2g)))) ;; Support.  Cancellation. 
(when (ykd) (and (u2g) (not(v2g)))) ;; Support.  Cancellation. 
(when (gld) (and (x2g) (not(y2g)))) ;; Support.  Cancellation. 
(when (lld) (and (z2g) (not(b3g)))) ;; Support.  Cancellation. 
(when (tld) (and (c3g) (not(g3g)))) ;; Support.  Cancellation. 
(when (yld) (and (h3g) (not(j3g)))) ;; Support.  Cancellation. 
(when (gmd) (and (k3g) (not(l3g)))) ;; Support.  Cancellation. 
(when (lmd) (and (m3g) (not(q3g)))) ;; Support.  Cancellation. 
(when (tmd) (and (r3g) (not(t3g)))) ;; Support.  Cancellation. 
(when (ymd) (and (u3g) (not(v3g)))) ;; Support.  Cancellation. 
(when (gnd) (and (x3g) (not(y3g)))) ;; Support.  Cancellation. 
(when (lnd) (and (z3g) (not(b4g)))) ;; Support.  Cancellation. 
(when (tnd) (and (c4g) (not(g4g)))) ;; Support.  Cancellation. 
(when (ynd) (and (h4g) (not(j4g)))) ;; Support.  Cancellation. 
(when (god) (and (k4g) (not(l4g)))) ;; Support.  Cancellation. 
(when (lod) (and (m4g) (not(q4g)))) ;; Support.  Cancellation. 
(when (tod) (and (r4g) (not(t4g)))) ;; Support.  Cancellation. 
(when (yod) (and (u4g) (not(v4g)))) ;; Support.  Cancellation. 
(when (gpd) (and (x4g) (not(y4g)))) ;; Support.  Cancellation. 
(when (lpd) (and (z4g) (not(b5g)))) ;; Support.  Cancellation. 
(when (tpd) (and (c5g) (not(g5g)))) ;; Support.  Cancellation. 
(when (ypd) (and (h5g) (not(j5g)))) ;; Support.  Cancellation. 
(when (gqd) (and (k5g) (not(l5g)))) ;; Support.  Cancellation. 
(when (lqd) (and (m5g) (not(q5g)))) ;; Support.  Cancellation. 
(when (tqd) (and (r5g) (not(t5g)))) ;; Support.  Cancellation. 
(when (yqd) (and (u5g) (not(v5g)))) ;; Support.  Cancellation. 
(when (gsd) (and (x5g) (not(y5g)))) ;; Support.  Cancellation. 
(when (lsd) (and (z5g) (not(b6g)))) ;; Support.  Cancellation. 
(when (tsd) (and (c6g) (not(g6g)))) ;; Support.  Cancellation. 
(when (ysd) (and (h6g) (not(j6g)))) ;; Support.  Cancellation. 
(when (grd) (and (k6g) (not(l6g)))) ;; Support.  Cancellation. 
(when (lrd) (and (m6g) (not(q6g)))) ;; Support.  Cancellation. 
(when (trd) (and (r6g) (not(t6g)))) ;; Support.  Cancellation. 
(when (yrd) (and (u6g) (not(v6g)))) ;; Support.  Cancellation. 
(when (gtd) (and (x6g) (not(y6g)))) ;; Support.  Cancellation. 
(when (ltd) (and (z6g) (not(b7g)))) ;; Support.  Cancellation. 
(when (ttd) (and (c7g) (not(g7g)))) ;; Support.  Cancellation. 
(when (ytd) (and (h7g) (not(j7g)))) ;; Support.  Cancellation. 
(when (gud) (and (k7g) (not(l7g)))) ;; Support.  Cancellation. 
(when (lud) (and (m7g) (not(q7g)))) ;; Support.  Cancellation. 
(when (tud) (and (r7g) (not(t7g)))) ;; Support.  Cancellation. 
(when (yvd) (and (h8g) (not(j8g)))) ;; Support.  Cancellation. 
(when (gwd) (and (k8g) (not(l8g)))) ;; Support.  Cancellation. 
(when (lwd) (and (m8g) (not(q8g)))) ;; Support.  Cancellation. 
(when (twd) (and (r8g) (not(t8g)))) ;; Support.  Cancellation. 
(when (lxd) (and (z8g) (not(b9g)))) ;; Support.  Cancellation. 
(when (txd) (and (c9g) (not(g9g)))) ;; Support.  Cancellation. 
(when (gyd) (and (k9g) (not(l9g)))) ;; Support.  Cancellation. 
(when (lyd) (and (m9g) (not(q9g)))) ;; Support.  Cancellation. 
(when (yyd) (and (u9g) (not(v9g)))) ;; Support.  Cancellation. 
(when (gzd) (and (x9g) (not(y9g)))) ;; Support.  Cancellation. 
(when (lzd) (and (z9g) (not(b0g)))) ;; Support.  Cancellation. 
(when (tzd) (and (c0g) (not(g0g)))) ;; Support.  Cancellation. 
(when (yzd) (and (h0g) (not(j0g)))) ;; Support.  Cancellation. 
(when (g1d) (and (k0g) (not(l0g)))) ;; Support.  Cancellation. 
(when (l1d) (and (m0g) (not(q0g)))) ;; Support.  Cancellation. 
(when (t1d) (and (r0g) (not(t0g)))) ;; Support.  Cancellation. 
(when (v7d) (and (tch) (not(uch)))) ;; Support.  Cancellation. 
(when (b8d) (and (vch) (not(xch)))) ;; Support.  Cancellation. 
(when (j8d) (and (ych) (not(zch)))) ;; Support.  Cancellation. 
(when (q8d) (and (bdh) (not(cdh)))) ;; Support.  Cancellation. 
(when (v8d) (and (gdh) (not(hdh)))) ;; Support.  Cancellation. 
(when (b9d) (and (jdh) (not(kdh)))) ;; Support.  Cancellation. 
(when (j9d) (and (ldh) (not(mdh)))) ;; Support.  Cancellation. 
(when (q9d) (and (qdh) (not(rdh)))) ;; Support.  Cancellation. 
(when (v9d) (and (tdh) (not(udh)))) ;; Support.  Cancellation. 
(when (b0d) (and (vdh) (not(xdh)))) ;; Support.  Cancellation. 
(when (j0d) (and (ydh) (not(zdh)))) ;; Support.  Cancellation. 
(when (q0d) (and (beh) (not(ceh)))) ;; Support.  Cancellation. 
(when (v0d) (and (geh) (not(heh)))) ;; Support.  Cancellation. 
(when (bae) (and (jeh) (not(keh)))) ;; Support.  Cancellation. 
(when (jae) (and (leh) (not(meh)))) ;; Support.  Cancellation. 
(when (qae) (and (qeh) (not(reh)))) ;; Support.  Cancellation. 
(when (vae) (and (teh) (not(ueh)))) ;; Support.  Cancellation. 
(when (bbe) (and (veh) (not(xeh)))) ;; Support.  Cancellation. 
(when (jbe) (and (yeh) (not(zeh)))) ;; Support.  Cancellation. 
(when (qbe) (and (bfh) (not(cfh)))) ;; Support.  Cancellation. 
(when (vbe) (and (gfh) (not(hfh)))) ;; Support.  Cancellation. 
(when (bce) (and (jfh) (not(kfh)))) ;; Support.  Cancellation. 
(when (jce) (and (lfh) (not(mfh)))) ;; Support.  Cancellation. 
(when (qce) (and (qfh) (not(rfh)))) ;; Support.  Cancellation. 
(when (vce) (and (tfh) (not(ufh)))) ;; Support.  Cancellation. 
(when (bde) (and (vfh) (not(xfh)))) ;; Support.  Cancellation. 
(when (jde)  (yfh)) ;; Support. 
(when (qde)  (bgh)) ;; Support. 
(when (vde) (and (ggh) (not(hgh)))) ;; Support.  Cancellation. 
(when (bee) (and (jgh) (not(kgh)))) ;; Support.  Cancellation. 
(when (jee) (and (lgh) (not(mgh)))) ;; Support.  Cancellation. 
(when (qee) (and (qgh) (not(rgh)))) ;; Support.  Cancellation. 
(when (vie) (and (tih) (not(uih)))) ;; Support.  Cancellation. 
(when (bje) (and (vih) (not(xih)))) ;; Support.  Cancellation. 
(when (jje) (and (yih) (not(zih)))) ;; Support.  Cancellation. 
(when (qje) (and (bjh) (not(cjh)))) ;; Support.  Cancellation. 
(when (vje) (and (gjh) (not(hjh)))) ;; Support.  Cancellation. 
(when (bke) (and (jjh) (not(kjh)))) ;; Support.  Cancellation. 
(when (jke) (and (ljh) (not(mjh)))) ;; Support.  Cancellation. 
(when (qke) (and (qjh) (not(rjh)))) ;; Support.  Cancellation. 
(when (vke) (and (tjh) (not(ujh)))) ;; Support.  Cancellation. 
(when (ble) (and (vjh) (not(xjh)))) ;; Support.  Cancellation. 
(when (jle) (and (yjh) (not(zjh)))) ;; Support.  Cancellation. 
(when (qle) (and (bkh) (not(ckh)))) ;; Support.  Cancellation. 
(when (vle) (and (gkh) (not(hkh)))) ;; Support.  Cancellation. 
(when (bme) (and (jkh) (not(kkh)))) ;; Support.  Cancellation. 
(when (jme) (and (lkh) (not(mkh)))) ;; Support.  Cancellation. 
(when (qme) (and (qkh) (not(rkh)))) ;; Support.  Cancellation. 
(when (vme) (and (tkh) (not(ukh)))) ;; Support.  Cancellation. 
(when (bne) (and (vkh) (not(xkh)))) ;; Support.  Cancellation. 
(when (jne) (and (ykh) (not(zkh)))) ;; Support.  Cancellation. 
(when (qne) (and (blh) (not(clh)))) ;; Support.  Cancellation. 
(when (vne)  (glh)) ;; Support. 
(when (boe)  (jlh)) ;; Support. 
(when (joe)  (llh)) ;; Support. 
(when (qoe)  (qlh)) ;; Support. 
(when (voe) (and (tlh) (not(ulh)))) ;; Support.  Cancellation. 
(when (bpe) (and (vlh) (not(xlh)))) ;; Support.  Cancellation. 
(when (jpe) (and (ylh) (not(zlh)))) ;; Support.  Cancellation. 
(when (qpe) (and (bmh) (not(cmh)))) ;; Support.  Cancellation. 
(when (vpe) (and (gmh) (not(hmh)))) ;; Support.  Cancellation. 
(when (bqe) (and (jmh) (not(kmh)))) ;; Support.  Cancellation. 
(when (jqe) (and (lmh) (not(mmh)))) ;; Support.  Cancellation. 
(when (qqe) (and (qmh) (not(rmh)))) ;; Support.  Cancellation. 
(when (vqe) (and (tmh) (not(umh)))) ;; Support.  Cancellation. 
(when (bse) (and (vmh) (not(xmh)))) ;; Support.  Cancellation. 
(when (jse) (and (ymh) (not(zmh)))) ;; Support.  Cancellation. 
(when (qse) (and (bnh) (not(cnh)))) ;; Support.  Cancellation. 
(when (vse) (and (gnh) (not(hnh)))) ;; Support.  Cancellation. 
(when (bre) (and (jnh) (not(knh)))) ;; Support.  Cancellation. 
(when (jre)  (lnh)) ;; Support. 
(when (mre)  (qnh)) ;; Support. 
(when (tre) (and (rnh) (not(tnh)))) ;; Support.  Cancellation. 
(when (yre) (and (unh) (not(vnh)))) ;; Support.  Cancellation. 
(when (gte) (and (xnh) (not(ynh)))) ;; Support.  Cancellation. 
(when (lte) (and (znh) (not(boh)))) ;; Support.  Cancellation. 
(when (tte) (and (coh) (not(goh)))) ;; Support.  Cancellation. 
(when (yte)  (hoh)) ;; Support. 
(when (gue)  (koh)) ;; Support. 
(when (lue) (and (moh) (not(qoh)))) ;; Support.  Cancellation. 
(when (tue) (and (roh) (not(toh)))) ;; Support.  Cancellation. 
(when (yue) (and (uoh) (not(voh)))) ;; Support.  Cancellation. 
(when (gve) (and (xoh) (not(yoh)))) ;; Support.  Cancellation. 
(when (lve) (and (zoh) (not(bph)))) ;; Support.  Cancellation. 
(when (tve) (and (cph) (not(gph)))) ;; Support.  Cancellation. 
(when (yve) (and (hph) (not(jph)))) ;; Support.  Cancellation. 
(when (gwe) (and (kph) (not(lph)))) ;; Support.  Cancellation. 
(when (lwe) (and (mph) (not(qph)))) ;; Support.  Cancellation. 
(when (twe) (and (rph) (not(tph)))) ;; Support.  Cancellation. 
(when (ywe) (and (uph) (not(vph)))) ;; Support.  Cancellation. 
(when (gxe) (and (xph) (not(yph)))) ;; Support.  Cancellation. 
(when (lxe) (and (zph) (not(bqh)))) ;; Support.  Cancellation. 
(when (txe) (and (cqh) (not(gqh)))) ;; Support.  Cancellation. 
(when (yxe) (and (hqh) (not(jqh)))) ;; Support.  Cancellation. 
(when (gye) (and (kqh) (not(lqh)))) ;; Support.  Cancellation. 
(when (lye) (and (mqh) (not(qqh)))) ;; Support.  Cancellation. 
(when (tye) (and (rqh) (not(tqh)))) ;; Support.  Cancellation. 
(when (yye) (and (uqh) (not(vqh)))) ;; Support.  Cancellation. 
(when (gze)  (xqh)) ;; Support. 
(when (lze) (and (zqh) (not(bsh)))) ;; Support.  Cancellation. 
(when (tze) (and (csh) (not(gsh)))) ;; Support.  Cancellation. 
(when (yze) (and (hsh) (not(jsh)))) ;; Support.  Cancellation. 
(when (g1e) (and (ksh) (not(lsh)))) ;; Support.  Cancellation. 
(when (t4e) (and (cth) (not(gth)))) ;; Support.  Cancellation. 
(when (y4e) (and (hth) (not(jth)))) ;; Support.  Cancellation. 
(when (g5e) (and (kth) (not(lth)))) ;; Support.  Cancellation. 
(when (l5e) (and (mth) (not(qth)))) ;; Support.  Cancellation. 
(when (y5e) (and (uth) (not(vth)))) ;; Support.  Cancellation. 
(when (l6e) (and (zth) (not(buh)))) ;; Support.  Cancellation. 
(when (y6e) (and (huh) (not(juh)))) ;; Support.  Cancellation. 
(when (l7e) (and (muh) (not(quh)))) ;; Support.  Cancellation. 
(when (tyg) (and (ued) (not(mre)))) ;; Support.  Cancellation. 
(when (not(ryg))  (not(ted))) ;; Cancellation. 
(when (vyg) (and (zed) (not(yed)))) ;; Support.  Cancellation. 
(when (yyg) (and (hfd) (not(gfd)))) ;; Support.  Cancellation. 
(when (bzg) (and (mfd) (not(lfd)))) ;; Support.  Cancellation. 
(when (gzg) (and (ufd) (not(tfd)))) ;; Support.  Cancellation. 
(when (jzg) (and (zfd) (not(yfd)))) ;; Support.  Cancellation. 
(when (lzg) (and (hgd) (not(ggd)))) ;; Support.  Cancellation. 
(when (qzg) (and (mgd) (not(lgd)))) ;; Support.  Cancellation. 
(when (tzg) (and (ugd) (not(tgd)))) ;; Support.  Cancellation. 
(when (vzg) (and (zgd) (not(ygd)))) ;; Support.  Cancellation. 
(when (yzg) (and (hhd) (not(ghd)))) ;; Support.  Cancellation. 
(when (b1g) (and (mhd) (not(lhd)))) ;; Support.  Cancellation. 
(when (g1g) (and (uhd) (not(thd)))) ;; Support.  Cancellation. 
(when (j1g) (and (zhd) (not(yhd)))) ;; Support.  Cancellation. 
(when (l1g) (and (hid) (not(gid)))) ;; Support.  Cancellation. 
(when (q1g) (and (mid) (not(lid)))) ;; Support.  Cancellation. 
(when (t1g) (and (uid) (not(tid)))) ;; Support.  Cancellation. 
(when (v1g) (and (zid) (not(yid)))) ;; Support.  Cancellation. 
(when (y1g) (and (hjd) (not(gjd)))) ;; Support.  Cancellation. 
(when (b2g) (and (mjd) (not(ljd)))) ;; Support.  Cancellation. 
(when (g2g) (and (ujd) (not(tjd)))) ;; Support.  Cancellation. 
(when (j2g) (and (zjd) (not(yjd)))) ;; Support.  Cancellation. 
(when (l2g) (and (hkd) (not(gkd)))) ;; Support.  Cancellation. 
(when (q2g) (and (mkd) (not(lkd)))) ;; Support.  Cancellation. 
(when (t2g) (and (ukd) (not(tkd)))) ;; Support.  Cancellation. 
(when (v2g) (and (zkd) (not(ykd)))) ;; Support.  Cancellation. 
(when (y2g) (and (hld) (not(gld)))) ;; Support.  Cancellation. 
(when (b3g) (and (mld) (not(lld)))) ;; Support.  Cancellation. 
(when (g3g) (and (uld) (not(tld)))) ;; Support.  Cancellation. 
(when (j3g) (and (zld) (not(yld)))) ;; Support.  Cancellation. 
(when (l3g) (and (hmd) (not(gmd)))) ;; Support.  Cancellation. 
(when (q3g) (and (mmd) (not(lmd)))) ;; Support.  Cancellation. 
(when (t3g) (and (umd) (not(tmd)))) ;; Support.  Cancellation. 
(when (v3g) (and (zmd) (not(ymd)))) ;; Support.  Cancellation. 
(when (y3g) (and (hnd) (not(gnd)))) ;; Support.  Cancellation. 
(when (b4g) (and (mnd) (not(lnd)))) ;; Support.  Cancellation. 
(when (g4g) (and (und) (not(tnd)))) ;; Support.  Cancellation. 
(when (j4g) (and (znd) (not(ynd)))) ;; Support.  Cancellation. 
(when (l4g) (and (hod) (not(god)))) ;; Support.  Cancellation. 
(when (q4g) (and (mod) (not(lod)))) ;; Support.  Cancellation. 
(when (t4g) (and (uod) (not(tod)))) ;; Support.  Cancellation. 
(when (v4g) (and (zod) (not(yod)))) ;; Support.  Cancellation. 
(when (y4g) (and (hpd) (not(gpd)))) ;; Support.  Cancellation. 
(when (b5g) (and (mpd) (not(lpd)))) ;; Support.  Cancellation. 
(when (g5g) (and (upd) (not(tpd)))) ;; Support.  Cancellation. 
(when (j5g) (and (zpd) (not(ypd)))) ;; Support.  Cancellation. 
(when (l5g) (and (hqd) (not(gqd)))) ;; Support.  Cancellation. 
(when (q5g) (and (mqd) (not(lqd)))) ;; Support.  Cancellation. 
(when (t5g) (and (uqd) (not(tqd)))) ;; Support.  Cancellation. 
(when (v5g) (and (zqd) (not(yqd)))) ;; Support.  Cancellation. 
(when (y5g) (and (hsd) (not(gsd)))) ;; Support.  Cancellation. 
(when (b6g) (and (msd) (not(lsd)))) ;; Support.  Cancellation. 
(when (g6g) (and (usd) (not(tsd)))) ;; Support.  Cancellation. 
(when (j6g) (and (zsd) (not(ysd)))) ;; Support.  Cancellation. 
(when (l6g) (and (hrd) (not(grd)))) ;; Support.  Cancellation. 
(when (q6g) (and (mrd) (not(lrd)))) ;; Support.  Cancellation. 
(when (t6g) (and (urd) (not(trd)))) ;; Support.  Cancellation. 
(when (v6g) (and (zrd) (not(yrd)))) ;; Support.  Cancellation. 
(when (y6g) (and (htd) (not(gtd)))) ;; Support.  Cancellation. 
(when (b7g) (and (mtd) (not(ltd)))) ;; Support.  Cancellation. 
(when (g7g) (and (utd) (not(ttd)))) ;; Support.  Cancellation. 
(when (j7g) (and (ztd) (not(ytd)))) ;; Support.  Cancellation. 
(when (l7g) (and (hud) (not(gud)))) ;; Support.  Cancellation. 
(when (q7g) (and (mud) (not(lud)))) ;; Support.  Cancellation. 
(when (t7g) (and (uud) (not(tud)))) ;; Support.  Cancellation. 
(when (v7g)  (zud)) ;; Support. 
(when (y7g)  (hvd)) ;; Support. 
(when (b8g)  (mvd)) ;; Support. 
(when (g8g)  (uvd)) ;; Support. 
(when (j8g) (and (zvd) (not(yvd)))) ;; Support.  Cancellation. 
(when (l8g) (and (hwd) (not(gwd)))) ;; Support.  Cancellation. 
(when (q8g) (and (mwd) (not(lwd)))) ;; Support.  Cancellation. 
(when (t8g) (and (uwd) (not(twd)))) ;; Support.  Cancellation. 
(when (v8g)  (zwd)) ;; Support. 
(when (y8g)  (hxd)) ;; Support. 
(when (b9g) (and (mxd) (not(lxd)))) ;; Support.  Cancellation. 
(when (g9g) (and (uxd) (not(txd)))) ;; Support.  Cancellation. 
(when (j9g)  (zxd)) ;; Support. 
(when (l9g) (and (hyd) (not(gyd)))) ;; Support.  Cancellation. 
(when (q9g) (and (myd) (not(lyd)))) ;; Support.  Cancellation. 
(when (t9g)  (uyd)) ;; Support. 
(when (v9g) (and (zyd) (not(yyd)))) ;; Support.  Cancellation. 
(when (y9g) (and (hzd) (not(gzd)))) ;; Support.  Cancellation. 
(when (b0g) (and (mzd) (not(lzd)))) ;; Support.  Cancellation. 
(when (g0g) (and (uzd) (not(tzd)))) ;; Support.  Cancellation. 
(when (j0g) (and (zzd) (not(yzd)))) ;; Support.  Cancellation. 
(when (l0g) (and (h1d) (not(g1d)))) ;; Support.  Cancellation. 
(when (q0g) (and (m1d) (not(l1d)))) ;; Support.  Cancellation. 
(when (t0g) (and (u1d) (not(t1d)))) ;; Support.  Cancellation. 
(when (v0g)  (z1d)) ;; Support. 
(when (y0g)  (h2d)) ;; Support. 
(when (bah)  (m2d)) ;; Support. 
(when (gah)  (u2d)) ;; Support. 
(when (jah)  (z2d)) ;; Support. 
(when (lah)  (h3d)) ;; Support. 
(when (qah)  (m3d)) ;; Support. 
(when (rah)  (r3d)) ;; Support. 
(when (uah)  (x3d)) ;; Support. 
(when (xah)  (c4d)) ;; Support. 
(when (zah)  (k4d)) ;; Support. 
(when (cbh)  (r4d)) ;; Support. 
(when (hbh)  (x4d)) ;; Support. 
(when (kbh)  (c5d)) ;; Support. 
(when (mbh)  (k5d)) ;; Support. 
(when (rbh)  (r5d)) ;; Support. 
(when (ubh)  (x5d)) ;; Support. 
(when (xbh)  (c6d)) ;; Support. 
(when (zbh)  (k6d)) ;; Support. 
(when (cch)  (r6d)) ;; Support. 
(when (hch)  (x6d)) ;; Support. 
(when (kch)  (c7d)) ;; Support. 
(when (mch)  (k7d)) ;; Support. 
(when (rch)  (r7d)) ;; Support. 
(when (uch) (and (x7d) (not(v7d)))) ;; Support.  Cancellation. 
(when (xch) (and (c8d) (not(b8d)))) ;; Support.  Cancellation. 
(when (zch) (and (k8d) (not(j8d)))) ;; Support.  Cancellation. 
(when (cdh) (and (r8d) (not(q8d)))) ;; Support.  Cancellation. 
(when (hdh) (and (x8d) (not(v8d)))) ;; Support.  Cancellation. 
(when (kdh) (and (c9d) (not(b9d)))) ;; Support.  Cancellation. 
(when (mdh) (and (k9d) (not(j9d)))) ;; Support.  Cancellation. 
(when (rdh) (and (r9d) (not(q9d)))) ;; Support.  Cancellation. 
(when (udh) (and (x9d) (not(v9d)))) ;; Support.  Cancellation. 
(when (xdh) (and (c0d) (not(b0d)))) ;; Support.  Cancellation. 
(when (zdh) (and (k0d) (not(j0d)))) ;; Support.  Cancellation. 
(when (ceh) (and (r0d) (not(q0d)))) ;; Support.  Cancellation. 
(when (heh) (and (x0d) (not(v0d)))) ;; Support.  Cancellation. 
(when (keh) (and (cae) (not(bae)))) ;; Support.  Cancellation. 
(when (meh) (and (kae) (not(jae)))) ;; Support.  Cancellation. 
(when (reh) (and (rae) (not(qae)))) ;; Support.  Cancellation. 
(when (ueh) (and (xae) (not(vae)))) ;; Support.  Cancellation. 
(when (xeh) (and (cbe) (not(bbe)))) ;; Support.  Cancellation. 
(when (zeh) (and (kbe) (not(jbe)))) ;; Support.  Cancellation. 
(when (cfh) (and (rbe) (not(qbe)))) ;; Support.  Cancellation. 
(when (hfh) (and (xbe) (not(vbe)))) ;; Support.  Cancellation. 
(when (kfh) (and (cce) (not(bce)))) ;; Support.  Cancellation. 
(when (mfh) (and (kce) (not(jce)))) ;; Support.  Cancellation. 
(when (rfh) (and (rce) (not(qce)))) ;; Support.  Cancellation. 
(when (ufh) (and (xce) (not(vce)))) ;; Support.  Cancellation. 
(when (xfh) (and (cde) (not(bde)))) ;; Support.  Cancellation. 
(when (hgh) (and (xde) (not(vde)))) ;; Support.  Cancellation. 
(when (kgh) (and (cee) (not(bee)))) ;; Support.  Cancellation. 
(when (mgh) (and (kee) (not(jee)))) ;; Support.  Cancellation. 
(when (rgh) (and (ree) (not(qee)))) ;; Support.  Cancellation. 
(when (ugh)  (xee)) ;; Support. 
(when (xgh)  (cfe)) ;; Support. 
(when (zgh)  (kfe)) ;; Support. 
(when (chh)  (rfe)) ;; Support. 
(when (hhh)  (xfe)) ;; Support. 
(when (khh)  (cge)) ;; Support. 
(when (mhh)  (kge)) ;; Support. 
(when (rhh)  (rge)) ;; Support. 
(when (uhh)  (xge)) ;; Support. 
(when (xhh)  (che)) ;; Support. 
(when (zhh)  (khe)) ;; Support. 
(when (hih)  (xhe)) ;; Support. 
(when (mih)  (kie)) ;; Support. 
(when (uih) (and (xie) (not(vie)))) ;; Support.  Cancellation. 
(when (xih) (and (cje) (not(bje)))) ;; Support.  Cancellation. 
(when (zih) (and (kje) (not(jje)))) ;; Support.  Cancellation. 
(when (cjh) (and (rje) (not(qje)))) ;; Support.  Cancellation. 
(when (hjh) (and (xje) (not(vje)))) ;; Support.  Cancellation. 
(when (kjh) (and (cke) (not(bke)))) ;; Support.  Cancellation. 
(when (mjh) (and (kke) (not(jke)))) ;; Support.  Cancellation. 
(when (rjh) (and (rke) (not(qke)))) ;; Support.  Cancellation. 
(when (ujh) (and (xke) (not(vke)))) ;; Support.  Cancellation. 
(when (xjh) (and (cle) (not(ble)))) ;; Support.  Cancellation. 
(when (zjh) (and (kle) (not(jle)))) ;; Support.  Cancellation. 
(when (ckh) (and (rle) (not(qle)))) ;; Support.  Cancellation. 
(when (hkh) (and (xle) (not(vle)))) ;; Support.  Cancellation. 
(when (kkh) (and (cme) (not(bme)))) ;; Support.  Cancellation. 
(when (mkh) (and (kme) (not(jme)))) ;; Support.  Cancellation. 
(when (rkh) (and (rme) (not(qme)))) ;; Support.  Cancellation. 
(when (ukh) (and (xme) (not(vme)))) ;; Support.  Cancellation. 
(when (xkh) (and (cne) (not(bne)))) ;; Support.  Cancellation. 
(when (zkh) (and (kne) (not(jne)))) ;; Support.  Cancellation. 
(when (clh) (and (rne) (not(qne)))) ;; Support.  Cancellation. 
(when (ulh) (and (xoe) (not(voe)))) ;; Support.  Cancellation. 
(when (xlh) (and (cpe) (not(bpe)))) ;; Support.  Cancellation. 
(when (zlh) (and (kpe) (not(jpe)))) ;; Support.  Cancellation. 
(when (cmh) (and (rpe) (not(qpe)))) ;; Support.  Cancellation. 
(when (hmh) (and (xpe) (not(vpe)))) ;; Support.  Cancellation. 
(when (kmh) (and (cqe) (not(bqe)))) ;; Support.  Cancellation. 
(when (mmh) (and (kqe) (not(jqe)))) ;; Support.  Cancellation. 
(when (rmh) (and (rqe) (not(qqe)))) ;; Support.  Cancellation. 
(when (umh) (and (xqe) (not(vqe)))) ;; Support.  Cancellation. 
(when (xmh) (and (cse) (not(bse)))) ;; Support.  Cancellation. 
(when (zmh) (and (kse) (not(jse)))) ;; Support.  Cancellation. 
(when (cnh) (and (rse) (not(qse)))) ;; Support.  Cancellation. 
(when (hnh) (and (xse) (not(vse)))) ;; Support.  Cancellation. 
(when (knh) (and (cre) (not(bre)))) ;; Support.  Cancellation. 
(when (tnh) (and (ure) (not(tre)))) ;; Support.  Cancellation. 
(when (vnh) (and (zre) (not(yre)))) ;; Support.  Cancellation. 
(when (ynh) (and (hte) (not(gte)))) ;; Support.  Cancellation. 
(when (boh) (and (mte) (not(lte)))) ;; Support.  Cancellation. 
(when (goh) (and (ute) (not(tte)))) ;; Support.  Cancellation. 
(when (qoh) (and (mue) (not(lue)))) ;; Support.  Cancellation. 
(when (toh) (and (uue) (not(tue)))) ;; Support.  Cancellation. 
(when (voh) (and (zue) (not(yue)))) ;; Support.  Cancellation. 
(when (yoh) (and (hve) (not(gve)))) ;; Support.  Cancellation. 
(when (bph) (and (mve) (not(lve)))) ;; Support.  Cancellation. 
(when (gph) (and (uve) (not(tve)))) ;; Support.  Cancellation. 
(when (jph) (and (zve) (not(yve)))) ;; Support.  Cancellation. 
(when (lph) (and (hwe) (not(gwe)))) ;; Support.  Cancellation. 
(when (qph) (and (mwe) (not(lwe)))) ;; Support.  Cancellation. 
(when (tph) (and (uwe) (not(twe)))) ;; Support.  Cancellation. 
(when (vph) (and (zwe) (not(ywe)))) ;; Support.  Cancellation. 
(when (yph) (and (hxe) (not(gxe)))) ;; Support.  Cancellation. 
(when (bqh) (and (mxe) (not(lxe)))) ;; Support.  Cancellation. 
(when (gqh) (and (uxe) (not(txe)))) ;; Support.  Cancellation. 
(when (jqh) (and (zxe) (not(yxe)))) ;; Support.  Cancellation. 
(when (lqh) (and (hye) (not(gye)))) ;; Support.  Cancellation. 
(when (qqh) (and (mye) (not(lye)))) ;; Support.  Cancellation. 
(when (tqh) (and (uye) (not(tye)))) ;; Support.  Cancellation. 
(when (vqh) (and (zye) (not(yye)))) ;; Support.  Cancellation. 
(when (bsh) (and (mze) (not(lze)))) ;; Support.  Cancellation. 
(when (gsh) (and (uze) (not(tze)))) ;; Support.  Cancellation. 
(when (jsh) (and (zze) (not(yze)))) ;; Support.  Cancellation. 
(when (lsh) (and (h1e) (not(g1e)))) ;; Support.  Cancellation. 
(when (tsh)  (u1e)) ;; Support. 
(when (vsh)  (z1e)) ;; Support. 
(when (grh)  (u2e)) ;; Support. 
(when (jrh)  (z2e)) ;; Support. 
(when (lrh)  (h3e)) ;; Support. 
(when (qrh)  (m3e)) ;; Support. 
(when (trh)  (u3e)) ;; Support. 
(when (vrh)  (z3e)) ;; Support. 
(when (yrh)  (h4e)) ;; Support. 
(when (bth)  (m4e)) ;; Support. 
(when (gth) (and (u4e) (not(t4e)))) ;; Support.  Cancellation. 
(when (jth) (and (z4e) (not(y4e)))) ;; Support.  Cancellation. 
(when (lth) (and (h5e) (not(g5e)))) ;; Support.  Cancellation. 
(when (qth) (and (m5e) (not(l5e)))) ;; Support.  Cancellation. 
(when (tth)  (u5e)) ;; Support. 
(when (vth) (and (z5e) (not(y5e)))) ;; Support.  Cancellation. 
(when (yth)  (h6e)) ;; Support. 
(when (buh) (and (m6e) (not(l6e)))) ;; Support.  Cancellation. 
(when (guh)  (u6e)) ;; Support. 
(when (juh) (and (z6e) (not(y6e)))) ;; Support.  Cancellation. 
(when (luh)  (h7e)) ;; Support. 
))
(:action CMPSWAP_L2_L4
:parameters ()
:precondition (and (q7e))

:effect (and  (mvg) (cie)
(when (qyg) (and (m7e) (not(l7e)))) ;; Support.  Cancellation. 
(when (ted) (and (r3f) (not(reg)))) ;; Support.  Cancellation. 
(when (not(ued))  (not(t3f))) ;; Cancellation. 
(when (yed) (and (u3f) (not(v3f)))) ;; Support.  Cancellation. 
(when (gfd) (and (x3f) (not(y3f)))) ;; Support.  Cancellation. 
(when (lfd) (and (z3f) (not(b4f)))) ;; Support.  Cancellation. 
(when (tfd) (and (c4f) (not(g4f)))) ;; Support.  Cancellation. 
(when (yfd) (and (h4f) (not(j4f)))) ;; Support.  Cancellation. 
(when (ggd) (and (k4f) (not(l4f)))) ;; Support.  Cancellation. 
(when (lgd) (and (m4f) (not(q4f)))) ;; Support.  Cancellation. 
(when (tgd) (and (r4f) (not(t4f)))) ;; Support.  Cancellation. 
(when (ygd) (and (u4f) (not(v4f)))) ;; Support.  Cancellation. 
(when (ghd) (and (x4f) (not(y4f)))) ;; Support.  Cancellation. 
(when (lhd) (and (z4f) (not(b5f)))) ;; Support.  Cancellation. 
(when (thd) (and (c5f) (not(g5f)))) ;; Support.  Cancellation. 
(when (yhd) (and (h5f) (not(j5f)))) ;; Support.  Cancellation. 
(when (gid) (and (k5f) (not(l5f)))) ;; Support.  Cancellation. 
(when (lid) (and (m5f) (not(q5f)))) ;; Support.  Cancellation. 
(when (tid) (and (r5f) (not(t5f)))) ;; Support.  Cancellation. 
(when (yid) (and (u5f) (not(v5f)))) ;; Support.  Cancellation. 
(when (gjd) (and (x5f) (not(y5f)))) ;; Support.  Cancellation. 
(when (ljd) (and (z5f) (not(b6f)))) ;; Support.  Cancellation. 
(when (tjd) (and (c6f) (not(g6f)))) ;; Support.  Cancellation. 
(when (yjd) (and (h6f) (not(j6f)))) ;; Support.  Cancellation. 
(when (gkd) (and (k6f) (not(l6f)))) ;; Support.  Cancellation. 
(when (lkd) (and (m6f) (not(q6f)))) ;; Support.  Cancellation. 
(when (tkd) (and (r6f) (not(t6f)))) ;; Support.  Cancellation. 
(when (ykd) (and (u6f) (not(v6f)))) ;; Support.  Cancellation. 
(when (gld) (and (x6f) (not(y6f)))) ;; Support.  Cancellation. 
(when (lld) (and (z6f) (not(b7f)))) ;; Support.  Cancellation. 
(when (tld) (and (c7f) (not(g7f)))) ;; Support.  Cancellation. 
(when (yld) (and (h7f) (not(j7f)))) ;; Support.  Cancellation. 
(when (gmd) (and (k7f) (not(l7f)))) ;; Support.  Cancellation. 
(when (lmd) (and (m7f) (not(q7f)))) ;; Support.  Cancellation. 
(when (tmd) (and (r7f) (not(t7f)))) ;; Support.  Cancellation. 
(when (ymd) (and (u7f) (not(v7f)))) ;; Support.  Cancellation. 
(when (gnd) (and (x7f) (not(y7f)))) ;; Support.  Cancellation. 
(when (lnd) (and (z7f) (not(b8f)))) ;; Support.  Cancellation. 
(when (tnd) (and (c8f) (not(g8f)))) ;; Support.  Cancellation. 
(when (ynd) (and (h8f) (not(j8f)))) ;; Support.  Cancellation. 
(when (god) (and (k8f) (not(l8f)))) ;; Support.  Cancellation. 
(when (lod) (and (m8f) (not(q8f)))) ;; Support.  Cancellation. 
(when (tod) (and (r8f) (not(t8f)))) ;; Support.  Cancellation. 
(when (yod) (and (u8f) (not(v8f)))) ;; Support.  Cancellation. 
(when (gpd) (and (x8f) (not(y8f)))) ;; Support.  Cancellation. 
(when (lpd) (and (z8f) (not(b9f)))) ;; Support.  Cancellation. 
(when (tpd) (and (c9f) (not(g9f)))) ;; Support.  Cancellation. 
(when (ypd) (and (h9f) (not(j9f)))) ;; Support.  Cancellation. 
(when (gqd) (and (k9f) (not(l9f)))) ;; Support.  Cancellation. 
(when (lqd) (and (m9f) (not(q9f)))) ;; Support.  Cancellation. 
(when (tqd) (and (r9f) (not(t9f)))) ;; Support.  Cancellation. 
(when (yqd) (and (u9f) (not(v9f)))) ;; Support.  Cancellation. 
(when (gsd) (and (x9f) (not(y9f)))) ;; Support.  Cancellation. 
(when (lsd) (and (z9f) (not(b0f)))) ;; Support.  Cancellation. 
(when (tsd) (and (c0f) (not(g0f)))) ;; Support.  Cancellation. 
(when (ysd) (and (h0f) (not(j0f)))) ;; Support.  Cancellation. 
(when (grd) (and (k0f) (not(l0f)))) ;; Support.  Cancellation. 
(when (lrd) (and (m0f) (not(q0f)))) ;; Support.  Cancellation. 
(when (trd) (and (r0f) (not(t0f)))) ;; Support.  Cancellation. 
(when (yrd) (and (u0f) (not(v0f)))) ;; Support.  Cancellation. 
(when (gtd) (and (x0f) (not(y0f)))) ;; Support.  Cancellation. 
(when (ltd) (and (z0f) (not(bag)))) ;; Support.  Cancellation. 
(when (ttd) (and (cag) (not(gag)))) ;; Support.  Cancellation. 
(when (ytd) (and (hag) (not(jag)))) ;; Support.  Cancellation. 
(when (gud) (and (kag) (not(lag)))) ;; Support.  Cancellation. 
(when (lud) (and (mag) (not(qag)))) ;; Support.  Cancellation. 
(when (tud) (and (rag) (not(tag)))) ;; Support.  Cancellation. 
(when (yvd) (and (hbg) (not(jbg)))) ;; Support.  Cancellation. 
(when (gwd) (and (kbg) (not(lbg)))) ;; Support.  Cancellation. 
(when (lwd) (and (mbg) (not(qbg)))) ;; Support.  Cancellation. 
(when (twd) (and (rbg) (not(tbg)))) ;; Support.  Cancellation. 
(when (lxd) (and (zbg) (not(bcg)))) ;; Support.  Cancellation. 
(when (txd) (and (ccg) (not(gcg)))) ;; Support.  Cancellation. 
(when (gyd) (and (kcg) (not(lcg)))) ;; Support.  Cancellation. 
(when (lyd) (and (mcg) (not(qcg)))) ;; Support.  Cancellation. 
(when (yyd) (and (ucg) (not(vcg)))) ;; Support.  Cancellation. 
(when (gzd) (and (xcg) (not(ycg)))) ;; Support.  Cancellation. 
(when (lzd) (and (zcg) (not(bdg)))) ;; Support.  Cancellation. 
(when (tzd) (and (cdg) (not(gdg)))) ;; Support.  Cancellation. 
(when (yzd) (and (hdg) (not(jdg)))) ;; Support.  Cancellation. 
(when (g1d) (and (kdg) (not(ldg)))) ;; Support.  Cancellation. 
(when (l1d) (and (mdg) (not(qdg)))) ;; Support.  Cancellation. 
(when (t1d) (and (rdg) (not(tdg)))) ;; Support.  Cancellation. 
(when (v7d) (and (tgg) (not(ugg)))) ;; Support.  Cancellation. 
(when (b8d) (and (vgg) (not(xgg)))) ;; Support.  Cancellation. 
(when (j8d) (and (ygg) (not(zgg)))) ;; Support.  Cancellation. 
(when (q8d) (and (bhg) (not(chg)))) ;; Support.  Cancellation. 
(when (v8d) (and (ghg) (not(hhg)))) ;; Support.  Cancellation. 
(when (b9d) (and (jhg) (not(khg)))) ;; Support.  Cancellation. 
(when (j9d) (and (lhg) (not(mhg)))) ;; Support.  Cancellation. 
(when (q9d) (and (qhg) (not(rhg)))) ;; Support.  Cancellation. 
(when (v9d) (and (thg) (not(uhg)))) ;; Support.  Cancellation. 
(when (b0d) (and (vhg) (not(xhg)))) ;; Support.  Cancellation. 
(when (j0d) (and (yhg) (not(zhg)))) ;; Support.  Cancellation. 
(when (q0d) (and (big) (not(cig)))) ;; Support.  Cancellation. 
(when (v0d) (and (gig) (not(hig)))) ;; Support.  Cancellation. 
(when (bae) (and (jig) (not(kig)))) ;; Support.  Cancellation. 
(when (jae) (and (lig) (not(mig)))) ;; Support.  Cancellation. 
(when (qae) (and (qig) (not(rig)))) ;; Support.  Cancellation. 
(when (vae) (and (tig) (not(uig)))) ;; Support.  Cancellation. 
(when (bbe) (and (vig) (not(xig)))) ;; Support.  Cancellation. 
(when (jbe) (and (yig) (not(zig)))) ;; Support.  Cancellation. 
(when (qbe) (and (bjg) (not(cjg)))) ;; Support.  Cancellation. 
(when (vbe) (and (gjg) (not(hjg)))) ;; Support.  Cancellation. 
(when (bce) (and (jjg) (not(kjg)))) ;; Support.  Cancellation. 
(when (jce) (and (ljg) (not(mjg)))) ;; Support.  Cancellation. 
(when (qce) (and (qjg) (not(rjg)))) ;; Support.  Cancellation. 
(when (vce) (and (tjg) (not(ujg)))) ;; Support.  Cancellation. 
(when (bde) (and (vjg) (not(xjg)))) ;; Support.  Cancellation. 
(when (jde)  (yjg)) ;; Support. 
(when (qde) (and (bkg) (not(ckg)))) ;; Support.  Cancellation. 
(when (vde) (and (gkg) (not(hkg)))) ;; Support.  Cancellation. 
(when (bee) (and (jkg) (not(kkg)))) ;; Support.  Cancellation. 
(when (jee) (and (lkg) (not(mkg)))) ;; Support.  Cancellation. 
(when (qee) (and (qkg) (not(rkg)))) ;; Support.  Cancellation. 
(when (vie) (and (tmg) (not(umg)))) ;; Support.  Cancellation. 
(when (bje) (and (vmg) (not(xmg)))) ;; Support.  Cancellation. 
(when (jje) (and (ymg) (not(zmg)))) ;; Support.  Cancellation. 
(when (qje) (and (bng) (not(cng)))) ;; Support.  Cancellation. 
(when (vje) (and (gng) (not(hng)))) ;; Support.  Cancellation. 
(when (bke) (and (jng) (not(kng)))) ;; Support.  Cancellation. 
(when (jke) (and (lng) (not(mng)))) ;; Support.  Cancellation. 
(when (qke) (and (qng) (not(rng)))) ;; Support.  Cancellation. 
(when (vke) (and (tng) (not(ung)))) ;; Support.  Cancellation. 
(when (ble) (and (vng) (not(xng)))) ;; Support.  Cancellation. 
(when (jle) (and (yng) (not(zng)))) ;; Support.  Cancellation. 
(when (qle) (and (bog) (not(cog)))) ;; Support.  Cancellation. 
(when (vle) (and (gog) (not(hog)))) ;; Support.  Cancellation. 
(when (bme) (and (jog) (not(kog)))) ;; Support.  Cancellation. 
(when (jme) (and (log) (not(mog)))) ;; Support.  Cancellation. 
(when (qme) (and (qog) (not(rog)))) ;; Support.  Cancellation. 
(when (vme) (and (tog) (not(uog)))) ;; Support.  Cancellation. 
(when (bne) (and (vog) (not(xog)))) ;; Support.  Cancellation. 
(when (jne) (and (yog) (not(zog)))) ;; Support.  Cancellation. 
(when (qne) (and (bpg) (not(cpg)))) ;; Support.  Cancellation. 
(when (vne)  (gpg)) ;; Support. 
(when (boe) (and (jpg) (not(kpg)))) ;; Support.  Cancellation. 
(when (joe)  (lpg)) ;; Support. 
(when (qoe) (and (qpg) (not(rpg)))) ;; Support.  Cancellation. 
(when (voe) (and (tpg) (not(upg)))) ;; Support.  Cancellation. 
(when (bpe) (and (vpg) (not(xpg)))) ;; Support.  Cancellation. 
(when (jpe) (and (ypg) (not(zpg)))) ;; Support.  Cancellation. 
(when (qpe) (and (bqg) (not(cqg)))) ;; Support.  Cancellation. 
(when (vpe) (and (gqg) (not(hqg)))) ;; Support.  Cancellation. 
(when (bqe) (and (jqg) (not(kqg)))) ;; Support.  Cancellation. 
(when (jqe) (and (lqg) (not(mqg)))) ;; Support.  Cancellation. 
(when (qqe) (and (qqg) (not(rqg)))) ;; Support.  Cancellation. 
(when (vqe) (and (tqg) (not(uqg)))) ;; Support.  Cancellation. 
(when (bse) (and (vqg) (not(xqg)))) ;; Support.  Cancellation. 
(when (jse) (and (yqg) (not(zqg)))) ;; Support.  Cancellation. 
(when (qse) (and (bsg) (not(csg)))) ;; Support.  Cancellation. 
(when (vse) (and (gsg) (not(hsg)))) ;; Support.  Cancellation. 
(when (bre) (and (jsg) (not(ksg)))) ;; Support.  Cancellation. 
(when (jre) (and (lsg) (not(msg)))) ;; Support.  Cancellation. 
(when (mre)  (qsg)) ;; Support. 
(when (tre) (and (rsg) (not(tsg)))) ;; Support.  Cancellation. 
(when (yre) (and (usg) (not(vsg)))) ;; Support.  Cancellation. 
(when (gte) (and (xsg) (not(ysg)))) ;; Support.  Cancellation. 
(when (lte) (and (zsg) (not(brg)))) ;; Support.  Cancellation. 
(when (tte) (and (crg) (not(grg)))) ;; Support.  Cancellation. 
(when (yte) (and (hrg) (not(jrg)))) ;; Support.  Cancellation. 
(when (gue)  (krg)) ;; Support. 
(when (lue) (and (mrg) (not(qrg)))) ;; Support.  Cancellation. 
(when (tue) (and (rrg) (not(trg)))) ;; Support.  Cancellation. 
(when (yue) (and (urg) (not(vrg)))) ;; Support.  Cancellation. 
(when (gve) (and (xrg) (not(yrg)))) ;; Support.  Cancellation. 
(when (lve) (and (zrg) (not(btg)))) ;; Support.  Cancellation. 
(when (tve) (and (ctg) (not(gtg)))) ;; Support.  Cancellation. 
(when (yve) (and (htg) (not(jtg)))) ;; Support.  Cancellation. 
(when (gwe) (and (ktg) (not(ltg)))) ;; Support.  Cancellation. 
(when (lwe) (and (mtg) (not(qtg)))) ;; Support.  Cancellation. 
(when (twe) (and (rtg) (not(ttg)))) ;; Support.  Cancellation. 
(when (ywe) (and (utg) (not(vtg)))) ;; Support.  Cancellation. 
(when (gxe) (and (xtg) (not(ytg)))) ;; Support.  Cancellation. 
(when (lxe) (and (ztg) (not(bug)))) ;; Support.  Cancellation. 
(when (txe) (and (cug) (not(gug)))) ;; Support.  Cancellation. 
(when (yxe) (and (hug) (not(jug)))) ;; Support.  Cancellation. 
(when (gye) (and (kug) (not(lug)))) ;; Support.  Cancellation. 
(when (lye) (and (mug) (not(qug)))) ;; Support.  Cancellation. 
(when (tye) (and (rug) (not(tug)))) ;; Support.  Cancellation. 
(when (yye) (and (uug) (not(vug)))) ;; Support.  Cancellation. 
(when (gze) (and (xug) (not(yug)))) ;; Support.  Cancellation. 
(when (lze) (and (zug) (not(bvg)))) ;; Support.  Cancellation. 
(when (tze) (and (cvg) (not(gvg)))) ;; Support.  Cancellation. 
(when (yze) (and (hvg) (not(jvg)))) ;; Support.  Cancellation. 
(when (g1e) (and (kvg) (not(lvg)))) ;; Support.  Cancellation. 
(when (t4e) (and (cxg) (not(gxg)))) ;; Support.  Cancellation. 
(when (y4e) (and (hxg) (not(jxg)))) ;; Support.  Cancellation. 
(when (g5e) (and (kxg) (not(lxg)))) ;; Support.  Cancellation. 
(when (l5e) (and (mxg) (not(qxg)))) ;; Support.  Cancellation. 
(when (y5e) (and (uxg) (not(vxg)))) ;; Support.  Cancellation. 
(when (l6e) (and (zxg) (not(byg)))) ;; Support.  Cancellation. 
(when (y6e) (and (hyg) (not(jyg)))) ;; Support.  Cancellation. 
(when (l7e) (and (myg) (not(qyg)))) ;; Support.  Cancellation. 
(when (t3f) (and (ued) (not(mre)))) ;; Support.  Cancellation. 
(when (not(r3f))  (not(ted))) ;; Cancellation. 
(when (v3f) (and (zed) (not(yed)))) ;; Support.  Cancellation. 
(when (y3f) (and (hfd) (not(gfd)))) ;; Support.  Cancellation. 
(when (b4f) (and (mfd) (not(lfd)))) ;; Support.  Cancellation. 
(when (g4f) (and (ufd) (not(tfd)))) ;; Support.  Cancellation. 
(when (j4f) (and (zfd) (not(yfd)))) ;; Support.  Cancellation. 
(when (l4f) (and (hgd) (not(ggd)))) ;; Support.  Cancellation. 
(when (q4f) (and (mgd) (not(lgd)))) ;; Support.  Cancellation. 
(when (t4f) (and (ugd) (not(tgd)))) ;; Support.  Cancellation. 
(when (v4f) (and (zgd) (not(ygd)))) ;; Support.  Cancellation. 
(when (y4f) (and (hhd) (not(ghd)))) ;; Support.  Cancellation. 
(when (b5f) (and (mhd) (not(lhd)))) ;; Support.  Cancellation. 
(when (g5f) (and (uhd) (not(thd)))) ;; Support.  Cancellation. 
(when (j5f) (and (zhd) (not(yhd)))) ;; Support.  Cancellation. 
(when (l5f) (and (hid) (not(gid)))) ;; Support.  Cancellation. 
(when (q5f) (and (mid) (not(lid)))) ;; Support.  Cancellation. 
(when (t5f) (and (uid) (not(tid)))) ;; Support.  Cancellation. 
(when (v5f) (and (zid) (not(yid)))) ;; Support.  Cancellation. 
(when (y5f) (and (hjd) (not(gjd)))) ;; Support.  Cancellation. 
(when (b6f) (and (mjd) (not(ljd)))) ;; Support.  Cancellation. 
(when (g6f) (and (ujd) (not(tjd)))) ;; Support.  Cancellation. 
(when (j6f) (and (zjd) (not(yjd)))) ;; Support.  Cancellation. 
(when (l6f) (and (hkd) (not(gkd)))) ;; Support.  Cancellation. 
(when (q6f) (and (mkd) (not(lkd)))) ;; Support.  Cancellation. 
(when (t6f) (and (ukd) (not(tkd)))) ;; Support.  Cancellation. 
(when (v6f) (and (zkd) (not(ykd)))) ;; Support.  Cancellation. 
(when (y6f) (and (hld) (not(gld)))) ;; Support.  Cancellation. 
(when (b7f) (and (mld) (not(lld)))) ;; Support.  Cancellation. 
(when (g7f) (and (uld) (not(tld)))) ;; Support.  Cancellation. 
(when (j7f) (and (zld) (not(yld)))) ;; Support.  Cancellation. 
(when (l7f) (and (hmd) (not(gmd)))) ;; Support.  Cancellation. 
(when (q7f) (and (mmd) (not(lmd)))) ;; Support.  Cancellation. 
(when (t7f) (and (umd) (not(tmd)))) ;; Support.  Cancellation. 
(when (v7f) (and (zmd) (not(ymd)))) ;; Support.  Cancellation. 
(when (y7f) (and (hnd) (not(gnd)))) ;; Support.  Cancellation. 
(when (b8f) (and (mnd) (not(lnd)))) ;; Support.  Cancellation. 
(when (g8f) (and (und) (not(tnd)))) ;; Support.  Cancellation. 
(when (j8f) (and (znd) (not(ynd)))) ;; Support.  Cancellation. 
(when (l8f) (and (hod) (not(god)))) ;; Support.  Cancellation. 
(when (q8f) (and (mod) (not(lod)))) ;; Support.  Cancellation. 
(when (t8f) (and (uod) (not(tod)))) ;; Support.  Cancellation. 
(when (v8f) (and (zod) (not(yod)))) ;; Support.  Cancellation. 
(when (y8f) (and (hpd) (not(gpd)))) ;; Support.  Cancellation. 
(when (b9f) (and (mpd) (not(lpd)))) ;; Support.  Cancellation. 
(when (g9f) (and (upd) (not(tpd)))) ;; Support.  Cancellation. 
(when (j9f) (and (zpd) (not(ypd)))) ;; Support.  Cancellation. 
(when (l9f) (and (hqd) (not(gqd)))) ;; Support.  Cancellation. 
(when (q9f) (and (mqd) (not(lqd)))) ;; Support.  Cancellation. 
(when (t9f) (and (uqd) (not(tqd)))) ;; Support.  Cancellation. 
(when (v9f) (and (zqd) (not(yqd)))) ;; Support.  Cancellation. 
(when (y9f) (and (hsd) (not(gsd)))) ;; Support.  Cancellation. 
(when (b0f) (and (msd) (not(lsd)))) ;; Support.  Cancellation. 
(when (g0f) (and (usd) (not(tsd)))) ;; Support.  Cancellation. 
(when (j0f) (and (zsd) (not(ysd)))) ;; Support.  Cancellation. 
(when (l0f) (and (hrd) (not(grd)))) ;; Support.  Cancellation. 
(when (q0f) (and (mrd) (not(lrd)))) ;; Support.  Cancellation. 
(when (t0f) (and (urd) (not(trd)))) ;; Support.  Cancellation. 
(when (v0f) (and (zrd) (not(yrd)))) ;; Support.  Cancellation. 
(when (y0f) (and (htd) (not(gtd)))) ;; Support.  Cancellation. 
(when (bag) (and (mtd) (not(ltd)))) ;; Support.  Cancellation. 
(when (gag) (and (utd) (not(ttd)))) ;; Support.  Cancellation. 
(when (jag) (and (ztd) (not(ytd)))) ;; Support.  Cancellation. 
(when (lag) (and (hud) (not(gud)))) ;; Support.  Cancellation. 
(when (qag) (and (mud) (not(lud)))) ;; Support.  Cancellation. 
(when (tag) (and (uud) (not(tud)))) ;; Support.  Cancellation. 
(when (vag)  (zud)) ;; Support. 
(when (yag)  (hvd)) ;; Support. 
(when (bbg)  (mvd)) ;; Support. 
(when (gbg)  (uvd)) ;; Support. 
(when (jbg) (and (zvd) (not(yvd)))) ;; Support.  Cancellation. 
(when (lbg) (and (hwd) (not(gwd)))) ;; Support.  Cancellation. 
(when (qbg) (and (mwd) (not(lwd)))) ;; Support.  Cancellation. 
(when (tbg) (and (uwd) (not(twd)))) ;; Support.  Cancellation. 
(when (vbg)  (zwd)) ;; Support. 
(when (ybg)  (hxd)) ;; Support. 
(when (bcg) (and (mxd) (not(lxd)))) ;; Support.  Cancellation. 
(when (gcg) (and (uxd) (not(txd)))) ;; Support.  Cancellation. 
(when (jcg)  (zxd)) ;; Support. 
(when (lcg) (and (hyd) (not(gyd)))) ;; Support.  Cancellation. 
(when (qcg) (and (myd) (not(lyd)))) ;; Support.  Cancellation. 
(when (tcg)  (uyd)) ;; Support. 
(when (vcg) (and (zyd) (not(yyd)))) ;; Support.  Cancellation. 
(when (ycg) (and (hzd) (not(gzd)))) ;; Support.  Cancellation. 
(when (bdg) (and (mzd) (not(lzd)))) ;; Support.  Cancellation. 
(when (gdg) (and (uzd) (not(tzd)))) ;; Support.  Cancellation. 
(when (jdg) (and (zzd) (not(yzd)))) ;; Support.  Cancellation. 
(when (ldg) (and (h1d) (not(g1d)))) ;; Support.  Cancellation. 
(when (qdg) (and (m1d) (not(l1d)))) ;; Support.  Cancellation. 
(when (tdg) (and (u1d) (not(t1d)))) ;; Support.  Cancellation. 
(when (vdg)  (z1d)) ;; Support. 
(when (ydg)  (h2d)) ;; Support. 
(when (beg)  (m2d)) ;; Support. 
(when (geg)  (u2d)) ;; Support. 
(when (jeg)  (z2d)) ;; Support. 
(when (leg)  (h3d)) ;; Support. 
(when (qeg)  (m3d)) ;; Support. 
(when (reg)  (r3d)) ;; Support. 
(when (ueg)  (x3d)) ;; Support. 
(when (xeg)  (c4d)) ;; Support. 
(when (zeg)  (k4d)) ;; Support. 
(when (cfg)  (r4d)) ;; Support. 
(when (hfg)  (x4d)) ;; Support. 
(when (kfg)  (c5d)) ;; Support. 
(when (mfg)  (k5d)) ;; Support. 
(when (rfg)  (r5d)) ;; Support. 
(when (ufg)  (x5d)) ;; Support. 
(when (xfg)  (c6d)) ;; Support. 
(when (zfg)  (k6d)) ;; Support. 
(when (cgg)  (r6d)) ;; Support. 
(when (hgg)  (x6d)) ;; Support. 
(when (kgg)  (c7d)) ;; Support. 
(when (mgg)  (k7d)) ;; Support. 
(when (rgg)  (r7d)) ;; Support. 
(when (ugg) (and (x7d) (not(v7d)))) ;; Support.  Cancellation. 
(when (xgg) (and (c8d) (not(b8d)))) ;; Support.  Cancellation. 
(when (zgg) (and (k8d) (not(j8d)))) ;; Support.  Cancellation. 
(when (chg) (and (r8d) (not(q8d)))) ;; Support.  Cancellation. 
(when (hhg) (and (x8d) (not(v8d)))) ;; Support.  Cancellation. 
(when (khg) (and (c9d) (not(b9d)))) ;; Support.  Cancellation. 
(when (mhg) (and (k9d) (not(j9d)))) ;; Support.  Cancellation. 
(when (rhg) (and (r9d) (not(q9d)))) ;; Support.  Cancellation. 
(when (uhg) (and (x9d) (not(v9d)))) ;; Support.  Cancellation. 
(when (xhg) (and (c0d) (not(b0d)))) ;; Support.  Cancellation. 
(when (zhg) (and (k0d) (not(j0d)))) ;; Support.  Cancellation. 
(when (cig) (and (r0d) (not(q0d)))) ;; Support.  Cancellation. 
(when (hig) (and (x0d) (not(v0d)))) ;; Support.  Cancellation. 
(when (kig) (and (cae) (not(bae)))) ;; Support.  Cancellation. 
(when (mig) (and (kae) (not(jae)))) ;; Support.  Cancellation. 
(when (rig) (and (rae) (not(qae)))) ;; Support.  Cancellation. 
(when (uig) (and (xae) (not(vae)))) ;; Support.  Cancellation. 
(when (xig) (and (cbe) (not(bbe)))) ;; Support.  Cancellation. 
(when (zig) (and (kbe) (not(jbe)))) ;; Support.  Cancellation. 
(when (cjg) (and (rbe) (not(qbe)))) ;; Support.  Cancellation. 
(when (hjg) (and (xbe) (not(vbe)))) ;; Support.  Cancellation. 
(when (kjg) (and (cce) (not(bce)))) ;; Support.  Cancellation. 
(when (mjg) (and (kce) (not(jce)))) ;; Support.  Cancellation. 
(when (rjg) (and (rce) (not(qce)))) ;; Support.  Cancellation. 
(when (ujg) (and (xce) (not(vce)))) ;; Support.  Cancellation. 
(when (xjg) (and (cde) (not(bde)))) ;; Support.  Cancellation. 
(when (ckg) (and (rde) (not(qde)))) ;; Support.  Cancellation. 
(when (hkg) (and (xde) (not(vde)))) ;; Support.  Cancellation. 
(when (kkg) (and (cee) (not(bee)))) ;; Support.  Cancellation. 
(when (mkg) (and (kee) (not(jee)))) ;; Support.  Cancellation. 
(when (rkg) (and (ree) (not(qee)))) ;; Support.  Cancellation. 
(when (ukg)  (xee)) ;; Support. 
(when (xkg)  (cfe)) ;; Support. 
(when (zkg)  (kfe)) ;; Support. 
(when (clg)  (rfe)) ;; Support. 
(when (hlg)  (xfe)) ;; Support. 
(when (klg)  (cge)) ;; Support. 
(when (mlg)  (kge)) ;; Support. 
(when (rlg)  (rge)) ;; Support. 
(when (ulg)  (xge)) ;; Support. 
(when (xlg)  (che)) ;; Support. 
(when (zlg)  (khe)) ;; Support. 
(when (cmg)  (rhe)) ;; Support. 
(when (hmg)  (xhe)) ;; Support. 
(when (mmg)  (kie)) ;; Support. 
(when (umg) (and (xie) (not(vie)))) ;; Support.  Cancellation. 
(when (xmg) (and (cje) (not(bje)))) ;; Support.  Cancellation. 
(when (zmg) (and (kje) (not(jje)))) ;; Support.  Cancellation. 
(when (cng) (and (rje) (not(qje)))) ;; Support.  Cancellation. 
(when (hng) (and (xje) (not(vje)))) ;; Support.  Cancellation. 
(when (kng) (and (cke) (not(bke)))) ;; Support.  Cancellation. 
(when (mng) (and (kke) (not(jke)))) ;; Support.  Cancellation. 
(when (rng) (and (rke) (not(qke)))) ;; Support.  Cancellation. 
(when (ung) (and (xke) (not(vke)))) ;; Support.  Cancellation. 
(when (xng) (and (cle) (not(ble)))) ;; Support.  Cancellation. 
(when (zng) (and (kle) (not(jle)))) ;; Support.  Cancellation. 
(when (cog) (and (rle) (not(qle)))) ;; Support.  Cancellation. 
(when (hog) (and (xle) (not(vle)))) ;; Support.  Cancellation. 
(when (kog) (and (cme) (not(bme)))) ;; Support.  Cancellation. 
(when (mog) (and (kme) (not(jme)))) ;; Support.  Cancellation. 
(when (rog) (and (rme) (not(qme)))) ;; Support.  Cancellation. 
(when (uog) (and (xme) (not(vme)))) ;; Support.  Cancellation. 
(when (xog) (and (cne) (not(bne)))) ;; Support.  Cancellation. 
(when (zog) (and (kne) (not(jne)))) ;; Support.  Cancellation. 
(when (cpg) (and (rne) (not(qne)))) ;; Support.  Cancellation. 
(when (kpg) (and (coe) (not(boe)))) ;; Support.  Cancellation. 
(when (rpg) (and (roe) (not(qoe)))) ;; Support.  Cancellation. 
(when (upg) (and (xoe) (not(voe)))) ;; Support.  Cancellation. 
(when (xpg) (and (cpe) (not(bpe)))) ;; Support.  Cancellation. 
(when (zpg) (and (kpe) (not(jpe)))) ;; Support.  Cancellation. 
(when (cqg) (and (rpe) (not(qpe)))) ;; Support.  Cancellation. 
(when (hqg) (and (xpe) (not(vpe)))) ;; Support.  Cancellation. 
(when (kqg) (and (cqe) (not(bqe)))) ;; Support.  Cancellation. 
(when (mqg) (and (kqe) (not(jqe)))) ;; Support.  Cancellation. 
(when (rqg) (and (rqe) (not(qqe)))) ;; Support.  Cancellation. 
(when (uqg) (and (xqe) (not(vqe)))) ;; Support.  Cancellation. 
(when (xqg) (and (cse) (not(bse)))) ;; Support.  Cancellation. 
(when (zqg) (and (kse) (not(jse)))) ;; Support.  Cancellation. 
(when (csg) (and (rse) (not(qse)))) ;; Support.  Cancellation. 
(when (hsg) (and (xse) (not(vse)))) ;; Support.  Cancellation. 
(when (ksg) (and (cre) (not(bre)))) ;; Support.  Cancellation. 
(when (msg) (and (kre) (not(jre)))) ;; Support.  Cancellation. 
(when (tsg) (and (ure) (not(tre)))) ;; Support.  Cancellation. 
(when (vsg) (and (zre) (not(yre)))) ;; Support.  Cancellation. 
(when (ysg) (and (hte) (not(gte)))) ;; Support.  Cancellation. 
(when (brg) (and (mte) (not(lte)))) ;; Support.  Cancellation. 
(when (grg) (and (ute) (not(tte)))) ;; Support.  Cancellation. 
(when (jrg) (and (zte) (not(yte)))) ;; Support.  Cancellation. 
(when (qrg) (and (mue) (not(lue)))) ;; Support.  Cancellation. 
(when (trg) (and (uue) (not(tue)))) ;; Support.  Cancellation. 
(when (vrg) (and (zue) (not(yue)))) ;; Support.  Cancellation. 
(when (yrg) (and (hve) (not(gve)))) ;; Support.  Cancellation. 
(when (btg) (and (mve) (not(lve)))) ;; Support.  Cancellation. 
(when (gtg) (and (uve) (not(tve)))) ;; Support.  Cancellation. 
(when (jtg) (and (zve) (not(yve)))) ;; Support.  Cancellation. 
(when (ltg) (and (hwe) (not(gwe)))) ;; Support.  Cancellation. 
(when (qtg) (and (mwe) (not(lwe)))) ;; Support.  Cancellation. 
(when (ttg) (and (uwe) (not(twe)))) ;; Support.  Cancellation. 
(when (vtg) (and (zwe) (not(ywe)))) ;; Support.  Cancellation. 
(when (ytg) (and (hxe) (not(gxe)))) ;; Support.  Cancellation. 
(when (bug) (and (mxe) (not(lxe)))) ;; Support.  Cancellation. 
(when (gug) (and (uxe) (not(txe)))) ;; Support.  Cancellation. 
(when (jug) (and (zxe) (not(yxe)))) ;; Support.  Cancellation. 
(when (lug) (and (hye) (not(gye)))) ;; Support.  Cancellation. 
(when (qug) (and (mye) (not(lye)))) ;; Support.  Cancellation. 
(when (tug) (and (uye) (not(tye)))) ;; Support.  Cancellation. 
(when (vug) (and (zye) (not(yye)))) ;; Support.  Cancellation. 
(when (yug) (and (hze) (not(gze)))) ;; Support.  Cancellation. 
(when (bvg) (and (mze) (not(lze)))) ;; Support.  Cancellation. 
(when (gvg) (and (uze) (not(tze)))) ;; Support.  Cancellation. 
(when (jvg) (and (zze) (not(yze)))) ;; Support.  Cancellation. 
(when (lvg) (and (h1e) (not(g1e)))) ;; Support.  Cancellation. 
(when (tvg)  (u1e)) ;; Support. 
(when (vvg)  (z1e)) ;; Support. 
(when (bwg)  (m2e)) ;; Support. 
(when (gwg)  (u2e)) ;; Support. 
(when (jwg)  (z2e)) ;; Support. 
(when (lwg)  (h3e)) ;; Support. 
(when (qwg)  (m3e)) ;; Support. 
(when (twg)  (u3e)) ;; Support. 
(when (vwg)  (z3e)) ;; Support. 
(when (ywg)  (h4e)) ;; Support. 
(when (bxg)  (m4e)) ;; Support. 
(when (gxg) (and (u4e) (not(t4e)))) ;; Support.  Cancellation. 
(when (jxg) (and (z4e) (not(y4e)))) ;; Support.  Cancellation. 
(when (lxg) (and (h5e) (not(g5e)))) ;; Support.  Cancellation. 
(when (qxg) (and (m5e) (not(l5e)))) ;; Support.  Cancellation. 
(when (txg)  (u5e)) ;; Support. 
(when (vxg) (and (z5e) (not(y5e)))) ;; Support.  Cancellation. 
(when (yxg)  (h6e)) ;; Support. 
(when (byg) (and (m6e) (not(l6e)))) ;; Support.  Cancellation. 
(when (gyg)  (u6e)) ;; Support. 
(when (jyg) (and (z6e) (not(y6e)))) ;; Support.  Cancellation. 
(when (lyg)  (h7e)) ;; Support. 
))
(:action CMPSWAP_L2_L3
:parameters ()
:precondition (and (q7e))

:effect (and  (mzf) (rie)
(when (q3f) (and (m7e) (not(l7e)))) ;; Support.  Cancellation. 
(when (ted) (and (r7e) (not(rif)))) ;; Support.  Cancellation. 
(when (not(ued))  (not(t7e))) ;; Cancellation. 
(when (yed) (and (u7e) (not(v7e)))) ;; Support.  Cancellation. 
(when (gfd) (and (x7e) (not(y7e)))) ;; Support.  Cancellation. 
(when (lfd) (and (z7e) (not(b8e)))) ;; Support.  Cancellation. 
(when (tfd) (and (c8e) (not(g8e)))) ;; Support.  Cancellation. 
(when (yfd) (and (h8e) (not(j8e)))) ;; Support.  Cancellation. 
(when (ggd) (and (k8e) (not(l8e)))) ;; Support.  Cancellation. 
(when (lgd) (and (m8e) (not(q8e)))) ;; Support.  Cancellation. 
(when (tgd) (and (r8e) (not(t8e)))) ;; Support.  Cancellation. 
(when (ygd) (and (u8e) (not(v8e)))) ;; Support.  Cancellation. 
(when (ghd) (and (x8e) (not(y8e)))) ;; Support.  Cancellation. 
(when (lhd) (and (z8e) (not(b9e)))) ;; Support.  Cancellation. 
(when (thd) (and (c9e) (not(g9e)))) ;; Support.  Cancellation. 
(when (yhd) (and (h9e) (not(j9e)))) ;; Support.  Cancellation. 
(when (gid) (and (k9e) (not(l9e)))) ;; Support.  Cancellation. 
(when (lid) (and (m9e) (not(q9e)))) ;; Support.  Cancellation. 
(when (tid) (and (r9e) (not(t9e)))) ;; Support.  Cancellation. 
(when (yid) (and (u9e) (not(v9e)))) ;; Support.  Cancellation. 
(when (gjd) (and (x9e) (not(y9e)))) ;; Support.  Cancellation. 
(when (ljd) (and (z9e) (not(b0e)))) ;; Support.  Cancellation. 
(when (tjd) (and (c0e) (not(g0e)))) ;; Support.  Cancellation. 
(when (yjd) (and (h0e) (not(j0e)))) ;; Support.  Cancellation. 
(when (gkd) (and (k0e) (not(l0e)))) ;; Support.  Cancellation. 
(when (lkd) (and (m0e) (not(q0e)))) ;; Support.  Cancellation. 
(when (tkd) (and (r0e) (not(t0e)))) ;; Support.  Cancellation. 
(when (ykd) (and (u0e) (not(v0e)))) ;; Support.  Cancellation. 
(when (gld) (and (x0e) (not(y0e)))) ;; Support.  Cancellation. 
(when (lld) (and (z0e) (not(baf)))) ;; Support.  Cancellation. 
(when (tld) (and (caf) (not(gaf)))) ;; Support.  Cancellation. 
(when (yld) (and (haf) (not(jaf)))) ;; Support.  Cancellation. 
(when (gmd) (and (kaf) (not(laf)))) ;; Support.  Cancellation. 
(when (lmd) (and (maf) (not(qaf)))) ;; Support.  Cancellation. 
(when (tmd) (and (raf) (not(taf)))) ;; Support.  Cancellation. 
(when (ymd) (and (uaf) (not(vaf)))) ;; Support.  Cancellation. 
(when (gnd) (and (xaf) (not(yaf)))) ;; Support.  Cancellation. 
(when (lnd) (and (zaf) (not(bbf)))) ;; Support.  Cancellation. 
(when (tnd) (and (cbf) (not(gbf)))) ;; Support.  Cancellation. 
(when (ynd) (and (hbf) (not(jbf)))) ;; Support.  Cancellation. 
(when (god) (and (kbf) (not(lbf)))) ;; Support.  Cancellation. 
(when (lod) (and (mbf) (not(qbf)))) ;; Support.  Cancellation. 
(when (tod) (and (rbf) (not(tbf)))) ;; Support.  Cancellation. 
(when (yod) (and (ubf) (not(vbf)))) ;; Support.  Cancellation. 
(when (gpd) (and (xbf) (not(ybf)))) ;; Support.  Cancellation. 
(when (lpd) (and (zbf) (not(bcf)))) ;; Support.  Cancellation. 
(when (tpd) (and (ccf) (not(gcf)))) ;; Support.  Cancellation. 
(when (ypd) (and (hcf) (not(jcf)))) ;; Support.  Cancellation. 
(when (gqd) (and (kcf) (not(lcf)))) ;; Support.  Cancellation. 
(when (lqd) (and (mcf) (not(qcf)))) ;; Support.  Cancellation. 
(when (tqd) (and (rcf) (not(tcf)))) ;; Support.  Cancellation. 
(when (yqd) (and (ucf) (not(vcf)))) ;; Support.  Cancellation. 
(when (gsd) (and (xcf) (not(ycf)))) ;; Support.  Cancellation. 
(when (lsd) (and (zcf) (not(bdf)))) ;; Support.  Cancellation. 
(when (tsd) (and (cdf) (not(gdf)))) ;; Support.  Cancellation. 
(when (ysd) (and (hdf) (not(jdf)))) ;; Support.  Cancellation. 
(when (grd) (and (kdf) (not(ldf)))) ;; Support.  Cancellation. 
(when (lrd) (and (mdf) (not(qdf)))) ;; Support.  Cancellation. 
(when (trd) (and (rdf) (not(tdf)))) ;; Support.  Cancellation. 
(when (yrd) (and (udf) (not(vdf)))) ;; Support.  Cancellation. 
(when (gtd) (and (xdf) (not(ydf)))) ;; Support.  Cancellation. 
(when (ltd) (and (zdf) (not(bef)))) ;; Support.  Cancellation. 
(when (ttd) (and (cef) (not(gef)))) ;; Support.  Cancellation. 
(when (ytd) (and (hef) (not(jef)))) ;; Support.  Cancellation. 
(when (gud) (and (kef) (not(lef)))) ;; Support.  Cancellation. 
(when (lud) (and (mef) (not(qef)))) ;; Support.  Cancellation. 
(when (tud) (and (ref) (not(tef)))) ;; Support.  Cancellation. 
(when (yvd) (and (hff) (not(jff)))) ;; Support.  Cancellation. 
(when (gwd) (and (kff) (not(lff)))) ;; Support.  Cancellation. 
(when (lwd) (and (mff) (not(qff)))) ;; Support.  Cancellation. 
(when (twd) (and (rff) (not(tff)))) ;; Support.  Cancellation. 
(when (lxd) (and (zff) (not(bgf)))) ;; Support.  Cancellation. 
(when (txd) (and (cgf) (not(ggf)))) ;; Support.  Cancellation. 
(when (gyd) (and (kgf) (not(lgf)))) ;; Support.  Cancellation. 
(when (lyd) (and (mgf) (not(qgf)))) ;; Support.  Cancellation. 
(when (yyd) (and (ugf) (not(vgf)))) ;; Support.  Cancellation. 
(when (gzd) (and (xgf) (not(ygf)))) ;; Support.  Cancellation. 
(when (lzd) (and (zgf) (not(bhf)))) ;; Support.  Cancellation. 
(when (tzd) (and (chf) (not(ghf)))) ;; Support.  Cancellation. 
(when (yzd) (and (hhf) (not(jhf)))) ;; Support.  Cancellation. 
(when (g1d) (and (khf) (not(lhf)))) ;; Support.  Cancellation. 
(when (l1d) (and (mhf) (not(qhf)))) ;; Support.  Cancellation. 
(when (t1d) (and (rhf) (not(thf)))) ;; Support.  Cancellation. 
(when (v7d) (and (tkf) (not(ukf)))) ;; Support.  Cancellation. 
(when (b8d) (and (vkf) (not(xkf)))) ;; Support.  Cancellation. 
(when (j8d) (and (ykf) (not(zkf)))) ;; Support.  Cancellation. 
(when (q8d) (and (blf) (not(clf)))) ;; Support.  Cancellation. 
(when (v8d) (and (glf) (not(hlf)))) ;; Support.  Cancellation. 
(when (b9d) (and (jlf) (not(klf)))) ;; Support.  Cancellation. 
(when (j9d) (and (llf) (not(mlf)))) ;; Support.  Cancellation. 
(when (q9d) (and (qlf) (not(rlf)))) ;; Support.  Cancellation. 
(when (v9d) (and (tlf) (not(ulf)))) ;; Support.  Cancellation. 
(when (b0d) (and (vlf) (not(xlf)))) ;; Support.  Cancellation. 
(when (j0d) (and (ylf) (not(zlf)))) ;; Support.  Cancellation. 
(when (q0d) (and (bmf) (not(cmf)))) ;; Support.  Cancellation. 
(when (v0d) (and (gmf) (not(hmf)))) ;; Support.  Cancellation. 
(when (bae) (and (jmf) (not(kmf)))) ;; Support.  Cancellation. 
(when (jae) (and (lmf) (not(mmf)))) ;; Support.  Cancellation. 
(when (qae) (and (qmf) (not(rmf)))) ;; Support.  Cancellation. 
(when (vae) (and (tmf) (not(umf)))) ;; Support.  Cancellation. 
(when (bbe) (and (vmf) (not(xmf)))) ;; Support.  Cancellation. 
(when (jbe) (and (ymf) (not(zmf)))) ;; Support.  Cancellation. 
(when (qbe) (and (bnf) (not(cnf)))) ;; Support.  Cancellation. 
(when (vbe) (and (gnf) (not(hnf)))) ;; Support.  Cancellation. 
(when (bce) (and (jnf) (not(knf)))) ;; Support.  Cancellation. 
(when (jce) (and (lnf) (not(mnf)))) ;; Support.  Cancellation. 
(when (qce) (and (qnf) (not(rnf)))) ;; Support.  Cancellation. 
(when (vce) (and (tnf) (not(unf)))) ;; Support.  Cancellation. 
(when (bde) (and (vnf) (not(xnf)))) ;; Support.  Cancellation. 
(when (jde) (and (ynf) (not(znf)))) ;; Support.  Cancellation. 
(when (qde) (and (bof) (not(cof)))) ;; Support.  Cancellation. 
(when (vde) (and (gof) (not(hof)))) ;; Support.  Cancellation. 
(when (bee) (and (jof) (not(kof)))) ;; Support.  Cancellation. 
(when (jee) (and (lof) (not(mof)))) ;; Support.  Cancellation. 
(when (qee) (and (qof) (not(rof)))) ;; Support.  Cancellation. 
(when (vie) (and (tqf) (not(uqf)))) ;; Support.  Cancellation. 
(when (bje) (and (vqf) (not(xqf)))) ;; Support.  Cancellation. 
(when (jje) (and (yqf) (not(zqf)))) ;; Support.  Cancellation. 
(when (qje) (and (bsf) (not(csf)))) ;; Support.  Cancellation. 
(when (vje) (and (gsf) (not(hsf)))) ;; Support.  Cancellation. 
(when (bke) (and (jsf) (not(ksf)))) ;; Support.  Cancellation. 
(when (jke) (and (lsf) (not(msf)))) ;; Support.  Cancellation. 
(when (qke) (and (qsf) (not(rsf)))) ;; Support.  Cancellation. 
(when (vke) (and (tsf) (not(usf)))) ;; Support.  Cancellation. 
(when (ble) (and (vsf) (not(xsf)))) ;; Support.  Cancellation. 
(when (jle) (and (ysf) (not(zsf)))) ;; Support.  Cancellation. 
(when (qle) (and (brf) (not(crf)))) ;; Support.  Cancellation. 
(when (vle) (and (grf) (not(hrf)))) ;; Support.  Cancellation. 
(when (bme) (and (jrf) (not(krf)))) ;; Support.  Cancellation. 
(when (jme) (and (lrf) (not(mrf)))) ;; Support.  Cancellation. 
(when (qme) (and (qrf) (not(rrf)))) ;; Support.  Cancellation. 
(when (vme) (and (trf) (not(urf)))) ;; Support.  Cancellation. 
(when (bne) (and (vrf) (not(xrf)))) ;; Support.  Cancellation. 
(when (jne) (and (yrf) (not(zrf)))) ;; Support.  Cancellation. 
(when (qne) (and (btf) (not(ctf)))) ;; Support.  Cancellation. 
(when (vne) (and (gtf) (not(htf)))) ;; Support.  Cancellation. 
(when (boe) (and (jtf) (not(ktf)))) ;; Support.  Cancellation. 
(when (joe) (and (ltf) (not(mtf)))) ;; Support.  Cancellation. 
(when (qoe) (and (qtf) (not(rtf)))) ;; Support.  Cancellation. 
(when (voe) (and (ttf) (not(utf)))) ;; Support.  Cancellation. 
(when (bpe) (and (vtf) (not(xtf)))) ;; Support.  Cancellation. 
(when (jpe) (and (ytf) (not(ztf)))) ;; Support.  Cancellation. 
(when (qpe) (and (buf) (not(cuf)))) ;; Support.  Cancellation. 
(when (vpe) (and (guf) (not(huf)))) ;; Support.  Cancellation. 
(when (bqe) (and (juf) (not(kuf)))) ;; Support.  Cancellation. 
(when (jqe) (and (luf) (not(muf)))) ;; Support.  Cancellation. 
(when (qqe) (and (quf) (not(ruf)))) ;; Support.  Cancellation. 
(when (vqe) (and (tuf) (not(uuf)))) ;; Support.  Cancellation. 
(when (bse) (and (vuf) (not(xuf)))) ;; Support.  Cancellation. 
(when (jse) (and (yuf) (not(zuf)))) ;; Support.  Cancellation. 
(when (qse) (and (bvf) (not(cvf)))) ;; Support.  Cancellation. 
(when (vse) (and (gvf) (not(hvf)))) ;; Support.  Cancellation. 
(when (bre) (and (jvf) (not(kvf)))) ;; Support.  Cancellation. 
(when (jre) (and (lvf) (not(mvf)))) ;; Support.  Cancellation. 
(when (mre)  (qvf)) ;; Support. 
(when (tre) (and (rvf) (not(tvf)))) ;; Support.  Cancellation. 
(when (yre) (and (uvf) (not(vvf)))) ;; Support.  Cancellation. 
(when (gte) (and (xvf) (not(yvf)))) ;; Support.  Cancellation. 
(when (lte) (and (zvf) (not(bwf)))) ;; Support.  Cancellation. 
(when (tte) (and (cwf) (not(gwf)))) ;; Support.  Cancellation. 
(when (yte) (and (hwf) (not(jwf)))) ;; Support.  Cancellation. 
(when (gue)  (kwf)) ;; Support. 
(when (lue) (and (mwf) (not(qwf)))) ;; Support.  Cancellation. 
(when (tue) (and (rwf) (not(twf)))) ;; Support.  Cancellation. 
(when (yue) (and (uwf) (not(vwf)))) ;; Support.  Cancellation. 
(when (gve) (and (xwf) (not(ywf)))) ;; Support.  Cancellation. 
(when (lve) (and (zwf) (not(bxf)))) ;; Support.  Cancellation. 
(when (tve) (and (cxf) (not(gxf)))) ;; Support.  Cancellation. 
(when (yve) (and (hxf) (not(jxf)))) ;; Support.  Cancellation. 
(when (gwe) (and (kxf) (not(lxf)))) ;; Support.  Cancellation. 
(when (lwe) (and (mxf) (not(qxf)))) ;; Support.  Cancellation. 
(when (twe) (and (rxf) (not(txf)))) ;; Support.  Cancellation. 
(when (ywe) (and (uxf) (not(vxf)))) ;; Support.  Cancellation. 
(when (gxe) (and (xxf) (not(yxf)))) ;; Support.  Cancellation. 
(when (lxe) (and (zxf) (not(byf)))) ;; Support.  Cancellation. 
(when (txe) (and (cyf) (not(gyf)))) ;; Support.  Cancellation. 
(when (yxe) (and (hyf) (not(jyf)))) ;; Support.  Cancellation. 
(when (gye) (and (kyf) (not(lyf)))) ;; Support.  Cancellation. 
(when (lye) (and (myf) (not(qyf)))) ;; Support.  Cancellation. 
(when (tye) (and (ryf) (not(tyf)))) ;; Support.  Cancellation. 
(when (yye) (and (uyf) (not(vyf)))) ;; Support.  Cancellation. 
(when (gze) (and (xyf) (not(yyf)))) ;; Support.  Cancellation. 
(when (lze) (and (zyf) (not(bzf)))) ;; Support.  Cancellation. 
(when (tze) (and (czf) (not(gzf)))) ;; Support.  Cancellation. 
(when (yze) (and (hzf) (not(jzf)))) ;; Support.  Cancellation. 
(when (g1e) (and (kzf) (not(lzf)))) ;; Support.  Cancellation. 
(when (t4e) (and (c2f) (not(g2f)))) ;; Support.  Cancellation. 
(when (y4e) (and (h2f) (not(j2f)))) ;; Support.  Cancellation. 
(when (g5e) (and (k2f) (not(l2f)))) ;; Support.  Cancellation. 
(when (l5e) (and (m2f) (not(q2f)))) ;; Support.  Cancellation. 
(when (y5e) (and (u2f) (not(v2f)))) ;; Support.  Cancellation. 
(when (l6e) (and (z2f) (not(b3f)))) ;; Support.  Cancellation. 
(when (y6e) (and (h3f) (not(j3f)))) ;; Support.  Cancellation. 
(when (l7e) (and (m3f) (not(q3f)))) ;; Support.  Cancellation. 
(when (t7e) (and (ued) (not(mre)))) ;; Support.  Cancellation. 
(when (not(r7e))  (not(ted))) ;; Cancellation. 
(when (v7e) (and (zed) (not(yed)))) ;; Support.  Cancellation. 
(when (y7e) (and (hfd) (not(gfd)))) ;; Support.  Cancellation. 
(when (b8e) (and (mfd) (not(lfd)))) ;; Support.  Cancellation. 
(when (g8e) (and (ufd) (not(tfd)))) ;; Support.  Cancellation. 
(when (j8e) (and (zfd) (not(yfd)))) ;; Support.  Cancellation. 
(when (l8e) (and (hgd) (not(ggd)))) ;; Support.  Cancellation. 
(when (q8e) (and (mgd) (not(lgd)))) ;; Support.  Cancellation. 
(when (t8e) (and (ugd) (not(tgd)))) ;; Support.  Cancellation. 
(when (v8e) (and (zgd) (not(ygd)))) ;; Support.  Cancellation. 
(when (y8e) (and (hhd) (not(ghd)))) ;; Support.  Cancellation. 
(when (b9e) (and (mhd) (not(lhd)))) ;; Support.  Cancellation. 
(when (g9e) (and (uhd) (not(thd)))) ;; Support.  Cancellation. 
(when (j9e) (and (zhd) (not(yhd)))) ;; Support.  Cancellation. 
(when (l9e) (and (hid) (not(gid)))) ;; Support.  Cancellation. 
(when (q9e) (and (mid) (not(lid)))) ;; Support.  Cancellation. 
(when (t9e) (and (uid) (not(tid)))) ;; Support.  Cancellation. 
(when (v9e) (and (zid) (not(yid)))) ;; Support.  Cancellation. 
(when (y9e) (and (hjd) (not(gjd)))) ;; Support.  Cancellation. 
(when (b0e) (and (mjd) (not(ljd)))) ;; Support.  Cancellation. 
(when (g0e) (and (ujd) (not(tjd)))) ;; Support.  Cancellation. 
(when (j0e) (and (zjd) (not(yjd)))) ;; Support.  Cancellation. 
(when (l0e) (and (hkd) (not(gkd)))) ;; Support.  Cancellation. 
(when (q0e) (and (mkd) (not(lkd)))) ;; Support.  Cancellation. 
(when (t0e) (and (ukd) (not(tkd)))) ;; Support.  Cancellation. 
(when (v0e) (and (zkd) (not(ykd)))) ;; Support.  Cancellation. 
(when (y0e) (and (hld) (not(gld)))) ;; Support.  Cancellation. 
(when (baf) (and (mld) (not(lld)))) ;; Support.  Cancellation. 
(when (gaf) (and (uld) (not(tld)))) ;; Support.  Cancellation. 
(when (jaf) (and (zld) (not(yld)))) ;; Support.  Cancellation. 
(when (laf) (and (hmd) (not(gmd)))) ;; Support.  Cancellation. 
(when (qaf) (and (mmd) (not(lmd)))) ;; Support.  Cancellation. 
(when (taf) (and (umd) (not(tmd)))) ;; Support.  Cancellation. 
(when (vaf) (and (zmd) (not(ymd)))) ;; Support.  Cancellation. 
(when (yaf) (and (hnd) (not(gnd)))) ;; Support.  Cancellation. 
(when (bbf) (and (mnd) (not(lnd)))) ;; Support.  Cancellation. 
(when (gbf) (and (und) (not(tnd)))) ;; Support.  Cancellation. 
(when (jbf) (and (znd) (not(ynd)))) ;; Support.  Cancellation. 
(when (lbf) (and (hod) (not(god)))) ;; Support.  Cancellation. 
(when (qbf) (and (mod) (not(lod)))) ;; Support.  Cancellation. 
(when (tbf) (and (uod) (not(tod)))) ;; Support.  Cancellation. 
(when (vbf) (and (zod) (not(yod)))) ;; Support.  Cancellation. 
(when (ybf) (and (hpd) (not(gpd)))) ;; Support.  Cancellation. 
(when (bcf) (and (mpd) (not(lpd)))) ;; Support.  Cancellation. 
(when (gcf) (and (upd) (not(tpd)))) ;; Support.  Cancellation. 
(when (jcf) (and (zpd) (not(ypd)))) ;; Support.  Cancellation. 
(when (lcf) (and (hqd) (not(gqd)))) ;; Support.  Cancellation. 
(when (qcf) (and (mqd) (not(lqd)))) ;; Support.  Cancellation. 
(when (tcf) (and (uqd) (not(tqd)))) ;; Support.  Cancellation. 
(when (vcf) (and (zqd) (not(yqd)))) ;; Support.  Cancellation. 
(when (ycf) (and (hsd) (not(gsd)))) ;; Support.  Cancellation. 
(when (bdf) (and (msd) (not(lsd)))) ;; Support.  Cancellation. 
(when (gdf) (and (usd) (not(tsd)))) ;; Support.  Cancellation. 
(when (jdf) (and (zsd) (not(ysd)))) ;; Support.  Cancellation. 
(when (ldf) (and (hrd) (not(grd)))) ;; Support.  Cancellation. 
(when (qdf) (and (mrd) (not(lrd)))) ;; Support.  Cancellation. 
(when (tdf) (and (urd) (not(trd)))) ;; Support.  Cancellation. 
(when (vdf) (and (zrd) (not(yrd)))) ;; Support.  Cancellation. 
(when (ydf) (and (htd) (not(gtd)))) ;; Support.  Cancellation. 
(when (bef) (and (mtd) (not(ltd)))) ;; Support.  Cancellation. 
(when (gef) (and (utd) (not(ttd)))) ;; Support.  Cancellation. 
(when (jef) (and (ztd) (not(ytd)))) ;; Support.  Cancellation. 
(when (lef) (and (hud) (not(gud)))) ;; Support.  Cancellation. 
(when (qef) (and (mud) (not(lud)))) ;; Support.  Cancellation. 
(when (tef) (and (uud) (not(tud)))) ;; Support.  Cancellation. 
(when (vef)  (zud)) ;; Support. 
(when (yef)  (hvd)) ;; Support. 
(when (bff)  (mvd)) ;; Support. 
(when (gff)  (uvd)) ;; Support. 
(when (jff) (and (zvd) (not(yvd)))) ;; Support.  Cancellation. 
(when (lff) (and (hwd) (not(gwd)))) ;; Support.  Cancellation. 
(when (qff) (and (mwd) (not(lwd)))) ;; Support.  Cancellation. 
(when (tff) (and (uwd) (not(twd)))) ;; Support.  Cancellation. 
(when (vff)  (zwd)) ;; Support. 
(when (yff)  (hxd)) ;; Support. 
(when (bgf) (and (mxd) (not(lxd)))) ;; Support.  Cancellation. 
(when (ggf) (and (uxd) (not(txd)))) ;; Support.  Cancellation. 
(when (jgf)  (zxd)) ;; Support. 
(when (lgf) (and (hyd) (not(gyd)))) ;; Support.  Cancellation. 
(when (qgf) (and (myd) (not(lyd)))) ;; Support.  Cancellation. 
(when (tgf)  (uyd)) ;; Support. 
(when (vgf) (and (zyd) (not(yyd)))) ;; Support.  Cancellation. 
(when (ygf) (and (hzd) (not(gzd)))) ;; Support.  Cancellation. 
(when (bhf) (and (mzd) (not(lzd)))) ;; Support.  Cancellation. 
(when (ghf) (and (uzd) (not(tzd)))) ;; Support.  Cancellation. 
(when (jhf) (and (zzd) (not(yzd)))) ;; Support.  Cancellation. 
(when (lhf) (and (h1d) (not(g1d)))) ;; Support.  Cancellation. 
(when (qhf) (and (m1d) (not(l1d)))) ;; Support.  Cancellation. 
(when (thf) (and (u1d) (not(t1d)))) ;; Support.  Cancellation. 
(when (vhf)  (z1d)) ;; Support. 
(when (yhf)  (h2d)) ;; Support. 
(when (bif)  (m2d)) ;; Support. 
(when (gif)  (u2d)) ;; Support. 
(when (jif)  (z2d)) ;; Support. 
(when (lif)  (h3d)) ;; Support. 
(when (qif)  (m3d)) ;; Support. 
(when (rif)  (r3d)) ;; Support. 
(when (uif)  (x3d)) ;; Support. 
(when (xif)  (c4d)) ;; Support. 
(when (zif)  (k4d)) ;; Support. 
(when (cjf)  (r4d)) ;; Support. 
(when (hjf)  (x4d)) ;; Support. 
(when (kjf)  (c5d)) ;; Support. 
(when (mjf)  (k5d)) ;; Support. 
(when (rjf)  (r5d)) ;; Support. 
(when (ujf)  (x5d)) ;; Support. 
(when (xjf)  (c6d)) ;; Support. 
(when (zjf)  (k6d)) ;; Support. 
(when (ckf)  (r6d)) ;; Support. 
(when (hkf)  (x6d)) ;; Support. 
(when (kkf)  (c7d)) ;; Support. 
(when (mkf)  (k7d)) ;; Support. 
(when (rkf)  (r7d)) ;; Support. 
(when (ukf) (and (x7d) (not(v7d)))) ;; Support.  Cancellation. 
(when (xkf) (and (c8d) (not(b8d)))) ;; Support.  Cancellation. 
(when (zkf) (and (k8d) (not(j8d)))) ;; Support.  Cancellation. 
(when (clf) (and (r8d) (not(q8d)))) ;; Support.  Cancellation. 
(when (hlf) (and (x8d) (not(v8d)))) ;; Support.  Cancellation. 
(when (klf) (and (c9d) (not(b9d)))) ;; Support.  Cancellation. 
(when (mlf) (and (k9d) (not(j9d)))) ;; Support.  Cancellation. 
(when (rlf) (and (r9d) (not(q9d)))) ;; Support.  Cancellation. 
(when (ulf) (and (x9d) (not(v9d)))) ;; Support.  Cancellation. 
(when (xlf) (and (c0d) (not(b0d)))) ;; Support.  Cancellation. 
(when (zlf) (and (k0d) (not(j0d)))) ;; Support.  Cancellation. 
(when (cmf) (and (r0d) (not(q0d)))) ;; Support.  Cancellation. 
(when (hmf) (and (x0d) (not(v0d)))) ;; Support.  Cancellation. 
(when (kmf) (and (cae) (not(bae)))) ;; Support.  Cancellation. 
(when (mmf) (and (kae) (not(jae)))) ;; Support.  Cancellation. 
(when (rmf) (and (rae) (not(qae)))) ;; Support.  Cancellation. 
(when (umf) (and (xae) (not(vae)))) ;; Support.  Cancellation. 
(when (xmf) (and (cbe) (not(bbe)))) ;; Support.  Cancellation. 
(when (zmf) (and (kbe) (not(jbe)))) ;; Support.  Cancellation. 
(when (cnf) (and (rbe) (not(qbe)))) ;; Support.  Cancellation. 
(when (hnf) (and (xbe) (not(vbe)))) ;; Support.  Cancellation. 
(when (knf) (and (cce) (not(bce)))) ;; Support.  Cancellation. 
(when (mnf) (and (kce) (not(jce)))) ;; Support.  Cancellation. 
(when (rnf) (and (rce) (not(qce)))) ;; Support.  Cancellation. 
(when (unf) (and (xce) (not(vce)))) ;; Support.  Cancellation. 
(when (xnf) (and (cde) (not(bde)))) ;; Support.  Cancellation. 
(when (znf) (and (kde) (not(jde)))) ;; Support.  Cancellation. 
(when (cof) (and (rde) (not(qde)))) ;; Support.  Cancellation. 
(when (hof) (and (xde) (not(vde)))) ;; Support.  Cancellation. 
(when (kof) (and (cee) (not(bee)))) ;; Support.  Cancellation. 
(when (mof) (and (kee) (not(jee)))) ;; Support.  Cancellation. 
(when (rof) (and (ree) (not(qee)))) ;; Support.  Cancellation. 
(when (uof)  (xee)) ;; Support. 
(when (xof)  (cfe)) ;; Support. 
(when (zof)  (kfe)) ;; Support. 
(when (cpf)  (rfe)) ;; Support. 
(when (hpf)  (xfe)) ;; Support. 
(when (kpf)  (cge)) ;; Support. 
(when (mpf)  (kge)) ;; Support. 
(when (rpf)  (rge)) ;; Support. 
(when (upf)  (xge)) ;; Support. 
(when (xpf)  (che)) ;; Support. 
(when (zpf)  (khe)) ;; Support. 
(when (cqf)  (rhe)) ;; Support. 
(when (hqf)  (xhe)) ;; Support. 
(when (kqf)  (cie)) ;; Support. 
(when (mqf)  (kie)) ;; Support. 
(when (uqf) (and (xie) (not(vie)))) ;; Support.  Cancellation. 
(when (xqf) (and (cje) (not(bje)))) ;; Support.  Cancellation. 
(when (zqf) (and (kje) (not(jje)))) ;; Support.  Cancellation. 
(when (csf) (and (rje) (not(qje)))) ;; Support.  Cancellation. 
(when (hsf) (and (xje) (not(vje)))) ;; Support.  Cancellation. 
(when (ksf) (and (cke) (not(bke)))) ;; Support.  Cancellation. 
(when (msf) (and (kke) (not(jke)))) ;; Support.  Cancellation. 
(when (rsf) (and (rke) (not(qke)))) ;; Support.  Cancellation. 
(when (usf) (and (xke) (not(vke)))) ;; Support.  Cancellation. 
(when (xsf) (and (cle) (not(ble)))) ;; Support.  Cancellation. 
(when (zsf) (and (kle) (not(jle)))) ;; Support.  Cancellation. 
(when (crf) (and (rle) (not(qle)))) ;; Support.  Cancellation. 
(when (hrf) (and (xle) (not(vle)))) ;; Support.  Cancellation. 
(when (krf) (and (cme) (not(bme)))) ;; Support.  Cancellation. 
(when (mrf) (and (kme) (not(jme)))) ;; Support.  Cancellation. 
(when (rrf) (and (rme) (not(qme)))) ;; Support.  Cancellation. 
(when (urf) (and (xme) (not(vme)))) ;; Support.  Cancellation. 
(when (xrf) (and (cne) (not(bne)))) ;; Support.  Cancellation. 
(when (zrf) (and (kne) (not(jne)))) ;; Support.  Cancellation. 
(when (ctf) (and (rne) (not(qne)))) ;; Support.  Cancellation. 
(when (htf) (and (xne) (not(vne)))) ;; Support.  Cancellation. 
(when (ktf) (and (coe) (not(boe)))) ;; Support.  Cancellation. 
(when (mtf) (and (koe) (not(joe)))) ;; Support.  Cancellation. 
(when (rtf) (and (roe) (not(qoe)))) ;; Support.  Cancellation. 
(when (utf) (and (xoe) (not(voe)))) ;; Support.  Cancellation. 
(when (xtf) (and (cpe) (not(bpe)))) ;; Support.  Cancellation. 
(when (ztf) (and (kpe) (not(jpe)))) ;; Support.  Cancellation. 
(when (cuf) (and (rpe) (not(qpe)))) ;; Support.  Cancellation. 
(when (huf) (and (xpe) (not(vpe)))) ;; Support.  Cancellation. 
(when (kuf) (and (cqe) (not(bqe)))) ;; Support.  Cancellation. 
(when (muf) (and (kqe) (not(jqe)))) ;; Support.  Cancellation. 
(when (ruf) (and (rqe) (not(qqe)))) ;; Support.  Cancellation. 
(when (uuf) (and (xqe) (not(vqe)))) ;; Support.  Cancellation. 
(when (xuf) (and (cse) (not(bse)))) ;; Support.  Cancellation. 
(when (zuf) (and (kse) (not(jse)))) ;; Support.  Cancellation. 
(when (cvf) (and (rse) (not(qse)))) ;; Support.  Cancellation. 
(when (hvf) (and (xse) (not(vse)))) ;; Support.  Cancellation. 
(when (kvf) (and (cre) (not(bre)))) ;; Support.  Cancellation. 
(when (mvf) (and (kre) (not(jre)))) ;; Support.  Cancellation. 
(when (tvf) (and (ure) (not(tre)))) ;; Support.  Cancellation. 
(when (vvf) (and (zre) (not(yre)))) ;; Support.  Cancellation. 
(when (yvf) (and (hte) (not(gte)))) ;; Support.  Cancellation. 
(when (bwf) (and (mte) (not(lte)))) ;; Support.  Cancellation. 
(when (gwf) (and (ute) (not(tte)))) ;; Support.  Cancellation. 
(when (jwf) (and (zte) (not(yte)))) ;; Support.  Cancellation. 
(when (qwf) (and (mue) (not(lue)))) ;; Support.  Cancellation. 
(when (twf) (and (uue) (not(tue)))) ;; Support.  Cancellation. 
(when (vwf) (and (zue) (not(yue)))) ;; Support.  Cancellation. 
(when (ywf) (and (hve) (not(gve)))) ;; Support.  Cancellation. 
(when (bxf) (and (mve) (not(lve)))) ;; Support.  Cancellation. 
(when (gxf) (and (uve) (not(tve)))) ;; Support.  Cancellation. 
(when (jxf) (and (zve) (not(yve)))) ;; Support.  Cancellation. 
(when (lxf) (and (hwe) (not(gwe)))) ;; Support.  Cancellation. 
(when (qxf) (and (mwe) (not(lwe)))) ;; Support.  Cancellation. 
(when (txf) (and (uwe) (not(twe)))) ;; Support.  Cancellation. 
(when (vxf) (and (zwe) (not(ywe)))) ;; Support.  Cancellation. 
(when (yxf) (and (hxe) (not(gxe)))) ;; Support.  Cancellation. 
(when (byf) (and (mxe) (not(lxe)))) ;; Support.  Cancellation. 
(when (gyf) (and (uxe) (not(txe)))) ;; Support.  Cancellation. 
(when (jyf) (and (zxe) (not(yxe)))) ;; Support.  Cancellation. 
(when (lyf) (and (hye) (not(gye)))) ;; Support.  Cancellation. 
(when (qyf) (and (mye) (not(lye)))) ;; Support.  Cancellation. 
(when (tyf) (and (uye) (not(tye)))) ;; Support.  Cancellation. 
(when (vyf) (and (zye) (not(yye)))) ;; Support.  Cancellation. 
(when (yyf) (and (hze) (not(gze)))) ;; Support.  Cancellation. 
(when (bzf) (and (mze) (not(lze)))) ;; Support.  Cancellation. 
(when (gzf) (and (uze) (not(tze)))) ;; Support.  Cancellation. 
(when (jzf) (and (zze) (not(yze)))) ;; Support.  Cancellation. 
(when (lzf) (and (h1e) (not(g1e)))) ;; Support.  Cancellation. 
(when (tzf)  (u1e)) ;; Support. 
(when (vzf)  (z1e)) ;; Support. 
(when (b1f)  (m2e)) ;; Support. 
(when (g1f)  (u2e)) ;; Support. 
(when (j1f)  (z2e)) ;; Support. 
(when (l1f)  (h3e)) ;; Support. 
(when (q1f)  (m3e)) ;; Support. 
(when (t1f)  (u3e)) ;; Support. 
(when (v1f)  (z3e)) ;; Support. 
(when (y1f)  (h4e)) ;; Support. 
(when (b2f)  (m4e)) ;; Support. 
(when (g2f) (and (u4e) (not(t4e)))) ;; Support.  Cancellation. 
(when (j2f) (and (z4e) (not(y4e)))) ;; Support.  Cancellation. 
(when (l2f) (and (h5e) (not(g5e)))) ;; Support.  Cancellation. 
(when (q2f) (and (m5e) (not(l5e)))) ;; Support.  Cancellation. 
(when (t2f)  (u5e)) ;; Support. 
(when (v2f) (and (z5e) (not(y5e)))) ;; Support.  Cancellation. 
(when (y2f)  (h6e)) ;; Support. 
(when (b3f) (and (m6e) (not(l6e)))) ;; Support.  Cancellation. 
(when (g3f)  (u6e)) ;; Support. 
(when (j3f) (and (z6e) (not(y6e)))) ;; Support.  Cancellation. 
(when (l3f)  (h7e)) ;; Support. 
))
(:action CMPSWAP_L1_L8
:parameters ()
:precondition (and (q7e))

:effect (and  (not(tmj)) (not(qed)) (qbk) (q3d)
(when (qik)  (k7e)) ;; Support. 
(when (qed) (and (rmj) (not(ryj)))) ;; Support.  Cancellation. 
(when (ved)  (umj)) ;; Support. 
(when (bfd) (and (xmj) (not(ymj)))) ;; Support.  Cancellation. 
(when (jfd) (and (zmj) (not(bnj)))) ;; Support.  Cancellation. 
(when (qfd)  (cnj)) ;; Support. 
(when (vfd) (and (hnj) (not(jnj)))) ;; Support.  Cancellation. 
(when (bgd) (and (knj) (not(lnj)))) ;; Support.  Cancellation. 
(when (jgd)  (mnj)) ;; Support. 
(when (qgd)  (rnj)) ;; Support. 
(when (vgd) (and (unj) (not(vnj)))) ;; Support.  Cancellation. 
(when (bhd) (and (xnj) (not(ynj)))) ;; Support.  Cancellation. 
(when (jhd) (and (znj) (not(boj)))) ;; Support.  Cancellation. 
(when (qhd) (and (coj) (not(goj)))) ;; Support.  Cancellation. 
(when (vhd)  (hoj)) ;; Support. 
(when (bid)  (koj)) ;; Support. 
(when (jid)  (moj)) ;; Support. 
(when (qid)  (roj)) ;; Support. 
(when (vid)  (uoj)) ;; Support. 
(when (bjd)  (xoj)) ;; Support. 
(when (jjd)  (zoj)) ;; Support. 
(when (qjd)  (cpj)) ;; Support. 
(when (vjd)  (hpj)) ;; Support. 
(when (bkd)  (kpj)) ;; Support. 
(when (jkd)  (mpj)) ;; Support. 
(when (qkd)  (rpj)) ;; Support. 
(when (vkd) (and (upj) (not(vpj)))) ;; Support.  Cancellation. 
(when (bld) (and (xpj) (not(ypj)))) ;; Support.  Cancellation. 
(when (jld) (and (zpj) (not(bqj)))) ;; Support.  Cancellation. 
(when (qld) (and (cqj) (not(gqj)))) ;; Support.  Cancellation. 
(when (vld) (and (hqj) (not(jqj)))) ;; Support.  Cancellation. 
(when (bmd) (and (kqj) (not(lqj)))) ;; Support.  Cancellation. 
(when (jmd) (and (mqj) (not(qqj)))) ;; Support.  Cancellation. 
(when (qmd) (and (rqj) (not(tqj)))) ;; Support.  Cancellation. 
(when (vmd)  (uqj)) ;; Support. 
(when (bnd)  (xqj)) ;; Support. 
(when (jnd)  (zqj)) ;; Support. 
(when (qnd)  (csj)) ;; Support. 
(when (vnd)  (hsj)) ;; Support. 
(when (bod)  (ksj)) ;; Support. 
(when (jod)  (msj)) ;; Support. 
(when (qod)  (rsj)) ;; Support. 
(when (vod)  (usj)) ;; Support. 
(when (bpd)  (xsj)) ;; Support. 
(when (jpd)  (zsj)) ;; Support. 
(when (qpd)  (crj)) ;; Support. 
(when (vpd)  (hrj)) ;; Support. 
(when (bqd)  (krj)) ;; Support. 
(when (jqd)  (mrj)) ;; Support. 
(when (qqd)  (rrj)) ;; Support. 
(when (vqd) (and (urj) (not(vrj)))) ;; Support.  Cancellation. 
(when (bsd) (and (xrj) (not(yrj)))) ;; Support.  Cancellation. 
(when (jsd) (and (zrj) (not(btj)))) ;; Support.  Cancellation. 
(when (qsd) (and (ctj) (not(gtj)))) ;; Support.  Cancellation. 
(when (vsd) (and (htj) (not(jtj)))) ;; Support.  Cancellation. 
(when (brd) (and (ktj) (not(ltj)))) ;; Support.  Cancellation. 
(when (jrd) (and (mtj) (not(qtj)))) ;; Support.  Cancellation. 
(when (qrd) (and (rtj) (not(ttj)))) ;; Support.  Cancellation. 
(when (vrd) (and (utj) (not(vtj)))) ;; Support.  Cancellation. 
(when (btd) (and (xtj) (not(ytj)))) ;; Support.  Cancellation. 
(when (jtd) (and (ztj) (not(buj)))) ;; Support.  Cancellation. 
(when (qtd) (and (cuj) (not(guj)))) ;; Support.  Cancellation. 
(when (vtd) (and (huj) (not(juj)))) ;; Support.  Cancellation. 
(when (bud) (and (kuj) (not(luj)))) ;; Support.  Cancellation. 
(when (jud) (and (muj) (not(quj)))) ;; Support.  Cancellation. 
(when (qud) (and (ruj) (not(tuj)))) ;; Support.  Cancellation. 
(when (tie) (and (t7j) (not(u7j)))) ;; Support.  Cancellation. 
(when (yie) (and (v7j) (not(x7j)))) ;; Support.  Cancellation. 
(when (gje) (and (y7j) (not(z7j)))) ;; Support.  Cancellation. 
(when (lje) (and (b8j) (not(c8j)))) ;; Support.  Cancellation. 
(when (tje) (and (g8j) (not(h8j)))) ;; Support.  Cancellation. 
(when (yje) (and (j8j) (not(k8j)))) ;; Support.  Cancellation. 
(when (gke) (and (l8j) (not(m8j)))) ;; Support.  Cancellation. 
(when (lke) (and (q8j) (not(r8j)))) ;; Support.  Cancellation. 
(when (tke) (and (t8j) (not(u8j)))) ;; Support.  Cancellation. 
(when (yke) (and (v8j) (not(x8j)))) ;; Support.  Cancellation. 
(when (gle) (and (y8j) (not(z8j)))) ;; Support.  Cancellation. 
(when (lle) (and (b9j) (not(c9j)))) ;; Support.  Cancellation. 
(when (tle) (and (g9j) (not(h9j)))) ;; Support.  Cancellation. 
(when (yle) (and (j9j) (not(k9j)))) ;; Support.  Cancellation. 
(when (gme) (and (l9j) (not(m9j)))) ;; Support.  Cancellation. 
(when (lme) (and (q9j) (not(r9j)))) ;; Support.  Cancellation. 
(when (tme)  (t9j)) ;; Support. 
(when (yme)  (v9j)) ;; Support. 
(when (gne)  (y9j)) ;; Support. 
(when (lne)  (b0j)) ;; Support. 
(when (tne)  (g0j)) ;; Support. 
(when (yne)  (j0j)) ;; Support. 
(when (goe)  (l0j)) ;; Support. 
(when (loe)  (q0j)) ;; Support. 
(when (toe)  (t0j)) ;; Support. 
(when (yoe)  (v0j)) ;; Support. 
(when (gpe)  (y0j)) ;; Support. 
(when (lpe)  (bak)) ;; Support. 
(when (tpe)  (gak)) ;; Support. 
(when (ype)  (jak)) ;; Support. 
(when (gqe)  (lak)) ;; Support. 
(when (lqe)  (qak)) ;; Support. 
(when (tqe) (and (tak) (not(uak)))) ;; Support.  Cancellation. 
(when (yqe) (and (vak) (not(xak)))) ;; Support.  Cancellation. 
(when (gse)  (yak)) ;; Support. 
(when (lse)  (bbk)) ;; Support. 
(when (tse) (and (gbk) (not(hbk)))) ;; Support.  Cancellation. 
(when (yse) (and (jbk) (not(kbk)))) ;; Support.  Cancellation. 
(when (gre)  (lbk)) ;; Support. 
(when (qre) (and (rbk) (not(tbk)))) ;; Support.  Cancellation. 
(when (vre) (and (ubk) (not(vbk)))) ;; Support.  Cancellation. 
(when (bte) (and (xbk) (not(ybk)))) ;; Support.  Cancellation. 
(when (jte) (and (zbk) (not(bck)))) ;; Support.  Cancellation. 
(when (qte)  (cck)) ;; Support. 
(when (vte)  (hck)) ;; Support. 
(when (bue)  (kck)) ;; Support. 
(when (jue)  (mck)) ;; Support. 
(when (que) (and (rck) (not(tck)))) ;; Support.  Cancellation. 
(when (vue) (and (uck) (not(vck)))) ;; Support.  Cancellation. 
(when (bve)  (xck)) ;; Support. 
(when (jve)  (zck)) ;; Support. 
(when (qve)  (cdk)) ;; Support. 
(when (vve)  (hdk)) ;; Support. 
(when (bwe) (and (kdk) (not(ldk)))) ;; Support.  Cancellation. 
(when (jwe) (and (mdk) (not(qdk)))) ;; Support.  Cancellation. 
(when (qwe)  (rdk)) ;; Support. 
(when (vwe)  (udk)) ;; Support. 
(when (bxe)  (xdk)) ;; Support. 
(when (jxe)  (zdk)) ;; Support. 
(when (qxe) (and (cek) (not(gek)))) ;; Support.  Cancellation. 
(when (vxe) (and (hek) (not(jek)))) ;; Support.  Cancellation. 
(when (bye) (and (kek) (not(lek)))) ;; Support.  Cancellation. 
(when (jye) (and (mek) (not(qek)))) ;; Support.  Cancellation. 
(when (tmj) (and (red) (not(lre)))) ;; Support.  Cancellation. 
(when (ymj) (and (cfd) (not(bfd)))) ;; Support.  Cancellation. 
(when (bnj) (and (kfd) (not(jfd)))) ;; Support.  Cancellation. 
(when (jnj) (and (xfd) (not(vfd)))) ;; Support.  Cancellation. 
(when (lnj) (and (cgd) (not(bgd)))) ;; Support.  Cancellation. 
(when (vnj) (and (xgd) (not(vgd)))) ;; Support.  Cancellation. 
(when (ynj) (and (chd) (not(bhd)))) ;; Support.  Cancellation. 
(when (boj) (and (khd) (not(jhd)))) ;; Support.  Cancellation. 
(when (goj) (and (rhd) (not(qhd)))) ;; Support.  Cancellation. 
(when (vpj) (and (xkd) (not(vkd)))) ;; Support.  Cancellation. 
(when (ypj) (and (cld) (not(bld)))) ;; Support.  Cancellation. 
(when (bqj) (and (kld) (not(jld)))) ;; Support.  Cancellation. 
(when (gqj) (and (rld) (not(qld)))) ;; Support.  Cancellation. 
(when (jqj) (and (xld) (not(vld)))) ;; Support.  Cancellation. 
(when (lqj) (and (cmd) (not(bmd)))) ;; Support.  Cancellation. 
(when (qqj) (and (kmd) (not(jmd)))) ;; Support.  Cancellation. 
(when (tqj) (and (rmd) (not(qmd)))) ;; Support.  Cancellation. 
(when (vrj) (and (xqd) (not(vqd)))) ;; Support.  Cancellation. 
(when (yrj) (and (csd) (not(bsd)))) ;; Support.  Cancellation. 
(when (btj) (and (ksd) (not(jsd)))) ;; Support.  Cancellation. 
(when (gtj) (and (rsd) (not(qsd)))) ;; Support.  Cancellation. 
(when (jtj) (and (xsd) (not(vsd)))) ;; Support.  Cancellation. 
(when (ltj) (and (crd) (not(brd)))) ;; Support.  Cancellation. 
(when (qtj) (and (krd) (not(jrd)))) ;; Support.  Cancellation. 
(when (ttj) (and (rrd) (not(qrd)))) ;; Support.  Cancellation. 
(when (vtj) (and (xrd) (not(vrd)))) ;; Support.  Cancellation. 
(when (ytj) (and (ctd) (not(btd)))) ;; Support.  Cancellation. 
(when (buj) (and (ktd) (not(jtd)))) ;; Support.  Cancellation. 
(when (guj) (and (rtd) (not(qtd)))) ;; Support.  Cancellation. 
(when (juj) (and (xtd) (not(vtd)))) ;; Support.  Cancellation. 
(when (luj) (and (cud) (not(bud)))) ;; Support.  Cancellation. 
(when (quj) (and (kud) (not(jud)))) ;; Support.  Cancellation. 
(when (tuj) (and (rud) (not(qud)))) ;; Support.  Cancellation. 
(when (vuj)  (xud)) ;; Support. 
(when (yuj)  (cvd)) ;; Support. 
(when (bvj)  (kvd)) ;; Support. 
(when (gvj)  (rvd)) ;; Support. 
(when (jvj)  (xvd)) ;; Support. 
(when (lvj)  (cwd)) ;; Support. 
(when (qvj)  (kwd)) ;; Support. 
(when (tvj)  (rwd)) ;; Support. 
(when (vvj)  (xwd)) ;; Support. 
(when (yvj)  (cxd)) ;; Support. 
(when (bwj)  (kxd)) ;; Support. 
(when (gwj)  (rxd)) ;; Support. 
(when (jwj)  (xxd)) ;; Support. 
(when (lwj)  (cyd)) ;; Support. 
(when (qwj)  (kyd)) ;; Support. 
(when (twj)  (ryd)) ;; Support. 
(when (vwj)  (xyd)) ;; Support. 
(when (ywj)  (czd)) ;; Support. 
(when (bxj)  (kzd)) ;; Support. 
(when (gxj)  (rzd)) ;; Support. 
(when (jxj)  (xzd)) ;; Support. 
(when (lxj)  (c1d)) ;; Support. 
(when (qxj)  (k1d)) ;; Support. 
(when (txj)  (r1d)) ;; Support. 
(when (vxj)  (x1d)) ;; Support. 
(when (yxj)  (c2d)) ;; Support. 
(when (byj)  (k2d)) ;; Support. 
(when (gyj)  (r2d)) ;; Support. 
(when (jyj)  (x2d)) ;; Support. 
(when (lyj)  (c3d)) ;; Support. 
(when (qyj)  (k3d)) ;; Support. 
(when (u3j)  (uae)) ;; Support. 
(when (x3j)  (zae)) ;; Support. 
(when (z3j)  (hbe)) ;; Support. 
(when (c4j)  (mbe)) ;; Support. 
(when (h4j)  (ube)) ;; Support. 
(when (k4j)  (zbe)) ;; Support. 
(when (m4j)  (hce)) ;; Support. 
(when (r4j)  (mce)) ;; Support. 
(when (u5j)  (uee)) ;; Support. 
(when (x5j)  (zee)) ;; Support. 
(when (z5j)  (hfe)) ;; Support. 
(when (c6j)  (mfe)) ;; Support. 
(when (h6j)  (ufe)) ;; Support. 
(when (k6j)  (zfe)) ;; Support. 
(when (m6j)  (hge)) ;; Support. 
(when (r6j)  (mge)) ;; Support. 
(when (u7j) (and (uie) (not(tie)))) ;; Support.  Cancellation. 
(when (x7j) (and (zie) (not(yie)))) ;; Support.  Cancellation. 
(when (z7j) (and (hje) (not(gje)))) ;; Support.  Cancellation. 
(when (c8j) (and (mje) (not(lje)))) ;; Support.  Cancellation. 
(when (h8j) (and (uje) (not(tje)))) ;; Support.  Cancellation. 
(when (k8j) (and (zje) (not(yje)))) ;; Support.  Cancellation. 
(when (m8j) (and (hke) (not(gke)))) ;; Support.  Cancellation. 
(when (r8j) (and (mke) (not(lke)))) ;; Support.  Cancellation. 
(when (u8j) (and (uke) (not(tke)))) ;; Support.  Cancellation. 
(when (x8j) (and (zke) (not(yke)))) ;; Support.  Cancellation. 
(when (z8j) (and (hle) (not(gle)))) ;; Support.  Cancellation. 
(when (c9j) (and (mle) (not(lle)))) ;; Support.  Cancellation. 
(when (h9j) (and (ule) (not(tle)))) ;; Support.  Cancellation. 
(when (k9j) (and (zle) (not(yle)))) ;; Support.  Cancellation. 
(when (m9j) (and (hme) (not(gme)))) ;; Support.  Cancellation. 
(when (r9j) (and (mme) (not(lme)))) ;; Support.  Cancellation. 
(when (uak) (and (uqe) (not(tqe)))) ;; Support.  Cancellation. 
(when (xak) (and (zqe) (not(yqe)))) ;; Support.  Cancellation. 
(when (hbk) (and (use) (not(tse)))) ;; Support.  Cancellation. 
(when (kbk) (and (zse) (not(yse)))) ;; Support.  Cancellation. 
(when (tbk) (and (rre) (not(qre)))) ;; Support.  Cancellation. 
(when (vbk) (and (xre) (not(vre)))) ;; Support.  Cancellation. 
(when (ybk) (and (cte) (not(bte)))) ;; Support.  Cancellation. 
(when (bck) (and (kte) (not(jte)))) ;; Support.  Cancellation. 
(when (tck) (and (rue) (not(que)))) ;; Support.  Cancellation. 
(when (vck) (and (xue) (not(vue)))) ;; Support.  Cancellation. 
(when (ldk) (and (cwe) (not(bwe)))) ;; Support.  Cancellation. 
(when (qdk) (and (kwe) (not(jwe)))) ;; Support.  Cancellation. 
(when (gek) (and (rxe) (not(qxe)))) ;; Support.  Cancellation. 
(when (jek) (and (xxe) (not(vxe)))) ;; Support.  Cancellation. 
(when (lek) (and (cye) (not(bye)))) ;; Support.  Cancellation. 
(when (qek) (and (kye) (not(jye)))) ;; Support.  Cancellation. 
(when (tgk)  (r3e)) ;; Support. 
(when (vgk)  (x3e)) ;; Support. 
(when (ygk)  (c4e)) ;; Support. 
(when (bhk)  (k4e)) ;; Support. 
(when (ghk)  (r4e)) ;; Support. 
(when (jhk)  (x4e)) ;; Support. 
(when (lhk)  (c5e)) ;; Support. 
(when (qhk)  (k5e)) ;; Support. 
(when (thk)  (r5e)) ;; Support. 
(when (vhk)  (x5e)) ;; Support. 
(when (yhk)  (c6e)) ;; Support. 
(when (bik)  (k6e)) ;; Support. 
(when (gik)  (r6e)) ;; Support. 
(when (jik)  (x6e)) ;; Support. 
(when (lik)  (c7e)) ;; Support. 
))
(:action CMPSWAP_L1_L7
:parameters ()
:precondition (and (q7e))

:effect (and  (qfj) (z4d) (not(tqi))
(when (qmj)  (k7e)) ;; Support. 
(when (qed) (and (rqi) (not(r3i)))) ;; Support.  Cancellation. 
(when (ved) (and (uqi) (not(vqi)))) ;; Support.  Cancellation. 
(when (bfd) (and (xqi) (not(yqi)))) ;; Support.  Cancellation. 
(when (jfd) (and (zqi) (not(bsi)))) ;; Support.  Cancellation. 
(when (qfd) (and (csi) (not(gsi)))) ;; Support.  Cancellation. 
(when (vfd) (and (hsi) (not(jsi)))) ;; Support.  Cancellation. 
(when (bgd) (and (ksi) (not(lsi)))) ;; Support.  Cancellation. 
(when (jgd) (and (msi) (not(qsi)))) ;; Support.  Cancellation. 
(when (qgd) (and (rsi) (not(tsi)))) ;; Support.  Cancellation. 
(when (vgd) (and (usi) (not(vsi)))) ;; Support.  Cancellation. 
(when (bhd) (and (xsi) (not(ysi)))) ;; Support.  Cancellation. 
(when (jhd) (and (zsi) (not(bri)))) ;; Support.  Cancellation. 
(when (qhd) (and (cri) (not(gri)))) ;; Support.  Cancellation. 
(when (vhd) (and (hri) (not(jri)))) ;; Support.  Cancellation. 
(when (bid) (and (kri) (not(lri)))) ;; Support.  Cancellation. 
(when (jid) (and (mri) (not(qri)))) ;; Support.  Cancellation. 
(when (qid) (and (rri) (not(tri)))) ;; Support.  Cancellation. 
(when (vid) (and (uri) (not(vri)))) ;; Support.  Cancellation. 
(when (bjd) (and (xri) (not(yri)))) ;; Support.  Cancellation. 
(when (jjd) (and (zri) (not(bti)))) ;; Support.  Cancellation. 
(when (qjd) (and (cti) (not(gti)))) ;; Support.  Cancellation. 
(when (vjd) (and (hti) (not(jti)))) ;; Support.  Cancellation. 
(when (bkd) (and (kti) (not(lti)))) ;; Support.  Cancellation. 
(when (jkd) (and (mti) (not(qti)))) ;; Support.  Cancellation. 
(when (qkd) (and (rti) (not(tti)))) ;; Support.  Cancellation. 
(when (vkd) (and (uti) (not(vti)))) ;; Support.  Cancellation. 
(when (bld) (and (xti) (not(yti)))) ;; Support.  Cancellation. 
(when (jld) (and (zti) (not(bui)))) ;; Support.  Cancellation. 
(when (qld) (and (cui) (not(gui)))) ;; Support.  Cancellation. 
(when (vld) (and (hui) (not(jui)))) ;; Support.  Cancellation. 
(when (bmd) (and (kui) (not(lui)))) ;; Support.  Cancellation. 
(when (jmd) (and (mui) (not(qui)))) ;; Support.  Cancellation. 
(when (qmd) (and (rui) (not(tui)))) ;; Support.  Cancellation. 
(when (vmd) (and (uui) (not(vui)))) ;; Support.  Cancellation. 
(when (bnd) (and (xui) (not(yui)))) ;; Support.  Cancellation. 
(when (jnd) (and (zui) (not(bvi)))) ;; Support.  Cancellation. 
(when (qnd) (and (cvi) (not(gvi)))) ;; Support.  Cancellation. 
(when (vnd) (and (hvi) (not(jvi)))) ;; Support.  Cancellation. 
(when (bod) (and (kvi) (not(lvi)))) ;; Support.  Cancellation. 
(when (jod) (and (mvi) (not(qvi)))) ;; Support.  Cancellation. 
(when (qod) (and (rvi) (not(tvi)))) ;; Support.  Cancellation. 
(when (vod) (and (uvi) (not(vvi)))) ;; Support.  Cancellation. 
(when (bpd) (and (xvi) (not(yvi)))) ;; Support.  Cancellation. 
(when (jpd) (and (zvi) (not(bwi)))) ;; Support.  Cancellation. 
(when (qpd) (and (cwi) (not(gwi)))) ;; Support.  Cancellation. 
(when (vpd) (and (hwi) (not(jwi)))) ;; Support.  Cancellation. 
(when (bqd) (and (kwi) (not(lwi)))) ;; Support.  Cancellation. 
(when (jqd) (and (mwi) (not(qwi)))) ;; Support.  Cancellation. 
(when (qqd) (and (rwi) (not(twi)))) ;; Support.  Cancellation. 
(when (vqd) (and (uwi) (not(vwi)))) ;; Support.  Cancellation. 
(when (bsd) (and (xwi) (not(ywi)))) ;; Support.  Cancellation. 
(when (jsd) (and (zwi) (not(bxi)))) ;; Support.  Cancellation. 
(when (qsd) (and (cxi) (not(gxi)))) ;; Support.  Cancellation. 
(when (vsd) (and (hxi) (not(jxi)))) ;; Support.  Cancellation. 
(when (brd) (and (kxi) (not(lxi)))) ;; Support.  Cancellation. 
(when (jrd) (and (mxi) (not(qxi)))) ;; Support.  Cancellation. 
(when (qrd) (and (rxi) (not(txi)))) ;; Support.  Cancellation. 
(when (vrd) (and (uxi) (not(vxi)))) ;; Support.  Cancellation. 
(when (btd) (and (xxi) (not(yxi)))) ;; Support.  Cancellation. 
(when (jtd) (and (zxi) (not(byi)))) ;; Support.  Cancellation. 
(when (qtd) (and (cyi) (not(gyi)))) ;; Support.  Cancellation. 
(when (vtd) (and (hyi) (not(jyi)))) ;; Support.  Cancellation. 
(when (bud) (and (kyi) (not(lyi)))) ;; Support.  Cancellation. 
(when (jud) (and (myi) (not(qyi)))) ;; Support.  Cancellation. 
(when (qud) (and (ryi) (not(tyi)))) ;; Support.  Cancellation. 
(when (tie) (and (taj) (not(uaj)))) ;; Support.  Cancellation. 
(when (yie) (and (vaj) (not(xaj)))) ;; Support.  Cancellation. 
(when (gje) (and (yaj) (not(zaj)))) ;; Support.  Cancellation. 
(when (lje) (and (bbj) (not(cbj)))) ;; Support.  Cancellation. 
(when (tje) (and (gbj) (not(hbj)))) ;; Support.  Cancellation. 
(when (yje) (and (jbj) (not(kbj)))) ;; Support.  Cancellation. 
(when (gke) (and (lbj) (not(mbj)))) ;; Support.  Cancellation. 
(when (lke) (and (qbj) (not(rbj)))) ;; Support.  Cancellation. 
(when (tke) (and (tbj) (not(ubj)))) ;; Support.  Cancellation. 
(when (yke) (and (vbj) (not(xbj)))) ;; Support.  Cancellation. 
(when (gle) (and (ybj) (not(zbj)))) ;; Support.  Cancellation. 
(when (lle) (and (bcj) (not(ccj)))) ;; Support.  Cancellation. 
(when (tle) (and (gcj) (not(hcj)))) ;; Support.  Cancellation. 
(when (yle) (and (jcj) (not(kcj)))) ;; Support.  Cancellation. 
(when (gme) (and (lcj) (not(mcj)))) ;; Support.  Cancellation. 
(when (lme) (and (qcj) (not(rcj)))) ;; Support.  Cancellation. 
(when (tme)  (tcj)) ;; Support. 
(when (yme)  (vcj)) ;; Support. 
(when (gne)  (ycj)) ;; Support. 
(when (lne)  (bdj)) ;; Support. 
(when (tne)  (gdj)) ;; Support. 
(when (yne)  (jdj)) ;; Support. 
(when (goe)  (ldj)) ;; Support. 
(when (loe)  (qdj)) ;; Support. 
(when (toe)  (tdj)) ;; Support. 
(when (yoe)  (vdj)) ;; Support. 
(when (gpe)  (ydj)) ;; Support. 
(when (lpe)  (bej)) ;; Support. 
(when (tpe)  (gej)) ;; Support. 
(when (ype)  (jej)) ;; Support. 
(when (gqe)  (lej)) ;; Support. 
(when (lqe)  (qej)) ;; Support. 
(when (tqe) (and (tej) (not(uej)))) ;; Support.  Cancellation. 
(when (yqe) (and (vej) (not(xej)))) ;; Support.  Cancellation. 
(when (gse)  (yej)) ;; Support. 
(when (lse)  (bfj)) ;; Support. 
(when (tse) (and (gfj) (not(hfj)))) ;; Support.  Cancellation. 
(when (yse) (and (jfj) (not(kfj)))) ;; Support.  Cancellation. 
(when (gre)  (lfj)) ;; Support. 
(when (qre) (and (rfj) (not(tfj)))) ;; Support.  Cancellation. 
(when (vre) (and (ufj) (not(vfj)))) ;; Support.  Cancellation. 
(when (bte) (and (xfj) (not(yfj)))) ;; Support.  Cancellation. 
(when (jte) (and (zfj) (not(bgj)))) ;; Support.  Cancellation. 
(when (qte)  (cgj)) ;; Support. 
(when (vte)  (hgj)) ;; Support. 
(when (bue)  (kgj)) ;; Support. 
(when (jue)  (mgj)) ;; Support. 
(when (que) (and (rgj) (not(tgj)))) ;; Support.  Cancellation. 
(when (vue) (and (ugj) (not(vgj)))) ;; Support.  Cancellation. 
(when (bve)  (xgj)) ;; Support. 
(when (jve)  (zgj)) ;; Support. 
(when (qve)  (chj)) ;; Support. 
(when (vve)  (hhj)) ;; Support. 
(when (bwe) (and (khj) (not(lhj)))) ;; Support.  Cancellation. 
(when (jwe) (and (mhj) (not(qhj)))) ;; Support.  Cancellation. 
(when (qwe)  (rhj)) ;; Support. 
(when (vwe)  (uhj)) ;; Support. 
(when (bxe)  (xhj)) ;; Support. 
(when (jxe)  (zhj)) ;; Support. 
(when (qxe) (and (cij) (not(gij)))) ;; Support.  Cancellation. 
(when (vxe) (and (hij) (not(jij)))) ;; Support.  Cancellation. 
(when (bye) (and (kij) (not(lij)))) ;; Support.  Cancellation. 
(when (jye) (and (mij) (not(qij)))) ;; Support.  Cancellation. 
(when (tqi) (and (red) (not(lre)))) ;; Support.  Cancellation. 
(when (not(rqi))  (not(qed))) ;; Cancellation. 
(when (vqi) (and (xed) (not(ved)))) ;; Support.  Cancellation. 
(when (yqi) (and (cfd) (not(bfd)))) ;; Support.  Cancellation. 
(when (bsi) (and (kfd) (not(jfd)))) ;; Support.  Cancellation. 
(when (gsi) (and (rfd) (not(qfd)))) ;; Support.  Cancellation. 
(when (jsi) (and (xfd) (not(vfd)))) ;; Support.  Cancellation. 
(when (lsi) (and (cgd) (not(bgd)))) ;; Support.  Cancellation. 
(when (qsi) (and (kgd) (not(jgd)))) ;; Support.  Cancellation. 
(when (tsi) (and (rgd) (not(qgd)))) ;; Support.  Cancellation. 
(when (vsi) (and (xgd) (not(vgd)))) ;; Support.  Cancellation. 
(when (ysi) (and (chd) (not(bhd)))) ;; Support.  Cancellation. 
(when (bri) (and (khd) (not(jhd)))) ;; Support.  Cancellation. 
(when (gri) (and (rhd) (not(qhd)))) ;; Support.  Cancellation. 
(when (jri) (and (xhd) (not(vhd)))) ;; Support.  Cancellation. 
(when (lri) (and (cid) (not(bid)))) ;; Support.  Cancellation. 
(when (qri) (and (kid) (not(jid)))) ;; Support.  Cancellation. 
(when (tri) (and (rid) (not(qid)))) ;; Support.  Cancellation. 
(when (vri) (and (xid) (not(vid)))) ;; Support.  Cancellation. 
(when (yri) (and (cjd) (not(bjd)))) ;; Support.  Cancellation. 
(when (bti) (and (kjd) (not(jjd)))) ;; Support.  Cancellation. 
(when (gti) (and (rjd) (not(qjd)))) ;; Support.  Cancellation. 
(when (jti) (and (xjd) (not(vjd)))) ;; Support.  Cancellation. 
(when (lti) (and (ckd) (not(bkd)))) ;; Support.  Cancellation. 
(when (qti) (and (kkd) (not(jkd)))) ;; Support.  Cancellation. 
(when (tti) (and (rkd) (not(qkd)))) ;; Support.  Cancellation. 
(when (vti) (and (xkd) (not(vkd)))) ;; Support.  Cancellation. 
(when (yti) (and (cld) (not(bld)))) ;; Support.  Cancellation. 
(when (bui) (and (kld) (not(jld)))) ;; Support.  Cancellation. 
(when (gui) (and (rld) (not(qld)))) ;; Support.  Cancellation. 
(when (jui) (and (xld) (not(vld)))) ;; Support.  Cancellation. 
(when (lui) (and (cmd) (not(bmd)))) ;; Support.  Cancellation. 
(when (qui) (and (kmd) (not(jmd)))) ;; Support.  Cancellation. 
(when (tui) (and (rmd) (not(qmd)))) ;; Support.  Cancellation. 
(when (vui) (and (xmd) (not(vmd)))) ;; Support.  Cancellation. 
(when (yui) (and (cnd) (not(bnd)))) ;; Support.  Cancellation. 
(when (bvi) (and (knd) (not(jnd)))) ;; Support.  Cancellation. 
(when (gvi) (and (rnd) (not(qnd)))) ;; Support.  Cancellation. 
(when (jvi) (and (xnd) (not(vnd)))) ;; Support.  Cancellation. 
(when (lvi) (and (cod) (not(bod)))) ;; Support.  Cancellation. 
(when (qvi) (and (kod) (not(jod)))) ;; Support.  Cancellation. 
(when (tvi) (and (rod) (not(qod)))) ;; Support.  Cancellation. 
(when (vvi) (and (xod) (not(vod)))) ;; Support.  Cancellation. 
(when (yvi) (and (cpd) (not(bpd)))) ;; Support.  Cancellation. 
(when (bwi) (and (kpd) (not(jpd)))) ;; Support.  Cancellation. 
(when (gwi) (and (rpd) (not(qpd)))) ;; Support.  Cancellation. 
(when (jwi) (and (xpd) (not(vpd)))) ;; Support.  Cancellation. 
(when (lwi) (and (cqd) (not(bqd)))) ;; Support.  Cancellation. 
(when (qwi) (and (kqd) (not(jqd)))) ;; Support.  Cancellation. 
(when (twi) (and (rqd) (not(qqd)))) ;; Support.  Cancellation. 
(when (vwi) (and (xqd) (not(vqd)))) ;; Support.  Cancellation. 
(when (ywi) (and (csd) (not(bsd)))) ;; Support.  Cancellation. 
(when (bxi) (and (ksd) (not(jsd)))) ;; Support.  Cancellation. 
(when (gxi) (and (rsd) (not(qsd)))) ;; Support.  Cancellation. 
(when (jxi) (and (xsd) (not(vsd)))) ;; Support.  Cancellation. 
(when (lxi) (and (crd) (not(brd)))) ;; Support.  Cancellation. 
(when (qxi) (and (krd) (not(jrd)))) ;; Support.  Cancellation. 
(when (txi) (and (rrd) (not(qrd)))) ;; Support.  Cancellation. 
(when (vxi) (and (xrd) (not(vrd)))) ;; Support.  Cancellation. 
(when (yxi) (and (ctd) (not(btd)))) ;; Support.  Cancellation. 
(when (byi) (and (ktd) (not(jtd)))) ;; Support.  Cancellation. 
(when (gyi) (and (rtd) (not(qtd)))) ;; Support.  Cancellation. 
(when (jyi) (and (xtd) (not(vtd)))) ;; Support.  Cancellation. 
(when (lyi) (and (cud) (not(bud)))) ;; Support.  Cancellation. 
(when (qyi) (and (kud) (not(jud)))) ;; Support.  Cancellation. 
(when (tyi) (and (rud) (not(qud)))) ;; Support.  Cancellation. 
(when (vyi)  (xud)) ;; Support. 
(when (yyi)  (cvd)) ;; Support. 
(when (bzi)  (kvd)) ;; Support. 
(when (gzi)  (rvd)) ;; Support. 
(when (jzi)  (xvd)) ;; Support. 
(when (lzi)  (cwd)) ;; Support. 
(when (qzi)  (kwd)) ;; Support. 
(when (tzi)  (rwd)) ;; Support. 
(when (vzi)  (xwd)) ;; Support. 
(when (yzi)  (cxd)) ;; Support. 
(when (b1i)  (kxd)) ;; Support. 
(when (g1i)  (rxd)) ;; Support. 
(when (j1i)  (xxd)) ;; Support. 
(when (l1i)  (cyd)) ;; Support. 
(when (q1i)  (kyd)) ;; Support. 
(when (t1i)  (ryd)) ;; Support. 
(when (v1i)  (xyd)) ;; Support. 
(when (y1i)  (czd)) ;; Support. 
(when (b2i)  (kzd)) ;; Support. 
(when (g2i)  (rzd)) ;; Support. 
(when (j2i)  (xzd)) ;; Support. 
(when (l2i)  (c1d)) ;; Support. 
(when (q2i)  (k1d)) ;; Support. 
(when (t2i)  (r1d)) ;; Support. 
(when (v2i)  (x1d)) ;; Support. 
(when (y2i)  (c2d)) ;; Support. 
(when (b3i)  (k2d)) ;; Support. 
(when (g3i)  (r2d)) ;; Support. 
(when (j3i)  (x2d)) ;; Support. 
(when (l3i)  (c3d)) ;; Support. 
(when (q3i)  (k3d)) ;; Support. 
(when (r3i)  (q3d)) ;; Support. 
(when (u3i)  (u3d)) ;; Support. 
(when (x3i)  (z3d)) ;; Support. 
(when (z3i)  (h4d)) ;; Support. 
(when (c4i)  (m4d)) ;; Support. 
(when (h4i)  (u4d)) ;; Support. 
(when (m4i)  (h5d)) ;; Support. 
(when (r4i)  (m5d)) ;; Support. 
(when (u4i)  (u5d)) ;; Support. 
(when (x4i)  (z5d)) ;; Support. 
(when (z4i)  (h6d)) ;; Support. 
(when (c5i)  (m6d)) ;; Support. 
(when (h5i)  (u6d)) ;; Support. 
(when (k5i)  (z6d)) ;; Support. 
(when (m5i)  (h7d)) ;; Support. 
(when (r5i)  (m7d)) ;; Support. 
(when (u5i)  (u7d)) ;; Support. 
(when (x5i)  (z7d)) ;; Support. 
(when (z5i)  (h8d)) ;; Support. 
(when (c6i)  (m8d)) ;; Support. 
(when (h6i)  (u8d)) ;; Support. 
(when (k6i)  (z8d)) ;; Support. 
(when (m6i)  (h9d)) ;; Support. 
(when (r6i)  (m9d)) ;; Support. 
(when (u6i)  (u9d)) ;; Support. 
(when (x6i)  (z9d)) ;; Support. 
(when (z6i)  (h0d)) ;; Support. 
(when (c7i)  (m0d)) ;; Support. 
(when (h7i)  (u0d)) ;; Support. 
(when (k7i)  (z0d)) ;; Support. 
(when (m7i)  (hae)) ;; Support. 
(when (r7i)  (mae)) ;; Support. 
(when (u7i)  (uae)) ;; Support. 
(when (x7i)  (zae)) ;; Support. 
(when (z7i)  (hbe)) ;; Support. 
(when (c8i)  (mbe)) ;; Support. 
(when (h8i)  (ube)) ;; Support. 
(when (k8i)  (zbe)) ;; Support. 
(when (m8i)  (hce)) ;; Support. 
(when (r8i)  (mce)) ;; Support. 
(when (u9i)  (uee)) ;; Support. 
(when (x9i)  (zee)) ;; Support. 
(when (z9i)  (hfe)) ;; Support. 
(when (c0i)  (mfe)) ;; Support. 
(when (h0i)  (ufe)) ;; Support. 
(when (k0i)  (zfe)) ;; Support. 
(when (m0i)  (hge)) ;; Support. 
(when (r0i)  (mge)) ;; Support. 
(when (uaj) (and (uie) (not(tie)))) ;; Support.  Cancellation. 
(when (xaj) (and (zie) (not(yie)))) ;; Support.  Cancellation. 
(when (zaj) (and (hje) (not(gje)))) ;; Support.  Cancellation. 
(when (cbj) (and (mje) (not(lje)))) ;; Support.  Cancellation. 
(when (hbj) (and (uje) (not(tje)))) ;; Support.  Cancellation. 
(when (kbj) (and (zje) (not(yje)))) ;; Support.  Cancellation. 
(when (mbj) (and (hke) (not(gke)))) ;; Support.  Cancellation. 
(when (rbj) (and (mke) (not(lke)))) ;; Support.  Cancellation. 
(when (ubj) (and (uke) (not(tke)))) ;; Support.  Cancellation. 
(when (xbj) (and (zke) (not(yke)))) ;; Support.  Cancellation. 
(when (zbj) (and (hle) (not(gle)))) ;; Support.  Cancellation. 
(when (ccj) (and (mle) (not(lle)))) ;; Support.  Cancellation. 
(when (hcj) (and (ule) (not(tle)))) ;; Support.  Cancellation. 
(when (kcj) (and (zle) (not(yle)))) ;; Support.  Cancellation. 
(when (mcj) (and (hme) (not(gme)))) ;; Support.  Cancellation. 
(when (rcj) (and (mme) (not(lme)))) ;; Support.  Cancellation. 
(when (uej) (and (uqe) (not(tqe)))) ;; Support.  Cancellation. 
(when (xej) (and (zqe) (not(yqe)))) ;; Support.  Cancellation. 
(when (hfj) (and (use) (not(tse)))) ;; Support.  Cancellation. 
(when (kfj) (and (zse) (not(yse)))) ;; Support.  Cancellation. 
(when (tfj) (and (rre) (not(qre)))) ;; Support.  Cancellation. 
(when (vfj) (and (xre) (not(vre)))) ;; Support.  Cancellation. 
(when (yfj) (and (cte) (not(bte)))) ;; Support.  Cancellation. 
(when (bgj) (and (kte) (not(jte)))) ;; Support.  Cancellation. 
(when (tgj) (and (rue) (not(que)))) ;; Support.  Cancellation. 
(when (vgj) (and (xue) (not(vue)))) ;; Support.  Cancellation. 
(when (lhj) (and (cwe) (not(bwe)))) ;; Support.  Cancellation. 
(when (qhj) (and (kwe) (not(jwe)))) ;; Support.  Cancellation. 
(when (gij) (and (rxe) (not(qxe)))) ;; Support.  Cancellation. 
(when (jij) (and (xxe) (not(vxe)))) ;; Support.  Cancellation. 
(when (lij) (and (cye) (not(bye)))) ;; Support.  Cancellation. 
(when (qij) (and (kye) (not(jye)))) ;; Support.  Cancellation. 
(when (tkj)  (r3e)) ;; Support. 
(when (vkj)  (x3e)) ;; Support. 
(when (ykj)  (c4e)) ;; Support. 
(when (blj)  (k4e)) ;; Support. 
(when (glj)  (r4e)) ;; Support. 
(when (jlj)  (x4e)) ;; Support. 
(when (llj)  (c5e)) ;; Support. 
(when (qlj)  (k5e)) ;; Support. 
(when (tlj)  (r5e)) ;; Support. 
(when (vlj)  (x5e)) ;; Support. 
(when (ylj)  (c6e)) ;; Support. 
(when (bmj)  (k6e)) ;; Support. 
(when (gmj)  (r6e)) ;; Support. 
(when (jmj)  (x6e)) ;; Support. 
(when (lmj)  (c7e)) ;; Support. 
))
(:action CMPSWAP_L1_L6
:parameters ()
:precondition (and (q7e))

:effect (and  (qji) (hhe) (not(tuh))
(when (qqi)  (k7e)) ;; Support. 
(when (qed) (and (ruh) (not(r7h)))) ;; Support.  Cancellation. 
(when (ved) (and (uuh) (not(vuh)))) ;; Support.  Cancellation. 
(when (bfd) (and (xuh) (not(yuh)))) ;; Support.  Cancellation. 
(when (jfd) (and (zuh) (not(bvh)))) ;; Support.  Cancellation. 
(when (qfd) (and (cvh) (not(gvh)))) ;; Support.  Cancellation. 
(when (vfd) (and (hvh) (not(jvh)))) ;; Support.  Cancellation. 
(when (bgd) (and (kvh) (not(lvh)))) ;; Support.  Cancellation. 
(when (jgd) (and (mvh) (not(qvh)))) ;; Support.  Cancellation. 
(when (qgd) (and (rvh) (not(tvh)))) ;; Support.  Cancellation. 
(when (vgd) (and (uvh) (not(vvh)))) ;; Support.  Cancellation. 
(when (bhd) (and (xvh) (not(yvh)))) ;; Support.  Cancellation. 
(when (jhd) (and (zvh) (not(bwh)))) ;; Support.  Cancellation. 
(when (qhd) (and (cwh) (not(gwh)))) ;; Support.  Cancellation. 
(when (vhd) (and (hwh) (not(jwh)))) ;; Support.  Cancellation. 
(when (bid) (and (kwh) (not(lwh)))) ;; Support.  Cancellation. 
(when (jid) (and (mwh) (not(qwh)))) ;; Support.  Cancellation. 
(when (qid) (and (rwh) (not(twh)))) ;; Support.  Cancellation. 
(when (vid) (and (uwh) (not(vwh)))) ;; Support.  Cancellation. 
(when (bjd) (and (xwh) (not(ywh)))) ;; Support.  Cancellation. 
(when (jjd) (and (zwh) (not(bxh)))) ;; Support.  Cancellation. 
(when (qjd) (and (cxh) (not(gxh)))) ;; Support.  Cancellation. 
(when (vjd) (and (hxh) (not(jxh)))) ;; Support.  Cancellation. 
(when (bkd) (and (kxh) (not(lxh)))) ;; Support.  Cancellation. 
(when (jkd) (and (mxh) (not(qxh)))) ;; Support.  Cancellation. 
(when (qkd) (and (rxh) (not(txh)))) ;; Support.  Cancellation. 
(when (vkd) (and (uxh) (not(vxh)))) ;; Support.  Cancellation. 
(when (bld) (and (xxh) (not(yxh)))) ;; Support.  Cancellation. 
(when (jld) (and (zxh) (not(byh)))) ;; Support.  Cancellation. 
(when (qld) (and (cyh) (not(gyh)))) ;; Support.  Cancellation. 
(when (vld) (and (hyh) (not(jyh)))) ;; Support.  Cancellation. 
(when (bmd) (and (kyh) (not(lyh)))) ;; Support.  Cancellation. 
(when (jmd) (and (myh) (not(qyh)))) ;; Support.  Cancellation. 
(when (qmd) (and (ryh) (not(tyh)))) ;; Support.  Cancellation. 
(when (vmd) (and (uyh) (not(vyh)))) ;; Support.  Cancellation. 
(when (bnd) (and (xyh) (not(yyh)))) ;; Support.  Cancellation. 
(when (jnd) (and (zyh) (not(bzh)))) ;; Support.  Cancellation. 
(when (qnd) (and (czh) (not(gzh)))) ;; Support.  Cancellation. 
(when (vnd) (and (hzh) (not(jzh)))) ;; Support.  Cancellation. 
(when (bod) (and (kzh) (not(lzh)))) ;; Support.  Cancellation. 
(when (jod) (and (mzh) (not(qzh)))) ;; Support.  Cancellation. 
(when (qod) (and (rzh) (not(tzh)))) ;; Support.  Cancellation. 
(when (vod) (and (uzh) (not(vzh)))) ;; Support.  Cancellation. 
(when (bpd) (and (xzh) (not(yzh)))) ;; Support.  Cancellation. 
(when (jpd) (and (zzh) (not(b1h)))) ;; Support.  Cancellation. 
(when (qpd) (and (c1h) (not(g1h)))) ;; Support.  Cancellation. 
(when (vpd) (and (h1h) (not(j1h)))) ;; Support.  Cancellation. 
(when (bqd) (and (k1h) (not(l1h)))) ;; Support.  Cancellation. 
(when (jqd) (and (m1h) (not(q1h)))) ;; Support.  Cancellation. 
(when (qqd) (and (r1h) (not(t1h)))) ;; Support.  Cancellation. 
(when (vqd) (and (u1h) (not(v1h)))) ;; Support.  Cancellation. 
(when (bsd) (and (x1h) (not(y1h)))) ;; Support.  Cancellation. 
(when (jsd) (and (z1h) (not(b2h)))) ;; Support.  Cancellation. 
(when (qsd) (and (c2h) (not(g2h)))) ;; Support.  Cancellation. 
(when (vsd) (and (h2h) (not(j2h)))) ;; Support.  Cancellation. 
(when (brd) (and (k2h) (not(l2h)))) ;; Support.  Cancellation. 
(when (jrd) (and (m2h) (not(q2h)))) ;; Support.  Cancellation. 
(when (qrd) (and (r2h) (not(t2h)))) ;; Support.  Cancellation. 
(when (vrd) (and (u2h) (not(v2h)))) ;; Support.  Cancellation. 
(when (btd) (and (x2h) (not(y2h)))) ;; Support.  Cancellation. 
(when (jtd) (and (z2h) (not(b3h)))) ;; Support.  Cancellation. 
(when (qtd) (and (c3h) (not(g3h)))) ;; Support.  Cancellation. 
(when (vtd) (and (h3h) (not(j3h)))) ;; Support.  Cancellation. 
(when (bud) (and (k3h) (not(l3h)))) ;; Support.  Cancellation. 
(when (jud) (and (m3h) (not(q3h)))) ;; Support.  Cancellation. 
(when (qud) (and (r3h) (not(t3h)))) ;; Support.  Cancellation. 
(when (tie) (and (tei) (not(uei)))) ;; Support.  Cancellation. 
(when (yie) (and (vei) (not(xei)))) ;; Support.  Cancellation. 
(when (gje) (and (yei) (not(zei)))) ;; Support.  Cancellation. 
(when (lje) (and (bfi) (not(cfi)))) ;; Support.  Cancellation. 
(when (tje) (and (gfi) (not(hfi)))) ;; Support.  Cancellation. 
(when (yje) (and (jfi) (not(kfi)))) ;; Support.  Cancellation. 
(when (gke) (and (lfi) (not(mfi)))) ;; Support.  Cancellation. 
(when (lke) (and (qfi) (not(rfi)))) ;; Support.  Cancellation. 
(when (tke) (and (tfi) (not(ufi)))) ;; Support.  Cancellation. 
(when (yke) (and (vfi) (not(xfi)))) ;; Support.  Cancellation. 
(when (gle) (and (yfi) (not(zfi)))) ;; Support.  Cancellation. 
(when (lle) (and (bgi) (not(cgi)))) ;; Support.  Cancellation. 
(when (tle) (and (ggi) (not(hgi)))) ;; Support.  Cancellation. 
(when (yle) (and (jgi) (not(kgi)))) ;; Support.  Cancellation. 
(when (gme) (and (lgi) (not(mgi)))) ;; Support.  Cancellation. 
(when (lme) (and (qgi) (not(rgi)))) ;; Support.  Cancellation. 
(when (tme)  (tgi)) ;; Support. 
(when (yme)  (vgi)) ;; Support. 
(when (gne)  (ygi)) ;; Support. 
(when (lne)  (bhi)) ;; Support. 
(when (tne)  (ghi)) ;; Support. 
(when (yne)  (jhi)) ;; Support. 
(when (goe)  (lhi)) ;; Support. 
(when (loe)  (qhi)) ;; Support. 
(when (toe) (and (thi) (not(uhi)))) ;; Support.  Cancellation. 
(when (yoe) (and (vhi) (not(xhi)))) ;; Support.  Cancellation. 
(when (gpe) (and (yhi) (not(zhi)))) ;; Support.  Cancellation. 
(when (lpe) (and (bii) (not(cii)))) ;; Support.  Cancellation. 
(when (tpe) (and (gii) (not(hii)))) ;; Support.  Cancellation. 
(when (ype) (and (jii) (not(kii)))) ;; Support.  Cancellation. 
(when (gqe) (and (lii) (not(mii)))) ;; Support.  Cancellation. 
(when (lqe) (and (qii) (not(rii)))) ;; Support.  Cancellation. 
(when (tqe) (and (tii) (not(uii)))) ;; Support.  Cancellation. 
(when (yqe) (and (vii) (not(xii)))) ;; Support.  Cancellation. 
(when (gse) (and (yii) (not(zii)))) ;; Support.  Cancellation. 
(when (lse) (and (bji) (not(cji)))) ;; Support.  Cancellation. 
(when (tse) (and (gji) (not(hji)))) ;; Support.  Cancellation. 
(when (yse) (and (jji) (not(kji)))) ;; Support.  Cancellation. 
(when (gre)  (lji)) ;; Support. 
(when (qre) (and (rji) (not(tji)))) ;; Support.  Cancellation. 
(when (vre) (and (uji) (not(vji)))) ;; Support.  Cancellation. 
(when (bte) (and (xji) (not(yji)))) ;; Support.  Cancellation. 
(when (jte) (and (zji) (not(bki)))) ;; Support.  Cancellation. 
(when (qte) (and (cki) (not(gki)))) ;; Support.  Cancellation. 
(when (vte)  (hki)) ;; Support. 
(when (bue)  (kki)) ;; Support. 
(when (jue) (and (mki) (not(qki)))) ;; Support.  Cancellation. 
(when (que) (and (rki) (not(tki)))) ;; Support.  Cancellation. 
(when (vue) (and (uki) (not(vki)))) ;; Support.  Cancellation. 
(when (bve) (and (xki) (not(yki)))) ;; Support.  Cancellation. 
(when (jve) (and (zki) (not(bli)))) ;; Support.  Cancellation. 
(when (qve)  (cli)) ;; Support. 
(when (vve)  (hli)) ;; Support. 
(when (bwe) (and (kli) (not(lli)))) ;; Support.  Cancellation. 
(when (jwe) (and (mli) (not(qli)))) ;; Support.  Cancellation. 
(when (qwe)  (rli)) ;; Support. 
(when (vwe) (and (uli) (not(vli)))) ;; Support.  Cancellation. 
(when (bxe) (and (xli) (not(yli)))) ;; Support.  Cancellation. 
(when (jxe)  (zli)) ;; Support. 
(when (qxe) (and (cmi) (not(gmi)))) ;; Support.  Cancellation. 
(when (vxe) (and (hmi) (not(jmi)))) ;; Support.  Cancellation. 
(when (bye) (and (kmi) (not(lmi)))) ;; Support.  Cancellation. 
(when (jye) (and (mmi) (not(qmi)))) ;; Support.  Cancellation. 
(when (tuh) (and (red) (not(lre)))) ;; Support.  Cancellation. 
(when (not(ruh))  (not(qed))) ;; Cancellation. 
(when (vuh) (and (xed) (not(ved)))) ;; Support.  Cancellation. 
(when (yuh) (and (cfd) (not(bfd)))) ;; Support.  Cancellation. 
(when (bvh) (and (kfd) (not(jfd)))) ;; Support.  Cancellation. 
(when (gvh) (and (rfd) (not(qfd)))) ;; Support.  Cancellation. 
(when (jvh) (and (xfd) (not(vfd)))) ;; Support.  Cancellation. 
(when (lvh) (and (cgd) (not(bgd)))) ;; Support.  Cancellation. 
(when (qvh) (and (kgd) (not(jgd)))) ;; Support.  Cancellation. 
(when (tvh) (and (rgd) (not(qgd)))) ;; Support.  Cancellation. 
(when (vvh) (and (xgd) (not(vgd)))) ;; Support.  Cancellation. 
(when (yvh) (and (chd) (not(bhd)))) ;; Support.  Cancellation. 
(when (bwh) (and (khd) (not(jhd)))) ;; Support.  Cancellation. 
(when (gwh) (and (rhd) (not(qhd)))) ;; Support.  Cancellation. 
(when (jwh) (and (xhd) (not(vhd)))) ;; Support.  Cancellation. 
(when (lwh) (and (cid) (not(bid)))) ;; Support.  Cancellation. 
(when (qwh) (and (kid) (not(jid)))) ;; Support.  Cancellation. 
(when (twh) (and (rid) (not(qid)))) ;; Support.  Cancellation. 
(when (vwh) (and (xid) (not(vid)))) ;; Support.  Cancellation. 
(when (ywh) (and (cjd) (not(bjd)))) ;; Support.  Cancellation. 
(when (bxh) (and (kjd) (not(jjd)))) ;; Support.  Cancellation. 
(when (gxh) (and (rjd) (not(qjd)))) ;; Support.  Cancellation. 
(when (jxh) (and (xjd) (not(vjd)))) ;; Support.  Cancellation. 
(when (lxh) (and (ckd) (not(bkd)))) ;; Support.  Cancellation. 
(when (qxh) (and (kkd) (not(jkd)))) ;; Support.  Cancellation. 
(when (txh) (and (rkd) (not(qkd)))) ;; Support.  Cancellation. 
(when (vxh) (and (xkd) (not(vkd)))) ;; Support.  Cancellation. 
(when (yxh) (and (cld) (not(bld)))) ;; Support.  Cancellation. 
(when (byh) (and (kld) (not(jld)))) ;; Support.  Cancellation. 
(when (gyh) (and (rld) (not(qld)))) ;; Support.  Cancellation. 
(when (jyh) (and (xld) (not(vld)))) ;; Support.  Cancellation. 
(when (lyh) (and (cmd) (not(bmd)))) ;; Support.  Cancellation. 
(when (qyh) (and (kmd) (not(jmd)))) ;; Support.  Cancellation. 
(when (tyh) (and (rmd) (not(qmd)))) ;; Support.  Cancellation. 
(when (vyh) (and (xmd) (not(vmd)))) ;; Support.  Cancellation. 
(when (yyh) (and (cnd) (not(bnd)))) ;; Support.  Cancellation. 
(when (bzh) (and (knd) (not(jnd)))) ;; Support.  Cancellation. 
(when (gzh) (and (rnd) (not(qnd)))) ;; Support.  Cancellation. 
(when (jzh) (and (xnd) (not(vnd)))) ;; Support.  Cancellation. 
(when (lzh) (and (cod) (not(bod)))) ;; Support.  Cancellation. 
(when (qzh) (and (kod) (not(jod)))) ;; Support.  Cancellation. 
(when (tzh) (and (rod) (not(qod)))) ;; Support.  Cancellation. 
(when (vzh) (and (xod) (not(vod)))) ;; Support.  Cancellation. 
(when (yzh) (and (cpd) (not(bpd)))) ;; Support.  Cancellation. 
(when (b1h) (and (kpd) (not(jpd)))) ;; Support.  Cancellation. 
(when (g1h) (and (rpd) (not(qpd)))) ;; Support.  Cancellation. 
(when (j1h) (and (xpd) (not(vpd)))) ;; Support.  Cancellation. 
(when (l1h) (and (cqd) (not(bqd)))) ;; Support.  Cancellation. 
(when (q1h) (and (kqd) (not(jqd)))) ;; Support.  Cancellation. 
(when (t1h) (and (rqd) (not(qqd)))) ;; Support.  Cancellation. 
(when (v1h) (and (xqd) (not(vqd)))) ;; Support.  Cancellation. 
(when (y1h) (and (csd) (not(bsd)))) ;; Support.  Cancellation. 
(when (b2h) (and (ksd) (not(jsd)))) ;; Support.  Cancellation. 
(when (g2h) (and (rsd) (not(qsd)))) ;; Support.  Cancellation. 
(when (j2h) (and (xsd) (not(vsd)))) ;; Support.  Cancellation. 
(when (l2h) (and (crd) (not(brd)))) ;; Support.  Cancellation. 
(when (q2h) (and (krd) (not(jrd)))) ;; Support.  Cancellation. 
(when (t2h) (and (rrd) (not(qrd)))) ;; Support.  Cancellation. 
(when (v2h) (and (xrd) (not(vrd)))) ;; Support.  Cancellation. 
(when (y2h) (and (ctd) (not(btd)))) ;; Support.  Cancellation. 
(when (b3h) (and (ktd) (not(jtd)))) ;; Support.  Cancellation. 
(when (g3h) (and (rtd) (not(qtd)))) ;; Support.  Cancellation. 
(when (j3h) (and (xtd) (not(vtd)))) ;; Support.  Cancellation. 
(when (l3h) (and (cud) (not(bud)))) ;; Support.  Cancellation. 
(when (q3h) (and (kud) (not(jud)))) ;; Support.  Cancellation. 
(when (t3h) (and (rud) (not(qud)))) ;; Support.  Cancellation. 
(when (v3h)  (xud)) ;; Support. 
(when (y3h)  (cvd)) ;; Support. 
(when (b4h)  (kvd)) ;; Support. 
(when (g4h)  (rvd)) ;; Support. 
(when (j4h)  (xvd)) ;; Support. 
(when (l4h)  (cwd)) ;; Support. 
(when (q4h)  (kwd)) ;; Support. 
(when (t4h)  (rwd)) ;; Support. 
(when (v4h)  (xwd)) ;; Support. 
(when (y4h)  (cxd)) ;; Support. 
(when (b5h)  (kxd)) ;; Support. 
(when (g5h)  (rxd)) ;; Support. 
(when (j5h)  (xxd)) ;; Support. 
(when (l5h)  (cyd)) ;; Support. 
(when (q5h)  (kyd)) ;; Support. 
(when (t5h)  (ryd)) ;; Support. 
(when (v5h)  (xyd)) ;; Support. 
(when (y5h)  (czd)) ;; Support. 
(when (b6h)  (kzd)) ;; Support. 
(when (g6h)  (rzd)) ;; Support. 
(when (j6h)  (xzd)) ;; Support. 
(when (l6h)  (c1d)) ;; Support. 
(when (q6h)  (k1d)) ;; Support. 
(when (t6h)  (r1d)) ;; Support. 
(when (v6h)  (x1d)) ;; Support. 
(when (y6h)  (c2d)) ;; Support. 
(when (b7h)  (k2d)) ;; Support. 
(when (g7h)  (r2d)) ;; Support. 
(when (j7h)  (x2d)) ;; Support. 
(when (l7h)  (c3d)) ;; Support. 
(when (q7h)  (k3d)) ;; Support. 
(when (r7h)  (q3d)) ;; Support. 
(when (u7h)  (u3d)) ;; Support. 
(when (x7h)  (z3d)) ;; Support. 
(when (z7h)  (h4d)) ;; Support. 
(when (c8h)  (m4d)) ;; Support. 
(when (h8h)  (u4d)) ;; Support. 
(when (k8h)  (z4d)) ;; Support. 
(when (m8h)  (h5d)) ;; Support. 
(when (r8h)  (m5d)) ;; Support. 
(when (u8h)  (u5d)) ;; Support. 
(when (x8h)  (z5d)) ;; Support. 
(when (z8h)  (h6d)) ;; Support. 
(when (c9h)  (m6d)) ;; Support. 
(when (h9h)  (u6d)) ;; Support. 
(when (k9h)  (z6d)) ;; Support. 
(when (m9h)  (h7d)) ;; Support. 
(when (r9h)  (m7d)) ;; Support. 
(when (u9h)  (u7d)) ;; Support. 
(when (x9h)  (z7d)) ;; Support. 
(when (z9h)  (h8d)) ;; Support. 
(when (c0h)  (m8d)) ;; Support. 
(when (h0h)  (u8d)) ;; Support. 
(when (k0h)  (z8d)) ;; Support. 
(when (m0h)  (h9d)) ;; Support. 
(when (r0h)  (m9d)) ;; Support. 
(when (u0h)  (u9d)) ;; Support. 
(when (x0h)  (z9d)) ;; Support. 
(when (z0h)  (h0d)) ;; Support. 
(when (cai)  (m0d)) ;; Support. 
(when (hai)  (u0d)) ;; Support. 
(when (kai)  (z0d)) ;; Support. 
(when (mai)  (hae)) ;; Support. 
(when (rai)  (mae)) ;; Support. 
(when (uai)  (uae)) ;; Support. 
(when (xai)  (zae)) ;; Support. 
(when (zai)  (hbe)) ;; Support. 
(when (cbi)  (mbe)) ;; Support. 
(when (hbi)  (ube)) ;; Support. 
(when (kbi)  (zbe)) ;; Support. 
(when (mbi)  (hce)) ;; Support. 
(when (rbi)  (mce)) ;; Support. 
(when (ubi)  (uce)) ;; Support. 
(when (xbi)  (zce)) ;; Support. 
(when (hci)  (ude)) ;; Support. 
(when (kci)  (zde)) ;; Support. 
(when (uci)  (uee)) ;; Support. 
(when (xci)  (zee)) ;; Support. 
(when (zci)  (hfe)) ;; Support. 
(when (cdi)  (mfe)) ;; Support. 
(when (hdi)  (ufe)) ;; Support. 
(when (kdi)  (zfe)) ;; Support. 
(when (mdi)  (hge)) ;; Support. 
(when (rdi)  (mge)) ;; Support. 
(when (udi)  (uge)) ;; Support. 
(when (hei)  (uhe)) ;; Support. 
(when (mei)  (hie)) ;; Support. 
(when (uei) (and (uie) (not(tie)))) ;; Support.  Cancellation. 
(when (xei) (and (zie) (not(yie)))) ;; Support.  Cancellation. 
(when (zei) (and (hje) (not(gje)))) ;; Support.  Cancellation. 
(when (cfi) (and (mje) (not(lje)))) ;; Support.  Cancellation. 
(when (hfi) (and (uje) (not(tje)))) ;; Support.  Cancellation. 
(when (kfi) (and (zje) (not(yje)))) ;; Support.  Cancellation. 
(when (mfi) (and (hke) (not(gke)))) ;; Support.  Cancellation. 
(when (rfi) (and (mke) (not(lke)))) ;; Support.  Cancellation. 
(when (ufi) (and (uke) (not(tke)))) ;; Support.  Cancellation. 
(when (xfi) (and (zke) (not(yke)))) ;; Support.  Cancellation. 
(when (zfi) (and (hle) (not(gle)))) ;; Support.  Cancellation. 
(when (cgi) (and (mle) (not(lle)))) ;; Support.  Cancellation. 
(when (hgi) (and (ule) (not(tle)))) ;; Support.  Cancellation. 
(when (kgi) (and (zle) (not(yle)))) ;; Support.  Cancellation. 
(when (mgi) (and (hme) (not(gme)))) ;; Support.  Cancellation. 
(when (rgi) (and (mme) (not(lme)))) ;; Support.  Cancellation. 
(when (uhi) (and (uoe) (not(toe)))) ;; Support.  Cancellation. 
(when (xhi) (and (zoe) (not(yoe)))) ;; Support.  Cancellation. 
(when (zhi) (and (hpe) (not(gpe)))) ;; Support.  Cancellation. 
(when (cii) (and (mpe) (not(lpe)))) ;; Support.  Cancellation. 
(when (hii) (and (upe) (not(tpe)))) ;; Support.  Cancellation. 
(when (kii) (and (zpe) (not(ype)))) ;; Support.  Cancellation. 
(when (mii) (and (hqe) (not(gqe)))) ;; Support.  Cancellation. 
(when (rii) (and (mqe) (not(lqe)))) ;; Support.  Cancellation. 
(when (uii) (and (uqe) (not(tqe)))) ;; Support.  Cancellation. 
(when (xii) (and (zqe) (not(yqe)))) ;; Support.  Cancellation. 
(when (zii) (and (hse) (not(gse)))) ;; Support.  Cancellation. 
(when (cji) (and (mse) (not(lse)))) ;; Support.  Cancellation. 
(when (hji) (and (use) (not(tse)))) ;; Support.  Cancellation. 
(when (kji) (and (zse) (not(yse)))) ;; Support.  Cancellation. 
(when (tji) (and (rre) (not(qre)))) ;; Support.  Cancellation. 
(when (vji) (and (xre) (not(vre)))) ;; Support.  Cancellation. 
(when (yji) (and (cte) (not(bte)))) ;; Support.  Cancellation. 
(when (bki) (and (kte) (not(jte)))) ;; Support.  Cancellation. 
(when (gki) (and (rte) (not(qte)))) ;; Support.  Cancellation. 
(when (qki) (and (kue) (not(jue)))) ;; Support.  Cancellation. 
(when (tki) (and (rue) (not(que)))) ;; Support.  Cancellation. 
(when (vki) (and (xue) (not(vue)))) ;; Support.  Cancellation. 
(when (yki) (and (cve) (not(bve)))) ;; Support.  Cancellation. 
(when (bli) (and (kve) (not(jve)))) ;; Support.  Cancellation. 
(when (lli) (and (cwe) (not(bwe)))) ;; Support.  Cancellation. 
(when (qli) (and (kwe) (not(jwe)))) ;; Support.  Cancellation. 
(when (vli) (and (xwe) (not(vwe)))) ;; Support.  Cancellation. 
(when (yli) (and (cxe) (not(bxe)))) ;; Support.  Cancellation. 
(when (gmi) (and (rxe) (not(qxe)))) ;; Support.  Cancellation. 
(when (jmi) (and (xxe) (not(vxe)))) ;; Support.  Cancellation. 
(when (lmi) (and (cye) (not(bye)))) ;; Support.  Cancellation. 
(when (qmi) (and (kye) (not(jye)))) ;; Support.  Cancellation. 
(when (tmi)  (rye)) ;; Support. 
(when (bni)  (kze)) ;; Support. 
(when (gni)  (rze)) ;; Support. 
(when (lni)  (c1e)) ;; Support. 
(when (tni)  (r1e)) ;; Support. 
(when (vni)  (x1e)) ;; Support. 
(when (joi)  (x2e)) ;; Support. 
(when (qoi)  (k3e)) ;; Support. 
(when (toi)  (r3e)) ;; Support. 
(when (voi)  (x3e)) ;; Support. 
(when (yoi)  (c4e)) ;; Support. 
(when (bpi)  (k4e)) ;; Support. 
(when (gpi)  (r4e)) ;; Support. 
(when (jpi)  (x4e)) ;; Support. 
(when (lpi)  (c5e)) ;; Support. 
(when (qpi)  (k5e)) ;; Support. 
(when (tpi)  (r5e)) ;; Support. 
(when (vpi)  (x5e)) ;; Support. 
(when (ypi)  (c6e)) ;; Support. 
(when (bqi)  (k6e)) ;; Support. 
(when (gqi)  (r6e)) ;; Support. 
(when (jqi)  (x6e)) ;; Support. 
(when (lqi)  (c7e)) ;; Support. 
))
(:action CMPSWAP_L1_L5
:parameters ()
:precondition (and (q7e))

:effect (and  (not(tyg)) (mhe) (qnh)
(when (quh)  (k7e)) ;; Support. 
(when (qed) (and (ryg) (not(rah)))) ;; Support.  Cancellation. 
(when (ved) (and (uyg) (not(vyg)))) ;; Support.  Cancellation. 
(when (bfd) (and (xyg) (not(yyg)))) ;; Support.  Cancellation. 
(when (jfd) (and (zyg) (not(bzg)))) ;; Support.  Cancellation. 
(when (qfd) (and (czg) (not(gzg)))) ;; Support.  Cancellation. 
(when (vfd) (and (hzg) (not(jzg)))) ;; Support.  Cancellation. 
(when (bgd) (and (kzg) (not(lzg)))) ;; Support.  Cancellation. 
(when (jgd) (and (mzg) (not(qzg)))) ;; Support.  Cancellation. 
(when (qgd) (and (rzg) (not(tzg)))) ;; Support.  Cancellation. 
(when (vgd) (and (uzg) (not(vzg)))) ;; Support.  Cancellation. 
(when (bhd) (and (xzg) (not(yzg)))) ;; Support.  Cancellation. 
(when (jhd) (and (zzg) (not(b1g)))) ;; Support.  Cancellation. 
(when (qhd) (and (c1g) (not(g1g)))) ;; Support.  Cancellation. 
(when (vhd) (and (h1g) (not(j1g)))) ;; Support.  Cancellation. 
(when (bid) (and (k1g) (not(l1g)))) ;; Support.  Cancellation. 
(when (jid) (and (m1g) (not(q1g)))) ;; Support.  Cancellation. 
(when (qid) (and (r1g) (not(t1g)))) ;; Support.  Cancellation. 
(when (vid) (and (u1g) (not(v1g)))) ;; Support.  Cancellation. 
(when (bjd) (and (x1g) (not(y1g)))) ;; Support.  Cancellation. 
(when (jjd) (and (z1g) (not(b2g)))) ;; Support.  Cancellation. 
(when (qjd) (and (c2g) (not(g2g)))) ;; Support.  Cancellation. 
(when (vjd) (and (h2g) (not(j2g)))) ;; Support.  Cancellation. 
(when (bkd) (and (k2g) (not(l2g)))) ;; Support.  Cancellation. 
(when (jkd) (and (m2g) (not(q2g)))) ;; Support.  Cancellation. 
(when (qkd) (and (r2g) (not(t2g)))) ;; Support.  Cancellation. 
(when (vkd) (and (u2g) (not(v2g)))) ;; Support.  Cancellation. 
(when (bld) (and (x2g) (not(y2g)))) ;; Support.  Cancellation. 
(when (jld) (and (z2g) (not(b3g)))) ;; Support.  Cancellation. 
(when (qld) (and (c3g) (not(g3g)))) ;; Support.  Cancellation. 
(when (vld) (and (h3g) (not(j3g)))) ;; Support.  Cancellation. 
(when (bmd) (and (k3g) (not(l3g)))) ;; Support.  Cancellation. 
(when (jmd) (and (m3g) (not(q3g)))) ;; Support.  Cancellation. 
(when (qmd) (and (r3g) (not(t3g)))) ;; Support.  Cancellation. 
(when (vmd) (and (u3g) (not(v3g)))) ;; Support.  Cancellation. 
(when (bnd) (and (x3g) (not(y3g)))) ;; Support.  Cancellation. 
(when (jnd) (and (z3g) (not(b4g)))) ;; Support.  Cancellation. 
(when (qnd) (and (c4g) (not(g4g)))) ;; Support.  Cancellation. 
(when (vnd) (and (h4g) (not(j4g)))) ;; Support.  Cancellation. 
(when (bod) (and (k4g) (not(l4g)))) ;; Support.  Cancellation. 
(when (jod) (and (m4g) (not(q4g)))) ;; Support.  Cancellation. 
(when (qod) (and (r4g) (not(t4g)))) ;; Support.  Cancellation. 
(when (vod) (and (u4g) (not(v4g)))) ;; Support.  Cancellation. 
(when (bpd) (and (x4g) (not(y4g)))) ;; Support.  Cancellation. 
(when (jpd) (and (z4g) (not(b5g)))) ;; Support.  Cancellation. 
(when (qpd) (and (c5g) (not(g5g)))) ;; Support.  Cancellation. 
(when (vpd) (and (h5g) (not(j5g)))) ;; Support.  Cancellation. 
(when (bqd) (and (k5g) (not(l5g)))) ;; Support.  Cancellation. 
(when (jqd) (and (m5g) (not(q5g)))) ;; Support.  Cancellation. 
(when (qqd) (and (r5g) (not(t5g)))) ;; Support.  Cancellation. 
(when (vqd) (and (u5g) (not(v5g)))) ;; Support.  Cancellation. 
(when (bsd) (and (x5g) (not(y5g)))) ;; Support.  Cancellation. 
(when (jsd) (and (z5g) (not(b6g)))) ;; Support.  Cancellation. 
(when (qsd) (and (c6g) (not(g6g)))) ;; Support.  Cancellation. 
(when (vsd) (and (h6g) (not(j6g)))) ;; Support.  Cancellation. 
(when (brd) (and (k6g) (not(l6g)))) ;; Support.  Cancellation. 
(when (jrd) (and (m6g) (not(q6g)))) ;; Support.  Cancellation. 
(when (qrd) (and (r6g) (not(t6g)))) ;; Support.  Cancellation. 
(when (vrd) (and (u6g) (not(v6g)))) ;; Support.  Cancellation. 
(when (btd) (and (x6g) (not(y6g)))) ;; Support.  Cancellation. 
(when (jtd) (and (z6g) (not(b7g)))) ;; Support.  Cancellation. 
(when (qtd) (and (c7g) (not(g7g)))) ;; Support.  Cancellation. 
(when (vtd) (and (h7g) (not(j7g)))) ;; Support.  Cancellation. 
(when (bud) (and (k7g) (not(l7g)))) ;; Support.  Cancellation. 
(when (jud) (and (m7g) (not(q7g)))) ;; Support.  Cancellation. 
(when (qud) (and (r7g) (not(t7g)))) ;; Support.  Cancellation. 
(when (tie) (and (tih) (not(uih)))) ;; Support.  Cancellation. 
(when (yie) (and (vih) (not(xih)))) ;; Support.  Cancellation. 
(when (gje) (and (yih) (not(zih)))) ;; Support.  Cancellation. 
(when (lje) (and (bjh) (not(cjh)))) ;; Support.  Cancellation. 
(when (tje) (and (gjh) (not(hjh)))) ;; Support.  Cancellation. 
(when (yje) (and (jjh) (not(kjh)))) ;; Support.  Cancellation. 
(when (gke) (and (ljh) (not(mjh)))) ;; Support.  Cancellation. 
(when (lke) (and (qjh) (not(rjh)))) ;; Support.  Cancellation. 
(when (tke) (and (tjh) (not(ujh)))) ;; Support.  Cancellation. 
(when (yke) (and (vjh) (not(xjh)))) ;; Support.  Cancellation. 
(when (gle) (and (yjh) (not(zjh)))) ;; Support.  Cancellation. 
(when (lle) (and (bkh) (not(ckh)))) ;; Support.  Cancellation. 
(when (tle) (and (gkh) (not(hkh)))) ;; Support.  Cancellation. 
(when (yle) (and (jkh) (not(kkh)))) ;; Support.  Cancellation. 
(when (gme) (and (lkh) (not(mkh)))) ;; Support.  Cancellation. 
(when (lme) (and (qkh) (not(rkh)))) ;; Support.  Cancellation. 
(when (tme) (and (tkh) (not(ukh)))) ;; Support.  Cancellation. 
(when (yme) (and (vkh) (not(xkh)))) ;; Support.  Cancellation. 
(when (gne) (and (ykh) (not(zkh)))) ;; Support.  Cancellation. 
(when (lne) (and (blh) (not(clh)))) ;; Support.  Cancellation. 
(when (tne)  (glh)) ;; Support. 
(when (yne)  (jlh)) ;; Support. 
(when (goe)  (llh)) ;; Support. 
(when (loe)  (qlh)) ;; Support. 
(when (toe) (and (tlh) (not(ulh)))) ;; Support.  Cancellation. 
(when (yoe) (and (vlh) (not(xlh)))) ;; Support.  Cancellation. 
(when (gpe) (and (ylh) (not(zlh)))) ;; Support.  Cancellation. 
(when (lpe) (and (bmh) (not(cmh)))) ;; Support.  Cancellation. 
(when (tpe) (and (gmh) (not(hmh)))) ;; Support.  Cancellation. 
(when (ype) (and (jmh) (not(kmh)))) ;; Support.  Cancellation. 
(when (gqe) (and (lmh) (not(mmh)))) ;; Support.  Cancellation. 
(when (lqe) (and (qmh) (not(rmh)))) ;; Support.  Cancellation. 
(when (tqe) (and (tmh) (not(umh)))) ;; Support.  Cancellation. 
(when (yqe) (and (vmh) (not(xmh)))) ;; Support.  Cancellation. 
(when (gse) (and (ymh) (not(zmh)))) ;; Support.  Cancellation. 
(when (lse) (and (bnh) (not(cnh)))) ;; Support.  Cancellation. 
(when (tse) (and (gnh) (not(hnh)))) ;; Support.  Cancellation. 
(when (yse) (and (jnh) (not(knh)))) ;; Support.  Cancellation. 
(when (gre)  (lnh)) ;; Support. 
(when (qre) (and (rnh) (not(tnh)))) ;; Support.  Cancellation. 
(when (vre) (and (unh) (not(vnh)))) ;; Support.  Cancellation. 
(when (bte) (and (xnh) (not(ynh)))) ;; Support.  Cancellation. 
(when (jte) (and (znh) (not(boh)))) ;; Support.  Cancellation. 
(when (qte) (and (coh) (not(goh)))) ;; Support.  Cancellation. 
(when (vte)  (hoh)) ;; Support. 
(when (bue)  (koh)) ;; Support. 
(when (jue) (and (moh) (not(qoh)))) ;; Support.  Cancellation. 
(when (que) (and (roh) (not(toh)))) ;; Support.  Cancellation. 
(when (vue) (and (uoh) (not(voh)))) ;; Support.  Cancellation. 
(when (bve) (and (xoh) (not(yoh)))) ;; Support.  Cancellation. 
(when (jve) (and (zoh) (not(bph)))) ;; Support.  Cancellation. 
(when (qve) (and (cph) (not(gph)))) ;; Support.  Cancellation. 
(when (vve) (and (hph) (not(jph)))) ;; Support.  Cancellation. 
(when (bwe) (and (kph) (not(lph)))) ;; Support.  Cancellation. 
(when (jwe) (and (mph) (not(qph)))) ;; Support.  Cancellation. 
(when (qwe) (and (rph) (not(tph)))) ;; Support.  Cancellation. 
(when (vwe) (and (uph) (not(vph)))) ;; Support.  Cancellation. 
(when (bxe) (and (xph) (not(yph)))) ;; Support.  Cancellation. 
(when (jxe) (and (zph) (not(bqh)))) ;; Support.  Cancellation. 
(when (qxe) (and (cqh) (not(gqh)))) ;; Support.  Cancellation. 
(when (vxe) (and (hqh) (not(jqh)))) ;; Support.  Cancellation. 
(when (bye) (and (kqh) (not(lqh)))) ;; Support.  Cancellation. 
(when (jye) (and (mqh) (not(qqh)))) ;; Support.  Cancellation. 
(when (tyg) (and (red) (not(lre)))) ;; Support.  Cancellation. 
(when (not(ryg))  (not(qed))) ;; Cancellation. 
(when (vyg) (and (xed) (not(ved)))) ;; Support.  Cancellation. 
(when (yyg) (and (cfd) (not(bfd)))) ;; Support.  Cancellation. 
(when (bzg) (and (kfd) (not(jfd)))) ;; Support.  Cancellation. 
(when (gzg) (and (rfd) (not(qfd)))) ;; Support.  Cancellation. 
(when (jzg) (and (xfd) (not(vfd)))) ;; Support.  Cancellation. 
(when (lzg) (and (cgd) (not(bgd)))) ;; Support.  Cancellation. 
(when (qzg) (and (kgd) (not(jgd)))) ;; Support.  Cancellation. 
(when (tzg) (and (rgd) (not(qgd)))) ;; Support.  Cancellation. 
(when (vzg) (and (xgd) (not(vgd)))) ;; Support.  Cancellation. 
(when (yzg) (and (chd) (not(bhd)))) ;; Support.  Cancellation. 
(when (b1g) (and (khd) (not(jhd)))) ;; Support.  Cancellation. 
(when (g1g) (and (rhd) (not(qhd)))) ;; Support.  Cancellation. 
(when (j1g) (and (xhd) (not(vhd)))) ;; Support.  Cancellation. 
(when (l1g) (and (cid) (not(bid)))) ;; Support.  Cancellation. 
(when (q1g) (and (kid) (not(jid)))) ;; Support.  Cancellation. 
(when (t1g) (and (rid) (not(qid)))) ;; Support.  Cancellation. 
(when (v1g) (and (xid) (not(vid)))) ;; Support.  Cancellation. 
(when (y1g) (and (cjd) (not(bjd)))) ;; Support.  Cancellation. 
(when (b2g) (and (kjd) (not(jjd)))) ;; Support.  Cancellation. 
(when (g2g) (and (rjd) (not(qjd)))) ;; Support.  Cancellation. 
(when (j2g) (and (xjd) (not(vjd)))) ;; Support.  Cancellation. 
(when (l2g) (and (ckd) (not(bkd)))) ;; Support.  Cancellation. 
(when (q2g) (and (kkd) (not(jkd)))) ;; Support.  Cancellation. 
(when (t2g) (and (rkd) (not(qkd)))) ;; Support.  Cancellation. 
(when (v2g) (and (xkd) (not(vkd)))) ;; Support.  Cancellation. 
(when (y2g) (and (cld) (not(bld)))) ;; Support.  Cancellation. 
(when (b3g) (and (kld) (not(jld)))) ;; Support.  Cancellation. 
(when (g3g) (and (rld) (not(qld)))) ;; Support.  Cancellation. 
(when (j3g) (and (xld) (not(vld)))) ;; Support.  Cancellation. 
(when (l3g) (and (cmd) (not(bmd)))) ;; Support.  Cancellation. 
(when (q3g) (and (kmd) (not(jmd)))) ;; Support.  Cancellation. 
(when (t3g) (and (rmd) (not(qmd)))) ;; Support.  Cancellation. 
(when (v3g) (and (xmd) (not(vmd)))) ;; Support.  Cancellation. 
(when (y3g) (and (cnd) (not(bnd)))) ;; Support.  Cancellation. 
(when (b4g) (and (knd) (not(jnd)))) ;; Support.  Cancellation. 
(when (g4g) (and (rnd) (not(qnd)))) ;; Support.  Cancellation. 
(when (j4g) (and (xnd) (not(vnd)))) ;; Support.  Cancellation. 
(when (l4g) (and (cod) (not(bod)))) ;; Support.  Cancellation. 
(when (q4g) (and (kod) (not(jod)))) ;; Support.  Cancellation. 
(when (t4g) (and (rod) (not(qod)))) ;; Support.  Cancellation. 
(when (v4g) (and (xod) (not(vod)))) ;; Support.  Cancellation. 
(when (y4g) (and (cpd) (not(bpd)))) ;; Support.  Cancellation. 
(when (b5g) (and (kpd) (not(jpd)))) ;; Support.  Cancellation. 
(when (g5g) (and (rpd) (not(qpd)))) ;; Support.  Cancellation. 
(when (j5g) (and (xpd) (not(vpd)))) ;; Support.  Cancellation. 
(when (l5g) (and (cqd) (not(bqd)))) ;; Support.  Cancellation. 
(when (q5g) (and (kqd) (not(jqd)))) ;; Support.  Cancellation. 
(when (t5g) (and (rqd) (not(qqd)))) ;; Support.  Cancellation. 
(when (v5g) (and (xqd) (not(vqd)))) ;; Support.  Cancellation. 
(when (y5g) (and (csd) (not(bsd)))) ;; Support.  Cancellation. 
(when (b6g) (and (ksd) (not(jsd)))) ;; Support.  Cancellation. 
(when (g6g) (and (rsd) (not(qsd)))) ;; Support.  Cancellation. 
(when (j6g) (and (xsd) (not(vsd)))) ;; Support.  Cancellation. 
(when (l6g) (and (crd) (not(brd)))) ;; Support.  Cancellation. 
(when (q6g) (and (krd) (not(jrd)))) ;; Support.  Cancellation. 
(when (t6g) (and (rrd) (not(qrd)))) ;; Support.  Cancellation. 
(when (v6g) (and (xrd) (not(vrd)))) ;; Support.  Cancellation. 
(when (y6g) (and (ctd) (not(btd)))) ;; Support.  Cancellation. 
(when (b7g) (and (ktd) (not(jtd)))) ;; Support.  Cancellation. 
(when (g7g) (and (rtd) (not(qtd)))) ;; Support.  Cancellation. 
(when (j7g) (and (xtd) (not(vtd)))) ;; Support.  Cancellation. 
(when (l7g) (and (cud) (not(bud)))) ;; Support.  Cancellation. 
(when (q7g) (and (kud) (not(jud)))) ;; Support.  Cancellation. 
(when (t7g) (and (rud) (not(qud)))) ;; Support.  Cancellation. 
(when (v7g)  (xud)) ;; Support. 
(when (y7g)  (cvd)) ;; Support. 
(when (b8g)  (kvd)) ;; Support. 
(when (g8g)  (rvd)) ;; Support. 
(when (j8g)  (xvd)) ;; Support. 
(when (l8g)  (cwd)) ;; Support. 
(when (q8g)  (kwd)) ;; Support. 
(when (t8g)  (rwd)) ;; Support. 
(when (v8g)  (xwd)) ;; Support. 
(when (y8g)  (cxd)) ;; Support. 
(when (b9g)  (kxd)) ;; Support. 
(when (g9g)  (rxd)) ;; Support. 
(when (j9g)  (xxd)) ;; Support. 
(when (l9g)  (cyd)) ;; Support. 
(when (q9g)  (kyd)) ;; Support. 
(when (t9g)  (ryd)) ;; Support. 
(when (v9g)  (xyd)) ;; Support. 
(when (y9g)  (czd)) ;; Support. 
(when (b0g)  (kzd)) ;; Support. 
(when (g0g)  (rzd)) ;; Support. 
(when (j0g)  (xzd)) ;; Support. 
(when (l0g)  (c1d)) ;; Support. 
(when (q0g)  (k1d)) ;; Support. 
(when (t0g)  (r1d)) ;; Support. 
(when (v0g)  (x1d)) ;; Support. 
(when (y0g)  (c2d)) ;; Support. 
(when (bah)  (k2d)) ;; Support. 
(when (gah)  (r2d)) ;; Support. 
(when (jah)  (x2d)) ;; Support. 
(when (lah)  (c3d)) ;; Support. 
(when (qah)  (k3d)) ;; Support. 
(when (rah)  (q3d)) ;; Support. 
(when (uah)  (u3d)) ;; Support. 
(when (xah)  (z3d)) ;; Support. 
(when (zah)  (h4d)) ;; Support. 
(when (cbh)  (m4d)) ;; Support. 
(when (hbh)  (u4d)) ;; Support. 
(when (kbh)  (z4d)) ;; Support. 
(when (mbh)  (h5d)) ;; Support. 
(when (rbh)  (m5d)) ;; Support. 
(when (ubh)  (u5d)) ;; Support. 
(when (xbh)  (z5d)) ;; Support. 
(when (zbh)  (h6d)) ;; Support. 
(when (cch)  (m6d)) ;; Support. 
(when (hch)  (u6d)) ;; Support. 
(when (kch)  (z6d)) ;; Support. 
(when (mch)  (h7d)) ;; Support. 
(when (rch)  (m7d)) ;; Support. 
(when (uch)  (u7d)) ;; Support. 
(when (xch)  (z7d)) ;; Support. 
(when (zch)  (h8d)) ;; Support. 
(when (cdh)  (m8d)) ;; Support. 
(when (hdh)  (u8d)) ;; Support. 
(when (kdh)  (z8d)) ;; Support. 
(when (mdh)  (h9d)) ;; Support. 
(when (rdh)  (m9d)) ;; Support. 
(when (udh)  (u9d)) ;; Support. 
(when (xdh)  (z9d)) ;; Support. 
(when (zdh)  (h0d)) ;; Support. 
(when (ceh)  (m0d)) ;; Support. 
(when (heh)  (u0d)) ;; Support. 
(when (keh)  (z0d)) ;; Support. 
(when (meh)  (hae)) ;; Support. 
(when (reh)  (mae)) ;; Support. 
(when (ueh)  (uae)) ;; Support. 
(when (xeh)  (zae)) ;; Support. 
(when (zeh)  (hbe)) ;; Support. 
(when (cfh)  (mbe)) ;; Support. 
(when (hfh)  (ube)) ;; Support. 
(when (kfh)  (zbe)) ;; Support. 
(when (mfh)  (hce)) ;; Support. 
(when (rfh)  (mce)) ;; Support. 
(when (ufh)  (uce)) ;; Support. 
(when (xfh)  (zce)) ;; Support. 
(when (hgh)  (ude)) ;; Support. 
(when (kgh)  (zde)) ;; Support. 
(when (mgh)  (hee)) ;; Support. 
(when (rgh)  (mee)) ;; Support. 
(when (ugh)  (uee)) ;; Support. 
(when (xgh)  (zee)) ;; Support. 
(when (zgh)  (hfe)) ;; Support. 
(when (chh)  (mfe)) ;; Support. 
(when (hhh)  (ufe)) ;; Support. 
(when (khh)  (zfe)) ;; Support. 
(when (mhh)  (hge)) ;; Support. 
(when (rhh)  (mge)) ;; Support. 
(when (uhh)  (uge)) ;; Support. 
(when (xhh)  (zge)) ;; Support. 
(when (zhh)  (hhe)) ;; Support. 
(when (hih)  (uhe)) ;; Support. 
(when (mih)  (hie)) ;; Support. 
(when (uih) (and (uie) (not(tie)))) ;; Support.  Cancellation. 
(when (xih) (and (zie) (not(yie)))) ;; Support.  Cancellation. 
(when (zih) (and (hje) (not(gje)))) ;; Support.  Cancellation. 
(when (cjh) (and (mje) (not(lje)))) ;; Support.  Cancellation. 
(when (hjh) (and (uje) (not(tje)))) ;; Support.  Cancellation. 
(when (kjh) (and (zje) (not(yje)))) ;; Support.  Cancellation. 
(when (mjh) (and (hke) (not(gke)))) ;; Support.  Cancellation. 
(when (rjh) (and (mke) (not(lke)))) ;; Support.  Cancellation. 
(when (ujh) (and (uke) (not(tke)))) ;; Support.  Cancellation. 
(when (xjh) (and (zke) (not(yke)))) ;; Support.  Cancellation. 
(when (zjh) (and (hle) (not(gle)))) ;; Support.  Cancellation. 
(when (ckh) (and (mle) (not(lle)))) ;; Support.  Cancellation. 
(when (hkh) (and (ule) (not(tle)))) ;; Support.  Cancellation. 
(when (kkh) (and (zle) (not(yle)))) ;; Support.  Cancellation. 
(when (mkh) (and (hme) (not(gme)))) ;; Support.  Cancellation. 
(when (rkh) (and (mme) (not(lme)))) ;; Support.  Cancellation. 
(when (ukh) (and (ume) (not(tme)))) ;; Support.  Cancellation. 
(when (xkh) (and (zme) (not(yme)))) ;; Support.  Cancellation. 
(when (zkh) (and (hne) (not(gne)))) ;; Support.  Cancellation. 
(when (clh) (and (mne) (not(lne)))) ;; Support.  Cancellation. 
(when (ulh) (and (uoe) (not(toe)))) ;; Support.  Cancellation. 
(when (xlh) (and (zoe) (not(yoe)))) ;; Support.  Cancellation. 
(when (zlh) (and (hpe) (not(gpe)))) ;; Support.  Cancellation. 
(when (cmh) (and (mpe) (not(lpe)))) ;; Support.  Cancellation. 
(when (hmh) (and (upe) (not(tpe)))) ;; Support.  Cancellation. 
(when (kmh) (and (zpe) (not(ype)))) ;; Support.  Cancellation. 
(when (mmh) (and (hqe) (not(gqe)))) ;; Support.  Cancellation. 
(when (rmh) (and (mqe) (not(lqe)))) ;; Support.  Cancellation. 
(when (umh) (and (uqe) (not(tqe)))) ;; Support.  Cancellation. 
(when (xmh) (and (zqe) (not(yqe)))) ;; Support.  Cancellation. 
(when (zmh) (and (hse) (not(gse)))) ;; Support.  Cancellation. 
(when (cnh) (and (mse) (not(lse)))) ;; Support.  Cancellation. 
(when (hnh) (and (use) (not(tse)))) ;; Support.  Cancellation. 
(when (knh) (and (zse) (not(yse)))) ;; Support.  Cancellation. 
(when (tnh) (and (rre) (not(qre)))) ;; Support.  Cancellation. 
(when (vnh) (and (xre) (not(vre)))) ;; Support.  Cancellation. 
(when (ynh) (and (cte) (not(bte)))) ;; Support.  Cancellation. 
(when (boh) (and (kte) (not(jte)))) ;; Support.  Cancellation. 
(when (goh) (and (rte) (not(qte)))) ;; Support.  Cancellation. 
(when (qoh) (and (kue) (not(jue)))) ;; Support.  Cancellation. 
(when (toh) (and (rue) (not(que)))) ;; Support.  Cancellation. 
(when (voh) (and (xue) (not(vue)))) ;; Support.  Cancellation. 
(when (yoh) (and (cve) (not(bve)))) ;; Support.  Cancellation. 
(when (bph) (and (kve) (not(jve)))) ;; Support.  Cancellation. 
(when (gph) (and (rve) (not(qve)))) ;; Support.  Cancellation. 
(when (jph) (and (xve) (not(vve)))) ;; Support.  Cancellation. 
(when (lph) (and (cwe) (not(bwe)))) ;; Support.  Cancellation. 
(when (qph) (and (kwe) (not(jwe)))) ;; Support.  Cancellation. 
(when (tph) (and (rwe) (not(qwe)))) ;; Support.  Cancellation. 
(when (vph) (and (xwe) (not(vwe)))) ;; Support.  Cancellation. 
(when (yph) (and (cxe) (not(bxe)))) ;; Support.  Cancellation. 
(when (bqh) (and (kxe) (not(jxe)))) ;; Support.  Cancellation. 
(when (gqh) (and (rxe) (not(qxe)))) ;; Support.  Cancellation. 
(when (jqh) (and (xxe) (not(vxe)))) ;; Support.  Cancellation. 
(when (lqh) (and (cye) (not(bye)))) ;; Support.  Cancellation. 
(when (qqh) (and (kye) (not(jye)))) ;; Support.  Cancellation. 
(when (tqh)  (rye)) ;; Support. 
(when (vqh)  (xye)) ;; Support. 
(when (bsh)  (kze)) ;; Support. 
(when (gsh)  (rze)) ;; Support. 
(when (jsh)  (xze)) ;; Support. 
(when (lsh)  (c1e)) ;; Support. 
(when (tsh)  (r1e)) ;; Support. 
(when (vsh)  (x1e)) ;; Support. 
(when (grh)  (r2e)) ;; Support. 
(when (jrh)  (x2e)) ;; Support. 
(when (lrh)  (c3e)) ;; Support. 
(when (qrh)  (k3e)) ;; Support. 
(when (trh)  (r3e)) ;; Support. 
(when (vrh)  (x3e)) ;; Support. 
(when (yrh)  (c4e)) ;; Support. 
(when (bth)  (k4e)) ;; Support. 
(when (gth)  (r4e)) ;; Support. 
(when (jth)  (x4e)) ;; Support. 
(when (lth)  (c5e)) ;; Support. 
(when (qth)  (k5e)) ;; Support. 
(when (tth)  (r5e)) ;; Support. 
(when (vth)  (x5e)) ;; Support. 
(when (yth)  (c6e)) ;; Support. 
(when (buh)  (k6e)) ;; Support. 
(when (guh)  (r6e)) ;; Support. 
(when (juh)  (x6e)) ;; Support. 
(when (luh)  (c7e)) ;; Support. 
))
(:action CMPSWAP_L1_L4
:parameters ()
:precondition (and (q7e))

:effect (and  (zhe) (qsg) (not(t3f))
(when (qyg)  (k7e)) ;; Support. 
(when (qed) (and (r3f) (not(reg)))) ;; Support.  Cancellation. 
(when (ved) (and (u3f) (not(v3f)))) ;; Support.  Cancellation. 
(when (bfd) (and (x3f) (not(y3f)))) ;; Support.  Cancellation. 
(when (jfd) (and (z3f) (not(b4f)))) ;; Support.  Cancellation. 
(when (qfd) (and (c4f) (not(g4f)))) ;; Support.  Cancellation. 
(when (vfd) (and (h4f) (not(j4f)))) ;; Support.  Cancellation. 
(when (bgd) (and (k4f) (not(l4f)))) ;; Support.  Cancellation. 
(when (jgd) (and (m4f) (not(q4f)))) ;; Support.  Cancellation. 
(when (qgd) (and (r4f) (not(t4f)))) ;; Support.  Cancellation. 
(when (vgd) (and (u4f) (not(v4f)))) ;; Support.  Cancellation. 
(when (bhd) (and (x4f) (not(y4f)))) ;; Support.  Cancellation. 
(when (jhd) (and (z4f) (not(b5f)))) ;; Support.  Cancellation. 
(when (qhd) (and (c5f) (not(g5f)))) ;; Support.  Cancellation. 
(when (vhd) (and (h5f) (not(j5f)))) ;; Support.  Cancellation. 
(when (bid) (and (k5f) (not(l5f)))) ;; Support.  Cancellation. 
(when (jid) (and (m5f) (not(q5f)))) ;; Support.  Cancellation. 
(when (qid) (and (r5f) (not(t5f)))) ;; Support.  Cancellation. 
(when (vid) (and (u5f) (not(v5f)))) ;; Support.  Cancellation. 
(when (bjd) (and (x5f) (not(y5f)))) ;; Support.  Cancellation. 
(when (jjd) (and (z5f) (not(b6f)))) ;; Support.  Cancellation. 
(when (qjd) (and (c6f) (not(g6f)))) ;; Support.  Cancellation. 
(when (vjd) (and (h6f) (not(j6f)))) ;; Support.  Cancellation. 
(when (bkd) (and (k6f) (not(l6f)))) ;; Support.  Cancellation. 
(when (jkd) (and (m6f) (not(q6f)))) ;; Support.  Cancellation. 
(when (qkd) (and (r6f) (not(t6f)))) ;; Support.  Cancellation. 
(when (vkd) (and (u6f) (not(v6f)))) ;; Support.  Cancellation. 
(when (bld) (and (x6f) (not(y6f)))) ;; Support.  Cancellation. 
(when (jld) (and (z6f) (not(b7f)))) ;; Support.  Cancellation. 
(when (qld) (and (c7f) (not(g7f)))) ;; Support.  Cancellation. 
(when (vld) (and (h7f) (not(j7f)))) ;; Support.  Cancellation. 
(when (bmd) (and (k7f) (not(l7f)))) ;; Support.  Cancellation. 
(when (jmd) (and (m7f) (not(q7f)))) ;; Support.  Cancellation. 
(when (qmd) (and (r7f) (not(t7f)))) ;; Support.  Cancellation. 
(when (vmd) (and (u7f) (not(v7f)))) ;; Support.  Cancellation. 
(when (bnd) (and (x7f) (not(y7f)))) ;; Support.  Cancellation. 
(when (jnd) (and (z7f) (not(b8f)))) ;; Support.  Cancellation. 
(when (qnd) (and (c8f) (not(g8f)))) ;; Support.  Cancellation. 
(when (vnd) (and (h8f) (not(j8f)))) ;; Support.  Cancellation. 
(when (bod) (and (k8f) (not(l8f)))) ;; Support.  Cancellation. 
(when (jod) (and (m8f) (not(q8f)))) ;; Support.  Cancellation. 
(when (qod) (and (r8f) (not(t8f)))) ;; Support.  Cancellation. 
(when (vod) (and (u8f) (not(v8f)))) ;; Support.  Cancellation. 
(when (bpd) (and (x8f) (not(y8f)))) ;; Support.  Cancellation. 
(when (jpd) (and (z8f) (not(b9f)))) ;; Support.  Cancellation. 
(when (qpd) (and (c9f) (not(g9f)))) ;; Support.  Cancellation. 
(when (vpd) (and (h9f) (not(j9f)))) ;; Support.  Cancellation. 
(when (bqd) (and (k9f) (not(l9f)))) ;; Support.  Cancellation. 
(when (jqd) (and (m9f) (not(q9f)))) ;; Support.  Cancellation. 
(when (qqd) (and (r9f) (not(t9f)))) ;; Support.  Cancellation. 
(when (vqd) (and (u9f) (not(v9f)))) ;; Support.  Cancellation. 
(when (bsd) (and (x9f) (not(y9f)))) ;; Support.  Cancellation. 
(when (jsd) (and (z9f) (not(b0f)))) ;; Support.  Cancellation. 
(when (qsd) (and (c0f) (not(g0f)))) ;; Support.  Cancellation. 
(when (vsd) (and (h0f) (not(j0f)))) ;; Support.  Cancellation. 
(when (brd) (and (k0f) (not(l0f)))) ;; Support.  Cancellation. 
(when (jrd) (and (m0f) (not(q0f)))) ;; Support.  Cancellation. 
(when (qrd) (and (r0f) (not(t0f)))) ;; Support.  Cancellation. 
(when (vrd) (and (u0f) (not(v0f)))) ;; Support.  Cancellation. 
(when (btd) (and (x0f) (not(y0f)))) ;; Support.  Cancellation. 
(when (jtd) (and (z0f) (not(bag)))) ;; Support.  Cancellation. 
(when (qtd) (and (cag) (not(gag)))) ;; Support.  Cancellation. 
(when (vtd) (and (hag) (not(jag)))) ;; Support.  Cancellation. 
(when (bud) (and (kag) (not(lag)))) ;; Support.  Cancellation. 
(when (jud) (and (mag) (not(qag)))) ;; Support.  Cancellation. 
(when (qud) (and (rag) (not(tag)))) ;; Support.  Cancellation. 
(when (tie) (and (tmg) (not(umg)))) ;; Support.  Cancellation. 
(when (yie) (and (vmg) (not(xmg)))) ;; Support.  Cancellation. 
(when (gje) (and (ymg) (not(zmg)))) ;; Support.  Cancellation. 
(when (lje) (and (bng) (not(cng)))) ;; Support.  Cancellation. 
(when (tje) (and (gng) (not(hng)))) ;; Support.  Cancellation. 
(when (yje) (and (jng) (not(kng)))) ;; Support.  Cancellation. 
(when (gke) (and (lng) (not(mng)))) ;; Support.  Cancellation. 
(when (lke) (and (qng) (not(rng)))) ;; Support.  Cancellation. 
(when (tke) (and (tng) (not(ung)))) ;; Support.  Cancellation. 
(when (yke) (and (vng) (not(xng)))) ;; Support.  Cancellation. 
(when (gle) (and (yng) (not(zng)))) ;; Support.  Cancellation. 
(when (lle) (and (bog) (not(cog)))) ;; Support.  Cancellation. 
(when (tle) (and (gog) (not(hog)))) ;; Support.  Cancellation. 
(when (yle) (and (jog) (not(kog)))) ;; Support.  Cancellation. 
(when (gme) (and (log) (not(mog)))) ;; Support.  Cancellation. 
(when (lme) (and (qog) (not(rog)))) ;; Support.  Cancellation. 
(when (tme) (and (tog) (not(uog)))) ;; Support.  Cancellation. 
(when (yme) (and (vog) (not(xog)))) ;; Support.  Cancellation. 
(when (gne) (and (yog) (not(zog)))) ;; Support.  Cancellation. 
(when (lne) (and (bpg) (not(cpg)))) ;; Support.  Cancellation. 
(when (tne)  (gpg)) ;; Support. 
(when (yne) (and (jpg) (not(kpg)))) ;; Support.  Cancellation. 
(when (goe)  (lpg)) ;; Support. 
(when (loe) (and (qpg) (not(rpg)))) ;; Support.  Cancellation. 
(when (toe) (and (tpg) (not(upg)))) ;; Support.  Cancellation. 
(when (yoe) (and (vpg) (not(xpg)))) ;; Support.  Cancellation. 
(when (gpe) (and (ypg) (not(zpg)))) ;; Support.  Cancellation. 
(when (lpe) (and (bqg) (not(cqg)))) ;; Support.  Cancellation. 
(when (tpe) (and (gqg) (not(hqg)))) ;; Support.  Cancellation. 
(when (ype) (and (jqg) (not(kqg)))) ;; Support.  Cancellation. 
(when (gqe) (and (lqg) (not(mqg)))) ;; Support.  Cancellation. 
(when (lqe) (and (qqg) (not(rqg)))) ;; Support.  Cancellation. 
(when (tqe) (and (tqg) (not(uqg)))) ;; Support.  Cancellation. 
(when (yqe) (and (vqg) (not(xqg)))) ;; Support.  Cancellation. 
(when (gse) (and (yqg) (not(zqg)))) ;; Support.  Cancellation. 
(when (lse) (and (bsg) (not(csg)))) ;; Support.  Cancellation. 
(when (tse) (and (gsg) (not(hsg)))) ;; Support.  Cancellation. 
(when (yse) (and (jsg) (not(ksg)))) ;; Support.  Cancellation. 
(when (gre) (and (lsg) (not(msg)))) ;; Support.  Cancellation. 
(when (qre) (and (rsg) (not(tsg)))) ;; Support.  Cancellation. 
(when (vre) (and (usg) (not(vsg)))) ;; Support.  Cancellation. 
(when (bte) (and (xsg) (not(ysg)))) ;; Support.  Cancellation. 
(when (jte) (and (zsg) (not(brg)))) ;; Support.  Cancellation. 
(when (qte) (and (crg) (not(grg)))) ;; Support.  Cancellation. 
(when (vte) (and (hrg) (not(jrg)))) ;; Support.  Cancellation. 
(when (bue)  (krg)) ;; Support. 
(when (jue) (and (mrg) (not(qrg)))) ;; Support.  Cancellation. 
(when (que) (and (rrg) (not(trg)))) ;; Support.  Cancellation. 
(when (vue) (and (urg) (not(vrg)))) ;; Support.  Cancellation. 
(when (bve) (and (xrg) (not(yrg)))) ;; Support.  Cancellation. 
(when (jve) (and (zrg) (not(btg)))) ;; Support.  Cancellation. 
(when (qve) (and (ctg) (not(gtg)))) ;; Support.  Cancellation. 
(when (vve) (and (htg) (not(jtg)))) ;; Support.  Cancellation. 
(when (bwe) (and (ktg) (not(ltg)))) ;; Support.  Cancellation. 
(when (jwe) (and (mtg) (not(qtg)))) ;; Support.  Cancellation. 
(when (qwe) (and (rtg) (not(ttg)))) ;; Support.  Cancellation. 
(when (vwe) (and (utg) (not(vtg)))) ;; Support.  Cancellation. 
(when (bxe) (and (xtg) (not(ytg)))) ;; Support.  Cancellation. 
(when (jxe) (and (ztg) (not(bug)))) ;; Support.  Cancellation. 
(when (qxe) (and (cug) (not(gug)))) ;; Support.  Cancellation. 
(when (vxe) (and (hug) (not(jug)))) ;; Support.  Cancellation. 
(when (bye) (and (kug) (not(lug)))) ;; Support.  Cancellation. 
(when (jye) (and (mug) (not(qug)))) ;; Support.  Cancellation. 
(when (t3f) (and (red) (not(lre)))) ;; Support.  Cancellation. 
(when (not(r3f))  (not(qed))) ;; Cancellation. 
(when (v3f) (and (xed) (not(ved)))) ;; Support.  Cancellation. 
(when (y3f) (and (cfd) (not(bfd)))) ;; Support.  Cancellation. 
(when (b4f) (and (kfd) (not(jfd)))) ;; Support.  Cancellation. 
(when (g4f) (and (rfd) (not(qfd)))) ;; Support.  Cancellation. 
(when (j4f) (and (xfd) (not(vfd)))) ;; Support.  Cancellation. 
(when (l4f) (and (cgd) (not(bgd)))) ;; Support.  Cancellation. 
(when (q4f) (and (kgd) (not(jgd)))) ;; Support.  Cancellation. 
(when (t4f) (and (rgd) (not(qgd)))) ;; Support.  Cancellation. 
(when (v4f) (and (xgd) (not(vgd)))) ;; Support.  Cancellation. 
(when (y4f) (and (chd) (not(bhd)))) ;; Support.  Cancellation. 
(when (b5f) (and (khd) (not(jhd)))) ;; Support.  Cancellation. 
(when (g5f) (and (rhd) (not(qhd)))) ;; Support.  Cancellation. 
(when (j5f) (and (xhd) (not(vhd)))) ;; Support.  Cancellation. 
(when (l5f) (and (cid) (not(bid)))) ;; Support.  Cancellation. 
(when (q5f) (and (kid) (not(jid)))) ;; Support.  Cancellation. 
(when (t5f) (and (rid) (not(qid)))) ;; Support.  Cancellation. 
(when (v5f) (and (xid) (not(vid)))) ;; Support.  Cancellation. 
(when (y5f) (and (cjd) (not(bjd)))) ;; Support.  Cancellation. 
(when (b6f) (and (kjd) (not(jjd)))) ;; Support.  Cancellation. 
(when (g6f) (and (rjd) (not(qjd)))) ;; Support.  Cancellation. 
(when (j6f) (and (xjd) (not(vjd)))) ;; Support.  Cancellation. 
(when (l6f) (and (ckd) (not(bkd)))) ;; Support.  Cancellation. 
(when (q6f) (and (kkd) (not(jkd)))) ;; Support.  Cancellation. 
(when (t6f) (and (rkd) (not(qkd)))) ;; Support.  Cancellation. 
(when (v6f) (and (xkd) (not(vkd)))) ;; Support.  Cancellation. 
(when (y6f) (and (cld) (not(bld)))) ;; Support.  Cancellation. 
(when (b7f) (and (kld) (not(jld)))) ;; Support.  Cancellation. 
(when (g7f) (and (rld) (not(qld)))) ;; Support.  Cancellation. 
(when (j7f) (and (xld) (not(vld)))) ;; Support.  Cancellation. 
(when (l7f) (and (cmd) (not(bmd)))) ;; Support.  Cancellation. 
(when (q7f) (and (kmd) (not(jmd)))) ;; Support.  Cancellation. 
(when (t7f) (and (rmd) (not(qmd)))) ;; Support.  Cancellation. 
(when (v7f) (and (xmd) (not(vmd)))) ;; Support.  Cancellation. 
(when (y7f) (and (cnd) (not(bnd)))) ;; Support.  Cancellation. 
(when (b8f) (and (knd) (not(jnd)))) ;; Support.  Cancellation. 
(when (g8f) (and (rnd) (not(qnd)))) ;; Support.  Cancellation. 
(when (j8f) (and (xnd) (not(vnd)))) ;; Support.  Cancellation. 
(when (l8f) (and (cod) (not(bod)))) ;; Support.  Cancellation. 
(when (q8f) (and (kod) (not(jod)))) ;; Support.  Cancellation. 
(when (t8f) (and (rod) (not(qod)))) ;; Support.  Cancellation. 
(when (v8f) (and (xod) (not(vod)))) ;; Support.  Cancellation. 
(when (y8f) (and (cpd) (not(bpd)))) ;; Support.  Cancellation. 
(when (b9f) (and (kpd) (not(jpd)))) ;; Support.  Cancellation. 
(when (g9f) (and (rpd) (not(qpd)))) ;; Support.  Cancellation. 
(when (j9f) (and (xpd) (not(vpd)))) ;; Support.  Cancellation. 
(when (l9f) (and (cqd) (not(bqd)))) ;; Support.  Cancellation. 
(when (q9f) (and (kqd) (not(jqd)))) ;; Support.  Cancellation. 
(when (t9f) (and (rqd) (not(qqd)))) ;; Support.  Cancellation. 
(when (v9f) (and (xqd) (not(vqd)))) ;; Support.  Cancellation. 
(when (y9f) (and (csd) (not(bsd)))) ;; Support.  Cancellation. 
(when (b0f) (and (ksd) (not(jsd)))) ;; Support.  Cancellation. 
(when (g0f) (and (rsd) (not(qsd)))) ;; Support.  Cancellation. 
(when (j0f) (and (xsd) (not(vsd)))) ;; Support.  Cancellation. 
(when (l0f) (and (crd) (not(brd)))) ;; Support.  Cancellation. 
(when (q0f) (and (krd) (not(jrd)))) ;; Support.  Cancellation. 
(when (t0f) (and (rrd) (not(qrd)))) ;; Support.  Cancellation. 
(when (v0f) (and (xrd) (not(vrd)))) ;; Support.  Cancellation. 
(when (y0f) (and (ctd) (not(btd)))) ;; Support.  Cancellation. 
(when (bag) (and (ktd) (not(jtd)))) ;; Support.  Cancellation. 
(when (gag) (and (rtd) (not(qtd)))) ;; Support.  Cancellation. 
(when (jag) (and (xtd) (not(vtd)))) ;; Support.  Cancellation. 
(when (lag) (and (cud) (not(bud)))) ;; Support.  Cancellation. 
(when (qag) (and (kud) (not(jud)))) ;; Support.  Cancellation. 
(when (tag) (and (rud) (not(qud)))) ;; Support.  Cancellation. 
(when (vag)  (xud)) ;; Support. 
(when (yag)  (cvd)) ;; Support. 
(when (bbg)  (kvd)) ;; Support. 
(when (gbg)  (rvd)) ;; Support. 
(when (jbg)  (xvd)) ;; Support. 
(when (lbg)  (cwd)) ;; Support. 
(when (qbg)  (kwd)) ;; Support. 
(when (tbg)  (rwd)) ;; Support. 
(when (vbg)  (xwd)) ;; Support. 
(when (ybg)  (cxd)) ;; Support. 
(when (bcg)  (kxd)) ;; Support. 
(when (gcg)  (rxd)) ;; Support. 
(when (jcg)  (xxd)) ;; Support. 
(when (lcg)  (cyd)) ;; Support. 
(when (qcg)  (kyd)) ;; Support. 
(when (tcg)  (ryd)) ;; Support. 
(when (vcg)  (xyd)) ;; Support. 
(when (ycg)  (czd)) ;; Support. 
(when (bdg)  (kzd)) ;; Support. 
(when (gdg)  (rzd)) ;; Support. 
(when (jdg)  (xzd)) ;; Support. 
(when (ldg)  (c1d)) ;; Support. 
(when (qdg)  (k1d)) ;; Support. 
(when (tdg)  (r1d)) ;; Support. 
(when (vdg)  (x1d)) ;; Support. 
(when (ydg)  (c2d)) ;; Support. 
(when (beg)  (k2d)) ;; Support. 
(when (geg)  (r2d)) ;; Support. 
(when (jeg)  (x2d)) ;; Support. 
(when (leg)  (c3d)) ;; Support. 
(when (qeg)  (k3d)) ;; Support. 
(when (reg)  (q3d)) ;; Support. 
(when (ueg)  (u3d)) ;; Support. 
(when (xeg)  (z3d)) ;; Support. 
(when (zeg)  (h4d)) ;; Support. 
(when (cfg)  (m4d)) ;; Support. 
(when (hfg)  (u4d)) ;; Support. 
(when (kfg)  (z4d)) ;; Support. 
(when (mfg)  (h5d)) ;; Support. 
(when (rfg)  (m5d)) ;; Support. 
(when (ufg)  (u5d)) ;; Support. 
(when (xfg)  (z5d)) ;; Support. 
(when (zfg)  (h6d)) ;; Support. 
(when (cgg)  (m6d)) ;; Support. 
(when (hgg)  (u6d)) ;; Support. 
(when (kgg)  (z6d)) ;; Support. 
(when (mgg)  (h7d)) ;; Support. 
(when (rgg)  (m7d)) ;; Support. 
(when (ugg)  (u7d)) ;; Support. 
(when (xgg)  (z7d)) ;; Support. 
(when (zgg)  (h8d)) ;; Support. 
(when (chg)  (m8d)) ;; Support. 
(when (hhg)  (u8d)) ;; Support. 
(when (khg)  (z8d)) ;; Support. 
(when (mhg)  (h9d)) ;; Support. 
(when (rhg)  (m9d)) ;; Support. 
(when (uhg)  (u9d)) ;; Support. 
(when (xhg)  (z9d)) ;; Support. 
(when (zhg)  (h0d)) ;; Support. 
(when (cig)  (m0d)) ;; Support. 
(when (hig)  (u0d)) ;; Support. 
(when (kig)  (z0d)) ;; Support. 
(when (mig)  (hae)) ;; Support. 
(when (rig)  (mae)) ;; Support. 
(when (uig)  (uae)) ;; Support. 
(when (xig)  (zae)) ;; Support. 
(when (zig)  (hbe)) ;; Support. 
(when (cjg)  (mbe)) ;; Support. 
(when (hjg)  (ube)) ;; Support. 
(when (kjg)  (zbe)) ;; Support. 
(when (mjg)  (hce)) ;; Support. 
(when (rjg)  (mce)) ;; Support. 
(when (ujg)  (uce)) ;; Support. 
(when (xjg)  (zce)) ;; Support. 
(when (ckg)  (mde)) ;; Support. 
(when (hkg)  (ude)) ;; Support. 
(when (kkg)  (zde)) ;; Support. 
(when (mkg)  (hee)) ;; Support. 
(when (rkg)  (mee)) ;; Support. 
(when (ukg)  (uee)) ;; Support. 
(when (xkg)  (zee)) ;; Support. 
(when (zkg)  (hfe)) ;; Support. 
(when (clg)  (mfe)) ;; Support. 
(when (hlg)  (ufe)) ;; Support. 
(when (klg)  (zfe)) ;; Support. 
(when (mlg)  (hge)) ;; Support. 
(when (rlg)  (mge)) ;; Support. 
(when (ulg)  (uge)) ;; Support. 
(when (xlg)  (zge)) ;; Support. 
(when (zlg)  (hhe)) ;; Support. 
(when (cmg)  (mhe)) ;; Support. 
(when (hmg)  (uhe)) ;; Support. 
(when (mmg)  (hie)) ;; Support. 
(when (umg) (and (uie) (not(tie)))) ;; Support.  Cancellation. 
(when (xmg) (and (zie) (not(yie)))) ;; Support.  Cancellation. 
(when (zmg) (and (hje) (not(gje)))) ;; Support.  Cancellation. 
(when (cng) (and (mje) (not(lje)))) ;; Support.  Cancellation. 
(when (hng) (and (uje) (not(tje)))) ;; Support.  Cancellation. 
(when (kng) (and (zje) (not(yje)))) ;; Support.  Cancellation. 
(when (mng) (and (hke) (not(gke)))) ;; Support.  Cancellation. 
(when (rng) (and (mke) (not(lke)))) ;; Support.  Cancellation. 
(when (ung) (and (uke) (not(tke)))) ;; Support.  Cancellation. 
(when (xng) (and (zke) (not(yke)))) ;; Support.  Cancellation. 
(when (zng) (and (hle) (not(gle)))) ;; Support.  Cancellation. 
(when (cog) (and (mle) (not(lle)))) ;; Support.  Cancellation. 
(when (hog) (and (ule) (not(tle)))) ;; Support.  Cancellation. 
(when (kog) (and (zle) (not(yle)))) ;; Support.  Cancellation. 
(when (mog) (and (hme) (not(gme)))) ;; Support.  Cancellation. 
(when (rog) (and (mme) (not(lme)))) ;; Support.  Cancellation. 
(when (uog) (and (ume) (not(tme)))) ;; Support.  Cancellation. 
(when (xog) (and (zme) (not(yme)))) ;; Support.  Cancellation. 
(when (zog) (and (hne) (not(gne)))) ;; Support.  Cancellation. 
(when (cpg) (and (mne) (not(lne)))) ;; Support.  Cancellation. 
(when (kpg) (and (zne) (not(yne)))) ;; Support.  Cancellation. 
(when (rpg) (and (moe) (not(loe)))) ;; Support.  Cancellation. 
(when (upg) (and (uoe) (not(toe)))) ;; Support.  Cancellation. 
(when (xpg) (and (zoe) (not(yoe)))) ;; Support.  Cancellation. 
(when (zpg) (and (hpe) (not(gpe)))) ;; Support.  Cancellation. 
(when (cqg) (and (mpe) (not(lpe)))) ;; Support.  Cancellation. 
(when (hqg) (and (upe) (not(tpe)))) ;; Support.  Cancellation. 
(when (kqg) (and (zpe) (not(ype)))) ;; Support.  Cancellation. 
(when (mqg) (and (hqe) (not(gqe)))) ;; Support.  Cancellation. 
(when (rqg) (and (mqe) (not(lqe)))) ;; Support.  Cancellation. 
(when (uqg) (and (uqe) (not(tqe)))) ;; Support.  Cancellation. 
(when (xqg) (and (zqe) (not(yqe)))) ;; Support.  Cancellation. 
(when (zqg) (and (hse) (not(gse)))) ;; Support.  Cancellation. 
(when (csg) (and (mse) (not(lse)))) ;; Support.  Cancellation. 
(when (hsg) (and (use) (not(tse)))) ;; Support.  Cancellation. 
(when (ksg) (and (zse) (not(yse)))) ;; Support.  Cancellation. 
(when (msg) (and (hre) (not(gre)))) ;; Support.  Cancellation. 
(when (tsg) (and (rre) (not(qre)))) ;; Support.  Cancellation. 
(when (vsg) (and (xre) (not(vre)))) ;; Support.  Cancellation. 
(when (ysg) (and (cte) (not(bte)))) ;; Support.  Cancellation. 
(when (brg) (and (kte) (not(jte)))) ;; Support.  Cancellation. 
(when (grg) (and (rte) (not(qte)))) ;; Support.  Cancellation. 
(when (jrg) (and (xte) (not(vte)))) ;; Support.  Cancellation. 
(when (qrg) (and (kue) (not(jue)))) ;; Support.  Cancellation. 
(when (trg) (and (rue) (not(que)))) ;; Support.  Cancellation. 
(when (vrg) (and (xue) (not(vue)))) ;; Support.  Cancellation. 
(when (yrg) (and (cve) (not(bve)))) ;; Support.  Cancellation. 
(when (btg) (and (kve) (not(jve)))) ;; Support.  Cancellation. 
(when (gtg) (and (rve) (not(qve)))) ;; Support.  Cancellation. 
(when (jtg) (and (xve) (not(vve)))) ;; Support.  Cancellation. 
(when (ltg) (and (cwe) (not(bwe)))) ;; Support.  Cancellation. 
(when (qtg) (and (kwe) (not(jwe)))) ;; Support.  Cancellation. 
(when (ttg) (and (rwe) (not(qwe)))) ;; Support.  Cancellation. 
(when (vtg) (and (xwe) (not(vwe)))) ;; Support.  Cancellation. 
(when (ytg) (and (cxe) (not(bxe)))) ;; Support.  Cancellation. 
(when (bug) (and (kxe) (not(jxe)))) ;; Support.  Cancellation. 
(when (gug) (and (rxe) (not(qxe)))) ;; Support.  Cancellation. 
(when (jug) (and (xxe) (not(vxe)))) ;; Support.  Cancellation. 
(when (lug) (and (cye) (not(bye)))) ;; Support.  Cancellation. 
(when (qug) (and (kye) (not(jye)))) ;; Support.  Cancellation. 
(when (tug)  (rye)) ;; Support. 
(when (vug)  (xye)) ;; Support. 
(when (yug)  (cze)) ;; Support. 
(when (bvg)  (kze)) ;; Support. 
(when (gvg)  (rze)) ;; Support. 
(when (jvg)  (xze)) ;; Support. 
(when (lvg)  (c1e)) ;; Support. 
(when (tvg)  (r1e)) ;; Support. 
(when (vvg)  (x1e)) ;; Support. 
(when (bwg)  (k2e)) ;; Support. 
(when (gwg)  (r2e)) ;; Support. 
(when (jwg)  (x2e)) ;; Support. 
(when (lwg)  (c3e)) ;; Support. 
(when (qwg)  (k3e)) ;; Support. 
(when (twg)  (r3e)) ;; Support. 
(when (vwg)  (x3e)) ;; Support. 
(when (ywg)  (c4e)) ;; Support. 
(when (bxg)  (k4e)) ;; Support. 
(when (gxg)  (r4e)) ;; Support. 
(when (jxg)  (x4e)) ;; Support. 
(when (lxg)  (c5e)) ;; Support. 
(when (qxg)  (k5e)) ;; Support. 
(when (txg)  (r5e)) ;; Support. 
(when (vxg)  (x5e)) ;; Support. 
(when (yxg)  (c6e)) ;; Support. 
(when (byg)  (k6e)) ;; Support. 
(when (gyg)  (r6e)) ;; Support. 
(when (jyg)  (x6e)) ;; Support. 
(when (lyg)  (c7e)) ;; Support. 
))
(:action CMPSWAP_L1_L3
:parameters ()
:precondition (and (q7e))

:effect (and  (qvf) (not(t7e)) (mie)
(when (q3f)  (k7e)) ;; Support. 
(when (qed) (and (r7e) (not(rif)))) ;; Support.  Cancellation. 
(when (ved) (and (u7e) (not(v7e)))) ;; Support.  Cancellation. 
(when (bfd) (and (x7e) (not(y7e)))) ;; Support.  Cancellation. 
(when (jfd) (and (z7e) (not(b8e)))) ;; Support.  Cancellation. 
(when (qfd) (and (c8e) (not(g8e)))) ;; Support.  Cancellation. 
(when (vfd) (and (h8e) (not(j8e)))) ;; Support.  Cancellation. 
(when (bgd) (and (k8e) (not(l8e)))) ;; Support.  Cancellation. 
(when (jgd) (and (m8e) (not(q8e)))) ;; Support.  Cancellation. 
(when (qgd) (and (r8e) (not(t8e)))) ;; Support.  Cancellation. 
(when (vgd) (and (u8e) (not(v8e)))) ;; Support.  Cancellation. 
(when (bhd) (and (x8e) (not(y8e)))) ;; Support.  Cancellation. 
(when (jhd) (and (z8e) (not(b9e)))) ;; Support.  Cancellation. 
(when (qhd) (and (c9e) (not(g9e)))) ;; Support.  Cancellation. 
(when (vhd) (and (h9e) (not(j9e)))) ;; Support.  Cancellation. 
(when (bid) (and (k9e) (not(l9e)))) ;; Support.  Cancellation. 
(when (jid) (and (m9e) (not(q9e)))) ;; Support.  Cancellation. 
(when (qid) (and (r9e) (not(t9e)))) ;; Support.  Cancellation. 
(when (vid) (and (u9e) (not(v9e)))) ;; Support.  Cancellation. 
(when (bjd) (and (x9e) (not(y9e)))) ;; Support.  Cancellation. 
(when (jjd) (and (z9e) (not(b0e)))) ;; Support.  Cancellation. 
(when (qjd) (and (c0e) (not(g0e)))) ;; Support.  Cancellation. 
(when (vjd) (and (h0e) (not(j0e)))) ;; Support.  Cancellation. 
(when (bkd) (and (k0e) (not(l0e)))) ;; Support.  Cancellation. 
(when (jkd) (and (m0e) (not(q0e)))) ;; Support.  Cancellation. 
(when (qkd) (and (r0e) (not(t0e)))) ;; Support.  Cancellation. 
(when (vkd) (and (u0e) (not(v0e)))) ;; Support.  Cancellation. 
(when (bld) (and (x0e) (not(y0e)))) ;; Support.  Cancellation. 
(when (jld) (and (z0e) (not(baf)))) ;; Support.  Cancellation. 
(when (qld) (and (caf) (not(gaf)))) ;; Support.  Cancellation. 
(when (vld) (and (haf) (not(jaf)))) ;; Support.  Cancellation. 
(when (bmd) (and (kaf) (not(laf)))) ;; Support.  Cancellation. 
(when (jmd) (and (maf) (not(qaf)))) ;; Support.  Cancellation. 
(when (qmd) (and (raf) (not(taf)))) ;; Support.  Cancellation. 
(when (vmd) (and (uaf) (not(vaf)))) ;; Support.  Cancellation. 
(when (bnd) (and (xaf) (not(yaf)))) ;; Support.  Cancellation. 
(when (jnd) (and (zaf) (not(bbf)))) ;; Support.  Cancellation. 
(when (qnd) (and (cbf) (not(gbf)))) ;; Support.  Cancellation. 
(when (vnd) (and (hbf) (not(jbf)))) ;; Support.  Cancellation. 
(when (bod) (and (kbf) (not(lbf)))) ;; Support.  Cancellation. 
(when (jod) (and (mbf) (not(qbf)))) ;; Support.  Cancellation. 
(when (qod) (and (rbf) (not(tbf)))) ;; Support.  Cancellation. 
(when (vod) (and (ubf) (not(vbf)))) ;; Support.  Cancellation. 
(when (bpd) (and (xbf) (not(ybf)))) ;; Support.  Cancellation. 
(when (jpd) (and (zbf) (not(bcf)))) ;; Support.  Cancellation. 
(when (qpd) (and (ccf) (not(gcf)))) ;; Support.  Cancellation. 
(when (vpd) (and (hcf) (not(jcf)))) ;; Support.  Cancellation. 
(when (bqd) (and (kcf) (not(lcf)))) ;; Support.  Cancellation. 
(when (jqd) (and (mcf) (not(qcf)))) ;; Support.  Cancellation. 
(when (qqd) (and (rcf) (not(tcf)))) ;; Support.  Cancellation. 
(when (vqd) (and (ucf) (not(vcf)))) ;; Support.  Cancellation. 
(when (bsd) (and (xcf) (not(ycf)))) ;; Support.  Cancellation. 
(when (jsd) (and (zcf) (not(bdf)))) ;; Support.  Cancellation. 
(when (qsd) (and (cdf) (not(gdf)))) ;; Support.  Cancellation. 
(when (vsd) (and (hdf) (not(jdf)))) ;; Support.  Cancellation. 
(when (brd) (and (kdf) (not(ldf)))) ;; Support.  Cancellation. 
(when (jrd) (and (mdf) (not(qdf)))) ;; Support.  Cancellation. 
(when (qrd) (and (rdf) (not(tdf)))) ;; Support.  Cancellation. 
(when (vrd) (and (udf) (not(vdf)))) ;; Support.  Cancellation. 
(when (btd) (and (xdf) (not(ydf)))) ;; Support.  Cancellation. 
(when (jtd) (and (zdf) (not(bef)))) ;; Support.  Cancellation. 
(when (qtd) (and (cef) (not(gef)))) ;; Support.  Cancellation. 
(when (vtd) (and (hef) (not(jef)))) ;; Support.  Cancellation. 
(when (bud) (and (kef) (not(lef)))) ;; Support.  Cancellation. 
(when (jud) (and (mef) (not(qef)))) ;; Support.  Cancellation. 
(when (qud) (and (ref) (not(tef)))) ;; Support.  Cancellation. 
(when (tie) (and (tqf) (not(uqf)))) ;; Support.  Cancellation. 
(when (yie) (and (vqf) (not(xqf)))) ;; Support.  Cancellation. 
(when (gje) (and (yqf) (not(zqf)))) ;; Support.  Cancellation. 
(when (lje) (and (bsf) (not(csf)))) ;; Support.  Cancellation. 
(when (tje) (and (gsf) (not(hsf)))) ;; Support.  Cancellation. 
(when (yje) (and (jsf) (not(ksf)))) ;; Support.  Cancellation. 
(when (gke) (and (lsf) (not(msf)))) ;; Support.  Cancellation. 
(when (lke) (and (qsf) (not(rsf)))) ;; Support.  Cancellation. 
(when (tke) (and (tsf) (not(usf)))) ;; Support.  Cancellation. 
(when (yke) (and (vsf) (not(xsf)))) ;; Support.  Cancellation. 
(when (gle) (and (ysf) (not(zsf)))) ;; Support.  Cancellation. 
(when (lle) (and (brf) (not(crf)))) ;; Support.  Cancellation. 
(when (tle) (and (grf) (not(hrf)))) ;; Support.  Cancellation. 
(when (yle) (and (jrf) (not(krf)))) ;; Support.  Cancellation. 
(when (gme) (and (lrf) (not(mrf)))) ;; Support.  Cancellation. 
(when (lme) (and (qrf) (not(rrf)))) ;; Support.  Cancellation. 
(when (tme) (and (trf) (not(urf)))) ;; Support.  Cancellation. 
(when (yme) (and (vrf) (not(xrf)))) ;; Support.  Cancellation. 
(when (gne) (and (yrf) (not(zrf)))) ;; Support.  Cancellation. 
(when (lne) (and (btf) (not(ctf)))) ;; Support.  Cancellation. 
(when (tne) (and (gtf) (not(htf)))) ;; Support.  Cancellation. 
(when (yne) (and (jtf) (not(ktf)))) ;; Support.  Cancellation. 
(when (goe) (and (ltf) (not(mtf)))) ;; Support.  Cancellation. 
(when (loe) (and (qtf) (not(rtf)))) ;; Support.  Cancellation. 
(when (toe) (and (ttf) (not(utf)))) ;; Support.  Cancellation. 
(when (yoe) (and (vtf) (not(xtf)))) ;; Support.  Cancellation. 
(when (gpe) (and (ytf) (not(ztf)))) ;; Support.  Cancellation. 
(when (lpe) (and (buf) (not(cuf)))) ;; Support.  Cancellation. 
(when (tpe) (and (guf) (not(huf)))) ;; Support.  Cancellation. 
(when (ype) (and (juf) (not(kuf)))) ;; Support.  Cancellation. 
(when (gqe) (and (luf) (not(muf)))) ;; Support.  Cancellation. 
(when (lqe) (and (quf) (not(ruf)))) ;; Support.  Cancellation. 
(when (tqe) (and (tuf) (not(uuf)))) ;; Support.  Cancellation. 
(when (yqe) (and (vuf) (not(xuf)))) ;; Support.  Cancellation. 
(when (gse) (and (yuf) (not(zuf)))) ;; Support.  Cancellation. 
(when (lse) (and (bvf) (not(cvf)))) ;; Support.  Cancellation. 
(when (tse) (and (gvf) (not(hvf)))) ;; Support.  Cancellation. 
(when (yse) (and (jvf) (not(kvf)))) ;; Support.  Cancellation. 
(when (gre) (and (lvf) (not(mvf)))) ;; Support.  Cancellation. 
(when (qre) (and (rvf) (not(tvf)))) ;; Support.  Cancellation. 
(when (vre) (and (uvf) (not(vvf)))) ;; Support.  Cancellation. 
(when (bte) (and (xvf) (not(yvf)))) ;; Support.  Cancellation. 
(when (jte) (and (zvf) (not(bwf)))) ;; Support.  Cancellation. 
(when (qte) (and (cwf) (not(gwf)))) ;; Support.  Cancellation. 
(when (vte) (and (hwf) (not(jwf)))) ;; Support.  Cancellation. 
(when (bue)  (kwf)) ;; Support. 
(when (jue) (and (mwf) (not(qwf)))) ;; Support.  Cancellation. 
(when (que) (and (rwf) (not(twf)))) ;; Support.  Cancellation. 
(when (vue) (and (uwf) (not(vwf)))) ;; Support.  Cancellation. 
(when (bve) (and (xwf) (not(ywf)))) ;; Support.  Cancellation. 
(when (jve) (and (zwf) (not(bxf)))) ;; Support.  Cancellation. 
(when (qve) (and (cxf) (not(gxf)))) ;; Support.  Cancellation. 
(when (vve) (and (hxf) (not(jxf)))) ;; Support.  Cancellation. 
(when (bwe) (and (kxf) (not(lxf)))) ;; Support.  Cancellation. 
(when (jwe) (and (mxf) (not(qxf)))) ;; Support.  Cancellation. 
(when (qwe) (and (rxf) (not(txf)))) ;; Support.  Cancellation. 
(when (vwe) (and (uxf) (not(vxf)))) ;; Support.  Cancellation. 
(when (bxe) (and (xxf) (not(yxf)))) ;; Support.  Cancellation. 
(when (jxe) (and (zxf) (not(byf)))) ;; Support.  Cancellation. 
(when (qxe) (and (cyf) (not(gyf)))) ;; Support.  Cancellation. 
(when (vxe) (and (hyf) (not(jyf)))) ;; Support.  Cancellation. 
(when (bye) (and (kyf) (not(lyf)))) ;; Support.  Cancellation. 
(when (jye) (and (myf) (not(qyf)))) ;; Support.  Cancellation. 
(when (t7e) (and (red) (not(lre)))) ;; Support.  Cancellation. 
(when (not(r7e))  (not(qed))) ;; Cancellation. 
(when (v7e) (and (xed) (not(ved)))) ;; Support.  Cancellation. 
(when (y7e) (and (cfd) (not(bfd)))) ;; Support.  Cancellation. 
(when (b8e) (and (kfd) (not(jfd)))) ;; Support.  Cancellation. 
(when (g8e) (and (rfd) (not(qfd)))) ;; Support.  Cancellation. 
(when (j8e) (and (xfd) (not(vfd)))) ;; Support.  Cancellation. 
(when (l8e) (and (cgd) (not(bgd)))) ;; Support.  Cancellation. 
(when (q8e) (and (kgd) (not(jgd)))) ;; Support.  Cancellation. 
(when (t8e) (and (rgd) (not(qgd)))) ;; Support.  Cancellation. 
(when (v8e) (and (xgd) (not(vgd)))) ;; Support.  Cancellation. 
(when (y8e) (and (chd) (not(bhd)))) ;; Support.  Cancellation. 
(when (b9e) (and (khd) (not(jhd)))) ;; Support.  Cancellation. 
(when (g9e) (and (rhd) (not(qhd)))) ;; Support.  Cancellation. 
(when (j9e) (and (xhd) (not(vhd)))) ;; Support.  Cancellation. 
(when (l9e) (and (cid) (not(bid)))) ;; Support.  Cancellation. 
(when (q9e) (and (kid) (not(jid)))) ;; Support.  Cancellation. 
(when (t9e) (and (rid) (not(qid)))) ;; Support.  Cancellation. 
(when (v9e) (and (xid) (not(vid)))) ;; Support.  Cancellation. 
(when (y9e) (and (cjd) (not(bjd)))) ;; Support.  Cancellation. 
(when (b0e) (and (kjd) (not(jjd)))) ;; Support.  Cancellation. 
(when (g0e) (and (rjd) (not(qjd)))) ;; Support.  Cancellation. 
(when (j0e) (and (xjd) (not(vjd)))) ;; Support.  Cancellation. 
(when (l0e) (and (ckd) (not(bkd)))) ;; Support.  Cancellation. 
(when (q0e) (and (kkd) (not(jkd)))) ;; Support.  Cancellation. 
(when (t0e) (and (rkd) (not(qkd)))) ;; Support.  Cancellation. 
(when (v0e) (and (xkd) (not(vkd)))) ;; Support.  Cancellation. 
(when (y0e) (and (cld) (not(bld)))) ;; Support.  Cancellation. 
(when (baf) (and (kld) (not(jld)))) ;; Support.  Cancellation. 
(when (gaf) (and (rld) (not(qld)))) ;; Support.  Cancellation. 
(when (jaf) (and (xld) (not(vld)))) ;; Support.  Cancellation. 
(when (laf) (and (cmd) (not(bmd)))) ;; Support.  Cancellation. 
(when (qaf) (and (kmd) (not(jmd)))) ;; Support.  Cancellation. 
(when (taf) (and (rmd) (not(qmd)))) ;; Support.  Cancellation. 
(when (vaf) (and (xmd) (not(vmd)))) ;; Support.  Cancellation. 
(when (yaf) (and (cnd) (not(bnd)))) ;; Support.  Cancellation. 
(when (bbf) (and (knd) (not(jnd)))) ;; Support.  Cancellation. 
(when (gbf) (and (rnd) (not(qnd)))) ;; Support.  Cancellation. 
(when (jbf) (and (xnd) (not(vnd)))) ;; Support.  Cancellation. 
(when (lbf) (and (cod) (not(bod)))) ;; Support.  Cancellation. 
(when (qbf) (and (kod) (not(jod)))) ;; Support.  Cancellation. 
(when (tbf) (and (rod) (not(qod)))) ;; Support.  Cancellation. 
(when (vbf) (and (xod) (not(vod)))) ;; Support.  Cancellation. 
(when (ybf) (and (cpd) (not(bpd)))) ;; Support.  Cancellation. 
(when (bcf) (and (kpd) (not(jpd)))) ;; Support.  Cancellation. 
(when (gcf) (and (rpd) (not(qpd)))) ;; Support.  Cancellation. 
(when (jcf) (and (xpd) (not(vpd)))) ;; Support.  Cancellation. 
(when (lcf) (and (cqd) (not(bqd)))) ;; Support.  Cancellation. 
(when (qcf) (and (kqd) (not(jqd)))) ;; Support.  Cancellation. 
(when (tcf) (and (rqd) (not(qqd)))) ;; Support.  Cancellation. 
(when (vcf) (and (xqd) (not(vqd)))) ;; Support.  Cancellation. 
(when (ycf) (and (csd) (not(bsd)))) ;; Support.  Cancellation. 
(when (bdf) (and (ksd) (not(jsd)))) ;; Support.  Cancellation. 
(when (gdf) (and (rsd) (not(qsd)))) ;; Support.  Cancellation. 
(when (jdf) (and (xsd) (not(vsd)))) ;; Support.  Cancellation. 
(when (ldf) (and (crd) (not(brd)))) ;; Support.  Cancellation. 
(when (qdf) (and (krd) (not(jrd)))) ;; Support.  Cancellation. 
(when (tdf) (and (rrd) (not(qrd)))) ;; Support.  Cancellation. 
(when (vdf) (and (xrd) (not(vrd)))) ;; Support.  Cancellation. 
(when (ydf) (and (ctd) (not(btd)))) ;; Support.  Cancellation. 
(when (bef) (and (ktd) (not(jtd)))) ;; Support.  Cancellation. 
(when (gef) (and (rtd) (not(qtd)))) ;; Support.  Cancellation. 
(when (jef) (and (xtd) (not(vtd)))) ;; Support.  Cancellation. 
(when (lef) (and (cud) (not(bud)))) ;; Support.  Cancellation. 
(when (qef) (and (kud) (not(jud)))) ;; Support.  Cancellation. 
(when (tef) (and (rud) (not(qud)))) ;; Support.  Cancellation. 
(when (vef)  (xud)) ;; Support. 
(when (yef)  (cvd)) ;; Support. 
(when (bff)  (kvd)) ;; Support. 
(when (gff)  (rvd)) ;; Support. 
(when (jff)  (xvd)) ;; Support. 
(when (lff)  (cwd)) ;; Support. 
(when (qff)  (kwd)) ;; Support. 
(when (tff)  (rwd)) ;; Support. 
(when (vff)  (xwd)) ;; Support. 
(when (yff)  (cxd)) ;; Support. 
(when (bgf)  (kxd)) ;; Support. 
(when (ggf)  (rxd)) ;; Support. 
(when (jgf)  (xxd)) ;; Support. 
(when (lgf)  (cyd)) ;; Support. 
(when (qgf)  (kyd)) ;; Support. 
(when (tgf)  (ryd)) ;; Support. 
(when (vgf)  (xyd)) ;; Support. 
(when (ygf)  (czd)) ;; Support. 
(when (bhf)  (kzd)) ;; Support. 
(when (ghf)  (rzd)) ;; Support. 
(when (jhf)  (xzd)) ;; Support. 
(when (lhf)  (c1d)) ;; Support. 
(when (qhf)  (k1d)) ;; Support. 
(when (thf)  (r1d)) ;; Support. 
(when (vhf)  (x1d)) ;; Support. 
(when (yhf)  (c2d)) ;; Support. 
(when (bif)  (k2d)) ;; Support. 
(when (gif)  (r2d)) ;; Support. 
(when (jif)  (x2d)) ;; Support. 
(when (lif)  (c3d)) ;; Support. 
(when (qif)  (k3d)) ;; Support. 
(when (rif)  (q3d)) ;; Support. 
(when (uif)  (u3d)) ;; Support. 
(when (xif)  (z3d)) ;; Support. 
(when (zif)  (h4d)) ;; Support. 
(when (cjf)  (m4d)) ;; Support. 
(when (hjf)  (u4d)) ;; Support. 
(when (kjf)  (z4d)) ;; Support. 
(when (mjf)  (h5d)) ;; Support. 
(when (rjf)  (m5d)) ;; Support. 
(when (ujf)  (u5d)) ;; Support. 
(when (xjf)  (z5d)) ;; Support. 
(when (zjf)  (h6d)) ;; Support. 
(when (ckf)  (m6d)) ;; Support. 
(when (hkf)  (u6d)) ;; Support. 
(when (kkf)  (z6d)) ;; Support. 
(when (mkf)  (h7d)) ;; Support. 
(when (rkf)  (m7d)) ;; Support. 
(when (ukf)  (u7d)) ;; Support. 
(when (xkf)  (z7d)) ;; Support. 
(when (zkf)  (h8d)) ;; Support. 
(when (clf)  (m8d)) ;; Support. 
(when (hlf)  (u8d)) ;; Support. 
(when (klf)  (z8d)) ;; Support. 
(when (mlf)  (h9d)) ;; Support. 
(when (rlf)  (m9d)) ;; Support. 
(when (ulf)  (u9d)) ;; Support. 
(when (xlf)  (z9d)) ;; Support. 
(when (zlf)  (h0d)) ;; Support. 
(when (cmf)  (m0d)) ;; Support. 
(when (hmf)  (u0d)) ;; Support. 
(when (kmf)  (z0d)) ;; Support. 
(when (mmf)  (hae)) ;; Support. 
(when (rmf)  (mae)) ;; Support. 
(when (umf)  (uae)) ;; Support. 
(when (xmf)  (zae)) ;; Support. 
(when (zmf)  (hbe)) ;; Support. 
(when (cnf)  (mbe)) ;; Support. 
(when (hnf)  (ube)) ;; Support. 
(when (knf)  (zbe)) ;; Support. 
(when (mnf)  (hce)) ;; Support. 
(when (rnf)  (mce)) ;; Support. 
(when (unf)  (uce)) ;; Support. 
(when (xnf)  (zce)) ;; Support. 
(when (znf)  (hde)) ;; Support. 
(when (cof)  (mde)) ;; Support. 
(when (hof)  (ude)) ;; Support. 
(when (kof)  (zde)) ;; Support. 
(when (mof)  (hee)) ;; Support. 
(when (rof)  (mee)) ;; Support. 
(when (uof)  (uee)) ;; Support. 
(when (xof)  (zee)) ;; Support. 
(when (zof)  (hfe)) ;; Support. 
(when (cpf)  (mfe)) ;; Support. 
(when (hpf)  (ufe)) ;; Support. 
(when (kpf)  (zfe)) ;; Support. 
(when (mpf)  (hge)) ;; Support. 
(when (rpf)  (mge)) ;; Support. 
(when (upf)  (uge)) ;; Support. 
(when (xpf)  (zge)) ;; Support. 
(when (zpf)  (hhe)) ;; Support. 
(when (cqf)  (mhe)) ;; Support. 
(when (hqf)  (uhe)) ;; Support. 
(when (kqf)  (zhe)) ;; Support. 
(when (mqf)  (hie)) ;; Support. 
(when (uqf) (and (uie) (not(tie)))) ;; Support.  Cancellation. 
(when (xqf) (and (zie) (not(yie)))) ;; Support.  Cancellation. 
(when (zqf) (and (hje) (not(gje)))) ;; Support.  Cancellation. 
(when (csf) (and (mje) (not(lje)))) ;; Support.  Cancellation. 
(when (hsf) (and (uje) (not(tje)))) ;; Support.  Cancellation. 
(when (ksf) (and (zje) (not(yje)))) ;; Support.  Cancellation. 
(when (msf) (and (hke) (not(gke)))) ;; Support.  Cancellation. 
(when (rsf) (and (mke) (not(lke)))) ;; Support.  Cancellation. 
(when (usf) (and (uke) (not(tke)))) ;; Support.  Cancellation. 
(when (xsf) (and (zke) (not(yke)))) ;; Support.  Cancellation. 
(when (zsf) (and (hle) (not(gle)))) ;; Support.  Cancellation. 
(when (crf) (and (mle) (not(lle)))) ;; Support.  Cancellation. 
(when (hrf) (and (ule) (not(tle)))) ;; Support.  Cancellation. 
(when (krf) (and (zle) (not(yle)))) ;; Support.  Cancellation. 
(when (mrf) (and (hme) (not(gme)))) ;; Support.  Cancellation. 
(when (rrf) (and (mme) (not(lme)))) ;; Support.  Cancellation. 
(when (urf) (and (ume) (not(tme)))) ;; Support.  Cancellation. 
(when (xrf) (and (zme) (not(yme)))) ;; Support.  Cancellation. 
(when (zrf) (and (hne) (not(gne)))) ;; Support.  Cancellation. 
(when (ctf) (and (mne) (not(lne)))) ;; Support.  Cancellation. 
(when (htf) (and (une) (not(tne)))) ;; Support.  Cancellation. 
(when (ktf) (and (zne) (not(yne)))) ;; Support.  Cancellation. 
(when (mtf) (and (hoe) (not(goe)))) ;; Support.  Cancellation. 
(when (rtf) (and (moe) (not(loe)))) ;; Support.  Cancellation. 
(when (utf) (and (uoe) (not(toe)))) ;; Support.  Cancellation. 
(when (xtf) (and (zoe) (not(yoe)))) ;; Support.  Cancellation. 
(when (ztf) (and (hpe) (not(gpe)))) ;; Support.  Cancellation. 
(when (cuf) (and (mpe) (not(lpe)))) ;; Support.  Cancellation. 
(when (huf) (and (upe) (not(tpe)))) ;; Support.  Cancellation. 
(when (kuf) (and (zpe) (not(ype)))) ;; Support.  Cancellation. 
(when (muf) (and (hqe) (not(gqe)))) ;; Support.  Cancellation. 
(when (ruf) (and (mqe) (not(lqe)))) ;; Support.  Cancellation. 
(when (uuf) (and (uqe) (not(tqe)))) ;; Support.  Cancellation. 
(when (xuf) (and (zqe) (not(yqe)))) ;; Support.  Cancellation. 
(when (zuf) (and (hse) (not(gse)))) ;; Support.  Cancellation. 
(when (cvf) (and (mse) (not(lse)))) ;; Support.  Cancellation. 
(when (hvf) (and (use) (not(tse)))) ;; Support.  Cancellation. 
(when (kvf) (and (zse) (not(yse)))) ;; Support.  Cancellation. 
(when (mvf) (and (hre) (not(gre)))) ;; Support.  Cancellation. 
(when (tvf) (and (rre) (not(qre)))) ;; Support.  Cancellation. 
(when (vvf) (and (xre) (not(vre)))) ;; Support.  Cancellation. 
(when (yvf) (and (cte) (not(bte)))) ;; Support.  Cancellation. 
(when (bwf) (and (kte) (not(jte)))) ;; Support.  Cancellation. 
(when (gwf) (and (rte) (not(qte)))) ;; Support.  Cancellation. 
(when (jwf) (and (xte) (not(vte)))) ;; Support.  Cancellation. 
(when (qwf) (and (kue) (not(jue)))) ;; Support.  Cancellation. 
(when (twf) (and (rue) (not(que)))) ;; Support.  Cancellation. 
(when (vwf) (and (xue) (not(vue)))) ;; Support.  Cancellation. 
(when (ywf) (and (cve) (not(bve)))) ;; Support.  Cancellation. 
(when (bxf) (and (kve) (not(jve)))) ;; Support.  Cancellation. 
(when (gxf) (and (rve) (not(qve)))) ;; Support.  Cancellation. 
(when (jxf) (and (xve) (not(vve)))) ;; Support.  Cancellation. 
(when (lxf) (and (cwe) (not(bwe)))) ;; Support.  Cancellation. 
(when (qxf) (and (kwe) (not(jwe)))) ;; Support.  Cancellation. 
(when (txf) (and (rwe) (not(qwe)))) ;; Support.  Cancellation. 
(when (vxf) (and (xwe) (not(vwe)))) ;; Support.  Cancellation. 
(when (yxf) (and (cxe) (not(bxe)))) ;; Support.  Cancellation. 
(when (byf) (and (kxe) (not(jxe)))) ;; Support.  Cancellation. 
(when (gyf) (and (rxe) (not(qxe)))) ;; Support.  Cancellation. 
(when (jyf) (and (xxe) (not(vxe)))) ;; Support.  Cancellation. 
(when (lyf) (and (cye) (not(bye)))) ;; Support.  Cancellation. 
(when (qyf) (and (kye) (not(jye)))) ;; Support.  Cancellation. 
(when (tyf)  (rye)) ;; Support. 
(when (vyf)  (xye)) ;; Support. 
(when (yyf)  (cze)) ;; Support. 
(when (bzf)  (kze)) ;; Support. 
(when (gzf)  (rze)) ;; Support. 
(when (jzf)  (xze)) ;; Support. 
(when (lzf)  (c1e)) ;; Support. 
(when (tzf)  (r1e)) ;; Support. 
(when (vzf)  (x1e)) ;; Support. 
(when (b1f)  (k2e)) ;; Support. 
(when (g1f)  (r2e)) ;; Support. 
(when (j1f)  (x2e)) ;; Support. 
(when (l1f)  (c3e)) ;; Support. 
(when (q1f)  (k3e)) ;; Support. 
(when (t1f)  (r3e)) ;; Support. 
(when (v1f)  (x3e)) ;; Support. 
(when (y1f)  (c4e)) ;; Support. 
(when (b2f)  (k4e)) ;; Support. 
(when (g2f)  (r4e)) ;; Support. 
(when (j2f)  (x4e)) ;; Support. 
(when (l2f)  (c5e)) ;; Support. 
(when (q2f)  (k5e)) ;; Support. 
(when (t2f)  (r5e)) ;; Support. 
(when (v2f)  (x5e)) ;; Support. 
(when (y2f)  (c6e)) ;; Support. 
(when (b3f)  (k6e)) ;; Support. 
(when (g3f)  (r6e)) ;; Support. 
(when (j3f)  (x6e)) ;; Support. 
(when (l3f)  (c7e)) ;; Support. 
))
(:action CMPSWAP_L1_L2
:parameters ()
:precondition (and (q7e))

:effect (and  (c2e) (not(ued)) (mre)
(when (m7e)  (k7e)) ;; Support. 
(when (qed) (and (ted) (not(r3d)))) ;; Support.  Cancellation. 
(when (ved) (and (yed) (not(zed)))) ;; Support.  Cancellation. 
(when (bfd) (and (gfd) (not(hfd)))) ;; Support.  Cancellation. 
(when (jfd) (and (lfd) (not(mfd)))) ;; Support.  Cancellation. 
(when (qfd) (and (tfd) (not(ufd)))) ;; Support.  Cancellation. 
(when (vfd) (and (yfd) (not(zfd)))) ;; Support.  Cancellation. 
(when (bgd) (and (ggd) (not(hgd)))) ;; Support.  Cancellation. 
(when (jgd) (and (lgd) (not(mgd)))) ;; Support.  Cancellation. 
(when (qgd) (and (tgd) (not(ugd)))) ;; Support.  Cancellation. 
(when (vgd) (and (ygd) (not(zgd)))) ;; Support.  Cancellation. 
(when (bhd) (and (ghd) (not(hhd)))) ;; Support.  Cancellation. 
(when (jhd) (and (lhd) (not(mhd)))) ;; Support.  Cancellation. 
(when (qhd) (and (thd) (not(uhd)))) ;; Support.  Cancellation. 
(when (vhd) (and (yhd) (not(zhd)))) ;; Support.  Cancellation. 
(when (bid) (and (gid) (not(hid)))) ;; Support.  Cancellation. 
(when (jid) (and (lid) (not(mid)))) ;; Support.  Cancellation. 
(when (qid) (and (tid) (not(uid)))) ;; Support.  Cancellation. 
(when (vid) (and (yid) (not(zid)))) ;; Support.  Cancellation. 
(when (bjd) (and (gjd) (not(hjd)))) ;; Support.  Cancellation. 
(when (jjd) (and (ljd) (not(mjd)))) ;; Support.  Cancellation. 
(when (qjd) (and (tjd) (not(ujd)))) ;; Support.  Cancellation. 
(when (vjd) (and (yjd) (not(zjd)))) ;; Support.  Cancellation. 
(when (bkd) (and (gkd) (not(hkd)))) ;; Support.  Cancellation. 
(when (jkd) (and (lkd) (not(mkd)))) ;; Support.  Cancellation. 
(when (qkd) (and (tkd) (not(ukd)))) ;; Support.  Cancellation. 
(when (vkd) (and (ykd) (not(zkd)))) ;; Support.  Cancellation. 
(when (bld) (and (gld) (not(hld)))) ;; Support.  Cancellation. 
(when (jld) (and (lld) (not(mld)))) ;; Support.  Cancellation. 
(when (qld) (and (tld) (not(uld)))) ;; Support.  Cancellation. 
(when (vld) (and (yld) (not(zld)))) ;; Support.  Cancellation. 
(when (bmd) (and (gmd) (not(hmd)))) ;; Support.  Cancellation. 
(when (jmd) (and (lmd) (not(mmd)))) ;; Support.  Cancellation. 
(when (qmd) (and (tmd) (not(umd)))) ;; Support.  Cancellation. 
(when (vmd) (and (ymd) (not(zmd)))) ;; Support.  Cancellation. 
(when (bnd) (and (gnd) (not(hnd)))) ;; Support.  Cancellation. 
(when (jnd) (and (lnd) (not(mnd)))) ;; Support.  Cancellation. 
(when (qnd) (and (tnd) (not(und)))) ;; Support.  Cancellation. 
(when (vnd) (and (ynd) (not(znd)))) ;; Support.  Cancellation. 
(when (bod) (and (god) (not(hod)))) ;; Support.  Cancellation. 
(when (jod) (and (lod) (not(mod)))) ;; Support.  Cancellation. 
(when (qod) (and (tod) (not(uod)))) ;; Support.  Cancellation. 
(when (vod) (and (yod) (not(zod)))) ;; Support.  Cancellation. 
(when (bpd) (and (gpd) (not(hpd)))) ;; Support.  Cancellation. 
(when (jpd) (and (lpd) (not(mpd)))) ;; Support.  Cancellation. 
(when (qpd) (and (tpd) (not(upd)))) ;; Support.  Cancellation. 
(when (vpd) (and (ypd) (not(zpd)))) ;; Support.  Cancellation. 
(when (bqd) (and (gqd) (not(hqd)))) ;; Support.  Cancellation. 
(when (jqd) (and (lqd) (not(mqd)))) ;; Support.  Cancellation. 
(when (qqd) (and (tqd) (not(uqd)))) ;; Support.  Cancellation. 
(when (vqd) (and (yqd) (not(zqd)))) ;; Support.  Cancellation. 
(when (bsd) (and (gsd) (not(hsd)))) ;; Support.  Cancellation. 
(when (jsd) (and (lsd) (not(msd)))) ;; Support.  Cancellation. 
(when (qsd) (and (tsd) (not(usd)))) ;; Support.  Cancellation. 
(when (vsd) (and (ysd) (not(zsd)))) ;; Support.  Cancellation. 
(when (brd) (and (grd) (not(hrd)))) ;; Support.  Cancellation. 
(when (jrd) (and (lrd) (not(mrd)))) ;; Support.  Cancellation. 
(when (qrd) (and (trd) (not(urd)))) ;; Support.  Cancellation. 
(when (vrd) (and (yrd) (not(zrd)))) ;; Support.  Cancellation. 
(when (btd) (and (gtd) (not(htd)))) ;; Support.  Cancellation. 
(when (jtd) (and (ltd) (not(mtd)))) ;; Support.  Cancellation. 
(when (qtd) (and (ttd) (not(utd)))) ;; Support.  Cancellation. 
(when (vtd) (and (ytd) (not(ztd)))) ;; Support.  Cancellation. 
(when (bud) (and (gud) (not(hud)))) ;; Support.  Cancellation. 
(when (jud) (and (lud) (not(mud)))) ;; Support.  Cancellation. 
(when (qud) (and (tud) (not(uud)))) ;; Support.  Cancellation. 
(when (tie) (and (vie) (not(xie)))) ;; Support.  Cancellation. 
(when (yie) (and (bje) (not(cje)))) ;; Support.  Cancellation. 
(when (gje) (and (jje) (not(kje)))) ;; Support.  Cancellation. 
(when (lje) (and (qje) (not(rje)))) ;; Support.  Cancellation. 
(when (tje) (and (vje) (not(xje)))) ;; Support.  Cancellation. 
(when (yje) (and (bke) (not(cke)))) ;; Support.  Cancellation. 
(when (gke) (and (jke) (not(kke)))) ;; Support.  Cancellation. 
(when (lke) (and (qke) (not(rke)))) ;; Support.  Cancellation. 
(when (tke) (and (vke) (not(xke)))) ;; Support.  Cancellation. 
(when (yke) (and (ble) (not(cle)))) ;; Support.  Cancellation. 
(when (gle) (and (jle) (not(kle)))) ;; Support.  Cancellation. 
(when (lle) (and (qle) (not(rle)))) ;; Support.  Cancellation. 
(when (tle) (and (vle) (not(xle)))) ;; Support.  Cancellation. 
(when (yle) (and (bme) (not(cme)))) ;; Support.  Cancellation. 
(when (gme) (and (jme) (not(kme)))) ;; Support.  Cancellation. 
(when (lme) (and (qme) (not(rme)))) ;; Support.  Cancellation. 
(when (tme) (and (vme) (not(xme)))) ;; Support.  Cancellation. 
(when (yme) (and (bne) (not(cne)))) ;; Support.  Cancellation. 
(when (gne) (and (jne) (not(kne)))) ;; Support.  Cancellation. 
(when (lne) (and (qne) (not(rne)))) ;; Support.  Cancellation. 
(when (tne) (and (vne) (not(xne)))) ;; Support.  Cancellation. 
(when (yne) (and (boe) (not(coe)))) ;; Support.  Cancellation. 
(when (goe) (and (joe) (not(koe)))) ;; Support.  Cancellation. 
(when (loe) (and (qoe) (not(roe)))) ;; Support.  Cancellation. 
(when (toe) (and (voe) (not(xoe)))) ;; Support.  Cancellation. 
(when (yoe) (and (bpe) (not(cpe)))) ;; Support.  Cancellation. 
(when (gpe) (and (jpe) (not(kpe)))) ;; Support.  Cancellation. 
(when (lpe) (and (qpe) (not(rpe)))) ;; Support.  Cancellation. 
(when (tpe) (and (vpe) (not(xpe)))) ;; Support.  Cancellation. 
(when (ype) (and (bqe) (not(cqe)))) ;; Support.  Cancellation. 
(when (gqe) (and (jqe) (not(kqe)))) ;; Support.  Cancellation. 
(when (lqe) (and (qqe) (not(rqe)))) ;; Support.  Cancellation. 
(when (tqe) (and (vqe) (not(xqe)))) ;; Support.  Cancellation. 
(when (yqe) (and (bse) (not(cse)))) ;; Support.  Cancellation. 
(when (gse) (and (jse) (not(kse)))) ;; Support.  Cancellation. 
(when (lse) (and (qse) (not(rse)))) ;; Support.  Cancellation. 
(when (tse) (and (vse) (not(xse)))) ;; Support.  Cancellation. 
(when (yse) (and (bre) (not(cre)))) ;; Support.  Cancellation. 
(when (gre) (and (jre) (not(kre)))) ;; Support.  Cancellation. 
(when (qre) (and (tre) (not(ure)))) ;; Support.  Cancellation. 
(when (vre) (and (yre) (not(zre)))) ;; Support.  Cancellation. 
(when (bte) (and (gte) (not(hte)))) ;; Support.  Cancellation. 
(when (jte) (and (lte) (not(mte)))) ;; Support.  Cancellation. 
(when (qte) (and (tte) (not(ute)))) ;; Support.  Cancellation. 
(when (vte) (and (yte) (not(zte)))) ;; Support.  Cancellation. 
(when (bue) (and (gue) (not(hue)))) ;; Support.  Cancellation. 
(when (jue) (and (lue) (not(mue)))) ;; Support.  Cancellation. 
(when (que) (and (tue) (not(uue)))) ;; Support.  Cancellation. 
(when (vue) (and (yue) (not(zue)))) ;; Support.  Cancellation. 
(when (bve) (and (gve) (not(hve)))) ;; Support.  Cancellation. 
(when (jve) (and (lve) (not(mve)))) ;; Support.  Cancellation. 
(when (qve) (and (tve) (not(uve)))) ;; Support.  Cancellation. 
(when (vve) (and (yve) (not(zve)))) ;; Support.  Cancellation. 
(when (bwe) (and (gwe) (not(hwe)))) ;; Support.  Cancellation. 
(when (jwe) (and (lwe) (not(mwe)))) ;; Support.  Cancellation. 
(when (qwe) (and (twe) (not(uwe)))) ;; Support.  Cancellation. 
(when (vwe) (and (ywe) (not(zwe)))) ;; Support.  Cancellation. 
(when (bxe) (and (gxe) (not(hxe)))) ;; Support.  Cancellation. 
(when (jxe) (and (lxe) (not(mxe)))) ;; Support.  Cancellation. 
(when (qxe) (and (txe) (not(uxe)))) ;; Support.  Cancellation. 
(when (vxe) (and (yxe) (not(zxe)))) ;; Support.  Cancellation. 
(when (bye) (and (gye) (not(hye)))) ;; Support.  Cancellation. 
(when (jye) (and (lye) (not(mye)))) ;; Support.  Cancellation. 
(when (ued) (and (red) (not(lre)))) ;; Support.  Cancellation. 
(when (not(ted))  (not(qed))) ;; Cancellation. 
(when (zed) (and (xed) (not(ved)))) ;; Support.  Cancellation. 
(when (hfd) (and (cfd) (not(bfd)))) ;; Support.  Cancellation. 
(when (mfd) (and (kfd) (not(jfd)))) ;; Support.  Cancellation. 
(when (ufd) (and (rfd) (not(qfd)))) ;; Support.  Cancellation. 
(when (zfd) (and (xfd) (not(vfd)))) ;; Support.  Cancellation. 
(when (hgd) (and (cgd) (not(bgd)))) ;; Support.  Cancellation. 
(when (mgd) (and (kgd) (not(jgd)))) ;; Support.  Cancellation. 
(when (ugd) (and (rgd) (not(qgd)))) ;; Support.  Cancellation. 
(when (zgd) (and (xgd) (not(vgd)))) ;; Support.  Cancellation. 
(when (hhd) (and (chd) (not(bhd)))) ;; Support.  Cancellation. 
(when (mhd) (and (khd) (not(jhd)))) ;; Support.  Cancellation. 
(when (uhd) (and (rhd) (not(qhd)))) ;; Support.  Cancellation. 
(when (zhd) (and (xhd) (not(vhd)))) ;; Support.  Cancellation. 
(when (hid) (and (cid) (not(bid)))) ;; Support.  Cancellation. 
(when (mid) (and (kid) (not(jid)))) ;; Support.  Cancellation. 
(when (uid) (and (rid) (not(qid)))) ;; Support.  Cancellation. 
(when (zid) (and (xid) (not(vid)))) ;; Support.  Cancellation. 
(when (hjd) (and (cjd) (not(bjd)))) ;; Support.  Cancellation. 
(when (mjd) (and (kjd) (not(jjd)))) ;; Support.  Cancellation. 
(when (ujd) (and (rjd) (not(qjd)))) ;; Support.  Cancellation. 
(when (zjd) (and (xjd) (not(vjd)))) ;; Support.  Cancellation. 
(when (hkd) (and (ckd) (not(bkd)))) ;; Support.  Cancellation. 
(when (mkd) (and (kkd) (not(jkd)))) ;; Support.  Cancellation. 
(when (ukd) (and (rkd) (not(qkd)))) ;; Support.  Cancellation. 
(when (zkd) (and (xkd) (not(vkd)))) ;; Support.  Cancellation. 
(when (hld) (and (cld) (not(bld)))) ;; Support.  Cancellation. 
(when (mld) (and (kld) (not(jld)))) ;; Support.  Cancellation. 
(when (uld) (and (rld) (not(qld)))) ;; Support.  Cancellation. 
(when (zld) (and (xld) (not(vld)))) ;; Support.  Cancellation. 
(when (hmd) (and (cmd) (not(bmd)))) ;; Support.  Cancellation. 
(when (mmd) (and (kmd) (not(jmd)))) ;; Support.  Cancellation. 
(when (umd) (and (rmd) (not(qmd)))) ;; Support.  Cancellation. 
(when (zmd) (and (xmd) (not(vmd)))) ;; Support.  Cancellation. 
(when (hnd) (and (cnd) (not(bnd)))) ;; Support.  Cancellation. 
(when (mnd) (and (knd) (not(jnd)))) ;; Support.  Cancellation. 
(when (und) (and (rnd) (not(qnd)))) ;; Support.  Cancellation. 
(when (znd) (and (xnd) (not(vnd)))) ;; Support.  Cancellation. 
(when (hod) (and (cod) (not(bod)))) ;; Support.  Cancellation. 
(when (mod) (and (kod) (not(jod)))) ;; Support.  Cancellation. 
(when (uod) (and (rod) (not(qod)))) ;; Support.  Cancellation. 
(when (zod) (and (xod) (not(vod)))) ;; Support.  Cancellation. 
(when (hpd) (and (cpd) (not(bpd)))) ;; Support.  Cancellation. 
(when (mpd) (and (kpd) (not(jpd)))) ;; Support.  Cancellation. 
(when (upd) (and (rpd) (not(qpd)))) ;; Support.  Cancellation. 
(when (zpd) (and (xpd) (not(vpd)))) ;; Support.  Cancellation. 
(when (hqd) (and (cqd) (not(bqd)))) ;; Support.  Cancellation. 
(when (mqd) (and (kqd) (not(jqd)))) ;; Support.  Cancellation. 
(when (uqd) (and (rqd) (not(qqd)))) ;; Support.  Cancellation. 
(when (zqd) (and (xqd) (not(vqd)))) ;; Support.  Cancellation. 
(when (hsd) (and (csd) (not(bsd)))) ;; Support.  Cancellation. 
(when (msd) (and (ksd) (not(jsd)))) ;; Support.  Cancellation. 
(when (usd) (and (rsd) (not(qsd)))) ;; Support.  Cancellation. 
(when (zsd) (and (xsd) (not(vsd)))) ;; Support.  Cancellation. 
(when (hrd) (and (crd) (not(brd)))) ;; Support.  Cancellation. 
(when (mrd) (and (krd) (not(jrd)))) ;; Support.  Cancellation. 
(when (urd) (and (rrd) (not(qrd)))) ;; Support.  Cancellation. 
(when (zrd) (and (xrd) (not(vrd)))) ;; Support.  Cancellation. 
(when (htd) (and (ctd) (not(btd)))) ;; Support.  Cancellation. 
(when (mtd) (and (ktd) (not(jtd)))) ;; Support.  Cancellation. 
(when (utd) (and (rtd) (not(qtd)))) ;; Support.  Cancellation. 
(when (ztd) (and (xtd) (not(vtd)))) ;; Support.  Cancellation. 
(when (hud) (and (cud) (not(bud)))) ;; Support.  Cancellation. 
(when (mud) (and (kud) (not(jud)))) ;; Support.  Cancellation. 
(when (uud) (and (rud) (not(qud)))) ;; Support.  Cancellation. 
(when (zud)  (xud)) ;; Support. 
(when (hvd)  (cvd)) ;; Support. 
(when (mvd)  (kvd)) ;; Support. 
(when (uvd)  (rvd)) ;; Support. 
(when (zvd)  (xvd)) ;; Support. 
(when (hwd)  (cwd)) ;; Support. 
(when (mwd)  (kwd)) ;; Support. 
(when (uwd)  (rwd)) ;; Support. 
(when (zwd)  (xwd)) ;; Support. 
(when (hxd)  (cxd)) ;; Support. 
(when (mxd)  (kxd)) ;; Support. 
(when (uxd)  (rxd)) ;; Support. 
(when (zxd)  (xxd)) ;; Support. 
(when (hyd)  (cyd)) ;; Support. 
(when (myd)  (kyd)) ;; Support. 
(when (uyd)  (ryd)) ;; Support. 
(when (zyd)  (xyd)) ;; Support. 
(when (hzd)  (czd)) ;; Support. 
(when (mzd)  (kzd)) ;; Support. 
(when (uzd)  (rzd)) ;; Support. 
(when (zzd)  (xzd)) ;; Support. 
(when (h1d)  (c1d)) ;; Support. 
(when (m1d)  (k1d)) ;; Support. 
(when (u1d)  (r1d)) ;; Support. 
(when (z1d)  (x1d)) ;; Support. 
(when (h2d)  (c2d)) ;; Support. 
(when (m2d)  (k2d)) ;; Support. 
(when (u2d)  (r2d)) ;; Support. 
(when (z2d)  (x2d)) ;; Support. 
(when (h3d)  (c3d)) ;; Support. 
(when (m3d)  (k3d)) ;; Support. 
(when (r3d)  (q3d)) ;; Support. 
(when (x3d)  (u3d)) ;; Support. 
(when (c4d)  (z3d)) ;; Support. 
(when (k4d)  (h4d)) ;; Support. 
(when (r4d)  (m4d)) ;; Support. 
(when (x4d)  (u4d)) ;; Support. 
(when (c5d)  (z4d)) ;; Support. 
(when (k5d)  (h5d)) ;; Support. 
(when (r5d)  (m5d)) ;; Support. 
(when (x5d)  (u5d)) ;; Support. 
(when (c6d)  (z5d)) ;; Support. 
(when (k6d)  (h6d)) ;; Support. 
(when (r6d)  (m6d)) ;; Support. 
(when (x6d)  (u6d)) ;; Support. 
(when (c7d)  (z6d)) ;; Support. 
(when (k7d)  (h7d)) ;; Support. 
(when (r7d)  (m7d)) ;; Support. 
(when (x7d)  (u7d)) ;; Support. 
(when (c8d)  (z7d)) ;; Support. 
(when (k8d)  (h8d)) ;; Support. 
(when (r8d)  (m8d)) ;; Support. 
(when (x8d)  (u8d)) ;; Support. 
(when (c9d)  (z8d)) ;; Support. 
(when (k9d)  (h9d)) ;; Support. 
(when (r9d)  (m9d)) ;; Support. 
(when (x9d)  (u9d)) ;; Support. 
(when (c0d)  (z9d)) ;; Support. 
(when (k0d)  (h0d)) ;; Support. 
(when (r0d)  (m0d)) ;; Support. 
(when (x0d)  (u0d)) ;; Support. 
(when (cae)  (z0d)) ;; Support. 
(when (kae)  (hae)) ;; Support. 
(when (rae)  (mae)) ;; Support. 
(when (xae)  (uae)) ;; Support. 
(when (cbe)  (zae)) ;; Support. 
(when (kbe)  (hbe)) ;; Support. 
(when (rbe)  (mbe)) ;; Support. 
(when (xbe)  (ube)) ;; Support. 
(when (cce)  (zbe)) ;; Support. 
(when (kce)  (hce)) ;; Support. 
(when (rce)  (mce)) ;; Support. 
(when (xce)  (uce)) ;; Support. 
(when (cde)  (zce)) ;; Support. 
(when (kde)  (hde)) ;; Support. 
(when (rde)  (mde)) ;; Support. 
(when (xde)  (ude)) ;; Support. 
(when (cee)  (zde)) ;; Support. 
(when (kee)  (hee)) ;; Support. 
(when (ree)  (mee)) ;; Support. 
(when (xee)  (uee)) ;; Support. 
(when (cfe)  (zee)) ;; Support. 
(when (kfe)  (hfe)) ;; Support. 
(when (rfe)  (mfe)) ;; Support. 
(when (xfe)  (ufe)) ;; Support. 
(when (cge)  (zfe)) ;; Support. 
(when (kge)  (hge)) ;; Support. 
(when (rge)  (mge)) ;; Support. 
(when (xge)  (uge)) ;; Support. 
(when (che)  (zge)) ;; Support. 
(when (khe)  (hhe)) ;; Support. 
(when (rhe)  (mhe)) ;; Support. 
(when (xhe)  (uhe)) ;; Support. 
(when (cie)  (zhe)) ;; Support. 
(when (kie)  (hie)) ;; Support. 
(when (rie)  (mie)) ;; Support. 
(when (xie) (and (uie) (not(tie)))) ;; Support.  Cancellation. 
(when (cje) (and (zie) (not(yie)))) ;; Support.  Cancellation. 
(when (kje) (and (hje) (not(gje)))) ;; Support.  Cancellation. 
(when (rje) (and (mje) (not(lje)))) ;; Support.  Cancellation. 
(when (xje) (and (uje) (not(tje)))) ;; Support.  Cancellation. 
(when (cke) (and (zje) (not(yje)))) ;; Support.  Cancellation. 
(when (kke) (and (hke) (not(gke)))) ;; Support.  Cancellation. 
(when (rke) (and (mke) (not(lke)))) ;; Support.  Cancellation. 
(when (xke) (and (uke) (not(tke)))) ;; Support.  Cancellation. 
(when (cle) (and (zke) (not(yke)))) ;; Support.  Cancellation. 
(when (kle) (and (hle) (not(gle)))) ;; Support.  Cancellation. 
(when (rle) (and (mle) (not(lle)))) ;; Support.  Cancellation. 
(when (xle) (and (ule) (not(tle)))) ;; Support.  Cancellation. 
(when (cme) (and (zle) (not(yle)))) ;; Support.  Cancellation. 
(when (kme) (and (hme) (not(gme)))) ;; Support.  Cancellation. 
(when (rme) (and (mme) (not(lme)))) ;; Support.  Cancellation. 
(when (xme) (and (ume) (not(tme)))) ;; Support.  Cancellation. 
(when (cne) (and (zme) (not(yme)))) ;; Support.  Cancellation. 
(when (kne) (and (hne) (not(gne)))) ;; Support.  Cancellation. 
(when (rne) (and (mne) (not(lne)))) ;; Support.  Cancellation. 
(when (xne) (and (une) (not(tne)))) ;; Support.  Cancellation. 
(when (coe) (and (zne) (not(yne)))) ;; Support.  Cancellation. 
(when (koe) (and (hoe) (not(goe)))) ;; Support.  Cancellation. 
(when (roe) (and (moe) (not(loe)))) ;; Support.  Cancellation. 
(when (xoe) (and (uoe) (not(toe)))) ;; Support.  Cancellation. 
(when (cpe) (and (zoe) (not(yoe)))) ;; Support.  Cancellation. 
(when (kpe) (and (hpe) (not(gpe)))) ;; Support.  Cancellation. 
(when (rpe) (and (mpe) (not(lpe)))) ;; Support.  Cancellation. 
(when (xpe) (and (upe) (not(tpe)))) ;; Support.  Cancellation. 
(when (cqe) (and (zpe) (not(ype)))) ;; Support.  Cancellation. 
(when (kqe) (and (hqe) (not(gqe)))) ;; Support.  Cancellation. 
(when (rqe) (and (mqe) (not(lqe)))) ;; Support.  Cancellation. 
(when (xqe) (and (uqe) (not(tqe)))) ;; Support.  Cancellation. 
(when (cse) (and (zqe) (not(yqe)))) ;; Support.  Cancellation. 
(when (kse) (and (hse) (not(gse)))) ;; Support.  Cancellation. 
(when (rse) (and (mse) (not(lse)))) ;; Support.  Cancellation. 
(when (xse) (and (use) (not(tse)))) ;; Support.  Cancellation. 
(when (cre) (and (zse) (not(yse)))) ;; Support.  Cancellation. 
(when (kre) (and (hre) (not(gre)))) ;; Support.  Cancellation. 
(when (ure) (and (rre) (not(qre)))) ;; Support.  Cancellation. 
(when (zre) (and (xre) (not(vre)))) ;; Support.  Cancellation. 
(when (hte) (and (cte) (not(bte)))) ;; Support.  Cancellation. 
(when (mte) (and (kte) (not(jte)))) ;; Support.  Cancellation. 
(when (ute) (and (rte) (not(qte)))) ;; Support.  Cancellation. 
(when (zte) (and (xte) (not(vte)))) ;; Support.  Cancellation. 
(when (hue) (and (cue) (not(bue)))) ;; Support.  Cancellation. 
(when (mue) (and (kue) (not(jue)))) ;; Support.  Cancellation. 
(when (uue) (and (rue) (not(que)))) ;; Support.  Cancellation. 
(when (zue) (and (xue) (not(vue)))) ;; Support.  Cancellation. 
(when (hve) (and (cve) (not(bve)))) ;; Support.  Cancellation. 
(when (mve) (and (kve) (not(jve)))) ;; Support.  Cancellation. 
(when (uve) (and (rve) (not(qve)))) ;; Support.  Cancellation. 
(when (zve) (and (xve) (not(vve)))) ;; Support.  Cancellation. 
(when (hwe) (and (cwe) (not(bwe)))) ;; Support.  Cancellation. 
(when (mwe) (and (kwe) (not(jwe)))) ;; Support.  Cancellation. 
(when (uwe) (and (rwe) (not(qwe)))) ;; Support.  Cancellation. 
(when (zwe) (and (xwe) (not(vwe)))) ;; Support.  Cancellation. 
(when (hxe) (and (cxe) (not(bxe)))) ;; Support.  Cancellation. 
(when (mxe) (and (kxe) (not(jxe)))) ;; Support.  Cancellation. 
(when (uxe) (and (rxe) (not(qxe)))) ;; Support.  Cancellation. 
(when (zxe) (and (xxe) (not(vxe)))) ;; Support.  Cancellation. 
(when (hye) (and (cye) (not(bye)))) ;; Support.  Cancellation. 
(when (mye) (and (kye) (not(jye)))) ;; Support.  Cancellation. 
(when (uye)  (rye)) ;; Support. 
(when (zye)  (xye)) ;; Support. 
(when (hze)  (cze)) ;; Support. 
(when (mze)  (kze)) ;; Support. 
(when (uze)  (rze)) ;; Support. 
(when (zze)  (xze)) ;; Support. 
(when (h1e)  (c1e)) ;; Support. 
(when (u1e)  (r1e)) ;; Support. 
(when (z1e)  (x1e)) ;; Support. 
(when (m2e)  (k2e)) ;; Support. 
(when (u2e)  (r2e)) ;; Support. 
(when (z2e)  (x2e)) ;; Support. 
(when (h3e)  (c3e)) ;; Support. 
(when (m3e)  (k3e)) ;; Support. 
(when (u3e)  (r3e)) ;; Support. 
(when (z3e)  (x3e)) ;; Support. 
(when (h4e)  (c4e)) ;; Support. 
(when (m4e)  (k4e)) ;; Support. 
(when (u4e)  (r4e)) ;; Support. 
(when (z4e)  (x4e)) ;; Support. 
(when (h5e)  (c5e)) ;; Support. 
(when (m5e)  (k5e)) ;; Support. 
(when (u5e)  (r5e)) ;; Support. 
(when (z5e)  (x5e)) ;; Support. 
(when (h6e)  (c6e)) ;; Support. 
(when (m6e)  (k6e)) ;; Support. 
(when (u6e)  (r6e)) ;; Support. 
(when (z6e)  (x6e)) ;; Support. 
(when (h7e)  (c7e)) ;; Support. 
))
(:action MERGE_CLAUSES
:parameters ()
:precondition (and)

:effect (and 
(when (qed)  (qed)) ;;reasoning over static clause. 
(when (ted)  (ted)) ;;reasoning over static clause. 
(when (ued)  (ued)) ;;reasoning over static clause. 
(when (r7e)  (r7e)) ;;reasoning over static clause. 
(when (t7e)  (t7e)) ;;reasoning over static clause. 
(when (r3f)  (r3f)) ;;reasoning over static clause. 
(when (t3f)  (t3f)) ;;reasoning over static clause. 
(when (ryg)  (ryg)) ;;reasoning over static clause. 
(when (tyg)  (tyg)) ;;reasoning over static clause. 
(when (ruh)  (ruh)) ;;reasoning over static clause. 
(when (tuh)  (tuh)) ;;reasoning over static clause. 
(when (rqi)  (rqi)) ;;reasoning over static clause. 
(when (tqi)  (tqi)) ;;reasoning over static clause. 
(when (tmj)  (tmj)) ;;reasoning over static clause. 
))
(:action MERGE_end_6
:parameters ()
:precondition (and)

:effect (and 
(when(and (qyc) (ryc) (tyc) (uyc) (vyc) (xyc) (yyc) (zyc) (bzc) (czc) (gzc) (hzc) (jzc) (kzc) (lzc) (mzc) (qzc) (rzc) (tzc) (uzc) (vzc) (xzc) (yzc) (zzc) (b1c) (c1c) (g1c) (h1c) (j1c) (k1c) (l1c) (m1c) (q1c) (r1c) (t1c) (u1c) (v1c) (x1c) (y1c) (z1c) (b2c) (c2c) (g2c) (h2c) (j2c) (k2c) (l2c) (m2c) (q2c) (r2c) (t2c) (u2c) (v2c) (x2c) (y2c) (z2c) (b3c) (c3c) (g3c) (h3c) (j3c) (k3c) (l3c) (m3c) (q3c) (r3c) (t3c) (u3c) (v3c) (x3c) (y3c) (z3c) (b4c) (c4c) (g4c) (h4c) (j4c) (k4c) (l4c) (m4c) (q4c) (r4c) (t4c) (u4c) (v4c) (x4c) (y4c) (z4c) (b5c) (c5c) (g5c) (h5c) (j5c) (k5c) (l5c) (m5c) (q5c) (r5c) (t5c) (u5c) (v5c) (x5c) (y5c) (z5c) (b6c) (c6c) (g6c) (h6c) (j6c) (k6c) (l6c) (m6c) (q6c) (r6c) (t6c) (u6c) (v6c) (x6c) (y6c) (z6c) (b7c) (c7c) (g7c) (h7c) (j7c) (k7c) (l7c) (m7c) (q7c) (r7c) (t7c) (u7c) (v7c) (x7c) (y7c) (z7c) (b8c) (c8c) (g8c) (h8c) (j8c) (k8c) (l8c) (m8c) (q8c) (r8c) (t8c) (u8c) (v8c) (x8c) (y8c) (z8c) (b9c) (c9c) (g9c) (h9c) (j9c) (k9c) (l9c) (m9c) (q9c) (r9c) (t9c) (u9c) (v9c) (x9c) (y9c) (z9c) (b0c) (c0c) (g0c) (h0c) (j0c) (k0c) (l0c) (m0c) (q0c) (r0c) (t0c) (u0c) (v0c) (x0c) (y0c) (z0c) (bad) (cad) (gad) (had) (jad) (kad) (lad) (mad) (qad) (rad) (tad) (uad) (vad) (xad) (yad) (zad) (bbd) (cbd) (gbd) (hbd) (jbd) (kbd) (lbd) (mbd) (qbd) (rbd) (tbd) (ubd) (vbd) (xbd) (ybd) (zbd) (bcd) (ccd) (gcd) (hcd) (jcd) (kcd) (lcd) (mcd) (qcd) (rcd) (tcd) (ucd) (vcd) (xcd) (ycd) (zcd) (bdd) (cdd) (gdd) (hdd) (jdd) (kdd) (ldd) (mdd) (qdd) (rdd) (tdd) (udd) (vdd) (xdd) (ydd) (zdd) (bed) (ced) (ged) (hed) (jed) (ked) (led) (med))  (myc)) ;;MERGE. 
))
(:action MERGE_end_5
:parameters ()
:precondition (and)

:effect (and 
(when(and (mic) (qic) (ric) (tic) (uic) (vic) (xic) (yic) (zic) (bjc) (cjc) (gjc) (hjc) (jjc) (kjc) (ljc) (mjc) (qjc) (rjc) (tjc) (ujc) (vjc) (xjc) (yjc) (zjc) (bkc) (ckc) (gkc) (hkc) (jkc) (kkc) (lkc) (mkc) (qkc) (rkc) (tkc) (ukc) (vkc) (xkc) (ykc) (zkc) (blc) (clc) (glc) (hlc) (jlc) (klc) (llc) (mlc) (qlc) (rlc) (tlc) (ulc) (vlc) (xlc) (ylc) (zlc) (bmc) (cmc) (gmc) (hmc) (jmc) (kmc) (lmc) (mmc) (qmc) (rmc) (tmc) (umc) (vmc) (xmc) (ymc) (zmc) (bnc) (cnc) (gnc) (hnc) (jnc) (knc) (lnc) (mnc) (qnc) (rnc) (tnc) (unc) (vnc) (xnc) (ync) (znc) (boc) (coc) (goc) (hoc) (joc) (koc) (loc) (moc) (qoc) (roc) (toc) (uoc) (voc) (xoc) (yoc) (zoc) (bpc) (cpc) (gpc) (hpc) (jpc) (kpc) (lpc) (mpc) (qpc) (rpc) (tpc) (upc) (vpc) (xpc) (ypc) (zpc) (bqc) (cqc) (gqc) (hqc) (jqc) (kqc) (lqc) (mqc) (qqc) (rqc) (tqc) (uqc) (vqc) (xqc) (yqc) (zqc) (bsc) (csc) (gsc) (hsc) (jsc) (ksc) (lsc) (msc) (qsc) (rsc) (tsc) (usc) (vsc) (xsc) (ysc) (zsc) (brc) (crc) (grc) (hrc) (jrc) (krc) (lrc) (mrc) (qrc) (rrc) (trc) (urc) (vrc) (xrc) (yrc) (zrc) (btc) (ctc) (gtc) (htc) (jtc) (ktc) (ltc) (mtc) (qtc) (rtc) (ttc) (utc) (vtc) (xtc) (ytc) (ztc) (buc) (cuc) (guc) (huc) (juc) (kuc) (luc) (muc) (quc) (ruc) (tuc) (uuc) (vuc) (xuc) (yuc) (zuc) (bvc) (cvc) (gvc) (hvc) (jvc) (kvc) (lvc) (mvc) (qvc) (rvc) (tvc) (uvc) (vvc) (xvc) (yvc) (zvc) (bwc) (cwc) (gwc) (hwc) (jwc) (kwc) (lwc) (mwc) (qwc) (rwc) (twc) (uwc) (vwc) (xwc) (ywc) (zwc) (bxc) (cxc) (gxc) (hxc) (jxc) (kxc) (lxc) (mxc) (qxc) (rxc) (txc) (uxc) (vxc) (xxc) (yxc) (zxc) (byc) (cyc) (gyc) (hyc) (jyc) (kyc) (lyc))  (lic)) ;;MERGE. 
))
(:action MERGE_end_4
:parameters ()
:precondition (and)

:effect (and 
(when(and (l3b) (m3b) (q3b) (r3b) (t3b) (u3b) (v3b) (x3b) (y3b) (z3b) (b4b) (c4b) (g4b) (h4b) (j4b) (k4b) (l4b) (m4b) (q4b) (r4b) (t4b) (u4b) (v4b) (x4b) (y4b) (z4b) (b5b) (c5b) (g5b) (h5b) (j5b) (k5b) (l5b) (m5b) (q5b) (r5b) (t5b) (u5b) (v5b) (x5b) (y5b) (z5b) (b6b) (c6b) (g6b) (h6b) (j6b) (k6b) (l6b) (m6b) (q6b) (r6b) (t6b) (u6b) (v6b) (x6b) (y6b) (z6b) (b7b) (c7b) (g7b) (h7b) (j7b) (k7b) (l7b) (m7b) (q7b) (r7b) (t7b) (u7b) (v7b) (x7b) (y7b) (z7b) (b8b) (c8b) (g8b) (h8b) (j8b) (k8b) (l8b) (m8b) (q8b) (r8b) (t8b) (u8b) (v8b) (x8b) (y8b) (z8b) (b9b) (c9b) (g9b) (h9b) (j9b) (k9b) (l9b) (m9b) (q9b) (r9b) (t9b) (u9b) (v9b) (x9b) (y9b) (z9b) (b0b) (c0b) (g0b) (h0b) (j0b) (k0b) (l0b) (m0b) (q0b) (r0b) (t0b) (u0b) (v0b) (x0b) (y0b) (z0b) (bac) (cac) (gac) (hac) (jac) (kac) (lac) (mac) (qac) (rac) (tac) (uac) (vac) (xac) (yac) (zac) (bbc) (cbc) (gbc) (hbc) (jbc) (kbc) (lbc) (mbc) (qbc) (rbc) (tbc) (ubc) (vbc) (xbc) (ybc) (zbc) (bcc) (ccc) (gcc) (hcc) (jcc) (kcc) (lcc) (mcc) (qcc) (rcc) (tcc) (ucc) (vcc) (xcc) (ycc) (zcc) (bdc) (cdc) (gdc) (hdc) (jdc) (kdc) (ldc) (mdc) (qdc) (rdc) (tdc) (udc) (vdc) (xdc) (ydc) (zdc) (bec) (cec) (gec) (hec) (jec) (kec) (lec) (mec) (qec) (rec) (tec) (uec) (vec) (xec) (yec) (zec) (bfc) (cfc) (gfc) (hfc) (jfc) (kfc) (lfc) (mfc) (qfc) (rfc) (tfc) (ufc) (vfc) (xfc) (yfc) (zfc) (bgc) (cgc) (ggc) (hgc) (jgc) (kgc) (lgc) (mgc) (qgc) (rgc) (tgc) (ugc) (vgc) (xgc) (ygc) (zgc) (bhc) (chc) (ghc) (hhc) (jhc) (khc) (lhc) (mhc) (qhc) (rhc) (thc) (uhc) (vhc) (xhc) (yhc) (zhc) (bic) (cic) (gic) (hic) (jic) (kic))  (k3b)) ;;MERGE. 
))
(:action MERGE_end_3
:parameters ()
:precondition (and)

:effect (and 
(when(and (kmb) (lmb) (mmb) (qmb) (rmb) (tmb) (umb) (vmb) (xmb) (ymb) (zmb) (bnb) (cnb) (gnb) (hnb) (jnb) (knb) (lnb) (mnb) (qnb) (rnb) (tnb) (unb) (vnb) (xnb) (ynb) (znb) (bob) (cob) (gob) (hob) (job) (kob) (lob) (mob) (qob) (rob) (tob) (uob) (vob) (xob) (yob) (zob) (bpb) (cpb) (gpb) (hpb) (jpb) (kpb) (lpb) (mpb) (qpb) (rpb) (tpb) (upb) (vpb) (xpb) (ypb) (zpb) (bqb) (cqb) (gqb) (hqb) (jqb) (kqb) (lqb) (mqb) (qqb) (rqb) (tqb) (uqb) (vqb) (xqb) (yqb) (zqb) (bsb) (csb) (gsb) (hsb) (jsb) (ksb) (lsb) (msb) (qsb) (rsb) (tsb) (usb) (vsb) (xsb) (ysb) (zsb) (brb) (crb) (grb) (hrb) (jrb) (krb) (lrb) (mrb) (qrb) (rrb) (trb) (urb) (vrb) (xrb) (yrb) (zrb) (btb) (ctb) (gtb) (htb) (jtb) (ktb) (ltb) (mtb) (qtb) (rtb) (ttb) (utb) (vtb) (xtb) (ytb) (ztb) (bub) (cub) (gub) (hub) (jub) (kub) (lub) (mub) (qub) (rub) (tub) (uub) (vub) (xub) (yub) (zub) (bvb) (cvb) (gvb) (hvb) (jvb) (kvb) (lvb) (mvb) (qvb) (rvb) (tvb) (uvb) (vvb) (xvb) (yvb) (zvb) (bwb) (cwb) (gwb) (hwb) (jwb) (kwb) (lwb) (mwb) (qwb) (rwb) (twb) (uwb) (vwb) (xwb) (ywb) (zwb) (bxb) (cxb) (gxb) (hxb) (jxb) (kxb) (lxb) (mxb) (qxb) (rxb) (txb) (uxb) (vxb) (xxb) (yxb) (zxb) (byb) (cyb) (gyb) (hyb) (jyb) (kyb) (lyb) (myb) (qyb) (ryb) (tyb) (uyb) (vyb) (xyb) (yyb) (zyb) (bzb) (czb) (gzb) (hzb) (jzb) (kzb) (lzb) (mzb) (qzb) (rzb) (tzb) (uzb) (vzb) (xzb) (yzb) (zzb) (b1b) (c1b) (g1b) (h1b) (j1b) (k1b) (l1b) (m1b) (q1b) (r1b) (t1b) (u1b) (v1b) (x1b) (y1b) (z1b) (b2b) (c2b) (g2b) (h2b) (j2b) (k2b) (l2b) (m2b) (q2b) (r2b) (t2b) (u2b) (v2b) (x2b) (y2b) (z2b) (b3b) (c3b) (g3b) (h3b) (j3b))  (jmb)) ;;MERGE. 
))
(:action MERGE_end_2
:parameters ()
:precondition (and)

:effect (and 
(when(and (j7) (k7) (l7) (m7) (q7) (r7) (t7) (u7) (v7) (x7) (y7) (z7) (b8) (c8) (g8) (h8) (j8) (k8) (l8) (m8) (q8) (r8) (t8) (u8) (v8) (x8) (y8) (z8) (b9) (c9) (g9) (h9) (j9) (k9) (l9) (m9) (q9) (r9) (t9) (u9) (v9) (x9) (y9) (z9) (b0) (c0) (g0) (h0) (j0) (k0) (l0) (m0) (q0) (r0) (t0) (u0) (v0) (x0) (y0) (z0) (bab) (cab) (gab) (hab) (jab) (kab) (lab) (mab) (qab) (rab) (tab) (uab) (vab) (xab) (yab) (zab) (bbb) (cbb) (gbb) (hbb) (jbb) (kbb) (lbb) (mbb) (qbb) (rbb) (tbb) (ubb) (vbb) (xbb) (ybb) (zbb) (bcb) (ccb) (gcb) (hcb) (jcb) (kcb) (lcb) (mcb) (qcb) (rcb) (tcb) (ucb) (vcb) (xcb) (ycb) (zcb) (bdb) (cdb) (gdb) (hdb) (jdb) (kdb) (ldb) (mdb) (qdb) (rdb) (tdb) (udb) (vdb) (xdb) (ydb) (zdb) (beb) (ceb) (geb) (heb) (jeb) (keb) (leb) (meb) (qeb) (reb) (teb) (ueb) (veb) (xeb) (yeb) (zeb) (bfb) (cfb) (gfb) (hfb) (jfb) (kfb) (lfb) (mfb) (qfb) (rfb) (tfb) (ufb) (vfb) (xfb) (yfb) (zfb) (bgb) (cgb) (ggb) (hgb) (jgb) (kgb) (lgb) (mgb) (qgb) (rgb) (tgb) (ugb) (vgb) (xgb) (ygb) (zgb) (bhb) (chb) (ghb) (hhb) (jhb) (khb) (lhb) (mhb) (qhb) (rhb) (thb) (uhb) (vhb) (xhb) (yhb) (zhb) (bib) (cib) (gib) (hib) (jib) (kib) (lib) (mib) (qib) (rib) (tib) (uib) (vib) (xib) (yib) (zib) (bjb) (cjb) (gjb) (hjb) (jjb) (kjb) (ljb) (mjb) (qjb) (rjb) (tjb) (ujb) (vjb) (xjb) (yjb) (zjb) (bkb) (ckb) (gkb) (hkb) (jkb) (kkb) (lkb) (mkb) (qkb) (rkb) (tkb) (ukb) (vkb) (xkb) (ykb) (zkb) (blb) (clb) (glb) (hlb) (jlb) (klb) (llb) (mlb) (qlb) (rlb) (tlb) (ulb) (vlb) (xlb) (ylb) (zlb) (bmb) (cmb) (gmb) (hmb))  (h7)) ;;MERGE. 
))
(:action MERGE_end_1
:parameters ()
:precondition (and)

:effect (and 
(when(and (hq) (jq) (kq) (lq) (mq) (qq) (rq) (tq) (uq) (vq) (xq) (yq) (zq) (bs) (cs) (gs) (hs) (js) (ks) (ls) (ms) (qs) (rs) (ts) (us) (vs) (xs) (ys) (zs) (br) (cr) (gr) (hr) (jr) (kr) (lr) (mr) (qr) (rr) (tr) (ur) (vr) (xr) (yr) (zr) (bt) (ct) (gt) (ht) (jt) (kt) (lt) (mt) (qt) (rt) (tt) (ut) (vt) (xt) (yt) (zt) (bu) (cu) (gu) (hu) (ju) (ku) (lu) (mu) (qu) (ru) (tu) (uu) (vu) (xu) (yu) (zu) (bv) (cv) (gv) (hv) (jv) (kv) (lv) (mv) (qv) (rv) (tv) (uv) (vv) (xv) (yv) (zv) (bw) (cw) (gw) (hw) (jw) (kw) (lw) (mw) (qw) (rw) (tw) (uw) (vw) (xw) (yw) (zw) (bx) (cx) (gx) (hx) (jx) (kx) (lx) (mx) (qx) (rx) (tx) (ux) (vx) (xx) (yx) (zx) (by) (cy) (gy) (hy) (jy) (ky) (ly) (my) (qy) (ry) (ty) (uy) (vy) (xy) (yy) (zy) (bz) (cz) (gz) (hz) (jz) (kz) (lz) (mz) (qz) (rz) (tz) (uz) (vz) (xz) (yz) (zz) (b1) (c1) (g1) (h1) (j1) (k1) (l1) (m1) (q1) (r1) (t1) (u1) (v1) (x1) (y1) (z1) (b2) (c2) (g2) (h2) (j2) (k2) (l2) (m2) (q2) (r2) (t2) (u2) (v2) (x2) (y2) (z2) (b3) (c3) (g3) (h3) (j3) (k3) (l3) (m3) (q3) (r3) (t3) (u3) (v3) (x3) (y3) (z3) (b4) (c4) (g4) (h4) (j4) (k4) (l4) (m4) (q4) (r4) (t4) (u4) (v4) (x4) (y4) (z4) (b5) (c5) (g5) (h5) (j5) (k5) (l5) (m5) (q5) (r5) (t5) (u5) (v5) (x5) (y5) (z5) (b6) (c6) (g6) (h6) (j6) (k6) (l6) (m6) (q6) (r6) (t6) (u6) (v6) (x6) (y6) (z6) (b7) (c7) (g7))  (gq)) ;;MERGE. 
))
(:action MERGE_end_0
:parameters ()
:precondition (and)

:effect (and 
(when(and (g) (h) (j) (k) (l) (m) (q) (r) (t) (u) (v) (x) (y) (z) (bb) (cb) (gb) (hb) (jb) (kb) (lb) (mb) (qb) (rb) (tb) (ub) (vb) (xb) (yb) (zb) (bc) (cc) (gc) (hc) (jc) (kc) (lc) (mc) (qc) (rc) (tc) (uc) (vc) (xc) (yc) (zc) (bd) (cd) (gd) (hd) (jd) (kd) (ld) (md) (qd) (rd) (td) (ud) (vd) (xd) (yd) (zd) (be) (ce) (ge) (he) (je) (ke) (le) (me) (qe) (re) (te) (ue) (ve) (xe) (ye) (ze) (bf) (cf) (gf) (hf) (jf) (kf) (lf) (mf) (qf) (rf) (tf) (uf) (vf) (xf) (yf) (zf) (bg) (cg) (gg) (hg) (jg) (kg) (lg) (mg) (qg) (rg) (tg) (ug) (vg) (xg) (yg) (zg) (bh) (ch) (gh) (hh) (jh) (kh) (lh) (mh) (qh) (rh) (th) (uh) (vh) (xh) (yh) (zh) (bi) (ci) (gi) (hi) (ji) (ki) (li) (mi) (qi) (ri) (ti) (ui) (vi) (xi) (yi) (zi) (bj) (cj) (gj) (hj) (jj) (kj) (lj) (mj) (qj) (rj) (tj) (uj) (vj) (xj) (yj) (zj) (bk) (ck) (gk) (hk) (jk) (kk) (lk) (mk) (qk) (rk) (tk) (uk) (vk) (xk) (yk) (zk) (bl) (cl) (gl) (hl) (jl) (kl) (ll) (ml) (ql) (rl) (tl) (ul) (vl) (xl) (yl) (zl) (bm) (cm) (gm) (hm) (jm) (km) (lm) (mm) (qm) (rm) (tm) (um) (vm) (xm) (ym) (zm) (bn) (cn) (gn) (hn) (jn) (kn) (ln) (mn) (qn) (rn) (tn) (un) (vn) (xn) (yn) (zn) (bo) (co) (go) (ho) (jo) (ko) (lo) (mo) (qo) (ro) (to) (uo) (vo) (xo) (yo) (zo) (bp) (cp) (gp) (hp) (jp) (kp) (lp) (mp) (qp) (rp) (tp) (up) (vp) (xp) (yp) (zp) (bq) (cq))  (c)) ;;MERGE. 
))
)
