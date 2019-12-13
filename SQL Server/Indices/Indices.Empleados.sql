﻿USE [Che_Dev]
GO
/****** Object:  Schema [Indices]    Script Date: 12/12/2019 14:11:13 ******/
CREATE SCHEMA [Indices]
GO
/****** Object:  Table [Indices].[Empleados]    Script Date: 12/12/2019 14:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Indices].[Empleados](
	[EmpleadoID] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido] [nvarchar](100) NOT NULL,
	[Ciudad] [nvarchar](50) NULL,
	[Pais] [nvarchar](50) NULL,
	[Email] [nvarchar](200) NULL,
	[TipoEmpleado] [char](1) NULL,
	[Salario] [money] NULL
) ON [PRIMARY]
GO
INSERT [Indices].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Ciudad], [Pais], [Email], [TipoEmpleado], [Salario]) VALUES (14, N'Massa Pharetra Id Mattis', N'Faucibus. Ut id nulla ac sapien suscipit tristique ac volutpat risus.Phasellus vitae.', N'Imperdiet Ex Etiam Cursus', N'Ante Ipsumprimis In Faucibus', N'gricelda.luebbers@aaab.com', N'x', 37.0000)
INSERT [Indices].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Ciudad], [Pais], [Email], [TipoEmpleado], [Salario]) VALUES (68, N'Ut Id Nulla Ac', N'Primis in faucibus. Ut id nulla ac sapien suscipit tristique ac volutpat risus.Phasellus.', N'Lorem Sit Amet Imperdiet', N'Faucibus Orci Luctus Et', N'dean.bollich@aaac.com', N'x', 87.0000)
INSERT [Indices].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Ciudad], [Pais], [Email], [TipoEmpleado], [Salario]) VALUES (72, N'In Massa Pharetra Id', N'Rhoncus.Cras vulputate porttitor ligula. Nam semper diam suscipit elementum sodales. Proin sit amet ', N'Quis Consectetur Mi Venenatis', N'Eu Lorem Commodo Ullamcorperinterdum', N'milo.manoni@aaad.com', N'x', 61.0000)
INSERT [Indices].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Ciudad], [Pais], [Email], [TipoEmpleado], [Salario]) VALUES (92, N'Mattis Risus Rhoncuscras Vulputate', N'Venenatis nec. Donec convallis sollicitudin elementum. Nulla facilisi. In posuere blandit leoeget ma', N'Tincidunt Vestibulum Ante Ipsumprimis', N'Nulla Placerat Iaculis Aliquam', N'laurice.karl@aaae.com', N'x', 59.0000)
INSERT [Indices].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Ciudad], [Pais], [Email], [TipoEmpleado], [Salario]) VALUES (73, N'Porttitor Ligula Nam Semper', N'Sit amet massa eu lorem commodo ullamcorper.Interdum et malesuada fames ac ante ipsum.', N'Porttitor Ligula Nam Semper', N'Suscipit Tristique Ac Volutpat', N'august.rupel@aaaf.com', N'x', 49.0000)
INSERT [Indices].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Ciudad], [Pais], [Email], [TipoEmpleado], [Salario]) VALUES (30, N'Mi Venenatis Nec Donec', N'Sapien suscipit tristique ac volutpat risus.Phasellus vitae ligula commodo, dictum lorem sit amet, i', N'Proin Sit Amet Massa', N'Luctus Et Ultrices Posuere', N'salome.guisti@aaag.com', N'x', 47.0000)
INSERT [Indices].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Ciudad], [Pais], [Email], [TipoEmpleado], [Salario]) VALUES (49, N'In Faucibus Ut Id', N'Etiam cursus porttitor tincidunt. Vestibulum ante ipsumprimis in faucibus orci luctus et ultrices po', N'Suscipit Elementum Sodales Proin', N'Tristique Ac Volutpat Risusphasellus', N'lovie.ritacco@aaah.com', N'x', 64.0000)
INSERT [Indices].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Ciudad], [Pais], [Email], [TipoEmpleado], [Salario]) VALUES (84, N'Ligula Commodo Dictum Lorem', N'Elementum sodales. Proin sit amet massa eu lorem commodo ullamcorper.Interdum et malesuada fames ac ', N'Commodo Dictum Lorem Sit', N'Ex Etiam Cursus Porttitor', N'chaya.greczkowski@aaai.com', N'x', 86.0000)
INSERT [Indices].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Ciudad], [Pais], [Email], [TipoEmpleado], [Salario]) VALUES (82, N'Et Ultrices Posuere Cubilia', N'Dictum lorem sit amet, imperdiet ex.', N'Iaculis Aliquam Vestibulum Lacinia', N'Sapien Suscipit Tristique Ac', N'twila.coolbeth@aaaj.com', N'x', 96.0000)
INSERT [Indices].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Ciudad], [Pais], [Email], [TipoEmpleado], [Salario]) VALUES (34, N'Pellentesque Proin Viverra Lacinialectus', N'Vulputate porttitor ligula. Nam semper diam suscipit elementum sodales. Proin sit amet massa eu lore', N'Imperdiet Ex Etiam Cursus', N'Ipsum Primis In Faucibus', N'carlotta.achenbach@aaak.com', N'x', 47.0000)
INSERT [Indices].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Ciudad], [Pais], [Email], [TipoEmpleado], [Salario]) VALUES (37, N'Pellentesque Proin Viverra Lacinialectus', N'Faucibus. Ut id nulla ac sapien suscipit tristique ac volutpat risus.Phasellus vitae ligula commodo,', N'Suscipit Tristique Ac Volutpat', N'Risus Rhoncuscras Vulputate Porttitor', N'jeraldine.audet@aaal.com', N'x', 47.0000)
INSERT [Indices].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Ciudad], [Pais], [Email], [TipoEmpleado], [Salario]) VALUES (59, N'Massa Pharetra Id Mattis', N'Tristique ac volutpat risus.Phasellus vitae ligula commodo, dictum lorem sit amet, imperdiet ex. Eti', N'Vitae Ligula Commodo Dictum', N'Orci Luctus Et Ultrices', N'august.arouri@aaam.com', N'x', 81.0000)
INSERT [Indices].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Ciudad], [Pais], [Email], [TipoEmpleado], [Salario]) VALUES (5, N'In Faucibus Ut Id', N'Id mattis risus rhoncus.Cras vulputate porttitor ligula. Nam semper diam suscipit elementum sodales.', N'Curae; Proin Vulputate Placerat', N'Sapien Suscipit Tristique Ac', N'ward.stepney@aaan.com', N'x', 27.0000)
INSERT [Indices].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Ciudad], [Pais], [Email], [TipoEmpleado], [Salario]) VALUES (13, N'Convallis Sollicitudin Elementum Nulla', N'Placerat pellentesque. Proin viverra lacinialectus, quis consectetur mi venenatis nec. Donec convall', N'Placerat Iaculis Aliquam Vestibulum', N'Imperdiet Ex Etiam Cursus', N'luana.berends@aaap.com', N'x', 63.0000)
INSERT [Indices].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Ciudad], [Pais], [Email], [TipoEmpleado], [Salario]) VALUES (19, N'Etiam Cursus Porttitor Tincidunt', N'Sodales. Proin sit amet massa eu lorem commodo ullamcorper.Interdum et malesuada fames ac ante ipsum', N'Ac Sapien Suscipit Tristique', N'Et Malesuada Fames Ac', N'lecia.alvino@aaaq.com', N'x', 37.0000)
INSERT [Indices].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Ciudad], [Pais], [Email], [TipoEmpleado], [Salario]) VALUES (41, N'Sit Amet Massa Eu', N'Risus rhoncus.Cras vulputate porttitor ligula. Nam semper diam suscipit elementum sodales. Proin sit', N'Amet Imperdiet Ex Etiam', N'Amet Massa Eu Lorem', N'luis.pothoven@aaaw.com', N'x', 44.0000)
INSERT [Indices].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Ciudad], [Pais], [Email], [TipoEmpleado], [Salario]) VALUES (50, N'Lectus Nulla Placerat Iaculis', N'Primis in faucibus. Ut id nulla ac sapien suscipit tristique ac.', N'Ipsum Primis In Faucibus', N'Rhoncuscras Vulputate Porttitor Ligula', N'carolyne.centore@aaay.com', N'x', 33.0000)
INSERT [Indices].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Ciudad], [Pais], [Email], [TipoEmpleado], [Salario]) VALUES (48, N'Vestibulum Eget Rhoncus Nonmolestie', N'Et malesuada fames ac ante ipsum primis in faucibus. Ut.', N'Lacinialectus Quis Consectetur Mi', N'Consectetur Mi Venenatis Nec', N'shira.arocho@aaa4.com', N'x', 73.0000)
INSERT [Indices].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Ciudad], [Pais], [Email], [TipoEmpleado], [Salario]) VALUES (29, N'Amet Imperdiet Ex Etiam', N'Proin sit amet massa eu lorem commodo ullamcorper.Interdum et malesuada fames ac ante ipsum primis i', N'Lectus Nulla Placerat Iaculis', N'Ligula Nam Semper Diam', N'joleen.himmelmann@aaar.com', N'x', 91.0000)
INSERT [Indices].[Empleados] ([EmpleadoID], [Nombre], [Apellido], [Ciudad], [Pais], [Email], [TipoEmpleado], [Salario]) VALUES (8, N'Lacinialectus Quis Consectetur Mi', N'Vestibulum lacinia arcu in massa pharetra, id mattis risus rhoncus.Cras vulputate porttitor ligula. ', N'Suscipit Tristique Ac Volutpat', N'Vestibulum Ante Ipsumprimis In', N'monty.kinnamon@aaas.com', N'x', 54.0000)
GO