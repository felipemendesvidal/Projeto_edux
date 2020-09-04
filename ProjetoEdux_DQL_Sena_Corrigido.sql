
--Informando a tabel aque será utilizada
USE ProjetoEdux;

--Pesquisando dados da tabela Insituicao
SELECT *FROM instituicao;

--Selecionando dados específicos
SELECT * FROM aluno WHERE IdAluno = 5;

--Selecionando dados específicos
SELECT * FROM aluno WHERE IdAluno = 3;

--Pesquisando dados da tabela aluno
SELECT * FROM aluno;

--Selecionando uma busca específica
SELECT * FROM aluno WHERE Nome LIKE 'Gustavo';

--Selecionado por termos específicos
SELECT * FROM aluno WHERE Sobrenome LIKE 'Batista';

--Selecionando dados específicos
SELECT * FROM curso;

--Selecionado por termos específicos
SELECT * FROM curso WHERE Disciplina LIKE '%mas';

--Selecionado por termos específicos
SELECT * FROM curso WHERE Disciplina LIKE 'ma%';

--Ordenando dados na consulta
SELECT * FROM curso ORDER BY Disciplina DESC;

--Ordenando dados na consulta
SELECT * FROM curso ORDER BY Disciplina ASC;


