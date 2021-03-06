USE [master]
GO
/****** Object:  Database [QL_WebKhachSan]    Script Date: 12/17/2019 11:33:37 PM ******/
CREATE DATABASE [QL_WebKhachSan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_WebKhachSan', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\QL_WebKhachSan.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QL_WebKhachSan_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\QL_WebKhachSan_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QL_WebKhachSan] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_WebKhachSan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_WebKhachSan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_WebKhachSan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_WebKhachSan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_WebKhachSan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_WebKhachSan] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_WebKhachSan] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QL_WebKhachSan] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QL_WebKhachSan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_WebKhachSan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_WebKhachSan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_WebKhachSan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_WebKhachSan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_WebKhachSan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_WebKhachSan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_WebKhachSan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_WebKhachSan] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QL_WebKhachSan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_WebKhachSan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_WebKhachSan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_WebKhachSan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_WebKhachSan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_WebKhachSan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_WebKhachSan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_WebKhachSan] SET RECOVERY FULL 
GO
ALTER DATABASE [QL_WebKhachSan] SET  MULTI_USER 
GO
ALTER DATABASE [QL_WebKhachSan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_WebKhachSan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_WebKhachSan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_WebKhachSan] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QL_WebKhachSan', N'ON'
GO
USE [QL_WebKhachSan]
GO
/****** Object:  Table [dbo].[ChiTiet_DichVu]    Script Date: 12/17/2019 11:33:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTiet_DichVu](
	[MaKS] [varchar](10) NOT NULL,
	[MaDV] [varchar](10) NOT NULL,
 CONSTRAINT [PK_ChiTiet_DichVu] PRIMARY KEY CLUSTERED 
(
	[MaKS] ASC,
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DangNhap]    Script Date: 12/17/2019 11:33:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DangNhap](
	[TenDangNhap] [varchar](30) NOT NULL,
	[MatKhau] [varchar](30) NULL,
	[SDT] [char](10) NULL,
	[Mail] [varchar](50) NULL,
	[TenHienThi] [nvarchar](20) NULL,
	[Loai] [varchar](10) NULL,
 CONSTRAINT [PK_DangNhap_QL] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DatPhong]    Script Date: 12/17/2019 11:33:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DatPhong](
	[MaDP] [varchar](10) NOT NULL,
	[NgayNhanPhong] [date] NULL,
	[NgayTraPhong] [date] NULL,
	[SoTreEm] [int] NULL,
	[SoNguoiLon] [int] NULL,
	[GhiChu] [nvarchar](100) NULL,
	[MaPhongDat] [varchar](10) NULL,
	[TenNguoiNhanPhong] [nvarchar](50) NULL,
	[SDTNguoiNhanPhong] [char](10) NULL,
	[GiaPhongThue] [money] NULL,
	[SoNgayO] [int] NULL,
	[TongTienDuKien] [float] NULL,
	[TenDN] [varchar](30) NULL,
 CONSTRAINT [PK_DatPhong] PRIMARY KEY CLUSTERED 
(
	[MaDP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DichVuDiKem]    Script Date: 12/17/2019 11:33:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DichVuDiKem](
	[MaDV] [varchar](10) NOT NULL,
	[TenDV] [nvarchar](30) NULL,
	[Icon] [varchar](100) NULL,
 CONSTRAINT [PK_DichVuDiKem] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HinhAnh]    Script Date: 12/17/2019 11:33:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HinhAnh](
	[MaHinh] [varchar](10) NOT NULL,
	[MaPH] [varchar](10) NOT NULL,
	[Hinh] [varchar](100) NULL,
 CONSTRAINT [PK_HinhAnh] PRIMARY KEY CLUSTERED 
(
	[MaHinh] ASC,
	[MaPH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachSan]    Script Date: 12/17/2019 11:33:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachSan](
	[MaKhachSan] [varchar](10) NOT NULL,
	[TenKhachSan] [nvarchar](20) NULL,
	[SDT] [char](10) NULL,
	[Email] [varchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DanhGia] [varchar](10) NULL,
	[GhiChu] [nvarchar](max) NULL,
	[MaKV] [varchar](10) NULL,
	[TenDN_QL] [varchar](30) NULL,
	[MaLoai] [varchar](10) NULL,
	[GiaThapNhat] [money] NULL,
	[HinhAnhKS] [varchar](100) NULL,
 CONSTRAINT [PK_KhachSan] PRIMARY KEY CLUSTERED 
(
	[MaKhachSan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhuVuc]    Script Date: 12/17/2019 11:33:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhuVuc](
	[MaKhuVuc] [varchar](10) NOT NULL,
	[TenKhuVuc] [nvarchar](30) NULL,
 CONSTRAINT [PK_KhuVuc] PRIMARY KEY CLUSTERED 
(
	[MaKhuVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiChoO]    Script Date: 12/17/2019 11:33:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiChoO](
	[MaLoaiChoO] [varchar](10) NOT NULL,
	[TenLoai] [nvarchar](30) NULL,
 CONSTRAINT [PK_LoaiChoO] PRIMARY KEY CLUSTERED 
(
	[MaLoaiChoO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 12/17/2019 11:33:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [varchar](10) NOT NULL,
	[TenPhong] [nvarchar](15) NULL,
	[TrangThai] [nvarchar](10) NULL,
	[SoGiuong] [int] NULL,
	[GiaPhong] [money] NULL,
	[MoTaPhong] [nvarchar](max) NULL,
	[MaKS] [varchar](10) NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks1', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks1', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks1', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks10', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks10', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks10', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks11', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks11', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks11', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks14', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks14', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks14', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks15', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks15', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks15', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks16', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks16', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks16', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks17', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks17', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks17', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks18', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks18', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks18', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks19', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks19', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks19', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks2', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks2', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks2', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks20', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks20', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks20', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks21', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks21', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks21', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks22', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks22', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks22', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks23', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks23', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks23', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks24', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks24', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks24', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks25', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks25', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks25', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks26', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks26', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks26', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks27', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks27', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks27', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks28', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks28', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks28', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks29', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks29', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks29', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks3', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks3', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks3', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks30', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks30', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks30', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks31', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks31', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks31', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks32', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks32', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks32', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks33', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks33', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks33', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks34', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks34', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks34', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks35', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks35', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks35', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks36', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks36', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks36', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks37', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks37', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks37', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks38', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks38', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks38', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks39', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks39', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks39', N'DV04')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks4', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks4', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks4', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks40', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks40', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks40', N'DV04')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks41', N'DV01')
GO
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks41', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks41', N'DV04')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks42', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks42', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks42', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks43', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks43', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks43', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks44', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks44', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks44', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks45', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks45', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks45', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks46', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks46', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks46', N'DV04')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks47', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks47', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks47', N'DV04')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks48', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks48', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks48', N'DV04')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks49', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks49', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks49', N'DV04')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks5', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks5', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks5', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks55', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks55', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks55', N'DV04')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks56', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks56', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks56', N'DV04')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks57', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks57', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks57', N'DV04')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks58', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks58', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks58', N'DV04')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks6', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks6', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks6', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks61', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks61', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks61', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks7', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks7', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks7', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks8', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks8', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks8', N'DV03')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks9', N'DV01')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks9', N'DV02')
INSERT [dbo].[ChiTiet_DichVu] ([MaKS], [MaDV]) VALUES (N'ks9', N'DV03')
INSERT [dbo].[DangNhap] ([TenDangNhap], [MatKhau], [SDT], [Mail], [TenHienThi], [Loai]) VALUES (N'admin', N'1', N'1234567890', N'fsafaf', N'Hiệp Gà', N'DoiTac')
INSERT [dbo].[DangNhap] ([TenDangNhap], [MatKhau], [SDT], [Mail], [TenHienThi], [Loai]) VALUES (N'hiepphamhufi@gmail.com', N'hiep', N'0903321321', N'hiepphamhufi@gmail.com', N'Hiệp', N'KhachHang')
INSERT [dbo].[DangNhap] ([TenDangNhap], [MatKhau], [SDT], [Mail], [TenHienThi], [Loai]) VALUES (N'quanly@gmail.com', N'hiep', N'0932888743', N'quanly@gmail.com', N'Quản Lý', N'DoiTac')
INSERT [dbo].[DatPhong] ([MaDP], [NgayNhanPhong], [NgayTraPhong], [SoTreEm], [SoNguoiLon], [GhiChu], [MaPhongDat], [TenNguoiNhanPhong], [SDTNguoiNhanPhong], [GiaPhongThue], [SoNgayO], [TongTienDuKien], [TenDN]) VALUES (N'63L3yNv0', CAST(0x81400B00 AS Date), CAST(0x8A400B00 AS Date), 1, 2, N'', N'i89rIQTJ', N'Phạm Văn Hiệp', N'0363809931', 200000.0000, 9, 1800000, N'hiepphamhufi@gmail.com')
INSERT [dbo].[DichVuDiKem] ([MaDV], [TenDV], [Icon]) VALUES (N'DV01', N'Wifi', N'hinh\icon-wifi.png')
INSERT [dbo].[DichVuDiKem] ([MaDV], [TenDV], [Icon]) VALUES (N'DV02', N'Nhà hàng', N'hinh\icon_nhahang.png')
INSERT [dbo].[DichVuDiKem] ([MaDV], [TenDV], [Icon]) VALUES (N'DV03', N'Chổ đỗ xe', N'hinh\icon_baixe.png')
INSERT [dbo].[DichVuDiKem] ([MaDV], [TenDV], [Icon]) VALUES (N'DV04', N'Giặt ủi', N'hinh\icon_banui.png')
INSERT [dbo].[DichVuDiKem] ([MaDV], [TenDV], [Icon]) VALUES (N'DV05', N'Spa', N'hinh\icon-spa.png')
INSERT [dbo].[DichVuDiKem] ([MaDV], [TenDV], [Icon]) VALUES (N'DV06', N'Bể bơi', N'hinh\icon_beboi.png')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH01', N'01', N'hinh\1.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH02', N'02', N'hinh\2.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH03', N'02', N'hinh\3.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH04', N'01', N'hinh\4.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH05', N'01', N'hinh\5.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH06', N'01', N'hinh\6.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH07', N'02', N'hinh\7.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH08', N'01', N'hinh\8.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH09', N'03', N'hinh\9.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH10', N'03', N'hinh\10.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH11', N'04', N'hinh\11.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH12', N'05', N'hinh\12.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH13', N'06', N'hinh\13.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH14', N'07', N'hinh\14.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH15', N'08', N'hinh\15.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH16', N'09', N'hinh\16.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH17', N'04', N'hinh\17.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH18', N'05', N'hinh\18.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH19', N'08', N'hinh\19.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH20', N'10', N'hinh\20.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH21', N'10', N'hinh\21.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH22', N'12', N'hinh\22.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH23', N'11', N'hinh\23.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH24', N'11', N'hinh\24.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH25', N'12', N'hinh\25.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH26', N'01', N'hinh\26.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH27', N'02', N'hinh\27.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH28', N'03', N'hinh\28.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH29', N'10', N'hinh\29.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH30', N'11', N'hinh\30.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH31', N'11', N'hinh\31.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH32', N'24', N'hinh\32.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH33', N'25', N'hinh\33.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH34', N'25', N'hinh\34.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH35', N'25', N'hinh\35.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH36', N'24', N'hinh\36.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH37', N'24', N'hinh\37.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH38', N'16', N'hinh\38.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH39', N'15', N'hinh\39.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH40', N'34', N'hinh\40.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH41', N'42', N'hinh\41.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH42', N'24', N'hinh\42.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH43', N'13', N'hinh\43.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH44', N'15', N'hinh\44.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH45', N'15', N'hinh\45.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH46', N'15', N'hinh\46.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH47', N'15', N'hinh\47.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH48', N'15', N'hinh\48.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH49', N'23', N'hinh\49.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH50', N'15', N'hinh\50.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH51', N'13', N'hinh\51.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH52', N'13', N'hinh\52.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH53', N'25', N'hinh\53.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH54', N'25', N'hinh\54.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH55', N'25', N'hinh\55.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH56', N'25', N'hinh\56.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH57', N'24', N'hinh\57.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH58', N'15', N'hinh\58.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH59', N'25', N'hinh\59.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH60', N'26', N'hinh\60.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH61', N'18', N'hinh\61.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH62', N'18', N'hinh\62.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH63', N'18', N'hinh\63.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH64', N'19', N'hinh\64.jpg')
INSERT [dbo].[HinhAnh] ([MaHinh], [MaPH], [Hinh]) VALUES (N'MH65', N'31', N'hinh\65.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks1', N'Citi Home 1', N'0388583731', N'ro1yja66@gmail.com', N'103 Đặng Thai Mai, Phạm Ngũ Lão, Quận 1, TP Hồ Chí Minh ', N'4 sao', N'Tọa lạc tại quận 1, Citi Home 1 cách trung tâm thành phố Hồ Chí Minh chưa tới 1km. Từ khách sạn, du khách chỉ cần đi bộ 5 phút để tới trung tâm thương mại Zen Plaza. Trong vòng bán kính 1,5km tính từ khách sạn là nhiều khu mua sắm lớn như chợ Bến Thành, Saigon Square, Parkson, Vincom… Những địa điểm du lịch nổi tiếng của thành phố như Dinh Độc Lập, Nhà thờ Đức Bà, Bưu điện trung tâm Sài Gòn, Nhà hát thành phố… cũng chỉ cách khách sạn từ 5 – 10 phút đi xe.Khách sạn cách sân bay Tân Sơn Nhất 6,5km, cách ga Sài Gòn 2km nên dù di chuyển bằng phương tiện gì, du khách cũng tiết kiệm được rất nhiều thời gian.', N'TPHCM', N'quanly@gmail.com', N'ML01', 400000.0000, N'hinh\6638_1470888092679_74402661.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks10', N' Khách sạn Lê Nguyễn', N'0388583731', N'royj1a66@gmail.com', N'171 Hai Bà Trưng, Phường 6, Thành phố Đà Lạt, Lâm Đồng, Việt Nam	', N'3 sao', N'Nằm trong bán kính 1,2 km từ Vườn Hoa Đà Lạt, Van Minh Hotel tọa lạc tại thành phố Đà Lạt, cách Thiền viện Trúc Lâm 5 km và cách Hồ Tuyền Lâm 6 km. Từ núi Lang Bi-ang đến Van Minh Hotel khoảng 7km, Sở Thú ZooDoo Đà Lạt cách đó 24 km. Từ khách sạn đến sân bay Liên Khương chỉ 23 km với 40 phút di chuyển nhanh chóng.', N'DaLat', N'admin', N'ML01', 500000.0000, N'hinh\46864_1539229653_dsc_0780.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks11', N'Văn Minh Hotel  ', N'0388583731', N'royja616@gmail.com', N'147 Bùi Thị Xuân, Phường 2, Thành phố Đà Lạt, Lâm Đồng, Việt Nam', N'3 sao', N'Nằm trong bán kính 1,2 km từ Vườn Hoa Đà Lạt, Van Minh Hotel tọa lạc tại thành phố Đà Lạt, cách Thiền viện Trúc Lâm 5 km và cách Hồ Tuyền Lâm 6 km. Từ núi Lang Bi-ang đến Van Minh Hotel khoảng 7km, Sở Thú ZooDoo Đà Lạt cách đó 24 km. Từ khách sạn đến sân bay Liên Khương chỉ 23 km với 40 phút di chuyển nhanh chóng.', N'DaLat', N'admin', N'ML01', 2000000.0000, N'hinh\12452_1527563408_131048488.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks135', N'Golden River Hotel ', N'0388583731', N'roy2ja66@gmail.com', N'04 Nguyễn Phúc Nguyên, Hội An, Quảng Nam', N'3 sao', N'Golden River Hotel chỉ cách 1km với khu Phố cổ Hội An – một trong những di sản thế giới nổi tiếng được UNESCO công nhận. Khách sạn cũng chỉ cách sân bay quốc tế Đà Nẵng khoảng 30 phút lái xe. Bên cạnh đó, Vinh Huy Hotel còn khá gần các địa điểm du lịch nổi tiếng như: bãi biển Cửa Đại và làng rau Trà Quế 10 phút đi xe; bãi biển An Bàng cách đó 2km...Với vị trí đắc địa, khi lưu trú tại khách sạn, bạn sẽ dễ dàng tới các điểm mua sắm cũng như khám phá vẻ đẹp của mảnh đất này.', N'HoiAn', N'admin', N'ML01', 3000000.0000, N'hinh\8109_1524457647__mg_0720.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks137', N' Golden Sunset Hotel', N'0388583731', N'royja166@gmail.com', N'Khối Sơn Phố 1,Cẩm Châu, Thành phố Hội An, Quảng Nam', N'3 sao', N'Golden Sunset Hotel chỉ cách 1km với khu Phố cổ Hội An – một trong những di sản thế giới nổi tiếng được UNESCO công nhận. Khách sạn cũng chỉ cách sân bay quốc tế Đà Nẵng khoảng 30 phút lái xe. Bên cạnh đó, Vinh Huy Hotel còn khá gần các địa điểm du lịch nổi tiếng như: bãi biển Cửa Đại và làng rau Trà Quế 10 phút đi xe; bãi biển An Bàng cách đó 2km...Với vị trí đắc địa, khi lưu trú tại khách sạn, bạn sẽ dễ dàng tới các điểm mua sắm cũng như khám phá vẻ đẹp của mảnh đất này.', N'HoiAn', N'admin', N'ML01', 1500000.0000, N'hinh\BEC612E0F2954D0D96C3_39589798.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks138', N' Sunshine Hotel', N'0388583731', N'royj3a66@gmail.com', N'02 Phan Đình Phùng, Thành phố Hội An, Quảng Nam', N'3 sao', N'Sunshine Hotel chỉ cách 1km với khu Phố cổ Hội An – một trong những di sản thế giới nổi tiếng được UNESCO công nhận. Khách sạn cũng chỉ cách sân bay quốc tế Đà Nẵng khoảng 30 phút lái xe. Bên cạnh đó, Vinh Huy Hotel còn khá gần các địa điểm du lịch nổi tiếng như: bãi biển Cửa Đại và làng rau Trà Quế 10 phút đi xe; bãi biển An Bàng cách đó 2km...Với vị trí đắc địa, khi lưu trú tại khách sạn, bạn sẽ dễ dàng tới các điểm mua sắm cũng như khám phá vẻ đẹp của mảnh đất này.', N'HoiAn', N'admin', N'ML01', 500000.0000, N'hinh\359CBD7902FA45DFA198_65788065.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks14', N'Ladalat Hotel  ', N'0388583731', N'royja466@gmail.com', N'106 Mai Anh Đào, Phường 8, Thành phố Đà Lạt, Lâm Đồng, Vietnam', N'5 sao', N'Nằm trong bán kính 1,2 km từ Vườn Hoa Đà Lạt, Van Minh Hotel tọa lạc tại thành phố Đà Lạt, cách Thiền viện Trúc Lâm 5 km và cách Hồ Tuyền Lâm 6 km. Từ núi Lang Bi-ang đến Van Minh Hotel khoảng 7km, Sở Thú ZooDoo Đà Lạt cách đó 24 km. Từ khách sạn đến sân bay Liên Khương chỉ 23 km với 40 phút di chuyển nhanh chóng.', N'DaLat', N'admin', N'ML01', 800000.0000, N'hinh\11352_1516791417_122328245.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks141', N' Basil Homestay ', N'0388583731', N'royjah66@gmail.com', N'188 Nguyễn Chí Thanh, Phường Cẩm Hà, Hội An, Quảng Nam', N'3 sao', N'Basil Homestay chỉ cách 1km với khu Phố cổ Hội An – một trong những di sản thế giới nổi tiếng được UNESCO công nhận. Khách sạn cũng chỉ cách sân bay quốc tế Đà Nẵng khoảng 30 phút lái xe. Bên cạnh đó, Vinh Huy Hotel còn khá gần các địa điểm du lịch nổi tiếng như: bãi biển Cửa Đại và làng rau Trà Quế 10 phút đi xe; bãi biển An Bàng cách đó 2km...Với vị trí đắc địa, khi lưu trú tại khách sạn, bạn sẽ dễ dàng tới các điểm mua sắm cũng như khám phá vẻ đẹp của mảnh đất này.', N'HoiAn', N'admin', N'ML02', 1300000.0000, N'hinh\D7622629914E40E1AC8B_76848200.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks142', N' Hao Anh Homestay ', N'0388583731', N'royhja66@gmail.com', N'134 Lý Thái Tổ, Phường Cẩm Châu, Thành phố Hội An, Quảng Nam', N'3 sao', N'Hao Anh Homestay chỉ cách 1km với khu Phố cổ Hội An – một trong những di sản thế giới nổi tiếng được UNESCO công nhận. Khách sạn cũng chỉ cách sân bay quốc tế Đà Nẵng khoảng 30 phút lái xe. Bên cạnh đó, Vinh Huy Hotel còn khá gần các địa điểm du lịch nổi tiếng như: bãi biển Cửa Đại và làng rau Trà Quế 10 phút đi xe; bãi biển An Bàng cách đó 2km...Với vị trí đắc địa, khi lưu trú tại khách sạn, bạn sẽ dễ dàng tới các điểm mua sắm cũng như khám phá vẻ đẹp của mảnh đất này.', N'HoiAn', N'admin', N'ML02', 1300000.0000, N'hinh\9B84BADCF83B47DEA326_37881428.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks143', N'Homestay Cỏ Xanh  ', N'0388583731', N'royjfa66@gmail.com', N'94 Lê Hồng Phong, Phường Tân An, Thành phố Hội An, Quảng Nam', N'3 sao', N'Homestay Cỏ Xanh chỉ cách 1km với khu Phố cổ Hội An – một trong những di sản thế giới nổi tiếng được UNESCO công nhận. Khách sạn cũng chỉ cách sân bay quốc tế Đà Nẵng khoảng 30 phút lái xe. Bên cạnh đó, Vinh Huy Hotel còn khá gần các địa điểm du lịch nổi tiếng như: bãi biển Cửa Đại và làng rau Trà Quế 10 phút đi xe; bãi biển An Bàng cách đó 2km...Với vị trí đắc địa, khi lưu trú tại khách sạn, bạn sẽ dễ dàng tới các điểm mua sắm cũng như khám phá vẻ đẹp của mảnh đất này.', N'HoiAn', N'admin', N'ML02', 200000.0000, N'hinh\72F1B2B396844B419CB9_36005556.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks144', N'An Hoi Town Homestay', N'0388583731', N'rosyja66@gmail.com', N'109 Nguyễn Phúc Tần, Thành phố Hội An, Quảng Nam', N'3 sao', N'An Hoi Town Homestay chỉ cách 1km với khu Phố cổ Hội An – một trong những di sản thế giới nổi tiếng được UNESCO công nhận. Khách sạn cũng chỉ cách sân bay quốc tế Đà Nẵng khoảng 30 phút lái xe. Bên cạnh đó, Vinh Huy Hotel còn khá gần các địa điểm du lịch nổi tiếng như: bãi biển Cửa Đại và làng rau Trà Quế 10 phút đi xe; bãi biển An Bàng cách đó 2km...Với vị trí đắc địa, khi lưu trú tại khách sạn, bạn sẽ dễ dàng tới các điểm mua sắm cũng như khám phá vẻ đẹp của mảnh đất này.', N'HoiAn', N'admin', N'ML02', 400000.0000, N'hinh\8358_1477471552_80884363.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks147', N'Rice Field Homestay ', N'0388583731', N'roayja66@gmail.com', N'52A, Lê Thánh Tông, Cẩm Châu, Thành phố Hội An, Quảng Nam', N'3 sao', N'Rice Field Homestay chỉ cách 1km với khu Phố cổ Hội An – một trong những di sản thế giới nổi tiếng được UNESCO công nhận. Khách sạn cũng chỉ cách sân bay quốc tế Đà Nẵng khoảng 30 phút lái xe. Bên cạnh đó, Vinh Huy Hotel còn khá gần các địa điểm du lịch nổi tiếng như: bãi biển Cửa Đại và làng rau Trà Quế 10 phút đi xe; bãi biển An Bàng cách đó 2km...Với vị trí đắc địa, khi lưu trú tại khách sạn, bạn sẽ dễ dàng tới các điểm mua sắm cũng như khám phá vẻ đẹp của mảnh đất này.', N'HoiAn', N'admin', N'ML03', 1500000.0000, N'hinh\9B6E808A821F4A1B874A_39315134.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks149', N' Babylon Villa', N'0388583731', N'royjaa66@gmail.com', N'38 Phan Dinh Phung, Hoi An, 52000, Vietnam', N'3 sao', N'Babylon Villa chỉ cách 1km với khu Phố cổ Hội An – một trong những di sản thế giới nổi tiếng được UNESCO công nhận. Khách sạn cũng chỉ cách sân bay quốc tế Đà Nẵng khoảng 30 phút lái xe. Bên cạnh đó, Vinh Huy Hotel còn khá gần các địa điểm du lịch nổi tiếng như: bãi biển Cửa Đại và làng rau Trà Quế 10 phút đi xe; bãi biển An Bàng cách đó 2km...Với vị trí đắc địa, khi lưu trú tại khách sạn, bạn sẽ dễ dàng tới các điểm mua sắm cũng như khám phá vẻ đẹp của mảnh đất này.', N'HoiAn', N'admin', N'ML04', 1500000.0000, N'hinh\54178_1545724520_dsc_8988-hdr.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks15', N'Khách sạn Du Lys ', N'0388583731', N'royAja66@gmail.com', N'14 Nam Kỳ Khởi Nghĩa, Phường 1, Tp. Đà Lạt, Lâm Đồng', N'3 sao', N'Nằm trong bán kính 1,2 km từ Vườn Hoa Đà Lạt, Van Minh Hotel tọa lạc tại thành phố Đà Lạt, cách Thiền viện Trúc Lâm 5 km và cách Hồ Tuyền Lâm 6 km. Từ núi Lang Bi-ang đến Van Minh Hotel khoảng 7km, Sở Thú ZooDoo Đà Lạt cách đó 24 km. Từ khách sạn đến sân bay Liên Khương chỉ 23 km với 40 phút di chuyển nhanh chóng.', N'DaLat', N'admin', N'ML01', 1500000.0000, N'hinh\56665_1547603446_rs_vip_3-1.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks150', N'Rock Villa Hoi An  ', N'0388583731', N'roysja66@gmail.com', N'Thanh Tây, Thành phố Hội An, Quảng Nam', N'3 sao', N'Rock Villa Hoi An chỉ cách 1km với khu Phố cổ Hội An – một trong những di sản thế giới nổi tiếng được UNESCO công nhận. Khách sạn cũng chỉ cách sân bay quốc tế Đà Nẵng khoảng 30 phút lái xe. Bên cạnh đó, Vinh Huy Hotel còn khá gần các địa điểm du lịch nổi tiếng như: bãi biển Cửa Đại và làng rau Trà Quế 10 phút đi xe; bãi biển An Bàng cách đó 2km...Với vị trí đắc địa, khi lưu trú tại khách sạn, bạn sẽ dễ dàng tới các điểm mua sắm cũng như khám phá vẻ đẹp của mảnh đất này.', N'HoiAn', N'admin', N'ML04', 1500000.0000, N'hinh\04D0339CCAFF43B88383_38286724.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks154', N'Khách sạn Jupiter', N'0388583731', N'royja66f@gmail.com', N'257/1 Lê Hồng Phong, Phường 8, Thành phố Vũng Tầu, Bà Rịa	 - Vũng Tàu, Việt Nam', N'3 sao', N'Khách sạn nằm bên biển Thùy Vân lãng mạn, gần cây cầu đi bộ băng qua Bãi Sau cuả Vũng Tàu.  Cách bến xe 14 phút, sân bay quốc tế Tân Sơn Nhất 180 phút lái xe, rất thuận tiện cho du khách đi lại và di chuyển  thăm quan khám phá thành phố và những điểm du lịch nổi tiếng.', N'VungTau', N'admin', N'ML01', 1500000.0000, N'hinh\57759_1549939011_le_tan_1_resize.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks155', N'Khách sạn Corvin', N'0388583731', N'royjah66@gmail.com', N'21 Thùy Vân, Phường 2, Thành phố Vũng Tàu, Bà Rịa - Vũng Tàu', N'3 sao', N'Khách sạn nằm bên biển Thùy Vân lãng mạn, gần cây cầu đi bộ băng qua Bãi Sau cuả Vũng Tàu.  Cách bến xe 14 phút, sân bay quốc tế Tân Sơn Nhất 180 phút lái xe, rất thuận tiện cho du khách đi lại và di chuyển  thăm quan khám phá thành phố và những điểm du lịch nổi tiếng.', N'VungTau', N'admin', N'ML01', 1500000.0000, N'hinh\283_1547256265_pool.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks156', N'Khách Sạn Bình Minh ', N'0388583731', N'roygja66@gmail.com', N'45/26A Thùy Vân, Phường 2, Thành phố Vũng Tàu, Bà Rịa - Vũng Tàu', N'3 sao', N'Khách sạn nằm bên biển Thùy Vân lãng mạn, gần cây cầu đi bộ băng qua Bãi Sau cuả Vũng Tàu.  Cách bến xe 14 phút, sân bay quốc tế Tân Sơn Nhất 180 phút lái xe, rất thuận tiện cho du khách đi lại và di chuyển  thăm quan khám phá thành phố và những điểm du lịch nổi tiếng.', N'VungTau', N'admin', N'ML01', 1500000.0000, N'hinh\9509_1548384903_img_1126.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks157', N'Khách Sạn Spring', N'0388583731', N'royAja66@gmail.com', N'Số 8, Lô A4, Thùy Vân, P. Thắng Tam, Thành phố Vũng Tàu, Bà Rịa - Vũng Tàu', N'3 sao', N'Khách sạn nằm bên biển Thùy Vân lãng mạn, gần cây cầu đi bộ băng qua Bãi Sau cuả Vũng Tàu.  Cách bến xe 14 phút, sân bay quốc tế Tân Sơn Nhất 180 phút lái xe, rất thuận tiện cho du khách đi lại và di chuyển  thăm quan khám phá thành phố và những điểm du lịch nổi tiếng.', N'VungTau', N'admin', N'ML01', 1500000.0000, N'hinh\51EA916CAE644DC8A1AB_79372126.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks159', N'Nolis Hotel', N'0388583731', N'royjta66@gmail.com', N'19 Thùy Vân, Phường 2, Thành phố Vũng Tầu, Bà Rịa - Vũng Tàu, Việt Nam', N'3 sao', N'Khách sạn nằm bên biển Thùy Vân lãng mạn, gần cây cầu đi bộ băng qua Bãi Sau cuả Vũng Tàu.  Cách bến xe 14 phút, sân bay quốc tế Tân Sơn Nhất 180 phút lái xe, rất thuận tiện cho du khách đi lại và di chuyển  thăm quan khám phá thành phố và những điểm du lịch nổi tiếng.', N'VungTau', N'admin', N'ML01', 1500000.0000, N'hinh\56665_1547603446_rs_vip_3-1.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks16', N' Golden Bee Hotel', N'0388583731', N'rroyja66@gmail.com', N'17 Lê Hồng Phong, Phường 4, Thành phố Đà Lạt, Lâm Đồng, Vietnam', N'3 sao', N'Nằm trong bán kính 1,2 km từ Vườn Hoa Đà Lạt, Van Minh Hotel tọa lạc tại thành phố Đà Lạt, cách Thiền viện Trúc Lâm 5 km và cách Hồ Tuyền Lâm 6 km. Từ núi Lang Bi-ang đến Van Minh Hotel khoảng 7km, Sở Thú ZooDoo Đà Lạt cách đó 24 km. Từ khách sạn đến sân bay Liên Khương chỉ 23 km với 40 phút di chuyển nhanh chóng.', N'DaLat', N'admin', N'ML01', 1500000.0000, N'hinh\11689_1543460261__d7a7856-hdr.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks161', N'Gác Nhỏ Homestay ', N'0388583731', N'roryja66@gmail.com', N'133 Huyền Trân Công Chúa, phường 8, Tp. Vũng Tàu, Bà Rịa - Vũng Tàu, Vietnam', N'3 sao', N'Khách sạn nằm bên biển Thùy Vân lãng mạn, gần cây cầu đi bộ băng qua Bãi Sau cuả Vũng Tàu.  Cách bến xe 14 phút, sân bay quốc tế Tân Sơn Nhất 180 phút lái xe, rất thuận tiện cho du khách đi lại và di chuyển  thăm quan khám phá thành phố và những điểm du lịch nổi tiếng.', N'VungTau', N'admin', N'ML01', 1500000.0000, N'hinh\9774_1498898867_89520148.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks163', N'Kiến Nhĩ Tâm Motel', N'0388583731', N'roeyja66@gmail.com', N'74 Trương Văn Bang, Phường 7, Thành phố Vũng Tàu, Bà Rịa - Vũng Tàu.', N'3 sao', N'Khách sạn nằm bên biển Thùy Vân lãng mạn, gần cây cầu đi bộ băng qua Bãi Sau cuả Vũng Tàu.  Cách bến xe 14 phút, sân bay quốc tế Tân Sơn Nhất 180 phút lái xe, rất thuận tiện cho du khách đi lại và di chuyển  thăm quan khám phá thành phố và những điểm du lịch nổi tiếng.', N'VungTau', N'admin', N'ML01', 400.0000, N'hinh\41BE39B4A38645DC94A5_65535978.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks164', N'Motel ATC Vũng Tàu', N'0388583731', N'roeryja66@gmail.com', N'A41 3 Tháng 2, Tp. Vũng Tàu, Bà Rịa - Vũng Tàu, Việt Nam', N'3 sao', N'Khách sạn nằm bên biển Thùy Vân lãng mạn, gần cây cầu đi bộ băng qua Bãi Sau cuả Vũng Tàu.  Cách bến xe 14 phút, sân bay quốc tế Tân Sơn Nhất 180 phút lái xe, rất thuận tiện cho du khách đi lại và di chuyển  thăm quan khám phá thành phố và những điểm du lịch nổi tiếng.', N'VungTau', N'admin', N'ML01', 1500000.0000, N'hinh\611817_1574403214_216623605.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks165', N'Big Mama Hostel ', N'0388583731', N'royreja66@gmail.com', N'5 Đồ Chiểu, Thành phố Vũng Tầu, Bà Rịa - Vũng Tàu, Việt Nam', N'3 sao', N'Khách sạn nằm bên biển Thùy Vân lãng mạn, gần cây cầu đi bộ băng qua Bãi Sau cuả Vũng Tàu.  Cách bến xe 14 phút, sân bay quốc tế Tân Sơn Nhất 180 phút lái xe, rất thuận tiện cho du khách đi lại và di chuyển  thăm quan khám phá thành phố và những điểm du lịch nổi tiếng.', N'VungTau', N'admin', N'ML01', 1500000.0000, N'hinh\12493_1569833326_dc6d9626369dd1c3888c.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks166', N'Vu Hoang Guest House', N'0388583731', N'ryoyja66@gmail.com', N'12 La Văn Cầu, Phường Thắng Tam, Thành phố Vũng Tàu, Bà Rịa - Vũng Tàu', N'3 sao', N'Khách sạn nằm bên biển Thùy Vân lãng mạn, gần cây cầu đi bộ băng qua Bãi Sau cuả Vũng Tàu.  Cách bến xe 14 phút, sân bay quốc tế Tân Sơn Nhất 180 phút lái xe, rất thuận tiện cho du khách đi lại và di chuyển  thăm quan khám phá thành phố và những điểm du lịch nổi tiếng.', N'VungTau', N'admin', N'ML01', 1500000.0000, N'hinh\8777_1486980611_80226503.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks167', N'Gia Han Guesthouse ', N'0388583731', N'royyja66@gmail.com', N'412/12 Lê Hồng Phong, Thành phố Vũng Tàu, Bà Rịa - Vũng Tàu', N'3 sao', N'Khách sạn nằm bên biển Thùy Vân lãng mạn, gần cây cầu đi bộ băng qua Bãi Sau cuả Vũng Tàu.  Cách bến xe 14 phút, sân bay quốc tế Tân Sơn Nhất 180 phút lái xe, rất thuận tiện cho du khách đi lại và di chuyển  thăm quan khám phá thành phố và những điểm du lịch nổi tiếng.', N'VungTau', N'admin', N'ML01', 1500000.0000, N'hinh\6638_1470888092679_74402661.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks168', N'Villa Vihomes ', N'0388583731', N'royjha66@gmail.com', N'B16 Trần Văn Thời, phường 8, Tp. Vũng Tàu, Bà Rịa - Vũng Tàu, Việt Nam', N'3 sao', N'Khách sạn nằm bên biển Thùy Vân lãng mạn, gần cây cầu đi bộ băng qua Bãi Sau cuả Vũng Tàu.  Cách bến xe 14 phút, sân bay quốc tế Tân Sơn Nhất 180 phút lái xe, rất thuận tiện cho du khách đi lại và di chuyển  thăm quan khám phá thành phố và những điểm du lịch nổi tiếng.', N'VungTau', N'admin', N'ML01', 1500000.0000, N'hinh\611787_1574161757_anh_nen.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks169', N'Hai Nam Villa ', N'0388583731', N'royuja66@gmail.com', N'59/40 Phan Chu Trinh, Phường 2, Thành phố Vũng Tàu, Bà Rịa - Vũng Tàu', N'3 sao', N'Khách sạn nằm bên biển Thùy Vân lãng mạn, gần cây cầu đi bộ băng qua Bãi Sau cuả Vũng Tàu.  Cách bến xe 14 phút, sân bay quốc tế Tân Sơn Nhất 180 phút lái xe, rất thuận tiện cho du khách đi lại và di chuyển  thăm quan khám phá thành phố và những điểm du lịch nổi tiếng.', N'VungTau', N'admin', N'ML01', 1500000.0000, N'hinh\9059_1487240766_87117513.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks17', N'The Local Homestay ', N'0388583731', N'roydja66@gmail.com', N'Block D, Tầng 15.8 - 360a Bến Vân Đồn, Quận 4, Hồ Chí Minh', N'3 sao', N'Tọa lạc tại quận 1, The Local Homestay cách trung tâm thành phố Hồ Chí Minh chưa tới 1km. Từ khách sạn, du khách chỉ cần đi bộ 5 phút để tới trung tâm thương mại Zen Plaza. Trong vòng bán kính 1,5km tính từ khách sạn là nhiều khu mua sắm lớn như chợ Bến Thành, Saigon Square, Parkson, Vincom… Những địa điểm du lịch nổi tiếng của thành phố như Dinh Độc Lập, Nhà thờ Đức Bà, Bưu điện trung tâm Sài Gòn, Nhà hát thành phố… cũng chỉ cách khách sạn từ 5 – 10 phút đi xe.Khách sạn cách sân bay Tân Sơn Nhất 6,5km, cách ga Sài Gòn 2km nên dù di chuyển bằng phương tiện gì, du khách cũng tiết kiệm được rất nhiều thời gian.', N'TPHCM', N'admin', N'ML02', 1500000.0000, N'hinh\3.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks170', N'Khách sạn Amona Huế', N'0388583731', N'roy4jda6h6@gmail.com', N'11 Nguyễn Công Trứ, Phú Hội, Thành phố Huế, Thừa Thiên Huế, Việt Nam', N'3 sao', N'Khách sạn tọa lạc trên một trong những con đường chính của thành phố Huế. Vị trí ngay tại trung tâm thành phố, cách ga Huế tầm1,4 km và sân bay Phú Bài khoảng 12 km giúp thuận tiện cho du khách trong việc di chuyển và tham quan các địa điểm du lịch, danh lam thắng cảnh và di tích lịch sử. Với đội ngũ nhân viên trẻ nhiệt huyết và năng động, chúng tôi luôn cố gắng đem đến cảm giác thoải mái và hài lòng cho du khách sử dụng dịch vụ tại khách sạn.', N'Hue', N'admin', N'ML01', 1500000.0000, N'hinh\12720_1540950586_9.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks171', N'Cozy Hue Hotel', N'0388583731', N'royj4da6h6@gmail.com', N'28/42 Nguyễn Công Trứ, Phường Phú Hội, Thành phố Huế, Thừa Thiên - Huế', N'3 sao', N'Khách sạn tọa lạc trên một trong những con đường chính của thành phố Huế. Vị trí ngay tại trung tâm thành phố, cách ga Huế tầm1,4 km và sân bay Phú Bài khoảng 12 km giúp thuận tiện cho du khách trong việc di chuyển và tham quan các địa điểm du lịch, danh lam thắng cảnh và di tích lịch sử. Với đội ngũ nhân viên trẻ nhiệt huyết và năng động, chúng tôi luôn cố gắng đem đến cảm giác thoải mái và hài lòng cho du khách sử dụng dịch vụ tại khách sạn.', N'Hue', N'admin', N'ML01', 1500000.0000, N'hinh\10795_1500613353_34122936.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks172', N'Jade Hotel ', N'0388583731', N'roy4jda6h6@gmail.com', N'43 Hùng Vương, Thành phố Huế, Thừa Thiên Huế', N'3 sao', N'Khách sạn tọa lạc trên một trong những con đường chính của thành phố Huế. Vị trí ngay tại trung tâm thành phố, cách ga Huế tầm1,4 km và sân bay Phú Bài khoảng 12 km giúp thuận tiện cho du khách trong việc di chuyển và tham quan các địa điểm du lịch, danh lam thắng cảnh và di tích lịch sử. Với đội ngũ nhân viên trẻ nhiệt huyết và năng động, chúng tôi luôn cố gắng đem đến cảm giác thoải mái và hài lòng cho du khách sử dụng dịch vụ tại khách sạn.', N'Hue', N'admin', N'ML01', 1500000.0000, N'hinh\3401_1521768149_superior-room--v7426806.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks173', N'Carnosa Hotel', N'0388583731', N'ro4yjda6h6@gmail.com', N'11b Nguyễn Công Trứ, Phú Hội, Thành phố Huế, Thừa Thiên Huế', N'3 sao', N'Khách sạn tọa lạc trên một trong những con đường chính của thành phố Huế. Vị trí ngay tại trung tâm thành phố, cách ga Huế tầm1,4 km và sân bay Phú Bài khoảng 12 km giúp thuận tiện cho du khách trong việc di chuyển và tham quan các địa điểm du lịch, danh lam thắng cảnh và di tích lịch sử. Với đội ngũ nhân viên trẻ nhiệt huyết và năng động, chúng tôi luôn cố gắng đem đến cảm giác thoải mái và hài lòng cho du khách sử dụng dịch vụ tại khách sạn.', N'Hue', N'admin', N'ML01', 1500000.0000, N'hinh\10839_1541600296_img_8136.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks174', N'Hue Royal Hotel', N'0388583731', N'r4oyjda6h6@gmail.com', N'36 Võ Thị Sáu, Phú Hội, Thành phố Huế, Thừa Thiên Huế', N'3 sao', N'Khách sạn tọa lạc trên một trong những con đường chính của thành phố Huế. Vị trí ngay tại trung tâm thành phố, cách ga Huế tầm1,4 km và sân bay Phú Bài khoảng 12 km giúp thuận tiện cho du khách trong việc di chuyển và tham quan các địa điểm du lịch, danh lam thắng cảnh và di tích lịch sử. Với đội ngũ nhân viên trẻ nhiệt huyết và năng động, chúng tôi luôn cố gắng đem đến cảm giác thoải mái và hài lòng cho du khách sử dụng dịch vụ tại khách sạn.', N'Hue', N'admin', N'ML01', 1500000.0000, N'hinh\3298_1540482587_dsc04463.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks176', N'Khách sạn Sapa', N'0388583731', N'roy5jda6h6@gmail.com', N'4 Thạch Sơn, TT. Sa Pa, Sa Pa, Lào Cai, Vietnam', N'3 sao', N'Khách sạn nằm ở trung tâm thị trấn Sapa gần các chợ, bến xe và được bao bọc bởi không gian xanh và dòng sông hiền hòa. Cách thăm chợ tình Sa Pa, nhà thờ đá cổ và khu sinh thái Hàm Rồng  chỉ 5 phút đi bộ, Sapa Hotel là điểm dừng chân lý tưởng cho du khách khi đến với Sa Pa và có thể hưởng được rất nhiều lợi thế trong ngắm cảnh, văn hóa, mua sắm ở trung tâm', N'SaPa', N'admin', N'ML01', 1500000.0000, N'hinh\5215CFD9C21C492BABE9_19992938.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks178', N'Sapa Centre Hotel', N'0388583731', N'roy45jda6h6@gmail.com', N'75 Xuân Viên, Trung tâm thành phố Sapa, Huyện Sa Pa, Lào Cai', N'3 sao', N'Khách sạn nằm ở trung tâm thị trấn Sapa gần các chợ, bến xe và được bao bọc bởi không gian xanh và dòng sông hiền hòa. Cách thăm chợ tình Sa Pa, nhà thờ đá cổ và khu sinh thái Hàm Rồng  chỉ 5 phút đi bộ, Sapa Hotel là điểm dừng chân lý tưởng cho du khách khi đến với Sa Pa và có thể hưởng được rất nhiều lợi thế trong ngắm cảnh, văn hóa, mua sắm ở trung tâm', N'SaPa', N'admin', N'ML01', 1500000.0000, N'hinh\A299306B334C4DD2908B_72329869.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks18', N'MOREdalat - Homestay', N'0388583731', N'rosyja66@gmail.com', N'71b Thủ Khoa Huân, Phường 1, Tp. Đà Lạt, Lâm Đồng, Việt Nam', N'3 Sao', N'Nằm trong bán kính 1,2 km từ Vườn Hoa Đà Lạt, Van Minh Hotel tọa lạc tại thành phố Đà Lạt, cách Thiền viện Trúc Lâm 5 km và cách Hồ Tuyền Lâm 6 km. Từ núi Lang Bi-ang đến Van Minh Hotel khoảng 7km, Sở Thú ZooDoo Đà Lạt cách đó 24 km. Từ khách sạn đến sân bay Liên Khương chỉ 23 km với 40 phút di chuyển nhanh chóng.', N'DaLat', N'admin', N'ML02', 500000.0000, N'hinh\8817_1551321447_p2_(5)coppy.jpeg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks180', N'Ancora Cruises', N'0388583731', N'royj7da6h6@gmail.com', N'Cảng Sun Group, Bãi Chay', N'3 sao', N'Trải nghiệm du thuyền độc đáo và thưởng ngoạn vẻ đẹp của tuyệt tác thiên nhiên Vịnh Hạ Long với Ancora Cruise – Du thuyền 4 sao đẳng cấp, mới đi vào hoạt động từ tháng 4 năm 2018. Lấy cảm hứng từ vẻ đẹp tự nhiên cùng những nét văn hóa truyền thống độc đáo của Việt Nam, 24 cabins của du thuyền Ancora được thiết kế hài hòa, tinh tế với các tiện nghi và trang thiết bị cao cấp. Nhà hàng và Bar với sức chứa 48 người, là nơi mà du khách được thưởng thức các bữa ăn ngon miệng với menu đa dạng theo phong cách Âu – Á. Kết hợp với dịch vụ chuyên nghiệp, tận tâm của đội ngũ nhân viên nhiều năm kinh nghiệm, du thuyền Ancora sẽ mang đến cho du khách một trải nghiệm đáng nhớ trên Vịnh Hạ Long – kỳ quan thiên nhiên của thế giới.', N'HaLong', N'admin', N'ML01', 1500000.0000, N'hinh\32306_1559186510_1-ancora-cruises-overview-3.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks183', N'Paris Hotel', N'0388583731', N'royjda67h6@gmail.com', N'Số 120, Tổ 4, Khu 4C, đường văn tiến dũng P. Hồng Hải, Thành phố Hạ Long, Quảng Ninh', N'3 sao', N'Paris Hotel cách công viên Halong Park 1.4 km, cách chùa Long Tiên 2.5 km,cách núi bài thơ 2.7 km.Paris Hotel mang phong cách Tây Âu sang trọng với kiến trúc Pháp tân cổ điển đem đến cho du khách ấn tượng khó quên, khách sạn có nội gỗ cao cấp, hiện đại, trang thiết bị tiện nghi cùng khung cảnh thành phố Hạ Long sầm uất và lung linh.', N'HaLong', N'admin', N'ML01', 1500000.0000, N'hinh\12588_1529398552_jjjjjjjjjjjjjjjj.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks184', N'Ha Long Trendy Hotel', N'0388583731', N'royjda746h6@gmail.com', N'12B,15 Mỹ Gia 5, Vinhomes Dragon Bay Hạ Long, Quảng Ninh', N'3 sao', N'Bãi Đậu xe an ninh an toànTrà , Cà phê, Nước lọc Miễn Phí.Tọa lạc ở khu biệt thự Vinhomes trung tâm thành phố Hạ Long.Cách điểm vui chơi Sunworld khoảng 10 phút đi xe.Bể bơi bốn mùa của Vin Home cách nhà 20m có tính phí 100k Gần đường bao biển, núi Bài thơ, cung cá heo, phố ẩm thực, bảo tàng, chợ địa phương.....', N'HaLong', N'admin', N'ML01', 1500000.0000, N'hinh\62160_1553239470_157760679.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks19', N'Hoài House’s  ', N'0388583731', N'rosdyja66@gmail.com', N'½ Mai Hắc Đế, Phường 6, thành phố Đà Lạt, tỉnh Lâm Đồng', N'3 Sao', N'Nằm trong bán kính 1,2 km từ Vườn Hoa Đà Lạt, Van Minh Hotel tọa lạc tại thành phố Đà Lạt, cách Thiền viện Trúc Lâm 5 km và cách Hồ Tuyền Lâm 6 km. Từ núi Lang Bi-ang đến Van Minh Hotel khoảng 7km, Sở Thú ZooDoo Đà Lạt cách đó 24 km. Từ khách sạn đến sân bay Liên Khương chỉ 23 km với 40 phút di chuyển nhanh chóng.', N'DaLat', N'admin', N'ML02', 600000.0000, N'hinh\69307_1562581729_64329286_868279223537632_1910416206473461760_n.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks2', N'ZO Villas', N'0388583731', N'roydaja66@gmail.com', N'43 Đặng Thai Mai, Phạm Ngũ Lão, Quận 1, TP Hồ Chí Minh ', N'3 sao', N'Tọa lạc tại quận 1, ZO Villas cách trung tâm thành phố Hồ Chí Minh chưa tới 1km. Từ khách sạn, du khách chỉ cần đi bộ 5 phút để tới trung tâm thương mại Zen Plaza. Trong vòng bán kính 1,5km tính từ khách sạn là nhiều khu mua sắm lớn như chợ Bến Thành, Saigon Square, Parkson, Vincom… Những địa điểm du lịch nổi tiếng của thành phố như Dinh Độc Lập, Nhà thờ Đức Bà, Bưu điện trung tâm Sài Gòn, Nhà hát thành phố… cũng chỉ cách khách sạn từ 5 – 10 phút đi xe.Khách sạn cách sân bay Tân Sơn Nhất 6,5km, cách ga Sài Gòn 2km nên dù di chuyển bằng phương tiện gì, du khách cũng tiết kiệm được rất nhiều thời gian.', N'TPHCM', N'admin', N'ML02', 1500000.0000, N'hinh\4.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks20', N'De La Casa Apartment', N'0388583731', N'rodayja66@gmail.com', N'55 Bạch Đằng, Phường 2, Tân Bình, Hồ Chí Minh', N'3 sao', N'Tọa lạc tại quận Tân bình, De La Casa Apartment cách trung tâm thành phố Hồ Chí Minh rất gần. Từ khách sạn, du khách chỉ cần đi bộ 5 phút để tới trung tâm thương mại Zen Plaza. Trong vòng bán kính 1,5km tính từ khách sạn là nhiều khu mua sắm lớn như siêu thị AEON MALL, Vincom… Những địa điểm du lịch nổi tiếng của thành phố như Dinh Độc Lập, Nhà thờ Đức Bà, Bưu điện trung tâm Sài Gòn, Nhà hát thành phố… cũng chỉ cách khách sạn từ 10 – 15 phút đi xe.Khách sạn cách sân bay Tân Sơn Nhất 3,5km, cách ga Sài Gòn 5km nên dù di chuyển bằng phương tiện gì, du khách cũng tiết kiệm được rất nhiều thời gian.', N'TPHCM', N'admin', N'ML02', 1500000.0000, N'hinh\5.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks21', N'Suri House Homestay ', N'0388583731', N'rohyja66@gmail.com', N'4 Bùi Thị Xuân, Thành Phố Đà Lạt, Lâm Đồng', N'3 Sao', N'Nằm trong bán kính 1,2 km từ Vườn Hoa Đà Lạt, Van Minh Hotel tọa lạc tại thành phố Đà Lạt, cách Thiền viện Trúc Lâm 5 km và cách Hồ Tuyền Lâm 6 km. Từ núi Lang Bi-ang đến Van Minh Hotel khoảng 7km, Sở Thú ZooDoo Đà Lạt cách đó 24 km. Từ khách sạn đến sân bay Liên Khương chỉ 23 km với 40 phút di chuyển nhanh chóng.', N'DaLat', N'admin', N'ML02', 600000.0000, N'hinh\9894_1499165206_31.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks22', N' Tia Du Homestay ', N'0388583731', N'royjca66@gmail.com', N'60 Đống Đa, TP Đà Lạt, Lâm Đồng', N'3 Sao', N'Nằm trong bán kính 1,2 km từ Vườn Hoa Đà Lạt, Van Minh Hotel tọa lạc tại thành phố Đà Lạt, cách Thiền viện Trúc Lâm 5 km và cách Hồ Tuyền Lâm 6 km. Từ núi Lang Bi-ang đến Van Minh Hotel khoảng 7km, Sở Thú ZooDoo Đà Lạt cách đó 24 km. Từ khách sạn đến sân bay Liên Khương chỉ 23 km với 40 phút di chuyển nhanh chóng.', N'DaLat', N'admin', N'ML02', 700000.0000, N'hinh\10485_1499930749_103525371.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks23', N'ZO1 Villas', N'0388583731', N'royja6c6@gmail.com', N'55 Đặng Thai Mai, Phạm Ngũ Lão, Quận 1, TP Hồ Chí Minh ', N'3 sao', N'Tọa lạc tại quận 1, ZO1 Villas cách trung tâm thành phố Hồ Chí Minh chưa tới 1km. Từ khách sạn, du khách chỉ cần đi bộ 5 phút để tới trung tâm thương mại Zen Plaza. Trong vòng bán kính 1,5km tính từ khách sạn là nhiều khu mua sắm lớn như chợ Bến Thành, Saigon Square, Parkson, Vincom… Những địa điểm du lịch nổi tiếng của thành phố như Dinh Độc Lập, Nhà thờ Đức Bà, Bưu điện trung tâm Sài Gòn, Nhà hát thành phố… cũng chỉ cách khách sạn từ 5 – 10 phút đi xe.Khách sạn cách sân bay Tân Sơn Nhất 6,5km, cách ga Sài Gòn 2km nên dù di chuyển bằng phương tiện gì, du khách cũng tiết kiệm được rất nhiều thời gian.', N'TPHCM', N'admin', N'ML04', 1500000.0000, N'hinh\6.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks24', N'Cub homestay ', N'0388583731', N'royja6x6@gmail.com', N'27S Lê Hồng Phong, Phường 4, Tp. Đà Lạt, Lâm Đồng, Việt Nam', N'3 Sao', N'Nằm trong bán kính 1,2 km từ Vườn Hoa Đà Lạt, Van Minh Hotel tọa lạc tại thành phố Đà Lạt, cách Thiền viện Trúc Lâm 5 km và cách Hồ Tuyền Lâm 6 km. Từ núi Lang Bi-ang đến Van Minh Hotel khoảng 7km, Sở Thú ZooDoo Đà Lạt cách đó 24 km. Từ khách sạn đến sân bay Liên Khương chỉ 23 km với 40 phút di chuyển nhanh chóng.', N'DaLat', N'admin', N'ML02', 250000.0000, N'hinh\11392_1513140044_23905187_878364665663702_6256047822678722362_n.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks25', N'Sunrise Hanoi Hotel', N'0388583731', N'royzja66@gmail.com', N'716 Đường Bạch Đằng, Bạch Đằng, Hai Bà Trưng, Hà Nội', N'3 sao', N'Khách sạn tọa lạc tại một vị trí lý tưởng trong khu Trung Hòa Nhân Chính , quận Cầu Giấy , bên con đường Trần Duy Hưng thênh thang. Thuận tiện đến thăm những công trình lớn của Thủ đô như sân vận động Quốc gia Mỹ Đình cách 3.6 km, Trung tâm Hội nghị Quốc gia 1.4 km, bảo tàng Dân tộc học 3.1 km, cách Hồ Gươm và phố cổ 5km với 15 phút di chuyển cùng những địa điểm nên ghé thăm ở Hà Nội khác.', N'HaNoi', N'admin', N'ML01', 1500000.0000, N'hinh\10.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks26', N'Hotel Bel Ami Hà Nội', N'0388583731', N'royzxja66@gmail.com', N'244 Hàng Bông, Quận Hoàn Kiếm, Hà Nội', N'3 sao', N'Khách sạn tọa lạc tại một vị trí lý tưởng trong khu Trung Hòa Nhân Chính , quận Cầu Giấy , bên con đường Trần Duy Hưng thênh thang. Thuận tiện đến thăm những công trình lớn của Thủ đô như sân vận động Quốc gia Mỹ Đình cách 3.6 km, Trung tâm Hội nghị Quốc gia 1.4 km, bảo tàng Dân tộc học 3.1 km, cách Hồ Gươm và phố cổ 5km với 15 phút di chuyển cùng những địa điểm nên ghé thăm ở Hà Nội khác.', N'HaNoi', N'admin', N'ML01', 1500000.0000, N'hinh\3.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks27', N'Ba Sao Hotel', N'0388583731', N'royja6z6@gmail.com', N'Số 23 Ngõ 81, Trung Kính, Trung Hoà, Cầu Giấy, Hà Nội', N'3 sao', N'Khách sạn tọa lạc tại một vị trí lý tưởng trong khu Trung Hòa Nhân Chính , quận Cầu Giấy , bên con đường Trần Duy Hưng thênh thang. Thuận tiện đến thăm những công trình lớn của Thủ đô như sân vận động Quốc gia Mỹ Đình cách 3.6 km, Trung tâm Hội nghị Quốc gia 1.4 km, bảo tàng Dân tộc học 3.1 km, cách Hồ Gươm và phố cổ 5km với 15 phút di chuyển cùng những địa điểm nên ghé thăm ở Hà Nội khác.', N'HaNoi', N'admin', N'ML01', 1500000.0000, N'hinh\11.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks28', N'Atrium Hanoi Hotel', N'0388583731', N'royja666@gmail.com', N'32A Đào Duy Từ, Hàng Buồm, Hoàn Kiếm, Hà Nội', N'3 sao', N'Khách sạn tọa lạc tại một vị trí lý tưởng trong khu Trung Hòa Nhân Chính , quận Cầu Giấy , bên con đường Trần Duy Hưng thênh thang. Thuận tiện đến thăm những công trình lớn của Thủ đô như sân vận động Quốc gia Mỹ Đình cách 3.6 km, Trung tâm Hội nghị Quốc gia 1.4 km, bảo tàng Dân tộc học 3.1 km, cách Hồ Gươm và phố cổ 5km với 15 phút di chuyển cùng những địa điểm nên ghé thăm ở Hà Nội khác.', N'HaNoi', N'admin', N'ML01', 1500000.0000, N'hinh\12.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks29', N'Thông Nhỏ Ơi Hostel ', N'0388583731', N'royja766@gmail.com', N'72A Nguyễn Chí Thanh, Phường 1, Thành phố Đà Lạt, Lâm Đồng, Việt Nam', N'3 Sao', N'Nằm trong bán kính 1,2 km từ Vườn Hoa Đà Lạt, Van Minh Hotel tọa lạc tại thành phố Đà Lạt, cách Thiền viện Trúc Lâm 5 km và cách Hồ Tuyền Lâm 6 km. Từ núi Lang Bi-ang đến Van Minh Hotel khoảng 7km, Sở Thú ZooDoo Đà Lạt cách đó 24 km. Từ khách sạn đến sân bay Liên Khương chỉ 23 km với 40 phút di chuyển nhanh chóng.', N'DaLat', N'admin', N'ML03', 400000.0000, N'hinh\55682_1545633783_59e533706e588d06d449.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks3', N'KaBiLa', N'0988572142', N'hunglubi1623@gmail.com', N'27B - Nguyễn Kiệm - Đống Đa - Hà Nội', N'3 sao', N'Khách sạn tọa lạc tại một vị trí lý tưởng trong khu Trung Hòa Nhân Chính , quận Cầu Giấy , bên con đường Trần Duy Hưng thênh thang. Thuận tiện đến thăm những công trình lớn của Thủ đô như sân vận động Quốc gia Mỹ Đình cách 3.6 km, Trung tâm Hội nghị Quốc gia 1.4 km, bảo tàng Dân tộc học 3.1 km, cách Hồ Gươm và phố cổ 5km với 15 phút di chuyển cùng những địa điểm nên ghé thăm ở Hà Nội khác.', N'HaNoi', N'admin', N'ML01', 1500000.0000, N'hinh\13.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks30', N'Ky Hoa Guest House', N'0388583731', N'royja6566@gmail.com', N'781D8 Lê Hồng Phong, Quận 10, TP Hồ Chí Minh', N'5 sao', N'Tọa lạc tại quận 1, Ky Hoa Guest House cách trung tâm thành phố Hồ Chí Minh chưa tới 1km. Từ khách sạn, du khách chỉ cần đi bộ 5 phút để tới trung tâm thương mại Zen Plaza. Trong vòng bán kính 1,5km tính từ khách sạn là nhiều khu mua sắm lớn như chợ Bến Thành, Saigon Square, Parkson, Vincom… Những địa điểm du lịch nổi tiếng của thành phố như Dinh Độc Lập, Nhà thờ Đức Bà, Bưu điện trung tâm Sài Gòn, Nhà hát thành phố… cũng chỉ cách khách sạn từ 5 – 10 phút đi xe.Khách sạn cách sân bay Tân Sơn Nhất 6,5km, cách ga Sài Gòn 2km nên dù di chuyển bằng phương tiện gì, du khách cũng tiết kiệm được rất nhiều thời gian.', N'TPHCM', N'admin', N'ML03', 800000.0000, N'hinh\7.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks31', N'City Pass Da Lat  ', N'0388583731', N'royja6d6@gmail.com', N'47/3 Hoàng Diệu, Phường 5, Thành phố Đà Lạt, Lâm Đồng', N'3 Sao', N'Nằm trong bán kính 1,2 km từ Vườn Hoa Đà Lạt, Van Minh Hotel tọa lạc tại thành phố Đà Lạt, cách Thiền viện Trúc Lâm 5 km và cách Hồ Tuyền Lâm 6 km. Từ núi Lang Bi-ang đến Van Minh Hotel khoảng 7km, Sở Thú ZooDoo Đà Lạt cách đó 24 km. Từ khách sạn đến sân bay Liên Khương chỉ 23 km với 40 phút di chuyển nhanh chóng.', N'DaLat', N'admin', N'ML03', 600000.0000, N'hinh\7489_1557461246_189682674.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks32', N'Villa Vy House  ', N'0388583731', N'royja6sa6@gmail.com', N'59 Đường Mẫu Tâm, Phường 4, Thành phố Đà Lạt, Lâm Đồng, Việt Nam', N'3 Sao', N'Nằm trong bán kính 1,2 km từ Vườn Hoa Đà Lạt, Van Minh Hotel tọa lạc tại thành phố Đà Lạt, cách Thiền viện Trúc Lâm 5 km và cách Hồ Tuyền Lâm 6 km. Từ núi Lang Bi-ang đến Van Minh Hotel khoảng 7km, Sở Thú ZooDoo Đà Lạt cách đó 24 km. Từ khách sạn đến sân bay Liên Khương chỉ 23 km với 40 phút di chuyển nhanh chóng.', N'DaLat', N'admin', N'ML03', 300000.0000, N'hinh\63883_1556162959_super_room_205_(3).jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks33', N'Nhà nghỉ Ngọc Loan  ', N'0388583731', N'royja6j6@gmail.com', N'176 Đường Phạm Ngọc Thạch, Phường 6, Thành phố Đà Lạt, Lâm Đồng, Việt Nam', N'3 Sao', N'Nằm trong bán kính 1,2 km từ Vườn Hoa Đà Lạt, Van Minh Hotel tọa lạc tại thành phố Đà Lạt, cách Thiền viện Trúc Lâm 5 km và cách Hồ Tuyền Lâm 6 km. Từ núi Lang Bi-ang đến Van Minh Hotel khoảng 7km, Sở Thú ZooDoo Đà Lạt cách đó 24 km. Từ khách sạn đến sân bay Liên Khương chỉ 23 km với 40 phút di chuyển nhanh chóng.', N'DaLat', N'admin', N'ML03', 350000.0000, N'hinh\68829_1562042051_img_0958.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks34', N' Lu Tan Inn', N'0388583731', N'royjade66@gmail.com', N'2/6 Trần Hưng Đạo, Phường 3, Thành phố Đà Lạt, Lâm Đồng', N'3 Sao', N'Nằm trong bán kính 1,2 km từ Vườn Hoa Đà Lạt, Van Minh Hotel tọa lạc tại thành phố Đà Lạt, cách Thiền viện Trúc Lâm 5 km và cách Hồ Tuyền Lâm 6 km. Từ núi Lang Bi-ang đến Van Minh Hotel khoảng 7km, Sở Thú ZooDoo Đà Lạt cách đó 24 km. Từ khách sạn đến sân bay Liên Khương chỉ 23 km với 40 phút di chuyển nhanh chóng.', N'DaLat', N'admin', N'ML03', 500000.0000, N'hinh\63AE85CC789D4764A0A4_44169359.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks35', N'V-studio Apartment 3', N'0388583731', N'rosyjda66@gmail.com', N'Số 16 Ngõ 1, Phố Đồng Me, Phường Mễ Trì, Quận Nam Từ Liêm, Hà Nội', N'3 sao', N'Khách sạn tọa lạc tại một vị trí lý tưởng trong khu Trung Hòa Nhân Chính , quận Cầu Giấy , bên con đường Trần Duy Hưng thênh thang. Thuận tiện đến thăm những công trình lớn của Thủ đô như sân vận động Quốc gia Mỹ Đình cách 3.6 km, Trung tâm Hội nghị Quốc gia 1.4 km, bảo tàng Dân tộc học 3.1 km, cách Hồ Gươm và phố cổ 5km với 15 phút di chuyển cùng những địa điểm nên ghé thăm ở Hà Nội khác.', N'HaNoi', N'admin', N'ML02', 1500000.0000, N'hinh\3.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks36', N'Hanoi Airport Hostel', N'0388583731', N'rosydja66@gmail.com', N'8 Võ Nguyên Giáp , Thái Phù , Nội Bài , Huyện Sóc Sơn , Thành phố Hà Nội.', N'3 sao', N'Khách sạn tọa lạc tại một vị trí lý tưởng trong khu Trung Hòa Nhân Chính , quận Cầu Giấy , bên con đường Trần Duy Hưng thênh thang. Thuận tiện đến thăm những công trình lớn của Thủ đô như sân vận động Quốc gia Mỹ Đình cách 3.6 km, Trung tâm Hội nghị Quốc gia 1.4 km, bảo tàng Dân tộc học 3.1 km, cách Hồ Gươm và phố cổ 5km với 15 phút di chuyển cùng những địa điểm nên ghé thăm ở Hà Nội khác.', N'HaNoi', N'admin', N'ML02', 1500000.0000, N'hinh\15.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks37', N'Hanoi Lullaby Hotel ', N'0388583731', N'hroyjda66@gmail.com', N'16 Ngõ Trạm, Hàng Bông, Hoàn Kiếm, Hà Nội', N'3 sao', N'Khách sạn tọa lạc tại một vị trí lý tưởng trong khu Trung Hòa Nhân Chính , quận Cầu Giấy , bên con đường Trần Duy Hưng thênh thang. Thuận tiện đến thăm những công trình lớn của Thủ đô như sân vận động Quốc gia Mỹ Đình cách 3.6 km, Trung tâm Hội nghị Quốc gia 1.4 km, bảo tàng Dân tộc học 3.1 km, cách Hồ Gươm và phố cổ 5km với 15 phút di chuyển cùng những địa điểm nên ghé thăm ở Hà Nội khác.', N'HaNoi', N'admin', N'ML02', 1500000.0000, N'hinh\16.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks38', N' JOLIE HOUSE', N'0388583731', N'royja66@gmail.com', N'27/2 Phù Đổng Thiên Vương, Phường 8, Thành phố Đà Lạt, Lâm Đồng, Việt Nam', N'4 Sao', N'Nằm trong bán kính 1,2 km từ Vườn Hoa Đà Lạt, Van Minh Hotel tọa lạc tại thành phố Đà Lạt, cách Thiền viện Trúc Lâm 5 km và cách Hồ Tuyền Lâm 6 km. Từ núi Lang Bi-ang đến Van Minh Hotel khoảng 7km, Sở Thú ZooDoo Đà Lạt cách đó 24 km. Từ khách sạn đến sân bay Liên Khương chỉ 23 km với 40 phút di chuyển nhanh chóng.', N'DaLat', N'admin', N'ML04', 4500000.0000, N'hinh\12677_1532597763_cong_chinh.jpeg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks39', N'Lotus House  ', N'0388583731', N'royjjsa66@gmail.com', N'Số 2 Ngõ 245 Lạc Long Quân, Nghĩa Đô, Cầu Giấy, Hà Nội', N'3 sao', N'Khách sạn tọa lạc tại một vị trí lý tưởng trong khu Trung Hòa Nhân Chính , quận Cầu Giấy , bên con đường Trần Duy Hưng thênh thang. Thuận tiện đến thăm những công trình lớn của Thủ đô như sân vận động Quốc gia Mỹ Đình cách 3.6 km, Trung tâm Hội nghị Quốc gia 1.4 km, bảo tàng Dân tộc học 3.1 km, cách Hồ Gươm và phố cổ 5km với 15 phút di chuyển cùng những địa điểm nên ghé thăm ở Hà Nội khác.', N'HaNoi', N'admin', N'ML02', 1500000.0000, N'hinh\17.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks4', N'Thanh Ha Guesthouse ', N'0388583731', N'royja66fg@gmail.com', N'241/39 Phạm Ngũ Lão, Phường Phạm Ngũ Lão, Quận 1, TP Hồ Chí Minh', N'3 sao', N'Tọa lạc tại quận 1, Thanh Ha Guesthouse cách trung tâm thành phố Hồ Chí Minh chưa tới 1km. Từ khách sạn, du khách chỉ cần đi bộ 5 phút để tới trung tâm thương mại Zen Plaza. Trong vòng bán kính 1,5km tính từ khách sạn là nhiều khu mua sắm lớn như chợ Bến Thành, Saigon Square, Parkson, Vincom… Những địa điểm du lịch nổi tiếng của thành phố như Dinh Độc Lập, Nhà thờ Đức Bà, Bưu điện trung tâm Sài Gòn, Nhà hát thành phố… cũng chỉ cách khách sạn từ 5 – 10 phút đi xe.Khách sạn cách sân bay Tân Sơn Nhất 6,5km, cách ga Sài Gòn 2km nên dù di chuyển bằng phương tiện gì, du khách cũng tiết kiệm được rất nhiều thời gian.', N'TPHCM', N'admin', N'ML03', 600000.0000, N'hinh\8.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks40', N'Capsule Hanoi Hostel', N'0388583731', N'royjhfa66@gmail.com', N'160 Ngọc Hà, Ba Đình, Hà Nội', N'3 sao', N'Khách sạn tọa lạc tại một vị trí lý tưởng trong khu Trung Hòa Nhân Chính , quận Cầu Giấy , bên con đường Trần Duy Hưng thênh thang. Thuận tiện đến thăm những công trình lớn của Thủ đô như sân vận động Quốc gia Mỹ Đình cách 3.6 km, Trung tâm Hội nghị Quốc gia 1.4 km, bảo tàng Dân tộc học 3.1 km, cách Hồ Gươm và phố cổ 5km với 15 phút di chuyển cùng những địa điểm nên ghé thăm ở Hà Nội khác.', N'HaNoi', N'admin', N'ML03', 1500000.0000, N'hinh\18.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks41', N'Nhà nghỉ Vân Sơn ', N'0388583731', N'royja6fd6@gmail.com', N'Sao xa, Bến đò thôn Yên Vỹ, Huyện Mỹ Đức, Hà Nội', N'3 sao', N'Khách sạn tọa lạc tại một vị trí lý tưởng trong khu Trung Hòa Nhân Chính , quận Cầu Giấy , bên con đường Trần Duy Hưng thênh thang. Thuận tiện đến thăm những công trình lớn của Thủ đô như sân vận động Quốc gia Mỹ Đình cách 3.6 km, Trung tâm Hội nghị Quốc gia 1.4 km, bảo tàng Dân tộc học 3.1 km, cách Hồ Gươm và phố cổ 5km với 15 phút di chuyển cùng những địa điểm nên ghé thăm ở Hà Nội khác.', N'HaNoi', N'admin', N'ML03', 1500000.0000, N'hinh\477D44649D4D4A20B2C1_60256581.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks42', N'Tân Villa 2 ', N'0388583731', N'royja6d6@gmail.com', N'26A Đường Ba Tháng Tư , Phường 3, Đà Lạt', N'4 Sao', N'Nằm trong bán kính 1,2 km từ Vườn Hoa Đà Lạt, Van Minh Hotel tọa lạc tại thành phố Đà Lạt, cách Thiền viện Trúc Lâm 5 km và cách Hồ Tuyền Lâm 6 km. Từ núi Lang Bi-ang đến Van Minh Hotel khoảng 7km, Sở Thú ZooDoo Đà Lạt cách đó 24 km. Từ khách sạn đến sân bay Liên Khương chỉ 23 km với 40 phút di chuyển nhanh chóng.', N'DaLat', N'admin', N'ML04', 4000000.0000, N'hinh\69601_1565062735_dii02421.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks43', N'Hanoi Pho Hostel ', N'0388583731', N'royja6df6@gmail.com', N'46 Nguyễn Văn Tố, Quận Hoàn Kiếm, Hà Nội', N'3 sao', N'Khách sạn tọa lạc tại một vị trí lý tưởng trong khu Trung Hòa Nhân Chính , quận Cầu Giấy , bên con đường Trần Duy Hưng thênh thang. Thuận tiện đến thăm những công trình lớn của Thủ đô như sân vận động Quốc gia Mỹ Đình cách 3.6 km, Trung tâm Hội nghị Quốc gia 1.4 km, bảo tàng Dân tộc học 3.1 km, cách Hồ Gươm và phố cổ 5km với 15 phút di chuyển cùng những địa điểm nên ghé thăm ở Hà Nội khác.', N'HaNoi', N'admin', N'ML03', 1500000.0000, N'hinh\7477_1488766388_84601671.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks44', N'SAM Tuyền Lâm Resort', N'0388583731', N'royja6f6@gmail.com', N'Phân Khu chức năng 7 & 8, Khu du lịch Hồ Tuyền Lâm, Phường 3, Thành phố Đà Lạt, Lâm Đồng', N'5 Sao', N'Nằm trong bán kính 1,2 km từ Vườn Hoa Đà Lạt, Van Minh Hotel tọa lạc tại thành phố Đà Lạt, cách Thiền viện Trúc Lâm 5 km và cách Hồ Tuyền Lâm 6 km. Từ núi Lang Bi-ang đến Van Minh Hotel khoảng 7km, Sở Thú ZooDoo Đà Lạt cách đó 24 km. Từ khách sạn đến sân bay Liên Khương chỉ 23 km với 40 phút di chuyển nhanh chóng.', N'DaLat', N'admin', N'ML05', 6000000.0000, N'hinh\9964_1546852745_dji_0344.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks45', N'Lâm Phượng Các ', N'0388583731', N'royjafd66@gmail.com', N'2 Nguyễn Thị Thử (Trịnh Hoài Đức), phường 11, Thành phố Đà Lạt, Lâm Đồng', N'5 Sao', N'Nằm trong bán kính 1,2 km từ Vườn Hoa Đà Lạt, Van Minh Hotel tọa lạc tại thành phố Đà Lạt, cách Thiền viện Trúc Lâm 5 km và cách Hồ Tuyền Lâm 6 km. Từ núi Lang Bi-ang đến Van Minh Hotel khoảng 7km, Sở Thú ZooDoo Đà Lạt cách đó 24 km. Từ khách sạn đến sân bay Liên Khương chỉ 23 km với 40 phút di chuyển nhanh chóng.', N'DaLat', N'admin', N'ML05', 5500000.0000, N'hinh\45491_1538553088_bungalow-view-2.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks46', N'Citi Home ', N'0388583731', N'royja667@gmail.com', N'95b Hoà Hưng, Phường 12, Quận 10, TP Hồ Chí Minh', N'3 sao', N'Tọa lạc tại quận 1, Citi Home cách trung tâm thành phố Hồ Chí Minh chưa tới 1km. Từ khách sạn, du khách chỉ cần đi bộ 5 phút để tới trung tâm thương mại Zen Plaza. Trong vòng bán kính 1,5km tính từ khách sạn là nhiều khu mua sắm lớn như chợ Bến Thành, Saigon Square, Parkson, Vincom… Những địa điểm du lịch nổi tiếng của thành phố như Dinh Độc Lập, Nhà thờ Đức Bà, Bưu điện trung tâm Sài Gòn, Nhà hát thành phố… cũng chỉ cách khách sạn từ 5 – 10 phút đi xe.Khách sạn cách sân bay Tân Sơn Nhất 6,5km, cách ga Sài Gòn 2km nên dù di chuyển bằng phương tiện gì, du khách cũng tiết kiệm được rất nhiều thời gian.', N'TPHCM', N'admin', N'ML03', 2500000.0000, N'hinh\9.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks47', N'ZO Villas ', N'0388583731', N'royja66@gmail.com', N'43 Đặng Thai Mai, Quảng An, Tây Hồ, Hà Nội', N'3 sao', N'Khách sạn tọa lạc tại một vị trí lý tưởng trong khu Trung Hòa Nhân Chính , quận Cầu Giấy , bên con đường Trần Duy Hưng thênh thang. Thuận tiện đến thăm những công trình lớn của Thủ đô như sân vận động Quốc gia Mỹ Đình cách 3.6 km, Trung tâm Hội nghị Quốc gia 1.4 km, bảo tàng Dân tộc học 3.1 km, cách Hồ Gươm và phố cổ 5km với 15 phút di chuyển cùng những địa điểm nên ghé thăm ở Hà Nội khác.', N'HaNoi', N'admin', N'ML04', 1500000.0000, N'hinh\1544000586_1.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks48', N'Thao Dien Van Loc ', N'0388583731', N'royja766@gmail.com', N'Xã Cổ Đông, Sơn Tây, Hà Nội', N'3 sao', N'Khách sạn tọa lạc tại một vị trí lý tưởng trong khu Trung Hòa Nhân Chính , quận Cầu Giấy , bên con đường Trần Duy Hưng thênh thang. Thuận tiện đến thăm những công trình lớn của Thủ đô như sân vận động Quốc gia Mỹ Đình cách 3.6 km, Trung tâm Hội nghị Quốc gia 1.4 km, bảo tàng Dân tộc học 3.1 km, cách Hồ Gươm và phố cổ 5km với 15 phút di chuyển cùng những địa điểm nên ghé thăm ở Hà Nội khác.', N'HaNoi', N'admin', N'ML05', 1500000.0000, N'hinh\70513_1567738610_vntrip2.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks49', N'Asean Resort & Spa', N'0388583731', N'royja676@gmail.com', N'21A Hòa Lạc, Huyện Thạch Thất, Hà Nội', N'3 sao', N'Khách sạn tọa lạc tại một vị trí lý tưởng trong khu Trung Hòa Nhân Chính , quận Cầu Giấy , bên con đường Trần Duy Hưng thênh thang. Thuận tiện đến thăm những công trình lớn của Thủ đô như sân vận động Quốc gia Mỹ Đình cách 3.6 km, Trung tâm Hội nghị Quốc gia 1.4 km, bảo tàng Dân tộc học 3.1 km, cách Hồ Gươm và phố cổ 5km với 15 phút di chuyển cùng những địa điểm nên ghé thăm ở Hà Nội khác.', N'HaNoi', N'admin', N'ML05', 1500000.0000, N'hinh\54AFBB68B5C847539A55_20083713.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks5', N'Saigon Night Hotel', N'0388583731', N'royja686@gmail.com', N'7 Nguyễn Trãi, Phường Bến Thành, Quận 1, TP Hồ Chí Minh', N'3 sao', N'Tọa lạc tại quận 1, Saigon Night Hotel cách trung tâm thành phố Hồ Chí Minh chưa tới 1km. Từ khách sạn, du khách chỉ cần đi bộ 5 phút để tới trung tâm thương mại Zen Plaza. Trong vòng bán kính 1,5km tính từ khách sạn là nhiều khu mua sắm lớn như chợ Bến Thành, Saigon Square, Parkson, Vincom… Những địa điểm du lịch nổi tiếng của thành phố như Dinh Độc Lập, Nhà thờ Đức Bà, Bưu điện trung tâm Sài Gòn, Nhà hát thành phố… cũng chỉ cách khách sạn từ 5 – 10 phút đi xe.Khách sạn cách sân bay Tân Sơn Nhất 6,5km, cách ga Sài Gòn 2km nên dù di chuyển bằng phương tiện gì, du khách cũng tiết kiệm được rất nhiều thời gian.', N'TPHCM', N'admin', N'ML01', 1500000.0000, N'hinh\19.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks50', N' Monet Garden Resort', N'0388583731', N'royja866@gmail.com', N'3 Nguyễn Du, Phường 9, Thành phố Đà Lạt, Lâm Đồng', N'4 Sao', N'Nằm trong bán kính 1,2 km từ Vườn Hoa Đà Lạt, Van Minh Hotel tọa lạc tại thành phố Đà Lạt, cách Thiền viện Trúc Lâm 5 km và cách Hồ Tuyền Lâm 6 km. Từ núi Lang Bi-ang đến Van Minh Hotel khoảng 7km, Sở Thú ZooDoo Đà Lạt cách đó 24 km. Từ khách sạn đến sân bay Liên Khương chỉ 23 km với 40 phút di chuyển nhanh chóng.', N'DaLat', N'admin', N'ML05', 4500000.0000, N'hinh\6CC2F38F66144732BFFA_11096829.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks55', N'Khách sạn Bảo Anh ', N'0388583731', N'royja696@gmail.com', N'20 Đỗ Bá, Mỹ An, quận Ngũ Hành Sơn, Đà Nẵng', N'3 sao', N'Tọa lạc tại vị trí hấp dẫn nhất tại thành phố Đà Nẵng, khách sạn cách trung tâm 2.7 km, cách Sân bay Quốc tế - Ga Đà Nẵng, trong bán kính 5 km với 15 phút di chuyển và đặc biệt nằm gần sát bãi tắm biển Mỹ Khê xinh đẹp thơ mộng, thuận lợi di chuyển đến các điểm tham quan du lịch một cách nhanh chóng như cầu khóa tình yêu cách 1.5km, cầu Rồng 1.9km, sân vận động Chi Lăng 3km, Asia Park 3.1km, Ngũ Hành Sơn 6.9km.', N'DaNang', N'admin', N'ML01', 1500000.0000, N'hinh\9606_1533703877_nepn9719_hdr_(copy).jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks56', N'Star Hotel Danang ', N'0388583731', N'royja966@gmail.com', N'42 Loseby, Phường An Hải Bắc, Quận Sơn Trà, Đà Nẵng', N'3 sao', N'Tọa lạc tại vị trí hấp dẫn nhất tại thành phố Đà Nẵng, khách sạn cách trung tâm 2.7 km, cách Sân bay Quốc tế - Ga Đà Nẵng, trong bán kính 5 km với 15 phút di chuyển và đặc biệt nằm gần sát bãi tắm biển Mỹ Khê xinh đẹp thơ mộng, thuận lợi di chuyển đến các điểm tham quan du lịch một cách nhanh chóng như cầu khóa tình yêu cách 1.5km, cầu Rồng 1.9km, sân vận động Chi Lăng 3km, Asia Park 3.1km, Ngũ Hành Sơn 6.9km.', N'DaNang', N'admin', N'ML01', 1500000.0000, N'hinh\920_1515203423_^5e29407a9ed50c2bdbc5d2cb5164a0a42fe686fbd1a3aaceb3^pimgpsh_fullsize_distr.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks57', N'Danang Golden Bay ', N'0388583731', N'royja166@gmail.com', N'01 Lê Văn Duyệt, Quận Sơn Trà, Đà Nẵng', N'3 sao', N'Tọa lạc tại vị trí hấp dẫn nhất tại thành phố Đà Nẵng, khách sạn cách trung tâm 2.7 km, cách Sân bay Quốc tế - Ga Đà Nẵng, trong bán kính 5 km với 15 phút di chuyển và đặc biệt nằm gần sát bãi tắm biển Mỹ Khê xinh đẹp thơ mộng, thuận lợi di chuyển đến các điểm tham quan du lịch một cách nhanh chóng như cầu khóa tình yêu cách 1.5km, cầu Rồng 1.9km, sân vận động Chi Lăng 3km, Asia Park 3.1km, Ngũ Hành Sơn 6.9km.', N'DaNang', N'admin', N'ML01', 1500000.0000, N'hinh\11661_1534911325_vunp7997_hdr.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks58', N'Motel Thanh Nhan ', N'0388583731', N'royja616@gmail.com', N'227/5 Nguyễn Văn Thoại, Phước Mỹ, Quận Sơn Trà, Đà Nẵng', N'3 sao', N'Tọa lạc tại vị trí hấp dẫn nhất tại thành phố Đà Nẵng, khách sạn cách trung tâm 2.7 km, cách Sân bay Quốc tế - Ga Đà Nẵng, trong bán kính 5 km với 15 phút di chuyển và đặc biệt nằm gần sát bãi tắm biển Mỹ Khê xinh đẹp thơ mộng, thuận lợi di chuyển đến các điểm tham quan du lịch một cách nhanh chóng như cầu khóa tình yêu cách 1.5km, cầu Rồng 1.9km, sân vận động Chi Lăng 3km, Asia Park 3.1km, Ngũ Hành Sơn 6.9km.', N'DaNang', N'admin', N'ML03', 1500000.0000, N'hinh\0ABE30A4FDD044CF9671_58350744.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks59', N' The Vietnam Hostel', N'0388583731', N'royja626@gmail.com', N'22-24-26 Hùng Vương, Hải Châu 1, Hải Châu, Đà Nẵng ', N'3 sao', N'Tọa lạc tại vị trí hấp dẫn nhất tại thành phố Đà Nẵng, khách sạn cách trung tâm 2.7 km, cách Sân bay Quốc tế - Ga Đà Nẵng, trong bán kính 5 km với 15 phút di chuyển và đặc biệt nằm gần sát bãi tắm biển Mỹ Khê xinh đẹp thơ mộng, thuận lợi di chuyển đến các điểm tham quan du lịch một cách nhanh chóng như cầu khóa tình yêu cách 1.5km, cầu Rồng 1.9km, sân vận động Chi Lăng 3km, Asia Park 3.1km, Ngũ Hành Sơn 6.9km.', N'DaNang', N'admin', N'ML03', 1500000.0000, N'hinh\65253_1557992626_279a1086.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks6', N'Resort Mia Nha Trang', N'0388583731', N'royja266@gmail.com', N'Biển Bãi Dông, Cam Hải Đông, Thành Phố Nha Trang, Khánh Hòa', N'3 sao', N'Đến với Nha Trang, nếu muốn nhìn ngắm và tận hưởng cảnh đẹp kỳ bí mà thiên nhiên đã ưu ái ban tặng cho nơi đây thì Khách sạn Euro Star chính là một lựa chọn lý tưởng. Toạ lạc tại khu vực bãi biển trên đường Trần Phú, du khách chỉ mất vài phút để đi ra bãi biển.Ngoài ra, khách sạn cũng có hồ bơi ngoài trời tầm nhìn ra biển. Với lợi thế về vị trí, khách sạn giúp du khách dễ dàng tiếp cận các địa điểm du lịch nổi tiếng tại thành phố biển Nha Trang xinh đẹp.', N'NhaTrang', N'admin', N'ML01', 1500000.0000, N'hinh\E5579B7792804110803D_9254434.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks61', N'Tango Hostel  ', N'0388583731', N'royja366@gmail.com', N'99 Cao Bá Quát, An Hải Tây, Quận Sơn Trà, Đà Nẵng', N'3 sao', N'Tọa lạc tại vị trí hấp dẫn nhất tại thành phố Đà Nẵng, khách sạn cách trung tâm 2.7 km, cách Sân bay Quốc tế - Ga Đà Nẵng, trong bán kính 5 km với 15 phút di chuyển và đặc biệt nằm gần sát bãi tắm biển Mỹ Khê xinh đẹp thơ mộng, thuận lợi di chuyển đến các điểm tham quan du lịch một cách nhanh chóng như cầu khóa tình yêu cách 1.5km, cầu Rồng 1.9km, sân vận động Chi Lăng 3km, Asia Park 3.1km, Ngũ Hành Sơn 6.9km.', N'DaNang', N'admin', N'ML03', 1500000.0000, N'hinh\10402_1499772014_100558374.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks64', N'KL House  ', N'0388583731', N'royja636@gmail.com', N'75 Thạch Lam, Sơn Trà, Đà Nẵng 550000, Việt Nam', N'3 sao', N'Tọa lạc tại vị trí hấp dẫn nhất tại thành phố Đà Nẵng, khách sạn cách trung tâm 2.7 km, cách Sân bay Quốc tế - Ga Đà Nẵng, trong bán kính 5 km với 15 phút di chuyển và đặc biệt nằm gần sát bãi tắm biển Mỹ Khê xinh đẹp thơ mộng, thuận lợi di chuyển đến các điểm tham quan du lịch một cách nhanh chóng như cầu khóa tình yêu cách 1.5km, cầu Rồng 1.9km, sân vận động Chi Lăng 3km, Asia Park 3.1km, Ngũ Hành Sơn 6.9km.', N'DaNang', N'admin', N'ML03', 1500000.0000, N'hinh\65339_1558714632_188548101.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks7', N'Icon 36 Hotel', N'0388583731', N'royja646@gmail.com', N'33 Bùi Thị Xuân, Phường Bến Thành, Quận 1, TP Hồ Chí Minh', N'3 sao', N'Tọa lạc tại quận 1, Icon 36 Hotel cách trung tâm thành phố Hồ Chí Minh chưa tới 1km. Từ khách sạn, du khách chỉ cần đi bộ 5 phút để tới trung tâm thương mại Zen Plaza. Trong vòng bán kính 1,5km tính từ khách sạn là nhiều khu mua sắm lớn như chợ Bến Thành, Saigon Square, Parkson, Vincom… Những địa điểm du lịch nổi tiếng của thành phố như Dinh Độc Lập, Nhà thờ Đức Bà, Bưu điện trung tâm Sài Gòn, Nhà hát thành phố… cũng chỉ cách khách sạn từ 5 – 10 phút đi xe.Khách sạn cách sân bay Tân Sơn Nhất 6,5km, cách ga Sài Gòn 2km nên dù di chuyển bằng phương tiện gì, du khách cũng tiết kiệm được rất nhiều thời gian.', N'TPHCM', N'admin', N'ML01', 300000.0000, N'hinh\20.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks76', N' Euro Star Hotel', N'0388583731', N'royja466@gmail.com', N'96A/6Trần Phú, Phường Lộc Thọ, Thành Phố Nha Trang, Khánh Hòa', N'3 sao', N'Đến với Nha Trang, nếu muốn nhìn ngắm và tận hưởng cảnh đẹp kỳ bí mà thiên nhiên đã ưu ái ban tặng cho nơi đây thì Khách sạn Euro Star chính là một lựa chọn lý tưởng. Toạ lạc tại khu vực bãi biển trên đường Trần Phú, du khách chỉ mất vài phút để đi ra bãi biển.Ngoài ra, khách sạn cũng có hồ bơi ngoài trời tầm nhìn ra biển. Với lợi thế về vị trí, khách sạn giúp du khách dễ dàng tiếp cận các địa điểm du lịch nổi tiếng tại thành phố biển Nha Trang xinh đẹp.', N'NhaTrang', N'admin', N'ML01', 1500000.0000, N'hinh\7933_1510111350_1270625_16072216040044867516.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks78', N'Khách sạn Ánh Hằng ', N'0388583731', N'royja566@gmail.com', N'Số 5 Phạm Văn Đồng, Phường Vĩnh Phước, Thành Phố Nha Trang, Khánh Hòa', N'3 sao', N'Đến với Nha Trang, nếu muốn nhìn ngắm và tận hưởng cảnh đẹp kỳ bí mà thiên nhiên đã ưu ái ban tặng cho nơi đây thì Khách sạn Euro Star chính là một lựa chọn lý tưởng. Toạ lạc tại khu vực bãi biển trên đường Trần Phú, du khách chỉ mất vài phút để đi ra bãi biển.Ngoài ra, khách sạn cũng có hồ bơi ngoài trời tầm nhìn ra biển. Với lợi thế về vị trí, khách sạn giúp du khách dễ dàng tiếp cận các địa điểm du lịch nổi tiếng tại thành phố biển Nha Trang xinh đẹp.', N'NhaTrang', N'admin', N'ML01', 1500000.0000, N'hinh\5486_1528248462_03.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks79', N'Poseidon Nha Trang ', N'0388583731', N'royja656@gmail.com', N'30 Trần Quang Khải, Phường Lộc Thọ, Thành Phố Nha Trang, Khánh Hòa', N'3 sao', N'Đến với Nha Trang, nếu muốn nhìn ngắm và tận hưởng cảnh đẹp kỳ bí mà thiên nhiên đã ưu ái ban tặng cho nơi đây thì Khách sạn Euro Star chính là một lựa chọn lý tưởng. Toạ lạc tại khu vực bãi biển trên đường Trần Phú, du khách chỉ mất vài phút để đi ra bãi biển.Ngoài ra, khách sạn cũng có hồ bơi ngoài trời tầm nhìn ra biển. Với lợi thế về vị trí, khách sạn giúp du khách dễ dàng tiếp cận các địa điểm du lịch nổi tiếng tại thành phố biển Nha Trang xinh đẹp.', N'NhaTrang', N'admin', N'ML01', 1500000.0000, N'hinh\8332_1545033220_poseidon_lobby_(9)_compressed.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks8', N'Orbit Resort & Spa ', N'0388583731', N'royja76@gmail.com', N'Lô 191-192, An Viên, Vĩnh Trường, Nha Trang, Khánh Hòa', N'3 sao', N'Đến với Nha Trang, nếu muốn nhìn ngắm và tận hưởng cảnh đẹp kỳ bí mà thiên nhiên đã ưu ái ban tặng cho nơi đây thì Khách sạn Euro Star chính là một lựa chọn lý tưởng. Toạ lạc tại khu vực bãi biển trên đường Trần Phú, du khách chỉ mất vài phút để đi ra bãi biển.Ngoài ra, khách sạn cũng có hồ bơi ngoài trời tầm nhìn ra biển. Với lợi thế về vị trí, khách sạn giúp du khách dễ dàng tiếp cận các địa điểm du lịch nổi tiếng tại thành phố biển Nha Trang xinh đẹp.', N'NhaTrang', N'admin', N'ML01', 1500000.0000, N'hinh\72119_1569998151_158858174.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks81', N' New Sun Hotel', N'0388583731', N'royja66r@gmail.com', N'2/3 Hùng Vương, phường Lộc Thọ, Thành phố Nha Trang, Khánh Hòa, Việt Nam', N'3 sao', N'Đến với Nha Trang, nếu muốn nhìn ngắm và tận hưởng cảnh đẹp kỳ bí mà thiên nhiên đã ưu ái ban tặng cho nơi đây thì Khách sạn Euro Star chính là một lựa chọn lý tưởng. Toạ lạc tại khu vực bãi biển trên đường Trần Phú, du khách chỉ mất vài phút để đi ra bãi biển.Ngoài ra, khách sạn cũng có hồ bơi ngoài trời tầm nhìn ra biển. Với lợi thế về vị trí, khách sạn giúp du khách dễ dàng tiếp cận các địa điểm du lịch nổi tiếng tại thành phố biển Nha Trang xinh đẹp.', N'NhaTrang', N'admin', N'ML01', 1500000.0000, N'hinh\7499_1537410287_41934103_2047040192274202_4045479693816692736_n.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks85', N' Anita Apartment ', N'0388583731', N'royja6r66@gmail.com', N'Phạm Văn Đồng, Tp. Nha Trang, Khánh Hòa, Việt Nam', N'3 sao', N'Đến với Nha Trang, nếu muốn nhìn ngắm và tận hưởng cảnh đẹp kỳ bí mà thiên nhiên đã ưu ái ban tặng cho nơi đây thì Khách sạn Euro Star chính là một lựa chọn lý tưởng. Toạ lạc tại khu vực bãi biển trên đường Trần Phú, du khách chỉ mất vài phút để đi ra bãi biển.Ngoài ra, khách sạn cũng có hồ bơi ngoài trời tầm nhìn ra biển. Với lợi thế về vị trí, khách sạn giúp du khách dễ dàng tiếp cận các địa điểm du lịch nổi tiếng tại thành phố biển Nha Trang xinh đẹp.', N'NhaTrang', N'admin', N'ML02', 1500000.0000, N'hinh\52382_1541717861_img_7229_(1).jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks9', N'Travel Home Central ', N'0388583731', N'royja669e@gmail.com', N'36/20 Lê Thị Riêng, Phường Bến Thành, Quận 1, TP Hồ Chí Minh', N'3 sao', N'Tọa lạc tại quận 1, Travel Home Central cách trung tâm thành phố Hồ Chí Minh chưa tới 1km. Từ khách sạn, du khách chỉ cần đi bộ 5 phút để tới trung tâm thương mại Zen Plaza. Trong vòng bán kính 1,5km tính từ khách sạn là nhiều khu mua sắm lớn như chợ Bến Thành, Saigon Square, Parkson, Vincom… Những địa điểm du lịch nổi tiếng của thành phố như Dinh Độc Lập, Nhà thờ Đức Bà, Bưu điện trung tâm Sài Gòn, Nhà hát thành phố… cũng chỉ cách khách sạn từ 5 – 10 phút đi xe.Khách sạn cách sân bay Tân Sơn Nhất 6,5km, cách ga Sài Gòn 2km nên dù di chuyển bằng phương tiện gì, du khách cũng tiết kiệm được rất nhiều thời gian.', N'TPHCM', N'admin', N'ML03', 1200000.0000, N'hinh\21.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks90', N'Christina Nha Trang ', N'0388583731', N'royjdsda66@gmail.com', N'64B/17 Trần Phú, Thành phố Nha Trang, Khánh Hòa', N'3 sao', N'Đến với Nha Trang, nếu muốn nhìn ngắm và tận hưởng cảnh đẹp kỳ bí mà thiên nhiên đã ưu ái ban tặng cho nơi đây thì Khách sạn Euro Star chính là một lựa chọn lý tưởng. Toạ lạc tại khu vực bãi biển trên đường Trần Phú, du khách chỉ mất vài phút để đi ra bãi biển.Ngoài ra, khách sạn cũng có hồ bơi ngoài trời tầm nhìn ra biển. Với lợi thế về vị trí, khách sạn giúp du khách dễ dàng tiếp cận các địa điểm du lịch nổi tiếng tại thành phố biển Nha Trang xinh đẹp.', N'NhaTrang', N'admin', N'ML03', 1500000.0000, N'hinh\10609_1500006854_104813283.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks91', N'Diva Guesthouse  ', N'0388583731', N'royja6ds46@gmail.com', N'24/12A Hùng Vương, Thành Phố Nha Trang, Khánh Hòa', N'3 sao', N'Đến với Nha Trang, nếu muốn nhìn ngắm và tận hưởng cảnh đẹp kỳ bí mà thiên nhiên đã ưu ái ban tặng cho nơi đây thì Khách sạn Euro Star chính là một lựa chọn lý tưởng. Toạ lạc tại khu vực bãi biển trên đường Trần Phú, du khách chỉ mất vài phút để đi ra bãi biển.Ngoài ra, khách sạn cũng có hồ bơi ngoài trời tầm nhìn ra biển. Với lợi thế về vị trí, khách sạn giúp du khách dễ dàng tiếp cận các địa điểm du lịch nổi tiếng tại thành phố biển Nha Trang xinh đẹp.', N'NhaTrang', N'admin', N'ML03', 1500000.0000, N'hinh\3075_1461051311286_7.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks92', N'Vector Hostel  ', N'0388583731', N'royja6436@gmail.com', N'48 Nguyễn Thị Minh Khai, Phước Hòa, Thành phố Nha Trang, Khánh Hòa, Việt Nam', N'3 sao', N'Đến với Nha Trang, nếu muốn nhìn ngắm và tận hưởng cảnh đẹp kỳ bí mà thiên nhiên đã ưu ái ban tặng cho nơi đây thì Khách sạn Euro Star chính là một lựa chọn lý tưởng. Toạ lạc tại khu vực bãi biển trên đường Trần Phú, du khách chỉ mất vài phút để đi ra bãi biển.Ngoài ra, khách sạn cũng có hồ bơi ngoài trời tầm nhìn ra biển. Với lợi thế về vị trí, khách sạn giúp du khách dễ dàng tiếp cận các địa điểm du lịch nổi tiếng tại thành phố biển Nha Trang xinh đẹp.', N'NhaTrang', N'admin', N'ML03', 1500000.0000, N'hinh\9640_1498467383_97885216.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks93', N'Vitamin Sea Hostel  ', N'0388583731', N'royja4366@gmail.com', N'39c Yết Kiêu, Thành phố Nha Trang, Khánh Hòa 650000, Việt Nam', N'3 sao', N'Đến với Nha Trang, nếu muốn nhìn ngắm và tận hưởng cảnh đẹp kỳ bí mà thiên nhiên đã ưu ái ban tặng cho nơi đây thì Khách sạn Euro Star chính là một lựa chọn lý tưởng. Toạ lạc tại khu vực bãi biển trên đường Trần Phú, du khách chỉ mất vài phút để đi ra bãi biển.Ngoài ra, khách sạn cũng có hồ bơi ngoài trời tầm nhìn ra biển. Với lợi thế về vị trí, khách sạn giúp du khách dễ dàng tiếp cận các địa điểm du lịch nổi tiếng tại thành phố biển Nha Trang xinh đẹp.', N'NhaTrang', N'admin', N'ML03', 1500000.0000, N'hinh\11489_1515149314_114149191.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks94', N'Kokoro Home ', N'0388583731', N'roygja6r6@gmail.com', N'04 Đặng Tất, Vĩnh Hải, Nha Trang, Khánh Hòa', N'3 sao', N'Đến với Nha Trang, nếu muốn nhìn ngắm và tận hưởng cảnh đẹp kỳ bí mà thiên nhiên đã ưu ái ban tặng cho nơi đây thì Khách sạn Euro Star chính là một lựa chọn lý tưởng. Toạ lạc tại khu vực bãi biển trên đường Trần Phú, du khách chỉ mất vài phút để đi ra bãi biển.Ngoài ra, khách sạn cũng có hồ bơi ngoài trời tầm nhìn ra biển. Với lợi thế về vị trí, khách sạn giúp du khách dễ dàng tiếp cận các địa điểm du lịch nổi tiếng tại thành phố biển Nha Trang xinh đẹp.', N'NhaTrang', N'admin', N'ML03', 1500000.0000, N'hinh\72358_1571211284_111822803.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks95', N' S:House', N'0388583731', N'royjda6r6@gmail.com', N'2 Lê Hồng Phong, Phước Hải, Thành phố Nha Trang, Khánh Hòa 650000, Việt Nam', N'3 sao', N'Đến với Nha Trang, nếu muốn nhìn ngắm và tận hưởng cảnh đẹp kỳ bí mà thiên nhiên đã ưu ái ban tặng cho nơi đây thì Khách sạn Euro Star chính là một lựa chọn lý tưởng. Toạ lạc tại khu vực bãi biển trên đường Trần Phú, du khách chỉ mất vài phút để đi ra bãi biển.Ngoài ra, khách sạn cũng có hồ bơi ngoài trời tầm nhìn ra biển. Với lợi thế về vị trí, khách sạn giúp du khách dễ dàng tiếp cận các địa điểm du lịch nổi tiếng tại thành phố biển Nha Trang xinh đẹp.', N'NhaTrang', N'admin', N'ML03', 1500000.0000, N'hinh\11369_1528169733_117654033.jpg')
INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [SDT], [Email], [DiaChi], [DanhGia], [GhiChu], [MaKV], [TenDN_QL], [MaLoai], [GiaThapNhat], [HinhAnhKS]) VALUES (N'ks97', N'La Paloma Villa  ', N'0388583731', N'royjda6h6@gmail.com', N'1 Hòn Chồng, Phường Vĩnh Phước, Thành phố Nha Trang, Khánh Hòa', N'3 sao', N'Đến với Nha Trang, nếu muốn nhìn ngắm và tận hưởng cảnh đẹp kỳ bí mà thiên nhiên đã ưu ái ban tặng cho nơi đây thì Khách sạn Euro Star chính là một lựa chọn lý tưởng. Toạ lạc tại khu vực bãi biển trên đường Trần Phú, du khách chỉ mất vài phút để đi ra bãi biển.Ngoài ra, khách sạn cũng có hồ bơi ngoài trời tầm nhìn ra biển. Với lợi thế về vị trí, khách sạn giúp du khách dễ dàng tiếp cận các địa điểm du lịch nổi tiếng tại thành phố biển Nha Trang xinh đẹp.', N'NhaTrang', N'admin', N'ML01', 1500000.0000, N'hinh\E7A4B37C56CB4C4DBAEA_31554386.jpg')
GO
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'AnGiang', N'An Giang')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'BacNinh', N'Bắc Ninh')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'BenTre', N'Bến Tre')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'BinhDinh', N'Bình Định')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'CanTho', N'Cần Thơ')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'DaLat', N'Đà Lạt')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'DaNang', N'Đà Nẵng')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'DienBien', N'Điện Biên')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'DongNai', N'Đồng Nai')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'GiaLai', N'Gia Lai')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'HaLong', N'Hạ Long')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'HaNoi', N'Hà Nội')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'HoaBinh', N'Hòa Bình')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'HoiAn', N'Hội An')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'Hue', N'Huế')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'KhanhHoa', N'Khánh Hòa')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'LamDong', N'Lâm Đồng')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'LangSon', N'Lạng Sơn')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'NgheAn', N'Nghệ An')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'NhaTrang', N'Nha Trang')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'NinhBinh', N'Ninh Bình ')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'NinhThuan', N'Ninh Thuận')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'PhuYen', N'Phú Yên')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'QuangBinh', N'Quảng Binh')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'QuangTri', N'Quảng Trị')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'SaPa', N'Sa Pa')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'SonLa', N'Sơn La')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'ThaiNguyen', N'Thái Nguyên')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'ThanhHoa', N'Thanh Hóa')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'TienGiang', N'Tiền Giang')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'TPHCM', N'Thành Phố Hồ Chí Minh')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'Vinh', N'Vinh')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'VungTau', N'Vũng Tàu')
INSERT [dbo].[LoaiChoO] ([MaLoaiChoO], [TenLoai]) VALUES (N'ML01', N'Khách Sạn')
INSERT [dbo].[LoaiChoO] ([MaLoaiChoO], [TenLoai]) VALUES (N'ML02', N'Home Stay')
INSERT [dbo].[LoaiChoO] ([MaLoaiChoO], [TenLoai]) VALUES (N'ML03', N'Nhà Trọ')
INSERT [dbo].[LoaiChoO] ([MaLoaiChoO], [TenLoai]) VALUES (N'ML04', N'Biệt Thự')
INSERT [dbo].[LoaiChoO] ([MaLoaiChoO], [TenLoai]) VALUES (N'ML05', N'Resort')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'01', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks1')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'02', N'P02', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks1')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'03', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks1')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'04', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks1')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'05', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks1')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'06', N'P06', N'Đã Đặt', 2, 1000000.0000, N'Phòng đôi', N'ks1')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'07', N'P07', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks1')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'08', N'P08', N'Đã Đặt', 2, 500000.0000, N'Phòng đôi', N'ks1')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'09', N'P09', N'Trống', 1, 1000000.0000, N'Phòng đơn', N'ks1')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'10', N'P10', N'Trống', 2, 400000.0000, N'Phòng đôi', N'ks1')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'101', N'101', N'Trống', 2, 500000.0000, N'Phòng đôi', N'ks1')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'102', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks11')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'103', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks11')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'104', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks11')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'105', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks11')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'106', N'P06', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks11')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'107', N'P07', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks11')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'108', N'P08', N'Đã Đặt', 2, 500000.0000, N'Phòng đôi', N'ks11')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'109', N'P09', N'Trống', 1, 1000000.0000, N'Phòng đơn', N'ks11')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'11', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks2')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'110', N'P10', N'Trống', 2, 400000.0000, N'Phòng đôi', N'ks11')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'12', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks2')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'126', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks14')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'127', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks14')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'128', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks14')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'129', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks14')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'13', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks2')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'130', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks14')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'131', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks15')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'132', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks15')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'133', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks15')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'134', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks15')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'135', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks15')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'136', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks16')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'137', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks16')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'138', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks16')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'139', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks16')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'14', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks2')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'140', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks16')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'141', N'P01', N'Đã Đặt', 1, 400000.0000, N'Phòng đơn', N'ks17')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'142', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks17')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'143', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks17')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'144', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks17')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'145', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks17')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'146', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks18')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'147', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks18')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'148', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks18')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'149', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks18')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'15', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks2')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'150', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks18')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'151', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks19')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'152', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks19')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'153', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks19')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'154', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks19')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'155', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks19')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'156', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks20')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'157', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks20')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'158', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks20')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'159', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks20')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'16', N'P06', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks2')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'160', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks20')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'161', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks21')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'162', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks21')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'163', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks21')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'164', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks21')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'165', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks21')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'166', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks22')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'167', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks22')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'168', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks22')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'169', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks22')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'17', N'P07', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks2')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'170', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks22')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'171', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks23')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'172', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks23')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'173', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks23')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'174', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks23')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'175', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks23')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'176', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks24')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'177', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks24')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'178', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks24')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'179', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks24')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'18', N'P08', N'Đã Đặt', 2, 500000.0000, N'Phòng đôi', N'ks2')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'180', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks24')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'181', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks25')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'182', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks25')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'183', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks25')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'184', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks25')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'185', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks25')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'186', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks26')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'187', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks26')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'188', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks26')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'189', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks26')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'19', N'P09', N'Trống', 1, 1000000.0000, N'Phòng đơn', N'ks2')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'190', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks26')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'191', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks27')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'192', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks27')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'193', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks27')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'194', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks27')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'195', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks27')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'196', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks28')
GO
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'197', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks28')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'198', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks28')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'199', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks28')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'20', N'P10', N'Trống', 2, 400000.0000, N'Phòng đôi', N'ks2')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'200', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks28')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'201', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks29')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'202', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks29')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'203', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks29')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'204', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks29')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'205', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks29')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'206', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks30')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'207', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks30')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'208', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks30')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'209', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks30')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'21', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks3')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'22', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks3')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'23', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks3')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'230', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks30')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'231', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks31')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'232', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks31')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'233', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks31')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'234', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks31')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'235', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks31')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'236', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks32')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'237', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks32')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'238', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks32')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'239', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks32')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'24', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks3')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'240', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks32')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'241', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks33')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'242', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks33')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'243', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks33')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'244', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks33')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'245', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks33')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'246', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks34')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'247', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks34')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'248', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks34')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'25', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks3')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'250', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks34')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'251', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks35')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'252', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks35')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'253', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks35')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'254', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks35')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'255', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks35')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'256', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks36')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'257', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks36')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'258', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks36')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'259', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks36')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'26', N'P06', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks3')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'260', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks36')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'261', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks37')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'262', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks37')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'263', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks37')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'264', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks37')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'265', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks37')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'266', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks38')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'267', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks38')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'268', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks38')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'269', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks38')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'27', N'P07', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks3')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'270', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks38')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'271', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks39')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'272', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks39')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'273', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks39')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'274', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks39')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'275', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks39')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'276', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks40')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'277', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks40')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'278', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks40')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'279', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks40')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'28', N'P08', N'Đã Đặt', 2, 500000.0000, N'Phòng đôi', N'ks3')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'280', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks40')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'281', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks41')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'282', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks41')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'283', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks41')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'284', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks41')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'285', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks41')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'286', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks42')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'287', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks42')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'288', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks42')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'289', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks42')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'29', N'P09', N'Trống', 1, 1000000.0000, N'Phòng đơn', N'ks3')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'290', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks42')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'291', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks43')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'292', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks43')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'293', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks43')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'294', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks43')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'295', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks44')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'296', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks44')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'297', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks44')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'298', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks44')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'299', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks44')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'30', N'P10', N'Trống', 2, 400000.0000, N'Phòng đôi', N'ks1')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'300', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks45')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'301', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks45')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'302', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks45')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'303', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks45')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'304', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks45')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'305', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks46')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'306', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks46')
GO
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'307', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks46')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'308', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks46')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'309', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks46')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'31', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks4')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'310', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks46')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'311', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks47')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'312', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks47')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'313', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks47')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'314', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks47')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'315', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks47')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'316', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks48')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'317', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks48')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'318', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks48')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'319', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks48')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'32', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks4')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'320', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks48')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'321', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks49')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'322', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks49')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'323', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks49')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'324', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks49')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'325', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks49')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'326', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks50')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'327', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks50')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'328', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks50')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'33', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks50')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'330', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks50')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'34', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks4')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'35', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks4')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'36', N'P06', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks4')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'37', N'P07', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks4')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'38', N'P08', N'Đã Đặt', 2, 500000.0000, N'Phòng đôi', N'ks4')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'39', N'P09', N'Trống', 1, 1000000.0000, N'Phòng đơn', N'ks4')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'40', N'P10', N'Trống', 2, 400000.0000, N'Phòng đôi', N'ks4')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'41', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks5')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'42', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks5')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'43', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks5')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'44', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks5')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'45', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks5')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'46', N'P06', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks5')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'47', N'P07', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks5')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'48', N'P08', N'Đã Đặt', 2, 500000.0000, N'Phòng đôi', N'ks5')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'49', N'P09', N'Trống', 1, 1000000.0000, N'Phòng đơn', N'ks5')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'50', N'P10', N'Trống', 2, 400000.0000, N'Phòng đôi', N'ks5')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'51', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks6')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'52', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks6')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'53', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks6')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'54', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks6')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'55', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks6')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'56', N'P06', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks6')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'57', N'P07', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks6')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'58', N'P08', N'Đã Đặt', 2, 500000.0000, N'Phòng đôi', N'ks6')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'59', N'P09', N'Trống', 1, 1000000.0000, N'Phòng đơn', N'ks6')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'60', N'P10', N'Trống', 2, 400000.0000, N'Phòng đôi', N'ks6')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'61', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks7')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'62', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks7')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'63', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks7')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'64', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks7')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'65', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks7')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'66', N'P06', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks7')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'67', N'P07', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks7')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'68', N'P08', N'Đã Đặt', 2, 500000.0000, N'Phòng đôi', N'ks7')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'69', N'P09', N'Trống', 1, 1000000.0000, N'Phòng đơn', N'ks7')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'70', N'P10', N'Trống', 2, 400000.0000, N'Phòng đôi', N'ks7')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'71', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks8')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'72', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks8')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'73', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks8')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'74', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks8')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'75', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks8')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'76', N'P06', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks8')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'77', N'P07', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks8')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'78', N'P08', N'Đã Đặt', 2, 500000.0000, N'Phòng đôi', N'ks8')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'79', N'P09', N'Trống', 1, 1000000.0000, N'Phòng đơn', N'ks8')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'80', N'P10', N'Trống', 2, 400000.0000, N'Phòng đôi', N'ks8')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'81', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks9')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'82', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks9')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'83', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks9')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'84', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks9')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'85', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks9')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'86', N'P06', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks9')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'87', N'P07', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks9')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'88', N'P08', N'Đã Đặt', 2, 500000.0000, N'Phòng đôi', N'ks9')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'89', N'P09', N'Trống', 1, 1000000.0000, N'Phòng đơn', N'ks9')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'90', N'P10', N'Trống', 2, 400000.0000, N'Phòng đôi', N'ks9')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'91', N'P01', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks10')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'92', N'P02', N'Trống', 1, 500000.0000, N'Phòng đơn', N'ks10')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'93', N'P03', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks10')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'94', N'P04', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks10')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'95', N'P05', N'Đã Đặt', 1, 500000.0000, N'Phòng đơn', N'ks10')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'96', N'P06', N'Trống', 2, 1000000.0000, N'Phòng đôi', N'ks10')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'97', N'P07', N'Trống', 1, 400000.0000, N'Phòng đơn', N'ks10')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'98', N'P08', N'Đã Đặt', 2, 500000.0000, N'Phòng đôi', N'ks10')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TrangThai], [SoGiuong], [GiaPhong], [MoTaPhong], [MaKS]) VALUES (N'99', N'P09', N'Trống', 1, 1000000.0000, N'Phòng đơn', N'ks10')
ALTER TABLE [dbo].[ChiTiet_DichVu]  WITH CHECK ADD  CONSTRAINT [FK_ChiTiet_DichVu_DichVuDiKem] FOREIGN KEY([MaDV])
REFERENCES [dbo].[DichVuDiKem] ([MaDV])
GO
ALTER TABLE [dbo].[ChiTiet_DichVu] CHECK CONSTRAINT [FK_ChiTiet_DichVu_DichVuDiKem]
GO
ALTER TABLE [dbo].[ChiTiet_DichVu]  WITH CHECK ADD  CONSTRAINT [FK_ChiTiet_DichVu_KhachSan] FOREIGN KEY([MaKS])
REFERENCES [dbo].[KhachSan] ([MaKhachSan])
GO
ALTER TABLE [dbo].[ChiTiet_DichVu] CHECK CONSTRAINT [FK_ChiTiet_DichVu_KhachSan]
GO
ALTER TABLE [dbo].[DatPhong]  WITH CHECK ADD  CONSTRAINT [FK_DatPhong_DangNhap] FOREIGN KEY([TenDN])
REFERENCES [dbo].[DangNhap] ([TenDangNhap])
GO
ALTER TABLE [dbo].[DatPhong] CHECK CONSTRAINT [FK_DatPhong_DangNhap]
GO
ALTER TABLE [dbo].[HinhAnh]  WITH CHECK ADD  CONSTRAINT [FK_HinhAnh_Phong] FOREIGN KEY([MaPH])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[HinhAnh] CHECK CONSTRAINT [FK_HinhAnh_Phong]
GO
ALTER TABLE [dbo].[KhachSan]  WITH CHECK ADD  CONSTRAINT [FK_KhachSan_DangNhap_QL] FOREIGN KEY([TenDN_QL])
REFERENCES [dbo].[DangNhap] ([TenDangNhap])
GO
ALTER TABLE [dbo].[KhachSan] CHECK CONSTRAINT [FK_KhachSan_DangNhap_QL]
GO
ALTER TABLE [dbo].[KhachSan]  WITH CHECK ADD  CONSTRAINT [FK_KhachSan_KhuVuc] FOREIGN KEY([MaKV])
REFERENCES [dbo].[KhuVuc] ([MaKhuVuc])
GO
ALTER TABLE [dbo].[KhachSan] CHECK CONSTRAINT [FK_KhachSan_KhuVuc]
GO
ALTER TABLE [dbo].[KhachSan]  WITH CHECK ADD  CONSTRAINT [FK_KhachSan_LoaiChoO] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiChoO] ([MaLoaiChoO])
GO
ALTER TABLE [dbo].[KhachSan] CHECK CONSTRAINT [FK_KhachSan_LoaiChoO]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_KhachSan] FOREIGN KEY([MaKS])
REFERENCES [dbo].[KhachSan] ([MaKhachSan])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_KhachSan]
GO
USE [master]
GO
ALTER DATABASE [QL_WebKhachSan] SET  READ_WRITE 
GO
