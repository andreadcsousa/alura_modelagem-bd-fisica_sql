-- Filtro usando duas tabelas
SELECT vendas.cod_vendedor, vendedor.nome_vendedor, vendas.qtd_vendida
FROM vendas, vendedor WHERE vendas.cod_vendedor = vendedor.cod_vendedor;

-- Soma valores e agrupa pelo código dos vendedores
SELECT vendas.cod_vendedor, vendedor.nome_vendedor, SUM(vendas.qtd_vendida)
FROM vendas, vendedor WHERE vendas.cod_vendedor = vendedor.cod_vendedor
GROUP BY vendas.cod_vendedor;

-- Faz a junção de duas tabelas na consulta
SELECT vendas.cod_vendedor, vendedor.nome_vendedor, SUM(vendas.qtd_vendida)
FROM vendas INNER JOIN vendedor ON vendas.cod_vendedor = vendedor.cod_vendedor
GROUP BY vendas.cod_vendedor;

-- Traz a maior quantidade vendida geral
SELECT MAX(qtd_vendida) FROM vendas;

-- Traz a maior quantidade vendida de cada vendedor
SELECT MAX(qtd_vendida) FROM vendas GROUP BY(cod_vendedor);

-- Traz todos os livros pela quantidade vendida
SELECT livros.nome_livro, vendas.qtd_vendida
FROM livros LEFT JOIN vendas
ON livros.cod_livro = vendas.cod_livro;

-- Traz os livros que não foram vendidos
SELECT livros.nome_livro, vendas.qtd_vendida
FROM livros LEFT JOIN vendas
ON livros.cod_livro = vendas.cod_livro
WHERE vendas.qtd_vendida IS NULL;

-- Traz as quantidades vendidas com livros nulos
SELECT vendas.cod_livro, livros.nome_livro, vendas.qtd_vendida
FROM livros RIGHT JOIN vendas
ON livros.cod_livro = vendas.cod_livro;