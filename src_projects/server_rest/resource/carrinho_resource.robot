*** Settings ***
Library           RequestsLibrary
Library           OperatingSystem
Library           String



*** Variables ***


*** Keywords ***
Cadastrar produto no carrinho
    [Arguments]    ${product_id}    ${produto}    ${token}    ${expected_result}

    # Getting the file
    ${body}    Get File       path=${EXECDIR}/src_projects/server_rest/data_driven/produtos_carrinho_template.json
    ${body}    Replace String Using Regexp    ${body}    _product_id        ${product_id}
    ${body}    Replace String Using Regexp    ${body}    "_quantidade"         ${produto}[quantidade]

    Log To Console    ${body}

    ${header}    Create Dictionary    Content-Type=application/json    Authorization=${token}

    ${RESPONSE}    POST On Session    alias=api    url=/carrinhos    headers=${header}    data=${body}    expected_status=${expected_status}
    Log To Console    ${RESPONSE.json()}
    Log To Console    ${RESPONSE.json()['_id']}

    ${carrinho_id}    Set Variable    ${RESPONSE.json()['_id']}

    [Return]    ${carrinho}    # robotcode: ignore
    

Buscar carrinho
    [Arguments]    ${carrinho_id}    ${produto}    ${expected_status}    ${token}
    ${header}    Create Dictionary    Content-Type=application/json    Authorization=${token}

    ${RESPONSE}    GET On Session    alias=api    url=/carrinhos/${carrinho_id}   headers=${header}     expected_status=${expected_status}
    Log To Console    ${RESPONSE.json()}

   
    IF  "${expected_status}" == 200
        #  Validações do preço total e quantidade
    
    ${preco}     Set Variable   ${produto}[preco]
    ${preco_total}     Set Variable   ${Response.json()['preco_total']}
    ${qtd}     Set Variable   ${Response.json()['quantidade_total']}

    ${preco}    Convert To Number    ${preco}
    ${preco_total}    Convert To Number    ${preco_total}
    ${qtd}    Convert To Number    ${qtd}

    ${preco_total_calculado}    Evaluate    ${preco}*${qtd}

    Should Be Equal    ${preco_total_calculado}    ${preco_total}
        
    END

Realizar compra
    [Arguments]     ${expected_status}    ${token}
    ${header}    Create Dictionary    Content-Type=application/json    Authorization=${token}

    ${RESPONSE}    DELETE On Session    alias=api    url=/carrinhos/concluir-compra/   headers=${header}     expected_status=${expected_status}
    Log To Console    ${RESPONSE.json()}


Excluir carrinho/cancelar compra
    [Arguments]     ${expected_status}    ${token}
    ${header}    Create Dictionary    Content-Type=application/json    Authorization=${token}

    ${RESPONSE}    DELETE On Session    alias=api    url=/carrinhos/deletar-compra/   headers=${header}     expected_status=${expected_status}
    Log To Console    ${RESPONSE.json()}


    

    

