-- Cria um esquema no banco de dados
CREATE SCHEMA cdl;

-- Define o esquema que será utilizando para criar as tabelas
USE cdl;

-- Cria tabelas, colunas e define suas características
CREATE TABLE livros (
	cod_livro INT NOT NULL,
    nome_livro VARCHAR(100) NOT NULL,
    autoria VARCHAR(100) NOT NULL,
    editora VARCHAR(100) NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    preco DECIMAL(5, 2) NOT NULL,
    
    PRIMARY KEY (cod_livro)
);

CREATE TABLE estoque (
	cod_livro INT NOT NULL,
    qtd_estoque INT NOT NULL,
    
    PRIMARY KEY (cod_livro)
);

CREATE TABLE vendas (
	cod_pedido INT NOT NULL,
    cod_vendedor INT NOT NULL,
    cod_livro INT NOT NULL,
    qtd_vendida INT NOT NULL,
    data_venda DATE NOT NULL,
    
    PRIMARY KEY (cod_pedido, cod_vendedor)
);

CREATE TABLE vendedor (
	cod_vendedor INT NOT NULL,
    nome_vendedor VARCHAR(255) NOT NULL,
    
    PRIMARY KEY (cod_vendedor)
);

-- Altera as tabelas, adicionando os devidos relacionamentos
ALTER TABLE estoque ADD CONSTRAINT fk_estoque_livros
FOREIGN KEY (cod_livro)
REFERENCES livros (cod_livro)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE vendas ADD CONSTRAINT fk_vendas_livros
FOREIGN KEY (cod_livro)
REFERENCES livros (cod_livro)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE vendas ADD CONSTRAINT fk_vendas_vendedor
FOREIGN KEY (cod_vendedor)
REFERENCES vendedor (cod_vendedor)
ON DELETE NO ACTION
ON UPDATE NO ACTION;