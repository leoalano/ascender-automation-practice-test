*** Settings ***
Resource    ../page_objects/login_page.resource
Resource    ../page_objects/menu_page.resource

*** Variables ***
${WOMEN}                        //a[contains(@title,'Women')]
${TITLE_PAGE_WOMAN}             Women - My Store
${FLOAT_ABOUT_ELEMENT}          //img[@src='http://automationpractice.com/img/p/1/1-home_default.jpg']
${ADD_CART}                     //span[contains(.,'Add to cart')]
${TITLE_PAGE_ORDER}             Order - My Store
${VALID_MESSAGE_CART}           xpath=//h2[contains(.,'Product successfully added to your shopping cart')]    
${PROCEED}                      //span[contains(.,'Proceed to checkout')]
${ICON_TRASH}                   //i[contains(@class,'icon-trash')]
${VALID_ALERT}                  //p[@class='alert alert-warning'][contains(.,'Your shopping cart is empty.')]
${MY_CART}                      xpath=//a[@title="View my shopping cart"]
${TITLE_PAGE_MY_CART}           Order - My Store
${CART_TITLE}                   id=cart_title
${BLOUSE_IMAGE}                 xpath=//img[@title = "Blouse"]
${SUCESS_ADD_TO_CART}           Product successfully added to your shopping cart
${CART_TITLE}                   cart_title
${BLOUSE_ADD_TO_CART_BUTTON}    xpath=//a[@data-id-product = 2]
${SUCESS_ADD_TO_CART}           Product successfully added to your shopping cart
${VALIDATE_PAGE_LOGIN1}         xpath=//h3[@class='page-subheading'][contains(.,'Already registered?')]
${EMPTY_CART_MSG}               Your shopping cart is empty.  #TC04-Verify empty Cart