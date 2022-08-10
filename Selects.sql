/*
TeSP_PSI_2122_CDBD
Sistema de Monitorização de Estágios
Gabriel Sá, estudante n.º 2211901
Rafael Bento, estudante n.º 2211900
Tiago Januário, estudante nº2211907
Tomás Jerónimo, estudante nº2211892
*/

use monotorizacao_estagios;

-- Quais as escolas registadas?
SELECT * FROM Escolas;

-- Quais os cursos registados na base de dados?
SELECT e.nome AS Escola,c.nome AS Curso,p.nome AS Coordenador 
FROM Curso AS c 
INNER JOIN escolas AS e ON c.idEscola = e.id 
INNER JOIN coordenadorCurso AS cc ON c.idCoordenadorCurso=cc.idCoordenador
INNER JOIN Professores AS p ON cc.idCoordenador=p.id 
ORDER BY e.nome;

-- Quais os cursos de cada escola?
SELECT e.nome AS Escola, c.nome AS Curso, p.nome AS Coordenador
FROM Escolas AS e
INNER JOIN Curso AS c ON c.idEscola = e.id
INNER JOIN coordenadorCurso AS cc ON c.idCoordenadorCurso=cc.idCoordenador
INNER JOIN Professores AS p ON cc.idCoordenador=p.id 
WHERE e.nome = "ESTG";

-- Quais os alunos presentes na base de dados?
SELECT a.numero,a.nome,a.telefone,a.email,a.turma,a.dataNascimento,a.nacionalidade,a.nif,a.cartaocidadao,a.rua,a.localidade,a.codigoPostal,e.nome AS Escola,enced.nome AS "Encarregado Educação",c.nome AS Curso
FROM Aluno AS a
INNER JOIN Escolas AS e ON a.idEscola = e.id
INNER JOIN EncEducacao AS encEd ON a.idEncEducacao = encEd.id
INNER JOIN Curso AS c ON a.idCurso = c.id;

-- Quais os alunos de um determinado curso?
SELECT c.nome, a.numero, a.nome
FROM Curso AS c
INNER JOIN Aluno AS a ON a.idCurso = c.id
WHERE UPPER(c.nome) = UPPER("TESP Programação de Sistemas Informáticos");

-- Quantos cursos possui a escola?
SELECT e.nome AS Escola, count(c.nome) AS "Quantidade de curso"
FROM Curso AS c 
INNER JOIN escolas AS e ON c.idEscola = e.id 
GROUP BY e.nome;

-- Quais as disciplinas de cada curso?
SELECT c.nome AS Curso, d.descricao AS Disciplina, dc.horas AS Horas
FROM Curso AS c
INNER JOIN disciplinasCursos AS dc ON dc.idCurso = c.id
INNER JOIN disciplinas AS d ON d.id = dc.idDisciplina
ORDER BY c.nome,d.descricao;

-- Quais os professores de cada escola?
SELECT e.nome AS Escola, p.nome AS Professor
FROM Escolas AS e
INNER JOIN Professores AS p ON p.idEscola = e.id
ORDER BY e.nome, p.nome;

-- Quantos professores tem cada escola?
SELECT e.nome AS Escola, count(p.id) AS "Quantidade de Professores" 
FROM Escolas AS e
INNER JOIN Professores AS p ON p.idEscola = e.id
GROUP BY e.nome;

-- Quais as entidades registadas na base de dados?
SELECT * FROM EntidadeAcolhimento;

-- Quais os monitores das entidades de acolhimento?
SELECT ea.nome AS Entidade, m.nome AS Nome,m.telefone AS Telefone,m.email AS Email
FROM EntidadeAcolhimento AS ea
INNER JOIN Monitores AS m ON m.idEntidadeAcolhimento = ea.id
ORDER BY ea.nome, m.nome;

-- Quais as informações de um determinado aluno?
SELECT * FROM Aluno
WHERE numero = "2211900";

-- Quais os estágios registados na base de dados?
SELECT a.numero,a.nome AS "Nome do Aluno",ea.nome AS Entidade, m.nome AS Monitor, p.nome AS Professor,es.objetivos AS Objetivos,es.atividade AS "Atividades Desenvolvidas",es.avaliacao AS Avaliação,es.perestagio AS "Horas", es.anoletivo AS "Ano Letivo", es.dataInicio AS "Data Inicial", es.datafinal AS "Data Final"
FROM Estagio AS es
INNER JOIN Aluno AS a ON es.idAluno = a.numero
INNER JOIN Monitores AS m ON es.idMonitor = m.id
INNER JOIN EntidadeAcolhimento AS ea ON ea.id = es.idEntidadeAcolhimento
INNER JOIN Professores AS p ON es.idProfessor=p.id 
ORDER BY a.numero;

-- Quantas vezes já estagiou um determinado aluno?
SELECT a.nome, COUNT(e.idAluno) AS "Estágios Realizados" FROM aluno as a
INNER JOIN estagio as e on a.numero = e.idAluno
WHERE a.numero=2211900;

-- Quantos estágios houve em cada entidade?
SELECT ea.nome, COUNT(es.idEntidadeAcolhimento) AS "Estágios Realizados"
FROM Estagio AS es
INNER JOIN EntidadeAcolhimento AS ea ON ea.id = es.idEntidadeAcolhimento
GROUP BY es.idEntidadeAcolhimento
ORDER BY COUNT(es.idEntidadeAcolhimento) DESC;

