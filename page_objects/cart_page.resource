*** Settings ***
Resource    ../page_objects/login_page.resource

*** Variables ***
${MY_CART}                      //a[@title="View my shopping cart"]
${TITLE_PAGE_MY_CART}           Order - My Store
${CART_TITLE}                   cart_title
${BLOUSE_IMAGE}                 xpath=//img[@title = "Blouse"]
${SUCESS_ADD_TO_CART}           Product successfully added to your shopping cart