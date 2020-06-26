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


### Questao 2: Efetuar o povoamento das entidades:

### Questão 3: Efetuar uma extração que atenda os seguintes requisitos:
1. Criar uma tabela em memória dos sistemas do usuário, que agrupe por cpf todos
os sistemas do determinado usuário;
1. Retornar todos os usuários do sistema com o CPF (com máscara), o nome do us
uário em caixa alta, bem como os cargos, orgãos e sistemas associados (se existi
r);
