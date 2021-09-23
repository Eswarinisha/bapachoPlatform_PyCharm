*** Variables ***

${FBLoginButton}    //a[contains(text(),'Login using Facebook')]
${Login_Button}    //span[contains(@class,'icon-account')]
${LoginSubmit_Button}    //button[@class='btn btn-template']
#Forgot_Password
${forgotpassword}    //a[@role='button'][contains(.,'Forgot password?')]
${newpassword}    name=password
${newpasswordcheck}    name=password_chk
#Facebook_Login
${Login_using_Facebook}    //a[contains(@class,'btn btn-info btn-lg btn-block')]
${FBemailid}    //input[@id='email']
${FBpassword}    //input[@id='pass']
${FBSubmit}    //button[@id='loginbutton']
${acceptcookieslabel}    Accept cookies from Facebook on this browser?
${fbcookiesaccept}    //*[@id="u_0_g"]

#Create_Account
${CreateAccount_Button}    //button[@onclick="openCleanAjaxModal('/pages/modals/ajax/createAccount.php')"]
${emailid}    //input[@id='name']
${Registerpassword}    (//input[@id='name'])[2]
${firstname}    //input[@id='firstname']
${lastname}    //input[@id='lastname']
${inputpassword}      //input[@id='password']
${inputpasswordcheck}     password_chk
${CreateAccount_SubmitButton}    //button[@onclick="$('#loginForm').submit()"]

#GMAIL

${inputgmailid}    identifierId
${gmailid_submit}    //span[contains(.,'Volgende')]
${inputgmailpassword}    //input[contains(@type,'password')]
${gmailpwd_submit}    //span[contains(.,'Volgende')]

${choosemail_EN}    (//span[contains(.,'Your account at Bapacho')])[2]
${choosemail_CZ}    //tr[contains(@id,':1u')]
${choosemail_RO}    (//tr[contains(@role,'row')])[1]

${choosemailcustomerorderreceived_EN}    //tr[contains(@id,':1m')]
${choosemailcustomermail_EN}    //span[@class='bqe'][contains(.,'Please activate your account at Bapacho')]
${choosemailcustomermailchimp_EN}    //span[@class='bqe'][contains(.,'Welcome to Bapacho!')]

${choosemailforgotpassword_EN}     //tr[contains(@id,':167')]
