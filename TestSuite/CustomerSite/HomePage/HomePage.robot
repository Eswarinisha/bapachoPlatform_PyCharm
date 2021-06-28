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

Test case 20
    #Home Screen_User must be able to type the location to find his bakery needed
     Set Tags    Basic Regression
        Open_MultishopHomePage
        Change_CurrentLocation_Home
        BuiltIn.Sleep    2
        Change_CurrentLoction_BDP
        Close Browser

Test case 21
    #Home Screen_On clicking on the arrow near the search tab, current location must be populated

        Open_MultishopHomePage
        Get_CurrrentLocation_Home
        Close Browser

Test case footer_1
    #About us static page
         Open_MultishopHomePage
         About_us
         Close Browser
         Pass Execution    "Failure expected in local staging"

Test case footer_2
   #User must be able to use the website as Merchant
        Open_MultishopHomePage
        Login_As_Merchant_Footer
        Click_bakeries
        Close Browser

Test case footer_3
    #T&C Footer
        Open_MultishopHomePage
        Terms_and_Condition
        Close Browser
        Pass Execution    "Failure expected in local staging"

Test case footer_4
    #Privacy statement in the footer
        Open_MultishopHomePage
        Privacy_Statement
        Close Browser
        Pass Execution    "Failure expected in local staging"

Test case footer_5
    #FAQ in the footer
        Open_MultishopHomePage
        FAQ
        Close Browser

Test case footer_6
    #Support form in the footer
        Open_MultishopHomePage
        Support_Footer
        Support_Form_Footer
        Close Browser

Test case footer_7
    #Blog in the footer
       Open_MultishopHomePage
       Blog
       Close Browser

Test case footer_8
    #Bapacho Facebook icon
        Open_MultishopHomePage
        Bapacho_FB_icon
        Capture Page Screenshot
        Close All Browsers

Test case footer_9
    #Bapacho Instagram icon
        Open_MultishopHomePage
        Bapacho_Instagram_icon
        Capture Page Screenshot
        Close All Browsers

Test case footer_10
    #View app in Playstore & App store
        Open_MultishopHomePage
        Click_Download_App-playstore
        Select Window     MAIN
        Click_Download_App-Appstore
        Get Window Titles    browser=ALL
        Close All Browsers
