/* CREATE DATABASE fecaf_ads1;

USE fecaf_ads1;

CREATE TABLE livro
(
id INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(50) NOT NULL,
editora VARCHAR(20) NOT NULL,
qtd_paginas INT,
categoria VARCHAR(50)
);

ALTER TABLE livro ADD ano INT AFTER editora;

ALTER TABLE livro DROP categoria;

ALTER TABLE livro CHANGE ano ano VARCHAR(5) NOT NULL;

ALTER TABLE livro CHANGE ano ano_public VARCHAR(5) NOT NULL;

RENAME TABLE livro TO livros;

INSERT INTO livros
	(titulo, editora, ano_public, qtd_paginas)
VALUE 
	('MySQL na Pratica', 'Saraiva', 2012, 500),
    ('Aprendendo DB' , 'Leia', 2018, 128),
    ('SQL Server', 'Elsevier', 2022, 500),
    ('Crepusculo', 'Sei lá', 2023, 300),
    ('50 Tons de Cinza', 'Sei lá', 2000, null);
SELECT * FROM livros;

SELECT editora, id, ano_public FROM livros;

SET SQL_SAFE_UPDATES = 0; -- Desativa a proteção do Banco de Dados

UPDATE livros
SET
	editora='Nova Escola'
    ano_public=2005
WHERE
	id=1;

DELETE FROM livros
WHERE
	id=5;
    
SELECT * FROM livros
WHERE id>=2 AND id<=9;

CREATE TABLE cad_prod
(
id int auto_increment primary key,
codean bigint,
descricao_prod varchar(500),
IdClasse int,
valor int);

insert into cad_prod
	(codean, descricao_prod, IdClasse, valor)
value
	(123456789, 'calibrador de pneu', 123, 350),
    (987654321, 'Pneu 175, 65, 14', 112, 370),
    (567891234, 'Bomba elétrica', 111, 457),
    (987651234, 'Bomba manual', 321, 250),
    (543219876, 'Chave de Roda', 231, 150);
SELECT * FROM cad_prod;*/