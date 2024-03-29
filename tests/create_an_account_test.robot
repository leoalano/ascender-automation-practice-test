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
Test case 01 - Create an account with success 
    ${NEW_EMAIL} =                     FakerLibrary.Email
    Given I am at automationpractice.com
      And I enter menu "Create an account"    ${NEW_EMAIL}
     When I fill login form with "Valid informations"
      And I submit register form
     Then I should be logged in successfully

Test case 02 - Create an account error telephone is required 
    ${NEW_EMAIL} =                     FakerLibrary.Email
    Given I am at automationpractice.com
      And I enter menu "Create an account"    ${NEW_EMAIL}
     When I do not inform the telephone field
      And I submit register form
     Then The error message "You must register at least one phone number" is displayed.

Test case 03 - Create an account error lastname is required 
    ${NEW_EMAIL} =                     FakerLibrary.Email
    Given I am at automationpractice.com
      And I enter menu "Create an account"    ${NEW_EMAIL}
     When I do not inform the lastname field
      And I submit register form
     Then The error message "lastname is required" is displayed.

Test case 04 - Create an account error password is required 
    ${NEW_EMAIL} =                     FakerLibrary.Email
    Given I am at automationpractice.com
      And I enter menu "Create an account"    ${NEW_EMAIL}
     When I do not inform the password field
      And I submit register form
     Then The error message "passwd is required" is displayed.

    
Test case 05 - Create an account error firstname is required 
    ${NEW_EMAIL} =                     FakerLibrary.Email
    Given I am at automationpractice.com
      And I enter menu "Create an account"    ${NEW_EMAIL}
     When I do not inform the firstname field
      And I submit register form
     Then The error message "firstname is required" is displayed.


Test case 06 - Create an account error no address 
    ${NEW_EMAIL} =                     FakerLibrary.Email
    Given I am at automationpractice.com
      And I enter menu "Create an account"    ${NEW_EMAIL}
     When I do not inform the address field
      And I submit register form
     Then The error message "address1 is required" is displayed.

Test case 07 - Create an account error city is required 
    ${NEW_EMAIL} =                     FakerLibrary.Email
    Given I am at automationpractice.com
      And I enter menu "Create an account"    ${NEW_EMAIL}
     When I do not inform the city field
      And I submit register form
     Then The error message "city is required" is displayed.

Test case 08 - Create an account error state not selected 
    ${NEW_EMAIL} =                     FakerLibrary.Email
    Given I am at automationpractice.com
      And I enter menu "Create an account"    ${NEW_EMAIL}
     When I do not inform the state field
      And I submit register form
     Then The error message "This country requires you to choose a state" is displayed.

Test case 09 - Create an account error zip code invalid format 
    ${NEW_EMAIL} =                     FakerLibrary.Email
    Given I am at automationpractice.com
      And I enter menu "Create an account"    ${NEW_EMAIL}
     When I do not inform zip code field correctly
      And I submit register form
     Then The error message "The Zip/Postal code you've entered is invalid. It must follow this format: 00000" is displayed.