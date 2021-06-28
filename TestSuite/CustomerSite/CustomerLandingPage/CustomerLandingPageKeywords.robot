*** Settings ***
Library  SeleniumLibrary

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Resources/Bapacho_Variables.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Resources/Bapacho_Credentials.robot

*** Keywords ***

     #Landing Page

Open_Landingpage
       Open Browser   ${BapachoLangingpage_URL_${Language}}     ${Firefox}
       Maximize Browser Window
       Capture Page Screenshot

Subscribe_to_Newsletter
    Input Text    ${Subscribetonewsletter}    ${GuestUser_${Language}}[2]
    Click Element  ${Signup}
    Capture Page Screenshot
    Sleep    2
    Click Element    ${OK_Button}


View_bakery_in_landingpage
    Sleep    2
    Click Element    ${Ordernow}
    Sleep    2
    Capture Page Screenshot
    Go Back
