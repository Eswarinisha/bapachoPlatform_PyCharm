*** Settings ***
Library    SeleniumLibrary

#CustomerSiteKeywords
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/CheckoutFunctionalities/Cart_CheckoutKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/Coupons/CouponsKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/CustomerLandingPage/CustomerLandingPageKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/CustomerLogin/CustomerLoginKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/CustomerMyAccount/MyAccountKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/GuestUser/GuestUserKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/HomePage/HomePageKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/SearchShops/SearchShopsKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/ShopPage/ShopPageKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/TestConditions.robot

#MerchantSiteKeywords
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/Dashboard/DashboardKeywords.robot
#Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/Manager/ManagerKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/MerchantLandingPage/MerchantLandingPageVariables.robot
#Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/MerchantLogin/MerchantLoginKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/MerchantOnboarding/MultishopOnboardingKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/MyLocation/MyLocationKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/MyOrders/MyOrdersKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/MyTeam/MyTeamKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/Products/ProductsKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/MerchantTestConditions.robot

#SalesAgentKeywords
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/SalesAgent/SalesAgent_Keywords.robot

#CMSKeywords
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CMS/CMS_Keywords.robot



*** Test Cases ***
Merchant onboarding
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
    Close All Browsers

Customer placing order by cash
    Open_Bapachosite
    Click_login
    EmailLogin
    Click_bakeries
    Change_CurrentLoction_BDP
    Type_To_Search_bakery with Online payment
    Select a bakery from list
    PDP_AddtoCart
    BuiltIn.Sleep    2
    PDP_Click_Checkout
    Choose_delivery
    User_Fill_Checkoutpage
    Cashpay_OrderNow
    Close Browser

Merchant Portal End to End
     Open_MultishopHomePage_Merchant
     Login as MultishopMerchant
     Connect to Online payment
     Print all Orders
     Order/Product Details
     Create new product category
     Delete product category
     Create new Product Category
     Create new own product
     Delete product category Failing
     Delete created own category product
     Delete product category
     Add Zeelandia product from library
     Choose Plan
     Add New Location
     Open Location - my page
     Close All Browsers
     Open_MultishopHomePage_Merchant
     Login as MultishopMerchant
     View My locations
     My Orders
     Accept and view Order
     My Teams
     OpenGmailManager
     Activate Manager
     Online payment Settings
     View Multishop plan
     Close Browser

Sales Agent Portal
    Open SalesagentPortal
    Login as SalesAgent
    Search Merchant
    Close Browser





