*** Settings ***
Library  SeleniumLibrary

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Resources/Bapacho_Variables.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Resources/Bapacho_Credentials.robot


*** Keywords ***

# CartFunctionalities

PDP_AddtoCart_below_cart_value
        Sleep    2
        #Scroll Element Into View    (//div[@class='productCard'])[1]
        Run Keyword If    '${Language}'=='RO'    Repeat Keyword    1    Click Element    ${Addtocart +}
        Repeat Keyword    1    Click Element    ${Addtocart +}
        Sleep    3
        Capture Page Screenshot
        Click Element    ${carticon}

PDP_AddtoCart
        #Scroll Element Into View    (//div[@class='productCard'])[1]
        Run Keyword If    '${Language}'=='RO'    Repeat Keyword    15    Click Element    ${Addtocart +}
        Repeat Keyword    15    Click Element    ${Addtocart +}
        Sleep    3
        Capture Page Screenshot
        Click Element    ${carticon}

PDP_Add_Delete_product_Quantity
         Set Browser Implicit Wait    5
         Repeat Keyword     2     Click Element    ${+}
         Sleep    2
         Click Element    ${-}
         Capture Page Screenshot

Type_Product_quantity
          BuiltIn.Sleep    1
          Capture Page Screenshot
          Clear Element Text    ${inputproductprice}
          Input Text    ${inputproductprice}     27
          Sleep    2
          # Press Keys      //input[contains(@type,'number')]     ENTER
          # Capture Page Screenshot
          BuiltIn.Sleep    1
          Click Element    ${btn_Checkout}

Delete_Product_Quantity
        Set Browser Implicit Wait    5
        Capture Element Screenshot    ${deleteproduct_in_cart}
        Click Element    ${deleteproduct_in_cart}
        Capture Page Screenshot

PDP_Click_Checkout
        # Click Element    ${+}
         Sleep    2
         Click Element    ${btn_Checkout}
         Capture Page Screenshot
         Get Window Titles    CURRENT
         Get Locations

Type_Product_quantity_Checkout
          BuiltIn.Sleep    1
          Capture Page Screenshot
          Input Text    ${inputproductprice}     27
          Sleep    3
          Click Element     ${inputproductpricecheckout}
         # Press Keys      //input[contains(@type,'number')]     ENTER
          Capture Page Screenshot
          Click Element    ${orderacceptance}



       # CheckoutFunctionalities page

Choose_delivery
        BuiltIn.Sleep    2
        Click Element    ${ChooseDeliver}
        Capture Page Screenshot

Guestuser_Fill_Checkoutpage
         BuiltIn.Sleep    2
         Select From List By Index     ${fill_in_date}   0
         BuiltIn.Sleep    2
         Select From List By Index      ${fill_in_time}    3
         BuiltIn.Sleep    2
         Capture Page Screenshot
         SeleniumLibrary.Input Text    ${fill_in_firstname}    ${GuestUser_${Language}}[0]
         SeleniumLibrary.Input Text    ${fill_in_lastname}     ${GuestUser_${Language}}[1]
         SeleniumLibrary.Input Text    ${fill_in_email}        ${GuestUser_${Language}}[2]
         Input Text    ${fill_in_address}    ${GuestUser_${Language}}[3]
        # Input Text    name=addressLine2        ${GuestUser_${Language}}[4]
         Input Text    ${fill_in_postal}    ${GuestUser_${Language}}[5]
         Input Text    ${fill_in_city}    ${GuestUser_${Language}}[6]
         SeleniumLibrary.Input Text    ${fill_in_phone}    ${GuestUser_${Language}}[7]
         Capture Page Screenshot

User_Fill_Checkoutpage
         BuiltIn.Sleep    2
       # Wait Until Element Is Visible    //select[@id='date']
         BuiltIn.Sleep    2
         Select From List By Index     ${fill_in_date}   0
         BuiltIn.Sleep    2
        # Wait Until Page Contains Element    //select[@id='time']
         Select From List By Index      ${fill_in_time}    0
          Input Text    //input[contains(@id,'address')]   ${GuestUser_${Language}}[3]
          Input Text    //input[contains(@id,'postal')]    ${GuestUser_${Language}}[4]
          Input Text   //input[contains(@id,'city')]     ${GuestUser_${Language}}[5]
          Input Text    //input[contains(@id,'phone')]    ${GuestUser_${Language}}[7]

Guestuser_FBLogin_in_Checkoutpage
         Sleep    2
         Select From List By Index     ${fill_in_date}   0
         Select From List By Index       ${fill_in_time}    4
         Scroll Element Into View    ${FBLoginButton}
         Click Element   ${FBLoginButton}
         FacebookLogin_in_Checkoutpage

Guestuser_Login_in_Checkoutpage
         Sleep    2
         Select From List By Index     ${fill_in_date}   0
         Select From List By Index      ${fill_in_time}    4
         Input Text    ${fill_in_email}    ${LoginCredentials}[0]
         Click Element    ${clicklogin_in_checkout}
         Click Element    ${Checkout_LoginButton}
         EmailLogin

Guestuser_CreateAccount_in_Checkoutpage
        Guestuser_Fill_Checkoutpage
         Input Text    ${fill_in_email}    ${RegisterCredentialsCheckout}[0]
         Click Element    ${clicklogin_in_checkout}
         Input Text    ${inputpassword}      ${RegisterCredentialsCheckout}[1]
         Input Text    ${inputpasswordcheck}    ${RegisterCredentialsCheckout}[1]

