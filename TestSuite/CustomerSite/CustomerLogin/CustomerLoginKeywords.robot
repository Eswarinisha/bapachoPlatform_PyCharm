*** Settings ***
Library  SeleniumLibrary

Resource    CustomerLoginVariables.robot
Resource    CustomerCredentials.robot

*** Keywords ***
                # Home Page
login_Using_RegisteredMailid
        Set Browser Implicit Wait    5
        SeleniumLibrary.Input Text    ${emailid}    ${RegisterCredentialsnew}[0]
        Input Password    ${Registerpassword}    ${RegisterCredentialsnew}[3]
        Capture Page Screenshot
        Click Button   ${LoginSubmit_Button}
        Sleep    2
        Wait Until Page Contains Element    ${btn_MyAccount}

login_Using_RegisteredMailid_with_old_password
        Set Browser Implicit Wait    5
       SeleniumLibrary.Input Text    ${emailid}    ${RegisterCredentialsnew}[0]
        Input Password    ${Registerpassword}    ${RegisterCredentialsnew}[3]
        Capture Page Screenshot
        Click Button  ${LoginSubmit_Button}
        Sleep    2
        Capture Page Screenshot

Click_login
       Wait Until Element Is Visible    ${Login_Button}
       Click Element     ${Login_Button}
       BuiltIn.Sleep    2
       Capture Page Screenshot

Click_FacebookLogin
        BuiltIn.Sleep    2
        Click Element     ${Login_using_Facebook}

FacebookLogin
        Sleep   2
        #Run Keyword And Continue On Failure   Wait Until Page Contains    ${acceptcookieslabel}
        Run Keyword And Continue On Failure      sleep    4
        Run Keyword And Continue On Failure       Click Button    ${fbcookiesaccept}
        SeleniumLibrary.Input Text      ${FBemailid}    ${FBCredentials}[0]
        Input Password    ${FBpassword}    ${FBCredentials}[1]
        Click Element    ${FBSubmit}
        Run Keyword And Continue On Failure     Handle Alert    Allow
        Run Keyword And Continue On Failure    Handle Alert    OK
        BuiltIn.Sleep    2

FacebookLogin_in_Checkoutpage
        Wait Until Page Contains     ${acceptcookieslabel}
        Set Selenium Implicit Wait    10
        Click Button     ${fbcookiesaccept}
        SeleniumLibrary.Input Text      ${FBemailid}    ${FBCredentials}[0]
        Input Password    ${FBpassword}    ${FBCredentials}[1]
        Click Element    ${FBSubmit}
        Set Browser Implicit Wait    10

EmailLogin
        Set Browser Implicit Wait    5
        SeleniumLibrary.Input Text    ${emailid}    ${RegisterCredentialsnew}[0]
        BuiltIn.Sleep    2
        Input Password    ${Registerpassword}    ${RegisterCredentialsnew}[3]
        BuiltIn.Sleep    2
        Capture Page Screenshot
        Click Button   ${LoginSubmit_Button}
        BuiltIn.Sleep    2

MerchantLogin_Form
        Set Browser Implicit Wait    5
        SeleniumLibrary.Input Text    ${emailid}    bapachotestmerchant001@gmail.com
        Input Password    ${Registerpassword}    bapachomerchantpwd
        Click Button    ${LoginSubmit_Button}
        BuiltIn.Sleep    2

Email_Registration
        Set Browser Implicit Wait    5
        Click Element       ${CreateAccount_Button}
        SeleniumLibrary.Input Text      ${emailid}     ${RegisterCredentialsold}[0]
        SeleniumLibrary.Input Text     ${firstname}  ${RegisterCredentialsold}[1]
        SeleniumLibrary.Input Text     ${lastname}  ${RegisterCredentialsold}[2]
        Input Password   ${inputpassword}     ${RegisterCredentialsold}[3]
        Input Password   ${inputpasswordcheck}     ${RegisterCredentialsold}[4]
        Capture Page Screenshot
        Click Button    ${CreateAccount_SubmitButton}
        BuiltIn.Sleep    2
        Capture Page Screenshot

Click_ForgotPassword
        Capture Element Screenshot    ${forgotpassword}
        Click Element    ${forgotpassword}
        BuiltIn.Sleep    2
        SeleniumLibrary.Input Text      ${emailid}     ${RegisterCredentialsold}[0]
        Capture Page Screenshot
        Click Button     ${btn_SubmitCategory_EN}

ResetPassword
        Input Password    ${newpassword}      ${LoginCredentials}[1]
        Input Password    ${newpasswordcheck}    ${LoginCredentials}[1]
        Capture Page Screenshot
        Click Element     ${btn_Save}

OpenGmailForgotpassword
        Open Browser    http://gmail.com    ${Chrome}
        Maximize Browser Window
        Sleep     4
        Input Text    ${inputgmailid}       ${gmailcredentials}[0]
        Click Element    ${gmailid_submit}
        Sleep    2
        Input Password    ${inputgmailpassword}    ${gmailcredentials}[1]
        Sleep    2
        Click Element    ${gmailpwd_submit}
        Sleep    20
        Page Should Contain Element     ${choosemail_${Language}}
        Click Element    ${choosemail_${Language}}
        BuiltIn.Sleep    2
        Capture Page Screenshot
        Click Link       ${activationmailManager_${Language}}
        Sleep    2

OpenGmailCustomer
        Open Browser    http://gmail.com    ${Chrome}
        Maximize Browser Window
        Sleep     4
        Input Text    ${inputgmailid}    ${gmailcredentials}[0]
        Click Element    ${gmailid_submit}
        Sleep    2
        Input Password    ${inputgmailpassword}    ${gmailcredentials}[1]
        Sleep    2
        Click Element    ${gmailpwd_submit}
        Sleep    20
        Page Should Contain Element     ${choosemailcustomermail_${Language}}
        Click Element    ${choosemailcustomermail_${Language}}
        BuiltIn.Sleep    2
        Capture Page Screenshot
        Click Link       ${customerwelcomemail_${Language}}
        Sleep    2

OpenGmailCustomerMailchimp
        Open Browser    http://gmail.com    ${Chrome}
        Maximize Browser Window
        Sleep     4
        Input Text    ${inputgmailid}    nisha@inqadigital.com
        Click Element    ${gmailid_submit}
        Sleep    2
        Input Password    ${inputgmailpassword}    Nishabalki@123
        Sleep    2
        Click Element    ${gmailpwd_submit}
        Sleep    20
        Page Should Contain Element     ${choosemailcustomermailchimp_${Language}}
        Click Element    ${choosemailcustomermailchimp_${Language}}
        BuiltIn.Sleep    2
        Capture Page Screenshot
        Click Link       ${customerwelcomemailchimp_${Language}}
        Sleep    2

OpenGmailForgotPaasword
        Open Browser    http://gmail.com    ${Chrome}
        Maximize Browser Window
        Sleep     4
        Input Text    ${inputgmailid}    ${gmailcredentials}[0]
        Click Element    ${gmailid_submit}
        Sleep    2
        Input Password    ${inputgmailpassword}    ${gmailcredentials}[1]
        Sleep    2
        Click Element    ${gmailpwd_submit}
        Sleep    20
        Page Should Contain Element     ${choosemailforgotpassword_${Language}}
        Click Element    ${choosemailforgotpassword_${Language}}
        BuiltIn.Sleep    2
        Capture Page Screenshot
        Click Link       ${customerforgotpassword_${Language}}
        Sleep    2