*** Settings ***
Library  SeleniumLibrary

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Resources/Bapacho_Variables.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Resources/Bapacho_Credentials.robot
Resource    ${CURDIR}/CustomerLoginKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/Checkout/CheckoutKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/CartFunctionalities/CartKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/CustomerMyAccount/MyAccountKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/SearchShops/SearchShopsKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/ShopPage/ShopPageKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/HomePage/HomePageKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/Checkout/CouponsKeywords.robot

*** Test Cases ***

 #FCS002	CUSTOMER DASHBOARD

Test case 11
    #User must login to view on the Account icon & edit his details
    Set Tags    Basic Regression
       Open MultishopHomePage
       Click_login
       EmailLogin
       Click_MyAccount
       Edit_Mydetails
       Close Browser

Test case 12
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

Test case 13
    #User must be able to view his favorites bakery by clicking on the favorites icon <3

        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_favourites
        View_favourites
        Close Browser

Test case 14
    #User must be able to view Favorites from My Account

        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_MyAccount
        Click_MyFavorites
        View_MyFavorites
        Close Browser

Test case 15
    #User can view his order history under My orders in My account

        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_MyAccount
        Click_Myorders
        View_MyOrders
        Close Browser

Test case 16
    #User must be able to Download order confirmation for the selected order

        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_MyAccount
        Click_Myorders
        View_MyOrders
        Download_OrderConfirmation
        Close Browser

Test case 17
     #User must be able to click repeat order and place the same

        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_MyAccount
        Click_Myorders
        View_MyOrders
        Repeat_Order
        Close Browser

Test case 18
    #On clicking logout, user must be logged out of site

        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_MyAccount
        Click_logout
        BuiltIn.Sleep    2
        Capture Page Screenshot
        Close Browser

Test case 19
    #User must be able to login with another credentials
    #CS010TC002	 #Login icon must appear in the header
        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_MyAccount
        Click_logout
        BuiltIn.Sleep    2
        Click_login
        EmailLogin
        Close Browser
