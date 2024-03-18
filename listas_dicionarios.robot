*** Settings ***

*** Variables ***
&{dict1}    nome=Cris    sobrenome=Mai    idade=38
@{list1}    banana    uva    melancia

*** Test Cases ***
Teste - Dicionário

# Pode ser criado dentro do próprio teste ou na lista de variável
# ${dict1}     Create Dictionary    nome=Cris    sobrenome=Mai    idade=38

    Log To Console    ${dict1}

    Log To Console    ${dict1.nome}
    Log To Console    ${dict1.sobrenome}
    Log To Console    ${dict1.idade}

    FOR  ${i}  IN  ${dict1}
        Log To Console    ${i}
    
    END
    

Teste - Listas
    # Pode ser criado dentro do próprio teste ou na lista de variável
    # ${list1}    Create List    banana    uva    melancia

    Log To Console    ${list1}

    Log To Console    ${list1}[0]
    Log To Console    ${list1}[1]
    Log To Console    ${list1}[2]

    FOR  ${j}  IN  @{list1}
        Log To Console    ${j}
    
    END
    