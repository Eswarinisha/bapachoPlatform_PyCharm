*** Settings ***
Library  SeleniumLibrary

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Resources/Bapacho_Variables.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Resources/Bapacho_Credentials.robot

*** Keywords ***

Click_MyAccount
        Click Element   ${btn_MyAccount}
        Capture Page Screenshot

Edit_Mydetails
        SeleniumLibrary.Input Text    ${fill_in_firstname}    ${GuestUser_${Language}}[0]
        SeleniumLibrary.Input Text    ${fill_in_lastname}    ${GuestUser_${Language}}[1]
        SeleniumLibrary.Input Text    #{fill_in_address_MyAccount}   ${GuestUser_${Language}}[3]
       # SeleniumLibrary.Input Text    columns[addressLine2]    ${GuestUser_${Language}}[4]
        SeleniumLibrary.Input Text      ${fill_in_postal}       ${GuestUser_${Language}}[5]
        SeleniumLibrary.Input Text     ${fill_in_city}    ${GuestUser_${Language}}[6]
        SeleniumLibrary.Input Text     ${fill_in_phone}    ${GuestUser_${Language}}[7]
        Capture Page Screenshot
        Set Focus To Element   ${btn_Save}
        Scroll Element Into View    ${btn_Save}
        Click Button    ${btn_Save}
        Capture Page Screenshot
        Click Element    ${submitaccountdetails}


Click_MyFavorites
        Click Element    ${Fav_tab}
        BuiltIn.Sleep    2
        Capture Page Screenshot

View_MyFavorites

        BuiltIn.Sleep    2
        Click Element    ${view fav}
        Capture Page Screenshot

Click_Myorders
        Click Element    ${myorder_tab}
        Capture Page Screenshot
         BuiltIn.Sleep    2

View_MyOrders
        Click Element    ${myorder_tab}
        BuiltIn.Sleep    2
        Capture Page Screenshot

View_MyOrders_Refunded Order
        Click Element    ${view myorder}
        Wait Until Page Contains    My order
        BuiltIn.Sleep    2
        Capture Page Screenshot


Download_OrderConfirmation
        # Set Focus To Element    //button[contains(.,'Download Confirmation')]

        Scroll Element Into View    ${download_orderconfirmation}
        BuiltIn.Sleep    2
        Capture Page Screenshot
        Click Element    ${download_orderconfirmation}
        #view downloaded file - YET TO DO

Repeat_Order
        # Set Focus To Element    //button[contains(.,'Repeat order')]
        Scroll Element Into View    ${repeatorder}
        Capture Page Screenshot
        Click Element    ${repeatorder}
        User_Fill_Checkoutpage
        Cashpay_OrderNow
        Capture Page Screenshot

Click_logout
        Capture Page Screenshot
        Capture Element Screenshot    ${logout}
        Click Element    ${logout}

Add_bakery_to_favourites
        Click Element   ${MarkFavouriteBakery}
        BuiltIn.Sleep    2
        Capture Page Screenshot