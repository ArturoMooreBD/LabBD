USE [Practica 3]
GO
ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [FK_Producto_Proveedor]
GO
ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [FK_Producto_Almacen]
GO
ALTER TABLE [dbo].[Pedido] DROP CONSTRAINT [FK_Pedido_Producto]
GO
ALTER TABLE [dbo].[Pedido] DROP CONSTRAINT [FK_Pedido_Envio]
GO
ALTER TABLE [dbo].[Pedido] DROP CONSTRAINT [FK_Pedido_Empleado]
GO
ALTER TABLE [dbo].[Pedido] DROP CONSTRAINT [FK_Pedido_Cliente]
GO
ALTER TABLE [dbo].[Estado] DROP CONSTRAINT [FK_Estado_Region]
GO
ALTER TABLE [dbo].[Envio] DROP CONSTRAINT [FK_Envio_Envio_Terrestre]
GO
ALTER TABLE [dbo].[Envio] DROP CONSTRAINT [FK_Envio_Envio_Aerio]
GO
ALTER TABLE [dbo].[Almacen] DROP CONSTRAINT [FK_Almacen_Producto_Almacen Stock]
GO
ALTER TABLE [dbo].[Almacen] DROP CONSTRAINT [FK_Almacen_Estado]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 22/09/2018 10:20:21 ******/
DROP TABLE [dbo].[Region]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 22/09/2018 10:20:21 ******/
DROP TABLE [dbo].[Proveedor]
GO
/****** Object:  Table [dbo].[Producto_Almacen Stock]    Script Date: 22/09/2018 10:20:21 ******/
DROP TABLE [dbo].[Producto_Almacen Stock]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 22/09/2018 10:20:21 ******/
DROP TABLE [dbo].[Producto]
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 22/09/2018 10:20:21 ******/
DROP TABLE [dbo].[Pedido]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 22/09/2018 10:20:21 ******/
DROP TABLE [dbo].[Estado]
GO
/****** Object:  Table [dbo].[Envio_Terrestre]    Script Date: 22/09/2018 10:20:21 ******/
DROP TABLE [dbo].[Envio_Terrestre]
GO
/****** Object:  Table [dbo].[Envio_Aerio]    Script Date: 22/09/2018 10:20:21 ******/
DROP TABLE [dbo].[Envio_Aerio]
GO
/****** Object:  Table [dbo].[Envio]    Script Date: 22/09/2018 10:20:21 ******/
DROP TABLE [dbo].[Envio]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 22/09/2018 10:20:21 ******/
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 22/09/2018 10:20:21 ******/
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 22/09/2018 10:20:21 ******/
DROP TABLE [dbo].[Almacen]
GO
USE [master]
GO
/****** Object:  Database [Practica 3]    Script Date: 22/09/2018 10:20:21 ******/
DROP DATABASE [Practica 3]
GO
/****** Object:  Database [Practica 3]    Script Date: 22/09/2018 10:20:21 ******/
CREATE DATABASE [Practica 3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Practica 2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Practica 2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Practica 2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Practica 2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Practica 3] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Practica 3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Practica 3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Practica 3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Practica 3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Practica 3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Practica 3] SET ARITHABORT OFF 
GO
ALTER DATABASE [Practica 3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Practica 3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Practica 3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Practica 3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Practica 3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Practica 3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Practica 3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Practica 3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Practica 3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Practica 3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Practica 3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Practica 3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Practica 3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Practica 3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Practica 3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Practica 3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Practica 3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Practica 3] SET RECOVERY FULL 
GO
ALTER DATABASE [Practica 3] SET  MULTI_USER 
GO
ALTER DATABASE [Practica 3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Practica 3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Practica 3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Practica 3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Practica 3] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Practica 3', N'ON'
GO
ALTER DATABASE [Practica 3] SET QUERY_STORE = OFF
GO
USE [Practica 3]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Practica 3]
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 22/09/2018 10:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almacen](
	[Num_Almacen] [int] NOT NULL,
	[Codigo_Stock] [int] NULL,
	[Nombre_Estado] [varchar](50) NULL,
	[Direccion] [text] NULL,
	[Telefono] [int] NULL,
 CONSTRAINT [PK_Almacen] PRIMARY KEY CLUSTERED 
(
	[Num_Almacen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 22/09/2018 10:20:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id_Cliente] [int] NOT NULL,
	[Fecha_Creacion] [datetime] NULL,
	[Nombre] [varchar](50) NULL,
	[Telefono] [int] NULL,
	[Direccion] [text] NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Id_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 22/09/2018 10:20:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[Id_Empleado] [int] NOT NULL,
	[Fecha_Login] [datetime] NULL,
	[Password] [ntext] NULL,
	[Cargo] [nvarchar](50) NULL,
	[Nombre] [nvarchar](50) NULL,
	[Telefono] [int] NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[Id_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Envio]    Script Date: 22/09/2018 10:20:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Envio](
	[Id_envio] [int] NOT NULL,
	[Codigo_Transporte] [int] NULL,
 CONSTRAINT [PK_Envio] PRIMARY KEY CLUSTERED 
(
	[Id_envio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Envio_Aerio]    Script Date: 22/09/2018 10:20:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Envio_Aerio](
	[Id_Aerio] [int] NOT NULL,
	[Precio] [money] NULL,
	[Fecha_de_Envio] [datetime] NULL,
 CONSTRAINT [PK_Envio_Aerio] PRIMARY KEY CLUSTERED 
(
	[Id_Aerio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Envio_Terrestre]    Script Date: 22/09/2018 10:20:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Envio_Terrestre](
	[Id_Terrestre] [int] NOT NULL,
	[Precio] [money] NULL,
	[Fecha_Envio] [datetime] NULL,
 CONSTRAINT [PK_Envio_Terrestre] PRIMARY KEY CLUSTERED 
(
	[Id_Terrestre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 22/09/2018 10:20:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[Nombre] [varchar](50) NOT NULL,
	[Codigo_Region] [int] NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 22/09/2018 10:20:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[Id_Pedido] [int] NOT NULL,
	[Fecha_Pedido] [datetime] NULL,
	[Cantidad] [nchar](10) NULL,
	[Codigo_Cliente] [int] NULL,
	[Codigo_Empleado] [int] NULL,
	[Codigo_Producto] [int] NULL,
	[Codigo_envio] [int] NULL,
 CONSTRAINT [PK_Pedido] PRIMARY KEY CLUSTERED 
(
	[Id_Pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 22/09/2018 10:20:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[Referencia] [int] NOT NULL,
	[Precio] [money] NULL,
	[Almacen] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [text] NULL,
	[Disponible] [nchar](10) NULL,
	[Proveedor] [int] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[Referencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto_Almacen Stock]    Script Date: 22/09/2018 10:20:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto_Almacen Stock](
	[Referencia] [int] NOT NULL,
	[Fecha_almacenamiento] [datetime] NULL,
	[Stock_min] [nchar](10) NULL,
	[Stock_total] [int] NULL,
 CONSTRAINT [PK_Producto_Almacen Stock] PRIMARY KEY CLUSTERED 
(
	[Referencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 22/09/2018 10:20:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[Id_Provedor] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Telefono] [nchar](10) NULL,
	[Direccion] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[Id_Provedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 22/09/2018 10:20:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[Codigo] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Almacen]  WITH CHECK ADD  CONSTRAINT [FK_Almacen_Estado] FOREIGN KEY([Nombre_Estado])
REFERENCES [dbo].[Estado] ([Nombre])
GO
ALTER TABLE [dbo].[Almacen] CHECK CONSTRAINT [FK_Almacen_Estado]
GO
ALTER TABLE [dbo].[Almacen]  WITH CHECK ADD  CONSTRAINT [FK_Almacen_Producto_Almacen Stock] FOREIGN KEY([Codigo_Stock])
REFERENCES [dbo].[Producto_Almacen Stock] ([Referencia])
GO
ALTER TABLE [dbo].[Almacen] CHECK CONSTRAINT [FK_Almacen_Producto_Almacen Stock]
GO
ALTER TABLE [dbo].[Envio]  WITH CHECK ADD  CONSTRAINT [FK_Envio_Envio_Aerio] FOREIGN KEY([Codigo_Transporte])
REFERENCES [dbo].[Envio_Aerio] ([Id_Aerio])
GO
ALTER TABLE [dbo].[Envio] CHECK CONSTRAINT [FK_Envio_Envio_Aerio]
GO
ALTER TABLE [dbo].[Envio]  WITH CHECK ADD  CONSTRAINT [FK_Envio_Envio_Terrestre] FOREIGN KEY([Codigo_Transporte])
REFERENCES [dbo].[Envio_Terrestre] ([Id_Terrestre])
GO
ALTER TABLE [dbo].[Envio] CHECK CONSTRAINT [FK_Envio_Envio_Terrestre]
GO
ALTER TABLE [dbo].[Estado]  WITH CHECK ADD  CONSTRAINT [FK_Estado_Region] FOREIGN KEY([Codigo_Region])
REFERENCES [dbo].[Region] ([Codigo])
GO
ALTER TABLE [dbo].[Estado] CHECK CONSTRAINT [FK_Estado_Region]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Cliente] FOREIGN KEY([Codigo_Cliente])
REFERENCES [dbo].[Cliente] ([Id_Cliente])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Cliente]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Empleado] FOREIGN KEY([Codigo_Empleado])
REFERENCES [dbo].[Empleado] ([Id_Empleado])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Empleado]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Envio] FOREIGN KEY([Codigo_envio])
REFERENCES [dbo].[Envio] ([Id_envio])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Envio]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Producto] FOREIGN KEY([Codigo_Producto])
REFERENCES [dbo].[Producto] ([Referencia])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Producto]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Almacen] FOREIGN KEY([Almacen])
REFERENCES [dbo].[Almacen] ([Num_Almacen])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Almacen]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Proveedor] FOREIGN KEY([Proveedor])
REFERENCES [dbo].[Proveedor] ([Id_Provedor])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Proveedor]
GO
USE [master]
GO
ALTER DATABASE [Practica 3] SET  READ_WRITE 
GO
