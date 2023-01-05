USE [master]
GO
/****** Object:  Database [CrudCSharp]    Script Date: 4/01/2023 9:47:40 p. m. ******/
CREATE DATABASE [CrudCSharp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CrudCSharp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CrudCSharp.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CrudCSharp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CrudCSharp_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CrudCSharp] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CrudCSharp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CrudCSharp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CrudCSharp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CrudCSharp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CrudCSharp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CrudCSharp] SET ARITHABORT OFF 
GO
ALTER DATABASE [CrudCSharp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CrudCSharp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CrudCSharp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CrudCSharp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CrudCSharp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CrudCSharp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CrudCSharp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CrudCSharp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CrudCSharp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CrudCSharp] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CrudCSharp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CrudCSharp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CrudCSharp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CrudCSharp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CrudCSharp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CrudCSharp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CrudCSharp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CrudCSharp] SET RECOVERY FULL 
GO
ALTER DATABASE [CrudCSharp] SET  MULTI_USER 
GO
ALTER DATABASE [CrudCSharp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CrudCSharp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CrudCSharp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CrudCSharp] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CrudCSharp] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CrudCSharp] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CrudCSharp', N'ON'
GO
ALTER DATABASE [CrudCSharp] SET QUERY_STORE = OFF
GO
USE [CrudCSharp]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 4/01/2023 9:47:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nchar](50) NOT NULL,
	[LastName] [nchar](50) NOT NULL,
	[Phone] [nchar](20) NULL,
	[Address] [nchar](100) NULL,
 CONSTRAINT [PK_tblUsers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblUsers] ON 
GO
INSERT [dbo].[tblUsers] ([id], [FirstName], [LastName], [Phone], [Address]) VALUES (1, N'Jefferson                                         ', N'Guzman                                            ', N'3059123351          ', N'Street False 123                                                                                    ')
GO
INSERT [dbo].[tblUsers] ([id], [FirstName], [LastName], [Phone], [Address]) VALUES (2, N'Eduardo                                           ', N'Quitian                                           ', N'3133770773          ', N'Street True 234                                                                                     ')
GO
INSERT [dbo].[tblUsers] ([id], [FirstName], [LastName], [Phone], [Address]) VALUES (3, N'slkdj                                             ', N'alsdj                                             ', N'564654              ', N'laskjdla                                                                                            ')
GO
INSERT [dbo].[tblUsers] ([id], [FirstName], [LastName], [Phone], [Address]) VALUES (4, N'slkdj                                             ', N'alsdj                                             ', N'564654              ', N'laskjdla                                                                                            ')
GO
INSERT [dbo].[tblUsers] ([id], [FirstName], [LastName], [Phone], [Address]) VALUES (5, N'slkdj                                             ', N'alsdj                                             ', N'564654              ', N'laskjdla                                                                                            ')
GO
INSERT [dbo].[tblUsers] ([id], [FirstName], [LastName], [Phone], [Address]) VALUES (6, N'slkdj                                             ', N'alsdj                                             ', N'564654              ', N'laskjdla                                                                                            ')
GO
INSERT [dbo].[tblUsers] ([id], [FirstName], [LastName], [Phone], [Address]) VALUES (7, N'slkdj                                             ', N'alsdj                                             ', N'564654              ', N'laskjdla                                                                                            ')
GO
INSERT [dbo].[tblUsers] ([id], [FirstName], [LastName], [Phone], [Address]) VALUES (8, N'slkdj                                             ', N'alsdj                                             ', N'564654              ', N'laskjdla                                                                                            ')
GO
INSERT [dbo].[tblUsers] ([id], [FirstName], [LastName], [Phone], [Address]) VALUES (9, N'asdad                                             ', N'asdfasdfsa                                        ', N'2423452345          ', N'asdfasdf                                                                                            ')
GO
INSERT [dbo].[tblUsers] ([id], [FirstName], [LastName], [Phone], [Address]) VALUES (10, N'asdad                                             ', N'asdfasdfsa                                        ', N'2423452345          ', N'asdfasdf                                                                                            ')
GO
INSERT [dbo].[tblUsers] ([id], [FirstName], [LastName], [Phone], [Address]) VALUES (11, N'asdad                                             ', N'asdfasdfsa                                        ', N'2423452345          ', N'asdfasdf                                                                                            ')
GO
INSERT [dbo].[tblUsers] ([id], [FirstName], [LastName], [Phone], [Address]) VALUES (12, N'asdad                                             ', N'asdfasdfsa                                        ', N'2423452345          ', N'asdfasdf                                                                                            ')
GO
INSERT [dbo].[tblUsers] ([id], [FirstName], [LastName], [Phone], [Address]) VALUES (13, N'asdad                                             ', N'asdfasdfsa                                        ', N'2423452345          ', N'asdfasdf                                                                                            ')
GO
INSERT [dbo].[tblUsers] ([id], [FirstName], [LastName], [Phone], [Address]) VALUES (14, N'asdad                                             ', N'asdfasdfsa                                        ', N'2423452345          ', N'asdfasdf                                                                                            ')
GO
INSERT [dbo].[tblUsers] ([id], [FirstName], [LastName], [Phone], [Address]) VALUES (15, N'sadad                                             ', N'asdad                                             ', N'342332              ', N'wedasd                                                                                              ')
GO
INSERT [dbo].[tblUsers] ([id], [FirstName], [LastName], [Phone], [Address]) VALUES (16, N'sadad                                             ', N'asdad                                             ', N'342332              ', N'wedasd                                                                                              ')
GO
INSERT [dbo].[tblUsers] ([id], [FirstName], [LastName], [Phone], [Address]) VALUES (17, N'Ruddy                                             ', N'Ramirez                                           ', N'3133770773          ', N'Cl. 82B #11a - 80                                                                                   ')
GO
INSERT [dbo].[tblUsers] ([id], [FirstName], [LastName], [Phone], [Address]) VALUES (18, N'asd                                               ', N'sa                                                ', N'1234                ', N'123aS                                                                                               ')
GO
INSERT [dbo].[tblUsers] ([id], [FirstName], [LastName], [Phone], [Address]) VALUES (19, N'Andrés                                            ', N'El mascapo                                        ', N'351321321           ', N'stfalse 123                                                                                         ')
GO
SET IDENTITY_INSERT [dbo].[tblUsers] OFF
GO
USE [master]
GO
ALTER DATABASE [CrudCSharp] SET  READ_WRITE 
GO
