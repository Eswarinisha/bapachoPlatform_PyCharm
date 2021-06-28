*** Settings ***
Library  SeleniumLibrary

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Resources/Bapacho_Variables.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Resources/Bapacho_Credentials.robot

*** Keywords ***

                        # Product Display page
Capture_show_more_information
      Capture Element Screenshot     ${ShowmoreInfo}

# Click show more information

        # Execute JavaScript    window.scrollTo(155,869)
        # Scroll Element Into View    ${ShowmoreInfo}
        # Set Focus To Element    ${ShowmoreInfo}
        # Capture Element Screenshot     ${ShowmoreInfo}
        # Capture Page Screenshot
        # Click Element    ${ShowmoreInfo}
        # BuiltIn.Sleep    2
        # Capture Page Screenshot
        # Set Browser Implicit Wait    5
        # Click Element  ${btn_Close}

View_shop_page_information
        Sleep    2
        Click Element    ${bakerypageinformation}
        Sleep    2
        Capture Page Screenshot
        Click Element    ${viewpickuphours}
        Sleep    2
        Capture Page Screenshot
        Click Element    ${viewdeliveryhours}
        Sleep    2
        Capture Page Screenshot
        Click Element    ${bakeryproductspage}
        Sleep    2
        Capture Page Screenshot

Click_bakery_phone_number
        Sleep    2
        Click Element    ${bakerypageinformation}
        Sleep    2
        Capture Page Screenshot
        Click Element    ${clickbakersphonenumber}
        BuiltIn.Sleep    5
        Capture Page Screenshot

# Click 'i' for product information
        # Click Element    ${i}
        # # Click Element    (//i[contains(@class,'fas fa-info fa-fw')])[1]
        # BuiltIn.Sleep    2
        # Capture Page Screenshot
        # Execute JavaScript    ${scrolldown}
        # Capture Page Screenshot

Click_Product_for_product_information
         Sleep    2
         Click Element    ${producttitle}
         Capture Page Screenshot

Filter_Products_by_Category
        Capture Page Screenshot
        Click Element    ${filterproductbycategory}
        BuiltIn.Sleep    2
        Capture Page Screenshot


Click_add_to_cart_button
         Sleep    2
         Click Element    ${producttitle}
         Capture Page Screenshot
         Click Element    ${Addtocartproductlevel}
         BuiltIn.Sleep    2
         Capture Page Screenshot
         Page Should Contain Element    ${Addtocart -}

