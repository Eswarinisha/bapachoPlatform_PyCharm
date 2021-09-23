*** Variables ***

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


${support-fill in name_input}    Eswari Nisha
${support-fill in phone_input}    +31612809787
${support-fill in email_input}    nisha@inqadigital.com
${support-fill in comments_input}    "Test automation- Testing Support form in footer"