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

Enter the registered email in the Email address field
    Wait Until Element Is Visible        id=${EMAIL_FIELD}      timeout=2s    
    Input Text                           id=${EMAIL_FIELD}      ${EMAIL_REGISTERED}

Enter the registered password in the Password field
    Input Text                          id=${FIELD_PASSWORD}    ${PASSWORD_REGISTERED}

Click on button "Sign In"
    Click Button                        id=${BUTTON_SUBMIT_LOGIN}

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
