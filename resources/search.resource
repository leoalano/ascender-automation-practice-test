*** Settings ***
Resource    ../page_objects/search_page.resource

*** Keywords ***
I fill the field with "${VALID_WORD}" 
    Input Text                           ${SEARCH_FIELD}       ${VALID_WORD}
    
I submit the search
    Wait Until Element is Visible        ${SEARCH_BUTTON}
    Click Element                        ${SEARCH_BUTTON}

I should receive valid results
    Wait Until Element is Visible        ${BLOUSE_IMAGE}   
    Page Should Contain Element          ${BLOUSE_IMAGE}
