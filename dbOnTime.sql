USE [MotoMensajeria]
GO
/****** Object:  Table [dbo].[Envio]    Script Date: 06/08/2021 14:35:06 ******/
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
PRIMARY KEY CLUSTERED 
(
	[idEnvio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Motoquero]    Script Date: 06/08/2021 14:35:06 ******/
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
