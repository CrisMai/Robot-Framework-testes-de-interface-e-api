

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


*** Variáveis ***

Variáveis são utilizadas para armazenar e manipular dados durante a execução de testes ou automação. 
Elas são componentes fundamentais para parametrizar casos de teste, armazenar valores temporários, 
reutilizar dados e tornar os scripts mais flexíveis e dinâmicos.
Algumas características-chave das variáveis no Robot Framework:

Atribuição Dinâmica: As variáveis podem ser criadas dinamicamente durante a execução do script, 
e seus valores podem ser atribuídos e modificados conforme necessário.

Escopo Global por Padrão: As variáveis são globais por padrão, o que significa que podem ser acessadas em qualquer lugar do teste. 

Utilização em Expressões: Variáveis podem ser usadas em expressões matemáticas, strings e em muitos outros contextos.

Parametrização: Variáveis são frequentemente usadas para parametrizar testes, permitindo que você execute o mesmo caso de teste 
com diferentes conjuntos de dados.


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


*** Utilizando Keywords IF-ELSE ***

O bloco If-Else é usado para controlar o fluxo do programa com base em condições. 
Se uma condição for verdadeira, o bloco If é executado; caso contrário, o bloco Else (opcional) é executado.

Utilização:
${condicao}=    Evaluate    2 + 2 == 4
Run Keyword If    ${condicao}    Minha Palavra-Chave
...    ELSE    Outra Palavra-Chave

Contexto de Uso:
Execução condicional de palavras-chave com base em uma condição.
Controlar o fluxo do programa.


*** Utlizando keywords FOR ***

A palavra-chave For é usada para realizar iterações sobre elementos, como uma lista ou um range de valores. 
Ela permite a execução repetitiva de blocos de código para cada elemento na iteração.

Utilização:
@{lista}=    Create List    Item1    Item2    Item3
:FOR    ${item}    IN    @{lista}
\    Log    Item: ${item}

Contexto de Uso:
Iterar sobre elementos em uma lista ou range.
Realizar operações repetitivas.


*** Listas e Dicionários ***

Listas:
Descrição: Uma lista é uma coleção ordenada de itens, onde cada item pode ser de qualquer tipo de dado. Os itens em uma lista são acessados por meio de índices numéricos, e a ordem dos itens é mantida.

Declaração: No Robot Framework, uma lista pode ser declarada utilizando a palavra-chave Create List ou utilizando a sintaxe @{} para inicializar uma lista vazia.

Exemplo:
*** Variables ***
@{lista_numeros}    1    2    3    4    5

*** Test Cases ***
Exemplo de Lista
    ${lista_cores}=    Create List    Vermelho    Verde    Azul
    Log    ${lista_cores}[1]  # Acessa o segundo elemento da lista


Dicionário:
Descrição: Um dicionário é uma coleção não ordenada de pares chave-valor, onde cada valor é associado a uma chave única. Os itens em um dicionário são acessados por meio das chaves, e não pela posição.

Declaração: No Robot Framework, um dicionário pode ser declarado utilizando a palavra-chave Create Dictionary ou utilizando a sintaxe &{} para inicializar um dicionário vazio.

Exemplo:
*** Variables ***
&{dicionario_pessoa}    Nome=João    Idade=30    Cidade=São Paulo

*** Test Cases ***
Exemplo de Dicionário
    ${dicionario_carro}=    Create Dictionary    Marca=Toyota    Modelo=Corolla    Ano=2022
    Log    ${dicionario_carro}[Marca]  # Acessa o valor associado à chave "Marca"



*** Logs ***

Log to Console:
Registra uma mensagem no console de saída do Robot Framework.

Características:
Útil para exibir mensagens durante a execução do teste.
A mensagem é exibida imediatamente no console de saída.
Pode ser usada para depuração e monitoramento em tempo real.

Exemplo:
Log To Console    Esta é uma mensagem de exemplo para o console


Log:
Registra uma mensagem no log de execução do Robot Framework.

Características:
Registra uma única mensagem no log de execução.
Útil para fornecer informações sobre o progresso do teste.

Exemplo:
Log    Esta é uma mensagem de exemplo no log


Log Many:
Registra várias mensagens de uma vez no log de execução.

Características:
Permite registrar várias mensagens em uma única chamada de palavra-chave.
Cada mensagem é registrada em uma nova linha no log.

