*** Settings ***
Resource    ../page_objects/login_page.resource
Resource    ../page_objects/menu_page.resource

*** Keywords ***
I click on "Forgot Password"
    Wait Until Element is Visible        ${FORGOT_PASS}
    Click Element                        ${FORGOT_PASS}

I fill the email field with my email
    Wait Until Element Is Visible        id=email
    Input Text                           id=email    ${VALID_EMAIL}

I submit my email
    Wait Until Element is Visible        ${RETRIEVE_PASSWORD_BUTTON}
    Click Element                        ${RETRIEVE_PASSWORD_BUTTON}

I should see a successful message
    Page Should Contain Element          ${RETRIEVED_SUCCESS_MESS} 

I fill login form with "${EMAIL_TEST_DATA}" and "${PASSWORD_TEST_DATA}"
    Wait Until Element is Visible        ${EMAIL_INPUT} 
    Wait Until Element is Visible        ${PASSWORD_INPUT}
    Input Text       ${EMAIL_INPUT}      ${EMAIL_TEST_DATA}
    Input Password   ${PASSWORD_INPUT}   ${PASSWORD_TEST_DATA}  

I submit login form
    Wait Until Element is Visible        ${SIGN_IN_BUTTON}
    Click Element                        ${SIGN_IN_BUTTON}

I should see an error message
    [Arguments]                          ${ERROR_MESSAGE}
    Log                                  ${ERROR_MESSAGE}
    Wait Until Page Contains             ${ERROR_MESSAGE}

I should be logged in successfully
    Wait Until Page Contains             My account
    Page Should Contain                  My account