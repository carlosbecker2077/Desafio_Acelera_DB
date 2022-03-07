--consultas
--where, order by, case, IN, Between, NOT, AND, OR, >, <>, >=, <=, =, like, Top, Distinct
--Inner Left

--consulta com where
select nome
from autor
where id = 12

--consulta com order by
select *
from edicao
order by preco desc

-- consulta com case
select 
case
	when qtde_estoque = 0 then 'Sem Estoque'
	else 'Tem estoque'
end
from edicao
order by qtde_estoque

-- consulta com in
select *
from pais
where id in (34, 56, 87, 191)

--consulta com between
select id, tit_edicao, dt_public
from edicao
where dt_public between '2000-01-01' and '2020-01-01'

-- consulta com NOT
select id, tit_edicao, dt_public
from edicao
where dt_public not between '2000-01-01' and '2020-01-01'

--consulta com AND e >, <
select *
from edicao
where qtde_estoque > 0 and dt_public < '2020-01-01'

-- consulta com OR >=, <=
select *
from editora
where id_pais >= 40 or id_cidade <= 50

--consulta com TOP, =
select top 5 *
from Genero_Livro
where id_genero = 7

--consulta com like e distinct
select distinct l.tit_edicao
from edicao l
where l.tit_edicao like 'Harry%'

--consulta com Left join
select a.nome, l.titulo_original, e.ISBN
from Autor_Livro al
left join autor a on a.ID = al.ID_autor
left join livro l on l.ID = al.ID_livro
left join edicao e on e.id_livro = l.id
where a.id in (3, 4, 7) and titulo_original like '%ation%' 
order by e.ISBN