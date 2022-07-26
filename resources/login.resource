*** Settings ***
Resource    ../page_objects/login_page.resource

*** Keywords ***
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

I click on button submit "Sign In"
    Click Button                         ${BUTTON_SUBMIT_LOGIN}

I verify successful login
    Title Should Be                     ${TITLE_ACCOUNT}

I verify if error message appears "There is 1 error"
    Wait Until Element is Visible       ${ERROR_MESSAGE}

I fill login form with "${EMAIL_REGISTERED}" and "${PASSWORD_REGISTERED}"
    Wait Until Element is Visible        ${EMAIL_INPUT} 
    Wait Until Element is Visible        ${PASSWORD_INPUT}
    Input Text       ${EMAIL_INPUT}      ${EMAIL_REGISTERED}
    Input Password   ${PASSWORD_INPUT}   ${PASSWORD_REGISTERED}
#...............................................................................#
#Keywords que não são mais necessárias.
I type the registered email in the field "email address"
    Wait Until Element Is Visible       id=email
    Input Text                          id=email    ${EMAIL_REGISTERED}

I type the registered Password in the field "Password"
    Input Text                          id=passwd   ${PASSWORD_REGISTERED}

I enter the registered email in the Email address field
    Wait Until Element Is Visible       id=${EMAIL_FIELD}
    Input Text                          id=${EMAIL_FIELD}   ${EMAIL_REGISTERED}

I enter the registered password in the Password field
    Input Text                           id=${FIELD_PASSWORD}    ${PASSWORD_REGISTERED}

I submit login form
    Click Element   ${SIGN_IN_BUTTON}

I type non-registered password in the password field
    Wait Until Element is Visible       ${PASSWORD_INPUT}
    Input Password   ${PASSWORD_INPUT}  ${PASSWORD_NO_REGISTERED}

I type fake non-registered password in the password field
    Input Text                          id=passwd  ${FAKE_PASSWORD}

I type empty password in the password field
    Input Text                          id=passwd  ${EMPTY_PASSWORD}

I should be loged in successfully
    Wait Until Page Contains            MY ACCOUNT
    Page Should Contain                 MY ACCOUNT
#...............................................................................#