*** Settings ***
Library    RequestsLibrary

*** Variables ***
    
    # robot -d ./results -L trace .\src_projects\server_rest\tests\teste_usuarios.robot

*** Test Cases ***

Teste - CRUD

    # Criando sessão
    Create Session    alias=api    url=https://serverest.dev


    # Cabeçalho
    ${header}    Create Dictionary    Content-Type=application/json


    # Enviando requisções
    ${RESPONSE}    Post On Session    alias=api    url=/usuarios    headers=${header}    data={"nome": "Eu QA Teste", "email": "qa@qa.com.br", "password": "teste", "administrador": "true" }
    ${USER_ID}     Set Variable    ${RESPONSE.json()['_id']}
    Log To Console    ${USER_ID}


    # Ler
    ${RESPONSE}     GET On Session    alias=api    url=/usuarios/${USER_ID}  
    ${retorno_get}     Set Variable    ${RESPONSE.json()}
    Log To Console    ${retorno_get}


    # Atualizar
    ${RESPONSE}    PUT On Session    alias=api    url=/usuarios/${USER_ID}    headers=${header}     data={"nome": "Eu QA Teste 2", "email": "qa@qa.com.br", "password": "teste", "administrador": "true" }
    ${retorno_put}     Set Variable    ${RESPONSE.json()}
    Log To Console    ${retorno_put}

    ${RESPONSE}     GET On Session    alias=api    url=/usuarios/${USER_ID}  
    ${retorno_get}     Set Variable    ${RESPONSE.json()}
    Log To Console    ${retorno_get}


    # Delete
    DELETE On Session    alias=api    url=/usuarios/${USER_ID}   


    # Encerrando sessão
    Delete All Sessions


*** Keywords ***

