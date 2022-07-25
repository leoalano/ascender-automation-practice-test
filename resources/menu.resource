*** Settings ***
Resource  ../page_objects/menu_page.resource

*** Keywords ***
I enter menu "Sign in"
    Wait Until Element Is Visible       ${SIGN_IN_MENU_BUTTON}
    Click Element                       ${SIGN_IN_MENU_BUTTON}