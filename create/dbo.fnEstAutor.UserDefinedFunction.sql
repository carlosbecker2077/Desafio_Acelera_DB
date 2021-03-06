USE [livraria]
GO
/****** Object:  UserDefinedFunction [dbo].[fnEstAutor]    Script Date: 07/03/2022 11:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[fnEstAutor]
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

GO
