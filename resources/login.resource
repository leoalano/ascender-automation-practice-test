*** Keywords ***
Access homepage of automationpractice.com
    Go To                           ${URL}
    Maximize Browser Window
    Sleep   2s

Enter menu "Sign in" at the header
    Click Element                   locator=${SIGN_IN}
    Title Should Be                 ${TITULO_PAGINA_LOGIN}
    Page Should Contain Element     locator=${VALIDA_PAGINA_LOGIN}
    Page Should Contain Element     locator=${VALIDA_PAGINA_LOGIN1}
    Sleep   2s

Type the registered email in the field "email address"
    Wait Until Element Is Visible   id=email
    Input Text                      id=email    ${EMAIL_CADASTRADO}
    Sleep   2s

Type the registered Password in the field "Password"
    Input Text                      id=passwd   ${SENHA_CADASTRADA}
    Sleep   2s

Click on the "Sign In" Button
    Click Button                    id=SubmitLogin
    Sleep   2s

Verify successful login
    Title Should Be                 ${TITULO_ACCOUNT}