Click_Terms&Condition
         BuiltIn.Sleep    2
        Execute JavaScript    ${scrolldown}
        Click Link    ${T&C link}
        Capture Page Screenshot
        Select Window    NEW
        BuiltIn.Sleep    2
        Capture Page Screenshot


Click_T&C_Checkbox
         #Scroll Element Into View    //*[@id="paymentHolder"]/div[1]/label
         Select Radio Button    ${paymentmethod}    ${paymentmethod2}
         Page Should Contain Checkbox    ${T&C}
         Select Checkbox    ${T&C}
         Capture Element Screenshot    ${T&C}
         Sleep    2
                      # My Account
Check_T&C_NonHappy
         Set Focus To Element    //*[@id="paymentHolder"]/div[1]/label
         Select Radio Button    ${paymentmethod}    ${paymentmethod1}
         Page Should Contain Checkbox    ${T&C}
        # Select Checkbox    //input[@id='terms']
         Click Button    ${btn_Submit_${Language}}
         BuiltIn.Sleep    2
         Capture Page Screenshot
         Close Browser

Click_Submit_button
        Click Button     ${btn_Save}

Cashpay_OrderNow
        # Set Focus To Element    //*[@id="paymentHolder"]/div[1]/label
         Select Radio Button    ${paymentmethod}    ${payment_method_cash}
         Page Should Contain Checkbox    ${T&C}
         Select Checkbox    ${T&C}
         Click Button    ${submitbutton}
         BuiltIn.Sleep    2
         Capture Page Screenshot
         Click Element    ${OK}
         BuiltIn.Sleep    10
         Capture Page Screenshot


Cardpay_OrderNow
        # Scroll Element Into View    //*[@id="paymentHolder"]/div[1]/label
         Select Radio Button     ${paymentmethod}    ${payment_method_card}
         Page Should Contain Checkbox    ${T&C}
         Select Checkbox    ${T&C}
         Click Button     ${submitbutton}
         BuiltIn.Sleep    2
         Click Element    ${OK}
         BuiltIn.Sleep    2
         BuiltIn.Sleep    2
         Capture Page Screenshot


Onlinepay_Ordernow
         BuiltIn.Sleep    2
         Execute JavaScript    ${scrolldown}
        #Set Focus To Element    //*[@id="paymentHolder"]/div[1]/label
         Select Radio Button     ${paymentmethod}    ${payment_method_online}
         Page Should Contain Checkbox    ${T&C}
         Select Checkbox    ${T&C}
         Click Button    ${submitbutton}
         BuiltIn.Sleep    2
         Capture Page Screenshot

Card_Online_payment_process
         BuiltIn.Sleep    2
        # Click Element    //button[contains(@id,'card-tab')]
         SeleniumLibrary.Input Text    ${cardnumber}     4242 4242 4242 4242
         SeleniumLibrary.Input Text    ${cardExpiry}     02/22
         SeleniumLibrary.Input Text    ${cvc}    222
         SeleniumLibrary.Input Text    ${billingname}    Eswari Nisha Balakrishnan
         Select From List By Label      ${billingcountry}     Netherlands
         Capture Page Screenshot
         Click Element    ${pay}
         BuiltIn.Sleep    10
        Capture Page Screenshot

iDEAL_Online_payment_process
          BuiltIn.Sleep    5
         Click Element    ${idealtab}
         Select From List By Label      ${selectideal}     ABN Amro
         BuiltIn.Sleep    1
         SeleniumLibrary.Input Text    ${billingname}    Eswari Nisha Balakrishnan
         Capture Page Screenshot
         Click Element    ${pay}
         Set Browser Implicit Wait    10
         Wait Until Page Contains    iDEAL test payment page
         Click Element    ${authorizetestpayment}
         BuiltIn.Sleep    10
         Capture Page Screenshot

Giropay_Online_payment_process
         BuiltIn.Sleep    2
         Click Element   //button[contains(@id,'giropay-tab')]
         SeleniumLibrary.Input Text    billingName    Eswari Nisha Balakrishnan
         Set Browser Implicit Wait    5
         Click Element    //div[contains(@class,'SubmitButton-IconContainer')]
         Set Browser Implicit Wait    310
         Wait Until Page Contains    giropay test payment page
         Capture Page Screenshot
         Click Element    //button[contains(.,'Authorize Test Payment')]
         BuiltIn.Sleep    2
         Capture Page Screenshot

Click_back_while_Online_pay
        BuiltIn.Sleep    2
        Click Element    ${clickback}
        Wait Until Page Contains    ${label_Order incomplete}
        Capture Page Screenshot

Customer_Order_received_Mail
        Open Browser    http://gmail.com    ${Chrome}
        Maximize Browser Window
        Sleep     4
        Input Text    ${inputgmailid}    ${LoginCredentials}[0]
        Click Element    ${gmailid_submit}
        Sleep    2
        Input Password    ${inputgmailpassword}     ${LoginCredentials}[1]
        Sleep    2
        Click Element    ${gmailpwd_submit}
        Sleep    20
        Page Should Contain Element     ${choosemailcustomerorderreceived_${Language}}
        Click Element    ${choosemailcustomerorderreceived_${Language}}
        BuiltIn.Sleep    2
        Capture Page Screenshot
        Sleep    2

                                    # Order Confirmation Page

Add_to_Calender
         Capture Page Screenshot
        Click Element   ${addtocalender}
         BuiltIn.Sleep    2
        Capture Page Screenshot


SupportForm
        Click Element    ${support}
        Set Browser Implicit Wait    10
        SeleniumLibrary.Input Text    ${supportquestion}    "Test Automation - Test question"
        Capture Page Screenshot
        Click Element    ${submitsupportform}