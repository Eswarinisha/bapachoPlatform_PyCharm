*** Settings ***
Library  SeleniumLibrary

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Resources/Bapacho_Variables.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Resources/Bapacho_Credentials.robot


*** Keywords ***
                    # Bakery Display Page

Type_To_Search_bakery
        # Click_bakeries
        # Click Element    ${search_button}
        Input Text    ${Searchbakeryinputfield}    ${MultishopMerchantName}
        Capture Page Screenshot
        Click Element          ${search_button}
        BuiltIn.Sleep    2

Type_To_Search_bakery_with_Online_payment
        Sleep    4
        Input Text      ${Searchbakeryinputfield}        ${MultishopMerchantName}
        BuiltIn.Sleep    2
        Click Element          ${search_button}
        BuiltIn.Sleep    2

Type_to_search_bakery_nonhappy
        Click Element    ${search_button}
        SeleniumLibrary.Input Text    ${Searchbakeryinputfield}    Hello
        Click Element          ${search_button}
        BuiltIn.Sleep    2
       Capture Page Screenshot

Clear_search_bakery_field
        Capture Page Screenshot
        Click Element    ${Clearsearchbakeryfield}

Change_CurrentLoction_BDP
        SeleniumLibrary.Input Text    ${changelocation_in_search}       ${Change_CurrentLoction_BDP_${Language}}
        BuiltIn.Sleep    6
        Click Element    ${Choose_Change_CurrentLoction_BDP_${Language}}
        BuiltIn.Sleep    2



Filter_Bakeries_by_Category
        Capture Page Screenshot
        Drag And Drop       ${filterbycategory_1}    ${filterbycategory_2}
        Click Element    ${filterbycategory_2}
        BuiltIn.Sleep    2
        Capture Page Screenshot

Unselect_Category_Filter
        Click Element       ${filterbycategory_3}
        Set Selenium Implicit Wait    10
        Capture Page Screenshot
        Click Element    ${filterbycategory_3}
        Set Selenium Implicit Wait    10
        Capture Page Screenshot


Filter_by_Range_from_my_location
        Capture Page Screenshot
        Drag And Drop By Offset   ${Range}      107    393

        BuiltIn.Sleep    1
        Capture Page Screenshot

Filter_by_Deliver
        Click Element    ${pickupcheckbox}
         BuiltIn.Sleep    2
        Capture Page Screenshot


Filter_by_pickup
        Click Element    ${deliverycheckbox}
         BuiltIn.Sleep    2
        Capture Page Screenshot

Filter_by_NowOpen
        Set Focus To Element    ${nowopencheckbox}
        Scroll Element Into View    ${nowopencheckbox}
        Click Element    ${nowopencheckbox}

Filter_by_OrderOnline
        Set Focus To Element    ${noworderonline}
        Click Element     ${nowopencheckbox}
        Click Element    ${noworderonline}

Select_bakery_using_multiple_filter
        Sleep    2
        Click Element          ${choosebakery_multiplefilter}
        Sleep    4

Select_a_bakery_from_list
        BuiltIn.Sleep    2
        Click Element    ${choosebakery}
         BuiltIn.Sleep    2
        Capture Page Screenshot
