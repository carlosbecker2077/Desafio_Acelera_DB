USE [livraria]
GO
/****** Object:  UserDefinedFunction [dbo].[fnIdadeAutor]    Script Date: 07/03/2022 11:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[fnIdadeAutor]
(@dtnasc date)
returns int
as
begin
	declare @idade int
	select @idade = DATEDIFF(year,@dtnasc, convert(date, getdate()))
	return @idade
end

GO
