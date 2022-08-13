***Settings***
Documentation     Testing Write Review functionality. 
Library           SeleniumLibrary
Library           FakerLibrary

Resource          ../resources/search.resource
Resource          ../resources/login.resource
Resource          ../configs/config.resource
Resource          ../resources/menu.resource
Resource          ../resources/navigation.resource
Resource          ../resources/contact.resource
Resource          ../resources/footer.resource
Resource          ../resources/write_review.resource

Test Setup        Open Browser          browser=chrome
Test Teardown     Close All Browsers

*** Variables ***
${VALID_EMAIL}           compra_teste@gmail.com
${VALID_PASSWORD}        12345
${REVIEW_TITLE}          Review Title Example
${REVIEW_COMMENT}        Review Comment Example

*** Test Cases ***
Test case 01 - Add review with empty title
    Given I am at automationpractice.com
      And I enter menu "Sign in"
      And I fill login form with "${VALID_EMAIL}" and "${VALID_PASSWORD}"
      And I submit login form
      And I am at automationpractice.com
      And I put mouse over image "${BLOUSE_IMG}"
      And I click on image "${BLOUSE_TITLE}"
     When I click on 'write a review'
      And I fill form with '' and '${REVIEW_COMMENT}'
      And I submit form 
     Then I should see an error message             Title is incorrect    

Test case 02 - Add review with empty comment
     Given I am at automationpractice.com
      And I enter menu "Sign in"
      And I fill login form with "${VALID_EMAIL}" and "${VALID_PASSWORD}"
      And I submit login form
      And I am at automationpractice.com
      And I put mouse over image "${BLOUSE_IMG}"
      And I click on image "${BLOUSE_TITLE}"
     When I click on 'write a review'
      And I fill form with '${REVIEW_TITLE}' and ''
      And I submit form 
      And I should see an error message             Comment is incorrect  

Test case 03 - Add review with empty title and comment
      Given I am at automationpractice.com
      And I enter menu "Sign in"
      And I fill login form with "${VALID_EMAIL}" and "${VALID_PASSWORD}"
      And I submit login form
      And I am at automationpractice.com
      And I put mouse over image "${BLOUSE_IMG}"
      And I click on image "${BLOUSE_TITLE}"
     When I click on 'write a review'
      And I fill form with '' and ''
      And I submit form 
     Then I should see an error message             Title is incorrect    
      And I should see an error message             Comment is incorrect  

Test case 04 - Adding review successfully
      Given I am at automationpractice.com
      And I enter menu "Sign in"
      And I fill login form with "${VALID_EMAIL}" and "${VALID_PASSWORD}"
      And I submit login form
      And I am at automationpractice.com
      And I put mouse over image "${BLOUSE_IMG}"
      And I click on image "${BLOUSE_TITLE}"
     When I click on 'write a review'
      And I fill form with '${REVIEW_TITLE}' and '${REVIEW_COMMENT}'
      And I submit form 
     Then I should see a successful review message     Your comment has been added