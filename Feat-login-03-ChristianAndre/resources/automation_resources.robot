*** Keywords ***
Acessar a home page do site automationpractice.com
    Go To                               ${URL}
    Maximize Browser Window    
Entrar na opção Sign in no cabeçalho da página   
    Wait Until Page Contains Element    locator=${SIGN_IN}  timeout=2s
    Click Element                       locator=${SIGN_IN}
    Title Should Be                     ${TITULO_PAGINA_LOGIN}
    Page Should Contain Element         locator=${VALIDA_PAGINA_LOGIN}
    Page Should Contain Element         locator=${VALIDA_PAGINA_LOGIN_2}
Digitar o email não cadastrado no campo Email address
    Wait Until Element Is Visible        id=${CAMPO_EMAIL}
    Input Text                           id=${CAMPO_EMAIL}    ${EMAIL_NAO_CADASTRADO}
Digitar a senha não cadastrada no campo Password
    Input Text                          id=${CAMPO_PASSWORD}  ${SENHA_NAO_CADASTRADA}
Clicar no botão Sign in
    Click Button                        id=${BOTAO_SUBMIT_LOGIN}
Verificação de falha no login
    Wait Until Element Is Visible       locator=${VALIDA_AUTENTICACAO}
    Title Should Be                     ${TITULO_PAGINA_LOGIN}
    Page Should Contain Element         locator=${VALIDA_AUTENTICACAO}