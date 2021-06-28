*** Settings ***
Library  SeleniumLibrary

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Resources/Bapacho_Variables.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Resources/Bapacho_Credentials.robot

*** Keywords ***
Add_coupon_to_empty_cart
        Click Element    ${carticon}
        Sleep    5
        Input Text    ${discountCode}    PERC10
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
        Input Text    ${discountCode}    PERC10
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
        Input Text    ${discountCode}    PER10
        Capture Page Screenshot
        Click Element    ${btn_Applydiscountcode}
        Sleep    2
        Page Should Contain    Error
        Sleep    2
        Click Element    ${OK}
        Sleep    2
        Click Element    ${btn_Checkout}

Creates_account_and_Add_Coupon_in_cart
        Sleep    2
        Input Text    ${discountCode}    PERC10
        Capture Page Screenshot
        Sleep    2
        Capture Page Screenshot
        Click Element    ${btn_Applydiscountcode}
        Sleep    5
        Input Text    ${firstname}     Nisha
        Input Text    ${lastname}    Bala
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
        Input Text    ${discountCode}    PERC10
        Capture Page Screenshot
        Click Element    ${btn_Applydiscountcode}
         Sleep    2
        Click Element    ${OK}
        Sleep    2


