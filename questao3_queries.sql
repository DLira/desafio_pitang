----QUERIES

--### Questão 3: Efetuar uma extração que atenda os seguintes requisitos:
--1. Criar uma tabela em memória dos sistemas do usuário, que agrupe por cpf todos
--os sistemas do determinado usuário;

--1. Retornar todos os usuários do sistema com o CPF (com máscara), o nome do us
--uário em caixa alta, bem como os cargos, orgãos e sistemas associados (se existir);
select * from usuario_sistema ORDER BY funcionario_cpf;

select funcionario.funcionario_cpf, funcionario.nome
	   from funcionario
       where funcionario.funcionario_cpf IN (
                                             select usuario_sistema.funcionario_cpf   
  								             from usuario_sistema
       										);
select usuario_sistema.funcionario_cpf, usuario_sistema.sistema_id
from usuario_sistema
where usuario_sistema.funcionario_cpf IN (
  										  select funcionario.funcionario_cpf