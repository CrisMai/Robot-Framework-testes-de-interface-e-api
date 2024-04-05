*** Settings ***
Library    DateTime

*** Variables ***

*** Test Cases ***
Teste
    Get Current Date    time_zone=local
    Get Current Date    time_zone=UTC

    ${time} =     Convert Time    10 minutos
    ${time} =     Convert Time    10 m

    
    ${time} =     Convert Time    10 hours
    ${time} =     Convert Time    10 h

    
    ${time} =     Convert Time    10 seconds
    ${time} =     Convert Time    10 s

    
    ${time} =     Convert Time    10 ms

*** Keywords ***
