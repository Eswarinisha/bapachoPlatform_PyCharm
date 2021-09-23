*** Variables ***

#My Location

${MyLocations}        (//a[contains(@class,'list-group-item ')])[4]
${ManagerMyLocations}    (//a[contains(@class,'list-group-item ')])[2]


${btn_Submit_NL}    //input[contains(@type,'submit')]
${btn_Submit_EN}    //input[contains(@type,'submit')]
${btn_Submit_IT}    //input[contains(@value,'Salva')]
#${btn_Submit_CZ}    //button[contains(.,'Odeslat')]
${btn_Submit_CZ}    //input[contains(@type,'submit')]

#Add new location

${addnewlocation}    //i[contains(@class,'fas fa-plus-circle fa-2x')]
${newlocationtitle}    columns[title]
${newlocationaddress}    columns[address_1]
${newlocationZip}    columns[zip]
${newlocationcity}    columns[city]
${newlocationphone}    columns[phone]
${newlocationchooseproduct1}    (//button[contains(.,'Choose product')])[1]
${newlocationchooseproduct2}    (//button[contains(.,'Choose product')])[2]

#shop address
${newlocationshoptitle_EN}    localized[nl][title]
${newlocationshopaddress1_EN}    localized[nl][address_1]
${newlocationshopzip_EN}    localized[nl][zip]
${newlocationshopcity_EN}    localized[nl][city]
${newlocationshopregion_EN}    localized[nl][region]
${newlocationshopcountry_EN}    localized[nl][country]
${newlocationemailorders}    columns[emailOrders]
${newlocationphoneorders}    columns[phoneOrders]
${newlocationphone2}    columns[telephone_2]

${newlocationshoptitle_CZ}    localized[cz][title]
${newlocationshopaddress1_CZ}    localized[cz][address_1]
${newlocationshopzip_CZ}    localized[cz][zip]
${newlocationshopcity_CZ}    localized[cz][city]
${newlocationshopregion_CZ}    localized[cz][region]
${newlocationshopcountry_CZ}    localized[cz][country]

${newlocationshoptitle_RO}    localized[ro][title]
${newlocationshopaddress1_RO}    localized[ro][address_1]
${newlocationshopzip_RO}    localized[ro][zip]
${newlocationshopcity_RO}    localized[ro][city]
${newlocationshopregion_RO}    localized[ro][region]
${newlocationshopcountry_RO}    localized[ro][country]



${enablenotificationbyphone}    columns[notifications_phone]
${enablenotificationbyemail}    columns[notifications_email]

${saveShopAddress}    (//button[@type='submit'])[1]


${viewshop}    (//a[contains(@class,'btn btn-template')])[3]

${newlocationterms}    terms

#products
${products}    //a[contains(@data-smallstep,'2')]
${unchooseproduct1}    (//span[contains(@class,'switchery switchery-small')])[1]
${saveproducts}    (//button[@type='submit'])[2]

#Opening Hours
${OpeningHours}    //a[@data-smallstep='4']

${saveOpeninginformation}    (//button[@type='submit'])[3]

#Pickup
${pickup}    //a[@data-smallstep='5']
${setpickupactive}    acceptance_methods[pickup][active]
${pickuppreparationtime}    acceptance_methods[pickup][preparation_time]
${pickupfee}    acceptance_methods[pickup][fee]

# ${MondayPickupOpening}    pickupTimes[1][start]
# ${MondayPickupClosing}    pickupTimes[1][end]
# ${pickupbreaktime - from}    pickupBreakTimes[1][start]
# ${pickupbreaktime - To}    pickupBreakTimes[1][end]
${pickupapplytoall}    (//button[contains(@type,'button')])[2]

${setpickuponlinepayment}    id=acceptance-methods-pickup-payment-Online
${setpickupcashpayment}    id=acceptance-methods-pickup-payment-Cash
${setpickupcardpayment}    id=acceptance-methods-pickup-payment-Card
${savepickupinformation}    (//button[@type='submit'])[4]

#Delivery
${delivery}    //a[@data-smallstep='6']
${setdeliveryactive}    acceptance_methods[deliver][active]
${deliveryprice}    acceptance_methods[deliver][price]
${minimumprice_for_delivery}    acceptance_methods[deliver][minimum]
${deliveryrange}    acceptance-methods-deliver-range
${deliveryfreeabove}    acceptance_methods[deliver][free_above]
${deliverypreparationtime}    acceptance_methods[deliver][preparation_time]
${deliveryhandlingfee}    acceptance_methods[deliver][fee]

# ${Mondaydelivery - from}    deliveryTimes[1][start]
# ${Mondaydelivery - to}    deliveryTimes[1][end]
# ${deliverybreaktime - from}    deliveryBreakTimes[1][start]
# ${deliverybreaktime - to}    deliveryBreakTimes[1][end]

${deliveryapplytoall}    (//button[contains(@type,'button')])[3]

${setdeliveryonlinepayment}   id=acceptance-methods-deliver-payment-Online
${setdeliverycashpayment}    id=acceptance-methods-deliver-payment-Cash
${setdeliverycardpayment}    id=acceptance-methods-deliver-payment-Card
${savedeliveryinformation}     (//button[@type='submit'])[5]


#ShopPageInformation

${shoppageinformation}    //a[contains(@data-smallstep,'7')]
${locationtitle}    localized[nl][text]
${saveshoppageinformation}    (//button[@type='submit'])[6]
${websitecolumn}     columns[website]

${Mypage}    //a[contains(@class,'btn btn-default')]

${btn_submit}    //button[@type='submit'][contains(.,'Save')]
${btn_Save}   //button[@type='submit']
${btn_inputsubmit}    //input[@type='submit']
