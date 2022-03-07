USE [livraria]
GO
/****** Object:  StoredProcedure [dbo].[spDelete_Genero]    Script Date: 07/03/2022 11:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spDelete_Genero]
(@id_Genero_del int) 
as
begin
	update Genero_Livro
	set ID_genero = 25 --genero apagado por proc
	where ID_genero = @id_Genero_del
	
	delete Genero
	where id = @id_genero_del
		
end
GO