Exemplo:
Log Many    Mensagem 1    Mensagem 2    Mensagem 3


Log Variables:
Registra as variáveis e seus valores no log de execução.

Características:
Útil para depuração e monitoramento de variáveis durante a execução do teste.
Registra todas as variáveis e seus valores no momento da chamada.

Exemplo:
${variavel1}=    Set Variable    Valor1
${variavel2}=    Set Variable    Valor2
Log Variables    # Registra os valores das variáveis no log


*** Run Keyword ***

A palavra-chave Run Keyword no Robot Framework permite executar outra palavra-chave 
dentro do mesmo caso de teste ou keyword. Isso é útil quando você precisa chamar uma 
palavra-chave de forma dinâmica, ou quando precisa lidar com condições específicas.

Aqui está um exemplo simples de como você pode usar Run Keyword:

Suponha que você tenha duas palavras-chave definidas, uma chamada Keyword1 e outra chamada Keyword2. 
Você deseja executar uma dessas palavras-chave com base em alguma condição.

*** Keywords ***
Keyword1
    Log    Executando Keyword1

Keyword2
    Log    Executando Keyword2

Minha Keyword Dinâmica
    ${condicao}=    Set Variable    ${True}   # Suponha que a condição seja verdadeira
    Run Keyword If    ${condicao}    Keyword1    ELSE    Keyword2

Neste exemplo:

Keyword1 e Keyword2 são duas palavras-chave definidas.
Minha Keyword Dinâmica é uma palavra-chave que define a lógica para decidir qual palavra-chave 
executar com base em uma condição.
Run Keyword If é usado para executar Keyword1 se a condição for verdadeira e Keyword2 se a condição 
for falsa.


*** Bibliotecas ***

- Biblioteca Operation System:

É uma biblioteca embutida que fornece palavras-chave para executar comandos do sistema operacional, 
interagir com o sistema de arquivos e realizar várias operações relacionadas ao sistema.

Características e funcionalidades:
-Execução de Comandos do Sistema Operacional
-Manipulação de Arquivos e Diretórios
-Obtenção de Informações do Sistema
-Execução de Programas e Scripts
-Manipulação de Variáveis de Ambiente

Formas de Uso:
Para utilizar a biblioteca OperatingSystem é preciso importá-la no seu arquivo de recursos ou no seu arquivo de teste. 


- Biblioteca String

É uma biblioteca embutida que fornece palavras-chave para manipular strings de texto. 
Com esta biblioteca, é possível realizar diversas operações com strings, como formatação, concatenação, busca, substituição e verificação.

Características e funcionalidades:
-Manipulação de Strings
-Formatação de Strings
-Busca e Substituição
-Verificação de Strings

Formas de Uso:
Para utilizar a biblioteca String é preciso importá-la no seu arquivo de recursos ou no seu arquivo de teste.


- Biblioteca JsonLibrary

O JSONLibrary é uma biblioteca de testes do Robot Framework para manipular o Objecto JSON. Poderá manipular o seu objecto JSON com o JSONPath.
JSONPath é uma expressão que pode ajudar a acessar seu documento JSON. A estrutura do JSONPath é da mesma forma que o XPath que usa para aceder ao documento XML. Este é um exemplo da sintaxe do JSONPath.

Instalar robotframework-jsonlibrary através do comando pip
pip install -U robotframework-jsonlibrary


- Biblioteca DateTime

Essa é uma biblioteca embutida que fornece palavras-chave para trabalhar com datas e tempos nos casos de teste. Ela oferece várias funcionalidades para manipular datas, calcular diferenças de tempo, formatar datas e muito mais.

Características e funcionalidades:
-Obtenção da Data e Hora Atuais: Get Current Date e Get Current Date palavras-chave para obter a data e hora atuais.

-Cálculos de Diferenças de Tempo:Time Difference e Convert Time para calcular a diferença entre duas datas ou converter entre diferentes formatos de tempo.

-Formatação de Datas e Horas:Format Time para formatar uma data ou hora em uma determinada string de formato.

-Manipulação de Datas e Horas;

-Comparação de Datas;

-Conversão de Formatos de Data e Hora: Convert Date para converter uma data de um formato para outro.

-Validação de Formatos de Data e Hora: Should Be Date, Should Be Valid Date e Should Match Pattern para validar se uma string está no formato de data e hora esperado.



*** Swagger ***

