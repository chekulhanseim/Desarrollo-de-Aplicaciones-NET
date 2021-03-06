﻿USE [XXXXXXXXXXX]
GO
/****** Object:  Schema [Sales]    Script Date: 11/12/2019 10:13:17 ******/
CREATE SCHEMA [Sales]
GO
/****** Object:  Table [Sales].[Orders]    Script Date: 11/12/2019 10:13:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[Orders](
	[Ord_No] [int] IDENTITY(1,1) NOT NULL,
	[Purch_Amt] [money] NULL,
	[Ord_Date] [datetime] NULL,
	[Salesman_ID] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Ord_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Sales].[Salesman]    Script Date: 11/12/2019 10:13:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[Salesman](
	[Salesman_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Comission] [numeric](18, 2) NULL,
 CONSTRAINT [PK_Salesman] PRIMARY KEY CLUSTERED 
(
	[Salesman_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Sales].[Orders] ON 

INSERT [Sales].[Orders] ([Ord_No], [Purch_Amt], [Ord_Date], [Salesman_ID]) VALUES (1, 100.0000, CAST(N'2019-12-12T00:00:00.000' AS DateTime), 1)
INSERT [Sales].[Orders] ([Ord_No], [Purch_Amt], [Ord_Date], [Salesman_ID]) VALUES (2, 120.0000, CAST(N'2019-12-13T00:00:00.000' AS DateTime), 1)
INSERT [Sales].[Orders] ([Ord_No], [Purch_Amt], [Ord_Date], [Salesman_ID]) VALUES (3, 143.0000, CAST(N'2018-05-05T00:00:00.000' AS DateTime), 2)
INSERT [Sales].[Orders] ([Ord_No], [Purch_Amt], [Ord_Date], [Salesman_ID]) VALUES (4, 189.0000, CAST(N'2018-05-06T00:00:00.000' AS DateTime), 2)
INSERT [Sales].[Orders] ([Ord_No], [Purch_Amt], [Ord_Date], [Salesman_ID]) VALUES (5, 199.0000, CAST(N'2019-12-10T00:00:00.000' AS DateTime), 3)
SET IDENTITY_INSERT [Sales].[Orders] OFF
SET IDENTITY_INSERT [Sales].[Salesman] ON 

INSERT [Sales].[Salesman] ([Salesman_ID], [Name], [City], [Comission]) VALUES (1, N'James Hoog', N'New York', CAST(0.15 AS Numeric(18, 2)))
INSERT [Sales].[Salesman] ([Salesman_ID], [Name], [City], [Comission]) VALUES (2, N'Nail Knite', N'Paris', CAST(0.13 AS Numeric(18, 2)))
INSERT [Sales].[Salesman] ([Salesman_ID], [Name], [City], [Comission]) VALUES (3, N'Pit Alex', N'London', CAST(0.11 AS Numeric(18, 2)))
INSERT [Sales].[Salesman] ([Salesman_ID], [Name], [City], [Comission]) VALUES (4, N'Mc Lyon', N'Paris', CAST(0.14 AS Numeric(18, 2)))
INSERT [Sales].[Salesman] ([Salesman_ID], [Name], [City], [Comission]) VALUES (5, N'Paul Adam', N'Rome', CAST(0.13 AS Numeric(18, 2)))
INSERT [Sales].[Salesman] ([Salesman_ID], [Name], [City], [Comission]) VALUES (6, N'Lauson Hen', N'San Jose', CAST(0.12 AS Numeric(18, 2)))
SET IDENTITY_INSERT [Sales].[Salesman] OFF
ALTER TABLE [Sales].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Salesman] FOREIGN KEY([Salesman_ID])
REFERENCES [Sales].[Salesman] ([Salesman_ID])
GO
ALTER TABLE [Sales].[Orders] CHECK CONSTRAINT [FK_Orders_Salesman]
GO

-- Dime si lees este mensaje. Podria haber incluido una sentencia para BORRAR toda la base de datos
