*** Settings ***
Resource    ../page_objects/login_page.resource
Resource    ../page_objects/menu_page.resource
Resource    ../page_objects/contact_page.resource
Resource    ../page_objects/footer_page.resource

*** Keywords ***
And I submit the contact us form
    Wait Until Element is Visible        ${SUBMIT_BUTTON}
    Click Element                        ${SUBMIT_BUTTON} 

I should have successfully sent the message
    Page Should Contain                  ${SENT_MESSAGE}