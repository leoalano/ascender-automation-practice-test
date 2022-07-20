*** Variables ***
${EMAIL_NAO_CADASTRADO}         christian00000@bloob.com
${SENHA_NAO_CADASTRADA}         0000000
${FAKE_PASSWORD}                FakerLibrary.passwd  #Senha Fake para o TC#03-Login
${EMPTY_PASSWORD}               #Sem atribuição de valor para variavel. TC#05-Login
${TITULO_PAGINA_LOGIN}          Login - My Store
${VALIDA_PAGINA_LOGIN}          //h1[@class='page-heading'][contains(.,'Authentication')]
${VALIDA_PAGINA_LOGIN_2}        //h3[@class='page-subheading'][contains(.,'Create an account')]
${VALIDA_AUTENTICACAO}          //li[contains(.,'Authentication failed.')]
${PASSWORD_EMPTY_VALIDATION}    //li[contains(.,'Password is required.')]  #TC05-Login
${CAMPO_EMAIL}                  email
${CAMPO_PASSWORD}               passwd
${BOTAO_SUBMIT_LOGIN}           SubmitLogin
${URL}                          http://www.automationpractice.com   
${ERROR_MESSAGE}                xpath://p[contains(.,'There is 1 error')]
${BROWSER}                      browser=chrome 
${SIGN_IN}                      //a[@class='login']
${PASSWORD_INPUT}               //input[@type='password']
${EMAIL_INPUT}                  //input[@id='email']
${SIGN_IN_BUTTON}               //span[contains(.,'Sign in')]
${TEST_EMAIL}                   xxx@xxxx.com
${TEST_PASSWORD}                123456 
${TITULO_PAGINA_LOGIN}          Login - My Store
${EMAIL_CADASTRADO}             christian.hernan@gmail.com
${SENHA_CADASTRADA}             123456
${LOGIN}                        //span[contains(.,'Sign in')]
${TITULO_ACCOUNT}               My account - My Store
${VALIDA_PAGINA_LOGIN1}         //h3[@class='page-subheading'][contains(.,'Already registered?')]
