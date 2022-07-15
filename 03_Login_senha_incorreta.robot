*** Settings ***
Library   SeleniumLibrary
Library   FakerLibrary

Test Setup  Open Browser  browser=chrome
Test Teardown  Close Browser

*** Variables ***
${URL}                  http://automationpractice.com/
${SING_IN}              xpath=//a[@title='Log in to your customer account']  
${EMAIL}                compra_teste@gmail.com.br
${VAZIO}    

*** Test case ***
Scenario 03: Login Wrong password.
    Go To                       ${URL}
    Maximize Browser Window
    Click Element               ${SING_IN}
    Input Text                  id=email         ${EMAIL}
    Input Text                  id=passwd        1234567
    Click Element               name=SubmitLogin
    Page Should Contain         Authentication failed.

Scenario 04: Login Empty.
    Go To                       ${URL}
    Maximize Browser Window
    Click Element               ${SING_IN}
    Input Text                  id=email         ${EMAIL}
    Input Text                  id=passwd        ${VAZIO}   
    Click Element               name=SubmitLogin
    Page Should Contain         Password is required.