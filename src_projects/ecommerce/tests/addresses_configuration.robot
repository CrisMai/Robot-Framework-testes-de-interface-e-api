*** Settings ***
Resource        ../resource/my_account/login_rsc.robot
Resource        ../resource/navigation/session_login_rsc.robot
Resource        ../data_driven/credenciais.robot
Resource        ../resource/my_account/addresses_configuration_rsc.robot

Suite Setup     Abrir navegador e fazer login    user=${LOGIN}    password=${password}    URL=${URL_BASE}    browser=chrome       

*** Variables ***

*** Test Cases ***
Configurar endereço de entrega

    Navegar para    url=${URL_BASE}    url_complementar=/my-account/edit-address/
    Alterar endereço de entrega        street=teste 123456    city=BH    state=Minas Gerais    postcode=25637-589    country=Brazil    phone=123456789
    Validar enderço de entrega         street=teste 123456    city=BH    state=Minas Gerais