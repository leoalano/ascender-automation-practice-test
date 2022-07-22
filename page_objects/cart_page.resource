*** Settings ***
Resource    ../page_objects/login_page.resource

*** Variables ***
${WOMEN}                    //a[contains(@title,'Women')]
${TITLE_PAGE_WOMAN}         Women - My Store
${FLOAT_ABOUT_ELEMENT}      //img[@src='http://automationpractice.com/img/p/1/1-home_default.jpg']
${ADD_CART}                 //span[contains(.,'Add to cart')]
${TITLE_PAGE_ORDER}         Order - My Store
${VALID_MESSAGE_CART}       //h2[contains(.,'Product successfully added to your shopping cart')]    
${PROCEED}                  //span[contains(.,'Proceed to checkout')]
${ICON_TRASH}               //i[contains(@class,'icon-trash')]
${VALID_ALERT}              //p[@class='alert alert-warning'][contains(.,'Your shopping cart is empty.')]
${MY_CART}                      //a[@title="View my shopping cart"]
${TITLE_PAGE_MY_CART}           Order - My Store
${CART_TITLE}                   cart_title
${BLOUSE_IMAGE}                 xpath=//img[@title = "Blouse"]
${SUCESS_ADD_TO_CART}           Product successfully added to your shopping cart
${CART_TITLE}                   cart_title
