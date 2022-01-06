DROP PROCEDURE exibe_nome;

DELIMITER $$
CREATE PROCEDURE exibe_nome (INOUT letra VARCHAR(20))
BEGIN
SELECT nome FROM clientes
WHERE nome LIKE concat(letra, '%');
END
$$ DELIMITER ;

SET @letra = 'A';

CALL exibe_nome(@letra);

SELECT nome FROM clientes
WHERE nome LIKE ('%a%');