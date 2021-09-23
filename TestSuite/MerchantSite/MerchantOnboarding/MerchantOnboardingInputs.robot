*** Variables ***

#MerchantOnboarding

@{MerchantAddress_EN}    Justine de Gouwerhof    Haarlem    2011GP    Netherlands
@{MerchantAddress_NL}    Justine de Gouwerhof    Haarlem    2011GP    Netherlands
@{MerchantAddress_IT}    Ruga Vecchia S.Giovanni, 603     Venezia     30125     Italy
@{MerchantAddress_CZ}    Laubova 1689/4     Vinohrady     130 00     Czechia
@{MerchantAddress_DE}    SchleiheimerStr. 96    80797    Munich    Germany
@{MerchantAddress_GR}     Karterado     Fira-Karterado     847 00      Greece
@{MerchantAddress_RO}     Calea Floreasca 111-113     Bucuresti     1455    Romania

${COC}    000000000

${VAT_EN}    123456789B12
${VAT_NL}    123456789B12
${VAT_CZ}    54416485
${VAT_IT}    12345678901
${VAT_DE}    123456789
${VAT_GR}    123456789
${VAT_PL}    214585624
${VAT_RO}    1234567890

${IBAN}    NL39RABO0300065264

#Merchant with Online payment
${MerchantName_NL}    Nisha's Automated Bakery006
${MerchantName_EN}    Nisha's Bakery001
${MerchantName_IT}    Test Bakery 002
${MerchantName_CZ}    Nisha's Automated Bakery001
${MerchantName_DE}    Nisha's Pastry001
@{Merchant with Online payment Credentials}     bapachotestmerchant001@gmail.com    bapachomerchantpwd    +31612809787

#Account_Number
${NL_Account_Number}    NL39RABO0300065264

#GMAIL

${choosemerchantactivationmail_EN}    :1m
${clickActivationLink}  //a[contains(.,'https://multishop.bapacho.com/activateShop.php?')]

${chooseMerchantWelcomemail_EN}     :1m
${ClickMerchantLoginlink}   //a[contains(.,'https://multishop.bapacho.com/#merchantLogin')]

${chooseMailchimpToolkitmail_EN}    :1m
${DownloadToolkit}   //a[contains(.,'Download Toolkit')]

${chooseMailchimpViewDashboard_EN}   :1m
${ViewDashboard}    //a[contains(.,'View dashboard')]