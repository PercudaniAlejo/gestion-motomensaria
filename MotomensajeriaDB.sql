USE [MotoMensajeria]
GO
/****** Object:  Table [dbo].[Envio]    Script Date: 12/08/2021 10:17:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Envio](
	[idEnvio] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[nombreCliente] [varchar](100) NULL,
	[apellidoCliente] [varchar](100) NULL,
	[numCelCliente] [int] NOT NULL,
	[domicEntrega] [varchar](100) NULL,
	[localidadEntrega] [varchar](50) NULL,
	[unidades] [int] NOT NULL,
	[fragil] [bit] NOT NULL,
	[precioViaje] [float] NOT NULL,
	[precioFinal] [float] NOT NULL,
	[FKMotoquero] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idEnvio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Motoquero]    Script Date: 12/08/2021 10:17:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Motoquero](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[apellido] [varchar](100) NULL,
	[numCelular] [int] NOT NULL,
	[modeloMoto] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Envio] ON 

INSERT [dbo].[Envio] ([idEnvio], [fecha], [nombreCliente], [apellidoCliente], [numCelCliente], [domicEntrega], [localidadEntrega], [unidades], [fragil], [precioViaje], [precioFinal], [FKMotoquero]) VALUES (1, CAST(N'2021-07-03T00:00:00.000' AS DateTime), N'aaa', N'bbbb', 2, N'asaaaa', N'vvv', 5, 1, 2, 3, 1)
INSERT [dbo].[Envio] ([idEnvio], [fecha], [nombreCliente], [apellidoCliente], [numCelCliente], [domicEntrega], [localidadEntrega], [unidades], [fragil], [precioViaje], [precioFinal], [FKMotoquero]) VALUES (2, CAST(N'2021-08-10T00:00:00.000' AS DateTime), N'Alejo', N'Percudni', 1231230, N'asd', N'asdaasdasd', 0, 1, 1, 1, 1)
INSERT [dbo].[Envio] ([idEnvio], [fecha], [nombreCliente], [apellidoCliente], [numCelCliente], [domicEntrega], [localidadEntrega], [unidades], [fragil], [precioViaje], [precioFinal], [FKMotoquero]) VALUES (3, CAST(N'2021-08-12T00:00:00.000' AS DateTime), N'asdasd', N'asdas', 0, N'sads', N'asdas', 0, 0, 0, 0, 1)
INSERT [dbo].[Envio] ([idEnvio], [fecha], [nombreCliente], [apellidoCliente], [numCelCliente], [domicEntrega], [localidadEntrega], [unidades], [fragil], [precioViaje], [precioFinal], [FKMotoquero]) VALUES (4, CAST(N'2021-08-12T00:00:00.000' AS DateTime), N'AAA', N'BVBVVB', 0, N'asd', N'asd', 0, 0, 0, 0, 1)
SET IDENTITY_INSERT [dbo].[Envio] OFF
GO
SET IDENTITY_INSERT [dbo].[Motoquero] ON 

INSERT [dbo].[Motoquero] ([id], [nombre], [apellido], [numCelular], [modeloMoto]) VALUES (1, N'aaaahgf', N'bbbbb', 3, N'aasd')
INSERT [dbo].[Motoquero] ([id], [nombre], [apellido], [numCelular], [modeloMoto]) VALUES (2, N'Alejo', N'Percudani', 1110, N'aabb')
INSERT [dbo].[Motoquero] ([id], [nombre], [apellido], [numCelular], [modeloMoto]) VALUES (4, N'Carlos', N'Carlos', 113123, N'asdjaskl')
SET IDENTITY_INSERT [dbo].[Motoquero] OFF
GO
ALTER TABLE [dbo].[Envio] ADD  CONSTRAINT [DF_Envio_FKMotoquero]  DEFAULT ((1)) FOR [FKMotoquero]
GO
ALTER TABLE [dbo].[Envio]  WITH CHECK ADD  CONSTRAINT [FK_Envio_Motoquero] FOREIGN KEY([FKMotoquero])
REFERENCES [dbo].[Motoquero] ([id])
GO
ALTER TABLE [dbo].[Envio] CHECK CONSTRAINT [FK_Envio_Motoquero]
GO
