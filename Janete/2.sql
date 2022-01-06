DELIMITER $$
CREATE PROCEDURE nome_produto_cat (numero INT)
BEGIN
SELECT p.ProdutoNome, p.UnidadesEstoque, c.CategoriaNome 
FROM produtos p
INNER JOIN 
categorias c ON c.CategoriaID = p.CategoriaID
WHERE p.UnidadesEstoque > numero;

END
$$ DELIMITER ;

CALL nome_produto_cat ('100');