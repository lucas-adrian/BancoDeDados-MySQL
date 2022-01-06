CREATE TABLE usuario 
(
usuario_id      INT AUTO_INCREMENT PRIMARY KEY,
nome            VARCHAR(50) NOT NULL,
sobrenome       VARCHAR(50),
email           VARCHAR(100)NOT NULL UNIQUE,
data_nascimeto  DATE
);

ALTER TABLE usuario
ADD telefone VARCHAR(50);