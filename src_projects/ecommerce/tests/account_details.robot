*** Settings ***

Resource        ../data_driven/credenciais.robot
Resource    ../resource/login_resource.robot
Resource    ../resource/session.robot
Resource    ../resource/navigation/session_login_rsc.robot
Resource    ../resource/my_account/login_rsc.robot


Suite Setup     Abrir navegador e Fazer login    user=${LOGIN}    password=${PASSWORD}    URL=${URL_BASE}
Suite Teardown    Logout e Fechar navegador    url=${URL_BASE}    url_complementar=/my-account/


*** Variables ***


*** Test Cases ***

Configurar detalhes da conta
    Alterar detalhes da conta
    Navegar para
    Validar detalhes da conta no Dashboard


