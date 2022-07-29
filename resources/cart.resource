*** Settings ***
Resource    ../page_objects/cart_page.resource
Resource    ../resources/login.resource

*** Keywords ***     

Click on the "Women"
    Wait Until Element is Visible      ${WOMEN}
    Click Element                      ${WOMEN}

Move the mouse over the item
    Title Should Be                    ${TITLE_PAGE_WOMAN}
    Mouse Down On Image                ${FLOAT_ABOUT_ELEMENT}
    Click Element                      ${ADD_CART}

Click on Proceed to checkout Element
    Wait Until Element is Visible      ${PROCEED}
    Page Should Contain Element        locator=${VALID_MESSAGE_CART}
    Click Element                      ${PROCEED}

Click on the "trash"
    Title Should Be                    ${TITLE_PAGE_ORDER}
    Page Should Contain Element        id=cart_title   ${CART_TITLE} 
    Click Element                      ${ICON_TRASH}

Verify item deletion
    Wait Until Element is Visible      ${VALID_ALERT}
    Page Should Contain Element        ${VALID_ALERT}

Acess website automationpractice.com
    Maximize Browser Window
    Go To                               ${URL} 
    Set Selenium Speed  0.3s      

Enter menu "Sign in"   
    Click Element                       locator=${SIGN_IN_MENU_BUTTON}
    Title Should Be                     ${TITLE_PAGE_LOGIN}
    Page Should Contain Element         locator=${VALIDATE_PAGE_LOGIN1}
    #Page Should Contain Element         locator=${VALIDATE_PAGE_LOGIN_2}

Enter the registered email in the Email address field
    Wait Until Element Is Visible        id=${EMAIL_INPUT}      timeout=2s    
    Input Text                           id=${EMAIL_INPUT}      ${VALID_EMAIL}

Enter the registered password in the Password field
    Input Text                          id=${PASSWORD_INPUT}    ${VALID_PASSWORD}

Click on button "Sign In"
    Click Button                        id=${SIGN_IN_BUTTON}

Click on My Cart Element
    Wait Until Element Is Visible       locator=${MY_CART}
    Click Element                       locator=${MY_CART}
    Title Should Be                     ${TITLE_PAGE_ORDER} 
    Page Should Contain Element         id=${CART_TITLE}

I Add product
    Mouse Over                  ${BLOUSE_IMAGE}
    Click Element               ${BLOUSE_ADD_TO_CART_BUTTON}
    
Confirm product add to cart
    Page Should Contain         ${SUCESS_ADD_TO_CART}
