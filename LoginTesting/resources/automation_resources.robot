*** Keywords ***
Acessar a home page do site automationpractice.com
    Go To                           ${URL}
    Maximize Browser Window
    Sleep   2s

Entrar na opção "Sign in" no cabeçalho da página
    Click Element                   locator=${SIGN_IN}
    Title Should Be                 ${TITULO_PAGINA_LOGIN}
    Page Should Contain Element     locator=${VALIDA_PAGINA_LOGIN}
    Page Should Contain Element     locator=${VALIDA_PAGINA_LOGIN1}
    Sleep   2s

Digitar o email cadastrado no campo "Email address"
    Wait Until Element Is Visible   id=email
    Input Text                      id=email    ${EMAIL_CADASTRADO}
    Sleep   2s

Digitar a senha cadastrada no campo "Password"
    Input Text                      id=passwd   ${SENHA_CADASTRADA}
    Sleep   2s

Clicar no botão "Sign in"
    Click Button                    id=SubmitLogin
    Sleep   2s

Verificação do sucesso do login
    Title Should Be                 ${TITULO_ACCOUNT}
    