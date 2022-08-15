*** Settings ***
Resource    ../page_objects/our_store_page.resource

*** Keywords ***
I enter "Our stores" via the footer
    Click Element               ${OUR_STORE_FOOTER}

I search for "${ZIP_CODE_COCONUT_GROVE_STORE}" zip code
    Input Text                  ${YOUR_LOCATION_FIELD}   ${ZIP_CODE_COCONUT_GROVE_STORE}
    Click Element               ${SEARCH_STORE_BUTTON}        

The message "${NOT_FOUND_MESSAGE_DISPLAY}" should be displayed
    Page Should Contain Element  ${NOT_FOUND_MESSAGE_DISPLAY}

I input "${ZIP_CODE_DADE_COUNTY_STORE}" zip code in search field
    Input Text                  ${YOUR_LOCATION_FIELD}   ${ZIP_CODE_DADE_COUNTY_STORE}
    Click Element               ${SEARCH_STORE_BUTTON}

I search "${ZIP_CODE_BISCAYNE_STORE}" zip code
    Input Text                  ${YOUR_LOCATION_FIELD}   ${ZIP_CODE_BISCAYNE_STORE}
    Click Element               ${SEARCH_STORE_BUTTON}

I input "${ZIP_CODE_FORT_LAUDERDALE_STORE}" zip code for search
    Input Text                  ${YOUR_LOCATION_FIELD}   ${ZIP_CODE_FORT_LAUDERDALE_STORE}
    Click Element               ${SEARCH_STORE_BUTTON}

I input "${ZIP_CODE_PEMBROKE_PINES_STORE}" zip code for search field
    Input Text                  ${YOUR_LOCATION_FIELD}   ${ZIP_CODE_PEMBROKE_PINES_STORE}
    Click Element               ${SEARCH_STORE_BUTTON}

I search "${CITY_STORES}" in search field
    Input Text                  ${YOUR_LOCATION_FIELD}   ${CITY_STORES}
    Click Element               ${SEARCH_STORE_BUTTON}