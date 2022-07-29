<<<<<<< HEAD
*** Settings ***
Resource    ../page_objects/cart_page.resource
Resource    ../page_objects/menu_page.resource

*** Keywords ***
I enter menu "Sign in"
    Click Element                       ${SIGN_IN_MENU_BUTTON}

I click on My Cart Button
    Wait Until Element Is Visible       ${MY_CART}
=======
*** Settings ***
Resource    ../page_objects/cart_page.resource
Resource    ../page_objects/menu_page.resource

*** Keywords ***
I enter menu "Sign in"
    Click Element                       ${SIGN_IN_MENU_BUTTON}

I click on My Cart Button
    Wait Until Element Is Visible       ${MY_CART}
>>>>>>> origin/feature/create_an_account
    Click Element                       ${MY_CART}