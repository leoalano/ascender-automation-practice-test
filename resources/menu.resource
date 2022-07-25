*** Settings ***
Resource    ../page_objects/cart_page.resource
Resource    ../page_objects/menu_page.resource

*** Keywords ***
I enter menu "Sign in"
    Click Element                       ${SIGN_IN_MENU_BUTTON}

I click on My Cart Button
    Wait Until Element Is Visible       ${MY_CART}
    Click Element                       ${MY_CART}