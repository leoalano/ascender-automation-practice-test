*** Settings ***
Library     SeleniumLibrary
Test Setup  Open Browser  browser=chrome
Test Teardown  Close All Browsers

Resource          ../configs/config.resource
Resource          ../resources/navigation.resource
Resource          ../resources/menu_navigation.resource

*** Test Cases ***
Test case 01 - test link Women
    Given I am at automationpractice.com
      And I click the title "women"
     Then I verify the page contain title_block "women"

Test case 02 - test link tops
    Given I am at automationpractice.com
      And I put mouse over title "women"
     When I click on title "tops"
     Then I verify the page contain title "Tops"
  
Test case 03 - test link T-shirts
    Given I am at automationpractice.com
      And I put mouse over title "women"
     When I click on title "T-shirts"
     Then I verify the page contain T-shirts

Test case 04 - test link Blouses
    Given I am at automationpractice.com
      And I put mouse over title "women"
     When I click on title "Blouses"
     Then I verify the page contain blouses
    
Test case 05 - test link Dresses
    Given I am at automationpractice.com
      And I put mouse over title "women"
     When I click on title "Dresses"
     Then I verify the page contain Dresses

Test case 06 - test link Casual Dresses
    Given I am at automationpractice.com
      And I put mouse over title "women"
     When I click on title "Casual Dresses"
     Then I verify the page contain Casual Dresses

Test case 07 - test link Evening Dresses
    Given I am at automationpractice.com
      And I put mouse over title "women"
     When I click on title "Evening Dresses"
     Then I verify the page contain Evening Dresses

Test case 08 - test link Summer Dresses
    Given I am at automationpractice.com
      And I put mouse over title "women"
     When I click on title "Summer Dresses"
     Then I verify the page contain Summer Dresses