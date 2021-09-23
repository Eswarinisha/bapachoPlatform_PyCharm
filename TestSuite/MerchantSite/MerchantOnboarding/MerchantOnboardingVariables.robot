*** Variables ***

#MERCHANT ONBOARDING

#Merchant activation link in Mail

${activationmail_NL}      //a[contains(.,'{activeAccountURL}')]
${activationmail_EN}     //a[contains(.,'https://multishop.bapacho.com/activateShop.php?gu')]
${activationmail_IT}     //a[contains(.,'https://staging.bapacho.it/activateShop.php?')]
${activationmail_CZ}     //a[contains(.,'https://staging.bapacho.cz/activateShop.php?')]
${activationmail_GR}    //a[contains(.,'https://staging.bapacho.gr/activateShop.php?')]
${activationmail_DE}     //a[contains(.,'https://staging.bapacho.de/activateShop.php?')]
${activationmail_ES}     //a[contains(.,'https://staging.bapacho.es/activateShop.php?')]
${activationmail_RO}      //a[contains(.,'https://staging.bapacho.ro/activateShop.php?')]
${activationmail_PT}      //a[contains(.,'https://staging.bapacho.pt/activateShop.php?')]
${activationmail_PL}     //a[contains(.,'https://staging.bapacho.pl/activateShop.php?')]

${activationmailManager_CZ}    //a[contains(.,'https://staging.bapacho.cz/activateManager.php?gu')]
${activationmailManager_RO}    //a[contains(.,'https://staging.bapacho.ro/activateManager.php?gu')]

${Onboardingsavebutton}    //button[contains(@type,'button')]

${SaveOnboardingStep}   //button[contains(@data-orig,'Save')]

