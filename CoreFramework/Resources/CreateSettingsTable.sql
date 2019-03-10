USE [dbSettings]
GO

/****** Object:  Table [dbo].[BASE_BRANCH]    Script Date: 8/19/2017 12:16:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BASE_BRANCH](
	[_BranchIndex] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[DateStamp] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[_BranchIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BASE_CLIENT]    Script Date: 8/19/2017 12:16:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BASE_CLIENT](
	[_ClientIndex] [int] IDENTITY(1,1) NOT NULL,
	[DBIndex] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[Address] [nvarchar](200) NULL,
	[Contact] [nvarchar](100) NULL,
	[BegBal_settings] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[_ClientIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BASE_DB]    Script Date: 8/19/2017 12:17:10 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BASE_DB](
	[_DBIndex] [int] IDENTITY(1,1) NOT NULL,
	[DBPath] [nvarchar](300) NULL,
	[DBName] [nvarchar](100) NULL,
	[LastBackUp] [datetime] NULL,
	[DBPathLastBackUp] [nvarchar](300) NULL,
	[LastUser] [nvarchar](30) NULL,
	[AppVersion] [nvarchar](10) NULL,
	[LogPath] [nvarchar](300) NULL,
	[LastTrans] [nchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[_DBIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BASE_DEPARTMENT]    Script Date: 8/19/2017 12:17:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BASE_DEPARTMENT](
	[_DEPTIndex] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[DEFAULTSOFT] [int] NOT NULL,
	[DateStamp] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[_DEPTIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BASE_SOFTWARE]    Script Date: 8/19/2017 12:17:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BASE_SOFTWARE](
	[_SOFTIndex] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[DateStamp] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[_SOFTIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BASE_User]    Script Date: 8/19/2017 12:17:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BASE_User](
	[_UserIndex] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](30) NOT NULL,
	[Password] [nvarchar](60) NULL,
	[AuthLevel] [int] NULL,
	[CompanyName] [nvarchar](100) NULL,
	[FullName] [nvarchar](64) NULL,
	[BranchIndex] [int] NOT NULL,
	[Gender] [nvarchar](6) NULL,
	[Soft1] [int] NULL,
	[Soft2] [int] NULL,
	[Soft3] [int] NULL,
	[Soft4] [int] NULL,
	[Soft5] [int] NULL,
	[UserType] [nvarchar](20) NOT NULL,
	[Status] [bit] NULL,
	[DateStamp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SET_CLIENTFORM]    Script Date: 8/19/2017 12:17:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SET_CLIENTFORM](
	[_FORMIndex] [int] IDENTITY(1,1) NOT NULL,
	[ClientIndex] [int] NULL,
	[FormName] [nvarchar](60) NULL,
	[IsPriceInputed] [bit] NULL,
	[HasLocation] [bit] NULL,
	[HasLotNo] [bit] NULL,
	[HasExpiry] [bit] NULL,
	[HasPriceType] [bit] NULL,
	[HasDiscount] [bit] NULL,
	[HasTerms] [bit] NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[_FORMIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_BASE_Login]    Script Date: 09/01/2017 16:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_BASE_AuthenticateTrans]
@UserType nvarchar(30),
@password nvarchar(60)
AS
SELECT        *
FROM          BASE_User
WHERE         (UserType = @UserType) AND (password = @password)
GO
/****** Object:  StoredProcedure [dbo].[sp_BASE_GetBranch]    Script Date: 8/19/2017 12:18:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_BASE_GetBranch]
	@BranchIndex nvarchar(30) = NULL
AS
BEGIN
	IF (@BranchIndex = NULL)
		BEGIN
		SELECT        *
		FROM          BASE_Branch	
		END
	ELSE
		BEGIN
		SELECT        *
		FROM          BASE_Branch
		WHERE         (_BranchIndex = @BranchIndex)
		END
END
/****** Object:  StoredProcedure [dbo].[sp_BASE_Login]    Script Date: 8/19/2017 12:18:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_BASE_Login]
@username nvarchar(30),
@password nvarchar(60)
AS
SELECT        *
FROM          BASE_User
WHERE         (username = @username) AND (password = @password)
GO
/****** Object:  StoredProcedure [dbo].[sp_GetData]    Script Date: 8/19/2017 12:18:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_GetData]
	@SQLCommand NVARCHAR(MAX)
AS
BEGIN
	exec sp_executesql @SQLcommand;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GLOBAL_getUser]    Script Date: 8/19/2017 12:19:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GLOBAL_getUser]
@username nvarchar(30) = NULL
AS
BEGIN
	IF (@username = NULL)
		BEGIN
		SELECT        *
		FROM          BASE_User		
		END
	ELSE
		BEGIN
		SELECT        *
		FROM          BASE_User
		WHERE         (username = @username)
		END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_RESETDB]    Script Date: 8/19/2017 12:19:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_RESETDB]
AS
	/* Drop all non-system stored procs */
	DECLARE @name VARCHAR(128)
	DECLARE @SQL VARCHAR(254)

	SELECT @name = (SELECT TOP 1 [name] FROM sysobjects WHERE [type] = 'P' AND category = 0 ORDER BY [name])

	WHILE @name is not null
	BEGIN
		SELECT @SQL = 'DROP PROCEDURE [dbo].[' + RTRIM(@name) +']'
		EXEC (@SQL)
		PRINT 'Dropped Procedure: ' + @name
		SELECT @name = (SELECT TOP 1 [name] FROM sysobjects WHERE [type] = 'P' AND category = 0 AND [name] > @name ORDER BY [name])
	END

	/* Drop all views */
	SET @name = ''
	SET @SQL = ''

	SELECT @name = (SELECT TOP 1 [name] FROM sysobjects WHERE [type] = 'V' AND category = 0 ORDER BY [name])

	WHILE @name IS NOT NULL
	BEGIN
		SELECT @SQL = 'DROP VIEW [dbo].[' + RTRIM(@name) +']'
		EXEC (@SQL)
		PRINT 'Dropped View: ' + @name
		SELECT @name = (SELECT TOP 1 [name] FROM sysobjects WHERE [type] = 'V' AND category = 0 AND [name] > @name ORDER BY [name])
	END

	/* Drop all functions */
	SET @name = ''
	SET @SQL = ''

	SELECT @name = (SELECT TOP 1 [name] FROM sysobjects WHERE [type] IN (N'FN', N'IF', N'TF', N'FS', N'FT') AND category = 0 ORDER BY [name])

	WHILE @name IS NOT NULL
	BEGIN
		SELECT @SQL = 'DROP FUNCTION [dbo].[' + RTRIM(@name) +']'
		EXEC (@SQL)
		PRINT 'Dropped Function: ' + @name
		SELECT @name = (SELECT TOP 1 [name] FROM sysobjects WHERE [type] IN (N'FN', N'IF', N'TF', N'FS', N'FT') AND category = 0 AND [name] > @name ORDER BY [name])
	END

	/* Drop all Foreign Key constraints */
	SET @name = ''
	DECLARE @constraint VARCHAR(254)
	SET @SQL = ''

	SELECT @name = (SELECT TOP 1 TABLE_NAME FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE constraint_catalog=DB_NAME() AND CONSTRAINT_TYPE = 'FOREIGN KEY' ORDER BY TABLE_NAME)

	WHILE @name is not null
	BEGIN
		SELECT @constraint = (SELECT TOP 1 CONSTRAINT_NAME FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE constraint_catalog=DB_NAME() AND CONSTRAINT_TYPE = 'FOREIGN KEY' AND TABLE_NAME = @name ORDER BY CONSTRAINT_NAME)
		WHILE @constraint IS NOT NULL
		BEGIN
			SELECT @SQL = 'ALTER TABLE [dbo].[' + RTRIM(@name) +'] DROP CONSTRAINT [' + RTRIM(@constraint) +']'
			EXEC (@SQL)
			PRINT 'Dropped FK Constraint: ' + @constraint + ' on ' + @name
			SELECT @constraint = (SELECT TOP 1 CONSTRAINT_NAME FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE constraint_catalog=DB_NAME() AND CONSTRAINT_TYPE = 'FOREIGN KEY' AND CONSTRAINT_NAME <> @constraint AND TABLE_NAME = @name ORDER BY CONSTRAINT_NAME)
		END
	SELECT @name = (SELECT TOP 1 TABLE_NAME FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE constraint_catalog=DB_NAME() AND CONSTRAINT_TYPE = 'FOREIGN KEY' ORDER BY TABLE_NAME)
	END

	/* Drop all Primary Key constraints */
	SET @name = ''
	SET @constraint = ''
	SET @SQL = ''

	SELECT @name = (SELECT TOP 1 TABLE_NAME FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE constraint_catalog=DB_NAME() AND CONSTRAINT_TYPE = 'PRIMARY KEY' ORDER BY TABLE_NAME)

	WHILE @name IS NOT NULL
	BEGIN
		SELECT @constraint = (SELECT TOP 1 CONSTRAINT_NAME FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE constraint_catalog=DB_NAME() AND CONSTRAINT_TYPE = 'PRIMARY KEY' AND TABLE_NAME = @name ORDER BY CONSTRAINT_NAME)
		WHILE @constraint is not null
		BEGIN
			SELECT @SQL = 'ALTER TABLE [dbo].[' + RTRIM(@name) +'] DROP CONSTRAINT [' + RTRIM(@constraint)+']'
			EXEC (@SQL)
			PRINT 'Dropped PK Constraint: ' + @constraint + ' on ' + @name
			SELECT @constraint = (SELECT TOP 1 CONSTRAINT_NAME FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE constraint_catalog=DB_NAME() AND CONSTRAINT_TYPE = 'PRIMARY KEY' AND CONSTRAINT_NAME <> @constraint AND TABLE_NAME = @name ORDER BY CONSTRAINT_NAME)
		END
	SELECT @name = (SELECT TOP 1 TABLE_NAME FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE constraint_catalog=DB_NAME() AND CONSTRAINT_TYPE = 'PRIMARY KEY' ORDER BY TABLE_NAME)
	END

	/* Drop all tables */
	SET @name = ''
	SET @SQL = ''

	SELECT @name = (SELECT TOP 1 [name] FROM sysobjects WHERE [type] = 'U' AND category = 0 ORDER BY [name])

	WHILE @name IS NOT NULL
	BEGIN
		SELECT @SQL = 'DROP TABLE [dbo].[' + RTRIM(@name) +']'
		EXEC (@SQL)
		PRINT 'Dropped Table: ' + @name
		SELECT @name = (SELECT TOP 1 [name] FROM sysobjects WHERE [type] = 'U' AND category = 0 AND [name] > @name ORDER BY [name])
	END
