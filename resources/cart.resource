*** Settings ***
Resource    ../page_objects/cart_page.resource

*** Keywords ***
I click on My Cart Button
    Page Should Contain Element         ${MY_ACCOUNTY_MSG}
    Wait Until Element Is Visible       ${MY_CART}
    Click Element                       ${MY_CART}