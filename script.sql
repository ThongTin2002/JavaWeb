USE [javaFPT]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 06/01/2023 9:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[idadmin] [int] IDENTITY(1,1) NOT NULL,
	[avatar] [nvarchar](250) NULL,
	[name] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[idadmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Banner]    Script Date: 06/01/2023 9:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[idbanner] [int] IDENTITY(1,1) NOT NULL,
	[image] [nvarchar](250) NULL,
	[idadmin] [int] NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[idbanner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comments]    Script Date: 06/01/2023 9:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[idcmt] [int] IDENTITY(1,1) NOT NULL,
	[iduser] [int] NULL,
	[comment] [nvarchar](250) NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[idcmt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Convat]    Script Date: 06/01/2023 9:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Convat](
	[idconvat] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[age] [int] NULL,
	[description] [nvarchar](250) NULL,
 CONSTRAINT [PK_Convat] PRIMARY KEY CLUSTERED 
(
	[idconvat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[loaiconvat]    Script Date: 06/01/2023 9:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaiconvat](
	[idloaiconvat] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](50) NULL,
 CONSTRAINT [PK_loaiconvat] PRIMARY KEY CLUSTERED 
(
	[idloaiconvat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[News]    Script Date: 06/01/2023 9:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[idnews] [int] IDENTITY(1,1) NOT NULL,
	[idadmin] [nvarchar](50) NULL,
	[description] [nvarchar](250) NULL,
	[daysubmit] [nvarchar](50) NULL,
	[title] [nvarchar](100) NULL,
	[image] [nvarchar](250) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[idnews] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 06/01/2023 9:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[idorder] [int] IDENTITY(1,1) NOT NULL,
	[idproduct] [int] NULL,
	[iduser] [int] NULL,
	[total] [int] NULL,
	[datecreate] [nvarchar](250) NULL,
	[condition] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[idorder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 06/01/2023 9:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[idod] [int] IDENTITY(1,1) NOT NULL,
	[idorder] [int] NULL,
	[price] [int] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[idod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductImage]    Script Date: 06/01/2023 9:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImage](
	[idimgproduct] [int] IDENTITY(1,1) NOT NULL,
	[idproduct] [int] NULL,
	[image] [nvarchar](250) NULL,
 CONSTRAINT [PK_ProductImage] PRIMARY KEY CLUSTERED 
(
	[idimgproduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 06/01/2023 9:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[idproduct] [int] IDENTITY(1,1) NOT NULL,
	[idadmin] [int] NULL,
	[idprt] [int] NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](250) NULL,
	[quantity] [int] NULL,
	[price] [int] NULL,
	[color] [nchar](10) NULL,
	[size] [nchar](10) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[idproduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 06/01/2023 9:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[idprt] [int] IDENTITY(1,1) NOT NULL,
	[idloaiconvat] [int] NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[idprt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 06/01/2023 9:33:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[iduser] [int] IDENTITY(1,1) NOT NULL,
	[avatar] [nvarchar](100) NULL,
	[name] [nvarchar](50) NULL,
	[age] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[iduser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([idadmin], [avatar], [name], [username], [password]) VALUES (1, N'avatarvit.png', N'Tin Trình', N'admin', N'12345')
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([idbanner], [image], [idadmin]) VALUES (1, N'banner1.png', NULL)
INSERT [dbo].[Banner] ([idbanner], [image], [idadmin]) VALUES (2, N'banner2.png', NULL)
INSERT [dbo].[Banner] ([idbanner], [image], [idadmin]) VALUES (3, N'banner3.png', NULL)
SET IDENTITY_INSERT [dbo].[Banner] OFF
SET IDENTITY_INSERT [dbo].[Convat] ON 

INSERT [dbo].[Convat] ([idconvat], [name], [age], [description]) VALUES (1, N'Poodle', 2, N'Chó lông xù')
INSERT [dbo].[Convat] ([idconvat], [name], [age], [description]) VALUES (2, N'Phốc sóc', 2, N'Có size nhỏ')
INSERT [dbo].[Convat] ([idconvat], [name], [age], [description]) VALUES (3, N'Bắc Kinh', 1, N'Chó Trung Quốc')
INSERT [dbo].[Convat] ([idconvat], [name], [age], [description]) VALUES (4, N'Mèo Anh', 2, N'Mèo USA')
INSERT [dbo].[Convat] ([idconvat], [name], [age], [description]) VALUES (5, N'Mèo Anh lông ngắn', 3, N'Có lông sát da')
INSERT [dbo].[Convat] ([idconvat], [name], [age], [description]) VALUES (6, N'Mèo Anh lông dài', 2, N'Lông dài và xù')
INSERT [dbo].[Convat] ([idconvat], [name], [age], [description]) VALUES (7, N'Chó tây tạng', 4, N'Giống chó kích thước lớn')
INSERT [dbo].[Convat] ([idconvat], [name], [age], [description]) VALUES (8, N'Chó nhật', 5, N'Giống chó phổ biến')
INSERT [dbo].[Convat] ([idconvat], [name], [age], [description]) VALUES (9, N'Chó mặt xệ', 5, N'Giống chó có khuôn mặt ngộ nghĩnh')
INSERT [dbo].[Convat] ([idconvat], [name], [age], [description]) VALUES (10, N'Chó Husky', 4, N'Là hậu duệ của chó sói')
INSERT [dbo].[Convat] ([idconvat], [name], [age], [description]) VALUES (11, N'Chó Alaska', 2, N'Giống chó kéo xe ở vùng lạnh')
INSERT [dbo].[Convat] ([idconvat], [name], [age], [description]) VALUES (12, N'Chó Pitbull', 4, N'Giống chó khó thuần hoá')
INSERT [dbo].[Convat] ([idconvat], [name], [age], [description]) VALUES (13, N'Chó Becgie', 4, N'Giống chó nổi tiếng trung thành')
SET IDENTITY_INSERT [dbo].[Convat] OFF
SET IDENTITY_INSERT [dbo].[loaiconvat] ON 

INSERT [dbo].[loaiconvat] ([idloaiconvat], [name]) VALUES (1, N'Chó                                               ')
INSERT [dbo].[loaiconvat] ([idloaiconvat], [name]) VALUES (2, N'Mèo                                               ')
INSERT [dbo].[loaiconvat] ([idloaiconvat], [name]) VALUES (3, N'Chuột                                             ')
INSERT [dbo].[loaiconvat] ([idloaiconvat], [name]) VALUES (4, N'Chim                                              ')
SET IDENTITY_INSERT [dbo].[loaiconvat] OFF
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([idnews], [idadmin], [description], [daysubmit], [title], [image]) VALUES (1, N'1', N'Sản phẩm mới 1', NULL, N'Áo len cho chó', N'image1.png')
SET IDENTITY_INSERT [dbo].[News] OFF
SET IDENTITY_INSERT [dbo].[ProductImage] ON 

INSERT [dbo].[ProductImage] ([idimgproduct], [idproduct], [image]) VALUES (1, 1, N'image1.png')
INSERT [dbo].[ProductImage] ([idimgproduct], [idproduct], [image]) VALUES (2, 2, N'image2.png')
INSERT [dbo].[ProductImage] ([idimgproduct], [idproduct], [image]) VALUES (3, 3, N'image3.png')
INSERT [dbo].[ProductImage] ([idimgproduct], [idproduct], [image]) VALUES (4, 4, N'image4.png')
INSERT [dbo].[ProductImage] ([idimgproduct], [idproduct], [image]) VALUES (1003, 1003, N'food_2-100x100.jpg')
INSERT [dbo].[ProductImage] ([idimgproduct], [idproduct], [image]) VALUES (1004, 5, N'slider-cat.png')
INSERT [dbo].[ProductImage] ([idimgproduct], [idproduct], [image]) VALUES (1005, 5, N'slider-cat.png')
SET IDENTITY_INSERT [dbo].[ProductImage] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([idproduct], [idadmin], [idprt], [name], [description], [quantity], [price], [color], [size]) VALUES (1, 1, 1, N'Tô đựng đồ ăn cho chó', N'Màu đen', 8, 100, N'Đỏ        ', N'M         ')
INSERT [dbo].[Products] ([idproduct], [idadmin], [idprt], [name], [description], [quantity], [price], [color], [size]) VALUES (2, 1, 1, N'Dây xích', N'Chất liệu nhôm, chống gỉ', 11, 50, N'Xanh      ', N'L         ')
INSERT [dbo].[Products] ([idproduct], [idadmin], [idprt], [name], [description], [quantity], [price], [color], [size]) VALUES (3, 1, 5, N'Thức ăn hạt cho chó mèo', N'Vị cá thu', 45, 35, N'Vàng      ', N'M         ')
INSERT [dbo].[Products] ([idproduct], [idadmin], [idprt], [name], [description], [quantity], [price], [color], [size]) VALUES (4, 1, 3, N'Áo mùa đông', N'Áo mặc cho mèo', 50, 100, N'Đen       ', N'M         ')
INSERT [dbo].[Products] ([idproduct], [idadmin], [idprt], [name], [description], [quantity], [price], [color], [size]) VALUES (5, 1, 3, N'Áo mùa hạ cho mèo', N'Áo mỏng nhẹ, không xù lông', 2, 100, N'Đen       ', N'S         ')
INSERT [dbo].[Products] ([idproduct], [idadmin], [idprt], [name], [description], [quantity], [price], [color], [size]) VALUES (1003, 1, 2, N'ao mua thu', N'Ao re nhu cho', 11, 1111, N'xanh      ', N'S         ')
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([idprt], [idloaiconvat], [name]) VALUES (1, 1, N'Chó')
INSERT [dbo].[ProductType] ([idprt], [idloaiconvat], [name]) VALUES (2, 2, N'Mèo')
INSERT [dbo].[ProductType] ([idprt], [idloaiconvat], [name]) VALUES (3, 3, N'Chim')
INSERT [dbo].[ProductType] ([idprt], [idloaiconvat], [name]) VALUES (4, 4, N'Chuột')
INSERT [dbo].[ProductType] ([idprt], [idloaiconvat], [name]) VALUES (5, 5, N'Chó')
SET IDENTITY_INSERT [dbo].[ProductType] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([iduser], [avatar], [name], [age], [username], [password], [address], [phone]) VALUES (1, N'avatarvit.png', N'thong tin', N'22', N'tin123', N'12345', N'Da Nangg', N'099999993')
INSERT [dbo].[Users] ([iduser], [avatar], [name], [age], [username], [password], [address], [phone]) VALUES (2, N'0', N'Minh Dung', N'0', N'dung123', N'1234', N'0', N'0')
SET IDENTITY_INSERT [dbo].[Users] OFF
