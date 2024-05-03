*** Settings ***

Library    SeleniumLibrary


*** Variables ***


*** Keywords ***

Realizar login
    [Arguments]    ${user}    ${password}

    Input Text    id:username    ${user}
    Input Password    id:password     ${password}
    Click Button    //*[@id="customer_login"]//button[@name='login']

    Wait Until Page Contains    from your account dashboard you can view your


Realizar login incorreto
    [Arguments]    ${user}    ${password}

    Input Text    id:username    ${user}
    Input Password    id:password     ${password}
    Click Button    //*[@id="customer_login"]//button[@name='login']

    Wait Until Element Is Visible    class:woocommerce-error
    Wait Until Element Contains    locator=class:woocommerce-error    text=Error


Realizar logout
    Click Element    //*[@id="customer_login"]//button[@name='login']
    Wait Until Element Is Visible    id:username
    Wait Until Element Is Visible    id:password
    