SELECT
	professores.nome AS "Professor",
    materias.nome	 AS "Matéria"
FROM professores
JOIN materias
	ON professores.codigo_materia = materias.codigo;
    
SELECT
	alunos.nome AS "Alunos",
    turmas.nome AS "Turmas"
FROM alunos
JOIN turmas
	ON alunos.codigo_turma = turmas.codigo;

SELECT
	alunos.nome			AS "Alunos",
    materias.nome		AS "Matéria",
    notas.nota			AS "Notas",
    professores.nome	AS "Professores"
FROM notas
JOIN alunos
	ON notas.codigo_aluno = alunos.codigo
JOIN turmas
	ON alunos.codigo_turma = turmas.codigo
JOIN materias
	ON notas.codigo_materia = materias.codigo
JOIN professores
	ON professores.codigo_materia = materias.codigo
ORDER BY alunos.nome;