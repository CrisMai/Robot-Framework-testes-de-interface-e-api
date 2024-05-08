*** Settings ***

Resource        ../resource/my_account/login_rsc.robot
Resource        ../resource/navigation/session_login_rsc.robot
Resource        ../data_driven/credenciais.robot
Resource        ../resource/home/home_rsc.robot
Resource        ../resource/product/product_rsc.robot
Resource        ../resource/product/cart_rsc.robot
Resource        ../resource/product/checkout_rsc.robot

Suite Setup    Abrir navegador e fazer login    user=${LOGIN}    password=${PASSWORD}    URL=${URL_BASE}    browser=chrome

*** Variables ***


*** Test Cases ***

Testar fluxo de compra

    # Adicionar produtos
    Navegar para    url=${URL_BASE}    url_complementar=/ 

    Procurar produto    Album
    Selecionar produto    Album    2    15

    Procurar produto    Beanie with logo
    Selecionar produto    Beanie with logo    2    15


    # Validar produto
    Navegar para    url=${URL_BASE}    url_complementar=/cart
    Validar carrinho    Album    2    15
    Validar carrinho    Beanie with logo

    # Checkout
    Navegar para    url=${URL_BASE}    url_complementar=/checkout
    Realizar checkout    Album   
    

    # Limpar carrinho
    Navegar para    url=${URL_BASE}    url_complementar=/checkout
    Limpar carrinho
