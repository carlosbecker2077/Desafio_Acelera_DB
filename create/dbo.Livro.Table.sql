USE [livraria]
GO
/****** Object:  Table [dbo].[Livro]    Script Date: 07/03/2022 11:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Livro](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GTIN_EAN] [varchar](30) NOT NULL,
	[ISBN] [varchar](30) NULL,
	[titulo_original] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
