*** Settings ***
Resource    ../page_objects/login_page.resource

*** Keywords ***
I fill login form with "${EMAIL_TEST_DATA}" and "${PASSWORD_TEST_DATA}"
    Wait Until Element is Visible       ${EMAIL_INPUT} 
    Wait Until Element is Visible       ${PASSWORD_INPUT}
    Input Text      ${EMAIL_INPUT}      ${EMAIL_TEST_DATA}
    Input Password  ${PASSWORD_INPUT}   ${PASSWORD_TEST_DATA}  

I submit login form
    Wait Until Element is Visible       ${SIGN_IN_BUTTON}
    Click Element                       ${SIGN_IN_BUTTON}

I should see an error message
    [Arguments]                         ${ERROR_MESSAGE}
    Log                                 ${ERROR_MESSAGE}
    Wait Until Page Contains            ${ERROR_MESSAGE}

I should be loged in successfully
    Title Should Be                     ${TITULO_ACCOUNT}