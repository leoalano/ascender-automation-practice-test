*** Settings ***
Documentation     Wishlist feature tests suite.
Library           SeleniumLibrary

Resource          ../configs/config.resource
Resource          ../resources/navigation.resource
Resource          ../resources/wishlist.resource
Resource          ../resources/menu.resource
Resource          ../resources/login.resource
Resource          ../page_objects/catalog_page.resource

Test Setup        Open Browser  browser=chrome
Test Teardown     Close All Browsers

*** Variables ***
${EMAIL_REGISTERED}           christian.hernan@gmail.com
${PASSWORD_REGISTERED}        123456

*** Test Cases ***

Test case 01 - Add product without user logged in
    Given I am at automationpractice.com
      And I put mouse over image "${FADED_SHORT_IMG}"
     When I click on title "${FADED_SHORT_TITLE}"
      And I click on button "${ADD_BUTTON}"
     Then I verify message "${MUST_BE_LOGGED}"

Test case 02 - Add product with logged in user
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I fill login form with "${EMAIL_REGISTERED}" and "${PASSWORD_REGISTERED}"
      And I submit login form
     When I click on button "${HOME}"
      And I click on title "${FADED_SHORT_TITLE}"
     When I click on button "${ADD_BUTTON}"
      And I verify message "${ADD_LIST_MSG}"
     When I wait for element is visible
     Then I click on button "Close"

Test case 03 - Create a wish list
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I fill login form with "${EMAIL_REGISTERED}" and "${PASSWORD_REGISTERED}"
      And I submit login form
     When I click on button "${WISHLIST_MENU}"
      And I fill the field with "${LIST_TEST_01}" 
     When I click on button "${SAVE_LIST}"
     Then I verify message "${LIST_TEST_01}"

Test case 04 - Add products to a wish list
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I fill login form with "${EMAIL_REGISTERED}" and "${PASSWORD_REGISTERED}"
      And I submit login form
     When I click on button "${WISHLIST_MENU}"
      And I fill the field with "${LIST_TEST_01}" 
     When I click on button "${SAVE_LIST}"
      And I click on button "${LIST_TEST_01_SALVA}"
     When I click on button "${FADED_SHORT_PRODUCT}"
      And I click on button "${ADD_BUTTON}"
     Then I verify message "${ADD_LIST_MSG}"

Test case 05 - Delete products from a wish list
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I fill login form with "${EMAIL_REGISTERED}" and "${PASSWORD_REGISTERED}"
      And I submit login form
     When I click on button "${WISHLIST_MENU}"
      And I fill the field with "${LIST_TEST_01}" 
     When I click on button "${SAVE_LIST}"
      And I click on button "${LIST_TEST_01_SALVA}"
     When I click on button "${FADED_SHORT_PRODUCT}"
      And I click on button "${ADD_BUTTON}"
     When I wait for element is visible
      And I click on button "Close"
     When I click on button "${CUSTOMER_BUTTON}"
      And I click on button "${WISHLIST_MENU}"
     When I click on button "${LIST_TEST_01_SALVA}" 
      And I put mouse over image "${FADED_SHORT_PRODUCT}"
     When I click on button "${ICON_REMOVE_ITEM1}"
      And I click on button "${LIST_TEST_01_SALVA}"
     Then I verify message "${NO_PRODUCTS_MSG}"

Test case 06 - Delete a wish list
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I fill login form with "${EMAIL_REGISTERED}" and "${PASSWORD_REGISTERED}"
      And I submit login form
     When I click on button "${WISHLIST_MENU}"
      And I fill the field with "${LIST_TEST_01}" 
     When I click on button "${SAVE_LIST}"
     When I click on button "${WISHLIST_MENU}"
      And I click on button "${ICON_REMOVE_LIST_TEST_01}"
     Then I click ok on the alert message