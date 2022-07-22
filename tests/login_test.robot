*** Settings ***
Documentation     Testing login with invalid e-mail.
Library           SeleniumLibrary
Library           FakerLibrary
Resource          ../resources/login.resource
Resource          ../configs/configs.resource
Test Setup        Open Browser          browser=chrome
Test Teardown     Close All Browsers

*** Test Cases ***
Teste case 01 - Successful Login                    
    Acess website automationpractice.com
    Enter menu "Sign in"
    Type the registered email in the field "email address"
    Type the registered Password in the field "Password"
    Click on button "Sign In"
    Verify successful login
    
Test case 02 - Login with invalid user
    Acess website automationpractice.com
    Enter menu "Sign in"
    Type non-registered email in the email field
    Type non-registered password in the password field 
    Click on button "Sign In"
    Check login error verification

Test case 03 - Login with invalid passwd
    Acess website automationpractice.com
    Enter menu "Sign in"
    Type the registered email in the field "email address"
    Type fake non-registered password in the password field 
    Click on button "Sign In"
    Check login error verification
       
Test Case 04 - Invalid email
    Acess website automationpractice.com
    Enter menu "Sign in"
    Fill form with email "xxxxxx@xxxxx.com" and password "1111"
    Click on button "Sign In"
    Verify if error message appears "There is 1 error"

Test case 05 - Login with empty passwd
    Acess website automationpractice.com
    Enter menu "Sign in"
    Type the registered email in the field "email address"
    Type empty password in the password field 
    Click on button "Sign In"
    Check login empty password error 
    
Test Case 06 - Forgot Password
    Given I am at automationpractice.com
    And I enter menu "Sign in"
    And I click on "Forgot Password"
    When I fill the email field with my email
    And submit my email
    Then I should see a successful message