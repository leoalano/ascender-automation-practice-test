*** Settings ***
Documentation   Menu navigation feature tests suite.
Library     SeleniumLibrary

Test Setup  Open Browser  browser=chrome
Test Teardown  Close All Browsers

Resource          ../configs/config.resource
Resource          ../resources/navigation.resource
Resource          ../resources/social_links.resource

*** Test Cases ***
Test case 01 - Test link Facebook
    Given I am at automationpractice.com
      And I click on the facebook icon
     Then I verifid the facebook page will be displayed

Test case 02 - Test link Twitter
    Given I am at automationpractice.com
      And I click on the Twitter icon
     Then I verifid the Twitter page will be displayed

Test case 03 - Test link Youtube
    Given I am at automationpractice.com
      And I click on the Youtube icon
     Then I verifid the Youtube page will be displayed

Test case 04 - Test link G+
    Given I am at automationpractice.com
      And I click on the G+ icon
     Then I verifid the G+ page will be displayed