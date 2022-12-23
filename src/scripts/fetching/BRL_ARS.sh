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
  -H $'cookie: AKCountry=AR; AKZip=; AKRegioncode=; AKCity=BUENOSAIRES; AKAreacode=; AKCounty=; WUCountryCookie_=BR; WULanguageCookie_=en; _evga_e61d=cd97f300195a1d7e.; _gcl_au=1.1.192269537.1671460584; A4kgk7nd=A3Zy0CqFAQAAHFrDWyyHi2-geoWY0CLWbQrqro2avfxhbolVwduPxYBQ7aMcAbUsdyGucgBSwH8AAEB3AAAAAA|1|1|30971075290669f09f7cab3e7720396f4e7076cf; s_ecid=MCMID%7C10527002012958908521997717894336953425; affiliate_src_code=; __qca=P0-1709286564-1671460584261; fp_token_7c6a6574-f011-4c9a-abdd-9894a102ccef=LMgsJRcfyMg7FunMOmfpI6X7duB2Acn9POKakafZbqk=; QuantumMetricUserID=fd6f2bb6039af967626dfd35a3ba712a; lastCountry=AR; lastCurrency=ARS; lastFundsIn=WUPay; userIdentity=existingCustomer; user_txn_state=2:1671629693746; AK_TLS_Version=tls1.2; resolution_height=600; resolution_width=800; is_tablet=false; is_mobile=false; bm_sz=3915B5A5D1B077B9EA552AD262D7ACA8~YAAQROocuIkcpwaFAQAAEN8+OhIbBfX/ZuRMVMsFkrxQk8P/EtiQdY37UTDAsEVNImQlTb9R+uIJ9oTMANLIu7yqY3Bgqm0VRyX1qQUiU+Lz+0IR4t2crdncd9GWegIqR8ivjsi5gwflIZT5vajEZwsUt3SutzWb+0OYlxUfgieQIE11nm3KeLShhI2e5pp/YYfuMfQLiOyDYv+uXGNcZWBUysTDwR4xkm5AWI1+BAlVHgJS+Xk+of/m7ql73V0FSzQrv84GyHR6lfw1eMLlnZe4In0UCj8zVqi8S/xXHwJdGbAnoP8GKLI=~4534585~3618611; bm_mi=C0C04E6B2D47702580E60BA6C2E434B6~YAAQROocuAQdpwaFAQAAN+c+OhIXiiwqkGLPlrvp98ESiHE4r3elNmHvhLLnb5YVS+VPZj4py7DU0f5L/oISrj7eK4SUeaQj4IyrzHsTQtNNLjjeSuSJeYTcw6bd0j2jpLs2p6W1AowfcfVc0kfgCrlSGl9kFIsHm6U3EoQhxOvwX44wz4u9mZQLOBI7z1yqrSktllWOQgBtjiuaa8Wm1uWeN+scHTl5azDz3DvoG+HR8dNIAX7R5UoLpftrKie7kUmLWu+pgvPWwafUEDwbQF5FmcKwoQ7DxRwCMEsE4gEknef5SsFat7ot4h5oDPh5SYzURUPPWJkHiW/KUCLODUKMdOINB7/fVFNxr+I+yPvAwQSVxvVgmej1eQ+GZb5VqA==~1; wu_device_id=674079db-b547-5c9b-1682-44500d9232f5; visit-logged-amp=true; AMCVS_AACD3BC75245B4940A490D4D%40AdobeOrg=1; AMCV_AACD3BC75245B4940A490D4D%40AdobeOrg=1176715910%7CMCIDTS%7C19348%7CMCMID%7C10527002012958908521997717894336953425%7CMCAID%7CNONE%7CMCOPTOUT-1671726679s%7CNONE%7CMCAAMLH-1672324279%7C4%7CMCAAMB-1672324279%7Cj8Odv6LonN4r3an7LhD3WZrU1bUpAkFkkiY1ncBR96t2PTI%7CMCSYNCSOP%7C411-19353%7CvVersion%7C5.4.0; s_cc=true; buildVersion=R22-12.2.1; rxVisitor=1671719497208UN10K419S8V2JO2UBMR099VGPR6Q7CO0; visit-logged=true; lastFundsOut=BA; Mn-Tb-dg=1%7e1671719541%7e533bf9ad; SMLoginViewToggle=true; SM_Start_Cookie=true; abandonedCartToken=10befe9f167f8d8ce9b5c3fc7891d424; __ssid=9609348f42f15f82481811bbadb31bc; s_sq=%5B%5BB%5D%5D; sc_links=br%3Aen%3Awebsite%3Asend-money%3Asendmoneywupayreceipt%5E%5E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20; dtLatC=50; ak_bmsc=C95F920498C7B0AB374D6898E12DECCE~000000000000000000000000000000~YAAQTeocuOanlxKFAQAA6/1NOhLQTcgy01HyoOGhDjb1cGtUGBPF9BXt/4Ri/Y74DmAwj4WjaSaOhzhqHIo7sZukM4+GRcZZNlCFpllqN/JlN9Gnlf8vIw61STYFkTNL1AB7iurYk6ovsW8KAEIartBvUiMLvRqUrOrIfqruyBINnpHQ0w08Q2xM38TOncE+ThVl2m1HRndUVC5LRGi4X/zA/3STVUw2cLiGFPdQ9i/kilfd2xo7NQlqfLtg6YX0/eYyVlIk2siui+XLntQ3GZL+hAunxqiwfW5/mxhkaMXkhBmG89/k6ddN3WKREO56sL00lEKn9zzOkSCipSzh9Jueh3N3WqnE2M83eJYoQ2ibzZd0snSx2xJabcheiJONqc9hDH4MrToBaGA1zDhELBzNY1397wPHnSKVujt9Gd0bCPdK7+xVL5B/eq4DDMITOuqhfiH0UVfp0Gyddi+od866AEw75sfJ32svv+MQwNtPnv1hLmY8rK67eENnaUsaNTzGmCijXp2WxXo69Xa5N/Veenetv7WMTs5gHb91L0Iv7bWl6BmxQUA30eH6vR5g4Krui+T6880j; rxvt=1671722270246|1671719497209; dtPC=1$120465088_628h-vKCNVUSPCRHSDFHDPQUUCEIUWSGKKURQF-0e0; dtSa=true%7CKD%7C-1%7CPage%3A%20receipt%7C-%7C1671720540863%7C120465088_628%7Chttps%3A%2F%2Fwww.westernunion.com%2Fbr%2Fen%2Fsend-money%2Fapp%2Freceipt%7C%7C%7C%7C; _abck=39232BA13024CCE59B1FDDC26B4FDA09~0~YAAQTkostXbqpBaFAQAAAgOsOgniONF+CJWnf47raHTJMgV7lGPcRcvPKu5ZVPpjGE+znf3C7TQ68R7Hiu1ySFAm+E9ATm/8Q6kI5yOokVlZ5pvdgAkhjiSWG0RW4ekMQS55Ug+dOzY6507sw5WOE4rKd3tyPo2z9iVxLzS7KlBetm9gpiB4IQN5/+PgL5PnpzkHsaXAI51XahLOUvD590dLto+bNTJEN2NMdrqvHf6dMu9WdxCgSxpzndcB3N9RtJUgei6DQWBhE1JWs2MunypT2Wu1k8NawjmYUFfmFLnKD7pIaxMRXpkcZ75xni+JQN7ywMfHG3LnqgQALmWTK78O6I6krdRiNl6gqQqx/XYt7REw9atjX8jdljlU0mjkDb49uQWo6t0Qt1yKtS3XVcXum+8JRe/K2D7rsLECmA==~-1~-1~1671730187; utm_source=web-bookmark-or-typed; utm_medium=e-web-bookmark-or-typed; utm_campaign=organic-web-bookmark-or-typed; s_plt=2.75; s_pltp=br%3Aen%3Awebsite%3Ahome; channel_stack=home|send-money|home; amplitude_id_7d40b1ccdea38ded011affb5946a3ddd_project-leap-qawesternunion.com=eyJkZXZpY2VJZCI6Ijc0MjYzMzFjLTJiMjctNDRmMi1hMWQxLTc1NGNhNjcxZTU5OFIiLCJ1c2VySWQiOm51bGwsIm9wdE91dCI6ZmFsc2UsInNlc3Npb25JZCI6MTY3MTcyNjYzMDI1OSwibGFzdEV2ZW50VGltZSI6MTY3MTcyNjYzMDI2NywiZXZlbnRJZCI6NiwiaWRlbnRpZnlJZCI6NTQsInNlcXVlbmNlTnVtYmVyIjo2MH0=; s_NewRepeateVar=1671726632832-Repeat; s_NewRepeatprop=1671726632832-Repeat; AKA_A2=A; _dd_s=logs=1&id=05b3afdd-c486-425b-9958-763a7c0284ea&created=1671726626706&expire=1671727544855; RT="z=1&dm=www.westernunion.com&si=f615b927-54e4-4590-92a5-457baa9d3ec4&ss=lbzavci3&sl=1&tt=24j&bcn=%2F%2F17de4c18.akstat.io%2F"; amplitude_id_4aec879ef8bf1823486c4338537ec441westernunion.com=eyJkZXZpY2VJZCI6IjY3NDA3OWRiLWI1NDctNWM5Yi0xNjgyLTQ0NTAwZDkyMzJmNSIsInVzZXJJZCI6IjMxMzg2NzQ5NmRmNzc3ZWZlNDNjZDM1MjBiMmIzMmYxIiwib3B0T3V0IjpmYWxzZSwic2Vzc2lvbklkIjoxNjcxNzI2NjI5NDc3LCJsYXN0RXZlbnRUaW1lIjoxNjcxNzI2NjQ1NjkxLCJldmVudElkIjo5OCwiaWRlbnRpZnlJZCI6NTUsInNlcXVlbmNlTnVtYmVyIjoxNTN9; bm_sv=57F8875322ED198DB7CCB102608BE6BE~YAAQTkostaPqpBaFAQAA6EisOhKIRXQ9gOOcJuTIOYzyIkwVfCXaeGn62wOSaEZ/XrzbCLVARNonrIXHFXljPJe6DuBhxbnCwuJyemSvloSbSDANXhHOpqDDwZ4KB1Oj9dy4UG9iH19ZAJnMCdPtI0KvgiJcJ21jc//gBrGKNjqB5YpV9hEDca60fgk2vms5aqCT7mfsRYKBoAo2352lC/zV97eg/YyAe6SCx5esp1BMiPyIBQmrEppFpPFE43kqEaG5SXxPaQ==~1; A4kgk7nd_dc=%7B%22c%22%3A%20%22ZjZoeVAxS3lmRmVUVHRTWg%3D%3DU9AetJIw1qPUBsl6XnwOQm3CKriUFB8ccr8tIDIKVrZkX1nLbAkxXkzBDHmCf1q0tyeG0vFVltzj_TnUCkl35NUi-2hY0k_IKEDNOrH5pg%3D%3D%22%2C%20%22dc%22%3A%200%2C%20%22mf%22%3A%201%7D; dtCookie=v_4_srv_1_sn_1D3C8A791F3B62D3156A218D85A3781A_perc_100000_ol_0_mul_1_app-3A4f296d341a47bdba_0; BIGipServerwudispatcher.westernunion.com=\u0021yJynpnKs+uCrfto9v++QYZNsXLq+H6X/MgLIr1S9a0u1o4Tlk2T+8uH2Q/hOq34FmYIvyN8tDEFIgQ==' \
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
  -H 'x-nyupe9cs-a: GQnl-mmVYuyBDfYVT80GWGgsWbxb0hW33nGlnCpLxoMXjTnWPHfZCoH5yGVqBTUWKFgfHl6Bk9KTEUuztCoFT3_PWnB0xlYQLxDNokQAkQXdWl9Yx0arTcqOfK7Jq33ySQFNW6WwmEsL5ECLZ5_SNrKAVFZuFMGyjNp_sK_0bfzt54dtT-IKdVCy1pGqZzU7BComZQssAOKeYeHmCbQByE42D8dk4TYdJzIfOIIy48DRaWDFMR0Nz2Jk7iBVPrTbos8DANZrat7iPWt2HBNWC7kReZUq2RqaevajcYFxi9sx9NYAcQpWOBhHI1yjRotvlhHbwLEX-boeT6WO1JUlbxpQqkRv8a_fgUDMaU0PTmWoy4FZ83QpmjpAXos_5YL84KlKaSvvTiy_W401q2ipzB9NAyv0RaiqyKuif5OPp4Fk8l5osyKWZxpgfIma2Mgv_3cmkh23wdzaw1iPKI19Fgzkr8TjjfMoAtQehLVYVeHzc68ikwYi28MMgsC-02pWBkzPeEVHf95RlGdV0b0e-Uu3Sera4fc_JV74OuLxyd426jxJUakmoSo7cP7caTdsE0GFYuTAcddHstwS7PgU1euhHrXab9vr6VILlHRipJJRBALKVyW62bQWjhvaeoxzfH01Ljs6L4jL_3F8Jns-OeSBNG6vzLs7azdhwE8hv2XSjvXXYpUkW3O4dt_w9pEKZBW0cc7NRwuN1IJ7GiF0uoIxfaPlesOB21DmiTeRlJEx5xK9lqyvbOYtGJm5MZEkEaXJy_48ULVORSsMqDw14o7isM9W_6_Le1DKEnc8VUjaBhg-zQV6-BZewKYO3BpUzCu5MoxvyM1BTLKdFlM8SD2wbH3tM4gTfaYsquC0NXUFUmEU-SWgNZKVAqrCTKNHAeotI8EvOUVpqR7rSBKiSgoYXnsltGwapenX7M2KOLfR3SYZB7aL8lntsnv1EdEeV8H617BGtxiw8plIu78t1gabKvrGwbnxo2kHDgujVOXyM7tbHt_8Sj-O12xE4JGVt42H28qeTc-HtXQMvKuzJghMmzR3NbBpmOgksJ0D3QqCvbYPIIlbMp2dvjRhi52mfzUqRXN22P9h1R9vc5--LOlzVfcESsY-5txatHJwb4F9Bx_iixr_O8CkQA0tBhfb1Q_d6CKx9p_4KJeSfMZXatOS7L0OM6M8_yPXQ5OFsOqlUEkdW7tp_Ol827gcW1pkatGfkPBhrJad8zQi5JBXX0tpzBWPnDkTg1JGXCv4XpgM_l8my5P4tDpXB_QEY0JufsIaDK7A4U6e7mVB3NnlL6CwVPnAevg0_IK4T1gG7mqO3k369Lobcmra350S5OmPl6wuCC5NSVUjfS_bVYiQl59EOEE7PKNdhkgifBgo8AkvlFk36GQqyofesn1FKXOsLJOOMQJ-XIVoC256fVWvv_ijdXbsM3NcHj-FvCwVIpRMb794CSSfq6H7u_W-HJk2Dh2VqGgYU9O5CDtv_o5GgbgR0gmIqoKgx3kDD7NEgXcUahem-cVdVMAKPCCkzGUlMX7XjJgrRyeygiBQ67zGAMfNIQBoZBhx7E_oXpM17f88BEmAOox4_UBOE5yHjcM9ABfCxKSlUXXHmC9Ai4ckQiPOSsWNF7ezWodieN84YfP4_NWjMqBlvAxfislTLWPAQoOaBr75DTphof24KDRkKaw9mWi56BYqoBYxzBh5Q-hdZGgk4KcnFhzutMljRS2yXOCzcJldNFmDVrieKG1fI9Tqjmwm18aKiFSIO65_oHBJ5mdFQszkzvKj9wa77gMwhOKLWcoGPq1SPG_GWzupDk1UJPqFGyhsSLOyjCREqSnZh1eByOoliIXQ7XAIyVuNpo8oI7mnT6llbIEWM2Q_GZKdAO3G7XEjEWzbXRkZGEVmmjxUJlvhHjlPLhatqFsVXUAK-la08RLag-pnz_EacLAtCdU4kBDSMYnSybVbVy2BrxjTT-JKWLGmhAQHL7b0U8HYesLFlXIVbH-_CYygduWNq6E0lbF8mCKc1F0pqgiSYQv7mOtzJg8re03CwFZZ7ubk7tqOce8243JOm5uUbeowvQjXpKydz-0s_each77b4dltpKVG1yVr4KEaTMOBVTg8z3EItrM7ZJZAowB3zYeZJ2lQqXY3_7fFaASwX1bBrU_S6gau6UbuQlGp_R5lcXwbsHpvDpyNAwNqRoCtkpOlH4UC8vM4xX17JPi4ZAEImmknXssq8iNm3ELC0NXbSGeCFkyR-1h6WViIaijvpUwPLyiZhgMECkuL6FXiOS8wEuxpyN5EzulxUKRLIHGfZWAG1tsCC864yMF8GqS5eYJ4mwTNloZLCq9qwthgSpaYjo59tKeVbg_BhyzBJ2AYgOU3AzBIM0KDJ8JSXh2AtK8m_Sy2fVDse1iiAxC7W44_OgMnYz3IL4HOkYADOAYG6qpcONZ9nRemqCBArbCAYldcbonMkyBGikzjq57qJ4UHoJkLs0v0Vc42_vbZAW4oj7daQ0TdyfnFgbr4Zb00-V0MQAo_XQ1TGB26brJeiJ_ya9RBAr8X8WtXOsau1pb6xYxiWXveckrTGJZsj1DkmuWlWLICLt7E8OoO10T6K9rNkLLK1lA9_7pU1di6NILQy7MznSBPt1NtwL8VO_bC0r7TFY0hMKS-AqfsMswhtjpKELP7tqNP282AHI1qy5yGz_5lDWtIuK9YTG7-A_CSoaWzTLSFwBZZ53FDC7IJpy3XPaYljU8y6OHKB5cbU7HaNYAdKfp3L33c6b33xMYT2X8LDeTjwvOmHA0Y8HXB8PbDc79sId5Jf9nHVX9-ZarFqcWJDKbsLb4Hbz1yehRThCohinJaeN-8fD2pFWhLvyEwVui7TrHK_m-0lgCLHbK1xODiNAmYwuYGxWgah2XhREAyUnVfo5AqpgjkXZHmsB1wOamCoidUsJ0t57l2GrqFNyEPYpYlr-D82-52eHDsRUxoi0kfMhuT0Ly_12lwx3dgA4oTzQcA0nTQkXjzvRHo_Qs-6Q9FKjg93udqzJL8V6trtjrRTTPyy03BoF_1K1alODMFBOC9xAlHUAvwv5mgK6TW1002Z8hZaCXZB9t9D2HLcfzQrCOGZniN9xpmijWYJ1PXvNWuPOJcEYg80q4D60ClvSUs6OXENRELrRwkJOV6VRCMaoh2BRJL08yi8bACjufTlZyVXdnHc5jDGNiUgq15j72nVimX4pqNKaR-4cTtmPyc1Dlc5btrjz3GgYS0BodUr6cf0AIL8AbtOQ1S_TmDhloTvAss3LDSFSznxfpRAn1h8a2sdZ5BrC4vl4Bv1F8_F1ETT9G70bKFZnsd-qo8pNeSHUNzqR8o0xJH8sfS86io5SgFcLw7h943g2v68Zc0rfHgZ1f8ItbDH_HZkoDtzRMGAKM08bNSHD-n-P10lCPnbMYGkNB-SPIDxghSLSTXizaB8JFoqv3rCzCoEksYvrJIE8hfOrpZwPd7BHv4q_570XMNvXb9yOpEr8ndqRJg-GfqfKQN9F_LDoMgfhMcAUWYLm5voiw7A_JBV1nbN8Var-usVFYc48j1676d03JEKp7oqEnoDFSl1KVSBQqKViBkiXdQP8TZaBRZafBz74b8_v-rNatLgNRouaa_7oE4SBRbZrplkcU-cyQm5ip_-gDZpubn006bPUqy7XURP-QticnkyLRcTsNCWnQ3BaPb4RN7RMzokCmbRp9udEyWcT_KdQQ7sTJf6GOBHQ1GrFxYCnZPghY6vUUJpJ48BNu_eEFy91gBUWcSzURWPZkdZopZvfKBC_SJlUY4aezbT3UQQM_-kQV8BfPp8vZ4Te--2iSP_8wiPH77SgKqI1GoBFnLnfbKsEhy3OE1rOTJfw1rvmk2J7HlcUj_1dMUW6qx30deiNwnhrcvlmXmgJDGhxSTI2hQHwFeoIYbUFigbo70hv4ES6sCu_9FJbJvJD9EureykX0obuNJ9eHzIM2bCSF5hOrBYN22f9pUI5KdmfTJwYR1Od6RTTLugbjlmAobyPoZ6StuVbPeCOtZtuTFm4vfyG_44K2dSCz73QFAamP4haRCn8WRZSD4ftDDjF9qNG8oPRVsqMiqfWwsAd7tx1bS1A5oSUsWfFErUsQIOycp8kXQhaa2NGHSbFUjkbwF9LPzJVUZfElVdEIm4_theArPtmXtA4f0TKB8iRIyzJdalXSpn1XPV4O2rdkVIlRCqmCozrcl7j7pzTL5XFToxfD2EpH9DFlx81xUCEE3vaKatFPkk_NfxX84XZuhT2oliOFxQHyXUlgB2f-08A6AUcsvdwzIf5I' \
  -H 'x-nyupe9cs-b: eo2ta6' \
  -H 'x-nyupe9cs-c: AECPqzqFAQAAQUtOxQUP8QJYatDjYbJbcReoXyZuNuL0RecHqCmLWHIepbDt' \
  -H 'x-nyupe9cs-d: ABaChIjBDKGNgUGAQZIQhISi0eIAtJmBDgApi1hyHqWw7f_____JSxVAAFZBu14d5TPmLdNggU8xM5U' \
  -H 'x-nyupe9cs-f: A_I_rDqFAQAA2Szc9gEygFewY5faYWXxUvf92FbzuZZ_VQiMXtFv9_2_ucNLAbUsdyGucgBSwH8AAEB3AAAAAA==' \
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
