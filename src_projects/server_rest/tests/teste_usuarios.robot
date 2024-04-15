*** Settings ***
Library           RequestsLibrary
Resource          ../resource/usuarios_resource.robot

Suite Setup       Criar sessão
Suite Teardown    Encerrar sessão

*** Variables ***
    
    # robot -d ./results -L trace .\src_projects\server_rest\tests\teste_usuarios.robot

*** Test Cases ***

Teste - CRUD
    # Create
    ${USER_ID}           Criação de usuario

    # Read
    Buscar usuario       USER_iD=${USER_ID}    expected_status=200

    # Update
    Atualizar usuario    USER_iD=${USER_ID} 
    Buscar usuario       USER_iD=${USER_ID}    expected_status=200    # Mostra que houve alteração

    # Delete
    Deletar usuario      USER_iD=${USER_ID} 

  

