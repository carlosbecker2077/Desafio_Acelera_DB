USE [livraria]
GO
/****** Object:  StoredProcedure [dbo].[spDelete_Pais]    Script Date: 07/03/2022 11:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spDelete_Pais]
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
GO
