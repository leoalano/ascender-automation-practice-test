*** Settings ***
Resource          ../page_objects/login_page.resource
Resource          ../page_objects/menu_page.resource
Resource          ../page_objects/create_an_account_page.resource
Resource          ../resources/menu.resource
Library           FakerLibrary

*** Keywords ***

I enter menu "Create an account"     
    [Arguments]     ${NEW_EMAIL}
    I enter menu "Sign in"
    # Wait Until Element Is Visible       id=${CREATE_EMAIL_FIELD}
    Input Text                          id=${EMAIL_CREATE_INPUT}       ${NEW_EMAIL}
    Click Element                       locator=${CREATE_EMAIL_BUTTON}

I fill login form with "Valid informations"
    Wait Until Element Is Visible       id=${FIRST_NAME_FIELD}  
    Click Element                       locator=${INPUT_GENDER}
    Input Text                          id=${FIRST_NAME_FIELD}    ${FIRST_NAME}
    Input Text                          id=${LAST_NAME_FIELD}     ${LAST_NAME}
    Input Text                          id=${PASSWORD_FIELD}      ${PASSWORD}
    Input Text                          id=${COMPANY_FIELD}       ${COMPANY}
    Input Text                          id=${ADDRESS_FIELD}       ${ADDRESS}
    Input Text                          id=${CITY_FIELD}          ${CITY}
    Select From List By Label           id=${STATE_FIELD}         ${STATE_NAME}
    Input Text                          id=${ZIP_POSTAL_FIELD}    ${ZIP_CODE}
    Input Text                          id=${PHONE_NUMBER_FIELD}  ${PHONE}

I submit register form
    Click Element                       id=${REGISTER_BUTTON}

I should be logged in successfully
    Title Should Be                     title=${TITLE_PAGE_LOGIN}
    Page Should Contain Element         locator=${MY_ACCOUNT_VALIDATE}

I do not inform the telephone field
    Wait Until Element Is Visible       id=${FIRST_NAME_FIELD}  
    Click Element                       locator=${INPUT_GENDER}
    Input Text                          id=${FIRST_NAME_FIELD}    ${FIRST_NAME}
    Input Text                          id=${LAST_NAME_FIELD}     ${LAST_NAME}
    Input Text                          id=${PASSWORD_FIELD}      ${PASSWORD}
    Input Text                          id=${COMPANY_FIELD}       ${COMPANY}
    Input Text                          id=${ADDRESS_FIELD}       ${ADDRESS}
    Input Text                          id=${CITY_FIELD}          ${CITY}
    Select From List By Label           id=${STATE_FIELD}         ${STATE_NAME}
    Input Text                          id=${ZIP_POSTAL_FIELD}    ${ZIP_CODE}

The error message "You must register at least one phone number" is displayed.
    Page Should Contain                 ${PHONE_NUMBER_REQUIRED}


I do not inform the lastname field
    Wait Until Element Is Visible       id=${FIRST_NAME_FIELD}  
    Click Element                       locator=${INPUT_GENDER}
    Input Text                          id=${FIRST_NAME_FIELD}    ${FIRST_NAME}
    Input Text                          id=${PASSWORD_FIELD}      ${PASSWORD}
    Input Text                          id=${COMPANY_FIELD}       ${COMPANY}
    Input Text                          id=${ADDRESS_FIELD}       ${ADDRESS}
    Input Text                          id=${CITY_FIELD}          ${CITY}
    Select From List By Label           id=${STATE_FIELD}         ${STATE_NAME}
    Input Text                          id=${ZIP_POSTAL_FIELD}    ${ZIP_CODE}
    Input Text                          id=${PHONE_NUMBER_FIELD}  ${PHONE}



The error message "lastname is required" is displayed.
    Page Should Contain                 ${LAST_NAME_REQUIRED}

I do not inform the password field
    Wait Until Element Is Visible       id=${FIRST_NAME_FIELD}  
    Click Element                       locator=${INPUT_GENDER}
    Input Text                          id=${FIRST_NAME_FIELD}    ${FIRST_NAME}
    Input Text                          id=${LAST_NAME_FIELD}     ${LAST_NAME}
    Input Text                          id=${COMPANY_FIELD}       ${COMPANY}
    Input Text                          id=${ADDRESS_FIELD}       ${ADDRESS}
    Input Text                          id=${CITY_FIELD}          ${CITY}
    Select From List By Label           id=${STATE_FIELD}         ${STATE_NAME}
    Input Text                          id=${ZIP_POSTAL_FIELD}    ${ZIP_CODE}
    Input Text                          id=${PHONE_NUMBER_FIELD}  ${PHONE}

Then The error message "passwd is required" is displayed.
    Page Should Contain                 ${PASSWORD_REQUIRED}

I do not inform the firsname field
    Wait Until Element Is Visible       id=${FIRST_NAME_FIELD}  
    Click Element                       locator=${INPUT_GENDER}
    Input Text                          id=${LAST_NAME_FIELD}     ${LAST_NAME}
    Input Text                          id=${PASSWORD_FIELD}      ${PASSWORD}
    Input Text                          id=${COMPANY_FIELD}       ${COMPANY}
    Input Text                          id=${ADDRESS_FIELD}       ${ADDRESS}
    Input Text                          id=${CITY_FIELD}          ${CITY}
    Select From List By Label           id=${STATE_FIELD}         ${STATE_NAME}
    Input Text                          id=${ZIP_POSTAL_FIELD}    ${ZIP_CODE}
    Input Text                          id=${PHONE_NUMBER_FIELD}  ${PHONE}

The error message "firstname is required" is displayed.
    Page Should Contain                 ${FIRST_NAME_REQUIRED}




