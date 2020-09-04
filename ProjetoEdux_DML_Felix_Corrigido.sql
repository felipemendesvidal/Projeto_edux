--DROP DATABASE ProjetoEdux;


--Informando o bando de dados que será utilizado
USE ProjetoEdux;
GO

SELECT * FROM categoria;

/* Determina um tipo de avalição sobre determinado objetivo*/
INSERT INTO categoria(Tipo)
VALUES
('Crítico'),
('Desejável'),
('Oculto');

/* São os cursos existentes em cada turma */
INSERT INTO Curso (Disciplina, ObjetivoCurso)
VALUES
('Matematica',100),
('Desenvolvimento de Sistemas',100),
('Lingua Portuguesa',100),
('História',100),
('Geografia',100),
('Quimica',100),
('Fisica',100),
('Biologia',100),
('Ingles',100),
('Educação Fisica',100),
('Filosofia',100),
('Sociologia',100);


/* Tipo de acesso de usuarios */
INSERT INTO TipoAcesso (Administrador, Comum) 
VALUES
(1, 2);


/*São objetivos propostos pelo professor, como formar de avaliar e o aluno atingir metas, tendo em vsta a avalição pessoal e um ranqueamento*/
INSERT INTO Objetivo (MetaDefinida, MetaAlcancada, StatusObjetivo, IdCategoria)
VALUES
('Resolver os exercicios da lista 1 de Matematica','Não',0,'1'),
('Desenvolver uma redação de até 30 linhas, não podendo ultrapssar o numero de linhas proposta', 'Sim',1,'2'),
('Fazer uma pesquisa sobre Polinomios, e resgistrar em forma de sintese','Não',0,'3');



/* A instituição serve como forma de identificar qual escola esta logada e quais membros são inseridos nessa instituição, como alunos e professores */

INSERT INTO Instituicao (RazaoSocial,Logradouro,Numero,Complemento,Bairro, Cidade,UF, CEP)
VALUES
('SERVICO SOCIAL DA INDUSTRIA-SESI','Praça Dr. Armando Arruda Pereira','100',NULL,'Santa Terezinha','Santo André','SP','09210-550'),
('SERVICO NACIONAL DE APRENDIZAGEM INDUSTRIAL-SENAI','Alameda Barão de Limeira',539,NULL,'Santa Cecilia','São Paulo','SP','01202-001');

/* A entidade Acesso tem função de controlar cada usuario que acessar, pois cada usuario tera nome, sobrenome, senha e email para identificação */

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
('1°A', 'Manha','2020/02/18',1),
('7°B','Integral','2020/02/18',3),
('DM','Manha','2020/02/18',2),
('DT','Tarde','2020/02/18',2);

/* Identificação de aluno */
INSERT INTO Aluno (Nome, Sobrenome,IdAcesso)
VALUES
('Gustavo','Silva',1),
('Barbara','Fernandez',2),
('Jean','Cardoso',3),
('Camilla','Batista',4);


/*Identificação de professor*/
INSERT INTO Professor (Nome, Sobrenome, IdAcesso,IdAluno)
VALUES
('Fernando','Henrique',5,2),
('Claudia','Vasconcellos',6,1);

/*Interação com a turma em que o professor tem acesso*/
INSERT INTO ProfessorTurma (Descricao, IdProfessor)
VALUES
('Turma essa semana tera uma avaliação',2),
('Turma vou adiar a avaliação para semana que vem',1);


/*Dicas postadas pelo professor, que tem acesso a sua turma */
INSERT INTO Dica (Tema, Descricao,IdAcesso)
VALUES
('Polinomios','Assita a aula indicada para realizar a lista de exercicios',5),
('Javascript','Utilize a biblioteca da microsoft para auxiliar nas aplicações em Javascript',6);

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