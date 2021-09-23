*** Settings ***
Library  SeleniumLibrary

Resource    MyAccountKeywords.robot
Resource    MyAccountVariables.robot

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/TestConditions.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/HomePage/HomePageKeywords.robot'
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/CustomerLogin/CustomerLoginKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/SearchShops/SearchShopsKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/ShopPage/ShopPageKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/CheckoutFunctionalities/Cart_CheckoutKeywords.robot

*** Test Cases ***

Testcase_1
    #User must login to view on the Account icon & edit his details
    Set Tags    Basic Regression
       Open MultishopHomePage
       Click_login
       EmailLogin
       Click_MyAccount
       Edit_Mydetails
       Close Browser

Testcase_2
    #While placing order, all the information must be populated correctly after checkout
        Set Tags    Sanity
        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery with Online payment
        Select a bakery from list
        PDP_AddtoCart
        Set Browser Implicit Wait    5
        PDP_Click_Checkout
        User_Fill_Checkoutpage
        Cashpay_OrderNow
        Close Browser

Testcase_3
    #User must be able to view his favorites bakery by clicking on the favorites icon <3

        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_bakeries
        Type_to_search_bakery
        Select_a_bakery_from_list
        Add_bakery_to_favourites
        Click_favourites
        View_favourites
        Close Browser

Testcase_4
    #User must be able to view Favorites from My Account

        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_MyAccount
        Click_MyFavorites
        View_MyFavorites
        Close Browser

Testcase_5
    #User can view his order history under My orders in My account

        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_MyAccount
        Click_Myorders
        View_MyOrders
        Close Browser

Testcase_6
    #User must be able to Download order confirmation for the selected order

        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_MyAccount
        Click_Myorders
        View_MyOrders
        Download_OrderConfirmation
        Close Browser

Testcase_7
     #User must be able to click repeat order and place the same

        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_MyAccount
        Click_Myorders
        View_MyOrders
        Repeat_Order
        Close Browser

Testcase_8
    #On clicking logout, user must be logged out of site

        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_MyAccount
        Click_logout
        BuiltIn.Sleep    2
        Capture Page Screenshot
        Close Browser

Testcase_9
    #User must be able to login with another credentials
    #Login icon must appear in the header
        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_MyAccount
        Click_logout
        BuiltIn.Sleep    2
        Click_login
        EmailLogin
        Close Browser
