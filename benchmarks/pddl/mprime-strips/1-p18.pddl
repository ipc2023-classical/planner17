(define (problem strips-mprime-l15-f15-s2-v16-c40)
(:domain mprime-strips)
(:objects f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 - fuel
          s0 s1 s2 - space
          l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 l12 l13 l14 - location
          v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 - vehicle
          c0 c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 c14 c15 c16 c17 c18 c19 c20 c21 c22 c23 c24 c25 c26 c27 c28 c29 c30 c31 c32 c33 c34 c35 c36 c37 c38 c39 - cargo)
(:init
(not-equal l0 l1)
(not-equal l0 l2)
(not-equal l0 l3)
(not-equal l0 l4)
(not-equal l0 l5)
(not-equal l0 l6)
(not-equal l0 l7)
(not-equal l0 l8)
(not-equal l0 l9)
(not-equal l0 l10)
(not-equal l0 l11)
(not-equal l0 l12)
(not-equal l0 l13)
(not-equal l0 l14)
(not-equal l1 l0)
(not-equal l1 l2)
(not-equal l1 l3)
(not-equal l1 l4)
(not-equal l1 l5)
(not-equal l1 l6)
(not-equal l1 l7)
(not-equal l1 l8)
(not-equal l1 l9)
(not-equal l1 l10)
(not-equal l1 l11)
(not-equal l1 l12)
(not-equal l1 l13)
(not-equal l1 l14)
(not-equal l2 l0)
(not-equal l2 l1)
(not-equal l2 l3)
(not-equal l2 l4)
(not-equal l2 l5)
(not-equal l2 l6)
(not-equal l2 l7)
(not-equal l2 l8)
(not-equal l2 l9)
(not-equal l2 l10)
(not-equal l2 l11)
(not-equal l2 l12)
(not-equal l2 l13)
(not-equal l2 l14)
(not-equal l3 l0)
(not-equal l3 l1)
(not-equal l3 l2)
(not-equal l3 l4)
(not-equal l3 l5)
(not-equal l3 l6)
(not-equal l3 l7)
(not-equal l3 l8)
(not-equal l3 l9)
(not-equal l3 l10)
(not-equal l3 l11)
(not-equal l3 l12)
(not-equal l3 l13)
(not-equal l3 l14)
(not-equal l4 l0)
(not-equal l4 l1)
(not-equal l4 l2)
(not-equal l4 l3)
(not-equal l4 l5)
(not-equal l4 l6)
(not-equal l4 l7)
(not-equal l4 l8)
(not-equal l4 l9)
(not-equal l4 l10)
(not-equal l4 l11)
(not-equal l4 l12)
(not-equal l4 l13)
(not-equal l4 l14)
(not-equal l5 l0)
(not-equal l5 l1)
(not-equal l5 l2)
(not-equal l5 l3)
(not-equal l5 l4)
(not-equal l5 l6)
(not-equal l5 l7)
(not-equal l5 l8)
(not-equal l5 l9)
(not-equal l5 l10)
(not-equal l5 l11)
(not-equal l5 l12)
(not-equal l5 l13)
(not-equal l5 l14)
(not-equal l6 l0)
(not-equal l6 l1)
(not-equal l6 l2)
(not-equal l6 l3)
(not-equal l6 l4)
(not-equal l6 l5)
(not-equal l6 l7)
(not-equal l6 l8)
(not-equal l6 l9)
(not-equal l6 l10)
(not-equal l6 l11)
(not-equal l6 l12)
(not-equal l6 l13)
(not-equal l6 l14)
(not-equal l7 l0)
(not-equal l7 l1)
(not-equal l7 l2)
(not-equal l7 l3)
(not-equal l7 l4)
(not-equal l7 l5)
(not-equal l7 l6)
(not-equal l7 l8)
(not-equal l7 l9)
(not-equal l7 l10)
(not-equal l7 l11)
(not-equal l7 l12)
(not-equal l7 l13)
(not-equal l7 l14)
(not-equal l8 l0)
(not-equal l8 l1)
(not-equal l8 l2)
(not-equal l8 l3)
(not-equal l8 l4)
(not-equal l8 l5)
(not-equal l8 l6)
(not-equal l8 l7)
(not-equal l8 l9)
(not-equal l8 l10)
(not-equal l8 l11)
(not-equal l8 l12)
(not-equal l8 l13)
(not-equal l8 l14)
(not-equal l9 l0)
(not-equal l9 l1)
(not-equal l9 l2)
(not-equal l9 l3)
(not-equal l9 l4)
(not-equal l9 l5)
(not-equal l9 l6)
(not-equal l9 l7)
(not-equal l9 l8)
(not-equal l9 l10)
(not-equal l9 l11)
(not-equal l9 l12)
(not-equal l9 l13)
(not-equal l9 l14)
(not-equal l10 l0)
(not-equal l10 l1)
(not-equal l10 l2)
(not-equal l10 l3)
(not-equal l10 l4)
(not-equal l10 l5)
(not-equal l10 l6)
(not-equal l10 l7)
(not-equal l10 l8)
(not-equal l10 l9)
(not-equal l10 l11)
(not-equal l10 l12)
(not-equal l10 l13)
(not-equal l10 l14)
(not-equal l11 l0)
(not-equal l11 l1)
(not-equal l11 l2)
(not-equal l11 l3)
(not-equal l11 l4)
(not-equal l11 l5)
(not-equal l11 l6)
(not-equal l11 l7)
(not-equal l11 l8)
(not-equal l11 l9)
(not-equal l11 l10)
(not-equal l11 l12)
(not-equal l11 l13)
(not-equal l11 l14)
(not-equal l12 l0)
(not-equal l12 l1)
(not-equal l12 l2)
(not-equal l12 l3)
(not-equal l12 l4)
(not-equal l12 l5)
(not-equal l12 l6)
(not-equal l12 l7)
(not-equal l12 l8)
(not-equal l12 l9)
(not-equal l12 l10)
(not-equal l12 l11)
(not-equal l12 l13)
(not-equal l12 l14)
(not-equal l13 l0)
(not-equal l13 l1)
(not-equal l13 l2)
(not-equal l13 l3)
(not-equal l13 l4)
(not-equal l13 l5)
(not-equal l13 l6)
(not-equal l13 l7)
(not-equal l13 l8)
(not-equal l13 l9)
(not-equal l13 l10)
(not-equal l13 l11)
(not-equal l13 l12)
(not-equal l13 l14)
(not-equal l14 l0)
(not-equal l14 l1)
(not-equal l14 l2)
(not-equal l14 l3)
(not-equal l14 l4)
(not-equal l14 l5)
(not-equal l14 l6)
(not-equal l14 l7)
(not-equal l14 l8)
(not-equal l14 l9)
(not-equal l14 l10)
(not-equal l14 l11)
(not-equal l14 l12)
(not-equal l14 l13)
(fuel-neighbor f0 f1)
(fuel-neighbor f1 f2)
(fuel-neighbor f2 f3)
(fuel-neighbor f3 f4)
(fuel-neighbor f4 f5)
(fuel-neighbor f5 f6)
(fuel-neighbor f6 f7)
(fuel-neighbor f7 f8)
(fuel-neighbor f8 f9)
(fuel-neighbor f9 f10)
(fuel-neighbor f10 f11)
(fuel-neighbor f11 f12)
(fuel-neighbor f12 f13)
(fuel-neighbor f13 f14)
(fuel-neighbor f14 f15)
(space-neighbor s0 s1)
(space-neighbor s1 s2)
(conn l0 l1)
(conn l1 l0)
(conn l1 l2)
(conn l2 l1)
(conn l2 l3)
(conn l3 l2)
(conn l3 l4)
(conn l4 l3)
(conn l4 l5)
(conn l5 l4)
(conn l5 l6)
(conn l6 l5)
(conn l6 l7)
(conn l7 l6)
(conn l7 l8)
(conn l8 l7)
(conn l8 l9)
(conn l9 l8)
(conn l9 l10)
(conn l10 l9)
(conn l10 l11)
(conn l11 l10)
(conn l11 l12)
(conn l12 l11)
(conn l12 l13)
(conn l13 l12)
(conn l13 l14)
(conn l14 l13)
(conn l14 l0)
(conn l0 l14)
(has-fuel l0 f2)
(has-fuel l1 f10)
(has-fuel l2 f14)
(has-fuel l3 f3)
(has-fuel l4 f11)
(has-fuel l5 f10)
(has-fuel l6 f10)
(has-fuel l7 f10)
(has-fuel l8 f11)
(has-fuel l9 f9)
(has-fuel l10 f1)
(has-fuel l11 f6)
(has-fuel l12 f5)
(has-fuel l13 f12)
(has-fuel l14 f12)
(has-space  v0 s1)
(has-space  v1 s2)
(has-space  v2 s1)
(has-space  v3 s1)
(has-space  v4 s2)
(has-space  v5 s2)
(has-space  v6 s2)
(has-space  v7 s1)
(has-space  v8 s2)
(has-space  v9 s1)
(has-space  v10 s2)
(has-space  v11 s2)
(has-space  v12 s2)
(has-space  v13 s2)
(has-space  v14 s2)
(has-space  v15 s2)
(at v0 l13)
(at v1 l1)
(at v2 l12)
(at v3 l10)
(at v4 l8)
(at v5 l10)
(at v6 l1)
(at v7 l12)
(at v8 l9)
(at v9 l1)
(at v10 l2)
(at v11 l7)
(at v12 l5)
(at v13 l4)
(at v14 l8)
(at v15 l1)
(at c0 l0)
(at c1 l6)
(at c2 l7)
(at c3 l1)
(at c4 l11)
(at c5 l8)
(at c6 l12)
(at c7 l9)
(at c8 l2)
(at c9 l5)
(at c10 l2)
(at c11 l13)
(at c12 l7)
(at c13 l10)
(at c14 l14)
(at c15 l12)
(at c16 l12)
(at c17 l3)
(at c18 l14)
(at c19 l12)
(at c20 l13)
(at c21 l1)
(at c22 l1)
(at c23 l7)
(at c24 l9)
(at c25 l3)
(at c26 l6)
(at c27 l14)
(at c28 l14)
(at c29 l7)
(at c30 l8)
(at c31 l14)
(at c32 l5)
(at c33 l0)
(at c34 l8)
(at c35 l1)
(at c36 l1)
(at c37 l5)
(at c38 l11)
(at c39 l3)
)
(:goal
(and
(at c0 l2)
(at c1 l5)
(at c2 l1)
(at c3 l1)
(at c4 l0)
(at c5 l0)
(at c6 l14)
(at c7 l12)
(at c8 l11)
(at c9 l5)
(at c10 l1)
(at c11 l9)
(at c12 l13)
(at c13 l2)
(at c14 l9)
(at c15 l0)
(at c16 l12)
(at c17 l0)
(at c18 l14)
(at c19 l12)
(at c20 l14)
(at c21 l14)
(at c22 l3)
(at c23 l5)
(at c24 l7)
(at c25 l3)
(at c26 l6)
(at c27 l8)
(at c28 l8)
(at c29 l9)
(at c30 l3)
(at c31 l11)
(at c32 l14)
(at c33 l4)
(at c34 l12)
(at c35 l0)
(at c36 l11)
(at c37 l3)
(at c38 l4)
(at c39 l7)
)
)
)
