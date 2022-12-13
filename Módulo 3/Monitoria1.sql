/*
FOREIGN KEY = CHAVE ESTRANGEIRA = SERVE PARA LINCAR UMA TABELA EM OUTRA,
E QUANDO SE É ADICIONADA UMA "CONSTRAINT" MANTEM A IDONIEDADE DO BANCO DE DADOS
*/

DROP DATABASE fecaf_ads_gti;

CREATE DATABASE fecaf_ads_gti;

USE fecaf_ads_gti;

CREATE TABLE turmas(
	codigo INT AUTO_INCREMENT PRIMARY KEY,
    nome varchar(11) NOT NULL -- Modelo de preenchimento: ADS-NOITE-1
);

CREATE TABLE alunos(
	codigo INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    ra INT NOT NULL,
    codigo_turma INT -- Chave Estrangeira da tabela turmas.
);

ALTER TABLE alunos 
ADD CONSTRAINT aluno_turma
FOREIGN KEY (codigo_turma)
REFERENCES turmas (codigo);
	
CREATE TABLE materias(
	codigo INT AUTO_INCREMENT PRIMARY KEY,
    nome varchar(100) NOT NULL
);

CREATE TABLE professores(
	codigo INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(200),
    codigo_materia INT -- Chave Estrangeira da tabela materias.
);

ALTER TABLE professores 
ADD CONSTRAINT professor_materia
FOREIGN KEY (codigo_materia)
REFERENCES materias (codigo);

CREATE TABLE notas(
	codigo INT AUTO_INCREMENT PRIMARY KEY,
    nota INT,
    codigo_aluno INT, -- Chave Estrangeira da tabela alunos.
    codigo_materia INT -- Chave Estrangeira da tabela materias.
);

ALTER TABLE notas 
	ADD CONSTRAINT nota_aluno
	FOREIGN KEY (codigo_aluno)
	REFERENCES alunos (codigo),
    
	ADD CONSTRAINT nota_materia
	FOREIGN KEY (codigo_materia)
	REFERENCES materias (codigo);