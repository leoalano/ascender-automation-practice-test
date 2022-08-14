*** Variables ***
${EMAIL_CREATE_INPUT}           id=email_create
${EMAIL_INPUT}                  id=email
${PASSWORD_INPUT}               id=passwd
${SIGN_IN_BUTTON}               id=SubmitLogin
${FORGOT_PASS}                  //a[contains(.,'Forgot your password?')]
${TITLE_PAGE_LOGIN}             Login - My Store
${RETRIEVE_PASSWORD_BUTTON}     //span[contains(.,'Retrieve Password')]
${RETRIEVED_SUCCESS_MESS}       //p[contains(@class,'alert alert-success')]
${TITLE_ACCOUNT}                My account - My Store
${PASSWORD_EMPTY_VALIDATION}    //li[contains(.,'Password is required.')]
${EMPTY_PASSWORD}               #Sem atribuição de valor para variavel. TC#05-Login
