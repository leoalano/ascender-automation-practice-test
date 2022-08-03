*** Settings ***
Resource    ../page_objects/contact_page.resource
Resource    ../page_objects/menu_page.resource

*** Keywords ***
I enter "Contact Us" via the footer
    Click Element                       ${CONTACT_FOOTER}
