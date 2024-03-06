*** Settings ***

*** Variables ***
# robot -d ./results -L trace .\src\variaveis_argumentos.robot


*** Test Cases ***
Test 1
    ${x}    ${y}    ${z}     keyword-1

    keyword-2    ${x}  ${y}  ${z}

*** Keywords ***

keyword-1
    ${a}    Set Variable    1
    ${b}    Set Variable    2
    ${c}    Set Variable    3

    RETURN    ${a}    ${b}    ${c}

 keyword-2
    [Arguments]   ${var-1}     ${var-2}     ${var-3}
    Log To Console     ${var-1}
    Log To Console     ${var-2}
    Log To Console     ${var-3}