*** Variables ***
${URL}                          http://automationpractice.com/index.php
${SIGN_IN}                      //a[@class='login'][contains(.,'Sign in')]
${EMAIL_CADASTRADO}             christian.hernan@gmail.com
${SENHA_CADASTRADA}             123456
${TITULO_PAGINA_LOGIN}          Login - My Store
${VALIDA_PAGINA_LOGIN}          //h1[@class='page-heading'][contains(.,'Authentication')]
${VALIDA_PAGINA_LOGIN_2}        //h3[@class='page-subheading'][contains(.,'Create an account')]
${VALIDA_AUTENTICACAO}          //li[contains(.,'Authentication failed.')]
${CAMPO_EMAIL}                  email
${CAMPO_PASSWORD}               passwd
${BOTAO_SUBMIT_LOGIN}           SubmitLogin
${MY_CART}                      //a[@title="View my shopping cart"]
${TITULO_PAGINA_MY_CART}        Order - My Store
${CART_TITLE}                   cart_title