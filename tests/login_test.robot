*** Settings ***
Documentation     Testing login with invalid e-mail.
Library           SeleniumLibrary
Resource          ../resources/login.resource
#Resource         ../configs/configs.resource
Test Setup        Open Browser          browser=chrome
Test Teardown     Close All Browsers


*** Test Cases ***
Test Case 04
    Acess website automationpractice.com
    Enter menu "Sign in"
    Fill form with email "xxxxxx@xxxxx.com" and password "1111"
    Click on button "Sign In"
    Verify if error message appears "There is 1 error"