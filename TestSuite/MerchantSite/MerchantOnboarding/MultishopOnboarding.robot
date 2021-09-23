*** Settings ***
Library    SeleniumLibrary

Resource    MerchantOnboardingVariables.robot
Resource    MerchantOnboardingInputs.robot
Resource    MultishopOnboardingKeywords.robot

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CMS/CMS_Keywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/MerchantTestConditions.robot

*** Test Cases ***


E2E
    Open_CMS
    CMSAdmin_Login
    Click_Outlets/Stores
    Create_NewMultishopMerchant
    Click_Outlets/Stores
    Search MultishopBakery in CMS
    Send activation mail from CMS to Merchant
    Capture Page Screenshot
    Sleep    2
    OpenGmailActivationmail
    Step1 : Account
    Close All Browsers
    Open_MultishopHomePage_Merchant
    Login as MultishopMerchant
    #TEMP:Step1
    Step 2: Business information
    Step 4 : Shop
    Step 5 : Products
    Step 6 : Done
    Close Browser
    Check onboarded mail received
    Check Mailchimp mail for Tool kit
    Check Mailchimp mail for View Dashboard
    Close All Browsers



