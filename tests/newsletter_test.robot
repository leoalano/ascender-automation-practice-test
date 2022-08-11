*** Settings ***
Documentation     Newsletter feature tests suite.
Library           SeleniumLibrary
Library           FakerLibrary

Resource          ../configs/config.resource
Resource          ../resources/navigation.resource
Resource          ../resources/newsletter.resource

Test Setup        Open Browser  browser=chrome
Test Teardown     Close All Browsers

*** Variables ***
${EMAIL_REGISTERED}           christian.hernan@gmail.com
${INVALID_EMAIL}              compra_teste$gmail.com

*** Test Cases ***
Test case 01 - Test with registered email
    Given I am at automationpractice.com
      And I put mouse over "newsletter" field
     When I fill with "${EMAIL_REGISTERED}"
      And I click in "submitnewsletter button"
     Then I verify message "${ALREADY_REGISTERED}"

Test case 02 - Test with unregistered email
    ${UNREGISTERED_EMAIL}                  FakerLibrary.Email
    Given I am at automationpractice.com
      And I put mouse over "newsletter" field
     When I fill with "${UNREGISTERED_EMAIL}"
      And I click in "submitnewsletter button"
     Then I verify message "${SUCCESSFULLY_SUBSCRIBED}"

Test case 03 - Test with invalid email
    Given I am at automationpractice.com
      And I put mouse over "newsletter" field
     When I fill with "${INVALID_EMAIL}"
      And I click in "submitnewsletter button"
     Then I verify message "${MSG_INVALID_EMAIL}"

Test case 04 - Test with empty email field
    Given I am at automationpractice.com
      And I put mouse over "newsletter" field
     When I fill with "" 
      And I click in "submitnewsletter button"
     Then I verify message "${MSG_INVALID_EMAIL}"