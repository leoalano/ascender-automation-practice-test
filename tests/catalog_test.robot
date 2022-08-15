*** Settings ***
Documentation     Catalog feature tests suite.
Library           SeleniumLibrary

Resource          ../configs/config.resource
Resource          ../resources/catalog.resource
Resource          ../resources/navigation.resource

Test Setup        Open Browser  browser=chrome
Test Teardown     Close All Browsers

*** Test Cases ***
Test case 01 - Click on image "Sale 70%"
    Given I am at automationpractice.com
      And I click on image "${SALE_70%}"
     Then I verify a successful redirect! "${HOME_PAGE_TITLE}"

Test case 02 - Click on image "couple"
    Given I am at automationpractice.com
      And I wait until element is visible "${IMG_SAMPLE_1}"
     When I click on element slider_row
     Then I verify a successful redirect! "${TITLE_PAGE_PRESTASHOP}"

Test case 03 - Click on image "girls"
    Given I am at automationpractice.com
      And I click on element button_next
     When I wait until element is visible "${IMG_SAMPLE_2}"
      And I click on element slider_row
     Then I verify a successful redirect! "${TITLE_PAGE_PRESTASHOP}"

Test case 04 - Click on image "girl"
    Given I am at automationpractice.com
      And I click on element button_next
     When I click on element button_next
      And I wait until element is visible "${IMG_SAMPLE_3}"
     When I click on element slider_row
     Then I verify a successful redirect! "${TITLE_PAGE_PRESTASHOP}"

Test case 05 - Click on image "Sale 25% Off"
    Given I am at automationpractice.com
      And I click on image "${BANNER_IMG_06}"
     Then I verify a successful redirect! "${TITLE_PAGE_PRESTASHOP}"

Test case 06 - Click on image "Summer 45% Off"
    Given I am at automationpractice.com
      And I click on image "${BANNER_IMG_07}"
     Then I verify a successful redirect! "${TITLE_PAGE_PRESTASHOP}"

Test case 07 - Click on image "Faded Short Sleeve T-shirts"
    Given I am at automationpractice.com
      And I put mouse over image "${FADED_SHORT_IMG}"
     When I click on image "${FADED_SHORT_TITLE}"
     Then I verify a successful redirect! "${FADED_SHORT_PAGE}"

Test case 08 - Click on image "Blouse"
    Given I am at automationpractice.com
      And I put mouse over image "${BLOUSE_IMG}"
     When I click on image "${BLOUSE_TITLE}"
     Then I verify a successful redirect! "${BLOUSE_PAGE}"

Test case 09 - Click on image "Printed Dress1"
    Given I am at automationpractice.com
      And I put mouse over image "${P_DRESS_IMG1}"
     When I click on image "${P_DRESS_TITLE1}"
     Then I verify a successful redirect! "${P_DRESS_PAGE}"

Test case 10 - Click on image "Printed Dress2"
    Given I am at automationpractice.com
      And I put mouse over image "${P_DRESS_IMG2}"
     When I click on image "${P_DRESS_TITLE2}"
     Then I verify a successful redirect! "${P_DRESS_PAGE}"
      
Test case 11 - Click on image "Printed Summer Dress1"
    Given I am at automationpractice.com
      And I put mouse over image "${P_SUMMER_DRESS_IMG1}"
     When I click on image "${P_SUMMER_DRESS_TITLE1}"
     Then I verify a successful redirect! "${P_SUMMER_DRESS_PAGE}"
  
Test case 12 - Click on image "Printed Summer Dress2"
    Given I am at automationpractice.com
      And I put mouse over image "${P_SUMMER_DRESS_IMG2}"
     When I click on image "${P_SUMMER_DRESS_TITLE2}"
     Then I verify a successful redirect! "${P_SUMMER_DRESS_PAGE}"
      
Test case 13 - Click on image "Printed Chiffon Dress"
    Given I am at automationpractice.com
      And I put mouse over image "${P_CHIFRON_DRESS_IMG}"
     When I click on image "${P_CHIFRON_DRESS_TITLE}"
     Then I verify a successful redirect! "${P_CHIFRON_DRESS_PAGE}"

Test case 14 - Click on image "Top Trends"
    Given I am at automationpractice.com
      And I click on image "${TOP_TRENDS_IMG}"
     Then I verify a successful redirect! "${TITLE_PAGE_PRESTASHOP}"

Test case 15 - Click on image "Men's C&J"
    Given I am at automationpractice.com
      And I click on image "${MENS_C&J_IMG}"
     Then I verify a successful redirect! "${TITLE_PAGE_PRESTASHOP}"

Test case 16 - Click on image "Women's C&J"
    Given I am at automationpractice.com
      And I click on image "${WOMEN_C&J_IMG}"
     Then I verify a successful redirect! "${TITLE_PAGE_PRESTASHOP}"

Test case 17 - Click on image "Sunglasses & Eyewear"
    Given I am at automationpractice.com
      And I click on image "${SUNGLASSES_&_EYEWERE_IMG}"
     Then I verify a successful redirect! "${TITLE_PAGE_PRESTASHOP}"

Test case 18 - Click on image "Savvy Trends Handbags"
    Given I am at automationpractice.com
      And I click on image "${SAVVY_TRENDS_HANDBAGS_IMG}"
     Then I verify a successful redirect! "${TITLE_PAGE_PRESTASHOP}"