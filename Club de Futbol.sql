/* Nombre: Jacob Enamanuel Gomez Yamaguchi Matricula: 15-EIIN-1-015 Seccion: 0541*/ 
USE [master]
GO
/****** Object:  Database [Club de Futbol]    Script Date: 2/4/2018 8:55:07 a. m. ******/
CREATE DATABASE [Club de Futbol]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Club de Futbol', FILENAME = N'C:\Users\bocaj\Desktop\MSSQL14.SQLEXPRESS01\MSSQL\DATA\Club de Futbol.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Club de Futbol_log', FILENAME = N'C:\Users\bocaj\Desktop\MSSQL14.SQLEXPRESS01\MSSQL\DATA\Club de Futbol_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Club de Futbol] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Club de Futbol].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Club de Futbol] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Club de Futbol] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Club de Futbol] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Club de Futbol] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Club de Futbol] SET ARITHABORT OFF 
GO
ALTER DATABASE [Club de Futbol] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Club de Futbol] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Club de Futbol] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Club de Futbol] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Club de Futbol] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Club de Futbol] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Club de Futbol] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Club de Futbol] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Club de Futbol] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Club de Futbol] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Club de Futbol] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Club de Futbol] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Club de Futbol] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Club de Futbol] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Club de Futbol] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Club de Futbol] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Club de Futbol] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Club de Futbol] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Club de Futbol] SET  MULTI_USER 
GO
ALTER DATABASE [Club de Futbol] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Club de Futbol] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Club de Futbol] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Club de Futbol] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Club de Futbol] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Club de Futbol] SET QUERY_STORE = OFF
GO
USE [Club de Futbol]
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
USE [Club de Futbol]
GO
/****** Object:  Table [dbo].[Acesorios]    Script Date: 2/4/2018 8:55:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Acesorios](
	[AcesoriosId] [int] NOT NULL,
	[Cantidad de pelotas] [numeric](18, 0) NULL,
	[CAntidad de mallas] [numeric](18, 0) NULL,
	[Cantida de uniformes] [numeric](18, 0) NULL,
	[Marca de Tenis] [varchar](50) NULL,
 CONSTRAINT [PK_Acesorios] PRIMARY KEY CLUSTERED 
(
	[AcesoriosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CampoId]    Script Date: 2/4/2018 8:55:09 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CampoId](
	[CampoId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Lugar] [varchar](50) NULL,
	[Telefono] [decimal](18, 0) NULL,
	[EscuelasId] [int] NULL,
 CONSTRAINT [PK_Campo] PRIMARY KEY CLUSTERED 
(
	[CampoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Escuela]    Script Date: 2/4/2018 8:55:09 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Escuela](
	[EscuelasId] [int] NOT NULL,
	[JugadoresId] [int] NULL,
	[AcesoriosId] [int] NULL,
	[TrabajadoresId] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Coordinador] [varchar](50) NULL,
 CONSTRAINT [PK_Escuela] PRIMARY KEY CLUSTERED 
(
	[EscuelasId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jugadores]    Script Date: 2/4/2018 8:55:09 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jugadores](
	[JugadoresId] [int] NOT NULL,
	[Nombre] [varchar](150) NULL,
	[Telefono] [decimal](18, 0) NULL,
	[Año de Nacimiento] [numeric](18, 0) NULL,
	[Color de Piel] [varchar](1) NULL,
 CONSTRAINT [PK_Jugadore] PRIMARY KEY CLUSTERED 
(
	[JugadoresId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trabajadores]    Script Date: 2/4/2018 8:55:10 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trabajadores](
	[TrabajadoresId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Telefono] [decimal](18, 0) NULL,
	[Sexo] [varchar](1) NULL,
	[Puesto de trabajo] [varchar](50) NULL,
	[Año de Nacimiento] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Trabajadores] PRIMARY KEY CLUSTERED 
(
	[TrabajadoresId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Acesorios] ([AcesoriosId], [Cantidad de pelotas], [CAntidad de mallas], [Cantida de uniformes], [Marca de Tenis]) VALUES (1, CAST(4 AS Numeric(18, 0)), CAST(4545 AS Numeric(18, 0)), CAST(50 AS Numeric(18, 0)), N'Convert')
INSERT [dbo].[Acesorios] ([AcesoriosId], [Cantidad de pelotas], [CAntidad de mallas], [Cantida de uniformes], [Marca de Tenis]) VALUES (2, CAST(5 AS Numeric(18, 0)), CAST(345 AS Numeric(18, 0)), CAST(56 AS Numeric(18, 0)), N'Sonic')
INSERT [dbo].[Acesorios] ([AcesoriosId], [Cantidad de pelotas], [CAntidad de mallas], [Cantida de uniformes], [Marca de Tenis]) VALUES (3, CAST(6 AS Numeric(18, 0)), CAST(45 AS Numeric(18, 0)), CAST(54 AS Numeric(18, 0)), N'Addidas')
INSERT [dbo].[Acesorios] ([AcesoriosId], [Cantidad de pelotas], [CAntidad de mallas], [Cantida de uniformes], [Marca de Tenis]) VALUES (4, CAST(78 AS Numeric(18, 0)), CAST(45 AS Numeric(18, 0)), CAST(58 AS Numeric(18, 0)), N'Convert')
INSERT [dbo].[Acesorios] ([AcesoriosId], [Cantidad de pelotas], [CAntidad de mallas], [Cantida de uniformes], [Marca de Tenis]) VALUES (5, CAST(98 AS Numeric(18, 0)), CAST(5656 AS Numeric(18, 0)), CAST(60 AS Numeric(18, 0)), N'Addidas')
INSERT [dbo].[Acesorios] ([AcesoriosId], [Cantidad de pelotas], [CAntidad de mallas], [Cantida de uniformes], [Marca de Tenis]) VALUES (6, CAST(4 AS Numeric(18, 0)), CAST(34 AS Numeric(18, 0)), CAST(67 AS Numeric(18, 0)), N'Nike')
INSERT [dbo].[Acesorios] ([AcesoriosId], [Cantidad de pelotas], [CAntidad de mallas], [Cantida de uniformes], [Marca de Tenis]) VALUES (7, CAST(56 AS Numeric(18, 0)), NULL, CAST(50 AS Numeric(18, 0)), N'Nike')
INSERT [dbo].[Acesorios] ([AcesoriosId], [Cantidad de pelotas], [CAntidad de mallas], [Cantida de uniformes], [Marca de Tenis]) VALUES (8, CAST(78 AS Numeric(18, 0)), CAST(44 AS Numeric(18, 0)), CAST(90 AS Numeric(18, 0)), N'Nike')
INSERT [dbo].[Acesorios] ([AcesoriosId], [Cantidad de pelotas], [CAntidad de mallas], [Cantida de uniformes], [Marca de Tenis]) VALUES (9, CAST(9 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(88 AS Numeric(18, 0)), N'Addidas')
INSERT [dbo].[Acesorios] ([AcesoriosId], [Cantidad de pelotas], [CAntidad de mallas], [Cantida de uniformes], [Marca de Tenis]) VALUES (10, CAST(5 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(77 AS Numeric(18, 0)), N'Nike')
INSERT [dbo].[CampoId] ([CampoId], [Nombre], [Lugar], [Telefono], [EscuelasId]) VALUES (1, N'Los Guayacanes', N'D.N', CAST(8494737433 AS Decimal(18, 0)), 6)
INSERT [dbo].[CampoId] ([CampoId], [Nombre], [Lugar], [Telefono], [EscuelasId]) VALUES (2, N'Los Nunca', N'Santiago', CAST(8294746464 AS Decimal(18, 0)), 5)
INSERT [dbo].[CampoId] ([CampoId], [Nombre], [Lugar], [Telefono], [EscuelasId]) VALUES (3, N'Los Matris', N'Mao', CAST(8097347545 AS Decimal(18, 0)), 4)
INSERT [dbo].[CampoId] ([CampoId], [Nombre], [Lugar], [Telefono], [EscuelasId]) VALUES (4, N'Los Lavas', N'Higuey', CAST(8295674844 AS Decimal(18, 0)), 3)
INSERT [dbo].[CampoId] ([CampoId], [Nombre], [Lugar], [Telefono], [EscuelasId]) VALUES (5, N'Los Chin ', N'Puerto Plata', CAST(8090098988 AS Decimal(18, 0)), 1)
INSERT [dbo].[CampoId] ([CampoId], [Nombre], [Lugar], [Telefono], [EscuelasId]) VALUES (6, N'Los Cool', N'Nagua', CAST(8096547355 AS Decimal(18, 0)), 7)
INSERT [dbo].[CampoId] ([CampoId], [Nombre], [Lugar], [Telefono], [EscuelasId]) VALUES (7, N'Los Cold', N'Bani', CAST(8093642632 AS Decimal(18, 0)), 2)
INSERT [dbo].[CampoId] ([CampoId], [Nombre], [Lugar], [Telefono], [EscuelasId]) VALUES (8, N'Los Very', N'Peravia', CAST(8097454546 AS Decimal(18, 0)), 10)
INSERT [dbo].[CampoId] ([CampoId], [Nombre], [Lugar], [Telefono], [EscuelasId]) VALUES (9, N'Los Nadores', N'Seibo', CAST(8094545678 AS Decimal(18, 0)), 9)
INSERT [dbo].[CampoId] ([CampoId], [Nombre], [Lugar], [Telefono], [EscuelasId]) VALUES (10, N'Los Chimichuris', N'Rosario', CAST(8094243432 AS Decimal(18, 0)), 8)
INSERT [dbo].[Escuela] ([EscuelasId], [JugadoresId], [AcesoriosId], [TrabajadoresId], [Nombre], [Coordinador]) VALUES (1, 2, 7, 12, N'Luvia ', N'Llamio Lomao')
INSERT [dbo].[Escuela] ([EscuelasId], [JugadoresId], [AcesoriosId], [TrabajadoresId], [Nombre], [Coordinador]) VALUES (2, 3, 6, 11, N'Grido', N'Cursino Crei')
INSERT [dbo].[Escuela] ([EscuelasId], [JugadoresId], [AcesoriosId], [TrabajadoresId], [Nombre], [Coordinador]) VALUES (3, 6, 5, 6, N'Censor', N'Cristofer Plino')
INSERT [dbo].[Escuela] ([EscuelasId], [JugadoresId], [AcesoriosId], [TrabajadoresId], [Nombre], [Coordinador]) VALUES (4, 5, 4, 7, N'Logo', N'Creol Cri')
INSERT [dbo].[Escuela] ([EscuelasId], [JugadoresId], [AcesoriosId], [TrabajadoresId], [Nombre], [Coordinador]) VALUES (5, 1, 1, 8, N'Crea', N'Leon Milon')
INSERT [dbo].[Escuela] ([EscuelasId], [JugadoresId], [AcesoriosId], [TrabajadoresId], [Nombre], [Coordinador]) VALUES (6, 4, 2, 4, N'Logro', N'Lirio Castillo')
INSERT [dbo].[Escuela] ([EscuelasId], [JugadoresId], [AcesoriosId], [TrabajadoresId], [Nombre], [Coordinador]) VALUES (7, 8, 3, 3, N'Meta', N'Crsitian Lillo')
INSERT [dbo].[Escuela] ([EscuelasId], [JugadoresId], [AcesoriosId], [TrabajadoresId], [Nombre], [Coordinador]) VALUES (8, 10, 10, 2, N'Silicio ', N'Celso peres')
INSERT [dbo].[Escuela] ([EscuelasId], [JugadoresId], [AcesoriosId], [TrabajadoresId], [Nombre], [Coordinador]) VALUES (9, 9, 9, 1, N'Martillo', N'Juan Mendes')
INSERT [dbo].[Escuela] ([EscuelasId], [JugadoresId], [AcesoriosId], [TrabajadoresId], [Nombre], [Coordinador]) VALUES (10, 7, 8, 5, N'Criol', N'Chileno Gonzales')
INSERT [dbo].[Jugadores] ([JugadoresId], [Nombre], [Telefono], [Año de Nacimiento], [Color de Piel]) VALUES (1, N'Capitan de la Rosa', CAST(8297464344 AS Decimal(18, 0)), CAST(1998 AS Numeric(18, 0)), N'A')
INSERT [dbo].[Jugadores] ([JugadoresId], [Nombre], [Telefono], [Año de Nacimiento], [Color de Piel]) VALUES (2, N'Simon Bolivar ', CAST(8094774546 AS Decimal(18, 0)), CAST(1999 AS Numeric(18, 0)), N'N')
INSERT [dbo].[Jugadores] ([JugadoresId], [Nombre], [Telefono], [Año de Nacimiento], [Color de Piel]) VALUES (3, N'Pedro Hernandez', CAST(8297464647 AS Decimal(18, 0)), CAST(1993 AS Numeric(18, 0)), N'B')
INSERT [dbo].[Jugadores] ([JugadoresId], [Nombre], [Telefono], [Año de Nacimiento], [Color de Piel]) VALUES (4, N'Silencio Cuya', CAST(8094746555 AS Decimal(18, 0)), CAST(1994 AS Numeric(18, 0)), N'B')
INSERT [dbo].[Jugadores] ([JugadoresId], [Nombre], [Telefono], [Año de Nacimiento], [Color de Piel]) VALUES (5, N'Sabado liro', CAST(8094736343 AS Decimal(18, 0)), CAST(1992 AS Numeric(18, 0)), N'B')
INSERT [dbo].[Jugadores] ([JugadoresId], [Nombre], [Telefono], [Año de Nacimiento], [Color de Piel]) VALUES (6, N'Domingo Fluor', CAST(8095758933 AS Decimal(18, 0)), CAST(1992 AS Numeric(18, 0)), N'A')
INSERT [dbo].[Jugadores] ([JugadoresId], [Nombre], [Telefono], [Año de Nacimiento], [Color de Piel]) VALUES (7, N'Mingo Peres', CAST(8497564734 AS Decimal(18, 0)), CAST(1991 AS Numeric(18, 0)), N'N')
INSERT [dbo].[Jugadores] ([JugadoresId], [Nombre], [Telefono], [Año de Nacimiento], [Color de Piel]) VALUES (8, N'Ernesto Paulino', CAST(8293756744 AS Decimal(18, 0)), CAST(1990 AS Numeric(18, 0)), N'I')
INSERT [dbo].[Jugadores] ([JugadoresId], [Nombre], [Telefono], [Año de Nacimiento], [Color de Piel]) VALUES (9, N'Crusialisto Mingaja', CAST(8094875433 AS Decimal(18, 0)), CAST(1994 AS Numeric(18, 0)), N'I')
INSERT [dbo].[Jugadores] ([JugadoresId], [Nombre], [Telefono], [Año de Nacimiento], [Color de Piel]) VALUES (10, N'Chelo Chila', CAST(8095647483 AS Decimal(18, 0)), CAST(1999 AS Numeric(18, 0)), N'N')
INSERT [dbo].[Jugadores] ([JugadoresId], [Nombre], [Telefono], [Año de Nacimiento], [Color de Piel]) VALUES (11, N'Quisanoba Contra', CAST(8095646743 AS Decimal(18, 0)), CAST(2000 AS Numeric(18, 0)), N'A')
INSERT [dbo].[Trabajadores] ([TrabajadoresId], [Nombre], [Telefono], [Sexo], [Puesto de trabajo], [Año de Nacimiento]) VALUES (1, N'Juan Melanio', CAST(8096473822 AS Decimal(18, 0)), N'M', N'Limpia Baños', CAST(1992 AS Numeric(18, 0)))
INSERT [dbo].[Trabajadores] ([TrabajadoresId], [Nombre], [Telefono], [Sexo], [Puesto de trabajo], [Año de Nacimiento]) VALUES (2, N'Melania Cortez', CAST(8096483945 AS Decimal(18, 0)), N'F', N'Recogedora', CAST(1978 AS Numeric(18, 0)))
INSERT [dbo].[Trabajadores] ([TrabajadoresId], [Nombre], [Telefono], [Sexo], [Puesto de trabajo], [Año de Nacimiento]) VALUES (3, N'Critian de la Fuente', CAST(8096472934 AS Decimal(18, 0)), N'M', N'Limpia Pelotas', CAST(1999 AS Numeric(18, 0)))
INSERT [dbo].[Trabajadores] ([TrabajadoresId], [Nombre], [Telefono], [Sexo], [Puesto de trabajo], [Año de Nacimiento]) VALUES (4, N'Melen Molis', CAST(8299075675 AS Decimal(18, 0)), N'F', N'Corta Grama', CAST(1993 AS Numeric(18, 0)))
INSERT [dbo].[Trabajadores] ([TrabajadoresId], [Nombre], [Telefono], [Sexo], [Puesto de trabajo], [Año de Nacimiento]) VALUES (5, N'Giuliano Cervantes', CAST(8290485940 AS Decimal(18, 0)), N'M', N'Limpia Pasillos', CAST(1994 AS Numeric(18, 0)))
INSERT [dbo].[Trabajadores] ([TrabajadoresId], [Nombre], [Telefono], [Sexo], [Puesto de trabajo], [Año de Nacimiento]) VALUES (6, N'Gabriel Mendes', CAST(8092323233 AS Decimal(18, 0)), N'M', N'Recoge bolas', CAST(1993 AS Numeric(18, 0)))
INSERT [dbo].[Trabajadores] ([TrabajadoresId], [Nombre], [Telefono], [Sexo], [Puesto de trabajo], [Año de Nacimiento]) VALUES (7, N'Selcio pelo', CAST(8095675432 AS Decimal(18, 0)), N'M', N'Limpia zapato', CAST(1992 AS Numeric(18, 0)))
INSERT [dbo].[Trabajadores] ([TrabajadoresId], [Nombre], [Telefono], [Sexo], [Puesto de trabajo], [Año de Nacimiento]) VALUES (8, N'Celso Fabian', CAST(8094543212 AS Decimal(18, 0)), N'M', N'Lavador de uniformes', CAST(1982 AS Numeric(18, 0)))
INSERT [dbo].[Trabajadores] ([TrabajadoresId], [Nombre], [Telefono], [Sexo], [Puesto de trabajo], [Año de Nacimiento]) VALUES (9, N'Felipe Furgon', CAST(8293453213 AS Decimal(18, 0)), N'M', N'Limpia Duchas', CAST(1988 AS Numeric(18, 0)))
INSERT [dbo].[Trabajadores] ([TrabajadoresId], [Nombre], [Telefono], [Sexo], [Puesto de trabajo], [Año de Nacimiento]) VALUES (10, N'Nelso de la Cruz', CAST(8490897656 AS Decimal(18, 0)), N'M', N'Limpia techos', CAST(1991 AS Numeric(18, 0)))
INSERT [dbo].[Trabajadores] ([TrabajadoresId], [Nombre], [Telefono], [Sexo], [Puesto de trabajo], [Año de Nacimiento]) VALUES (11, N'Viabian Fuentes', CAST(8096754333 AS Decimal(18, 0)), N'F', N'Cocinera', CAST(1992 AS Numeric(18, 0)))
INSERT [dbo].[Trabajadores] ([TrabajadoresId], [Nombre], [Telefono], [Sexo], [Puesto de trabajo], [Año de Nacimiento]) VALUES (12, N'Cotreras contreras', CAST(8096765434 AS Decimal(18, 0)), N'M', N'Barredor', CAST(1985 AS Numeric(18, 0)))
ALTER TABLE [dbo].[CampoId]  WITH CHECK ADD  CONSTRAINT [FK_Campo_Escuela] FOREIGN KEY([EscuelasId])
REFERENCES [dbo].[Escuela] ([EscuelasId])
GO
ALTER TABLE [dbo].[CampoId] CHECK CONSTRAINT [FK_Campo_Escuela]
GO
ALTER TABLE [dbo].[Escuela]  WITH CHECK ADD  CONSTRAINT [FK_Escuela_Acesorios] FOREIGN KEY([AcesoriosId])
REFERENCES [dbo].[Acesorios] ([AcesoriosId])
GO
ALTER TABLE [dbo].[Escuela] CHECK CONSTRAINT [FK_Escuela_Acesorios]
GO
ALTER TABLE [dbo].[Escuela]  WITH CHECK ADD  CONSTRAINT [FK_Escuela_Jugadores] FOREIGN KEY([JugadoresId])
REFERENCES [dbo].[Jugadores] ([JugadoresId])
GO
ALTER TABLE [dbo].[Escuela] CHECK CONSTRAINT [FK_Escuela_Jugadores]
GO
ALTER TABLE [dbo].[Escuela]  WITH CHECK ADD  CONSTRAINT [FK_Escuela_Trabajadores] FOREIGN KEY([TrabajadoresId])
REFERENCES [dbo].[Trabajadores] ([TrabajadoresId])
GO
ALTER TABLE [dbo].[Escuela] CHECK CONSTRAINT [FK_Escuela_Trabajadores]
GO
USE [master]
GO
ALTER DATABASE [Club de Futbol] SET  READ_WRITE 
GO