Swagger é uma estrutura de código aberto que permite projetar, documentar e consumir APIs REST de forma fácil e eficiente. 
Ele fornece uma interface visual interativa, conhecida como Swagger UI, que permite aos desenvolvedores visualizar e interagir com a documentação 
da API diretamente no navegador da web.

Principais Componentes do Swagger:

Swagger Editor:
Uma ferramenta online ou uma aplicação desktop que permite aos desenvolvedores escrever e editar arquivos Swagger/OpenAPI Specification.

Swagger UI:
Uma interface de usuário interativa que exibe a documentação da API de forma visualmente atraente. Os desenvolvedores podem usar o Swagger UI para 
testar endpoints da API, enviar solicitações HTTP e visualizar as respostas.

Swagger Codegen:
Uma ferramenta que gera automaticamente código cliente em várias linguagens de programação a partir de um arquivo Swagger/OpenAPI Specification. 
Isso ajuda os desenvolvedores a consumir a API mais facilmente, fornecendo classes, métodos e estruturas de dados correspondentes às definições da API.


*** RequestsLibrary ***

A biblioteca RequestsLibrary é uma extensão do Robot Framework que fornece palavras-chave para fazer solicitações HTTP e interagir com APIs da web. 
Ela é baseada na biblioteca Python requests. 

Funcionalidades Principais:

Realizar Solicitações HTTP:
A RequestsLibrary permite fazer diferentes tipos de solicitações HTTP, incluindo GET, POST, PUT, DELETE, PATCH, OPTIONS, HEAD.

Enviar e Receber Dados:
É possível enviar dados junto com suas solicitações, como parâmetros de consulta, cabeçalhos, corpo de solicitação (payload) e autenticação. 

Gerenciamento de Sessões:
A biblioteca suporta o uso de sessões persistentes, permitindo que você mantenha o estado entre várias solicitações. 
Isso é útil para lidar com autenticação, cookies e outras informações de sessão.

Manipulação de Cookies:
Você pode facilmente manipular cookies, incluindo adicionar, remover e verificar cookies em solicitações HTTP.

Upload de Arquivos:
A RequestsLibrary suporta o envio de arquivos em solicitações HTTP, permitindo o upload de arquivos para servidores remotos.

Validação de Respostas:
Você pode verificar as respostas das solicitações HTTP usando palavras-chave de validação, como Should Be Equal, Should Be Equal As Numbers, Should Contain.

Como Usar:
Para começar a usar a RequestsLibrary em seus testes do Robot Framework, você precisa instalar no CMD:
pip install robotframework-requests

Em seguida, você precisa importá-la no seu arquivo de recursos ou no seu arquivo de teste:
*** Settings ***
Library    RequestsLibrary


*** Selenium ***

O Selenium é uma ferramenta de automação de testes amplamente utilizada para testar aplicativos da web. Ele fornece uma API que permite controlar um navegador da web e automatizar a interação com páginas da web, simulando as ações de um usuário real. 

Características Principais:

Controle de Navegadores:
O Selenium suporta a automação de vários navegadores da web, incluindo Google Chrome, Mozilla Firefox, Microsoft Edge, Safari e outros. Isso permite testar a compatibilidade entre navegadores e garantir que o aplicativo funcione corretamente em diferentes ambientes de navegador.

Interatividade com Elementos da Página:
O Selenium permite interagir com elementos da página da web, como clicar em botões, preencher campos de formulário, enviar dados, verificar conteúdo e muito mais. Isso permite simular cenários de uso reais e testar a funcionalidade do aplicativo da web.

Suporte a Diferentes Linguagens de Programação:
O Selenium é compatível com várias linguagens de programação, incluindo Python, Java, C#, Ruby e JavaScript. Isso oferece flexibilidade para os desenvolvedores escreverem testes de automação usando a linguagem de programação de sua escolha.

Execução em Diferentes Plataformas:
Os testes escritos com o Selenium podem ser executados em diferentes plataformas, incluindo Windows, macOS e Linux. Isso permite realizar testes em diferentes ambientes de sistema operacional e garantir que o aplicativo da web seja compatível.

Integração com Frameworks de Teste:
O Selenium pode ser facilmente integrado com outros frameworks de teste, como o JUnit, TestNG, NUnit e Robot Framework. Isso permite incluir testes de automação de interface de usuário como parte de seus pipelines de CI/CD e processos de teste automatizados.