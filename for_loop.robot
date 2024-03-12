*** Settings ***

*** Variables ***


*** Test Cases ***
Teste 1 - For Loop
    FOR    ${i}    IN     RANGE     5
    Log To Console   ${i}
    
    END

Teste 2 - Exit For if
    FOR    ${i}    IN     RANGE     60
        Log To Console   ${i}

        Exit For Loop If    ${i}==3
    END


Teste 3 - Exit For Loop
     FOR    ${i}    IN     RANGE     60
        Log To Console   ${i}

        Exit For Loop 
    END
