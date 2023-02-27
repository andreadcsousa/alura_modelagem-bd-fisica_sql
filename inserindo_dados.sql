-- Desativa a chave estrangeira para inserir dados nas tabelas
SET FOREIGN_KEY_CHECKS = 0;

-- Desativa restrição de updates ao atualizar dados nas tabelas
SET SQL_SAFE_UPDATES = 0;

-- Adiciona um livro e suas informações em cada coluna da tabela
INSERT INTO livros VALUES (
	1,
    "Percy Jackson e o Ladrão de Raios",
    "Rick Riordan",
    "Intríseca",
    "Aventura",
    34.65
);

-- Adiciona vários livros e suas informações simultaneamente
INSERT INTO livros VALUES
(2, "A volta ao mundo em 80 dias", "Júlio Verne", "Principis", "Aventura", 18.75),
(3, "O Cortiço", "Aluísio de Azevedo", "Principis", "Romance", 21.90),
(4, "Dom Casmurro", "Machado de Assis", "Principis", "Ficção", 16.00),
(5, "Memórias Póstumas de Brás Cubas", "Machado de Assis", "Principis", "Ficção", 18.40),
(6, "Quincas Borba", "Machado de Assis", "Principis", "Romance", 19.00),
(7, "Ícaro", "Gabriel Pedrosa", "Ateliê", "Poesia", 36),
(8, "Os Lusíadas", "Luís de Camões", "Pé da Letra", "Poesia", 24.89),
(9, "Outros jeitos de usar a boca", "Rupi Kaur", "Planeta", "Ficção", 35.90);

-- Adiciona vendedores do Clube
INSERT INTO vendedor VALUES
(1, "Paula Rabelo"),
(2, "Juliana Macedo"),
(3, "Roberto Barros"),
(4, "Barbara Jales");

-- Adiciona um registro de vendas
INSERT INTO vendas VALUES 
(1, 3, 7, 1, "2020-11-02"),
(2, 4, 8, 2, "2020-11-02"),
(3, 4, 4, 3, "2020-11-02"),
(4, 1, 7, 1, "2020-11-03"),
(5, 1, 6, 3, "2020-11-03"),
(6, 1, 9, 2, "2020-11-04"),
(7, 4, 1, 3, "2020-11-04"),
(8, 1, 5, 2, "2020-11-05"),
(9, 1, 2, 1, "2020-11-05"),
(10, 3, 8, 2, "2020-11-11"),
(11, 1, 1, 4, "2020-11-11"),
(12, 2, 10, 10, "2020-11-11"),
(13, 1, 12, 5, "2020-11-18"),
(14, 2, 4, 1, "2020-11-25"),
(15, 3, 13, 2,"2021-01-05"),
(16, 4, 13, 1, "2021-01-05"),
(17, 4, 4, 3, "2021-01-06"),
(18, 2, 12, 2, "2021-01-06");

-- Adiciona livros ao estoque
INSERT INTO estoque VALUES
(1,  7),
(2,  10),
(3,  2),
(8,  4),
(10, 5),
(11, 3),
(12, 3);

-- Adiciona livros com informações fora da ordem
INSERT INTO livros
	(categoria, autoria, nome_livro, editora, cod_livro, preco)
VALUES
	("Biografia", "Anne Frank", "O Diário de Anne Frank", "Record", 10, 40.40),
	("Biografia", "Malala Yousafzai", "Eu sou Malala", "Companhia das Letras", 11, 33.53),
	("Biografia", "Michelle Obama"  , "Minha história", "Objetiva", 12, 40.99);

-- Excluindo uma tabela
DROP TABLE vendedor;