*** Variables ***

${Searchbakeryinputfield}    //input[contains(@id,'keyword')]
${Clearsearchbakeryfield}    //span[contains(@class,'icon-close')]
${changelocation_in_search}    user-address
${filterbycategory_1}    (//img[contains(@src,'200x200.jpg')])[4]
${filterbycategory_2}    (//img[contains(@src,'200x200.jpg')])[7]
${filterbycategory_3}     (//img[contains(@src,'200x200.jpg')])[5]
${Range}    //div[contains(@id,'range-slider')]
${pickupcheckbox}    //input[@value='pickup']
${deliverycheckbox}    //input[@value='deliver']
${nowopencheckbox}     now_open
${noworderonline}     order_online

${choosebakery_multiplefilter}    (//img[contains(@class,'media-object img-circle')])[3]
${choosebakery}    (//a[@class='btn btn-template btn-lg btn-lg-wide'])[1]

#Suggest shop
${btn_SuggestShop}  //a[contains(.,'buttons.SuggestAShop')]
${Shop_Name}    title
${Why_You_want_this_baker}      comments
${SuggestShop_mail}     email
${Submit}   //button[contains(.,'Submit')]
${HomePageButton}       //a[contains(.,'buttons.HomePage')]