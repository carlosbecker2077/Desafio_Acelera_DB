--consultas para mostrar na apresentação

--consulta 1
select a.nome, l.titulo_original, e.ISBN
from Autor_Livro al
left join Autor a on a.id = al.ID_autor
left join Livro l on l.id = al.ID_livro
left join Edicao e on e.ID_livro = l.ID
where a.ID in (3, 4, 7) and l.titulo_original like '%ation%'
order by a.nome

--consulta 2
select g.ID, g.nome_genero
from Genero g
union
select gh.ID_genero, gh.nome_genero
from Genero_Hist gh
order by g.nome_genero


--proc 1
select e.ID, e.tit_edicao, e.preco
from edicao e

begin tran
exec spReajusteEstoqueFull 10

select e.ID, e.tit_edicao, e.preco
from edicao e

rollback
--commit

--proc 2
select l.titulo_original, gl.id_genero, g.nome_genero
from Genero_Livro gl
left join Genero g on g.ID = gl.ID_genero
left join Livro l on l.ID = gl.ID_livro

begin tran
exec spDelete_Genero 2

select l.titulo_original, gl.id_genero, g.nome_genero
from Genero_Livro gl
left join Genero g on g.ID = gl.ID_genero
left join Livro l on l.ID = gl.ID_livro

select *
from Genero_Hist

rollback
--commit

--func 1
select nome, dt_nascimento, dbo.fnIdadeAutor(dt_nascimento) idade
from autor

--func 2
select preco from edicao
select * from fnPrecoDesconto(10)

--vw1
select * from vwEST_LIVROS

--vw2
select * from vwLIVROS

