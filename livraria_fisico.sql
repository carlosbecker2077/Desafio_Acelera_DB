create table Remissiva (
	ID int identity(1,1) primary key,
	nome_remissiva nvarchar(100)

);

create table Genero (
	id_genero int identity(1,1) primary key,
	nome_genero varchar(100)
);

create table UF (
	UF char(2) primary key,
	nome_uf varchar(100)
);

create table Pais (
	ID_pais int identity(1,1) primary key,
	nome_pais varchar(100)
);

create table Cidade (
	ID_cidade int identity(1,1) primary key,
	nome_cidade varchar(100),
	cod_ibge varchar(30)
);

create table Editora (
	ID_editora int identity(1,1) primary key,
	nome varchar(100),
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
	ID_edicao int identity(1,1) primary key,
	num_edicao int,
	tit_edicao nvarchar(100),
	dt_public date,
	num_paginas integer,
	local_public varchar(100),
	idioma varchar(30),	
	qtde_estoque decimal(18,3),
	preco decimal(18,3),
);

create table Autor (
	ID_autor int identity(1,1) primary key,
	nome nvarchar(100),
	dt_nascimento date,
	obs_bio varchar(500),
	id_pais int,
	id_remissiva int
);

create table Livro (
	ID_livro int identity(1,1) primary key,
	GTIN_EAN varchar(30) not null,
	ISBN varchar(30),
	titulo_original nvarchar(100),
	ID_edicao int
);

create table Autor_Livro (
	ID int identity(1,1) primary key,
	ID_livro int,
	ID_autor int
);

create table Genero_Livro (
	ID int identity(1,1) primary key,
	ID_livro int,
	ID_genero int
);