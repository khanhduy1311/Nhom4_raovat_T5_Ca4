USE [master]
GO
/****** Object:  Database [ChoDoCu]    Script Date: 4/20/2023 10:36:35 PM ******/
CREATE DATABASE [ChoDoCu]

GO
ALTER DATABASE [ChoDoCu] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ChoDoCu] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ChoDoCu] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ChoDoCu] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ChoDoCu] SET ARITHABORT OFF 
GO
ALTER DATABASE [ChoDoCu] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ChoDoCu] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ChoDoCu] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ChoDoCu] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ChoDoCu] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ChoDoCu] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ChoDoCu] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ChoDoCu] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ChoDoCu] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ChoDoCu] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ChoDoCu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ChoDoCu] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ChoDoCu] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ChoDoCu] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ChoDoCu] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ChoDoCu] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ChoDoCu] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ChoDoCu] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ChoDoCu] SET  MULTI_USER 
GO
ALTER DATABASE [ChoDoCu] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ChoDoCu] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ChoDoCu] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ChoDoCu] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ChoDoCu] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ChoDoCu] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ChoDoCu', N'ON'
GO
ALTER DATABASE [ChoDoCu] SET QUERY_STORE = OFF
GO
USE [ChoDoCu]
GO
/****** Object:  Table [dbo].[Category_Product]    Script Date: 4/20/2023 10:36:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_Product](
	[idCategory_Product] [int] NOT NULL,
	[nameCategory] [nvarchar](50) NOT NULL,
	[imageCategory] [varchar](150) NOT NULL,
	[iconCategory] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Category_Product] PRIMARY KEY CLUSTERED 
(
	[idCategory_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category_Status]    Script Date: 4/20/2023 10:36:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_Status](
	[idCate_status] [int] NOT NULL,
	[nameStatus] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Category_Status] PRIMARY KEY CLUSTERED 
(
	[idCate_status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment_Product]    Script Date: 4/20/2023 10:36:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment_Product](
	[idComment] [int] IDENTITY(1,1) NOT NULL,
	[contentCmt] [nvarchar](255) NOT NULL,
	[idAccount] [int] NOT NULL,
	[idProduct] [int] NOT NULL,
	[hideCmt] [bit] NOT NULL,
 CONSTRAINT [PK_Comment_Product] PRIMARY KEY CLUSTERED 
(
	[idComment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[infoAccount]    Script Date: 4/20/2023 10:36:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[infoAccount](
	[idSql] [int] IDENTITY(1,1) NOT NULL,
	[PhoneNumber] [varchar](16) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Birthday] [date] NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[idRole] [int] NOT NULL,
	[idAccount] [int] NOT NULL,
 CONSTRAINT [PK_infoAccount] PRIMARY KEY CLUSTERED 
(
	[idSql] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[listOrder]    Script Date: 4/20/2023 10:36:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[listOrder](
	[idOrder] [int] NOT NULL,
	[idProduct] [int] NOT NULL,
	[amountProduct] [int] NOT NULL,
 CONSTRAINT [PK_listOrder] PRIMARY KEY CLUSTERED 
(
	[idOrder] ASC,
	[idProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[listSell]    Script Date: 4/20/2023 10:36:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[listSell](
	[id_listSell] [int] IDENTITY(1,1) NOT NULL,
	[idProduct] [int] NOT NULL,
	[dateSell] [datetime] NOT NULL,
	[idAccount_Buy] [int] NOT NULL,
	[amountProduct] [int] NOT NULL,
 CONSTRAINT [PK_Seller] PRIMARY KEY CLUSTERED 
(
	[id_listSell] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[listShip]    Script Date: 4/20/2023 10:36:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[listShip](
	[idShip] [int] IDENTITY(1,1) NOT NULL,
	[idAccount] [int] NULL,
	[idOrder] [int] NULL,
	[Category_Status] [int] NULL,
	[confirmShip] [bit] NULL,
	[idCustomer] [int] NULL,
	[hideShip] [bit] NULL,
 CONSTRAINT [PK_listShip] PRIMARY KEY CLUSTERED 
(
	[idShip] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 4/20/2023 10:36:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[idAccount] [int] IDENTITY(10000000,1) NOT NULL,
	[Email] [varchar](150) NOT NULL,
	[Password] [varchar](32) NOT NULL,
	[hideAcc] [bit] NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[idAccount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 4/20/2023 10:36:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[idOrder] [int] IDENTITY(1,1) NOT NULL,
	[idAccount] [int] NOT NULL,
	[dateOrder] [datetime] NOT NULL,
	[Category_Status] [int] NOT NULL,
	[hideOrder] [bit] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[idOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/20/2023 10:36:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[idProduct] [int] IDENTITY(1,1) NOT NULL,
	[nameProduct] [nvarchar](50) NOT NULL,
	[priceProduct] [decimal](18, 0) NOT NULL,
	[amountProduct] [int] NOT NULL,
	[descriptionProduct] [nvarchar](255) NOT NULL,
	[datePost] [datetime] NOT NULL,
	[idCategory_Product] [int] NOT NULL,
	[idAccount] [int] NOT NULL,
	[hideProduct] [bit] NOT NULL,
	[imageProduct_1] [varchar](255) NOT NULL,
	[imageProduct_2] [varchar](255) NULL,
	[imageProduct_3] [varchar](255) NULL,
	[imageProduct_4] [varchar](255) NULL,
	[Alias] [varchar](255) NOT NULL,
	[confirmProduct] [bit] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[idProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 4/20/2023 10:36:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[idRole] [int] NOT NULL,
	[nameRole] [nvarchar](30) NOT NULL,
	[groupRole] [int] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[idRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category_Product] ([idCategory_Product], [nameCategory], [imageCategory], [iconCategory]) VALUES (0, N'Tất cả ', N'20042023213312-1b2dfc06-529e-4bdb-977e-43a2608b802a.jpg', N'<i class="fas fa-globe-asia"></i>')
INSERT [dbo].[Category_Product] ([idCategory_Product], [nameCategory], [imageCategory], [iconCategory]) VALUES (1, N'Apple', N'20042023212615-d236ca53-9434-4148-b6f7-25a86d685c78.jpg', N'<i class="fas fa-mobile"></i>')
INSERT [dbo].[Category_Product] ([idCategory_Product], [nameCategory], [imageCategory], [iconCategory]) VALUES (2, N'SAMSUNG', N'20042023212646-fe89aa69-2deb-4a46-b072-c3575d8fc7cb.jpg', N'<i class="fas fa-tablet"></i>')
INSERT [dbo].[Category_Product] ([idCategory_Product], [nameCategory], [imageCategory], [iconCategory]) VALUES (3, N'OPPO', N'20042023213017-bd76c188-a013-4733-bbbc-9c3089c85f43.jpg', N'<i class="fas fa-laptop"></i>')
INSERT [dbo].[Category_Product] ([idCategory_Product], [nameCategory], [imageCategory], [iconCategory]) VALUES (4, N'XIAOMI', N'20042023212542-4d9457f2-18b2-4f5d-877b-13effc77c21a.jpg', N'<i class="fas fa-desktop"></i>')
INSERT [dbo].[Category_Product] ([idCategory_Product], [nameCategory], [imageCategory], [iconCategory]) VALUES (5, N'HUAWEI', N'20042023214559-6627f5f5-b134-475a-ba50-9779e3f65d8a.jpg', N'<i class="fas fa-caravan"></i>')
INSERT [dbo].[Category_Product] ([idCategory_Product], [nameCategory], [imageCategory], [iconCategory]) VALUES (6, N'VIVO', N'20042023213300-2251acfe-8c44-4b08-a54c-d60b505a82e5.jpg', N'<i class="fab fa-pagelines"></i>')
INSERT [dbo].[Category_Product] ([idCategory_Product], [nameCategory], [imageCategory], [iconCategory]) VALUES (7, N'NOKIA', N'20042023213044-2abf0a09-253c-42d0-a490-725ed589692f.jpg', N'<i class="fas fa-lightbulb"></i>')
INSERT [dbo].[Category_Product] ([idCategory_Product], [nameCategory], [imageCategory], [iconCategory]) VALUES (8, N'Ốp Lưng', N'20042023213000-7496b7bc-1596-46d7-904f-c0f12c391361.jpg', N'<i class="fas fa-cat"></i>')
GO
INSERT [dbo].[Category_Status] ([idCate_status], [nameStatus]) VALUES (1, N'Chờ xác nhận')
INSERT [dbo].[Category_Status] ([idCate_status], [nameStatus]) VALUES (2, N'Đang giao hàng')
INSERT [dbo].[Category_Status] ([idCate_status], [nameStatus]) VALUES (3, N'Thành công')
INSERT [dbo].[Category_Status] ([idCate_status], [nameStatus]) VALUES (4, N'Thất bại')
GO
SET IDENTITY_INSERT [dbo].[infoAccount] ON 

INSERT [dbo].[infoAccount] ([idSql], [PhoneNumber], [Fullname], [Birthday], [Address], [idRole], [idAccount]) VALUES (2, N'0586209147', N'Admin', CAST(N'1999-05-05' AS Date), N'Go Vap', 5, 10000002)
INSERT [dbo].[infoAccount] ([idSql], [PhoneNumber], [Fullname], [Birthday], [Address], [idRole], [idAccount]) VALUES (3, N'0587689785', N'Me Me', CAST(N'2000-01-01' AS Date), N'Binh Thanh', 1, 10000003)
INSERT [dbo].[infoAccount] ([idSql], [PhoneNumber], [Fullname], [Birthday], [Address], [idRole], [idAccount]) VALUES (4, N'0364877525', N'nguoiban', CAST(N'2023-04-20' AS Date), N'khu pho 3 an phu quan 2', 1, 10000004)
SET IDENTITY_INSERT [dbo].[infoAccount] OFF
GO
INSERT [dbo].[listOrder] ([idOrder], [idProduct], [amountProduct]) VALUES (3, 23, 1)
INSERT [dbo].[listOrder] ([idOrder], [idProduct], [amountProduct]) VALUES (4, 23, 1)
INSERT [dbo].[listOrder] ([idOrder], [idProduct], [amountProduct]) VALUES (5, 23, 1)
INSERT [dbo].[listOrder] ([idOrder], [idProduct], [amountProduct]) VALUES (6, 23, 1)
INSERT [dbo].[listOrder] ([idOrder], [idProduct], [amountProduct]) VALUES (7, 23, 1)
GO
SET IDENTITY_INSERT [dbo].[listSell] ON 

INSERT [dbo].[listSell] ([id_listSell], [idProduct], [dateSell], [idAccount_Buy], [amountProduct]) VALUES (1, 23, CAST(N'2020-11-06T01:34:08.707' AS DateTime), 10000002, 1)
INSERT [dbo].[listSell] ([id_listSell], [idProduct], [dateSell], [idAccount_Buy], [amountProduct]) VALUES (2, 23, CAST(N'2020-11-06T01:38:11.527' AS DateTime), 10000002, 1)
INSERT [dbo].[listSell] ([id_listSell], [idProduct], [dateSell], [idAccount_Buy], [amountProduct]) VALUES (3, 23, CAST(N'2020-11-06T01:43:09.757' AS DateTime), 10000002, 1)
INSERT [dbo].[listSell] ([id_listSell], [idProduct], [dateSell], [idAccount_Buy], [amountProduct]) VALUES (4, 23, CAST(N'2020-11-06T19:22:01.387' AS DateTime), 10000002, 1)
INSERT [dbo].[listSell] ([id_listSell], [idProduct], [dateSell], [idAccount_Buy], [amountProduct]) VALUES (5, 23, CAST(N'2020-11-06T19:25:59.187' AS DateTime), 10000002, 1)
INSERT [dbo].[listSell] ([id_listSell], [idProduct], [dateSell], [idAccount_Buy], [amountProduct]) VALUES (6, 23, CAST(N'2020-11-06T19:33:45.370' AS DateTime), 10000002, 1)
SET IDENTITY_INSERT [dbo].[listSell] OFF
GO
SET IDENTITY_INSERT [dbo].[listShip] ON 

INSERT [dbo].[listShip] ([idShip], [idAccount], [idOrder], [Category_Status], [confirmShip], [idCustomer], [hideShip]) VALUES (10, 10000002, 6, 3, 1, 10000002, 0)
INSERT [dbo].[listShip] ([idShip], [idAccount], [idOrder], [Category_Status], [confirmShip], [idCustomer], [hideShip]) VALUES (11, 10000002, 5, 4, 0, 10000002, 1)
SET IDENTITY_INSERT [dbo].[listShip] OFF
GO
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([idAccount], [Email], [Password], [hideAcc]) VALUES (10000002, N'bearof1999@gmail.com', N'4297f44b13955235245b2497399d7a93', 0)
INSERT [dbo].[Login] ([idAccount], [Email], [Password], [hideAcc]) VALUES (10000003, N'meme1@gmail.com', N'4297f44b13955235245b2497399d7a93', 0)
INSERT [dbo].[Login] ([idAccount], [Email], [Password], [hideAcc]) VALUES (10000004, N'nguoiban@gmail.com', N'f5bb0c8de146c67b44babbf4e6584cc0', 0)
SET IDENTITY_INSERT [dbo].[Login] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([idOrder], [idAccount], [dateOrder], [Category_Status], [hideOrder]) VALUES (3, 10000002, CAST(N'2020-10-30T23:59:00.000' AS DateTime), 1, 0)
INSERT [dbo].[Order] ([idOrder], [idAccount], [dateOrder], [Category_Status], [hideOrder]) VALUES (4, 10000002, CAST(N'2020-10-31T00:48:42.000' AS DateTime), 1, 0)
INSERT [dbo].[Order] ([idOrder], [idAccount], [dateOrder], [Category_Status], [hideOrder]) VALUES (5, 10000002, CAST(N'2020-10-31T00:54:10.000' AS DateTime), 4, 0)
INSERT [dbo].[Order] ([idOrder], [idAccount], [dateOrder], [Category_Status], [hideOrder]) VALUES (6, 10000002, CAST(N'2020-11-03T22:13:49.000' AS DateTime), 3, 0)
INSERT [dbo].[Order] ([idOrder], [idAccount], [dateOrder], [Category_Status], [hideOrder]) VALUES (7, 10000002, CAST(N'2020-11-07T02:05:10.000' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([idProduct], [nameProduct], [priceProduct], [amountProduct], [descriptionProduct], [datePost], [idCategory_Product], [idAccount], [hideProduct], [imageProduct_1], [imageProduct_2], [imageProduct_3], [imageProduct_4], [Alias], [confirmProduct]) VALUES (22, N'điện thoại 2', CAST(5000000 AS Decimal(18, 0)), 5, N'<p>Đt ok lắm</p>', CAST(N'2020-10-29T23:19:28.000' AS DateTime), 1, 10000002, 1, N'29102020225156-6d43c9b7-75a7-4ff9-aed8-1297a7928ca5.jpg', NULL, NULL, NULL, N'dien-thoai-2', 0)
INSERT [dbo].[Product] ([idProduct], [nameProduct], [priceProduct], [amountProduct], [descriptionProduct], [datePost], [idCategory_Product], [idAccount], [hideProduct], [imageProduct_1], [imageProduct_2], [imageProduct_3], [imageProduct_4], [Alias], [confirmProduct]) VALUES (23, N'Nhà ở', CAST(4500000 AS Decimal(18, 0)), 2, N'<p>Hi</p>', CAST(N'2020-10-30T22:36:17.000' AS DateTime), 5, 10000002, 1, N'30102020223618-56c1f1ae-817c-4dd0-8c1c-12a00e60fee7.jpg', NULL, NULL, NULL, N'Nha-o', 0)
INSERT [dbo].[Product] ([idProduct], [nameProduct], [priceProduct], [amountProduct], [descriptionProduct], [datePost], [idCategory_Product], [idAccount], [hideProduct], [imageProduct_1], [imageProduct_2], [imageProduct_3], [imageProduct_4], [Alias], [confirmProduct]) VALUES (24, N'Samsung Galaxy A73 5G chính hãng', CAST(7800000 AS Decimal(18, 0)), 7, N'<p>x</p>', CAST(N'2023-04-20T22:32:17.000' AS DateTime), 2, 10000004, 0, N'20042023223217-13f5871e-83f1-4452-8eeb-45836002baea.jpg', N'20042023223217-652f46c2-78e3-4438-b76c-23355f5faf68.jpg', N'20042023223217-9d12b432-5c1e-4bd4-a69e-775f8cac2192.jpg', N'20042023223217-3f0006fe-44f2-4d9d-81e0-fca3ed36c242.jpg', N'Samsung-Galaxy-A73-5G-chinh-hang', 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[Role] ([idRole], [nameRole], [groupRole]) VALUES (1, N'Bán hàng', 1)
INSERT [dbo].[Role] ([idRole], [nameRole], [groupRole]) VALUES (2, N'Mua hàng', 1)
INSERT [dbo].[Role] ([idRole], [nameRole], [groupRole]) VALUES (3, N'Shipper', 2)
INSERT [dbo].[Role] ([idRole], [nameRole], [groupRole]) VALUES (4, N'Quản lý', 2)
INSERT [dbo].[Role] ([idRole], [nameRole], [groupRole]) VALUES (5, N'Admin', 2)
GO
ALTER TABLE [dbo].[Comment_Product]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Product_Login] FOREIGN KEY([idAccount])
REFERENCES [dbo].[Login] ([idAccount])
GO
ALTER TABLE [dbo].[Comment_Product] CHECK CONSTRAINT [FK_Comment_Product_Login]
GO
ALTER TABLE [dbo].[Comment_Product]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Product_Product] FOREIGN KEY([idProduct])
REFERENCES [dbo].[Product] ([idProduct])
GO
ALTER TABLE [dbo].[Comment_Product] CHECK CONSTRAINT [FK_Comment_Product_Product]
GO
ALTER TABLE [dbo].[infoAccount]  WITH CHECK ADD  CONSTRAINT [FK_infoAccount_Login] FOREIGN KEY([idAccount])
REFERENCES [dbo].[Login] ([idAccount])
GO
ALTER TABLE [dbo].[infoAccount] CHECK CONSTRAINT [FK_infoAccount_Login]
GO
ALTER TABLE [dbo].[infoAccount]  WITH CHECK ADD  CONSTRAINT [FK_infoAccount_Role] FOREIGN KEY([idRole])
REFERENCES [dbo].[Role] ([idRole])
GO
ALTER TABLE [dbo].[infoAccount] CHECK CONSTRAINT [FK_infoAccount_Role]
GO
ALTER TABLE [dbo].[listOrder]  WITH CHECK ADD  CONSTRAINT [FK_listOrder_Order] FOREIGN KEY([idOrder])
REFERENCES [dbo].[Order] ([idOrder])
GO
ALTER TABLE [dbo].[listOrder] CHECK CONSTRAINT [FK_listOrder_Order]
GO
ALTER TABLE [dbo].[listOrder]  WITH CHECK ADD  CONSTRAINT [FK_listOrder_Product] FOREIGN KEY([idProduct])
REFERENCES [dbo].[Product] ([idProduct])
GO
ALTER TABLE [dbo].[listOrder] CHECK CONSTRAINT [FK_listOrder_Product]
GO
ALTER TABLE [dbo].[listSell]  WITH CHECK ADD  CONSTRAINT [FK_listSell_Login] FOREIGN KEY([idAccount_Buy])
REFERENCES [dbo].[Login] ([idAccount])
GO
ALTER TABLE [dbo].[listSell] CHECK CONSTRAINT [FK_listSell_Login]
GO
ALTER TABLE [dbo].[listSell]  WITH CHECK ADD  CONSTRAINT [FK_listSell_Product] FOREIGN KEY([idProduct])
REFERENCES [dbo].[Product] ([idProduct])
GO
ALTER TABLE [dbo].[listSell] CHECK CONSTRAINT [FK_listSell_Product]
GO
ALTER TABLE [dbo].[listShip]  WITH CHECK ADD  CONSTRAINT [FK_listShip_Category_Status] FOREIGN KEY([Category_Status])
REFERENCES [dbo].[Category_Status] ([idCate_status])
GO
ALTER TABLE [dbo].[listShip] CHECK CONSTRAINT [FK_listShip_Category_Status]
GO
ALTER TABLE [dbo].[listShip]  WITH CHECK ADD  CONSTRAINT [FK_listShip_Login] FOREIGN KEY([idAccount])
REFERENCES [dbo].[Login] ([idAccount])
GO
ALTER TABLE [dbo].[listShip] CHECK CONSTRAINT [FK_listShip_Login]
GO
ALTER TABLE [dbo].[listShip]  WITH CHECK ADD  CONSTRAINT [FK_listShip_Order] FOREIGN KEY([idOrder])
REFERENCES [dbo].[Order] ([idOrder])
GO
ALTER TABLE [dbo].[listShip] CHECK CONSTRAINT [FK_listShip_Order]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Category_Status] FOREIGN KEY([Category_Status])
REFERENCES [dbo].[Category_Status] ([idCate_status])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Category_Status]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Login] FOREIGN KEY([idAccount])
REFERENCES [dbo].[Login] ([idAccount])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Login]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category_Product] FOREIGN KEY([idCategory_Product])
REFERENCES [dbo].[Category_Product] ([idCategory_Product])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Login] FOREIGN KEY([idAccount])
REFERENCES [dbo].[Login] ([idAccount])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Login]
GO
USE [master]
GO
ALTER DATABASE [ChoDoCu] SET  READ_WRITE 
GO
