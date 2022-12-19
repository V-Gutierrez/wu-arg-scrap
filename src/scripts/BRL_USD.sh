#!/bin/sh

TARGET=$2
MESSAGE_TITLE="Western Union Companion - By Victor Gutierrez 🟢"
TARGET_CURRENCY="USD"

echo "Running Task for pair BRL_$TARGET_CURRENCY"

curl 'https://www.westernunion.com/wuconnect/prices/catalog' \
  -H 'authority: www.westernunion.com' \
  -H 'accept: */*' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'content-type: text/plain;charset=UTF-8' \
  -H $'cookie: AKCountry=AR; AKZip=; AKRegioncode=; AKCity=BUENOSAIRES; AKAreacode=; AKCounty=; WULanguageCookie_=es; AK_TLS_Version=tls1.2; AKA_A2=A; resolution_height=800; resolution_width=1280; is_tablet=false; is_mobile=false; bm_sz=22FDD3F891ADD533BE6A64942868C471~YAAQTeocuGmZuhGFAQAAiWqWLBIo78mQE+qEwXmNbpP8+o1K15BRYvkMG4fngGbNp9rZe3B8Vkkw2LX99aUtguTdPzIUu1fPkvufVVSYpJ7R0OHMVL6JMWLdVYdlF/twJ13aejgpOFRsuDSp9FKDR7AbUimg2bCnZf/IG2gNsoQhksdesU1y7BH0BEwbBrrfq8edpVPqQM6ZRtq6fdOGt1NHiIA2IEd6DzMJCjyzI2bjO7suyMkufzbWDQ8lxZkqUJAYK3FAQcDPi+QfgS+0lAfs5XyAegQsN9gPAyVMxfo/9QdovrNaugU=~4343349~3289905; wu_device_id=41ceada7-a825-b2ff-41ec-e3d7d160ea67; _evga_efcc=51cb4f77d92b821a.; _abck=0F6D321D579D3E00D0181770E2F6FAE9~0~YAAQTeocuMKZuhGFAQAAVW6WLAla2bKbtane31LB0b1EVabqcBB0YyJkkrP5isU7YaZEVgGNLugaLj+d7rufsskcdv6fusaiIZTMEywi/Xw+W3NJtOQvGW0BG27YqJ4eoo1hk66vVjRluDua9Gc4zF9PCc6VGLsr54gW/6fABpSevE56c6Fg2WlApU9E4HovLtQV053NcKuchMBzzyezYE9ZxAI1Ocx2FbYSAmui99KYob8JWumRQRhXsKeeqd2oj6j7h/SHA4ukmQtjyy7SbLRAuuCqDB8ausQwYo9JnRRoZqWtoKQuO68nNRHE7RwdOj5UIo7cAV5SlXN8HCyZLmUxa/aqlrIUq6YqusG/NKc+DTGwG5hjGg6otCcFQ3hTHI5WopQ1LQF0siC7rLFYNl7NMPRVh2yyJlmC1lk=~-1~||1-IhUyFWTeuz-1-10-1000-2||~1671493851; bm_mi=D290284637E35909142ADBBCC1DE0945~YAAQTeocuMWZuhGFAQAAgW6WLBL34/owdt8ZTtnlMu1gIppL74VBY5Ctpgm5I2m/PHb3AqyPa/XsvSyTcDB5ICDxigvZC5UO4S5PxxLV+gc3vtyU+AnrX6SqlV2RVipugvGXl/ZB1e0yFMlvAEo4mTrzhI6gOwnXOVqrb1hCatAhqYYxkgHBAJPJW+knM4diKO8z533pHJzY8ZpZGw58TKf5dv9dSzFIcVxi99pT5bbUd822r0Klvyiv201/7SvA5KV7nbgP1BWSCum+iWQde97MJ9qFswS6mIieCq0kCYkIB9d0bxW+oIqfFhAzNjWLm47zzTgh8oK+JU8fW1/e9PntuFgBgdhpyJ/3oQ/8k7quYDlG82TFNhjtKvQ6gf3UBw==~1; utm_source=google; utm_medium=e-web-serp; utm_campaign=organic-search; visit-logged-amp=true; user_txn_state=0:1671490334063; AMCVS_AACD3BC75245B4940A490D4D%40AdobeOrg=1; _gcl_au=1.1.1395741425.1671490334; _fbp=fb.1.1671490334220.215851744; ak_bmsc=0F68D30375377DE047922FE87AB65F14~000000000000000000000000000000~YAAQTeocuP+ZuhGFAQAAsnCWLBKJY1iM8tjuhRjz9T844yScGMdltVkkS8cqqWRMIX4BwjgYDMpzZbX6Ppt9IZIQtiDR6AUoz3J0FhIEyfJoVB4MYa7dIMxsiYbLSmdC6af3Um4YrC2pfPamWuU5xqGNnNlCSmZ1Tn+zNajrLJ0wYLyKIT2LswZx2F9d62FEYdmjtl4ik7AAifqCHzdClbvFwusP+3p03bB8C0viV66DMHUpUmmxDTTIw+//JFi1vHYeVdF5miUOjmWQms/dAZgWX/KUEc5dZWoVn2ABtZaHMtD5wIHvwlvIPTp4Wtbmd6TroquogtSJvQMRYtxspLp99uO5rPTdDoZNgOr+R/nJ0NgkAH6K6b3bN4nMiatwlD543CHZ6PduwQkO19yDAfg8RGgGGLJ9Mcp/YpZ776EsBryqXJAECS+pKR/TLzhD6gQb+tjdgUZSk4qbptgxj3zzgwE95+RCTZ9EuhwThN19Z26bJe+QXBFnBj90BgD2136AcWC/RiwN6KwxahFnODWg7c/B0p68Wmo4qRWoMxNGBp6O5F/lApAIxeHp+R19N8nA; s_ecid=MCMID%7C31087460187209124320670743456818108862; channel_stack=home; affiliate_src_code=; s_cc=true; AMCV_AACD3BC75245B4940A490D4D%40AdobeOrg=1176715910%7CMCIDTS%7C19346%7CMCMID%7C31087460187209124320670743456818108862%7CMCAAMLH-1672095134%7C4%7CMCAAMB-1672095134%7CRKhpRz8krg2tLO6pguXWp5olkAcUniQYPHaMWWgdJ3xzPWQmdj0y%7CMCOPTOUT-1671497534s%7CNONE%7CMCAID%7CNONE%7CMCSYNCSOP%7C411-19353%7CvVersion%7C5.4.0; __qca=P0-1934753862-1671490334624; WUCountryCookie_=BR; _evga_e61d=000018b9719484e2.; s_plt=0.52; s_pltp=br%3Aes%3Awebsite%3Ahome; dtCookie=v_4_srv_2_sn_60DC590889AE7A9C3F7CEBF5C15FD918_perc_100000_ol_0_mul_1_app-3A4f296d341a47bdba_0; A4kgk7nd=Az1rliyFAQAAWeOY8-DX2ioGzFFQNijA4o57NsamWy9C3JmeQb-97aKjICG9AbUsdyGucgBSwH8AADQwAAAAAA|1|1|6fd827b57d25e1be16545ac90dbd4ad5f54c6f02; s_NewRepeateVar=1671490351906-New; s_NewRepeatprop=1671490351906-New; RT="z=1&dm=www.westernunion.com&si=06b7b79b-5a51-4211-b785-c88a4a08bca2&ss=lbve6qrk&sl=2&tt=18z&bcn=%2F%2F17de4c11.akstat.io%2F"; amplitude_id_4aec879ef8bf1823486c4338537ec441westernunion.com=eyJkZXZpY2VJZCI6IjQxY2VhZGE3LWE4MjUtYjJmZi00MWVjLWUzZDdkMTYwZWE2NyIsInVzZXJJZCI6bnVsbCwib3B0T3V0IjpmYWxzZSwic2Vzc2lvbklkIjoxNjcxNDkwMzMzNjA4LCJsYXN0RXZlbnRUaW1lIjoxNjcxNDkwMzU3MjQ0LCJldmVudElkIjo3LCJpZGVudGlmeUlkIjoxMCwic2VxdWVuY2VOdW1iZXIiOjE3fQ==; amplitude_id_7d40b1ccdea38ded011affb5946a3ddd_project-leap-qawesternunion.com=eyJkZXZpY2VJZCI6IjE4OTAzMjY5LTliYWItNDFkZi1iODVhLWI5MjI2NGFkZjU1Y1IiLCJ1c2VySWQiOm51bGwsIm9wdE91dCI6ZmFsc2UsInNlc3Npb25JZCI6MTY3MTQ5MDMzNDAzMSwibGFzdEV2ZW50VGltZSI6MTY3MTQ5MDM1NzMzMywiZXZlbnRJZCI6MywiaWRlbnRpZnlJZCI6Mywic2VxdWVuY2VOdW1iZXIiOjZ9; A4kgk7nd_dc=%7B%22c%22%3A%20%22VTByRkFHS3djQVZVdTFyMQ%3D%3DQho4gt_05bjBsMvZ1cakr5fO2b1i70LXf-jhxQU_amLfyWTg3J7DZ2BUBXy4fWy1AAdc0qQA2WQljcD8xHT6-afUcmZvLXxtlntF-DdyXA%3D%3D%22%2C%20%22dc%22%3A%200%2C%20%22mf%22%3A%200%7D; BIGipServerwudispatcher.westernunion.com=\u00219zg6khTZ3qZftI09v++QYZNsXLq+HwkfiColRGXc855ZZY1YiylLZlRpg8IvX7finRSIfN29I4nc+Q==; bm_sv=E93D2173E6175B52047EDB9EF5AA368B~YAAQTeocuLuiuhGFAQAA0sqWLBKAbqJwcQOtJng4HU2ECMkPFBpJQZcCqWVBg8suF/FlWowBW7BKpcNlB+8BCOFBXbTf1t4EmgFhu59Lq2RqE+GwEsuQGmZ+yXu2/aEQRKhkibVAL0M80pMgg0vj8Fzj0gtn5SgsnufNiZEjoRiHHFxQ4jxhwX6R61KNOcTD001iojbqB8UdO8KywV8GbtLzyF5tBtQL6J0+3Mi57inWohCyCfOt7c2IIMvsO2ZAJrTU1e052g==~1' \
  -H 'origin: https://www.westernunion.com' \
  -H 'referer: https://www.westernunion.com/br/es/home.html' \
  -H 'sec-ch-ua: "Not?A_Brand";v="8", "Chromium";v="108", "Google Chrome";v="108"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Linux"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36' \
  -H 'x-nyupe9cs-a: kqI9ssDuC_vOBO9bJ6rIStZdY5bsendvQKx-2B7A1VdUyWuugbSsU0W4sr=iWqiEsIAHo1eG27-QxCzMz8Wubh45b10MpgStkVgwzX8n=sp9JEVB0KZ-6mo=qQ=8-QCIrk_VqxvkPxG7z9TM9L19esvBJRVsTHZ0zBLqawlXXXqEEortu28t1A9sJ8G5SFJ=P9dGPHyX-qfyiGGrSg=sMkAoG-om_nvoWCY9a_cZLnmyklon_LQD0HmpjgDvuZGAXM9Py-YpjiHJCHA9hEFnqb5fQv0VJxkZhp5xL0xpBrJ0zzVA5O7H=8L9IS5QYW_zWrSMEkZcpxYe-T7ZFhQdqmuv5nyvnTy5qFant1thuel7i8FYY7DZWvjP_kluvrl5xIKBsmav7hpMfeTI62t0RGmt8Pgz0QXp-YRFe-u-K4tRcGevHYvMHuhdFotjddj4dHn=IsbXMouEgzKeID7aU7W8jz7WdukjSGdhGcFUqSXr7qppbLTe5H-RQ=4UxElwLt6Moe9DM2JBv5ft02GsPay2BnoOCQjSKBiby6BG7pzrfvPDEvvknW8FXjD2U7rlzFRR7ZWojlkj2MAsuyyOr6BkhgAkWC8wwm6zUf4jL5rpniJexL7HiPcD_VDaq7oo3W=3ip=F0lHMCKxp4j1V4CT1T9yb-nJi2wcbh00StWCD7sZtYqzFT5MuxxJgM0fdQrwiP8J63ZCZDU1J7QzUSvTdegZZwf_=jMSv-CypLAFcf-Vy-oPI_9xhi2-RfckkhzZXtX7GxITaUWwCxl4voiBSOuIov5IRi5qArR6lYf4qdfvTdTmfJJIWv8PIG8Pf5xpl41TAFLLVvEFwqdUIBlCoVheDnR2YAM=K2yfbow0jU66jr1eeOrpQfUqq4fC2cAWor3LudHofsaFEi09_c9jqbMju_yH0SWPaDxmRiMAewwbfxZThOwTg6ojfYyURZFsX61Zg=zI8utQ524Seui6kp4UGYJfwcA6xJSZBitZ1=Ob3Zl7Wcs1ozglz90GfiYODiOkUC6YBAv=AsRS7R9E8pL4IeVyoH2uRn36yBVMfO4MyDQoWtKSJjJ2D7GldFQs43pPW7Onjf6fsAgkLCW6ofs=0=HPW4oingiTLE46MeGa=SrxZoyqf8qbSo2UpuaHEwVceiQ9JCd2Vv7XR2rJZ4LHa74dcqABMjjHQLexxH_O731RUaF5TCgSd49lyAZAAY_o4kWmAO5bw-ovi7FHZrBO2lgMG=sCVUObF_ydcK_iQQlDTJT0H0ldbmY5rfMYiWLTtuhqmtFLYaoJh12jB=KX=lWVYmm86=a2V3vR-RBpQwGUrBB1FSEFoDJoJmcxd6XRF32VBtHvAVx4XnT3xwsDitfjzA==fFaXrxudxif1i5Lj=Q_b6StPPdT3=8WaQpzsQlkK6leGdGOYo-S0VUE24pRco43Z1g2=x6t_O860Hv8u1PCP=p0qCqXshFRk8kkqxteiS5St0X8SKUq4QgIK_LZVTveXDOak411if1kWL3GhOermECcgkcRDynWsFkf7U14S=IsWeb_lyqEbV2M9FXMkXEO4Fwu8ETcFliWVtR891be1pOAbRVu6yvqXfq2xWEvdCsAY_d0ocPlIE-p6MZ5vxTqcx1j7gristjEovYXjTZdSV2fRz153DpnwqD26I5CPFyM_R9hf31jf4oE3gXaYIjugazu0Zymw4GZaJLidJIhsDm8dmBzm_7I5Pcbh1eqlwaeh_sD2ebOVgxcntDo52o-lWBbzI0L4UJq6yD6P2PDotWSeoE=TY9ngl4KPJ3u4sQjf3GB8HjRLc-8vaoZbzBaM_eRSAMeKB0JbELTi471dBkEWt2lqCICJP2tuLIo65FDVHORy8yr93mSp8DRsFfvaOa1_PAjEFaQsVLRhVcTtjtyd90cDFE==3k0jmOElyQS6FrQrM_xvSW1Ia=rBi8=bUe2okzK=v9pBq_2lo3=uHiP3vJVJLaxkws6jYs5hW3LCfqJJJDJhLE9DZPe=nKtE3TpEInh-oO-mf6ersnwE7R5-4qrBXEtoWdS3ieE6QXLMTz=LKLc0wTXjcGk6HSZA35JFYJua_oYBLPP0hJTxWVS8Pxq2KWa04VoBIjcTX7OG_Um0981TYiFgB-a19Yg94gVbJfeOukLmTfdZ3gbjkXK1ffKmmmsKD5S' \
  -H 'x-nyupe9cs-b: x10go1' \
  -H 'x-nyupe9cs-c: AMBhlCyFAQAAJIRK-crYDGb3pyNtanED0yCM9NnJyxOixbbal7b-fdukba7j' \
  -H 'x-nyupe9cs-d: ABaChIjBDKGNgUGAQZIQhISi0eIAtJmBDgC2_n3bpG2u4______JSxVAAN0K_77-qst5iCAfFnPFrm8' \
  -H 'x-nyupe9cs-f: AxDIliyFAQAA4PBiNf3YFcdspGh9dK-dMRIRGIRmWHyjS5xk0z1tF0NY8dPiAbUsdyGucgBSwH8AADQwAAAAAA==' \
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
      --progress-bar

    # Data Analysis

    echo "Sending data to data scripts with $TARGET_CURRENCY parameter"
    python3 -u "src/data_scripts/plot_csv_charts.py" "BRL_$TARGET_CURRENCY" "$TARGET_CURRENCY"

    # Data Analysis

  fi
}

exit 0
