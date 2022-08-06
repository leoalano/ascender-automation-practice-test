*** Settings ***
Resource    ../page_objects/menu_page.resource
Resource    ../page_objects/cart_page.resource

*** Keywords ***
I enter menu "Sign in"
    Wait Until Element Is Visible       ${SIGN_IN_MENU_BUTTON}
    Click Element                       ${SIGN_IN_MENU_BUTTON}

I click on My Cart Button
    Wait Until Element Is Visible       ${MY_CART}
    Click Element                       ${MY_CART}

I enter "Contact Us" via the menu
    Click Element                       ${CONTACT_US}
