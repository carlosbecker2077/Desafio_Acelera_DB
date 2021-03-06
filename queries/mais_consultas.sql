--consultas simples
select top 10 * from genero

select SUBSTRING(cod_ibge,0,3)
from cidade

select nome from autor

select 
case
	when qtde_estoque = 0 then 'Sem Estoque'
	else 'Tem estoque'
end
from edicao
order by qtde_estoque

--consulta com filtro
select nome from autor
where nome like 'J%'

select id, nome_pais
from pais 
where nome_pais like '%Unidos%'

--consula com join
select a.nome, l.titulo_original, e.ISBN
from Autor_Livro al
left join autor a on a.ID = al.ID_autor
left join livro l on l.ID = al.ID_livro
left join edicao e on e.id_livro = l.id
where a.id in (3, 4, 7) and titulo_original like '%ation%' 
order by a.nome

select e.nome, ee.tit_edicao
from editora e
left join pais p on e.id_pais = p.ID
left join Edicao ee on ee.id_editora = e.id
where p.nome_pais = 'Brasil'

select l.titulo_original, sum(e.preco)
from Edicao e
left join livro l on l.id = e.id_livro
where len(l.titulo_original) > 11
group by titulo_original
having sum(e.preco) > 100

select top 5 a.nome, count(id_livro)
from Autor_Livro al
left join autor a on a.id = al.ID_autor
group by a.nome
order by count(id_livro) desc

select g.nome_genero, count(gl.id_genero)
from Genero_Livro gl
left join Genero g on g.ID = gl.ID_genero
left join Livro l on l.id = gl.ID_livro
left join edicao e on e.id_livro = l.id
where e.ISBN in ('22321', '22322', '22329', '99913')
group by nome_genero
order by count(gl.id_genero) desc

--order by a.nome

select * from vwLIVROS
order by nome

--union?
select g.ID, g.nome_genero
from Genero g
union
select gh.id_genero, gh.nome_genero
from Genero_Hist gh
order by g.nome_genero

select g.id, g.nome_genero
from genero g
left join genero_hist gh on gh.id_genero = g.ID
order by g.nome_genero

select * from Genero_Hist
select * from Genero