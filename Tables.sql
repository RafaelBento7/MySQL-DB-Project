/*
TeSP_PSI_2122_CDBD
Sistema de Monitorização de Estágios
Gabriel Sá, estudante n.º 2211901
Rafael Bento, estudante n.º 2211900
Tiago Januário, estudante nº2211907
Tomás Jerónimo, estudante nº2211892
*/

CREATE SCHEMA IF NOT EXISTS Monotorizacao_Estagios;

USE monotorizacao_estagios;

CREATE TABLE IF NOT EXISTS EntidadeAcolhimento (
	id INT NOT NULL AUTO_INCREMENT,
    nome varchar(100) NOT NULL,
    telefone varchar(9) NOT NULL UNIQUE,
    email varchar(55) NOT NULL,
    nif varchar(9) NOT NULL UNIQUE,
	chefia varchar(100) NOT NULL,
    rua varchar(50) NOT NULL,
    localidade varchar(30) NOT NULL,
    codigoPostal varchar(8) NOT NULL,
    constraint pk_EntidadeAcolhimento_id primary key(id))
Engine=innoDB;

CREATE TABLE IF NOT EXISTS Monitores(
	id INT NOT NULL AUTO_INCREMENT,
    nome varchar(100) NOT NULL,
    telefone varchar(9) NOT NULL UNIQUE,
    email varchar(55) NOT NULL,
    idEntidadeAcolhimento INT NOT NULL,
    constraint pk_Monitores_id primary key (id),
    constraint fk_EntidadeAcolhimento_idEntidadeAcolhimento foreign key (idEntidadeAcolhimento) references EntidadeAcolhimento(id))
ENGINE=innoDB;	

CREATE TABLE IF NOT EXISTS Escolas(
	id INT NOT NULL AUTO_INCREMENT,
    nome varchar(50) NOT NULL,
    representante varchar(100) NOT NULL,
    email varchar(55) NOT NULL UNIQUE,
    fax varchar(10) NULL UNIQUE,
	rua varchar(50) NOT NULL,
    localidade varchar(30) NOT NULL,
    codigoPostal varchar(8) NOT NULL,
    constraint pk_Escolas_id primary key(id)) 
ENGINE=innoDB;

CREATE TABLE IF NOT EXISTS TelefoneEscolas(
	idEscola int NOT NULL,
    telefone varchar(9) NOT NULL UNIQUE,
    constraint pk_TelefoneEscolas_idEscola primary key (idEscola,telefone),
    constraint fk_TelefoneEscolas_idEscola foreign key (idEscola) references Escolas(id)) 
ENGINE=innoDB;

CREATE TABLE IF NOT EXISTS Professores(
	id INT NOT NULL AUTO_INCREMENT,
    nome varchar(100) NOT NULL,
    telefone varchar(9) NOT NULL UNIQUE,
    email varchar(55) NOT NULL,
    idEscola INT NOT NULL,
    constraint pk_Professores_id primary key(id),
    constraint fk_Escolas_idEscola foreign key (idEscola) references Escolas(id))
ENGINE=innoDB;

CREATE TABLE IF NOT EXISTS CoordenadorCurso(
	idCoordenador int NOT NULL,
    constraint pk_CoordenadorCurso_idCoordenador primary key(idCoordenador),
    constraint fk_Professores_idCoordenador foreign key(idCoordenador) references Professores(id))
ENGINE=innoDB;

CREATE TABLE IF NOT EXISTS Disciplinas(
	id int NOT NULL auto_increment,
    descricao varchar(50) NOT NULL,
    constraint pk_Disciplinas_id primary key(id))
ENGINE=innoDB;

CREATE TABLE IF NOT EXISTS Curso(
	id INT NOT NULL AUTO_INCREMENT,
    nome varchar(100) NOT NULL,
    idCoordenadorCurso INT NOT NULL,
    idEscola INT NOT NULL,
    constraint pk_Curso_id primary key(id),
    constraint fk_Curso_idCoordenadorCurso foreign key(idCoordenadorCurso) references coordenadorcurso(idCoordenador),
    constraint fk_Curso_idEscola foreign key (idEscola) references escolas(id))
ENGINE=innoDB;

CREATE TABLE IF NOT EXISTS DisciplinasCursos(
	idcurso INT NOT NULL,
    idDisciplina INT NOT NULL,
    horas INT NOT NULL,
    constraint pk_DisciplinasCurso_idcurso primary key(idcurso,idDisciplina),
    constraint fk_DisciplinasCurso_idcurso foreign key(idcurso) references Curso(id),
    constraint fk_DisciplinasCurso_idDisciplinas foreign key(idDisciplina) references Disciplinas(id))
ENGINE=innoDB;

CREATE TABLE IF NOT EXISTS EncEducacao(
	id INT NOT NULL AUTO_INCREMENT,
    nome varchar(100) NOT NULL,
    telefone varchar(9) NOT NULL UNIQUE,
    email varchar(55) NOT NULL,
	rua varchar(50) NOT NULL,
    localidade varchar(30) NOT NULL,
    codigoPostal varchar(8) NOT NULL,
    constraint pk_EncEducacao_id primary key(id))
ENGINE=innoDB;

CREATE TABLE IF NOT EXISTS Aluno(
	numero INT NOT NULL,
    nome varchar(100) NOT NULL,
    telefone varchar(9) NOT NULL UNIQUE,
    email varchar(55) NOT NULL,
    turma varchar(20) NOT NULL,
    dataNascimento date NOT NULL,
    nacionalidade varchar(30)NOT NULL,
    nif varchar(9) NOT NULL,
    cartaoCidadao varchar(8) NOT NULL UNIQUE,
    rua varchar(50) NOT NULL,
    localidade varchar(30) NOT NULL,
    codigoPostal varchar(8) NOT NULL,
    idEscola INT NOT NULL,
    idEncEducacao INT NOT NULL,
    idCurso INT NOT NULL,
    constraint pk_Aluno_id primary key(numero),
    constraint fk_Aluno_idEscola foreign key(idEscola) references Escolas(id),
    constraint fk_Aluno_idEncEducacao foreign key(idEncEducacao) references EncEducacao(id),
    constraint fk_Aluno_idCurso foreign key(idCurso) references Curso(id))
ENGINE=innoDB;

CREATE TABLE IF NOT EXISTS Estagio(
	id INT NOT NULL AUTO_INCREMENT,
    atividade varchar(255) NOT NULL,
    objetivos varchar(255) NOT NULL,
    avaliacao int NOT NULL,
    perestagio INT NOT NULL,
    anoletivo varchar(10) NOT NULL,
    dataInicio date NULL,
    dataFinal date NULL,
    idEntidadeAcolhimento INT NOT NULL,
    idMonitor INT NOT NULL,
    idProfessor INT NOT NULL,
    idAluno INT NOT NULL,
    constraint pk_Estagio_id primary key(id),
    constraint fk_Estagio_idEntidadeAcolhimento foreign key (idEntidadeAcolhimento) references EntidadeAcolhimento(id),
    constraint fk_Estagio_idMonitor foreign key (idMonitor) references Monitores(id),
    constraint fk_Estagio_idProfessor foreign key (idProfessor) references Professores(id),
    constraint fk_Estagio_idAluno foreign key (idAluno) references Aluno(numero))
ENGINE=innoDB;