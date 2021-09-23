*** Settings ***
Library    SeleniumLibrary

Resource     SurveyListingsKeywords.robot
Resource     SurveyListingsVariables.robot

*** Test Cases ***

Test_case_1
#Merchant Choose multiple checkboxes, add comment and submit the survey listing

    Open SurveyListing page
    Merchant fill in Survey page and Submit
    Receives Thankyou popup
    Close Browser

