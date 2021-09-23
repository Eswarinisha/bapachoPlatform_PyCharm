*** Settings ***
Library    SeleniumLibrary

Resource    MyLocationKeywords.robot
Resource    MyLocationVariables.robot

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/MerchantTestConditions.robot

*** Test Cases ***

Testcase_1
    #Add new Location
    Open_MultishopHomePage_Merchant
    Login as MultishopMerchant
    Choose Plan
    Add New Location
    Open Location - my page
    Close Browser

Testcase_2
    #View my Locations
    Open_MultishopHomePage_Merchant
    Login as MultishopMerchant
    View My locations
    Close Browser





     
