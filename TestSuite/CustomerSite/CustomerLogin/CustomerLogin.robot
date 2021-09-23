*** Settings ***
Library  SeleniumLibrary

Resource    CustomerLoginKeywords.robot
Resource    CustomerLoginVariables.robot
Resource    CustomerCredentials.robot

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/TestConditions.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/HomePage/HomePageKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/HomePage/HomePageVariables.robot

*** Test Cases ***

Testcase_1
    #User creates account and check his welcome mail
    #Check Welcome Mail by Customer
        Set Tags    Basic Regression
        Open_MultishopHomePage
        Click_login
        Email_Registration
        Close Browser
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

Testcase_3
    #User must be directed to Facebook login page and able to login successfully
        Open_MultishopHomePage
        Click_login
        Click_FacebookLogin
        FacebookLogin
        Close Browser

Testcase_4
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

Testcase_5
    #User must not be able to login with old password
       Open_MultishopHomePage
       Click_login
       login_Using_RegisteredMailid_with_old_password
       Close Browser


