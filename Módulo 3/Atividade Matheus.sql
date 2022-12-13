/*
CREATE DATABASE playlist;

USE playlist;

CREATE TABLE musica
(
id_musica INT AUTO_INCREMENT PRIMARY KEY,
nome_musica VARCHAR (50) NOT NULL,
temp_duracao TIME NOT NULL,
interprete VARCHAR(50) NOT NULL,
compositor VARCHAR(100) NOT NULL,
ano_lanc INT NOT NULL,
nome_cd VARCHAR(100) NOT NULL
);

CREATE TABLE genero
(
id_gen INT AUTO_INCREMENT PRIMARY KEY,
genero VARCHAR(30) NOT NULL
);

ALTER TABLE genero CHANGE genero genero VARCHAR(10) NOT NULL;

INSERT INTO musica
	(nome_musica, temp_duracao, interprete, compositor, ano_lanc, nome_cd)
VALUE
	('Its not right but its ok', '4:52', 'Whitney Houston', 'LaShawn Daniels', 1998, 'My Love Is Your Love'),
	('Caribbean Queen', '3:40', 'Billy Ocean', 'Billy Ocean', 1984, 'Suddenly'),
	('Kiss', '3:38', 'Prince', 'Prince', 1986, 'Parade'),
	('Part-Time Lover', '3:27', 'Stevie Wonder', 'Stevie Wonder', 1985, 'In Square Circle'),
	('Gimme! Gimme! Gimme!', '3:29', 'ABBA', 'Bjorn Ulvaeus', 1979, 'Greatest Hits Vol.2'),
	('World Hold On', '3:37', 'Bob Sinclar', 'Bob Sinclar', 2006, 'Western Dream'),
    ('Quer Voar', '4:31', 'MATUÊ', 'MATUÊ', 2021, 'Quer Voar'),
	('Lonely', '4:23', 'Akon', 'Akon', 2009, 'Trouble'),
	('Iluminado', '3:30', 'Kawe', 'Kawe', 2020,'Iluminado'),
	('Highway to Hell', '4:44', 'AC-DC', 'Angus Young', 2013, 'Highway to Hell'),
	('Sunflower', '2:41', 'Post Malone', 'Swae Lee', 2018, 'Spider-Man:Into the Spider Verse'),
	('Death bed', '2:52', 'Powfu', 'Powfu', 2020, 'poems of the past'),
    ('Domingo De Manhã', '4:10', 'Marcos e Belutti', 'Marcos e Belutti' , 2014, 'Bruno Caliman'),
	('Oração Ao Tempo', '3:27', 'Caetano Veloso', 'Caetano Veloso', 1979, 'Cinema Transcendental - A Outra Banda Da Terra'),
	('Tempo Rei', '6:17', 'Gilberto Gil', 'Gilberto Gil', 1984, 'Raça Humana'),
	('Tempo Perdido', '5:02', 'Renato Russo', 'Renato Russo', 1986, 'Legião Urbana Dois'),
	('O Tempo Não Para', '4:40', 'Cazuza e Arnaldo Brandão', 'Cazuza e Arnaldo Brandão', 1988, 'O Tempo Não Para'),
	('Sobre O Tempo', '3:28', 'John Ulhoa', 'John Ulhoa', 1995, 'Pata Fu'),
	('Resposta Ao Tempo', '4:43', 'Aldir Blanc e Cristovão Bastos', 'Aldir Blanc e Cristovão Bastos', 1998, 'Retratos'),
	('Tempo Do Templo', '3:29', 'Flaira Ferro e Igor Bruno', 'Flaira Ferro e Igor Bruno', 2015, 'Cordões Umbilicais'),
	('Tempo De Estiagem', '2:49', 'Raphael Vidigal e Ronaldo Ferreira', 'Raphael Vidigal e Ronaldo Ferreira', 2020, 'Tempo De Estiagem'),
	('Novo Tempo', '4:18', 'Ivan Lins e Vitor Martins', 'Ivan Lins e Vitor Martins', 1980, 'O Amor É Meu País');
    
INSERT INTO genero
	(genero)
VALUES
	('Soul'),
	('Soul'),
	('Soul'),
	('Soul'),
	('Dance'),
	('Dance'),
    ('Trap'),
	('Hip-Hop'),
	('Trap'),
	('Rock'),
	('Hip-Hop'),
	('Hip-Hop'),
    ('Sertanejo'),
	('MPB'),
	('MPB'),
	('ROCK'),
	('ROCK'),
	('POP'),
	('BOSSA NOVA'),
	('MPB'),
	('SAMBA'),
	('MPB');
    
UPDATE musica
SET
	ano_lanc=2007
WHERE
	id_musica=9;

DELETE FROM musica
WHERE
	id_musica=5;
    
DELETE FROM genero
WHERE
	id_gen=5;

SELECT * FROM musica WHERE nome_musica LIKE 'A%';

SELECT * FROM musica WHERE ano_lanc BETWEEN 1980 AND 2005;

SELECT * FROM musica WHERE nome_musica LIKE '%b%' AND interprete LIKE '%a%' AND ano_lanc > 2000;

SELECT * FROM musica;

SELECT * FROM genero;
*/
