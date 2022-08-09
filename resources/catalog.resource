*** Settings ***
Resource    ../page_objects/catalog_page.resource

*** Keywords ***
I click on image "sample-1"
    Wait Until Element Is Visible           ${IMG_SAMPLE_1}
    Click Element                           ${SLIDER_ROW}
I click on image "sample-2"
    Click Element                           ${BUTTON_NEXT}
    Wait Until Element Is Visible           ${IMG_SAMPLE_2}
    Click Element                           ${SLIDER_ROW}
I click on image "sample-3"
    Click Element                           ${BUTTON_NEXT}
    Click Element                           ${BUTTON_NEXT}
    Wait Until Element Is Visible           ${IMG_SAMPLE_3}
    Click Element                           ${SLIDER_ROW}
I click on image "banner_img6"
    Wait Until Element Is Visible           ${BANNER_IMG_06}
    Click Element                           ${BANNER_IMG_06}
I click on image "banner_img7"
    Wait Until Element Is Visible           ${BANNER_IMG_07}
    Click Element                           ${BANNER_IMG_07}
I verify a successful redirect
    Title Should Be                         ${TITLE_PAGE_PRESTASHOP}

I click on image "Faded Short Sleeve T-shirts"
    Wait Until Element Is Visible           ${FADED_SHORT_IMG}
    Mouse Over                              ${FADED_SHORT_IMG}
    Click Element                           ${FADED_SHORT_TITLE}

I verify a successful redirect for product page "Short"
    Page Should Contain                     Faded Short Sleeve T-shirts
    Title Should Be                         Faded Short Sleeve T-shirts - My Store

I click on image "Blouse"
    Wait Until Element Is Visible           ${BLOUSE_IMG}
    Mouse Over                              ${BLOUSE_IMG}
    Click Element                           ${BLOUSE_TITLE}
I verify a successful redirect for product page "Blouse"
    Page Should Contain                     Blouse
    Title Should Be                         Blouse - My Store

I click on image "Printed Dress1"
    Wait Until Element Is Visible           ${P_DRESS_IMG1}
    Mouse Over                              ${P_DRESS_IMG1}
    Click Element                           ${P_DRESS_TITLE1}
I verify a successful redirect for product page "Printed Dress1"
    Page Should Contain                     Printed Dress
    Title Should Be                         Printed Dress - My Store

I click on image "Printed Dress2"
    Wait Until Element Is Visible           ${P_DRESS_IMG2}
    Mouse Over                              ${P_DRESS_IMG2}
    Click Element                           ${P_DRESS_TITLE2}
I verify a successful redirect for product page "Printed Dress2"
    Page Should Contain                     Printed Dress
    Title Should Be                         Printed Dress - My Store

I click on image "Printed Summer Dress1"
    Wait Until Element Is Visible           ${P_SUMMER_DRESS_IMG1}
    Mouse Over                              ${P_SUMMER_DRESS_TITLE1}
    Click Element                           ${P_SUMMER_DRESS_TITLE1}
I verify a successful redirect for product page "Printed Summer Dress1"
    Page Should Contain                     Printed Summer Dress
    Title Should Be                         Printed Summer Dress - My Store

I click on image "Printed Summer Dress2"
    Wait Until Element Is Visible           ${P_SUMMER_DRESS_IMG2}
    Mouse Over                              ${P_SUMMER_DRESS_TITLE2}
    Click Element                           ${P_SUMMER_DRESS_TITLE2}
I verify a successful redirect for product page "Printed Summer Dress2"
    Page Should Contain                     Printed Summer Dress
    Title Should Be                         Printed Summer Dress - My Store

I click on image "Printed Chiffon Dress"
    Wait Until Element Is Visible           ${P_CHIFRON_DRESS_IMG}
    Mouse Over                              ${P_CHIFRON_DRESS_TITLE}
    Click Element                           ${P_CHIFRON_DRESS_TITLE}
I verify a successful redirect for product page "Printed Chiffon Dress"
    Page Should Contain                     Printed Chiffon Dress
    Title Should Be                         Printed Chiffon Dress - My Store

I click on image "Top Trends"
    Wait Until Element Is Visible           ${TOP_TRENDS_IMG}
    Click Element                           ${TOP_TRENDS_IMG}

I click on image "Men's C&J"
    Wait Until Element Is Visible           ${MENS_C&J_IMG}
    Click Element                           ${MENS_C&J_IMG}

I click on image "Women's C&J"
    Wait Until Element Is Visible           ${WOMEN_C&J_IMG}
    Click Element                           ${WOMEN_C&J_IMG}

I click on image "Sunglasses & Eyewear"
    Wait Until Element Is Visible           ${SUNGLASSES_&_EYEWERE_IMG}
    Click Element                           ${SUNGLASSES_&_EYEWERE_IMG}

I click on image "Savvy Trends Handbags"
    Wait Until Element Is Visible           ${SAVVY_TRENDS_HANDBAGS_IMG}
    Click Element                           ${SAVVY_TRENDS_HANDBAGS_IMG}