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
  -H $'cookie: AKCountry=AR; AKZip=; AKRegioncode=; AKCity=BUENOSAIRES; AKAreacode=; AKCounty=; WUCountryCookie_=BR; WULanguageCookie_=en; _evga_e61d=cd97f300195a1d7e.; _gcl_au=1.1.192269537.1671460584; A4kgk7nd=A3Zy0CqFAQAAHFrDWyyHi2-geoWY0CLWbQrqro2avfxhbolVwduPxYBQ7aMcAbUsdyGucgBSwH8AAEB3AAAAAA|1|1|30971075290669f09f7cab3e7720396f4e7076cf; s_ecid=MCMID%7C10527002012958908521997717894336953425; affiliate_src_code=; __qca=P0-1709286564-1671460584261; AK_TLS_Version=tls1.2; resolution_height=600; resolution_width=800; is_tablet=false; is_mobile=false; AKA_A2=A; bm_sz=71C236167EFB585C94098E0FF0A63A60~YAAQTkostXy9oRaFAQAAOlTkNBI6vv/YVRagNfRcLAm+C4EQIpkgS8E3xctNFIiizJNVWsSD4C8Mvq3a67Uvyk95wpD15G+pWHvgTHq9giaNHirXc/Kexh96WhDbSnMFJEKMfuAn1+GJqeWz94lmOWhHp+7y90I6kh053T6HFDYNqSsHzdjcMeqgYbqMBqukoXUtlzQtM6dcJOkNZ1VzvbCvNq+qcVj2JFZYsgDoAyRg83hprcgFbElg0RxyW2+pCPQRel9P0hUpmnGLvcwj6Povy3hNsziXWgDpIqPCsMCoIFo/8PnxIko=~3163188~3291444; bm_mi=2898944EC4045222F4DFD11C21839909~YAAQTkostZC9oRaFAQAAB1/kNBJR7WVe2rKMQcgsYsskEhWGGc5PnH3LHxMM/+BLjD8tLpZ2oI8UuAb+l8IyGmpz7oOlEHswT4rDMrwfzmc0T1A4oFfdI7F8QKkti8065L68zFfAd/O/Fafy3+mwDo77cfZpTxiG4mq9DzVOsXS7hFZTExuCz89ajFCOZhzrm3ee8/OGmWKcoFhXI27jeFT7wnMmVqe6WcA8e0IK/EJngmdmk5OYO5/2s6S5dD1eCYHta+RGJYTB/AB0+NA7yLkR3UPPbEBrzBuSFGoQdXgjED0QOAaB5lfmcAVnCvIuJOBtnS5eqgTe837lF4hErdXJQNSuMLEK1RbHvX/IGz48E78COGCooF0uQe5nHJmQmg==~1; wu_device_id=41b2ea0a-70d5-7d74-464f-e3ca909e6e76; AMCVS_AACD3BC75245B4940A490D4D%40AdobeOrg=1; AMCV_AACD3BC75245B4940A490D4D%40AdobeOrg=1176715910%7CMCIDTS%7C19348%7CMCMID%7C10527002012958908521997717894336953425%7CMCAID%7CNONE%7CMCOPTOUT-1671636859s%7CNONE%7CMCAAMLH-1672234459%7C4%7CMCAAMB-1672234459%7Cj8Odv6LonN4r3an7LhD3WZrU1bUpAkFkkiY1ncBR96t2PTI%7CMCSYNCSOP%7C411-19353%7CvVersion%7C5.4.0; visit-logged-amp=true; s_cc=true; buildVersion=R22-12.2.1; rxVisitor=1671629668872E1EKKGBQ92M7TIPJR72ER9IJ84G216O9; fp_token_7c6a6574-f011-4c9a-abdd-9894a102ccef=LMgsJRcfyMg7FunMOmfpI6X7duB2Acn9POKakafZbqk=; visit-logged=true; QuantumMetricUserID=fd6f2bb6039af967626dfd35a3ba712a; lastCountry=AR; lastCurrency=ARS; lastFundsIn=WUPay; lastFundsOut=AG; Mn-Tb-dg=0%7e1671629690%7e7a83750; _abck=39232BA13024CCE59B1FDDC26B4FDA09~0~YAAQTkostSW+oRaFAQAABtjkNAkPQQQd5+IApvLcQwSKh5z8ghEcYo64wWCJpDyzQpyZCPZzeWQucZCVOJTwbEt4hVsQaGyXLNylXpdeMTabTXUacNVjiLP1UpNlcZDPFi1/L5YsFu1rE2E6sbBD19G4tSD6bCA07AZX9wm2ARegU9uHB5rYzZ8t6SgIRpbdmulwtefQDF4l8hPCPCe3J6h2CieUGGAQQzcetapUNB/aXl5J32UVsvT63KmIYWbQXdAoyE2y12DPh6F1N7RL6N7EGIvG5tgL/zcfXxzOBfFdgBTAzdWo/AgYuAX6+a90T4qZ647XuehrNb4Bpka9I+pFay/Q2891UPSvmYNDBmr82oAwLm/gpMK3RYczgqewf1a3515xVCtkvyhgK04SNakiDdSRwYx952k60I/h3w==~-1~-1~1671633145; userIdentity=existingCustomer; SMLoginViewToggle=true; ak_bmsc=441BC3F3307373CEEA8B3C57265A9274~000000000000000000000000000000~YAAQTkostTC+oRaFAQAAKePkNBIU/q2S1cwWZDAV16v5WnPHHpCxEN/oc1n/AP7lvhNkVenFUWJGFADwnLSSzQwldX5cwo4sqyHgxTIdvX3WFaoPwvGxIgGlCBCOuwcDzaqdtm+rDd+YOeYMkUPTBFZ0KCdPyTyiBdcD8GTH8WdijScjq1LxLijNs5/rOydHVLZGe7tIklCHeUUrFWDNoigH+2vfA6vrVRa08HZfXBAmsBcLTxQvoHdTfujLjHC1jtE0SE+9mnQ1BbU0JRL4KilTp1ObPLdIBOrtV5ZDTDJzpbrRrHLCnNd2bwL6yqe6heyxBLctDG4Jo0N2Pt8RYOmwYll5W5rVOCsr5QmNlP9A74YuX1zNnb8Hf6iQgQ8/Jb7aYpBLgPYD4Fnyxizt8/VlqcK15Tltc1UcFJ9UU7B4EL8J9oTuiSHN4zMYGXepd6JlbyN1N28BfP43jXQaf7TcfGgc88OHuLP2jYghEe/TJlwrf8Pgw9IYrtR6I7+4/UwMRAjRDojySWCk3WgFqBazeaJNqHT4QbJvdmQQJgALx5QyeVh1BZingLscJRCA8nDTBzs58B8o; SM_Start_Cookie=true; user_txn_state=2:1671629693746; dtLatC=1; rxvt=1671631502747|1671629668874; dtPC=2$29668870_975h-vOCVAHUSPRAPMTORGMHKMMMCFHNQHKHEF-0e0; sc_links=br%3Aen%3Awebsite%3Asend-money%3Areceiverinformation%5E%5Elink-optAddReceiver-cancel; dtSa=true%7CS%7C-1%7C-%7C-%7C1671629741111%7C29668870_975%7Chttps%3A%2F%2Fwww.westernunion.com%2Fbr%2Fen%2Fweb%2Freceiver%7C%7C%7C%7C; utm_source=web-bookmark-or-typed; utm_medium=e-web-bookmark-or-typed; utm_campaign=organic-web-bookmark-or-typed; s_plt=2.25; s_pltp=br%3Aen%3Awebsite%3Ahome; channel_stack=home|send-money|home; s_sq=%5B%5BB%5D%5D; amplitude_id_7d40b1ccdea38ded011affb5946a3ddd_project-leap-qawesternunion.com=eyJkZXZpY2VJZCI6Ijc0MjYzMzFjLTJiMjctNDRmMi1hMWQxLTc1NGNhNjcxZTU5OFIiLCJ1c2VySWQiOm51bGwsIm9wdE91dCI6ZmFsc2UsInNlc3Npb25JZCI6MTY3MTYzMTg1NDIxMiwibGFzdEV2ZW50VGltZSI6MTY3MTYzMTg1NDIxOSwiZXZlbnRJZCI6NCwiaWRlbnRpZnlJZCI6MjcsInNlcXVlbmNlTnVtYmVyIjozMX0=; s_NewRepeateVar=1671631993460-Repeat; s_NewRepeatprop=1671631993460-Repeat; A4kgk7nd_dc=%7B%22c%22%3A%20%22ZjNLV0w2NE1sQTVWNmZoYg%3D%3D3LNQIb6hHJuv7bXhvUh_J_Tp1lI4nZJMoO5aUGqvC7_Zcb32a7JYjnOX6ZOwShGbcIImHrxIarPoWBuKtRql8eG0TexuPA9UhdtsQv_IwQ%3D%3D%22%2C%20%22dc%22%3A%200%2C%20%22mf%22%3A%200%7D; _dd_s=logs=1&id=e62dc629-3f91-4719-87af-2efd0c9226a5&created=1671631851483&expire=1671632906373; dtCookie=v_4_srv_1_sn_4FDA41A0E26B81886FD699B8BDBDCE83_perc_100000_ol_0_mul_1_app-3A4f296d341a47bdba_0; RT="z=1&dm=www.westernunion.com&si=f615b927-54e4-4590-92a5-457baa9d3ec4&ss=lbxqfzht&sl=2&tt=3yi&bcn=%2F%2F17de4c1e.akstat.io%2F&ld=3btd"; amplitude_id_4aec879ef8bf1823486c4338537ec441westernunion.com=eyJkZXZpY2VJZCI6IjQxYjJlYTBhLTcwZDUtN2Q3NC00NjRmLWUzY2E5MDllNmU3NiIsInVzZXJJZCI6IjMxMzg2NzQ5NmRmNzc3ZWZlNDNjZDM1MjBiMmIzMmYxIiwib3B0T3V0IjpmYWxzZSwic2Vzc2lvbklkIjoxNjcxNjMxODUzNzY2LCJsYXN0RXZlbnRUaW1lIjoxNjcxNjMyMDA3MDI2LCJldmVudElkIjo0NywiaWRlbnRpZnlJZCI6MjQsInNlcXVlbmNlTnVtYmVyIjo3MX0=; BIGipServerwudispatcher.westernunion.com=\u00219aJJFi40A2DThfA9v++QYZNsXLq+H3wGP1V7PQq3Jy+0m82S4VCXUyF/wXxyY5g80bS0zZiOMJUCdg==; bm_sv=D501799521BCEE5BF3EF3CAB2502A432~YAAQTkostXLgoRaFAQAAEzUINRJwUcZ6p9r6R4ecgogGrCQoeRSaBRtkyKCd/UqHNm6+9BFqqNFwkqE6rqTKLB0V19i77NqkqUEIjTm3VfJG9sGXv6jgYv0+hpOmmPmQCBUw5or6TjYeWo/PWjE0Qdty/bi0aBXLtnsNzMAqWLBGAGHZtygO48JaBCNascEBZzID76F3CY0J0Zzdi1Zqf/7PQJfV7DP5d4IfQMY4eM+EnAshx6a2mCPA83EeF0kBhLX83m6MqA==~1' \
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
  -H 'x-nyupe9cs-a: ECj0hUTUaQz49CUedJa9OkdR0EI1SymJc1CaZRcv88DGiI54OrS2qZUX8zIg7fjkroX_7pynHw8L2cEYfDUrj1C1gRiPNumxqlqMcA4jlPTsMzf4hn2yosKz4QesTC9Csr-myLjNKHZALwDqcBKft9vetBTIs-eyZ6caxyjjcqHQwqH3RiZy-Bi8vkjCqnKBGl-4DoxzjZeZJAsUoaTM-6rPcw9H7SOx9hyuQP9PrjAmrDvjnklXPsBiGMgFRvdyTUiUhTcD5gNo3=YdT0laBUGQzzaxsdBk8GLYXrQBXtSGmPPIJHxE7oSf29NPm1Bxz0A6q3RtdUhdlh7Tmro1y9oDwMa97qQB-wuCNSA4kNiLTr2FZnoVDOmZ5tjUSyOZfr7=CItgsglHyDmJr7Pe-eS_MOlQUciDjcML8nX6v44OBpElj1seUcQtpmGRppCxn9Ja100TCI8UT3SOYWo7vR3hZwCiwo22Xz30KwTHq8QQhU7Pti6KUxu6w_RCaf3GiKhDkEKt4k5m-mmQTcigx8aex68KiQfJLsOBqurSQcn990AFU-SkOjazh7L8iG2_yjQ_D_DkYtOcQtj7QwEszz0RYgTLAq0JQIxIWmfBVp6EcK4Zr84h4_KOFcucR5v-1PMawgSLnERP6-yzG39AXQui6I9=tYLJI7Wi=gEsT5ahoypuQ6KU4_hx5rAysgnRYN8Z_UP2Qtgj_EtA6P==OosTxWqaVt_TNXuSeZZ2pfVAERFkyZ7x0PHUvwTkwS5oQ7tvePZ3vrFelpf3pzMHo8maiH9336dquvv41AKOWWuljMCs1lTa-cJLkHtRZtOkN513RFzySyGouljrXtOzY_m36PV8c7YhynVluaqmaLsXEruLTjdZLyG8kWTo-SDo=dresa0_ZtE7SpWc5FtZ8AucjRm47wKBneNZwnzVuRZPy3xq3hsu8c3gQzkgvrcBuaU-L-2ysojVgeQsg2WLwV92HRT4OQyUVtfs3j9nLxJjY4tygt0coqI36M=XmIAQaVzHwt1=Pr_hnBqmRjzQ_t9cfKuRZv9JCG9lBwdyFWqy9eMd6hsl69t4zSF8=XwQPTnZzRTLiO9w4pMxPpTpjRDOxc2Vhqk_74p0JTfRmRsegxjri_1FirmrDRPpE5N2LlMal_d6GOfkJAq7tV1a0JyfGTwpG7Ft2Vj7HPcMcxuRDLtLRsdy5MjJcsm4nVoPmracqLzh1CXhezEOc3iKo6WNhuzxMBuXq4Q0s57XW7e9sAjpDPpsIqy_K_7XAeODo9C0wrCgIHriVVomuKnZFcQ2K_Q5zUtY7CMkAHlOw4Ltr-PSD_tp-2ILQfg5IyJq5AG97LvIOcl32tEnZ6LXQ25pQe1z55Knu-fXPQ914qPckNgUoTVxWhMl8W4Fc=6oDm=BuOXuUprEMJENj2daw0eKPVxDK5zXATAi=s_5FkJd3aWBhZ6GQ4vjS-NFi0EaFFD5e00idMGq1Oj6lIQZZZa9sD7BOODZGOA=w9XdWeMgJU9pPvr-hFRXEXZkE-uNgcWKlLqARJix7j9hEsqTq_CESEtMZeDqVvBCJksEsLK-rLaTyUTJsc2BR2oJ3YJErBtq_UM5Y1RhOlFapn7htQ3cfpYotum-DQlqOndHNcKFiRTLZqzXAvcTgCP-Bix0_5hohpppaPp=nx8g55Ugljj47sM3eHar22uzWNOjyf7OM6pipJV=39kP4RnUZ6jP9dICt1R5h1Fzpfedexkv8qg1n6yNa=8uCR=rox8w-S3UKAzuRwr0RVxZ_EfySjVRQdm-y6rUt5CopcjO1cfkiO4FPI-1xKg=KA6UURllLVLQ65I276U9sqFG5DR0EkNj=QF92U_5dkrrdr6QG=R5CRnzTIXGxn5SW_DjU4C6Q1-ol6CI64438ZtiGMYgVVgX1vGcUCz6RYtAm=uHs0=AfgscOrxfoAZZjN=NHFO741PvCIFQcsBqafjmlmaNkqUW9dVu_Zi4zKWO5DxOYmdT5p1e85mGyjWRMz7eLa36yZo33X6AjZFOxGC546GfZQpchQVBUwZKACfTOYaRf5Fu8F2P_EUHUtyujXOOOedDw8jlm_hQGnkyxTAcCEWVZQeZq4q_1Nqe1v1DyVJersq466Ac5J3LadwJZAWfDQUBUkdgji8jF=NlmKncO7VtQSZXcxEiskBlJzwqczyJTKt2EDfYAjJtMUA23yX1XHi08KiFdJsnXOmngL-AQPAWSgAZduEyydlZNRFZ1NdCaAKx8dfaOnDWRCD-cCr3nZ4hVfOSI7ng9iHELIG3HM5QcQAHTZfc0ofQE-Qm9MGgB6dhDBJrlcuCjOxsEdRA-9W_285sT_YVCQHyELCcT3XcaGaD5QLfpql3UydS_2MKk=D7ZD0JskCW5ltoO2troaiNDvtAEIrBPH9-yRuEi22OW-7W8NBJ9i0zcInpsax4NOXTOXWB3wJkwUyQfvI8C8M3_08=7O2isqjcQmp1IWqk_OrS-4=DeOfEB5Fy6KrxRxaEKprjy5p2LmSjUTIdme8phN3VXpyg-qDHW7mP3JCGrSFWI_xfJ7nFPwzSL89uMHxB6KZdvaWrEhYRVUjv-W6KRxtEktP3C0-DmrVqkkc_uctjgcmrvXrhrWUGrZMDsnFGE537p1VIPdtigxhMuxT-xN2KQ1NQgeYy9hAXiqqUeCEDZRoFX5NnkS8pRnm1IFqhPMi2zSKpWshJOlzLwIRZFBDM_ysSN2t40S5tYCndoNY7BcSZR77feuYBjYSJkMKiqj3Dd5REg2qx_upGlhkT5v8XsxI8F8XT-hpzQ1uiTUa=jQQWflDKfX0UO68C0upaMxISLNXKGeiWp71cO4c1vOXzD22MstDV1Y9QtlHlnaK2=uLOUhcTho3HOxaafDqPCXOlJZojji1-7cojQqaXMcGDmwXzHMq6RsYGLQQ9_pDCtZk9ZBgQFGASetYAy1yVvnntVPe-NngA-L-QJP3WiZBeQ997Qok31MmFJwglXpidxenso1r_X5L2wwiQYCHsgunRPHmvaffBA-SOYtGZXYyVVv1T6xw_1A5Fy_jB=1gkXRRKqWqnWH=u=A1KOgpGcdqWKT7GwoUeRq0odYQWDySM0k4ysh1uCzjK4k_MhvqIRAOw_CI-9aqDhq77SLCnrojUQzq9JfK5FoYNEEge4g0xjRR2uPfgnPGsR6avBlchMQTdq8N7lhevtTtgwhVQfdNs97RfPdevwq3iN9Nf1m-Ud1pYM5vg2m=DQKUP73PD-MEwoL0JOu20UsjdLR9Pn5BUWFOWBBjFqBJI97GcnuJkLsQDt0NDrEaGznWKH8zgZCGqAW8OoMzg_SK2J6FzfmVnJEF4Pw3UI6lXoJAJtDRG73xS3pmuZf8pukoR3ElGlvZ09kp2BU3tCLSz3gVR5321uTfDWVsIT0GVPeDr4DW9J6CQ6Z=h0k73CmG12o79IJcZCw5EgwjBcM8IAuqkmPBt5Rnunenh4nc9lrL4XxXTkrXaf8fWhMZCVvkspRCK0VGTs7ChePPmzu3uOE8T2JKLj3_LyyL50WWnvElWO8mtaRB3HuroEtQ4_mDO6vjU95t0MK_tQ2nIY5HXwcVHVguEA-2HtJv2pkF4pRAjsrotyIcF8MWSyWxmVN0ZuI6cpEtVm16Y8=6z0EO7Mv2LiK5JS9kZuEvQnCuUzG_nQeP2N26oaGNfURogusR8nI2vUXHKXEG55PNeCiSw0xH5fcP8RpZw4nsmLJn_w54phW36=-qlU=jfQc3jEQBBLaquqwILvkVhPNLPfzU0A0UKcUAzoomxYOzYWwzB7gkeyFjtUicjoB=_fYOdsxDihnB7DL675OzJJt-maq7DdJ_JXtU5lH=dzUBed=sgNL6crNR8OaZVnNlpf8rl2K4Phz9R2zemqajdOo97KRwDVEIdXljEzoux0rfqGd_gnXJI6VoKxgs8qPRjRvOx9eKJZHlQyLMy_0H8E7vFKxML7LISaBIf1eXIhHs2lF9=wAxi=S6UYSuE9iIRNrYKoQJ71enH-qwfoO_C_7Ng4cJNvQjoIoRtCK9f4Yk8yUACvVLlam-lZKG5p2WI5Q=NCA1ukQCsx3SuP7c-60C7pYDuE05jZlTnLnT8RZ_=UY6ci9DkU8COZQwVqDG_D48kNziuhoDz_7EJIVYhxsZBQJdge89BNS6Zatcxdsyp7AM-RGFJaUyp-FgUAx1LeuSquq-WVE-zYYHpNDXd=OWpGptzV2vERx8XMc6W=CisXmtPCcQggr8n7q46FJNh0U_h8EaPSxDiE4i90TLdu0n7nyxQG7qtOs0JX9DOzLBsi2T-UocLduoN57Q4Zu3avzmBumRo-ocn8ya9ckWKYrfeVoN' \
  -H 'x-nyupe9cs-b: -k1yffw' \
  -H 'x-nyupe9cs-c: AMAGBTWFAQAASAc9GJiHEKdQ94645H_hm92wPySbjS6QayOafmw1C1X-MvQz' \
  -H 'x-nyupe9cs-d: ABaChIjBDKGNgUGAQZIQhISi0eIAtJmBDgBsNQtV_jL0M______JSxVAAIyiLdoBxQIRBZLAAADNI_Q' \
  -H 'x-nyupe9cs-f: Ax8rCDWFAQAAY67gLcvSapB14PqNo4wYh1YEWx0FfTTLV7VgPcyXGjUrH35YAbUsdyGucgBSwH8AAEB3AAAAAA==' \
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
