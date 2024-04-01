*** Settings ***

Library    string


*** Test Cases ***

Teste conversao minusculo maiusculo
    ${var}    Set Variable    Esta é uma variavel
    ${var_Max}    Convert To Lower Case    ${var}
    ${var_min}    Convert To Upper Case    ${var}

    Log To Console    ${var_Max}-${var_min}


Teste Strip
    ${stripped}    Strip String    ${SPACE}Teste${SPACE}


Teste Random
    ${random}    Generate Random String    length=8    chars=[LETTERS][NUMBERS]