GO
INSERT INTO [BASE_BRANCH] ([Name],[DateStamp]) VALUES (N'CEBU','20170303');
GO
INSERT INTO [BASE_BRANCH] ([Name],[DateStamp]) VALUES (N'BACOLOD','20170303');
GO
INSERT INTO [BASE_BRANCH] ([Name],[DateStamp]) VALUES (N'CAGAYAN DE ORO','20170303');
GO
INSERT INTO [BASE_BRANCH] ([Name],[DateStamp]) VALUES (N'DAVAO','20170303');
GO
INSERT INTO [BASE_BRANCH] ([Name],[DateStamp]) VALUES (N'ILO-ILO','20170303');
GO
INSERT INTO [BASE_BRANCH] ([Name],[DateStamp]) VALUES (N'TACLOBAN','20170303');
GO
INSERT INTO [BASE_BRANCH] ([Name],[DateStamp]) VALUES (N'PANGASINAN','20170303');
GO
INSERT INTO [BASE_CLIENT] ([DBIndex],[Name],[Address],[Contact],[BegBal_settings]) VALUES (1,N'DongA',N'Cebu',N'125 1245',N'BOOK');
GO
INSERT INTO [BASE_CLIENT] ([DBIndex],[Name],[Address],[Contact],[BegBal_settings]) VALUES (2,N'Abbot',N'Cebu',N'125 1245',N'BOOK');
GO
INSERT INTO [BASE_DB] ([DBName],[DBPathLastBackUp],[AppVersion],[LogPath]) VALUES (N'DongA',N'//',N'v1.1.2',N'//');
GO
INSERT INTO [BASE_DB] ([DBName],[DBPathLastBackUp],[AppVersion],[LogPath]) VALUES (N'Abbot',N'//',N'v1.1.2',N'//');
GO
INSERT INTO [BASE_DEPARTMENT] ([Name],[DEFAULTSOFT],[DateStamp]) VALUES (N'I.T Department',1,'20170303');
GO
INSERT INTO [BASE_DEPARTMENT] ([Name],[DEFAULTSOFT],[DateStamp]) VALUES (N'Warehouse Department',2,'20170303');
GO
INSERT INTO [BASE_DEPARTMENT] ([Name],[DEFAULTSOFT],[DateStamp]) VALUES (N'SSC Department',3,'20170303');
GO
INSERT INTO [BASE_DEPARTMENT] ([Name],[DEFAULTSOFT],[DateStamp]) VALUES (N'Accounting Department',4,'20170303');
GO
INSERT INTO [BASE_DEPARTMENT] ([Name],[DEFAULTSOFT],[DateStamp]) VALUES (N'H.R Department',5,'20170303');
GO
INSERT INTO [BASE_SOFTWARE] ([Name],[DateStamp],[Status]) VALUES (N'DongA Inventory System','20170303',1);
GO
INSERT INTO [BASE_SOFTWARE] ([Name],[DateStamp],[Status]) VALUES (N'Vehicle Dispatch System','20170303',1);
GO
INSERT INTO [BASE_SOFTWARE] ([Name],[DateStamp],[Status]) VALUES (N'Truck Maintainance System','20170303',1);
GO
INSERT INTO [BASE_SOFTWARE] ([Name],[DateStamp],[Status]) VALUES (N'Warehouse Management System','20170303',1);
GO
INSERT INTO [BASE_SOFTWARE] ([Name],[DateStamp],[Status]) VALUES (N'Monthly Truck Utlitization System','20170728',1);
GO
INSERT INTO [BASE_SOFTWARE] ([Name],[DateStamp],[Status]) VALUES (N'Cambert Inventory System','20170728',1);
GO
INSERT INTO [BASE_SOFTWARE] ([Name],[DateStamp],[Status]) VALUES (N'Convoy Inventory System','20170728',1);
GO
INSERT INTO [BASE_SOFTWARE] ([Name],[DateStamp],[Status]) VALUES (N'Comark Inventory System','20170728',1);
GO
INSERT INTO [BASE_SOFTWARE] ([Name],[DateStamp],[Status]) VALUES (N'Dynamic Inventory System','20170728',1);
GO
INSERT INTO [BASE_SOFTWARE] ([Name],[DateStamp],[Status]) VALUES (N'JQL Inventory System','20170728',1);
GO
INSERT INTO [BASE_SOFTWARE] ([Name],[DateStamp],[Status]) VALUES (N'LESLIE Inventory System','20170728',1);
GO
INSERT INTO [BASE_User] ([Username],[Password],[AuthLevel],[CompanyName],[FullName],[BranchIndex],[Gender],[Soft1],[Soft2],[Soft3],[Soft4],[UserType],[Status],[DateStamp]) VALUES (N'ADMIN',N'42Vr+CYmTFCv4nWfNghVZg==',10,N'VGL InfoTech Group',N'Eddie Cabellon',1,N'MALE',1,2,3,5,N'Administrator',1,'20170303');
GO
INSERT INTO [BASE_User] ([Username],[Password],[AuthLevel],[CompanyName],[FullName],[BranchIndex],[Gender],[Soft1],[Soft2],[Soft3],[Soft4],[UserType],[Status],[DateStamp]) VALUES (N'ASSTBOS',N'42Vr+CYmTFCv4nWfNghVZg==',8,N'VGL InfoTech Group',N'Eddie Cabellon',1,N'MALE',1,2,3,5,N'Supervisor',1,'20170303');
GO
INSERT INTO [BASE_User] ([Username],[Password],[AuthLevel],[CompanyName],[FullName],[BranchIndex],[Gender],[Soft1],[Soft2],[Soft3],[Soft4],[UserType],[Status],[DateStamp]) VALUES (N'BOS',N'42Vr+CYmTFCv4nWfNghVZg==',8,N'VGL InfoTech Group',N'Eddie Cabellon',1,N'MALE',1,2,3,5,N'Supervisor',1,'20170303');
GO
INSERT INTO [BASE_User] ([Username],[Password],[AuthLevel],[CompanyName],[FullName],[BranchIndex],[Gender],[Soft1],[Soft2],[Soft3],[Soft4],[Soft5],[UserType],[Status],[DateStamp]) VALUES (N'DUMMY',N'nIsLyMOVmF/cSoi/5yn3aw==',1,N'VGL InfoTech Group',N'Dummy',1,N'MALE',1,2,3,4,5,N'Dummy',1,'20170303');
GO






