USE [livraria]
GO
/****** Object:  StoredProcedure [dbo].[spReajusteEstoqueFull]    Script Date: 07/03/2022 11:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spReajusteEstoqueFull]
(@perc_reajuste int)
as
begin
	UPDATE edicao set preco =
	case 
		when @perc_reajuste >= 10 then (preco * concat('1.', @perc_reajuste)) --1.10 10%
		when @perc_reajuste < 10 then (preco * concat('1.0', @perc_reajuste)) --1.05 5%
	end
end
GO
