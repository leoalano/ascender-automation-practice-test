*** Settings ***
Resource    ../page_objects/cart_page.resource
Resource    ../resources/login.resource

*** Keywords ***
I Add product                           #TC01-Add Product to Cart
    Mouse Over                         ${BLOUSE_IMAGE}
    Click Element                      ${BLOUSE_ADD_TO_CART_BUTTON}

I confirm product add to cart           #TC01-Add Product to Cart
    Page Should Contain                ${SUCESS_ADD_TO_CART}

I click on the "Women"                  #TC02-Cart item delete
    Wait Until Element is Visible      ${WOMEN}
    Click Element                      ${WOMEN}

I move the mouse over the item          #TC02-Cart item delete
    Title Should Be                    ${TITLE_PAGE_WOMAN}
    Mouse Down On Image                ${FLOAT_ABOUT_ELEMENT}
    Click Element                      ${ADD_CART}

I click on Proceed to checkout Element  #TC02-Cart item delete
    Wait Until Element is Visible      ${PROCEED}
    Page Should Contain Element        locator=${VALID_MESSAGE_CART}
    Click Element                      ${PROCEED}

I click on the "trash"                  #TC02-Cart item delete
    Title Should Be                    ${TITLE_PAGE_ORDER}
    Page Should Contain Element        id=cart_title   ${CART_TITLE} 
    Click Element                      ${ICON_TRASH}

I verify item deletion                  #TC02-Cart item delete
    Wait Until Element is Visible      ${VALID_ALERT}
    Page Should Contain Element        ${VALID_ALERT}

I click on My Cart Element              #TC03-Cart access and TC04-Verify empty Cart
    Wait Until Element Is Visible      locator=${MY_CART}
    Click Element                      locator=${MY_CART}
    Title Should Be                    ${TITLE_PAGE_ORDER} 
    Page Should Contain Element        id=${CART_TITLE}

I verify page should be contain text    #TC04-Verify empty Cart
    Title Should Be                    ${TITLE_PAGE_ORDER}
    Page Should Contain                ${EMPTY_CART_MSG}