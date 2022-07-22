*** Settings ***
Library     SeleniumLibrary
Test Setup  Open Browser  browser=chrome
Test Teardown  Close All Browsers

Resource    ../resources/cart.resource
Resource    ../configs/config.resource

*** Test Cases ***

Test case 01 - Add Product to Cart
    Given I am at automationpractice.com
    And I Add product
    Then Confirm product add to cart