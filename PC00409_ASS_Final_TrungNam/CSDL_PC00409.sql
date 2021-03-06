USE [master]
GO
/****** Object:  Database [PC00409_Java5]    Script Date: 4/21/2020 10:13:20 AM ******/
CREATE DATABASE [PC00409_Java5]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PS10576_Java5', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\PS10576_Java5.mdf' , SIZE = 3328KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PS10576_Java5_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\PS10576_Java5_1.LDF' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PC00409_Java5] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PC00409_Java5].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PC00409_Java5] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PC00409_Java5] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PC00409_Java5] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PC00409_Java5] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PC00409_Java5] SET ARITHABORT OFF 
GO
ALTER DATABASE [PC00409_Java5] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PC00409_Java5] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [PC00409_Java5] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PC00409_Java5] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PC00409_Java5] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PC00409_Java5] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PC00409_Java5] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PC00409_Java5] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PC00409_Java5] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PC00409_Java5] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PC00409_Java5] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PC00409_Java5] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PC00409_Java5] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PC00409_Java5] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PC00409_Java5] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PC00409_Java5] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PC00409_Java5] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PC00409_Java5] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PC00409_Java5] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PC00409_Java5] SET  MULTI_USER 
GO
ALTER DATABASE [PC00409_Java5] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PC00409_Java5] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PC00409_Java5] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PC00409_Java5] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [PC00409_Java5]
GO
/****** Object:  Table [dbo].[Departs]    Script Date: 4/21/2020 10:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departs](
	[Id] [varchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Records]    Script Date: 4/21/2020 10:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Records](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Type] [bit] NOT NULL,
	[Reason] [nvarchar](200) NOT NULL,
	[Date] [date] NOT NULL,
	[StaffId] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Staffs]    Script Date: 4/21/2020 10:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staffs](
	[Id] [varchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Gender] [bit] NOT NULL,
	[Birthday] [date] NOT NULL,
	[Photo] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Phone] [varchar](10) NOT NULL,
	[Salary] [float] NOT NULL,
	[Notes] [nvarchar](500) NULL,
	[DepartId] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4/21/2020 10:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Username] [varchar](10) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Departs] ([Id], [Name]) VALUES (N'PB01', N'Game Thủ')
INSERT [dbo].[Departs] ([Id], [Name]) VALUES (N'PB02', N'Tài Chính')
INSERT [dbo].[Departs] ([Id], [Name]) VALUES (N'PB03', N'Kinh Doanh Thương Mại')
INSERT [dbo].[Departs] ([Id], [Name]) VALUES (N'PB04', N'Bất Động Sản')
INSERT [dbo].[Departs] ([Id], [Name]) VALUES (N'PB05', N'Điều hành')
INSERT [dbo].[Departs] ([Id], [Name]) VALUES (N'PB10', N'Quản Lý đất đai')
SET IDENTITY_INSERT [dbo].[Records] ON 

INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (31, 1, N'Vượt mức', CAST(N'2020-04-17' AS Date), N'NV01')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (32, 1, N'Vượt mức', CAST(N'2020-04-17' AS Date), N'NV02')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (33, 1, N'Vượt mức', CAST(N'2020-04-17' AS Date), N'NV03')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (34, 1, N'Cày Nhiều', CAST(N'2020-04-17' AS Date), N'NV04')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (35, 1, N'Vượt mức', CAST(N'2020-04-17' AS Date), N'NV05')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (36, 1, N'Ký nhiều hợp đồng', CAST(N'2020-04-17' AS Date), N'NV06')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (37, 1, N'Vượt mức', CAST(N'2020-04-17' AS Date), N'NV07')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (38, 1, N'Vượt mức', CAST(N'2020-04-17' AS Date), N'NV08')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (39, 1, N'Vượt mức', CAST(N'2020-04-17' AS Date), N'NV09')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (40, 1, N'Vượt mức', CAST(N'2020-04-17' AS Date), N'NV10')
INSERT [dbo].[Records] ([Id], [Type], [Reason], [Date], [StaffId]) VALUES (41, 1, N'Rất tốt', CAST(N'2020-04-17' AS Date), N'NV11')
SET IDENTITY_INSERT [dbo].[Records] OFF
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Photo], [Email], [Phone], [Salary], [Notes], [DepartId]) VALUES (N'HT01', N'Trần Thu Thảo', 0, CAST(N'2020-04-21' AS Date), N'n4.jpg', N'thao@gmail.com', N'0123587966', 125, N'Phó Giám Đốc', N'PB05')
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Photo], [Email], [Phone], [Salary], [Notes], [DepartId]) VALUES (N'LO36', N'sdkl', 0, CAST(N'2020-04-21' AS Date), N'proe.jpg', N'jws@gmail.com', N'0123478596', 120, N'Nhân Viên', N'PB05')
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Photo], [Email], [Phone], [Salary], [Notes], [DepartId]) VALUES (N'MV121', N'lam', 1, CAST(N'2020-04-21' AS Date), N'n4.jpg', N'lam@gmail.com', N'0125478954', 125, N'Nhân Viên', N'PB10')
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Photo], [Email], [Phone], [Salary], [Notes], [DepartId]) VALUES (N'NA56', N'Nguyễn Thị Huyền Châu', 0, CAST(N'2020-04-21' AS Date), N'n1.jpg', N'C@gmail.com', N'0125478963', 145, N'Nhân viên', N'PB03')
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Photo], [Email], [Phone], [Salary], [Notes], [DepartId]) VALUES (N'NV01', N'Lê Đình Chiến', 1, CAST(N'2020-04-17' AS Date), N'adc.jpg', N'chien@gmail.com', N'0347010445', 555, N'Tuyển Thủ', N'PB01')
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Photo], [Email], [Phone], [Salary], [Notes], [DepartId]) VALUES (N'NV02', N'Lai Bâng', 1, CAST(N'2001-04-08' AS Date), N'bang.jpg', N'bang@gmail.com', N'0215482266', 600, N'Tuyển Thủ', N'PB01')
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Photo], [Email], [Phone], [Salary], [Notes], [DepartId]) VALUES (N'NV03', N'Xuân Bách', 1, CAST(N'2020-04-17' AS Date), N'bach.jpg', N'bach@gmail.com', N'0135478910', 900, N'Tuyển Thủ', N'PB01')
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Photo], [Email], [Phone], [Salary], [Notes], [DepartId]) VALUES (N'NV04', N'Proe', 1, CAST(N'2020-04-23' AS Date), N'proe.jpg', N'Proe@gmail.com', N'0164789254', 500, N'Tuyển Thủ', N'PB01')
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Photo], [Email], [Phone], [Salary], [Notes], [DepartId]) VALUES (N'NV05', N'Đạt Koi', 1, CAST(N'2020-04-29' AS Date), N'datcoi.jpg', N'koi@gmail.com', N'0123587946', 600, N'Tuyển thủ', N'PB01')
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Photo], [Email], [Phone], [Salary], [Notes], [DepartId]) VALUES (N'NV06', N'Trần Huyền Trân', 0, CAST(N'2020-04-17' AS Date), N'n1.jpg', N'Tran@gmail.com', N'0125897453', 52, N'Nhân viên', N'PB04')
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Photo], [Email], [Phone], [Salary], [Notes], [DepartId]) VALUES (N'NV07', N'Trần Huyền Châu', 0, CAST(N'1992-04-07' AS Date), N'n2.jpg', N'Chau@gmail.com', N'0164789523', 54, N'Nhân Viên', N'PB04')
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Photo], [Email], [Phone], [Salary], [Notes], [DepartId]) VALUES (N'NV08', N'Nguyễn Ái Linh', 0, CAST(N'1996-04-17' AS Date), N'n3.jpg', N'Linh@gmail.com', N'0164789526', 580, N'Trưởng Phòng', N'PB04')
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Photo], [Email], [Phone], [Salary], [Notes], [DepartId]) VALUES (N'NV09', N'Trần Kim Ái', 0, CAST(N'1998-04-17' AS Date), N'n4.jpg', N'Ai@gmail.com', N'0164765784', 52, N'Phó phòng', N'PB04')
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Photo], [Email], [Phone], [Salary], [Notes], [DepartId]) VALUES (N'NV10', N'Đặng Thị Tuyết Mai', 0, CAST(N'1990-04-17' AS Date), N'n5.jpg', N'Mai@gmail.com', N'0164789526', 59, N'Nhân Viên', N'PB04')
INSERT [dbo].[Staffs] ([Id], [Name], [Gender], [Birthday], [Photo], [Email], [Phone], [Salary], [Notes], [DepartId]) VALUES (N'NV11', N'Hồ Trung Nam', 1, CAST(N'2020-04-17' AS Date), N'proe.jpg', N'namhtpc00409@fpt.edu.vn', N'0347010445', 900, N'Giám Đốc', N'PB05')
INSERT [dbo].[Users] ([Username], [Password], [Fullname]) VALUES (N'TK01', N'123456', N'Hồ Trung Nam')
INSERT [dbo].[Users] ([Username], [Password], [Fullname]) VALUES (N'TK02', N'456', N'Trần Thị Mỹ Nhân')
INSERT [dbo].[Users] ([Username], [Password], [Fullname]) VALUES (N'TK03', N'hotrungnam19', N'SASS HTN')
ALTER TABLE [dbo].[Records]  WITH CHECK ADD FOREIGN KEY([StaffId])
REFERENCES [dbo].[Staffs] ([Id])
GO
ALTER TABLE [dbo].[Staffs]  WITH CHECK ADD FOREIGN KEY([DepartId])
REFERENCES [dbo].[Departs] ([Id])
GO
USE [master]
GO
ALTER DATABASE [PC00409_Java5] SET  READ_WRITE 
GO
