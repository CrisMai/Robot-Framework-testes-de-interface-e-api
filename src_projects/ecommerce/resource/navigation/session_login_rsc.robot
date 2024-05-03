*** Settings ***

Library        SeleniumLibrary

Resource    ../login_rsc.robot

*** Variables ***


*** Keywords ***

Abrir navegador
    [Arguments]    ${URL}    ${browser}=chrome
    Open Browser    url=${URL}    browser=${browser}    options=add_experimental_option("detach", True) 


Fechar navegador
    Close Browser

Navegar para
    [Arguments]    ${url}    ${url_complementar}

    Go To    ${url}/my_account/

Abrir navegador e fazer login
    [Arguments]    ${user}    ${password}    ${URL}    ${browser}
    Abrir navegador    ${URL}    ${browser}
    Realizar login    ${user}    ${password}

Logout e Fechar o navegador
    [Arguments]    ${url}    ${url_complementar}
    Navegar para    ${url}    ${url_complementar}
    Realizar logout
    Close Browser