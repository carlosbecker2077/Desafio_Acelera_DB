USE [livraria]
GO
/****** Object:  UserDefinedFunction [dbo].[fnPrecoDesconto]    Script Date: 07/03/2022 11:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fnPrecoDesconto]
(@perc_desconto int)
returns table
as return
(
select 
	case
		when @perc_desconto >= 10 then preco - (preco * CONCAT('0.', @perc_desconto))
		when @perc_desconto < 10 then preco - (preco * CONCAT('0.0', @perc_desconto))
	end preco_com_desconto
from edicao e
)
GO
