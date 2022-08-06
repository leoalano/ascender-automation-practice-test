*** Settings ***
Documentation   Newsletter feature tests suite.
Library         SeleniumLibrary
Library         FakerLibrary
Test Setup      Open Browser    about:blank  ${BROWSER}
Test Teardown   Close All Browsers

Resource        ../configs/config.resource
Resource        ../resources/navigation.resource
Resource        ../resources/footer.resource
Resource        ../resources/newsletter.resource

*** Variables ***
${EMAIL_REGISTERED}           christian.hernan@gmail.com
${INVALID_EMAIL}              compra_teste$gmail.com
${EMPTY_EMAIL}                #Variável vazia.
*** Test Cases ***
Test case 01 - Test with registered email
    Given I am at automationpractice.com
      And I put mouse over field "newsletter-input"
     When I fill with registered email "${EMAIL_REGISTERED}"
      And I click in "submitnewsletter button"
     Then I verify message "already registered"

Test case 02 - Test with unregistered email
    ${NEW_EMAIL}                  FakerLibrary.Email
    Given I am at automationpractice.com
      And I put mouse over field "newsletter-input"
     When I fill with unregistered email    ${NEW_EMAIL}
      And I click in "submitnewsletter button"
     Then I verify message "successfully subscribed"

Test case 03 - Test with invalid email
    Given I am at automationpractice.com
      And I put mouse over field "newsletter-input"
     When I fill with invalid email "${INVALID_EMAIL}"
      And I click in "submitnewsletter button"
     Then I verify message "invalid email address"
      
Test case 04 - Test with empty email field
    Given I am at automationpractice.com
      And I put mouse over field "newsletter-input"
     When I leave the email field empty ${EMPTY_EMAIL} 
      And I click in "submitnewsletter button"
     Then I verify message "invalid email address"