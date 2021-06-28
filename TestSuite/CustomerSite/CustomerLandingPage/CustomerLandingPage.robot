*** Settings ***
Library  SeleniumLibrary

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Resources/Bapacho_Variables.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Resources/Bapacho_Credentials.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/CustomerLogin/CustomerLoginKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/Checkout/CheckoutKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/Cart/CartKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/CustomerMyAccount/MyAccountKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/SearchShops/SearchShopsKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/ShopPage/ShopPageKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/HomePage/HomePageKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/Checkout/CouponsKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/CustomerLandingPage/CustomerLandingPageKeywords.robot

*** Test Cases ***

Test case 62
    #User can view landing page and subscribe to newsletter
    #User can view bakeries and choose one
    #CS040TC003	User must be able to click and view app in Playstore and Appstore
    Set Tags    Basic Regression
        Open_Landingpage
        View_bakery_in_landingpage
        Subscribe_to_Newsletter
        Click_Download_App-playstore
        Select Window     MAIN
        Click_Download_App-Appstore
        Get Window Titles    browser=ALL
        Close All Browsers


Test case 63
    #Get checkout url when customer goes to homepage and click cart
    Set Tags    Basic Regression
        Open_MultishopHomePage
        Click_login
        EmailLogin
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery_with_Online_payment
        Select_a_bakery_from_list
        PDP_AddtoCart
        Click Image    ${BapachoLOGO}
        Click Element    ${carticon}
        Get Locations
        Close Browser


Test case 64
       #Home page_Open your shop
    Set Tags    Basic Regression
        testhomepage
        Open_your_shop
        Close Browser
