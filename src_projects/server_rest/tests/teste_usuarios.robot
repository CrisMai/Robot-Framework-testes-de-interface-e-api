*** Settings ***
Library           RequestsLibrary

Suite Setup       Criar sessão
Suite Teardown    Encerrar sessão

*** Variables ***
    
    # robot -d ./results -L trace .\src_projects\server_rest\tests\teste_usuarios.robot

*** Test Cases ***

Teste - CRUD
    # Create
    ${USER_ID}           Criação de usuario

    # Read
    Buscar usuario       USER_iD=${USER_ID} 

    # Update
    Atualizar usuario    USER_iD=${USER_ID} 
    Buscar usuario       USER_iD=${USER_ID}    # Mostra que houve alteração

    # Delete
    Deletar usuario      USER_iD=${USER_ID} 

  
*** Keywords ***
# Crud
Criação de usuario
    ${header}    Create Dictionary    Content-Type=application/json
    ${RESPONSE}    Post On Session    alias=api    url=/usuarios    headers=${header}    data={"nome": "Eu QA Teste", "email": "qa@qa.com.br", "password": "teste", "administrador": "true" }
    ${USER_ID}     Set Variable    ${RESPONSE.json()['_id']}
    Log To Console    ${USER_ID}

    [Return]    ${USER_ID}    # robotcode: ignore
    
Buscar usuario
    [Arguments]        ${USER_ID} 
    ${RESPONSE}        GET On Session    alias=api    url=/usuarios/${USER_ID}  
    ${retorno_get}     Set Variable    ${RESPONSE.json()}
    Log To Console     ${retorno_get}


Atualizar usuario
    ${header}    Create Dictionary    Content-Type=application/json
    [Arguments]    ${USER_ID} 
    ${RESPONSE}    PUT On Session    alias=api    url=/usuarios/${USER_ID}    headers=${header}     data={"nome": "Eu QA Teste 2", "email": "qa@qa.com.br", "password": "teste", "administrador": "true" }
    ${retorno_put}     Set Variable    ${RESPONSE.json()}
    Log To Console    ${retorno_put}

Deletar usuario
    [Arguments]    ${USER_ID} 
    DELETE On Session    alias=api    url=/usuarios/${USER_ID}   

# Sessão
Criar sessão
    Create Session    alias=api    url=https://serverest.dev

Encerrar sessão
    Delete All Sessions

