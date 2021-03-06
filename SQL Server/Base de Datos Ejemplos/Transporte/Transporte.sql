
/****** Object:  Schema [trans]    Script Date: 12/06/2020 10:05:45 ******/
CREATE SCHEMA [trans]
GO
/****** Object:  UserDefinedFunction [dbo].[ContarPaquetesenEnvio]    Script Date: 12/06/2020 10:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Che Kulhan
-- Create date: 8/6/2020
-- Description:	Contar el numero de paquetes en cada envio por fecha
-- =============================================
CREATE FUNCTION [dbo].[ContarPaquetesenEnvio] 
(
	-- Add the parameters for the function here
	@FechaDeEnvio datetime
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result int

	-- Add the T-SQL statements to compute the return value here
	SELECT @Result = COUNT(IDEnvio)
	FROM Trans.Envios
	WHERE FechadeEnvio = @FechadeEnvio

	-- Return the result of the function
	RETURN @Result

END
GO
/****** Object:  Table [trans].[Transportes]    Script Date: 12/06/2020 10:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [trans].[Transportes](
	[IDTransporte] [int] NOT NULL,
	[Nombre] [varchar](200) NULL,
	[TipodeTransporte] [tinyint] NULL,
 CONSTRAINT [PK_Transportes] PRIMARY KEY CLUSTERED 
(
	[IDTransporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [trans].[TipoTransporte]    Script Date: 12/06/2020 10:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [trans].[TipoTransporte](
	[IDTipoTransporte] [tinyint] NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_TipoTransporte] PRIMARY KEY CLUSTERED 
(
	[IDTipoTransporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [trans].[Envios]    Script Date: 12/06/2020 10:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [trans].[Envios](
	[IDEnvio] [bigint] IDENTITY(1,1) NOT NULL,
	[FechadeEnvio] [datetime] NULL,
	[Origin] [varchar](100) NULL,
	[Destino] [varchar](100) NULL,
	[IDPaquete] [bigint] NULL,
	[IDTransporte] [int] NULL,
 CONSTRAINT [PK_Envios] PRIMARY KEY CLUSTERED 
(
	[IDEnvio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [trans].[vista_TransportesEnvios]    Script Date: 12/06/2020 10:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [trans].[vista_TransportesEnvios]
AS
SELECT         trans.Transportes.IDTransporte, trans.Transportes.Nombre, trans.TipoTransporte.Descripcion, trans.Envios.FechadeEnvio, trans.Envios.Origin, trans.Envios.Destino, trans.Envios.IDPaquete
FROM            trans.Transportes INNER JOIN
                      trans.TipoTransporte ON trans.Transportes.TipodeTransporte = trans.TipoTransporte.IDTipoTransporte RIGHT OUTER JOIN
                      trans.Envios ON trans.Transportes.IDTransporte = trans.Envios.IDTransporte
GO
/****** Object:  Table [trans].[Clientes]    Script Date: 12/06/2020 10:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [trans].[Clientes](
	[IDCliente] [int] IDENTITY(1,1) NOT NULL,
	[Apellido] [varchar](200) NULL,
	[Nombre] [varchar](200) NULL,
	[Email] [varchar](200) NULL,
	[Dirrecion] [varchar](500) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[IDCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [trans].[Paquetes]    Script Date: 12/06/2020 10:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [trans].[Paquetes](
	[IDPaquuete] [bigint] IDENTITY(1,1) NOT NULL,
	[Peso] [decimal](5, 2) NULL,
	[Altura] [decimal](5, 2) NULL,
	[Contenido] [varchar](500) NULL,
	[IDCliente] [int] NOT NULL,
 CONSTRAINT [PK_Paquetes] PRIMARY KEY CLUSTERED 
(
	[IDPaquuete] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [trans].[Clientes] ON 

INSERT [trans].[Clientes] ([IDCliente], [Apellido], [Nombre], [Email], [Dirrecion]) VALUES (1, N'Smith', N'Jon', N'jon@gmail.com', N'San Sebastián')
INSERT [trans].[Clientes] ([IDCliente], [Apellido], [Nombre], [Email], [Dirrecion]) VALUES (2, N'Fernandez', N'Maria', N'maria@hotmail.com', N'Bilbao')
INSERT [trans].[Clientes] ([IDCliente], [Apellido], [Nombre], [Email], [Dirrecion]) VALUES (3, N'Nadal', N'Rafa', N'rafe@outlook.com', N'Mallorca')
SET IDENTITY_INSERT [trans].[Clientes] OFF
SET IDENTITY_INSERT [trans].[Envios] ON 

INSERT [trans].[Envios] ([IDEnvio], [FechadeEnvio], [Origin], [Destino], [IDPaquete], [IDTransporte]) VALUES (1, CAST(N'2020-06-12T00:00:00.000' AS DateTime), N'Donostia', N'Madrid', 1, 3)
INSERT [trans].[Envios] ([IDEnvio], [FechadeEnvio], [Origin], [Destino], [IDPaquete], [IDTransporte]) VALUES (2, CAST(N'2021-05-07T00:00:00.000' AS DateTime), N'Madrid', N'Miami', 2, 1)
INSERT [trans].[Envios] ([IDEnvio], [FechadeEnvio], [Origin], [Destino], [IDPaquete], [IDTransporte]) VALUES (3, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Bilbao', N'Londres', 5, 3)
INSERT [trans].[Envios] ([IDEnvio], [FechadeEnvio], [Origin], [Destino], [IDPaquete], [IDTransporte]) VALUES (4, CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'Bilbao', N'Londres', 7, 3)
SET IDENTITY_INSERT [trans].[Envios] OFF
SET IDENTITY_INSERT [trans].[Paquetes] ON 

INSERT [trans].[Paquetes] ([IDPaquuete], [Peso], [Altura], [Contenido], [IDCliente]) VALUES (1, CAST(21.50 AS Decimal(5, 2)), NULL, N'Raquetas de tenis', 3)
INSERT [trans].[Paquetes] ([IDPaquuete], [Peso], [Altura], [Contenido], [IDCliente]) VALUES (2, CAST(10.76 AS Decimal(5, 2)), CAST(5.00 AS Decimal(5, 2)), N'Libros', 1)
INSERT [trans].[Paquetes] ([IDPaquuete], [Peso], [Altura], [Contenido], [IDCliente]) VALUES (5, CAST(200.00 AS Decimal(5, 2)), CAST(300.00 AS Decimal(5, 2)), N'Coche', 2)
INSERT [trans].[Paquetes] ([IDPaquuete], [Peso], [Altura], [Contenido], [IDCliente]) VALUES (7, CAST(19.40 AS Decimal(5, 2)), NULL, N'Cintas de musica', 2)
SET IDENTITY_INSERT [trans].[Paquetes] OFF
INSERT [trans].[TipoTransporte] ([IDTipoTransporte], [Descripcion]) VALUES (1, N'Avion')
INSERT [trans].[TipoTransporte] ([IDTipoTransporte], [Descripcion]) VALUES (2, N'Furgoneta')
INSERT [trans].[TipoTransporte] ([IDTipoTransporte], [Descripcion]) VALUES (3, N'Bicicleta')
INSERT [trans].[TipoTransporte] ([IDTipoTransporte], [Descripcion]) VALUES (4, N'Camión')
INSERT [trans].[TipoTransporte] ([IDTipoTransporte], [Descripcion]) VALUES (5, N'Coche')
INSERT [trans].[TipoTransporte] ([IDTipoTransporte], [Descripcion]) VALUES (6, N'Barco')
INSERT [trans].[TipoTransporte] ([IDTipoTransporte], [Descripcion]) VALUES (7, N'Tren')
INSERT [trans].[Transportes] ([IDTransporte], [Nombre], [TipodeTransporte]) VALUES (1, N'Ryan Air', 1)
INSERT [trans].[Transportes] ([IDTransporte], [Nombre], [TipodeTransporte]) VALUES (2, N'Fedex Air', 1)
INSERT [trans].[Transportes] ([IDTransporte], [Nombre], [TipodeTransporte]) VALUES (3, N'Jon Trucks', 4)
INSERT [trans].[Transportes] ([IDTransporte], [Nombre], [TipodeTransporte]) VALUES (4, N'BMW Transports', 5)
ALTER TABLE [trans].[Envios]  WITH CHECK ADD  CONSTRAINT [FK_Envios_Paquetes] FOREIGN KEY([IDPaquete])
REFERENCES [trans].[Paquetes] ([IDPaquuete])
GO
ALTER TABLE [trans].[Envios] CHECK CONSTRAINT [FK_Envios_Paquetes]
GO
ALTER TABLE [trans].[Envios]  WITH CHECK ADD  CONSTRAINT [FK_Envios_Transportes] FOREIGN KEY([IDTransporte])
REFERENCES [trans].[Transportes] ([IDTransporte])
GO
ALTER TABLE [trans].[Envios] CHECK CONSTRAINT [FK_Envios_Transportes]
GO
ALTER TABLE [trans].[Paquetes]  WITH CHECK ADD  CONSTRAINT [FK_Paquetes_Clientes] FOREIGN KEY([IDCliente])
REFERENCES [trans].[Clientes] ([IDCliente])
GO
ALTER TABLE [trans].[Paquetes] CHECK CONSTRAINT [FK_Paquetes_Clientes]
GO
ALTER TABLE [trans].[Transportes]  WITH CHECK ADD  CONSTRAINT [FK_Transportes_TipoTransporte] FOREIGN KEY([TipodeTransporte])
REFERENCES [trans].[TipoTransporte] ([IDTipoTransporte])
GO
ALTER TABLE [trans].[Transportes] CHECK CONSTRAINT [FK_Transportes_TipoTransporte]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -192
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Transportes (trans)"
            Begin Extent = 
               Top = 16
               Left = 46
               Bottom = 149
               Right = 295
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TipoTransporte (trans)"
            Begin Extent = 
               Top = 17
               Left = 547
               Bottom = 128
               Right = 796
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Envios (trans)"
            Begin Extent = 
               Top = 182
               Left = 181
               Bottom = 337
               Right = 430
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'trans', @level1type=N'VIEW',@level1name=N'vista_TransportesEnvios'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'trans', @level1type=N'VIEW',@level1name=N'vista_TransportesEnvios'
GO
