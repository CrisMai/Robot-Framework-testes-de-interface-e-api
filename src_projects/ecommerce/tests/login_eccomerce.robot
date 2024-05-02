*** Settings ***

Library        SeleniumLibrary
Resource       ../resource/login_resource.robot    # robotcode: ignore
Resource       ../data_driven/credenciais.robot
Resource       ../resource/session.robot

Suite Setup       Abrir navegador    URL=${URL_BASE}    # robotcode: ignore
Suite Teardown    Fechar navegador
Test Setup        Navegar para     ${URL_BASE}    /my-account/

*** Variables ***



*** Test Cases ***

Teste de login com sucesso
    Realizar Login     ${LOGIN}    ${PASSWORD}

    Navegar para     ${URL_BASE}    /my-account/

    Realizar logout


Teste de login sem sucesso
    Realizar login incorreto     ${LOGIN}    1234

