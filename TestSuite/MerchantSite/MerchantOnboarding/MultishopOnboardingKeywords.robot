*** Settings ***
Library    SeleniumLibrary

Resource    MerchantOnboardingInputs.robot
Resource    MerchantOnboardingVariables.robot

Resource    /Users/eswarinishabalakrishnan/PycharmProjects/bapachoPlatform/TestSuite/MerchantSite/MyLocation/MyLocationKeywords.robot

*** Keywords ***
Step1 : Account
    Select Window    NEW
    Input Password    ${newpassword}    ${MultishopMerchantCredentials}[1]
    Sleep    2
    Input Password    ${newpasswordcheck}    ${MultishopMerchantCredentials}[1]
    Sleep    2
    Click Element    ${T&C_MerchantOnboarding}
    Sleep    2
    Capture Page Screenshot
    Select Window    CURRENT
    Sleep    2
    Click Element    ${Accept T&C}
    Sleep    2
    Click Element    ${Onboardingsavebutton}

TEMP:Step1
    Input Password    ${newpassword}    ${MultishopMerchantCredentials}[1]
    Sleep    2
    Input Password    ${newpasswordcheck}    ${MultishopMerchantCredentials}[1]
    Sleep    2
    Click Element    ${Accept T&C}
    Sleep    2
    Click Element    ${Onboardingsavebutton}

Step 2: Business information
    Sleep    4
    Input Text    ${newlocationaddress}    ${MerchantAddress_${Language}}[0]
    Input Text    ${newlocationZip}    ${MerchantAddress_${Language}}[2]
    Input Text    ${newlocationcity}    ${MerchantAddress_${Language}}[1]
    Input Text    ${newlocationphone}   ${MultishopMerchantCredentials}[2]
    Input Text    ${label_COC}    ${COC}
    Input Text    ${label_VAT}    ${VAT_${Language}}
    Select Radio Button    setupOnlinePayment    0
    # Input Text    account_holder_name    ${MultishopMerchantName}
    # Input Text    account_number    ${IBAN}
    #Click Element    tos
    Sleep    2
    Click Element    //button[contains(@type,'button')]

# Step 3: Ownership Information
    # Sleep    10
    # Click Element    //button[contains(.,'Add person')]
    # Sleep    2
    # Input Text    first_name    Representative
    # Input Text    last_name    1
    # Input Text    email    nisha@inqadigital.com
    # Input Text    phone    +31612809787
    # Input Text    relationship[title]    Representative
    # Input Text    address[line1]    Haarlem
    # Input Text    address[postal_code]    2011GP
    # Input Text    address[city]    Haarlem
    # Input Text    dob[day]    28
    # Input Text    dob[year]    1993
    # Click Element    executive
    # Sleep    2
    # #Click Element      (//button[@type='button'][contains(.,'Upload')])[1]
    # Select Frame    __privateStripeMetricsController0120
    # Choose File    (//input[contains(@type,'file')])[1]    C:\Users\Nisha\git\ta-bapacho\Bapacho\TestImages\2017-Scrum-Guide-US.pdf
    # Choose File    (//input[contains(@type,'file')])[2]    C:\Users\Nisha\git\ta-bapacho\Bapacho\TestImages\2017-Scrum-Guide-US.pdf
    # Choose File    (//input[contains(@type,'file')])[3]    C:\Users\Nisha\git\ta-bapacho\Bapacho\TestImages\2017-Scrum-Guide-US.pdf
    # Choose File    (//input[contains(@type,'file')])[4]    C:\Users\Nisha\git\ta-bapacho\Bapacho\TestImages\2017-Scrum-Guide-US.pdf
    # Click Element    //button[@type='button'][contains(.,'Save')]


