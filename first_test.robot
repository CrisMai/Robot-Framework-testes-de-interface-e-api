*** Settings ***


*** Variables ***



*** Test Cases ***

Test 1
    [Tags]    smoke_test    Test_1
    [Documentation]    Este é um exemplo de documentação para um teste.
    Log To Console    Hello World
    KY - teste

Test 2
    [Tags]    smoke_test    Test_2
    Log To Console    Hello World
    KY - teste




*** Keywords ***

KY - teste
    Log To Console    Passei no teste