*** Variables ***

#CartFunctionalities

${+}    //span[contains(@onclick,'addQuantity(this)')][1]
${-}    //span[contains(@onclick,'deductQuantity(this)')][1]
${inputproductprice}    //input[contains(@type,'number')]
${deleteproduct_in_cart}    //i[contains(@class,'fas fa-trash fa-lgf fa-fw text-lightmuted')]


#CheckoutFunctionalities Page

#${inputproductpricecheckout}    (//div[contains(@class,'updateQButton')])[3]
${orderacceptance}    orderAcceptance
${ChooseDeliver}    //input[contains(@value,'deliver')]
${AboutUs_EN}    //a[contains(text(),'About us')]
#${T&C_EN}    //a[contains(text(),'Terms and conditions')]
#${T&C_CZ}    (//a[contains(@target,'_blank')])[1]
${T&C_MerchantOnboarding}    (//a[contains(@target,'_blank')])[1]

${T$C Checkbox}    //input[contains(@name,'terms')]
${PrivacyStatement_EN}    //a[contains(text(),'Privacy statement')]
${Checkout_LoginButton}    //button[contains(@class,'btn btn-white')]
${clicklogin_in_checkout}    //input[contains(@type,'tel')]
${fill_in_email}    email

${fill_in_date}    //select[@id='date']
${fill_in_time}    //select[@id='time']
${fill_in_firstname}    //input[@id='firstname']
${fill_in_lastname}    //input[@id='lastname']
#${fill_in_email}    //input[@id='email']
#{fill_in_address_MyAccount}    columns[address]
${fill_in_address}    name=address
${fill_in_postal}    name=postal
${fill_in_city}    name=city
${fill_in_phone}    //input[@id='phone']

${T&C link}    (//a[contains(@target,'_blank')])[1]
${paymentmethod}    payment_method
${paymentmethod1}    payment_method1
${paymentmethod2}    payment_method2
${payment_method_cash}    payment_method_cash
${payment_method_card}    payment_method_card
${payment_method_online}    payment_method_online

${T&C}    //input[@id='terms']
${submitbutton}    //button[contains(@type,'submit')]
${OK}    //button[contains(.,'OK')]
${clickback}    //span[contains(text(),'Back')]

${label_Order incomplete}    Order incomplete
${addtocalender}    (//a[contains(@target,'blank')])[1]

#IDEAL

${idealtab}    //button[contains(@id,'ideal-tab')]
${selectideal}    //select[contains(@id,'idealBank')]
${billingname}    name=billingName
${pay}    //div[contains(@class,'SubmitButton-IconContainer')]
${authorizetestpayment}    //button[contains(.,'Authorize Test Payment')]
${cardnumber}    name=cardNumber
${cardExpiry}    name=cardExpiry
${cvc}    name=cardCvc
${billingcountry}    //select[@id='billingCountry']

${savecard}    //span[contains(.,'Save card')]

${support}    (//a[contains(@role,'button')])[3]
