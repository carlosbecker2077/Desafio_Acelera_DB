USE [livraria]
GO
/****** Object:  Table [dbo].[Editora]    Script Date: 07/03/2022 11:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Editora](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](100) NOT NULL,
	[fone1] [varchar](30) NULL,
	[fone2] [varchar](30) NULL,
	[email] [varchar](100) NULL,
	[pessoa_contato] [varchar](30) NULL,
	[endereco] [varchar](100) NULL,
	[numero_end] [varchar](30) NULL,
	[complemento_end] [varchar](100) NULL,
	[ID_pais] [int] NULL,
	[UF] [char](2) NULL,
	[ID_Cidade] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Editora]  WITH CHECK ADD FOREIGN KEY([ID_Cidade])
REFERENCES [dbo].[Cidade] ([ID])
GO
ALTER TABLE [dbo].[Editora]  WITH CHECK ADD FOREIGN KEY([ID_pais])
REFERENCES [dbo].[Pais] ([ID])
GO
ALTER TABLE [dbo].[Editora]  WITH CHECK ADD FOREIGN KEY([UF])
REFERENCES [dbo].[UF] ([UF])
GO
