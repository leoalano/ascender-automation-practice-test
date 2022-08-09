*** Settings ***
Documentation     Catalog feature tests suite.
Library           SeleniumLibrary

Resource          ../configs/config.resource
Resource          ../resources/catalog.resource
Resource          ../resources/navigation.resource

Test Setup        Open Browser  browser=chrome
Test Teardown     Close All Browsers

*** Test Cases ***
Test case 01 - Click on image "couple"
    Given I am at automationpractice.com
      And I click on image "sample-1"
     Then I verify a successful redirect

Test case 02 - Click on image "girls"
    Given I am at automationpractice.com
      And I click on image "sample-2"
     Then I verify a successful redirect

Test case 03 - Click on image "girl"
    Given I am at automationpractice.com
      And I click on image "sample-3"
     Then I verify a successful redirect

Test case 04 - Click on image "Sale 25% Off"
    Given I am at automationpractice.com
      And I click on image "banner_img6"
     Then I verify a successful redirect

Test case 05 - Click on image "Summer 45% Off"
    Given I am at automationpractice.com
      And I click on image "banner_img7"
     Then I verify a successful redirect
Test case 06 - Click on image "Faded Short Sleeve T-shirts"
    Given I am at automationpractice.com
      And I click on image "Faded Short Sleeve T-shirts"
     Then I verify a successful redirect for product page "Short"

Test case 07 - Click on image "Blouse"
    Given I am at automationpractice.com
      And I click on image "Blouse"
     Then I verify a successful redirect for product page "Blouse"

Test case 08 - Click on image "Printed Dress1"
    Given I am at automationpractice.com
      And I click on image "Printed Dress1"
     Then I verify a successful redirect for product page "Printed Dress1"

Test case 09 - Click on image "Printed Dress2"
    Given I am at automationpractice.com
      And I click on image "Printed Dress2"
     Then I verify a successful redirect for product page "Printed Dress2"
      
Test case 10 - Click on image "Printed Summer Dress1"
    Given I am at automationpractice.com
      And I click on image "Printed Summer Dress1"
     Then I verify a successful redirect for product page "Printed Summer Dress1"
  
Test case 11 - Click on image "Printed Summer Dress2"
    Given I am at automationpractice.com
      And I click on image "Printed Summer Dress2"
     Then I verify a successful redirect for product page "Printed Summer Dress2"
      
Test case 12 - Click on image "Printed Chiffon Dress"
    Given I am at automationpractice.com
      And I click on image "Printed Chiffon Dress"
     Then I verify a successful redirect for product page "Printed Chiffon Dress"

Test case 13 - Click on image "Top Trends"
    Given I am at automationpractice.com
      And I click on image "Top Trends"
     Then I verify a successful redirect

Test case 14 - Click on image "Men's C&J"
    Given I am at automationpractice.com
      And I click on image "Men's C&J"
     Then I verify a successful redirect

Test case 15 - Click on image "Women's C&J"
    Given I am at automationpractice.com
      And I click on image "Women's C&J"
     Then I verify a successful redirect

Test case 16 - Click on image "Sunglasses & Eyewear"
    Given I am at automationpractice.com
      And I click on image "Sunglasses & Eyewear"
     Then I verify a successful redirect

Test case 17 - Click on image "Savvy Trends Handbags"
    Given I am at automationpractice.com
      And I click on image "Savvy Trends Handbags"
     Then I verify a successful redirect