-- Consulta todos os dados inseridos na tabela Livros
SELECT * FROM livros;

-- Consulta dados específicos
SELECT nome_livro FROM livros;

-- Renomeando uma coluna da tabela
SELECT cod_livro AS "Código do livro" FROM livros;

-- Filtrando os dados para trazer apenas os livros de Biografia
SELECT * FROM livros WHERE categoria = "Biografia";

-- Filtrando os dados para trazer apenas romances que custam menos de 48 reais
SELECT * FROM livros WHERE categoria = "Romance" AND preco < 48;

-- Filtrando os dados para trazer apenas ficção que não seja da editora Principis
SELECT * FROM livros WHERE categoria = "Ficção" AND NOT editora = "Principis";

-- Filtrando os dados para trazer livros de ficção ou romance da editora Principis
SELECT * FROM livros WHERE editora = "Principis" AND (categoria = "Aventura" OR categoria = "Ficção");

-- Consultando dados distintos da tabela vendas e ordenando o resultado
SELECT * FROM vendas;
SELECT DISTINCT * FROM vendas;
SELECT DISTINCT * FROM vendas WHERE cod_vendedor = 1 ORDER BY cod_livro;

-- Deletando o livro com código 8 da tabela livros
DELETE FROM livros WHERE cod_livro = 8;

-- Atualizando os preços dos livros na tabela
UPDATE livros SET preco = 0.9 * preco;