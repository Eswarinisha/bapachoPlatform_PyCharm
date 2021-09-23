*** Settings ***
Library  SeleniumLibrary

Resource    MyTeamVariables.robot

*** Keywords ***
My Teams
    Click Element    ${Myteam}
    Click Element    ${Addmanager}
    Sleep    2
    Input Text    ${managerfirstname}    AutomatedManager
    Input Text    ${managerlastname}    1
    Input Text    ${manageremail}    ${MultishopLocation1Credentials}[0]
    Click Element    ${location1checkbox}
    Click Element    ${location2checkbox}
    Click Element    ${btn_SaveManager}
    Sleep    2
    Click Element    ${OK}
    Sleep    2

Online Payment Settings
    Click Element    ${Onlinepaymentsettings}
    Click Element    ${connect to online payment}
    Sleep     2
    Go Back

Account Settings
    Click Element    ${accountsettings}

Account Options
    Click Element    ${accountoptions}

View Multishop plan
    Click Element    ${AccountOption}
    Capture Page Screenshot

    #MANAGER
Activate Manager
     Select Window    NEW
    Input Password    ${newpassword}    ${MultishopLocation1Credentials}[1]
    Sleep    2
    Input Password    ${newpasswordcheck}    ${MultishopLocation1Credentials}[1]
    Sleep    2
    Click Element    ${T&C_MerchantOnboarding}
    Sleep    2
    Capture Page Screenshot
    Select Window    CURRENT
    Sleep    2
    Click Element    ${Accept T&C}
    Sleep    2
    Click Element    ${Onboardingsavebutton}
    Sleep    2
    Capture Page Screenshot

