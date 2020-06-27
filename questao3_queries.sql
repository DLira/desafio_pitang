----QUERIES

--### Questão 3: Efetuar uma extração que atenda os seguintes requisitos:
--1. Criar uma tabela em memória dos sistemas do usuário, que agrupe por cpf todos
--os sistemas do determinado usuário;

--1. Retornar todos os usuários do sistema com o CPF (com máscara), o nome do us
--uário em caixa alta, bem como os cargos, orgãos e sistemas associados (se existir);

DELIMITER $$

CREATE FUNCTION formatar_cpf(cpf VARCHAR(11))
RETURNS VARCHAR(14)
    BEGIN
        RETURN CONCAT( SUBSTRING(cpf,1,3) , '.',
                      SUBSTRING(cpf,4,3), '.',
                      SUBSTRING(cpf,7,3), '-',
                      SUBSTRING(cpf,10,2));
	END$$
DELIMITER ;


SELECT formatar_cpf(funcionario.funcionario_cpf) AS CPF, UPPER(funcionario.nome) AS USUARIO, sistema.sistema_nome AS SISTEMA
FROM funcionario 
JOIN usuario_sistema
ON funcionario.funcionario_cpf = usuario_sistema.funcionario_cpf
JOIN sistema
ON usuario_sistema.sistema_id = sistema.sistema_id
ORDER BY funcionario.funcionario_cpf;

