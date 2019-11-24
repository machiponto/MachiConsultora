USE [master]
GO
/****** Object:  Database [MachiConsultoraVF]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[Areas]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[Bitacora]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[Busqueda]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[CadidatosEstudiosFormales]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[CadidatosExperienciaLaboral]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[campos]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[CandidatosEF]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[CandidatosEL]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[CategoriaServicio]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[Cliente]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[ComprobanteCabecera]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[ComprobanteDetalle]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[CV]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[cv_modulos]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[DatosPersonales]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[Empresa]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[Estados]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[EstudiosFormales]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[ExperienciaLaboral]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[Grupo]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[GrupoUsuario]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[Idioma]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[LocalidadBarrio]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[Modulo]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[modulo_campo]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[Municipio]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[NivelManejo]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[Permiso]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[PostulanteIdioma]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[Provincia]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[Puestos]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[Servicio]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[Sucursal]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[TipoComprobante]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[Usuario]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[UsuarioBusqueda]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  Table [dbo].[UsuarioPermiso]    Script Date: 24/11/2019 10:50:53 ******/
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
/****** Object:  StoredProcedure [dbo].[SPBuscarEventosBitacora]    Script Date: 24/11/2019 10:50:53 ******/
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
