*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***

Sales Agent portal
    Open SalesagentPortal
    Login as SalesAgent
    My merchant
    Search Merchant
    Close Browser

