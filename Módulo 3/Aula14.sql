/*
CREATE DATABASE exercicio2704;

USE exercicio2704;

CREATE TABLE tbl_produtos
(
id_prod INT AUTO_INCREMENT PRIMARY KEY,
nome_prod VARCHAR(50) NOT NULL,
preco_compra_prod DECIMAL,
preco_venda_prod DECIMAL,
categoria_prod VARCHAR(50),
produto_ativo BOOLEAN
);

ALTER TABLE tbl_produtos CHANGE produto_ativo prod_ativo BOOLEAN;
ALTER TABLE tbl_produtos ADD fornecedor VARCHAR(50) NOT NULL AFTER nome_prod;
ALTER TABLE tbl_produtos CHANGE nome_prod nome_prod VARCHAR(97);
ALTER TABLE tbl_produtos DROP preco_compra_prod;

INSERT INTO tbl_produtos
	(nome_prod, fornecedor, preco_venda_prod, categoria_prod, prod_ativo)
VALUES
	('Gelatina', 'Kinor', 2.5, 'Gelatinas', true),
    ('Sorvete', 'Kibom', 25, 'Sorvetes', true),
    ('Geleia', 'Kinor', 3.5, 'Geleias', false),
    ('Tangerina', 'Fazenda', 4.5, 'Frutas', true),
    ('Laranja', 'Fazenda', 5.5, 'Frutas', false);
 
UPDATE tbl_produtos
SET
	nome_prod='Bifinho para Bruce'
WHERE
	id_prod=2;

DELETE FROM tbl_produtos
WHERE
	id_prod=4

INSERT INTO tbl_produtos
	(nome_prod, fornecedor, preco_venda_prod, categoria_prod, prod_ativo)
VALUES
	('Chocolate', 'Lacta',10, 'doce', 1),
    ('Pão', 'Puma', 5 ,'Comidda', 1),
    ('Ração', 'Pedigree', '50', 'Comida', 1),
    ('Leite', 'Itambé', '10', 'bebida', 0),
    ('Carne', 'Friboi', '100', 'Comida', 0);

SELECT * FROM tbl_produtos WHERE prod_ativo = 0;
SELECT * FROM tbl_produtos WHERE id_prod >= 5 AND id_prod <= 20;
SELECT * FROM tbl_produtos nome_prod WHERE prod_ativo = 1;
SELECT * FROM tbl_produtos WHERE prod_ativo = 1 OR id_prod > 30;
SELECT * FROM tbl_produtos WHERE categoria_prod = 'comida' AND preco_venda_prod < 100;
SELECT nome_prod, id_prod, prod_ativo, preco_venda_prod FROM tbl_produtos ORDER BY prod_ativo DESC;

SELECT * FROM tbl_produtos;
*/
