*** Settings ***
Resource    ../page_objects/wishlist_page.resource

*** Keywords ***
I put mouse over image "${PUT}"
    Mouse Over                  ${PUT}

I click on title "${IMG}"
    Click Element               ${IMG}

I click on button "${BUTTON}"
    Click Element               ${BUTTON}

I verify message "${MSG}"
    Page Should contain         ${MSG}

I fill the field with "${LIST_TEST}" 
    Input Text           ${INPUT_LIST_NAME}       ${LIST_TEST}

I click OK on the alert message
    Handle Alert