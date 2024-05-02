*** Settings ***
Library           RequestsLibrary


*** Variables ***
    

*** Keywords ***
# Crud
Criação de usuario    
    ${header}    Create Dictionary    Content-Type=application/json
    ${RESPONSE}    Post On Session    alias=api    url=/usuarios    headers=${header}    data={"nome": "Eu QA Teste", "email": "qa@qa.com.br", "password": "teste", "administrador": "true" }    expected_status=201
    ${USER_ID}     Set Variable    ${RESPONSE.json()['_id']}
    Log To Console    ${USER_ID}

    [Return]    ${USER_ID}    # robotcode: ignore
    
Buscar usuario
    [Arguments]        ${USER_ID}    ${expected_status} 
    ${RESPONSE}        GET On Session    alias=api    url=/usuarios/${USER_ID}    expected_status=${expected_status} 
    ${retorno_get}     Set Variable    ${RESPONSE.json()}

    IF  '${expected_status}'=='200'
        ${email}    Set Variable    ${RESPONSE.json()['email']}
        Should Be Equal    ${email}    qa@qa.com.br
        
    END
    
    Log To Console     ${retorno_get}

Atualizar usuario
    ${header}    Create Dictionary    Content-Type=application/json
    [Arguments]    ${USER_ID} 
    ${RESPONSE}    PUT On Session    alias=api    url=/usuarios/${USER_ID}    headers=${header}     data={"nome": "Eu QA Teste 2", "email": "qa@qa.com.br", "password": "teste", "administrador": "true" }    expected_status=200
    ${retorno_put}     Set Variable    ${RESPONSE.json()}
    Log To Console    ${retorno_put}

Deletar usuario
    [Arguments]    ${USER_ID} 
    DELETE On Session    alias=api    url=/usuarios/${USER_ID}    expected_status=200  

    # Validação usuário não existe
    Buscar usuario    USER_ID=${USER_ID}    expected_status=400

# Sessão
Criar sessão
    Create Session    alias=api    url=https://serverest.dev

Encerrar sessão
    Delete All Sessions

