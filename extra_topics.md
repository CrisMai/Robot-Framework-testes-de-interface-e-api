

*** Tags e Documentação ***

Tags são rótulos ou etiquetas que podem ser associados a test cases, keywords ou suítes de testes.
São usadas para categorizar e organizar seus testes. Elas ajudam na filtragem e execução seletiva 
de testes com base em categorias específicas.

O atributo documentation é usado para fornecer documentação ou descrição legível por humanos para 
test cases, keywords ou suítes de testes.
A documentação é uma forma de descrever o propósito ou a funcionalidade de um teste ou de uma keyword, 
tornando mais fácil para os membros da equipe entenderem o que está sendo testado ou realizado.


*** Setup e Teardown ***

A seção Setup é usada para definir ações que devem ser realizadas antes da execução de cada test case ou 
suíte de testes.

A seção Teardown é usada para definir ações que devem ser realizadas após a execução de cada test case ou 
suíte de testes.


*** Logs e Reports ***

Os logs são mensagens geradas durante a execução dos casos de teste. Eles podem incluir informações sobre o 
início e o fim de cada caso de teste, mensagens de log personalizadas e mensagens de falha.

Existe três tipos de Logs:

Log de Info:

Propósito: Fornece informações sobre o andamento normal do programa.
Conteúdo: Mensagens que destacam eventos significativos, resultados ou outras informações úteis.
Exemplo: "Conexão estabelecida com o banco de dados.", "Teste bem-sucedido."

Log de Debug:

Propósito: Fornecem informações detalhadas úteis durante o desenvolvimento e depuração do software.
Conteúdo: Mensagens mais detalhadas, variáveis, fluxo de controle, etc.
Exemplo: "Valor da variável x: 10", "Entrando no bloco de código X."

Log de Trace:

Propósito: Fornece informações extremamente detalhadas e específicas, geralmente usadas para rastrear 
a execução em nível de código.
Conteúdo: Mensagens muito detalhadas, rastreamento de cada passo da execução.
Exemplo: "Entrando na função X", "Saindo do loop Y."


Relatórios:
Os relatórios fornecem uma visão consolidada dos resultados dos testes, mostrando quais casos de teste 
passaram, falharam ou foram ignorados. Os relatórios podem ser gerados em vários formatos, como HTML, XML ou TXT.


*** Comandos para executar testes via linha de comando ***

-d -> Diretório destino ond eserá salvo o resultado dos testes. EX:
robot -d ./results .\src\first_test.robot

-L -> Nível de Log (Info, Debug ou trace). EX:
robot -d ./results -L info .\src\first_test.robot

-i -> Executa teste segundo tag (regression, performance, smoke). EX:
robot -d ./results -L regression .\src\first_test.robot

-t -> Executa um teste específico da suíte de teste. EX:
robot -d ./results -t 'Teste 1' .\src\first_test.robot

-N -> Nome no título do arquivo de log. EX:
robot -N 'Teste 1' -d ./results .\src\first_test.robot

-v -> Atribui valor a variáveis. Ex:
robot -d ./results -v X:1 -v Y:3 .\src\first_test.robot

-l -> Nome para o arquivo de log. EX:
robot -d ./results -l 'Arquivo de log' .\src\first_test.robot


*** Biblioteca Builtin ***

A biblioteca BuiltIn é uma biblioteca padrão incorporada no Robot Framework e fornece um conjunto essencial 
de palavras-chave e funcionalidades que podem ser utilizadas em todos os casos de teste.
Aqui estão algumas funcionalidades principais da biblioteca BuiltIn:

1. Controle de Fluxo:
Run Keyword If: Executa uma palavra-chave se uma condição for verdadeira.
Run Keyword Unless: Executa uma palavra-chave a menos que uma condição seja verdadeira.
Run Keywords: Executa várias palavras-chave em sequência, independentemente do resultado de cada uma.

2. Variáveis e Atribuições:
Set Variable: Atribui um valor a uma variável.
${Variable}= Evaluate: Avalia uma expressão em Python e atribui o resultado a uma variável.

