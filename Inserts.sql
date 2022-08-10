/*
TeSP_PSI_2122_CDBD
Sistema de Monitorização de Estágios
Gabriel Sá, estudante n.º 2211901
Rafael Bento, estudante n.º 2211900
Tiago Januário, estudante nº2211907
Tomás Jerónimo, estudante nº2211892
*/

USE Monotorizacao_Estagios;

-- TODOS OS SEGUINTES DADOS SÃO DADOS DE EXEMPLO, DADOS FICTÍCIOS

-- DADOS DAS ESCOLAS 
INSERT INTO Escolas(nome,representante,email,fax,rua,localidade,codigopostal) 
VALUES ('ESECS','Joaquim Alberto','ESECS@ipleiria.pt','2601235431','Rua General Norton de Matos,Apartado 4133','Leiria','2411-999');
INSERT INTO Escolas(nome,representante,email,fax,rua,localidade,codigopostal) 
VALUES ('ESTG','João de Jesus Januário','ESTG@ipleiria.pt','2613334441','Rua General Norton de Matos,Apartado 4321','Leiria','2411-988');
INSERT INTO Escolas(nome,representante,email,fax,rua,localidade,codigopostal) 
VALUES ('ESAD','António Augusto dos Santos José','ESAD@ipleiria.pt','2639876541','Rua General Norton de Matos,Apartado 4412','Leiria','2411-977');
INSERT INTO Escolas(nome,representante,email,fax,rua,localidade,codigopostal) 
VALUES ('ESTM','Jéssica Sousa da Silva','ESTM@ipleiria.pt','2612113114','Rua General Norton de Matos,Apartado 4415','Peniche','2411-966');
INSERT INTO Escolas(nome,representante,email,fax,rua,localidade,codigopostal) 
VALUES ('ESS','Renata Gonçalves Sá','ESS@ipleiria.pt','2619998885','Rua General Norton de Matos,Apartado 4433','Leiria','2411-955');

-- DADOS DOS TELEFONES DAS ESCOLAS
INSERT INTO TelefoneEscolas(idEscola, telefone)
VALUES(1, '261311411');
INSERT INTO TelefoneEscolas(idEscola, telefone)
VALUES(1, '261311422');
INSERT INTO TelefoneEscolas(idEscola, telefone)
VALUES(2, '261311511');
INSERT INTO TelefoneEscolas(idEscola, telefone)
VALUES(2, '261311522');
INSERT INTO TelefoneEscolas(idEscola, telefone)
VALUES(3, '261311611');
INSERT INTO TelefoneEscolas(idEscola, telefone)
VALUES(3, '261332122');
INSERT INTO TelefoneEscolas(idEscola, telefone)
VALUES(4, '261332111');
INSERT INTO TelefoneEscolas(idEscola, telefone)
VALUES(4, '261333111');
INSERT INTO TelefoneEscolas(idEscola, telefone)
VALUES(5, '261987123');
INSERT INTO TelefoneEscolas(idEscola, telefone)
VALUES(5, '261314419');

