/****** Object:  Table [dbo].[GLOBAL_DocType]    Script Date: 1/20/2017 10:28:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GLOBAL_DocType](
	[_DocTypeIndex]		[int] IDENTITY(1,1) NOT NULL,
	[name]				[nvarchar](30) NOT NULL,
	[docno]				[nvarchar](10) NOT NULL,
	[affix]				[nvarchar](5) NULL,
	[suffix]			[nvarchar](5) NULL,
	[datestamp]			[datetime] NOT NULL,
	[status]			[bit] NOT NULL,
 CONSTRAINT [PK_GLOBAL_DocType] PRIMARY KEY CLUSTERED 
(
	[_DocTypeIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOGS_Product]    Script Date: 1/20/2017 10:28:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOGS_Product](
	[_LogIndex]			[int] IDENTITY(1,1) NOT NULL,
	[ProdIndex]			[int] NOT NULL,
	[DocType]			[int] NULL,
	[DocNo]				[nvarchar](20) NULL,
	[DocDate]			[datetime] NULL,
	[OriginalValue]		[money] NOT NULL,
	[ReviseValue]		[money] NOT NULL,
	[MonthCycle]		[int] NULL,
	[YearCycle]			[int] NULL,
	[UserN]				[nvarchar](30) NOT NULL,
	[UserNAuth]			[nvarchar](30) NOT NULL,
	[DateStamp]			[datetime] NULL,
	[remarks]			[nvarchar](250) NULL,
	[reason]			[nvarchar](250) NULL,
	[Status]			[bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GLOBAL_ProductTrans]    Script Date: 1/20/2017 10:28:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GLOBAL_ProductTrans](
	[ProdIndex]			[int] NOT NULL,
	[ProductCode]		[nvarchar](50) NOT NULL,
	[DocType]			[int] NULL,
	[DocNo]				[nvarchar](20) NULL,
	[DocDate]			[datetime] NULL,
	[SourceIndex]		[int] NOT NULL,
	[Qty]				[bigint] NULL,
	[UOM]				[nvarchar](15) NULL,
	[TotalConv]			[int]NULL,
	[RefName]			[nvarchar](50) NULL,
	[RefNo]				[nvarchar](20) NULL,
	[RefName1]			[nvarchar](50) NULL,
	[RefNo1]			[nvarchar](20) NULL,
	[RefName2]			[nvarchar](50) NULL,
	[RefNo2]			[nvarchar](20) NULL,
	[price]				[money] NOT NULL,
	[discount]			[decimal](18, 4) NOT NULL,
	[amount]			[money] NOT NULL,
	[MonthCycle]		[int] NULL,
	[YearCycle]			[int] NULL,
	[IsSample]			[bit] NULL,
	[remarks]			[nvarchar](250) NULL,
	[cremarks]			[nvarchar](250) NULL,
	[carrier]			[nvarchar](60) NULL,
	[carrieradd]		[nvarchar](150) NULL,
	[trackingno]		[nvarchar](50) NULL,
	[arriveddate]		[datetime]NULL,
	[receiveddate]		[datetime]NULL,
	[expirydate]		[datetime]NULL,
	[reason]			[nvarchar](100),
	[UserN]				[nvarchar](30) NOT NULL,
	[DateStamp]			[datetime] NULL,
	[Status]			[bit] NULL,
	[Qty2]				[int] DEFAULT ((0)),
	[discnt1]			[int] DEFAULT ((0)),
	[discnt2]			[int] DEFAULT ((0)),
	[discnt3]			[int] DEFAULT ((0)),
	[discnt4]			[int] DEFAULT ((0)),
	[discnt5]			[int] DEFAULT ((0)),
	[row_no]			[bigint] IDENTITY(-2147483648,1) NOT NULL
	
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GLOBAL_ProductTrans]    Script Date: 1/20/2017 10:28:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GLOBAL_ProductExpiryTrans](
	[_ProdExpIndex]		[bigint] IDENTITY(-2147483648,1) NOT NULL,
	[PostingNo]			[int],
	[ProdIndex]			[int],
	[Qty]				[int],
	[Expiry]			[datetime],
	[DateStamp]			[datetime],
	[Status]			[bit]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GLOBAL_DProductTrans]    Script Date: 1/20/2017 10:28:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GLOBAL_DProductTrans](
	[ProdIndex]			[int] NOT NULL,
	[ProductCode]		[nvarchar](50) NOT NULL,
	[DocType]			[int] NULL,
	[DocNo]				[nvarchar](20) NULL,
	[DocDate]			[datetime] NULL,
	[SourceIndex]		[int] NOT NULL,
	[Qty]				[bigint] NULL,
	[UOM]				[nvarchar](15) NULL,
	[TotalConv]			[int]NULL,
	[RefName]			[nvarchar](50) NULL,
	[RefNo]				[nvarchar](20) NULL,
	[RefName1]			[nvarchar](50) NULL,
	[RefNo1]			[nvarchar](20) NULL,
	[RefName2]			[nvarchar](50) NULL,
	[RefNo2]			[nvarchar](20) NULL,
	[price]				[money] NOT NULL,
	[discount]			[decimal](18, 4) NOT NULL,
	[amount]			[money] NOT NULL,
	[MonthCycle]		[int] NULL,
	[YearCycle]			[int] NULL,
	[IsSample]			[bit] NULL,
	[remarks]			[nvarchar](250) NULL,
	[cremarks]			[nvarchar](250) NULL,
	[carrier]			[nvarchar](60) NULL,
	[carrieradd]		[nvarchar](150) NULL,
	[trackingno]		[nvarchar](50) NULL,
	[arriveddate]		[datetime]NULL,	
	[receiveddate]		[datetime]NULL,
	[expirydate]		[datetime]NULL,
	[reason]			[nvarchar](100),
	[UserN]				[nvarchar](30) NOT NULL,
	[DateStamp]			[datetime] NULL,
	[Status]			[bit] NULL,
	[Qty2]				[int] DEFAULT ((0)),
	[discnt1]			[int] DEFAULT ((0)),
	[discnt2]			[int] DEFAULT ((0)),
	[discnt3]			[int] DEFAULT ((0)),
	[discnt4]			[int] DEFAULT ((0)),
	[discnt5]			[int] DEFAULT ((0))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GLOBAL_System]    Script Date: 1/20/2017 10:28:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GLOBAL_System](
	[SystemIndex]		[int] IDENTITY(1,1) NOT NULL,
	[MonthCycle]		[int] NOT NULL,
	[YearCycle]			[int] NOT NULL,
	[Status]			[bit] NOT NULL,
	[SysDate]			[datetime] NOT NULL,
	[DateInitialize]	[datetime] NOT NULL,
 CONSTRAINT [PK_GLOBAL_System] PRIMARY KEY CLUSTERED 
(
	[SystemIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GLOBAL_Tabulation]    Script Date: 1/20/2017 10:28:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GLOBAL_Tabulation](
	[ProdIndex]	[int] NOT NULL,
	[BIpc]			[decimal] DEFAULT ((0)),
	[STIpc]			[decimal] DEFAULT ((0)),	
	[RPpc]			[decimal] DEFAULT ((0)),	
	[iWhsepc]		[decimal] DEFAULT ((0)) ,
	[TotalBalpc]	[decimal] DEFAULT ((0)) ,
	[INVpc]			[decimal] DEFAULT ((0)) ,
	[INNpc]			[decimal] DEFAULT ((0)) ,	
	[STOpc]			[decimal] DEFAULT ((0)) ,	
	[oWhsepc]		[decimal] DEFAULT ((0)) ,
	[EndBalpc]		[decimal] DEFAULT ((0)) ,	
	[PhyCntpc]		[decimal] DEFAULT ((0)) ,	
	[HasPhyCnt]		[bit]	DEFAULT ((0)) ,
	[ADJINpc]		[decimal] DEFAULT ((0)) ,	
	[ADJOUTpc]		[decimal] DEFAULT ((0)) ,
	[todate_issues]		[decimal] DEFAULT ((0)) 
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GLOBAL_DTabulation]    Script Date: 1/20/2017 10:28:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GLOBAL_DTabulation](
	[ProdIndex]	[int] NOT NULL,
	[BIpc]			[decimal] DEFAULT ((0)) ,
	[STIpc]			[decimal] DEFAULT ((0)) ,	
	[RPpc]			[decimal] DEFAULT ((0)) ,	
	[oWhsepc]		[decimal] DEFAULT ((0)) ,
	[TotalBalpc]	[decimal] DEFAULT ((0)) ,
	[INVpc]			[decimal] DEFAULT ((0)) ,
	[INNpc]			[decimal] DEFAULT ((0)) ,	
	[STOpc]			[decimal] DEFAULT ((0)) ,	
	[EndBalpc]		[decimal] DEFAULT ((0)) ,	
	[PhyCntpc]		[decimal] DEFAULT ((0)) ,	
	[iWhsepc]		[decimal] DEFAULT ((0)) ,
	[HasPhyCnt]		[bit]	DEFAULT ((0)) ,
	[ADJINpc]		[decimal] DEFAULT ((0)) ,	
	[ADJOUTpc]		[decimal] DEFAULT ((0)) ,
	[todate_issues]		[decimal] DEFAULT ((0)) 
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GLOBAL_Tabulation]    Script Date: 1/20/2017 10:28:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REPORT_ElectronicStockard](
	[_ESIndex]		[bigint] IDENTITY(-2147483648,1) NOT NULL,
	[ProdIndex]		[int] NOT NULL,
	[docno]			[nvarchar](20) NOT NULL,
	[docdate]		[datetime] NOT NULL,	
	[refname]		[nvarchar](50) NULL,
	[refno]			[nvarchar](20) NULL,	
	[doctype]		[int] NOT NULL,
	[qtypc]			[bigint] not null,
	[BIpc]			[decimal] DEFAULT ((0)) ,	
	[STIpc]			[decimal] DEFAULT ((0)) ,	
	[RPpc]			[decimal] DEFAULT ((0)) ,	
	[oWhsepc]		[decimal] DEFAULT ((0)) ,	
	[TotalBalpc]	[decimal] DEFAULT ((0)) ,		
	[INVpc]			[decimal] DEFAULT ((0)) ,	
	[INNpc]			[decimal] DEFAULT ((0)) ,	
	[STOpc]			[decimal] DEFAULT ((0)) ,	
	[EndBalpc]		[decimal] DEFAULT ((0)) ,	
	[PhyCntpc]		[decimal] DEFAULT ((0)) ,	
	[iWhsepc]		[decimal] DEFAULT ((0)) ,
	[ADJINpc]		[decimal] DEFAULT ((0)) ,	
	[ADJOUTpc]		[decimal] DEFAULT ((0)) ,
	[MonthCycle]	[int] DEFAULT ((0)) ,
	[YearCycle]		[int] DEFAULT ((0)) ,	
	[HasPhyCnt]		[bit]	NOT NULL,
	[Remarks]		[nvarchar](250) NULL,
	[todate_issues]		[decimal] DEFAULT ((0)),
	[DateStamp]			[datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GLOBAL_Tabulation]    Script Date: 1/20/2017 10:28:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REPORT_DElectronicStockard](
	[_ESIndex]		[bigint] IDENTITY(-2147483648,1) NOT NULL,
	[ProdIndex]	[int] NOT NULL,
	[docno]			[nvarchar](20) NOT NULL,
	[docdate]		[datetime] NOT NULL,	
	[refname]		[nvarchar](50) NULL,
	[refno]			[nvarchar](20) NULL,	
	[doctype]		[int] NOT NULL,
	[qtypc]			[bigint] DEFAULT ((0)) ,
	[BIpc]			[decimal] DEFAULT ((0)) ,	
	[STIpc]			[decimal] DEFAULT ((0)) ,	
	[RPpc]			[decimal] DEFAULT ((0)) ,	
	[oWhsepc]		[decimal] DEFAULT ((0)) ,	
	[TotalBalpc]	[decimal] DEFAULT ((0)) ,		
	[INVpc]			[decimal] DEFAULT ((0)) ,	
	[INNpc]			[decimal] DEFAULT ((0)) ,	
	[STOpc]			[decimal] DEFAULT ((0)) ,	
	[EndBalpc]		[decimal] DEFAULT ((0)) ,	
	[PhyCntpc]		[decimal] DEFAULT ((0)) ,	
	[iWhsepc]		[decimal] DEFAULT ((0)) ,
	[ADJINpc]		[decimal] DEFAULT ((0)) ,	
	[ADJOUTpc]		[decimal] DEFAULT ((0)) ,	
	[MonthCycle]	[int] DEFAULT ((0)) ,
	[YearCycle]		[int] DEFAULT ((0)) ,	
	[HasPhyCnt]		[bit]	DEFAULT ((0)) ,
	[Remarks]		[nvarchar](250) NULL,
	[todate_issues]		[decimal] DEFAULT ((0)),
	[DateStamp]			[datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REPORT_Register]]    Script Date: 1/20/2017 10:28:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REPORT_Register](
	[_RegIndex]		[bigint] IDENTITY(-2147483648,1) NOT NULL,
	[DocNo]			[nvarchar](20) NOT NULL,
	[DocDate]		[nvarchar](21) NOT NULL,
	[DocType]		[int] NOT NULL,
	[SourceCode]	[nvarchar](20) NOT NULL,
	[RefName]		[nvarchar](50) NULL,
	[RefNo]			[nvarchar](20) NULL,
	[RefDate]		[nvarchar](21) NOT NULL,
	[SmanCode]		[nvarchar](10)  NULL,
	[PriceType]		[nvarchar](10) NULL,
	[ApprovedBy]	[nvarchar](50) NULL,
	[DeliverdBy]	[nvarchar](50) NULL,
	[CheckBy]		[nvarchar](50) NULL,
	[GrossAmt]		[money] NOT NULL,
	[DiscAmt]		[money] NOT NULL,
	[VatAmt]		[money] NOT NULL,
	[NetAmt]		[money] NOT NULL,
	[MonthCycle]	[int] NOT NULL,
	[YearCycle]		[int] NOT NULL,
	[Terms]			[nvarchar](10) NULL,
	[Zone]			[int]  NULL,
	[DelCode]		[nvarchar](10) NULL,
	[DelRemarks]	[nvarchar](250) NULL,
	[DelStat]		[bit] NULL,
	[RetCode]		[bit] NULL,
	[RetRemarks]	[nvarchar](250) NULL,
	[RetStat]		[bit] NULL,
	[Discnt01]		[int]  NULL,
	[Discnt02]		[int]  NULL,
	[Discnt03]		[int]  NULL,
	[Discnt04]		[int]  NULL,
	[Discnt05]		[int]  NULL,
	[Remarks]		[nvarchar](250) NULL,
	[RefName1]		[nvarchar](50) NULL,
	[RefName2]		[nvarchar](50) NULL,
	[RefName3]		[nvarchar](50) NULL,
	[RefNo1]		[nvarchar](20) NULL,
	[RefNo2]		[nvarchar](20) NULL,
	[RefNo3]		[nvarchar](20) NULL,
	[Totalpc]		[bigint] NOT NULL,
	[UserN]			[nvarchar](30) NOT NULL,
	[DateStamp]		[datetime] NOT NULL,
	[Status]		[bit] NOT NULL,
 CONSTRAINT [PK_REPORT_Register] PRIMARY KEY CLUSTERED 
(
	[_RegIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REPORT_Register]]    Script Date: 1/20/2017 10:28:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REPORT_DRegister](
	[_RegIndex]		[bigint] IDENTITY(-2147483648,1) NOT NULL,
	[DocNo]			[nvarchar](20) NOT NULL,
	[DocDate]		[nvarchar](21) NOT NULL,
	[DocType]		[int] NOT NULL,
	[SourceCode]	[nvarchar](20) NOT NULL,
	[RefName]		[nvarchar](50) NULL,
	[RefNo]			[nvarchar](20) NULL,
	[RefDate]		[nvarchar](21) NOT NULL,
	[SmanCode]		[nvarchar](10)  NULL,
	[PriceType]		[nvarchar](10) NULL,
	[ApprovedBy]	[nvarchar](50) NULL,
	[DeliverdBy]	[nvarchar](50) NULL,
	[CheckBy]		[nvarchar](50) NULL,
	[GrossAmt]		[money] NOT NULL,
	[DiscAmt]		[money] NOT NULL,
	[VatAmt]		[money] NOT NULL,
	[NetAmt]		[money] NOT NULL,
	[MonthCycle]	[int] NOT NULL,
	[YearCycle]		[int] NOT NULL,
	[Terms]			[nvarchar](10) NULL,
	[Zone]			[int]  NULL,
	[DelCode]		[nvarchar](10) NULL,
	[DelRemarks]	[nvarchar](250) NULL,
	[DelStat]		[bit] NULL,
	[RetCode]		[bit] NULL,
	[RetRemarks]	[nvarchar](250) NULL,
	[RetStat]		[bit] NULL,
	[Discnt01]		[int]  NULL,
	[Discnt02]		[int]  NULL,
	[Discnt03]		[int]  NULL,
	[Discnt04]		[int]  NULL,
	[Discnt05]		[int]  NULL,
	[Remarks]		[nvarchar](250) NULL,
	[RefName1]		[nvarchar](50) NULL,
	[RefName2]		[nvarchar](50) NULL,
	[RefName3]		[nvarchar](50) NULL,
	[RefNo1]		[nvarchar](20) NULL,
	[RefNo2]		[nvarchar](20) NULL,
	[RefNo3]		[nvarchar](20) NULL,
	[Totalpc]		[bigint] NOT NULL,
	[UserN]			[nvarchar](30) NOT NULL,
	[DateStamp]		[datetime] NOT NULL,
	[Status]		[bit] NOT NULL,
 CONSTRAINT [PK_REPORT_DRegister] PRIMARY KEY CLUSTERED 
(
	[_RegIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

--For Good Stocks
ALTER TABLE [dbo].[GLOBAL_ProductTrans]  WITH CHECK ADD  CONSTRAINT [FK_GLOBAL_ProductTrans_BASE_Customer] FOREIGN KEY([SourceIndex])
REFERENCES [dbo].[BASE_Customer] ([_CustIndex])
GO
ALTER TABLE [dbo].[GLOBAL_ProductTrans]  WITH CHECK ADD  CONSTRAINT [FK_GLOBAL_ProductTrans_GLOBAL_DocType] FOREIGN KEY([DocType])
REFERENCES [dbo].[GLOBAL_DocType] ([_DocTypeIndex])
GO
ALTER TABLE [dbo].[GLOBAL_ProductTrans] CHECK CONSTRAINT [FK_GLOBAL_ProductTrans_GLOBAL_DocType]
GO
ALTER TABLE [dbo].[GLOBAL_Tabulation]  WITH CHECK ADD  CONSTRAINT [FK_GLOBAL_Tabulation_BASE_Product] FOREIGN KEY([ProdIndex])
REFERENCES [dbo].[BASE_Product] ([_ProdIndex])
GO
ALTER TABLE [dbo].[GLOBAL_Tabulation] CHECK CONSTRAINT [FK_GLOBAL_Tabulation_BASE_Product]
GO
ALTER TABLE [dbo].[REPORT_Register]  WITH CHECK ADD  CONSTRAINT [FK_REPORT_Register_GLOBAL_DocType] FOREIGN KEY([DocType])
REFERENCES [dbo].[GLOBAL_DocType] ([_DocTypeIndex])
GO
ALTER TABLE [dbo].[REPORT_Register] CHECK CONSTRAINT [FK_REPORT_Register_GLOBAL_DocType]
GO

--For Damaged Stocks
ALTER TABLE [dbo].[GLOBAL_DProductTrans]  WITH CHECK ADD  CONSTRAINT [FK_GLOBAL_DProductTrans_BASE_Customer] FOREIGN KEY([SourceIndex])
REFERENCES [dbo].[BASE_Customer] ([_CustIndex])
GO
ALTER TABLE [dbo].[GLOBAL_DProductTrans]  WITH CHECK ADD  CONSTRAINT [FK_GLOBAL_DProductTrans_GLOBAL_DocType] FOREIGN KEY([DocType])
REFERENCES [dbo].[GLOBAL_DocType] ([_DocTypeIndex])
GO
ALTER TABLE [dbo].[GLOBAL_DProductTrans] CHECK CONSTRAINT [FK_GLOBAL_DProductTrans_GLOBAL_DocType]
GO
ALTER TABLE [dbo].[GLOBAL_DTabulation]  WITH CHECK ADD  CONSTRAINT [FK_GLOBAL_DTabulation_BASE_Product] FOREIGN KEY([ProdIndex])
REFERENCES [dbo].[BASE_Product] ([_ProdIndex])
GO
ALTER TABLE [dbo].[GLOBAL_DTabulation] CHECK CONSTRAINT [FK_GLOBAL_DTabulation_BASE_Product]
GO
ALTER TABLE [dbo].[REPORT_DRegister]  WITH CHECK ADD  CONSTRAINT [FK_REPORT_DRegister_GLOBAL_DocType] FOREIGN KEY([DocType])
REFERENCES [dbo].[GLOBAL_DocType] ([_DocTypeIndex])
GO
ALTER TABLE [dbo].[REPORT_DRegister] CHECK CONSTRAINT [FK_REPORT_DRegister_GLOBAL_DocType]
GO


INSERT INTO [GLOBAL_System] ([MonthCycle],[YearCycle],[Status],[SysDate],[DateInitialize]) VALUES (month(DATEADD(month,-1,GetDate())),YEAR(GetDate()),1,'20170316','99990101');
GO
