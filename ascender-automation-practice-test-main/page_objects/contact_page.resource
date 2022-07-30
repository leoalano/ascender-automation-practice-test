*** Settings ***
Resource    ../page_objects/login_page.resource
Resource    ../page_objects/menu_page.resource

*** Variables ***
${SUBMIT_BUTTON}            ID=submitMessage
${SENT_MESSAGE}             //p[contains(.,'Your message has been successfully sent to our team.')]
${SUBJECT_HEADING}          id=id_contact
${EMAIL_FIELD}              id=email
${ORDER_REFERENCE}          id=id_order
${MESSAGE}                  id=message