-- DADOS DAS ENTIDADES DE ACOLHIMENTO
INSERT INTO EntidadeAcolhimento (nome,telefone,email,nif,chefia,rua,localidade,codigopostal)
VALUES ("Cruz Vermelha Portuguesa – Delegação de Torres Vedras","941123457","cruzvermelha@gmail.com","359613063","Joaquim António","Rua de Torres nº48","Torres Vedras","2560-321");
INSERT INTO EntidadeAcolhimento (nome,telefone,email,nif,chefia,rua,localidade,codigopostal)
VALUES ("Future Galaxy Automation, Unipessoal, Lda","926575321","futuregalaxy@gmail.com","963547862","Daniel José","Travessa de Leiria nº 93","Leiria","2600-130");
INSERT INTO EntidadeAcolhimento (nome,telefone,email,nif,chefia,rua,localidade,codigopostal)
VALUES ("ConceptGROUP","261341590","ConceptGroup@gmail.com","412568795","Maria Josefina dos Santos","Travessa do Augusto nº34","Leiria","2600-962");
INSERT INTO EntidadeAcolhimento (nome,telefone,email,nif,chefia,rua,localidade,codigopostal)
VALUES ("Horizonte Eficaz Consultoria","936581674","HorizonteEficaz@gmail.com","753951642","André Cachão","Rua Principal de Coimbra nº41","Coimbra","2456-174");
INSERT INTO EntidadeAcolhimento (nome,telefone,email,nif,chefia,rua,localidade,codigopostal)
VALUES ("The Lumiares","985726351","lumiares@gmail.com","456321789","Andreia Santos","Rua da esquina nº53","Leiria","2600-513");
INSERT INTO EntidadeAcolhimento (nome,telefone,email,nif,chefia,rua,localidade,codigopostal)
VALUES ("Escola EB 2/3 José Saraiva","963578245","EscolaJoseSaraiva@gmail.com","625315846","João Manuel","Rua dos Manueis nº23","Leiria","2600-413");
INSERT INTO EntidadeAcolhimento (nome,telefone,email,nif,chefia,rua,localidade,codigopostal)
VALUES ("Biblioteca Municipal Afonso Lopes Vieira","967136548","BibliotecaLeiria@gmail.com","468795132","Afonso Joaquim","Travessa Principal de Leiria nº40","Leiria","2600-780");
INSERT INTO EntidadeAcolhimento (nome,telefone,email,nif,chefia,rua,localidade,codigopostal)
VALUES ("Hlink - Redes E Software Industrial, Lda","923654753","RedesSoftware@gmail.com","762943258","Alberto Jerónimo","Travessa do Joaquim nº22","Leiria","2600-689");
INSERT INTO EntidadeAcolhimento (nome,telefone,email,nif,chefia,rua,localidade,codigopostal)
VALUES ("NameIT - Informática","261546782","NameIT@gmail.com","625943816","Simão Sousa","Travessa de Lisboa nº29","Lisboa","2500-493");
INSERT INTO EntidadeAcolhimento (nome,telefone,email,nif,chefia,rua,localidade,codigopostal)
VALUES ("Escola Básica D. Dinis","261359674","EscolaD.Dinis@gmail.com","456987123","Joana Silva","Travessa dos Silva nº21","Leiria","2600-456");
INSERT INTO EntidadeAcolhimento (nome,telefone,email,nif,chefia,rua,localidade,codigopostal)
VALUES ("Dare Lisbon House", "263514236","dareLisbonHouse@gmail.com","756256986","Teresa Maria","Rua do hotel de Lisboa nº13","Lisboa","2500-123");

-- DADOS DOS MONITORES DAS ENTIDADES DE ACOLHIMENTO
INSERT INTO Monitores(nome,telefone,email,idEntidadeAcolhimento)
VALUES("Rafael Sousa","263486321","rafael@hotmail.com",1);
INSERT INTO Monitores(nome,telefone,email,idEntidadeAcolhimento)
VALUES("Tomás Santos","265784963","tomas@hotmail.com",2);
INSERT INTO Monitores(nome,telefone,email,idEntidadeAcolhimento)
VALUES("Gabriel Silva","268461325","gabriel@hotmail.com",3);
INSERT INTO Monitores(nome,telefone,email,idEntidadeAcolhimento)
VALUES("Tiago Antunes","264753123","tiago@hotmail.com",4);
INSERT INTO Monitores(nome,telefone,email,idEntidadeAcolhimento)
VALUES("Andreia Martinho","933647512","andreia@hotmail.com",5);
INSERT INTO Monitores(nome,telefone,email,idEntidadeAcolhimento)
VALUES("Joana Caetano","963478152","joana@hotmail.com",6);
INSERT INTO Monitores(nome,telefone,email,idEntidadeAcolhimento)
VALUES("Pedro Neves","963258741","pedro@hotmail.com",7);
INSERT INTO Monitores(nome,telefone,email,idEntidadeAcolhimento)
VALUES("Gonçalo Henriques","914567258","goncalo@hotmail.com",8);
INSERT INTO Monitores(nome,telefone,email,idEntidadeAcolhimento)
VALUES("Maria Albertina","936214654","maria@hotmail.com",9);
INSERT INTO Monitores(nome,telefone,email,idEntidadeAcolhimento)
VALUES("Joaquina Silva","987478987","joaquina@hotmail.com",10);
INSERT INTO Monitores(nome,telefone,email,idEntidadeAcolhimento)
VALUES("Teresa Maria","963658964","teresa@hotmail.com",11);
INSERT INTO Monitores(nome,telefone,email,idEntidadeAcolhimento)
VALUES("André António","985632147","andre@hotmail.com",2);

