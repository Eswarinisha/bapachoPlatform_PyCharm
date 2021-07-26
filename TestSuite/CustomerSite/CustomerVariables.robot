*** Variables ***
${Language}     EN

#CUSTOMER SITE

${BapachoLOGO}    //img[@src='/img/original/Bapacho-white.svg']
${carticon}    //span[contains(@class,'icon-basket')]

${FBLoginButton}    //a[contains(text(),'Login using Facebook')]
${Login_Button}    //span[contains(@class,'icon-account')]
${LoginSubmit_Button}    //button[@class='btn btn-template']
${forgotpassword}    (//a[contains(@role,'button')])[4]
${newpassword}    name=password
${newpasswordcheck}    name=password_chk

#Facebook_Login
${Login_using_Facebook}    //a[contains(@class,'btn btn-info btn-lg btn-block')]
${FBemailid}    //input[@id='email']
${FBpassword}    //input[@id='pass']
${FBSubmit}    //button[@id='loginbutton']
${acceptcookieslabel}    Accept cookies from Facebook on this browser?
${fbcookiesaccept}    //*[@id="u_0_g"]

#Create_Account
${CreateAccount_Button}    //button[@onclick="openCleanAjaxModal('/pages/modals/ajax/createAccount.php')"]
${emailid}    //input[@id='name']
${Registerpassword}    (//input[@id='name'])[2]
${firstname}    //input[@id='firstname']
${lastname}    //input[@id='lastname']
${inputpassword}      //input[@id='password']
${inputpasswordcheck}     password_chk
${CreateAccount_SubmitButton}    //button[@onclick="$('#loginForm').submit()"]

#Home Page

${homelocationtitle}    //input[@id='homeLocationTitle']
${getcurrentlocationicon}    //i[contains(@class,'fas fa-lg fa-map-marker-alt')]
${serachusinglocation}    (//span[contains(@class,'hidden-xs')])[2]

${Appicon_playstore}    (//a[contains(@target,'_blank')])[2]
${Appicon_Appstore}    (//a[contains(@target,'_blank')])[1]

${btn_Bakeries_EN}    //a[contains(text(),'Bakeries')]
${btn_Bakeries_IT}    //a[contains(text(),'Bakeries')]
${btn_Bakeries_NL}    //a[contains(.,'Winkels')]
${btn_Bakeries_CZ}    //a[@data-slug='pekarstvi']
${btn_Bakeries_GR}    //a[@data-slug='bakeries']
${btn_Bakeries_DE}    //a[contains(@data-slug,'backereien')]
${btn_Bakeries_ES}    //a[@data-slug='panaderias']
${btn_Bakeries_RO}    //a[contains(.,'Magazine')]
${btn_Bakeries_PT}    //a[contains(.,'Lojas')]
#${btn_Bakeries_PL}

${favhearticon}    //i[@class='far fa-heart']
${guestclickfav}    //i[contains(@class,'far fa-heart fa-2x')]
${viewfavorites}    (//i[contains(@class,'far fa-heart text-muted')])[1]
${search_button}    //button[@class='btn btn-template trigger-filter']
${btn_MyAccount}    (//span[contains(@class,'hidden-xs')])[1]

${Open your shop}    (//a[@role='button'])[3]
${company}    company
${name}    name
${phone}    phone
${email}    //input[contains(@name,'email')]
${comments}    comments


#Account
${submitaccountdetails}    (//button[contains(@type,'button')])[2]
${Fav_tab}    (//a[contains(@class,'list-group-item ')])[2]
${view fav}    (//div[contains(@class,'info')])[1]
${myorder_tab}    (//a[contains(@class,'list-group-item ')])[5]
${Managermyorder_tab}    //i[contains(@class,'fas fa-euro-sign fa-fw')]
${view myorder}    //a[contains(@class,'btn btn-template-inverse')]
${download_orderconfirmation}    //i[contains(@class,'far fa-file-pdf fa-fw')]
${repeatorder}    //button[contains(@onclick,'repeatOrder();')]
${logout}    //a[@href='/logout.php']

${Searchbakeryinputfield}    //input[contains(@id,'keyword')]
${Clearsearchbakeryfield}    //span[contains(@class,'icon-close')]
${changelocation_in_search}    user-address
${filterbycategory_1}    (//img[contains(@src,'200x200.jpg')])[4]
${filterbycategory_2}    (//img[contains(@src,'200x200.jpg')])[7]
${filterbycategory_3}     (//img[contains(@src,'200x200.jpg')])[5]
${Range}    //div[contains(@id,'range-slider')]
${pickupcheckbox}    //input[@value='pickup']
${deliverycheckbox}    //input[@value='deliver']
${nowopencheckbox}     now_open
${noworderonline}     order_online

${choosebakery_multiplefilter}    (//img[contains(@class,'media-object img-circle')])[3]
${choosebakery}    (//a[@class='btn btn-template btn-lg btn-lg-wide'])[1]

${SuggestShopName}  Haarlem Bakers
${btn_SuggestShop}  //a[contains(.,'buttons.SuggestAShop')]
${Shop_Name}    title
${Why_You_want_this_baker}      comments
${Why_You_want_this_baker_comment}      I like his coffee
${SuggestShop_mail}     email

${Submit}   //button[contains(.,'Submit')]
${HomePageButton}       //a[contains(.,'buttons.HomePage')]

#Bakery display Page

${clickbakersphonenumber}    (//div[contains(@class,'form-field')])[2]
${filterproductbycategory}    (//a[contains(@class,'supplierCategoriesFilter ')])[2]
${i}    (//div[contains(@class,'title')])[3]
${Addtocart +}    (//span[contains(@onclick,'quickAddToCart(this)')])[1]
${Addtocart -}    (//span[contains(@onclick,'quickDeductFromCart(this)')])[1]

${producttitle}    (//div[contains(@onclick,'showProductInfo(this)')])[1]
${Addtocartproductlevel}    //button[@onclick='addToCart(this)']

${MarkFavouriteBakery}    //div[@onclick='markSupplierAsFavorite(this);']

${btn_Close}    (//button[contains(@type,'button')])[5]
${btn_Checkout}    //button[@id='toCheckoutBtn']
${closeloginpopup}    //button[@aria-label='Close']


#CartFunctionalities

${+}    //span[contains(@onclick,'addQuantity(this)')][1]
${-}    //span[contains(@onclick,'deductQuantity(this)')][1]
${inputproductprice}    //input[contains(@type,'number')]
${deleteproduct_in_cart}    //i[contains(@class,'fas fa-trash fa-lgf fa-fw text-lightmuted')]


#discount
${discountCode}    discountCode
${btn_Applydiscountcode}    //button[@onclick='checkDiscountCode()']
${couponguestemail}     columns[username]
${couponProceedbutton}     //button[contains(.,'buttons.Proceed')]
${applyForNewsletter}       applyForNewsletter

${couponfirstname}  columns[firstname]
${couponlastname}   columns[lastname]
${couponpassword}   password
${btn_AlreadyhaveanAccount}     //button[contains(.,'buttons.AlreadyHaveAnAccount')]


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


#Footer

${supportquestion}    //textarea[contains(@name,'comments')]
${submitsupportform}    //button[contains(@class,'btn btn-block btn-info-dark')]
${loginmerchantfooter}    (//a[@role='button'])[4]
${FAQ}    //a[contains(text(),'FAQ')]
${Supportfooter}    (//a[contains(@role,'button')])[5]
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

#GMAIL

${inputgmailid}    identifierId
${gmailid_submit}    //span[contains(.,'Volgende')]
${inputgmailpassword}    //input[contains(@type,'password')]
${gmailpwd_submit}    //span[contains(.,'Volgende')]

${choosemail_EN}    (//span[contains(.,'Your account at Bapacho')])[2]
${choosemail_CZ}    //tr[contains(@id,':1u')]
${choosemail_RO}    (//tr[contains(@role,'row')])[1]

${choosemailcustomerorderreceived_EN}    //tr[contains(@id,':1m')]
${choosemailcustomermail_EN}    (//span[contains(.,'Please activate your account at Bapacho')])
${choosemailcustomermailchimp_EN}    //span[@class='bqe'][contains(.,'Welcome to Bapacho!')]

${choosemailforgotpassword_EN}     //tr[contains(@id,':167')]

${scrollup}      window.scrollTo(document.body.scrollHeight,0)
${scrolldown}    window.scrollTo(0, document.body.scrollHeight)
