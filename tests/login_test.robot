*** Settings ***
Documentation   Login feature tests suit.
Library         SeleniumLibrary
Library         FakerLibrary

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
${UNREGISTERED_EMAIL}         christian00000@bloob.com
${INVALID_EMAIL}              xxx@xxxx.com
${INVALID_PASSWORD}           1111111

*** Test Cases ***
Teste case 01 - Successful Login                    
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I fill login form with correct "${EMAIL_REGISTERED}" and correct"${PASSWORD_REGISTERED}"
      And I click on button submit "Sign In"
     Then I verify successful login

Test case 02 - Login with unregistered user
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I fill login form with unregistered "${UNREGISTERED_EMAIL}" and correct"${PASSWORD_REGISTERED}"  
      And I click on button submit "Sign In"
     Then I check login error verification

Test case 03 - Login with invalid passwd
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I fill login form with correct"${EMAIL_REGISTERED}" and fake"${FAKE_PASSWORD}"
      And I click on button submit "Sign In"
     Then I check login error verification

Test Case 04 - Invalid email
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I fill form with invalid"${INVALID_EMAIL}" and invalid"${INVALID_PASSWORD}"
      And I click on button submit "Sign In"
     Then I verify if error message appears "There is 1 error"

Test case 05 - Login with empty passwd
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I fill login form with correct"${EMAIL_REGISTERED}" and empty"${EMPTY_PASSWORD}"
      And I click on button submit "Sign In"
     Then I check login empty password error

Test Case 06 - Forgot Password
    Given I am at automationpractice.com
      And I enter menu "Sign in"
     When I click on "Forgot Password"
      And I fill the email field with my email
     When I submit my email
     Then I should see a successful message