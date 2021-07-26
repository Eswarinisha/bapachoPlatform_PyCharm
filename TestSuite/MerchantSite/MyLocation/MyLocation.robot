*** Settings ***
Library    SeleniumLibrary

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/MerchantLogin/MerchantLoginKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/Products/Products.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/MyOrders/MyOrdersKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/MyTeam/MyTeamKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Resources/Bapacho_Variables.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Resources/Bapacho_Credentials.robot

*** Test Cases ***

Testcase 1
#Refund and Partial Order
    Open MultishopHomePage
    Login as MultishopMerchant
    My Orders
    Refund order
    Partial Order Refund
    Close Browser

Testcase 2
#Filter Location and Orders
    Open MultishopHomePage
    Login as Manager
    Filter location by Name
    Go Back
    Filter location by Option
    My Orders
    Filter Orders by Period
    Filter Orders by Location
    Filter Orders by Status
    Accept and view Order
    Close Browser
     