-- DADOS DOS PROFESSORES
INSERT INTO Professores(nome, telefone, email,idescola)
VALUES ('Raquel Silva dos Santos', '913211599','raquel@ipleiria.pt',1);
INSERT INTO Professores(nome, telefone, email,idescola)
VALUES ('Tomás Miguel Jerónimo', '913311999','tomas@ipleiria.pt',1);
INSERT INTO Professores(nome, telefone, email,idescola)
VALUES ('Vasco Cândido', '981123456','vasco@ipleiria.pt',1);
INSERT INTO Professores(nome, telefone, email,idescola)
VALUES ('Beatriz Rosado','934123321','beatriz@ipleiria.pt',2);
INSERT INTO Professores(nome, telefone, email,idescola)
VALUES ('Sofia Carmo Neves','988999123','sofia@ipleiria.pt',3);
INSERT INTO Professores(nome, telefone, email,idescola)
VALUES ('Francisco Miguel Joquim','911122111','francisco@ipleiria.pt',3);
INSERT INTO Professores(nome, telefone, email,idescola)
VALUES ('Paulo Muzzy Gomes','912122333','paulo@ipleiria.pt',3);
INSERT INTO Professores(nome, telefone, email,idescola)
VALUES ('Pedro Manuel Silva','954331223','pedro@ipleiria.pt',4);
INSERT INTO Professores(nome, telefone, email,idescola)
VALUES ('José Burgos', '941233987','jose@ipleiria.pt',4);
INSERT INTO Professores(nome, telefone, email,idescola)
VALUES ('Tiago Matsuk','923459111','tiago@ipleiria.pt',5);
INSERT INTO Professores(nome, telefone, email,idescola)
VALUES ('David Barbosa','944433111','david@ipleiria.pt',5);
INSERT INTO Professores(nome, telefone, email,idescola)
VALUES ('Marian Januário','933214222','marian@ipleiria.pt',5);
INSERT INTO Professores(nome, telefone, email,idescola)
VALUES ('Carlos Ferreira','943322119','@carlos@ipleiria.pt',5);

-- DADOS DO COORDENADOR DE CURSOS
INSERT INTO CoordenadorCurso(idCoordenador)
VALUES (1);
INSERT INTO CoordenadorCurso(idCoordenador)
VALUES (4);
INSERT INTO CoordenadorCurso(idCoordenador)
VALUES (5);
INSERT INTO CoordenadorCurso(idCoordenador)
VALUES (7);
INSERT INTO CoordenadorCurso(idCoordenador)
VALUES (9);
INSERT INTO CoordenadorCurso(idCoordenador)
VALUES (10);
INSERT INTO CoordenadorCurso(idCoordenador)
VALUES (13);
INSERT INTO CoordenadorCurso(idCoordenador)
VALUES (11);

-- DADOS DO CURSO
INSERT INTO Curso(nome,idCoordenadorCurso,idEscola)
VALUES ("TESP Programação de Sistemas Informáticos",1,2);
INSERT INTO Curso(nome,idCoordenadorCurso,idEscola)
VALUES ("Licenciatura em Comunicação e Media",4,3);
INSERT INTO Curso(nome,idCoordenadorCurso,idEscola)
VALUES ("TESP de Construção Civil",5,1);
INSERT INTO Curso(nome,idCoordenadorCurso,idEscola)
VALUES ("Licenciatura em contabilidade e Finanças",7,4);
INSERT INTO Curso(nome,idCoordenadorCurso,idEscola)
VALUES ("Tesp de Cozinha e produção Alimentar",9,5);
INSERT INTO Curso(nome,idCoordenadorCurso,idEscola)
VALUES ("Licenciatura em Educação Básica",10,5);
INSERT INTO Curso(nome,idCoordenadorCurso,idEscola)
VALUES ("Licenciatura em Educação Social",13,4);
INSERT INTO Curso(nome,idCoordenadorCurso,idEscola)
VALUES ("TESP de Eletrónica e redes de Telecomunicações",11,2);

