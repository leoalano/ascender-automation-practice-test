*** Settings ***
Resource    ../page_objects/login_page.resource

*** Keywords ***
I fill login form with "${EMAIL_TEST_DATA}" and "${PASSWORD_TEST_DATA}"
    Wait Until Element is Visible        ${EMAIL_INPUT} 
    Wait Until Element is Visible        ${PASSWORD_INPUT}
    Input Text       ${EMAIL_INPUT}      ${EMAIL_TEST_DATA}
    Input Password   ${PASSWORD_INPUT}   ${PASSWORD_TEST_DATA}  

I submit login form
    Click Element    ${SIGN_IN_BUTTON}