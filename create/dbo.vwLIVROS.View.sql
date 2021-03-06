USE [livraria]
GO
/****** Object:  View [dbo].[vwLIVROS]    Script Date: 07/03/2022 11:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter view [dbo].[vwLIVROS] as

select e.tit_edicao, l.titulo_original, a.nome
from edicao e
left join livro l on l.ID = e.id_livro
left join Autor_Livro al on al.ID_livro = l.id
left join autor a on a.id = al.id_autor
--order by a.nome
GO
