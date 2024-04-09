*** Settings ***
Library    RequestsLibrary

*** Variables ***


*** Test Cases ***

Teste - CRUD

    # Criando sessão
    Create Session    alias=api    url=https://serverest.dev


    # Cabeçalho
    ${header}    Create Dictionary    Content-Type=application/json


    # Enviando requisções
    Post On Session    alias=api    url=/usuarios    headers=${header}    data={"nome": "Eu QA Teste", "email": "qateste@gmail.com", "password": "teste", "administrador": "true" }
    
    PUT On Session
    DELETE On Session
    GET On Session
    PATCH On Session

    # Encerrando sessão
    Delete All Sessions


*** Keywords ***

