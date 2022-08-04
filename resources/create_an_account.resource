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
    Input Text                          ${EMAIL_CREATE_INPUT}       ${NEW_EMAIL}
    Click Element                       ${CREATE_EMAIL_BUTTON}
            

I fill login form with "Valid informations"
    Wait Until Element Is Visible       ${FIRST_NAME_FIELD}  
    Click Element                       ${INPUT_GENDER}
    Input Text                          ${FIRST_NAME_FIELD}    ${FIRST_NAME}
    Input Text                          ${LAST_NAME_FIELD}     ${LAST_NAME}
    Input Text                          ${PASSWORD_FIELD}      ${PASSWORD}
    Input Text                          ${COMPANY_FIELD}       ${COMPANY}
    Input Text                          ${ADDRESS_FIELD}       ${ADDRESS}
    Input Text                          ${CITY_FIELD}          ${CITY}
    Select From List By Label           ${STATE_FIELD}         ${STATE_NAME}
    Input Text                          ${ZIP_POSTAL_FIELD}    ${ZIP_CODE}
    Input Text                          ${PHONE_NUMBER_FIELD}  ${PHONE}

I submit register form
    Click Element                       ${REGISTER_BUTTON}


I do not inform the telephone field
    Wait Until Element Is Visible       ${FIRST_NAME_FIELD}  
    Click Element                       ${INPUT_GENDER}
    Input Text                          ${FIRST_NAME_FIELD}    ${FIRST_NAME}
    Input Text                          ${LAST_NAME_FIELD}     ${LAST_NAME}
    Input Text                          ${PASSWORD_FIELD}      ${PASSWORD}
    Input Text                          ${COMPANY_FIELD}       ${COMPANY}
    Input Text                          ${ADDRESS_FIELD}       ${ADDRESS}
    Input Text                          ${CITY_FIELD}          ${CITY}
    Select From List By Label           ${STATE_FIELD}         ${STATE_NAME}
    Input Text                          ${ZIP_POSTAL_FIELD}    ${ZIP_CODE}

The error message "You must register at least one phone number" is displayed.
    Page Should Contain                 ${PHONE_NUMBER_REQUIRED}


I do not inform the lastname field
    Wait Until Element Is Visible       ${FIRST_NAME_FIELD}  
    Click Element                       ${INPUT_GENDER}
    Input Text                          ${FIRST_NAME_FIELD}    ${FIRST_NAME}
    Input Text                          ${PASSWORD_FIELD}      ${PASSWORD}
    Input Text                          ${COMPANY_FIELD}       ${COMPANY}
    Input Text                          ${ADDRESS_FIELD}       ${ADDRESS}
    Input Text                          ${CITY_FIELD}          ${CITY}
    Select From List By Label           ${STATE_FIELD}         ${STATE_NAME}
    Input Text                          ${ZIP_POSTAL_FIELD}    ${ZIP_CODE}
    Input Text                          ${PHONE_NUMBER_FIELD}  ${PHONE}



The error message "lastname is required" is displayed.
    Page Should Contain                 ${LAST_NAME_REQUIRED}

I do not inform the password field
    Wait Until Element Is Visible       ${FIRST_NAME_FIELD}  
    Click Element                       ${INPUT_GENDER}
    Input Text                          ${FIRST_NAME_FIELD}    ${FIRST_NAME}
    Input Text                          ${LAST_NAME_FIELD}     ${LAST_NAME}
    Input Text                          ${COMPANY_FIELD}       ${COMPANY}
    Input Text                          ${ADDRESS_FIELD}       ${ADDRESS}
    Input Text                          ${CITY_FIELD}          ${CITY}
    Select From List By Label           ${STATE_FIELD}         ${STATE_NAME}
    Input Text                          ${ZIP_POSTAL_FIELD}    ${ZIP_CODE}
    Input Text                          ${PHONE_NUMBER_FIELD}  ${PHONE}

Then The error message "passwd is required" is displayed.
    Page Should Contain                 ${PASSWORD_REQUIRED}

