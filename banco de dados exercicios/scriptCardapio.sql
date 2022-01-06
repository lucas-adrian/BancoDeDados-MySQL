CREATE SCHEMA IF NOT EXISTS  cardapio ;
USE  cardapio  ;
-- -----------------------------------------------------
-- Tabela   categorias 
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS   categorias  (
   idCategoria  INT(11) NOT NULL AUTO_INCREMENT,
   nome  VARCHAR(20) NULL,
   url_imagem  VARCHAR(250) NULL,
  PRIMARY KEY ( idCategoria ));
-- -----------------------------------------------------
-- Tabela   produtos 
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS   produtos  (
   idProduto  INT(11) NOT NULL AUTO_INCREMENT,
   idCategoria  int NOT NULL,
   nome  VARCHAR(100) NULL,
   descricao  VARCHAR(300) NULL,
   imagem  VARCHAR(250) NULL,
   valor  decimal(5,2) NULL,
  PRIMARY KEY ( idProduto ),
  CONSTRAINT  FKId_Cat 
		FOREIGN KEY  ( idCategoria )
        REFERENCES   categorias ( idCategoria )
   );
     -- -----------------------------------------------------
-- Tabela   clientes 
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS   clientes  (
   idCliente  INT(11) NOT NULL AUTO_INCREMENT,
   nome  VARCHAR(50) NULL,
   sobrenome  VARCHAR(100) NULL,
   cpf  CHAR(11) NULL,
   nrCelular  CHAR(15) NULL,
   email  VARCHAR(150) NULL,
  PRIMARY KEY ( idCliente )
  );
       -- -----------------------------------------------------
-- Tabela   pedidos 
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS   pedidos  (
   idPedido  INT(11) NOT NULL AUTO_INCREMENT,
   idProduto  int NOT NULL,
   idCliente  int NOT NULL,
   quantidade  int NULL,
   precoTotal  decimal(7,2) NULL,
PRIMARY KEY ( idPedido ),
CONSTRAINT  FKId_Prod 
		FOREIGN KEY  ( idProduto )
        REFERENCES   produtos ( idProduto ),
CONSTRAINT  FKId_Cli 
		FOREIGN KEY  ( idCliente )
        REFERENCES   clientes ( idCliente )
   );
           -- -----------------------------------------------------
-- Tabela   vendas 
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS   vendas  (
   idVenda  INT(11) NOT NULL AUTO_INCREMENT,
   idPedido  int NOT NULL,
   data_atual  date,
   hora_atual  time,
   Total  decimal(7,2) NULL,
PRIMARY KEY ( idVenda ),
CONSTRAINT  FKId_Ped 
		FOREIGN KEY  ( idPedido )
        REFERENCES   pedidos ( idPedido )
   );
