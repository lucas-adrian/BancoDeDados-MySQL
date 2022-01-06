DROP PROCEDURE pais_cliente;

DELIMITER $$
CREATE PROCEDURE pais_cliente (IN nomepais VARCHAR(15), OUT cliente INT)
BEGIN
SELECT COUNT(ClienteID) INTO cliente
FROM clientes
WHERE Pais = nomepais;
SELECT Pais FROM clientes
WHERE Titulo LIKE 'O%';
END
$$ DELIMITER ;

CALL pais_cliente ('France', @cliente);

SELECT @cliente;