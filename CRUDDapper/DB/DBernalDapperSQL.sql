USE [master]
GO
/****** Object:  Database [DBernalDapperSQL]    Script Date: 10/14/2022 1:26:27 PM ******/
CREATE DATABASE [DBernalDapperSQL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBernalDapperSQL', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DBernalDapperSQL.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBernalDapperSQL_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DBernalDapperSQL_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DBernalDapperSQL] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBernalDapperSQL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBernalDapperSQL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBernalDapperSQL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBernalDapperSQL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBernalDapperSQL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBernalDapperSQL] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBernalDapperSQL] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DBernalDapperSQL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBernalDapperSQL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBernalDapperSQL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBernalDapperSQL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBernalDapperSQL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBernalDapperSQL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBernalDapperSQL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBernalDapperSQL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBernalDapperSQL] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DBernalDapperSQL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBernalDapperSQL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBernalDapperSQL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBernalDapperSQL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBernalDapperSQL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBernalDapperSQL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBernalDapperSQL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBernalDapperSQL] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBernalDapperSQL] SET  MULTI_USER 
GO
ALTER DATABASE [DBernalDapperSQL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBernalDapperSQL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBernalDapperSQL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBernalDapperSQL] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBernalDapperSQL] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBernalDapperSQL] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DBernalDapperSQL] SET QUERY_STORE = OFF
GO
USE [DBernalDapperSQL]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 10/14/2022 1:26:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumno](
	[IdAlumno] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ApellidoPaterno] [varchar](50) NOT NULL,
	[ApellidoMaterno] [varchar](50) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Matricula] [varchar](20) NOT NULL,
	[Sexo] [char](2) NOT NULL,
	[Email] [varchar](120) NOT NULL,
	[IdSemestre] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semestre]    Script Date: 10/14/2022 1:26:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semestre](
	[IdSemestre] [tinyint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSemestre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Alumno] ON 

INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (1, N'Daniel', N'Bernal', N'Palmieri', CAST(N'2000-05-17' AS Date), N'303719769-2', N'M ', N'dbernal@gmail.com', 9)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (2, N'Zachary', N'Ruskin', N'Brundall', CAST(N'1998-03-27' AS Date), N'134122188-1', N'M ', N'zbrundall1@gravatar.com', 9)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (3, N'Bette-ann', N'Bill', N'Esson', CAST(N'1998-03-13' AS Date), N'112768506-6', N'F ', N'besson2@oaic.gov.au', 3)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (4, N'Gwendolin', N'Daltry', N'Willan', CAST(N'2000-10-17' AS Date), N'987170340-6', N'F ', N'gwillan3@diigo.com', 1)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (5, N'Mattie', N'Phuprate', N'Heugel', CAST(N'1999-01-11' AS Date), N'670996005-6', N'M ', N'mheugel4@epa.gov', 3)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (7, N'Alphonse', N'Lydon', N'Zink', CAST(N'1997-08-27' AS Date), N'360139917-2', N'M ', N'azink6@sohu.com', 8)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (8, N'Lynnelle', N'McConachie', N'Udey', CAST(N'1997-10-15' AS Date), N'128202712-3', N'F ', N'ludey7@opera.com', 9)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (9, N'Charo', N'Haysham', N'Bold', CAST(N'1999-06-03' AS Date), N'253389052-9', N'F ', N'cbold8@irs.gov', 4)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (10, N'Kienan', N'Gatheridge', N'Pascow', CAST(N'1996-10-24' AS Date), N'913740633-7', N'M ', N'kpascow9@google.pl', 4)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (11, N'Kristoffer', N'Swinburn', N'Dignam', CAST(N'2000-02-18' AS Date), N'120714026-0', N'M ', N'kdignama@phpbb.com', 7)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (12, N'Daloris', N'Cawker', N'MacKibbon', CAST(N'2001-12-17' AS Date), N'866242406-6', N'F ', N'dmackibbonb@mozilla.com', 10)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (13, N'Phillipe', N'Boothebie', N'Hallatt', CAST(N'1996-02-11' AS Date), N'285851552-2', N'M ', N'phallattc@addthis.com', 2)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (14, N'Gorden', N'Pelchat', N'Rawson', CAST(N'1999-08-11' AS Date), N'063891074-9', N'M ', N'grawsond@ebay.co.uk', 9)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (15, N'Abel', N'Jickells', N'Nichol', CAST(N'2001-03-14' AS Date), N'433493480-3', N'M ', N'anichole@bloglines.com', 10)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (16, N'Mahala', N'Yakobowitch', N'Etheridge', CAST(N'1995-03-23' AS Date), N'830667146-5', N'F ', N'metheridgef@a8.net', 7)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (17, N'Dorice', N'Tingley', N'Shallo', CAST(N'2001-07-12' AS Date), N'176958909-0', N'F ', N'dshallog@cnn.com', 6)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (18, N'Fairleigh', N'Kemwal', N'Test', CAST(N'1995-12-08' AS Date), N'486179565-6', N'M ', N'ftesth@typepad.com', 2)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (19, N'Boonie', N'MacInnes', N'Sim', CAST(N'2000-06-09' AS Date), N'389045902-1', N'M ', N'bsimi@mysql.com', 5)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (20, N'Toddie', N'Maryan', N'Wadsworth', CAST(N'1999-06-01' AS Date), N'062476544-X', N'M ', N'twadsworthj@yelp.com', 6)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (21, N'Kelley', N'Boagey', N'Gumey', CAST(N'1997-07-07' AS Date), N'997367319-0', N'M ', N'kgumeyk@dion.ne.jp', 6)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (22, N'Dian', N'Behninck', N'Claeskens', CAST(N'1996-11-16' AS Date), N'476812271-X', N'F ', N'dclaeskensl@usnews.com', 1)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (23, N'Celene', N'Lumsdon', N'Dauncey', CAST(N'1998-12-23' AS Date), N'646704279-4', N'F ', N'cdaunceym@histats.com', 2)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (24, N'Marty', N'Veck', N'Dewdeny', CAST(N'1998-07-01' AS Date), N'085378793-X', N'M ', N'mdewdenyn@qq.com', 5)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (25, N'Hannah', N'Gunningham', N'Vaskov', CAST(N'1998-07-22' AS Date), N'630825445-2', N'F ', N'hvaskovo@moonfruit.com', 1)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (26, N'Oliviero', N'Brandrick', N'Callingham', CAST(N'1996-05-10' AS Date), N'323679071-7', N'M ', N'ocallinghamp@imdb.com', 3)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (27, N'Skye', N'Dennehy', N'Fabry', CAST(N'1997-01-01' AS Date), N'747697827-7', N'M ', N'sfabryq@virginia.edu', 4)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (28, N'Latia', N'Birchett', N'Blanche', CAST(N'2000-12-31' AS Date), N'453254393-2', N'F ', N'lblancher@examiner.com', 2)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (29, N'Frankie', N'Swanbourne', N'Hampe', CAST(N'1995-03-21' AS Date), N'185789548-7', N'M ', N'fhampes@flavors.me', 9)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (30, N'Tabb', N'Mewrcik', N'Glossup', CAST(N'2000-10-05' AS Date), N'252961259-5', N'M ', N'tglossupt@g.co', 3)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (31, N'Skip', N'Cronk', N'Bydaway', CAST(N'1997-12-28' AS Date), N'767757266-9', N'M ', N'sbydawayu@vistaprint.com', 7)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (32, N'Donny', N'De Witt', N'Trass', CAST(N'1999-10-24' AS Date), N'332400479-9', N'M ', N'dtrassv@thetimes.co.uk', 6)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (33, N'Caroline', N'Millott', N'Scrinage', CAST(N'1995-02-18' AS Date), N'188882172-8', N'F ', N'cscrinagew@springer.com', 5)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (34, N'Seka', N'Lutty', N'Amos', CAST(N'2001-09-07' AS Date), N'316646794-7', N'F ', N'samosx@github.io', 5)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (35, N'Krispin', N'Steven', N'Rotter', CAST(N'1998-06-30' AS Date), N'808075954-5', N'M ', N'krottery@multiply.com', 8)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (36, N'Krystal', N'Kubelka', N'McAster', CAST(N'1997-09-18' AS Date), N'221854541-1', N'F ', N'kmcasterz@examiner.com', 8)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (37, N'Constancy', N'McKeevers', N'Verillo', CAST(N'1996-10-07' AS Date), N'590831998-8', N'F ', N'cverillo10@surveymonkey.com', 3)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (38, N'Charmaine', N'Cowerd', N'Russilll', CAST(N'1997-03-28' AS Date), N'264843238-8', N'F ', N'crussilll11@state.gov', 5)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (39, N'Michael', N'Dixcee', N'Goutcher', CAST(N'1997-03-18' AS Date), N'586900435-7', N'M ', N'mgoutcher12@techcrunch.com', 10)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (40, N'Shalne', N'Rosa', N'Bootes', CAST(N'1997-01-01' AS Date), N'159453208-7', N'F ', N'sbootes13@aboutads.info', 10)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (41, N'Frasquito', N'Cayley', N'Farnes', CAST(N'1995-07-09' AS Date), N'251966929-2', N'M ', N'ffarnes14@craigslist.org', 3)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (42, N'Kristel', N'Hudson', N'Zanelli', CAST(N'1997-10-13' AS Date), N'622410607-X', N'F ', N'kzanelli15@intel.com', 6)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (43, N'Feodora', N'Really', N'Franzonello', CAST(N'2000-07-10' AS Date), N'905873695-4', N'F ', N'ffranzonello16@bigcartel.com', 3)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (44, N'Tully', N'Bouette', N'Clulee', CAST(N'1995-01-05' AS Date), N'745437672-X', N'M ', N'tclulee17@360.cn', 6)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (46, N'Joe', N'Bricket', N'Gulberg', CAST(N'1999-04-01' AS Date), N'654158531-8', N'M ', N'jgulberg19@washingtonpost.com', 1)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (47, N'Svend', N'Conrard', N'Maymond', CAST(N'1999-03-11' AS Date), N'757116806-6', N'M ', N'smaymond1a@acquirethisname.com', 3)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (48, N'Sunshine', N'Brisset', N'Normanton', CAST(N'1995-02-28' AS Date), N'262893205-9', N'F ', N'snormanton1b@instagram.com', 3)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (49, N'Clive', N'Manilow', N'Endersby', CAST(N'2000-06-29' AS Date), N'521079605-1', N'M ', N'cendersby1c@reuters.com', 1)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (50, N'Imelda', N'Benns', N'Scoble', CAST(N'1995-10-28' AS Date), N'470325604-5', N'F ', N'iscoble1d@reuters.com', 7)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (51, N'Keane', N'Mebius', N'Lammers', CAST(N'1997-05-26' AS Date), N'161195695-1', N'M ', N'klammers1e@bravesites.com', 5)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (52, N'Mart', N'Lumsdon', N'Domengue', CAST(N'1999-08-18' AS Date), N'146479698-X', N'M ', N'mdomengue1f@shop-pro.jp', 4)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (53, N'Georgiana', N'Sussex', N'Lorente', CAST(N'2001-03-29' AS Date), N'280140196-X', N'F ', N'glorente1g@vk.com', 1)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (54, N'Lanie', N'Holah', N'Birkby', CAST(N'1999-12-07' AS Date), N'430364356-4', N'M ', N'lbirkby1h@sitemeter.com', 3)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (55, N'Dolorita', N'Elcome', N'Southouse', CAST(N'1996-04-23' AS Date), N'726424824-0', N'F ', N'dsouthouse1i@digg.com', 8)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (56, N'Lazare', N'Izard', N'Floyd', CAST(N'1995-10-29' AS Date), N'966995364-2', N'M ', N'lfloyd1j@tmall.com', 3)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (57, N'Claudio', N'Davidge', N'Benedict', CAST(N'1997-02-25' AS Date), N'167268453-6', N'M ', N'cbenedict1k@epa.gov', 6)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (58, N'Lockwood', N'Berger', N'Hawarden', CAST(N'1999-06-16' AS Date), N'538458507-2', N'M ', N'lhawarden1l@tinypic.com', 8)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (59, N'Joseph', N'Burnall', N'Waplington', CAST(N'1999-05-14' AS Date), N'475481616-1', N'M ', N'jwaplington1m@mapquest.com', 9)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (60, N'Anthony', N'Jaher', N'Millan', CAST(N'1998-09-01' AS Date), N'810196264-6', N'M ', N'amillan1n@multiply.com', 10)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (61, N'Andonis', N'Mc Comb', N'Sansum', CAST(N'2000-11-30' AS Date), N'569513457-9', N'M ', N'asansum1o@reference.com', 9)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (62, N'Benedetta', N'Millichap', N'Dyerson', CAST(N'1996-03-11' AS Date), N'532552133-0', N'F ', N'bdyerson1p@google.de', 8)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (63, N'Latashia', N'Broadberry', N'Gallgher', CAST(N'1997-08-08' AS Date), N'728832435-4', N'F ', N'lgallgher1q@house.gov', 9)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (64, N'Weidar', N'Causbey', N'Lewin', CAST(N'2001-10-06' AS Date), N'836193127-9', N'M ', N'wlewin1r@over-blog.com', 2)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (65, N'Matt', N'Atwater', N'Lerwill', CAST(N'2000-04-25' AS Date), N'465655458-8', N'M ', N'mlerwill1s@buzzfeed.com', 3)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (66, N'Whitby', N'Scoullar', N'Thurlow', CAST(N'1999-12-23' AS Date), N'096543417-6', N'M ', N'wthurlow1t@soundcloud.com', 5)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (67, N'Shawn', N'Attewell', N'Ironside', CAST(N'1996-07-30' AS Date), N'835111045-0', N'M ', N'sironside1u@wikispaces.com', 2)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (68, N'Gan', N'Girling', N'Franies', CAST(N'2001-07-12' AS Date), N'123325690-4', N'M ', N'gfranies1v@seesaa.net', 4)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (69, N'Samuele', N'Ebenezer', N'Bunford', CAST(N'1999-09-19' AS Date), N'548550012-9', N'M ', N'sbunford1w@amazon.de', 3)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (70, N'Bryna', N'Tutchell', N'Barti', CAST(N'1995-08-07' AS Date), N'856749456-7', N'F ', N'bbarti1x@ow.ly', 3)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (71, N'Lisabeth', N'Andries', N'Starten', CAST(N'2001-05-21' AS Date), N'575548815-0', N'F ', N'lstarten1y@reuters.com', 10)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (72, N'Astra', N'Matzaitis', N'Cardenas', CAST(N'2001-01-10' AS Date), N'420878941-7', N'F ', N'acardenas1z@nba.com', 3)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (73, N'Malynda', N'Tumbelty', N'Firbank', CAST(N'1996-04-09' AS Date), N'640516379-2', N'F ', N'mfirbank20@icio.us', 5)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (74, N'Rafi', N'Burhouse', N'Glennard', CAST(N'2000-04-24' AS Date), N'232398668-6', N'M ', N'rglennard21@jigsy.com', 5)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (75, N'Phillida', N'Sugg', N'Knightsbridge', CAST(N'1997-10-05' AS Date), N'131203816-0', N'F ', N'pknightsbridge22@amazon.co.jp', 9)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (76, N'Reuven', N'Vivyan', N'Hazeldene', CAST(N'2000-03-16' AS Date), N'713715322-4', N'M ', N'rhazeldene23@behance.net', 1)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (77, N'Tiler', N'Dallicott', N'Lauder', CAST(N'2000-01-15' AS Date), N'520813501-9', N'M ', N'tlauder24@imdb.com', 4)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (78, N'Yancy', N'Philipp', N'Stokell', CAST(N'1996-06-18' AS Date), N'727196828-8', N'M ', N'ystokell25@unblog.fr', 6)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (79, N'Kingsly', N'Copley', N'Miles', CAST(N'1998-09-07' AS Date), N'688242824-7', N'M ', N'kmiles26@php.net', 10)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (80, N'Godfrey', N'Mawhinney', N'Dobel', CAST(N'2001-06-15' AS Date), N'061527653-9', N'M ', N'gdobel27@fda.gov', 6)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (81, N'Lona', N'Sissel', N'Kelwaybamber', CAST(N'2000-01-23' AS Date), N'712499812-3', N'F ', N'lkelwaybamber28@tmall.com', 2)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (82, N'Nerty', N'Radden', N'Covey', CAST(N'1999-06-07' AS Date), N'262785126-8', N'F ', N'ncovey29@wordpress.com', 8)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (83, N'Tasha', N'Jackman', N'Lawerence', CAST(N'1996-01-17' AS Date), N'919017662-6', N'F ', N'tlawerence2a@devhub.com', 9)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (84, N'Cher', N'Marthen', N'Coward', CAST(N'1995-09-09' AS Date), N'837015437-9', N'F ', N'ccoward2b@ft.com', 7)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (85, N'Aron', N'Rodrig', N'Massen', CAST(N'2001-03-26' AS Date), N'899451514-3', N'M ', N'amassen2c@php.net', 8)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (86, N'Isidro', N'Graser', N'Alkin', CAST(N'1996-12-24' AS Date), N'633862386-3', N'M ', N'ialkin2d@twitter.com', 10)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (87, N'Clemmy', N'Ather', N'Eddy', CAST(N'1995-09-24' AS Date), N'826862335-7', N'M ', N'ceddy2e@kickstarter.com', 8)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (88, N'Stuart', N'Willder', N'Camps', CAST(N'2000-08-20' AS Date), N'791325543-9', N'M ', N'scamps2f@xrea.com', 3)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (89, N'Fons', N'Todeo', N'Dulwich', CAST(N'1995-09-06' AS Date), N'211028373-4', N'M ', N'fdulwich2g@usgs.gov', 2)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (90, N'Wakefield', N'Cartner', N'Milbourne', CAST(N'1998-12-27' AS Date), N'075588931-2', N'M ', N'wmilbourne2h@cnbc.com', 9)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (91, N'Merrilee', N'MacMarcuis', N'Slewcock', CAST(N'2000-04-29' AS Date), N'371053551-4', N'F ', N'mslewcock2i@naver.com', 2)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (92, N'Arnoldo', N'Duling', N'Dumbar', CAST(N'1995-07-29' AS Date), N'937346808-1', N'M ', N'adumbar2j@wired.com', 2)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (93, N'Beverlie', N'Laraway', N'Jagg', CAST(N'1995-10-30' AS Date), N'836217012-3', N'F ', N'bjagg2k@moonfruit.com', 7)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (94, N'Claudius', N'Tonnesen', N'Melan', CAST(N'1998-12-01' AS Date), N'987091663-5', N'M ', N'cmelan2l@tripadvisor.com', 1)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (95, N'Abba', N'Matyukon', N'Lorens', CAST(N'2000-03-11' AS Date), N'123376718-6', N'M ', N'alorens2m@wired.com', 1)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (96, N'Henka', N'Sleany', N'Clegg', CAST(N'2000-01-30' AS Date), N'408016265-0', N'F ', N'hclegg2n@nba.com', 3)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (97, N'Shurlock', N'Millwall', N'Newhouse', CAST(N'1995-01-04' AS Date), N'882355317-2', N'M ', N'snewhouse2o@businesswire.com', 4)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (98, N'Susette', N'Catford', N'Hartegan', CAST(N'2000-07-13' AS Date), N'549853234-2', N'F ', N'shartegan2p@dailymail.co.uk', 2)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (99, N'Berne', N'Deverick', N'Wonter', CAST(N'1998-04-23' AS Date), N'756433429-0', N'M ', N'bwonter2q@rambler.ru', 9)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (100, N'Basilius', N'Ungerer', N'Lyngsted', CAST(N'1996-05-09' AS Date), N'309629885-8', N'M ', N'blyngsted2r@clickbank.net', 8)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (101, N'Dun', N'Della', N'Southard', CAST(N'2000-12-14' AS Date), N'396728926-5', N'M ', N'dsouthard8@domainmarket.com', 6)
GO
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (102, N'Ashly', N'Worssam', N'Richardon', CAST(N'2000-02-12' AS Date), N'086468871-7', N'F ', N'arichardon7@seattletimes.com', 10)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (103, N'Gherardo', N'Lifton', N'Richie', CAST(N'2001-01-06' AS Date), N'863744264-1', N'M ', N'grichie5@amazon.co.uk', 6)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (107, N'Petra', N'Manston', N'Sindell', CAST(N'1996-05-23' AS Date), N'303719769-2', N'F ', N'psindell8@is.gd', 7)
INSERT [dbo].[Alumno] ([IdAlumno], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaNacimiento], [Matricula], [Sexo], [Email], [IdSemestre]) VALUES (108, N'Victoir', N'De Hoogh', N'Stave', CAST(N'1995-10-18' AS Date), N'640697472-7', N'M ', N'vstave0@senate.gov', 6)
SET IDENTITY_INSERT [dbo].[Alumno] OFF
GO
SET IDENTITY_INSERT [dbo].[Semestre] ON 

