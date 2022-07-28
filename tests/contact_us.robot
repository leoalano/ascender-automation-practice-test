***Settings***
Documentation     Testing login with invalid e-mail.
Library           SeleniumLibrary
Library           FakerLibrary
Resource          ../resources/login.resource
Resource          ../configs/config.resource
Resource          ../resources/menu.resource
Resource          ../resources/navigation.resource
Resource          ../resources/contact.resource
Resource          ../resources/footer.resource
Test Setup        Open Browser          browser=chrome
Test Teardown     Close All Browsers

*** Variables ***
${VALID_EMAIL}           compra_teste@gmail.com
${VALID_PASSWORD}        12345
${INVALID_EMAIL}         xurupitas
${UNREGISTERED_EMAIL}    xurupitas@namanteiga.com.br
${INCORRECT_PASSWORD}    wrong_password
${ORDER_REF}             1234
${MESSAGE}               This is a test message.

*** Test Cases ***
Teste case 01 - Successful contact via the menu
    Given I am at automationpractice.com
      And I enter "Contact Us" via the menu
     When I fill contact us form with "${VALID_EMAIL}" and "${ORDER_REF}" and "${MESSAGE}"
      And I submit the contact us form
     Then I should have successfully sent the message

Teste case 02 - Successful contact via the footer
    Given I am at automationpractice.com
      And I enter "Contact Us" via the footer
     When I fill contact us form with "${VALID_EMAIL}" and "${ORDER_REF}" and "${MESSAGE}"
      And I submit the contact us form
     Then I should have successfully sent the message

Teste case 03 - Invalid email address
    Given I am at automationpractice.com
      And I enter "Contact Us" via the menu
     When I fill contact us form with "${INVALID_EMAIL}" and "${ORDER_REF}" and "${MESSAGE}"
      And I submit the contact us form
     Then I should receive an error message       Invalid email address

Teste case 04 - blank message error
    Given I am at automationpractice.com
      And I enter "Contact Us" via the menu
     When I fill contact us form with "${VALID_EMAIL}" and "${ORDER_REF}" and ""
      And I submit the contact us form
     Then I should receive an error message         The message cannot be blank.

Teste case 05 - no subject heading selected
    Given I am at automationpractice.com
      And I enter "Contact Us" via the menu
     When I fill contact us form without subject heading 
      And I submit the contact us form
     Then I should receive an error message            Please select a subject from the list provided. 