-- DADOS DAS DISCIPLINAS
INSERT INTO Disciplinas(descricao)
VALUES ("Programação Web - Cliente");
INSERT INTO Disciplinas(descricao)
VALUES ("Matemática");
INSERT INTO Disciplinas(descricao)
VALUES ("Gestão");
INSERT INTO Disciplinas(descricao)
VALUES ("Lingua Inglesa");
INSERT INTO Disciplinas(descricao)
VALUES ("Redes");
INSERT INTO Disciplinas(descricao)
VALUES ("Educação Social");
INSERT INTO Disciplinas(descricao)
VALUES ("Química");
INSERT INTO Disciplinas(descricao)
VALUES ("Biologia");
INSERT INTO Disciplinas(descricao)
VALUES ("Física");
INSERT INTO Disciplinas(descricao)
VALUES ("Eletrónica Digital");
INSERT INTO Disciplinas(descricao)
VALUES ("Transmissão de Sinais");
INSERT INTO Disciplinas(descricao)
VALUES ("Pedagogia Social");
INSERT INTO Disciplinas(descricao)
VALUES ("Psicologia da Educação");
INSERT INTO Disciplinas(descricao)
VALUES ("Multimédia");

-- DADOS DA TABELA DISCIPLINASCURSOS (COM HORAS)
INSERT INTO DisciplinasCursos (idCurso,idDisciplina,horas) 
VALUES (1,1,60);
INSERT INTO DisciplinasCursos (idCurso,idDisciplina,horas) 
VALUES (1,2,55);
INSERT INTO DisciplinasCursos (idCurso,idDisciplina,horas) 
VALUES (3,2,70);
INSERT INTO DisciplinasCursos (idCurso,idDisciplina,horas) 
VALUES (4,2,50);
INSERT INTO DisciplinasCursos (idCurso,idDisciplina,horas) 
VALUES (7,2,35);
INSERT INTO DisciplinasCursos (idCurso,idDisciplina,horas) 
VALUES (8,2,50);
INSERT INTO DisciplinasCursos (idCurso,idDisciplina,horas) 
VALUES (4,3,40);
INSERT INTO DisciplinasCursos (idCurso,idDisciplina,horas) 
VALUES (2,4,50);
INSERT INTO DisciplinasCursos (idCurso,idDisciplina,horas) 
VALUES (3,7,60);
INSERT INTO DisciplinasCursos (idCurso,idDisciplina,horas) 
VALUES (7,8,50);
INSERT INTO DisciplinasCursos (idCurso,idDisciplina,horas) 
VALUES (3,9,55);
INSERT INTO DisciplinasCursos (idCurso,idDisciplina,horas) 
VALUES (8,10,50);
INSERT INTO DisciplinasCursos (idCurso,idDisciplina,horas) 
VALUES (3,11,65);
INSERT INTO DisciplinasCursos (idCurso,idDisciplina,horas) 
VALUES (6,12,55);
INSERT INTO DisciplinasCursos (idCurso,idDisciplina,horas) 
VALUES (7,12,40);
INSERT INTO DisciplinasCursos (idCurso,idDisciplina,horas) 
VALUES (6,13,60);
INSERT INTO DisciplinasCursos (idCurso,idDisciplina,horas) 
VALUES (7,13,60);
INSERT INTO DisciplinasCursos (idCurso,idDisciplina,horas) 
VALUES (2,14,55);

