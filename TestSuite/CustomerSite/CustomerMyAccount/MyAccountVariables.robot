*** Variables ***
#Account
${submitaccountdetails}    (//button[contains(@type,'button')])[2]
${Fav_tab}    (//a[contains(@class,'list-group-item ')])[2]
${view fav}    (//div[contains(@class,'info')])[1]
${myorder_tab}    (//a[contains(@class,'list-group-item ')])[5]
${Managermyorder_tab}    //i[contains(@class,'fas fa-euro-sign fa-fw')]
${view myorder}    //a[contains(@class,'btn btn-template-inverse')]
${download_orderconfirmation}    //i[contains(@class,'far fa-file-pdf fa-fw')]
${repeatorder}    //button[contains(@onclick,'repeatOrder();')]
${logout}    //a[@href='/logout.php']



