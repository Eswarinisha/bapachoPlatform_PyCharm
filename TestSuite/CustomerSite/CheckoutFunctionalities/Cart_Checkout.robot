*** Settings ***
Library  SeleniumLibrary

Resource    Cart_CheckoutKeywords.robot
Resource    Cart_CheckoutVariables.robot

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/TestConditions.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/CustomerLogin/CustomerLoginKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/SearchShops/SearchShopsKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/ShopPage/ShopPageKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/CheckoutFunctionalities/Cart_CheckoutKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/HomePage/HomePageKeywords.robot

*** Test Cases ***

Testcase_1
    #User must be able to add produts(product information level)
        Open_MultishopHomePage
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery_with_Online_payment
        Select_a_bakery_from_list
        # Click 'i' for product information - old version
        Click_add_to_cart_button
        Close Browser

Testcase_2
    #User must be able to change the quantity of product using + and - buttons(cart level)
        Open_MultishopHomePage
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery_with_Online_payment
        Select_a_bakery_from_list
        PDP_AddtoCart
        PDP_Add_Delete_product_Quantity
        Capture Page Screenshot
        Close Browser

Testcase_3
    #User must be able to directly type the quantity of product in the box(cart level)
        Open_MultishopHomePage
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery_with_Online_payment
        Select_a_bakery_from_list
        PDP_AddtoCart
        Type_Product_quantity
        Capture Page Screenshot
        Close Browser

Testcase_4
    #User must be able to remove the products from cart with delete button(cart level)
        Open_MultishopHomePage
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery_with_Online_payment
        Select_a_bakery_from_list
        PDP_AddtoCart
        Delete_Product_Quantity
        Capture Page Screenshot
        Close Browser

Testcase_5
    #Pickup + Cash pay Order
        Open_MultishopHomePage
        Click_login
        EmailLogin
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery_with_Online_payment
        Select_a_bakery_from_list
        PDP_AddtoCart
        PDP_Click_Checkout
        User_Fill_Checkoutpage
        Cashpay_OrderNow
        Close Browser


Testcase_6
    #Delivery + Card pay order + Type product quanity during checkout
        Open_MultishopHomePage
        Click_login
        EmailLogin
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery_with_Online_payment
        Select_a_bakery_from_list
        PDP_AddtoCart
        PDP_Click_Checkout
        Type_Product_quantity_Checkout
        Choose_delivery
        User_Fill_Checkoutpage
        Cardpay_OrderNow
        Close Browser


Testcase_7
    #Read Terms & conditions
        Open_MultishopHomePage
        Click_login
        EmailLogin
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery_with_Online_payment
        Select_a_bakery_from_list
        PDP_AddtoCart
        PDP_Click_Checkout
        Click_Terms&Condition
        Close Browser

Testcase_8
    #Filter delivery,open now + Pickup + cash pay order
        Open MultishopHomePage
        Click_login
        EmailLogin
        Click_bakeries
        Change_CurrentLoction_BDP
        Filter_by_Deliver
        Filter_by_NowOpen
        Select_bakery_using_multiple_filter
        PDP_AddtoCart
        PDP_Click_Checkout
        User_Fill_Checkoutpage
        Cashpay_OrderNow
        Close Browser

Testcase_9
    #Without checking the Terms &Conditions check box, user must not be able to place order
        Open_MultishopHomePage
        Click_login
        EmailLogin
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery_with_Online_payment
        Select_a_bakery_from_list
        PDP_AddtoCart
        PDP_Click_Checkout
        Choose_delivery
        User_Fill_Checkoutpage
        Check_T&C_NonHappy
        Click_Submit_button
        Close Browser
        Pass Execution    "Non Happy test script - Failure is expected"

Testcase_10
    #Pickup+ Cash pay + Customer checks order received mail
    Set Tags    Basic Regression
        Open_Bapachosite
        Click_login
        EmailLogin
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery_with_Online_payment
        Select_a_bakery_from_list
        PDP_AddtoCart
        PDP_Click_Checkout
        Choose_delivery
        User_Fill_Checkoutpage
        Cashpay_OrderNow
        Customer_Order_received_Mail
        Close Browser


Testcase_11
    #Delivery + Card order + Add to calender
        Open_MultishopHomePage
        Click_login
        EmailLogin
        Get_CurrrentLocation_Home
        Select_a_bakery_from_list
        PDP_AddtoCart
        PDP_Click_Checkout
        Choose_delivery
        User_Fill_Checkoutpage
        Cardpay_OrderNow
        Add_to_Calender
        Close Browser

Testcase_12
    #Pickup + Card order
        Open_MultishopHomePage
        Click_login
        EmailLogin
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery_with_Online_payment
        Select_a_bakery_from_list
        PDP_AddtoCart
        PDP_Click_Checkout
        Choose_delivery
        User_Fill_Checkoutpage
        Cardpay_OrderNow
        Close Browser

Testcase_13
    #Delivery + Cash pay order + Add to calender
        Open_MultishopHomePage
        Click_login
        EmailLogin
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery_with_Online_payment
        Select_a_bakery_from_list
        PDP_AddtoCart
        PDP_Click_Checkout
        Choose_delivery
        User_Fill_Checkoutpage
        Cashpay_OrderNow
        Add_to_Calender
        Close Browser


#  FCS010	PAYMENT FAILURE


Testcase_14
    #Delivery + Online payment failure(clicked back button)
    Set Tags    Basic Regression
        Open_MultishopHomePage
        Click_login
        EmailLogin
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery_with_Online_payment
        Select_a_bakery_from_list
        PDP_AddtoCart
        PDP_Click_Checkout
        Choose_delivery
        User_Fill_Checkoutpage
        Onlinepay_Ordernow
        Click_back_while_Online_pay
        Close Browser


Testcase_15
    #Pickup + Online payment failure(clicked back button) + File complaint using Support form
        Open_MultishopHomePage
        Click_login
        EmailLogin
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery_with_Online_payment
        Select_a_bakery_from_list
        PDP_AddtoCart
        PDP_Click_Checkout
        User_Fill_Checkoutpage
        Onlinepay_Ordernow
        Click_back_while_Online_pay
        SupportForm
        Close Browser
        