-- DADOS DOS ENCARREGADOS DE EDUCAÇÃO
INSERT INTO EncEducacao (nome,telefone,email,rua,localidade,codigoPostal)
VALUES ("Andre Manuel","911123456","andree@gmail.com","rua principal nº3","Leiria","2511-321");
INSERT INTO EncEducacao (nome,telefone,email,rua,localidade,codigoPostal)
VALUES ("Ricardo Joaquim","921132411","ricardo@gmail.com","rua joaquim nº1","Lisboa","2500-300");
INSERT INTO EncEducacao (nome,telefone,email,rua,localidade,codigoPostal)
VALUES ("Ana Sofia","913232145","ana@gmail.com","Avenida paulo santos nº4","Leiria","2511-400");
INSERT INTO EncEducacao (nome,telefone,email,rua,localidade,codigoPostal)
VALUES ("Joana Maria","913233145","joana@gmail.com","Avenida paulo santos nº6","Leiria","2511-400");
INSERT INTO EncEducacao (nome,telefone,email,rua,localidade,codigoPostal)
VALUES ("Gabriel Manuel","911232145","gabriel@gmail.com","rua do berdeiro nº10","Leiria","2511-020");
INSERT INTO EncEducacao (nome,telefone,email,rua,localidade,codigoPostal)
VALUES ("Renata Maria","913232155","renata@gmail.com","rua do antonio nº60","Porto","2400-112");
INSERT INTO EncEducacao (nome,telefone,email,rua,localidade,codigoPostal)
VALUES ("Rui Vitor","913232148","rui@gmail.com","rua de santo antonio nº23","Leiria","2511-030");
INSERT INTO EncEducacao (nome,telefone,email,rua,localidade,codigoPostal)
VALUES ("Gustavo Alberto","91332145","gustavo@gmail.com","rua dos ferreiros nº10","Lisboa","2500-400");
INSERT INTO EncEducacao (nome,telefone,email,rua,localidade,codigoPostal)
VALUES ("Raquel Silva","913232112","raquel@gmail.com","rua dos cunhados nº56","Leiria","2511-230");
INSERT INTO EncEducacao (nome,telefone,email,rua,localidade,codigoPostal)
VALUES ("Samuel Sá","989232145","samuel@gmail.com","rua dos Silva nº13","Leiria","2511-410");
INSERT INTO EncEducacao (nome,telefone,email,rua,localidade,codigoPostal)
VALUES ("Pedro Fernandes","971356823","2211906@ipleiria.pt","Rua da Travessa Principal nº31","Lisboa","2500-121");

