*** Settings ***
Resource    ../page_objects/cart_page.resource
Resource    ../page_objects/menu_page.resource
Resource    ../resources/login.resource

*** Keywords ***     
I add product                          #TC01-Add product to cart
    Mouse Over                         ${BLOUSE_IMAGE}
    Click Element                      ${BLOUSE_ADD_TO_CART_BUTTON}
    
I confirm product add to cart          #TC01-Add product to cart
    Page Should Contain                ${SUCESS_ADD_TO_CART}

I click on the "Women"                 #TC02-Cart item delete
    Wait Until Element is Visible      ${WOMEN}
    Click Element                      ${WOMEN}

I move the mouse over the item         #TC02-Cart item delete
    Title Should Be                    ${TITLE_PAGE_WOMAN}
    Mouse Down On Image                ${FLOAT_ABOUT_ELEMENT}
    Click Element                      ${ADD_CART}

I click on Proceed to checkout Element  #TC02-Cart item delete
    Page Should Contain Element        ${VALID_MESSAGE_CART}
    Wait Until Element is Visible      ${PROCEED}
    Click Element                      ${PROCEED}

I click on the "trash"                 #TC02-Cart item delete
    Title Should Be                    ${TITLE_PAGE_ORDER}
    Page Should Contain Element        ${CART_TITLE} 
    Click Element                      ${ICON_TRASH}

I verify item deletion                 #TC02-Cart item delete
    Wait Until Element is Visible      ${VALID_ALERT}
    Page Should Contain Element        ${VALID_ALERT}

I click on My Cart Element             #TC03-Cart access
    Wait Until Element Is Visible      ${MY_CART}
    Click Element                      ${MY_CART}
    Title Should Be                    ${TITLE_PAGE_ORDER} 
    Page Should Contain Element        ${CART_TITLE}

I verify page should be contain text    #TC04-Verify empty Cart
    Title Should Be                    ${TITLE_PAGE_ORDER}
    Page Should Contain                ${EMPTY_CART_MSG}