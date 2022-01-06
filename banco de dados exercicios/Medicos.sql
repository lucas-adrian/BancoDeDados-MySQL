CREATE DATABASE saude_dh;

USE saude_dh;

DROP TABLE pacientes;

CREATE TABLE pacientes
(
paciente_id          INT NOT NULL auto_increment,
paciente_nome        VARCHAR(50),
paciente_sobrenome   VARCHAR(50),
PRIMARY KEY (paciente_id)
);


CREATE TABLE especialidades
(
especialidade_id   INT not null auto_increment,
especialidade_nome VARCHAR(100),
PRIMARY KEY (especialidade_id)
);

CREATE TABLE medicos
(
medico_id             INT NOT NULL auto_increment,
medico_nome           VARCHAR(50),
medico_sobrenome      VARCHAR(100),
especialidade_id      INT,
PRIMARY KEY (medico_id),
CONSTRAINT  fk_medico_especialidade
  FOREIGN KEY (especialidade_id)
  REFERENCES especialidades(especialidades_id)
);
