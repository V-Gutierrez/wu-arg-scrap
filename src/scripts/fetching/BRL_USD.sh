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
  -H $'cookie: AKCountry=AR; AKZip=; AKRegioncode=; AKCity=BUENOSAIRES; AKAreacode=; AKCounty=; WUCountryCookie_=BR; WULanguageCookie_=en; _evga_e61d=cd97f300195a1d7e.; _gcl_au=1.1.192269537.1671460584; A4kgk7nd=A3Zy0CqFAQAAHFrDWyyHi2-geoWY0CLWbQrqro2avfxhbolVwduPxYBQ7aMcAbUsdyGucgBSwH8AAEB3AAAAAA|1|1|30971075290669f09f7cab3e7720396f4e7076cf; s_ecid=MCMID%7C10527002012958908521997717894336953425; affiliate_src_code=; __qca=P0-1709286564-1671460584261; fp_token_7c6a6574-f011-4c9a-abdd-9894a102ccef=LMgsJRcfyMg7FunMOmfpI6X7duB2Acn9POKakafZbqk=; QuantumMetricUserID=fd6f2bb6039af967626dfd35a3ba712a; lastCountry=AR; lastCurrency=ARS; lastFundsIn=WUPay; userIdentity=existingCustomer; user_txn_state=2:1671629693746; lastFundsOut=BA; abandonedCartToken=10befe9f167f8d8ce9b5c3fc7891d424; __ssid=9609348f42f15f82481811bbadb31bc; AK_TLS_Version=tls1.2; resolution_height=600; resolution_width=800; is_tablet=false; is_mobile=false; AKA_A2=A; bm_sz=AA66CB290466A9FA49C0C276D746ADD1~YAAQTkostfVDqBaFAQAAHIsEQBKKFPx2zG/MZ0AnWlFjMxmeJaesv9mkJ0KgnL9oIdc54+QjabueJr7rT5Uv39e9KxcwJELwuNdkJI8jlKy8G7XVfoQYa1RE6KRwbhsU2E3iA6ZlYlCFtkoho57GNBw3CY+CLlsCZN3hPmF9m9KDa+AfsjIYL+iDswHf8aiGNxGKsyPm8HbI43h2bu9uRH62GO28DLOqCpdR8B4+rF1Hr09WtfuFUcn1gIlivAon0K5zMY0Gsb+oyRfsBruXFmWdNpiXYOcVhs0ZaZh+l1G0ki/cIT2tV5A=~3158321~3753269; _abck=39232BA13024CCE59B1FDDC26B4FDA09~0~YAAQTkostftDqBaFAQAAdJIEQAkCExDQZ9OEGzXFp48grp1eBhyY8aU9YHxjSSs0+3Lk0D+liMsfhXx6E95RXlA0XxMsDlLWwThd6ZTm+5rH9y+CkMPObACzT7UpZM8os/LiG97aId3UKBjlKOTeIYA+u0FNpKOB19rFv7qGcGh1MShfA6xR71YsgAAeXDvBgEymUWxCNrIUqgRGy9zOrdgVANzFS7FsLPAXkVpbNYjFCJwLSUiK3g+UcQ7IaUyKGTyOVhsYtil7BT/pz2mNqdYQFssN5+xO0VzzyXWFG0nhmBWRFmZ/yXWvH3oOdm8+U6Cx3UlsGAMpfETSd9P3S0oUeXxFV3aiz4wGlsUu31fYnTSOnTuT7e2gPEldGfgLOdf0EeixrUU2OlBl3iBI5FXbrsX4sozPtUahy8OR3Q==~-1~-1~1671819913; bm_mi=7C391956035E914003966669782E713B~YAAQTkostf1DqBaFAQAA8ZMEQBLChuTzrvioOfNETsK1jnD2E/lOacCEr96R58a4L1xGwhMD7l3JT6tO86SYY0ZmGPSO12qRwqi76auqPd5vDrHgQtfOoCDmmsIrAJFjsUYn7elJGk+Z5XMv+WNzCpUOThqj4lT+eLpF1VPnj5VV1EN+7mRkGfb39j4Ca7SeqO9pw8KrNkrguEpqxZ2vFmeNNo7q7jH07DIsbA2QmIwUCt5PkDwa2Iiw2BjKLOnI1v2t8bUyXSy8V2lueZmDCzgOaqVz3T5f5KAdGjD5aDXXSYdGx2YNxwKAxHHBFdjt2AhgbVeMA+iktzAUo/cHbfiHXBahShDu5Xy3h27towGmleXtwAnYqNLdEpbzfIEd0w==~1; ak_bmsc=7194A527FDF371D2D90558CBFE3A3F4F~000000000000000000000000000000~YAAQTkostQFEqBaFAQAAepYEQBIaNmMS2JpVv+Wkm9EyqB0bvrO2g4NxrhHnlFc5xG4rPMVpba7z46ZQ8xHELtDhNXIYmWzqIaK9rdpDSW6mSzgL3Jl69UWzA4eteC0jsH01vFw+DAgg0HP9a8Z3+aCrmYc8l4LyB+fCc2UNxJ2nwMVeI5opj1QRxfrR5YTkkcV9rgE6sWNU4Dgk0ZNVx2qrmKRR8ry8iekQZNpvgJ4i4VWm1vCaHO8ddi+Gc7Ks6u8S1+Q6OV1NeMVvHZZktdNurG8Y6ob7cVSDiOQLBCBlCjLsTjJi0Sm3KyXXFeiSbbZTTvz5l/cHcFiI8Go8mzUF+XvdeqTyLU3QosY7diVPeppdNVXJAAoUt9nJF/F4p2ygS56VLQ5ebdnEWAVJBM1hbT2mbnNJTZf/NCyjMD6SghAsBI/tqc9B4oY8sk5xkBP0qkpSCKLmDR0Vx1qTBrYtYp0KvYUsKzesWakbLVnSRaLohdiszQYpwKMwROIqWx/oVL7n/tdrQHbYekqH3avbYCaXvzQt/Nc/KI3++dTuqbNK7mAMZdqOHR7zuT493nF6; wu_device_id=558cf1f4-d105-c706-8d80-c039590a6ae2; utm_source=web-bookmark-or-typed; utm_medium=e-web-bookmark-or-typed; utm_campaign=organic-web-bookmark-or-typed; visit-logged-amp=true; AMCVS_AACD3BC75245B4940A490D4D%40AdobeOrg=1; AMCV_AACD3BC75245B4940A490D4D%40AdobeOrg=1176715910%7CMCIDTS%7C19350%7CMCMID%7C10527002012958908521997717894336953425%7CMCAID%7CNONE%7CMCOPTOUT-1671823518s%7CNONE%7CMCAAMLH-1672421118%7C4%7CMCAAMB-1672421118%7Cj8Odv6LonN4r3an7LhD3WZrU1bUpAkFkkiY1ncBR96t2PTI%7CMCSYNCSOP%7C411-19353%7CvVersion%7C5.4.0; channel_stack=home; s_cc=true; A4kgk7nd_dc=%7B%22c%22%3A%20%22YjMyd1k2Y0RjaUpXTUdKOQ%3D%3D6HYwtT9UycFcHtF5d8zcN77grKBExGTxA28G3yxTW8ah5YRXAi5hKJqEnNwKk05o5Q_mZD0OD4SxI95ayg0QAzaVBr9PtbjJOF8sTjMyOQ%3D%3D%22%2C%20%22dc%22%3A%200%2C%20%22mf%22%3A%201%7D; dtCookie=v_4_srv_1_sn_2F324D03C98A78F3151E97737720745D_perc_100000_ol_0_mul_1_app-3A4f296d341a47bdba_0; RT="z=1&dm=www.westernunion.com&si=f615b927-54e4-4590-92a5-457baa9d3ec4&ss=lc0s9ov9&sl=2&tt=3nz&bcn=%2F%2F17de4c14.akstat.io%2F&ld=c4f"; BIGipServerwudispatcher.westernunion.com=\u0021I6HErsdJ2FlVS7I9v++QYZNsXLq+H3bJsnsOHrxC5R3eM+c9bctattJnYWCpJS21vNiPhJtHhc3lLA==; amplitude_id_7d40b1ccdea38ded011affb5946a3ddd_project-leap-qawesternunion.com=eyJkZXZpY2VJZCI6Ijc0MjYzMzFjLTJiMjctNDRmMi1hMWQxLTc1NGNhNjcxZTU5OFIiLCJ1c2VySWQiOm51bGwsIm9wdE91dCI6ZmFsc2UsInNlc3Npb25JZCI6MTY3MTgxNjMxODQ1NCwibGFzdEV2ZW50VGltZSI6MTY3MTgxNjMzMTczNCwiZXZlbnRJZCI6OSwiaWRlbnRpZnlJZCI6NTcsInNlcXVlbmNlTnVtYmVyIjo2Nn0=; amplitude_id_4aec879ef8bf1823486c4338537ec441westernunion.com=eyJkZXZpY2VJZCI6IjU1OGNmMWY0LWQxMDUtYzcwNi04ZDgwLWMwMzk1OTBhNmFlMiIsInVzZXJJZCI6IjMxMzg2NzQ5NmRmNzc3ZWZlNDNjZDM1MjBiMmIzMmYxIiwib3B0T3V0IjpmYWxzZSwic2Vzc2lvbklkIjoxNjcxODE2MzE4MzQxLCJsYXN0RXZlbnRUaW1lIjoxNjcxODE2MzMxOTQ0LCJldmVudElkIjoxMDUsImlkZW50aWZ5SWQiOjYyLCJzZXF1ZW5jZU51bWJlciI6MTY3fQ==; s_plt=2.04; s_pltp=br%3Aen%3Awebsite%3Ahome; bm_sv=25E056F9918A67729D3E092E0359F4CD~YAAQTkostWBEqBaFAQAAyOIEQBIevcdhZbOF/PC2w5utM+mRuaFf9XgTr2r4j1lsw/IqEp+nwKizHSoca5rwYgL1dA6mtHpLQvnoc2saTkGf+IFy9Ajt7fYjRi73AW4Eg2ejW6sVZkZaxCxbCJ318nFKUj1pciM1Jk4GO1b3oPL5bln+rR6ebitLU/Yiub1KTYD6tiJEglzTZ89HHsnv/fjhAqIG4dFJRSnTfcuNjQQdFN3WnDMeaDN61/64TReD3qUUvKBqvg==~1; _dd_s=logs=1&id=435d96fa-b810-4974-935c-8e6af663a852&created=1671816315532&expire=1671817253495; s_NewRepeateVar=1671816353506-Repeat; s_NewRepeatprop=1671816353507-Repeat' \
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
  -H 'x-nyupe9cs-a: F_kwWzQRFb6Pjfgl2mEwj9_Oq1fehh47V6m8BCDn1qNj2XUiPe-bhX1j9N3q3wCAXdUhY8V9m7R3rO89ios7zfM3mW8B7SbxEfwmP_tILiqEC62j-UaL-5uC0mOaOv3YtQF3iPtDYh=1K4d5ne8O-FF_Px-AuBG07gDUu0_u0i40o=p07AL8d6rLam2kCWqHemuKN4Uju-1AZSpUVeI-rwvjPV-g2ow0W7lGE3SoxwVLp3ZZdusZEKwMpxY7dLhU98kueZ3k7Xs1-BD4skk=qz-MSwlPdL7f6VrV2kdalFS4DJFyfz57D83TRuSYOSWXC=bMV7Oo-m3p6=hEq59rZOaB4Iov7v8gLSn0otnTRbjyLH1BjFWUI512mawiwCVA4DZRmZGCsuSs6XfMHP4Ljn59JPkYv1mwWdFtJed07bDRF3yfEqDOASBo7TFfM2EqtoydFBbI0So=G1Z2=xDEeKZvA4Vt6lXKG_3Eio45mZsqbVDGiBSGg9JE1Xvi256DGJM4LqpgmaMjql0no2GZHsvszdHPEmVGJ92Ix2ixrASOiutQA9XI1zhY9J8bCUSxuxLpHKrObTlDU0KLE8iKkHrdpT1pPLROTXHQ0FqzQLrpuJFK7pxFrFsQj5dqgfjmIrlgrI1Z9rbKGgORk8jfuBXCPfrsdXJ5gxEPSI-hXhL6UC328BGhSQqXgL3bla2AFeDL4HxGFzSpX68BUuYJ9Z139urJYz4pfN9jXW9GhLSeIoUNJl1UEdXebVlFmE4HEm2aw0mVKnsWGXAY8BgnWpbxdPldxFzK-rUFV4-GuLRZ6u44Dh_NrXX0__jh-IwHoodUuCF7jMtWVaeyDuR_AfaPZYMHJDttdq=k0Tt6o6IFjHSMgo6upgxq0k0jy=m=9n2G2bWZGC_IF3kI-Qm3JTmtKtoVFYAKBMTJ1CEmjxelI0W2TZH_Dm3wQIxqCXY_xH5urP7urgVABRLV8Y36OI62meoHUbhyWW2Aox8PqVls2SpTCgdrbF2L6=LjFgMhDVbu8r_ZTkZXpAU1kAxn4GdK6HWwTwQ924mX=WSgIP9Ia83P7tUMzmAZl_FWD8CDgPF2qOAHD6Wxl6vkzmeuFIWBSx3Zkdu2JH_6p9umGfiuES9Tg-11PK2Iga-XIbL3OXRfksDVfOyjjSuVEiI5ASkkBYw5QCxDq1=SAJoFKAmvPUYV5EjG_=z7dCKQ2Cat_glarAJXAPN74Nizxs8HrFUeIVsVKNPQ6VXTR0PKrmJhwlnyQjtxWGxdWDRt_IBSAbH0uXxlGb8ZN3Wtd0aF=p8w9EQqQI-9xs-wPmwZaSKGPgwxXlfm_7jkEMQ6x6VInPYmvRI3xEgziOXQgfvdo9Nw2jpftgaOLaAMJYfLDzbZqk4eEprwABim6UUoI=PAKBPj=C5-wd==NXXXrf7ahK7PBOHHd6KPlITsfFCpyl6yxQQZjauC6ta0Y_6fxZdY8wPIAtPgglUQ7J8NGRAlQOA-b-vNxSaWJJhKbFvgilhVeKxh_KMirtSSEM6RRGiqWUEgLI_BGzh6UG=OVhgWYRXzwzKlVj-3HQwybKQLYNUAfgJVUHiodTk08adE_-b6i0Aufygdqmy2fRr6oRtsxlinTbwSpDLyXvRABKRmZOQqenk652fK-jEnMeAytFoP=eM_et1nxoZLPCel3j0M4-42tTBPd_yJfdVngj4RVmiMQ_KY=3DTn95yddreG=N12X=Lo_mxp8UE73F2D55zWVGWo-_33l4hMB3GDSSPvHYMG-RMboZk3GC5fUmPZgEuEP6SSTVz8Yp2mvvZUUztmeTQ2JxHLfoyhKh0qASfizR_o13hBKe7ljeKyrg9WnC79mhFIld3wiBYLd2_W0jghkqKAkEfb-ZPF4rLLzwLE3y3F_Mp9aXn59yUejbt4wiUY1xI5JARRgp5C86omsl3wh6w2MvBsvJirBNzfvtqF_Oo1g0GSL7pyR17pOv08n0JEGFJN9g-mOXUAje=4BOFz7CHP_KZrx-vHVB732-k5SU_=I4p4ARgHFMuO9YS0DbaVoQ5F8Ixhf2SWeQQK5zKaFio9-352FVfju9UM7LIlwPe=UuAwY_jw4rAsx9HvXDqfvdrCs60Lh2av7DAfrWE5MqGRwASU4Tf4F4P9QQZXbItHqx8ZvzJIrFotDTZH7G9XJDx-g=qmFY4GZEv6EMNPYEKGzS3l67lVD0BLEuSqtSMxjtKGH_os6nwxDsPip75u-zg-Ul5bLC1dW-6xQj6R03o4o3YrRMJX1F6m_z-6aWz8fdmrynnyAfRZq9gs=vskR2BxNvn0M5-W7iyBsAn1Phf1ffR6b__Y_E0YUGOoG_ixk3CFLmVd8uL4Eyk-g0Z3o7SFbIxzSFz=ir9aNz7qkr-vK4s7NfRrd_QmUiOV0vHSIdIKFWKY3-LBXH403BWYyzdD-VeFg1d0r4OnBioL2vtmqXPLYOFNn11Ju=mhmCL9Skd_zLzCz0UeeiMMHQ9mg0A5prMMbK=2-AiTZ5Rd4JzPS7-WlD7=CQvrnutEE6JK0V_A_z_o=CXyp6uiDIeoZZaOv9TAeH4vld4QsL1S7V2pmzt4M7dFPHg9-kAU_AEuPg5nX0M5q_WneyKiNOCTIF1QH4RnU8FHA6lG61w8PC6zt6K_l0gYA8GWY6J0E=_JMGIZU61d2lrfd-mTeRsa9-an5i=NFh6k2LRp=3TiMbhPtjdYDTDJhMW980J4nWQ=GIZRaR5v-YpOFFXjG187rY4r_n9BJBGsXfZLLj9_ASKX1l2NUH5K=s8tKzdJnrfRHwX0dMfXqySRyTIvsLMPmb8rr=k9nXmlwvM47TBw2s9F8Q=_SMbJF-3w9IfnSs6NVtKN=0EviQT24rUf0NEj=DpbBRULx8tBRAt4WsSg6Xo8phKdadGEUk79qCkVSuuwA5BBXXoPQkVYPuj00uhW_xwCwYTNDf595rJbaoVm9dSrQnr8QHysFa6yDpEiKklGPSQkIJ98nXIT=aHjGETYSr_6pXV-iZL9YpB7rowM3CDft5oRaz=tHoiyFNtz1kpVxYOeCj0qUFxWvdoY8Hub3_NRKVLRFWieOz2D7OGv2rMZdQR29=ii2pLgn1vKW2NNYhqp=pmY96_MwqwRiKSDsT-F70L0YQHuGMYPF1-FlK0kvJCr-TYlzVrkA94hx0YQzTHkqZbtrLyitu5x6VYZt_41zWJye0DV4DXFPrflBmjEwjON4hy7K=WGTwKvCYqK8wQEOCfWOw6eM_J-NYg9XExGB299SEOwTQ0QvIkwboI5fTj4dbqqyZgTx_TqMhZOWCZ7Ck7_l88lHCbnE-j4AI=mDdpkIzVkLbejV=lLxF9admzLYtVo3NQqFldD5t=MX3elYSlYNpb5nbotpIhxUs7qpN3PpZJXP7EHrbeVx8A7G=RqyfZSy2GyiWeC30X=EzWzaPlhdYijhi8O7eq5fNyTSCHmwXPXtVCRHTCModDpUZSSgISyEEmGyfO5qFeNeSWrRSyXgq81YR31sxeyoSgY2UCpSShYwOjWgLiGXQyFJ1VnY0s6ZFuXMTzIr6dZkHBthBlphCLHgLbZDjrZ2fAylvWnumvDBSaOeE0oLE20jBnUi7DGZmHCwvMu-oSC57dd4b7dugkPRyzAAAXMhVKFtyHyUvg-yHrn=NQ64lRTOMvZtiPSL_gWLUGWbTV0loGNkzzFZrxreBuer2akDEfoH=q4JzHBlapByiT-jdthdbDX2HngabClv_MC-5L94zMLXkvum8JnFXLnUd2N9wR=y8x739YyY2bgMKX9RjQxuVrUHOr9L-_3bSod_p_kV8vJFKG0Wz0QVHoxMq5RXwPutQ9kgryhMK-9yVdHevTkHlf0zm7uBNJTsDmH6-IFiAjRhjH_44MdfnEZiVG49I93IHmJ2ysipp7LBPYh5m6GZCZOna5Fvn2qF0ICwFRWt8w3fBj=TtHlb02C6jkUgysv9jpmNATFtsJE_oQJbV3vQbowLlhYAtswwd8fKWhudK-IvNtyUfq7j5rdTaYVWf3DyAasXy6C4=bACgQNwoxlfaHC7_lWK71DB7RV2NdZ-zE9wZXdQIGAjOW73COKnptSqZ9gSwptA-ZR4C97O635jR3ruHmvuyLWxWrr2yU9v7wpoW9foQenZiG6mdju3LnIIfLnrGm0o9LnCk=zl7hZQ_u3bodgT4d3RlB5PMENZvPEtom48p7K4PkYs3sqONKMJ9TsARVq9-q_NvGVbl2KPqRvS8EzZoibbGnhFdtj0LmvuzXaD6Fus2bwXgPT7TayV-F=PKBWR5HXy7Jwgj5aZB7mnYrmGv4UsQPArp02eeeKKjBxL4upVLnEA0gSyu2Nt-i6sJOFtGZr=hZbnWJymkYnGbVRD5hXbdHsHNrlZQ8upgEYdCvmueetp3-08N78n13rXUph1NIQH4iCj94lB5bC02HhO_mxjIZdwVQmmoexIijmLIsqeFg7-7hARma5CX_ZzuU3sUDsS_4ATkzFDSOQrmj7EBdR8076UIUTelfFUqJ3vBqpIAX=whJ=OzNg6lhghzwDWwiXa8df4l7sqCA8LejY7UooZi3Q_y2n9JiOzQHhHqjpvoVqUQXUBuv=-qWVnE1-ndAObJIq8myduGVwNFAQEFRUBJ8KsRSaqUY=KEzE=FqYevWv=o7FpBmdN_XxQWpdEy9ZEjQtF_58bhGYVk2I5YkAMjUhvepBShMnubqjOX3QnE9X9VMUh0fsjmKrmrpBvKRf2Q02Nug=kl1VmFtG7R9-2HZvZhlt6V63WykuET3eexy3ZQ5Oa_moV1qDjW93=5arthgyT3mAN_9i01yripa11x-R1jFQfPQBT8UuRShwldQ0DBYylFdQouuqqpo4BuXMiGZ7YrSbM7=MQTdUCN3KEzpiTDaEOLh=NkNSYoOGk1nYM6mTWj8sjyClmeHXHz6Pe=rIO6Covr1ams2nGogLP8W7R4W07HAaea_Ty4PtJ-JU-vsXDBfh8Cdn-VrtZgNN1Ry3M9a30KgwiaP06a2SYP41Yl9ymvFmNngg3TD2y0_ojRKQ80k039mOrxghE9xOXMq_YPXGHFqY2txMI3_DbLRnTmdezVY-h=4ITGnCebDe7Dt3i2QOIiCDP-fpGryeX_YYejZnnkrRjPWWh4Sj-kAS8_LTIZQPzutJ=p6bMvydQBUhBk9rGK9jO' \
  -H 'x-nyupe9cs-b: -yj8sdp' \
  -H 'x-nyupe9cs-c: AOBFBECFAQAAIvtXGyB-JYRql_Scq0Dl9FtnN9OPhXx2Dj8z8D4fYuGLJHjY' \
  -H 'x-nyupe9cs-d: ABaChIjBDKGNgUGAQZIQhISi0eIAtJmBDgA-H2LhiyR42P_____JSxVAAJJwRf1XpgkdN8BrB26W6OU' \
  -H 'x-nyupe9cs-f: A47CBECFAQAAlcFMT161HmMOfsE90ukKXtE_4dLppeezXIshbAEOk0Oq5k0PAbUsdyGucgBSwH8AAEB3AAAAAA==' \
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
