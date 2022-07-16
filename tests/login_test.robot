*** Settings ***
Library     SeleniumLibrary
Test Setup  Open Browser  browser=chrome
Test Teardown  Close All Browsers

Resource    ../resources/login_page.resource
Resource    ../config/config.resource

*** Test Cases ***
Scenario Login com usuário inexistente
    Acessar a home page do site automationpractice.com
    Entrar na opção Sign in no cabeçalho da página
    Digitar o email não cadastrado no campo Email address
    Digitar a senha não cadastrada no campo Password
    Clicar no botão Sign in
    Verificação de falha no login
