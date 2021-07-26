*** Settings ***
Library  SeleniumLibrary

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Resources/Bapacho_Variables.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Resources/Bapacho_Credentials.robot

*** Keywords ***
Open_MultishopHomePage
        Open Browser   ${Multishop_URL_${Language}}     ${Chrome}
        Maximize Browser Window
        Sleep    2
        #Change_CurrentLocation_Home

Login_as_MultishopMerchant
        BuiltIn.Sleep    2
        Click Element    ${LoginasMerchant}
        BuiltIn.Sleep    2
        SeleniumLibrary.Input Text    email    ${MultishopMerchantCredentials}[0]
        Input Password    password     ${MultishopMerchantCredentials}[1]
        Click Button  ${LoginSubmit_Button}
        BuiltIn.Sleep    2

Login as Manager
     BuiltIn.Sleep    2
        Click Element    ${LoginasMerchant}
        BuiltIn.Sleep    2
        SeleniumLibrary.Input Text    email    ${MultishopLocation1Credentials}[0]
        Input Password    password     ${MultishopLocation1Credentials}[1]
        Click Button  ${LoginSubmit_Button}
        BuiltIn.Sleep    2
