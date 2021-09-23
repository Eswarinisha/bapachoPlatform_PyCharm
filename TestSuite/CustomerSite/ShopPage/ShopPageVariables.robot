*** Variables ***

${clickbakersphonenumber}    (//div[contains(@class,'form-field')])[2]
${filterproductbycategory}    (//a[@onclick='slideToCategory(this);'])[2]
${i}    (//div[contains(@class,'title')])[3]
${Addtocart +}    (//span[contains(@onclick,'quickAddToCart(this)')])[1]
${Addtocart -}    (//span[contains(@onclick,'quickDeductFromCart(this)')])[1]

${producttitle}    (//div[contains(@onclick,'showProductInfo(this)')])[1]
${Addtocartproductlevel}    //button[@onclick='addToCart(this)']

${MarkFavouriteBakery}    //div[@onclick='markSupplierAsFavorite(this);']

${btn_Close}    (//button[contains(@type,'button')])[5]
${btn_Checkout}    //button[@id='toCheckoutBtn']
${closeloginpopup}    //button[@aria-label='Close']


${bakeryproductspage}    //a[contains(.,'Product')]
${bakerypageinformation}    //a[contains(.,'Information')]
${viewpickuphours}    (//a[contains(@role,'tab')])[2]
${viewdeliveryhours}    (//a[contains(@role,'tab')])[3]
${viewpickuphours}    (//a[contains(@role,'tab')])[2]
${viewdeliveryhours}    (//a[contains(@role,'tab')])[3]
