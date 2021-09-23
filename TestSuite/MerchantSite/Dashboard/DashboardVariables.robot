*** Variables ***

#Dashboard

${Onlinepaymentsettings}    (//a[contains(@class,'list-group-item ')])[7]
${connect to online payment}    //a[contains(@class,'btn btn-info btn-lg')]
${printallorders}    //a[contains(.,'Print all orders')]
${order/product_details}    //a[contains(.,'Order/product details')]
${Calender_Tomorrow}    (//a[contains(@class,'fc-day-grid-event fc-h-event fc-event fc-start fc-end')])[3]