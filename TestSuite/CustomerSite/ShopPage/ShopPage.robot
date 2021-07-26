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

    #FCS005	BAKERY DISPLAY PAGE

# Test case
    # #In the bakery display page, under the About Bakery, show more information link must be available

        # Open MultishopHomePage
        # Click_bakeries
        # Change_CurrentLoction_BDP
        # Type_To_Search_bakery with Online payment
        # Select a bakery from list
        # Capture show more information
        # Close Browser

Test case 1
    #Show Bakery Information
        Open_MultishopHomePage
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery_with_Online_payment
        Select_a_bakery_from_list
        # Click show more information - old version
        View_shop_page_information
        Close Browser

Test case 2
    #Phone number under other information must be clickable

        Open_MultishopHomePage
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery with Online payment
        Select_a_bakery_from_list
        Click_bakery_phone_number
        Close Browser

Test case 3
    #Filter products by product category
        Open_MultishopHomePage
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery_with_Online_payment
        Select_a_bakery_from_list
        Filter_Products_by_Category
        Close Browser

Test case 4
    #On clicking on "+" product must get added to cart(product level)
        Open_MultishopHomePage
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery with Online payment
        Select_a_bakery_from_list
        PDP_AddtoCart
        Capture Page Screenshot
        Close Browser

Test case 5
    #Click product and view Product information
        Open_MultishopHomePage
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery_with_Online_payment
        Select_a_bakery_from_list
       # Click 'i' for product information  -old version
        Click_Product_for_product_information
        Close Browser

Test case 6
    #Click product, view product options and choose single/multiple product options
        Open_MultishopHomePage
        Click_bakeries
        Change_CurrentLoction_BDP
        Type_To_Search_bakery_with_Online_payment
        Select_a_bakery_from_list
       # Click 'i' for product information  -old version
        Click_Product_for_product_information
        Choose option from Single choice Product option
        Choose option from Multiple choice Product option
        PDP_Click_Checkout
        Close Browser


