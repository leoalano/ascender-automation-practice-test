*** Variables ***
${BLOUSE_IMAGE}                 xpath=//img[@title = "Blouse"]  #TC01-Add Product to Cart
${BLOUSE_ADD_TO_CART_BUTTON}    xpath=//a[@data-id-product = 2]  #TC01-Add Product to Cart
${SUCESS_ADD_TO_CART}           Product successfully added to your shopping cart  #TC01-Add Product to Cart
${TITLE_PAGE_WOMAN}             Women - My Store  #TC02-Cart item delete
${WOMEN}                        //a[contains(@title,'Women')]  #TC02-Cart item delete
${ADD_CART}                     //span[contains(.,'Add to cart')]  #TC02-Cart item delete
${ICON_TRASH}                   //i[contains(@class,'icon-trash')]   #TC02-Cart item delete
${PROCEED}                      //span[contains(.,'Proceed to checkout')]  #TC02-Cart item delete
${VALID_MESSAGE_CART}           //h2[contains(.,'Product successfully added to your shopping cart')]  #TC02-Cart item delete
${FLOAT_ABOUT_ELEMENT}          //img[@src='http://automationpractice.com/img/p/1/1-home_default.jpg']  #TC02-Cart item delete
${VALID_ALERT}                  //p[@class='alert alert-warning'][contains(.,'Your shopping cart is empty.')]  #TC02-Cart item delete
${CART_TITLE}                   cart_title  #TC02-Cart item delete and #TC03-Cart access
${TITLE_PAGE_ORDER}             Order - My Store    #TC02-Cart item delete and #TC03-Cart access
${MY_CART}                      //a[@title="View my shopping cart"]  #TC03-Cart access
${EMPTY_CART_MSG}               Your shopping cart is empty.  #TC04-Verify empty Cart