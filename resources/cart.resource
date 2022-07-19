*** Settings ***
Resource    ../page_objects/cart_page.resource

*** Keywords ***
Access automationpractice.com home page
    Maximize Browser Window
    Go To                               ${URL}       

Enter the Sign in option in the page header   
    Click Element                       locator=${SIGN_IN}
    Title Should Be                     ${TITULO_PAGINA_LOGIN}
    Page Should Contain Element         locator=${VALIDA_PAGINA_LOGIN}
    Page Should Contain Element         locator=${VALIDA_PAGINA_LOGIN_2}

Enter the registered email in the Email address field
    Wait Until Element Is Visible        id=${CAMPO_EMAIL}      timeout=2s    
    Input Text                           id=${CAMPO_EMAIL}      ${EMAIL_CADASTRADO}

Enter the password registered in the Password field
    Input Text                          id=${CAMPO_PASSWORD}    ${SENHA_CADASTRADA}

Click on the Sign in button
    Click Button                        id=${BOTAO_SUBMIT_LOGIN}

Click on My Cart Element
    Wait Until Element Is Visible       locator=${MY_CART}
    Click Element                       locator=${MY_CART}
    Title Should Be                     ${TITULO_PAGINA_MY_CART}
    Page Should Contain Element         id=${CART_TITLE}