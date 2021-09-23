*** Settings ***
Library    SeleniumLibrary

Resource   DashboardKeywords.robot
Resource   DashboardVariables.robot

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/MerchantTestConditions.robot

*** Test Cases ***

Testcase_1 #Connect to Online Payment
    Open_MultishopHomePage_Merchant
    Login as MultishopMerchant
    Connect to Online payment
    Close Browser

Testcase_2 #View, print and See orders for TODAY
    Open_MultishopHomePage_Merchant
    Login as MultishopMerchant
    Print all Orders
    Order/Product Details
    Close Browser

Testcase_3 #View, print and See orders for TOMORROW
    Open_MultishopHomePage_Merchant
    Login as MultishopMerchant
    View Tomorrow's Orders
    Print all Orders
    Order/Product Details
    Close Browser
