*** Variables ***
${BUTTON_SUBMIT_LOGIN}          SubmitLogin  #TC02-Cart item delete
${TITLE_ACCOUNT}                My account - My Store  #TC01-Successful Login
${FAKE_PASSWORD}                FakerLibrary.passwd
${EMPTY_PASSWORD}               #Sem atribuição de valor para variavel. TC#05-Login

${EMAIL_INPUT}                  id=email
${PASSWORD_INPUT}               id=passwd
${EMAIL_CREATE_INPUT}           id=email_create
${TITLE_PAGE_LOGIN}             Login - My Store
${VALIDATE_PAGE_LOGIN}          //h1[@class='page-heading'][contains(.,'Authentication')]
${VALIDATE_PAGE_LOGIN_2}        //h3[@class='page-subheading'][contains(.,'Create an account')]
${VALIDATION_AUTHENTICATION}    //li[contains(.,'Authentication failed.')]
${PASSWORD_EMPTY_VALIDATION}    //li[contains(.,'Password is required.')]
${EMAIL_FIELD}                  email
${FIELD_PASSWORD}               passwd
${ERROR_MESSAGE}                xpath://p[contains(.,'There is 1 error')]
${BROWSER}                      browser=chrome 
${SIGN_IN}                      //a[@class='login']  #Ver menu_page.resource
${SIGN_IN_BUTTON}               //span[contains(.,'Sign in')]
${LOGIN}                        //span[contains(.,'Sign in')]
${FORGOT_PASSWORD}              //a[contains(.,'Forgot your password?')]
${RETRIEVE_PASSWORD_BUTTON}     //span[contains(.,'Retrieve Password')]
${RETRIEVED_SUCCESS_MESS}       //p[contains(@class,'alert alert-success')]
${SUCESS_ADD_TO_CART}           Product successfully added to your shopping cart
${VALIDATE_PAGE_LOGIN1}         //h3[@class='page-subheading'][contains(.,'Already registered?')]
