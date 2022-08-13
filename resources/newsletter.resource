*** Settings ***
Resource    ../page_objects/newsletter_page.resource

*** Keywords ***
I fill with "${EMAIL}"                           
    Input Text      ${NEWSLETTER_INPUT}     ${EMAIL}

I verify message "${MSG}"
    Page Should contain                     ${MSG}

I put mouse over "newsletter" field
    Mouse over                              ${NEWSLETTER_INPUT}

I click in "submitnewsletter button"
    Click button                            ${SUBMIT_NEWSLETTER}