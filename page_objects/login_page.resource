*** Variables ***
${EMAIL_CREATE_INPUT}           email_create
${EMAIL_INPUT}                  email
${PASSWORD_INPUT}               passwd
${SIGN_IN_BUTTON}               SubmitLogin
${FORGOT_PASS}                  //a[contains(.,'Forgot your password?')]
${TITLE_PAGE_LOGIN}             Login - My Store
${RETRIEVE_PASSWORD_BUTTON}     //span[contains(.,'Retrieve Password')]
${RETRIEVED_SUCCESS_MESS}       //p[contains(@class,'alert alert-success')]
${TITLE_ACCOUNT}                My account - My Store
${PASSWORD_EMPTY_VALIDATION}    //li[contains(.,'Password is required.')]
${VALID_EMAIL}                  compra_teste@gmail.com
${VALID_PASSWORD}               12345
${INVALID_EMAIL}                xurupitas
${UNREGISTERED_EMAIL}           xurupitas@namanteiga.com.br
${INCORRECT_PASSWORD}           wrong_password
${EMPTY_PASSWORD}               #Sem atribuição de valor para variavel. TC#05-Login
