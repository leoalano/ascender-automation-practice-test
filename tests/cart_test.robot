*** Settings ***
Library     SeleniumLibrary
Test Setup  Open Browser  browser=chrome
Test Teardown  Close All Browsers

Resource    ../resources/cart.resource
Resource    ../configs/config.resource

*** Test Cases ***
Scenario Access Cart
    Acess website automationpractice.com
    Enter menu "Sign in"
    Enter the registered email in the Email address field
    Enter the registered password in the Password field
    Click on button "Sign In"
    Click on My Cart Element
