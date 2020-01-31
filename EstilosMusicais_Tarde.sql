-- CRIAR BANCO DE DADOS
CREATE DATABASE EstilosMusicais_Tarde;

-- APONTANDO PARA O BANCO QUE DESEJA USAR
USE EstilosMusicais_Tarde;

-- CRIAR TABELAS
CREATE TABLE EstilosMusicais (
	IdEstilosMusicais	INT PRIMARY KEY IDENTITY,
	Nome				VARCHAR (35) NOT NULL
);

CREATE TABLE Artistas (
	IdArtista			INT PRIMARY KEY IDENTITY,
	IdEstilosMusicais	INT FOREIGN KEY REFERENCES EstilosMusicais (IdEstilosMusicais),
	Nome				VARCHAR(50) NOT NULL
);

SELECT * FROM Artistas; 


