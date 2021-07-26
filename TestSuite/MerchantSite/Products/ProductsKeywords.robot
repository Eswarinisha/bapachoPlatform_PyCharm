*** Settings ***
Library  SeleniumLibrary

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Resources/Bapacho_Variables.robot
Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/Resources/Bapacho_Credentials.robot

*** Keywords ***
        #My Product Categories
Create new product category
     Click Element    ${MyproductCategories}
     Capture Page Screenshot
     Click Element     ${AddCategory}
     BuiltIn.Sleep    2
     Run Keyword And Continue On Failure    Input Text    titles[nl]    Sweets
     Run Keyword And Continue On Failure    Input Text    titles[be]    Sweets
     Run Keyword And Continue On Failure    Input Text    titles[it]    Sweets
     Run Keyword And Continue On Failure    Input Text    titles[cz]    Sweets
     Run Keyword And Continue On Failure    Input Text    titles[en]    Sweets
     Run Keyword And Continue On Failure    Input Text    titles[ro]    Sweets
     # Run Keyword If    '${Language}'=='NL'     Input Text    titles[nl]    ${ProductCategoryName}
     # Run Keyword If    '${Language}'=='DE'     Input Text    titles[be]    ${ProductCategoryName}
     # Run Keyword If    '${Language}'=='IT' or 'EN'     Input Text    titles[it]    ${ProductCategoryName}
     # Run Keyword If    '${Language}'=='CZ'     Input Text    titles[cz]    ${ProductCategoryName}
     # Run Keyword If    '${Language}'=='DE'    Input Text    titles[en]    ${ProductCategoryName}
     Capture Page Screenshot
     Click Button    ${btn_SubmitCategory}
     BuiltIn.Sleep    2
     Click Element    ${OK}
     BuiltIn.Sleep    2
     Capture Page Screenshot

Delete product category
     Sleep     2
     Execute Javascript    ${scrollup}
     Click Element    ${MyproductCategories}
     Capture Page Screenshot
     BuiltIn.Sleep    2
     Click Element    ${DeleteCategory}
     Capture Page Screenshot
     BuiltIn.Sleep    2
     Click Element    ${delete}
     Capture Page Screenshot
     BuiltIn.Sleep    2
     Click Element    ${OK}
     Page Should Not Contain    ${ProductCategoryName}
     Capture Page Screenshot

Delete product category Failing
     Sleep    2
     Execute Javascript    ${scrollup}
     Click Element    ${MyproductCategories}
     Run Keyword And Continue On Failure           Click Element   ${DeleteCategory_failing}
     Capture Page Screenshot

                    #My Products
Create new own product
    Click Element   ${MyProduct}
    Capture Page Screenshot
    Click Element    ${Addproduct}
    Capture Page Screenshot
    Sleep    2
    Input Text    ${ProductTitle_${Language}}   ${Productname}
    Input Text    ${Product_Subtitle_${Language}}      ${Productname}
    Input Text    ${Product_Description_${Language}}      ${Productname}
    Input Text    ${Product_Ingredients_${Language}}     ${Productingredients}
    # Input Text    ${Product_unit_${Language}}    ${ProductUnit}
    Execute JavaScript    ${scrollup}
    Click Element    ${CopyfromEnglish}
    Capture Page Screenshot
    Select From List By Label    ${choosecategoryname}      ${ProductCategoryName}
    Select From List By Value    ${feature product}      1
    Input Text    ${price}    ${PricewithVAT}
    Select From List By Value    ${productVAT}   1
    Capture Page Screenshot
    BuiltIn.Sleep    2
    Input Text   ${productAvailablefrom}      26-09-2020 06:45
    Input Text    ${productionquantity}     10
    Input Text    ${productpreparationtime}    01:00
    Click Element    //i[contains(@class,'far fa-clock')]
    Capture Page Screenshot
    Sleep    2
    Select Checkbox    productLocations[]
    Select From List By Value    ${chooseproductlocation}       1
    # Input Text    name=nutritions[11]    0.5
    #Select Checkbox    //input[@id='paymentMethod-5']      #Online payment
    #Scroll Element Into View    //input[contains(@value,'OK')]
    #Click Element    //input[contains(@value,'OK')]
    #Scroll Element Into View    //input[@id='paymentMethod-6']
    #Select Checkbox    //input[@id='paymentMethod-6']      #Cash payment
    #Select Checkbox    //input[@id='paymentMethod-7']      #card payment
    Capture Page Screenshot
    Click Element    ${btn_inputsubmit}
    BuiltIn.Sleep    5
    Wait Until Page Contains     ${Productname}
    Capture Page Screenshot



