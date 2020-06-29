INSERT INTO cargo(cargo_nome) VALUES('Desenvolvedor');
INSERT INTO cargo(cargo_nome) VALUES('analista de sistemas');
INSERT INTO cargo(cargo_nome) VALUES('analista de requisitos');
INSERT INTO cargo(cargo_nome) VALUES('arquiteto de software');
INSERT INTO cargo(cargo_nome) VALUES('gerente de projetos');
INSERT INTO cargo(cargo_nome) VALUES('administrativo');


INSERT INTO orgao(orgao_nome, orgao_endereco) VALUES ('Secretaria da Casa Civil', 'Endereço-1');
INSERT INTO orgao(orgao_nome, orgao_endereco) VALUES ('Secretaria da Controladoria Geral do Estado', 'Endereço-2');
INSERT INTO orgao(orgao_nome, orgao_endereco) VALUES ('Secretaria da Fazenda', 'Endereço-3');
INSERT INTO orgao(orgao_nome, orgao_endereco) VALUES ('Secretaria da Mulher', 'Endereço-4');
INSERT INTO orgao(orgao_nome, orgao_endereco) VALUES ('Secretaria de Administração', 'Endereço-5');
INSERT INTO orgao(orgao_nome, orgao_endereco) VALUES ('Secretaria de Ciência, Tecnologia e Inovação', 'Endereço-6');
INSERT INTO orgao(orgao_nome, orgao_endereco) VALUES ('Secretaria de Cultura', 'Endereço-7');
INSERT INTO orgao(orgao_nome, orgao_endereco) VALUES ('Secretaria de Defesa Social', 'Endereço-8');
INSERT INTO orgao(orgao_nome, orgao_endereco) VALUES ('Secretaria de Desenvolvimento Agrário', 'Endereço-9');
INSERT INTO orgao(orgao_nome, orgao_endereco) VALUES ('Secretaria de Desenvolvimento Econômico', 'Endereço-10');

INSERT INTO sistema(sistema_nome) VALUES('alfa_sis');
INSERT INTO sistema(sistema_nome) VALUES('beta_sis');
INSERT INTO sistema(sistema_nome) VALUES('gama_sis');
INSERT INTO sistema(sistema_nome) VALUES('delta_sis');
INSERT INTO sistema(sistema_nome) VALUES('epsilon_sis');
INSERT INTO sistema(sistema_nome) VALUES('dzeta_sis');
INSERT INTO sistema(sistema_nome) VALUES('eta_sis');
INSERT INTO sistema(sistema_nome) VALUES('teta_sis');
INSERT INTO sistema(sistema_nome) VALUES('iota_sis');
INSERT INTO sistema(sistema_nome) VALUES('capa_sis');


INSERT INTO funcionario(funcionario_cpf, nome, aniversario, sexo, salario, orgao_id, cargo_id) VALUES('85571123354', 'Miguel', '1970-10-11', 'M', 50000, 1, 1);
INSERT INTO funcionario(funcionario_cpf, nome, aniversario, sexo, salario, orgao_id, cargo_id) VALUES('39405166433', 'Arthur', '1980-06-07', 'M', 55000, 1, 5);
INSERT INTO funcionario(funcionario_cpf, nome, aniversario, sexo, salario, orgao_id, cargo_id) VALUES('53034428618', 'Helena', '1981-01-02', 'F', 60000, 2, 2);
INSERT INTO funcionario(funcionario_cpf, nome, aniversario, sexo, salario, orgao_id, cargo_id) VALUES('16316836163', 'Heitor', '1975-04-10', 'M', 45000, 2, 3);
INSERT INTO funcionario(funcionario_cpf, nome, aniversario, sexo, salario, orgao_id, cargo_id) VALUES('53841699820', 'Laura', '1978-10-04', 'F', 65000, 3, 4);
INSERT INTO funcionario(funcionario_cpf, nome, aniversario, sexo, salario, orgao_id, cargo_id) VALUES('40488125723', 'Isabella', '1982-05-04', 'F', 40000, 4, 6);
INSERT INTO funcionario(funcionario_cpf, nome, aniversario, sexo, salario, orgao_id, cargo_id) VALUES('88926201775', 'Pedro', '1983-07-08', 'M', 50000, 5, 6);
INSERT INTO funcionario(funcionario_cpf, nome, aniversario, sexo, salario, orgao_id, cargo_id) VALUES('20666525714', 'Manuela', '1977-01-01', 'F', 60000, 6, 2);
INSERT INTO funcionario(funcionario_cpf, nome, aniversario, sexo, salario, orgao_id, cargo_id) VALUES('52948503540', 'Enzo', '1981-01-03', 'M', 100000, 7, 2);
INSERT INTO funcionario(funcionario_cpf, nome, aniversario, sexo, salario, orgao_id, cargo_id) VALUES('51712371827', 'Luiza', '1981-01-03', 'F', 40000, 8, 5);
-- orgaos 9 e 10 (Desenv. Agrario e Desenv Economico) Não possuem funcionarios lotados

INSERT INTO usuario_sistema(funcionario_cpf, sistema_id) VALUES('39405166433', 1);
INSERT INTO usuario_sistema(funcionario_cpf, sistema_id) VALUES('85571123354', 1);
INSERT INTO usuario_sistema(funcionario_cpf, sistema_id) VALUES('16316836163', 2);
INSERT INTO usuario_sistema(funcionario_cpf, sistema_id) VALUES('53034428618', 2);
INSERT INTO usuario_sistema(funcionario_cpf, sistema_id) VALUES('53841699820', 3);
INSERT INTO usuario_sistema(funcionario_cpf, sistema_id) VALUES('40488125723', 4);
INSERT INTO usuario_sistema(funcionario_cpf, sistema_id) VALUES('88926201775', 5);
INSERT INTO usuario_sistema(funcionario_cpf, sistema_id) VALUES('20666525714', 6);
INSERT INTO usuario_sistema(funcionario_cpf, sistema_id) VALUES('52948503540', 7);
--Luiza(51712371827) que fica no orgao(Sec Defesa social, 8) não fica atrelada a nenhum sistema

INSERT INTO usuario_sistema(funcionario_cpf, sistema_id) VALUES('39405166433', 2);
INSERT INTO usuario_sistema(funcionario_cpf, sistema_id) VALUES('85571123354', 2);
INSERT INTO usuario_sistema(funcionario_cpf, sistema_id) VALUES('16316836163', 3);
INSERT INTO usuario_sistema(funcionario_cpf, sistema_id) VALUES('53034428618', 3);
INSERT INTO usuario_sistema(funcionario_cpf, sistema_id) VALUES('53841699820', 4);
INSERT INTO usuario_sistema(funcionario_cpf, sistema_id) VALUES('40488125723', 5);
INSERT INTO usuario_sistema(funcionario_cpf, sistema_id) VALUES('88926201775', 6);
INSERT INTO usuario_sistema(funcionario_cpf, sistema_id) VALUES('20666525714', 7);
INSERT INTO usuario_sistema(funcionario_cpf, sistema_id) VALUES('52948503540', 9);
INSERT INTO usuario_sistema(funcionario_cpf, sistema_id) VALUES('52948503540', 10);
