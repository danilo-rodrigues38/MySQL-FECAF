/*
create database estudos_1805;
use estudos_1805;

create table cursos (
id_curso int auto_increment primary key,
nome_curso varchar(50),
professor int
);

create table alunos (
id_aluno int auto_increment primary key,
nome_aluno varchar(50),
data_matricula date,
curso int
);

create table professores (
id_professor int auto_increment primary key,
nome_professor varchar(50),
horas_semana int
);

insert into alunos (nome_aluno, data_matricula, curso)
values ('Marcia Souza', 20190101, 1),
('Fellipe Silva', 20190101, 3),
('Sofia Mendez', 20190501, 2),
('Julia Monteiro', 20190201, 3),
('Bruce Wayne', 20190308, 1),
('Raimundo Lira', 20190201, 4),
('Diogo Santos', 20190301, 3),
('Soraia Dias', 20190501, 5),
('Leandro Augusto', 20190401, 3),
('Patricia Martins', 20190201, 5),
('Ariadne Pinheiro', 20190526, 2);

insert into cursos (nome_curso, professor)
values ('Banco de Dados 1', 1),
('Java', 5),
('Redes', 2),
('Ger. Projetos', 3),
('Inglês', 4);

insert into professores (nome_professor, horas_semana)
values ('Matheus Melo', 20),
('Ricardo José', 20),
('Rodrigo Mateus', 15),
('Michel Bastos', 20),
('Marcel Costa', 20);

create table coordenadores
(
id_coordenador int auto_increment primary key,
nome_coordenador varchar(50),
sexo boolean,
nascimento date
);

insert into coordenadores 
(nome_coordenador, sexo, nascimento)
Values
('Rodrigo Mateus', 1, '19850312'),
('Ester Cosso', 0, '19830215');

alter table cursos add column coordenador int;

update cursos set coordenador = 1 where id_curso between 1 and 3;

update cursos set coordenador = 2 where id_curso = 4 or id_curso = 5;

-- criando as cardenalidades entre as tabelas
alter table alunos add constraint alunos_cursos foreign key (curso) references cursos (id_curso);

alter table cursos add constraint cursos_professor foreign key (professor) references professores (id_professor);

alter table cursos add foreign key (coordenador) references coordenadores (id_coordenador);


DESCRIBE alunos -- descreve a tabela alunos

delete from cursos where id_curso=1; -- tenta deletar o curso, mas o banco retorna erro

-- não há filtros, ele volta todos os nomes dos alunos com os cursos
SELECT alunos.nome_aluno, cursos.nome_curso
FROM alunos JOIN cursos;

-- incluido os filtros após o ON
SELECT alunos.nome_aluno, cursos.nome_curso
FROM alunos JOIN cursos ON alunos.curso = cursos.id_curso;

SELECT cursos.nome_curso, professores.nome_professor 
FROM cursos JOIN professores ON professores.id_professor = cursos.professor;

SELECT cursos.nome_curso, coordenadores.nome_coordenador
FROM cursos JOIN coordenadores ON cursos.coordenador = coordenadores.id_coordenador;

SELECT alunos.nome_aluno, cursos.nome_curso, coordenadores.nome_coordenador, professores.nome_professor
FROM alunos
JOIN cursos ON alunos.curso = cursos.id_curso
JOIN coordenadores ON cursos.coordenador = coordenadores.id_coordenador
JOIN professores ON cursos.professor = professores.id_professor;

DESCRIBE alunos;
DESCRIBE cursos;
DESCRIBE professores;
DESCRIBE coordenadores;
*/
