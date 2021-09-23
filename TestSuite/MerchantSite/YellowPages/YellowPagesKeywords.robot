*** Settings ***
Library  SeleniumLibrary

Resource   YellowPagesVariables.robot
Resource   YellowPagesInputs.robot

*** Keywords ***

Merchant receive YellowPages mail
    Open Browser     ${quicksetupURL}   chrome
    Maximize Browser Window

Merchant Signup for Online Guide
    Input Text      ${placesLookup}     ${input_GooglePlaces}
    Sleep   2
    Click Element   ${ChooseGooglePlaces}
    Sleep   2
    Execute Javascript      ${scrolldown}
    Input Text      ${emailaddress}     ${input_emailaddress}
    Input Text      ${phonenumber}      +31612809787
#    Click Element   ${T&C}
    Click Element   ${Submit}

Merchant Show My page
    Sleep   2
    Execute Javascript      ${scrolldown}
    Sleep   2
    Click Element   ${ShowYourPage}
    Sleep   3
    Page Should Contain     ${Information}

#Merchant Clicks "I like to know more about it first"
#Merchant clicks "Need help?"