Step 4 : Shop
    Sleep    2
    Textfield Should Contain    columns[title]    ${MultishopMerchantName}
    Textfield Should Contain    columns[address_1]    ${MerchantAddress_${Language}}[0]
    Textfield Should Contain    columns[zip]    ${MerchantAddress_${Language}}[2]
    Textfield Should Contain    columns[city]    ${MerchantAddress_${Language}}[1]
    Textfield Should Contain    columns[telephone_1]   ${MultishopMerchantCredentials}[2]
    Input Text    columns[region]    ${MerchantAddress_${Language}}[1]
    Input Text    columns[country]           ${MerchantAddress_${Language}}[3]
    Input Text    columns[phoneOrders]     ${MultishopMerchantCredentials}[2]
    Input Text    columns[emailOrders]    ${MultishopMerchantCredentials}[0]
    Select Checkbox    columns[notifications_phone]
    Select Checkbox    columns[notifications_email]

    Click Element    ${Onboardingsavebutton}

#Opening hours
     Sleep   2
     Input Text    ${OpeninghoursStartingtime}      06:30
     Sleep    2
     Click Element    ${OpeninghoursEndtime}
     Sleep    2
     Press Keys    ${OpeninghoursEndtime}   DELETE
     Sleep    2
     Input Text    ${OpeninghoursEndtime}    23:30

     Click Element   ${AddOpeninghoursLunchbreak}
     Sleep    2
     Click Element   ${OpeninghoursBreakStartingtime}
     Sleep    2
     Press Keys    ${OpeninghoursBreakStartingtime}   DELETE
     Sleep    2
     Input Text    ${OpeninghoursBreakStartingtime}     12:00
     Sleep    2
     Press Keys     ${OpeninghoursBreakEndtime}    DELETE
     Sleep    2
     Input Text    ${OpeninghoursBreakEndtime}    12:30

     Sleep    2
     Click Element    ${Openinghoursapplytoall}
     Execute JavaScript    ${scrolldown}
     Sleep    2
     Click Element       (//button[contains(.,'Save')])[2]
     Sleep    2

#Pickup
     Sleep    2
     Execute JavaScript    window.scrollTo(document.body.scrollHeight,0)
     Scroll Element Into View    acceptance_methods_pickup
     Select Checkbox    acceptance_methods_pickup
     Sleep    2
     Input Text    acceptance_methods[pickup][preparation_time]    02:00
     Press Keys    acceptance-methods-pickup-fee   ENTER
     Sleep    2
     #Select Checkbox    id=acceptance-methods-pickup-payment-Online
     Input Text    acceptance_methods[pickup][fee]    5.00
     Select Checkbox    ${setpickuponlinepayment}
     Select Checkbox    ${setpickupcashpayment}
     Select Checkbox    ${setpickupcardpayment}
     Execute JavaScript    window.scrollBy(1000,247)
      Sleep    2
     Click Element      ${CopyfromOpeningHours_pickup}
      Sleep    2
#     Select From List By Value    ${PickuphoursStartingtime}    06:30
#     Select From List By Value    ${PickuphoursEndtime}      23:30
#     Select From List By Value    ${PickuphoursBreakStartingtime}    12:00
#     Select From List By Value    ${PickuphoursBreakEndtime}    12:30
#     Click Element    ${pickupapplytoall}
      Execute JavaScript    ${scrolldown}
       Sleep    2
     Click Element    (//button[contains(.,'Save')])[3]

#Delivery
     Sleep    2
     Execute JavaScript    window.scrollTo(document.body.scrollHeight,0)
     Select Checkbox    acceptance_methods_deliver
     Input Text    ${deliveryprice}    10.00
     Input Text   ${minimumprice_for_delivery}     50.00
     Input Text    ${deliveryfreeabove}    75.00
     Input Text    ${deliverypreparationtime}       02:00
     Input Text    ${deliveryhandlingfee}        5.00
     Select Checkbox    ${setdeliveryonlinepayment}
     Select Checkbox    ${setdeliverycashpayment}
     Select Checkbox    ${setdeliverycardpayment}
     Execute JavaScript    window.scrollBy(1000,247)
      Sleep    4
     Click Element      ${CopyfromOpeningHours_delivery}
#     Select From List By Value   ${DeliveryhoursStartingtime}    06:30
#     Select From List By Value    ${DeliveryhoursEndtime}       23:30
#     Select From List By Value    ${DeliveryhoursBreakStartingtime}    12:00
#     Select From List By Value    ${DeliveryhoursBreakEndtime}    12:30
#     Click Element    ${deliveryapplytoall}
     Sleep    2
     Execute JavaScript    ${scrolldown}
      Sleep    2
     Click Element    (//button[contains(.,'Save')])[4]

#Shop Page Information
    Sleep    2
    Execute JavaScript    window.scrollBy(1000,247)
    Sleep    2
    Textfield Should Contain    ${newlocationshoptitle_${Language}}    ${MultishopMerchantName}
    Execute JavaScript    ${scrolldown}
    Click Element   //button[contains(.,'buttons.Done')]


Step 5 : Products
    Sleep    4
    Select From List By Value   category_id    1
    Sleep    2
    Click Element    (//span[contains(@class,'switchery switchery-small')])[1]
    Click Element    (//span[contains(@class,'switchery switchery-small')])[3]
    Sleep    1
    #Click Element    (//button[contains(.,'Choose product')])[20]
    Sleep    2
    Execute JavaScript    ${scrolldown}
    Click Element    ${Onboardingsavebutton}
    Sleep     2
    Click Element    //button[@type='button'][contains(.,'OK')]

Step 6 : Done
    Sleep    2
    Click Element    ${Onboardingsavebutton}

OpenGmailActivationmail
        Open Browser    http://gmail.com    ${Chrome}
        Maximize Browser Window
        Sleep     4
        Input Text    ${inputgmailid}    ${gmailcredentials}[0]
        Click Element    ${gmailid_submit}
        Sleep    4
        Input Password    ${inputgmailpassword}    ${gmailcredentials}[1]
        Sleep    2
        Click Element    ${gmailpwd_submit}
        Sleep    20
        Click Element    ${choosemerchantactivationmail_${Language}}
        BuiltIn.Sleep    2
        Capture Page Screenshot
        Click Element   ${clickActivationLink}


Check onboarded mail received
        Open Browser    http://gmail.com    ${Chrome}
        Maximize Browser Window
        Sleep     4
        Input Text    ${inputgmailid}    ${gmailcredentials}[0]
        Click Element    ${gmailid_submit}
        Sleep    5
        Input Password    ${inputgmailpassword}    ${gmailcredentials}[1]
        Sleep    5
        Click Element    ${gmailpwd_submit}
        Sleep    20
        Click Element    ${chooseMerchantWelcomemail_EN}
        BuiltIn.Sleep    2
        Capture Page Screenshot
        Page Should Contain Element     ${ClickMerchantLoginlink}
        Click Element   ${ClickMerchantLoginlink}
        Sleep    2
        Capture Page Screenshot

Check Mailchimp mail for Tool kit
        Open Browser    http://gmail.com    ${Chrome}
        Maximize Browser Window
        Sleep     4
        Input Text    ${inputgmailid}    ${gmailcredentials}[0]
        Click Element    ${gmailid_submit}
        Sleep    2
        Input Password    ${inputgmailpassword}    ${gmailcredentials}[1]
        Sleep    2
        Click Element    ${gmailpwd_submit}
        Sleep    20
        Click Element    ${chooseMailchimpToolkitmail_EN}
        BuiltIn.Sleep    2
        Capture Page Screenshot
        Page Should Contain Element     ${DownloadToolkit}
        Click Element   ${DownloadToolkit}
        Sleep    2
        Capture Page Screenshot

Check Mailchimp mail for View Dashboard
        Open Browser    http://gmail.com    ${Chrome}
        Maximize Browser Window
        Sleep     4
        Input Text    ${inputgmailid}    ${gmailcredentials}[0]
        Click Element    ${gmailid_submit}
        Sleep    2
        Input Password    ${inputgmailpassword}    ${gmailcredentials}[1]
        Sleep    2
        Click Element    ${gmailpwd_submit}
        Sleep    20
        Click Element    ${chooseMailchimpToolkitmail_EN}
        BuiltIn.Sleep    2
        Capture Page Screenshot
        Page Should Contain Element     ${ViewDashboard}
        Click Element   ${ViewDashboard}
        Sleep    2
        Capture Page Screenshot
