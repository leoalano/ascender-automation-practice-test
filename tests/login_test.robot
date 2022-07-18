*** Settings ***
Library           SeleniumLibrary
Test Setup        Open Browser  browser=${BROWSER}
Test Teardown     Close All Browsers

Resource          ..//resources/automation_resources.robot
Resource          ..//config/config.robot
Resource          ..//page_objects/page_objects.resource

*** Test Cases ***
Teste case 01 - login of website automationpractice.com/index.php                      
    Access homepage of automationpractice.com
    Enter menu "Sign in" at the header
    Type the registered email in the field "email address"
    Type the registered Password in the field "Password"
    Click on the "Sign In" Button
    Verify successful login