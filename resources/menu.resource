*** Settings ***
Resource  ../page_objects/menu_page.resource

*** Keywords ***
I enter menu "Sign in"
    Click Element          ${SIGN_IN_MENU_BUTTON}