*** Variables ***
${URL}                          http://automationpractice.com/index.php
${SIGN_IN}                      //a[@class='login'][contains(.,'Sign in')]
${EMAIL_NAO_CADASTRADO}         christian00000@bloob.com
${SENHA_NAO_CADASTRADA}         0000000
${TITULO_PAGINA_LOGIN}          Login - My Store
${VALIDA_PAGINA_LOGIN}          //h1[@class='page-heading'][contains(.,'Authentication')]
${VALIDA_PAGINA_LOGIN_2}        //h3[@class='page-subheading'][contains(.,'Create an account')]
${VALIDA_AUTENTICACAO}          //li[contains(.,'Authentication failed.')]
${CAMPO_EMAIL}                  email
${CAMPO_PASSWORD}               passwd
${BOTAO_SUBMIT_LOGIN}           SubmitLogin
