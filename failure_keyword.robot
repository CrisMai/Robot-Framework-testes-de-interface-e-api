*** Settings ***

*** Variables ***

*** Test Cases ***
Teste - Fail
    Log To Console    Olá
    Fail    Deu erro!
    Log To Console    Não será executado!


Teste - Fatal Error 
    Fatal Error


Teste - Sem Erro
    Log To Console    Este teste não possui erro!


# Quando a palavra-chave "Fail" é utilizada, ela força o caso de teste a falhar 
# imediatamente no ponto em que é chamada, independentemente do resultado de quaisquer 
# outras verificações ou condições.


# Um Fatal Error ocorre quando uma falha crítica é detectada durante a execução do teste.
# Esses erros interrompem imediatamente a execução do teste, pois indicam uma condição que 
# impede a continuação segura do teste.