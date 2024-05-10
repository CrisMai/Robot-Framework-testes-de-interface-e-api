*** Settings ***

Library        SeleniumLibrary
Library        String


*** Variables ***


*** Keywords ***
Validar carrinho
    [Arguments]    ${produto}    ${quantidade}    ${valor}

    ${table}    Get WebElement    //*[@class="shop_table shop_table_responsive"]

    ${count}    Get Element Count    //*[@class="shop_table shop_table_responsive"]
    FOR  ${i}  IN RANGE  ${count}
        ${j}    Evaluate    ${i}+1

        ${row}    Get WebElement    //*[@class="shop_table shop_table_responsive"]
        ${resposta}    Run Keyword And Return Status    Should Contain    ${row.text}    ${produto} 

        IF  '${resposta}''== 'True'
            ${tb_product}    Get WebElement    //*[@class="shop_table shop_table_responsive"] 
            ${tb_price}      Get WebElement    //*[@class="shop_table shop_table_responsive"] 
            ${tb_subtotal}    Get WebElement    //*[@class="shop_table shop_table_responsive"] 
            
            Should Be Equal    ${tb_product.text}    ${produto}

            ${calculado}    Evaluate    ${quantidade}*${valor}
            ${calculado}    Convert To Number    ${calculado}    precision=2

            ${tb_subtotal}    Strip String    ${tb_subtotal}    characters=$ 
            ${tb_subtotal}    Convert To Number    ${tb_subtotal}    precision=2

            Should Be Equal    ${tb_subtotal}    ${calculado}

        END
        
    END



    