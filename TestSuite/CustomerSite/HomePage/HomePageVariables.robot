*** Variables ***

${BapachoLOGO}    //img[@src='/img/original/Bapacho-dark-logo.svg']
${carticon}    //span[contains(@class,'icon-basket')]

${homelocationtitle}    //input[@id='homeLocationTitle']
${getcurrentlocationicon}    //i[contains(@class,'fas fa-lg fa-map-marker-alt')]
${serachusinglocation}    //a[contains(.,'Search')]

${Appicon_playstore}    (//a[contains(@target,'_blank')])[2]
${Appicon_Appstore}    (//a[contains(@target,'_blank')])[1]

${btn_Bakeries_EN}    //a[contains(text(),'Bakeries')]

${btn_Bakeries_IT}    //a[contains(text(),'Bakeries')]
${btn_Bakeries_NL}    //a[contains(.,'Winkels')]
#${btn_Bakeries_CZ}    //a[@data-slug='pekarstvi']
${btn_Bakeries_CZ}    //a[contains(.,'Shops')]
${btn_Bakeries_GR}    //a[@data-slug='bakeries']
${btn_Bakeries_DE}    //a[contains(@data-slug,'backereien')]
${btn_Bakeries_ES}    //a[@data-slug='panaderias']
${btn_Bakeries_RO}    //a[contains(.,'Magazine')]
${btn_Bakeries_PT}    //a[contains(.,'Lojas')]
#${btn_Bakeries_PL}

${favhearticon}    //i[@class='far fa-heart']
${guestclickfav}    //div[contains(@class,'favIcon')]
${viewfavorites}    (//i[contains(@class,'far fa-heart text-muted')])[1]
${search_button}    //button[@class='btn btn-template trigger-filter']
${btn_MyAccount}    (//span[contains(@class,'hidden-xs')])[1]

${Open your shop}    (//a[@role='button'])[3]
${company}    company
${name}    name
${phone}    phone
${email}    //input[contains(@name,'email')]
${comments}    comments

${Btn_AppStore}     //img[@src='/img/app-store.svg']
${Btn_PlayStore}     //img[@src='/img/google-play.svg']




#Footer

${AboutUs}  //a[contains(.,'About us')]
${T&C}  //a[contains(.,'Terms and conditions')]
${PrivacyStatement}     //a[contains(.,'Privacy statement')]
${supportquestion}    //textarea[contains(@name,'comments')]
${submitsupportform}    //button[contains(@class,'btn btn-block btn-info-dark')]
${loginmerchantfooter}  //a[@class='btn btn-template canwrap'][contains(.,'Login as Merchant')]
${FAQ}    //a[contains(text(),'FAQ')]
${Supportfooter}    //a[contains(.,'Support')]
${support-fill in name}    //input[contains(@name,'name')]
${support-fill in phone}    //input[contains(@name,'phone')]
${support-fill in email}    //input[contains(@name,'email')]
${support-fill in comments}    //textarea[contains(@name,'comments')]

#Blog

${blog}    //a[contains(.,'Blog')]
${click a blogpost}    (//img[contains(@class,'media-object')])[1]
${click a blogpost2}    (//h4[contains(@class,'media-heading')])[2]

${bapachofb}    (//a[contains(@class,'socialLink')])[1]
${bapachoinstagram}    (//a[contains(@class,'socialLink')])[2]


