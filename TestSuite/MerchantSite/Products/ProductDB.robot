*** Settings ***

Library     DatabaseLibrary
Library     OperatingSystem

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/MerchantLogin/MerchantLoginKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/Products/ProductsKeywords.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Cred_Var/Bapacho_Credentials.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Resources/Bapacho_Credentials.robot


Suite Setup    Connect To Database  pymysql     ${DBname}   ${DBuser}   ${DBpassword}   ${DBhost}   ${DBport}
#Suite Teardown    Disconnect From Database

*** Variables ***
${DBname}       bapacho_multi
${DBuser}       bapacho_multi
${DBpassword}       Hy49ed3!
${DBhost}       127.0.0.1
${DBport}       3306

*** Test Cases ***

Create New Product Category
#    Open_MultishopHomePage
#    Login_as_MultishopMerchant
#    Create new product category
    ${output}=check if exists in database  select id from productCategories where title="sweets";
