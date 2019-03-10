/****** Object:  StoredProcedure [dbo].[sp_BASE_getSalesMan]    Script Date: 3/20/2017 1:37:44 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Get SalesMan details
-- =============================================
CREATE PROCEDURE [dbo].[sp_BASE_GetSalesMan]
	@smanindex		int=0
AS
BEGIN
    -- Insert statements for procedure here
	IF (@smanindex = 0) 
		BEGIN
		SELECT * FROM BASE_SalesMan WHERE Status = 1
		END
	ELSE
		BEGIN
		SELECT * FROM BASE_SalesMan WHERE _smanindex = @smanindex
		END
END

GO
/****** Object:  StoredProcedure [dbo].[sp_BASE_getCategory]    Script Date: 3/16/2017 12:03:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Get the category details
-- =============================================
CREATE PROCEDURE [dbo].[sp_BASE_GetCategory]
	@categoryid		int=0
AS
BEGIN
    -- Insert statements for procedure here
	IF (@categoryid = 0) 
		BEGIN
		SELECT * FROM BASE_Category WHERE Status = 1
		END
	ELSE
		BEGIN
		SELECT * FROM BASE_Category WHERE categoryid = @categoryid
		END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_BASE_getCustomer]    Script Date: 3/16/2017 12:03:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Get the customer details
-- =============================================
CREATE PROCEDURE [dbo].[sp_BASE_GetCustomer]
	@custindex		int=0
AS
BEGIN
    -- Insert statements for procedure here
	IF (@custindex = 0) 
		BEGIN
		SELECT * FROM BASE_Customer WHERE Status = 1
		END
	ELSE
		BEGIN
		SELECT * FROM BASE_Customer WHERE _custindex = @custindex
		END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_BASE_getDeliveryAddress]    Script Date: 3/16/2017 12:03:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Get the customer delivery address details
-- =============================================
CREATE PROCEDURE [dbo].[sp_BASE_GetDeliveryAddress]
	@deladdressindex		int=0
AS
BEGIN
    -- Insert statements for procedure here
	IF (@deladdressindex = 0) 
		BEGIN
		SELECT * FROM BASE_DeliveryAddress WHERE Status = 1
		END
	ELSE
		BEGIN
		SELECT * FROM BASE_DeliveryAddress WHERE _deladdressindex = @deladdressindex
		END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_BASE_employee]    Script Date: 3/16/2017 12:03:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Get the employee details
-- =============================================
CREATE PROCEDURE [dbo].[sp_BASE_Getemployee]
	@empindex		int=0
AS
BEGIN
    -- Insert statements for procedure here
	IF (@empindex = 0) 
		BEGIN
		SELECT * FROM BASE_Employee WHERE Status = 1
		END
	ELSE
		BEGIN
		SELECT * FROM BASE_Employee WHERE _empindex = @empindex
		END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_BASE_getItemPrice]    Script Date: 3/16/2017 12:03:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Get the Product Pricing
-- =============================================
CREATE PROCEDURE [dbo].[sp_BASE_GetItemPrice]
	@prodindex		int=0,
	@priceindex		int=0,
	@UOM			int
AS
BEGIN
    -- Insert statements for procedure here
	IF (@prodindex = 0 and @priceindex = 0) 
		BEGIN
		SELECT * FROM BASE_ItemPrice WHERE STATUS = 1
		END
	ELSE
		BEGIN
			DECLARE @FOUND	INT
			SELECT @FOUND = count(*) FROM BASE_ItemPrice WHERE ProdIndex = @prodindex AND priceindex = @priceindex AND uomindex = @UOM
			IF @FOUND >=1 
			BEGIN
				SELECT [unitprice] FROM BASE_ItemPrice WHERE ProdIndex = @prodindex AND priceindex = @priceindex AND uomindex = @UOM
			END
			ELSE
			BEGIN
				SELECT 0 AS unitprice
			END
		END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_BASE_getItemPrice]    Script Date: 3/16/2017 12:03:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Get the Product Pricing
-- =============================================
CREATE PROCEDURE [dbo].[sp_BASE_GetAllUOMPrice]
	@prodindex		int,
	@UOM			int
AS
BEGIN
	SELECT * FROM BASE_ItemPrice WHERE ProdIndex = @prodindex AND uomindex = @UOM
END
GO
/****** Object:  StoredProcedure [dbo].[sp_BASE_getPriceType]    Script Date: 3/16/2017 12:03:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Get the Product Price Type
-- =============================================
CREATE PROCEDURE [dbo].[sp_BASE_GetPriceType]
	@priceindex		int=0
AS
BEGIN
    -- Insert statements for procedure here
	IF (@priceindex = 0) 
		BEGIN
		SELECT * FROM BASE_PriceType WHERE STATUS = 1
		END
	ELSE
		BEGIN
		SELECT * FROM BASE_PriceType WHERE _priceindex = @priceindex		
		END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_BASE_GetProduct]    Script Date: 7/5/2017 12:06:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Get the Product Details
-- =============================================
CREATE PROCEDURE [dbo].[sp_BASE_GetProduct]
	@prodindex		int=0,
	@usecode		int=0
AS
BEGIN
    -- Insert statements for procedure here
	IF (@prodindex = 0) 
		BEGIN
			IF (@usecode = 0)
			BEGIN
				SELECT * FROM BASE_Product WHERE productcode <> '' AND STATUS = 1
			END
			ELSE IF (@usecode = 1)
			BEGIN
				SELECT * FROM BASE_Product WHERE ccode <> '' AND STATUS = 1
			END
			ELSE IF (@usecode = 2)
			BEGIN
				SELECT * FROM BASE_Product WHERE scode <> '' AND STATUS = 1
			END
		END
	ELSE
		BEGIN
		SELECT * FROM BASE_Product WHERE _prodindex = @prodindex
		END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_BASE_getRoute]    Script Date: 3/16/2017 12:03:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Get the Route details
-- =============================================
CREATE PROCEDURE [dbo].[sp_BASE_GetRoute]
	@routeindex		int=0
AS
BEGIN
    -- Insert statements for procedure here
	IF (@routeindex = 0) 
		BEGIN
		SELECT * FROM BASE_Route WHERE STATUS = 1
		END
	ELSE
		BEGIN
		SELECT * FROM BASE_Route WHERE _routeindex = @routeindex		
		END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_BASE_getUOM]    Script Date: 3/16/2017 12:03:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Get the UOM details
-- =============================================
CREATE PROCEDURE [dbo].[sp_BASE_GetUOM]
	@ProdIndex		int,
	@UOM			nvarchar(20) = '',
	@UOMOnly		bit = 0
AS
BEGIN
    -- Insert statements for procedure here
IF @UOMOnly = 0 
BEGIN
    IF @UOM = ''
    BEGIN
		SELECT * FROM BASE_UOM where ProdIndex = @ProdIndex AND status = 1 order by uom
	END
	ELSE
	BEGIN
		SELECT * FROM BASE_UOM where ProdIndex = @ProdIndex AND status = 1 AND uom = @UOM order by uom
	END
END
ELSE
BEGIN
    IF @UOM = ''
    BEGIN
		SELECT DISTINCT UOM FROM BASE_UOM where ProdIndex = @ProdIndex AND status = 1 order by uom
	END
	ELSE
	BEGIN
		SELECT DISTINCT UOM FROM BASE_UOM where ProdIndex = @ProdIndex AND status = 1 AND uom = @UOM order by uom
	END
END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_BASE_getAllUOM]    Script Date: 05/13/2017 22:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Get the All UOM
-- =============================================
CREATE PROCEDURE [dbo].[sp_BASE_GetAllUOM]
	@Dup	bit = 0
AS
BEGIN
	IF @Dup = 0
	BEGIN
		SELECT * FROM BASE_UOM order by uom
	END
	ELSE
	BEGIN
		SELECT DISTINCT UOM FROM BASE_UOM order by uom
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GLOBAL_getDocType]    Script Date: 3/17/2017 3:17:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Get the Document details
-- =============================================
CREATE PROCEDURE [dbo].[sp_GLOBAL_GetDocType]
	@DocTypeindex		int=0
AS
BEGIN
    -- Insert statements for procedure here
	IF (@DocTypeindex = 0) 
		BEGIN
		SELECT * FROM GLOBAL_DocType WHERE Status = 1 
		END
	ELSE
		BEGIN
		SELECT * FROM GLOBAL_DocType WHERE _DocTypeIndex = @DocTypeindex
		END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GLOBAL_GetProductTrans]    Script Date: 7/18/2017 6:31:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Get the Document details
-- =============================================
CREATE PROCEDURE [dbo].[sp_GLOBAL_GetProductTrans]
(	@doctype		int=0,
	@docno			nvarchar(20),
	@isG			bit = 1
)
AS
IF @isG = 1
BEGIN
	SELECT PR.DocNo, PR.RefName, PR.RefNo, PR.RefName1, PR.RefNo1, PR.RefName2, PR.RefNo2, PR.DocDate, C.CustomerCode, C.[name], C.[address], C.[tinno], PR.productcode, P.description, PR.[Qty], PR.[UOM] , PR.[price], PR.[amount], PR.[discount], C.[terms] , PR.[remarks], PR.[reason],PR.[carrier],PR.[doctype],PR.[UserN] AS [EncodedBy],PR.ProdIndex,PR.expirydate AS [expiry],PR.Qty2,PR.discnt1,PR.discnt2,PR.discnt3,PR.discnt4,PR.discnt5
	FROM GLOBAL_ProductTrans PR JOIN BASE_Customer C ON PR.SourceIndex = C._custindex JOIN BASE_Product P ON P._Prodindex = PR.ProdIndex WHERE PR.doctype = @doctype AND PR.docno = @docno	
END
ELSE
BEGIN
	SELECT PR.DocNo, PR.RefName, PR.RefNo, PR.RefName1, PR.RefNo1, PR.RefName2, PR.RefNo2, PR.DocDate, C.CustomerCode, C.[name], C.[address], C.[tinno], PR.productcode, P.description, PR.[Qty], PR.[UOM] , PR.[price], PR.[amount], PR.[discount], C.[terms] , PR.[remarks], PR.[reason],PR.[carrier],PR.[doctype],PR.[UserN] AS [EncodedBy],PR.ProdIndex,PR.expirydate AS [expiry],PR.Qty2,PR.discnt1,PR.discnt2,PR.discnt3,PR.discnt4,PR.discnt5
	FROM GLOBAL_DProductTrans PR JOIN BASE_Customer C ON PR.SourceIndex = C._custindex JOIN BASE_Product P ON P._Prodindex = PR.ProdIndex WHERE PR.doctype = @doctype AND PR.docno = @docno	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GLOBAL_getTabulation]    Script Date: 3/17/2017 3:53:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Get the Document details
-- =============================================
CREATE PROCEDURE [dbo].[sp_GLOBAL_GetTabulation]
(	@prodindex		int=0,
	@isG			bit=1)
AS
IF @isG = 1
BEGIN
	IF (@prodindex = 0) 
		BEGIN
		SELECT * FROM GLOBAL_Tabulation
		END
	ELSE
		BEGIN
		SELECT * FROM GLOBAL_Tabulation WHERE ProdIndex = @prodindex
		END
END
ELSE
BEGIN
	IF (@prodindex = 0) 
		BEGIN
		SELECT * FROM GLOBAL_DTabulation
		END
	ELSE
		BEGIN
		SELECT * FROM GLOBAL_DTabulation WHERE ProdIndex = @prodindex
		END
END

GO
/****** Object:  StoredProcedure [dbo].[sp_BASE_getSystem]    Script Date: 3/16/2017 12:03:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Get the System details
-- =============================================
CREATE PROCEDURE [dbo].[sp_GLOBAL_GetSystem]
	@systemindex		int=0
AS
BEGIN
	IF (@systemindex = 0) 
		BEGIN
		SELECT * FROM GLOBAL_System WHERE Status = 1
		END
	ELSE
		BEGIN
		SELECT * FROM GLOBAL_System WHERE systemindex = @systemindex
		END
END
GO
/****** Object:  StoredProcedure sp_GLOBAL_GetTransactionMast    Script Date: 3/23/2017 12:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Get the TRANSACTION MASTER
-- =============================================
CREATE PROCEDURE [dbo].[sp_GLOBAL_GetTransactionMast]
(	@DocType	INT,
	@isG		bit=1
)	
AS
IF @isG = 1
BEGIN
	SELECT DISTINCT DocNo as [TransNo] FROM GLOBAL_ProductTrans WHERE DocType = @DocType
END
ELSE
BEGIN
	SELECT DISTINCT DocNo as [TransNo] FROM GLOBAL_DProductTrans WHERE DocType = @DocType
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GLOBAL_GetProductTobeReturn]    Script Date: 6/28/2017 5:16:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Get the Product Sales to be Return details
-- =============================================
CREATE PROCEDURE [dbo].[sp_GLOBAL_GetProductTobeReturn] 
(	
    @doctype		int=0,
	@docno			nvarchar(20),
	@isG			bit = 1
)
AS
IF @isG = 1
BEGIN
	BEGIN
	SELECT   P.*,PR.*
	FROM GLOBAL_ProductTrans PR JOIN BASE_Product P ON P._Prodindex = PR.ProdIndex WHERE PR.doctype = @doctype AND PR.DocNo = @docno
	END
END
ELSE
BEGIN
	BEGIN
	SELECT   P.*,PR.*
	FROM GLOBAL_DProductTrans PR JOIN BASE_Product P ON P._Prodindex = PR.ProdIndex WHERE PR.doctype = @doctype AND PR.DocNo = @docno
	END
END
GO
 /****** Object:  StoredProcedure [dbo].[sp_GLOBAL_getLatestInitializeCycle]    Script Date: 03/19/2017 09:47:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Generate Stock position report
-- =============================================				 
CREATE PROCEDURE [dbo].[sp_GLOBAL_GetLatestInitializeCycle]
AS
	DECLARE @SystemIndex	INT
	SELECT @SystemIndex = MAX(SystemIndex) FROM GLOBAL_System
	SELECT MonthCycle, YearCycle FROM GLOBAL_System WHERE  SystemIndex = @SystemIndex
GO
/****** Object:  StoredProcedure [dbo].[sp_REPORT_GetAllDocNo]    Script Date: 4/3/2017 11:07:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Get all Document Number for the respective Monthl cycle
-- =============================================
CREATE PROCEDURE [dbo].[sp_REPORT_GetAllDocNo]
	@DocType			int=0,
	@MonthCycle			int,
	@YearCycle			int,
	@isIncoming			int=0,
	@isG				bit=1
AS
BEGIN
	IF @isG = 1 
	BEGIN
		IF @isIncoming = 1
		BEGIN
			SELECT R.DocNo, R.RefName, R.RefNo, R.RefDate, C.[Name],R.Remarks  FROM [REPORT_Register] R JOIN BASE_Customer C ON R.SourceCode = C._CustIndex WHERE R.MonthCycle = @MonthCycle AND R.YearCycle = @YearCycle AND (R.DocType = 1 OR R.DocType = 4 OR R.DocType = 13 OR R.DocType =14)
		END
		ELSE
		BEGIN
			SELECT R.DocNo, R.RefName, R.RefNo, R.RefDate, C.[Name]  FROM [REPORT_Register] R JOIN BASE_Customer C ON R.SourceCode = C._CustIndex WHERE R.MonthCycle = @MonthCycle AND R.YearCycle = @YearCycle AND R.DocType = @DocType
		END
	END
	ELSE
	BEGIN
		SELECT R.DocNo, R.RefName, R.RefNo, R.RefDate, C.[Name],R.Remarks  FROM [REPORT_DRegister] R JOIN BASE_Customer C ON R.SourceCode = C._CustIndex WHERE R.MonthCycle = @MonthCycle AND R.YearCycle = @YearCycle AND R.DocType = @DocType
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LOGS_getLogsReport]    Script Date: 4/3/2017 11:07:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Get all Logs for the respective Monthl cycle
-- =============================================
CREATE PROCEDURE [dbo].[sp_LOGS_getLogsReport]
	@MonthCycle		int,
	@YearCycle		int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT D.Name AS [DocName]
      ,L.[DocNo]
      ,L.[DocDate]
	  ,(P.[productcode] + '  ' + P.[Description]) AS [Product]
      ,L.[OriginalValue]
      ,L.[ReviseValue]
      ,L.[UserN]
      ,L.[UserNAuth]
      ,L.[remarks]
      ,L.[reason]
  FROM [LOGS_Product] L JOIN [BASE_PRODUCT] P ON L.ProdIndex = P._ProdIndex JOIN [GLOBAL_DocType] D ON L.DocType = D._DocTypeIndex
  WHERE L.MonthCycle = @MonthCycle AND L.YearCycle = @YearCycle
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LOGS_getLogsReport]    Script Date: 4/3/2017 11:07:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Get all Logs for the respective Monthl cycle
-- =============================================
CREATE PROCEDURE [dbo].[sp_LOGS_getLogsTransactionReport]
	@DocNo		nvarchar(10),
	@DocType	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT D.Name AS [DocName]
      ,L.[DocNo]
      ,L.[DocDate]
	  ,(P.[productcode] + '  ' + P.[Description]) AS [Product]
      ,L.[OriginalValue]
      ,L.[ReviseValue]
      ,L.[UserN]
      ,L.[UserNAuth]
      ,L.[remarks]
      ,L.[reason]
  FROM [LOGS_Product] L JOIN [BASE_PRODUCT] P ON L.ProdIndex = P._ProdIndex JOIN [GLOBAL_DocType] D ON L.DocType = D._DocTypeIndex
  WHERE L.DocType = @DocType AND L.DocNo = @DocNo
END
GO
/****** Object:  StoredProcedure [dbo].[sp_RemoveAll_SP]    Script Date: 4/3/2017 11:07:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Get all Logs for the respective Monthl cycle
-- =============================================
CREATE PROCEDURE [dbo].[sp_RemoveAll_SP]
AS
BEGIN
	declare @sql_command nvarchar(max);
	set @sql_command = '';

	SELECT @sql_command = @sql_command + 'DROP PROCEDURE [' + SCHEMA_NAME(p.schema_id) + '].[' + p.NAME + ']' + CHAR(13) 
	FROM sys.procedures p
	--WHERE '[' + p.NAME + ']' != '[sp_RemoveAll_SP]'

	print @sql_command;
	exec sp_executesql @sql_command;

	set @sql_command = '';
	SELECT @sql_command = @sql_command + 'DROP FUNCTION [dbo].[' + p.NAME + ']' + CHAR(13) 
	from sysobjects p where type = 'FN'

	print @sql_command;
	exec sp_executesql @sql_command;
END
GO

