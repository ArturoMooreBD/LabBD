﻿USE [Practica 1]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 08/09/2018 9:26:47 *****
DROP TABLE [dbo].[Materia]
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 08/09/2018 9:26:47 ******/
DROP TABLE [dbo].[Maestro]
GO
/****** Object:  Table [dbo].[Libro]    Script Date: 08/09/2018 9:26:47 ******/
DROP TABLE [dbo].[Libro]
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 08/09/2018 9:26:47 ******/
DROP TABLE [dbo].[Curso]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 08/09/2018 9:26:47 ******/
DROP TABLE [dbo].[Alumno]
GO
USE [master]
GO
/****** Object:  Database [Practica 1]    Script Date: 08/09/2018 9:26:47 ******/
DROP DATABASE [Practica 1]
GO
/****** Object:  Database [Practica 1]    Script Date: 08/09/2018 9:26:47 ******/
CREATE DATABASE [Practica 1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Practica 1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Practica 1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Practica 1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Practica 1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Practica 1] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Practica 1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Practica 1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Practica 1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Practica 1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Practica 1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Practica 1] SET ARITHABORT OFF 
GO
ALTER DATABASE [Practica 1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Practica 1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Practica 1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Practica 1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Practica 1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Practica 1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Practica 1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Practica 1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Practica 1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Practica 1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Practica 1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Practica 1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Practica 1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Practica 1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Practica 1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Practica 1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Practica 1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Practica 1] SET RECOVERY FULL 
GO
ALTER DATABASE [Practica 1] SET  MULTI_USER 
GO
ALTER DATABASE [Practica 1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Practica 1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Practica 1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Practica 1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Practica 1] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Practica 1', N'ON'
GO
ALTER DATABASE [Practica 1] SET QUERY_STORE = OFF
GO
USE [Practica 1]
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
USE [Practica 1]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 08/09/2018 9:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumno](
	[idMatricula] [int] NOT NULL,
	[AsistenciaDelAlumno] [bit] NULL,
	[NumeroDeTelefono] [int] NOT NULL,
	[PromedioDelAlumno] [float] NULL,
	[NombreDelAlumno] [varchar](25) NOT NULL,
	[DescripcionDelAlumno] [text] NOT NULL,
	[FotoDelAlumno] [image] NOT NULL,
	[FechaDeRegistro] [datetime] NOT NULL,
	[Inscripcion] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[idMatricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 08/09/2018 9:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso](
	[idCurso] [int] NOT NULL,
	[Aprobado] [bit] NULL,
	[NumeroDeAlumnos] [int] NOT NULL,
	[PromedioTotal] [float] NULL,
	[NombreDelCurso] [varchar](25) NOT NULL,
	[DescripcionDelCurso] [text] NOT NULL,
	[FotoDelcurso] [image] NOT NULL,
	[FechaDeInscripcion] [datetime] NOT NULL,
	[CostoDelCurso] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[idCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libro]    Script Date: 08/09/2018 9:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libro](
	[idLibro] [int] NOT NULL,
	[Disponible] [bit] NULL,
	[NumeroEnExistencia] [int] NOT NULL,
	[PromedioDelLibro] [float] NULL,
	[NombreDelLibro] [varchar](25) NOT NULL,
	[Descripcion] [text] NOT NULL,
	[FotoDelaPortada] [image] NOT NULL,
	[FechaDePublicacion] [datetime] NOT NULL,
	[CostoDelLibro] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[idLibro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 08/09/2018 9:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maestro](
	[idMaestro] [int] NOT NULL,
	[Asistencia] [bit] NULL,
	[NumeroDeTelefono] [int] NOT NULL,
	[PromedioDelMaestro] [float] NULL,
	[NombreDelMaestro] [varchar](25) NOT NULL,
	[DescripcionDelMaestro] [text] NOT NULL,
	[FotoDelMaestro] [image] NOT NULL,
	[FechaDeInicio] [datetime] NOT NULL,
	[CostoPorClase] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[idMaestro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 08/09/2018 9:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materia](
	[idMateria] [int] NOT NULL,
	[Cursado] [bit] NULL,
	[NumeroDeAlumnos] [int] NOT NULL,
	[PromedioTotal] [float] NULL,
	[NombreDelaMateria] [varchar](25) NOT NULL,
	[DescripcionDelMateria] [text] NOT NULL,
	[FotoDelMateria] [image] NOT NULL,
	[FechaDeInscripcion] [datetime] NOT NULL,
	[CostoPorMateria] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[idMateria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Practica 1] SET  READ_WRITE 
GO
