*** Settings ***
Library    SeleniumLibrary

Resource    MyTeamKeywords.robot
Resource    MyTeamVariables.robot

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/MerchantTestConditions.robot


*** Test Cases ***

Testcase_1
    #Create Manager
     Open_MultishopHomePage_Merchant
     Login as MultishopMerchant
     My Teams
