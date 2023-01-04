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
  -H $'cookie: AKZip=; AKAreacode=; AKCounty=; WUCountryCookie_=BR; WULanguageCookie_=en; _evga_e61d=cd97f300195a1d7e.; _gcl_au=1.1.192269537.1671460584; A4kgk7nd=A3Zy0CqFAQAAHFrDWyyHi2-geoWY0CLWbQrqro2avfxhbolVwduPxYBQ7aMcAbUsdyGucgBSwH8AAEB3AAAAAA|1|1|30971075290669f09f7cab3e7720396f4e7076cf; s_ecid=MCMID%7C10527002012958908521997717894336953425; affiliate_src_code=; __qca=P0-1709286564-1671460584261; fp_token_7c6a6574-f011-4c9a-abdd-9894a102ccef=LMgsJRcfyMg7FunMOmfpI6X7duB2Acn9POKakafZbqk=; QuantumMetricUserID=fd6f2bb6039af967626dfd35a3ba712a; lastCountry=AR; lastCurrency=ARS; lastFundsIn=WUPay; userIdentity=existingCustomer; user_txn_state=2:1671629693746; lastFundsOut=BA; abandonedCartToken=10befe9f167f8d8ce9b5c3fc7891d424; __ssid=9609348f42f15f82481811bbadb31bc; AKCountry=BR; AKRegioncode=AM; AKCity=MANAUS; AKA_A2=A; bm_sz=0427D8F4CA1C1166CB7804B6B4BBE17B~YAAQDY5ivp1afPCEAQAAyeLZfBLHs/zX6kvTfm/Lh5Y5fO1GYI7FFxSpiAFzE+ZSe9J6697oIbR01eOXC9FCSegacHoFzxxjVspwkzn7oZ/LG2qLzQm3a2LkQRAc9y73FiR8Sf54Sip8clx1n2CujdkYWSCbMB7Fhj1cxvZYz/JZbzMKwRZVJ+GYAJhM/DQn4u80FlaZUXtfrg0lOc5Uai/1oms3ngCdg0o5FDyklHSSXVnpmXbWefWs2j5oYRu6u3srtKqBceqIsQPHKTVS8vN0kB4SCP+Sto4qfF1NuZZQbmVFRxuBuLw=~4343107~3223862; _abck=39232BA13024CCE59B1FDDC26B4FDA09~0~YAAQDY5ivrxafPCEAQAAgu3ZfAma0Str39JhgVkpUjOvbbXNThs2VaG1a9BE33A7fs1gGnHZ6Adpc4ejM2bb6TN5KSQN/rUHw0ifBVUFxCkoyz1dz3fL+/DfEpd1ICyaYfm7bYUTXKa38lm3Rwh5YMb8Bw+egj/p4kxJYLUPs5WtBLNiIcMMzO/MqoXP39Ez81YE/z3AAY3qdy+PSH18SfGnNRpEXaKteQOYBxdGdYnBUv/jiIUFCN0LGW+UoQhcZXfahzsZ1Vt2BD2ONKVE717z/o8ceIumagHjLhGTdLiSv3lOUZC8iE6PUlrkZGNoQeqKplPw9PAkeKXf+30VcO+G27BtWG9viLhL26DUc5p3hwBeG+P/0Ue1Y0+VgEuwe6rtMZM4LcypsKrvlPWszmiUEgMce6gaUvkoDohm0A==~-1~-1~1672840517; bm_mi=ECFF1DD94CE4D48995FE8D404FF3896D~YAAQDY5ivr9afPCEAQAAwe7ZfBIztCY/hR8e+bABBBXiaPc6vWXoJw14Y1SDZGDLQVq7jXGLw8tKsMQOZ9S2oVfKvqRQdcSgnwN4g9fzn4SVSIeRtURy0wFo8JhwItVAaHPl1H44byVQ/dJm7mVJMQYgW2sa95h28pgnfu0xNFwydvrP0yPfL3XxgTjM4tff5OUmP0Ii1I/VMAOPZATm4zOj3v2jiEWWKXBpjL1rf1l1H//o/1de2iJicrWFLItAZ8HjQVP2BxogR/B+sSm7ZhHkDr0j3HzOKsLw3Xq29SbQZpm7b4CQlHouCSsK7/nRZ0qPH4aYX+7VCc2HOIdSWy7aoCF1dwPFDDBo8AuU9foQRqW0hGT1hJnnCDJLzBY2tiw=~1; ak_bmsc=8711941DE52C49F8631565206CC44941~000000000000000000000000000000~YAAQDY5ivtRafPCEAQAA+vPZfBLDYwHLK9/Ip2but9CjlLyKKQqkMqUEIqg5SRY31t6tfPvMRTNe7YWVqkBGAcQ4jCOw+rcQPAITChPrnkm53W0vn0yVn4KtnOg+kFy41fTfP5JtzFGMiSEZpRpfn42mNIiB1mdeboAAW3dQ8tV4RjIEEnom2BSKbOAftK1Xq+gp5qJ7EYwk/4WnNrfLkef3USTcMdTN29sx48R1Syb2aWT17axWO8i96bCWYiXSVi69Ogq1JZ6jjSgzoX5Px+1qLjaNYD8z5WTFp2GkWk6CdJ2fHb8DrRi+NZo8TDy8djhzDxMxt/1UIfEAsdIB6+7lzRh1ZbO46yWiTzNZS1qBWUODtzVEYSF85id55aFFqqdelWJR2imE3eRcZwX536IrRHnNE+ZY8gRX/x6mEgieeBxD7JjvQwzb4A+/wTNbv8nUh+q+jkookxVQq8pgPR3eU5Hi8vflJ8xl9pJAMsRwAReML1cYNiO4mLSBNcf9h9VkEmYXANcd5Uozw7o6Rl9wh9fuO5qpK9GB7DtD7jPhuiQEDplxg6Ltdzj4OHd3V9RdztE=; AK_TLS_Version=tls1.2; resolution_height=600; resolution_width=800; is_tablet=false; is_mobile=false; AK_SID=dGVzdGluZ3Yxed; wu_device_id=c114b64e-6aeb-07fb-e3e1-5b6842d8439a; visit-logged-amp=true; AMCVS_AACD3BC75245B4940A490D4D%40AdobeOrg=1; AMCV_AACD3BC75245B4940A490D4D%40AdobeOrg=1176715910%7CMCIDTS%7C19362%7CMCMID%7C10527002012958908521997717894336953425%7CMCAID%7CNONE%7CMCOPTOUT-1672845497s%7CNONE%7CMCAAMLH-1673443097%7C4%7CMCAAMB-1673443097%7Cj8Odv6LonN4r3an7LhD3WZrU1bUpAkFkkiY1ncBR96t2PTI%7CMCSYNCSOP%7C411-19367%7CvVersion%7C5.4.0; channel_stack=home; s_cc=true; amplitude_id_7d40b1ccdea38ded011affb5946a3ddd_project-leap-qawesternunion.com=eyJkZXZpY2VJZCI6Ijc0MjYzMzFjLTJiMjctNDRmMi1hMWQxLTc1NGNhNjcxZTU5OFIiLCJ1c2VySWQiOm51bGwsIm9wdE91dCI6ZmFsc2UsInNlc3Npb25JZCI6MTY3MjgzNjkzODI5MCwibGFzdEV2ZW50VGltZSI6MTY3MjgzOTgyNzI1OCwiZXZlbnRJZCI6MzAsImlkZW50aWZ5SWQiOjc4LCJzZXF1ZW5jZU51bWJlciI6MTA4fQ==; utm_source=web-bookmark-or-typed; utm_medium=e-web-bookmark-or-typed; utm_campaign=organic-web-bookmark-or-typed; s_plt=1.96; s_pltp=br%3Aen%3Awebsite%3Ahome; s_NewRepeateVar=1672839827529-Repeat; s_NewRepeatprop=1672839827530-Repeat; _dd_s=logs=1&id=0ffe4c6c-b555-4abf-a27a-afa6967593e1&created=1672839825134&expire=1672840736232; dtCookie=v_4_srv_2_sn_54D2627FB2C0D9F5C8966D74D752977F_perc_100000_ol_0_mul_1_app-3A4f296d341a47bdba_0; A4kgk7nd_dc=%7B%22c%22%3A%20%22V0IwbWxIT2NIR24ybmRZcQ%3D%3DoSRjk2cCvTIO9Syb_6rQkuDTuyGd7NP44h9zxJx1ZJCY74XTp74wxgV1lsMvHCgJjv_Rw_8P6FcLZYcXaafWT4pxO9J85dl1YOE7J-XqjQ%3D%3D%22%2C%20%22dc%22%3A%201%2C%20%22mf%22%3A%201%7D; RT="z=1&dm=www.westernunion.com&si=f615b927-54e4-4590-92a5-457baa9d3ec4&ss=lchnx1jj&sl=6&tt=eba&bcn=%2F%2F17de4c20.akstat.io%2F&ld=1q9s5"; amplitude_id_4aec879ef8bf1823486c4338537ec441westernunion.com=eyJkZXZpY2VJZCI6ImMxMTRiNjRlLTZhZWItMDdmYi1lM2UxLTViNjg0MmQ4NDM5YSIsInVzZXJJZCI6IjMxMzg2NzQ5NmRmNzc3ZWZlNDNjZDM1MjBiMmIzMmYxIiwib3B0T3V0IjpmYWxzZSwic2Vzc2lvbklkIjoxNjcyODM2OTM3ODkzLCJsYXN0RXZlbnRUaW1lIjoxNjcyODM5ODM3NDk4LCJldmVudElkIjoxNjMsImlkZW50aWZ5SWQiOjEyMSwic2VxdWVuY2VOdW1iZXIiOjI4NH0=; BIGipServerwudispatcher.westernunion.com=\u0021GRBAQTTVOJMzokz8CfygQNRcFY4JxpLnAtpWfmzZV9dyzUn0mZynWquE4Yff8AuQ+3/xeXoK8EaxOA==; bm_sv=B5EDD26C4BF2B437795293C42115B511~YAAQtqQSAkRNaBeFAQAAtzYGfRJVbIKqRd6A5pY8rlIkc2/mg8GFZj7eDXucqAXF6K2ZXI6v8jev3RjFD9H/ga+2hddBLFO8qmgZ3ga3qhDaWOkg3StJmytqEzew8uzUJavvRLnpc/0O9gmWlG+DQ27L6ntdIrW5HUq/Tw4kFNmTLXLJiupncWXTQYUwD6TGqdhWD2OGTq1G4v7LkMvJDMvi5NIAX2lCb9w/9SHiWpZb2aU0t+FM4hiDo7ZOeBsNdoW+tYYHCw==~1' \
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
  -H 'x-nyupe9cs-a: JAsnSu8tKYC6T9Ib45P2CImxsOWuBrLp87cSOpfOfpI6=3D7xsH4ha4C_QL0RJ-BynnoDdqOvRVmAZIN-kA_gN_tGUZg6-E-vHGv_1MzW7jpGUyGv9wX0yZkIo9lpQ-8bGSNM=qO6U1fEZVgs_ZbJtRQ9yZRd72O1MZcM5TLafUTvaawMCTbLnVoEvfisRU3cFlWJL8dyZr=-1hOTbiU79=379xnfWi_RZ-SZ8AGOrb6Mvx86KiALYCLKkEf1k-SKla6Hq52lsN453QtCtM9Zzcp0yAS=19yoRAvp_Mp-lKfQJqbRq_xIhiIRrl2KjtodKZ3p8XkzStlD=v2izKKwK2t1WR6XLdl3aQ4YQW8J=ooxddWMDXPF6GQXjAkwP9WiQkfd=2PSUEX=bWYZrCZh532bHNuhm4sZZiDkiY04gYs3TnsE4otut2UZEOYvLNnqglFCaaC9cpDyOfQU6fi0U_WR1FNRUPHLiU5RZ3jd0iwYzGM3_aSUqv4cLZc2JurmZ8S_zHhHWNKWsIGFL56f=50NLkL54z_81qQywk4zU9pfBgbgd7=tvdoY7WJcy20yOK2LD=VEBNUoPzBQbWCIbUXBOrFglhxcGv4UDbpkZJU9Ap0xmsKd=x4hCTBR4LKI1ZE13ag3LZm3-5v81Pql36gpZGbzbyXAURAl_QrtNRwVzBAx-K8sKM7sUimsqnwx0PlJx=ni2NE-5XuAKPuBq095Y_t9-OzvnUjnGWAs1atRdMLuwDYTF3M9Wy5VgUfIdjSgYVZ6jNYuMRJhyCw_DFHgTMD2rII9V-Qu5iyDj16J-s9gs0UtN6oVtM7f9MNQDckOTWB8IR4qYUYYqBS5S8Mi-fi6vI_c1hyG5qcx=4dk2ztVCN47-kZjD7nMb9kmbwkgiAoyuN18VtJGPhFS5k4w0HNo0kj4CnGTNfr1pirqN8MtNGYysxAgN6ZGj6PKQJDv7JAXowTYqIZa9XLTQx3=Pf-G4o6CvLR86Cqw14XkK7lIIztj1-qIJTgOPmEgTuxmfTjcPVYau6O8vvtENognlibX0a=-rp0aT=IzqN4um3mYxtGU8MpzmoC-=kg9VBW3Kmr-hO8FzTVUGCqhErIsG_2tBu1Bi7aVr9CrYJY1CrgoVj=J8ju=0CXMcoBjdb09Drq3vos_da9ZKJJNixZPVq=JVjHKEjG7QNx6hCzCJ3_hK7A7tCdtLcIGI_yZXj1zkatcE-_xvDD=kMlYnYd7Vu9VS5QXhT-5ZZHgLP5IryvsEsl5STtz6FKMd5cg4m_p2Dtxq3h1Y0MVoW-S71_9aB2VXNEydZpZ5awwgPQb0G34b5j_inT-yd9vqPK=10=Gc2_pCxNvRn=PdYBS5__TKYRRRTHktoGxkdQFnoawtI2TBqyHNvl1JoY5GcriqsTPrlW0K3XYyFNXc-X_dhrHmDhgj-AMTj80XiNZOiAxC4ruO9kiY=mx-9vuS6f07_S3ZABMxPT5ldydt1llmjbQdjHOKr9_yXQGExQVGGs9BHpF1pVwbNYW7An-zyDHB3QfhQ4RErPx6n21E_cx=61WO1bS-GkTFsc3bdLifG8UyRpkq2oR=USAZrXx2vAC2=d8tZYXr6bOgVX7OjV8IaJjoUzUhzs-DZG32xYl5RBsXL6Ko6B4V_66hCTHwG_o=oYbuGxWsU1HX1ZhTwk1Pol9EyyrkQRqdNQUM-7Ch5KPQ9H3-8Z0XGgDFlZsMsppQj0BqPMW_buvVyLIXH005t4iFlkzGmXq-d-OLSCCQs-ZqZEv9HEgWa1hGY2hkBklHZgOhiYS5vAAXD10Y9EDiLa_QxTiSz=Sfc22=jwFcH64zV4pg3oxFxSwG_nxxvO-T=ia8UxxxcBH9d3EK7ZzNyuoW3dM_u_KckyWXPrgaR7HZqJiPcnYow8fhL_nFl73wsRdLmxRIJWG8yzgGdPRoIPUr6GSMdZcOJ7-DAKMEgdrWO_qpohWdEBc_O1sAOi9J5AEJsfB20rx5AC2JhH-sPqkb_2mJjw2B0fjxSI8PTB4t_RsTiCZbBKp3YfBfZmkj-1uCUui=l8YYn9446QfUY0mKDZVN1xnw_gI6d2UsQti3hgQbdQ5oVJTzurLIprWPCU5E0lJr6Ld-1qpZwkqHDAK7JqkPkT3V1oysmYk4dCUgF8ouRaCJBMr0R38G1M2atMRCxUPivr-_DX7DCXqOc6_fR1ta=Zos9dVT1Myshc2fnvsqG1RrYGIg8KQ8WVmcDZoSQfZpEIrnZdg3lh3JJLwDBj9nSra7iS3cazPQCYJXjuMo2NTTffSl2CHywYkHyjkuA=480Z3ZgTdnq3ylRWjE=cS0cyyDx1-NMvTCYwF=xagQTMrJWm9vU22rVzhijtNrkyKWhawYU=gT2sxbiUiEuxPKlRnQlPBG_K7Zy_xnpKgN_EYww0g6qbCWJ5RI0N=btWFanf75JIsjxxirTsaXQxT_cynO61KoZVkPQ8hnfD_BTnBHVJxJHJImCBctvlIUJD-jqvkM60yfo43wLJDz50MfjFXl8Oy3DyVynZKnpZzCmT0mad2Nk31IKZ9B46Rim6h-otKVd0WSG=OL_YJFVkJXMGtRTq78FQz5A_smGFyRZingpnYrKgJjDuqCuQf1v1B9rx-IGNtfpUMBokIhnWCWVNJmn2Mj5UdBiZ5vYj-kVX-P-nq8l3sdvrYkJmtTyXpYnIJdtsWO11YtSPT4mcaXEDSRDqdq4mX9EmcoiNUuu65mcy66dwof5nNk0uXpyrCb8YLn4xba3ud0zz-ooc7i2xQ1LVKYiax_ZmYIfJWaCcX1dIJh8VuFdD2QbfJGm7KnpDV0D9yQig3u9I3sB-J6wCFJ7-QM6ouKaO84a3Zc-474C4Z=8pgRyi3BI9fW-gFvw7NkxlEcu6fs6jjq2bND7yhRb6uP1txPB6WwSxJSPcrl1Uwprqm168VffV77gPLy=LXRpoGUlXdXm=4Kj6g5_S6a6WW5Rj0qxNUBcA5VC=1U-ZbkROfLzODKA4o04cYGNmaEH9UO_4yo=0s5dHqEZFKPu8J6qwmLLfbxyQ5IFED4V19O4wlQF-lOJH0LBF4iMlKUqiCyl3SdzdOd8Mv_Fx=x9jKfIZtE-MzdyNS8Ft0Qi8bV8x0B5_IRqaZIW84fZKzP7mKhDFZdCJ85r-H4jTvCLXo8Fh3afnkL1Croks5V8cvStxj8TCBRLqhPvouw5Tp-RCpPqHvg0S95kvDhrYcfKRicClGKXpbargaf-A68qElB7ufX2bDYZDZSkm3LsltaH9sKnirOtDbxQr_2PzhmXviAdSllMiCrdnYI0I-P7-SOOjhlUsHX1ExkbAHINlgu3kWuqzXdfIMc0PrnFFY446Y5hMjZLabCLkL_jVpu34pSvb6FUfnQDmTQyN=2xiUXThzHZs95sN7TqsgRvAtBQNb2HcLdxx9U81pTJoUGB_ytqq=XlUUuml4uM1MP_btO9U0pJPiOrWjKBFbRgnpROGDfQE3jFUOQoI_kMkna67u4A-PNgsIptZ41ABVlzN=tVKpjACmnYSxFwmiyw3BwQdrOltBUm0r2KabZRNP4AOLIQwAdKy-XIAvNMp3lPpnO8vuE0ysuO_D_SUIh5EKn=59Etx9I68AAl9miaWDbwVOENHD26B6cPc0tS6ksYFvhPjUGjXohl_CuJYiREVyfg1QswfVvdMNgt=cpV=T1Ha4AUQ=lxWxZrj_R4jmlOWCgYwlXPIpblRu8d3QtGSdr5urkdwZNM' \
  -H 'x-nyupe9cs-b: -g8nq9c' \
  -H 'x-nyupe9cs-c: AICXAn2FAQAAfEII7fUwvUds4sf1gzBbWpl9buUJ_QC81MQBLFnMsu9hwbcD' \
  -H 'x-nyupe9cs-d: ABaChIjBDKGNgUGAQZIQhISi0eIAtJmBDgBZzLLvYcG3A______JSxVAAB5cBuQBIFh9nypGkruwHuQ' \
  -H 'x-nyupe9cs-f: A30sBn2FAQAAQHmVRTtZagWmxf6hCyyuBA7PQawk1Q_QitDv0DrkP_KUarRBAYp5HuCucgBSwH8AAEB3AAAAAA==' \
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