#Step 1
${LoginasMerchant}    (//a[contains(@role,'button')])[5]
#${LoginasMerchant_EN}     (//a[contains(.,'Login as Merchant')])[1]
${newpassword}      password
${newpasswordcheck}     password_chk
${T&C_MerchantOnboarding}       //a[contains(.,'Terms and Conditions')]
${Accept T&C}       acceptTermsAndConditions


#Step 2

${newlocationaddress}       columns[address_1]
${newlocationZip}   columns[zip]
${newlocationcity}  columns[city]
${newlocationphone} columns[phone]
${label_COC}      columns[tax_id]
${label_VAT}    vat_id


${btn_MerchantTitle_NL}            name=columns_local[en][title]
${btn_MerchantAddress_NL}            name=locationColumns_local[en][address]
${btn_MerchantAddressline2_NL}            name=locationColumns_local[en][addressLine2]
${btn_MerchantPostal_NL}            name=locationColumns_local[en][postal]
${btn_MerchantCity_NL}           name=locationColumns_local[en][city]
${btn_MerchantEmail_NL}            name=columns[emailOrders]
${btn_MerchantPhone_NL}            name=columns[phoneOrders]
${btn_MerchantPhone2_NL}            name=columns[phone]

${btn_MerchantTitle_EN}            name=columns_local[nl][title]
${btn_MerchantAddress_EN}            name=locationColumns_local[nl][address]
${btn_MerchantAddressline2_EN}            name=locationColumns_local[nl][addressLine2]
${btn_MerchantPostal_EN}            locationColumns_local[nl][postal]
${btn_MerchantCity_EN}           name=locationColumns_local[nl][city]
${btn_MerchantEmail_EN}            name=columns[emailOrders]
${btn_MerchantPhone_EN}            name=columns[phoneOrders]
${btn_MerchantPhone2_EN}            name=columns[phone]

${btn_MerchantTitle_IT}            name=columns_local[it][title]
${btn_MerchantAddress_IT}            name=locationColumns_local[it][address]
${btn_MerchantAddressline2_IT}            name=locationColumns_local[it][addressLine2]
${btn_MerchantPostal_IT}            locationColumns_local[it][postal]
${btn_MerchantCity_IT}           name=locationColumns_local[it][city]
${btn_MerchantEmail_IT}            name=columns[emailOrders]
${btn_MerchantPhone_IT}            name=columns[phoneOrders]
${btn_MerchantPhone2_IT}            name=columns[phone]

${btn_MerchantTitle_CZ}            name=columns_local[cz][title]
${btn_MerchantAddress_CZ}            name=locationColumns_local[cz][address]
${btn_MerchantAddressline2_CZ}            name=locationColumns_local[cz][addressLine2]
${btn_MerchantPostal_CZ}            locationColumns_local[cz][postal]
${btn_MerchantCity_CZ}           name=locationColumns_local[cz][city]
${btn_MerchantEmail_CZ}            name=columns[emailOrders]
${btn_MerchantPhone_CZ}            name=columns[phoneOrders]
${btn_MerchantPhone2_CZ}            name=columns[phone]

${btn_MerchantTitle_GR}            name=columns_local[gr][title]
${btn_MerchantAddress_GR}            name=locationColumns_local[gr][address]
${btn_MerchantAddressline2_GR}            name=locationColumns_local[gr][addressLine2]
${btn_MerchantPostal_GR}            locationColumns_local[gr][postal]
${btn_MerchantCity_GR}           name=locationColumns_local[gr][city]
${btn_MerchantEmail_GR}            name=columns[emailOrders]
${btn_MerchantPhone_GR}            name=columns[phoneOrders]
${btn_MerchantPhone2_GR}            name=columns[phone]

${btn_MerchantTitle_DE}            name=columns_local[de][title]
${btn_MerchantAddress_DE}            name=locationColumns_local[de][address]
${btn_MerchantAddressline2_DE}            name=locationColumns_local[de][addressLine2]
${btn_MerchantPostal_DE}            locationColumns_local[de][postal]
${btn_MerchantCity_DE}           name=locationColumns_local[de][city]
${btn_MerchantEmail_DE}            name=columns[emailOrders]
${btn_MerchantPhone_DE}            name=columns[phoneOrders]
${btn_MerchantPhone2_DE}            name=columns[phone]

${btn_MerchantTitle_ES}            name=columns_local[es][title]
${btn_MerchantAddress_ES}            name=locationColumns_local[es][address]
${btn_MerchantAddressline2_ES}            name=locationColumns_local[es][addressLine2]
${btn_MerchantPostal_ES}            locationColumns_local[es][postal]
${btn_MerchantCity_ES}           name=locationColumns_local[es][city]
${btn_MerchantEmail_ES}            name=columns[emailOrders]
${btn_MerchantPhone_ES}            name=columns[phoneOrders]
${btn_MerchantPhone2_ES}            name=columns[phone]

${btn_MerchantTitle_RO}            name=columns_local[ro][title]
${btn_MerchantAddress_RO}            name=locationColumns_local[ro][address]
${btn_MerchantAddressline2_RO}            name=locationColumns_local[ro][addressLine2]
${btn_MerchantPostal_RO}            locationColumns_local[ro][postal]
${btn_MerchantCity_RO}           name=locationColumns_local[ro][city]
${btn_MerchantEmail_RO}            name=columns[emailOrders]
${btn_MerchantPhone_RO}            name=columns[phoneOrders]
${btn_MerchantPhone2_RO}            name=columns[phone]

${btn_MerchantTitle_PT}            name=columns_local[pt][title]
${btn_MerchantAddress_PT}             name=locationColumns_local[pt][address]
${btn_MerchantAddressline2_PT}           name=locationColumns_local[pt][addressLine2]
${btn_MerchantPostal_PT}             locationColumns_local[pt][postal]
${btn_MerchantCity_PT}            name=locationColumns_local[pt][city]
${btn_MerchantEmail_PT}            name=columns[emailOrders]
${btn_MerchantPhone_PT}           name=columns[phoneOrders]
${btn_MerchantPhone2_PT}            name=columns[phone]

${btn_MerchantTitle_PL}            name=columns_local[pl][title]
${btn_MerchantAddress_PL}             name=locationColumns_local[pl][address]
${btn_MerchantAddressline2_PL}           name=locationColumns_local[pl][addressLine2]
${btn_MerchantPostal_PL}             locationColumns_local[pl][postal]
${btn_MerchantCity_PL}            name=locationColumns_local[pl][city]
${btn_MerchantEmail_PL}            name=columns[emailOrders]
${btn_MerchantPhone_PL}           name=columns[phoneOrders]
${btn_MerchantPhone2_PL}            name=columns[phone]


${btn_Applytoall}    (//button[contains(@onclick,'applyTimesToAll(this);')])[1]

#Step 3
${btn_Location_NL}     locationColumns_local[en][text]
${btn_Location_EN}     locationColumns_local[nl][text]
${btn_Location_IT}     locationColumns_local[it][text]
${btn_Location_CZ}     locationColumns_local[cz][text]
${btn_Location_GR}     locationColumns_local[gr][text]
${btn_Location_DE}     locationColumns_local[de][text]
${btn_Location_ES}     locationColumns_local[es][text]
${btn_Location_RO}     locationColumns_local[ro][text]
${btn_Location_PT}     locationColumns_local[pt][text]
${btn_Location_PL}     locationColumns_local[pl][text]


${AddOpeninghoursLunchbreak}    (//span[contains(.,'buttons.addLunchBreak')])[1]

${OpeninghoursSetActive}    operationTimes_day_active[1]
${OpeninghoursStartingtime}     operationTimes[1][start]
${OpeninghoursEndtime}    operationTimes[1][end]
${OpeninghoursBreakStartingtime}     operationBreakTimes[1][start]
${OpeninghoursBreakEndtime}     operationBreakTimes[1][end]
${Openinghoursapplytoall}      (//button[contains(.,'Apply to all')])[1]

${AddPickupLunchbreak}    (//a[contains(.,'buttons.addLunchBreak')])[8]

${PickuphoursSetActive}    pickupTimes_day_active[1]
${PickuphoursStartingtime}    pickupTimes[1][start]
${PickuphoursEndtime}    pickupTimes[1][end]
${PickuphoursBreakStartingtime}    pickupBreakTimes[1][start]
${PickuphoursBreakEndtime}    pickupBreakTimes[1][end]

${AddDeliveryLunchbreak}    (//a[contains(.,'buttons.addLunchBreak')])[15]

${DeliveryhoursSetActive}    deliveryTimes_day_active[1]
${DeliveryhoursStartingtime}    deliveryTimes[1][start]
${DeliveryhoursEndtime}    deliveryTimes[1][end]
${DeliveryhoursBreakStartingtime}    deliveryBreakTimes[1][start]
${DeliveryhoursBreakEndtime}    deliveryBreakTimes[1][end]

${CopyfromOpeningHours_pickup}     (//button[contains(.,'buttons.CopyFromOperationHours')])[1]
${CopyfromOpeningHours_delivery}    (//button[contains(.,'buttons.CopyFromOperationHours')])[2]


#Step 4
${category_EN}       7
${category_NL}    Snacks
${category_IT}    Pane
${category_CZ}    12

${Chooseproduct1_EN}     (//button[contains(.,'Choose product')])[6]
${Chooseproduct1_NL}     (//button[contains(.,'Choose product')])[4]
${Chooseproduct1_IT}    (//button[@onclick='setProductActive(this);'])[8]
${Chooseproduct1_CZ}    (//button[contains(@type,'button')])[21]

${Chooseproduct2_EN}   (//button[contains(.,'Choose product')])[9]
${Chooseproduct2_NL}   (//button[contains(.,'Choose product')])[6]
${Chooseproduct2_IT}    (//button[@onclick='setProductActive(this);'])[9]
${Chooseproduct2_CZ}   (//button[contains(@type,'button')])[22]

#Step 5
${btn_Applytoalldeliverytime}    (//button[contains(@onclick,'applyTimesToAll(this);')])[8]

#Step 6
${btn_Skip}    //button[contains(@onclick,'skipPaymentOnboarding()')]

#Merchant Onboarding button
${Step1_Nextbutton}    (//button[contains(@class,'btn btn-success btn-lg showLoading')])[1]
${Step2_Nextbutton}    (//button[contains(@class,'btn btn-success btn-lg showLoading')])[2]
${Step3_Nextbutton}    (//button[contains(@class,'btn btn-success btn-lg showLoading')])[3]
${Step4_Nextbutton}    (//button[contains(@class,'btn btn-success btn-lg showLoading')])[4]
${Step5_Nextbutton}    (//button[contains(@class,'btn btn-success btn-lg showLoading')])[5]
${Step6_Nextbutton}    (//button[contains(@class,'btn btn-success btn-lg showLoading')])[6]
${Step7_Nextbutton}    (//button[contains(@class,'btn btn-success btn-lg showLoading')])[7]
${Step8_Nextbutton}    (//button[contains(@class,'btn btn-success btn-lg showLoading')])[8]
${Step9_Nextbutton}    (//button[contains(@class,'btn btn-success btn-lg showLoading')])[9]
${Step10_Nextbutton}    (//button[contains(@class,'btn btn-success btn-lg showLoading')])[10]


#GMAIL
${inputgmailid}    identifierId
${gmailid_submit}    //span[contains(.,'Volgende')]
${inputgmailpassword}    //input[contains(@type,'password')]
${gmailpwd_submit}    //span[contains(.,'Volgende')]


