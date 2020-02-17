CREATE DATABASE OPTUS_JOAO;

USE OPTUS_JOAO;

CREATE TABLE Estilos (
	IdEstilos	INT PRIMARY KEY IDENTITY,
	Nome		VARCHAR(50) NOT NULL
);

CREATE TABLE Artistas (
	IdArtista	INT PRIMARY KEY IDENTITY,
	Nome		VARCHAR(50) NOT NULL
);

CREATE TABLE Albuns (
	IdAlbuns		INT PRIMARY KEY IDENTITY,
	IdArtista		INT FOREIGN KEY REFERENCES Artistas (IdArtista),
	IdEstilos		INT FOREIGN KEY REFERENCES Estilos (IdEstilos),
	Nome			VARCHAR(500) NOT NULL UNIQUE,
	DataLancamento	DATE NOT NULL,
	Localizacao		VARCHAR(500),
	Minutos			BIGINT,
	Ativo			VARCHAR(100),
);

CREATE TABLE Usuario (	
	IdUsuario		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(50) NOT NULL,
	Email			VARCHAR(50) NOT NULL,
	Senha			VARCHAR(30) NOT NULL,
	TipoUsuario		VARCHAR(100) NOT NULL
);

-- VISUALIZAR TABELAS
SELECT * FROM Estilos;
SELECT * FROM Artistas;
SELECT * FROM Albuns;
SELECT * FROM Usuario;

INSERT INTO Estilos(Nome)
VALUES('Reggae'),('Sertanejo'),('Rock'), ('Mpb');

INSERT INTO Artistas(Nome)
VALUES ('Natiruts'),('Henrique e Juliano'),('Red Hot'),('Maneva'),('Tim Maia'),('Capital Inicial');

INSERT INTO Albuns (IdArtista, IdEstilos, Nome, DataLancamento, Localizacao, Minutos, Ativo)
VALUES (1, 1, 'Acustico', '10/05/2018', 'Sao Paulo', 115, 'Sim');

INSERT INTO Albuns (IdArtista, IdEstilos, Nome, DataLancamento, Localizacao, Minutos, Ativo)
VALUES (1, 2, 'Acustico ao vivo', '10/05/2000', 'Rj', 115, 'Sim');

INSERT INTO Albuns (IdArtista, IdEstilos, Nome, DataLancamento, Localizacao, Minutos, Ativo)
VALUES (3, 3, 'Na Praia', '10/05/2011', 'Miami', 135, 'Nao');

INSERT INTO Albuns (IdArtista, IdEstilos, Nome, DataLancamento, Localizacao, Minutos, Ativo)
VALUES (3, 3, 'O Por Do Sol', '10/05/2011', 'Orlando', 155, 'Sim');

INSERT INTO Albuns (IdArtista, IdEstilos, Nome, DataLancamento, Localizacao, Minutos, Ativo)
VALUES (2, 1, 'Na Na Roça', '10/05/2013', 'BH', 85, 'Sim');

INSERT INTO Albuns (IdArtista, IdEstilos, Nome, DataLancamento, Localizacao, Minutos, Ativo)
VALUES (2, 1, 'oioioi', '10/05/2010', 'Maranhao', 88, 'Sim');

INSERT INTO Albuns (IdArtista, IdEstilos, Nome, DataLancamento, Localizacao, Minutos, Ativo)
VALUES (5, 4, 'Tim Maia Colection', '10/05/2010', 'Maranhao', 88, 'Sim');

-- EXERCICIO 1

SELECT IdArtista, Nome, Localizacao FROM Albuns
WHERE IdArtista = 1;

SELECT IdArtista, Nome, Localizacao FROM Albuns
WHERE IdArtista = 2;

-- MESMO EXERCICIO USANDO INNER JOIN

SELECT Artistas.Nome, Albuns.Nome FROM Artistas
INNER JOIN Albuns ON Artistas.IdArtista = Albuns.IdArtista
WHERE Albuns.IdArtista = 2

SELECT IdArtista, Nome, Localizacao FROM Albuns
WHERE IdArtista = 3;

SELECT IdArtista, Nome, Localizacao FROM Albuns
WHERE IdArtista = 4;

SELECT IdArtista, Nome, Localizacao FROM Albuns
WHERE IdArtista = 5;

SELECT IdArtista, Nome, Localizacao FROM Albuns
WHERE IdArtista = 6;

-- EXERCICIO 2

SELECT Nome, DataLancamento FROM Albuns
WHERE DataLancamento = '10/05/2011';

SELECT Nome, DataLancamento FROM Albuns
WHERE DataLancamento = '10/05/2010';

-- EXERCICIO 3

SELECT IdArtista, IdEstilos FROM Albuns
WHERE IdEstilos = 1;

SELECT IdArtista, IdEstilos FROM Albuns
WHERE IdEstilos = 2;

SELECT IdArtista, IdEstilos FROM Albuns;

SELECT IdArtista, IdEstilos FROM Albuns
WHERE IdEstilos = 4;

-- EXERCICIO 4

SELECT Nome, IdArtista, DataLancamento FROM Albuns
ORDER BY DataLancamento DESC;

-- USANDO INNER JOIN
SELECT Artistas.Nome as NomeArtista, Albuns.Nome as NomeAlbum, DataLancamento
FROM Artistas 
INNER JOIN Albuns ON Artistas.IdArtista = Albuns.IdArtista 
ORDER BY DataLancamento ASC;

SELECT Artistas.Nome, Estilos.Nome
FROM Artistas
INNER JOIN Albuns ON Artistas.IdArtista = Albuns.IdArtista 
INNER JOIN Estilos ON Estilos.IdEstilos = Albuns.IdEstilos
WHERE Estilos.IdEstilos = 3





















































