*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
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
         Input Text    ${fill_in_email}    ${RegisterCredentialsnew}[0]
         Sleep  2
         Scroll Element Into View   ${Checkout_LoginButton}
         #Click Element    ${clicklogin_in_checkout}
         Click Element    ${Checkout_LoginButton}
         EmailLogin

Guestuser_CreateAccount_in_Checkoutpage
        Guestuser_Fill_Checkoutpage
         Input Text    ${fill_in_email}    ${RegisterCredentialsCheckout}[0]
         Click Element    ${clicklogin_in_checkout}
         Input Text    ${inputpassword}      ${RegisterCredentialsCheckout}[1]
         Input Text    ${inputpasswordcheck}    ${RegisterCredentialsCheckout}[1]