3. Asserções e Verificações:
Should Be Equal: Verifica se dois valores são iguais.
Should Not Be Equal: Verifica se dois valores não são iguais.
Should Be True/False: Verifica se uma condição é verdadeira ou falsa.

4. Log e Mensagens:
Log: Gera uma mensagem de log.
Log Many: Gera várias mensagens de log.
Comment: Adiciona um comentário que não é exibido no log.

5. Manipulação de Listas e Dicionários:
Create List: Cria uma nova lista.
Create Dictionary: Cria um novo dicionário.
Append To List: Adiciona um item a uma lista.

6. Operações de String:
Should Start With: Verifica se uma string começa com um valor especificado.
Should End With: Verifica se uma string termina com um valor especificado.
Should Contain: Verifica se uma string contém um valor especificado.

7. Temporizadores:
Sleep: Pausa a execução por um determinado número de segundos.

8. Manipulação de Arquivos e Diretórios:
File Should Exist: Verifica se um arquivo existe.
Directory Should Exist: Verifica se um diretório existe.
Remove File: Remove um arquivo.

9. Execução Dinâmica de Palavras-Chave:
Run Keyword: Executa uma palavra-chave dinamicamente.


*** Declaração de Variável com Robot ***

No Robot Framework, a declaração de variáveis pode ser feita usando a palavra-chave Set Variable ou simplesmente 
atribuindo um valor a uma variável. Abaixo estão algumas maneiras de declarar variáveis:

Usando Set Variable:

*** Variables ***
${nome_da_variavel}    Valor da Variável
${outra_variavel}      Outro Valor

*** Test Cases ***
Exemplo de Uso de Variáveis
    Set Variable    ${idade}    25
    Log    A idade é: ${idade}
    Set Variable    ${pi}    3.14
    Log    O valor de pi é: ${pi}

Atribuindo Diretamente:

*** Test Cases ***
Exemplo de Atribuição Direta
    ${nome} =    Valor do Nome
    ${idade} =    30
    ${pi} =    3.14
    Log    O nome é: ${nome}
    Log    A idade é: ${idade}
    Log    O valor de pi é: ${pi}

Atribuição durante a Execução:
Você também pode atribuir valores durante a execução usando a palavra-chave Set Variable:

*** Test Cases ***
Atribuição Durante a Execução
    ${valor} =    Set Variable    Valor Dinâmico
    Log    O valor atribuído é: ${valor}


Atribuição Condicional:
Você pode usar a palavra-chave Set Variable If para atribuir um valor a uma variável com base em uma condição:

*** Test Cases ***
Atribuição Condicional
    ${condicao} =    Set Variable If    ${variavel} == "valor_esperado"    Verdadeiro    Falso
    Log    O resultado da condição é: ${condicao}


*** Formas de declaração de variáveis ***

- Local -> Variáveis locais são declaradas dentro de uma keyword ou em um contexto local específico.
Elas são acessíveis apenas dentro da keyword ou contexto em que são declaradas.

- Teste -> Variáveis de teste são definidas no nível do caso de teste usando a seção *** Variables ***.
Elas são acessíveis em todo o caso de teste.

- Global -> Declarada globalmente para ser usada em qualquer teste. São definidas no nível de suite 
usando a seção *** Variables *** da suite.
Elas são acessíveis em todos os casos de teste dentro da mesma suite.


*** Utilizando keywords SHOULD ***

Should:

A palavra-chave Should é usada para afirmar que uma condição específica é verdadeira.
Ela é frequentemente utilizada para verificar se algo ocorreu conforme o esperado durante a execução de um teste.

Utilização:
${resultado}=    Execute Keyword And Return Status    Minha Palavra-Chave
Should Be True    ${resultado}    Mensagem de Falha Opcional

Contexto de Uso:
Verificar se uma condição é verdadeira durante a execução de um teste.
Usada com palavras-chave que retornam um status booleano.