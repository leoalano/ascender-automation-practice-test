***Settings***
Documentation     Testing Search functionality. 
Library           SeleniumLibrary
Library           FakerLibrary

Resource          ../resources/search.resource
Resource          ../resources/login.resource
Resource          ../configs/config.resource
Resource          ../resources/menu.resource
Resource          ../resources/navigation.resource
Resource          ../resources/contact.resource
Resource          ../resources/footer.resource

Test Setup        Open Browser          browser=chrome
Test Teardown     Close All Browsers

*** Variables ***
${VALID_WORD}       blouse
${INVALID_WORD}     xfdtf

*** Test Cases ***
Test case 01 - Search with existing website term
    Given I am at automationpractice.com
     When I fill the field with "${VALID_WORD}"  
      And I submit the search
     Then I should receive valid results            

Test case 02 - Search with nonexistent website term
    Given I am at automationpractice.com
     When I fill the field with "${INVALID_WORD}" 
      And I submit the search
     Then I should receive an error message     No results were found for your search 

Test case 03 - Empty search
    Given I am at automationpractice.com
     When I fill the field with ""
      And I submit the search
     Then I should receive an error message   Please enter a search keyword



