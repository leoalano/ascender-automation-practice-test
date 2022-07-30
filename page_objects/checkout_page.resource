*** Variables ***
${CHECKOUT_PROCEED}                 (//span[contains(.,'Proceed to checkout')])[2]
${PAGE_ADDRESSES}                   //h1[@class='page-heading'][contains(.,'Addresses')]
${PAGE_SHIPPING}                    //h1[@class='page-heading'][contains(.,'Shipping')]
${AGREE_TERMS}                      id=cgv
${PAGE_PAYMENT}                     //h1[@class='page-heading'][contains(.,'Please choose your payment method')]
${FORM_OF_PAYMENT}                  //a[@class='bankwire'][contains(.,'Pay by bank wire (order processing will be longer)')]
${BANK_PAYAMENT}                    //h3[@class='page-subheading'][contains(.,'Bank-wire payment.')]
${CONFIRM_ORDER}                    //span[contains(.,'I confirm my order')]
${MESSAGE_ORDER_CONFIRMATION}       //strong[@class='dark'][contains(.,'Your order on My Store is complete.')]