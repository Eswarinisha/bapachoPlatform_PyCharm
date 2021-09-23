*** Settings ***
Library    SeleniumLibrary

Resource    MyOrdersKeywords.robot
Resource    MyOrdersVariables.robot

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/MerchantTestConditions.robot


*** Test Cases ***

Testcase_1
#Decline Order
    Open_MultishopHomePage_Merchant
    Login as MultishopMerchant
    My Orders
    Decline the new order
    Close Browser

Testcase_2
#Refund and Partial Order
    Open_MultishopHomePage_Merchant
    Login as MultishopMerchant
    My Orders
    Refund order
    Partial Order Refund
    Close Browser

