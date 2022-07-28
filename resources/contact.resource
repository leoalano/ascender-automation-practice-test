*** Settings ***
Resource    ../page_objects/login_page.resource
Resource    ../page_objects/menu_page.resource
Resource    ../page_objects/contact_page.resource
Resource    ../page_objects/footer_page.resource

*** Keywords ***
I submit the contact us form
    Wait Until Element is Visible        ${SUBMIT_BUTTON}
    Click Element                        ${SUBMIT_BUTTON} 

I should have successfully sent the message
    Wait Until Element is Visible        ${SENT_MESSAGE}   
    Page Should Contain Element          ${SENT_MESSAGE}

I fill contact us form with "${VALID_EMAIL}" and "${ORDER_REF}" and "${MESSAGE}" 
    Select From List By Index            ${SUBJECT_HEADING}    2
    Input Text                           id=email       ${VALID_EMAIL}
    Input Text                           id=id_order    ${ORDER_REF}
    Input Text                           id=message     ${MESSAGE}

I fill contact us form without subject heading 
    Input Text                           id=email       ${VALID_EMAIL}
    Input Text                           id=id_order    ${ORDER_REF}
    Input Text                           id=message     ${MESSAGE}

I should receive an error message
    [Arguments]                          ${ERROR_MESSAGE}
    Wait Until Page Contains             ${ERROR_MESSAGE}