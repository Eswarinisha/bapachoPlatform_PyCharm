*** Settings ***
Library  SeleniumLibrary

Resource    MyLocationVariables.robot

*** Keywords ***

#My Location

Choose Plan
    Click Element    ${MyLocations}
    Run Keyword And Continue On Failure     Click Element    ${viewplans}
    Sleep    2
    Click Element    ${chooseplan}
    Sleep    2
    Select Checkbox   ${Accept T&C}
    Click Element    ${checkout}
    Sleep    3
    Input Text    ${cardnumber}    4242 4242 4242 4242
    Input Text    ${cardExpiry}     02/22
    Input Text    ${cvc}        123
    Input Text    ${billingname}    Nisha
    Sleep    2
    Click Element    ${savecard}
    Sleep    5

Add New Location
     Click Element    ${MyLocations}
     Click Element    ${addnewlocation}
     Sleep    2
     Input Text    ${newlocationtitle}     ${MultishopMerchantLoc1}
     Input Text    ${newlocationaddress}    ${MultishopLocation1Credentials}[3]
     Input Text    ${newlocationZip}    ${MultishopLocation1Credentials}[4]
     Input Text    ${newlocationcity}    ${MultishopLocation1Credentials}[5]
     Input Text    ${newlocationphone}    ${MultishopLocation1Credentials}[2]
     Click Element    ${unchooseproduct1}
     #Click Element    ${newlocationchooseproduct2}
     Execute Javascript    ${scrolldown}
     Sleep    2
     Click Element    ${btn_Save}

#Shop Address
    Sleep    2
    Textfield Should Contain    ${newlocationshoptitle_${Language}}    ${MultishopMerchantLoc1}
    #Textfield Should Contain    localized-it-title    ${MultishopMerchantLoc1}
    Textfield Should Contain    ${newlocationshopaddress1_${Language}}    ${MultishopLocation1Credentials}[3]
    #Textfield Should Contain    localized[it][address_1]    ${MultishopLocation1Credentials}[3]
    Textfield Should Contain    ${newlocationshopzip_${Language}}    ${MultishopLocation1Credentials}[4]
    #Textfield Should Contain    localized[it][zip]    ${MultishopLocation1Credentials}[4]
    Textfield Should Contain     ${newlocationshopcity_${Language}}     ${MultishopLocation1Credentials}[5]
    #Textfield Should Contain    localized[it][city]      ${MultishopLocation1Credentials}[5]
    Input Text    ${newlocationshopregion_${Language}}    Haarlem
    #Input Text    localized[it][region]    Haarlem
    Input Text    ${newlocationshopcountry_${Language}}    Netherlands
    #Input Text    localized[it][country]    Netherlands
    Input Text    ${newlocationemailorders}    ${MultishopLocation1Credentials}[0]
    Input Text    ${newlocationphoneorders}    ${MultishopLocation1Credentials}[2]
    Input Text    ${newlocationphone2}    ${MultishopLocation1Credentials}[2]
    Select Checkbox    ${enablenotificationbyphone}
    Select Checkbox    ${enablenotificationbyemail}
    Click Element    ${saveShopAddress}
    Sleep    2
    Click Element    ${OK}


#Products
     Execute JavaScript    ${scrollup}
     Click Element    ${products}
     Click Element    ${unchooseproduct1}
     Click Element    ${saveproducts}
     Sleep    2
     Click Element    ${OK}

#Opening hours
     Execute JavaScript    ${scrollup}
     Click Element    ${OpeningHours}
     Select Checkbox    ${OpeninghoursSetActive}
     Input Text    ${OpeninghoursStartingtime}      06:30
     Sleep    2
     Click Element    ${OpeninghoursEndtime}
     Sleep    2
     Clear Element Text    ${OpeninghoursEndtime}
     Sleep    2
     Press Keys    ${OpeninghoursEndtime}     CTRL+a+BACKSPACE
     Input Text    ${OpeninghoursEndtime}    23:30
     Press Keys    ${OpeninghoursEndtime}      ENTER
     Sleep    2
     Click Element   ${AddOpeninghoursLunchbreak}
     Sleep    2
     Input Text    ${OpeninghoursBreakStartingtime}     12:00
     Sleep    2
     Press Keys     ${OpeninghoursBreakEndtime}    CTRL+a+BACKSPACE
     Input Text    ${OpeninghoursBreakEndtime}    12:30
     Press Keys    ${OpeninghoursBreakEndtime}      ENTER
     Sleep    2
     Click Element    ${Openinghoursapplytoall}
     Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
     Click Element    ${saveOpeninginformation}
     Sleep    2
    Click Element    ${OK}

