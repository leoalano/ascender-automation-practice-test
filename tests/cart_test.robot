*** Settings ***
Documentation     Shopping cart feature tests suite.
Library           SeleniumLibrary
Test Setup        Open Browser  browser=chrome
Test Teardown     Close All Browsers

Resource          ../resources/cart.resource
Resource          ../configs/config.resource
Resource          ../resources/navigation.resource
Resource          ../resources/menu.resource

*** Variables ***
${EMAIL_REGISTERED}           christian.hernan@gmail.com
${PASSWORD_REGISTERED}        123456

*** Test Cases ***
Test case 01 - Add product to cart
    Given I am at automationpractice.com
      And I add product
     Then I confirm product add to cart

Test case 02 - Cart item delete                     
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I fill login form with email registered"${EMAIL_REGISTERED}" and password registered"${PASSWORD_REGISTERED}"
      And I submit login form
     When I click on the "Women"
      And I move the mouse over the item
     When I click on Proceed to checkout Element
      And I click on the "trash"
     Then I verify item deletion

Test case 03 - Cart access
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I fill login form with email registered"${EMAIL_REGISTERED}" and password registered"${PASSWORD_REGISTERED}"
      And I submit login form
     Then I click on My Cart Element

Test case 04 - Verify empty cart
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I fill login form with email registered"${EMAIL_REGISTERED}" and password registered"${PASSWORD_REGISTERED}"
      And I submit login form
     When I click on My Cart Element
     Then I verify page should be contain text    