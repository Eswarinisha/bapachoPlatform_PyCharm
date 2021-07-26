*** Settings ***
Library  SeleniumLibrary

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Resources/Bapacho_Variables.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Resources/Bapacho_Credentials.robot

*** Keywords ***

My Orders
    Click Element    ${myorder_tab}
     Sleep    2

Manager My Orders
    Click Element    ${Managermyorder_tab}
     Sleep    2

Filter Orders by Period
    Sleep    2
    Select From List By Index    type    1
    Sleep    2

Filter Orders by Location
    Sleep    2
    Select From List By Value    location    337
    Sleep    2

Filter Orders by Status
    Sleep    2
    Select From List By Index    status    1
    Sleep    2


Accept and view Order
    Click Element    ${Accept order}
    Sleep    2
    Click Element    ${OK}
    Sleep    2
    Click Element    ${viewOrder}
    Sleep    2
    Select From List By Value    ${orderstatus}     ${Preparing}
    Sleep    2
    Input Text    ${orderstatuscomment}       Automated Test Comment for preparing
    Click Element    ${saveorderstatus}
    Sleep    2
    Click Element    ${OK}
    Sleep    2
    Select From List By Value    ${paymentstatus}    ${PaidStatus}
    Click Element    ${savepaymentstatus}
    Sleep    2
    Click Element    ${OK}
    Sleep    2

Decline the new order
    Click Element    ${Declineorder}
    Sleep    2
    Click Element    ${delete}
    Sleep    2
    Click Element    ${OK}
    Sleep    2
    Click Element    ${viewOrder}
    Sleep    2
    Capture Page Screenshot

Refund order
    Click Element    ${Acceptorder}
    Sleep    2
    Click Element    ${OK}
    Sleep    2
    Click Element    ${viewOrder}
    Sleep    2
    Click Element    ${RefundorderButton}
    Sleep    2
    Select Radio Button     refund_type   total
    Input Text    ${refund_comment}    Automated full refund
    Click Element     ${proceedbutton}
    Sleep    2
    Page Should Contain    Order refunded
    #Click Element    ${UNDObutton}

Partial Order Refund
    # Click Element    ${Acceptorder}
    # Sleep    2
    # Click Element    ${OK}
    # Sleep    2
    Click Element    ${viewOrder}
    Sleep    2
    Click Element    ${RefundorderButton}
    Sleep     2
    Select Radio Button    refund_type    partial
    Sleep     2
    Input Text    ${Refundamount}        5.00
    Input Text    ${Partialrefundcomment}    Automated partial refund
    Click Element    ${proceedbutton}
    Sleep    2
    Page Should Contain    Order refunded
  # Click Element    ${UNDObutton}
