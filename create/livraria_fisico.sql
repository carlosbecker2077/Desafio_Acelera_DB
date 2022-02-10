create table Remissiva (
	ID int identity(1,1) primary key,
	nome_remissiva nvarchar(100) not null,
	id_autor int not null
);

create table Genero (
	ID int identity(1,1) primary key,
	nome_genero varchar(100) not null
);

create table UF (
	UF char(2) primary key,
	nome_uf varchar(100) not null
);

create table Pais (
	ID int identity(1,1) primary key,
	nome_pais varchar(100) not null
);

create table Cidade (
	ID int identity(1,1) primary key,
	nome_cidade varchar(100) not null, 
	cod_ibge varchar(30)
);

create table Editora (
	ID int identity(1,1) primary key,
	nome varchar(100) not null,
	fone1 varchar(30),
	fone2 varchar(30),
	email varchar(100),
	pessoa_contato varchar(30),
	endereco varchar(100),
	numero_end varchar(30),
	complemento_end varchar(100),
	ID_pais int,
	UF char(2),
	ID_Cidade int
);


create table Edicao (
	ID int identity(1,1) primary key,
	num_edicao int not null,
	tit_edicao nvarchar(100) not null,
	dt_public date,
	num_paginas integer not null,
	local_public varchar(100),
	idioma varchar(30),	
	qtde_estoque decimal(18,3) not null,
	preco decimal(18,3) not null,
	ID_livro int not null,
	ID_editora int not null
);

create table Autor (
	ID int identity(1,1) primary key,
	nome nvarchar(100) not null,
	dt_nascimento date,
	obs_bio varchar(500),
	id_pais int
);

create table Livro (
	ID int identity(1,1) primary key,
	GTIN_EAN varchar(30) not null,
	ISBN varchar(30),
	titulo_original nvarchar(100),
	
);

create table Autor_Livro (
	ID int identity(1,1) primary key,
	ID_livro int not null,
	ID_autor int not null
);

create table Genero_Livro (
	ID int identity(1,1) primary key,
	ID_livro int not null,
	ID_genero int not null
);

ALTER TABLE Genero_Livro
ADD FOREIGN KEY (ID_livro) REFERENCES Livro(ID);

ALTER TABLE Genero_Livro
ADD FOREIGN KEY (ID_genero) REFERENCES Genero(ID);

ALTER TABLE Remissiva
ADD FOREIGN KEY (ID_autor) REFERENCES Autor(ID);

ALTER TABLE Autor_Livro
ADD FOREIGN KEY (ID_livro) REFERENCES Livro(ID);

ALTER TABLE Autor_Livro
ADD FOREIGN KEY (ID_autor) REFERENCES Autor(ID);

ALTER TABLE Autor
ADD FOREIGN KEY (ID_pais) REFERENCES Pais(ID);

ALTER TABLE Editora
ADD FOREIGN KEY (ID_pais) REFERENCES Pais(ID);

ALTER TABLE Editora
ADD FOREIGN KEY (UF) REFERENCES UF(UF);

ALTER TABLE Editora
ADD FOREIGN KEY (ID_cidade) REFERENCES Cidade(ID);

ALTER TABLE Edicao
ADD FOREIGN KEY (ID_livro) REFERENCES Livro(ID);

ALTER TABLE Edicao
ADD FOREIGN KEY (ID_editora) REFERENCES Editora(ID);