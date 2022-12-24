#!/bin/sh

TARGET=$2
MESSAGE_TITLE="Western Union Companion - By Victor Gutierrez 🟢"
TARGET_CURRENCY="ARS"

echo "Running Task for pair BRL_$TARGET_CURRENCY"

curl 'https://www.westernunion.com/wuconnect/prices/catalog' \
  -H 'authority: www.westernunion.com' \
  -H 'accept: */*' \
  -H 'accept-language: pt-BR,pt;q=0.9,en;q=0.8,en-GB;q=0.7,en-US;q=0.6,es;q=0.5' \
  -H 'cache-control: no-cache' \
  -H 'content-type: text/plain;charset=UTF-8' \
  -H $'cookie: AKCountry=AR; AKZip=; AKRegioncode=; AKCity=BUENOSAIRES; AKAreacode=; AKCounty=; WUCountryCookie_=BR; WULanguageCookie_=en; _evga_e61d=cd97f300195a1d7e.; _gcl_au=1.1.192269537.1671460584; A4kgk7nd=A3Zy0CqFAQAAHFrDWyyHi2-geoWY0CLWbQrqro2avfxhbolVwduPxYBQ7aMcAbUsdyGucgBSwH8AAEB3AAAAAA|1|1|30971075290669f09f7cab3e7720396f4e7076cf; s_ecid=MCMID%7C10527002012958908521997717894336953425; affiliate_src_code=; __qca=P0-1709286564-1671460584261; fp_token_7c6a6574-f011-4c9a-abdd-9894a102ccef=LMgsJRcfyMg7FunMOmfpI6X7duB2Acn9POKakafZbqk=; QuantumMetricUserID=fd6f2bb6039af967626dfd35a3ba712a; lastCountry=AR; lastCurrency=ARS; lastFundsIn=WUPay; userIdentity=existingCustomer; user_txn_state=2:1671629693746; lastFundsOut=BA; abandonedCartToken=10befe9f167f8d8ce9b5c3fc7891d424; __ssid=9609348f42f15f82481811bbadb31bc; AK_TLS_Version=tls1.2; resolution_height=600; resolution_width=800; is_tablet=false; is_mobile=false; AKA_A2=A; bm_sz=AA66CB290466A9FA49C0C276D746ADD1~YAAQTkostfVDqBaFAQAAHIsEQBKKFPx2zG/MZ0AnWlFjMxmeJaesv9mkJ0KgnL9oIdc54+QjabueJr7rT5Uv39e9KxcwJELwuNdkJI8jlKy8G7XVfoQYa1RE6KRwbhsU2E3iA6ZlYlCFtkoho57GNBw3CY+CLlsCZN3hPmF9m9KDa+AfsjIYL+iDswHf8aiGNxGKsyPm8HbI43h2bu9uRH62GO28DLOqCpdR8B4+rF1Hr09WtfuFUcn1gIlivAon0K5zMY0Gsb+oyRfsBruXFmWdNpiXYOcVhs0ZaZh+l1G0ki/cIT2tV5A=~3158321~3753269; _abck=39232BA13024CCE59B1FDDC26B4FDA09~0~YAAQTkostftDqBaFAQAAdJIEQAkCExDQZ9OEGzXFp48grp1eBhyY8aU9YHxjSSs0+3Lk0D+liMsfhXx6E95RXlA0XxMsDlLWwThd6ZTm+5rH9y+CkMPObACzT7UpZM8os/LiG97aId3UKBjlKOTeIYA+u0FNpKOB19rFv7qGcGh1MShfA6xR71YsgAAeXDvBgEymUWxCNrIUqgRGy9zOrdgVANzFS7FsLPAXkVpbNYjFCJwLSUiK3g+UcQ7IaUyKGTyOVhsYtil7BT/pz2mNqdYQFssN5+xO0VzzyXWFG0nhmBWRFmZ/yXWvH3oOdm8+U6Cx3UlsGAMpfETSd9P3S0oUeXxFV3aiz4wGlsUu31fYnTSOnTuT7e2gPEldGfgLOdf0EeixrUU2OlBl3iBI5FXbrsX4sozPtUahy8OR3Q==~-1~-1~1671819913; bm_mi=7C391956035E914003966669782E713B~YAAQTkostf1DqBaFAQAA8ZMEQBLChuTzrvioOfNETsK1jnD2E/lOacCEr96R58a4L1xGwhMD7l3JT6tO86SYY0ZmGPSO12qRwqi76auqPd5vDrHgQtfOoCDmmsIrAJFjsUYn7elJGk+Z5XMv+WNzCpUOThqj4lT+eLpF1VPnj5VV1EN+7mRkGfb39j4Ca7SeqO9pw8KrNkrguEpqxZ2vFmeNNo7q7jH07DIsbA2QmIwUCt5PkDwa2Iiw2BjKLOnI1v2t8bUyXSy8V2lueZmDCzgOaqVz3T5f5KAdGjD5aDXXSYdGx2YNxwKAxHHBFdjt2AhgbVeMA+iktzAUo/cHbfiHXBahShDu5Xy3h27towGmleXtwAnYqNLdEpbzfIEd0w==~1; ak_bmsc=7194A527FDF371D2D90558CBFE3A3F4F~000000000000000000000000000000~YAAQTkostQFEqBaFAQAAepYEQBIaNmMS2JpVv+Wkm9EyqB0bvrO2g4NxrhHnlFc5xG4rPMVpba7z46ZQ8xHELtDhNXIYmWzqIaK9rdpDSW6mSzgL3Jl69UWzA4eteC0jsH01vFw+DAgg0HP9a8Z3+aCrmYc8l4LyB+fCc2UNxJ2nwMVeI5opj1QRxfrR5YTkkcV9rgE6sWNU4Dgk0ZNVx2qrmKRR8ry8iekQZNpvgJ4i4VWm1vCaHO8ddi+Gc7Ks6u8S1+Q6OV1NeMVvHZZktdNurG8Y6ob7cVSDiOQLBCBlCjLsTjJi0Sm3KyXXFeiSbbZTTvz5l/cHcFiI8Go8mzUF+XvdeqTyLU3QosY7diVPeppdNVXJAAoUt9nJF/F4p2ygS56VLQ5ebdnEWAVJBM1hbT2mbnNJTZf/NCyjMD6SghAsBI/tqc9B4oY8sk5xkBP0qkpSCKLmDR0Vx1qTBrYtYp0KvYUsKzesWakbLVnSRaLohdiszQYpwKMwROIqWx/oVL7n/tdrQHbYekqH3avbYCaXvzQt/Nc/KI3++dTuqbNK7mAMZdqOHR7zuT493nF6; wu_device_id=558cf1f4-d105-c706-8d80-c039590a6ae2; utm_source=web-bookmark-or-typed; utm_medium=e-web-bookmark-or-typed; utm_campaign=organic-web-bookmark-or-typed; visit-logged-amp=true; AMCVS_AACD3BC75245B4940A490D4D%40AdobeOrg=1; AMCV_AACD3BC75245B4940A490D4D%40AdobeOrg=1176715910%7CMCIDTS%7C19350%7CMCMID%7C10527002012958908521997717894336953425%7CMCAID%7CNONE%7CMCOPTOUT-1671823518s%7CNONE%7CMCAAMLH-1672421118%7C4%7CMCAAMB-1672421118%7Cj8Odv6LonN4r3an7LhD3WZrU1bUpAkFkkiY1ncBR96t2PTI%7CMCSYNCSOP%7C411-19353%7CvVersion%7C5.4.0; s_plt=2.71; s_pltp=br%3Aen%3Awebsite%3Ahome; channel_stack=home; s_cc=true; amplitude_id_7d40b1ccdea38ded011affb5946a3ddd_project-leap-qawesternunion.com=eyJkZXZpY2VJZCI6Ijc0MjYzMzFjLTJiMjctNDRmMi1hMWQxLTc1NGNhNjcxZTU5OFIiLCJ1c2VySWQiOm51bGwsIm9wdE91dCI6ZmFsc2UsInNlc3Npb25JZCI6MTY3MTgxNjMxODQ1NCwibGFzdEV2ZW50VGltZSI6MTY3MTgxNjMxODc2NywiZXZlbnRJZCI6OCwiaWRlbnRpZnlJZCI6NTYsInNlcXVlbmNlTnVtYmVyIjo2NH0=; s_NewRepeateVar=1671816319466-Repeat; s_NewRepeatprop=1671816319466-Repeat; _dd_s=logs=1&id=435d96fa-b810-4974-935c-8e6af663a852&created=1671816315532&expire=1671817230375; A4kgk7nd_dc=%7B%22c%22%3A%20%22YjMyd1k2Y0RjaUpXTUdKOQ%3D%3D6HYwtT9UycFcHtF5d8zcN77grKBExGTxA28G3yxTW8ah5YRXAi5hKJqEnNwKk05o5Q_mZD0OD4SxI95ayg0QAzaVBr9PtbjJOF8sTjMyOQ%3D%3D%22%2C%20%22dc%22%3A%200%2C%20%22mf%22%3A%201%7D; dtCookie=v_4_srv_1_sn_2F324D03C98A78F3151E97737720745D_perc_100000_ol_0_mul_1_app-3A4f296d341a47bdba_0; RT="z=1&dm=www.westernunion.com&si=f615b927-54e4-4590-92a5-457baa9d3ec4&ss=lc0s9ov9&sl=2&tt=3nz&bcn=%2F%2F17de4c14.akstat.io%2F&ld=c4f"; BIGipServerwudispatcher.westernunion.com=\u0021I6HErsdJ2FlVS7I9v++QYZNsXLq+H3bJsnsOHrxC5R3eM+c9bctattJnYWCpJS21vNiPhJtHhc3lLA==; bm_sv=25E056F9918A67729D3E092E0359F4CD~YAAQTkostU5EqBaFAQAA3MoEQBLny0z2XmAbWCwWQsduwsNU1dMAYvVrAA8Q7KNWyQ6xco06AKkWAc6cxq5ewtM3hzcyFsv63PmexWHJ1NvR61hk/aPwi/A5tE0EPU4CNxVZq1xneYIxpdLirgDF4pV+mokGDxfaYGl2dqQlgqL+ChmfadKHn0H/dpaLlqNAX7HNclArARraqh/8DlB/tjDp8Gibk07zuIXYTHq8l2g9zwerc/jWLovLrqr64G7ooWQPyu+Pyw==~1; amplitude_id_4aec879ef8bf1823486c4338537ec441westernunion.com=eyJkZXZpY2VJZCI6IjU1OGNmMWY0LWQxMDUtYzcwNi04ZDgwLWMwMzk1OTBhNmFlMiIsInVzZXJJZCI6IjMxMzg2NzQ5NmRmNzc3ZWZlNDNjZDM1MjBiMmIzMmYxIiwib3B0T3V0IjpmYWxzZSwic2Vzc2lvbklkIjoxNjcxODE2MzE4MzQxLCJsYXN0RXZlbnRUaW1lIjoxNjcxODE2MzMxNDk0LCJldmVudElkIjoxMDQsImlkZW50aWZ5SWQiOjYxLCJzZXF1ZW5jZU51bWJlciI6MTY1fQ==' \
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
  -H 'x-nyupe9cs-a: Lv6URFofuuUQlKluGxBEMULvCXHavtQQDKaCE0qC=aD4YMLZ-ghPd0z6zNT7qCuE_C8SUirKTks1ugRDij9ZX_FRU5QvPlarL_tSznAAR8v6VkD_i=bh-F4Up5J4TD23KG0dmXzhq8I_uIlh29DBhL8tqbjzbYXuOKM8urifNu4_t7C5JGPk9aM2CFZQf_HDpnjeuAu__kO7wr7jJ=6Q6lC=YWLY2hR=uGPHpf-u4ex5zPLmIXMLYi02jnpDpNufyU0WVnOl9JOyvYB_4Gb7fu==RKdlmm8wF2YjM=mqvKDLQh7qlyFlGTMaBO3K8SEOgu-DfovqSCfNTzRbERq4eDOm6RkqNv4FC=Vx1v=Q7PQkVI8BGu6ZMXP=ZS4QAlxdTBMjuLmCAYb8WqOj_G5QVHUwzk_URAzGDJSg22roEJw6TdnUSNHmfBN430JgBXDoeh3IU-zHNwZ3vRtjWrTt1vaPoXxRz0KhBpu4exwRXAHqtdRBF3WjYz5s1-kFo9ZYL9VI3CSa9yYd=2URQzAq9yEK5Z94BvbsOFlsL90UnSVi4u=YyNjqSMYYHWa5Jd5Qz3LHaMwGL9vm-QkdpJ9BeGrJe8OFTCXjARuMtSq98ko5F3r-DiZyeBgEV5BlZfMx677M0bw5PqKZauyI7m3K9vY02EyN=4Xv4miIlD6yW60UUHtxOusasu-UZyp7MpsH6jq6-UtLa9W_R1En89vo=Xoe8_Tsw79OPA0UYzYgzXrY4hy8VtHCDyCyhM7Yr-KFXSM=BAQUpo8SVxZTW5i-xR7=pF-r_krDWzPZe4R3HrVzn6h3X_g1Wb92D_S=hvDFbYXj-3F_z0ewaCq5zqDHTCtVRvAzanFNGNssWu6R2sgiXNVdKIsN9-zbgaOquhYO8OOLbMwb29GpJyglF2LqN-WHjJyCuEZtB6u4pqBwI3uklrCEyvG1Q9l69OpvHe1sxN9f9lq1mIAA4uIOKaW7GwIQskULB58E_K8izJLPBXSsUmCG6-a_o2R_L-NQjZFFyW8nInAfdQO2pDMHX1V=7BzD8YVUDCxydq8UvW8QXAIewSY-MFKiL1C63Ox1RC81tqZRX0Pk44xMa1x=FE7Wmx_5WuiidV_=slHG_hLkpJiTEGb62Ak50EMokl2llWjn1D1Iklu2NPpHvKBW3Hw__qiACxNvwXnUj-8vmSt8ZJn6DrLd6YnxMyv8yK6BVzYA4VvRuk0Wg27S=kzklzEppPt8lvFJHqh5F8wWRhxxksd4yqxEfD5OIWNITgIPz9g19GHWOLDG_Lob6aqZlXMb_kpUGNlJzKloQ3tRtkboK=VimqrIEe=XCmRe9rzKE2TCrTYLXmlh0ivWMHF7SNDxZDCy-pS-W1-=4vofoG9zz486PTw36VPpQV7ag2gnpEPfRUYuSsL1DmoRUjunT=yIJgxqBFSVmup58_-xs=o0VjlpE0VrUzBOKy4kqE1rfY-qbptVzO-dsW1763PMs-0k_raS=JMZXtsEY9XZFZjghEdsuW__M3xXWv1ZpgyRP9T9qsOzGAnpQa99ZTJNxqSmRNH-qbR0jLiPb6zPZRh8zXinE-guhED0hR8iDV2NPimkel3f36bhRVwPLOUVPBtaTvvxK=jWbJWq75NHwM4EEWn30a1stD0gVh6_EQnsSL7KQSM1mYzl=RPe_lDTARlSEyEl95ASuLe-ISz3S-T60k6WleG2RAt5jJVqZGHZhXoVoM9u-gyWrOQIHUdWzdyJDi9zON8kOmQa2z5msEEpvze-o_J_b3OIBT3E36izSBWDRs0znSSh6zZ7wmmHVCiGzBNIVmk8w09=HKgY=NHLiOAVk_juojyq2veS6rXodNNMM-BODnvrGAiGiA4q-CPHTykm0L7sh5-J2L7AKteTqP-gtisWB346JW3xofeH5hbko=qU2F60OiiTJx0bpg=5ZM80_27=VrqWrv4IAWir01LV_I_Bk-ndI1bOCj9utl2tnXHpS5_Q9mUQiFrLW0pNTOFkRg=l=KU7hRImdHg96_RqqufjMkd49v0mGNBU9g3TqKBPU5yHQdWWYgt9HOvWXLY6a-kF4PeEY2BJamjldwKOmkh-HVnDWrEd336yK0ooTbqyhOYOQRkOVOntzOZF2lFRkYC6WB7uxIwPavhfX-kGdvRT6BI3JrlB9gkyIVjKlUgS5FGUK0M8Qd4SOROt=MTJRAaqFZ6CeChEOdDgVF1v4_S=y6GB9_ftZedVf016itoE_8kQ0yFHZgMwpCHDWHVNM7SsMZl9TQCG5X8NzwxOI8Ztjjr2a_9nUOT95H-EMlqVEASO3dI_akqxpHdWaGpfx-He2YOENsVUdydsabgR91aNlYjRHoqSRzrxthM9WZR1AY5zlVmSEnpS23njEJY8n_DIouVj7TwE6lbPbMjq93PAV7dYIASiDHoaa17rJtLJ-r4aDL3yLWBCy4Nf4ubLZPvaK5NDoRJldri17PNgoQ4=LD-QybUthHuFJfRXiRU1AHzw91BuO4YpufXVpb66vsrGveSgWhx14JF1_puO8PWVutLWiqfdn0A0PtEdXfnGQyX_ij1Yse-BSWsqkTR9-0Yjizj3Iw=IAtqeqBulvJ2aHe0KWMmiY0y=XAdUXnixpBUap=DTzyTG7BdSlBI3e0S_0EYRtj6BHEUllOu7vtswEzU6WnA_=sxIIfm1i5pZ=VxYZoibGZozXDq_YvL9emZ-U3mj8GbOG=aNTqfEh4fX8J=IE7iF4DFPLTSwbpmXTTzT0f-CEMmaH-61wgO2_KiDBQ8zmD=o5xZ57jljylsIxIZxpgPmsMlrqQgCrtYNiGCuPjoR4ZFPWKRZETmhBaN703N8rBWAkvixNGI-r0AMVIuaH3k2Nk9EAn2N3u09RnTypKQoITC2bbZKBu=59UlZUIvRJ8gHmQZ2DJthzK-Ta0la27NmoXqR4O2hoD5p_6d84f4fW8evdRPehLOneePl0u8dthSt3C8Sq9o7JMIXDmCwVDAEJsdKxt4pmDLX2XnBGlAp199hKfxh5oA4L5DfB4dX2GyrHDYkMhdLlNjDrxM_HevMWQgVKMu9wGU7SleD1UXooklHEZ9EQuAF2mpqR-2MtfCbafsbkB6Yks6eS6R2vFF2AyZ7N6q_pFAY5AipvJ5yAv5-lDjF51q9Zl1oiE4KBz1QAdEQbVSKe6jN7f622Lo=wBt0vpAB4KQ-VUE4xAKeuhrJRZ6sRsvea54XfVtP41FpidGawKRCCEEwNfGediDn2ew1ovxU=vaAq_2VvVL9jIB6W8VPJTUJbMjZvwKpkzM5iZhlxmgICmaTitlyeE3ppKMvdHE_rBeTkAzF6A9LNSfzuJQzkqelrwzOsLdwjvqrHebLDtk=8LgZxQMxiO2YWrWsk41USnBpn33jmLGE00mGvWORNpekGylGuLos_lW1B3VIlAnysJPw3=bHHUuo9MXPYXWzdIII1WGiNVF-i=_fXXWCkNMiWAYiNHU95yUE2hhV9oRZA_baSkNQvdbIoI5-F=omJW3Oiy0ZuaAgRrLdm79xPKn5xVnDDHAJwdoIkBOBO0h2jyur1QENFKFRzx1imMb7DlkKW33LFt8N6sGgeMrOvq6zb9tv=aEsH2yDkpRRAg4o1yyldulakPvhD4qKrjPxXxIpXkDKOzBJOXwTWDn640e3eWDiKsQ8bMwqeEoXjM2h0xohMjmNfhL5sfdRgdOg9CHu07UjXfRzeCOUuOU_Vl2Klfv=WKftjn-SbtKoAgdM6445' \
  -H 'x-nyupe9cs-b: 8j1n2x' \
  -H 'x-nyupe9cs-c: AOBFBECFAQAAIvtXGyB-JYRql_Scq0Dl9FtnN9OPhXx2Dj8z8D4fYuGLJHjY' \
  -H 'x-nyupe9cs-d: ABaChIjBDKGNgUGAQZIQhISi0eIAtJmBDgA-H2LhiyR42P_____JSxVAAJJwRf1XpgkdN8BrB26W6OU' \
  -H 'x-nyupe9cs-f: A47CBECFAQAAlcFMT161HmMOfsE90ukKXtE_4dLppeezXIshbAEOk0Oq5k0PAbUsdyGucgBSwH8AAEB3AAAAAA==' \
  -H 'x-nyupe9cs-z: q' \
  --data-raw '{"header_request":{"version":"0.5","request_type":"PRICECATALOG"},"sender":{"client":"WUCOM","channel":"WWEB","funds_in":"EB","curr_iso3":"BRL","cty_iso2_ext":"BR","send_amount":"1000"},"receiver":{"curr_iso3":"ARS","cty_iso2_ext":"AR","cty_iso2":"AR"}}' \
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

    echo "1 BRL;$WUCURRENCYVALUE; $(date "+%d-%m-%Y %T")" >>"src/databases/$TARGET_CURRENCY.csv"
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
