*** Settings ***
Library     SeleniumLibrary
Test Setup  Open Browser  browser=chrome
Test Teardown  Close All Browsers
Resource          ../resources/cart.resource
Resource          ../configs/config.resource
Resource          ../resources/navigation.resource
Resource          ../resources/menu.resource

*** Test Cases ***
Test case 01 - Add Product to Cart
    Given I am at automationpractice.com
    And I Add product
    Then Confirm product add to cart
    
Test case 02 - Cart item delete                     
    Acess website automationpractice.com
    Enter menu "Sign in"
    Enter the registered email in the Email address field
    Enter the registered password in the Password field
    Click on button "Sign In"
    Click on the "Women"
    Move the mouse over the item
    Click on Proceed to checkout Element
    Click on the "trash"
    Verify item deletion

Test Case 03 - Cart access
    Acess website automationpractice.com
    Enter menu "Sign in"
    Enter the registered email in the Email address field
    Enter the registered password in the Password field
    Click on button "Sign In"