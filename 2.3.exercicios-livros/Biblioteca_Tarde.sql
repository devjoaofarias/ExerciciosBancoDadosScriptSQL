-- CRIAR BANCO DE DADOS
CREATE DATABASE Biblioteca_Tarde; 

-- APONTANDO PARA O BANCO QUE QUER USAR
USE Biblioteca_Tarde; 

-- CRIAR TABELAS
CREATE TABLE Autores (
	IdAutor		INT PRIMARY KEY IDENTITY,
	NomeAutor	VARCHAR(200) NOT NULL
);

CREATE TABLE Generos (
	IdGenero	INT PRIMARY KEY IDENTITY,
	Nome		VARCHAR(200) NOT NULL
);

CREATE TABLE Livros (
	IdLivro		INT PRIMARY KEY IDENTITY,
	Titulo		VARCHAR(250),
	IdAutor		INT FOREIGN KEY REFERENCES Autores (IdAutor),
	IdGenero	INT FOREIGN KEY REFERENCES Generos (IdGenero)
);

-- ALTERAR ADICIONAR UMA NOVA COLUNA 
ALTER TABLE Generos 
ADD Descricao VARCHAR(250);

-- ALTERAR TIPO DE DADO 
ALTER TABLE Generos
ALTER COLUMN Descricao CHAR(100);	

-- EXCLUIR 
DROP TABLE Generos;	

INSERT INTO Generos(Nome)
VALUES('Romance'), ('Fic�ao Cientifica'), ('Com�dia'), ('Tecnologia'), ('Drama'); 

INSERT INTO Autores(NomeAutor)
VALUES('Clarice Lispector'), ('Monteiro Lobato'), ('Shakespeare'), ('E�� de Queiroz'), ('Augusto Cury'); 

INSERT INTO Livros(Titulo, IdAutor, IdGenero)
VALUES('O Lustre', 1, 2);

INSERT INTO Livros(Titulo, IdAutor, IdGenero)
VALUES('O Futebol', 3, 3);

INSERT INTO Livros(Titulo, IdAutor, IdGenero)
VALUES('O Computador', 5, 2);

INSERT INTO Livros(Titulo, IdAutor, IdGenero)
VALUES('Venha C�', 4, 2);

INSERT INTO Livros(Titulo, IdAutor, IdGenero)
VALUES('Analse de Pessoas', 5, 4);

INSERT INTO Livros(Titulo, IdAutor, IdGenero)
VALUES('A culpa � das Estrelas', 1, 2);


SELECT * FROM Livros
SELECT * FROM Generos
SELECT * FROM Autores

SELECT Titulo, IdAutor FROM Livros

SELECT Titulo, IdGenero FROM Livros

SELECT Titulo, IdAutor, IdGenero FROM Livros


