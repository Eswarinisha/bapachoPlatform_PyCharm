*** Settings ***
Library  SeleniumLibrary

Resource    HomePageInputs.robot
Resource    HomePageVariables.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/MerchantTestConditions.robot

*** Keywords ***

Click_Download_App-Playstore
        Scroll Element Into View    ${Appicon_playstore}
        Capture Page Screenshot
        Click Element    ${Appicon_playstore}
        Select Window    NEW
        Capture Page Screenshot
        BuiltIn.Sleep    2


Click_Download_App-Appstore
        Scroll Element Into View    ${Appicon_Appstore}
        Capture Page Screenshot
        Click Element    ${Appicon_Appstore}
        Select Window    NEW
        Capture Page Screenshot
        BuiltIn.Sleep    2

Click_bakeries
        Maximize Browser Window
        BuiltIn.Sleep    2
        Click Element     ${btn_Bakeries_${Language}}
        BuiltIn.Sleep    2


Click_favourites
        BuiltIn.Sleep    2
        Click Element    ${favhearticon}
        BuiltIn.Sleep    2
        Wait Until Page Contains Element    ${viewfavorites}
        BuiltIn.Sleep    2

Guestuser_Click_favourites
         Click Element    ${guestclickfav}
         Capture Page Screenshot
         Wait Until Page Contains Element    ${Login_Button}
         Click Button    ${closeloginpopup}
         Capture Page Screenshot

View_favourites
        Click Element    ${viewfavorites}
        BuiltIn.Sleep    2
        Capture Page Screenshot

Get_CurrrentLocation_Home
        Scroll Element Into View    ${homelocationtitle}
        Capture Element Screenshot    ${homelocationtitle}
        Clear Element Text    ${homelocationtitle}
        Capture Element Screenshot    ${homelocationtitle}
        Sleep    2
        Capture Page Screenshot
        Click Element    ${getcurrentlocationicon}
        Capture Element Screenshot    ${homelocationtitle}
        Sleep    2
        Click Element    ${serachusinglocation}
        BuiltIn.Sleep    2
        Capture Page Screenshot

Change_CurrentLocation_Home

        Clear Element Text    ${homelocationtitle}
        Capture Page Screenshot
        BuiltIn.Sleep    2
        SeleniumLibrary.Input Text    ${homelocationtitle}     ${Change_CurrentLoction_BDP_${Language}}
        BuiltIn.Sleep    4
        Click Element    ${Choose_Change_CurrentLoction_BDP_${Language}}
        Capture Page Screenshot
        BuiltIn.Sleep    2

Open_your_shop

        Capture Page Screenshot
        Click Element    ${Open your shop}
        BuiltIn.Sleep    2
        Input Text    ${company}    Test Merchant
        Input Text   ${name}    Automated merchant
        Input Text    ${phone}        Automated merchant
        Input Text     ${email}    nisha@inqadigital.com
        Input Text     ${comments}   Automated merchant
        Capture Page Screenshot
        Click Element    ${btn_SubmitCategory_${Language}}
        Capture Page Screenshot


   # FOOTER

About_us
        Execute JavaScript    ${scrolldown}
        Click Link   ${AboutUs}
        BuiltIn.Sleep    2
        Capture Page Screenshot


Login_As_Merchant_Footer
        Execute JavaScript    ${scrolldown}
        Scroll Element Into View    ${loginmerchantfooter}
        Click Link    ${loginmerchantfooter}
        BuiltIn.Sleep    2
        SeleniumLibrary.Input Text    email    ${MultishopMerchantCredentials}[0]
        Input Password    password     ${MultishopMerchantCredentials}[1]
        Click Button  ${LoginSubmit_Button}
        BuiltIn.Sleep    2
        Capture Page Screenshot

Click_Logo_to_HomePage
        BuiltIn.Sleep    2
        Click Element   ${BapachoLOGO}
        BuiltIn.Sleep    2

Terms_and_Condition
        Execute JavaScript    ${scrolldown}
        Click Link  ${T&C}
        BuiltIn.Sleep    2
        Capture Page Screenshot


Privacy_Statement
        Execute JavaScript    ${scrolldown}
        Click Link     ${PrivacyStatement}
        BuiltIn.Sleep    2
        Capture Page Screenshot

FAQ
        Execute JavaScript    ${scrolldown}
        Click Link     ${FAQ}
        BuiltIn.Sleep    2
        Capture Page Screenshot

Support_Footer
        Execute JavaScript    ${scrolldown}
        BuiltIn.Sleep    2
        Capture Page Screenshot
        Click Link     ${Supportfooter}
        BuiltIn.Sleep    2

Support_Form_Footer
        SeleniumLibrary.Input Text    ${support-fill in name}    ${support-fill in name_input}
        SeleniumLibrary.Input Text    ${support-fill in phone}    ${support-fill in phone_input}
        SeleniumLibrary.Input Text    ${support-fill in email}    ${support-fill in email_input}
        SeleniumLibrary.Input Text    ${support-fill in comments}    ${support-fill in comments_input}
        Click Button   ${submitsupportform}

Blog
        Execute JavaScript    ${scrolldown}
        Click Element    ${blog}
        Sleep    2
        Capture Page Screenshot
        Click Element    ${click a blogpost}
        Sleep    2
        Capture Page Screenshot
        Click Element    ${click a blogpost2}
        Sleep    2
        Capture Page Screenshot


Bapacho_FB_icon
        Execute JavaScript    ${scrolldown}
        Click Link    ${bapachofb}
        Sleep    4

Bapacho_Instagram_icon
        Execute JavaScript    ${scrolldown}
        Click Link    ${bapachoinstagram}
        Sleep    4

