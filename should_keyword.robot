*** Settings ***

*** Variables ***


*** Test Cases ***

Teste 1 Should Be Empty
    ${b}    Set Variable    ${EMPTY}
    ${c}    Set Variable    1

    Should Be Empty         ${b}
    Should Be Empty         ${EMPTY}

    Should Not Be Empty      1


Teste 2 Should Be Equal
    ${a}    Set Variable    1
    ${b}    Set Variable    1
    ${c}    Set Variable    2

    Should Be Equal        ${a}    ${b}
    Should Not Be Equal    ${a}    ${c}


Teste 3 Should Be Equal com Conversão
    ${a}    Set Variable    1
    ${b}    Set Variable    1
    
    Should Be Equal As Integers     ${a}    ${b}
    Should Be Equal As Numbers      ${a}    ${b}

    ${a-1}    Convert To Integer    ${a}
    ${b-1}    Convert To Integer    ${b}

    Should Be Equal As Strings      ${a-1}     ${b-1} 


Teste 4 Should Booleano
    Should Be True      ${True}
    Should Not Be True  ${False}


Teste 5 Regex
    ${a}    Set Variable    Cris

    Should Contain    ${a}    s
    Should Start With    ${a}    Cr
    Should Match    ${a}    Cris    ignore_case=False    
    #                               ignore_case=true