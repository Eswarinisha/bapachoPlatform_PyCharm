*** Variables ***

${Language}     EN

#URLs
#Multishop Homepage
${bapachoDev}    https://dev.bapacho.com/
${Multishop_URL_EN}    https://multishop.bapacho.com/nl

#Stagings URL
#${Bapacho_URL_EN}     https://bapacho:bapacho@multishop.bapacho.com/
${Multishop_URL_NL}     https://staging.bapacho.nl/en
${Multishop_URL_IT}     https://bapacho:bapacho@staging.bapacho.it/en
${Multishop_URL_CZ}     https://bapacho:bapacho@staging.bapacho.cz/en
${Multishop_URL_GR}     https://bapacho:bapacho@staging.bapacho.gr/en
${Multishop_URL_DE}     https://bapacho:bapacho@staging.bapacho.de/en
${Multishop_URL_ES}     https://bapacho:bapacho@staging.bapacho.es/en
${Multishop_URL_RO}     https://bapacho:bapacho@staging.bapacho.ro/en
${Multishop_URL_PT}     https://bapacho:bapacho@staging.bapacho.pt/en
${Multishop_URL_PL}     https://bapacho:bapacho@staging.bapacho.pl/en

#Merchant Dashboard
${Multishop_MerchantDashboard_CZ}    (//a[@href='https://staging.bapacho.cz/cz/my-store/dashboard/'])[1]
${Multishop_MerchantDashboard_RO}    (//a[@href='https://staging.bapacho.ro/ro/my-store/dashboard/'])[1]


#CMS URL
${CMS_URL_EN}    https://bapacho:bapacho@multishop.bapacho.com/admin
${CMS_URL_NL}    https://bapacho:bapacho@staging.bapacho.nl/admin
${CMS_URL_IT}    https://bapacho:bapacho@staging.bapacho.it/admin
${CMS_URL_CZ}    https://bapacho:bapacho@staging.bapacho.cz/admin
${CMS_URL_GR}     https://bapacho:bapacho@staging.bapacho.gr/admin
${CMS_URL_DE}     https://bapacho:bapacho@staging.bapacho.de/admin
${CMS_URL_ES}     https://bapacho:bapacho@staging.bapacho.es/admin
${CMS_URL_RO}     https://bapacho:bapacho@staging.bapacho.ro/admin
${CMS_URL_PT}     https://bapacho:bapacho@staging.bapacho.pt/admin
${CMS_URL_PL}     https://bapacho:bapacho@staging.bapacho.pl/admin

#Sales Portal
${SalePortal_EN}    https://bapacho:bapacho@sales.bapacho.com/nl/
${SalePortal_NL}    https://bapacho:bapacho@sales.bapacho.nl/
${SalePortal_IT}     https://bapacho:bapacho@sales.bapacho.it
${SalePortal_CZ}    https://bapacho:bapacho@sales.bapacho..cz/
${SalePortal_GR}     https://bapacho:bapacho@sales.bapacho.gr/
${SalePortal_DE}     https://bapacho:bapacho@sales.bapacho.de/
${SalePortal_ES}     https://bapacho:bapacho@sales.bapacho.es/
${SalePortal_RO}     https://bapacho:bapacho@sales.bapacho.ro/
${SalePortal_PT}     https://bapacho:bapacho@sales.bapacho.pt/
${SalePortal_PL}     https://bapacho:bapacho@sales.bapacho.pl/


#LandingpageURL
${BapachoLangingpage_URL_EN}    https://staging.bapacho.com/nl/city/haarlem
${Subscribetonewsletter}    //input[@class='form-control']
${Signup}    (//button[contains(@type,'button')])[2]
${Ordernow}    (//a[contains(.,'Order now')])[3]
${OK_Button}    //button[contains(.,'OK')]

#MERCHANT ONBOARDING

#Merchant activation link in Mail

${customerwelcomemail_EN}    //a[contains(.,'https://multishop.bapacho.com/activateAccount.php?gu')]


${customerwelcomemailchimp_EN}    //a[contains(.,'Wanna see more?')]

${customerforgotpassword_EN}    //a[contains(.,'https://multishop.bapacho.com/nl/reset-password/customer')]

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

#Step 1
${LoginasMerchant}    (//a[contains(@role,'button')])[5]
#${LoginasMerchant_EN}     (//a[contains(.,'Login as Merchant')])[1]


#Step 2

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
${OpeneninghoursEndtime}    operationTimes[1][end]
${OpeninghoursBreakStartingtime}     operationBreakTimes[1][start]
${OpeninghoursBreakEndtime}     operationBreakTimes[1][end]
${Openinghoursapplytoall}      (//button[contains(@type,'button')])[1]

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

#MERCHANT PORTAL

#Dashboard

${Onlinepaymentsettings}    (//a[contains(@class,'list-group-item ')])[7]
${connect to online payment}    //a[contains(@class,'btn btn-info btn-lg')]
${printallorders}    //a[contains(@class,'btn btn-info btn-block wrap')]
${order/product_details}    //a[contains(@class,'btn btn-default btn-block wrap')]


#My Categories
${MyproductCategories}    (//a[contains(@class,'list-group-item ')])[2]
${AddCategory}    //div[contains(@onclick,'showCategoryModal(null)')]

${btn_SubmitCategory}    //button[contains(@class,'btn btn-block btn-info-dark')]
${btn_SubmitCategory_NL}    //button[contains(.,'Submit')]
${btn_SubmitCategory_EN}    //button[contains(.,'Submit')]
${btn_SubmitCategory_IT}    //button[contains(.,'Invia')]
${btn_SubmitCategory_CZ}    //button[contains(.,'Odeslat')]
${btn_SubmitCategory_DE}    //button[contains(.,'Senden')]


${DeleteCategory}    //div[contains(@onclick,'assertDeleteCategory(this)')]
${DeleteCategory_failing}    //div[contains(@data-toggle,'tooltip')]
${delete}    (//button[contains(@type,'button')])[2]

${CopyfromEnglish}    //span[contains(@class,'btn-icon bp-strong bp-default-text-color')]

#My Products
${MyProduct}    (//a[contains(@class,'list-group-item ')])[3]
${Addproduct}   (//a[contains(@class,'btn btn-default')])[2]
${Addzeelandiaproduct}    (//a[contains(@class,'btn btn-default')])[1]
${Editzeelandiaproduct}    (//a[contains(@class,'btn btn-xs btn-info')])[1]
${options_category}      options_category
${Button_Add}       //input[@type='button'][contains(@id,'category')]
${SingleChoice_Button_AddOption}     //a[contains(.,'button.AddOption')]
${MultiChoice_Button_AddOption}     (//a[@type='button'][contains(.,'button.AddOption')])[2]
${SingleChoice_ProductOption}    (//input[contains(@type,'text')])[6]
${SingleChoice_ProductOptionprize}  (//input[contains(@type,'number')])[2]
${Button_AddOption}    (//input[contains(@type,'button')])[2]
${RadioButton_MultipleChoice}   options_category_multiple_choice

${choosecategoryname}    category_guid
${feature product}    name=columns[featured]
${price}    name=columns[price]
${productVAT}    columns[vat_id]
${productAvailablefrom}    name=columns[availableFrom]
${productionquantity}    name=columns[daily_production]
${productpreparationtime}    columns[preparation_time]
${productlocation}    productLocations[]
${chooseproductlocation}    name=columns[active]

${ProductTitle_EN}     name=columns_local[nl][title]
${ProductTitle_IT}     name=columns_local[it][title]
${ProductTitle_NL}     name=columns_local[en][title]
${ProductTitle_CZ}     name=columns_local[cz][title]
${ProductTitle_GR}     name=columns_local[gr][title]
${ProductTitle_DE}     name=columns_local[de][title]
${ProductTitle_ES}     name=columns_local[es][title]
${ProductTitle_RO}     name=columns_local[ro][title]
${ProductTitle_PT}     name=columns_local[pt][title]
${Product_Subtitle_NL}   name=columns_local[en][subtitle]
${Product_Subtitle_IT}   name=columns_local[it][subtitle]
${Product_Subtitle_EN}   columns_local[nl][subtitle]
${Product_Subtitle_CZ}   name=columns_local[cz][subtitle]
${Product_Subtitle_GR}   name=columns_local[gr][subtitle]
${Product_Subtitle_DE}   name=columns_local[de][subtitle]
${Product_Subtitle_ES}   name=columns_local[es][subtitle]
${Product_Subtitle_RO}   name=columns_local[ro][subtitle]
${Product_Subtitle_PT}   name=columns_local[pt][subtitle]
${Product_Subtitle_PL}   name=columns_local[pl][subtitle]

${Product_Description_NL}     name=columns_local[en][text]
${Product_Description_IT}     name=columns_local[it][text]
${Product_Description_EN}     columns_local[nl][text]
${Product_Description_CZ}     name=columns_local[cz][text]
${Product_Description_GR}     name=columns_local[gr][text]
${Product_Description_DE}     name=columns_local[de][text]
${Product_Description_ES}     name=columns_local[es][text]
${Product_Description_RO}     name=columns_local[ro][text]
${Product_Description_PT}     name=columns_local[pt][text]
${Product_Description_PL}     name=columns_local[pl][text]

${Product_Ingredients_NL}  name=columns_local[en][ingredientsText]
${Product_Ingredients_IT}  name=columns_local[it][ingredientsText]
${Product_Ingredients_EN}  columns_local[nl][ingredientsText]
${Product_Ingredients_CZ}  name=columns_local[cz][ingredientsText]
${Product_Ingredients_GR}  name=columns_local[gr][ingredientsText]
${Product_Ingredients_DE}  name=columns_local[de][ingredientsText]
${Product_Ingredients_ES}  name=columns_local[es][ingredientsText]
${Product_Ingredients_RO}  name=columns_local[ro][ingredientsText]
${Product_Ingredients_PT}  name=columns_local[pt][ingredientsText]
${Product_Ingredients_PL}  name=columns_local[pl][ingredientsText]

${Product_unit_NL}  name=columns_local[en][unit]
${Product_unit_IT}  name=columns_local[it][unit]
${Product_unit_EN}  columns_local[nl][unit]
${Product_unit_CZ}  name=columns_local[cz][unit]
${Product_unit_GR}  name=columns_local[gr][unit]
${Product_unit_DE}  name=columns_local[de][unit]
${Product_unit_ES}  name=columns_local[es][unit]
${Product_unit_RO}  name=columns_local[ro][unit]
${Product_unit_PT}  name=columns_local[pt][unit]
${Product_unit_PL}  name=columns_local[pl][unit]

${Yes_NL}    Yes

${Deleteproduct}    (//button[@onclick='deleteProduct(this);'])[2]
${yes_delete}    //button[contains(@class,'swal2-confirm swal2-styled')]


${setzeelandiaproduct}    (//span[contains(@class,'switchery switchery-small')])[1]
${inputprice_zeelandiaproduct}    (//input[contains(@type,'number')])[1]

${editzeelandiaproducttitle_EN}    columns_local[nl][title]
${editzeelandiaproductsubtitle_EN}    columns_local[nl][subtitle]

${editzeelandiaproducttitle_CZ}    columns_local[cz][title]
${editzeelandiaproductsubtitle_CZ}    columns_local[cz][subtitle]

${editzeelandiaproducttitle_RO}    columns_local[ro][title]
${editzeelandiaproductsubtitle_RO}    columns_local[ro][subtitle]


#My Location

${MyLocations}        (//a[contains(@class,'list-group-item ')])[4]
${ManagerMyLocations}    (//a[contains(@class,'list-group-item ')])[2]


${btn_Submit_NL}    //input[contains(@type,'submit')]
${btn_Submit_EN}    //input[contains(@type,'submit')]
${btn_Submit_IT}    //input[contains(@value,'Salva')]
${btn_Submit_CZ}    //button[contains(.,'Odeslat')]

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

${bakeryproductspage}    //div[contains(@data-target,'products')]

${bakerypageinformation}    //div[contains(@data-target,'fullinfo')]
${viewpickuphours}    (//a[contains(@role,'tab')])[2]
${viewdeliveryhours}    (//a[contains(@role,'tab')])[3]

${Mypage}    //a[contains(@class,'btn btn-default')]

${btn_submit}    //button[@type='submit'][contains(.,'Save')]
${btn_Save}   //button[@type='submit']
${btn_inputsubmit}    //input[@type='submit']

#My Settings
${Settings}    (//a[contains(@class,'list-group-item ')])[6]

#My Orders
${MyOrders}    (//a[contains(@class,'list-group-item ')])[8]

${Acceptorder}    (//a[contains(@role,'button')])[4]
${viewOrder}    (//a[@class='btn btn-template-inverse btn-lg btn-lg-wide'])[1]
${Declineorder}    (//a[contains(@role,'button')])[5]
${orderstatus}    orderStatus
${orderstatuscomment}    status_comment
${OpenOrder}   (//span[contains(.,'new')])[1]
${CancelOrder}    cancelled
${Preparing}    preparing
${Readyfordelivery}    readyForDelivery
${Readyforpickup}    readyForPickup
${Delivered}    Delivered
${Pickedup}    pickedUp
${LabelRefund}    refunded
${RefundStatus}       refunded
${RefundOrderButton}     refundOrderButton
${Refundamount}     partial_price
${refund_comment}    refund_comment
${Partialrefundcomment}    refund_comment
${proceedbutton}    //button[contains(@type,'submit')]
${Input REFUND}    //input[contains(@class,'swal2-input')]
${RefundButton}    //button[@type='button'][contains(.,'Refund')]


${paymentstatus}    lastStatus
${PaidStatus}    paid
${btn_OrderStatusSubmit}    (//button[contains(.,'Submit')])[1]
${btn_PaymentStatusSubmit}    //button[@onclick='setOrderLastStatus(this);']
${Cancellation_StatusComment}    Automated order cancellation
${OrderFullfilment_StatusComment}    Automated Order fulfil

${saveorderstatus}    //button[contains(@onclick,'setOrderStatus(this);')]
${savepaymentstatus}    //button[contains(@onclick,'setOrderLastStatus(this);')]

#Team
${Myteam}    (//a[contains(@class,'list-group-item ')])[6]
${Addmanager}    //div[contains(@class,'btn btn-default')]
${managerfirstname}    firstname
${managerlastname}    lastname
${manageremail}    email
${location1checkbox}    (//input[contains(@type,'checkbox')])[1]
${location2checkbox}    (//input[contains(@type,'checkbox')])[2]
${btn_SaveManager}     //button[contains(@class,'btn btn-block btn-template')]

#Plan

${viewplans}    (//a[contains(@class,'btn btn-template')])[3]
${chooseplan}    //div[contains(@onclick,'supplier.showPlanCheckout(this)')]
${Accept T&C}    acceptTermsAndConditions
${checkout}    //button[contains(.,'Checkout')]

#AccountSettings
${accountsettings}    //a[contains(.,'Accoutn settings')]
${accountoptions}    //a[contains(.,'buttons.AccountOptions')]


#My Page
#${MyPage}        (//a[contains(@class,'list-group-item')])[9]
${ShowmoreInfo}    (//a[contains(@role,'button')])[2]


#Account option
${AccountOption}    //a[contains(@class,'list-group-item active')]