INSERT [dbo].[Semestre] ([IdSemestre], [Nombre]) VALUES (1, N'Primero')
INSERT [dbo].[Semestre] ([IdSemestre], [Nombre]) VALUES (2, N'Segundo')
INSERT [dbo].[Semestre] ([IdSemestre], [Nombre]) VALUES (3, N'Tercero')
INSERT [dbo].[Semestre] ([IdSemestre], [Nombre]) VALUES (4, N'Cuarto')
INSERT [dbo].[Semestre] ([IdSemestre], [Nombre]) VALUES (5, N'Quinto')
INSERT [dbo].[Semestre] ([IdSemestre], [Nombre]) VALUES (6, N'Sexto')
INSERT [dbo].[Semestre] ([IdSemestre], [Nombre]) VALUES (7, N'Septimo')
INSERT [dbo].[Semestre] ([IdSemestre], [Nombre]) VALUES (8, N'Octavo')
INSERT [dbo].[Semestre] ([IdSemestre], [Nombre]) VALUES (9, N'Noveno')
INSERT [dbo].[Semestre] ([IdSemestre], [Nombre]) VALUES (10, N'Decimo')
SET IDENTITY_INSERT [dbo].[Semestre] OFF
GO
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD FOREIGN KEY([IdSemestre])
REFERENCES [dbo].[Semestre] ([IdSemestre])
GO
/****** Object:  StoredProcedure [dbo].[AlumnoAdd]    Script Date: 10/14/2022 1:26:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AlumnoAdd]
	@Nombre VARCHAR(50), 
	@ApellidoPaterno VARCHAR(50),
	@ApellidoMaterno VARCHAR(50),
	@FechaNacimiento VARCHAR(20),
	@Matricula VARCHAR(20),
	@Sexo CHAR(2),
	@Email VARCHAR(100),
	@IdSemestre TINYINT,
	@IdAlumno INT OUTPUT,
	@Message VARCHAR(200) OUTPUT
AS
BEGIN
    -- Insert statements for procedure here
	IF EXISTS ( SELECT 
		  [Nombre]
		  ,[ApellidoPaterno]
		  ,[ApellidoMaterno]
		  ,[Matricula]
		  ,[Email]
	  FROM [Alumno]
	  WHERE  ([Nombre] = @Nombre AND [ApellidoPaterno] = @ApellidoPaterno AND [ApellidoMaterno] = @ApellidoMaterno) OR [Email] = @Email OR [Matricula] = @Matricula)
		BEGIN
			SET @Message = 'Los datos ingresados ya pertenecen a un registro de la Base de Datos';	
		END
	ELSE
		BEGIN
			INSERT INTO [dbo].[Alumno]
			   ([Nombre]
			   ,[ApellidoPaterno]
			   ,[ApellidoMaterno]
			   ,[FechaNacimiento]
			   ,[Matricula]
			   ,[Sexo]
			   ,[Email]
			   ,[IdSemestre])
			 VALUES
				   (@Nombre ,
					@ApellidoPaterno,
					@ApellidoMaterno,
					CONVERT (DATE, @FechaNacimiento, 103),
					@Matricula,
					@Sexo,
					@Email,
					@IdSemestre)

			SET @IdAlumno = SCOPE_IDENTITY()
		END
END
GO
/****** Object:  StoredProcedure [dbo].[AlumnoDelete]    Script Date: 10/14/2022 1:26:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Daniel
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AlumnoDelete]
	-- Add the parameters for the stored procedure here
	@IdAlumno INT,
	@Message VARCHAR(200) OUTPUT
AS
BEGIN
	IF EXISTS (SELECT [IdAlumno] FROM [Alumno]  WHERE  IdAlumno = @IdAlumno )
		BEGIN
			DELETE FROM [dbo].[Alumno] WHERE IdAlumno = @IdAlumno
		END
	ELSE
		BEGIN
			SET @Message = 'Clave invalida ninguna acción realizada';
		END

END
GO
/****** Object:  StoredProcedure [dbo].[AlumnoGet]    Script Date: 10/14/2022 1:26:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Daniel
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AlumnoGet]
@IdAlumno INT = NULL
AS
BEGIN
	SET NOCOUNT ON;

	SELECT 
	   [IdAlumno]
      ,[Nombre]
      ,[ApellidoPaterno]
      ,[ApellidoMaterno]
      ,[FechaNacimiento]
      ,[Matricula]
      ,[Sexo]
      ,[Email]
	  ,[IdSemestre]
  FROM [Alumno]
  WHERE  @IdAlumno IS NULL OR IdAlumno = @IdAlumno 
END
GO
/****** Object:  StoredProcedure [dbo].[AlumnoGetAll]    Script Date: 10/14/2022 1:26:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AlumnoGetAll]
AS
	SELECT 
	   [IdAlumno]
      ,[Nombre]
      ,[ApellidoPaterno]
      ,[ApellidoMaterno]
      ,[FechaNacimiento]
      ,[Matricula]
      ,[Sexo]
      ,[Email]
	  ,[IdSemestre]
  FROM [Alumno]

GO
/****** Object:  StoredProcedure [dbo].[AlumnoGetById]    Script Date: 10/14/2022 1:26:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AlumnoGetById]
@IdAlumno INT
AS
	SELECT 
	   [IdAlumno]
      ,[Nombre]
      ,[ApellidoPaterno]
      ,[ApellidoMaterno]
      ,[FechaNacimiento]
      ,[Matricula]
      ,[Sexo]
      ,[Email]
  FROM [Alumno]
  WHERE IdAlumno = @IdAlumno
GO
/****** Object:  StoredProcedure [dbo].[AlumnoSearch]    Script Date: 10/14/2022 1:26:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Daniel Bernal Palmieri
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AlumnoSearch]
	-- Add the parameters for the stored procedure here
	@Dato VARCHAR(50) = NULL, 
	@Message VARCHAR(200) OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

    -- Insert statements for procedure here
	IF (@Dato IS NULL OR @Dato LIKE '')
		BEGIN
			SET @Message = 'Ninguna coincidencia encontrada en la Base de Datos';
		END
	ELSE
		BEGIN
			IF EXISTS(
				SELECT [IdAlumno]
				  ,[Nombre]
				  ,[ApellidoPaterno]
				  ,[ApellidoMaterno]
				  ,[FechaNacimiento]
				  ,[Matricula]
				  ,[Sexo]
				  ,[Email]
				  ,[IdSemestre]
			  FROM [Alumno]
			  WHERE [IdAlumno] LIKE @Dato+'%' 
			  OR [Nombre] LIKE @Dato+'%' 
			  OR [ApellidoPaterno] LIKE @Dato+'%'
			  OR [ApellidoMaterno] LIKE @Dato+'%'
			  OR [Matricula] LIKE @Dato+'%'
			  OR [Sexo] LIKE @Dato+'%'
			  OR [Email] LIKE @Dato+'%'
			  OR [IdSemestre] LIKE @Dato+'%')
			  BEGIN
						SELECT [IdAlumno]
					  ,[Nombre]
					  ,[ApellidoPaterno]
					  ,[ApellidoMaterno]
					  ,[FechaNacimiento]
					  ,[Matricula]
					  ,[Sexo]
					  ,[Email]
					  ,[IdSemestre]
				  FROM [Alumno]
				  WHERE [IdAlumno] LIKE @Dato+'%' 
				  OR [Nombre] LIKE @Dato+'%' 
				  OR [ApellidoPaterno] LIKE @Dato+'%'
				  OR [ApellidoMaterno] LIKE @Dato+'%'
				  OR [Matricula] LIKE @Dato+'%'
				  OR [Sexo] LIKE @Dato+'%'
				  OR [Email] LIKE @Dato+'%'
				  OR [IdSemestre] LIKE @Dato+'%'
			  END
			  ELSE
			  BEGIN
				SET @Message = 'Ninguna coincidencia encontrada en la Base de Datos';
			  END
		END

END
GO
/****** Object:  StoredProcedure [dbo].[AlumnoUpdate]    Script Date: 10/14/2022 1:26:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Daniel
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AlumnoUpdate]
	-- Add the parameters for the stored procedure here
	@Nombre VARCHAR(50), 
	@ApellidoPaterno VARCHAR(50),
	@ApellidoMaterno VARCHAR(50),
	@FechaNacimiento VARCHAR(20),
	@Matricula VARCHAR(20),
	@Sexo CHAR(2),
	@Email VARCHAR(100),
	@IdSemestre TINYINT,
	@IdAlumno INT,
	@Message VARCHAR(200) OUTPUT
AS
BEGIN
	IF EXISTS (SELECT [IdAlumno] FROM [Alumno]  WHERE  IdAlumno = @IdAlumno )
		BEGIN
			UPDATE [dbo].[Alumno]
			SET [Nombre] = @Nombre
			  ,[ApellidoPaterno] = @ApellidoPaterno
			  ,[ApellidoMaterno] = @ApellidoMaterno
			  ,[FechaNacimiento] = @FechaNacimiento
			  ,[Matricula] = @Matricula
			  ,[Sexo] = @Sexo
			  ,[Email] = @Email 
			  ,[IdSemestre] = @IdSemestre
			WHERE IdAlumno = @IdAlumno
			SET @Message = @IdAlumno
		END
	ELSE
		BEGIN
			SET @Message = 'Clave invalida ninguna acción realizada';
		END
	
END
GO
USE [master]
GO
ALTER DATABASE [DBernalDapperSQL] SET  READ_WRITE 
GO
