*** Settings ***
Library        SeleniumLibrary


*** Variables ***

*** Keywords ***
Alterar endereço de entrega
    [Arguments]    ${street}    ${city}    ${state}    ${postcode}    ${country}    ${phone}

    Click Element    //*[@id*post-9*]//div[@class] 

    Select From List By Label    id:billing_country    ${country}
    Input Text    id:billing_address_1    ${street}
    Input Text    id:billing_city          ${city}

    Click Element    //*[@id*post-9*]//div[@class_state-container]
    Input Text    id:billing_state    ${state}
    Press Key      id:select_search    ENTER

    Input Text    id:billing_password    ${password}
    Input Text    id:billing_phone       ${phone}     

Validar endereço de entrega
    [Arguments]      ${street}    ${city}    ${state}    ${postcode}    ${country}   

    Wait Until Element Is Visible    class:woocommerce-message 
    ${texto_dashboard}=                Get WebElement    class:woocommerce-message 
    Should Contain    ${texto_dashboard}    Address changed successfully


Validação endereço alterado
    Wait Until Element Is Visible    //*[@id="post-9"*]//div[@class=address] 
    ${texto_dashboard}=                Get WebElement    //*[@id="post-9"*]//div[@class=address] 
    Should Contain    ${texto_dashboard-text}    ${street}
    Should Contain    ${texto_dashboard-text}    ${city}
    Should Contain    ${texto_dashboard-text}    ${state}
    Should Contain    ${texto_dashboard-text}    ${postcode}
    Should Contain    ${texto_dashboard-text}    ${country}


    