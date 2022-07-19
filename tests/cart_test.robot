*** Settings ***
Library     SeleniumLibrary
Test Setup  Open Browser  browser=chrome
Test Teardown  Close All Browsers

Resource    ../resources/cart.resource
Resource    ../config/config.resource

*** Test Cases ***
Scenario Access Cart
    Access automationpractice.com home page
    Enter the Sign in option in the page header
    Enter the registered email in the Email address field
    Enter the password registered in the Password field
    Click on the Sign in button
    Click on My Cart Element
