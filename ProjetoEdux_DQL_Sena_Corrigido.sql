
--Informando a tabel aque ser� utilizada
USE ProjetoEdux;

--Pesquisando dados da tabela Insituicao
SELECT *FROM instituicao;

--Selecionando dados espec�ficos
SELECT * FROM aluno WHERE IdAluno = 5;

--Selecionando dados espec�ficos
SELECT * FROM aluno WHERE IdAluno = 3;

--Pesquisando dados da tabela aluno
SELECT * FROM aluno;

--Selecionando uma busca espec�fica
SELECT * FROM aluno WHERE Nome LIKE 'Gustavo';

--Selecionado por termos espec�ficos
SELECT * FROM aluno WHERE Sobrenome LIKE 'Batista';

--Selecionando dados espec�ficos
SELECT * FROM curso;

--Selecionado por termos espec�ficos
SELECT * FROM curso WHERE Disciplina LIKE '%mas';

--Selecionado por termos espec�ficos
SELECT * FROM curso WHERE Disciplina LIKE 'ma%';

--Ordenando dados na consulta
SELECT * FROM curso ORDER BY Disciplina DESC;

--Ordenando dados na consulta
SELECT * FROM curso ORDER BY Disciplina ASC;


