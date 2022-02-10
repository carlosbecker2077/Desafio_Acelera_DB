USE [livraria]
GO
/****** Object:  Table [dbo].[Remissiva]    Script Date: 10/02/2022 13:31:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Remissiva](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[nome_remissiva] [nvarchar](100) NOT NULL,
	[id_autor] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Remissiva]  WITH CHECK ADD FOREIGN KEY([id_autor])
REFERENCES [dbo].[Autor] ([ID])
GO
