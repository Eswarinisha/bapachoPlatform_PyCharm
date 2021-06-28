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

  #ORDER FULFILLMENT

Test case 4
    #User must be able to login during checkout

         Open_MultishopHomePage
         Click_bakeries
         Change_CurrentLoction_BDP
         Type_To_Search_bakery_with_Online_payment
         BuiltIn.Sleep    2
         Select_a_bakery_from_list
         PDP_AddtoCart
         PDP_Click_Checkout
         Guestuser_Login_in_Checkoutpage
         BuiltIn.Sleep    2
         Cashpay_OrderNow
         Close Browser

Test case 5
    #User must be able to register during checkout
         Open_MultishopHomePage
         Click_bakeries
         Change_CurrentLoction_BDP
         Type_To_Search_bakery_with_Online_payment
         BuiltIn.Sleep    2
         Select_a_bakery_from_list
         PDP_AddtoCart
         PDP_Click_Checkout
         Guestuser_CreateAccount_in_Checkoutpage
         BuiltIn.Sleep    2
         Cashpay_OrderNow
         Close Browser


Test case 9
    #Guest User must not be able to add bakeries to favorites

          Open_MultishopHomePage
          Click_bakeries
          Change_CurrentLoction_BDP
          Type_To_Search_bakery_with_Online_payment
          Select_a_bakery_from_list
          Guestuser_Click_favourites
          Close Browser

Test case 10
    #Guest User must be able to checkout and place order

         Open_MultishopHomePage
         Click_bakeries
         Change_CurrentLoction_BDP
         Type_To_Search_bakery_with_Online_payment
         Select_a_bakery_from_list
         PDP_AddtoCart
         Set Browser Implicit Wait    5
         PDP_Click_Checkout
         Guestuser_Fill_Checkoutpage
         Cashpay_OrderNow
         Close Browser
