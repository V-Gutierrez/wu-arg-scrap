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
  -H $'cookie: AKZip=; AKAreacode=; AKCounty=; WUCountryCookie_=BR; WULanguageCookie_=en; _evga_e61d=cd97f300195a1d7e.; _gcl_au=1.1.192269537.1671460584; A4kgk7nd=A3Zy0CqFAQAAHFrDWyyHi2-geoWY0CLWbQrqro2avfxhbolVwduPxYBQ7aMcAbUsdyGucgBSwH8AAEB3AAAAAA|1|1|30971075290669f09f7cab3e7720396f4e7076cf; s_ecid=MCMID%7C10527002012958908521997717894336953425; affiliate_src_code=; __qca=P0-1709286564-1671460584261; fp_token_7c6a6574-f011-4c9a-abdd-9894a102ccef=LMgsJRcfyMg7FunMOmfpI6X7duB2Acn9POKakafZbqk=; QuantumMetricUserID=fd6f2bb6039af967626dfd35a3ba712a; lastCountry=AR; lastCurrency=ARS; lastFundsIn=WUPay; userIdentity=existingCustomer; user_txn_state=2:1671629693746; lastFundsOut=BA; __ssid=9609348f42f15f82481811bbadb31bc; AKCountry=BR; AKRegioncode=AM; AKCity=MANAUS; user_session_token=4bf0c904-be6c-4658-b73f-b96e5e44e4eb; abandonedCartToken=8e53e4a3c4cfe6ebafdc44cfad6dd0f9; AK_TLS_Version=tls1.2; resolution_height=600; resolution_width=800; is_tablet=false; is_mobile=false; AK_SID=dGVzdGluZ3Yxed; AKA_A2=A; bm_sz=D7CAF0AF313B67CF7E2D7CD61663A568~YAAQLNXaFz53UoiFAQAAiMphnBIGsYwkHon+56Txmj+Nqo/TeXVaIkoS50ddDbfg0uqCaDXBaAkaGrNLxC7ZepnQMH5vrRVkuMJ8rLScRC1gsrQWaA8MM5dhI0rHQTdOzj2YTuIqW2nYw95HfpySE7Ec8HICZEu507JQNGvzQvAjvldnpbbH1nkXgxLz+/Mv/ZfqnidOreBoXIPqqmpookNa5ap0TQl6/thXSzabAOYbOMvt+DS2xDeg+TIipGdwjArMwLrJksnbJFCy2DEitnOd5vt4ltKlthcuQ/8bY9GRtVtoA4WQT4c=~3420738~4473141; _abck=39232BA13024CCE59B1FDDC26B4FDA09~0~YAAQLNXaF4V3UoiFAQAAzM9hnAmfj6ikYpwZIMjNyIBS0FCEymzr2UFfvWddzhkZkMqy+haz2E3l/0niTMl/8T6HZjoxiOnVZinWymawqh29q4UqL/0rCdKIURWnqG8CXbYhxTeXQCSlyokAJWGGWMxgePiK3uQAusR6wwX+Z/bl0Y6lxNiNSyjjADr3hbRDnq9IRm6v7WhprQLJ523GdCsatFtv7uJ9Qb4xcuZ10cBPLAFhVDkA8UiQ9jObRmk7Gqs3mxpKwQ6p/ToLuV6Ir/Zu93q6r8zGOCx/3Zgdp/ALmApTCH9lhaMHU3mhs5oVf667ughYLTletOW8cVzfh2b5c6aZFLkPvDmMrvbmNgEBEapmHwvktaOO31VMakeQz6NZE0Oib7RGcgMTlD1v2twTVWW+Q7DcaRpvpIggtg==~-1~-1~1673369479; wu_device_id=f3218a8a-3958-bc34-080e-ef65ae8926dd; bm_mi=A31FBD4C407E1261776D18ED2F3FF874~YAAQLNXaF8x3UoiFAQAApNRhnBIn6tq4tPvuXXwlElyu2VaOFm6SOKWFkWr3IWlzsajrfhrxZeOwYRi8QA0NbsLQ+csH1yQYGf8FaIl+r2lGdp9bKeYMt08n4MDAB2IE91oLwCaNHY75vG0IVmg4wqo963HwfFz1ySKHVzh0rqq2kFT4pH5aau2f/0n4TNUG3+tUdB+CHkFf7x4C1mCGtO2JiqwBixEt07wzNmYkdJFvWxU8vssl4ECPVXEmU5bU3EJu/aS10Qw1XLDzmDS6POhcqH0yU/Khzr51pUEz1wKdDWq/XXVYnVei8QmEE7Uah1znucSDa9nvi9rqaeU4Heossvr4V3QHfCuDq4Ck6dxBHJdINPIuF2W1+SVpezXOISM=~1; ak_bmsc=76AE97DF43E62BC68C534D2FD06C2C01~000000000000000000000000000000~YAAQLNXaF+53UoiFAQAA59VhnBLr1gi9iDCmD539yLodWzVxdzHnc7cZZCfkbDMabX0b6Ynw/cKk7SV0Nz9RLpMh9P9AeCADKOp/rI8S7fDZtnwYWh33ImX5+J+Hzr58KdGf9wH8VjR0c0R68lbSH0lAWe/OJHtjcm7Cc3Zv5lMGE+jrQzph2hbPEdrnIBDpU2/AyuyC1+Z/kE28FDE2EX/4OIDB4rne9h1HpK9F1iCwWUDDe+lsF1aXn4NMqST3sfYuashYswkBpVSew3tyIW4LOwA7qJ/CQyk7eEFOCc8WWSqLLjWzWEW8X3jYOa0hIWeXfMo3VD0OeCb8Br2wrns4J38OpqFEG6G4XVpHDoeVhdSgvRamBtjzLXJmxndAG82DbKbdfTsg0cTj41pZNHeM1oWFKOHgKe25y5LpO2XESqcWOlF9ZTmU0sZJJUgHGdKw10Gv2Z+fYtK0/Cn45jkiLL8vokrovmDJ2T3U/hRHSNFkf1hY1fLXPUZh8qoGwgl7aXTbKcxfCEZZGTOhrAGBP3obaDtD50lACfQMiQeeTCckqeedVQ+sojQMqklud7TeK4M=; amplitude_id_7d40b1ccdea38ded011affb5946a3ddd_project-leap-qawesternunion.com=eyJkZXZpY2VJZCI6Ijc0MjYzMzFjLTJiMjctNDRmMi1hMWQxLTc1NGNhNjcxZTU5OFIiLCJ1c2VySWQiOm51bGwsIm9wdE91dCI6ZmFsc2UsInNlc3Npb25JZCI6MTY3MzM2NTkzNjYwOSwibGFzdEV2ZW50VGltZSI6MTY3MzM2NTkzNjYxMCwiZXZlbnRJZCI6MzgsImlkZW50aWZ5SWQiOjEwNSwic2VxdWVuY2VOdW1iZXIiOjE0M30=; amplitude_id_4aec879ef8bf1823486c4338537ec441westernunion.com=eyJkZXZpY2VJZCI6ImM1ODVkMzVmLTJmZTMtOTVhMS04N2MzLTMxMWQ5MTZhNTU1NyIsInVzZXJJZCI6IjMxMzg2NzQ5NmRmNzc3ZWZlNDNjZDM1MjBiMmIzMmYxIiwib3B0T3V0IjpmYWxzZSwic2Vzc2lvbklkIjoxNjczMzY1OTM2NjIxLCJsYXN0RXZlbnRUaW1lIjoxNjczMzY1OTM2NjIxLCJldmVudElkIjoyMjQsImlkZW50aWZ5SWQiOjE2NCwic2VxdWVuY2VOdW1iZXIiOjM4OH0=; utm_source=web-bookmark-or-typed; utm_medium=e-web-bookmark-or-typed; utm_campaign=organic-web-bookmark-or-typed; visit-logged-amp=true; AMCVS_AACD3BC75245B4940A490D4D%40AdobeOrg=1; AMCV_AACD3BC75245B4940A490D4D%40AdobeOrg=1176715910%7CMCIDTS%7C19367%7CMCMID%7C10527002012958908521997717894336953425%7CMCAID%7CNONE%7CMCOPTOUT-1673373137s%7CNONE%7CMCAAMLH-1673970737%7C4%7CMCAAMB-1673970737%7Cj8Odv6LonN4r3an7LhD3WZrU1bUpAkFkkiY1ncBR96t2PTI%7CMCSYNCSOP%7C411-19374%7CvVersion%7C5.4.0; s_plt=3.07; s_pltp=br%3Aen%3Awebsite%3Ahome; channel_stack=home; s_cc=true; s_NewRepeateVar=1673365937560-Repeat; s_NewRepeatprop=1673365937560-Repeat; _dd_s=logs=1&id=464abc46-63e4-4412-a384-566de3b305a0&created=1673365933491&expire=1673366846708; A4kgk7nd_dc=%7B%22c%22%3A%20%22dVNwTkd6SmVXWHhvVzJHUg%3D%3DpzDGISyUvLeVDkhHgMyo-Mvl5QLgjRr3mG5hLtgMv-CcHsqQqGnqCrfaopYW3y06LYCy5m7k4AlP1GO9PHAfp0qIVPbKWfenTeEUfNOG0A%3D%3D%22%2C%20%22dc%22%3A%201%2C%20%22mf%22%3A%201%7D; dtCookie=v_4_srv_3_sn_DA5DBE18D2D57CE2344417A2A139909E_perc_100000_ol_0_mul_1_app-3A4f296d341a47bdba_0; RT="z=1&dm=www.westernunion.com&si=f615b927-54e4-4590-92a5-457baa9d3ec4&ss=lcqevcvi&sl=2&tt=4m2&bcn=%2F%2F17de4c10.akstat.io%2F&ld=bxv"; BIGipServerwudispatcher.westernunion.com=\u0021naCbjg8Vdiy11xg9v++QYZNsXLq+HwwiY/wdursp9PF0xdEfKk+lP3o6SJ1Ra2s9NS7WGjhTdGIyJw==; bm_sv=B189447BC87E5E37791917366D8FBCF8~YAAQLNXaF5R7UoiFAQAAgQRinBKAs2rLVR8DzEfX2C4w7dQkGdCldOQG0yv3jEwBPczR8WUrOYf8b4SE/5TsLX2RMucUInTIHFL1M69gSrzmhwQx9I5ahQmUUshYi10C7XhWHTuA3psJTjVEGyLzsRCTwQxfMUNTZJFsk/uAFeoeSLalHDdildKGDgCexPUSFtza2n8pnu4lOA/nHMZkBX8mqf+f+wvMZOXomb6KsyfWNN/fl4SO8NaJNcmMiJ3v3n2ZuOEr~1' \
  -H 'origin: https://www.westernunion.com' \
  -H 'pragma: no-cache' \
  -H 'referer: https://www.westernunion.com/br/en/home.html' \
  -H 'sec-ch-ua: "Not?A_Brand";v="8", "Chromium";v="108", "Microsoft Edge";v="108"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.76' \
  -H 'x-nyupe9cs-a: =0MDUWcheZXJEzPmL-4bn6TYa08xMaWbwaTFwm=zn028tuIOVxSFUUrKxvT82UVLTHj-08N0EE-ur0drbpvkQ4W=3NtQ6kGR4Iad8gz2T-HEMvmK702Lr47GwOCk9BUw5TQpqvhWqpI61iPxUlYxx2bG8r0xBgCXo8H4eiwUMmNKlzYAX6haelRKi56d5QsP=m4waFbqj=yQl69nTwbvjOL4Dr-ZrQihKDMZq1ZlyKpKVC33D9bgrsKAnGCKL4ArQyOHSA-0X=wXuHaPzRkUJW=X07drHrAqmaMPvoPGaOVYxu_jBbAEwL_sLU_9kK9piA4X9LWqlTlWkbab=DEj6E1o2LKGuuX77xdrUNpHFaoMYZ_QuIWLY9IoKBkrWaYxZHKr87KJmO7Har3D_qtRcLTGO6cSqm27v-QQMsxGkPywt63Lyix8mODKoYm3wKcWy3O36WvYNV_5NYwFmlZ_Nvet0kd1nzmjxhAasrypxAZqc8vR8djSP-7FaVGHtTbC9ItdcrFVCXJKMJ9gSM7lQaxkltjCqJswyqQSbEV-4884h1FajEES4CP_tHdw5xHeatrWxLGzzIakt70dLXto6Uw5gqw5k_PXStwZUe5hnVPB1Id7Zs3Yq7-X6xBuqT0uNoX88ztLG6bOU258CL4tZKxsGj0Pni=cos9Md_mFMnBynr=GoOAOIxH4zO8dZgU0FL68ZQtE92z3GWJQB554YyH5Uz0-y7U1smsKFOxy3sNY_kwawOsTLELYhms6=2=bnS20eKP8rN=19n7yQu2RsFYqRSZE=Iu8IOLvgXMWzEXs=qRrbutXU64h0bUYUJcQ7bEZVdiOE2pnon5NEnkDntVsv5ukBv-AOmCB65uNe7xJxgniSVOvMC6V488_KWdsdrEw_AzlEAYHWSGK6pMUluxOT2xGxrOy3KOCjLZJb9Kc-eK=yv8xNPmnVK_aRdb_4NPxSJZLLxc7qJSSLmNx4tVwW4lBkTQKkbCWiIea3xgNSpAdWri6E8Ii_e5ARR6UKy18eG2wYb_72L-2uHYzo_VusdWKR6JKkckQ-hvv-H41Ejd1YBx-c_2WC0uj0u-3PPgITg_H6xXelbYz58wZGEwI_rDX8n53b5uTuhVP4mTYJm6_BDG5iI-a9=s3xV5YnHrFwObru68_Ddc5WMozio0rGD-uENOIoB047SETzeU49pkFzBM_DKdQ7P6YEMF2XUjX81VIgoEksGD_P9oCr=w7YBMkm1x08usAHZqkPvNIrWlWRKzctXXzayqy3QbULGNGWVyYHwsdy_QEl_DM1Mvo=jl=Oy3WcKa9qeaQSGU3rb0sN=IS9LZuaCR-W1uh9Elci7q7K5VuWne1qvEJMdsshl8MTj1xFi9PsPNh4YPJMRRZwaB52UIZWnC-JbkzraLVunDBoNkMnCMylxFigoM4PMvjHHaRzzvGjiQrjiIlT-qVV-xoaPYv6Ud2aJI2VMFrlME6a3CUI__T9TCC4XrbHUAS1Wv-qjRO0JzwFuOTxHw1FCbs=rMZaqkjylOJagwZxIdD6IPrpSeNZuLdiYTSZhms1QDGQ_x07OYZwgZXUqhEz9pSdH=G_5NOStgOc6mHgDw83LOPkJoNFc0bPY_B8nrjpNM9T9QkAUl-mAK51CPLt0wohPK85TC9yquC=gNyhqldBqV6AhVhyVe08bGnW_Kv9=DPXaD60rzg2kJ-Snsxct_B25A0OBCFFFlxUNhZFzRSEOUQ0FPxP7oEp71eRVaBta6e9XtFLmv4lbmPZ_2CWYPajzlqeZnH0vFtz4o-P=oRPVvrm-z8DgoErWgsATPCxpE=QFQYyuMV4J4JPVR3zqF=xB2i7GyC-H7FZmKlKmBXWxr8lPejMldZCoXHrBIgktKwEHj72TP6eEMScZtJl8UO7U2-UohzX=MYMGFYgYdIkC6rQ2dyvNjVa694wUqbmuPlHDxNjypPCGxKeD1=1tq_Zx5q=Mm0Flv4IwoBRNmzXv-GJzsDz_n0djXC29JR3djZFIJja75XmVmtld5oAM9-hNbo9JOJH5A83C9Lo2LKLMlEjKSYgR=J5YRt7omeohpruu_90a3Xls6Bv8oxbCAWRoaycTAU2EB0LVm8gP8RR5Noo3LKvrawSMlIuYzIoS8=Sh7O3vsXCkUb2sl=qmP0X2hOJhOqlXN5ZqTaWsSWckzlY1ke1QuoY9tmMX7b5o8u3nzTzlNXRzkkUBuHGrBuLi-7W8YxsZA7cwq=Tj9PdXjELU2XwWQrxbiEScFSJr2lOK_n34PqJ46Jr1ZDdnSawX4myZ=eAtPuZabdoS29=tg1xXC-e8D2O9LgBlclFH4hE7h6W=jdiioVJX71cjCDWU3shXWqh8HkYlcaXz3ZJ-TPvGeW6mrg--xRqlG=NsWMyQXUApi1PXH965=a=vZI-_cZ0MGdsGRB_JtAH9T1XL9CS=AMN_m0op9I7Q=8ER7axFeNLhtTK7aaVEADh2YQMtaljB3y46AsksQt3mKk_=DFeAnXqkYx_xqnDATm=9UuPTkHmkYQeggXBTamvazLWgXz-=qpz1z4SuBTIcMcNsD91Ya95IUpsndnbPKIeoZlAQ9Vm6Uxk05C7VJbg0HRDe_caSh-surIo6DFNteAS4L0xesCzBj7cqyayaenpHdU7kaCoJdqc9=gcEOjgdg-z=oliI=TnJJcEebXc22028tLsP4KM8pB8WXNiMZtt0Gylo22soB_bXITwXjJER6iHwI1=7ZK5phOaYwWFAwa_71lhMRkXpx6nSurAAmDWkiorKg5joVY7QbvdAtQnMiitFB2mn_p_Xanq8v7Szwq-QdHZU_WMJKy2n3wrVBG6I_rCazUnb4mSGcM=6GCDLbm-Y6Xh1DucDr6W28JzroXo4XrFoO2D2IoO9deRJPrtCIbvP0HsrV41-YWLxpOOr2nSpgmJFd5THN21lFx29aOBMXO2mojD7WjKuznuejinyRKuGJToPASz5zIprDidevolUlYrkroQdH8X6vejQOXEyd8L1S=y7m_u1=0xEYilexxeQ4qCGrnkq6k_nEOrTndud3lRZ3rY08WUjeznVHThG7-eSLn2e1OW3z84JjpJbo1EyVD2due89olrZrNO79dN-w39juR=aMq7S9SeuuI0mjPpkFLXnEAJHzeIY4IpU41Z5PUY3To3AsnaTUxk5kEZG8he5ojykB-A5dKWENp6dGNwqTR3UZ8D7U0gX3R5lA7szmutg=jBmIlKPE=IqPenaVk1y1HUrOV-bCN3BJ3Mo8m1psQQ0qwgWQFiuwoWNjzOGjkhLDXNFOIiB7db0S6jTNHY9ZdEmKPE9AVCLjw6jlYKyx7nGoHMZ46Xa6F2L4YD-gJG9mnWtkb3q07kn=v1vTPRWM7h7JGabnogoBURcX-ARFip2ZLLF7lsmjHCdyJ7kWPUOQoPTDHCTW0hXheB5o8RBcX6id9RWKjkxKDIxY5KTDV-ChZtVAaHAJNDJWJ3vQAaosU3dIWTWNiUk2lRhBXb6aCbDbtWmwuUxgbrT5MJ6gkoGU5KaeKTsLhuT4itt6smyczm9xQmDhnn2RpXYHVsii1B5XvtzzelFOxZgiCocn7JGVsBRFeFUWUdpcYleFaQtxE=YV2Wk1lH8DW4QZ6rC_a8nAtQStKn=Jt_CBqWg2IdGR3vHvPStWC7PnV-mCPDtlPFgRG=DtJruW13ZWT5XqOPOvM-7SI1kcCsqKnlWQtqamQvmSBWsI_Hk_XRjEaKI-XpoY' \
  -H 'x-nyupe9cs-b: -taoyb3' \
  -H 'x-nyupe9cs-c: AEDEX5yFAQAAJ_PoRSkpRyryQue6uiLyf_mX7uZN4drpayv1_Z3Jb1Qs6Ld8' \
  -H 'x-nyupe9cs-d: ABaChIjBDKGNgUGAQZIQhISi0eIAtJmBDgCdyW9ULOi3fP_____JSxVAALR4d20bMua7xfkW0lAFt8c' \
  -H 'x-nyupe9cs-f: AzH5YZyFAQAAqQv3nD20VAhqfRxQ1T74trH1gOBK6TzIJEeFhGXId_-MF0nrAYp5HuCucgBSwH8AAEB3AAAAAA==' \
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
