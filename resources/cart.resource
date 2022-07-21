*** Settings ***
Resource    ../page_objects/cart_page.resource

*** Keywords ***
Acess website automationpractice.com
    Maximize Browser Window
    Go To                               ${URL}       

Enter menu "Sign in"   
    Click Element                       locator=${SIGN_IN}
    Title Should Be                     ${TITLE_PAGE_LOGIN}
    Page Should Contain Element         locator=${VALIDATE_PAGE_LOGIN}
    Page Should Contain Element         locator=${VALIDATE_PAGE_LOGIN_2}

Enter the registered email in the Email address field
    Wait Until Element Is Visible        id=${EMAIL_FIELD}      timeout=2s    
    Input Text                           id=${EMAIL_FIELD}      ${EMAIL_REGISTERED}

Enter the registered password in the Password field
    Input Text                          id=${FIELD_PASSWORD}    ${PASSWORD_REGISTERED}

Click on button "Sign In"
    Click Button                        id=${BUTTON_SUBMIT_LOGIN}

Click on My Cart Element
    Wait Until Element Is Visible       locator=${MY_CART}
    Click Element                       locator=${MY_CART}
    Title Should Be                     ${TITLE_PAGE_MY_CART}
    Page Should Contain Element         id=${CART_TITLE}