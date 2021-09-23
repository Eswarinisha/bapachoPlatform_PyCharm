*** Settings ***
Library    SeleniumLibrary

Resource    ManagerKeywords.robot

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/MerchantTestConditions.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/MyLocation/MyLocationKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/MyOrders/MyOrdersVariables.robot

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/MerchantTestConditions.robot

*** Test Cases ***

Testcase_1
#Manager End to End
    Open_MultishopHomePage_Merchant
    Login as Manager
    Manager View My locations
    Filter location by Name
    Go Back
    Filter location by Option
    Manager My Orders
    Filter Orders by Period
    Filter Orders by Location
    Filter Orders by Status
    Accept and view Order
    Close Browser
