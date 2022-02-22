--ideias para procedure
--procedure que ajusta o preço de todos livros
create proc spReajusteEstoqueFull
(@perc_reajuste int)
as
begin
	UPDATE edicao set preco =
	case 
		when @perc_reajuste >= 10 then (preco * concat('1.', @perc_reajuste)) --1.10 10%
		when @perc_reajuste < 10 then (preco * concat('1.0', @perc_reajuste)) --1.05 5%
	end
end

--begin tran
--execute spReajusteEstoqueFull 10
--select preco from edicao
--rollback

--ajusta o estoque por editora
create proc spReajusteEstoqueEditora
(@perc_reajuste int, @id_editora int)
as
begin
	UPDATE edicao set preco =
	case 
		when @perc_reajuste >= 10 then (preco * concat('1.', @perc_reajuste)) --1.10 10%
		when @perc_reajuste < 10 then (preco * concat('1.0', @perc_reajuste)) --1.05 5%
	end
	where id_editora = @id_editora
end

begin tran
exec spReajusteEstoqueEditora 5, 2
go
select preco from edicao
where id_editora = 2
rollback

--procedure que deleta o genero seta o id_genero no livro pra um genero 'APAGADO POR PROCEDURE'
--dispara o trigger hist_genero
create proc spDelete_Genero
(@id_Genero_del int) 
as
begin
	update Genero_Livro
	set ID_genero = 25 --genero apagado por proc
	where ID_genero = @id_Genero_del
	
	delete Genero
	where id = @id_genero_del
		
end

select * from Genero_Livro where ID_genero = 25
insert into Livro (titulo_original, ISBN, GTIN_EAN) values ('Livro de tecnologia', '44545567800876', '99898656')
insert into Genero_Livro (ID_genero, ID_livro) values (19, 29)

execute spDelete_Genero 19

--procedure que deleta o pais e seta o pais no autor e na editora = a um pais que chama 'APAGADO POR PROCEDURE'
create proc spDelete_Pais
(@id_Pais_del int) 
as
begin
	update Editora
	set ID_pais = 246 -- apagado por proc
	where id_pais = @id_Pais_del

	update Autor
	set ID_pais = 246 -- apagado por proc
	where id_pais = @id_Pais_del
	
	delete Pais
	where id = @id_Pais_del
		
end

select * from pais --246 apagado por proc

insert into Autor (nome, id_pais) values ('Autor de teste para proc', 14)
go
insert into Editora (nome, id_pais) values ('Editora de teste para proc', 14)
go

select * from autor where id_pais = 14
select * from Editora where id_pais = 14

exec spDelete_Pais 14

select * from autor where id_pais = 246
select * from Editora where id_pais = 246

