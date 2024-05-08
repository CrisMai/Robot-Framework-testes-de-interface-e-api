*** Settings ***

Library        SeleniumLibrary

*** Variables ***


*** Keywords ***
Procurar produto
    [Arguments]    ${produto}

    Input Text    id:woocommerce-product-search-field-0    ${produto}
    Press Keys    id:woocommerce-product-search-field-0     ENTER

    