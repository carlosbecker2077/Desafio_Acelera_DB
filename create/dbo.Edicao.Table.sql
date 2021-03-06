USE [livraria]
GO
/****** Object:  Table [dbo].[Edicao]    Script Date: 07/03/2022 11:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Edicao](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[num_edicao] [int] NOT NULL,
	[tit_edicao] [nvarchar](100) NOT NULL,
	[dt_public] [date] NULL,
	[num_paginas] [int] NOT NULL,
	[local_public] [varchar](100) NULL,
	[idioma] [varchar](30) NULL,
	[qtde_estoque] [decimal](18, 3) NOT NULL,
	[preco] [decimal](18, 3) NOT NULL,
	[id_livro] [int] NULL,
	[id_editora] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
