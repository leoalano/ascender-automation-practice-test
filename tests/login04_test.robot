*** Settings ***
Documentation     Testing login with invalid e-mail.
Library           SeleniumLibrary
Resource          ../resources/login04.resource
#Resource         ../configs/configs.resource

*** Variables ***
${URL}             http://www.automationpractice.com   
${ERROR_MESSAGE}   xpath://p[contains(.,'There is 1 error')]
${BROWSER}         browser=chrome 
${SIGNIN}         //a[@class='login']
${PASSWORD_INPUT}  //input[@type='password']
${EMAIL_INPUT}     xpath://input[@id='email']
${SIGN_IN_BUTTON}  xpath://span[contains(.,'Sign in')]
${TEST_EMAIL}      xxx@xxxx.com
${TEST_PASSWORD}   123456 

*** Test Cases ***
Test Case 04
    Open up
    Acess website automationpractice.com
    Enter menu "Sign in"
    Fill form with email "xxxxxx@xxxxx.com" and password "1111"
    Click on button "Sign In"
    Verify if error message appears "There is 1 error"
    Close All Browsers