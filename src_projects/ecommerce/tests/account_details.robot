*** Settings ***

Resource        ../data_driven/credenciais.robot
Resource        ../resource/login_resource.robot
Resource        ../resource/session.robot
Resource        ../resource/navigation/session_login_rsc.robot
Resource        ../resource/my_account/login_rsc.robot


Suite Setup     Abrir navegador e Fazer login    user=${LOGIN}    password=${PASSWORD}    URL=${URL_BASE}
Suite Teardown    Logout e Fechar navegador    url=${URL_BASE}    url_complementar=/my-account/


*** Variables ***


*** Test Cases ***

Configurar detalhes da conta
   Navegar para    url=${URL_BASE}    url_complementar=/my-account/edit-account/
   Alterar detalhes da conta        Cris        Mai        Cris Mai
   Validar detalhes da conta no Dashboard        Cris Mai


Configurar detalhes incorretos 
    Navegar para    url=${URL_BASE}    url_complementar=/my-account/edit-account/
    Alterar detalhes da conta        ${EMPTY}     ${EMPTY}     ${EMPTY} 
    Validar erro ao configurar detalhes da conta   

