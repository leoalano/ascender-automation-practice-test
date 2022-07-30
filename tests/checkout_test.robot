*** Settings ***
Library           SeleniumLibrary
Test Setup        Open Browser  browser=chrome
Test Teardown     Close All Browsers
Resource          ../resources/login.resource
Resource          ../resources/cart.resource
Resource          ../resources/checkout.resource
Resource          ../resources/menu.resource
Resource          ../configs/config.resource
Resource          ../resources/navigation.resource

*** Variables ***
${VALID_EMAIL}           compra_teste@gmail.com
${VALID_PASSWORD}        12345

*** Test Cases ***
Test case - Checkout purchase of products
    Acess website automationpractice.com
    I enter menu "Sign in"
    I fill login form with "${VALID_EMAIL}" and "${VALID_PASSWORD}"
    I submit login form
    Click on the "Women"
    Move the mouse over the item
    Click on Proceed to checkout Element
    Click "Proceed to Checkout" on the summary page
    Click "Proceed to Checkout" on the addresses page
    Click "Proceed to Checkout" on the shipping page
    Choose the form of payment
    Click on "I confirm my order"
    Confirm order is complete