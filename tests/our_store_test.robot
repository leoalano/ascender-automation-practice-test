*** Settings ***
Documentation     Testing finding new stores function to show the error.
Library           SeleniumLibrary

Resource          ../configs/config.resource
Resource          ../resources/navigation.resource
Resource          ../resources/footer.resource
Resource          ../resources/our_store.resource

Test Setup  Open Browser  browser=chrome
Test Teardown  Close All Browsers

*** Test Cases ***

Teste case 01 - Zip Code Coconut Grove store not found
    Given I am at automationpractice.com
      And I enter "Our stores" via the footer
    When I search for "${ZIP_CODE_COCONUT_GROVE_STORE}" zip code    
    Then The message "${NOT_FOUND_MESSAGE_DISPLAY}" should be displayed

Teste case 02 - Zip Code Dade County store not found
    Given I am at automationpractice.com
      And I enter "Our stores" via the footer
    When I input "${ZIP_CODE_DADE_COUNTY_STORE}" zip code in search field    
    Then The message "${NOT_FOUND_MESSAGE_DISPLAY}" should be displayed

Teste case 03 - Zip Code Biscayne store not found
    Given I am at automationpractice.com
      And I enter "Our stores" via the footer
    When I search "${ZIP_CODE_BISCAYNE_STORE}" zip code
    Then The message "${NOT_FOUND_MESSAGE_DISPLAY}" should be displayed

Teste case 04 - Zip Code Fort Lauderdale store not found
    Given I am at automationpractice.com
      And I enter "Our stores" via the footer
    When I input "${ZIP_CODE_FORT_LAUDERDALE_STORE}" zip code for search
    Then The message "${NOT_FOUND_MESSAGE_DISPLAY}" should be displayed

Teste case 05 - Zip Code Pembroke Pines store not found
    Given I am at automationpractice.com
      And I enter "Our stores" via the footer
    When I input "${ZIP_CODE_PEMBROKE_PINES_STORE}" zip code for search field
    Then The message "${NOT_FOUND_MESSAGE_DISPLAY}" should be displayed

Teste case 06 - Search for stores in miami not found
    Given I am at automationpractice.com
      And I enter "Our stores" via the footer
    When I search "${CITY_STORES}" in search field
    Then The message "${NOT_FOUND_MESSAGE_DISPLAY}" should be displayed

    