*** Settings ***
Resource    ../page_objects/login_page.resource
Resource    ../page_objects/menu_page.resource
Resource    ../page_objects/footer_page.resource

*** Keywords ***
I fill with registered email "${EMAIL_REGISTERED}"  #TC01-Test with registered email.
    Input Text          ${NEWSLETTER-INPUT}     ${EMAIL_REGISTERED}

I verify message "already registered"
    Page Should contain     Newsletter : This email address is already registered.

I fill with unregistered email                      #TC02-Test with unregistered email
    [Arguments]         ${NEW_EMAIL}
    Input Text          ${NEWSLETTER-INPUT}         ${NEW_EMAIL}

I verify message "successfully subscribed"
    Page Should contain     Newsletter : You have successfully subscribed to this newsletter.

I fill with invalid email "${INVALID_EMAIL}"        #TC03-Test with invalid email
    Input Text          ${NEWSLETTER-INPUT}         ${INVALID_EMAIL}

I leave the email field empty ${EMPTY_EMAIL}        #TC04-Test with empty email field
    Input Text          ${NEWSLETTER-INPUT}         ${EMPTY_EMAIL}

I verify message "invalid email address"            #TC03 e #TC04
    Page Should contain     Newsletter : Invalid email address.