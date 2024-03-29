

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