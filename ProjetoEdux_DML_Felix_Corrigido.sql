--DROP DATABASE ProjetoEdux;


--Informando o bando de dados que ser� utilizado
USE ProjetoEdux;
GO

SELECT * FROM categoria;

/* Determina um tipo de avali��o sobre determinado objetivo*/
INSERT INTO categoria(Tipo)
VALUES
('Cr�tico'),
('Desej�vel'),
('Oculto');

/* S�o os cursos existentes em cada turma */
INSERT INTO Curso (Disciplina, ObjetivoCurso)
VALUES
('Matematica',100),
('Desenvolvimento de Sistemas',100),
('Lingua Portuguesa',100),
('Hist�ria',100),
('Geografia',100),
('Quimica',100),
('Fisica',100),
('Biologia',100),
('Ingles',100),
('Educa��o Fisica',100),
('Filosofia',100),
('Sociologia',100);


/* Tipo de acesso de usuarios */
INSERT INTO TipoAcesso (Administrador, Comum) 
VALUES
(1, 2);


/*S�o objetivos propostos pelo professor, como formar de avaliar e o aluno atingir metas, tendo em vsta a avali��o pessoal e um ranqueamento*/
INSERT INTO Objetivo (MetaDefinida, MetaAlcancada, StatusObjetivo, IdCategoria)
VALUES
('Resolver os exercicios da lista 1 de Matematica','N�o',0,'1'),
('Desenvolver uma reda��o de at� 30 linhas, n�o podendo ultrapssar o numero de linhas proposta', 'Sim',1,'2'),
('Fazer uma pesquisa sobre Polinomios, e resgistrar em forma de sintese','N�o',0,'3');



/* A institui��o serve como forma de identificar qual escola esta logada e quais membros s�o inseridos nessa institui��o, como alunos e professores */

INSERT INTO Instituicao (RazaoSocial,Logradouro,Numero,Complemento,Bairro, Cidade,UF, CEP)
VALUES
('SERVICO SOCIAL DA INDUSTRIA-SESI','Pra�a Dr. Armando Arruda Pereira','100',NULL,'Santa Terezinha','Santo Andr�','SP','09210-550'),
('SERVICO NACIONAL DE APRENDIZAGEM INDUSTRIAL-SENAI','Alameda Bar�o de Limeira',539,NULL,'Santa Cecilia','S�o Paulo','SP','01202-001');

/* A entidade Acesso tem fun��o de controlar cada usuario que acessar, pois cada usuario tera nome, sobrenome, senha e email para identifica��o */

INSERT INTO Acesso (Nome, Sobrenome, Email, Senha)
VALUES
('Gustavo','Silva','gustavo@gmail.com','RPkHKKX2'),
('Barbara','Fernandez','barbara@gmail.com','CE36Fqg3'),
('Jean','Cardoso','jean@gmail.com','t@ixGFd1'),
('Camilla','Batista','camilla@gmail.com','aafuS0Fi'),
('Fernando','Henrique','fernandoprof@gmail.com','TmSx0W0i'),
('Claudia','Vasconcellos','profclaudia@gmail.com','WFHwf7Bn');


/* A entidade turma foi criada para  */

INSERT INTO Turma (Identificacao, Periodo, AnoLetivo, IdCurso)
VALUES
('1�A', 'Manha','2020/02/18',1),
('7�B','Integral','2020/02/18',3),
('DM','Manha','2020/02/18',2),
('DT','Tarde','2020/02/18',2);

/* Identifica��o de aluno */
INSERT INTO Aluno (Nome, Sobrenome,IdAcesso)
VALUES
('Gustavo','Silva',1),
('Barbara','Fernandez',2),
('Jean','Cardoso',3),
('Camilla','Batista',4);


/*Identifica��o de professor*/
INSERT INTO Professor (Nome, Sobrenome, IdAcesso,IdAluno)
VALUES
('Fernando','Henrique',5,2),
('Claudia','Vasconcellos',6,1);

/*Intera��o com a turma em que o professor tem acesso*/
INSERT INTO ProfessorTurma (Descricao, IdProfessor)
VALUES
('Turma essa semana tera uma avalia��o',2),
('Turma vou adiar a avalia��o para semana que vem',1);


/*Dicas postadas pelo professor, que tem acesso a sua turma */
INSERT INTO Dica (Tema, Descricao,IdAcesso)
VALUES
('Polinomios','Assita a aula indicada para realizar a lista de exercicios',5),
('Javascript','Utilize a biblioteca da microsoft para auxiliar nas aplica��es em Javascript',6);

/* Posts de alunos e professores como forma de disponibilizar materiais ou por alunos, para postarem suas conquistas*/
INSERT INTO Post (Descricao,Imagem, Curtidas)    
VALUES
('Lista de exercicios sobre polinomio','polinomios.PNG',2),
('Primeiro codigo','codigo.PNG',1);


INSERT INTO AlunoObjetivo (NotaAtribuida, DataEntrega, IdAluno, IdObjetivo)
VALUES
('10','2020-01-18', 1, 1),
('9','2020-01-18', 2, 1);

INSERT INTO ObjetivoAluno (IdAlunoObjetivo,IdObjetivo)
VALUES
(1,2),
(2,3);                                                      



SELECT * FROM alunoObjetivo;