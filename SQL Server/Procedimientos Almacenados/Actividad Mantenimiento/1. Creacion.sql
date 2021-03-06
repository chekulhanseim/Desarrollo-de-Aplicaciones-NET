USE [XXXXXXX BASE DE DATOS]
GO

CREATE SCHEMA Mantenimiento
GO

CREATE TABLE [Mantenimiento].[productos](
	[CodigoProducto] [char](5) NOT NULL,
	[Descripcion] [varchar](60) NULL,
	[PrecioReferencia] [smallmoney] NULL,
	[TipoProducto] [char](3) NULL,
 CONSTRAINT [PK_productos] PRIMARY KEY CLUSTERED 
(
	[CodigoProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Mantenimiento].[TiposEquipos]    Script Date: 11/12/2017 20:00:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Mantenimiento].[TiposEquipos](
	[CodigoTipo] [char](3) NOT NULL,
	[Descripcion] [varchar](60) NULL,
 CONSTRAINT [PK_TiposEquipos] PRIMARY KEY CLUSTERED 
(
	[CodigoTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [Mantenimiento].[TiposEquipos] ([CodigoTipo], [Descripcion]) VALUES (N'CPU', N'Procesadores')
INSERT [Mantenimiento].[TiposEquipos] ([CodigoTipo], [Descripcion]) VALUES (N'ESC', N'Escaners')
INSERT [Mantenimiento].[TiposEquipos] ([CodigoTipo], [Descripcion]) VALUES (N'IMP', N'Impresoras')
INSERT [Mantenimiento].[TiposEquipos] ([CodigoTipo], [Descripcion]) VALUES (N'PRO', N'Proyectores')
INSERT [Mantenimiento].[TiposEquipos] ([CodigoTipo], [Descripcion]) VALUES (N'RAM', N'Memorias')
ALTER TABLE [Mantenimiento].[productos]  WITH CHECK ADD  CONSTRAINT [FK_productos_TiposEquipos] FOREIGN KEY([TipoProducto])
REFERENCES [Mantenimiento].[TiposEquipos] ([CodigoTipo])
GO
ALTER TABLE [Mantenimiento].[productos] CHECK CONSTRAINT [FK_productos_TiposEquipos]
GO
