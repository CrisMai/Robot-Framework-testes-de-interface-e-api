*** Settings ***

Library    JSONLibrary

*** Variables ***


*** Test Cases ***

Teste
    ${file}    Load Json From File    C:/projects_2024/Udemy/Robot-interface-e-api/src/json_library_test/teste.json
    ${tipo}    Evaluate    type($file)


    ${file_first_name}    Set Variable    ${file}[nome]
    ${file_last_name}    Set Variable    ${file}[sobrenome]


*** Keywords ***
