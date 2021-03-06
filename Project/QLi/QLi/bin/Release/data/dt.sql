USE [master]
GO
/****** Object:  Database [QLNS]    Script Date: 12/12/2019 07:59:24 ******/
CREATE DATABASE [QLNS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLNS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QLNS.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLNS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QLNS_log.ldf' , SIZE = 1856KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLNS] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLNS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLNS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLNS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLNS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLNS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLNS] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLNS] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLNS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLNS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLNS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLNS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLNS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLNS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLNS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLNS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLNS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLNS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLNS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLNS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLNS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLNS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLNS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLNS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLNS] SET RECOVERY FULL 
GO
ALTER DATABASE [QLNS] SET  MULTI_USER 
GO
ALTER DATABASE [QLNS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLNS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLNS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLNS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLNS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLNS] SET QUERY_STORE = OFF
GO
USE [QLNS]
GO
/****** Object:  Table [dbo].[chitiethoadon]    Script Date: 12/12/2019 07:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitiethoadon](
	[MaCThoadon] [nchar](10) NOT NULL,
	[MAHOADON] [int] NOT NULL,
	[MASACH] [char](13) NOT NULL,
	[SOLUONG] [int] NOT NULL,
	[MUCGIAMGIA] [int] NULL,
 CONSTRAINT [PK_chitiethoadon] PRIMARY KEY CLUSTERED 
(
	[MaCThoadon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoadon]    Script Date: 12/12/2019 07:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoadon](
	[MAHOADON] [int] IDENTITY(1,1) NOT NULL,
	[TENKHACHHANG] [nvarchar](50) NULL,
	[NGAYLAP] [date] NULL,
	[Checks] [nvarchar](10) NULL,
	[TONGTIEN] [decimal](10, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAHOADON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kho]    Script Date: 12/12/2019 07:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kho](
	[MASACH] [char](13) NOT NULL,
	[TONGSOLUONG] [int] NULL,
	[SOLUONGCON] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MASACH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[linhvuc]    Script Date: 12/12/2019 07:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[linhvuc](
	[MALINHVUC] [char](2) NOT NULL,
	[TENLINHVUC] [nvarchar](50) NULL,
 CONSTRAINT [PK__linhvuc__DAD704017DE9F899] PRIMARY KEY CLUSTERED 
(
	[MALINHVUC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loaisach]    Script Date: 12/12/2019 07:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaisach](
	[MALOAISACH] [char](2) NOT NULL,
	[TENLOAISACH] [nvarchar](50) NULL,
 CONSTRAINT [PK__loaisach__FDAD87DFCF4B3190] PRIMARY KEY CLUSTERED 
(
	[MALOAISACH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhatkinhapsach]    Script Date: 12/12/2019 07:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhatkinhapsach](
	[STT] [int] NOT NULL,
	[MASACH] [char](13) NOT NULL,
	[SOLUONG] [int] NOT NULL,
	[NGAYNHAP] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sach]    Script Date: 12/12/2019 07:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sach](
	[MaSach] [char](13) NOT NULL,
	[TenSach] [nvarchar](100) NOT NULL,
	[MaTacGia] [char](4) NOT NULL,
	[MaLoaiSach] [char](2) NOT NULL,
	[MaLinhVuc] [char](4) NOT NULL,
	[GiaMua] [int] NOT NULL,
 CONSTRAINT [PK__sach__3FC48E4C4F2F1AB1] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sachkhuyenmai]    Script Date: 12/12/2019 07:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sachkhuyenmai](
	[MASACH] [char](13) NOT NULL,
	[MUCGIAMGIA] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MASACH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sp]    Script Date: 12/12/2019 07:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sp](
	[name] [nvarchar](50) NULL,
	[gia] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tacgia]    Script Date: 12/12/2019 07:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tacgia](
	[MATACGIA] [char](4) NOT NULL,
	[TENTACGIA] [nvarchar](50) NOT NULL,
	[NAMSINH] [char](4) NULL,
	[NAMMAT] [char](4) NULL,
	[QUEQUAN] [nvarchar](50) NULL,
 CONSTRAINT [PK__tacgia__C57C166D6750BD1D] PRIMARY KEY CLUSTERED 
(
	[MATACGIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taikhoan]    Script Date: 12/12/2019 07:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taikhoan](
	[USERNAME] [varchar](20) NOT NULL,
	[PASSWORD] [varchar](100) NOT NULL,
	[MaNV] [nvarchar](50) NOT NULL,
	[ID] [char](8) NOT NULL,
	[NgayTao] [date] NULL,
	[ChucVu] [nvarchar](50) NULL,
 CONSTRAINT [PK__taikhoan__B15BE12FDD000F64] PRIMARY KEY CLUSTERED 
(
	[USERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thongtinnv]    Script Date: 12/12/2019 07:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thongtinnv](
	[MANV] [char](3) NOT NULL,
	[HOTEN] [nvarchar](50) NOT NULL,
	[NGAYSINH] [date] NOT NULL,
	[GIOITINH] [nvarchar](3) NULL,
	[QUEQUAN] [nvarchar](20) NULL,
	[LUONGCOBAN] [float] NULL,
 CONSTRAINT [PK__thongtin__603F5114E8415547] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinSach]    Script Date: 12/12/2019 07:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinSach](
	[MaSach] [nchar](10) NULL,
	[TieuDe] [nvarchar](50) NULL,
	[Gia] [float] NULL,
	[SoLuong] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinSP]    Script Date: 12/12/2019 07:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinSP](
	[MaSP] [nchar](10) NULL,
	[Gia] [float] NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thongtinxuatban]    Script Date: 12/12/2019 07:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thongtinxuatban](
	[MASACH] [char](13) NOT NULL,
	[LANTAIBAN] [char](11) NULL,
	[NAMXUATBAN] [char](4) NULL,
	[NHAXUATBAN] [nvarchar](50) NULL,
	[GIABIA] [int] NOT NULL,
 CONSTRAINT [PK__thongtin__3FC48E4C141544FD] PRIMARY KEY CLUSTERED 
(
	[MASACH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuKho]    Script Date: 12/12/2019 07:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuKho](
	[MaThuKho] [nchar](10) NOT NULL,
	[TenThuKho] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](10) NULL,
 CONSTRAINT [PK_ThuKho] PRIMARY KEY CLUSTERED 
(
	[MaThuKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[chitiethoadon] ([MaCThoadon], [MAHOADON], [MASACH], [SOLUONG], [MUCGIAMGIA]) VALUES (N'1         ', 1, N'8931654654451', 3, 10)
SET IDENTITY_INSERT [dbo].[Hoadon] ON 

INSERT [dbo].[Hoadon] ([MAHOADON], [TENKHACHHANG], [NGAYLAP], [Checks], [TONGTIEN]) VALUES (1, N'nguyễn văn a', CAST(N'2019-05-13' AS Date), N'1', CAST(108000 AS Decimal(10, 0)))
SET IDENTITY_INSERT [dbo].[Hoadon] OFF
INSERT [dbo].[kho] ([MASACH], [TONGSOLUONG], [SOLUONGCON]) VALUES (N'8936459545204', 150, 100)
INSERT [dbo].[kho] ([MASACH], [TONGSOLUONG], [SOLUONGCON]) VALUES (N'8936459875267', 100, 50)
INSERT [dbo].[linhvuc] ([MALINHVUC], [TENLINHVUC]) VALUES (N'NN', N'Ngoại Ngữ')
INSERT [dbo].[linhvuc] ([MALINHVUC], [TENLINHVUC]) VALUES (N'TH', N'Tin học')
INSERT [dbo].[loaisach] ([MALOAISACH], [TENLOAISACH]) VALUES (N'GK', N'Sách giáo khoa')
INSERT [dbo].[loaisach] ([MALOAISACH], [TENLOAISACH]) VALUES (N'TK', N'Sách tham khảo')
INSERT [dbo].[nhatkinhapsach] ([STT], [MASACH], [SOLUONG], [NGAYNHAP]) VALUES (1, N'8936459545204', 100, CAST(N'2013-10-22' AS Date))
INSERT [dbo].[nhatkinhapsach] ([STT], [MASACH], [SOLUONG], [NGAYNHAP]) VALUES (2, N'8936459485978', 100, CAST(N'2013-10-22' AS Date))
INSERT [dbo].[sach] ([MaSach], [TenSach], [MaTacGia], [MaLoaiSach], [MaLinhVuc], [GiaMua]) VALUES (N'8931654654451', N'Học C ++', N'M902', N'GK', N'KH  ', 40000)
INSERT [dbo].[sach] ([MaSach], [TenSach], [MaTacGia], [MaLoaiSach], [MaLinhVuc], [GiaMua]) VALUES (N'8931654654452', N'Học C ++ nhanh', N'M901', N'TR', N'KH  ', 45000)
INSERT [dbo].[sach] ([MaSach], [TenSach], [MaTacGia], [MaLoaiSach], [MaLinhVuc], [GiaMua]) VALUES (N'8931654654453', N'Học C ++', N'M902', N'GK', N'KH  ', 40000)
INSERT [dbo].[sach] ([MaSach], [TenSach], [MaTacGia], [MaLoaiSach], [MaLinhVuc], [GiaMua]) VALUES (N'8931654654455', N'Học C', N'M900', N'SS', N'TH  ', 30000)
INSERT [dbo].[sach] ([MaSach], [TenSach], [MaTacGia], [MaLoaiSach], [MaLinhVuc], [GiaMua]) VALUES (N'8931654654456', N'Học Java trong 21 ngày', N'M902', N'GK', N'TH  ', 35000)
INSERT [dbo].[sach] ([MaSach], [TenSach], [MaTacGia], [MaLoaiSach], [MaLinhVuc], [GiaMua]) VALUES (N'8936546546545', N'Xác xuất và thống kê toán', N'S882', N'SS', N'KH  ', 15500)
INSERT [dbo].[sachkhuyenmai] ([MASACH], [MUCGIAMGIA]) VALUES (N'8936459545204', 5)
INSERT [dbo].[sachkhuyenmai] ([MASACH], [MUCGIAMGIA]) VALUES (N'8936459875267', 2)
INSERT [dbo].[sp] ([name], [gia]) VALUES (N'sách tham khảo', 100)
INSERT [dbo].[sp] ([name], [gia]) VALUES (N'sách giáo khoa', 150)
INSERT [dbo].[sp] ([name], [gia]) VALUES (N'sách', 20)
INSERT [dbo].[tacgia] ([MATACGIA], [TENTACGIA], [NAMSINH], [NAMMAT], [QUEQUAN]) VALUES (N'N580', N'Võ Văn Nhị', N'1958', NULL, N'Hồ Chí Minh')
INSERT [dbo].[tacgia] ([MATACGIA], [TENTACGIA], [NAMSINH], [NAMMAT], [QUEQUAN]) VALUES (N'N581', N'Nguyễn Hữu Ngọc', N'1958', NULL, N'Hà Nội')
INSERT [dbo].[tacgia] ([MATACGIA], [TENTACGIA], [NAMSINH], [NAMMAT], [QUEQUAN]) VALUES (N'Q560', N'Nguyễn Ngọc Quang', N'1956', NULL, N'Hà Nội')
INSERT [dbo].[taikhoan] ([USERNAME], [PASSWORD], [MaNV], [ID], [NgayTao], [ChucVu]) VALUES (N'admin', N'admin', N'ad1', N'123213  ', CAST(N'2013-12-19' AS Date), N'Quản Lí')
INSERT [dbo].[taikhoan] ([USERNAME], [PASSWORD], [MaNV], [ID], [NgayTao], [ChucVu]) VALUES (N'nhanvien', N'nhanvien', N'nv1', N'100100  ', CAST(N'2013-12-19' AS Date), N'Nhân viên')
INSERT [dbo].[taikhoan] ([USERNAME], [PASSWORD], [MaNV], [ID], [NgayTao], [ChucVu]) VALUES (N'thukho', N'thukho', N'tk1', N'110110  ', CAST(N'2013-12-19' AS Date), N'Thủ Kho')
INSERT [dbo].[thongtinnv] ([MANV], [HOTEN], [NGAYSINH], [GIOITINH], [QUEQUAN], [LUONGCOBAN]) VALUES (N'ad1', N'Nguyễn Minh Kha', CAST(N'1999-04-12' AS Date), N'Nam', N'Cà Mau', 10000)
INSERT [dbo].[thongtinnv] ([MANV], [HOTEN], [NGAYSINH], [GIOITINH], [QUEQUAN], [LUONGCOBAN]) VALUES (N'ad2', N'Lê Trung Long', CAST(N'1999-04-13' AS Date), N'Nữ', N'Bình Phước', 15000)
INSERT [dbo].[ThongTinSach] ([MaSach], [TieuDe], [Gia], [SoLuong]) VALUES (N'DB1R      ', N'Murach''s C# 2008', 545000, 4825)
INSERT [dbo].[ThongTinSach] ([MaSach], [TieuDe], [Gia], [SoLuong]) VALUES (N'DB2R      ', N'Murach''s C# 2008', 450000, 620)
INSERT [dbo].[ThongTinSach] ([MaSach], [TieuDe], [Gia], [SoLuong]) VALUES (N'DB3R      ', N'Murach''s C# 2008', 600000, 120)
INSERT [dbo].[ThongTinSach] ([MaSach], [TieuDe], [Gia], [SoLuong]) VALUES (N'DB4R      ', N'Murach''s C# 2008', 650000, 200)
INSERT [dbo].[ThongTinSP] ([MaSP], [Gia], [TenSP], [SoLuong]) VALUES (N'N123      ', 15000, N'Sách abc', 20)
INSERT [dbo].[ThongTinSP] ([MaSP], [Gia], [TenSP], [SoLuong]) VALUES (N'N111      ', 25000, N'Sách Học', 20)
INSERT [dbo].[ThongTinSP] ([MaSP], [Gia], [TenSP], [SoLuong]) VALUES (N'N120      ', 15000, N'Sách lập trình', 10)
INSERT [dbo].[ThongTinSP] ([MaSP], [Gia], [TenSP], [SoLuong]) VALUES (N' N122     ', 10000, N' Sách tham khảo', 10)
INSERT [dbo].[ThongTinSP] ([MaSP], [Gia], [TenSP], [SoLuong]) VALUES (N'N122      ', 10000, N' Sách tham khảo', 10)
INSERT [dbo].[thongtinxuatban] ([MASACH], [LANTAIBAN], [NAMXUATBAN], [NHAXUATBAN], [GIABIA]) VALUES (N'8936459545204', N'3          ', N'2012', N'NXB trẻ', 20000)
INSERT [dbo].[thongtinxuatban] ([MASACH], [LANTAIBAN], [NAMXUATBAN], [NHAXUATBAN], [GIABIA]) VALUES (N'8936459875267', N'3          ', N'2012', N' NXB Tổng hợp TPHCM', 40000)
ALTER TABLE [dbo].[chitiethoadon] ADD  CONSTRAINT [DF__chitietho__MAHOA__108B795B]  DEFAULT ('0') FOR [MAHOADON]
GO
ALTER TABLE [dbo].[chitiethoadon] ADD  CONSTRAINT [DF__chitietho__MASAC__117F9D94]  DEFAULT ('') FOR [MASACH]
GO
ALTER TABLE [dbo].[chitiethoadon] ADD  CONSTRAINT [DF__chitietho__MUCGI__1273C1CD]  DEFAULT (NULL) FOR [MUCGIAMGIA]
GO
ALTER TABLE [dbo].[Hoadon] ADD  DEFAULT (NULL) FOR [NGAYLAP]
GO
ALTER TABLE [dbo].[Hoadon] ADD  DEFAULT ('0') FOR [Checks]
GO
ALTER TABLE [dbo].[Hoadon] ADD  DEFAULT (NULL) FOR [TONGTIEN]
GO
ALTER TABLE [dbo].[kho] ADD  DEFAULT ('') FOR [MASACH]
GO
ALTER TABLE [dbo].[kho] ADD  DEFAULT ('0') FOR [TONGSOLUONG]
GO
ALTER TABLE [dbo].[kho] ADD  DEFAULT ('0') FOR [SOLUONGCON]
GO
ALTER TABLE [dbo].[linhvuc] ADD  CONSTRAINT [DF__linhvuc__MALINHV__1ED998B2]  DEFAULT ('') FOR [MALINHVUC]
GO
ALTER TABLE [dbo].[linhvuc] ADD  CONSTRAINT [DF__linhvuc__TENLINH__1FCDBCEB]  DEFAULT (NULL) FOR [TENLINHVUC]
GO
ALTER TABLE [dbo].[loaisach] ADD  CONSTRAINT [DF__loaisach__MALOAI__22AA2996]  DEFAULT ('') FOR [MALOAISACH]
GO
ALTER TABLE [dbo].[loaisach] ADD  CONSTRAINT [DF__loaisach__TENLOA__239E4DCF]  DEFAULT (NULL) FOR [TENLOAISACH]
GO
ALTER TABLE [dbo].[nhatkinhapsach] ADD  DEFAULT (NULL) FOR [NGAYNHAP]
GO
ALTER TABLE [dbo].[sach] ADD  CONSTRAINT [DF__sach__MASACH__29572725]  DEFAULT ('') FOR [MaSach]
GO
ALTER TABLE [dbo].[sachkhuyenmai] ADD  DEFAULT ('') FOR [MASACH]
GO
ALTER TABLE [dbo].[tacgia] ADD  CONSTRAINT [DF__tacgia__MATACGIA__2F10007B]  DEFAULT ('') FOR [MATACGIA]
GO
ALTER TABLE [dbo].[tacgia] ADD  CONSTRAINT [DF__tacgia__NAMSINH__300424B4]  DEFAULT (NULL) FOR [NAMSINH]
GO
ALTER TABLE [dbo].[tacgia] ADD  CONSTRAINT [DF__tacgia__NAMMAT__30F848ED]  DEFAULT (NULL) FOR [NAMMAT]
GO
ALTER TABLE [dbo].[tacgia] ADD  CONSTRAINT [DF__tacgia__QUEQUAN__31EC6D26]  DEFAULT (NULL) FOR [QUEQUAN]
GO
ALTER TABLE [dbo].[taikhoan] ADD  CONSTRAINT [DF__taikhoan__USERNA__34C8D9D1]  DEFAULT ('') FOR [USERNAME]
GO
ALTER TABLE [dbo].[taikhoan] ADD  CONSTRAINT [DF__taikhoan__NGAYLA__35BCFE0A]  DEFAULT (NULL) FOR [NgayTao]
GO
ALTER TABLE [dbo].[taikhoan] ADD  CONSTRAINT [DF__taikhoan__CHUCVU__36B12243]  DEFAULT (NULL) FOR [ChucVu]
GO
ALTER TABLE [dbo].[thongtinnv] ADD  CONSTRAINT [DF__thongtinnv__MANV__65370702]  DEFAULT ('') FOR [MANV]
GO
ALTER TABLE [dbo].[thongtinnv] ADD  CONSTRAINT [DF__thongtinn__HOTEN__662B2B3B]  DEFAULT (NULL) FOR [HOTEN]
GO
ALTER TABLE [dbo].[thongtinxuatban] ADD  CONSTRAINT [DF__thongtinx__MASAC__398D8EEE]  DEFAULT ('') FOR [MASACH]
GO
ALTER TABLE [dbo].[thongtinxuatban] ADD  CONSTRAINT [DF__thongtinx__LANTA__3A81B327]  DEFAULT (NULL) FOR [LANTAIBAN]
GO
ALTER TABLE [dbo].[thongtinxuatban] ADD  CONSTRAINT [DF__thongtinx__NAMXU__3B75D760]  DEFAULT (NULL) FOR [NAMXUATBAN]
GO
ALTER TABLE [dbo].[thongtinxuatban] ADD  CONSTRAINT [DF__thongtinx__NHAXU__3C69FB99]  DEFAULT (NULL) FOR [NHAXUATBAN]
GO
/****** Object:  StoredProcedure [dbo].[CThoadon]    Script Date: 12/12/2019 07:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[CThoadon] @masach nvarchar(13), @soluong int, @mucgiamgia int
as
begin
	declare @mahd int
	set @mahd = (select MAX(MAHOADON) FROM Hoadon)
	insert dbo.chitiethoadon values(@mahd,@masach,@soluong,@mucgiamgia)
end
GO
/****** Object:  StoredProcedure [dbo].[DThu]    Script Date: 12/12/2019 07:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[DThu] @date1 date , @date2 date
as
begin
	select Hoadon.MAHOADON,TENKHACHHANG,NGAYLAP,TONGTIEN
	from dbo.Hoadon
	where NGAYLAP between @date1 and @date2
end
GO
/****** Object:  StoredProcedure [dbo].[LoadList]    Script Date: 12/12/2019 07:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[LoadList]
as
begin
	declare @mahd int
	set @mahd = (select MAX(MAHOADON) FROM Hoadon where Hoadon.Checks=0)
	select MaCTHoadon,TenSach,GiaMua,SOLUONG,MUCGIAMGIA,((GiaMua * SOLUONG)-((GiaMua * SOLUONG)*(MUCGIAMGIA/100))) as [Tongtien]
	from chitiethoadon,sach,Hoadon
	where chitiethoadon.MAHOADON = @mahd and sach.MaSach = chitiethoadon.MASACH and Hoadon.Checks =0 and chitiethoadon.MAHOADON = Hoadon.MAHOADON
	
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllDSNV]    Script Date: 12/12/2019 07:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_GetAllDSNV]
AS
SELECT HoTen N'Họ Tên',QueQuan N'Quê quán',LuongCoBan N'Lương cơ bản'  FROM dbo.thongtinnv
GO
/****** Object:  StoredProcedure [dbo].[UpdateBill]    Script Date: 12/12/2019 07:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[UpdateBill] @date date, @TT int
as
	begin
	declare @mahd int
	set @mahd = (select MAX(MAHOADON) FROM Hoadon where Hoadon.Checks=0)
	update dbo.Hoadon set NGAYLAP = @date,Checks =1,TONGTIEN =@TT WHERE MAHOADON = @mahd
	end
GO
/****** Object:  StoredProcedure [dbo].[updateBillInfo]    Script Date: 12/12/2019 07:59:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[updateBillInfo] @soluong int , @masach nvarchar(13)
as
begin
	declare @idbill int
	set @idbill = (select MaCTHoadon from chitiethoadon,Hoadon where MASACH =@masach and Hoadon.Checks=0 AND Hoadon.MAHOADON = chitiethoadon.MAHOADON)
	update dbo.chitiethoadon set SOLUONG=SOLUONG + @soluong
	where MaCTHoadon = @idbill
	END
GO
USE [master]
GO
ALTER DATABASE [QLNS] SET  READ_WRITE 
GO
