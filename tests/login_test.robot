*** Settings ***
Documentation     Login Test Suite.

Library           SeleniumLibrary

Resource          ../configs/config.resource
Resource          ../resources/login.resource
Resource          ../resources/menu.resource
Resource          ../resources/navegation.resource

Test Setup        Open Browser    about:blank  ${BROWSER}
Test Teardown     Close All Browsers

*** Variables ***
${VALID_EMAIL}           compra_teste@gmail.com.br
${VALID_PASSWORD}        12345
${INVALID_EMAIL}         xurupitas
${UNREGISTERED_EMAIL}    xurupitas@namanteiga.com.br
${INCORRECT_PASSWORD}    wrong_password

*** Test Cases ***
Teste case 01 - Login successfully
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I fill login form with "${VALID_EMAIL}" and "${VALID_PASSWORD}"
      And I submit login form
     Then I should be loged in successfully
    
Test case 02 - Try login with unregistered e-mail
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I fill login form with "${UNREGISTERED_EMAIL}" and "${VALID_PASSWORD}"
      And I submit login form
     Then I should see an error message    Authentication failed
       
Test case 03 - Try login with incorrect password
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I fill login form with "${INVALID_EMAIL}" and "${INCORRECT_PASSWORD}"
      And I submit login form
     Then I should see an error message   Authentication failed.

Test case 04 - Try login with invalid e-mail           
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I fill login form with "${INVALID_EMAIL}" and "${VALID_PASSWORD}"
      And I submit login form
     Then I should see an error message   Invalid email address.