*** Settings ***
Library  SeleniumLibrary

Resource    HomePageInputs.robot
Resource    HomePageKeywords.robot
Resource    HomePageVariables.robot

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/TestConditions.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/CustomerLogin/CustomerLoginKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/CustomerLogin/CustomerLoginVariables.robot
*** Test Cases ***



Testcase_1
    #Home Screen_On clicking on the arrow near the search tab, current location must be populated

        Open_MultishopHomePage
        Get_CurrrentLocation_Home
        Close Browser

Testcase_footer_1
    #About us static page
         Open_MultishopHomePage
         About_us
         Close Browser
         Pass Execution    "Failure expected in local staging"

Testcase_footer_2
   #User must be able to use the website as Merchant
        Open_MultishopHomePage
        Login_As_Merchant_Footer
        Click_Logo_to_HomePage
        Click_bakeries
        Close Browser

Testcase_footer_3
    #T&C Footer
        Open_MultishopHomePage
        Terms_and_Condition
        Close Browser
        Pass Execution    "Failure expected in local staging"

Testcase_footer_4
    #Privacy statement in the footer
        Open_MultishopHomePage
        Privacy_Statement
        Close Browser
        Pass Execution    "Failure expected in local staging"

Testcase_footer_5
    #FAQ in the footer
        Open_MultishopHomePage
        FAQ
        Close Browser

Testcase_footer_6
    #Support form in the footer
        Open_MultishopHomePage
        Support_Footer
        Support_Form_Footer
        Close Browser

Testcase_footer_7
    #Blog in the footer
       Open_MultishopHomePage
       Blog
       Close Browser

Testcase_footer_8
    #Bapacho Facebook icon
        Open_MultishopHomePage
        Bapacho_FB_icon
        Capture Page Screenshot
        Close All Browsers

Testcase_footer_9
    #Bapacho Instagram icon
        Open_MultishopHomePage
        Bapacho_Instagram_icon
        Capture Page Screenshot
        Close All Browsers

Testcase_footer_10
    #View app in Playstore & App store
        Open_MultishopHomePage
        Click_Download_App-Playstore
        Select Window     MAIN
        Click_Download_App-Appstore
        Get Window Titles    browser=ALL
        Close All Browsers