-- DADOS DOS ALUNOS
INSERT INTO Aluno(numero,nome, telefone, email, turma, dataNascimento, nacionalidade, nif, cartaoCidadao, rua, localidade, codigoPostal, idEscola, idEncEducacao, idCurso)
VALUES (2211895,"António Augusto", "911112345","2211895@ipleiria.pt","PL-TV",'2002-08-18','Português', "987654321", "15912361","rua principal nº3","Leiria","2511-321",2,1,1);
INSERT INTO Aluno(numero, nome, telefone, email, turma, dataNascimento, nacionalidade, nif, cartaoCidadao, rua, localidade, codigoPostal, idEscola, idEncEducacao, idCurso)
VALUES (2211896,"Rafael Manuel", "931122119","2211896@ipleiria.pt","PL-TV",'2001-01-03',"Português", "113311223", "12332141","rua principal nº3","Leiria","2511-321",2,1,1);
INSERT INTO Aluno(numero, nome, telefone, email, turma, dataNascimento, nacionalidade, nif, cartaoCidadao, rua, localidade, codigoPostal, idEscola, idEncEducacao, idCurso)
VALUES (2211897,"André Januário", "911310900","2211897@ipleiria.pt","PL-Turno1",'2000-03-21',"Português", "211900211", "31141190","rua joaquim nº1","Lisboa","2500-300",1,2,3);
INSERT INTO Aluno(numero, nome, telefone, email, turma, dataNascimento, nacionalidade, nif, cartaoCidadao, rua, localidade, codigoPostal, idEscola, idEncEducacao, idCurso)
VALUES (2211898,"Tomás Santos", "912311349","2211898@ipleiria.pt","PL-Turno2",'2001-01-05',"Português", "311000911", "11232122","Avenida de São João nº5","Leiria","2511-212",4,3,4);
INSERT INTO Aluno(numero, nome, telefone, email, turma, dataNascimento, nacionalidade, nif, cartaoCidadao, rua, localidade, codigoPostal, idEscola, idEncEducacao, idCurso)
VALUES (2211899,"Joaquim Sousa", "931231657","2211899@ipleiria.pt","PL-Diurno",'2000-05-21',"Português", "599433601", "41241168","Travessa Principal dos Sousa","Leiria","2511-100",5,4,5);
INSERT INTO Aluno(numero, nome, telefone, email, turma, dataNascimento, nacionalidade, nif, cartaoCidadao, rua, localidade, codigoPostal, idEscola, idEncEducacao, idCurso)
VALUES (2211900,"Joana Maria", "914132591","2211900@ipleiria.pt","PL-Turno1",'2002-03-23',"Alemão", "310432065", "41932103","Rua do centro nº4","Leiria","2511-321",5,5,5);
INSERT INTO Aluno(numero, nome, telefone, email, turma, dataNascimento, nacionalidade, nif, cartaoCidadao, rua, localidade, codigoPostal, idEscola, idEncEducacao, idCurso)
VALUES (2211901,"Inês de Sousa", "935824745","2211901@ipleiria.pt","PL-Turno2",'2001-01-13',"Português", "943012490", "87645987","Travessa central nº4","Lisboa","2500-409",5,6,5);
INSERT INTO Aluno(numero, nome, telefone, email, turma, dataNascimento, nacionalidade, nif, cartaoCidadao, rua, localidade, codigoPostal, idEscola, idEncEducacao, idCurso)
VALUES (2211902,"Josefina Santos", "913357742","2211902@ipleiria.pt","PL-Diurno",'2000-04-22',"Português", "850340138", "36893167","Rua Rocha dos Santos nº71","Leiria","2511-323",5,7,5);
INSERT INTO Aluno(numero, nome, telefone, email, turma, dataNascimento, nacionalidade, nif, cartaoCidadao, rua, localidade, codigoPostal, idEscola, idEncEducacao, idCurso)
VALUES (2211903,"António Carreira", "981542671","2211903@ipleiria.pt","PL-Turno1",'2002-02-15',"Português", "893124554", "93573496","Rua da travessa Marian º51","Leiria","2511-320",5,8,6);
INSERT INTO Aluno(numero, nome, telefone, email, turma, dataNascimento, nacionalidade, nif, cartaoCidadao, rua, localidade, codigoPostal, idEscola, idEncEducacao, idCurso)
VALUES (2211904,"Pedro Jerónimo", "971834613","2211904@ipleiria.pt","PL-Turno2",'2001-07-28',"Português", "853960123", "97301796","Rua dos Jerónimos nº3","Coimbra","2610-121",4,9,7);
INSERT INTO Aluno(numero, nome, telefone, email, turma, dataNascimento, nacionalidade, nif, cartaoCidadao, rua, localidade, codigoPostal, idEscola, idEncEducacao, idCurso)
VALUES (2211905,"João Alberto", "971845234","2211905@ipleiria.pt","PL-Turno2",'2002-09-25',"Português", "674982490", "96401334","Rua dos Carlos nº82","Leiria","2511-321",2,10,8);
INSERT INTO Aluno(numero, nome, telefone, email, turma, dataNascimento, nacionalidade, nif, cartaoCidadao, rua, localidade, codigoPostal, idEscola, idEncEducacao, idCurso)
VALUES (2211906,"Pedro Fernandes", "971356823","2211906@ipleiria.pt","PL-Diurno",'1999-04-13',"Espanhol", "29911322", "85046023","Rua da Travessa Principal nº31","Lisboa","2500-121",2,11,8);

