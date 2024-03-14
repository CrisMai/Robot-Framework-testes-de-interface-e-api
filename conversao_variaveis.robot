*** Settings ***

*** Variables ***


*** Test Cases ***

Teste 1 - Convert To Binary
    ${result}    Convert To Binary    10
    Log To Console    ${result}


Teste 2 - Convert To Boolean
    ${v}    Set Variable    True
    ${f}    Set Variable    False

    ${typev}    Evaluate    type($v)
    ${typef}    Evaluate    type($f)

    ${V}    Convert To Boolean    type($V)
    ${F}    Convert To Boolean    type($F)


Teste 3 - Convert To Integer
    ${n}    Set Variable    123
    ${typen}    Evaluate    type($n)

    ${n}    Convert To Integer    ${n}
    ${typen}    Evaluate    type($n)


Teste 4 - Convert To Number
     ${n}    Set Variable    123.10
    ${typen}    Evaluate    type($n)

    ${n}    Convert To Number    ${n}
    ${typen}    Evaluate    type($n)


Teste 5 - Convert To String
    ${T}    Set Variable    ${True}
    ${typeT}    Evaluate    type($T)$

    ${t}    Convert To String    ${T}
    ${typet}    Evaluate    type($t)


