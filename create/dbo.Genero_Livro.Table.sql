USE [livraria]
GO
/****** Object:  Table [dbo].[Genero_Livro]    Script Date: 07/03/2022 11:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genero_Livro](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_livro] [int] NOT NULL,
	[ID_genero] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Genero_Livro]  WITH CHECK ADD FOREIGN KEY([ID_genero])
REFERENCES [dbo].[Genero] ([ID])
GO
ALTER TABLE [dbo].[Genero_Livro]  WITH CHECK ADD FOREIGN KEY([ID_livro])
REFERENCES [dbo].[Livro] ([ID])
GO
