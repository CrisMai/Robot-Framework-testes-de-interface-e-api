*** Settings ***
Library    OperatingSystem

*** Test Cases ***

Test Operation System
    Create File       C:/projects_2024/Udemy/Robot-interface-e-api/operation_system_test.robot/teste.txt

    Append To File    C:/projects_2024/Udemy/Robot-interface-e-api/operation_system_test.robot/teste.txt    Teste

    ${file}    Get File    C:/projects_2024/Udemy/Robot-interface-e-api/operation_system_test.robot/teste.txt
    Log To Console    ${file}


*** Keywords ***