*** Settings ***
Library           SeleniumLibrary
Test Setup        Open Browser          browser=chrome
Test Teardown     Close All Browsers

Resource          ../resources/cart.resource
Resource          ../configs/config.resource


*** Test Cases ***
Teste case - Cart item delete                     
    Access homepage of automationpractice.com
    Enter menu "Sign in" at the header
    Type the registered email in the field "email address"
    Type the registered Password in the field "Password"
    Click on the "Sign In" Button
    Click on the "Women"
    Move the mouse over the item
    Click on Proceed to checkout Element
    Click on the "trash"
    Verify item deletion
