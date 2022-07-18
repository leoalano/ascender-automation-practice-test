*** Settings ***
Library           SeleniumLibrary
Test Setup        Open Browser  browser=${BROWSER}
Test Teardown     Close All Browsers

Resource          ..//resources/automation_resources.robot
Resource          ..//config/config.robot
Resource          ..//page_objects/page_objects.resource

*** Test Cases ***
Teste de login do site automationpractice.com/index.php                      
    Acessar a home page do site automationpractice.com
    Entrar na opção "Sign in" no cabeçalho da página
    Digitar o email cadastrado no campo "Email address"
    Digitar a senha cadastrada no campo "Password"
    Clicar no botão "Sign in"
    Verificação do sucesso do login