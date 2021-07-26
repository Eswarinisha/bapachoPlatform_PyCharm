*** Variables ***

#MerchantOnboarding

@{MerchantAddress_EN}    Justine de Gouwerhof    Haarlem    2011GP    Netherlands
@{MerchantAddress_NL}    Justine de Gouwerhof    Haarlem    2011GP    Netherlands
@{MerchantAddress_IT}    Ruga Vecchia S.Giovanni, 603     Venezia     30125     Italy
@{MerchantAddress_CZ}    Laubova 1689/4     Vinohrady     130 00     Czechia
@{MerchantAddress_DE}    SchleiheimerStr. 96    80797    Munich    Germany
@{MerchantAddress_GR}     Karterado     Fira-Karterado     847 00      Greece
@{MerchantAddress_RO}     Calea Floreasca 111-113     Bucuresti     1455    Romania

#Merchant without Online payment
${MerchantName without payment}    Nisha's Automated Bakery006
@{Merchant_Without_OnlinePayment_Credentials}     automatedmerchant006@yopmail.com    bapachomerchantpwd    +31612809787


#MultishopMerchant details

@{MultishopMerchantCredentials}    nisha+cupandsaucer@inqadigital.com     bapachomerchantpwd    31612809787    Netherlands
@{MultishopLocation1Credentials}      nisha+cupandsaucer+loc1@inqadigital.com      bapachomanagerpwd    31612809787    54,Justine de Gouwerhof    2011GP    Haarlem Netherlands
${MultishopMerchantName}    Cup and Saucer
${MultishopMerchantLoc1}    Cup and Saucer+ Loc1

${COC}    000000000
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

#Product Category
${ProductCategoryName}    Beverages

#Add Product
${Productname}     Apple Juice
${Productingredients}    Lemon,mint,salt,sugar,soda
${ProductUnit}    20ml
${PricewithVAT}    10.00

#SalesAgentLogin
@{SalesAgentCredentials}    nisha@inqadigital.com    Jishannaresh29