Create new own product without choosing location
    Click Element   ${MyProduct}
    Capture Page Screenshot
    Click Element    ${Addproduct}
    Capture Page Screenshot
    Sleep    2
    Input Text    ${ProductTitle_${Language}}   ${Productname}
    Input Text    ${Product_Subtitle_${Language}}      ${Productname}
    Input Text    ${Product_Description_${Language}}      ${Productname}
    Input Text    ${Product_Ingredients_${Language}}     ${Productingredients}
    Input Text    ${Product_unit_${Language}}    ${ProductUnit}
    Execute JavaScript    ${scrollup}
    Click Element    ${CopyfromEnglish}
    Capture Page Screenshot
    Select From List By Label    ${choosecategoryname}      ${ProductCategoryName}
    Select From List By Value    ${feature product}      1
    Input Text    ${price}    ${PricewithVAT}
    Select From List By Value    ${productVAT}   2
    Capture Page Screenshot
    BuiltIn.Sleep    2
    Input Text   ${productAvailablefrom}      26-09-2020 06:45
    Input Text    ${productionquantity}     10
    Input Text    ${productpreparationtime}    01:00
    Click Element    //i[contains(@class,'far fa-clock')]
    Capture Page Screenshot
    Sleep    2
    #Select Checkbox    productLocations[]
    Select From List By Value    ${chooseproductlocation}       1
    # Input Text    name=nutritions[11]    0.5
    #Select Checkbox    //input[@id='paymentMethod-5']      #Online payment
    #Scroll Element Into View    //input[contains(@value,'OK')]
    #Click Element    //input[contains(@value,'OK')]
    #Scroll Element Into View    //input[@id='paymentMethod-6']
    #Select Checkbox    //input[@id='paymentMethod-6']      #Cash payment
    #Select Checkbox    //input[@id='paymentMethod-7']      #card payment
    Capture Page Screenshot
    Click Element    ${btn_inputsubmit}
    BuiltIn.Sleep    5
    Capture Page Screenshot
    Page Should Contain    Error
    Click Element    ${OK}


Delete created own category product
     Click Element   ${MyProduct}
     Capture Page Screenshot
     BuiltIn.Sleep    2
     Click Element    ${Deleteproduct}
     Capture Page Screenshot
     Click Element    ${yes_delete}
     Capture Page Screenshot
     #Click 'i' for product information - old version
     Page Should Not Contain    ${Productname}

Add Zeelandia product from library
     Click Element   ${MyProduct}
     Capture Page Screenshot
     Click Element    ${Addzeelandiaproduct}
     BuiltIn.Sleep    2
     Capture Page Screenshot
     Click Element   ${setzeelandiaproduct}
     Capture Page Screenshot
     # Input Text    ${inputprice_zeelandiaproduct}    2.00
     Capture Page Screenshot
     Click Element    ${btn_inputsubmit}
     BuiltIn.Sleep    2
     Capture Page Screenshot

Edit Zeelandia product from library
     Click Element   ${MyProduct}
     Capture Page Screenshot
     Click Element    ${Editzeelandiaproduct}
     BuiltIn.Sleep    2
     Capture Page Screenshot
     Input Text    ${editzeelandiaproducttitle_${Language}}     Baker's own name
     Input Text    ${editzeelandiaproductsubtitle_${Language}}    Baker's own subtitle
    # Click Element    ${CopyfromEnglish}

Add Single choice Product option
    Input Text     ${options_category}      Size
    Click Element   ${Button_Add}
    Sleep   2
    Click Element   ${SingleChoice_Button_AddOption}
    Sleep   2
    Input Text      ${SingleChoice_ProductOption}       Small
    Clear Element Text   ${SingleChoice_ProductOptionprize}
    Sleep   2
    Input Text      ${SingleChoice_ProductOptionprize}      0.2
    Sleep   2
    Click Element      ${Button_AddOption}
    Sleep   2
    Input Text      ${SingleChoice_ProductOption}       Medium
    Clear Element Text   ${SingleChoice_ProductOptionprize}
    Sleep   2
    Input Text      ${SingleChoice_ProductOptionprize}      0.5
    Sleep   2
    Click Element      ${Button_AddOption}
    Sleep   2
    Input Text      ${SingleChoice_ProcductOption}       Large
    Clear Element Text   ${SingleChoice_ProductOptionprize}
    Sleep   2
    Input Text      ${SingleChoice_ProductOptionprize}      0.9
    Sleep   2
    Click Element      ${Button_AddOption}

Add Multiple choice Product option
    Click Element       ${RadioButton_MultipleChoice}
    Input Text     ${options_category}      Topping
    Click Element   ${Button_Add}
    Sleep   2
    Click Element   ${MultiChoice_Button_AddOption}
    Sleep   2
    Input Text      ${SingleChoice_ProcutOption}       Chocolate
    Clear Element Text   ${SingleChoice_ProdcutOptionprize}
    Sleep   2
    Input Text      ${SingleChoice_ProdcutOptionprize}      0.5
    Click Element      ${Button_AddOption}
    Sleep   2
    Input Text      ${SingleChoice_ProdcutOption}       Apple
    Clear Element Text   ${SingleChoice_ProdcutOptionprize}
    Click Element      ${Button_AddOption}
    Sleep   2
    Input Text      ${SingleChoice_ProdcutOptionprize}      0.9
    Sleep   2
    Click Element      ${Button_AddOption}
    Sleep   2
    Input Text      ${SingleChoice_ProdcutOption}       Banana
    Clear Element Text   ${SingleChoice_ProcutOptionprize}
    Sleep   2
    Input Text      ${SingleChoice_ProcutOptionprize}      1.5
    Sleep   2
    Click Element      ${Button_AddOption}

Save Zeelandia product from library
     Execute Javascript    ${scrolldown}
     Sleep    3
     Click Element   //input[@type='submit']
     BuiltIn.Sleep    2
     Page Should Contain    Baker's own name
     Page Should Contain    Baker's own subtitle
     BuiltIn.Sleep    2
     Capture Page Screenshot




