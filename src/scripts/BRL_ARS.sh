#!/bin/sh

TARGET=$2
MESSAGE_TITLE="Western Union Companion - By Victor Gutierrez 🟢"
TARGET_CURRENCY="ARS"

echo "Running Task for pair BRL_$TARGET_CURRENCY"

curl 'https://www.westernunion.com/wuconnect/prices/catalog' \
  -H 'authority: www.westernunion.com' \
  -H 'accept: */*' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'content-type: text/plain;charset=UTF-8' \
  -H $'cookie: AKCountry=AR; AKZip=; AKRegioncode=; AKCity=BUENOSAIRES; AKAreacode=; AKCounty=; WULanguageCookie_=es; AK_TLS_Version=tls1.2; AKA_A2=A; resolution_height=800; resolution_width=1280; is_tablet=false; is_mobile=false; bm_sz=22FDD3F891ADD533BE6A64942868C471~YAAQTeocuGmZuhGFAQAAiWqWLBIo78mQE+qEwXmNbpP8+o1K15BRYvkMG4fngGbNp9rZe3B8Vkkw2LX99aUtguTdPzIUu1fPkvufVVSYpJ7R0OHMVL6JMWLdVYdlF/twJ13aejgpOFRsuDSp9FKDR7AbUimg2bCnZf/IG2gNsoQhksdesU1y7BH0BEwbBrrfq8edpVPqQM6ZRtq6fdOGt1NHiIA2IEd6DzMJCjyzI2bjO7suyMkufzbWDQ8lxZkqUJAYK3FAQcDPi+QfgS+0lAfs5XyAegQsN9gPAyVMxfo/9QdovrNaugU=~4343349~3289905; wu_device_id=41ceada7-a825-b2ff-41ec-e3d7d160ea67; _evga_efcc=51cb4f77d92b821a.; _abck=0F6D321D579D3E00D0181770E2F6FAE9~0~YAAQTeocuMKZuhGFAQAAVW6WLAla2bKbtane31LB0b1EVabqcBB0YyJkkrP5isU7YaZEVgGNLugaLj+d7rufsskcdv6fusaiIZTMEywi/Xw+W3NJtOQvGW0BG27YqJ4eoo1hk66vVjRluDua9Gc4zF9PCc6VGLsr54gW/6fABpSevE56c6Fg2WlApU9E4HovLtQV053NcKuchMBzzyezYE9ZxAI1Ocx2FbYSAmui99KYob8JWumRQRhXsKeeqd2oj6j7h/SHA4ukmQtjyy7SbLRAuuCqDB8ausQwYo9JnRRoZqWtoKQuO68nNRHE7RwdOj5UIo7cAV5SlXN8HCyZLmUxa/aqlrIUq6YqusG/NKc+DTGwG5hjGg6otCcFQ3hTHI5WopQ1LQF0siC7rLFYNl7NMPRVh2yyJlmC1lk=~-1~||1-IhUyFWTeuz-1-10-1000-2||~1671493851; bm_mi=D290284637E35909142ADBBCC1DE0945~YAAQTeocuMWZuhGFAQAAgW6WLBL34/owdt8ZTtnlMu1gIppL74VBY5Ctpgm5I2m/PHb3AqyPa/XsvSyTcDB5ICDxigvZC5UO4S5PxxLV+gc3vtyU+AnrX6SqlV2RVipugvGXl/ZB1e0yFMlvAEo4mTrzhI6gOwnXOVqrb1hCatAhqYYxkgHBAJPJW+knM4diKO8z533pHJzY8ZpZGw58TKf5dv9dSzFIcVxi99pT5bbUd822r0Klvyiv201/7SvA5KV7nbgP1BWSCum+iWQde97MJ9qFswS6mIieCq0kCYkIB9d0bxW+oIqfFhAzNjWLm47zzTgh8oK+JU8fW1/e9PntuFgBgdhpyJ/3oQ/8k7quYDlG82TFNhjtKvQ6gf3UBw==~1; utm_source=google; utm_medium=e-web-serp; utm_campaign=organic-search; visit-logged-amp=true; user_txn_state=0:1671490334063; AMCVS_AACD3BC75245B4940A490D4D%40AdobeOrg=1; _gcl_au=1.1.1395741425.1671490334; _fbp=fb.1.1671490334220.215851744; ak_bmsc=0F68D30375377DE047922FE87AB65F14~000000000000000000000000000000~YAAQTeocuP+ZuhGFAQAAsnCWLBKJY1iM8tjuhRjz9T844yScGMdltVkkS8cqqWRMIX4BwjgYDMpzZbX6Ppt9IZIQtiDR6AUoz3J0FhIEyfJoVB4MYa7dIMxsiYbLSmdC6af3Um4YrC2pfPamWuU5xqGNnNlCSmZ1Tn+zNajrLJ0wYLyKIT2LswZx2F9d62FEYdmjtl4ik7AAifqCHzdClbvFwusP+3p03bB8C0viV66DMHUpUmmxDTTIw+//JFi1vHYeVdF5miUOjmWQms/dAZgWX/KUEc5dZWoVn2ABtZaHMtD5wIHvwlvIPTp4Wtbmd6TroquogtSJvQMRYtxspLp99uO5rPTdDoZNgOr+R/nJ0NgkAH6K6b3bN4nMiatwlD543CHZ6PduwQkO19yDAfg8RGgGGLJ9Mcp/YpZ776EsBryqXJAECS+pKR/TLzhD6gQb+tjdgUZSk4qbptgxj3zzgwE95+RCTZ9EuhwThN19Z26bJe+QXBFnBj90BgD2136AcWC/RiwN6KwxahFnODWg7c/B0p68Wmo4qRWoMxNGBp6O5F/lApAIxeHp+R19N8nA; s_ecid=MCMID%7C31087460187209124320670743456818108862; channel_stack=home; affiliate_src_code=; s_cc=true; AMCV_AACD3BC75245B4940A490D4D%40AdobeOrg=1176715910%7CMCIDTS%7C19346%7CMCMID%7C31087460187209124320670743456818108862%7CMCAAMLH-1672095134%7C4%7CMCAAMB-1672095134%7CRKhpRz8krg2tLO6pguXWp5olkAcUniQYPHaMWWgdJ3xzPWQmdj0y%7CMCOPTOUT-1671497534s%7CNONE%7CMCAID%7CNONE%7CMCSYNCSOP%7C411-19353%7CvVersion%7C5.4.0; __qca=P0-1934753862-1671490334624; WUCountryCookie_=BR; _evga_e61d=000018b9719484e2.; A4kgk7nd=Az1rliyFAQAAWeOY8-DX2ioGzFFQNijA4o57NsamWy9C3JmeQb-97aKjICG9AbUsdyGucgBSwH8AADQwAAAAAA|1|1|6fd827b57d25e1be16545ac90dbd4ad5f54c6f02; amplitude_id_7d40b1ccdea38ded011affb5946a3ddd_project-leap-qawesternunion.com=eyJkZXZpY2VJZCI6IjE4OTAzMjY5LTliYWItNDFkZi1iODVhLWI5MjI2NGFkZjU1Y1IiLCJ1c2VySWQiOm51bGwsIm9wdE91dCI6ZmFsc2UsInNlc3Npb25JZCI6MTY3MTQ5MDMzNDAzMSwibGFzdEV2ZW50VGltZSI6MTY3MTQ5MDM1NzMzMywiZXZlbnRJZCI6MywiaWRlbnRpZnlJZCI6Mywic2VxdWVuY2VOdW1iZXIiOjZ9; A4kgk7nd_dc=%7B%22c%22%3A%20%22VTByRkFHS3djQVZVdTFyMQ%3D%3DQho4gt_05bjBsMvZ1cakr5fO2b1i70LXf-jhxQU_amLfyWTg3J7DZ2BUBXy4fWy1AAdc0qQA2WQljcD8xHT6-afUcmZvLXxtlntF-DdyXA%3D%3D%22%2C%20%22dc%22%3A%200%2C%20%22mf%22%3A%200%7D; amplitude_id_4aec879ef8bf1823486c4338537ec441westernunion.com=eyJkZXZpY2VJZCI6IjQxY2VhZGE3LWE4MjUtYjJmZi00MWVjLWUzZDdkMTYwZWE2NyIsInVzZXJJZCI6bnVsbCwib3B0T3V0IjpmYWxzZSwic2Vzc2lvbklkIjoxNjcxNDkwMzMzNjA4LCJsYXN0RXZlbnRUaW1lIjoxNjcxNDkwMzU3NjQwLCJldmVudElkIjo4LCJpZGVudGlmeUlkIjoxMSwic2VxdWVuY2VOdW1iZXIiOjE5fQ==; s_plt=0.57; s_pltp=br%3Aes%3Awebsite%3Ahome; dtCookie=v_4_srv_3_sn_BDF9D623E390B2B6FA7B14CB694BA7FE_perc_100000_ol_0_mul_1_app-3A4f296d341a47bdba_0; BIGipServerwudispatcher.westernunion.com=\u0021wewpw4bg80oRh1c9v++QYZNsXLq+H+MgfzLZbAJ3flWPEDzfoIn3b1kA1S99VjD21NXlotfMZNkD6w==; RT="z=1&dm=www.westernunion.com&si=06b7b79b-5a51-4211-b785-c88a4a08bca2&ss=lbve6qrk&sl=3&tt=1ow&bcn=%2F%2F17de4c11.akstat.io%2F&ld=jvl"; bm_sv=E93D2173E6175B52047EDB9EF5AA368B~YAAQTeocuBWjuhGFAQAALs6WLBJ+ah+KDcVcKtjsRIo+ZuzAtSC0+3kwTSkN1gYFqUkG47+XmJb+Z6+l2vLaJllHQAikxxzcrFIYBx6oTdA27TK37z03Mfdvk5ekErFqCmW8c+TGzMd5NEsGkEWQ4iBMmk9Ke0IRb6JGMXTxetOcOAn//HZtacJxoIP9/AePkQQRmMVJ+qKZnkLsKg6zMG1ThqvTNeE/wE2YEu2lOS99DAFH9dqrjkMBRl1S/6+0pgzdGzt/gg==~1; s_NewRepeateVar=1671490360276-New; s_NewRepeatprop=1671490360277-New' \
  -H 'origin: https://www.westernunion.com' \
  -H 'referer: https://www.westernunion.com/br/es/home.html' \
  -H 'sec-ch-ua: "Not?A_Brand";v="8", "Chromium";v="108", "Google Chrome";v="108"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Linux"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36' \
  -H 'x-nyupe9cs-a: 1KOwv7jKK=tGOsO7MsMCE6fsVqaxM11cPnEjpFMoQ8pnfURMP2oDSiBOfvD-IzR7SAFB1yWIyurdUveqRCut8FFGROprFyfURD33L6VsVabV6Kz70K27VJxX83jSWbWE_68gdC=Jq5vn-fCh5QlwvvMjoCTr-aftfgRBpEV9vzZ5fqy=wnldfMEmpVkqZ5b6linX00uEdxJ-q=WdEdzjXIFstKlj-nEJVjaoISzXJ38GCzA9sd6MIHFjlthdj-1lRSAOrWZLvFZEw4zhhrvvOqX_26Pm5im8o9g3x_B6yarqFfqtb9DeXn0uUqrwMVg_Ikxfw=iDtVqyFS_-sTHbyT0caLOK1g2TqqGsbchau-dEiQalqRnr0kKgHBqv9dSIr=AQ_GXmrlHLGnz9dil9rd8tdBn9qI-6KGO0A6hOGfS5mU1wxW-metKoSAm3pUY4c3C_sQSZ6BcK-6y0n_pKWmKl7_enrbpmuQRotlm6gGK_-GToc1L4HEwFRlxgmlc_Y4JT=wy96qt-fwSzGbn-2cQksqY_9GvMTeuqJGYC2ECEtbxP-344DMwBGnygS0DSWGTWDBEH2p8YCobJ4rZe73AJYjiUCL-Yv8ox5G-GTA11MEtQOYWOalhcJ8Rzb_3heV5tYJg3q6PIRqg93iEznBo2qCw5J=zzot1cfeDMP09eV0zPnhOpasOPbTx1C4cKyWSldneeuCk=4r32_1zIPVp0IT-l919FE-ARefPy-hUQmUgjAUpdjsswGAnGfx-vV5k5KSvCt0GCy8zxu63k_0Y0cWSEkyllSaEyZ73gvVr6xPi75lMssUEfdIyYletq5VslE2APLsoXiIXEC3g2rtxAKvk8fee67tPoWkVbq_hRwPdIR72cWddZZLcKoxh4P1YhgFmYn0FAa9IR_UbMSvsltnVqrB=olauiZxEnHh3SuHYV9q-hPthl0keUlKLhzjowdLWLPwkG6B3S6SRkZ8v43fDcfzexQe1Dqx_K5m5FX0aqEzv1MBAAg3CqTPt9GoD4tDPb9cu=zoHRy2A3nvMnRLnhMIChmDtLEz8G83h7Fy79fXg48Te9yJ2r1ZRAwZYEZ4AS4VQZFvi-H2Wzh2OssUKBZ5eC13nu0gRtOyBZ_DpcCjY3sKUtYArI=OwHS7Sus-JXHoLMhJxjUv2vhjg1hed0_JbeI5JZIlKJkCpumT9dc4Yd8-O3Jf9KI2R2uF-4q_gGEThnCK1fYKdXoT7xwwicPqy77J7soC-D4B9BXW9kj=cRdK3mLFcObhAFC8hKVVskPEzS8ELMx2=eYKFrL_3LOS7L0bqrUbMH2KSkE0zoKyr2f83P7basmssuvHg4yiCJQlD=e80v0GizW_quQWSZ_EE1a2GILODQGCJEgIWfPn4RdWPJcRI9tIO_nd4tFT_6Cw=5y3Buo7Qg=HQash5q-3guLGICMB3IYf290coGoSngtp1mJkbEF1b0heLnDZkrYLIqCfTwLImmGanxJO2w2zYX9dDgh9FdFyKHKyTuUBKTuxEIpLBq6KRgGQXbqz7Y6vLm6phRJw5-CslO9cF9-fhUmqnwIhHYRrOhSS7b2BlrhEvJP6R-c=hB80TmWcL7TnsPGYeAVq0jbTZP5xGTHa_kjy65fTHzEYtASisyTg6hrG1w_2fc25ubQ9IMroXCFIxSisi0VqBIg9qgv69heTGo2PHTEC4HR0Xwp1ftjOaF6J=zm3osiQFV1Jrf_PdPAZVYcqa8pXDkc9yhOaSUxb4z9SVzMaEt2rlFU585zog2ujO6nRgpcjhFVM9axr6pWQhP8Vtur1WXOpU8d0UY2Vnwzxl6h=OKLrj_Wpc2oATRmtnPmBQH7mJWPXPOAX61bZnwXS7VwTxLmsylA_7DcfYJMkTOOq7Gmrr1fOsuOsJzM-uJbgQbrdb0svDJWCAOxCuqsmHusChClHxOWFE9OmlRVOeUhFObHBQegP=7jbLPl057rC1YfYj2GAcPlUzJ3Qu6-vECl1RtfVM9BgZTSTLF-IBBKOZjIzEhmscoMIeam2t05jqhdZPLdRsMbzmFgTvjyX7XlxwTIQw9v80=7owFtYOXhMB22U0dMO5bYc9CnkUa5PHoYoCc-diezt7u7cz29BL9Gim9ggd13bwzk2wLM8s--Y2G4GfMQq-uoKkTvb9F-iEs2_TAb9bHhU_0fzz-W=l5ECFcQw5ErkXKC_ERdBR-ta_wh3Jq=2_HaWwRkfeuISaciKWqP9MLFC5st6kmBKrPeZTVBobKtW1WqfFGja78KSGaqjeXtQW9PaFf-RgiutsEoyDmcEBLCVq=SzM4aT=cKSH02R46v_T4BpMgwnMHTq3rkFCWOUQ97HyBbF2O2_RC8pg_iarO9eB3a00oHnv-xb90w80j2Mo5mv5jdFfz874eFDidg8IRbn8aLj-nPlYLOGnV_52qKH-O2mzm810YPxK_y6BcVfAQwSy_gArACOKvlPXKizyuSE9yqAu4F24vZn1Fh2SXxe7j8G3yLZFce6nBlgtXMJHL675HsV1dzKrdPLtPxGUKvfVEJhsp699bYZDwZ1WKIizgx49hFmHWmvcl_qidsn7dPiWxaJ323Tp_UAXoDRG_IWViuMil0E=ju4hPUWh08frJ3kycwgJGeSKlMt5BqGpM1C_hGiildALr1aejvixQJb8=WDbydgqQqr1IInMcq6fzPVqeRFluQCbel127na0ueya1oS1M0ZrOhytHc_M_dhi84Y4aYmMP8-0JSUDkGxFz6iwC-hpH_OXxWrune6u7Y4jRbhGWIOKOGvK69aFzRpwRZ4aSMqg0ZrrLatlISsk8DMYZQYhPqJFUBW9R4l=xHyednyM0q3hL9xXEnzY_v0=uj5UaHldcEmf1pJIiOYsQVgSWZl5o4=lRnLRGSUCZ3PKCeRMqUrUgAWMQV4MiadJ5s12jw1E9hBSZIOnbTxZzgHdrjhE81AW5q0GBrCfizvk6TJrkPBqPf_B68aa4qdVwUZ0rAEboiG5JJ_69c65Ck1OwjUAraXCiEu=WoxFAwEqcaUo==dfe48OWet9mdoKh8T4_h8Iz1mvFmiCy3F42OgpHXBPVUE8T=_2KQ4HGlQkhUytVnq5k1bffnOeYhd3M5_5aKRnskKEMMBSPwPYZOnMGk_WZUIoZ8GMKOvlyAKXTn0ZMQtdCQ=VonCEhg-GaiUWcydgqpd92EXnyT1LQsB4iBeKT7PWbEQnGTw4JbPacrC5lyw0jJQxKKtE3FRkiD6YO33Id9yz0SMXkMBWkcLQPI3ajS8iY9JptHwRmausGWJpJ1WfYEFX1b2fCjaPiuulJC0iPlSBVM1MVZrxtXo2dSy-w1uEBHrnuTV0Gs0o16BBPEb7Movq156OgDKOF7Aq19ph=zhPZhMJJTky4QZnfBx_kglXXzwLE02183YweYmqLOtxWDE_pomGsfFMoqmnEydgi2APzozKXTjubeJBmgJ7xmYs_6iivMGowc4zWFIdHh4ckZDQksXADJSUPbHmcmMaIE0HzrrK3cefn8xMihUkcTa-IFtps8dvoy7XnSiSWhIf0MQS=nDoxLtGQg_=B3E9-EsdJ0Gefe2=gRmUExLBw375frcMjJfsSYLrsACoEY8RIoQxFDxkdgA21l0QbCUrZ4=tLywE-qzkrI6t=5LA1ttlzvzciuoB2=v7gdUQxve3fH8SSzwZccT-dr2a_gGkzhmAfTB8cvige1-H38x5cLPe3xHZzMJE-4VjDlRr9S0oep0Z1s2qLqA51rq7ai1qo20rQfueZFlRRp6VyPPraChdKkhc0um2ywzkgiy6IE6h22_c23i6wnB-y8hPI5FUrm6TJUgF2huhYwMTxM0=rBwgPzAQHGVQBdKQ3WHKrWQCpCcstTFBMdW=frhJ7YzTXsTyZI0-xRiPdw0z=FIjexp7I5omwyXWihpv05aMBvxkFx1_WW=v9gogvprvgDmWBEInwld_bAqIaR2kXe0-6Q6Uye_RduWAIbxUmc6arE1a6eqYc5zuroiKj6lIzYwUOHiYTvmIKnpg3HIl=RI7X6ZxIlwHWmOh4TAmj7pCZKycaFOOlkHS3wiTBiyxUnIP-3Y22Gnoes4pFLXbnm8iku9nzB_TxOVebhjDEqDi4mqsWO8tHlRMFwd_XudGqHIDIrl17FcaM67Sm_utV0ukAy28X7s3JV6JzVUrywOclxaJ5L8IHe2npB1seE=hTkRC4aBlfcIfKr-d0Mtm=Vnk8P7SBP2RV2cWaHzzi14q3XCMwHAEg91VGAtR8kbqnsEyyxR_oAvdIc2pfkYum6O28D1JbuXWpuWSYOCnI8S4B=_nqQvfAyxq8tdHadfPgDu7_jrcBOMDZwX3la3YRpmk8GtQ6OPQ02x2bIVM5=DOLwqkp3td=nnZWRd9liijd1Yj-FC6iCF6Oo2Ew5gjwjadA7XepKGBTDK9epbZpOgKfaR6IKMt8Gj94bvd5LRURUujccGDYLZrXFPcx2qSCMlSpUxyOYFaE6Soj0RTO0wcJ9qXJhSYwjaxKy4t-ndx6-ewABCpSm4uRr=0=AwgEv8kBc7Atcu6bGX4CF4B8wbF5FnJxDQb5eyDPJU7e9ghwiOKXiiqhgEGYhh-JBnEIcRxW99BCxQk6Kp3FQciBp3xwx-S_ml39QfJqwS_CYXH6locJuf4whQC4GVj8e2bBEqz-c5oR-t4hVSGb9QBAJcTxcBupZ_Xr622JugFBZeeh1llKebxXZu1W3aEwmfoqRinao=MYZRS0kPE=cpHjnKrhsU28L0vIxDqP7aW-=0SKgdF=a=yOXdoxflZ' \
  -H 'x-nyupe9cs-b: -snythy' \
  -H 'x-nyupe9cs-c: AMBhlCyFAQAAJIRK-crYDGb3pyNtanED0yCM9NnJyxOixbbal7b-fdukba7j' \
  -H 'x-nyupe9cs-d: ABaChIjBDKGNgUGAQZIQhISi0eIAtJmBDgC2_n3bpG2u4______JSxVAAN0K_77-qst5iCAfFnPFrm8' \
  -H 'x-nyupe9cs-f: AxDIliyFAQAA4PBiNf3YFcdspGh9dK-dMRIRGIRmWHyjS5xk0z1tF0NY8dPiAbUsdyGucgBSwH8AADQwAAAAAA==' \
  -H 'x-nyupe9cs-z: q' \
  --data-raw '{"header_request":{"version":"0.5","request_type":"PRICECATALOG"},"sender":{"client":"WUCOM","channel":"WWEB","funds_in":"EB","curr_iso3":"BRL","cty_iso2_ext":"BR","send_amount":"100.00"},"receiver":{"curr_iso3":"ARS","cty_iso2_ext":"AR","cty_iso2":"AR"}}' \
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

    echo "1 BRL; $WUCURRENCYVALUE $TARGET_CURRENCY; $(date "+%d-%m-%Y %T")" >>"src/databases/$TARGET_CURRENCY.csv"
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
