*** Settings ***

Library            RequestsLibrary

Suite Setup        Criar sessão
Suite Teardown     Encerrar sessão

Resource    ../resource/usuarios_resource.robot
Resource    ../resource/autenticacao_resource.robot
Resource    ../resource/produto_resource.robot

*** Variables ***

&{produto}    nome=Camiseta do Brasil    preco=100    quantidade=2    descricao=camiseta de selecao
&{USER}       nome=Eu QA Teste           email=qa_adm@qa.com.br       password=teste1    administrador=true


*** Test Cases ***

Teste - Fluxo Carrinho Completo

    # Setup
    ${USER_ID}    Criação de usuario    ${USER}
    ${token}      Autenticar    ${USER.email}    ${USER.password}    200
    ${product_id}    Criar produto - primeira maneira     ${token}    201


    # Carrinho
    Cadastrar produto no carrinho    ${produto}

    Buscar carrinho    ${product_id}    ${produto}

    Realizar compra    ${token}

    Excluir carrinho/cancelar compra    ${token}


    # Clear test
    Deletar produto    ${token}    ${product_id}    200
    Deletar usuario    USER_ID=${USER_ID}    USER=${USER}


    
