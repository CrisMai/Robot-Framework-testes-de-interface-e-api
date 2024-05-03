*** Settings ***

Library        SeleniumLibrary
Resource       ../resource/my_account/login_rsc.robot    
Resource       ../data_driven/credenciais.robot
Resource       ../resource/navigation/session_login_rsc.robot


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

