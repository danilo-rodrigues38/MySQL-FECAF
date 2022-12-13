/* Exercício Aula 4: */

CREATE DATABASE livraria;

USE livraria;

CREATE TABLE tbl_livro (
    isbn_livro int PRIMARY KEY,
    titulo_livro varchar(30),
    autor_livro varchar(30),
    editora_livro varchar(30),
    fk_tbl_cliente_cpf_cliente int,
    id_emprest int,
    nome_emprest varchar(30),
    retirada date,
    entrega date
);

CREATE TABLE tbl_autor (
    id_autor int PRIMARY KEY AUTO_INCREMENT,
    nome_autor varchar(30),
    nacionalidade_autor varchar(30)
);

CREATE TABLE tbl_categoria (
    id_cat int PRIMARY KEY AUTO_INCREMENT,
    desc_cat varchar(30)
);

CREATE TABLE tbl_cliente (
    cpf_cliente int PRIMARY KEY AUTO_INCREMENT,
    nome_cliente varchar(30),
    end_cliente varchar(30),
    tel_cliente int
);

CREATE TABLE aluno (
    ra_aluno int,
    fk_tbl_cliente_cpf_cliente int PRIMARY KEY
);

CREATE TABLE visitante (
    rg int,
    fk_tbl_cliente_cpf_cliente int PRIMARY KEY
);

CREATE TABLE livro_autor (
    fk_tbl_livro_isbn_livro int,
    fk_tbl_autor_id_autor int
);

CREATE TABLE livro_cat (
    fk_tbl_categoria_id_cat int,
    fk_tbl_livro_isbn_livro int
);
 
ALTER TABLE tbl_livro ADD CONSTRAINT FK_tbl_livro_2
    FOREIGN KEY (fk_tbl_cliente_cpf_cliente)
    REFERENCES tbl_cliente (cpf_cliente)
    ON DELETE RESTRICT;
 
ALTER TABLE aluno ADD CONSTRAINT FK_aluno_2
    FOREIGN KEY (fk_tbl_cliente_cpf_cliente)
    REFERENCES tbl_cliente (cpf_cliente)
    ON DELETE CASCADE;
 
ALTER TABLE visitante ADD CONSTRAINT FK_visitante_2
    FOREIGN KEY (fk_tbl_cliente_cpf_cliente)
    REFERENCES tbl_cliente (cpf_cliente)
    ON DELETE CASCADE;
 
ALTER TABLE livro_autor ADD CONSTRAINT FK_livro_autor_1
    FOREIGN KEY (fk_tbl_livro_isbn_livro)
    REFERENCES tbl_livro (isbn_livro)
    ON DELETE RESTRICT;
 
ALTER TABLE livro_autor ADD CONSTRAINT FK_livro_autor_2
    FOREIGN KEY (fk_tbl_autor_id_autor)
    REFERENCES tbl_autor (id_autor)
    ON DELETE RESTRICT;
 
ALTER TABLE livro_cat ADD CONSTRAINT FK_livro_cat_1
    FOREIGN KEY (fk_tbl_categoria_id_cat)
    REFERENCES tbl_categoria (id_cat)
    ON DELETE RESTRICT;
 
ALTER TABLE livro_cat ADD CONSTRAINT FK_livro_cat_2
    FOREIGN KEY (fk_tbl_livro_isbn_livro)
    REFERENCES tbl_livro (isbn_livro)
    ON DELETE RESTRICT;