CREATE DATABASE pitang_db;
USE DATABASE pitang_db;

CREATE TABLE cargo(
	cargo_id INT AUTO_INCREMENT PRIMARY KEY,
  cargo_nome VARCHAR(255)
);

CREATE TABLE orgao(
  orgao_id INT AUTO_INCREMENT PRIMARY KEY,
  orgao_nome VARCHAR (255),
  orgao_endereco VARCHAR (255)
);

CREATE TABLE sistema(
  sistema_id INT AUTO_INCREMENT PRIMARY KEY,
  sistema_nome VARCHAR (255)
);

CREATE TABLE funcionario(
  funcionario_cpf CHAR(11) PRIMARY KEY,
  nome VARCHAR (255),
  aniversario DATE,
  sexo VARCHAR(1),
  salario INT,
  orgao_id INT
  cargo_id INT
);

ALTER TABLE funcionario
ADD FOREIGN KEY(orgao_id)
REFERENCES orgao(orgao_id)
ON DELETE SET NULL;

ALTER TABLE funcionario
ADD FOREIGN KEY(cargo_id)
REFERENCES cargo(cargo_id)
ON DELETE SET NULL;

CREATE TABLE usuario_sistema (
  funcionario_cpf CHAR(11),
  sistema_id INT,
  PRIMARY KEY(funcionario_cpf, sistema_id),
  FOREIGN KEY(funcionario_cpf) REFERENCES funcionario(funcionario_cpf) ON DELETE CASCADE,
  FOREIGN KEY(sistema_id) REFERENCES sistema(sistema_id) ON DELETE CASCADE
);