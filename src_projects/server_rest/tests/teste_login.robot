*** Settings ***

Resource        ../resource/usuarios_resource.robot
Resource        ../resource/autenticacao_resource.robot

Suite Setup     Criar sessão
Suite Teardown  Encerrar sessão


*** Variables ***

${login}    qa@qa.com.br
${senha}    teste
${senha_incorreta}   senha_errada


*** Test Cases ***

Teste - Autenticação com sucesso

    # Create
    ${USER_iD}    Criação de usuario


    # Autenticação
    ${token}    Autenticar    ${login}    ${senha}    200


    # Excluir usuário
    Deletar usuario    USER_ID=${USER_iD}

Teste - Autenticação sem sucesso

    # Create
    ${USER_iD}    Criação de usuario


    # Autenticação
    ${token}    Autenticar    ${login}    ${senha_incorreta}    401


    # Excluir usuário
    Deletar usuario    USER_ID=${USER_iD}


