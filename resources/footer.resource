*** Settings ***
Resource    ../page_objects/contact_page.resource
Resource    ../page_objects/menu_page.resource

*** Keywords ***
I enter "Contact Us" via the footer
    Click Element                   ${CONTACT_FOOTER}

I put mouse over field "newsletter-input"
    Mouse over                      ${NEWSLETTER-INPUT}

I click in "submitnewsletter button"
    Click button                    ${SUBMIT_NEWSLETTER}