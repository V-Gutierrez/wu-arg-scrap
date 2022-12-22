#!/bin/sh

TARGET=$2
MESSAGE_TITLE="Western Union Companion - By Victor Gutierrez 🟢"
TARGET_CURRENCY="USD"

echo "Running Task for pair BRL_$TARGET_CURRENCY"

curl 'https://www.westernunion.com/wuconnect/prices/catalog' \
  -H 'authority: www.westernunion.com' \
  -H 'accept: */*' \
  -H 'accept-language: pt-BR,pt;q=0.9,en;q=0.8,en-GB;q=0.7,en-US;q=0.6,es;q=0.5' \
  -H 'cache-control: no-cache' \
  -H 'content-type: text/plain;charset=UTF-8' \
  -H $'cookie: AKCountry=AR; AKZip=; AKRegioncode=; AKCity=BUENOSAIRES; AKAreacode=; AKCounty=; WUCountryCookie_=BR; WULanguageCookie_=en; _evga_e61d=cd97f300195a1d7e.; _gcl_au=1.1.192269537.1671460584; A4kgk7nd=A3Zy0CqFAQAAHFrDWyyHi2-geoWY0CLWbQrqro2avfxhbolVwduPxYBQ7aMcAbUsdyGucgBSwH8AAEB3AAAAAA|1|1|30971075290669f09f7cab3e7720396f4e7076cf; s_ecid=MCMID%7C10527002012958908521997717894336953425; affiliate_src_code=; __qca=P0-1709286564-1671460584261; fp_token_7c6a6574-f011-4c9a-abdd-9894a102ccef=LMgsJRcfyMg7FunMOmfpI6X7duB2Acn9POKakafZbqk=; QuantumMetricUserID=fd6f2bb6039af967626dfd35a3ba712a; lastCountry=AR; lastCurrency=ARS; lastFundsIn=WUPay; userIdentity=existingCustomer; user_txn_state=2:1671629693746; AK_TLS_Version=tls1.2; resolution_height=600; resolution_width=800; is_tablet=false; is_mobile=false; bm_sz=3915B5A5D1B077B9EA552AD262D7ACA8~YAAQROocuIkcpwaFAQAAEN8+OhIbBfX/ZuRMVMsFkrxQk8P/EtiQdY37UTDAsEVNImQlTb9R+uIJ9oTMANLIu7yqY3Bgqm0VRyX1qQUiU+Lz+0IR4t2crdncd9GWegIqR8ivjsi5gwflIZT5vajEZwsUt3SutzWb+0OYlxUfgieQIE11nm3KeLShhI2e5pp/YYfuMfQLiOyDYv+uXGNcZWBUysTDwR4xkm5AWI1+BAlVHgJS+Xk+of/m7ql73V0FSzQrv84GyHR6lfw1eMLlnZe4In0UCj8zVqi8S/xXHwJdGbAnoP8GKLI=~4534585~3618611; wu_device_id=674079db-b547-5c9b-1682-44500d9232f5; visit-logged-amp=true; AMCVS_AACD3BC75245B4940A490D4D%40AdobeOrg=1; AMCV_AACD3BC75245B4940A490D4D%40AdobeOrg=1176715910%7CMCIDTS%7C19348%7CMCMID%7C10527002012958908521997717894336953425%7CMCAID%7CNONE%7CMCOPTOUT-1671726679s%7CNONE%7CMCAAMLH-1672324279%7C4%7CMCAAMB-1672324279%7Cj8Odv6LonN4r3an7LhD3WZrU1bUpAkFkkiY1ncBR96t2PTI%7CMCSYNCSOP%7C411-19353%7CvVersion%7C5.4.0; s_cc=true; buildVersion=R22-12.2.1; rxVisitor=1671719497208UN10K419S8V2JO2UBMR099VGPR6Q7CO0; visit-logged=true; lastFundsOut=BA; Mn-Tb-dg=1%7e1671719541%7e533bf9ad; SMLoginViewToggle=true; SM_Start_Cookie=true; abandonedCartToken=10befe9f167f8d8ce9b5c3fc7891d424; __ssid=9609348f42f15f82481811bbadb31bc; s_sq=%5B%5BB%5D%5D; sc_links=br%3Aen%3Awebsite%3Asend-money%3Asendmoneywupayreceipt%5E%5E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20; dtLatC=50; rxvt=1671722270246|1671719497209; dtPC=1$120465088_628h-vKCNVUSPCRHSDFHDPQUUCEIUWSGKKURQF-0e0; dtSa=true%7CKD%7C-1%7CPage%3A%20receipt%7C-%7C1671720540863%7C120465088_628%7Chttps%3A%2F%2Fwww.westernunion.com%2Fbr%2Fen%2Fsend-money%2Fapp%2Freceipt%7C%7C%7C%7C; _abck=39232BA13024CCE59B1FDDC26B4FDA09~0~YAAQTkostXbqpBaFAQAAAgOsOgniONF+CJWnf47raHTJMgV7lGPcRcvPKu5ZVPpjGE+znf3C7TQ68R7Hiu1ySFAm+E9ATm/8Q6kI5yOokVlZ5pvdgAkhjiSWG0RW4ekMQS55Ug+dOzY6507sw5WOE4rKd3tyPo2z9iVxLzS7KlBetm9gpiB4IQN5/+PgL5PnpzkHsaXAI51XahLOUvD590dLto+bNTJEN2NMdrqvHf6dMu9WdxCgSxpzndcB3N9RtJUgei6DQWBhE1JWs2MunypT2Wu1k8NawjmYUFfmFLnKD7pIaxMRXpkcZ75xni+JQN7ywMfHG3LnqgQALmWTK78O6I6krdRiNl6gqQqx/XYt7REw9atjX8jdljlU0mjkDb49uQWo6t0Qt1yKtS3XVcXum+8JRe/K2D7rsLECmA==~-1~-1~1671730187; utm_source=web-bookmark-or-typed; utm_medium=e-web-bookmark-or-typed; utm_campaign=organic-web-bookmark-or-typed; channel_stack=home|send-money|home; AKA_A2=A; A4kgk7nd_dc=%7B%22c%22%3A%20%22ZjZoeVAxS3lmRmVUVHRTWg%3D%3DU9AetJIw1qPUBsl6XnwOQm3CKriUFB8ccr8tIDIKVrZkX1nLbAkxXkzBDHmCf1q0tyeG0vFVltzj_TnUCkl35NUi-2hY0k_IKEDNOrH5pg%3D%3D%22%2C%20%22dc%22%3A%200%2C%20%22mf%22%3A%201%7D; amplitude_id_7d40b1ccdea38ded011affb5946a3ddd_project-leap-qawesternunion.com=eyJkZXZpY2VJZCI6Ijc0MjYzMzFjLTJiMjctNDRmMi1hMWQxLTc1NGNhNjcxZTU5OFIiLCJ1c2VySWQiOm51bGwsIm9wdE91dCI6ZmFsc2UsInNlc3Npb25JZCI6MTY3MTcyNjYzMDI1OSwibGFzdEV2ZW50VGltZSI6MTY3MTcyNjY0NjI1NSwiZXZlbnRJZCI6NywiaWRlbnRpZnlJZCI6NTUsInNlcXVlbmNlTnVtYmVyIjo2Mn0=; amplitude_id_4aec879ef8bf1823486c4338537ec441westernunion.com=eyJkZXZpY2VJZCI6IjY3NDA3OWRiLWI1NDctNWM5Yi0xNjgyLTQ0NTAwZDkyMzJmNSIsInVzZXJJZCI6IjMxMzg2NzQ5NmRmNzc3ZWZlNDNjZDM1MjBiMmIzMmYxIiwib3B0T3V0IjpmYWxzZSwic2Vzc2lvbklkIjoxNjcxNzI2NjI5NDc3LCJsYXN0RXZlbnRUaW1lIjoxNjcxNzI2NjQ2NTQ0LCJldmVudElkIjo5OSwiaWRlbnRpZnlJZCI6NTYsInNlcXVlbmNlTnVtYmVyIjoxNTV9; bm_sv=57F8875322ED198DB7CCB102608BE6BE~YAAQTkostajqpBaFAQAAXUysOhLmAUogiVC2cmQfS3WD3V/6okzWRDvJN3Qnuqg/0SRWca4JV+3ZQaCJFwN/+WEiWMX7K85sqU/T75CoRGMcO7OEGYHkzm+1jmRKvqr234KMIct5P6vxjcZXMWlFvc4ugRhvnKQPsZwEvaIKmaGEIll0ypZHW3tARne4wdBG7p/CA+JXdBlO/j57qTP6WWAlBHNj31jGYu5n2bL4+HN6BoBuOkjtZW3OcuQBfVBlpRbJSpaX2w==~1; s_plt=2.39; s_pltp=br%3Aen%3Awebsite%3Ahome; dtCookie=v_4_srv_2_sn_D83BD62E42EECA185771DD480D9B3CDE_perc_100000_ol_0_mul_1_app-3A4f296d341a47bdba_0; BIGipServerwudispatcher.westernunion.com=\u0021EAUb7h5fH5mo8KA9v++QYZNsXLq+H1ZoXh81o9B30g+YzFCN6cZzqsmHjH+Cfnk0xuddFCVeOuBjFA==; RT="z=1&dm=www.westernunion.com&si=f615b927-54e4-4590-92a5-457baa9d3ec4&ss=lbzavci3&sl=2&tt=3yv&bcn=%2F%2F17de4c18.akstat.io%2F&ld=fn9"; _dd_s=logs=1&id=05b3afdd-c486-425b-9958-763a7c0284ea&created=1671726626706&expire=1671727579157; s_NewRepeateVar=1671726679171-Repeat; s_NewRepeatprop=1671726679172-Repeat' \
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
  -H 'x-nyupe9cs-a: Hxxkt_6jM3l70foxJgfTYheBox52vWEDxuDZFxht6qnsrA2eqEK5o5EJees_pLkb_YCiPCXp_uGqJsxOOP1RUSZPAt9jgXbIbulstHmMtncy_trBrf_Lxv022HSaYHhxHIYR-CWE4nYKFqbHqHIANMWm_N58I9c3EmNS74mRj5NEoUFoUOHsEgQZyVOQ8aNVSPy93yC6SGHF36JL5v1ryWq3UzNudC_APUtCB-eVZZnrMc1kpK4Dz7Mp0oPqKvkt60IG6J-hGrAjpJCc6l-h_1-L7037S9NosvZjfhCiulXBcjjf5euD-_DHmJxryYVj24jARaUxy6lvD0NeWIGqgQtvu-dOYrP5b2DjkAlljtQI6pNDOHCIYn2UuKOVbCigvPPFYU8X6-Cg_3phB0a04QezFfmvl-gP82cRwzHzDhPcst6aR_LnhYwzHoOkKJOfLb75XiZ14vsjT_Kqt_TAURypiiSehrc_UWBso30yWNYhVvABmRZ4OSrmPxJBzt_JrUJ1UB_gMp301k7LXc-ZmETJDpF9TMD6EvUu0GAPlT3u9KeJnBcme2yjbPOKAGLVOluWUkqH2nJq69eADBrMcl9d5npokhdsT3pkV0ZFErjtE3mOg7o5-XDVENjEc3I4CGa-Xmq83KI4YBOz4Qj1zWS7QJflAm1LkQmTa28xH6wfaIxZf2yqv2McUjOYGbE1NV6lkSlfPBNPErP6kKps_jrKuVIMrmOPMPPfpsYgHHtgfYEJl_Lk4Te9fgW-qTPChx5_CBirnTodFSry7VCmCm9UIQ6UZkNakSAmzZbD9RQvkLX3CelbZxsIdjTfJcaQwTp6q-QDR5Vn-sCiOGJt2WpFJRoxug6Msqhj8yGx6E6nfvJV60CZq9uBl2BTLUFBTaniitEjPEl-KzeIRq4j_gj1ruWr7BAJ3o4gLhAjh5CoQdxm8HUrMf6Vu_DnN_ELCno4RcMS0pK4kyq0XWHdKOuQvXeKPLR1dVCeGhG7bhOn-2SqAZaownq83v0rlUDSbtGm8eW_7WUm2rnm8ihFE6g90ocHJMgfaNgEO5CaUsXP--S9NeFAdPnXpHfsRpppjFtvyhqBmzS6hcOFTWha8LO2P1QWuUlsyO4DlMs_yXEYi17qshL-9SBt4CuYqs42UtDXRrOPV0sFBjvfpFLd4jSwg-mqIJvGhRgRWaXAzwsBIlJr6tQmKcMjAuaGdUaCqy4emAoLjCZXsr0blCQEE7zAtKhESM3iYDt8pOvo_W7uBN4iSKiHtCjiOW74QoBSG_CjQt8KiKkppTKntAjyDxOA-TnvM6C7edIRI3WziktX0BC40MR6svRSG3VJpZVvRE8MReErvXfIrZQPf0I-LIXVvPvOZgoiojxSxuRwUhGNrBBCzixNTzOmVnzDQZ5Mr7gOPsFQInDsvR2cP5ebuwGvU5G3HNcjt7SVjYj0RzfAmdd6n0HLZBI8H2Y1p8AjyXuL2TeY7AzcQw0hnab0JjXPJ9cNH0U6QPWHxEpqbPS8vrQCjFYi6HWbZV_wWtCuGpfm3_Wfo3AbOVz8mLc9EBLXkU0EvB684NqeIsTDtrvJ_bWT49O2deXaTRZOxEoCAlS4QiJfJH8HjNEZDe2vWP5yu40UB69x6hLmM2l29xZFyaOXjFNlkBOg0sR7JaRN73dOy9Z6rqs6kb5rPe-rkB_wPC_7n6vo8GshFwzIzMgTLkrSkl2_0_zweRssmv4SUtcWNX49PShiSkjS6YB0V13Y2nTX5HV9lf32p4QYK7Z4riEpGUfe9fhDijvEjSLMpd872mD2QXHBl7wB4ylzbyrzjDnniPaQuNt5ll4WYzO5iNI0TXu__J3H9pTfEA1y6AjymzOj_MRpImZlKDIFQQO8dUZZUcLrmd-IC6WMF_UFi9EpM3dMGe4vlnyI9khRhF-8uflDmbeu2hh8y-dBPksYagyIroFjV3HmrEAHjvoWbgCHL86xE3PyTjh6AWRvgXHboWxXZhw6ZsOt31Dka4_r763jZzk-qJAcbic7_kWXvsXREpCAthzATTMVLnqrEzMFk1y006znopotlfAE9lYXSEn0Qd5Os9w-Rg6o3SJ-68MEetvJSrEt2BiJszE-TnMLM9kQ4ProDc2RNXC7LwSulYdKIPwlhCpuxfvEFa0oteSsxPxQ5dGhzydwyVsLYcd07VLO-Y0hVXaLJlT_cKVYG7Pf66sjjcSdUjSf5B3l7Ahju-8KdiiLmX-d_Hxw0BiCjh2XcEpG8D3LB4C9xe6TJH6aFm6G1byUHVmO6mgTADs7qEAtBm2Oj-RrTmmLqbBV4b0vVvkOgq6oSyWwNqlKK_Kmyko61aXU2MiFK061xq-tcQGJxqCNXAFHdTdJM1vEZLed1IoyZGT4mzyBgAa8wPjdauaXlwKvcv4thocB88V7M7ce3dWU5UAZsm4_umlelwwaSCgFqSnQ7ex2NoDK0GF4GahDCBSk_EO289CdN87cM7mQ03fQIb1zOBxH2i0JUBQWkB9JoCKqQR7N_wixwZ6uLlAbiB3cBFS0mpYphC75koo8nez5iwle9y_JexIN01Ejbx9GzjdPACPMx7XEhZCm9KU4TVSw0uQa33-aJjLZGDQWr7U8HbhP51GHW20njnNZpvdmkml5PGRhKfEHTwzfyOaT0pmCLe4K7-jD5qW_PU9QpAsukrU5PsU3HhAVbKgcKUDVTHxBtm6e93kQWG880_qrUMaDuodUB6qxu-cpave9l9ZJSD5w1OCd_MHYyoYSC7jc971SHMcO3iTNnc7vJL44RH24idZO48tk7gn5rSvRCumM9hhhvxKpGMbMX-kf2B0PWkQG_TTbPpNuzNcsgpbR5-9A4bbYiuiuC3AVR-jRPvokXXd227v9taVpuI19-hurqL9Oc4fAurnXM-NRw8tp2GIYtPENK4RiY8uEW7yNW4oUb8qHiWDLsmNA2w2t-94fTTeiU_FfzW7F1_OMa1otuE3S7OHYfZ3NCptKWJzXfnNuhV1SUHBvZYPYS5yEYZ8ADCMYfx_xntHyGNrdvT14j_LUx3oaB2fJ_My3RSeoDJL9iiiR1xyQWuqDHfdoRcYTOYqG4xhe4R_p8tOsiazsqdrTU0yLO4meW8Pq4GOU2YSMkaW0gos8SVwvlYNXm1diTvNKFUH5v2n_v31bRmoPpXoG3gU87ZQqDa2oRZeTy9mhWQJn1EnZcA5w9oe-vC6whXtS-E7OQTXplHh2LC7G0EkyhY0AqZeAs57gUncgJ8KByXkzz93xe9NP5NFFsCnPXZVaUcDIfkdJNjJvbO6v97GT3qMgXuOcdXDlWrflCiebS_3AEI2FBvniaQG4ogSNlI8OflKP4swZSrpDMGMTmXlSg-d9omWYKc-HLfu7GbBeaCwNTACBGIh8yTMjqd82YfCCMRtNo4cWCiPU1yxb9BbxY1nhzanrM2cqhYyrRMVxYHH4BeTwfiFgHWhPw1ef9EO47n5g_JW-amZfjjaM5JD1Y5lnSPa712Yoo3p5MVN6_pMTcXpWNefcU7U3c3t0iwUPvp-OXLTfAgjfns-sL__FSGXP2sL1nGFhV0at19MDVUl7bcavozDQ1VDvQgRyklYqct28knlhxGi3S54Qyw0TX_mFJpXsXTCN4Es-waudR5LacDdedMvwguGGz5kV3XqMLf_JbHmRReW18_I9QaGMwCwx3n43RvyYGDwCcqlJ_vY6MJqOLjoX0bUcLtzjJ-Iu9-oW_f-Pt1Vh0Rh5E883jZ1H83LuPVhGQTbxzmwFbriOvtqK0OQPzTsMgfREV_ct0sgj3vJ6A2lDZ0CrCKcTal_6IL0IjEsJEHnAbjjn9onOXIOjZBwFaK64c44utZVWJGNxhqpI9zfvpHEgnFzJnYge9B9ACwn16hU962x2blu10YN4sOVVRewWa-r8C5DVx2XwHzqCUFq9mcxmTYizPMcDoJl__pji62mlPY7tqSKC-Fqoto4Rn0UBvZLbgKzTz3KYou4uSXHmifqCg_Hb3erZvbUEIUpE1i2CcN5bDu1e9J6yArXYmymTVRhejN_Pugi8ZU_2TqP2ddDjBCZPJ9psvADHB06-X-oeYBJc-j3tskvlGxUWzz33ORK5dQ2C209Pe47N8nKCQeS4fDF-er7vmehLr_mDaQIHFmJM5xuvDPhaCdPVMqE5GNX5xUzl9S15MGbgze58rnXg--N_QyvGXZ6T04D1OoNkDVjLuBC06SQaOFq8RLHI2h1nzndHk6rQotR9U3s2QNHvllalqHy9tHAwbUM3bAkuxGBMHYwf7UO_Ja_c7FCdzacqFYFcEZ-PnRk3oGQGVQvTuhr6KGoTUKXUx9pP7Mra9gQ0wruNTuVuqkq-Y29l9YZFCKY9RV1Ox1kr7WS0Ng_OEvXHOV5RZxQVcq30xIGrMNkuvplWst_xvvsdHiEffdY1PRGrvOh1MN2fxixlH4JAbG1qzjoim0OsQ5XmeS4ZUQk-bFi0OHoun0B8e5XQOjSIg-i2fe15vPPa-km21DxHkNtkvw0A3O51QiV6XmYq2stz7YBEUdweCXk8uoXKdq7L4S8NYY4g1tEgjDol2bU1U9DySbmt3gDWAWV5o4TRapaDyEpTHzNtRkSCBY-kehdJeiutuXsbZ3Hio0ep_6TKGKVgdc9PJ6oahj4FqbI_zJ_mbfz6hCxL_kjQ2ojO7qTSikAbfhMhdzrcqwoaglkwYqyU5xOj81UvIdf_bhWQT_0no0BJjH8CL9U4oTZKF7Oj5DH5MJTI60fzcpyN2Ju7KPdgVQOg5oRTh5Mn6GRw-4GTu37EKY1JuOiTlmEFmwS0oOx-861LF-cpPn5FdmR3aL4hJzivNRMuqcahTGHErpx_rjDPY3XtU0_J6ByaVIG7pxzOo6HyITG9ouv6baUoL1UZHWTdNXgO9jSkN6s0VS9mOfi8Qg-4ZRPUkf2ce3ysK_xI8RKluiXASrKCdc-E_uaA_cQ9GYJdGLAMc-Sq4rzyEw-U7nTtYmzd7XVaxr_GRksqdGuFXn_AJSVU-136UmdgawYGlIkpXTu5KPQS8s2Nl9RYISrVb5WDDLFC5uLLz6SSyw_JBZaoMGUtoQNFQerrZau_qthtmZjqCdiPn8udHVs9xpLCYmoayu6gSuJ3Ak2rgDYzSibSK6GqQ8Yw0bgfYZjGnxNz5FFwMuoUDZOJgeSwPaP2_eIF-3kv' \
  -H 'x-nyupe9cs-b: bo1p54' \
  -H 'x-nyupe9cs-c: AECPqzqFAQAAQUtOxQUP8QJYatDjYbJbcReoXyZuNuL0RecHqCmLWHIepbDt' \
  -H 'x-nyupe9cs-d: ABaChIjBDKGNgUGAQZIQhISi0eIAtJmBDgApi1hyHqWw7f_____JSxVAAFZBu14d5TPmLdNggU8xM5U' \
  -H 'x-nyupe9cs-f: A_I_rDqFAQAA2Szc9gEygFewY5faYWXxUvf92FbzuZZ_VQiMXtFv9_2_ucNLAbUsdyGucgBSwH8AAEB3AAAAAA==' \
  -H 'x-nyupe9cs-z: q' \
  --data-raw '{"header_request":{"version":"0.5","request_type":"PRICECATALOG"},"sender":{"client":"WUCOM","channel":"WWEB","funds_in":"EB","curr_iso3":"BRL","cty_iso2_ext":"BR","send_amount":"100.00"},"receiver":{"curr_iso3":"USD","cty_iso2_ext":"US","cty_iso2":"US"}}' \
  --compressed \
  --progress-bar | grep -o '"fx_rate":[[:digit:]]....' | tr -d 'fx_rate:' | tr -d '"' | {

  read WUCURRENCYVALUE

  if test -z "$WUCURRENCYVALUE"; then
    echo "Current currency ($WUCURRENCYVALUE) value is missing, message was not sent and data procedures were not triggered."
    exit 111
  else
    echo "Sending message to target $TARGET"

    ### Storage
    if [[ ! -e "src/databases/$TARGET_CURRENCY.csv" ]]; then
      touch "src/databases/$TARGET_CURRENCY.csv"
      echo "BASE_BRL;PRICE_$TARGET_CURRENCY;DATE" >>"src/databases/$TARGET_CURRENCY.csv"
    fi

    echo "1 BRL; $WUCURRENCYVALUE; $(date "+%d-%m-%Y %T")" >>"src/databases/$TARGET_CURRENCY.csv"
    ### Storage

    curl "ntfy.sh/$TARGET" \
      -H "X-Title: $MESSAGE_TITLE" \
      -H "X-Priority: 5" \
      -H "Actions: view, Ir para a Western Union, https://www.westernunion.com/br/en/home.html" \
      -d "[$TARGET] 1 BRL = $WUCURRENCYVALUE $TARGET_CURRENCY" \
      --progress-bar

    # Data Analysis
    echo "Sending data to data scripts with $TARGET_CURRENCY parameter"
    python3 -u "src/data_scripts/plot_csv_charts.py" "BRL_$TARGET_CURRENCY" "$TARGET_CURRENCY"
    # Data Analysis
  fi
}

exit 0
