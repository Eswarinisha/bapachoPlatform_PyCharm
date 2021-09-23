*** Settings ***
Library    SeleniumLibrary

Resource   YellowPagesKeywords.robot
Resource   YellowPagesVariables.robot
Resource   YellowPagesInputs.robot

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/MerchantTestConditions.robot

*** Test Cases ***

Testcase_1
    Merchant receive YellowPages mail
    Merchant Signup for Online Guide
    Merchant Show My page
    Close Browser

#Testcase_2
#    Merchant receive YellowPages mail
#    Merchant Clicks "I like to know more about it first"
#    Merchant Signup for Online Guide
#
#Testcase_3
#    Merchant receive YellowPages mail
#    Merchant Clicks "I like to know more about it first"
#    Merchant clicks "Need help?"
#    Merchant Signup for Online Guide