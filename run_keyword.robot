*** Settings ***

*** Variables ***

${var}    3

*** Test Cases ***

Teste - Run keyword
    Run Keyword    keyword_1

Teste - Run failure
    Run Keyword And Continue On Failure    keyword_2
    Log To Console    Esta linha será executada

Teste - Run keyword condicional
    Run Keyword If    ${var}>1    keyword_3

Teste - Run keyword and return status
    ${passed}    Run Keyword And Return Status    keyword_4
    Run Keyword If    not ${passed}    Fail


*** Keywords ***
keyword_1
    Log To Console     Esta é a keyword 1


Keyword_2
    Log To Console     Esta é a keyword 2
    Fail
    Log To Console     Não será executado

keyword_3
    Log To Console     Esta é a keyword 3

keyword_4
    Fail
   
    