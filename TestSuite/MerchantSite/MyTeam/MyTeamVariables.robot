*** Variables ***
#Team
${Myteam}    (//a[contains(@class,'list-group-item ')])[6]
${Addmanager}    //div[contains(@class,'btn btn-default')]
${managerfirstname}    firstname
${managerlastname}    lastname
${manageremail}    email
${location1checkbox}    (//input[contains(@type,'checkbox')])[1]
${location2checkbox}    (//input[contains(@type,'checkbox')])[2]
${btn_SaveManager}     //button[contains(@class,'btn btn-block btn-template')]

#Plan

${viewplans}    (//a[contains(@class,'btn btn-template')])[3]
${chooseplan}    //div[contains(@onclick,'supplier.showPlanCheckout(this)')]
${Accept T&C}    acceptTermsAndConditions
${checkout}    //button[contains(.,'Checkout')]

#AccountSettings
${accountsettings}    //a[contains(.,'Accoutn settings')]
${accountoptions}    //a[contains(.,'buttons.AccountOptions')]


#My Page
#${MyPage}        (//a[contains(@class,'list-group-item')])[9]
${ShowmoreInfo}    (//a[contains(@role,'button')])[2]


#Account option
${AccountOption}    //a[contains(@class,'list-group-item active')]


#My Settings
${Settings}    (//a[contains(@class,'list-group-item ')])[6]

