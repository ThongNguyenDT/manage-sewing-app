USE [master]
GO
/****** Object:  Database [QuanLyMaySP]    Script Date: 4/6/2023 2:26:18 PM ******/
CREATE DATABASE [QuanLyMaySP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyMaySP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QuanLyMaySP.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyMaySP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QuanLyMaySP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QuanLyMaySP] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyMaySP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyMaySP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyMaySP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyMaySP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyMaySP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyMaySP] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyMaySP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyMaySP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyMaySP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyMaySP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyMaySP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyMaySP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyMaySP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyMaySP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyMaySP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyMaySP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyMaySP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyMaySP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyMaySP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyMaySP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyMaySP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyMaySP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyMaySP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyMaySP] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyMaySP] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyMaySP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyMaySP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyMaySP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyMaySP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyMaySP] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyMaySP] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyMaySP', N'ON'
GO
ALTER DATABASE [QuanLyMaySP] SET QUERY_STORE = ON
GO
ALTER DATABASE [QuanLyMaySP] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QuanLyMaySP]
GO
/****** Object:  Table [dbo].[ChitietGC]    Script Date: 4/6/2023 2:26:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChitietGC](
	[SoHDGC] [nvarchar](255) NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[MaCV] [int] NOT NULL,
	[MaTho] [int] NULL,
	[TienTraTho] [int] NULL,
 CONSTRAINT [PK_ChitietGC] PRIMARY KEY CLUSTERED 
(
	[SoHDGC] ASC,
	[MaSanPham] ASC,
	[MaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHDGC]    Script Date: 4/6/2023 2:26:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHDGC](
	[SoHDGC] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_ChiTietHDGC] PRIMARY KEY CLUSTERED 
(
	[SoHDGC] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Congviec]    Script Date: 4/6/2023 2:26:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Congviec](
	[MaCV] [int] NOT NULL,
	[MaloaiCV] [int] NULL,
	[Tencongviec] [nvarchar](255) NULL,
 CONSTRAINT [PK_Congviec] PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOPDONGGIACONG]    Script Date: 4/6/2023 2:26:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOPDONGGIACONG](
	[SoHDGD] [int] NOT NULL,
	[TriGia] [int] NULL,
	[MaKH] [int] NULL,
	[NgayHD] [datetime] NULL,
	[TinhTrang] [int] NULL,
 CONSTRAINT [PK_HOPDONGGIACONG] PRIMARY KEY CLUSTERED 
(
	[SoHDGD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khach]    Script Date: 4/6/2023 2:26:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khach](
	[MaKH] [int] NOT NULL,
	[MaLoaiKH] [int] NULL,
	[HoTen] [nvarchar](255) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[SoDT] [nvarchar](255) NULL,
 CONSTRAINT [PK_Khach] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loaicongviec]    Script Date: 4/6/2023 2:26:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loaicongviec](
	[MaloaiCV] [int] NOT NULL,
	[TenloaiCV] [nvarchar](255) NULL,
 CONSTRAINT [PK_Loaicongviec] PRIMARY KEY CLUSTERED 
(
	[MaloaiCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiKH]    Script Date: 4/6/2023 2:26:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiKH](
	[MaloaiKH] [int] NOT NULL,
	[TenLoai] [nvarchar](255) NULL,
 CONSTRAINT [PK_LoaiKH] PRIMARY KEY CLUSTERED 
(
	[MaloaiKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAINGUYENLIEU]    Script Date: 4/6/2023 2:26:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAINGUYENLIEU](
	[MaLoaiNL] [int] NOT NULL,
	[TenLoaiNL] [nvarchar](255) NULL,
 CONSTRAINT [PK_LOAINGUYENLIEU] PRIMARY KEY CLUSTERED 
(
	[MaLoaiNL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAISP]    Script Date: 4/6/2023 2:26:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAISP](
	[MaLoaiSP] [int] NOT NULL,
	[TenLoai] [nvarchar](255) NULL,
 CONSTRAINT [PK_LOAISP] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGUYENLIEU]    Script Date: 4/6/2023 2:26:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUYENLIEU](
	[MaNguyenLieu] [int] NOT NULL,
	[MaLoaiNL] [int] NULL,
	[TenNL] [nvarchar](255) NULL,
 CONSTRAINT [PK_NGUYENLIEU] PRIMARY KEY CLUSTERED 
(
	[MaNguyenLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhomtho]    Script Date: 4/6/2023 2:26:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhomtho](
	[MaNhomtho] [int] NOT NULL,
	[Tennhom] [nvarchar](255) NULL,
 CONSTRAINT [PK_Nhomtho] PRIMARY KEY CLUSTERED 
(
	[MaNhomtho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 4/6/2023 2:26:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] NOT NULL,
	[MaLoaiSP] [int] NULL,
	[TenSanPham] [nvarchar](255) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM_NGUYENLIEU]    Script Date: 4/6/2023 2:26:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM_NGUYENLIEU](
	[MaSanPham] [int] NOT NULL,
	[MaNguyenLieu] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_SANPHAM_NGUYENLIEU] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC,
	[MaNguyenLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tho]    Script Date: 4/6/2023 2:26:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tho](
	[Matho] [int] NOT NULL,
	[MaNhomtho] [int] NULL,
	[Hoten] [nvarchar](255) NULL,
	[SoDT] [nvarchar](255) NULL,
 CONSTRAINT [PK_Tho] PRIMARY KEY CLUSTERED 
(
	[Matho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChitietGC] ([SoHDGC], [MaSanPham], [MaCV], [MaTho], [TienTraTho]) VALUES (N'1', 1, 2, 2, 3000000)
GO
INSERT [dbo].[ChitietGC] ([SoHDGC], [MaSanPham], [MaCV], [MaTho], [TienTraTho]) VALUES (N'2', 2, 1, 1, 4500000)
GO
INSERT [dbo].[ChitietGC] ([SoHDGC], [MaSanPham], [MaCV], [MaTho], [TienTraTho]) VALUES (N'3', 5, 3, 3, 4500000)
GO
INSERT [dbo].[ChitietGC] ([SoHDGC], [MaSanPham], [MaCV], [MaTho], [TienTraTho]) VALUES (N'4', 7, 1, 1, 5000000)
GO
INSERT [dbo].[ChitietGC] ([SoHDGC], [MaSanPham], [MaCV], [MaTho], [TienTraTho]) VALUES (N'5', 3, 1, 1, 5400000)
GO
INSERT [dbo].[ChitietGC] ([SoHDGC], [MaSanPham], [MaCV], [MaTho], [TienTraTho]) VALUES (N'6', 2, 2, 2, 3400000)
GO
INSERT [dbo].[ChitietGC] ([SoHDGC], [MaSanPham], [MaCV], [MaTho], [TienTraTho]) VALUES (N'7', 3, 3, 3, 4300000)
GO
INSERT [dbo].[ChiTietHDGC] ([SoHDGC], [MaSanPham], [SoLuong], [DonGia]) VALUES (1, 3, 45, 300000)
GO
INSERT [dbo].[ChiTietHDGC] ([SoHDGC], [MaSanPham], [SoLuong], [DonGia]) VALUES (2, 5, 22, 430000)
GO
INSERT [dbo].[ChiTietHDGC] ([SoHDGC], [MaSanPham], [SoLuong], [DonGia]) VALUES (3, 7, 66, 550000)
GO
INSERT [dbo].[ChiTietHDGC] ([SoHDGC], [MaSanPham], [SoLuong], [DonGia]) VALUES (4, 6, 43, 450000)
GO
INSERT [dbo].[ChiTietHDGC] ([SoHDGC], [MaSanPham], [SoLuong], [DonGia]) VALUES (5, 1, 23, 340000)
GO
INSERT [dbo].[ChiTietHDGC] ([SoHDGC], [MaSanPham], [SoLuong], [DonGia]) VALUES (6, 2, 47, 540000)
GO
INSERT [dbo].[ChiTietHDGC] ([SoHDGC], [MaSanPham], [SoLuong], [DonGia]) VALUES (7, 5, 22, 450000)
GO
INSERT [dbo].[Congviec] ([MaCV], [MaloaiCV], [Tencongviec]) VALUES (1, 1, N'Tho may')
GO
INSERT [dbo].[Congviec] ([MaCV], [MaloaiCV], [Tencongviec]) VALUES (2, 1, N'Nhan vien thiet ke')
GO
INSERT [dbo].[Congviec] ([MaCV], [MaloaiCV], [Tencongviec]) VALUES (3, 2, N'Nhan vien kiem tra chat luong')
GO
INSERT [dbo].[Congviec] ([MaCV], [MaloaiCV], [Tencongviec]) VALUES (4, 3, N'Quan li san xuat')
GO
INSERT [dbo].[Congviec] ([MaCV], [MaloaiCV], [Tencongviec]) VALUES (5, 1, N'Nhan vien cat may')
GO
INSERT [dbo].[HOPDONGGIACONG] ([SoHDGD], [TriGia], [MaKH], [NgayHD], [TinhTrang]) VALUES (1, 1000000, 100, CAST(N'2023-04-01T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[HOPDONGGIACONG] ([SoHDGD], [TriGia], [MaKH], [NgayHD], [TinhTrang]) VALUES (2, 2000000, 100, CAST(N'2023-03-16T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[HOPDONGGIACONG] ([SoHDGD], [TriGia], [MaKH], [NgayHD], [TinhTrang]) VALUES (3, 5000000, 101, CAST(N'2023-03-06T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[HOPDONGGIACONG] ([SoHDGD], [TriGia], [MaKH], [NgayHD], [TinhTrang]) VALUES (4, 3000000, 102, CAST(N'2023-02-02T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[HOPDONGGIACONG] ([SoHDGD], [TriGia], [MaKH], [NgayHD], [TinhTrang]) VALUES (5, 2500000, 103, CAST(N'2023-04-04T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[HOPDONGGIACONG] ([SoHDGD], [TriGia], [MaKH], [NgayHD], [TinhTrang]) VALUES (6, 10000000, 104, CAST(N'2023-03-31T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[HOPDONGGIACONG] ([SoHDGD], [TriGia], [MaKH], [NgayHD], [TinhTrang]) VALUES (7, 20000000, 105, CAST(N'2023-03-10T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Khach] ([MaKH], [MaLoaiKH], [HoTen], [DiaChi], [SoDT]) VALUES (100, 1, N'Hynh Tien Dat', N'Phuoc Long, Quan 9', N'09274538')
GO
INSERT [dbo].[Khach] ([MaKH], [MaLoaiKH], [HoTen], [DiaChi], [SoDT]) VALUES (101, 1, N'Nguyen Minh Chau', N'Do Xuan Hop, Quan 9', N'092746349')
GO
INSERT [dbo].[Khach] ([MaKH], [MaLoaiKH], [HoTen], [DiaChi], [SoDT]) VALUES (102, 1, N'Le Thi Dau', N'Quoc Huong, Quan 2', N'082634383')
GO
INSERT [dbo].[Khach] ([MaKH], [MaLoaiKH], [HoTen], [DiaChi], [SoDT]) VALUES (103, 2, N'Le Van Tai', N'Nguyen Thi Minh Khai, Quan 1', N'07283624')
GO
INSERT [dbo].[Khach] ([MaKH], [MaLoaiKH], [HoTen], [DiaChi], [SoDT]) VALUES (104, 1, N'Nguyen Chat Phat', N'Vo Van Hat, Quan 9', N'084926813')
GO
INSERT [dbo].[Khach] ([MaKH], [MaLoaiKH], [HoTen], [DiaChi], [SoDT]) VALUES (105, 2, N'Le Huu Khang', N'Long Truong, Quan 9', N'028946174')
GO
INSERT [dbo].[Loaicongviec] ([MaloaiCV], [TenloaiCV]) VALUES (1, N'Cong viec san xuat')
GO
INSERT [dbo].[Loaicongviec] ([MaloaiCV], [TenloaiCV]) VALUES (2, N'Cong viec kiem tra')
GO
INSERT [dbo].[Loaicongviec] ([MaloaiCV], [TenloaiCV]) VALUES (3, N'Cong viec quan li')
GO
INSERT [dbo].[LoaiKH] ([MaloaiKH], [TenLoai]) VALUES (1, N'Khach hang thuong')
GO
INSERT [dbo].[LoaiKH] ([MaloaiKH], [TenLoai]) VALUES (2, N'Khach hang vip')
GO
INSERT [dbo].[LOAINGUYENLIEU] ([MaLoaiNL], [TenLoaiNL]) VALUES (1, N'coton hang 1')
GO
INSERT [dbo].[LOAINGUYENLIEU] ([MaLoaiNL], [TenLoaiNL]) VALUES (2, N'coton hang 2')
GO
INSERT [dbo].[LOAINGUYENLIEU] ([MaLoaiNL], [TenLoaiNL]) VALUES (3, N'coton nhap khau')
GO
INSERT [dbo].[LOAINGUYENLIEU] ([MaLoaiNL], [TenLoaiNL]) VALUES (4, N'vai tong hop hang thuong gia')
GO
INSERT [dbo].[LOAINGUYENLIEU] ([MaLoaiNL], [TenLoaiNL]) VALUES (5, N'vai thua')
GO
INSERT [dbo].[LOAISP] ([MaLoaiSP], [TenLoai]) VALUES (1, N'coton')
GO
INSERT [dbo].[LOAISP] ([MaLoaiSP], [TenLoai]) VALUES (2, N'thun')
GO
INSERT [dbo].[LOAISP] ([MaLoaiSP], [TenLoai]) VALUES (3, N'vai cao cap')
GO
INSERT [dbo].[LOAISP] ([MaLoaiSP], [TenLoai]) VALUES (4, N'vai nhap khau')
GO
INSERT [dbo].[LOAISP] ([MaLoaiSP], [TenLoai]) VALUES (5, N'do re tien')
GO
INSERT [dbo].[NGUYENLIEU] ([MaNguyenLieu], [MaLoaiNL], [TenNL]) VALUES (1, 1, N'coton quy toc')
GO
INSERT [dbo].[NGUYENLIEU] ([MaNguyenLieu], [MaLoaiNL], [TenNL]) VALUES (2, 2, N'coton thuong')
GO
INSERT [dbo].[NGUYENLIEU] ([MaNguyenLieu], [MaLoaiNL], [TenNL]) VALUES (3, 3, N'coton nuoc ngoai')
GO
INSERT [dbo].[NGUYENLIEU] ([MaNguyenLieu], [MaLoaiNL], [TenNL]) VALUES (4, 4, N'coton me')
GO
INSERT [dbo].[NGUYENLIEU] ([MaNguyenLieu], [MaLoaiNL], [TenNL]) VALUES (5, 5, N'do choi nhe nhan')
GO
INSERT [dbo].[Nhomtho] ([MaNhomtho], [Tennhom]) VALUES (1, N'Tho gia cong chinh')
GO
INSERT [dbo].[Nhomtho] ([MaNhomtho], [Tennhom]) VALUES (2, N'Tho kiem tra')
GO
INSERT [dbo].[Nhomtho] ([MaNhomtho], [Tennhom]) VALUES (3, N'Nhom quan li')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSP], [TenSanPham]) VALUES (1, 1, N'do bo thoan mat')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSP], [TenSanPham]) VALUES (2, 2, N'do choi mua he')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSP], [TenSanPham]) VALUES (3, 3, N'alibaba')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSP], [TenSanPham]) VALUES (4, 4, N'thoi trang thoi thuong')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSP], [TenSanPham]) VALUES (5, 5, N'as ba lo')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSP], [TenSanPham]) VALUES (6, 5, N'quan dui')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSP], [TenSanPham]) VALUES (7, 4, N'vest')
GO
INSERT [dbo].[SANPHAM_NGUYENLIEU] ([MaSanPham], [MaNguyenLieu], [SoLuong], [DonGia]) VALUES (1, 1, 100, 20000)
GO
INSERT [dbo].[SANPHAM_NGUYENLIEU] ([MaSanPham], [MaNguyenLieu], [SoLuong], [DonGia]) VALUES (2, 2, 500, 500000)
GO
INSERT [dbo].[SANPHAM_NGUYENLIEU] ([MaSanPham], [MaNguyenLieu], [SoLuong], [DonGia]) VALUES (3, 3, 101, 200000)
GO
INSERT [dbo].[SANPHAM_NGUYENLIEU] ([MaSanPham], [MaNguyenLieu], [SoLuong], [DonGia]) VALUES (4, 4, 1000, 75000)
GO
INSERT [dbo].[SANPHAM_NGUYENLIEU] ([MaSanPham], [MaNguyenLieu], [SoLuong], [DonGia]) VALUES (5, 5, 100, 250000)
GO
INSERT [dbo].[SANPHAM_NGUYENLIEU] ([MaSanPham], [MaNguyenLieu], [SoLuong], [DonGia]) VALUES (6, 6, 250, 150000)
GO
INSERT [dbo].[SANPHAM_NGUYENLIEU] ([MaSanPham], [MaNguyenLieu], [SoLuong], [DonGia]) VALUES (7, 7, 700, 60000)
GO
INSERT [dbo].[Tho] ([Matho], [MaNhomtho], [Hoten], [SoDT]) VALUES (1, 1, N'Huynh Quoc Long', N'092747343')
GO
INSERT [dbo].[Tho] ([Matho], [MaNhomtho], [Hoten], [SoDT]) VALUES (2, 3, N'Nguyen Chi Thanh', N'084836287')
GO
INSERT [dbo].[Tho] ([Matho], [MaNhomtho], [Hoten], [SoDT]) VALUES (3, 2, N'Le Van Tai', N'047329864')
GO
INSERT [dbo].[Tho] ([Matho], [MaNhomtho], [Hoten], [SoDT]) VALUES (4, 1, N'Le Huu Tai', N'084378254')
GO
INSERT [dbo].[Tho] ([Matho], [MaNhomtho], [Hoten], [SoDT]) VALUES (5, 2, N'Nguyen Phu Thanh', N'027354824')
GO
ALTER TABLE [dbo].[ChitietGC]  WITH CHECK ADD FOREIGN KEY([MaTho])
REFERENCES [dbo].[Tho] ([Matho])
GO
ALTER TABLE [dbo].[Congviec]  WITH CHECK ADD FOREIGN KEY([MaloaiCV])
REFERENCES [dbo].[Loaicongviec] ([MaloaiCV])
GO
ALTER TABLE [dbo].[HOPDONGGIACONG]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[Khach] ([MaKH])
GO
ALTER TABLE [dbo].[Khach]  WITH CHECK ADD FOREIGN KEY([MaLoaiKH])
REFERENCES [dbo].[LoaiKH] ([MaloaiKH])
GO
ALTER TABLE [dbo].[NGUYENLIEU]  WITH CHECK ADD FOREIGN KEY([MaLoaiNL])
REFERENCES [dbo].[LOAINGUYENLIEU] ([MaLoaiNL])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LOAISP] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[Tho]  WITH CHECK ADD FOREIGN KEY([MaNhomtho])
REFERENCES [dbo].[Nhomtho] ([MaNhomtho])
GO
USE [master]
GO
ALTER DATABASE [QuanLyMaySP] SET  READ_WRITE 
GO
