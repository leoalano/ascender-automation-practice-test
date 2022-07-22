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
    Page Should Contain Element        id=cart_title   ${VALID_CART_PAGE}
    Click Element                      ${ICON_TRASH}

Verify item deletion
    Wait Until Element is Visible      ${VALID_ALERT}
    Page Should Contain Element        ${VALID_ALERT}