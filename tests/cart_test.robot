*** Settings ***
Documentation   Shopping cart feature tests suite.
Library         SeleniumLibrary

Test Setup     Open Browser    about:blank  ${BROWSER}
Test Teardown  Close All Browsers

Resource       ../configs/config.resource
Resource       ../resources/cart.resource
Resource       ../resources/login.resource
Resource       ../resources/menu.resource
Resource       ../resources/navegation.resource

*** Variables ***
${EMAIL_REGISTERED}           christian.hernan@gmail.com
${PASSWORD_REGISTERED}        123456

*** Test Cases ***
Test case 01 - Add Product to Cart
    Given I am at automationpractice.com
      And I Add product
     Then I confirm product add to cart

Test case 02 - Cart item delete                     
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I fill login form with "${EMAIL_REGISTERED}" and "${PASSWORD_REGISTERED}"
      And I click on button submit "Sign In"
     When I click on the "Women"
      And I move the mouse over the item
     When I click on Proceed to checkout Element
      And I click on the "trash"
     Then I verify item deletion

Test Case 03 - Cart access
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I fill login form with "${EMAIL_REGISTERED}" and "${PASSWORD_REGISTERED}"
      And I click on button submit "Sign In"
     Then I click on My Cart Element

Test case 04 - Verify empty Cart
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I fill login form with "${EMAIL_REGISTERED}" and "${PASSWORD_REGISTERED}"
      And I click on button submit "Sign In"
     When I click on My Cart Element
     Then I verify page should be contain text