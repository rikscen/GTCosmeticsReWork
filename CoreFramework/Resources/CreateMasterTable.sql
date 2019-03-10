/****** Object:  Table [dbo].[BASE_Carrier]    Script Date: 3/15/2017 3:35:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BASE_Carrier](
	[name] [nvarchar](20) NOT NULL,
	[datestamp] [datetime] NOT NULL,
	[status] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BASE_UOM]    Script Date: 3/15/2017 3:35:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BASE_UOM](
	[_UOMIndex] [int] IDENTITY NOT NULL,
	[ProdIndex] [int] NOT NULL,
	[uom] [nvarchar](20) NOT NULL,
	[qty] [int] NOT NULL,
	[barcode] [nvarchar](30) NULL,
	[datestamp] [datetime] NOT NULL,
	[status] [bit] NOT NULL
 CONSTRAINT [PK_BASE_UOM] PRIMARY KEY CLUSTERED 
(
	[_UOMIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BASE_Category]    Script Date: 1/20/2017 10:28:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BASE_Category](
	[categoryid] [int] IDENTITY(1,1) NOT NULL,
	[parentcategoryId] [int] NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[datestamp] [datetime] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_BASE_Category] PRIMARY KEY CLUSTERED 
(
	[categoryid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BASE_Customer]    Script Date: 1/20/2017 10:28:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BASE_Customer](
	[_CustIndex] [int] IDENTITY(1,1) NOT NULL,
	[priceindex] [int] NOT NULL,
	[smanindex] [int] NOT NULL,
	[customercode] [nvarchar](50) NOT NULL,
	[clientcode] [nvarchar](50) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[address] [nvarchar](150) NOT NULL,
	[contactno] [nvarchar](20) NULL,
	[postalcode] [nvarchar](5) NULL,
	[tinno] [nvarchar](30)  NULL,
	[terms] [nchar](10) NOT NULL,
	[doctype] [nchar](20) NULL,
	[transtype] [nchar](20) NULL,
	[custtype] [nvarchar](30) NULL,
	[discnt1] [int] NOT NULL,
	[discnt2] [int] NOT NULL,
	[discnt3] [int] NOT NULL,
	[discnt4] [int] NOT NULL,
	[discnt5] [int] NOT NULL,
	[zone] [int] NULL,
	[datestamp] [datetime] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_BASE_Customer] PRIMARY KEY CLUSTERED 
(
	[_CustIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BASE_DeliveryAddress]    Script Date: 1/20/2017 10:28:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BASE_DeliveryAddress](
	[_DelAddressIndex] [int] IDENTITY(1,1) NOT NULL,
	[custindex] [int] NOT NULL,
	[routeindex] [int] NOT NULL,
	[address] [nvarchar](150) NOT NULL,
	[zone] [int] NOT NULL,
	[datestamp] [datetime] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_BASE_DeliveryAddress] PRIMARY KEY CLUSTERED 
(
	[_DelAddressIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BASE_Employee]    Script Date: 1/20/2017 10:28:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BASE_Employee](
	[_EmpIndex] [int] IDENTITY(1,1) NOT NULL,
	[employeecode] [nvarchar](50) NOT NULL,
	[departmentcode] [nvarchar](50) NOT NULL,
	[lastname] [nvarchar](50) NOT NULL,
	[firstname] [nvarchar](50) NOT NULL,
	[middlename] [nvarchar](50) NOT NULL,
	[position] [nchar](20) NOT NULL,
	[address] [nvarchar](150) NOT NULL,
	[contactno] [nvarchar](20) NOT NULL,
	[datestamp] [datetime] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_BASE_Employee] PRIMARY KEY CLUSTERED 
(
	[_EmpIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BASE_PriceType]    Script Date: 01/24/2017 15:00:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BASE_PriceType](
	[_priceindex] [int] IDENTITY(1,1) NOT NULL,
	[pricetype] [nvarchar](50) NOT NULL,
	[datestamp] [datetime] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_BASE_PriceType] PRIMARY KEY CLUSTERED 
(
	[_priceindex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BASE_ItemPrice]    Script Date: 1/20/2017 10:28:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BASE_ItemPrice](
	[_ItemPIndex] [int] IDENTITY(1,1) NOT NULL,
	[ProdIndex] [int] NOT NULL,
	[priceindex] [int] NOT NULL,
	[uomindex] [int] NOT NULL,
	[unitprice] [decimal](18, 4) NOT NULL,
	[datestamp] [datetime] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_BASE_ItemPrice] PRIMARY KEY CLUSTERED 
(
	[_ItemPIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BASE_Location]    Script Date: 1/20/2017 10:28:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BASE_Location](
	[_LocIndex] [int] IDENTITY(1,1) NOT NULL,
	[locationcode] [nvarchar](50) NOT NULL,
	[warehousecode] [nvarchar](50) NOT NULL,
	[areacode] [nvarchar](50) NOT NULL,
	[description] [nvarchar](60) NOT NULL,
	[height] [decimal](10, 2) NOT NULL,
	[width] [decimal](10, 2) NOT NULL,
	[lenght] [decimal](10, 2) NOT NULL,
	[cbm] [decimal](18, 2) NOT NULL,
	[occupy] [bit] NOT NULL,
	[is_full] [bit] NOT NULL,
	[datestamp] [datetime] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_BASE_Location] PRIMARY KEY CLUSTERED 
(
	[_LocIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BASE_Product]    Script Date: 1/20/2017 10:28:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BASE_Product](
	[_ProdIndex]	[int] IDENTITY(-2147483648,1) NOT NULL,	
	[productcode]	[nvarchar](50) NOT NULL,
	[scode]			[nvarchar](50) NULL,
	[ccode]			[nvarchar](50) NULL,
	[description]	[nvarchar](100) NOT NULL,
	[category]		[int] NOT NULL,
	[capacity]		[nvarchar](20) NULL,
	[uomSSU]		[int] NULL,
	[datestamp]		[datetime] NOT NULL,
	[status]		[bit] NOT NULL,
 CONSTRAINT [PK_BASE_Product] PRIMARY KEY CLUSTERED 
(
	[_ProdIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BASE_Route]    Script Date: 1/20/2017 10:28:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BASE_Route](
	[_routeindex] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](60) NOT NULL,
	[datestamp] [datetime] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_BASE_Route] PRIMARY KEY CLUSTERED 
(
	[_routeindex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BASE_SalesMan]    Script Date: 1/20/2017 10:28:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BASE_SalesMan](
	[_smanindex] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
	[datestamp] [datetime] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_BASE_SalesMan] PRIMARY KEY CLUSTERED 
(
	[_smanindex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[BASE_Customer]  WITH CHECK ADD  CONSTRAINT [FK_BASE_Customer_BASE_PriceType] FOREIGN KEY([priceindex])
REFERENCES [dbo].[BASE_PriceType] ([_priceindex])
GO
ALTER TABLE [dbo].[BASE_Customer] CHECK CONSTRAINT [FK_BASE_Customer_BASE_PriceType]
GO
ALTER TABLE [dbo].[BASE_Customer]  WITH CHECK ADD  CONSTRAINT [FK_BASE_Customer_BASE_SalesMan] FOREIGN KEY([smanindex])
REFERENCES [dbo].[BASE_SalesMan] ([_smanindex])
GO
ALTER TABLE [dbo].[BASE_Customer] CHECK CONSTRAINT [FK_BASE_Customer_BASE_SalesMan]
GO
ALTER TABLE [dbo].[BASE_DeliveryAddress]  WITH CHECK ADD  CONSTRAINT [FK_BASE_DeliveryAddress_BASE_Customer] FOREIGN KEY([custindex])
REFERENCES [dbo].[BASE_Customer] ([_CustIndex])
GO
ALTER TABLE [dbo].[BASE_DeliveryAddress] CHECK CONSTRAINT [FK_BASE_DeliveryAddress_BASE_Customer]
GO
ALTER TABLE [dbo].[BASE_DeliveryAddress]  WITH CHECK ADD  CONSTRAINT [FK_BASE_DeliveryAddress_BASE_Route] FOREIGN KEY([routeindex])
REFERENCES [dbo].[BASE_Route] ([_routeindex])
GO
ALTER TABLE [dbo].[BASE_DeliveryAddress] CHECK CONSTRAINT [FK_BASE_DeliveryAddress_BASE_Route]
GO
ALTER TABLE [dbo].[BASE_ItemPrice]  WITH CHECK ADD  CONSTRAINT [FK_BASE_ItemPrice_BASE_UOM] FOREIGN KEY([uomindex])
REFERENCES [dbo].[BASE_UOM] ([_UOMIndex])
GO
ALTER TABLE [dbo].[BASE_ItemPrice] CHECK CONSTRAINT [FK_BASE_ItemPrice_BASE_UOM]
GO
ALTER TABLE [dbo].[BASE_ItemPrice]  WITH CHECK ADD  CONSTRAINT [FK_BASE_ItemPrice_BASE_PriceType] FOREIGN KEY([priceindex])
REFERENCES [dbo].[BASE_PriceType] ([_priceindex])
GO
ALTER TABLE [dbo].[BASE_ItemPrice] CHECK CONSTRAINT [FK_BASE_ItemPrice_BASE_PriceType]
GO
ALTER TABLE [dbo].[BASE_ItemPrice]  WITH CHECK ADD  CONSTRAINT [FK_BASE_ItemPrice_BASE_Product] FOREIGN KEY([ProdIndex])
REFERENCES [dbo].[BASE_Product] ([_ProdIndex])
GO
ALTER TABLE [dbo].[BASE_ItemPrice] CHECK CONSTRAINT [FK_BASE_ItemPrice_BASE_Product]
GO
ALTER TABLE [dbo].[BASE_Product]  WITH CHECK ADD  CONSTRAINT [FK_BASE_Product_BASE_Category] FOREIGN KEY([category])
REFERENCES [dbo].[BASE_Category] ([categoryid])
GO
ALTER TABLE [dbo].[BASE_Product] CHECK CONSTRAINT [FK_BASE_Product_BASE_Category]
GO