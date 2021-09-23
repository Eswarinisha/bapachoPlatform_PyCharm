*** Settings ***
Library  SeleniumLibrary

Resource    TestConditions.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/CustomerCredentials.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/MerchantCredentials.robot
Resource    MerchantTestConditions.robot

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/CustomerLogin/CustomerLoginKeywords.robot
Resource    Cart_CheckoutKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/CartFunctionalities/CartKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/CustomerMyAccount/MyAccountKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/SearchShops/SearchShopsKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/ShopPage/ShopPageKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/HomePage/HomePageKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/CheckoutFunctionalities/CouponsKeywords.robot

*** Test Cases ***
Testcase_1
    #Creates new account to apply discount
        Open_MultishopHomePage
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery_with_Online_payment
        Select_a_bakery_from_list
        Add_coupon_to_empty_cart
        PDP_AddtoCart_below_cart_value
        Add_coupon_to_invalid_cart
        PDP_AddtoCart
        Add_incorrect_coupon
        Customer_Login_for_coupon
        EmailLogin
        Add_coupon_Again_for_loggedin_customer
        User_Fill_Checkoutpage
#       Creates_account_and_Add_Coupon_in_cart_with_existing_account
#       Creates_account_and_Add_Coupon_in_cart
#       Guestuser_Fill_Checkoutpage
        Onlinepay_Ordernow
        Close Browser


Testcase_2
      #Guest user gives email address for Newsletter and apply Discount code in Bapacho site
        Open_MultishopHomePage
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery_with_Online_payment
        Select_a_bakery_from_list
        PDP_AddtoCart
        Guest_user_adds_coupon_in_checkout_page
        Choose_delivery
        Guestuser_Fill_Checkoutpage
        Onlinepay_Ordernow
        Close Browser

