DELIMITER $$
CREATE PROCEDURE lista_cidade (nome_cidade VARCHAR(50))
BEGIN
SELECT Cidade, Nome, Sobrenome FROM empregados
WHERE cidade = nome_cidade;
END
$$ DELIMITER ;

CALL lista_cidade ('Seattle');



