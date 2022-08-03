*** Settings ***
Documentation     Login Test Suite.
Library           SeleniumLibrary
Library           FakerLibrary

Resource          ../resources/login.resource
Resource          ../configs/config.resource
Resource          ../resources/menu.resource
Resource          ../resources/navigation.resource

Test Setup        Open Browser          browser=chrome
Test Teardown     Close All Browsers

*** Variables ***
${VALID_EMAIL}           compra_teste@gmail.com
${VALID_PASSWORD}        12345
${INVALID_EMAIL}         xurupitas
${UNREGISTERED_EMAIL}    xurupitas@namanteiga.com.br
${INCORRECT_PASSWORD}    wrong_password
${EMPTY_PASSWORD}        #Sem atribuição de valor para variavel. TC#05-Login

*** Test Cases ***
Teste case 01 - Login successfully
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I fill login form with "${VALID_EMAIL}" and "${VALID_PASSWORD}"
      And I submit login form
     Then I should be logged in successfully
    
Test case 02 - Try login with unregistered e-mail
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I fill login form with "${UNREGISTERED_EMAIL}" and "${VALID_PASSWORD}"
      And I submit login form
     Then I should see an error message    Authentication failed
       
Test case 03 - Try login with incorrect password
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I fill login form with "${VALID_EMAIL}" and "${INCORRECT_PASSWORD}"
      And I submit login form
     Then I should see an error message   Authentication failed

Test case 04 - Try login with invalid e-mail           
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I fill login form with "${INVALID_EMAIL}" and "${VALID_PASSWORD}"
      And I submit login form
     Then I should see an error message   Invalid email address.

Test case 05 - Login with empty password
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I fill login form with "${VALID_EMAIL}" and "${EMPTY_PASSWORD}"
      And I submit login form 
     Then I should see an error message  Password is required.
    
Test case 06 - Forgot password
    Given I am at automationpractice.com
      And I enter menu "Sign in"
      And I click on "Forgot Password"
     When I fill the email field with my email
      And I submit my email
     Then I should see a successful message
