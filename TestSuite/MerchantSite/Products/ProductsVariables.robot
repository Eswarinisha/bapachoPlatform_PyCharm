*** Variables ***

#My Categories
${MyproductCategories}    (//a[contains(@class,'list-group-item ')])[2]
${AddCategory}    //div[contains(@onclick,'showCategoryModal(null)')]

${btn_SubmitCategory}    //button[contains(@class,'btn btn-block btn-info-dark')]
${btn_SubmitCategory_NL}    //button[contains(.,'Submit')]
${btn_SubmitCategory_EN}    //button[contains(.,'Submit')]
${btn_SubmitCategory_IT}    //button[contains(.,'Invia')]
${btn_SubmitCategory_CZ}    //button[contains(.,'Odeslat')]
${btn_SubmitCategory_DE}    //button[contains(.,'Senden')]
${ProductCategoryName}      Beverages

${DeleteCategory}    //span[contains(@onclick,'assertDeleteCategory(this)')]

${DeleteCategory_failing}    //div[contains(@data-toggle,'tooltip')]
${delete}    (//button[contains(@type,'button')])[2]

${CopyfromEnglish}    //span[contains(@class,'btn-icon bp-strong bp-default-text-color')]

#My Products
${MyProduct}    (//a[contains(@class,'list-group-item ')])[3]
${Addproduct}   //a[@href='/nl/my-store/addProduct'][contains(.,'Add product')]
${Addzeelandiaproduct}    //a[@href='/nl/my-store/addzeelandiaproducts'][contains(.,'Add product from Library')]
${Editzeelandiaproduct}    (//span[contains(@class,'icon-edit-solid')])[1]
${options_category}      options_category
${Button_Add}       //input[@type='button'][contains(@id,'category')]
${SingleChoice_Button_AddOption}     //a[contains(.,'button.AddOption')]
${MultiChoice_Button_AddOption}     (//a[@type='button'][contains(.,'button.AddOption')])[2]
${SingleChoice_ProductOption}    (//input[contains(@type,'text')])[6]
${SingleChoice_ProductOptionprize}  (//input[contains(@type,'number')])[2]
${Button_AddOption}    (//input[contains(@type,'button')])[2]
${RadioButton_MultipleChoice}   options_category_multiple_choice

${choosecategoryname}    category_guid
${feature product}    name=columns[featured]
${price}    name=columns[price]
${productVAT}    columns[vat_id]
${productAvailablefrom}    name=columns[availableFrom]
${productionquantity}    name=columns[daily_production]
${productpreparationtime}    columns[preparation_time]
${productlocation}    productLocations[]
${chooseproductlocation}    name=columns[active]

${ProductTitle_EN}     name=columns_local[nl][title]
${ProductTitle_IT}     name=columns_local[it][title]
${ProductTitle_NL}     name=columns_local[en][title]
${ProductTitle_CZ}     name=columns_local[cz][title]
${ProductTitle_GR}     name=columns_local[gr][title]
${ProductTitle_DE}     name=columns_local[de][title]
${ProductTitle_ES}     name=columns_local[es][title]
${ProductTitle_RO}     name=columns_local[ro][title]
${ProductTitle_PT}     name=columns_local[pt][title]
${Product_Subtitle_NL}   name=columns_local[en][subtitle]
${Product_Subtitle_IT}   name=columns_local[it][subtitle]
${Product_Subtitle_EN}   columns_local[nl][subtitle]
${Product_Subtitle_CZ}   name=columns_local[cz][subtitle]
${Product_Subtitle_GR}   name=columns_local[gr][subtitle]
${Product_Subtitle_DE}   name=columns_local[de][subtitle]
${Product_Subtitle_ES}   name=columns_local[es][subtitle]
${Product_Subtitle_RO}   name=columns_local[ro][subtitle]
${Product_Subtitle_PT}   name=columns_local[pt][subtitle]
${Product_Subtitle_PL}   name=columns_local[pl][subtitle]

${Product_Description_NL}     name=columns_local[en][text]
${Product_Description_IT}     name=columns_local[it][text]
${Product_Description_EN}     columns_local[nl][text]
${Product_Description_CZ}     name=columns_local[cz][text]
${Product_Description_GR}     name=columns_local[gr][text]
${Product_Description_DE}     name=columns_local[de][text]
${Product_Description_ES}     name=columns_local[es][text]
${Product_Description_RO}     name=columns_local[ro][text]
${Product_Description_PT}     name=columns_local[pt][text]
${Product_Description_PL}     name=columns_local[pl][text]

${Product_Ingredients_NL}  name=columns_local[en][ingredientsText]
${Product_Ingredients_IT}  name=columns_local[it][ingredientsText]
${Product_Ingredients_EN}  columns_local[nl][ingredientsText]
${Product_Ingredients_CZ}  name=columns_local[cz][ingredientsText]
${Product_Ingredients_GR}  name=columns_local[gr][ingredientsText]
${Product_Ingredients_DE}  name=columns_local[de][ingredientsText]
${Product_Ingredients_ES}  name=columns_local[es][ingredientsText]
${Product_Ingredients_RO}  name=columns_local[ro][ingredientsText]
${Product_Ingredients_PT}  name=columns_local[pt][ingredientsText]
${Product_Ingredients_PL}  name=columns_local[pl][ingredientsText]

${Product_unit_NL}  columns[salesunit_value]
${Product_unit_IT}  name=columns_local[it][unit]
${Product_unit_EN}  columns_local[nl][unit]
${Product_unit_CZ}  columns[salesunit_value]
${Product_unit_GR}  name=columns_local[gr][unit]
${Product_unit_DE}  name=columns_local[de][unit]
${Product_unit_ES}  name=columns_local[es][unit]
${Product_unit_RO}  name=columns_local[ro][unit]
${Product_unit_PT}  name=columns_local[pt][unit]
${Product_unit_PL}  name=columns_local[pl][unit]

${Yes_NL}    Yes

${Deleteproduct}    (//button[@onclick='deleteProduct(this);'])[2]
${yes_delete}    //button[contains(@class,'swal2-confirm swal2-styled')]


${setzeelandiaproduct}    (//span[contains(@class,'switchery switchery-small')])[1]
${inputprice_zeelandiaproduct}    (//input[contains(@type,'number')])[1]

${editzeelandiaproducttitle_EN}    columns_local[nl][title]
${editzeelandiaproductsubtitle_EN}    columns_local[nl][subtitle]

${editzeelandiaproducttitle_CZ}    columns_local[en][title]
${editzeelandiaproductsubtitle_CZ}    columns_local[en][subtitle]

${editzeelandiaproducttitle_RO}    columns_local[en][title]
${editzeelandiaproductsubtitle_RO}    columns_local[en][subtitle]

${OK}   //button[@type='button'][contains(.,'OK')]