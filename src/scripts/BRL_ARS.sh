#!/bin/sh

TARGET=$2
MESSAGE_TITLE="Western Union Companion - By Victor Gutierrez 🟢"
TARGET_CURRENCY="ARS"

curl 'https://www.westernunion.com/wuconnect/prices/catalog' \
  -H 'authority: www.westernunion.com' \
  -H 'accept: */*' \
  -H 'accept-language: pt-BR,pt;q=0.9,en;q=0.8,en-GB;q=0.7,en-US;q=0.6,es;q=0.5' \
  -H 'cache-control: no-cache' \
  -H 'content-type: text/plain;charset=UTF-8' \
  -H $'cookie: AKCountry=AR; AKZip=; AKRegioncode=; AKCity=BUENOSAIRES; AKAreacode=; AKCounty=; AK_TLS_Version=tls1.2; resolution_height=600; resolution_width=800; is_tablet=false; is_mobile=false; WUCountryCookie_=BR; WULanguageCookie_=en; AKA_A2=A; bm_sz=ED5041C6A07B4FD7B778830346E27523~YAAQTkostfCAmxaFAQAA/3DQKhJ/aMsEebzbpHewBLCZ7NwReWKD/fPKN/JUBag+1Dni+RQvyF6Xjtx/TpitYafOj6eu3ytV1jVivQ1k4CWnjvWfC0hpw7NdGsuyDD/GPEXki0590lyKiFhNBnOA1RxNmz/qQzvVQ6wLjarPx+3l50bvwtxtKc+evda8Tl6cBy46DOVNHx+8OB5mRTjfn3d0rMfu0Lxr8/oEQr/9lLVQzdEKpnjlUAOJzEqrUrdvg3skrOoAzxKcD76PtRl2WdBwrFnbCLs/bfAvOBwq/L2ZjvHKhYDu0lw=~3290437~3422256; _abck=39232BA13024CCE59B1FDDC26B4FDA09~0~YAAQTkostfaAmxaFAQAA4HTQKgkG91lr18U7s27+voJU0pCRctapBv99oP7xyU4a2+Nft9Zj04gqt57dYVNbBrhN56TqoEXoKecnbvFQOlqSaUpNPipj6PzdDYNLfm7n48z3s2crf0Ra/rmM3ZjGWiDAopVZX6cf66KeDKVa1B2nV5UY3Mq0CuRdN3EFUaoNj8gYO0ui+YcCmSvtt8BZLyrJG48wNfoHtiSioeiZxd+rwAwlFzIS86Ey4Z5nEOPQaKoBob4/rkvjVSxF3zMQFvddVt0hInO4YEewHJnXS4mqq8mq2WHKBM3ce+3rCPYOYXA/C20hSIk0+gLAq70RO4F5UwFJHQXBjiBqtNTnXPy54kSQEt1F2CfPCBCXGI4hvVYxxaR170duawYUEQ4MHqI4QxGtKP6HrfxoOLqV6g==~-1~||1-ygjUcChrYA-1-10-1000-2||~1671464076; bm_mi=658F302F485AA8391166D833BCBC5F43~YAAQTkostfeAmxaFAQAAu3XQKhJLR84YvRssEc6WXblUFftcCulF7qtMRgUA3KWtp5LNqbg8MtwBjUPJsAkyuzFK6jBCX/Jd20r0JVdNS9quDsXlQEEn1vcdEEMr7NHp0QordmJxq3ut9ppiHAI82bpO2g/JxIgFTU3M+OvbUS6HQ45CJmBR7pUL7747U5ZpBplwz5/JJrrfzDWdHX1ODclSI9N1UBavQy24+DGERjCppVkcg8UZDOS2rFbNsCSf5ZYHgDphvnszn2UFysSf6yOkVdtDXJfCl1Zz8gTQODwUU3wFMtzISZyXZyI8N2mRYsA65zrpITSq03zMahQXVgTBzXObK/2o2HLNWuU5l9ixT86Ko//nrqnwjDY67COPYw==~1; ak_bmsc=28A16593B793DCA308895007F6EA7365~000000000000000000000000000000~YAAQTkostfqAmxaFAQAAxHjQKhIJgK+d2QAqPnVfyKTod8Y1rKkDMoNCv0e8ET5NAfmgnnPTyEnxYq8uk56Gesyn9/1aAi3QPUzb/SsbQI54/jXydDE8UcXCuwpxqB8XFuaichutt2HMxixL1aWD2QSa37Vfht0RApRZ46nEeDCnu1CpuoLs3Vikt5k5KkWCBCAyDZ218q6ZX4hFK5mi7kqdfp75zwCpepCrlMnjItcknPoa5N8+aJdJIzBuMpS/oTwljBsJGLySYXZPDDc+Vk4fLJmadBz3J3tKkK0QXbhbNvrCu1o3UKoFfhO4KSk/29ppo4KHFAGm1DlMDT7n+Uv0trdn66HuVPKy/RyxnfvMQ/GzXRtn4wcCrOnt69bvcIAKM/maRFsMv8MDUUDIvxOEU3J1g/2dyaPdgVKL4zYarj+kTbrcgZ4X57HB9wARPfWMvaN/QKeNe67Zi6uXhBeXdWvFg5unC/6Jm8yaot/vUEGW2teharnEYWEzIDDVUWaKfLUU4kaLRM9buSWE0bymWHp/m8nOEVVCkr2pjxusMsHMSNk9ffl4qSq08zyURbSV; wu_device_id=9cb60e87-4e89-190f-0472-9794a91aec91; _evga_e61d=cd97f300195a1d7e.; utm_source=web-bookmark-or-typed; utm_medium=e-web-bookmark-or-typed; utm_campaign=organic-web-bookmark-or-typed; visit-logged-amp=true; user_txn_state=0:1671460583527; _gcl_au=1.1.192269537.1671460584; A4kgk7nd=A3Zy0CqFAQAAHFrDWyyHi2-geoWY0CLWbQrqro2avfxhbolVwduPxYBQ7aMcAbUsdyGucgBSwH8AAEB3AAAAAA|1|1|30971075290669f09f7cab3e7720396f4e7076cf; s_ecid=MCMID%7C10527002012958908521997717894336953425; AMCVS_AACD3BC75245B4940A490D4D%40AdobeOrg=1; channel_stack=home; affiliate_src_code=; s_cc=true; __qca=P0-1709286564-1671460584261; AMCV_AACD3BC75245B4940A490D4D%40AdobeOrg=1176715910%7CMCIDTS%7C19346%7CMCMID%7C10527002012958908521997717894336953425%7CMCAID%7CNONE%7CMCOPTOUT-1671467784s%7CNONE%7CMCAAMLH-1672065384%7C4%7CMCAAMB-1672065384%7Cj8Odv6LonN4r3an7LhD3WZrU1bUpAkFkkiY1ncBR96t2PTI%7CMCSYNCSOP%7C411-19353%7CvVersion%7C5.4.0; dtCookie=v_4_srv_1_sn_3073F541391C281667306FCD474D9E96_perc_100000_ol_0_mul_1_app-3A4f296d341a47bdba_0; A4kgk7nd_dc=%7B%22c%22%3A%20%22QlFhdEJVbGNteFpOVWFNSg%3D%3DBqkQDhhDW71kVDFYks8TO0BukrJZaEgpyonRi2sedxdPqH0ExkLSznYlZLZmON_pkgGHbSPPbVsY0U4a8IoTfzMtgWcX48g7sQP-wNdtcQ%3D%3D%22%2C%20%22dc%22%3A%200%2C%20%22mf%22%3A%200%7D; BIGipServerwudispatcher.westernunion.com=\u0021R9I9kfdPmEjamR89v++QYZNsXLq+H0jEKSIS5OESzLHbnvbL6nHRHY+cFwLtUCOyVes5SyOhkqGdqg==; amplitude_id_7d40b1ccdea38ded011affb5946a3ddd_project-leap-qawesternunion.com=eyJkZXZpY2VJZCI6Ijc0MjYzMzFjLTJiMjctNDRmMi1hMWQxLTc1NGNhNjcxZTU5OFIiLCJ1c2VySWQiOm51bGwsIm9wdE91dCI6ZmFsc2UsInNlc3Npb25JZCI6MTY3MTQ2MDU4MzM2MSwibGFzdEV2ZW50VGltZSI6MTY3MTQ2MDYwMTQzMCwiZXZlbnRJZCI6MiwiaWRlbnRpZnlJZCI6Miwic2VxdWVuY2VOdW1iZXIiOjR9; RT="z=1&dm=www.westernunion.com&si=f615b927-54e4-4590-92a5-457baa9d3ec4&ss=lbuwh22d&sl=2&tt=3w7&bcn=%2F%2F17de4c13.akstat.io%2F&ld=g8i"; s_plt=2.72; s_pltp=br%3Aen%3Awebsite%3Ahome; amplitude_id_4aec879ef8bf1823486c4338537ec441westernunion.com=eyJkZXZpY2VJZCI6IjljYjYwZTg3LTRlODktMTkwZi0wNDcyLTk3OTRhOTFhZWM5MSIsInVzZXJJZCI6bnVsbCwib3B0T3V0IjpmYWxzZSwic2Vzc2lvbklkIjoxNjcxNDYwNTgzMDY1LCJsYXN0RXZlbnRUaW1lIjoxNjcxNDYwNjAxNjc3LCJldmVudElkIjo2LCJpZGVudGlmeUlkIjo2LCJzZXF1ZW5jZU51bWJlciI6MTJ9; bm_sv=753221350AF28E644234219311AC3787~YAAQTkostRGCmxaFAQAAL4LRKhJ60iEOO/GwNYqQpL+jVGZQxUQoFsarC4oT89ZcYI7dN3V8p8/GoEcq+Z463ZUANXQKdTWEEu+6+OZF1mcOA5+4HvY6WpTAhX8ZHkPkFJy+C9HoLKGKG1qtTYvcytuMIwxKitTI0Q0sQG98Kj/O/bO7r0n2gXRIdRIQM97V6YMVNlDWpY1gvphuvFc5sRECcWg5jcsawfS6poc61b6PyyxDjTxCdfI9KMJbKJaKS8h12tnWbQ==~1; _dd_s=logs=1&id=42d0aa6a-d132-4d2e-8782-8dc671cd2ad2&created=1671460580847&expire=1671461551136; s_NewRepeateVar=1671460651150-New; s_NewRepeatprop=1671460651151-New' \
  -H 'origin: https://www.westernunion.com' \
  -H 'pragma: no-cache' \
  -H 'referer: https://www.westernunion.com/br/en/home.html' \
  -H 'sec-ch-ua: "Not?A_Brand";v="8", "Chromium";v="108", "Microsoft Edge";v="108"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54' \
  -H 'x-nyupe9cs-a: _yTLMSygXQ5zWUFAGsbVeZdGpW0P3s3fTGHkdLs6M947W1rIQRLZQmoYk7ksOpSY67v7kdH2wZIPO-z9qkK7QDpdIXtlgDYz5z8c6FDtXpvwt1F45YjbrkzTTP0-lRy=Yeid62ru9hiSuZ6-_3YKJYdsiqfw8Er1RJTy=DPhJ3nsbrtwfHCWcHSyt8yIg__icQ8qrm6MyhFweNiY5E5kGgihtuCNeCjQ2-DJV274Sv3OMrRc=S3Pb8w9ksOSzVP5-zFP0s1VFsX2VKSBmDZ6npE6zEIO=GGrN7ysASyUllPi5mvLin7y3mKqTpRNr8m6WtgDWl9hZLLV9zWCbzNVLauuKoXorTIdB5dglw5_4B8hDblLs4SIc5EYNP1Bs_1SVCXs0fAt3M8OB8kl82CUM-M-dWRUPve3t4aUZjHytIzdYgtLgoKUYK28BSOEv3XmNYdBSGETpwP5QIoIJdouyd=p7SMtKA7-9zXFlnJEQzH-iz2DrWYo=SArVkr_fYUnYYzFzScz5N3HwJnFeK2QcLS-XilB_y38GIQKPc51uDrvqeqcIMpRf7BHOiK8rgnXc0vkJMvXELHcR8jmUNN5ZIb_OtRK-JXBbXV9kFiJafC3GQO4-1lMbPeaeSfyz3fXHCTUT5dimydRTSePynyhtRVh8smImBWJlnsLr7=-WjpJYH4N8r0Qh3g0C9ybjvnS2UKLw1z4ODzv6WTbL4eqSVAPXYcurOIFQbUP2XgNDM251_f0HgSWQMbkjCqy1vIQ3apgn6ywqVSXeXrZNElHI3gvv6cj-0CMQdHOeRt2D9fsFy3r746lJMwdsDr6Ph6y1v45GOPq7b9tw8Y_o0PJNqXDRlmpA2WeBTtwBt3TDwWoyJGr59wXCErm=8tlPO-ldvONwFnOc4J5LukUHmqoym6hTt-ByF4LCg7CBGOaqI1EwcNm7XaLQuyNBmlR5kbKXmzcXaSDsX4lrIiRzqJlpSLshqIf-1N7Q=zl2fQSWQv5JpegNmHWvryXH9F1uRlY2XA5kTGv72Cfbq8q7lyaToEIfjbKsk=myK9Ia5VHibI4NYpPPLsm1gldgWFhNbBfX6RUAG=h2226LIRqguBkVJsqGCKp0H72fiFd-ebkdFV361CY5a6R2UnKD0JoufNFhVzLtaAVt0AKvAT86ZioRZAVQTgNMyMLwl7glGqqwShk5GOe593L5ikfrfR0qk7OQeQ_645QnHzM7cHmCSQKBwFhaKsT_3DFiqFOT8lF-591Te8EfDqV2o20EtrXuabgzQH=iKCwKmKy3k3k5qQvn_f=YrQt69je2dhHa2JD91so-UrNaQzgheQU4msEt10LzqWCg9g7G1oAuDk77KJ9SdiPzHSqTsFLAjt-z6d=MEJV7_58f97WCEeWY0AI_VFD6PowjJV0zkP-uUS4pkSL8SzWMJH6A_-mRGTg61BXCrqmShcHWERcHOCvs1py55599nopBvsjeRUsHo3iFtc1i-tZjzRLQz_R45QsCiDQYwu0WreIFmhqToCN2RYqKJRRkpFGTpjc31kWA_7b-lwY5dnyDoFa5oOgoMGoZurpdE=h6wTvYdhCVI7gg2piP_5amhjqSE0MPlLoYAsZ1g8PTkJugMt91BZl3PdkFIpmBIsI2LzQH2w_rchEcDAaSNHjWG_CMLDgOrL1QjaUDDQ1=5IM8oAIyP23UkkzjKbV4OI-N-TvShDiaHiDnYr14a0KHDp7ae2QwDPSEIawbIsbgu_3iDYi2eFFK-kcKHA6tqQHSCWWSP9Dn86won8YJ4bPZMkr29OQPQJ8mUjVDtXdPsasU4P5FTQqIQiLcmsVuzIzm=hBD8uPpvFA_hIC6wTR=KqDCoQKR4SjOct01pq7kYbK50569QnNYlk1FncTSUl7WmfO7N6yD2aSY2QLpOqkJZLCVwFykjU4a3yMRmKw7ybw7jsDES92yYk3LWU4T03OTMBPVOODgQig5U211Ae6I9Fma_Zl4rPkMI9=r6BqtHIcOPu783ugHgL9Y5clV2PvmMFL9zyNIZJugR_58_lTJ48bqvECkrD-LswFFk5f_BUYE6R8B9A=N-gbZ6HKOk4nQt=wQ0XrkpVheEaIN_bs6BIQvglCfIoDpNeDtoZQzoF_dk8upSvMdPDZsqL51ejX3-f2kmaN2ymiscgTQ_y0OuW9YNszkPpzg1TPFlhuYjXzOmBKDd=KNoj0U53EvFOzM2VEwHCSGbl0hbdEwb2MY299PWVGV7dvNwOo=9Qlv8PFv1RtmvnDFa8eiYJ7fCUpfL5Mnncgvo1=iWs-MqtiDHgpnz2r3plZMepR0qQN7q0FghUPNkjcbntzjSzGSHHi-MVN6gYbfvPciblX_Xjh5S_wR-wvRosmaGnW-kKX9UfgrIli7VIgJmapRIIsnboJF3Zg83n6-grZ65VbQfNmKYKj=0jf5T4lQQw9wW-irhYyArAvtidQpcmCaBB4J2JtWi-UI459iBSjTgXkor0Bl0Y4Floa5d7uCuldUq79KvL7SdgeQFt8900Fio56yh82u3DtFOnRW-K78McOvBEpHYan7Ndba2EOSIW2HOvTQrYk3j7iOKdNKnQzDPnWtSmcUKKZmAC=BqFi8-X_mZ-Amlf02j7nDAFnYfhXoIeEUjuo5=t9AJK2sf_V6QSUPUZSNvdw98hEE2U=ulqpJjbMAemyf=Oc914n86bC-ii0PhD7s-PSX0_btHnPP9Tidkg79ReAvn-aRa=NVaNB_iiFJ-_YY7w4c_-6FudiU8wmrrlW8w3V_iczf35gBnf1WRBktvijV4kJW96RewA1d1XSzi7NlJ_3WSvwjWqmvFDsmuKP4wmnUQFLQZQvDs8nqG0IzKr8oTgiFbVl3JmC7PG57p=_cjzXQ9dnOmgm1DTZjZquQ1iTEotBAuaI203P7wsfOvdILgVIqi-a=ybYcn920_PtMmqym2rr-uh3wKTh8-tjGA_oRVXtZmomSW18aQFV_qWuHCtv4=rLOPIattZLagEjBJcRd_tzfojgdYImYlwl=wHlesN4zG9k85g=an8glKlvFyizFM2E9pwzjIczVzgXAC5Tc0eokBDB_zdyy-DFVrCraykA6ozhcSfRSfQDE5bsKVNB=sXXBgOqDFh-DCjM4eYh13Qof2gozJbzL59MeJ7kQ5gpbBz0vPlcDam_dm1X1UB0P2HwXhuMMmVz-qk-m0f5kHcMMZhpbja_u=-Kwu=M6ivbASyt8-4ie47DYlrG0U63o_v=YLL4ekPsU6OSEdDIG-LrYMLAH4KAnEsAYPhVlazNqzLwHiubZTAKrPu-qVNhSl-btSZ-WMWKnfeHvug1sYhBDgW1JnPJzbTk2SkCQ7mKetQ9DwIvLiyaHwzTkfWWIEc3TYrw8d988y2TujrepQpVkIP6KnLlPt_Su_khCZUntiPY1jL6gbywJadc42OC2zEqz-Q8S7PrjedRS5KvDfZCFsTVb_5y97CRSVtQ6wPAwKZ0jCUHrG=B7P9SbD6SgU=BhAYm8fMCnLs57VTuGORQRID1y9sUt8BhQIUI-rHOP=H89z6Bk_R4ov-BTY7mDcGr06pFh7kQbCqMm1YeP8DsKG5WH6oelMK9iQrBL_McQHuG5a4-t5Cn5=36l8NMMe2w1I0_oWGoSm39lK7Lf0eGDLwnbTMb_2lRcB7wOPaTEBPPNf0eS_mCe-zRq=l1HPvds9ibuPcpddzFlc7o5iwEZX=0cG0JdrbJgDjTMjF2VfNU6LE_avU8noQO7Cw6TC2a8sDCYkjVg13Yrpd2GC3s1hpBiEOSZyKePqqoufPTQXrva=_gNCGfraFS6aSFoEUG6IZtR_bv1tLXVTSm6Duy_9eo73r75VUpZyATmBg4IBuHZ1mwfyYSBUy1qfO95OASijgl94BOIsKf85pJqDQf7edmV5tJY-WgrcC4rT8JbQLIHOU3qi=Ffq7zRRJRcitjWg6OgthTLC53VDuZgmWOTiNKgmLQp9_KO_zrMFdp=wHaSsj-IfQ2TeeRB4rVWpqI7cLwHLca8MrLcnlQ49Hjr0a-0hEZgXCiKEAy95SYRYr-vIBOr204jh3hwJUQp4O6DSM=ZvafZjnIVe0WtUIWYqqA81=ZRMX2rLbrqM6I-Sv220pHA9GWVILsio_jUw8PnjQRjUjFWhRiVOKijOd_Iunkb9FnIi3QPBYuYa6mSY4mDi53D4fVAZaBvTpBZrRXpI=8pY5zY_RbkbG1PHWUpkW5G5fW4PI40tXnQBKGSKfTqTu1KrIf3-rznPUQP9-EWygtojCQ92_Y83Diht6-M4qeQs7g_fbVsR3pwHfagrCLSdemro-OiDrVcIcd_UFhCoiiIEeXzN8qEJuEvaA1rIic8v3tLm_RtyPnPZv4C6jU=FIt6iJktKUWLABkqvVM5l5TZHaePC9kczXEOa4yUpQqzLCfMPmH4NS9ARJKuku_pBDjlmd62V7c2bOSveGqWrPHN1GOvOyngITzd2XTsNnQZn33z6Z-UzRMpped9rd_=ciiR6gDMs3WEVDWlg7VIVqHNNW1am5icrMSHPRFT400J-bfC4mB-4gFJJFqliYB=b2FFi6=l=kBmw4MDyRtg4zWUw3JgooPciVX58n-s5UvIZJHmjSaqbfOLULrtoZ4_AVSQzCoiK1jYKYFyyXcsSS9l2JcoyCTG4P3EhLNIwnM3DYw4JSn2ScATSf1mm9w5t=anTP-3wG7wplmajqNWC_qkwD2pYjlvi1DgyIucAgvSErjnTkndVm5M11WV4sTSNLewAf6sS52Pf0wPUFiKJM04RhXYNe3U6w2QFA86OlQ4qkfi=f1lP1E_FjNNHOTdpJY-5QzdlW0yfDItoFyINAvrhuMJz2qpuEzQsD2yJ01hhnwQO_=0uIZ=u3V9b0w3JVga4PMNk4jtKkQIr600h71D=8sIBE9S4aYn5FIbUszU7DBHna6F2Lw6j3kVMRhoM4W2vLncv6ggib6Q5moFlOey8m_c5qpzh1VbqWwj2tEsQJBufoCL7CPZfy-ldQO=z5XtsJFcqT-7sahQRzajaqHeAjqT1sr_OaW-WYUyebX6U5pGM-Hmz_p4Za1j2mYtVVpELj10rw3CqX7qOVfG5FrYsS2oF2m1V_BoKrpjB3DWHslFdhHmfYBIIenHNUkgknJbFjib1pBdJNTXhATh=nnzGcbvYYdvqMw0HshRiUROgdC4eyYRadrqKUw2XiaXYL0HDqauWkgZTG7OtbMlvD6WZTwvJFulcA8-EsbWqV_DkcX9tWgGbGjtqXHMVIU6wa=JKbYT1tLzngju8yAKwi4Y4-9WCcemnQhR-UN_pHbnPrGZC3UrfsDMumhfjrC6vuaay1-NrIgb3sje7He4-p9c2euAj4C2LJzirGestMK9rGBBzXDkPJ7wOISMivN9XSysJ20=wgKApBkLa0Y0OdqaY3cKYXvHntNUrC0Hy7ehpDL5CTMLDKu1e=oNAuDbB69dEvbbB0L3RKRkj92XnvMPYanGyH_kLHN-kgwYOl=Y9vD0kyXTLXU4guhB-4R8w-oW_8ZaFF4CoyAZWGk-IUIQ5Aer2htMXCMy1GsFoMJ04D6eDdnBWe5-M6KJK14I4deeNo8UoUY5u090z9=5Hhot4QAWGE7DcdQNPLqUih4-ny8qlmq_Qpl9tkhuic_BsQehqHMU05u1w4z1r8mFI_aUdSynBH3H9TJO694=ilcldS2g5ClHQicFtNL9T_jiHbQzakrtuT9GfAMoOi=qCesgWBT-yGqypivePOBB_olVj7O1fV3WIImNptcCwzlbAUgH8mTotD1SMBtI4FayJLgO_6t1nTe6FrhW7v4H2oDWHMfzGhJo-2Prm3l29HOHs0uBLUB0LWSncQRgKz6n8WXmu_rQQOm_mM0rh4VdE1isdtEc9nDD_vMD_3D7RzesTTRnlpR-iJ9hojaa=1kI8iHCmzs5rqibiPkUbdVSufp=6538AajzuHS0KzyjcU5qqk56gcgVbk9JuXzkCkc7Bft4mm8dCUh1qQ2qmUyb398gw=nphdLkDrJIaXvT0ovdp02B6U_YqipSaJC' \
  -H 'x-nyupe9cs-b: h1ft98' \
  -H 'x-nyupe9cs-c: ACAyzyqFAQAA5RdO3NLPhZ0utn0xMGZ9ArM5xGnHuVSTQkdsJ1Kx2rzNQBZA' \
  -H 'x-nyupe9cs-d: ABaChIjBDKGNgUGAQZIQhISi0eIAtJmBDgBSsdq8zUAWQP_____JSxVAAKn8xRgIXgK0nuirkZLdRAA' \
  -H 'x-nyupe9cs-f: A_u10CqFAQAAraB05Wuenh_jZITKIp6hANRW05zeAVF8VF24fuIxufkDFhBcAbUsdyGucgBSwH8AAEB3AAAAAA==' \
  -H 'x-nyupe9cs-z: q' \
  --data-raw '{"header_request":{"version":"0.5","request_type":"PRICECATALOG"},"sender":{"client":"WUCOM","channel":"WWEB","funds_in":"EB","curr_iso3":"BRL","cty_iso2_ext":"BR","send_amount":"100.00"},"receiver":{"curr_iso3":"ARS","cty_iso2_ext":"AR","cty_iso2":"AR"}}' \
  --compressed \
  --progress-bar | grep -o '"fx_rate":[[:digit:]]....' | tr -d 'fx_rate:' | tr -d '"' | {
  read WUCURRENCYVALUE

  if test -z "$WUCURRENCYVALUE"; then
    echo "Current currency ($WUCURRENCYVALUE) value is missing, message was not sent."
    exit 111
  else
    echo "Sending message to target $TARGET"

    ### Storage

    if [[ ! -e "src/databases/$TARGET_CURRENCY.csv" ]]; then
      touch "src/databases/$TARGET_CURRENCY.csv"
      echo "BASE_BRL;PRICE_$TARGET_CURRENCY;DATE" >>"src/databases/$TARGET_CURRENCY.csv"
    fi

    echo "1 BRL; $WUCURRENCYVALUE $TARGET_CURRENCY; $(date "+%d-%m-%Y %T")" >>"src/databases/$TARGET_CURRENCY.csv"

    ### Storage

    curl "ntfy.sh/$TARGET" \
      -H "X-Title: $MESSAGE_TITLE" \
      -H "X-Priority: 5" \
      -H "Actions: view, Ir para a Western Union, https://www.westernunion.com/br/en/home.html" \
      -d "[$TARGET] 1 BRL = $WUCURRENCYVALUE $TARGET_CURRENCY" \
      --progress-bar \
      --fail

    # Data Analysis

    echo "Sending data to data scripts with $TARGET_CURRENCY parameter"
    python3 -u "src/data_scripts/plot_csv_charts.py" "BRL_$TARGET_CURRENCY" "$TARGET_CURRENCY"

    # Data Analysis
  fi
}

exit 0
