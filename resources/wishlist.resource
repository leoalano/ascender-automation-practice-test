*** Settings ***
Resource    ../page_objects/wishlist_page.resource

*** Keywords ***
I put mouse over image "${PUT}"
    Mouse Over                               ${PUT}

I click on title "${IMG}"
    Click Element                            ${IMG}

I click on button "${BUTTON}"
    Click Element                            ${BUTTON}

I verify message "${MSG}"
    Page Should contain                      ${MSG}

I fill the field with "${LIST_TEST}" 
    Input Text      ${INPUT_LIST_NAME}       ${LIST_TEST}

I click ok on the alert message
    Handle Alert

I wait for element is visible
    Wait Until Element Is Visible            ${CLOSE_BUTTON}

I click on button "Close"
    Click Element                            ${CLOSE_BUTTON} 
    Sleep  2