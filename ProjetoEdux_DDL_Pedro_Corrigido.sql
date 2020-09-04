--DROP DATABASE ProjetoEdux;

--Criando banco de dados ProjetoEdux
CREATE DATABASE ProjetoEdux;
GO


--Informando o bando de dados que será utilizado
USE ProjetoEdux;
GO

/*--Excluindo banco de dados quando as coisas não dão certo :-(
DROP DATABASE ProjetoEdux;
GO*/

--Criando tabela Categoria
CREATE TABLE categoria(
IdCategoria INT IDENTITY PRIMARY KEY  NOT NULL,
Tipo VARCHAR (150) NOT NULL
)
GO

--Criando tabela Objetivo
CREATE TABLE objetivo(
IdObjetivo INT IDENTITY PRIMARY KEY NOT NULL,
MetaDefinida VARCHAR (255),
MetaAlcancada VARCHAR (255),
StatusObjetivo BINARY,
IdCategoria INT FOREIGN KEY REFERENCES categoria (IdCategoria)
)
GO

--Criando tabela Instituicao
CREATE TABLE instituicao(
IdInstituicao INT IDENTITY  PRIMARY KEY NOT NULL,
RazaoSocial VARCHAR (150) NOT NULL,
Logradouro VARCHAR  (100) NOT NULL,
Numero VARCHAR (50),
Complemento VARCHAR  (50),
Bairro VARCHAR (50) NOT NULL,
Cidade VARCHAR (50) NOT NULL,
UF CHAR (2) NOT NULL,
Cep VARCHAR (9) NOT NULL
)
GO

--Criando tabela Acesso
CREATE TABLE acesso(
IdAcesso INT IDENTITY PRIMARY KEY NOT NULL,
Nome VARCHAR (100) NOT NULL,
Sobrenome VARCHAR (100) NOT NULL,
Email VARCHAR (255) NOT NULL,
Senha VARCHAR (30) NOT NULL,
Idinstituicao INT FOREIGN KEY REFERENCES instituicao (IdInstituicao)
)
GO

--Criando tabela TipoAcesso
CREATE TABLE tipoAcesso(
IdTipoAcesso INT IDENTITY PRIMARY KEY NOT NULL,
Administrador VARCHAR (50) NOT NULL,
Comum VARCHAR (50) NOT NULL,
IdAcesso INT FOREIGN KEY REFERENCES acesso (IdAcesso)
)
GO

--Criando tabela Dica
CREATE TABLE dica(
IdDica INT IDENTITY PRIMARY KEY NOT NULL,
Tema VARCHAR (100) NOT NULL,
Descricao  VARCHAR (255),
IdAcesso INT FOREIGN KEY REFERENCES acesso (IdAcesso)
)
GO


--Criando tabela Post
CREATE TABLE post(
IdPost INT IDENTITY PRIMARY KEY NOT NULL,
Descricao VARCHAR (255),
Imagem VARCHAR (255),
Curtidas INT DEFAULT (0),
IdAcesso INT FOREIGN KEY REFERENCES acesso (IdAcesso)
)
GO

--Criando tabela Aluno
CREATE TABLE aluno(
IdAluno INT IDENTITY PRIMARY KEY NOT NULL,
Nome VARCHAR (100) NOT NULL,
Sobrenome VARCHAR (100) NOT NULL,
IdAcesso INT FOREIGN KEY REFERENCES acesso (IdAcesso)
)
GO

--Criando tabela AlunoObjetivo
CREATE TABLE alunoObjetivo(
IdAlunoObjetivo INT IDENTITY PRIMARY KEY NOT NULL,
NotaAtribuida INT DEFAULT(0),
DataEntrega DATE,
IdAluno INT FOREIGN KEY REFERENCES aluno (IdAluno),
IdObjetivo INT FOREIGN KEY REFERENCES objetivo (IdObjetivo)
)
GO

--Criando tabela ObjetivoAluno
CREATE TABLE objetivoAluno(
IdObjetivoAluno INT IDENTITY PRIMARY KEY NOT NULL,
IdAlunoObjetivo INT FOREIGN KEY REFERENCES objetivoAluno (IdObjetivoAluno),
IdObjetivo INT FOREIGN KEY REFERENCES objetivo (IdObjetivo)
) 
GO

--Criando tabela Professor
CREATE TABLE professor(
IdProfessor INT IDENTITY PRIMARY KEY NOT NULL,
Nome VARCHAR (100) NOT NULL,
Sobrenome VARCHAR (100) NOT NULL,
IdAcesso INT FOREIGN KEY REFERENCES acesso (IdAcesso),
IdAluno INT FOREIGN KEY REFERENCES aluno (IdAluno)
)
GO

--Criando tabela ProfessorTurma
CREATE TABLE professorTurma(
IdProfessorTurma INT IDENTITY PRIMARY KEY NOT NULL,
Descricao VARCHAR (255),
IdProfessor INT FOREIGN KEY REFERENCES professor (IdProfessor),
)
GO

--Criando tabela Curso
CREATE TABLE curso(
IdCurso INT IDENTITY PRIMARY KEY NOT NULL,
Disciplina VARCHAR (100) NOT NULL,
ObjetivoCurso INT NOT NULL
)

--Criando tabela Turma
 CREATE TABLE turma(
 IdTurma INT IDENTITY PRIMARY KEY NOT NULL,
 Identificacao VARCHAR (30) NOT NULL,
 Periodo VARCHAR (30) NOT NULL,
 AnoLetivo DATE NOT NULL,
 IdCurso INT FOREIGN KEY REFERENCES curso (IdCurso)
 )