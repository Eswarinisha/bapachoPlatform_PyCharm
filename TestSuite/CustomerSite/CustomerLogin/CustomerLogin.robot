*** Settings ***
Library  SeleniumLibrary

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Resources/Bapacho_Variables.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Resources/Bapacho_Credentials.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/CustomerLogin/CustomerLoginKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/CheckoutFunctionalities/CheckoutKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/CartFunctionalities/CartKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/CustomerMyAccount/MyAccountKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/SearchShops/SearchShopsKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/ShopPage/ShopPageKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/HomePage/HomePageKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/CheckoutFunctionalities/CouponsKeywords.robot

*** Test Cases ***

Test case 1
    #User creates account and check his welcome mail
        Set Tags    Basic Regression
        Open_MultishopHomePage
        Click_login
        Email_Registration
        Close Browser

#Check Welcome Mail by Customer
        OpenGmailCustomer
        Close Browser
        OpenGmailCustomerMailchimp
        Close Browser

Testcase_2
    #User must be able to login with newly registered email id
	    Set Tags    Basic Regression
	    Open_MultishopHomePage
        Click_login
        EmailLogin
        Close Browser

Test case 3
    #User must be directed to Facebook login page and able to login successfully
        Open_MultishopHomePage
        Click_login
        Click_FacebookLogin
        FacebookLogin
        Close Browser

Test case 6
     # User must be able to login using Facebook during checkout
         Open_MultishopHomePage
         Click_bakeries
         Change_CurrentLoction_BDP
         Type_To_Search_bakery
         BuiltIn.Sleep    2
         Select_a_bakery_from_list
         PDP_AddtoCart
         PDP_Click_Checkout
         Guestuser_FBLogin_in_Checkoutpage
         Cashpay_OrderNow
         Capture Page Screenshot
         Close Browser

Test case 7
   #User give forgot password and reset with new password
        Open_MultishopHomePage
        Click_login
        Click_ForgotPassword
        Close Browser
        OpenGmailForgotPaasword
        ResetPassword
        Close All Browsers
#User must be able to login with the new password
       Open_MultishopHomePage
       Click_login
       login_Using_RegisteredMailid
       Close Browser

Test case 8
    #User must not be able to login with old password
       Open_MultishopHomePage
       Click_login
       login_Using_RegisteredMailid_with_old_password
       Close Browser


