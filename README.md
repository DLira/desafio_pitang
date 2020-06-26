# Desafio Pitang

### Questão 1: Criar um sistema de banco de dados que gerencie 4 entidades
1. Usuario: Funcionário da Empresa, deve possuir atributos que identifique um
usuário comum, com o numero do CPF (apenas dígitos) como chave.
1. Cargo: O cargo que este funcionário desempenha (desenvolvedor, analista de sis
temas, analista de requisitos, arquiteto de software, gerente de projetos, etc...).
1. Órgão: Orgão ao qual o usuário esteja vinculado (Secretaria A, Secretaria B, Se
cretaria C, etc...)
1. Sistema: Sistema que o usuário está vinculado (obs: vinculo poderá existir ou nã
o e um sistema poderá ter mais de um usuário, bem como o usuário poderá estar
associado a diversos sistemas).


### Questão 2: Efetuar o povoamento das entidades:

### Questão 3: Efetuar uma extração que atenda os seguintes requisitos:
1. Criar uma tabela em memória dos sistemas do usuário, que agrupe por cpf todos
os sistemas do determinado usuário;
1. Retornar todos os usuários do sistema com o CPF (com máscara), o nome do us
uário em caixa alta, bem como os cargos, orgãos e sistemas associados (se existi
r);


---------------------

# Desafio Sefaz

O objetivo desse teste é que você mostre suas habilidades de codificação e o que você valoriza
na engenharia de software. Acreditamos que um bom código é um código bem testado.
Você poderá adicionar e estender a vontade os requisitos da aplicação.

### A aplicação deverá permitir um cadastro de usuários onde teremos as seguintes
funcionalidades:
1. Fazer login
2. Consultar Usuários (Lista todos)
3. Incluir Usuário
4. Alterar Usuário
5. Remover Usuário

### A estrutura do usuário
- Nome [string]
- Email [string]
- Senha[string]
- Telefones [lista] o ddd [número] o Número [string] o Tipo [string]

### Requisitos obrigatórios
- Utilizar a Plataforma – Java EE
- Estruturar a aplicação em camadas
- Uso de banco de dados relacional/SQL (preferencialmente HSQLDB ou H2)
- Processo de build utilizando Maven Persistência utilizando JDBC ou JPA Utilizar
no mínimo Java 8.
- Utilizar na interface JSF/Primefaces ou JSP com jQuery e Ajax
- Disponibilizar o código em repositório Git online (Gitlab ou Github)
• O que você NÃO pode utilizar: Spring / Angular

### Requisitos desejáveis
- Disponibilizar a aplicação em serviço de hospedagem online (Heroku, AWS, Digital
Ocean, etc).
- Uso de EJBs para controle transacional.
- Uso de servidor de aplicação Wildfly ou OpenLiberty.
o Disponibilizar a configuração do servidor de aplicação no repositório Git online
junto com o código fonte.
- Testes unitários com jUnit