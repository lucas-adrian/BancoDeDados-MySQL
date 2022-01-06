DELIMITER $$
CREATE PROCEDURE novo_genero (nomegenero VARCHAR(20), OUT novoid INT)
BEGIN
SET novoid = (SELECT MAX(id) FROM generos) + 1;
INSERT INTO generos (id, nome) 
VALUES (novoid, nomegenero);
END
$$ DELIMITER ;

CALL novo_genero ('Trap', @novoid);

SELECT * FROM generos;

