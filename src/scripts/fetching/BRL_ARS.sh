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
  -H $'cookie: AKZip=; AKAreacode=; AKCounty=; WUCountryCookie_=BR; WULanguageCookie_=en; _evga_e61d=cd97f300195a1d7e.; _gcl_au=1.1.192269537.1671460584; A4kgk7nd=A3Zy0CqFAQAAHFrDWyyHi2-geoWY0CLWbQrqro2avfxhbolVwduPxYBQ7aMcAbUsdyGucgBSwH8AAEB3AAAAAA|1|1|30971075290669f09f7cab3e7720396f4e7076cf; s_ecid=MCMID%7C10527002012958908521997717894336953425; __qca=P0-1709286564-1671460584261; fp_token_7c6a6574-f011-4c9a-abdd-9894a102ccef=LMgsJRcfyMg7FunMOmfpI6X7duB2Acn9POKakafZbqk=; QuantumMetricUserID=fd6f2bb6039af967626dfd35a3ba712a; lastCountry=AR; lastCurrency=ARS; lastFundsIn=WUPay; userIdentity=existingCustomer; user_txn_state=2:1671629693746; __ssid=9609348f42f15f82481811bbadb31bc; AKCountry=BR; AKRegioncode=AM; AKCity=MANAUS; lastFundsOut=AG; user_session_token=17bbd309-3e59-467e-af93-9f39b7e3abac; affiliate_src_code=; AK_TLS_Version=tls1.2; resolution_height=600; resolution_width=800; is_tablet=false; is_mobile=false; AK_SID=dGVzdGluZ3Yxed; AKA_A2=A; bm_sz=C6DC8ADB8E7CFC1DBB1C027CA976DEB7~YAAQvaQSAsLkWjmGAQAAzY8aYBLLy8xD+cER/1OTgGMtL8EaVyKixqT2xyjd41LgbmmEoWAgJhIsYCl0zVFLHF5cT3r6CtBIqbMjXaoUn22EdBuo4GKSqdRMOdiEyDk7O3lbpCjyUY4C71Xy7QV780I/KLTRksYgaKCblKjnV3I/bd41PrqV4bl7STRvU2wgFsJGOdbC68m8QEsa+HxUWj+/2FwiwQrMt26vjgojbpNYyPLDEb0d5hViFSXax7qwcnDddK/hzsk86dgcLKr8e07VqZJOFjYwlDcv/t+uo433lIEc1/GrSbE=~3687236~3162435; _abck=39232BA13024CCE59B1FDDC26B4FDA09~0~YAAQvaQSAjzlWjmGAQAAoZYaYAluK3e3ZIzxHSyOdfX6i9+Haj3eJPPnlsASpzQDvme3pnAw6D7YcrR+UwYt2zVFBcgA5d4HdTA0yvyRt1vSvOI9xWej/lesQ95cIgrxPRyBNxZgsVy/mixCstsPNJD8Yp5ojv42rMW9b6jdEoXpVrkcrQX9CT+N43bIE9VsWywOlccy+sTtuB4Bwd1ELO6Cezko7SE1zwwens9W4IIU/3LEephxpD0SDKh7jIG5DWQAuVdrLlnOqMpXJ41fraZEYLlG06NfIHHG/feS2rZzkEAHIXkNuBN00sXWlo6s3WtSL6dbjYNAZBYcWbOub8XIHRupm/XbAD1AXO+dvCi5bvkmTGsfiml3tfXpI7eTgSrOZ3cP5At/NxlfrgVFEPyv5kRXfMZVWSfP5uDwnQ==~-1~-1~1676653198; bm_mi=9FD41EEFA7A1175781818897D62B32EC~YAAQvaQSAkLlWjmGAQAA65YaYBKhRNyYUu6zmctnUG5WMPudrX0jkYYCT5KkRIuUgg8nbZMXp1p14omjTgWq8yiVDdZu2EE0MofAmifCJ2toAXc6VJ+Nx1bLU0256Yd7SxjSjtNvBf3QbgBYhwGg3udLYsCw3vbRNctDRDqlEhXKam2Ft0PfRAaPlKnCdP/JLPAFkE35hsfLFmffeq/4DYKjV5z6Awf1Br1QLBLzGysvLNe80LRwXRuS/0es+x6OIs76FypdCBwq+79X367tJw0LCXC4txl9hfksnyk1RsO9PF1weVmBohLJp5aIYFbSCZOu90iizi4jMbzrceIXPWYAzv+SuQnmi3c87oAX508qc3J3PAQfdked2dn06m2lcWs=~1; wu_device_id=524859ac-df1b-0540-017b-f5fea2b1e7c9; AMCVS_AACD3BC75245B4940A490D4D%40AdobeOrg=1; AMCV_AACD3BC75245B4940A490D4D%40AdobeOrg=1176715910%7CMCIDTS%7C19406%7CMCMID%7C10527002012958908521997717894336953425%7CMCAID%7CNONE%7CMCOPTOUT-1676656802s%7CNONE%7CMCAAMLH-1677254402%7C4%7CMCAAMB-1677254402%7Cj8Odv6LonN4r3an7LhD3WZrU1bUpAkFkkiY1ncBR96t2PTI%7CMCSYNCSOP%7C411-19407%7CvVersion%7C5.4.0; s_plt=2.86; s_pltp=br%3Aen%3Awebsite%3Ahome; s_NewRepeateVar=1676649602543-Repeat; s_NewRepeatprop=1676649602544-Repeat; channel_stack=home; s_cc=true; utm_source=web-bookmark-or-typed; utm_medium=e-web-bookmark-or-typed; utm_campaign=organic-web-bookmark-or-typed; visit-logged-amp=true; _uetsid=2467f020aedc11edab60cdec265a2445; _uetvid=6787f340967e11edab8f4bb64afa62a8; RT="z=1&dm=www.westernunion.com&si=c8c9fb8c-401a-4f73-a27d-fa4ec4825fb3&ss=le8pvpew&sl=1&tt=27i&bcn=%2F%2F17de4c1a.akstat.io%2F"; akavpau_en=1676649911~id=22d5806ecace8b436024520bcfffda3a; amplitude_id_4aec879ef8bf1823486c4338537ec441westernunion.com=eyJkZXZpY2VJZCI6IjUyNDg1OWFjLWRmMWItMDU0MC0wMTdiLWY1ZmVhMmIxZTdjOSIsInVzZXJJZCI6IjMxMzg2NzQ5NmRmNzc3ZWZlNDNjZDM1MjBiMmIzMmYxIiwib3B0T3V0IjpmYWxzZSwic2Vzc2lvbklkIjoxNjc2NjQ5NjAyMzEzLCJsYXN0RXZlbnRUaW1lIjoxNjc2NjQ5NjEwNzQ5LCJldmVudElkIjozOTgsImlkZW50aWZ5SWQiOjI3NSwic2VxdWVuY2VOdW1iZXIiOjY3M30=; A4kgk7nd_dc=%7B%22c%22%3A%20%22Q2FTSXhMVHRmd3BaSHI5dw%3D%3D1gJjoXCP5Z9m8rUx7bTlNa5Vijm0KTEJUl_AqGI20RD-1Ep9UMnAt_yaPsWUP2i96wjuDCS67V_OTSIq1U4hoti0gudJVwgptzAL4msR4g%3D%3D%22%2C%20%22dc%22%3A%201%2C%20%22mf%22%3A%201%7D; ak_bmsc=DC6148BF671A2C78FF0B3D5C44AE97A0~000000000000000000000000000000~YAAQvaQSAmroWjmGAQAAssEaYBIkcdzMgmGWAqBolfe1AUvC3Oro11ZXv2jtUgVU0Ngx2JB5IqKRJ5AdVGk8f7TixYHmLlPZqOnmutZBYPhlg2ztv4D8UWUVoU1Svsund37WHn8BPkoQ4aYOQOQ7GBHDxto9gtQnA0WHnu3ytqTx3F7VsdYaDXGyhkuPHBPFlpq6c0TvOQUwXnfkF9nWTcFPP+VNN6piji+R9wZuPgeCC27RkTK6o2pQVVwpWhUkHwCPOuepSnjcFcH6eXkZhF3rOHtLmpnTXn0LDM4Za7Xa8GOa85eixsECjIcKIQHwHHjA/uz8E+YPCetF/n0T/UV84DG9aXohSOA55pHuzSwsrPZCp1qlze7UUJD2cCSQ5K8AWSlwwqFDwnVZZLbIidykmnAXfJLrdn7i17Jhe3tkOC/IUAj+NuW6ngIMstg7TbFEhu6EOak56ZutmahVqWMFXcwblYQukjm35FydJ+PXy+QlbfubM4xS6bzOfI+M0J+JJKdnaT7OOHdaZLEbN2ARDudiNCGdlTEyJC1JWaesV6zXjaiYYCY9Q2dO06L9jsRD4BYH6LD88ZXg; bm_sv=35039DE4722B84AF05E0113C96801D90~YAAQvaQSAmvoWjmGAQAAssEaYBK+bXAtJy2s5FvMyhHB5lJo9X/ICQ8GNhNZwPaJV62JO8N/GQt0w1cGw7qFp6lhhzogf8HJJ8DCGYCW3QsK32jzq4q+XMSRViBjBpOjMHrCmqmV+bXUsHdoCBF2dit4RQGieGviGmZ6/Mbx29j0T5WqxpgyY1/L3aSpgrEOrEICTnuuck2B3qsFF1VxuATAM0uQTpsUmMj45zpbjMkSODdDCm0yENqV+CDfSNbt5C58+Ltvhg==~1; amplitude_id_7d40b1ccdea38ded011affb5946a3ddd_project-leap-qawesternunion.com=eyJkZXZpY2VJZCI6Ijc0MjYzMzFjLTJiMjctNDRmMi1hMWQxLTc1NGNhNjcxZTU5OFIiLCJ1c2VySWQiOm51bGwsIm9wdE91dCI6ZmFsc2UsInNlc3Npb25JZCI6MTY3NjY0OTYwMjUwNiwibGFzdEV2ZW50VGltZSI6MTY3NjY0OTYxMTA1MiwiZXZlbnRJZCI6NTksImlkZW50aWZ5SWQiOjE2OCwic2VxdWVuY2VOdW1iZXIiOjIyN30=; dtCookie=v_4_srv_2_sn_B2B6AEB4BA1665E9A3DBDE82DE1FF482_perc_100000_ol_0_mul_1_app-3A4f296d341a47bdba_0; BIGipServerwudispatcher.westernunion.com=\u0021mfCxf7U5roN/jzX8CfygQNRcFY4JxtZeKz6MvXbUm2R821aZnCGkebgHgJXEV3HoBSMx1JeZHMWcpQ==' \
  -H 'origin: https://www.westernunion.com' \
  -H 'pragma: no-cache' \
  -H 'referer: https://www.westernunion.com/br/en/home.html' \
  -H 'sec-ch-ua: "Chromium";v="110", "Not A(Brand";v="24", "Microsoft Edge";v="110"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.46' \
  -H 'x-nyupe9cs-a: UnKTTL9ZpxOl=M4ujTYDfgCHIhUXiEcHfOd35l_eP_s5cyULPXMamRpvGp7uNKRGtauU_HCWhgrCyF2c5wxyiKSz4uDFu27b7oEXETBZ9gnYWwDMH2MBruiD9n9YJ-xksrafUIgtDy0XqWcgOgLVHtGP=mVkG=euZUKuWgTX6ufNsTVsFoXvygVkpjKg7aGgV6kWqQXU_gFf-EpBFNhy9aKJfLEGIe0bDn3WakWH3gnT2krG2KwezHfPL_ljvfJB2vYAfy-JbFheRZ_E5iY0hiF9oJuqRhbc_-oin=BR==AWMYpjEuca2ENZc617i1929he7=4vJ3NVM7KXc2p9_CxA_6SfGUkihfDEYOphC9HCwBIe_lyrlzynKosCszMssibcWwYcQZ3oreocT=ohn1MTbBj-ETaO5rtT7BJ04lHucIuBVq-M2_lI1bEZI=cr-avpNJrYmQRWh_erlYyNSiVRYet0Eu==Bgqz3YAT__FNQ-dvjAQxeMrFEUU3GGDsJdipXZPrD2cO6cVhH-6=KQ3MZZk1s=RZcsKUOI77XdrIODoQBGnsIlRu5llCK92BnaxIaQvAdBFQgrVNexWBX9pO=RIQjUfxQecVHooeyDe205Nj1r2nEhhPWnnPptoEgADlKb0dx5baOvCGx5W1zixX6Mlb=Y=Bd3uFk6Bm6wgmFFdHyfdRgqwVV=EU4S-_IsZ9yhH4S1z99_1D7yJdL39-IFCEXrk4OjeBuShM9=Ap_XF6YEQalXW_bzfbDW4Rh9ylNdAqCMuhoxmGJqaIcNJ2CvfBM=pLJ51WTXNXjNBuxMFIFnRI4DShP26Sw9r22rqGAHqVV-n0wtn3diKuTH3av9FyXA_kkU7TbY9jE7dKr03QnjnG4=ZP2LTz235AGPdC_tYiYX4gnoX4=MJ0HMfTLXr_7JN3mjaymmqcaPoV-fMoNlGDVhQHsHlMWx6CX6ItX9WFteW6_Jps=b2h=Er4720jRZr6ulpIJou=_db7PdDJ0qbtmfTPZ-3hItHju=x_eXZvCi=eQcy-S0=qfwao4Nls2fI4wPeGhd9s9T5VwqPhH_4VAVj-=U3ZewM4yIzNhYrwgo5GtQqhEVQRk1XbctndWE7opztDhtZ6bQ=Aj=fUMhls7bi77NBoEcf3v2s1cBQz_OfYyz93uGp_pYnBvYcuv3Y5ndPMNCeEPmxnGjjyeO1u_lye4i_q7tj7e1fU=tS9bcGnh_eX4jURI6aRdLTOcZKaaBcU2iIs0fRSrVw0GzvW=Iy_Hb5ArdgWsEQrtengZOkaOjRMzmZuRuc0Ta1x9I_v_NGt-NlQCOIwmZtVtThqmCmYeQAdBE6xjCt_bnFLhFMGYaemNKxiSFm6GdPS1lcLWoR1iEVYrrSONjwtYACiWOrm7wOWt1yM1NMUOK4Na3uCyLEumJTIWrm0JYwJavArtqJ=tpmvWz_9D6R6MxmeqpbNvvTqz9wjvvEKHqdJkT9dqEUhrKUibVJc9oVEVDQxxZmKE6uixJUN6fBXv=BhdpcPZAuqLNyQhh50nuiBbU9hmN0lNIRLGb3BJ-R3YjzjSFkk0LdSPGTI7XzumeV7RlOaC4mFh_NwNHhgASXYRVPPB4LX1TFphR=-St3Kzrusc7PXPGK04c9mWcNhLz24TyUbKG_PPnpcc2a4jYkPMDdqjP-D2JdPi-YPB6zSH1mR1DIZ0hqjXZ=ivNCDYVYw_X3HXJ4639T4ASHMsbD2OrmqTfKxndQqRkuzTs_JPwNycor4s_eEeqLivuDJjrKOJkkk25UBlkXG_mwK4I5Xs6GAxKWFUzPOr3CdwUQesbPmLnIaNJDRhI-KZVGtPTyEJVCEXL=vFQ7yqrx_vSDLwZDbOh4KCHK1y7hTRdRUOqf_V9X4PMgKJBmvCw4r74sNut0GpGzzs6gwquO0ufhVTZczfjllD6nuoiW5icX=rKjHtqKXDgpzD9lGVftNiahh=dzulI-1zR9JR1_LZYBGX6uHjcpy0JBz0k6RG7D4MPVil6=cReHQOoAAhsIMtNKDIt9N3H5XOxjkwYcz5H-MHW6Kk7OdCzdl5fNKBWdO_RiODRa_k46dXQkxI2kusC1nx2AOSQFzLF5DLg29HXwwVcnIxbMcyGoQY1jFcX6i-0=1-gVnY7bzP_ovOiL0RRPztyZTiytOvn1G55wEm7yPZAncFzocpvL3izrr11_NE5v9cx3v-xoKmjFSD5t6vpB6WPCGK5Gdx=EL9RrEBx1LGqvZtLahZUM0=JSrSbMeiB7ilICrBFf3aoYlx=MBoxTSzFfEfpco1emjGcd_G-WXQMye-gNhyUWA6kcuwAbhjB2wrROrhBcsSaB-oRJA2jf7I_tONv2RtkTYMYcFELWT_LNnlaWyAB0NJUoOp1G=5xgzMUU1orQcX1_ZtWqeCu_z4rbo4DbQzKpA59bC' \
  -H 'x-nyupe9cs-b: -8obc5z' \
  -H 'x-nyupe9cs-c: AACUGmCGAQAA3gTh_hW1WbTiTAmJqOlmQO8BaS8a6-ZcnFmvwvGLHCCI00Mw' \
  -H 'x-nyupe9cs-d: ABaChIjBDKGNgUGAQZIQhISi0eIAtJmBDgDxixwgiNNDMP_____JSxVAAF716DwOTzMAmi3Umls3fEQ' \
  -H 'x-nyupe9cs-f: A4q8GmCGAQAAnC6FHX5OsJGpHH4IUS22giZO0t_S0vdauao3cNV_2mkOEEYoAYp5HuKucuFZwH8AAEB3AAAAAA==' \
  -H 'x-nyupe9cs-z: q' \
  --data-raw '{"header_request":{"version":"0.5","request_type":"PRICECATALOG"},"sender":{"client":"WUCOM","channel":"WWEB","funds_in":"EB","curr_iso3":"BRL","cty_iso2_ext":"BR","send_amount":"2700"},"receiver":{"curr_iso3":"ARS","cty_iso2_ext":"AR","cty_iso2":"AR"}}' \
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
