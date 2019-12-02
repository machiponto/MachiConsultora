USE [master]
GO
/****** Object:  Database [MachiConsultoraVF]    Script Date: 27/11/2019 18:44:10 ******/
CREATE DATABASE [MachiConsultoraVF]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MachiConsultoraVF', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MachiConsultoraVF.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MachiConsultoraVF_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MachiConsultoraVF_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MachiConsultoraVF] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MachiConsultoraVF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MachiConsultoraVF] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MachiConsultoraVF] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MachiConsultoraVF] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MachiConsultoraVF] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MachiConsultoraVF] SET ARITHABORT OFF 
GO
ALTER DATABASE [MachiConsultoraVF] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MachiConsultoraVF] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MachiConsultoraVF] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MachiConsultoraVF] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MachiConsultoraVF] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MachiConsultoraVF] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MachiConsultoraVF] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MachiConsultoraVF] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MachiConsultoraVF] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MachiConsultoraVF] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MachiConsultoraVF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MachiConsultoraVF] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MachiConsultoraVF] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MachiConsultoraVF] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MachiConsultoraVF] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MachiConsultoraVF] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MachiConsultoraVF] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MachiConsultoraVF] SET RECOVERY FULL 
GO
ALTER DATABASE [MachiConsultoraVF] SET  MULTI_USER 
GO
ALTER DATABASE [MachiConsultoraVF] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MachiConsultoraVF] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MachiConsultoraVF] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MachiConsultoraVF] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MachiConsultoraVF] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MachiConsultoraVF', N'ON'
GO
USE [MachiConsultoraVF]
GO
/****** Object:  Table [dbo].[Areas]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Areas](
	[Id_Area] [int] NOT NULL,
	[DescripciónArea] [varchar](150) NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Areas] PRIMARY KEY CLUSTERED 
(
	[Id_Area] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bitacora]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Bitacora](
	[idBitacora] [int] IDENTITY(1,1) NOT NULL,
	[Modulo] [varchar](50) NOT NULL,
	[Tipo] [varchar](50) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Detalle] [varchar](2000) NOT NULL,
 CONSTRAINT [PK_Bitacora] PRIMARY KEY CLUSTERED 
(
	[idBitacora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Busqueda]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Busqueda](
	[Id_Busqueda] [int] NOT NULL,
	[FechaPublicacion] [date] NOT NULL,
	[Id_Puesto] [int] NOT NULL,
	[Descripcion] [varchar](1500) NOT NULL,
	[Referencia] [varchar](15) NOT NULL,
	[Activa] [bit] NOT NULL,
 CONSTRAINT [PK_Busqueda] PRIMARY KEY CLUSTERED 
(
	[Id_Busqueda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CadidatosEstudiosFormales]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CadidatosEstudiosFormales](
	[Id_CanEF] [int] NOT NULL,
	[Id_DatosPersonales] [int] NOT NULL,
	[Id_EstudiosFormales] [int] NOT NULL,
 CONSTRAINT [PK_CadidatosEstudiosFormales] PRIMARY KEY CLUSTERED 
(
	[Id_CanEF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CadidatosExperienciaLaboral]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CadidatosExperienciaLaboral](
	[Id_CanEL] [int] NOT NULL,
	[Id_DatosPersonales] [int] NOT NULL,
	[Id_ExperiemnciaLaboral] [int] NOT NULL,
 CONSTRAINT [PK_CadidatosExperienciaLaboral] PRIMARY KEY CLUSTERED 
(
	[Id_CanEL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[campos]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[campos](
	[id] [int] NOT NULL,
	[nombre] [varchar](max) NULL,
	[tipo] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CandidatosEF]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CandidatosEF](
	[Id_DatosPersonales] [int] NOT NULL,
	[Id_EstudiosFormales] [int] NOT NULL,
 CONSTRAINT [PK_CandidatosEF] PRIMARY KEY CLUSTERED 
(
	[Id_DatosPersonales] ASC,
	[Id_EstudiosFormales] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CandidatosEL]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CandidatosEL](
	[Id_DatosPersonales] [int] NOT NULL,
	[Id_ExperienciaLaboral] [int] NOT NULL,
 CONSTRAINT [PK_CandidatosEL] PRIMARY KEY CLUSTERED 
(
	[Id_DatosPersonales] ASC,
	[Id_ExperienciaLaboral] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CategoriaServicio]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CategoriaServicio](
	[Id_CategoriaServicio] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [text] NULL,
	[Imagen] [varchar](255) NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_CategoriaServicio] PRIMARY KEY CLUSTERED 
(
	[Id_CategoriaServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id_Cliente] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Direccion] [varchar](150) NULL,
	[Mail] [varchar](50) NULL,
	[Telefono] [varchar](50) NULL,
	[idUsuario] [int] NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Id_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ComprobanteCabecera]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ComprobanteCabecera](
	[idComprobanteCabecera] [int] IDENTITY(1,1) NOT NULL,
	[letra] [char](10) NOT NULL,
	[numero] [int] NOT NULL,
	[fecha] [date] NOT NULL,
	[tipoComprobante] [int] NOT NULL,
	[idCliente] [int] NULL,
	[estado] [int] NULL,
	[idSucursal] [int] NULL,
 CONSTRAINT [PK_ComprobanteCabecera] PRIMARY KEY CLUSTERED 
(
	[idComprobanteCabecera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ComprobanteDetalle]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ComprobanteDetalle](
	[idComprobanteDetalle] [int] IDENTITY(1,1) NOT NULL,
	[idComprobanteCabecera] [int] NOT NULL,
	[detalle] [varchar](2000) NULL,
	[Id_Servicio] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [PK_ComprobanteDetalle] PRIMARY KEY CLUSTERED 
(
	[idComprobanteDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CV]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CV](
	[Id_CV] [int] NOT NULL,
	[idUsuario] [int] NOT NULL,
	[Id_DatosPersonales] [int] NOT NULL,
	[Id_EstudiosFormales] [int] NOT NULL,
	[Id_ExperienciaLAboral] [int] NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_CV_1] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cv_modulos]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cv_modulos](
	[cv_id] [int] NULL,
	[modulo_id] [int] NULL,
	[posicion] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DatosPersonales]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DatosPersonales](
	[Id_DatosPersonales] [int] NOT NULL,
	[ApellidoPostulante] [varchar](150) NOT NULL,
	[ApellidoMaterno] [varchar](150) NULL,
	[NombrePostulante] [varchar](150) NOT NULL,
	[Sexo] [varchar](1) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Direccion] [varchar](150) NULL,
	[Numero] [varchar](10) NULL,
	[Piso] [varchar](10) NULL,
	[Dto] [varchar](10) NULL,
	[CodPostal] [varchar](20) NULL,
	[email] [varchar](150) NULL,
	[CantidadHijos] [int] NULL,
	[Observaciones] [varchar](300) NULL,
 CONSTRAINT [PK_DatosPersonales] PRIMARY KEY CLUSTERED 
(
	[Id_DatosPersonales] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empresa](
	[idEmpresa] [int] NOT NULL,
	[RazonSocial] [varchar](200) NOT NULL,
	[Descripcion] [varchar](200) NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[idEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estados](
	[Id_Estado] [int] NOT NULL,
	[DescripcionEstado] [varchar](45) NOT NULL,
	[Habilitado] [varchar](1) NOT NULL,
	[EstIT] [varchar](1) NOT NULL,
	[EstFecha] [varchar](8) NULL,
	[EstHora] [varchar](8) NULL,
	[EstUsuario] [varchar](10) NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[Id_Estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstudiosFormales]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstudiosFormales](
	[Id_EstudiosFormales] [int] IDENTITY(1,1) NOT NULL,
	[Nivel] [varchar](150) NOT NULL,
	[Institucion] [varchar](150) NULL,
	[Titulo] [varchar](50) NOT NULL,
	[Estado] [varchar](50) NOT NULL,
	[PorcAvance] [int] NOT NULL,
	[PeriodoDesde] [int] NOT NULL,
	[PeriodoHasta] [int] NOT NULL,
 CONSTRAINT [PK_EstudiosFormales] PRIMARY KEY CLUSTERED 
(
	[Id_EstudiosFormales] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExperienciaLaboral]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExperienciaLaboral](
	[Id_ExperienciaLaboral] [int] NOT NULL,
	[EmpresaNombre] [varchar](150) NULL,
	[AreaEmpresa] [varchar](150) NULL,
	[RubroEmpresa] [varchar](150) NULL,
	[FechaInicio] [date] NULL,
	[FechaFin] [date] NULL,
	[Trabaja] [varchar](1) NULL,
	[Puesto] [varchar](150) NULL,
	[Descripcion] [varchar](1750) NULL,
	[PersonalCargo] [int] NULL,
	[Comentarios] [varchar](150) NULL,
 CONSTRAINT [PK_ExperienciaLaboral] PRIMARY KEY CLUSTERED 
(
	[Id_ExperienciaLaboral] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Grupo](
	[idGrupo] [int] IDENTITY(1,1) NOT NULL,
	[CodigoGrupo] [varchar](50) NOT NULL,
	[Detalle] [varchar](200) NULL,
 CONSTRAINT [PK_tbl_Grupo] PRIMARY KEY CLUSTERED 
(
	[idGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GrupoUsuario]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoUsuario](
	[idUsuario] [int] NOT NULL,
	[idGrupo] [int] NOT NULL,
 CONSTRAINT [PK_GrupoUsuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC,
	[idGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Idioma]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Idioma](
	[Id_Idioma] [int] IDENTITY(1,1) NOT NULL,
	[Idioma] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Idioma] PRIMARY KEY CLUSTERED 
(
	[Id_Idioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LocalidadBarrio]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LocalidadBarrio](
	[Id_LB] [int] NOT NULL,
	[NombreLocalidad] [varchar](150) NOT NULL,
	[Activo] [bit] NOT NULL,
	[Id_Municipio] [int] NOT NULL,
 CONSTRAINT [PK_LocalidadBarrio] PRIMARY KEY CLUSTERED 
(
	[Id_LB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Modulo]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Modulo](
	[Id_Modulo] [int] NOT NULL,
	[ModuloDescripcion] [varchar](50) NOT NULL,
	[Activo] [bit] NOT NULL,
	[Fijo] [bit] NOT NULL,
 CONSTRAINT [PK_Modulo] PRIMARY KEY CLUSTERED 
(
	[Id_Modulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[modulo_campo]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[modulo_campo](
	[modulo_id] [int] NULL,
	[campo_id] [int] NULL,
	[requerido] [int] NULL,
	[posicion] [int] NULL,
	[maxlength] [int] NULL,
	[minlength] [int] NULL,
	[valor] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Municipio](
	[Id_Municipio] [int] NOT NULL,
	[NombreMunicipio] [varchar](150) NOT NULL,
	[Activo] [bit] NOT NULL,
	[Id_Provincia] [int] NOT NULL,
 CONSTRAINT [PK_Municipio] PRIMARY KEY CLUSTERED 
(
	[Id_Municipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NivelManejo]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NivelManejo](
	[Id_NivelManejo] [int] IDENTITY(1,1) NOT NULL,
	[NivelManejo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_NivelManejo] PRIMARY KEY CLUSTERED 
(
	[Id_NivelManejo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Permiso]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Permiso](
	[idPermiso] [int] NOT NULL,
	[CodigoPermiso] [int] NOT NULL,
	[Detalle] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Permiso] PRIMARY KEY CLUSTERED 
(
	[idPermiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PostulanteIdioma]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PostulanteIdioma](
	[Id_PostulanteIdioma] [int] IDENTITY(1,1) NOT NULL,
	[Id_Idioma] [int] NOT NULL,
	[Id_NivelManejo] [int] NOT NULL,
	[idUsuario] [int] NOT NULL,
	[Centro] [varchar](150) NULL,
 CONSTRAINT [PK_PostulanteIdioma] PRIMARY KEY CLUSTERED 
(
	[Id_PostulanteIdioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Provincia](
	[Id_Provincia] [int] NOT NULL,
	[NombreProvincia] [varchar](150) NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Provincia] PRIMARY KEY CLUSTERED 
(
	[Id_Provincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Puestos]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Puestos](
	[Id_Puesto] [int] NOT NULL,
	[DescripciónPuesto] [varchar](150) NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Puestos] PRIMARY KEY CLUSTERED 
(
	[Id_Puesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Servicio]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Servicio](
	[Id_Servicio] [int] IDENTITY(1,1) NOT NULL,
	[Id_CategoriaServicio] [int] NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
	[Descripcion] [text] NULL,
	[Precio] [float] NOT NULL,
	[Imagen] [varchar](255) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Servicio] PRIMARY KEY CLUSTERED 
(
	[Id_Servicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sucursal](
	[idSucursal] [int] IDENTITY(1,1) NOT NULL,
	[direccion] [varchar](200) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[fax] [varchar](50) NOT NULL,
	[idEmpresa] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Sucursal] PRIMARY KEY CLUSTERED 
(
	[idSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoComprobante]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoComprobante](
	[idTipoComprobante] [int] NOT NULL,
	[tipo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipoComprobante] PRIMARY KEY CLUSTERED 
(
	[idTipoComprobante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[usr] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[detalle] [varchar](100) NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsuarioBusqueda]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioBusqueda](
	[idUsuario] [int] NOT NULL,
	[Id_Busqueda] [int] NOT NULL,
 CONSTRAINT [PK_UsuarioBusqueda] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC,
	[Id_Busqueda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsuarioPermiso]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioPermiso](
	[idUsuario] [int] NOT NULL,
	[idPermiso] [int] NOT NULL,
 CONSTRAINT [PK_UsuarioPermiso] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC,
	[idPermiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Areas] ([Id_Area], [DescripciónArea], [Activo]) VALUES (1, N'Sistemas', 1)
INSERT [dbo].[Areas] ([Id_Area], [DescripciónArea], [Activo]) VALUES (2, N'Finanzas', 1)
SET IDENTITY_INSERT [dbo].[Bitacora] ON 

INSERT [dbo].[Bitacora] ([idBitacora], [Modulo], [Tipo], [Fecha], [Detalle]) VALUES (1, N'1', N'ssa', CAST(N'2016-01-12' AS Date), N'Error en login')
INSERT [dbo].[Bitacora] ([idBitacora], [Modulo], [Tipo], [Fecha], [Detalle]) VALUES (2, N'BLL', N'Critical', CAST(N'2016-11-15' AS Date), N'Colección modificada; puede que no se ejecute la operación de enumeración.')
INSERT [dbo].[Bitacora] ([idBitacora], [Modulo], [Tipo], [Fecha], [Detalle]) VALUES (3, N'DAL', N'CRITICAL', CAST(N'2019-10-08' AS Date), N'Error en login')
INSERT [dbo].[Bitacora] ([idBitacora], [Modulo], [Tipo], [Fecha], [Detalle]) VALUES (4, N'BLL', N'Critical', CAST(N'2019-11-19' AS Date), N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[Bitacora] ([idBitacora], [Modulo], [Tipo], [Fecha], [Detalle]) VALUES (5, N'BLL', N'Critical', CAST(N'2019-11-19' AS Date), N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[Bitacora] ([idBitacora], [Modulo], [Tipo], [Fecha], [Detalle]) VALUES (6, N'BLL', N'Critical', CAST(N'2019-11-19' AS Date), N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[Bitacora] ([idBitacora], [Modulo], [Tipo], [Fecha], [Detalle]) VALUES (7, N'BLL', N'Critical', CAST(N'2019-11-19' AS Date), N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[Bitacora] ([idBitacora], [Modulo], [Tipo], [Fecha], [Detalle]) VALUES (8, N'BLL', N'Critical', CAST(N'2019-11-19' AS Date), N'Referencia a objeto no establecida como instancia de un objeto.')
INSERT [dbo].[Bitacora] ([idBitacora], [Modulo], [Tipo], [Fecha], [Detalle]) VALUES (9, N'BLL', N'Informational', CAST(N'2019-11-19' AS Date), N'Se genero la Busqueda MIP123 satisfactoriamente.')
INSERT [dbo].[Bitacora] ([idBitacora], [Modulo], [Tipo], [Fecha], [Detalle]) VALUES (10, N'BLL', N'Informational', CAST(N'2019-11-19' AS Date), N'Se genero la Busqueda CCC123 satisfactoriamente.')
INSERT [dbo].[Bitacora] ([idBitacora], [Modulo], [Tipo], [Fecha], [Detalle]) VALUES (11, N'DAL', N'Critical', CAST(N'2019-11-20' AS Date), N'Se produjo un error mientras se actualizaban las entradas. Vea la excepción interna para obtener detalles.')
INSERT [dbo].[Bitacora] ([idBitacora], [Modulo], [Tipo], [Fecha], [Detalle]) VALUES (12, N'DAL', N'Critical', CAST(N'2019-11-20' AS Date), N'Se produjo un error mientras se actualizaban las entradas. Vea la excepción interna para obtener detalles.')
INSERT [dbo].[Bitacora] ([idBitacora], [Modulo], [Tipo], [Fecha], [Detalle]) VALUES (13, N'BLL', N'Informational', CAST(N'2019-11-20' AS Date), N'Se genero la Busqueda MIP1234 satisfactoriamente.')
INSERT [dbo].[Bitacora] ([idBitacora], [Modulo], [Tipo], [Fecha], [Detalle]) VALUES (14, N'DAL', N'Critical', CAST(N'2019-11-20' AS Date), N'Se produjo un error mientras se actualizaban las entradas. Vea la excepción interna para obtener detalles.')
INSERT [dbo].[Bitacora] ([idBitacora], [Modulo], [Tipo], [Fecha], [Detalle]) VALUES (15, N'DAL', N'Critical', CAST(N'2019-11-20' AS Date), N'An error occurred while updating the entries. See the inner exception for details.')
SET IDENTITY_INSERT [dbo].[Bitacora] OFF
INSERT [dbo].[Busqueda] ([Id_Busqueda], [FechaPublicacion], [Id_Puesto], [Descripcion], [Referencia], [Activa]) VALUES (1, CAST(N'2016-07-04' AS Date), 2, N'Para escuela. Sexo: masculino; Edad: entre 25 y 40; Estudios: secundario completo; 
Principales tareas a realizar: Atender público: interno y externo; inscripción de alumnos; control de ausentismo; control y seguimiento de la deuda en los pagos de cuotas; impresión y entrega de certificados institucionales y del gobierno de la Ciudad de Buenos Aires; realización de certificaciones de alumno regular, constancia de inscripción y certificados de exámenes rendidos; encargado de notificaciones a alumnos; impresión y archivo de actas de examen; preparación del material bibliográfico y/o fotocopias para cursos; actualizar semanalmente el stock de módulos; mantener actualizado el stock de uniformes.
Experiencia requerida: 1 año realizando tareas administrativas en instituciones de formación; Conocimientos requeridos: manejo de PC, Word y Excel; Horario: lunes a viernes de 12:30 hs a 21:30 hs; Zona de trabajo: Almagro.', N'CE11656', 1)
INSERT [dbo].[Busqueda] ([Id_Busqueda], [FechaPublicacion], [Id_Puesto], [Descripcion], [Referencia], [Activa]) VALUES (2, CAST(N'2016-07-04' AS Date), 11, N'Para empresa de consultoría. Sexo: indistinto; Edad: entre 21 a 60 años; Estudios: secundario completo; 
Principales tareas a realizar: carga de altas y bajas. Control de Ingresos Brutos de CABA y Provincia. Realización de Formulario N° 931. IVA y Convenio Multilateral. Modificar los datos del monotributo.
Experiencia requerida: mínimo un año en las tareas; Conocimientos requeridos: manejo intermedio de Paquete Ofiice; Horario: 5 horas diarias de lunes a viernes (flexible); Zona de trabajo: CABA - Monserrat; Se ofrece: Sueldo fijo en relación de dependencia y flexibilidad horaria.', N'CE11650', 1)
INSERT [dbo].[Busqueda] ([Id_Busqueda], [FechaPublicacion], [Id_Puesto], [Descripcion], [Referencia], [Activa]) VALUES (3, CAST(N'2016-07-04' AS Date), 12, N'Para importante ONG. Edad: entre 25 y 45 años; Estudios: secundario completo; 
Principales tareas a realizar: realizar las gestiones administrativas de pagos y cobranzas; efectuar registros contables; 
desarrollar las actividades de apoyo administrativo de Recursos Humanos; realizar las gestiones administrativas de tesorería; 
operación de sistemas informáticos de gestión administrativas; conciliaciones Bancarias; 
seguimientos de cuentas corrientes y atención al Público (socio y no socios); 
Experiencia requerida: 2 años realizando tareas similares; Conocimientos requeridos: manejo de PC, Word y Excel avanzado; Horario: lunes a jueves 11 a 20 hs viernes de 11 a 18 hs; Zona de trabajo: Belgrano.', N'CE11651', 1)
INSERT [dbo].[Busqueda] ([Id_Busqueda], [FechaPublicacion], [Id_Puesto], [Descripcion], [Referencia], [Activa]) VALUES (4, CAST(N'2019-11-19' AS Date), 2, N'trthrthrth', N'MIP123', 1)
INSERT [dbo].[Busqueda] ([Id_Busqueda], [FechaPublicacion], [Id_Puesto], [Descripcion], [Referencia], [Activa]) VALUES (5, CAST(N'2019-11-19' AS Date), 2, N'PRUEBA ALTA DE BUSQUEDA MACHI - GENERANDO UNA NUEVA BUSQUEDA.
PARA DEFINIR NO SE QUE', N'CCC123', 1)
INSERT [dbo].[Busqueda] ([Id_Busqueda], [FechaPublicacion], [Id_Puesto], [Descripcion], [Referencia], [Activa]) VALUES (6, CAST(N'2019-11-20' AS Date), 2, N'prueba alta busqueda Machi', N'MIP1234', 1)
INSERT [dbo].[CadidatosEstudiosFormales] ([Id_CanEF], [Id_DatosPersonales], [Id_EstudiosFormales]) VALUES (1, 1, 1)
INSERT [dbo].[CadidatosEstudiosFormales] ([Id_CanEF], [Id_DatosPersonales], [Id_EstudiosFormales]) VALUES (2, 1, 2)
INSERT [dbo].[CadidatosEstudiosFormales] ([Id_CanEF], [Id_DatosPersonales], [Id_EstudiosFormales]) VALUES (3, 1, 3)
INSERT [dbo].[CadidatosEstudiosFormales] ([Id_CanEF], [Id_DatosPersonales], [Id_EstudiosFormales]) VALUES (4, 1, 4)
INSERT [dbo].[CadidatosEstudiosFormales] ([Id_CanEF], [Id_DatosPersonales], [Id_EstudiosFormales]) VALUES (5, 1, 2)
INSERT [dbo].[CadidatosEstudiosFormales] ([Id_CanEF], [Id_DatosPersonales], [Id_EstudiosFormales]) VALUES (10, 2, 1)
INSERT [dbo].[CadidatosEstudiosFormales] ([Id_CanEF], [Id_DatosPersonales], [Id_EstudiosFormales]) VALUES (11, 3, 1)
INSERT [dbo].[CadidatosEstudiosFormales] ([Id_CanEF], [Id_DatosPersonales], [Id_EstudiosFormales]) VALUES (12, 1, 5)
INSERT [dbo].[CadidatosEstudiosFormales] ([Id_CanEF], [Id_DatosPersonales], [Id_EstudiosFormales]) VALUES (13, 1, 6)
INSERT [dbo].[CadidatosEstudiosFormales] ([Id_CanEF], [Id_DatosPersonales], [Id_EstudiosFormales]) VALUES (14, 1, 7)
INSERT [dbo].[campos] ([id], [nombre], [tipo]) VALUES (1, N'Nombre', N'TextBox')
INSERT [dbo].[campos] ([id], [nombre], [tipo]) VALUES (2, N'Descripcion', N'Textbox')
INSERT [dbo].[campos] ([id], [nombre], [tipo]) VALUES (3, N'Cantidad Horas', N'Combobox')
INSERT [dbo].[campos] ([id], [nombre], [tipo]) VALUES (4, N'Inicio', N'TextBox')
INSERT [dbo].[CandidatosEF] ([Id_DatosPersonales], [Id_EstudiosFormales]) VALUES (1, 1)
INSERT [dbo].[CandidatosEL] ([Id_DatosPersonales], [Id_ExperienciaLaboral]) VALUES (1, 291)
SET IDENTITY_INSERT [dbo].[CategoriaServicio] ON 

INSERT [dbo].[CategoriaServicio] ([Id_CategoriaServicio], [Nombre], [Descripcion], [Imagen], [Estado]) VALUES (1, N'Selección de Personal', NULL, NULL, 1)
INSERT [dbo].[CategoriaServicio] ([Id_CategoriaServicio], [Nombre], [Descripcion], [Imagen], [Estado]) VALUES (2, N'Evaluación de Personal', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[CategoriaServicio] OFF
INSERT [dbo].[CV] ([Id_CV], [idUsuario], [Id_DatosPersonales], [Id_EstudiosFormales], [Id_ExperienciaLAboral], [Activo]) VALUES (1, 1, 1, 1, 291, 0)
INSERT [dbo].[cv_modulos] ([cv_id], [modulo_id], [posicion]) VALUES (1, 1, 1)
INSERT [dbo].[cv_modulos] ([cv_id], [modulo_id], [posicion]) VALUES (1, 2, 2)
INSERT [dbo].[DatosPersonales] ([Id_DatosPersonales], [ApellidoPostulante], [ApellidoMaterno], [NombrePostulante], [Sexo], [FechaNacimiento], [Direccion], [Numero], [Piso], [Dto], [CodPostal], [email], [CantidadHijos], [Observaciones]) VALUES (1, N'PONTORIERO', N'QUADRANTI', N'MARIA INES', N'F', CAST(N'1975-09-01' AS Date), N'SANCHEZ DE BUSTAMANTE', N'2000', N'PB', N'H', N'1425', N'mipontoriero@gmail.com', 0, N'PRUEBA')
INSERT [dbo].[DatosPersonales] ([Id_DatosPersonales], [ApellidoPostulante], [ApellidoMaterno], [NombrePostulante], [Sexo], [FechaNacimiento], [Direccion], [Numero], [Piso], [Dto], [CodPostal], [email], [CantidadHijos], [Observaciones]) VALUES (2, N'PONTO1', N'QUADRA1', N'MACHI', N'F', CAST(N'1975-09-01' AS Date), N'SSS', N'22', N'PB', N'Q', N'1111', N'm@gmail.com', 1, N'PRUEBA2')
INSERT [dbo].[DatosPersonales] ([Id_DatosPersonales], [ApellidoPostulante], [ApellidoMaterno], [NombrePostulante], [Sexo], [FechaNacimiento], [Direccion], [Numero], [Piso], [Dto], [CodPostal], [email], [CantidadHijos], [Observaciones]) VALUES (3, N'MANCINI', N'DE FEO', N'CARLA VERONICA', N'F', CAST(N'1975-08-03' AS Date), N'ARENALES', N'2700', N'4', N'D', N'1123', N'carla@gmail.com', 0, N'Prueba 3')
INSERT [dbo].[DatosPersonales] ([Id_DatosPersonales], [ApellidoPostulante], [ApellidoMaterno], [NombrePostulante], [Sexo], [FechaNacimiento], [Direccion], [Numero], [Piso], [Dto], [CodPostal], [email], [CantidadHijos], [Observaciones]) VALUES (4, N'PONTORIERO', N'LOPEZ', N'IGNACIO', N'M', CAST(N'1967-07-16' AS Date), N'ARAOZ', N'342', N'PB', N'2', N'1432', N'nachi@gmail.com', 0, N'Prueba 3')
INSERT [dbo].[DatosPersonales] ([Id_DatosPersonales], [ApellidoPostulante], [ApellidoMaterno], [NombrePostulante], [Sexo], [FechaNacimiento], [Direccion], [Numero], [Piso], [Dto], [CodPostal], [email], [CantidadHijos], [Observaciones]) VALUES (5, N'TCHERNIAK', N'RAMIREZ', N'MIGUEL', N'M', CAST(N'1985-05-12' AS Date), N'AV DE MAYO ', N'984', N'14', NULL, N'1244', NULL, 1, N'PRUEBA 4')
INSERT [dbo].[DatosPersonales] ([Id_DatosPersonales], [ApellidoPostulante], [ApellidoMaterno], [NombrePostulante], [Sexo], [FechaNacimiento], [Direccion], [Numero], [Piso], [Dto], [CodPostal], [email], [CantidadHijos], [Observaciones]) VALUES (6, N'BRANSBOIN', N'FERREIRA', N'HECTOR', N'M', CAST(N'1970-09-21' AS Date), N'BERUTI', N'3892', N'6', N'A', N'1425', NULL, 3, N'PRUEBA 5')
INSERT [dbo].[DatosPersonales] ([Id_DatosPersonales], [ApellidoPostulante], [ApellidoMaterno], [NombrePostulante], [Sexo], [FechaNacimiento], [Direccion], [Numero], [Piso], [Dto], [CodPostal], [email], [CantidadHijos], [Observaciones]) VALUES (22999888, N'GARCUA', N'CARLA', N'CALRAL', N'F', CAST(N'1995-08-09' AS Date), N'HJKHK', N'1111', N'1', N'A', N'1111', N'MM', 0, N'H')
INSERT [dbo].[DatosPersonales] ([Id_DatosPersonales], [ApellidoPostulante], [ApellidoMaterno], [NombrePostulante], [Sexo], [FechaNacimiento], [Direccion], [Numero], [Piso], [Dto], [CodPostal], [email], [CantidadHijos], [Observaciones]) VALUES (24881082, N'ALFREDO', N'MANGERI', N'CAROLINA', N'F', CAST(N'1985-08-05' AS Date), N'JOSE MARIA MORENO', N'351', N'11', N'F', N'1084', N'miponto@gmail.com', 0, N'nada')
INSERT [dbo].[DatosPersonales] ([Id_DatosPersonales], [ApellidoPostulante], [ApellidoMaterno], [NombrePostulante], [Sexo], [FechaNacimiento], [Direccion], [Numero], [Piso], [Dto], [CodPostal], [email], [CantidadHijos], [Observaciones]) VALUES (33222111, N'carla', N'lola', N'ksljf', N'F', CAST(N'1999-02-02' AS Date), N'JFDGSA', N'33', N'11', N'J', N'333', N'IUI', 0, N'JK')
INSERT [dbo].[Empresa] ([idEmpresa], [RazonSocial], [Descripcion]) VALUES (1, N'Machi Consultora', N'Empresa que se dedica a brindar servicios de selección de personal, específicamente al área de TI.')
SET IDENTITY_INSERT [dbo].[EstudiosFormales] ON 

INSERT [dbo].[EstudiosFormales] ([Id_EstudiosFormales], [Nivel], [Institucion], [Titulo], [Estado], [PorcAvance], [PeriodoDesde], [PeriodoHasta]) VALUES (1, N'PRIMARIO', N'MERCEDES PACHECO', N'PRIMARIO', N'COMPLETO', 95, 1980, 1990)
INSERT [dbo].[EstudiosFormales] ([Id_EstudiosFormales], [Nivel], [Institucion], [Titulo], [Estado], [PorcAvance], [PeriodoDesde], [PeriodoHasta]) VALUES (2, N'BACHILLER', N'LICEO 6', N'SECUNDARIO', N'COMPLETO', 100, 1995, 2000)
INSERT [dbo].[EstudiosFormales] ([Id_EstudiosFormales], [Nivel], [Institucion], [Titulo], [Estado], [PorcAvance], [PeriodoDesde], [PeriodoHasta]) VALUES (3, N'TERCIARIO', N'UAI', N'ANALISTA', N'IMCOMPLETO', 80, 2000, 2003)
INSERT [dbo].[EstudiosFormales] ([Id_EstudiosFormales], [Nivel], [Institucion], [Titulo], [Estado], [PorcAvance], [PeriodoDesde], [PeriodoHasta]) VALUES (6, N'767', N'wqr', N'sdfsdf', N'sdf', 44, 3333, 33)
INSERT [dbo].[EstudiosFormales] ([Id_EstudiosFormales], [Nivel], [Institucion], [Titulo], [Estado], [PorcAvance], [PeriodoDesde], [PeriodoHasta]) VALUES (7, N'r34rwr', N'werwer', N'wr', N're', 2, 2, 2)
SET IDENTITY_INSERT [dbo].[EstudiosFormales] OFF
INSERT [dbo].[ExperienciaLaboral] ([Id_ExperienciaLaboral], [EmpresaNombre], [AreaEmpresa], [RubroEmpresa], [FechaInicio], [FechaFin], [Trabaja], [Puesto], [Descripcion], [PersonalCargo], [Comentarios]) VALUES (291, N'BANCO ICBC', N'FINANCIERA', N'BANCO', CAST(N'1998-09-01' AS Date), NULL, N'S', N'ANALISTA', N'SFHAIFHIUAHFI', 0, N'HHIHI')
SET IDENTITY_INSERT [dbo].[Grupo] ON 

INSERT [dbo].[Grupo] ([idGrupo], [CodigoGrupo], [Detalle]) VALUES (1, N'Administrador', N'Grupo de Administradores')
INSERT [dbo].[Grupo] ([idGrupo], [CodigoGrupo], [Detalle]) VALUES (2, N'Consultor', N'Grupo de consultores')
SET IDENTITY_INSERT [dbo].[Grupo] OFF
INSERT [dbo].[GrupoUsuario] ([idUsuario], [idGrupo]) VALUES (1, 1)
INSERT [dbo].[GrupoUsuario] ([idUsuario], [idGrupo]) VALUES (5, 2)
SET IDENTITY_INSERT [dbo].[Idioma] ON 

INSERT [dbo].[Idioma] ([Id_Idioma], [Idioma]) VALUES (1, N'Inglés')
INSERT [dbo].[Idioma] ([Id_Idioma], [Idioma]) VALUES (2, N'Hebreo')
INSERT [dbo].[Idioma] ([Id_Idioma], [Idioma]) VALUES (3, N'Frances')
INSERT [dbo].[Idioma] ([Id_Idioma], [Idioma]) VALUES (4, N'Italiano')
SET IDENTITY_INSERT [dbo].[Idioma] OFF
INSERT [dbo].[LocalidadBarrio] ([Id_LB], [NombreLocalidad], [Activo], [Id_Municipio]) VALUES (1, N'Agronomía', 1, 2)
INSERT [dbo].[Modulo] ([Id_Modulo], [ModuloDescripcion], [Activo], [Fijo]) VALUES (1, N'Datos Personales', 1, 1)
INSERT [dbo].[Modulo] ([Id_Modulo], [ModuloDescripcion], [Activo], [Fijo]) VALUES (2, N'Estudios Formales', 1, 1)
INSERT [dbo].[Modulo] ([Id_Modulo], [ModuloDescripcion], [Activo], [Fijo]) VALUES (3, N'Experiencia Laboral', 1, 0)
INSERT [dbo].[Modulo] ([Id_Modulo], [ModuloDescripcion], [Activo], [Fijo]) VALUES (4, N'Objetivo Laboral', 1, 0)
INSERT [dbo].[Modulo] ([Id_Modulo], [ModuloDescripcion], [Activo], [Fijo]) VALUES (5, N'Hobbies', 1, 0)
INSERT [dbo].[modulo_campo] ([modulo_id], [campo_id], [requerido], [posicion], [maxlength], [minlength], [valor]) VALUES (3, 1, 1, 1, 100, 10, N'Pesca')
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (1, N'Adolfo Alsina', 1, 1)
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (2, N'Alberti', 1, 1)
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (3, N'Almirante Brown', 1, 1)
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (4, N'Avellaneda', 1, 1)
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (5, N'Ayacucho', 1, 1)
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (6, N'Azul', 1, 1)
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (7, N'Bahia Blanca', 1, 1)
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (8, N'Balcarce', 1, 1)
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (9, N'Baradero', 1, 1)
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (10, N'Bartolome Mitre', 1, 1)
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (11, N'Benito Juarez', 1, 1)
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (12, N'Berazategui', 1, 1)
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (13, N'Brisso', 1, 1)
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (14, N'Bolivar', 1, 1)
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (15, N'Bragado', 1, 1)
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (16, N'Campana', 1, 1)
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (17, N'Cañuelas', 1, 1)
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (18, N'Capitan Sarmiento', 1, 1)
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (19, N'Carlos Casares', 1, 1)
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (20, N'Carlos Tejedor', 1, 1)
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (21, N'Carmen de Areco', 1, 1)
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (22, N'Carmen de Patagones', 1, 1)
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (23, N'Castelli', 1, 1)
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (24, N'Chacabuco', 1, 1)
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (25, N'Chascomús', 1, 1)
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (26, N'Chivilcoy', 1, 1)
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (27, N'Colon', 1, 1)
INSERT [dbo].[Municipio] ([Id_Municipio], [NombreMunicipio], [Activo], [Id_Provincia]) VALUES (28, N'Cuidad Autónoma de Buenos Aires', 1, 2)
SET IDENTITY_INSERT [dbo].[NivelManejo] ON 

INSERT [dbo].[NivelManejo] ([Id_NivelManejo], [NivelManejo]) VALUES (1, N'No Maneja')
INSERT [dbo].[NivelManejo] ([Id_NivelManejo], [NivelManejo]) VALUES (2, N'Básico')
INSERT [dbo].[NivelManejo] ([Id_NivelManejo], [NivelManejo]) VALUES (3, N'Medio')
INSERT [dbo].[NivelManejo] ([Id_NivelManejo], [NivelManejo]) VALUES (4, N'Avanzado')
INSERT [dbo].[NivelManejo] ([Id_NivelManejo], [NivelManejo]) VALUES (5, N'Bilingue')
INSERT [dbo].[NivelManejo] ([Id_NivelManejo], [NivelManejo]) VALUES (6, N'Materno')
SET IDENTITY_INSERT [dbo].[NivelManejo] OFF
SET IDENTITY_INSERT [dbo].[PostulanteIdioma] ON 

INSERT [dbo].[PostulanteIdioma] ([Id_PostulanteIdioma], [Id_Idioma], [Id_NivelManejo], [idUsuario], [Centro]) VALUES (3, 1, 2, 1, N'Ingles YA')
INSERT [dbo].[PostulanteIdioma] ([Id_PostulanteIdioma], [Id_Idioma], [Id_NivelManejo], [idUsuario], [Centro]) VALUES (4, 3, 2, 1, N'Alianza Francesa')
SET IDENTITY_INSERT [dbo].[PostulanteIdioma] OFF
INSERT [dbo].[Provincia] ([Id_Provincia], [NombreProvincia], [Activo]) VALUES (1, N'Buenos Aires', 1)
INSERT [dbo].[Provincia] ([Id_Provincia], [NombreProvincia], [Activo]) VALUES (2, N'Capital Federal', 1)
INSERT [dbo].[Provincia] ([Id_Provincia], [NombreProvincia], [Activo]) VALUES (3, N'Catamarca', 1)
INSERT [dbo].[Provincia] ([Id_Provincia], [NombreProvincia], [Activo]) VALUES (4, N'Chaco', 1)
INSERT [dbo].[Provincia] ([Id_Provincia], [NombreProvincia], [Activo]) VALUES (5, N'Chubut', 1)
INSERT [dbo].[Provincia] ([Id_Provincia], [NombreProvincia], [Activo]) VALUES (6, N'Cordoba', 1)
INSERT [dbo].[Provincia] ([Id_Provincia], [NombreProvincia], [Activo]) VALUES (7, N'Corrientes', 1)
INSERT [dbo].[Provincia] ([Id_Provincia], [NombreProvincia], [Activo]) VALUES (8, N'Entre Rios', 1)
INSERT [dbo].[Provincia] ([Id_Provincia], [NombreProvincia], [Activo]) VALUES (9, N'Formosa', 1)
INSERT [dbo].[Provincia] ([Id_Provincia], [NombreProvincia], [Activo]) VALUES (10, N'Jujuy', 1)
INSERT [dbo].[Provincia] ([Id_Provincia], [NombreProvincia], [Activo]) VALUES (11, N'La Pampa', 1)
INSERT [dbo].[Provincia] ([Id_Provincia], [NombreProvincia], [Activo]) VALUES (12, N'La Rioja', 1)
INSERT [dbo].[Provincia] ([Id_Provincia], [NombreProvincia], [Activo]) VALUES (13, N'Mendoza', 1)
INSERT [dbo].[Provincia] ([Id_Provincia], [NombreProvincia], [Activo]) VALUES (14, N'Misiones', 1)
INSERT [dbo].[Provincia] ([Id_Provincia], [NombreProvincia], [Activo]) VALUES (15, N'Neuquen', 1)
INSERT [dbo].[Provincia] ([Id_Provincia], [NombreProvincia], [Activo]) VALUES (16, N'Rio Negro', 1)
INSERT [dbo].[Provincia] ([Id_Provincia], [NombreProvincia], [Activo]) VALUES (17, N'Salta', 1)
INSERT [dbo].[Provincia] ([Id_Provincia], [NombreProvincia], [Activo]) VALUES (18, N'San Juan', 1)
INSERT [dbo].[Provincia] ([Id_Provincia], [NombreProvincia], [Activo]) VALUES (19, N'San Luis', 1)
INSERT [dbo].[Provincia] ([Id_Provincia], [NombreProvincia], [Activo]) VALUES (20, N'Santa Cruz', 1)
INSERT [dbo].[Provincia] ([Id_Provincia], [NombreProvincia], [Activo]) VALUES (21, N'Santa Fe', 1)
INSERT [dbo].[Provincia] ([Id_Provincia], [NombreProvincia], [Activo]) VALUES (22, N'Saniago del Estero', 1)
INSERT [dbo].[Provincia] ([Id_Provincia], [NombreProvincia], [Activo]) VALUES (23, N'Tierra del Fuego', 1)
INSERT [dbo].[Provincia] ([Id_Provincia], [NombreProvincia], [Activo]) VALUES (24, N'Tucuman', 1)
INSERT [dbo].[Puestos] ([Id_Puesto], [DescripciónPuesto], [Activo]) VALUES (1, N'Todos los Puestos', 1)
INSERT [dbo].[Puestos] ([Id_Puesto], [DescripciónPuesto], [Activo]) VALUES (2, N'Administracion y finanzas', 1)
INSERT [dbo].[Puestos] ([Id_Puesto], [DescripciónPuesto], [Activo]) VALUES (3, N'Arqiutectura y diseño', 1)
INSERT [dbo].[Puestos] ([Id_Puesto], [DescripciónPuesto], [Activo]) VALUES (4, N'Comercial y atencion al cliente', 1)
INSERT [dbo].[Puestos] ([Id_Puesto], [DescripciónPuesto], [Activo]) VALUES (5, N'Educacion', 1)
INSERT [dbo].[Puestos] ([Id_Puesto], [DescripciónPuesto], [Activo]) VALUES (6, N'Oficios y técnicos', 1)
INSERT [dbo].[Puestos] ([Id_Puesto], [DescripciónPuesto], [Activo]) VALUES (7, N'Operaciones', 1)
INSERT [dbo].[Puestos] ([Id_Puesto], [DescripciónPuesto], [Activo]) VALUES (8, N'Prensa, Comunicación y RRPP', 1)
INSERT [dbo].[Puestos] ([Id_Puesto], [DescripciónPuesto], [Activo]) VALUES (9, N'Producción e Ingeniería', 1)
INSERT [dbo].[Puestos] ([Id_Puesto], [DescripciónPuesto], [Activo]) VALUES (10, N'Recursos Humanos', 1)
INSERT [dbo].[Puestos] ([Id_Puesto], [DescripciónPuesto], [Activo]) VALUES (11, N'Auxiliar Contable', 1)
INSERT [dbo].[Puestos] ([Id_Puesto], [DescripciónPuesto], [Activo]) VALUES (12, N'Administrativo Contable', 1)
SET IDENTITY_INSERT [dbo].[Servicio] ON 

INSERT [dbo].[Servicio] ([Id_Servicio], [Id_CategoriaServicio], [Nombre], [Descripcion], [Precio], [Imagen], [Activo]) VALUES (1, 1, N'Servicio Premium ', N'Servicio de búsqueda completo', 1600, NULL, 1)
INSERT [dbo].[Servicio] ([Id_Servicio], [Id_CategoriaServicio], [Nombre], [Descripcion], [Precio], [Imagen], [Activo]) VALUES (4, 1, N'Servicio Express', N'Sistema de reclutamiento “DIRIGIDO”', 1000, NULL, 1)
INSERT [dbo].[Servicio] ([Id_Servicio], [Id_CategoriaServicio], [Nombre], [Descripcion], [Precio], [Imagen], [Activo]) VALUES (5, 1, N'Servicio aviso Inteligente', N'Servicio innovador y Accesible', 1200, NULL, 1)
INSERT [dbo].[Servicio] ([Id_Servicio], [Id_CategoriaServicio], [Nombre], [Descripcion], [Precio], [Imagen], [Activo]) VALUES (6, 2, N'Evaluación Psicotécnica', N'Servicio de evaluación Psicotécnica del postulante', 3500, NULL, 1)
INSERT [dbo].[Servicio] ([Id_Servicio], [Id_CategoriaServicio], [Nombre], [Descripcion], [Precio], [Imagen], [Activo]) VALUES (7, 2, N'Evaluación Socio Ambiental', N'Servicio de evaluacion socio ambiental del postulante', 2500, NULL, 1)
SET IDENTITY_INSERT [dbo].[Servicio] OFF
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([idUsuario], [usr], [password], [detalle], [activo]) VALUES (1, N'machiponto', N'LwlZX+UgqfDeXLLdvIOSBVL83P8KeyBGFtx12ZXTTn0H5nGUTk', NULL, 1)
INSERT [dbo].[Usuario] ([idUsuario], [usr], [password], [detalle], [activo]) VALUES (4, N'hectorb', N'sdsds', NULL, 1)
INSERT [dbo].[Usuario] ([idUsuario], [usr], [password], [detalle], [activo]) VALUES (5, N'machic', N'LwlZX+UgqfDeXLLdvIOSBVL83P8KeyBGFtx12ZXTTn0H5nGUTk', N'Usuario Consultor', 1)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
INSERT [dbo].[UsuarioBusqueda] ([idUsuario], [Id_Busqueda]) VALUES (1, 3)
INSERT [dbo].[UsuarioBusqueda] ([idUsuario], [Id_Busqueda]) VALUES (4, 1)
INSERT [dbo].[UsuarioBusqueda] ([idUsuario], [Id_Busqueda]) VALUES (4, 3)
ALTER TABLE [dbo].[Busqueda]  WITH CHECK ADD  CONSTRAINT [FK_Busqueda_Puestos] FOREIGN KEY([Id_Puesto])
REFERENCES [dbo].[Puestos] ([Id_Puesto])
GO
ALTER TABLE [dbo].[Busqueda] CHECK CONSTRAINT [FK_Busqueda_Puestos]
GO
ALTER TABLE [dbo].[CadidatosEstudiosFormales]  WITH CHECK ADD  CONSTRAINT [FK_CadidatosEstudiosFormales_DatosPersonales] FOREIGN KEY([Id_DatosPersonales])
REFERENCES [dbo].[DatosPersonales] ([Id_DatosPersonales])
GO
ALTER TABLE [dbo].[CadidatosEstudiosFormales] CHECK CONSTRAINT [FK_CadidatosEstudiosFormales_DatosPersonales]
GO
ALTER TABLE [dbo].[CadidatosEstudiosFormales]  WITH CHECK ADD  CONSTRAINT [FK_CadidatosEstudiosFormales_EstudiosFormales] FOREIGN KEY([Id_DatosPersonales])
REFERENCES [dbo].[EstudiosFormales] ([Id_EstudiosFormales])
GO
ALTER TABLE [dbo].[CadidatosEstudiosFormales] CHECK CONSTRAINT [FK_CadidatosEstudiosFormales_EstudiosFormales]
GO
ALTER TABLE [dbo].[CadidatosExperienciaLaboral]  WITH CHECK ADD  CONSTRAINT [FK_CadidatosExperienciaLaboral_CV] FOREIGN KEY([Id_DatosPersonales])
REFERENCES [dbo].[CV] ([idUsuario])
GO
ALTER TABLE [dbo].[CadidatosExperienciaLaboral] CHECK CONSTRAINT [FK_CadidatosExperienciaLaboral_CV]
GO
ALTER TABLE [dbo].[CandidatosEF]  WITH CHECK ADD  CONSTRAINT [FK_CandidatosEF_CV] FOREIGN KEY([Id_EstudiosFormales])
REFERENCES [dbo].[CV] ([idUsuario])
GO
ALTER TABLE [dbo].[CandidatosEF] CHECK CONSTRAINT [FK_CandidatosEF_CV]
GO
ALTER TABLE [dbo].[CandidatosEF]  WITH CHECK ADD  CONSTRAINT [FK_CandidatosEF_DatosPersonales] FOREIGN KEY([Id_DatosPersonales])
REFERENCES [dbo].[DatosPersonales] ([Id_DatosPersonales])
GO
ALTER TABLE [dbo].[CandidatosEF] CHECK CONSTRAINT [FK_CandidatosEF_DatosPersonales]
GO
ALTER TABLE [dbo].[CandidatosEF]  WITH CHECK ADD  CONSTRAINT [FK_CandidatosEF_EstudiosFormales] FOREIGN KEY([Id_EstudiosFormales])
REFERENCES [dbo].[EstudiosFormales] ([Id_EstudiosFormales])
GO
ALTER TABLE [dbo].[CandidatosEF] CHECK CONSTRAINT [FK_CandidatosEF_EstudiosFormales]
GO
ALTER TABLE [dbo].[CandidatosEL]  WITH CHECK ADD  CONSTRAINT [FK_CandidatosEL_CV] FOREIGN KEY([Id_DatosPersonales])
REFERENCES [dbo].[CV] ([idUsuario])
GO
ALTER TABLE [dbo].[CandidatosEL] CHECK CONSTRAINT [FK_CandidatosEL_CV]
GO
ALTER TABLE [dbo].[CandidatosEL]  WITH CHECK ADD  CONSTRAINT [FK_CandidatosEL_DatosPersonales1] FOREIGN KEY([Id_DatosPersonales])
REFERENCES [dbo].[DatosPersonales] ([Id_DatosPersonales])
GO
ALTER TABLE [dbo].[CandidatosEL] CHECK CONSTRAINT [FK_CandidatosEL_DatosPersonales1]
GO
ALTER TABLE [dbo].[CandidatosEL]  WITH CHECK ADD  CONSTRAINT [FK_CandidatosEL_ExperienciaLaboral] FOREIGN KEY([Id_ExperienciaLaboral])
REFERENCES [dbo].[ExperienciaLaboral] ([Id_ExperienciaLaboral])
GO
ALTER TABLE [dbo].[CandidatosEL] CHECK CONSTRAINT [FK_CandidatosEL_ExperienciaLaboral]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Usuario]
GO
ALTER TABLE [dbo].[ComprobanteCabecera]  WITH CHECK ADD  CONSTRAINT [FK_ComprobanteCabecera_Sucursal] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[Sucursal] ([idSucursal])
GO
ALTER TABLE [dbo].[ComprobanteCabecera] CHECK CONSTRAINT [FK_ComprobanteCabecera_Sucursal]
GO
ALTER TABLE [dbo].[ComprobanteCabecera]  WITH CHECK ADD  CONSTRAINT [FK_ComprobanteCabecera_TipoComprobante] FOREIGN KEY([tipoComprobante])
REFERENCES [dbo].[TipoComprobante] ([idTipoComprobante])
GO
ALTER TABLE [dbo].[ComprobanteCabecera] CHECK CONSTRAINT [FK_ComprobanteCabecera_TipoComprobante]
GO
ALTER TABLE [dbo].[ComprobanteDetalle]  WITH CHECK ADD  CONSTRAINT [FK_ComprobanteDetalle_ComprobanteCabecera] FOREIGN KEY([idComprobanteCabecera])
REFERENCES [dbo].[ComprobanteCabecera] ([idComprobanteCabecera])
GO
ALTER TABLE [dbo].[ComprobanteDetalle] CHECK CONSTRAINT [FK_ComprobanteDetalle_ComprobanteCabecera]
GO
ALTER TABLE [dbo].[ComprobanteDetalle]  WITH CHECK ADD  CONSTRAINT [FK_ComprobanteDetalle_Servicio] FOREIGN KEY([Id_Servicio])
REFERENCES [dbo].[Servicio] ([Id_Servicio])
GO
ALTER TABLE [dbo].[ComprobanteDetalle] CHECK CONSTRAINT [FK_ComprobanteDetalle_Servicio]
GO
ALTER TABLE [dbo].[CV]  WITH CHECK ADD  CONSTRAINT [FK_CV_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[CV] CHECK CONSTRAINT [FK_CV_Usuario]
GO
ALTER TABLE [dbo].[cv_modulos]  WITH CHECK ADD  CONSTRAINT [FK_cv_modulos_Modulo] FOREIGN KEY([modulo_id])
REFERENCES [dbo].[Modulo] ([Id_Modulo])
GO
ALTER TABLE [dbo].[cv_modulos] CHECK CONSTRAINT [FK_cv_modulos_Modulo]
GO
ALTER TABLE [dbo].[GrupoUsuario]  WITH CHECK ADD  CONSTRAINT [FK_GrupoUsuario_Grupo] FOREIGN KEY([idGrupo])
REFERENCES [dbo].[Grupo] ([idGrupo])
GO
ALTER TABLE [dbo].[GrupoUsuario] CHECK CONSTRAINT [FK_GrupoUsuario_Grupo]
GO
ALTER TABLE [dbo].[GrupoUsuario]  WITH CHECK ADD  CONSTRAINT [FK_GrupoUsuario_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[GrupoUsuario] CHECK CONSTRAINT [FK_GrupoUsuario_Usuario]
GO
ALTER TABLE [dbo].[LocalidadBarrio]  WITH CHECK ADD FOREIGN KEY([Id_Municipio])
REFERENCES [dbo].[Municipio] ([Id_Municipio])
GO
ALTER TABLE [dbo].[modulo_campo]  WITH CHECK ADD  CONSTRAINT [FK_modulo_campo_campos] FOREIGN KEY([campo_id])
REFERENCES [dbo].[campos] ([id])
GO
ALTER TABLE [dbo].[modulo_campo] CHECK CONSTRAINT [FK_modulo_campo_campos]
GO
ALTER TABLE [dbo].[modulo_campo]  WITH CHECK ADD  CONSTRAINT [FK_modulo_campo_Modulo] FOREIGN KEY([modulo_id])
REFERENCES [dbo].[Modulo] ([Id_Modulo])
GO
ALTER TABLE [dbo].[modulo_campo] CHECK CONSTRAINT [FK_modulo_campo_Modulo]
GO
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD FOREIGN KEY([Id_Provincia])
REFERENCES [dbo].[Provincia] ([Id_Provincia])
GO
ALTER TABLE [dbo].[PostulanteIdioma]  WITH CHECK ADD  CONSTRAINT [FK_PostulanteIdioma_Idioma] FOREIGN KEY([Id_Idioma])
REFERENCES [dbo].[Idioma] ([Id_Idioma])
GO
ALTER TABLE [dbo].[PostulanteIdioma] CHECK CONSTRAINT [FK_PostulanteIdioma_Idioma]
GO
ALTER TABLE [dbo].[PostulanteIdioma]  WITH CHECK ADD  CONSTRAINT [FK_PostulanteIdioma_NivelManejo] FOREIGN KEY([Id_NivelManejo])
REFERENCES [dbo].[NivelManejo] ([Id_NivelManejo])
GO
ALTER TABLE [dbo].[PostulanteIdioma] CHECK CONSTRAINT [FK_PostulanteIdioma_NivelManejo]
GO
ALTER TABLE [dbo].[PostulanteIdioma]  WITH CHECK ADD  CONSTRAINT [FK_PostulanteIdioma_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[PostulanteIdioma] CHECK CONSTRAINT [FK_PostulanteIdioma_Usuario]
GO
ALTER TABLE [dbo].[Servicio]  WITH CHECK ADD  CONSTRAINT [FK_Servicio_CategoriaServicio] FOREIGN KEY([Id_CategoriaServicio])
REFERENCES [dbo].[CategoriaServicio] ([Id_CategoriaServicio])
GO
ALTER TABLE [dbo].[Servicio] CHECK CONSTRAINT [FK_Servicio_CategoriaServicio]
GO
ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD  CONSTRAINT [FK_Sucursal_Empresa] FOREIGN KEY([idEmpresa])
REFERENCES [dbo].[Empresa] ([idEmpresa])
GO
ALTER TABLE [dbo].[Sucursal] CHECK CONSTRAINT [FK_Sucursal_Empresa]
GO
ALTER TABLE [dbo].[UsuarioBusqueda]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioBusqueda_Busqueda] FOREIGN KEY([Id_Busqueda])
REFERENCES [dbo].[Busqueda] ([Id_Busqueda])
GO
ALTER TABLE [dbo].[UsuarioBusqueda] CHECK CONSTRAINT [FK_UsuarioBusqueda_Busqueda]
GO
ALTER TABLE [dbo].[UsuarioBusqueda]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioBusqueda_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[UsuarioBusqueda] CHECK CONSTRAINT [FK_UsuarioBusqueda_Usuario]
GO
ALTER TABLE [dbo].[UsuarioPermiso]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioPermiso_Permiso] FOREIGN KEY([idPermiso])
REFERENCES [dbo].[Permiso] ([idPermiso])
GO
ALTER TABLE [dbo].[UsuarioPermiso] CHECK CONSTRAINT [FK_UsuarioPermiso_Permiso]
GO
ALTER TABLE [dbo].[UsuarioPermiso]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioPermiso_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[UsuarioPermiso] CHECK CONSTRAINT [FK_UsuarioPermiso_Usuario]
GO
/****** Object:  StoredProcedure [dbo].[SPBuscarEventosBitacora]    Script Date: 27/11/2019 18:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SPBuscarEventosBitacora]
	@pIdBitacora AS int = NULL,
	@pModulo AS varchar(50) = NULL,
	@pTipo AS varchar(50) = NULL,
	@pDetalle AS varchar(2000) = NULL
AS
BEGIN
	SELECT * 
	FROM [dbo].[Bitacora]
	WHERE [idBitacora] = @pIdBitacora OR [modulo] = @pModulo OR [tipo] = @pTipo 
	OR [detalle] LIKE '%' + @pDetalle + '%'
END



GO
USE [master]
GO
ALTER DATABASE [MachiConsultoraVF] SET  READ_WRITE 
GO
