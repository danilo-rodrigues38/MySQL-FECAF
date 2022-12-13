INSERT INTO turmas 
	(nome)
VALUES 
	("ADS-NOITE-1"),
    ("ADS-NOITE-2"),
    ("ADS-NOITE-3"),
    ("ADS-NOITE-4"),
    ("ADS-NOITE-5"),
	("ADS-MANHA-1"),
    ("ADS-MANHA-2"),
    ("ADS-MANHA-3"),
    ("ADS-MANHA-4"),
    ("ADS-MANHA-5"),
	("GTI-NOITE-1"),
    ("GTI-NOITE-2"),
    ("GTI-NOITE-3"),
    ("GTI-NOITE-4"),
    ("GTI-NOITE-5"),
	("GTI-MANHA-1"),
    ("GTI-MANHA-2"),
    ("GTI-MANHA-3"),
    ("GTI-MANHA-4"),
    ("GTI-MANHA-5");
    
SELECT * FROM turmas;

INSERT INTO alunos
	(nome, ra, codigo_turma)
VALUES 
	("Kaleo Vieira Leite"               ,31976	 ,3),
	("Valentina"                        ,32863	 ,1),
	("Andrey Gustavo de Caldas ZagatIi" ,31254	 ,3),
	("Ana Beatriz Santos"               ,32436	 ,3),
	("Jiovanna"                         ,41457	 ,1),
	("Felippe Delesporte"               ,41993	 ,6),
	("Lucas Martins Moreira"            ,41722	 ,1),
	("Vinicius Motta de Almeida"        ,26303	 ,1),
	("Lucas Aparecido de Oliveira"      ,27824	 ,1),
	("Felipe"                           ,4314	 ,1),
	("Kauã Gonsales Perini"             ,31968	 ,3),
	("Bruno Roberto Alves Vitorino"     ,34926	 ,2),
	("Danilo Rodrigues de Oliveira"     ,26836	 ,2),
	("Samuel Monteiro Da Silva"         ,36790	 ,1),
	("Gabriel Ortiz Gomes"              ,39013	 ,16),
	("Arthur Luiz Santos"               ,37431	 ,6);
    
SELECT * FROM alunos;

INSERT INTO materias
	(nome)
VALUES
	("Linguagem de Programação Mobile"              ),
    ("Database Modeling & SQL/NoSQL"                ),
    ("Arquiteturas Disruptivas, IOT, Big Data e IA" ),
    ("Arquitetura e Organização de Computadores"    );

SELECT * FROM materias;

INSERT INTO professores
	(nome, codigo_materia)
VALUES
    ( "Antonio Rodrigues Carvalho Neto" , 1),
    (      "Matheus Monteiro Melo"      , 2),
    (        "Alan Rodrigo Navia"       , 3),
    ( "José Ricardo Silva de Oliveira"  , 4);
    
SELECT * FROM professores;

INSERT INTO notas
	(nota, codigo_aluno, codigo_materia)
VALUES
 --   Nota   Aluno  Materia
	(  10  ,   1   ,   1   ), -- 10, Kaleo		, Mobile
    (   8  ,   1   ,   2   ), --  8, Kaleo		, BD
    (   5  ,   1   ,   3   ), --  5, Kaleo		, Arq. Disr.
    (   9  ,   1   ,   4   ), --  9, Kaleo		, Arq. Comp.
    (   8  ,   2   ,   1   ), --  8, Valentina  , Mobile
    (  10  ,   2   ,   2   ), -- 10, Valentina  , BD
    (   8  ,   2   ,   3   ), --  8, Valentina  , Arq. Disr.
    (  10  ,   2   ,   4   ); -- 10, Valentina  , Arq. Comp.

SELECT * FROM notas;