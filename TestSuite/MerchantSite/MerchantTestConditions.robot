*** Variables ***

${Language}     EN
${Chrome}   chrome

@{gmailcredentials}     nisha@inqadigital.com   nisha@inqa

${scrollup}      window.scrollTo(document.body.scrollHeight,0)
${scrolldown}    window.scrollTo(0, document.body.scrollHeight)

#URLs
#Multishop Homepage
${bapachoDev}    https://dev.bapacho.com/
${Multishop_URL_EN}    https://multishop.bapacho.com/nl

#Stagings URL
${Bapacho_URL_EN}     https://bapacho:bapacho@multishop.bapacho.com/
${Multishop_URL_NL}     https://staging.bapacho.nl/en
${Multishop_URL_IT}     https://bapacho:bapacho@staging.bapacho.it/en
${Multishop_URL_CZ}     https://bapacho:bapacho@staging.bapacho.cz/
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


${LoginasMerchant}  (//a[@role='button'][contains(.,'Login as Merchant')])[1]
${LoginSubmit_Button}    //button[@class='btn btn-template']


#Merchant without Online payment
${MerchantName without payment}    Nisha's Automated Bakery006
@{Merchant_Without_OnlinePayment_Credentials}     automatedmerchant006@yopmail.com    bapachomerchantpwd    +31612809787

#MultishopMerchant details

@{MultishopMerchantCredentials}    nisha+candybakery@inqadigital.com     bapachomerchantpwd    31612809787    Netherlands
@{MultishopLocation1Credentials}      nisha+candybakery+loc1@inqadigital.com      bapachomanagerpwd    31612809787    54,Justine de Gouwerhof    2011GP    Haarlem Netherlands
${MultishopMerchantName}    Candy Bakery
${MultishopMerchantLoc1}    Candy Bakery+ Loc1

*** Keywords ***
Open_MultishopHomePage_Merchant
        Open Browser   ${Multishop_URL_${Language}}     ${Chrome}
        Maximize Browser Window
        Sleep    2
        #Change_CurrentLocation_Home

Login_as_MultishopMerchant
        BuiltIn.Sleep    2
        Click Element    ${LoginasMerchant}
        BuiltIn.Sleep    2
        SeleniumLibrary.Input Text    email    ${MultishopMerchantCredentials}[0]
        Input Password    password     ${MultishopMerchantCredentials}[1]
        Click Button  ${LoginSubmit_Button}
        BuiltIn.Sleep    2

Login as Manager
        BuiltIn.Sleep    2
        Click Element    ${LoginasMerchant}
        BuiltIn.Sleep    2
        SeleniumLibrary.Input Text    email    ${MultishopLocation1Credentials}[0]
        Input Password    password     ${MultishopLocation1Credentials}[1]
        Click Button  ${LoginSubmit_Button}
        BuiltIn.Sleep    2






