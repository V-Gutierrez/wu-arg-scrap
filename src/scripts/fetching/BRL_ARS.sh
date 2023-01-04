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
  -H $'cookie: AKZip=; AKAreacode=; AKCounty=; WUCountryCookie_=BR; WULanguageCookie_=en; _evga_e61d=cd97f300195a1d7e.; _gcl_au=1.1.192269537.1671460584; A4kgk7nd=A3Zy0CqFAQAAHFrDWyyHi2-geoWY0CLWbQrqro2avfxhbolVwduPxYBQ7aMcAbUsdyGucgBSwH8AAEB3AAAAAA|1|1|30971075290669f09f7cab3e7720396f4e7076cf; s_ecid=MCMID%7C10527002012958908521997717894336953425; affiliate_src_code=; __qca=P0-1709286564-1671460584261; fp_token_7c6a6574-f011-4c9a-abdd-9894a102ccef=LMgsJRcfyMg7FunMOmfpI6X7duB2Acn9POKakafZbqk=; QuantumMetricUserID=fd6f2bb6039af967626dfd35a3ba712a; lastCountry=AR; lastCurrency=ARS; lastFundsIn=WUPay; userIdentity=existingCustomer; user_txn_state=2:1671629693746; lastFundsOut=BA; abandonedCartToken=10befe9f167f8d8ce9b5c3fc7891d424; __ssid=9609348f42f15f82481811bbadb31bc; AKCountry=BR; AKRegioncode=AM; AKCity=MANAUS; AKA_A2=A; bm_sz=0427D8F4CA1C1166CB7804B6B4BBE17B~YAAQDY5ivp1afPCEAQAAyeLZfBLHs/zX6kvTfm/Lh5Y5fO1GYI7FFxSpiAFzE+ZSe9J6697oIbR01eOXC9FCSegacHoFzxxjVspwkzn7oZ/LG2qLzQm3a2LkQRAc9y73FiR8Sf54Sip8clx1n2CujdkYWSCbMB7Fhj1cxvZYz/JZbzMKwRZVJ+GYAJhM/DQn4u80FlaZUXtfrg0lOc5Uai/1oms3ngCdg0o5FDyklHSSXVnpmXbWefWs2j5oYRu6u3srtKqBceqIsQPHKTVS8vN0kB4SCP+Sto4qfF1NuZZQbmVFRxuBuLw=~4343107~3223862; _abck=39232BA13024CCE59B1FDDC26B4FDA09~0~YAAQDY5ivrxafPCEAQAAgu3ZfAma0Str39JhgVkpUjOvbbXNThs2VaG1a9BE33A7fs1gGnHZ6Adpc4ejM2bb6TN5KSQN/rUHw0ifBVUFxCkoyz1dz3fL+/DfEpd1ICyaYfm7bYUTXKa38lm3Rwh5YMb8Bw+egj/p4kxJYLUPs5WtBLNiIcMMzO/MqoXP39Ez81YE/z3AAY3qdy+PSH18SfGnNRpEXaKteQOYBxdGdYnBUv/jiIUFCN0LGW+UoQhcZXfahzsZ1Vt2BD2ONKVE717z/o8ceIumagHjLhGTdLiSv3lOUZC8iE6PUlrkZGNoQeqKplPw9PAkeKXf+30VcO+G27BtWG9viLhL26DUc5p3hwBeG+P/0Ue1Y0+VgEuwe6rtMZM4LcypsKrvlPWszmiUEgMce6gaUvkoDohm0A==~-1~-1~1672840517; bm_mi=ECFF1DD94CE4D48995FE8D404FF3896D~YAAQDY5ivr9afPCEAQAAwe7ZfBIztCY/hR8e+bABBBXiaPc6vWXoJw14Y1SDZGDLQVq7jXGLw8tKsMQOZ9S2oVfKvqRQdcSgnwN4g9fzn4SVSIeRtURy0wFo8JhwItVAaHPl1H44byVQ/dJm7mVJMQYgW2sa95h28pgnfu0xNFwydvrP0yPfL3XxgTjM4tff5OUmP0Ii1I/VMAOPZATm4zOj3v2jiEWWKXBpjL1rf1l1H//o/1de2iJicrWFLItAZ8HjQVP2BxogR/B+sSm7ZhHkDr0j3HzOKsLw3Xq29SbQZpm7b4CQlHouCSsK7/nRZ0qPH4aYX+7VCc2HOIdSWy7aoCF1dwPFDDBo8AuU9foQRqW0hGT1hJnnCDJLzBY2tiw=~1; ak_bmsc=8711941DE52C49F8631565206CC44941~000000000000000000000000000000~YAAQDY5ivtRafPCEAQAA+vPZfBLDYwHLK9/Ip2but9CjlLyKKQqkMqUEIqg5SRY31t6tfPvMRTNe7YWVqkBGAcQ4jCOw+rcQPAITChPrnkm53W0vn0yVn4KtnOg+kFy41fTfP5JtzFGMiSEZpRpfn42mNIiB1mdeboAAW3dQ8tV4RjIEEnom2BSKbOAftK1Xq+gp5qJ7EYwk/4WnNrfLkef3USTcMdTN29sx48R1Syb2aWT17axWO8i96bCWYiXSVi69Ogq1JZ6jjSgzoX5Px+1qLjaNYD8z5WTFp2GkWk6CdJ2fHb8DrRi+NZo8TDy8djhzDxMxt/1UIfEAsdIB6+7lzRh1ZbO46yWiTzNZS1qBWUODtzVEYSF85id55aFFqqdelWJR2imE3eRcZwX536IrRHnNE+ZY8gRX/x6mEgieeBxD7JjvQwzb4A+/wTNbv8nUh+q+jkookxVQq8pgPR3eU5Hi8vflJ8xl9pJAMsRwAReML1cYNiO4mLSBNcf9h9VkEmYXANcd5Uozw7o6Rl9wh9fuO5qpK9GB7DtD7jPhuiQEDplxg6Ltdzj4OHd3V9RdztE=; utm_source=web-bookmark-or-typed; utm_medium=e-web-bookmark-or-typed; utm_campaign=organic-web-bookmark-or-typed; AK_TLS_Version=tls1.2; resolution_height=600; resolution_width=800; is_tablet=false; is_mobile=false; AK_SID=dGVzdGluZ3Yxed; wu_device_id=c114b64e-6aeb-07fb-e3e1-5b6842d8439a; amplitude_id_7d40b1ccdea38ded011affb5946a3ddd_project-leap-qawesternunion.com=eyJkZXZpY2VJZCI6Ijc0MjYzMzFjLTJiMjctNDRmMi1hMWQxLTc1NGNhNjcxZTU5OFIiLCJ1c2VySWQiOm51bGwsIm9wdE91dCI6ZmFsc2UsInNlc3Npb25JZCI6MTY3MjgzNjkzODI5MCwibGFzdEV2ZW50VGltZSI6MTY3MjgzODI5NzQxNCwiZXZlbnRJZCI6MjgsImlkZW50aWZ5SWQiOjc2LCJzZXF1ZW5jZU51bWJlciI6MTA0fQ==; visit-logged-amp=true; AMCVS_AACD3BC75245B4940A490D4D%40AdobeOrg=1; AMCV_AACD3BC75245B4940A490D4D%40AdobeOrg=1176715910%7CMCIDTS%7C19362%7CMCMID%7C10527002012958908521997717894336953425%7CMCAID%7CNONE%7CMCOPTOUT-1672845497s%7CNONE%7CMCAAMLH-1673443097%7C4%7CMCAAMB-1673443097%7Cj8Odv6LonN4r3an7LhD3WZrU1bUpAkFkkiY1ncBR96t2PTI%7CMCSYNCSOP%7C411-19367%7CvVersion%7C5.4.0; s_plt=3.30; s_pltp=br%3Aen%3Awebsite%3Ahome; channel_stack=home; s_cc=true; s_NewRepeateVar=1672838302091-Repeat; s_NewRepeatprop=1672838302091-Repeat; _dd_s=logs=1&id=1fd5722b-c0b3-4bdd-935b-bbf2cac2793e&created=1672838293906&expire=1672839208558; RT="z=1&dm=www.westernunion.com&si=f615b927-54e4-4590-92a5-457baa9d3ec4&ss=lchnx1jj&sl=4&tt=at7&bcn=%2F%2F17de4c20.akstat.io%2F&ld=tiot"; A4kgk7nd_dc=%7B%22c%22%3A%20%22ZnJQZ3RGR2R6dWd1bkpvdg%3D%3DTPjRyqRTAzlteRlb2hZtSm-0hdZ2ojTlMIKSVVopJv8ksdVd5HpT7g4ViPBoIKCGv8T992Rbl-5YE0IY89Sx5mpcwfCrU7foerJOf8cmsw%3D%3D%22%2C%20%22dc%22%3A%201%2C%20%22mf%22%3A%201%7D; dtCookie=v_4_srv_2_sn_107FD0CB08CE4A04046921C5F88A1A82_perc_100000_ol_0_mul_1_app-3A4f296d341a47bdba_0; amplitude_id_4aec879ef8bf1823486c4338537ec441westernunion.com=eyJkZXZpY2VJZCI6ImMxMTRiNjRlLTZhZWItMDdmYi1lM2UxLTViNjg0MmQ4NDM5YSIsInVzZXJJZCI6IjMxMzg2NzQ5NmRmNzc3ZWZlNDNjZDM1MjBiMmIzMmYxIiwib3B0T3V0IjpmYWxzZSwic2Vzc2lvbklkIjoxNjcyODM2OTM3ODkzLCJsYXN0RXZlbnRUaW1lIjoxNjcyODM4MzEwMDU0LCJldmVudElkIjoxNTcsImlkZW50aWZ5SWQiOjExNSwic2VxdWVuY2VOdW1iZXIiOjI3Mn0=; BIGipServerwudispatcher.westernunion.com=\u0021G3gJVo4tB6X0nKT8CfygQNRcFY4JxiaIIczCj22EGcqWiv7H3sqZJMKvBenQJyx/w6dRzvOu14xKfA==; bm_sv=B5EDD26C4BF2B437795293C42115B511~YAAQDY5ivhuEfPCEAQAAxefufBKjDus7aMSTVLMyx9m/s3+V5tAfySJ7NhwDTSFO+te0HKxdItxAZVkjTPPYvtTkQhwN9NDQUD4ZVYtVN1dwmrHNNaHqm9s25Rm8Mn4SEdHwJkIX3OQEk/1wTsXFcbIWLs9VyNMqLl9R9IdoAAtOsWqMTVvJGO1KIDktYx9a7BD8HGO7Ri4vxqxJ9rtpqwrRLy/c84Cara6q+yCBwY+30dYiwXA1CKnHrl0x0AHfhfu6DaLfZw==~1' \
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
  -H 'x-nyupe9cs-a: OaMx3Z01FDIKbeFlo=S_MGw-UDX7wDVe_e0vYLqSRZy515jg8Pq=-0xM-hm77j_Oo_2SuLM3ASFbB-hKhW2L_gtT00NCvNOYPeSEMyyrKwrBO-4rH=VJb4Q1kgv1yDYxAo0kOg2-8_2d1eHnsl2MYvmHEbN0QMEOmfmyLGVJAQDNIxhLrCh-hjdTR=ajBDQTXRGcATImXER7GnqOfUaJsfeZHKZ3rHXDYAz9McrTu8NjHbP9fHFmE_QSgHo7Kz5FHLPudRpFVQ8oWZMaj7WZrE4xZqd4ugYDWot3kJvJAYKkBWRprVORLI5m5F7qvhmtEJ6g751By57kmAg4WdtwJLMLBoCfAzRYF48HjLAIHMwc5DBko7w6JfWgE4vvGJwmVLHFuqDrAED0HFrO9uRJ6WlJsHyEyq1pgU6fzRgcbdACTCxTvXUv-bGzK1FdBHnpRbFkp0tINbpU6o6HurkbBZHt3IBXFwJDoaM2MuublH12a2DRXsKCSeZIw4uDcPrxo-B3fykPmffA9ntkGb0Y0U0NXWmp8MABnfTjm4LhSRFqXOQfeXuYqOAsI72lO0m_-nem-TQ9EXkzzR0CnGPWyfAHmvws4jGvkCdJ8eM01-K5xI800eHmuYh-y8sLHNYTNVBroAMI=8IwpQRTPXGWOMYQtAIjBeLGzr1OMpZg4Mk6M1dLZzTFRDYo1zJjZEBCWRLjbk5fcyLTKaunryv6ZjveKd1qITQ3a8GsBz9s=kCUpF4UIRcHS4DZO1J9EthHwHuqjWazwQlPQxLOR9FzI-Ih_WEXTP04cvI_uYm65cFk1zLN_VEpDakW=eTYoz7v-InlNzHUefXrGoltSd-kmX64hrjv9ACy3j82Lv28Jduay4cNTAjYNdpq31C8dWPsjE7fGApoNCyp3salwBq1HlMdbyj_Wm98Z=Vr=7SAr00I5Is7EBz3nKOoCUUHIakNTupx_xev9HxRV64wFyYPgqNjmL38Y8NUNpX7xu7cRnJS2QZ=mha31WbTPbc0kDEWlbGyVbV3O4ZSNRU4RA6CuJA8hw62LTDcYoRBoecKw-2mFa5YJGZwrXcZXepNtWYWa=9Dq5HzVb48dpqq=IeG-pp25gsks_u9qJos0mf3T3Q8AnK5Ms250FqCu9v7-T7NchPb5AdNh8NqMupDUO9j6U29w3-c=RHLxje2UGDNWcORt2HNKXtAt69OMtSm1gsjLslSDH3=ygvKcF_ND-SuXkts=7xk1pVLUATk0Gw-gy0Gz=WZZRq-yu_QokF3oh6ag95qVQ=gg_aLORJCwpe7LL_nKUKyMTFVB69f9ohjNwCrE9CoBOlNQLNLLZAMUB2rrNKX3xBfHXsw4nQVKtPqyspB9jv71dlG4PEhazJcnaU0wepv-xyHIJKo8tEEkM=ROkY-pHTmA0OgUmvfNGdPUQmnMG4JOFEbW_2loXw2g4r3y0V9WHHJL=EQaLm9ZyZ0fTDMCVS12fkcLJqXLdCv7mQkQEKfvN5kW467m60jAac02FDRyuOaGsDfWq85vBdvcUS=lp-0hpbAP9hxS1lfHthPg=xytC1utyOSdV4NbDVQP1lfodRr0HgfgZXwXvsJtJBSUIINZcDGz3kCN9fa40kDxDGQkq_Uy2eRUTsveZY6GFn5us7y45WhpPhs-6vtt8E0zlOog4TK7ASqE2Lpv9w0b_3xLM_T1btl-a6kM9nOZL69J2koxBKZFPw0MeaKHtObwzPm-X4exA9fpUJrrA_aurroQx9qk9LQtVjy8TfgLvrMd4_7zy=9rDKxzuvaruWWdNB=Hp_kFPLKE-F6yX2qkvA56TPEI5TwDX931zsjkKvSCXQ4DWb7vCxHu5u1KpWC1UnpakAqj4=QV9pFQ8wzhSD7u6VXys=6ptZsXZY2F_WabTCj3aPDHttP=SUkvk-ISxE_BprDRlxxw4MbsqvExZwf37EqwdnrPECbAvNFunF6zBrKvEsMKPR8l7LVw=M9Xe0fFdNWIFcDbpXptW-FydyxAObI42rMCKcDwwt_Q1Ql3pefs0T2cqvlADESk=Ww-mGWoLB8Yt23=j02S6Tu73DKyPJE8hoGPs8C7xrAkNSA8ZR6C=TmfoyeI6c5glLuR=P6OcYBkWrQy1RtWuo31rPnbMsbMORTM0vM3wW2==CMahGeyq-rW2gEhRkG8vsQ729vTTQKQzSv5PdUwAw48fpqMD0Mhxwa1=TvM3jDGYONC==wPQEGaf71QWeD3ZyNBE0OR1MD759--vpU2mOgLJ-NajNkfkUkDYsWKNChaP2Es99msBVp7cpJYU7s9UP8GME7pE4lYGaae_B1wfUdrpwZZOskhVpKKH2LloDMMxO9AY_HmvHfOvBlfXjUGFlwouvPDbolBB0OMdyhUMntWRgpk=VDETIFftTXsL_qa2xj1Qk-O1=6x0H4W2o11d1YvJMGo=Y7TcMf7RDehSDak=28xqvtl-nkqkXTGcsxfJl0XpoZmZul0v0ftBF=oyPI127DEwvzvyq_4jE2ch9zWymr2-EFMb0Rp=70CROGKEF2qHr_trbRDGry3wDo1F1az2IObS7HU_L8SIwSazPoPkR1fgH6-EXTBtatYQI4S1b3Dg2GA9HB6l=6MspMUH564OQuuU6aGTAz8Pms_-q9S0cafESuc6Apoq8dDqApEN8M3Mn5NQsGPWQpX72ldTBAAE2yndjhuBKp6Eq8KbyJSOFxyVFm=Gu2lO9AE1-2GqKULq1deszaKr4WY7bklXcn_4Cr2-pzLsf4x0x-=nKqfUJO8CcoKWm39vRItNG6llNIwtnw8q3YlRP2D6lVEOBsjVh62xQj8GvActpWqSNthorIIO6EG-loDvKHLqO7sOdUIDLBmEv25Zxfk7EY6xjxSUHkPsm54vdIUzzyIpS1J66CO1DyOU94Z51wVoI5eL=qlBWDalLoX3M-3UuaTkvU8Lz0ugK47=gHZUnF=JmeD3_B=TIG6c2X4yG80jV0HzvlxulZQ0aDElepq32eqtcbHN5uRs5GzdlyzuA4NgHmy=s2xO0K5kI_RwYFqAJXw8H39fR3Bpmx-rSuZppEehu532W1Ht-Qg9sr6Nl2-w6IpVFF2MjNEV7n-ydgUxz65IcXmbT8-Kksh-Skn0ALPDGAUTGhYPDXe_uPIQB2Jnc7w5qI10o2Hyk4WWWVgOvzV6EYWJ1q_89Bu3wv8oYJVtEg=SBEbA=INyESmFa9ArblqP90few5Yb1YBY7yoSOqHph2zC7mDtxk8TZ5Lb9tAto-ujqOQC9gpUCehv87eZyjP0n3L=jEwdwdhBfAXHpKk_c09p=PS9_PsDfppvja=k9KEE=2duXGV6rRsTI1=ZR4Oc1QjrFG6wcu-h9jwDw6CsMdFNpp_0k7dMlOfT20BW2tWqZnyurPHVQMdZ_1emt9fg12Zgv6_uXcMKvfUCa49TdWY3IFme19XIJNWaV6hyPcFIhXpTxnxwM=oGXFOL4kC4bL8HR3YoBAZzcN57GR6FnLhpfuAbNGD14njrCsnjrjBQuMRuVHKNs8_8y-Q4oeHMKhbjUn7gpYKXy3WC9zG75mQZYo-JIB8ZtWDtqWSt9hL2oUOmSRCb5YyXP=FIRDYFX5gvxGfpo4ZhhDUWF97qfCcJEf2yxF9rb6CIb=LgRxGOR2nS605A6b7pxZVt5Z-IpnMfR8Y=QF1b=74pjd8oM4xwyqAWexNXEIhB6h0oaW0WIG7-CVxmnuZRl1IzbhDtgWrl22' \
  -H 'x-nyupe9cs-b: -pkn7ip' \
  -H 'x-nyupe9cs-c: ACC063yFAQAA32xr0tBo4sBWRB1-ovpWrYk8_jRjUiAatkMmloojnccCKZn5' \
  -H 'x-nyupe9cs-d: ABaChIjBDKGNgUGAQZIQhISi0eIAtJmBDgCKI53HAimZ-f_____JSxVAALFi4k3FXazAqyH_foSQD7M' \
  -H 'x-nyupe9cs-f: A0rb7nyFAQAAE6_hZeYr07fORBDKv7F0MC0D-uMCJKORGOXjRmT39K1zJgEVAYp5HuCucgBSwH8AAEB3AAAAAA==' \
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
