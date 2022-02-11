USE [livraria]
GO
/****** Object:  View [dbo].[vwLIVROS]    Script Date: 11/02/2022 10:33:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vwLIVROS] as

select e.tit_edicao, l.titulo_original, a.nome, l.ISBN
from edicao e
left join livro l on l.ID = e.id_livro
left join Autor_Livro al on al.ID_livro = l.id
left join autor a on a.id = al.id_autor
--order by a.nome
GO
