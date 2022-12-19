#!/bin/sh

TARGET=$2
MESSAGE_TITLE="Western Union Companion - By Victor Gutierrez 🟢"
TARGET_CURRENCY="USD"

curl 'https://www.westernunion.com/wuconnect/prices/catalog' \
  -H 'authority: www.westernunion.com' \
  -H 'accept: */*' \
  -H 'accept-language: pt-BR,pt;q=0.9,en;q=0.8,en-GB;q=0.7,en-US;q=0.6,es;q=0.5' \
  -H 'cache-control: no-cache' \
  -H 'content-type: text/plain;charset=UTF-8' \
  -H $'cookie: AKCountry=AR; AKZip=; AKRegioncode=; AKCity=BUENOSAIRES; AKAreacode=; AKCounty=; AK_TLS_Version=tls1.2; resolution_height=600; resolution_width=800; is_tablet=false; is_mobile=false; WUCountryCookie_=BR; WULanguageCookie_=en; AKA_A2=A; bm_sz=ED5041C6A07B4FD7B778830346E27523~YAAQTkostfCAmxaFAQAA/3DQKhJ/aMsEebzbpHewBLCZ7NwReWKD/fPKN/JUBag+1Dni+RQvyF6Xjtx/TpitYafOj6eu3ytV1jVivQ1k4CWnjvWfC0hpw7NdGsuyDD/GPEXki0590lyKiFhNBnOA1RxNmz/qQzvVQ6wLjarPx+3l50bvwtxtKc+evda8Tl6cBy46DOVNHx+8OB5mRTjfn3d0rMfu0Lxr8/oEQr/9lLVQzdEKpnjlUAOJzEqrUrdvg3skrOoAzxKcD76PtRl2WdBwrFnbCLs/bfAvOBwq/L2ZjvHKhYDu0lw=~3290437~3422256; _abck=39232BA13024CCE59B1FDDC26B4FDA09~0~YAAQTkostfaAmxaFAQAA4HTQKgkG91lr18U7s27+voJU0pCRctapBv99oP7xyU4a2+Nft9Zj04gqt57dYVNbBrhN56TqoEXoKecnbvFQOlqSaUpNPipj6PzdDYNLfm7n48z3s2crf0Ra/rmM3ZjGWiDAopVZX6cf66KeDKVa1B2nV5UY3Mq0CuRdN3EFUaoNj8gYO0ui+YcCmSvtt8BZLyrJG48wNfoHtiSioeiZxd+rwAwlFzIS86Ey4Z5nEOPQaKoBob4/rkvjVSxF3zMQFvddVt0hInO4YEewHJnXS4mqq8mq2WHKBM3ce+3rCPYOYXA/C20hSIk0+gLAq70RO4F5UwFJHQXBjiBqtNTnXPy54kSQEt1F2CfPCBCXGI4hvVYxxaR170duawYUEQ4MHqI4QxGtKP6HrfxoOLqV6g==~-1~||1-ygjUcChrYA-1-10-1000-2||~1671464076; bm_mi=658F302F485AA8391166D833BCBC5F43~YAAQTkostfeAmxaFAQAAu3XQKhJLR84YvRssEc6WXblUFftcCulF7qtMRgUA3KWtp5LNqbg8MtwBjUPJsAkyuzFK6jBCX/Jd20r0JVdNS9quDsXlQEEn1vcdEEMr7NHp0QordmJxq3ut9ppiHAI82bpO2g/JxIgFTU3M+OvbUS6HQ45CJmBR7pUL7747U5ZpBplwz5/JJrrfzDWdHX1ODclSI9N1UBavQy24+DGERjCppVkcg8UZDOS2rFbNsCSf5ZYHgDphvnszn2UFysSf6yOkVdtDXJfCl1Zz8gTQODwUU3wFMtzISZyXZyI8N2mRYsA65zrpITSq03zMahQXVgTBzXObK/2o2HLNWuU5l9ixT86Ko//nrqnwjDY67COPYw==~1; ak_bmsc=28A16593B793DCA308895007F6EA7365~000000000000000000000000000000~YAAQTkostfqAmxaFAQAAxHjQKhIJgK+d2QAqPnVfyKTod8Y1rKkDMoNCv0e8ET5NAfmgnnPTyEnxYq8uk56Gesyn9/1aAi3QPUzb/SsbQI54/jXydDE8UcXCuwpxqB8XFuaichutt2HMxixL1aWD2QSa37Vfht0RApRZ46nEeDCnu1CpuoLs3Vikt5k5KkWCBCAyDZ218q6ZX4hFK5mi7kqdfp75zwCpepCrlMnjItcknPoa5N8+aJdJIzBuMpS/oTwljBsJGLySYXZPDDc+Vk4fLJmadBz3J3tKkK0QXbhbNvrCu1o3UKoFfhO4KSk/29ppo4KHFAGm1DlMDT7n+Uv0trdn66HuVPKy/RyxnfvMQ/GzXRtn4wcCrOnt69bvcIAKM/maRFsMv8MDUUDIvxOEU3J1g/2dyaPdgVKL4zYarj+kTbrcgZ4X57HB9wARPfWMvaN/QKeNe67Zi6uXhBeXdWvFg5unC/6Jm8yaot/vUEGW2teharnEYWEzIDDVUWaKfLUU4kaLRM9buSWE0bymWHp/m8nOEVVCkr2pjxusMsHMSNk9ffl4qSq08zyURbSV; wu_device_id=9cb60e87-4e89-190f-0472-9794a91aec91; _evga_e61d=cd97f300195a1d7e.; utm_source=web-bookmark-or-typed; utm_medium=e-web-bookmark-or-typed; utm_campaign=organic-web-bookmark-or-typed; visit-logged-amp=true; user_txn_state=0:1671460583527; amplitude_id_7d40b1ccdea38ded011affb5946a3ddd_project-leap-qawesternunion.com=eyJkZXZpY2VJZCI6Ijc0MjYzMzFjLTJiMjctNDRmMi1hMWQxLTc1NGNhNjcxZTU5OFIiLCJ1c2VySWQiOm51bGwsIm9wdE91dCI6ZmFsc2UsInNlc3Npb25JZCI6MTY3MTQ2MDU4MzM2MSwibGFzdEV2ZW50VGltZSI6MTY3MTQ2MDU4MzcxNiwiZXZlbnRJZCI6MSwiaWRlbnRpZnlJZCI6MSwic2VxdWVuY2VOdW1iZXIiOjJ9; _gcl_au=1.1.192269537.1671460584; amplitude_id_4aec879ef8bf1823486c4338537ec441westernunion.com=eyJkZXZpY2VJZCI6IjljYjYwZTg3LTRlODktMTkwZi0wNDcyLTk3OTRhOTFhZWM5MSIsInVzZXJJZCI6bnVsbCwib3B0T3V0IjpmYWxzZSwic2Vzc2lvbklkIjoxNjcxNDYwNTgzMDY1LCJsYXN0RXZlbnRUaW1lIjoxNjcxNDYwNTgzODYyLCJldmVudElkIjo1LCJpZGVudGlmeUlkIjo1LCJzZXF1ZW5jZU51bWJlciI6MTB9; A4kgk7nd=A3Zy0CqFAQAAHFrDWyyHi2-geoWY0CLWbQrqro2avfxhbolVwduPxYBQ7aMcAbUsdyGucgBSwH8AAEB3AAAAAA|1|1|30971075290669f09f7cab3e7720396f4e7076cf; s_ecid=MCMID%7C10527002012958908521997717894336953425; AMCVS_AACD3BC75245B4940A490D4D%40AdobeOrg=1; s_plt=2.33; s_pltp=br%3Aen%3Awebsite%3Ahome; channel_stack=home; affiliate_src_code=; s_cc=true; __qca=P0-1709286564-1671460584261; AMCV_AACD3BC75245B4940A490D4D%40AdobeOrg=1176715910%7CMCIDTS%7C19346%7CMCMID%7C10527002012958908521997717894336953425%7CMCAID%7CNONE%7CMCOPTOUT-1671467784s%7CNONE%7CMCAAMLH-1672065384%7C4%7CMCAAMB-1672065384%7Cj8Odv6LonN4r3an7LhD3WZrU1bUpAkFkkiY1ncBR96t2PTI%7CMCSYNCSOP%7C411-19353%7CvVersion%7C5.4.0; s_NewRepeateVar=1671460593487-New; s_NewRepeatprop=1671460593487-New; RT="z=1&dm=www.westernunion.com&si=f615b927-54e4-4590-92a5-457baa9d3ec4&ss=lbuwh22d&sl=1&tt=1sq&bcn=%2F%2F17de4c13.akstat.io%2F"; dtCookie=v_4_srv_1_sn_3073F541391C281667306FCD474D9E96_perc_100000_ol_0_mul_1_app-3A4f296d341a47bdba_0; A4kgk7nd_dc=%7B%22c%22%3A%20%22QlFhdEJVbGNteFpOVWFNSg%3D%3DBqkQDhhDW71kVDFYks8TO0BukrJZaEgpyonRi2sedxdPqH0ExkLSznYlZLZmON_pkgGHbSPPbVsY0U4a8IoTfzMtgWcX48g7sQP-wNdtcQ%3D%3D%22%2C%20%22dc%22%3A%200%2C%20%22mf%22%3A%200%7D; _dd_s=logs=1&id=42d0aa6a-d132-4d2e-8782-8dc671cd2ad2&created=1671460580847&expire=1671461500912; BIGipServerwudispatcher.westernunion.com=\u0021R9I9kfdPmEjamR89v++QYZNsXLq+H0jEKSIS5OESzLHbnvbL6nHRHY+cFwLtUCOyVes5SyOhkqGdqg==; bm_sv=753221350AF28E644234219311AC3787~YAAQTkostT+BmxaFAQAAbMDQKhLk4ZeOWFftGSVKqqDxi9bEajtvjLalRttu//FiYPI/GwrnNRDB1cPR5ek8EXzXAHKtoKFhYyxBmztIdpMOm4yuiZ+mJuyLM7xnucOLbpLYUbWgSm5HbErdjPbo96+kmXxJ8hiySsDczEiny6gAHHfovI1ns6YemLVH/67rQ4tuEjRTlMrafSXZWqdF5TvKGWb0fSy1UaUP3NxwNHaBPYtExzuhDE7cKhwQxJWG0pRZUFwM0w==~1' \
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
  -H 'x-nyupe9cs-a: Yw8kMJ6yyen-tA1dOb3S0_p8wAuTJ0VPBWB3Fhq87=KtV06ZRHrBNYu5OW5o1LZGyhnS=YQ4=69c4ShLwl1n-lAjjPvOq7KcCmbXkBAeOF5J9VIln6shW7i8WNNkk0=Msv7Di4Fmj5KPs5QgwrSV5Te=SkAzO514M9CB0rfeYgKfzIsOsDOb7h0WrKk7BXdVTqKvrqJL3U8m5uv_DQNQwAW78b3-BVDdR_KbHPlOaij8sMvR7en0qZ3a1N=L2ALfjpB9=gnXCtrT6oqzrNqhGylu_TUL_6qjXlvPe=vHFQm=ai7rioG7WIoW8FbR_ZesR34ib5OtMBMv48lvaDSiNQFWlG__uI-XJwQwMmUFVPa1FU5bo7ylQBE4CSqUJkoSuPmvW6UOXeC08=tM41RG5J=GjbZ8Rze5emLsiEORuplr1XzCwWN=8HVfJ2v_PpMin8FUcX8bO2PzE2Ik8Y-fm2GKsG0t-dzUenNdijmL5hThZWpzQw3sayP0KRgENJWgdUyiKuHbS38cT4egnz3naSDC5=w8j-pe5sP01bE-cRNCDcWjMJnSqroqEq0mzAOVGZOc3eFqTbE6wMogpSM7RXCtLYJ8TlJKus2hLCyibYDNlWbHhPKZLtNY7LFne00imZ8jC0LRtO36Q-tRIHj4WgHdpmciL3Ow1LDq3qITnQWhWhNQuCbtwACQ7sTPhRqu1QnSbUB4XhRdR0KQfmV-p841s0NFwOUw_f6MVKG-7wr5v-8I04S9jerWS0QCdBZv5T=T=qy2w3g9vb-LajmhHdssbRu86rB1boXjBZ5H5WBuw5nleKAfF875FmwiyDICvN23zg01=hUk2R=Z1SrUtTyHKrqZ82BVzRhQLNDe_yL5ECDT7RIdvLnoGWFK-RTyH7-P5BBrli9qVU2avLq9JK0dlZ7GQgQQHYOZ-np5QAT9k_qYHy1EfmjhrQ7cSWvycCjbiP583iXgSwPyWFFF11z3ffzR4QWWCUEYirdVWKBvb5gmWs2WOAsDjgLNGZLyIFMo8Qt7rltPvZqutlU5oONVSY14j1KPKWtOM5_LnNgYB1LZspGG6=4-kOSd=TR8j9imFN_7k-hU=aDfCgyaakEJze7davuBLn0LzidgHw0G0ED5=5Dn7Ghzf-dTihUDn-YF=JKY=95uOwP6o1bRpLvInI6La23Fco_kDd3l=syY3s5wL0kp7m9TAeMF2OOLfrCbShPFKSQpieaYs1o4IztLpCyMmdImckbgfBh1ekPlHqN9tIR_DcJ3=gg_1QbayXpp4aBhGTkfZSEn0YXyfHz0wj_=g4XALv4E7miVk5NLlwgLVrbvuSE4fhlMOOD4Hbnb88RG98dGgKffhndov0ZHVZNesgii6sKiBM9PjQ5-3BRU3i3mCVgRS89FsRajoTDr16dqWGYQmVICcaSLI3IZBuEwPYR7fFYU1BMNcVijqug-oAXfKnmQ09eP_AEfdaZI3SLnVk4TkagFXWEtUFOkCSewNTsZjALWz8vkYLkakOL2FLu=vptS0QlBRzsmvVTAvsMi9=aoT=Jttf4EwDeNMIukvil2T_qkkzvj_y2yvfmbm4jZEn5oLAvF33IU8Yv7O9jX76HvymVb4Yb_zQaPMeZGkpvK-dlbsDLr1etjRZ0YU9QokGMFU8C5rrqBGDLN56yfQaj0Hn-JqHauYei===2Ps-eYNd5uRlZkLd4DbPgiwZJJdmBt2HPUHGth=kOfS6QnVPA01USGkYSYFyEovC5DA7zA=Z4tF5HLim1opu3na90tjUcfrDqWQNBJm6WkYsry5OB-zbCNUDplVNL-YEGWuJ79un01hGekVGm2BlH10mIg-L21X2gXrN=q7sccOA-jb5n=VQrs=kk0CGwccr16z6znGiJtC8yMVMHoZkU__sCbqp5weXaeJg4W2RbRBCU-onuLdjcRHiez4qg8kG94HmvdttiVcIAMzv6Ziehp-0b6n0vlrGEPbQ4BTKJ5bRczi9A2VrmhfquYvgTldgIKrp8eQtN1t9S2er7aPaCaQJ9KTqjlRH=vUPSyHymElqQFZbzCUbARUV6XEKuYMCl3pvWenyg5CumTAEnEtMnPPC3m1j8CFTrjekH7-jAXojpcEshk=V80GDWQdbKjRtb_Z8Tk3aQVlsbUecjuCQWXhsvXS5_GbtUU7tU83D2Qn-vFCsG7-UGHKV1ORhoJNiiqz4N7D2CSrCCMsTu1JK3iDaU6Rt-7R0nV54j_0PImQLeR2ft3lZieaOG0pD=uVrGuUalX8-jJ7rpfu9wG0wtPCZTdt7WjP=OShKepkfDsQDIZZBQoDuoJQIYQtKFo05iVO-CfNeAg-fWV2izpadadpIrD_A6GEtouDjufL8LDp6kHJj3vXTfp8jy2LTogaQ=_UJb79AStbaDzsFRzyMFNNL0pfv73sncS_q29moME9rpu6lkl7zc2wCAJOESSDlaUOd69HSqT-ODJc7MlgzwDLDnq5H8LCTeoRbfNaU-X-4hihFGFrtwVbNAD84tVCXB2=Z9aWDEMGyC8Q64P8G9oVXetjb_zMygR3Mtmr7UJa4MljKSKPpV7ci0zE-E20zJYbqNDh87IynRfSGibVJzO6O0H=LCi8vmE=RQlcM3mAJK=1A2ARsYh_OMSRXC6g2cQa9KjRM67p_RNPmKN=J90lOvUOkU=7BFWpJM4aX-rDUG6-86fyu9WMVj93PDepFDTEvI1P2_es5dp7yB6gItcSd_gWhuFiTZmGHmB24FaUuF38t33Dkjd6iCt2ZD=NZ5n4MBX=4Z6zzOhsLtKZE6pLutzk4IrCgL1TKAYWgBoclvy_yGd4TXlqU9PCB=qisKHYekQekrP-Z6ZoZn_ZT37ggL=mnDLFCTLrK0jAt4wNLBTT4QbogQY4vTuX3p=XydI_6BNS3pu_EntieNUYROwaGXeNVZiBecwOYf6OwDdtTUHLDwRGjcmM9jur32gQQu0cgisCor9mnJon28MfoGy45cBpciaQ8=1D50VRhIWlshzCk33BM85etVlnXzjMnAGD_GRTh5Ow0uwGlFEVKYM2XjB8uOb1iGVXJAyAB5awhR0E-ngOsGnBAGMNYJ6JyicNj=4MK3Kpw=Qj5TGDgY3LzvhAD=g5F72koJ_kZdKmGv26rSDrMQCG8jM_ENAq9J5m3QEn-CFPTv2GK1NQsAHdZvA3S9fHsrHrdHw9_dI2J8onjzt0qHDiPvBD05EZVBjwf1zHwc0BAGDVt=ttmQFeXI=wfd9MQhsZ4464eivQmfROIdzbauwT4XNzS93bP3IArsns-N8dH4fb1M9qfcpXplMf4f9dT3uT4GN7iawas7AXVZdJk0Jf-Y1G_ZblECorww8wAusnAVSb3KvHHzcFtMaAQ7S8eTukbzNQ0Udvn7h5WkygGwVFUEDMc9HwQYAp3og30-Z5=Azh0HgmiRBMtApksXJ8ySDQSwsICRtkV=yFSEayrngzSSCWu=fSTE-wI0Au6-ZT_sVAk=GJhL-uo_kHtdU=DN6vtcBbCGCOh39ZE8IWbTmRgFKzDXWDL0G7BMO43lRfe6NU5MaXEavUXNrJ9ZfiweEMYgsQSkdDf6irI2f06CiJ5UDPJhu=jnX7Pt4Z7CQauVFoZWToUD9tOnHaiuqhpSKFU9KiD-HI1-5SISV2LYlgP7XY63T6qm1ztbIcSfK2L7-HFXN-sl3dOC1KTpobpynFP3v2NtpkIBywGr0Xg0=IjlM9-wfQ=HqySPecV2' \
  -H 'x-nyupe9cs-b: w7q266' \
  -H 'x-nyupe9cs-c: ACAyzyqFAQAA5RdO3NLPhZ0utn0xMGZ9ArM5xGnHuVSTQkdsJ1Kx2rzNQBZA' \
  -H 'x-nyupe9cs-d: ABaChIjBDKGNgUGAQZIQhISi0eIAtJmBDgBSsdq8zUAWQP_____JSxVAAKn8xRgIXgK0nuirkZLdRAA' \
  -H 'x-nyupe9cs-f: A_u10CqFAQAAraB05Wuenh_jZITKIp6hANRW05zeAVF8VF24fuIxufkDFhBcAbUsdyGucgBSwH8AAEB3AAAAAA==' \
  -H 'x-nyupe9cs-z: q' \
  --data-raw '{"header_request":{"version":"0.5","request_type":"PRICECATALOG"},"sender":{"client":"WUCOM","channel":"WWEB","funds_in":"EB","curr_iso3":"BRL","cty_iso2_ext":"BR","send_amount":"100.00"},"receiver":{"curr_iso3":"USD","cty_iso2_ext":"US","cty_iso2":"US"}}' \
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
