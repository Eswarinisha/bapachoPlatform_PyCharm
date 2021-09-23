*** Variables ***

#My Orders
${MyOrders}    (//a[contains(@class,'list-group-item ')])[8]

${Acceptorder}    (//a[contains(@role,'button')])[4]
${viewOrder}    (//a[@class='btn btn-template-inverse btn-lg btn-lg-wide'])[1]
${Declineorder}    (//a[contains(@role,'button')])[5]
${orderstatus}    orderStatus
${orderstatuscomment}    status_comment
${OpenOrder}   (//span[contains(.,'new')])[1]
${CancelOrder}    cancelled
${Preparing}    preparing
${Readyfordelivery}    readyForDelivery
${Readyforpickup}    readyForPickup
${Delivered}    Delivered
${Pickedup}    pickedUp
${LabelRefund}    refunded
${RefundStatus}       refunded
${RefundOrderButton}     refundOrderButton
${Refundamount}     partial_price
${refund_comment}    refund_comment
${Partialrefundcomment}    refund_comment
${proceedbutton}    //button[contains(@type,'submit')]
${Input REFUND}    //input[contains(@class,'swal2-input')]
${RefundButton}    //button[@type='button'][contains(.,'Refund')]


${paymentstatus}    lastStatus
${PaidStatus}    paid
${btn_OrderStatusSubmit}    (//button[contains(.,'Submit')])[1]
${btn_PaymentStatusSubmit}    //button[@onclick='setOrderLastStatus(this);']
${Cancellation_StatusComment}    Automated order cancellation
${OrderFullfilment_StatusComment}    Automated Order fulfil

${saveorderstatus}    //button[contains(@onclick,'setOrderStatus(this);')]
${savepaymentstatus}    //button[contains(@onclick,'setOrderLastStatus(this);')]
