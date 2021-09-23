*** Settings ***
Library  SeleniumLibrary

Resource   DashboardVariables.robot

*** Keywords ***

Connect to Online payment
        Click Element    ${connect to online payment}
        BuiltIn.Sleep    2
        Capture Page Screenshot
        Go Back
        BuiltIn.Sleep    2
        Execute JavaScript    ${scrollup}

Print all Orders
    Sleep    2
    Click Element    ${printallorders}
    BuiltIn.Sleep    2
    Capture Page Screenshot

Order/Product Details
    BuiltIn.Sleep    2
    Capture Page Screenshot
    Click Element    ${order/product_details}
    BuiltIn.Sleep    2
    Capture Page Screenshot

View Tomorrow's Orders
    BuiltIn.Sleep    2
    Click Element   ${Calender_Tomorrow}
    Capture Page Screenshot
    BuiltIn.Sleep    2


