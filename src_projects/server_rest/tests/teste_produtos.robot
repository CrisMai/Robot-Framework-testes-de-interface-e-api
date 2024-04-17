*** Settings ***
Resource        ../resource/usuarios_resource.robot
Resource        ../resource/autenticacao_resource.robot
Resource        ../resource/produto_resource.robot

Suite Setup     Criar sessão
Suite Teardown  Encerrar sessão


*** Variables ***
&{produto_1}    nome=Camiseta do Brasil    preco=100    quantidade=2    descricao=camiseta de selecao
&{produto_2}    nome=Camiseta da Argentina    preco=150    quantidade=5    descricao=camiseta de selecao
${login}        qa@qa.com.br
${senha}        teste


*** Test Cases ***
Teste 1 - Criação de Produto da maneira 1

    # Create
    ${USER_ID}    Criação de usuário

    # Autenticação
    ${token}    Autenticar    ${login}    ${senha}    200
    Log To Console    Este é um token válido -> ${token}

    # Crud produto
    ${product_id}    Criar produto - primeira maneira    ${token}    ${produto_1}    201

    Buscar produto    ${token}    ${product_id}    200

    Atualizar produto - primeira maneira    ${token}    ${product_id}    ${produto_2}
    Buscar produto    ${token}    ${product_id}    200

    Deletar produto    ${token}    ${product_id}

    # Excluir usuário
    Deletar usuario    USER_ID=${USER_ID}


Teste 2 - Criação de Produto da maneira 2

    # Create
    ${USER_ID}    Criação de usuário

    # Autenticação
    ${token}    Autenticar    ${login}    ${senha}    200
    # Log To Console    Este é um token válido -> ${token}

    # Crud produto
    ${product_id}    Criar produto - segunda maneira    ${token}    ${produto_1}    201

    Buscar produto    ${token}    ${product_id}    200

    Atualizar produto - segunda maneira    ${token}    ${product_id}    ${produto_2}
    Buscar produto    ${token}    ${product_id}    200

    Deletar produto    ${token}    ${product_id}

    # Excluir usuário
    Deletar usuario    USER_ID=${USER_ID}