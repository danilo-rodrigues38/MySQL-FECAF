DROP DATABASE loja;

CREATE DATABASE loja;

USE loja;

CREATE TABLE clientes (
	idcliente INT AUTO_INCREMENT PRIMARY KEY,
    nome  VARCHAR(50) NOT NULL,
    email VARCHAR(50),
    senha VARCHAR(20),
    logradouro VARCHAR(50),
    cidade VARCHAR(50),
    bairro  VARCHAR(50),
    cep INT,
    estado VARCHAR(50)
);

CREATE TABLE pedidos (
	idpedido INT AUTO_INCREMENT PRIMARY KEY,
    idcliente int
);

ALTER TABLE pedidos
ADD CONSTRAINT pedido_cliente
FOREIGN KEY (idcliente)
REFERENCES 	clientes (idcliente);

CREATE TABLE produtos (
	idproduto INT AUTO_INCREMENT PRIMARY KEY,
	idcategoria INT,
    produto VARCHAR(50),
    preco DECIMAL,
    quantidade INT,
    descricao VARCHAR (500)
);

CREATE TABLE categorias (
	idcategoria INT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(50)
);

ALTER TABLE produtos
ADD CONSTRAINT produto_categoria
FOREIGN KEY (idcategoria)
REFERENCES categorias (idcategoria);

CREATE TABLE pedidoitens (
	iditem INT AUTO_INCREMENT PRIMARY KEY,
	idpedido INT,
    idproduto INT
);
ALTER TABLE pedidoitens
ADD CONSTRAINT cliente_produtos
FOREIGN KEY (idpedido)
REFERENCES pedidos (idpedido);

ALTER TABLE pedidoitens
ADD CONSTRAINT cliente_item
FOREIGN KEY (idproduto)
REFERENCES produtos (idproduto);