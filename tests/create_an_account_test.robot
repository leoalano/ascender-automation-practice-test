*** Settings ***
Documentation     Testing login with invalid e-mail.
Library           SeleniumLibrary
Library           FakerLibrary
Resource          ../resources/login.resource
Resource          ../configs/config.resource
Resource          ../resources/menu.resource
Resource          ../resources/navigation.resource
Test Setup        Open Browser          browser=chrome
Test Teardown     Close All Browsers


*** Test Cases ***
Teste case 01 - Create an account with success
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I fill login form with "${VALID_EMAIL}" and "${VALID_PASSWORD}"
      And I submit login form
     Then I should be logged in successfully