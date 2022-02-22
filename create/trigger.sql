--trigger
--trigger de histórico de generos
--ele vai salvar em uma tabela o genero que foi excluido


create table Genero_Hist(
id int primary key identity(1,1),
id_genero int,
nome_genero varchar(100)
)

create trigger trHist_Genero
on Genero
after delete
as
begin
	declare @id_genero int, @nome_genero varchar(100)
	set @id_genero = (select ID from deleted)
	set @nome_genero = (select nome_genero from deleted)

	insert into Genero_Hist(id_genero, nome_genero) values (@id_genero, @nome_genero)

end