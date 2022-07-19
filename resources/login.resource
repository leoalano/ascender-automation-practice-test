*** Settings ***
Resource    ../page_objects/login_page.resource

*** Keywords ***
Type non-registered email in the email field
    Wait Until Element Is Visible        id=${CAMPO_EMAIL}      timeout=2s    
    Input Text                           id=${CAMPO_EMAIL}      ${EMAIL_NAO_CADASTRADO}

Type non-registered password in the password field
    Input Text                          id=${CAMPO_PASSWORD}    ${SENHA_NAO_CADASTRADA}
    
Check login error verification
    Wait Until Element Is Visible       locator=${VALIDA_AUTENTICACAO}
    Title Should Be                     ${TITULO_PAGINA_LOGIN}
    Page Should Contain Element         locator=${VALIDA_AUTENTICACAO}

Acess website automationpractice.com
    Maximize Browser Window
    Go To                               ${URL} 
    
Enter menu "Sign in"
    Click Element                       locator=${SIGN_IN}
    Title Should Be                     ${TITULO_PAGINA_LOGIN}
    Page Should Contain Element         locator=${VALIDA_PAGINA_LOGIN}
    Page Should Contain Element         locator=${VALIDA_PAGINA_LOGIN_2}

Fill form with email "xxxxxx@xxxxx.com" and password "1111"
    Wait Until Element is Visible   ${PASSWORD_INPUT}
    Wait Until Element is Visible   ${EMAIL_INPUT} 
    Input Text      ${EMAIL_INPUT}      ${TEST_EMAIL}
    Input password  ${PASSWORD_INPUT}   ${TEST_PASSWORD}  

Click on button "Sign In"
    Wait Until Element is Visible   ${SIGN_IN_BUTTON}
    Click Element                   ${SIGN_IN_BUTTON}

Verify if error message appears "There is 1 error"
    Wait Until Element is Visible   ${ERROR_MESSAGE}  

Type the registered email in the field "email address"
    Wait Until Element Is Visible   id=email
    Input Text                      id=email    ${EMAIL_CADASTRADO}

Type the registered Password in the field "Password"
    Input Text                      id=passwd   ${SENHA_CADASTRADA}

Verify successful login
    Title Should Be                 ${TITULO_ACCOUNT}