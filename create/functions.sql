--funções
--funcao para descobrir a idade do autor - scalar
create function fnIdadeAutor
(@dtnasc date)
returns int
as
begin
	declare @idade int
	select @idade = DATEDIFF(year,@dtnasc, convert(date, getdate()))
	return @idade
end

select nome, dt_nascimento, dbo.fnIdadeAutor(dt_nascimento) idade
from autor

--uma funcao que traz a soma do estoque de livros por autor - table valued
create function fnEstAutor --teria sido mais bem implementada em uma view
(@ID_AUTOR_in int)
returns table
as return
(
select 
	a.id id_autor
	, a.nome nome_autor
	, e.id_livro
	, e.tit_edicao
	, sum(e.qtde_estoque) tot_estoque
from edicao e
left join livro l on l.id = e.id_livro
left join autor_livro al on al.id_livro = l.id
left join autor a on a.id = al.id_autor
where a.id = @ID_AUTOR_IN
group by a.id, a.nome, e.id_livro, e.tit_edicao 
)
go
--select * from fnEstAutor(2) 

--funcao para visualizar como ficaria o preco com desconto
create function fnPrecoDesconto
(@perc_desconto int)
returns table
as return
(
select 
	case
		when @perc_desconto >= 10 then preco - (preco * CONCAT('0.', @perc_desconto))
		when @perc_desconto < 10 then preco - (preco * CONCAT('0.0', @perc_desconto))
	end preco_com_desconto
from edicao e
)

select * from fnPrecoDesconto(10)
select preco from edicao
