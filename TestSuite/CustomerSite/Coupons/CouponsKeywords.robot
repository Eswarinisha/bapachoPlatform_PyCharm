*** Settings ***
Library  SeleniumLibrary

Resource    CouponsInputs.robot
Resource    CouponsVariables.robot

*** Keywords ***
Add_coupon_to_empty_cart
        Click Element    ${carticon}
        Sleep    5
        Input Text    ${discountCode}    ${dicountcode_name}
        Capture Page Screenshot
        Click Element    ${btn_Applydiscountcode}
        Click Element    ${btn_Checkout}
        Sleep    2
        Page Should Contain    Error
        Sleep    2
        Click Element    ${OK}
        Sleep    2
        Click Element    ${carticon}
        Sleep    2

Add_coupon_to_invalid_cart
        Sleep    2
        Input Text    ${discountCode}    ${dicountcode_name}
        Capture Page Screenshot
        Click Element    ${btn_Applydiscountcode}
        Click Element    ${btn_Checkout}
        Sleep    2
        Page Should Contain    Warning
        Sleep    2
        Click Element    ${OK}

Add_incorrect_coupon
        Click Element    ${carticon}
        Sleep    2
        Input Text    ${discountCode}    ${dicountcode_name}
        Capture Page Screenshot
        Click Element    ${btn_Applydiscountcode}
        Sleep    2
        Page Should Contain    Error
        Sleep    2
        Click Element    ${OK}
        Sleep    2
        Click Element    ${btn_Checkout}

Customer_Login_for_coupon
         Sleep    2
        Input Text    ${discountCode}    ${dicountcode_name}
        Capture Page Screenshot
        Sleep    2
        Capture Page Screenshot
        Click Element    ${btn_Applydiscountcode}
        Sleep    5
        Click Element   ${btn_AlreadyhaveanAccount}

Add_coupon_Again_for_loggedin_customer

        Click Element   ${carticon}
        Sleep    2
        Input Text    ${discountCode}    ${dicountcode_name}
        Capture Page Screenshot
        Sleep    2
        Click Element    ${btn_Applydiscountcode}
        Sleep    2
        Click Element    ${OK}
        Sleep    2




Creates_account_and_Add_Coupon_in_cart_with_existing_account
        Sleep    2
        Input Text    ${discountCode}    ${dicountcode_name}
        Capture Page Screenshot
        Sleep    2
        Capture Page Screenshot
        Click Element    ${btn_Applydiscountcode}
        Sleep    5
        Input Text    ${couponfirstname}    ${couponfirstname_input}
        Input Text    ${couponlastname}     ${couponlastname_input}
        Input Text    ${couponguestemail}    ${couponmailid}
        Sleep   2
        Page Should Contain Element     ${couponpassword}
        Input Text    ${inputpassword}    ${RegisterCredentialsnew}[3]
        Sleep    2
        Click Element    ${couponProceedbutton}
        Sleep    2
        Click Element    ${OK}
        Sleep    2
#       Capture Page Screenshot
#       Click Element    ${carticon}
#       Click Element    ${btn_Checkout}

Creates_account_and_Add_Coupon_in_cart
#        Sleep    2
#        Input Text    ${discountCode}    ${dicountcode_name}
#        Capture Page Screenshot
#        Sleep    2
#        Capture Page Screenshot
#        Click Element    ${btn_Applydiscountcode}
#        Sleep    5
        Input Text    ${firstname}     ${couponfirstname_input}
        Input Text    ${lastname}      ${couponlastname_input}
        Input Text    ${couponguestemail}    ${couponmailid}
        Input Text    ${inputpassword}    ${RegisterCredentialsnew}[3]
        Sleep    2
        Click Element    ${couponProceedbutton}
        Sleep    2
        Click Element    ${OK}
        Sleep    2
        Capture Page Screenshot
        Click Element    ${carticon}
        Click Element    ${btn_Checkout}

Guest_user_adds_coupon_in_checkout_page
        Sleep    2
        Input Text    ${discountCode}    ${dicountcode_name_2}
        Capture Page Screenshot
        Click Element    ${btn_Applydiscountcode}
        Sleep    2
        Input Text    ${couponguestemail}    ${couponmailid}
        Click Element   ${applyForNewsletter}
        Click Element    ${couponProceedbutton}
        Sleep    2
        Click Element    ${OK}
        Sleep   2
        Click Element   ${carticon}
        Sleep   2
        Click Element    ${btn_Checkout}