#Pickup
     Execute JavaScript    ${scrollup}
     Click Element    ${pickup}
     Select Checkbox    ${setpickupactive}
     Sleep    2
     Input Text    ${pickuppreparationtime}    02:00
     Input Text    ${pickupfee}    5.00
     Sleep    2
     Execute JavaScript    window.scrollBy(1000,247)
     Select Checkbox    ${PickuphoursSetActive}
     Input Text    ${PickuphoursStartingtime}    06:30
     Sleep    2
     Press Keys     ${PickuphoursEndtime}    CTRL+a+BACKSPACE
     Input Text    ${PickuphoursEndtime}    23:30
     Press Keys    ${PickuphoursEndtime}      ENTER
     Sleep    2
     Click Element    ${AddPickupLunchbreak}
     Sleep    2
     Input Text    ${PickuphoursBreakStartingtime}    12:00
     Sleep    2
     Press Keys     ${PickuphoursBreakEndtime}    CTRL+a+BACKSPACE
     Input Text    ${PickuphoursBreakEndtime}    12:30
     Press Keys    ${PickuphoursBreakEndtime}      ENTER
     Sleep    2
     Click Element    ${pickupapplytoall}
     #Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
     Select Checkbox        ${setpickuponlinepayment}
     Select Checkbox    ${setpickupcashpayment}
     Select Checkbox    ${setpickupcardpayment}
     Click Element    ${savepickupinformation}
     Sleep  2
     Click Element    ${OK}


#Delivery
     Execute JavaScript    ${scrollup}
     Click Element    ${delivery}
     Select Checkbox    ${setdeliveryactive}
     Input Text    ${deliveryprice}    10.00
     Input Text   ${minimumprice_for_delivery}    50.00
     Input Text    ${deliveryrange}    20
     Input Text    ${deliveryfreeabove}    75.00
     Input Text    ${deliverypreparationtime}       02:00
     Input Text    ${deliveryhandlingfee}        5.00
     Select Checkbox    ${PickuphoursSetActive}
     Input Text   ${DeliveryhoursStartingtime}    06:30
     Sleep    2
     Press Keys     ${DeliveryhoursEndtime}    CTRL+a+BACKSPACE
     Input Text    ${DeliveryhoursEndtime}    23:30
     Press Keys    ${DeliveryhoursEndtime}      ENTER
     Sleep    2
     Click Element    ${AddDeliveryLunchbreak}
     Sleep    2
     Input Text    ${DeliveryhoursBreakStartingtime}    12:00
     Sleep    2
     Press Keys     ${DeliveryhoursBreakEndtime}    CTRL+a+BACKSPACE
     Input Text    ${DeliveryhoursBreakEndtime}    12:30
     Press Keys    ${DeliveryhoursBreakEndtime}      ENTER
     Sleep    2
     Click Element    ${deliveryapplytoall}
     Sleep    2
     Select Checkbox    ${setdeliveryonlinepayment}
     Sleep    2
     Select Checkbox    ${setdeliverycashpayment}
     Sleep    2
     Select Checkbox    ${setdeliverycardpayment}
     Sleep    2
     Click Element    ${savedeliveryinformation}
     Sleep  2
     Click Element    ${OK}


#Shop Information
     Execute JavaScript    ${scrollup}
     Click Element    ${shoppageinformation}
     Execute JavaScript    window.scrollBy(1000,247)
     Sleep    2
     Page Should Contain       ${MultishopMerchantLoc1}
     Input Text    ${websitecolumn}    https://lefournil.nl/en/
     #Execute JavaScript    ${scrolldown}
     Sleep  2
     Click Element    ${saveshoppageinformation}
     Sleep  2
     Click Element    ${OK}


Open Location - my page
    Execute JavaScript    ${scrollup}
    Click Element    ${Mypage}
    Sleep    2
    Page Should Contain       ${MultishopMerchantLoc1}
    Capture Page Screenshot

View My locations
    Click Element    ${MyLocations}

Manager View My locations
     Click Element    ${ManagerMyLocations}

Filter location by Name
    Sleep    2
    Input Text    filter-title    +
    Click Element    ${viewshop}
    Sleep    2
    Capture Page Screenshot

Filter location by Option
    Sleep    2
    Select From List By Index    filter-options     1
    Click Element    ${viewshop}
    Sleep    2
    Capture Page Screenshot

