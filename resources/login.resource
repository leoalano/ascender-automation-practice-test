*** Settings ***
Resource    ../page_objects/login_page.resource

*** Keywords ***
Type non-registered email in the email field
    Wait Until Element Is Visible        id=${CAMPO_EMAIL}      timeout=2s    
    Input Text                           id=${CAMPO_EMAIL}      ${EMAIL_NAO_CADASTRADO}

Type registered email in the email field                   #Keyword registered email para o TC#03
    Wait Until Element Is Visible        id=${CAMPO_EMAIL}      timeout=2s    
    Input Text                           id=${CAMPO_EMAIL}      ${EMAIL_CADASTRADO}

Type non-registered password in the password field
    Input Text                          id=${CAMPO_PASSWORD}    ${SENHA_NAO_CADASTRADA}

Type fake non-registered password in the password field     #Keyword Senha Fake para o TC#03
    Input Text                          id=${CAMPO_PASSWORD}    ${SENHA_FAKE}

Type empty registered password in the password field        #Keyword Senha Vazia para o TC#03
    Input Text                          id=${CAMPO_PASSWORD}    ${SEM_SENHA}
    
Check login error verification
    Wait Until Element Is Visible       locator=${VALIDA_AUTENTICACAO}
    Title Should Be                     ${TITULO_PAGINA_LOGIN}
    Page Should Contain Element         locator=${VALIDA_AUTENTICACAO}

Check password error verification                  #Keyword Confirmacao Senha Vazia para o TC#03
    Wait Until Element Is Visible       locator=${VALIDA_PASSWORD}
    Title Should Be                     ${TITULO_PAGINA_LOGIN}
    Page Should Contain Element         locator=${VALIDA_PASSWORD}

Acess website automationpractice.com
    Maximize Browser Window
    Go To                               ${URL}
    Set Selenium Speed  0.3s   
    
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