*** Settings ***
Resource    ../page_objects/catalog_page.resource

*** Keywords ***
I wait until element is visible "${IMG}"
    Wait Until Element Is Visible           ${IMG}

I click on element slider_row
    Click Element                           ${SLIDER_ROW}

I click on element button_next 
    Click Element                           ${BUTTON_NEXT}

I click on image "${IMG}"
    Wait Until Element Is Visible           ${IMG}
    Click Element                           ${IMG}

I verify a successful redirect! "${TITLE_PAGE}"
    Title Should Be                         ${TITLE_PAGE}

I put mouse over image "${IMG}"
    Mouse Over                              ${IMG}