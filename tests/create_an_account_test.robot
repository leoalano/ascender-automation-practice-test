*** Settings ***
Documentation     Testing Create an email function.
Library           SeleniumLibrary
Library           FakerLibrary
Resource          ../resources/login.resource
Resource          ../configs/config.resource
Resource          ../resources/navigation.resource
Resource          ../resources/create_an_account.resource
Test Setup        Open Browser          browser=chrome
Test Teardown     Close All Browsers

*** Test Cases ***
Teste case 01 - Create an account with success 
    ${NEW_EMAIL} =                     FakerLibrary.Email
    Given I am at automationpractice.com
      And I enter menu "Create an account"    ${NEW_EMAIL}
     When I fill login form with "Valid informations"
      And I submit register form
     Then I should be logged in successfully

Teste case 02 - Create an account error telephone is required 
    ${NEW_EMAIL} =                     FakerLibrary.Email
    Given I am at automationpractice.com
      And I enter menu "Create an account"    ${NEW_EMAIL}
     When I do not inform the telephone field
      And I submit register form
     Then The error message "You must register at least one phone number" is displayed.

Teste case 03 - Create an account error lastname is required 
    ${NEW_EMAIL} =                     FakerLibrary.Email
    Given I am at automationpractice.com
      And I enter menu "Create an account"    ${NEW_EMAIL}
     When I do not inform the lastname field
      And I submit register form
     Then The error message "lastname is required" is displayed.

Teste case 04 - Create an account error password is required 
    ${NEW_EMAIL} =                     FakerLibrary.Email
    Given I am at automationpractice.com
      And I enter menu "Create an account"    ${NEW_EMAIL}
     When I do not inform the password field
      And I submit register form
     Then The error message "passwd is required" is displayed.

    
Teste case 05 - Create an account error firstname is required 
    ${NEW_EMAIL} =                     FakerLibrary.Email
    Given I am at automationpractice.com
      And I enter menu "Create an account"    ${NEW_EMAIL}
     When I do not inform the firsname field
      And I submit register form
     Then The error message "firstname is required" is displayed.