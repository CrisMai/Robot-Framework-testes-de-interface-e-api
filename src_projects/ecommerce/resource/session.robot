*** Settings ***

Library        SeleniumLibrary
Resource       ../resource/my_account/login_rsc.robot

*** Variables ***


*** Keywords ***

Abrir navegador
    [Arguments]    ${URL}    ${browser}=chrome
    Open Browser    url=${URL}    browser=${browser}    options=add_experimental_option('detach', True)    


Fechar navegador
    Close Browser


Navegar para
    [Arguments]    ${url}    ${url_complementar}

    Go To    ${url}/my-account/