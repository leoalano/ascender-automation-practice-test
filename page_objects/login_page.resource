*** Variables ***
${EMAIL_NO_REGISTERED}          christian00000@bloob.com
${PASSWORD_NO_REGISTERED}       0000000
${FAKE_PASSWORD}                FakerLibrary.passwd  #Senha Fake para o TC#03-Login
${EMPTY_PASSWORD}               #Sem atribuição de valor para variavel. TC#05-Login
${TITLE_PAGE_LOGIN}             Login - My Store
${VALIDATE_PAGE_LOGIN}          //h1[@class='page-heading'][contains(.,'Authentication')]
${VALIDATE_PAGE_LOGIN_2}        //h3[@class='page-subheading'][contains(.,'Create an account')]
${VALIDATION_AUTHENTICATION}    //li[contains(.,'Authentication failed.')]
${PASSWORD_EMPTY_VALIDATION}    //li[contains(.,'Password is required.')]  #TC05-Login
${EMAIL_FIELD}                  email
${FIELD_PASSWORD}               passwd
${BUTTON_SUBMIT_LOGIN}          SubmitLogin   
${ERROR_MESSAGE}                xpath://p[contains(.,'There is 1 error')]
${BROWSER}                      browser=chrome 
${SIGN_IN}                      //a[@class='login']
${PASSWORD_INPUT}               //input[@type='password']
${EMAIL_INPUT}                  //input[@id='email']
${SIGN_IN_BUTTON}               //span[contains(.,'Sign in')]
${TEST_EMAIL}                   xxx@xxxx.com
${TEST_PASSWORD}                123456 
${TITLE_PAGE_LOGIN}             Login - My Store
${EMAIL_REGISTERED}             christian.hernan@gmail.com
${PASSWORD_REGISTERED}          123456
${LOGIN}                        //span[contains(.,'Sign in')]
${TITLE_ACCOUNT}                My account - My Store
${VALIDATE_PAGE_LOGIN1}         //h3[@class='page-subheading'][contains(.,'Already registered?')]
${BLOUSE_ADD_TO_CART_BUTTON}    xpath=//a[@data-id-product = 2]
${SUCESS_ADD_TO_CART}           Product successfully added to your shopping cart