-- DADOS DOS ESTÁGIOS
INSERT INTO Estagio(atividade,objetivos,avaliacao,perestagio,anoletivo,dataInicio,dataFinal,idEntidadeAcolhimento,idMonitor,idProfessor,idAluno)
VALUES ("Desenvolvimento de um website","Ter capacidade de iniciativa; Aplicar a contextos reais de trabalho os conhecimentos adquiridos nas várias disciplinas que compõem o curso; Conceber, implementar e efetuar a manutenção de bases de dados; Aprofundar e aplicar conhecimentos de php;",11,640,"2021-2022","2022-02-28","2022-06-13",9,9,4,2211895);
INSERT INTO Estagio(atividade,objetivos,avaliacao,perestagio,anoletivo,dataInicio,dataFinal,idEntidadeAcolhimento,idMonitor,idProfessor,idAluno)
VALUES ("Construção de uma aplicação para “Android” que permita receber alertas de novos eventos e enviar disponibilidades para cada evento.","Ter capacidade de iniciativa; Aplicar a contextos reais de trabalho os conhecimentos adquiridos nas várias disciplinas que compõem o curso;",15,640,"2020-2021","2022-02-28","2022-06-13",2,2,4,2211896);
INSERT INTO Estagio(atividade,objetivos,avaliacao,perestagio,anoletivo,dataInicio,dataFinal,idEntidadeAcolhimento,idMonitor,idProfessor,idAluno)
VALUES (" Possibilidade de desempenhar funções de Diretor de Obra;","Ter Capacidade de trabalhar em equipa; ter Capacidade de realizar projetos; Gestão de stress; Ter capacidade de iniciativa;",17,640,"2020-2021","2022-02-28","2022-06-13",3,3,3,2211897);
INSERT INTO Estagio(atividade,objetivos,avaliacao,perestagio,anoletivo,dataInicio,dataFinal,idEntidadeAcolhimento,idMonitor,idProfessor,idAluno)
VALUES ("Assistente administrativo","Ter capacidade de iniciativa; Aplicar a contextos reais de trabalho os conhecimentos adquiridos nas várias disciplinas que compõem o curso;",8,640,"2020-2021","2021-02-28","2021-06-13",1,1,9,2211898);
INSERT INTO Estagio(atividade,objetivos,avaliacao,perestagio,anoletivo,dataInicio,dataFinal,idEntidadeAcolhimento,idMonitor,idProfessor,idAluno)
VALUES("Assistente administrativo e Gestão de Papelada","Ter capacidade de iniciativa; Aplicar a contextos reais de trabalho os conhecimentos adquiridos nas várias disciplinas que compõem o curso;",13,640,"2021-2022","2022-02-28","2022-06-13",1,1,9,2211898);
INSERT INTO Estagio(atividade,objetivos,avaliacao,perestagio,anoletivo,dataInicio,dataFinal,idEntidadeAcolhimento,idMonitor,idProfessor,idAluno)
VALUES("Ajudante de cozinha","Reforçar a aprendizagem e aplicar a contextos reais de trabalho os conhecimentos adquiridos nas várias disciplinas que compõem o curso;",8,640,"2020-2021","2021-02-28","2021-06-13",5,5,13,2211899);
INSERT INTO Estagio(atividade,objetivos,avaliacao,perestagio,anoletivo,dataInicio,dataFinal,idEntidadeAcolhimento,idMonitor,idProfessor,idAluno)
VALUES("Cozinheiro no restaurante e ajudante de Cozinha","Ter capacidade de iniciativa; Aplicar a contextos reais de trabalho os conhecimentos adquiridos nas várias disciplinas que compõem o curso;",13,640,"2021-2022","2022-02-28","2022-06-13",5,5,12,2211899);
INSERT INTO Estagio(atividade,objetivos,avaliacao,perestagio,anoletivo,dataInicio,dataFinal,idEntidadeAcolhimento,idMonitor,idProfessor,idAluno)
VALUES("Preparamento de pequenos almoços e Lanches; Serviço de quartos","Preparação para o ambiente de trabalho; Ter capacidade de iniciativa; Aplicar a contextos reais de trabalho os conhecimentos adquiridos nas várias disciplinas que compõem o curso;",15,640,"2021-2022","2022-02-28","2022-06-13",11,11,11,2211900);
INSERT INTO Estagio(atividade,objetivos,avaliacao,perestagio,anoletivo,dataInicio,dataFinal,idEntidadeAcolhimento,idMonitor,idProfessor,idAluno)
VALUES("Preparamento de pequenos almoços e Lanches; Serviço de quartos","Preparação para o ambiente de trabalho; Ter capacidade de iniciativa;",16,640,"2021-2022","2022-02-28","2022-06-13",11,11,12,2211901);
INSERT INTO Estagio(atividade,objetivos,avaliacao,perestagio,anoletivo,dataInicio,dataFinal,idEntidadeAcolhimento,idMonitor,idProfessor,idAluno)
VALUES("Cozinheiro no restaurante e ajudante de Cozinha","Aplicar a contextos reais de trabalho os conhecimentos adquiridos nas várias disciplinas que compõem o curso; Preparação para o mundo de trabalho;",18,640,"2020-2021","2021-02-28","2021-06-13",5,5,11,2211902);
INSERT INTO Estagio(atividade,objetivos,avaliacao,perestagio,anoletivo,dataInicio,dataFinal,idEntidadeAcolhimento,idMonitor,idProfessor,idAluno)
VALUES("Ajudar as crianças no dia a dia;Realizar atividades para as crianças","Ter capacidade de iniciativa;Aplicar a contextos reais de trabalho os conhecimentos adquiridos nas várias disciplinas que compõem o curso;",4,640,"2020-2021","2021-02-28","2021-06-13",6,6,13,2211903);
INSERT INTO Estagio(atividade,objetivos,avaliacao,perestagio,anoletivo,dataInicio,dataFinal,idEntidadeAcolhimento,idMonitor,idProfessor,idAluno)
VALUES("Ajudar as crianças no dia a dia;Realizar atividades para as crianças; Ajudar os colegas de trabalho na realização de atividades","Ter capacidade de iniciativa;Aplicar a contextos reais de trabalho os conhecimentos adquiridos nas várias disciplinas que compõem o curso;",10,640,"2021-2022","2022-02-28","2022-06-13",10,10,12,2211903);
INSERT INTO Estagio(atividade,objetivos,avaliacao,perestagio,anoletivo,dataInicio,dataFinal,idEntidadeAcolhimento,idMonitor,idProfessor,idAluno)
VALUES("Organização de livros; Ajudar o cliente no necessário;","Aplicar a contextos reais de trabalho os conhecimentos adquiridos nas várias disciplinas que compõem o curso;",15,640,"2021-2022","2022-02-28","2022-06-13",7,7,9,2211904); 
INSERT INTO Estagio(atividade,objetivos,avaliacao,perestagio,anoletivo,dataInicio,dataFinal,idEntidadeAcolhimento,idMonitor,idProfessor,idAluno)
VALUES("Acompanhar e desenvolver sistemas de redes de outras empresas;","Desenvolvimento das capacidades de criação de Sistemas de Redes;Aplicar a contextos reais de trabalho os conhecimentos adquiridos nas várias disciplinas que compõem o curso;",18,640,"2020-2021","2022-02-28","2022-06-13",8,8,4,2211905); 
INSERT INTO Estagio(atividade,objetivos,avaliacao,perestagio,anoletivo,dataInicio,dataFinal,idEntidadeAcolhimento,idMonitor,idProfessor,idAluno)
VALUES("Tratamento de erros da rede da empresa;","Desenvolvimento das capacidades de resolução de problemas;Aplicar a contextos reais de trabalho os conhecimentos adquiridos nas várias disciplinas que compõem o curso;",8,640,"2020-2021","2021-02-28","2021-06-13",2,12,4,2211906);
INSERT INTO Estagio(atividade,objetivos,avaliacao,perestagio,anoletivo,dataInicio,dataFinal,idEntidadeAcolhimento,idMonitor,idProfessor,idAluno)
VALUES("Acompanhar e desenvolver sistemas de redes de outras empresas;","Desenvolvimento das capacidades de criação de Sistemas de Redes;Aplicar a contextos reais de trabalho os conhecimentos adquiridos nas várias disciplinas que compõem o curso;",13,640,"2021-2022","2022-02-28","2022-06-13",9,9,4,2211906);