I do not inform the firstname field
    Wait Until Element Is Visible       ${FIRST_NAME_FIELD}  
    Click Element                       ${INPUT_GENDER}
    Input Text                          ${LAST_NAME_FIELD}     ${LAST_NAME}
    Input Text                          ${PASSWORD_FIELD}      ${PASSWORD}
    Input Text                          ${COMPANY_FIELD}       ${COMPANY}
    Input Text                          ${ADDRESS_FIELD}       ${ADDRESS}
    Input Text                          ${CITY_FIELD}          ${CITY}
    Select From List By Label           ${STATE_FIELD}         ${STATE_NAME}
    Input Text                          ${ZIP_POSTAL_FIELD}    ${ZIP_CODE}
    Input Text                          ${PHONE_NUMBER_FIELD}  ${PHONE}

The error message "firstname is required" is displayed.
    Page Should Contain                 ${FIRST_NAME_REQUIRED}

I do not inform the address field
    Wait Until Element Is Visible       ${FIRST_NAME_FIELD}  
    Click Element                       ${INPUT_GENDER}
    Input Text                          ${FIRST_NAME_FIELD}    ${FIRST_NAME}
    Input Text                          ${LAST_NAME_FIELD}     ${LAST_NAME}
    Input Text                          ${PASSWORD_FIELD}      ${PASSWORD}
    Input Text                          ${COMPANY_FIELD}       ${COMPANY}
    Input Text                          ${CITY_FIELD}          ${CITY}
    Select From List By Label           ${STATE_FIELD}         ${STATE_NAME}
    Input Text                          ${ZIP_POSTAL_FIELD}    ${ZIP_CODE}
    Input Text                          ${PHONE_NUMBER_FIELD}  ${PHONE}


The error message "address1 is required" is displayed.
    Page Should Contain                 ${ADDRESS_IS_REQUIRED}


I do not inform the city field
    Wait Until Element Is Visible       ${FIRST_NAME_FIELD}  
    Click Element                       ${INPUT_GENDER}
    Input Text                          ${FIRST_NAME_FIELD}    ${FIRST_NAME}
    Input Text                          ${LAST_NAME_FIELD}     ${LAST_NAME}
    Input Text                          ${PASSWORD_FIELD}      ${PASSWORD}
    Input Text                          ${COMPANY_FIELD}       ${COMPANY}
    Input Text                          ${ADDRESS_FIELD}       ${ADDRESS}
    Select From List By Label           ${STATE_FIELD}         ${STATE_NAME}
    Input Text                          ${ZIP_POSTAL_FIELD}    ${ZIP_CODE}
    Input Text                          ${PHONE_NUMBER_FIELD}  ${PHONE}

The error message "City is required" is displayed.
    Page Should Contain                 ${CITY_IS_REQUIRED}

I do not inform the state field
    Wait Until Element Is Visible       ${FIRST_NAME_FIELD}  
    Click Element                       ${INPUT_GENDER}
    Input Text                          ${FIRST_NAME_FIELD}    ${FIRST_NAME}
    Input Text                          ${LAST_NAME_FIELD}     ${LAST_NAME}
    Input Text                          ${PASSWORD_FIELD}      ${PASSWORD}
    Input Text                          ${COMPANY_FIELD}       ${COMPANY}
    Input Text                          ${CITY_FIELD}          ${CITY}
    Input Text                          ${ADDRESS_FIELD}       ${ADDRESS}
    Input Text                          ${ZIP_POSTAL_FIELD}    ${ZIP_CODE}
    Input Text                          ${PHONE_NUMBER_FIELD}  ${PHONE}

The error message "This country requires you to choose a state" is displayed.
    Page Should Contain                 ${STATE_IS_REQUIRED}

I do not inform zip code field correctly
    Wait Until Element Is Visible       ${FIRST_NAME_FIELD}  
    Click Element                       ${INPUT_GENDER}
    Input Text                          ${FIRST_NAME_FIELD}    ${FIRST_NAME}
    Input Text                          ${LAST_NAME_FIELD}     ${LAST_NAME}
    Input Text                          ${PASSWORD_FIELD}      ${PASSWORD}
    Input Text                          ${COMPANY_FIELD}       ${COMPANY}
    Input Text                          ${ADDRESS_FIELD}       ${ADDRESS}
    Input Text                          ${CITY_FIELD}          ${CITY}
    Select From List By Label           ${STATE_FIELD}         ${STATE_NAME}
    Input Text                          ${PHONE_NUMBER_FIELD}  ${PHONE}

The error message "The Zip/Postal code you've entered is invalid. It must follow this format: 00000" is displayed.
    Page Should Contain                 ${ZIP_CODE_IS_REQUIRED}