(define (problem p4_hosts_trial_16)
(:domain caldera-split)
(:objects
    id_bfdomaincredential - observeddomaincredential
    id_bbdomaincredential - observeddomaincredential
    id_tdomaincredential - observeddomaincredential
    id_xdomaincredential - observeddomaincredential
    id_pdomaincredential - observeddomaincredential
    id_ddomaincredential - observeddomaincredential
    id_ldomaincredential - observeddomaincredential
    id_hdomaincredential - observeddomaincredential
    id_bihost - observedhost
    id_cdhost - observedhost
    id_bwhost - observedhost
    id_bphost - observedhost
    id_ctschtask - observedschtask
    id_crschtask - observedschtask
    id_csschtask - observedschtask
    id_cqschtask - observedschtask
    id_dbfile - observedfile
    id_czfile - observedfile
    id_dafile - observedfile
    id_cyfile - observedfile
    str__patricia - string
    str__bg - string
    str__v - string
    str__cc - string
    str__f - string
    str__bd - string
    str__u - string
    str__robert - string
    str__q - string
    str__james - string
    str__linda - string
    str__bt - string
    str__barbara - string
    str__ci - string
    str__m - string
    str__cb - string
    str__cj - string
    str__ca - string
    str__mary - string
    str__bu - string
    str__alpha - string
    str__j - string
    str__bv - string
    str__ch - string
    str__n - string
    str__z - string
    str__bh - string
    str__bm - string
    str__r - string
    str__b - string
    str__bn - string
    str__i - string
    str__bc - string
    str__michael - string
    str__john - string
    str__bo - string
    str__y - string
    str__cl - string
    str__e - string
    id_adomain - observeddomain
    id_ckrat - observedrat
    id_corat - observedrat
    id_cprat - observedrat
    id_cnrat - observedrat
    id_cmrat - observedrat
    id_cetimedelta - observedtimedelta
    id_bjtimedelta - observedtimedelta
    id_bqtimedelta - observedtimedelta
    id_bxtimedelta - observedtimedelta
    id_cwshare - observedshare
    id_cushare - observedshare
    id_cxshare - observedshare
    id_cvshare - observedshare
    num__43 - num
    num__51 - num
    num__44 - num
    num__58 - num
    num__57 - num
    num__36 - num
    num__50 - num
    num__37 - num
    id_badomainuser - observeddomainuser
    id_bedomainuser - observeddomainuser
    id_sdomainuser - observeddomainuser
    id_wdomainuser - observeddomainuser
    id_kdomainuser - observeddomainuser
    id_gdomainuser - observeddomainuser
    id_odomainuser - observeddomainuser
    id_cdomainuser - observeddomainuser
)
(:init
    (knows id_cdhost)
    (knows id_ckrat)
    (knows_property id_cdhost pfqdn)
    (knows_property id_ckrat pexecutable)
    (knows_property id_ckrat phost)
    (MEM_CACHED_DOMAIN_CREDS id_bihost id_tdomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_bihost id_xdomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_bphost id_ldomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_bphost id_xdomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_bwhost id_ddomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_bwhost id_hdomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_cdhost id_hdomaincredential)
    (MEM_CACHED_DOMAIN_CREDS id_cdhost id_xdomaincredential)
    (MEM_DOMAIN_USER_ADMINS id_bihost id_gdomainuser)
    (MEM_DOMAIN_USER_ADMINS id_bihost id_odomainuser)
    (MEM_DOMAIN_USER_ADMINS id_bphost id_kdomainuser)
    (MEM_DOMAIN_USER_ADMINS id_bphost id_sdomainuser)
    (MEM_DOMAIN_USER_ADMINS id_bwhost id_gdomainuser)
    (MEM_DOMAIN_USER_ADMINS id_bwhost id_odomainuser)
    (MEM_DOMAIN_USER_ADMINS id_cdhost id_badomainuser)
    (MEM_DOMAIN_USER_ADMINS id_cdhost id_sdomainuser)
    (mem_hosts id_adomain id_bihost)
    (mem_hosts id_adomain id_bphost)
    (mem_hosts id_adomain id_bwhost)
    (mem_hosts id_adomain id_cdhost)
    (prop_cred id_badomainuser id_bbdomaincredential)
    (prop_cred id_bedomainuser id_bfdomaincredential)
    (prop_cred id_cdomainuser id_ddomaincredential)
    (prop_cred id_gdomainuser id_hdomaincredential)
    (prop_cred id_kdomainuser id_ldomaincredential)
    (prop_cred id_odomainuser id_pdomaincredential)
    (prop_cred id_sdomainuser id_tdomaincredential)
    (prop_cred id_wdomainuser id_xdomaincredential)
    (PROP_DC id_bihost no)
    (PROP_DC id_bphost no)
    (PROP_DC id_bwhost no)
    (PROP_DC id_cdhost no)
    (PROP_DNS_DOMAIN id_adomain str__b)
    (PROP_DNS_DOMAIN_NAME id_bihost str__bm)
    (PROP_DNS_DOMAIN_NAME id_bphost str__bt)
    (PROP_DNS_DOMAIN_NAME id_bwhost str__ca)
    (PROP_DNS_DOMAIN_NAME id_cdhost str__ch)
    (PROP_DOMAIN id_badomainuser id_adomain)
    (PROP_DOMAIN id_bbdomaincredential id_adomain)
    (PROP_DOMAIN id_bedomainuser id_adomain)
    (PROP_DOMAIN id_bfdomaincredential id_adomain)
    (PROP_DOMAIN id_bihost id_adomain)
    (PROP_DOMAIN id_bphost id_adomain)
    (PROP_DOMAIN id_bwhost id_adomain)
    (PROP_DOMAIN id_cdomainuser id_adomain)
    (PROP_DOMAIN id_cdhost id_adomain)
    (PROP_DOMAIN id_ddomaincredential id_adomain)
    (PROP_DOMAIN id_gdomainuser id_adomain)
    (PROP_DOMAIN id_hdomaincredential id_adomain)
    (PROP_DOMAIN id_kdomainuser id_adomain)
    (PROP_DOMAIN id_ldomaincredential id_adomain)
    (PROP_DOMAIN id_odomainuser id_adomain)
    (PROP_DOMAIN id_pdomaincredential id_adomain)
    (PROP_DOMAIN id_sdomainuser id_adomain)
    (PROP_DOMAIN id_tdomaincredential id_adomain)
    (PROP_DOMAIN id_wdomainuser id_adomain)
    (PROP_DOMAIN id_xdomaincredential id_adomain)
    (prop_elevated id_ckrat yes)
    (prop_executable id_ckrat str__cl)
    (PROP_FQDN id_bihost str__bn)
    (PROP_FQDN id_bphost str__bu)
    (PROP_FQDN id_bwhost str__cb)
    (PROP_FQDN id_cdhost str__ci)
    (prop_host id_bjtimedelta id_bihost)
    (prop_host id_bqtimedelta id_bphost)
    (prop_host id_bxtimedelta id_bwhost)
    (prop_host id_cetimedelta id_cdhost)
    (prop_host id_ckrat id_cdhost)
    (PROP_HOSTNAME id_bihost str__bo)
    (PROP_HOSTNAME id_bphost str__bv)
    (PROP_HOSTNAME id_bwhost str__cc)
    (PROP_HOSTNAME id_cdhost str__cj)
    (PROP_IS_GROUP id_badomainuser no)
    (PROP_IS_GROUP id_bedomainuser no)
    (PROP_IS_GROUP id_cdomainuser no)
    (PROP_IS_GROUP id_gdomainuser no)
    (PROP_IS_GROUP id_kdomainuser no)
    (PROP_IS_GROUP id_odomainuser no)
    (PROP_IS_GROUP id_sdomainuser no)
    (PROP_IS_GROUP id_wdomainuser no)
    (PROP_MICROSECONDS id_bjtimedelta num__36)
    (PROP_MICROSECONDS id_bqtimedelta num__43)
    (PROP_MICROSECONDS id_bxtimedelta num__50)
    (PROP_MICROSECONDS id_cetimedelta num__57)
    (PROP_PASSWORD id_bbdomaincredential str__bc)
    (PROP_PASSWORD id_bfdomaincredential str__bg)
    (PROP_PASSWORD id_ddomaincredential str__e)
    (PROP_PASSWORD id_hdomaincredential str__i)
    (PROP_PASSWORD id_ldomaincredential str__m)
    (PROP_PASSWORD id_pdomaincredential str__q)
    (PROP_PASSWORD id_tdomaincredential str__u)
    (PROP_PASSWORD id_xdomaincredential str__y)
    (PROP_SECONDS id_bjtimedelta num__37)
    (PROP_SECONDS id_bqtimedelta num__44)
    (PROP_SECONDS id_bxtimedelta num__51)
    (PROP_SECONDS id_cetimedelta num__58)
    (PROP_SID id_badomainuser str__bd)
    (PROP_SID id_bedomainuser str__bh)
    (PROP_SID id_cdomainuser str__f)
    (PROP_SID id_gdomainuser str__j)
    (PROP_SID id_kdomainuser str__n)
    (PROP_SID id_odomainuser str__r)
    (PROP_SID id_sdomainuser str__v)
    (PROP_SID id_wdomainuser str__z)
    (PROP_TIMEDELTA id_bihost id_bjtimedelta)
    (PROP_TIMEDELTA id_bphost id_bqtimedelta)
    (PROP_TIMEDELTA id_bwhost id_bxtimedelta)
    (PROP_TIMEDELTA id_cdhost id_cetimedelta)
    (PROP_USER id_bbdomaincredential id_badomainuser)
    (PROP_USER id_bfdomaincredential id_bedomainuser)
    (PROP_USER id_ddomaincredential id_cdomainuser)
    (PROP_USER id_hdomaincredential id_gdomainuser)
    (PROP_USER id_ldomaincredential id_kdomainuser)
    (PROP_USER id_pdomaincredential id_odomainuser)
    (PROP_USER id_tdomaincredential id_sdomainuser)
    (PROP_USER id_xdomaincredential id_wdomainuser)
    (PROP_USERNAME id_badomainuser str__michael)
    (PROP_USERNAME id_bedomainuser str__barbara)
    (PROP_USERNAME id_cdomainuser str__james)
    (PROP_USERNAME id_gdomainuser str__mary)
    (PROP_USERNAME id_kdomainuser str__john)
    (PROP_USERNAME id_odomainuser str__patricia)
    (PROP_USERNAME id_sdomainuser str__robert)
    (PROP_USERNAME id_wdomainuser str__linda)
    (PROP_WINDOWS_DOMAIN id_adomain str__alpha)
    (procnone)
    (= (total-cost) 0)
)
(:goal
(and
    (procnone)
    (prop_host id_cprat id_bwhost)
    (prop_host id_corat id_bihost)
    (prop_host id_cmrat id_bphost)
)
)
(:metric minimize (total-cost))
)