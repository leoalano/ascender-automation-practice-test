*** Settings ***
Resource    ../page_objects/login_page.resource
Resource    ../page_objects/menu_page.resource

*** Keywords ***
#TC02-Cart item delete(Corrigido)
I fill login form with email registered"${EMAIL_REGISTERED}" and password registered"${PASSWORD_REGISTERED}"
    Wait Until Element is Visible       ${EMAIL_INPUT} 
    Wait Until Element is Visible       ${PASSWORD_INPUT}
    Input Text       ${EMAIL_INPUT}     ${EMAIL_REGISTERED}
    Input Password   ${PASSWORD_INPUT}  ${PASSWORD_REGISTERED}
#...............................................................................#
I click on button submit "Sign In"
    Click Button                        ${BUTTON_SUBMIT_LOGIN}

I fill login form with correct "${EMAIL_REGISTERED}" and correct"${PASSWORD_REGISTERED}"
    Wait Until Element is Visible       ${EMAIL_INPUT} 
    Wait Until Element is Visible       ${PASSWORD_INPUT}
    Input Text      ${EMAIL_INPUT}      ${EMAIL_REGISTERED}
    Input Password  ${PASSWORD_INPUT}   ${PASSWORD_REGISTERED}  

I fill login form with unregistered "${UNREGISTERED_EMAIL}" and correct"${PASSWORD_REGISTERED}"
    Wait Until Element is Visible       ${EMAIL_INPUT} 
    Wait Until Element is Visible       ${PASSWORD_INPUT}
    Input Text      ${EMAIL_INPUT}      ${UNREGISTERED_EMAIL}
    Input Text      ${PASSWORD_INPUT}   ${PASSWORD_REGISTERED}

I fill login form with correct"${EMAIL_REGISTERED}" and fake"${FAKE_PASSWORD}"
    Wait Until Element is Visible       ${EMAIL_INPUT} 
    Wait Until Element is Visible       ${PASSWORD_INPUT}
    Input Text      ${EMAIL_INPUT}      ${EMAIL_REGISTERED}
    Input password  ${PASSWORD_INPUT}   ${FAKE_PASSWORD}

I fill form with invalid"${INVALID_EMAIL}" and invalid"${INVALID_PASSWORD}"
    Wait Until Element is Visible       ${EMAIL_INPUT} 
    Wait Until Element is Visible       ${PASSWORD_INPUT}
    Input Text      ${EMAIL_INPUT}      ${INVALID_EMAIL}
    Input password  ${PASSWORD_INPUT}   ${INVALID_PASSWORD}

I fill login form with correct"${EMAIL_REGISTERED}" and empty"${EMPTY_PASSWORD}"
    Wait Until Element is Visible       ${EMAIL_INPUT} 
    Wait Until Element is Visible       ${PASSWORD_INPUT}
    Input Text      ${EMAIL_INPUT}      ${EMAIL_REGISTERED}
    Input password  ${PASSWORD_INPUT}   ${EMPTY_PASSWORD}

I click on "Forgot Password"
    Wait Until Element is Visible       ${FORGOT_PASSWORD}
    Click Element                       ${FORGOT_PASSWORD}

I fill the email field with my email
    Wait Until Element Is Visible       id=email
    Input Text                          id=email    ${EMAIL_REGISTERED}

I submit my email
    Wait Until Element is Visible       ${RETRIEVE_PASSWORD_BUTTON}
    Click Element                       ${RETRIEVE_PASSWORD_BUTTON}

I should see a successful message
    Page Should Contain Element         ${RETRIEVED_SUCCESS_MESS}

I check login error verification
    Wait Until Element Is Visible       locator=${VALIDATION_AUTHENTICATION}
    Title Should Be                     ${TITLE_PAGE_LOGIN}
    Page Should Contain Element         locator=${VALIDATION_AUTHENTICATION}

I check login empty password error 
    Wait Until Element Is Visible       id=authentication
    Page Should Contain Element         ${PASSWORD_EMPTY_VALIDATION}

I should see an error message
    [Arguments]                         ${ERROR_MESSAGE}
    Log                                 ${ERROR_MESSAGE}
    Wait Until Page Contains            ${ERROR_MESSAGE}

I verify successful login
    Title Should Be                     ${TITLE_ACCOUNT}

I verify if error message appears "There is 1 error"
    Wait Until Element is Visible       ${ERROR_MESSAGE}

I should be logged in successfully
    Wait Until Page Contains             My account
    Page Should Contain                  My account

I submit login form
    Wait Until Element is Visible        ${SIGN_IN_BUTTON}
    Click Element                        ${SIGN_IN_BUTTON}