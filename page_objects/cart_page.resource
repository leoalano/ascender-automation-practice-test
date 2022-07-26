*** Variables ***
${BLOUSE_IMAGE}                 xpath=//img[@title = "Blouse"]   #TC01-Add Product to Cart
${BLOUSE_ADD_TO_CART_BUTTON}    xpath=//a[@data-id-product = 2]  #TC01-Add Product to Cart
${SUCESS_ADD_TO_CART}           Product successfully added to your shopping cart  #TC01-Add Product to Cart
#..............................................................................#
${WOMEN}                        //a[contains(@title,'Women')]  #TC02-Cart item delete
${PROCEED}                      //span[contains(.,'Proceed to checkout')]   #TC02-Cart item delete
${VALID_MESSAGE_CART}           //h2[contains(.,'Product successfully added to your shopping cart')]  #TC02-Cart item delete
${TITLE_PAGE_ORDER}             Order - My Store    #TC02-Cart item delete and #TC03-Cart access
${CART_TITLE}                   cart_title  #TC02-Cart item delete and #TC03-Cart access
${ICON_TRASH}                   //i[contains(@class,'icon-trash')]   #TC02-Cart item delete    
${VALID_ALERT}                  //p[@class='alert alert-warning'][contains(.,'Your shopping cart is empty.')]
#..............................................................................#
${MY_CART}                      //a[@title="View my shopping cart"]  #TC03-Cart access
#..............................................................................#
${TITLE_PAGE_MY_CART}           Order - My Store    #TC04-Verify empty Cart
#..............................................................................#
#Verificar estas.
${TITLE_PAGE_WOMAN}             Women - My Store
${FLOAT_ABOUT_ELEMENT}          //img[@src='http://automationpractice.com/img/p/1/1-home_default.jpg']
${ADD_CART}                     //span[contains(.,'Add to cart')]
${MY_ACCOUNTY_MSG}              class=info-account