*** Settings ***
Library    SeleniumLibrary

Resource    Bapacho_Variables.robot
Resource    Bapacho_Credentials.robot
Resource    CustomerSite_Keywords.robot
Resource    MultishopMerchantPortal_Keywords.robot
Resource    MultishopOnboarding_Keywords.robot
Resource    SalesAgent_Keywords.robot
Resource    CMS_Keywords.robot

Test Setup    Set Screenshot Directory    C:/Users/Nisha/git/ta-bapacho/Bapacho/BapachoScreenshots/Multishop Merchant Onboarding Screenshots


*** Test Cases ***


Multishop Merchant Onboarding_without Online Payment
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
    Open MultishopHomePage
    Login as MultishopMerchant
    #TEMP:Step1
    Step 2: Business information
    Step 4 : Shop
    Step 5 : Products
    Step 6 : Done
    Close Browser
    Check onboarded mail received
    Close Browser



