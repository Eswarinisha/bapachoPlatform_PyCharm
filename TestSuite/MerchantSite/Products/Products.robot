*** Settings ***
Library    SeleniumLibrary

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/MerchantLogin/MerchantLoginKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/Products/ProductsKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/MerchantCredentials.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/CustomerSite/CustomerCredentials.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/MerchantTestConditions.robot
Resource    TestConditions.robot

*** Test Cases ***

Test_case_1
    #Create product category
    #Delte product category with no products
    Open_MultishopHomePage_Merchant
    Login_as_MultishopMerchant
    Create new product category
    Delete product category
    Close Browser

Test_case_2
    #Create new product category
    #Create new product
    #Delete product category - Fail scenario
    Open_MultishopHomePage_Merchant
    Login_as_MultishopMerchant
    Create new Product Category
    Create new own product
    Delete product category Failing
    Close Browser

Test_case_3
    #Delete own product
    #Delete product category
    Open_MultishopHomePage_Merchant
    Login_as_MultishopMerchant
    Delete created own category product
    Delete product category
    Close Browser

Test_case_4
    #Add Zeelandia product from library
    Open_MultishopHomePage_Merchant
    Login_as_MultishopMerchant
    Add Zeelandia product from library
    Close Browser

Test_case_5
    #Edit Zeelandia product from library
    Open_MultishopHomePage_Merchant
    Login_as_MultishopMerchant
    Edit Zeelandia product from library
    Save Zeelandia product from library
    Close Browser

Test_case_6
    #Edit Zeelandia product from library with PRODUCT OPTIONS
    Open_MultishopHomePage_Merchant
    Login_as_MultishopMerchant
    Edit Zeelandia product from library
    Add Single choice Product option
    Add Multiple choice Product option
    Save Zeelandia product from library
    Close Browser


Test_case_7
    #Check Deleted product reflects in CMS
    Open_MultishopHomePage_Merchant
    Login_as_MultishopMerchant
    Create new product category
    Create new own product
    Delete created own category product
    Open_CMS
    View Product Name in CMS

Test_case_8
    #Create new own product without choosing location
    Open_MultishopHomePage_Merchant
    Login_as_MultishopMerchant
    Create new own product without choosing location
    Close Browser

Test_case_9
    #Check deleted category appears again
    Open_MultishopHomePage_Merchant
    Login_as_MultishopMerchant
    Create new Product Category
    Delete product category
    Create new own product
    Close Browser
