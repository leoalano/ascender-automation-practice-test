*** Settings ***
Resource    ../page_objects/checkout_page.resource
Resource    ../page_objects/cart_page.resource
Resource    ../page_objects/login_page.resource

*** Keywords ***  
Click "Proceed to Checkout" on the summary page
    Title Should Be                    ${TITLE_PAGE_ORDER}
    Click Element                      ${CHECKOUT_PROCEED}

Click "Proceed to Checkout" on the addresses page
    Page Should Contain Element        locator=${PAGE_ADDRESSES}
    Click Element                      ${CHECKOUT_PROCEED}

Click "Proceed to Checkout" on the shipping page
    Page Should Contain Element        locator=${PAGE_SHIPPING}
    Click Element                      ${AGREE_TERMS}
    Click Element                      ${CHECKOUT_PROCEED}

Choose the form of payment
    Page Should Contain Element        locator=${PAGE_PAYMENT}
    Click Element                      ${FORM_OF_PAYMENT}

Click on "I confirm my order"
    Page Should Contain Element        locator=${BANK_PAYAMENT}
    Click Element                      ${CONFIRM_ORDER}

Confirm order is complete
    Page Should Contain Element        ${MESSAGE_ORDER_CONFIRMATION}

