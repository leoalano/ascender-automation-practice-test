*** Settings *** 
Library     SeleniumLibrary
#Resource    ../page_objects/page_obj.resource

*** Keywords ***
Open up
    Open Browser                    browser=chrome

Acess website automationpractice.com
    Go To                           ${URL}

Enter menu "Sign in"
    Wait Until Element is Visible   ${SIGNIN}
    Click Element                   ${SIGNIN} 
    sleep                           6 seconds

Fill form with email "xxxxxx@xxxxx.com" and password "1111"
    Wait Until Element is Visible   ${PASSWORD_INPUT}
    Wait Until Element is Visible   ${EMAIL_INPUT} 
    Input Text      ${EMAIL_INPUT}      ${TEST_EMAIL}
    Input password  ${PASSWORD_INPUT}   ${TEST_PASSWORD}  

Click on button "Sign In"
    Wait Until Element is Visible   ${SIGN_IN_BUTTON}
    Click Element                   ${SIGN_IN_BUTTON}

Verify if error message appears "There is 1 error"
    Wait Until Element is Visible   ${ERROR_MESSAGE}    

Close All Browsers
    Close all Browsers