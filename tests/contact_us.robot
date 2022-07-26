Documentation     Testing login with invalid e-mail.
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

*** Test Cases ***
Teste case 01 - Successful contact via the menu
    Given I am at automationpractice.com
      And I enter menu "Contact Us" via the menu
    #  When I fill contact us form with "${??}" and "${??}" and "${??}" 
      And I submit the contact us form
     Then I should have successfully sent the message

Teste case 02 - Successful contact via the footer
    Given I am at automationpractice.com
      And I enter "Contact Us" via the footer
    #  When I fill contact us form with "${??}" and "${??}" and "${??}" 
      And I submit the contact us form
     Then I should have successfully sent the message

Teste case 03 - Invalid email address
    Given I am at automationpractice.com
      And I enter "Contact Us" via the menu
    #  When I fill contact us form with "${??}" and "${??}" and "${??}" 
    #   And I fill the email field with an invalid email (no @ and no .com)
      And I submit contact us form
    #  Then I should receive and error message

Teste case 04 - blank message error
    Given I am at automationpractice.com
      And I enter "Contact Us" via the menu
    #  When I fill contact us form with "${??}" and "${??}" and "${??}" 
    #   And I leave the message field blank
      And I submit the contact us form
    #  Then I should receive and error message

Teste case 05 - no subject heading selected
    Given I am at automationpractice.com
      And I enter "Contact Us" via the menu
    #  When I fill contact us form with "${??}" and "${??}" and "${??}" 
    #   And I don't select any item in subject heading 
      And I submit the contact us form
    #  Then I should receive and error message
