/*
TeSP_PSI_2122_CDBD
Sistema de Monitorização de Estágios
Gabriel Sá, estudante n.º 2211901
Rafael Bento, estudante n.º 2211900
Tiago Januário, estudante nº2211907
Tomás Jerónimo, estudante nº2211892
*/
USE monotorizacao_Estagios;

CREATE USER 'admin'@'localhost' IDENTIFIED BY 'a)D@Dc12';
CREATE USER 'professor'@'localhost';
-- PERMISSOES ADMIN
GRANT ALL PRIVILEGES ON monotorizacao_estagios.* TO 'admin'@'localhost' WITH GRANT OPTION;
-- PERMISSOES PROFESSOR DE TABELAS
GRANT SELECT, INSERT, UPDATE, DELETE ON Aluno TO 'professor'@'localhost';
GRANT SELECT ON CoordenadorCurso TO 'professor'@'localhost';
GRANT SELECT ON disciplinas TO 'professor'@'localhost';
GRANT SELECT, INSERT, UPDATE ON DisciplinasCursos TO 'professor'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON EncEducacao TO 'professor'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON EntidadeAcolhimento TO 'professor'@'localhost';
GRANT SELECT ON Escolas TO 'professor'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON Estagio TO 'professor'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON Monitores TO 'professor'@'localhost';
GRANT SELECT ON Professores TO 'professor'@'localhost';
GRANT SELECT ON TelefoneEscolas TO 'professor'@'localhost';

-- CRIAR VISTAS

CREATE VIEW DadosAlunos AS
SELECT a.numero,a.nome,a.telefone,a.email,a.turma,a.dataNascimento,a.nacionalidade,a.nif,a.cartaocidadao,a.rua,a.localidade,a.codigoPostal,e.nome AS Escola,enced.nome AS "Encarregado Educação",c.nome AS Curso
FROM Aluno AS a
INNER JOIN Escolas AS e ON a.idEscola = e.id
INNER JOIN EncEducacao AS encEd ON a.idEncEducacao = encEd.id
INNER JOIN Curso AS c ON a.idCurso = c.id;

CREATE VIEW DadosCursos AS
SELECT e.nome AS Escola, c.nome AS Curso, p.nome AS Coordenador
FROM Escolas AS e
INNER JOIN Curso AS c ON c.idEscola = e.id
INNER JOIN coordenadorCurso AS cc ON c.idCoordenadorCurso=cc.idCoordenador
INNER JOIN Professores AS p ON cc.idCoordenador=p.id;

CREATE VIEW DadosEntidadesAcolhimento AS
SELECT * FROM EntidadeAcolhimento;

CREATE VIEW DadosEscolas AS
SELECT * FROM Escolas;

CREATE VIEW DadosEstagio AS
SELECT a.numero,a.nome AS "Nome do Aluno",ea.nome AS Entidade, m.nome AS Monitor, p.nome AS Professor,es.objetivos AS Objetivos,es.atividade AS "Atividades Desenvolvidas",es.avaliacao AS Avaliação,es.perestagio AS "Horas", es.anoletivo AS "Ano Letivo", es.dataInicio AS "Data Inicial", es.datafinal AS "Data Final"
FROM Estagio AS es
INNER JOIN Aluno AS a ON es.idAluno = a.numero
INNER JOIN Monitores AS m ON es.idMonitor = m.id
INNER JOIN EntidadeAcolhimento AS ea ON ea.id = es.idEntidadeAcolhimento
INNER JOIN Professores AS p ON es.idProfessor=p.id 
ORDER BY a.numero;

CREATE VIEW DadosMonitores AS
SELECT e.nome AS Entidade,m.nome,m.telefone,m.email 
FROM monitores AS m
INNER JOIN EntidadeAcolhimento AS e ON e.id = m.idEntidadeAcolhimento;

CREATE VIEW DadosProfessores AS
SELECT e.nome AS Escola, p.nome,p.telefone,p.email
FROM professores AS p
INNER JOIN Escolas AS e ON p.idEscola = e.id;
select * FROM telefoneescolas;

-- PERMISSOES DE VISTAS
GRANT SELECT ON DadosAlunos TO 'professor'@'localhost';
GRANT SELECT ON DadosCursos TO 'professor'@'localhost';
GRANT SELECT ON DadosEntidadesAcolhimento TO 'professor'@'localhost';
GRANT SELECT ON DadosEscolas TO 'professor'@'localhost';
GRANT SELECT ON DadosEstagio TO 'professor'@'localhost';
GRANT SELECT ON DadosMonitores TO 'professor'@'localhost';
GRANT SELECT ON DadosProfessores TO 'professor'@'localhost';
