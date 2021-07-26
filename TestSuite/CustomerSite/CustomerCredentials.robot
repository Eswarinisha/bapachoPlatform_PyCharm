*** Variables ***

${Chrome}    chrome
${Firefox}    firefox
${Edge}    edge
${Safari}    safari

#CustomerSite

@{LoginCredentials}    testemailcustomer001@gmail.com    bapachocustomerpwd

@{GuestUser_EN}    Eswari Nisha    Balakrishnan    nisha@inqadigital.com    Justine de Gouwerhof,54     Haarlem     2011GP     Netherlands     +31612809787
@{GuestUser_NL}    Eswari Nisha    Balakrishnan    nisha@inqadigital.com    Justine de Gouwerhof,54     Haarlem     2011GP     Netherlands     +31612809787
@{GuestUser_IT}    Eswari Nisha    Balakrishnan    nisha+guestuser@inqadigital.com    Ruga Vecchia S.Giovanni, 603     Venezia     30125     Italy     +31612809787
@{GuestUser_CZ}    Eswari Nisha    Balakrishnan    nisha+guestuser@inqadigital.com   Laubova 1689/4     Vinohrady     130 00     Czechia     +31612809787
@{GuestUser_DE}     Eswari Nisha    Balakrishnan    nisha+guestuser@inqadigital.com    Flughafen  204     Vinohrady     60549     Frankfurt am Main     +31612809787
@{GuestUser_RO}     Eswari Nisha    Balakrishnan    nisha+guestuser@inqadigital.com    Calea Floreasca 111-113     Bucuresti     1455    Romania     +31612809787


@{RegisterCredentialsold}    nisha+automated8@inqadigital.com    Nisha's Automated Customer    8    bapachocustomer    bapachocustomer
@{RegisterCredentialsnew}    nisha+automated8@inqadigital.com    Nisha's Automated Customer    8    bapachocustomer    bapachocustomer
@{RegisterCredentialsCheckout}    automatedcustomer012@yopmail.com    bapachocustomerpwd

@{FBCredentials}    eswarinisha.b@gmail.com    Nani@25032016

${couponmailid}    nisha+automateddiscount1@inqadigital.com

${Change_CurrentLoction_BDP_EN}    haarlem
${Change_CurrentLoction_BDP_NL}    haarlem
${Change_CurrentLoction_BDP_CZ}    prague
${Change_CurrentLoction_BDP_IT}    venice
${Change_CurrentLoction_BDP_DE}    frankfurt
${Change_CurrentLoction_BDP_GR}    santorini
${Change_CurrentLoction_BDP_RO}    Bucharest

${Choose_Change_CurrentLoction_BDP_EN}     //a[contains(.,'Haarlem, Nederland')]
${Choose_Change_CurrentLoction_BDP_NL}     //a[contains(.,'Haarlem, Netherlands')]
${Choose_Change_CurrentLoction_BDP_CZ}    //a[contains(.,'Prague, Czechia')]
${Choose_Change_CurrentLoction_BDP_DE}    //a[contains(.,'Frankfurt, Deutschland')]
${Choose_Change_CurrentLoction_BDP_GR}    //a[contains(.,'Santorini, Greece')]
${Choose_Change_CurrentLoction_BDP_IT}    //a[contains(.,'Venice, VE, Italia')]
${Choose_Change_CurrentLoction_BDP_Ro}    (//strong[contains(.,'Bucharest')])[1]

