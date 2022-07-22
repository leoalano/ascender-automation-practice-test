*** Settings ***
Resource    ../page_objects/login_page.resource

*** Keywords ***
Type non-registered email in the email field
    Wait Until Element Is Visible       id=${EMAIL_FIELD}      timeout=2s    
    Input Text                          id=${EMAIL_FIELD}      ${EMAIL_NO_REGISTERED}

Type non-registered password in the password field
    Input Text                          id=${FIELD_PASSWORD}    ${PASSWORD_NO_REGISTERED}

Type fake non-registered password in the password field  #Keyword Senha Fake TC#03-Login
    Input Text                          id=passwd    ${FAKE_PASSWORD}

Type empty password in the password field
    Input Text                          id=passwd    ${EMPTY_PASSWORD}

Check login empty password error 
    Wait Until Element Is Visible       id=authentication
    Page Should Contain Element         ${PASSWORD_EMPTY_VALIDATION}

Check login error verification
    Wait Until Element Is Visible       locator=${VALIDATION_AUTHENTICATION}
    Title Should Be                     ${TITLE_PAGE_LOGIN}
    Page Should Contain Element         locator=${VALIDATION_AUTHENTICATION}

Acess website automationpractice.com
    Maximize Browser Window
    Go To                               ${URL}
    Set Selenium Speed  0.3s   
    
Enter menu "Sign in"
    Click Element                       locator=${SIGN_IN}
    Title Should Be                     ${TITLE_PAGE_LOGIN}
    Page Should Contain Element         locator=${VALIDATE_PAGE_LOGIN}
    Page Should Contain Element         locator=${VALIDATE_PAGE_LOGIN_2}

Fill form with email "xxxxxx@xxxxx.com" and password "1111"
    Wait Until Element is Visible       ${PASSWORD_INPUT}
    Wait Until Element is Visible       ${EMAIL_INPUT} 
    Input Text                          ${EMAIL_INPUT}      ${TEST_EMAIL}
    Input password                      ${PASSWORD_INPUT}   ${TEST_PASSWORD}  

Click on button "Sign In"
    Wait Until Element is Visible       ${SIGN_IN_BUTTON}
    Click Element                       ${SIGN_IN_BUTTON}

Verify if error message appears "There is 1 error"
    Wait Until Element is Visible       ${ERROR_MESSAGE}  
    
Access homepage of automationpractice.com
    Go To                               ${URL}
    Maximize Browser Window
    Set Selenium Speed  0.3s
    #Sleep   2s

Enter menu "Sign in" at the header
    Click Element                       locator=${SIGN_IN}
    Title Should Be                     ${TITLE_PAGE_LOGIN}
    Page Should Contain Element         locator=${VALIDATE_PAGE_LOGIN}
    Page Should Contain Element         locator=${VALIDATE_PAGE_LOGIN1}
    Sleep   2s

Type the registered email in the field "email address"
    Wait Until Element Is Visible       id=email
    Input Text                          id=email    ${EMAIL_REGISTERED}
    Sleep   2s

Type the registered Password in the field "Password"
    Input Text                          id=passwd   ${PASSWORD_REGISTERED}
    Sleep   2s

Click on the "Sign In" Button
    Click Button                        id=SubmitLogin
    Sleep   2s

Verify successful login
    Title Should Be                     ${TITLE_ACCOUNT}

Add product
    Mouse Over                          ${BLOUSE_IMAGE}
    Click Element                       ${BLOUSE_ADD_TO_CART_BUTTON}

Confirm product add to cart
    Page Should Contain                 ${SUCESS_ADD_TO_CART}