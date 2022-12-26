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
  -H $'cookie: AKZip=; AKAreacode=; AKCounty=; WUCountryCookie_=BR; WULanguageCookie_=en; _evga_e61d=cd97f300195a1d7e.; _gcl_au=1.1.192269537.1671460584; A4kgk7nd=A3Zy0CqFAQAAHFrDWyyHi2-geoWY0CLWbQrqro2avfxhbolVwduPxYBQ7aMcAbUsdyGucgBSwH8AAEB3AAAAAA|1|1|30971075290669f09f7cab3e7720396f4e7076cf; s_ecid=MCMID%7C10527002012958908521997717894336953425; affiliate_src_code=; __qca=P0-1709286564-1671460584261; fp_token_7c6a6574-f011-4c9a-abdd-9894a102ccef=LMgsJRcfyMg7FunMOmfpI6X7duB2Acn9POKakafZbqk=; QuantumMetricUserID=fd6f2bb6039af967626dfd35a3ba712a; lastCountry=AR; lastCurrency=ARS; lastFundsIn=WUPay; userIdentity=existingCustomer; user_txn_state=2:1671629693746; lastFundsOut=BA; abandonedCartToken=10befe9f167f8d8ce9b5c3fc7891d424; __ssid=9609348f42f15f82481811bbadb31bc; AKCountry=BR; AKRegioncode=SP; AKCity=OSASCO; AK_TLS_Version=tls1.2; AKA_A2=A; resolution_height=600; resolution_width=800; is_tablet=false; is_mobile=false; bm_sz=1D5699BB57FE29842117A06E3B6A5DFC~YAAQLNXaF2bIzhiFAQAAlxK/ThLYx3vk3AZsgIIvbcwJcWPXfGbAfhz6eNN/l81iffam2KfOAQhLuDHJdzGESE9im+/zWtON4eCzN7/h5tASCwp1iQt7u3HHU0e6DNnr5P98nv1Flucrci4SOSazwP2LmwnKcZ+lv2n3mXzVhut6EGZdoIsL5uul0hG8pE4eD9fWIKWegXsh6RXg8X3QYZY3XRN/uatCe9erdhSjIcPQ7k4vCC14m+pF3fIINGWlGMorAHc1AT5/9dgjqgqWtuh6mf0K8AzafGmJSY/vgB0QlAFjc2EY3fM=~4604210~4471105; _abck=39232BA13024CCE59B1FDDC26B4FDA09~0~YAAQLNXaF/nIzhiFAQAAsRe/Tgl/+RLPEbU8uZfxbLJ0gnu0Wk7B4Y4+ecgA7AmfnR3+jqPXh09eh9SXsXs88fQMImB/Sef4DcWpoBVX7XTg04JlQwY2rAd5grW1AoikTKFq5RpBTooKHAvZwCrJAE4opM+TvbKGsL7zRR4UNvsVHhXfW5zlSlej0naE90/Vy9wSUFAKvmsDUd1VSNQJHkMj0ul+4RteyHOOyW1QJ2LG/CZUVhiJL0yjg7jd6a55+sK1RBm975pxGfl+8fjA2LHcUr+AktbAgxqwk7xmCLo8zXxmOl9ICjtC+njnfckLUeGrhd7eTaHZrLIpZarNsH4Iv+WaF/AXTTHjOb0c7uSp47Nnb6F3GqnKdVasZm/FA+HqBff3eushFO7R39A3dqFqC1obKK5rkFh7ZAGLUw==~-1~-1~1672066930; dtCookie=v_4_srv_3_sn_1F5FE1348A4924EF18B89179C68383F5_perc_100000_ol_0_mul_1_app-3A4f296d341a47bdba_0; wu_device_id=3dcd40d4-9ebe-9597-3131-db6ab5323223; utm_source=web-bookmark-or-typed; utm_medium=e-web-bookmark-or-typed; utm_campaign=organic-web-bookmark-or-typed; visit-logged-amp=true; AMCVS_AACD3BC75245B4940A490D4D%40AdobeOrg=1; s_plt=3.39; s_pltp=br%3Aen%3Awebsite%3Ahome; channel_stack=home; s_cc=true; amplitude_id_7d40b1ccdea38ded011affb5946a3ddd_project-leap-qawesternunion.com=eyJkZXZpY2VJZCI6Ijc0MjYzMzFjLTJiMjctNDRmMi1hMWQxLTc1NGNhNjcxZTU5OFIiLCJ1c2VySWQiOm51bGwsIm9wdE91dCI6ZmFsc2UsInNlc3Npb25JZCI6MTY3MjA2MzQyNTk5NSwibGFzdEV2ZW50VGltZSI6MTY3MjA2MzQyNjQwNCwiZXZlbnRJZCI6MTEsImlkZW50aWZ5SWQiOjU5LCJzZXF1ZW5jZU51bWJlciI6NzB9; AMCV_AACD3BC75245B4940A490D4D%40AdobeOrg=1176715910%7CMCIDTS%7C19353%7CMCMID%7C10527002012958908521997717894336953425%7CMCAID%7CNONE%7CMCOPTOUT-1672070626s%7CNONE%7CMCAAMLH-1672668226%7C4%7CMCAAMB-1672668226%7Cj8Odv6LonN4r3an7LhD3WZrU1bUpAkFkkiY1ncBR96t2PTI%7CMCSYNCSOP%7C411-19360%7CvVersion%7C5.4.0; s_NewRepeateVar=1672063428442-Repeat; s_NewRepeatprop=1672063428443-Repeat; bm_mi=4B446682B2822EF41595076768388198~YAAQLNXaFyTPzhiFAQAAg1a/ThI53/Kl0vDCYOENhZZkv1ItTxozkRm2N/KBSwjtQfaJJyU/CXKvwiSHYW6z30bi7P9J5I5Mqzbol4JGW1cDL03nYR5Ui3OtpK189IhvKljlMdGTZy2g1s3f3H0WPzAyE7nuzvOuvjgKop0LX6UfMnisafrbpl+lAm9jimm9+kmOCmm4wghEynasU+rS82E3Ksil2ou/laoU09UE6z+v1m3fxzv2siI6nhdOCxtb2MzUhDW1NkQRJRQHAMzlzNRc4DZyfIVyDBas8bPLa6dQWFlarEI3IFKcbN3nfC8wRy9kQ7n33OdKh3tI7bllOyIScA==~1; RT="z=1&dm=www.westernunion.com&si=f615b927-54e4-4590-92a5-457baa9d3ec4&ss=lc4ve1jf&sl=1&tt=2m9&bcn=%2F%2F17de4c18.akstat.io%2F"; _dd_s=logs=1&id=8197ed4b-be7e-4f92-85fa-5ad0ddccc363&created=1672063422163&expire=1672064341292; ak_bmsc=1BCC4D025F98E38A1B44374582BA8949~000000000000000000000000000000~YAAQLNXaFw/QzhiFAQAASGC/ThLDsXD9Psdmx3yUqluDZQ1rLMo0d8sVCs2UDtQ0railR6BJl63VKlQbpss7tvPuw2mXdQximLHCY2Hfe/hoRmefqkFNuj0ch1eEnb5ILsSbDY8gQzNql8J5CQ4pkDOyAEGteKnQ/pK/H3L3RO+UlDOat3LNwxMLUlkaLFbQmFT0wu7rEtRJmwqyNBxA91VQxtaRMfsjbHqz/7ruNoFHrU1PSBptZ2aOGP85IDa+VQoKyGyCRsV9sPZbErged5aedwz4hU6XmZWBK2J6D0NDUSmcgAqy844IChYrTWBazu8b2v4m6ZuakdJr4CLa4H2yesDx5bTPkVb2boyg0d/9MAcRmJybov2TdYR04zGNGQ8QK8GWntZKiqznDcRsluauo1BzBuEB8jwfsw7O71P0kjSMJwiEs8nVUt4KogEd; BIGipServerwudispatcher.westernunion.com=\u0021t/HFPUE04vlmdDc9v++QYZNsXLq+H1Ubywq9ALMSUihXopsH0Z/LPEu7dpk/Bcj4gzsEPl1TLCt+yg==; bm_sv=3184549FA4FE3C2D08684DE2F8365467~YAAQLNXaF0HQzhiFAQAA8WG/ThJQTYuxlChnoj1uyfL+hCfHzVFk9cWA8TMEl1V09MSbptwE4gQ7UdPo4ydzn4UEYkjg7yLEQ3qM0aUpAnWfNAGukugPUvFK1EZy9qFfd3nEMKwPizCnHdmJSqM2WMnRhkm9zNdbcZhTm4wsQiUptEzZ8XH62jdubKsZB65SijgQqRcw6hSPHgbwto8+/h0Z0h7n6VR4xg+byILrtFFv20RBhu6wBi16HzzFE3xq0woYJxVIkg==~1; A4kgk7nd_dc=%7B%22c%22%3A%20%22dW9YZEMxYUZiV0o1UFBqSQ%3D%3D1N3YPqmwOkp-vX3obTia5tA6zMDQWSCpsVgWbfOWHSsKNUGy8zshHcZTjfUjyaSyVgfexoqoyDy82kLVItBrMgAe6MTcVPu8FL8pLvsziw%3D%3D%22%2C%20%22dc%22%3A%200%2C%20%22mf%22%3A%201%7D; amplitude_id_4aec879ef8bf1823486c4338537ec441westernunion.com=eyJkZXZpY2VJZCI6IjNkY2Q0MGQ0LTllYmUtOTU5Ny0zMTMxLWRiNmFiNTMyMzIyMyIsInVzZXJJZCI6IjMxMzg2NzQ5NmRmNzc3ZWZlNDNjZDM1MjBiMmIzMmYxIiwib3B0T3V0IjpmYWxzZSwic2Vzc2lvbklkIjoxNjcyMDYzNDI1NTcyLCJsYXN0RXZlbnRUaW1lIjoxNjcyMDYzNDQyMzg0LCJldmVudElkIjoxMTUsImlkZW50aWZ5SWQiOjcyLCJzZXF1ZW5jZU51bWJlciI6MTg3fQ==' \
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
  -H 'x-nyupe9cs-a: moJhGpGv0Oe8Vr5nqSG=aptyJJF9fjZra_NLN1NpDm3mQCQyCmIRQiuDE6n5ckDfhj5On8wOdOgBj5e5mrrK61ZIIjba5JT9CNuvDLw0YJJR9EzOGDKx8n3dul3wYBIc=huViU9ffL6EYjNPqO8V_hgPc5k0H7Cl=Gb2ET1I6bzf02DTnZJ-kQMz2uBzW7gyo7ZsGaddZwU7y3QCorIBSUC6pqB888pvuC9-mvb2YjHELMYS7Byn6G1iMW=UniATcEae0WO=-dFe=3p1x=468vfz9vFv4GYRI=Hi4z8qkZiHdeTWVJl3DgVNI69N3pe-SaS06JCmdO26zMQnruzqx4Bu05KncrYpLl193xzwR8tvcEO-JhFp96GqTPcZvvUcmVbqhIItljLYN2ScH_1ij98tbaoQPQBWUjOIa5VSKG2FtksQCSwC8e59D63o5FP7R7oL6Z_vJGB0ND49ziDv15JMdL8On=f2xw1xKD2Oro6cJAP1ZO3InKRz0lWEzWGFS1Uu-l_32xoVi8nQ7Oh_nqPE1CZSbYDsfCHrcoz0n=PBdF3jeJuY1hgkH_YYP0W00M4_WAvcwjOvyIjMnGNgBqKJQxqAynnvTnJ71cA2oRBlSiaU94m0kUR80=cq1B7sG-3xJo=NmW35xwqJTWS=Ky8k6ou8e38qYd2rONGDZfOjibE8F_9YgxxqbPZmD-b_EmOz6fFfdj9YYblgHx7YecLt3o1y5ikKtcbCOPf7lAq_Q9HU5v39m_wy1fUR-tjGUVcvqWSKnWryqk498RQF1V3hbZJWT0HB5MohMQGyK2o2QnmK0rfyIGNTHxlC2A4Y_WmRPcF7yRBvEy5CAAG1A2Tj=gQ54e5oKZDpngB8FLIYl_jMcmyg6H7YyrlYdn6ZRPB6iP8IfM1k71iSED6QPMn7CrFd4NEPxVAvqdwWljTBR6krT4x2IBvgVLdcPwszZ8yOpVHuPijA25xCeISuls44gCsl_K5oV6-0d2fDb66b9h8HbRd_IedBJG-gTx_bhLvaON4x77PvL1ergRIKGdC3JKLRrSffsEW_sPDdGVl8TEkjQ0wp-3wK_m8cLHo7=LYSFFdZtdr_ltoGZxOcT3ii4IwrokBTef=U=m734nl-hoYBjK6u1_Wn896jE=Ua3DYHu8ngCS1FB58p_P=JdR53GQGRezBok65hY2b5JLhoodgJo8NyHaG1IxlmGcvAcJLQxM1Fby3xZ96dG774L9C_32MAwzHQzb-yI19cf=F2rt=bdkd4Ly=VJrgiu49OA4sqCBQBRkTb-1a34wFYGvaRGHgTNoJ=O8CgUNmrPCUOAEff6S_ByLTvDqhUYS8ORFhZjRu1HPN5BRB4DIZUcQYleVBJmxHJ34fq-WD_eZeqIskvM33lCw5rQ1Z1FHf8IM1EpSdV3mxmOPVYr=8NgEB4hmaTsjinJKUGgCWEr4VEdSxZakl3Qd-nTUIyDr14MoMD_MpJs8FjHocT89SR-VjxfQST_F3Zst_BVE_leJQ-E3R05rO2qg9W-WvUKaijY-acn_=dtL-ML9mkg=SEBWEH8npcOqSwdT5onRRHJobFBHjeuyfKd4cY5maVp-e4AFluacAoxu43rE0rIQWgU0Rk3nhiaicYDvSVWgyCV26Jenb513V=MY6bRA4LDS5FBCUD-t3mhYFyVcpfn73zr_Oqwbyi3bycQhaOLnKUT-WbmjhVQFoHyWfJ2g1rpMWgaM_4cU_mTb4b7ctOCFpFC4lmdSmTswvqYQDOawu=MH26z-VFHbzQGO-6t2BoxGyU3FfCr70Jzv5_ZP_unFjrIFC6LlNCZJyBp80PGm81_OLyih7OtTCIW2VRyiH7P1giJ71QEE-rCeF=0wxlc4kI0lVmuNl6W5DkAEORMsrqMcIpe-Vn324avZmKtrV3gkIsmdZzJMymWyxbuN-dWOd8eO6pzz5Y8OioScROGEsgZmCh5m8WlI37tJ7pUZGoqjbLfFMeoLqo6O1n8Jm45vMMclVFLW0so4ZSQk65CiQqKnP2TIZ6t1geiqF9Z2N8xkmIYYOMfsYotgv9LbWSDRke_PP-djbfkQOIq6FLD52H8KZ3ZQC_t8IcAys4h_WPWgPD3r2o1cHUYgynp6UKqEIDOZtYTJjYLP14mJdB2UrjyQVHMCysEpEpShK9wObRC34MpTHyvU1n4GIxNeWW7WJ66OOfaia=JNRI2O6onHxVjaJkOL5NHxDYQwUHFn2ZY4t4FeB' \
  -H 'x-nyupe9cs-b: -uxt2au' \
  -H 'x-nyupe9cs-c: AACru06FAQAALUfR9w2ECnIHYLcG0q2_RF5fWwA0PHHPKjpONQuhsOUrGvpC' \
  -H 'x-nyupe9cs-d: ABaChIjBDKGNgUGAQZIQhISi0eIAtJmBDgALobDlKxr6Qv_____JSxVAAHFA14_YrR3Wg2rHVJuH-Vk' \
  -H 'x-nyupe9cs-f: A29Xv06FAQAA4HVRJOtosJOwXyrRqKkOAK786-0RQ9qVN9swsGykAMbYSHbBAb-3KD6ucgBSwH8AAEB3AAAAAA==' \
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
