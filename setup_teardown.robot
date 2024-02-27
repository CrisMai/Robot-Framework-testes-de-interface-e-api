*** Settings ***

Suite setup    Abrir página
Suite Teardown    Fechar página
Test Setup    Fazer login
Test Teardown    Fazer logout


*** Variables ***


*** Test Cases ***

Test 1
    Log To Console    Hello World
    
Test 2
    Log To Console    Hello World
    
Test 3
    Log To Console    Hello World

Test 4
    Log To Console    Hello World

*** Keywords ***

Abrir página
    Log To Console    Abrindo a página
Fechar página
    Log To Console    Fechando a página

Fazer login
    Log To Console    Fazendo login

Fazer logout
    Log To Console    Fazendo logout