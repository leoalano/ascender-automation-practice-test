*** Variables ***
${BUTTON_SUBMIT_LOGIN}          SubmitLogin  #TC02-Cart item delete
${TITLE_ACCOUNT}                My account - My Store  #TC01-Successful Login
${FAKE_PASSWORD}                FakerLibrary.passwd     #TC03-Login with invalid passwd
${EMPTY_PASSWORD}               #Sem atribuição de valor para variavel. TC#05-Login
${EMAIL_INPUT}                  id=email    #TC01-Successful Login
${PASSWORD_INPUT}               id=passwd   #TC01-Successful Login
${VALIDATION_AUTHENTICATION}    //li[contains(.,'Authentication failed.')]  #TC02-Cart item delete
${TITLE_PAGE_LOGIN}             Login - My Store    #TC02-Cart item delete
${ERROR_MESSAGE}                xpath://p[contains(.,'There is 1 error')]   #TC04-Invalid email
${PASSWORD_EMPTY_VALIDATION}    //li[contains(.,'Password is required.')]   #TC05-Login with empty passwd
${FORGOT_PASSWORD}              //a[contains(.,'Forgot your password?')]    #TC06-Forgot Password
${RETRIEVE_PASSWORD_BUTTON}     //span[contains(.,'Retrieve Password')]     #TC06-Forgot Password
${RETRIEVED_SUCCESS_MESS}       //p[contains(@class,'alert alert-success')]  #TC06-Forgot Password