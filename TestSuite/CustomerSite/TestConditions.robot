*** Variables ***

#Staging
${Language}     EN

#Browser
${Chrome}    chrome
${Firefox}    firefox
${Edge}    edge
${Safari}    safari

${scrollup}      window.scrollTo(document.body.scrollHeight,0)
${scrolldown}    window.scrollTo(0, document.body.scrollHeight)

${btn_SubmitCategory_EN}    //button[contains(.,'Submit')]
#URLs
#Multishop Homepage
${bapachoDev}    https://dev.bapacho.com/
${Multishop_URL_EN}    https://multishop.bapacho.com/nl

#Stagings URL
${Bapacho_URL_EN}     https://bapacho:bapacho@multishop.bapacho.com/
${Multishop_URL_NL}     https://staging.bapacho.nl/en
${Multishop_URL_IT}     https://bapacho:bapacho@staging.bapacho.it/en
${Multishop_URL_CZ}     https://bapacho:bapacho@staging.bapacho.cz/
${Multishop_URL_GR}     https://bapacho:bapacho@staging.bapacho.gr/en
${Multishop_URL_DE}     https://bapacho:bapacho@staging.bapacho.de/en
${Multishop_URL_ES}     https://bapacho:bapacho@staging.bapacho.es/en
${Multishop_URL_RO}     https://bapacho:bapacho@staging.bapacho.ro/en
${Multishop_URL_PT}     https://bapacho:bapacho@staging.bapacho.pt/en
${Multishop_URL_PL}     https://bapacho:bapacho@staging.bapacho.pl/en

*** Keywords ***

Open_Bapachosite
        Open Browser   ${Multishop_URL_${Language}}     ${Safari}
        Change_CurrentLocation_Home

Open_MultishopHomePage
        Open Browser   ${Multishop_URL_${Language}}     ${Chrome}
        Maximize Browser Window
        Sleep    2
        #Change_CurrentLocation_Home

testhomepage
        Open Browser   ${Multishop_URL_${Language}}     ${Chrome}
        Maximize Browser Window