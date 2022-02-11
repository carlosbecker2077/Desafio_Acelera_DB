USE [livraria]
GO
/****** Object:  View [dbo].[vwEST_LIVROS]    Script Date: 11/02/2022 10:33:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vwEST_LIVROS] as
select l.titulo_original, sum(e.qtde_estoque) estoque_total
from livro l
left join edicao e on e.id_livro = l.id
left join Autor_Livro al on al.ID_livro = l.ID
left join autor a on a.ID = al.ID_autor
group by l.titulo_original
GO
