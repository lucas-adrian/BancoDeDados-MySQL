USE projeto_spotify;

SELECT * FROM cancao
WHERE titulo LIKE '%z%';

SELECT * FROM cancao
WHERE titulo LIKE '_a%s';

SELECT titulo AS 'Título', 
 qtdcancoes   AS 'Quantidade de canções',
 Datacriacao  AS 'Data de criação', 
 Dataexclusao AS 'Data de exclusão'
 FROM playlist 
 ORDER BY qtdcancoes DESC
 LIMIT 1;

SELECT * FROM usuario
ORDER BY Data_nac DESC
LIMIT 5 OFFSET 10;

SELECT * FROM cancao
ORDER BY qtdreproducao DESC 
LIMIT 5;

SELECT * FROM album
ORDER BY titulo ASC;

SELECT * FROM album
WHERE imagemcapa IS NULL 
ORDER BY titulo ASC;

# 9 BRASIL

SELECT MAX(idUsuario) FROM usuario;

INSERT INTO usuario (idUsuario, Nomeusuario, NomeCompleto, Data_nac, sexo, Cod, senha, Pais_idPais, IdTipoUsuario)
VALUES (20, 'novousuariodespotify@gmail.com', 'Elmer Santos', '1991-11-15', 'M', 'B4129ATF', 'S4321m', 9, NULL);


DELETE FROM generoxcancao 
WHERE (IdGenero = 9 AND idGeneroxcancao <> 0);

UPDATE artista
SET imagem = 'Imagem em falta'
WHERE (imagem IS NULL AND idArtista <> 0);

SELECT * FROM artista;


#Lucas Adrian, Fredson, Victoria Dias, Ana Carolina




