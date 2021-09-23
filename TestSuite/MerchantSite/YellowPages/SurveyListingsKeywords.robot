*** Settings ***
Library  SeleniumLibrary

Resource    SurveyListingsVariables.robot
*** Keywords ***

Open SurveyListing page
    Open Browser    ${SurveyListingsURL}    chrome
    Maximize Browser Window

Merchant fill in Survey page and Submit
    Click Element   ${Option1}
    Click Element   ${Option2}
    Click Element   ${Option3}
    Input Text      ${comment}      "Test comment for Survey Listings"
    Sleep   2
    Click Element   ${submit}

Receives Thankyou popup
    Sleep   2
    Page Should Contain     Thank you
    Click Element   ${OK}