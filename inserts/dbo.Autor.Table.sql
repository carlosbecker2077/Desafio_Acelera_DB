USE [livraria]
GO
SET IDENTITY_INSERT [dbo].[Autor] ON 

INSERT [dbo].[Autor] ([ID], [nome], [dt_nascimento], [obs_bio], [id_pais]) VALUES (1, N'Philip K. Dick', CAST(N'1949-06-28' AS Date), N'autor americano conhecido por livros de ficçao cientifica', 74)
INSERT [dbo].[Autor] ([ID], [nome], [dt_nascimento], [obs_bio], [id_pais]) VALUES (2, N'Willian Gibson', CAST(N'1948-03-17' AS Date), N'autor canadense conhecido pela serie Sprawl', 74)
INSERT [dbo].[Autor] ([ID], [nome], [dt_nascimento], [obs_bio], [id_pais]) VALUES (3, N'Isaac Asimov', CAST(N'1920-04-06' AS Date), N'autor russo conhecido por livros de ficçao cientifica', 74)
INSERT [dbo].[Autor] ([ID], [nome], [dt_nascimento], [obs_bio], [id_pais]) VALUES (4, N'George Orwell', CAST(N'1903-06-25' AS Date), N'autor inglês conhecido por escrever 1984', 185)
INSERT [dbo].[Autor] ([ID], [nome], [dt_nascimento], [obs_bio], [id_pais]) VALUES (5, N'Robert Spencer', CAST(N'1962-08-28' AS Date), N'autor americano conhecido por ser anti-islam', 74)
INSERT [dbo].[Autor] ([ID], [nome], [dt_nascimento], [obs_bio], [id_pais]) VALUES (6, N'G. K. Chesterton', CAST(N'1874-05-29' AS Date), N'autor ingles e filosofo conhecido por ensaios sobre o mundo moderno', 185)
INSERT [dbo].[Autor] ([ID], [nome], [dt_nascimento], [obs_bio], [id_pais]) VALUES (7, N'Ion Mihai Pacepa', CAST(N'1928-10-28' AS Date), N'ex-general tres estrelas da Securitate que desertou da uniao sovietica', 189)
INSERT [dbo].[Autor] ([ID], [nome], [dt_nascimento], [obs_bio], [id_pais]) VALUES (8, N'Ronald J. Rychlak', CAST(N'1957-09-23' AS Date), N'Advogado e jurista americano', 74)
INSERT [dbo].[Autor] ([ID], [nome], [dt_nascimento], [obs_bio], [id_pais]) VALUES (9, N'J. K. Rowling', CAST(N'1980-06-02' AS Date), N'autora inglesa conhecida por escrever a serie Harry Potter ', 185)
INSERT [dbo].[Autor] ([ID], [nome], [dt_nascimento], [obs_bio], [id_pais]) VALUES (10, N'Fernando Pessoa', CAST(N'1888-06-13' AS Date), N'um dos maiores nomes da poesia portuguesa, conhecido por seus heteronimos', 181)
INSERT [dbo].[Autor] ([ID], [nome], [dt_nascimento], [obs_bio], [id_pais]) VALUES (11, N'Akira Toriyama', CAST(N'1955-04-05' AS Date), N'autor japones conhecido pela serie dragon ball', 115)
INSERT [dbo].[Autor] ([ID], [nome], [dt_nascimento], [obs_bio], [id_pais]) VALUES (12, N'Fiodor Dostoievski', CAST(N'1821-11-11' AS Date), N'escritor e filosofo russo', 191)
INSERT [dbo].[Autor] ([ID], [nome], [dt_nascimento], [obs_bio], [id_pais]) VALUES (13, N'Autor de teste para proc', NULL, NULL, 246)
SET IDENTITY_INSERT [dbo].[Autor] OFF
