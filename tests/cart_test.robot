*** Settings ***
Documentation  Shopping cart feature test suite.

Library        SeleniumLibrary

Test Setup     Open Browser    about:blank  ${BROWSER}
Test Teardown  Close All Browsers

Resource       ../configs/config.resource
Resource       ../resources/navegation.resource
Resource       ../resources/menu.resource
Resource       ../resources/login.resource
Resource       ../resources/cart.resource

*** Variables ***
${VALID_EMAIL}           compra_teste@gmail.com
${VALID_PASSWORD}        12345

*** Test Cases ***
Test case 02 - Checkout empty Cart
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I fill login form with "${VALID_EMAIL}" and "${VALID_PASSWORD}"
      And I submit login form
     When I click on My Cart Button
     Then Title Should Be    Order - My Store