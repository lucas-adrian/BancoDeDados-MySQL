CREATE DATABASE academia;
USE academia;

CREATE TABLE modalidades
(
id_modalidade INT AUTO_INCREMENT PRIMARY KEY,
funcional  VARCHAR(50),
pilates    VARCHAR(50),
musculacao VARCHAR(50)
);

CREATE TABLE instrutores
(
id_instrutor   INT AUTO_INCREMENT PRIMARY KEY,
nome           VARCHAR(50),
id_modalidade    	int,
CONSTRAINT fk_modalidade_instrutor
FOREIGN KEY (id_modalidade) REFERENCES modalidades (id_modalidade)
);

CREATE TABLE alunos
(
id_aluno INT AUTO_INCREMENT PRIMARY KEY,
nome     VARCHAR(50),
contato  VARCHAR(50),
id_modalidade INT,
id_instrutor  INT,
CONSTRAINT fk_modalide_aluno FOREIGN KEY (id_modalidade) REFERENCES modalidades (id_modalidade),
CONSTRAINT fk_instrutor_aluno FOREIGN KEY (id_instrutor) REFERENCES instrutores (id_instrutor)
);

CREATE TABLE contratos
(
id_contrato     	INT AUTO_INCREMENT PRIMARY KEY,
id_aluno 			INT,
id_modalidade       INT,
CONSTRAINT fk_aluno_contrato FOREIGN KEY (id_aluno) REFERENCES alunos (id_aluno),
CONSTRAINT fk_modalidade_contrato FOREIGN KEY (id_modalidade) REFERENCES modalidades (id_modalidade)
);

INSERT INTO alunos (nome, contato)
VALUES ('Lucas Adrian', 47989176564);

UPDATE alunos
SET nome = 'Lucas Adrian Richter'
WHERE id_aluno = 1;

SELECT nome, contato 
FROM alunos;

# PROJETO DESENVOLVIDO PARA GERENCIAR DADOS DOS CLIENTES DE UMA ACADEMIA, 
# BEM QUANTO OS CONTRATOS DE SERVIÇO GERADOS ENTRE A ACADEMIA E O CLIENTE, CONFORME A MODALIDADE ESCOLHIDA PELO CLIENTE.
# SEGUINDO COMO BASE A MODALIDADE ESCOLHIDA, SERÁ DESIGNADO O INSTRUTOR ESPECIFICO, QUE PODE SER ALTERADO, POR ISSO NAO ESPECIFICADO NO CONTRATO.