-- Quantos alunos reprovaram e quantos alunos foram aprovados em cada ano letivo?
SELECT e.anoletivo, COUNT(CASE WHEN e.avaliacao < 9.5 THEN 1 END) AS "Negativo", COUNT(CASE when e.avaliacao >= 9.5 THEN 1 END) AS "Positivo" 
FROM aluno AS a
INNER JOIN estagio as e on a.numero = e.idAluno
GROUP BY e.anoletivo;

-- Quantos estágios houve por cada ano letivo?
SELECT es.AnoLetivo, COUNT(es.idAluno) AS "Estágios Realizados"
FROM Estagio AS es
GROUP BY es.AnoLetivo
ORDER BY es.AnoLetivo;

-- Quais as avaliações atribuídas por determinada entidade?
SELECT e.anoletivo, ea.nome AS "Entidade de Acolhimento",a.numero AS 'Numero do Aluno', a.nome AS "Nome", e.avaliacao AS "Nota" FROM aluno AS a
INNER JOIN estagio AS e ON a.numero = e.idAluno
INNER JOIN entidadeacolhimento as ea on e.idEntidadeAcolhimento = ea.id
WHERE (ea.nome = "NameIT - Informática")
ORDER BY e.anoletivo DESC, e.avaliacao DESC;

-- Quantos alunos reprovaram no estágio em cada entidade de acolhimento?
SELECT ea.nome, COUNT(CASE WHEN es.avaliacao <9.5 THEN 1 END) AS Reprovações
FROM EntidadeAcolhimento AS ea
INNER JOIN Estagio AS es ON es.idEntidadeAcolhimento = ea.id
GROUP BY ea.nome
ORDER BY Reprovações DESC;

-- Qual a nota mínima, média e máxima por cada entidade de acolhimento?
SELECT ea.nome AS Entidade, MAX(es.avaliacao) AS Máxima, MIN(es.avaliacao) AS Mínima, ROUND(AVG(es.avaliacao),2) AS Média
FROM EntidadeAcolhimento AS ea
INNER JOIN Estagio AS es ON es.idEntidadeAcolhimento = ea.id
GROUP BY ea.nome
ORDER BY Média DESC;

-- Quais as entidades de acolhimento por localidade?
SELECT ea.localidade, ea.nome
FROM EntidadeAcolhimento AS ea 
ORDER BY ea.localidade, ea.nome;

-- Quais alunos que estão a ser orientados por um professor neste ano letivo?
SELECT es.anoletivo, p.nome AS Professor, a.numero AS Numero,a.nome AS Aluno 
FROM Estagio AS es
INNER JOIN Professores AS p ON es.idProfessor = p.id
INNER JOIN Aluno AS a ON es.idAluno = a.numero
WHERE es.anoletivo = "2021-2022"
ORDER BY p.nome;

-- Quantos os alunos que estão a ser orientados por um professor neste ano letivo
SELECT es.AnoLetivo,p.nome AS Professor,COUNT(a.numero) AS "Alunos estagiários" 
FROM Estagio AS es
INNER JOIN Professores AS p ON es.idProfessor = p.id
INNER JOIN Aluno AS a ON es.idAluno = a.numero
GROUP BY es.AnoLetivo,p.nome
ORDER BY es.AnoLetivo DESC,COUNT(a.numero) DESC;

-- Quantos alunos são o seu próprio encarregado de educação?
SELECT COUNT(*) AS "Número de alunos"
FROM Aluno AS a
INNER JOIN EncEducacao AS e ON a.idEncEducacao = e.id
WHERE e.nome = a.nome;

-- Quais os alunos que optaram por estagiar na sua própria localidade?
SELECT a.numero, a.nome AS Aluno, a.localidade AS Localidade
FROM Estagio AS es
INNER JOIN EntidadeAcolhimento AS ea ON es.idEntidadeAcolhimento = ea.id
INNER JOIN Aluno AS a ON es.idAluno = a.numero
WHERE a.localidade = ea.localidade
ORDER BY a.nome;

-- Qual a média das notas baseado no ano de nascimento?
SELECT YEAR(a.dataNascimento) AS "Ano de nascimento", ROUND(AVG(e.avaliacao),2) AS Média 
FROM Estagio AS e
INNER JOIN Aluno AS a ON e.idAluno = a.numero
GROUP BY YEAR(a.dataNascimento); 

-- Quais as localidades onde já foram realizados estágios?
SELECT ea.localidade 
FROM EntidadeAcolhimento as ea 
GROUP BY ea.localidade;

-- Dos alunos que estão na base de dados quais são estrangeiros?
SELECT numero AS Numero, nome AS Nome, nacionalidade AS Nacionalidade
FROM Aluno
WHERE nacionalidade != "Português";

-- Quais os professores que orientaram estágios este ano letivo?
SELECT DISTINCT p.nome
FROM professores AS p
INNER JOIN estagio AS e ON e.idProfessor = p.id
WHERE e.anoletivo = "2021-2022";

-- Alunos com nota acima da média neste ano letivo?
SELECT a.numero AS Número, a.nome AS Nome,ae.nome AS Entidade, e.avaliacao AS Avaliacao
FROM Aluno AS a
INNER JOIN Estagio AS e ON e.idAluno = a.numero
INNER JOIN EntidadeAcolhimento AS ae ON ae.id = e.idEntidadeAcolhimento
WHERE e.avaliacao > (SELECT AVG(avaliacao) FROM estagio WHERE anoletivo = "2021-2022");

-- Qual o curso com mais alunos?
SELECT c.nome AS Curso, COUNT(*) AS Alunos
FROM Aluno AS a
INNER JOIN Curso AS c ON a.idCurso = c.id
GROUP BY c.nome
HAVING COUNT(*) >= ALL (SELECT COUNT(*) AS VALOR FROM Aluno GROUP BY idcurso);