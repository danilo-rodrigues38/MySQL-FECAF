/* Lógico_Trabalho_Matheus_01: */

CREATE TABLE tbl_cliente (
    id_cliente int PRIMARY KEY,
    nome_cliente varchar(50),
    fk_end_cliente_end_cliente_PK varchar(50),
    fk_tel_cliente_tel_cliente_PK int,
    fk_doc_cliente_doc_cliente_PK int
);

CREATE TABLE tbl_funcionario (
    id_func int PRIMARY KEY,
    nome_func varchar(50),
    fk_end_func_end_func_PK varchar(50),
    fk_tel_func_tel_func_PK int,
    fk_doc_func_doc_func_PK int
);

CREATE TABLE tbl_produto (
    id_produto int PRIMARY KEY,
    nome_produto varchar(15),
    descricao_produto varchar(50),
    fornecedor_produto varchar(15)
);

CREATE TABLE tbl_fornecedor (
    id_fornecedor int PRIMARY KEY,
    nome_fornecedor varchar(50),
    fk_end_fornecedor_end_fornecedor_PK varchar(50),
    fk_tel_fornecedor_tel_fornecedor_PK int
);

CREATE TABLE end_cliente (
    end_cliente_PK varchar(50) NOT NULL PRIMARY KEY,
    logradouro varchar(50),
    numero int,
    estado varchar(15),
    cidade varchar(50),
    bairro varchar(50),
    cep int
);

CREATE TABLE tel_cliente (
    tel_cliente_PK int NOT NULL PRIMARY KEY,
    telefone1 int,
    telefone2 int
);

CREATE TABLE doc_cliente (
    doc_cliente_PK int NOT NULL PRIMARY KEY,
    rg int,
    cpf int
);

CREATE TABLE end_func (
    end_func_PK varchar(50) NOT NULL PRIMARY KEY,
    logradouro varchar(50),
    numero int,
    estado varchar(50),
    cidade varchar(50),
    bairro varchar(50),
    cep int
);

CREATE TABLE tel_func (
    tel_func_PK int NOT NULL PRIMARY KEY,
    telefone1 int,
    telefone2 int
);

CREATE TABLE doc_func (
    doc_func_PK int NOT NULL PRIMARY KEY,
    rg int,
    cpf int,
    ctps int
);

CREATE TABLE end_fornecedor (
    end_fornecedor_PK varchar(50) NOT NULL PRIMARY KEY,
    logradouro varchar(50),
    numero int,
    estado varchar(50),
    cidade varchar(50),
    bairro varchar(50),
    cep int
);

CREATE TABLE tel_fornecedor (
    tel_fornecedor_PK int NOT NULL PRIMARY KEY,
    telefone1 int,
    telefone2 int,
    telefone3 int
);

CREATE TABLE forn_prod (
    fk_tbl_fornecedor_id_fornecedor int,
    fk_tbl_produto_id_produto int
);

CREATE TABLE clie_func (
    fk_tbl_cliente_id_cliente int,
    fk_tbl_funcionario_id_func int
);

CREATE TABLE func_prod (
    fk_tbl_funcionario_id_func int,
    fk_tbl_produto_id_produto int
);
 
ALTER TABLE tbl_cliente ADD CONSTRAINT FK_tbl_cliente_2
    FOREIGN KEY (fk_end_cliente_end_cliente_PK)
    REFERENCES end_cliente (end_cliente_PK)
    ON DELETE SET NULL;
 
ALTER TABLE tbl_cliente ADD CONSTRAINT FK_tbl_cliente_3
    FOREIGN KEY (fk_tel_cliente_tel_cliente_PK)
    REFERENCES tel_cliente (tel_cliente_PK)
    ON DELETE SET NULL;
 
ALTER TABLE tbl_cliente ADD CONSTRAINT FK_tbl_cliente_4
    FOREIGN KEY (fk_doc_cliente_doc_cliente_PK)
    REFERENCES doc_cliente (doc_cliente_PK)
    ON DELETE SET NULL;
 
ALTER TABLE tbl_funcionario ADD CONSTRAINT FK_tbl_funcionario_2
    FOREIGN KEY (fk_end_func_end_func_PK)
    REFERENCES end_func (end_func_PK)
    ON DELETE SET NULL;
 
ALTER TABLE tbl_funcionario ADD CONSTRAINT FK_tbl_funcionario_3
    FOREIGN KEY (fk_tel_func_tel_func_PK)
    REFERENCES tel_func (tel_func_PK)
    ON DELETE SET NULL;
 
ALTER TABLE tbl_funcionario ADD CONSTRAINT FK_tbl_funcionario_4
    FOREIGN KEY (fk_doc_func_doc_func_PK)
    REFERENCES doc_func (doc_func_PK)
    ON DELETE SET NULL;
 
ALTER TABLE tbl_fornecedor ADD CONSTRAINT FK_tbl_fornecedor_2
    FOREIGN KEY (fk_end_fornecedor_end_fornecedor_PK)
    REFERENCES end_fornecedor (end_fornecedor_PK)
    ON DELETE SET NULL;
 
ALTER TABLE tbl_fornecedor ADD CONSTRAINT FK_tbl_fornecedor_3
    FOREIGN KEY (fk_tel_fornecedor_tel_fornecedor_PK)
    REFERENCES tel_fornecedor (tel_fornecedor_PK)
    ON DELETE SET NULL;
 
ALTER TABLE forn_prod ADD CONSTRAINT FK_forn_prod_1
    FOREIGN KEY (fk_tbl_fornecedor_id_fornecedor)
    REFERENCES tbl_fornecedor (id_fornecedor)
    ON DELETE RESTRICT;
 
ALTER TABLE forn_prod ADD CONSTRAINT FK_forn_prod_2
    FOREIGN KEY (fk_tbl_produto_id_produto)
    REFERENCES tbl_produto (id_produto)
    ON DELETE RESTRICT;
 
ALTER TABLE clie_func ADD CONSTRAINT FK_clie_func_1
    FOREIGN KEY (fk_tbl_cliente_id_cliente)
    REFERENCES tbl_cliente (id_cliente)
    ON DELETE RESTRICT;
 
ALTER TABLE clie_func ADD CONSTRAINT FK_clie_func_2
    FOREIGN KEY (fk_tbl_funcionario_id_func)
    REFERENCES tbl_funcionario (id_func)
    ON DELETE RESTRICT;
 
ALTER TABLE func_prod ADD CONSTRAINT FK_func_prod_1
    FOREIGN KEY (fk_tbl_funcionario_id_func)
    REFERENCES tbl_funcionario (id_func)
    ON DELETE RESTRICT;
 
ALTER TABLE func_prod ADD CONSTRAINT FK_func_prod_2
    FOREIGN KEY (fk_tbl_produto_id_produto)
    REFERENCES tbl_produto (id_produto)
    ON DELETE RESTRICT;