/****** Object:  StoredProcedure [dbo].[sp_insertLOGS]    Script Date: 3/17/2017 3:27:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Insert Logs for revise quantity and amount
-- =============================================
CREATE PROCEDURE [dbo].[sp_LOGS_InsertLOGS]
(	@ProdIndex			[int],
	@DocType			[int],
	@DocNo				[nvarchar](20),
	@DocDate			[datetime],
	@OriginalValue		[money],
	@ReviseValue		[money],
	@MonthCycle			[int],
	@YearCycle			[int],
	@UserN				[nvarchar](30),
	@UserNAuth			[nvarchar](30),
	@DateStamp			[datetime],
	@remarks			[nvarchar](250),
	@reason				[nvarchar](250),
	@Status				[bit]
)
AS
BEGIN
	INSERT INTO [dbo].[LOGS_Product]
	(	ProdIndex,
		DocType,
		DocNo,
		DocDate,
		OriginalValue,
		ReviseValue,
		MonthCycle,
		YearCycle,
		UserN,
		UserNAuth,
		DateStamp,
		remarks,
		reason,
		Status
	)
	Values
	(	@ProdIndex,
		@DocType,
		@DocNo,
		@DocDate,
		@OriginalValue,
		@ReviseValue,
		@MonthCycle,
		@YearCycle,
		@UserN,
		@UserNAuth,
		@DateStamp,
		@remarks,
		@reason,
		@Status
	)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_BASE_ADDUOM]    Script Date: 3/17/2017 3:27:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Add Unit of Measure
-- =============================================
CREATE PROCEDURE [dbo].[sp_BASE_InsertUOM]
	@UOMIndex int = 0,
	@ProdIndex int,
	@uom varchar(20),
	@barcode varchar(30),
	@qty int,
	@datestamp datetime,
	@status bit
AS
BEGIN
	DECLARE @Found	INT
	SELECT @Found = COUNT(*) FROM  [dbo].[BASE_UOM] WHERE [_UOMIndex] = @UOMIndex
	IF @Found >= 1 
	BEGIN
		UPDATE [dbo].[BASE_UOM]
		SET [ProdIndex] = @ProdIndex
			,[uom] = @uom
			,[qty] = @qty
			,[barcode] = @barcode
			,[datestamp] = @datestamp
			,[status] = @status
		WHERE [_UOMIndex] = @UOMIndex
	END
	ELSE
	BEGIN
		INSERT INTO [dbo].[BASE_UOM]
			([ProdIndex]
			,[uom]
			,[qty]
			,[barcode]
			,[datestamp]
			,[status])
		VALUES
			(@ProdIndex
			,@uom
			,@qty
			,@barcode
			,@datestamp
			,@status)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GLOBAL_updateDocType]    Script Date: 3/17/2017 3:27:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Add Product Price
-- =============================================
CREATE PROCEDURE [dbo].[sp_BASE_InsertItemPrice]
	@ItemPIndex		int = 0,
	@UOMIndex		int,
	@ProdIndex		int,
	@PriceIndex		int,
	@unitprice		decimal(18,4),
	@datestamp		datetime,
	@status			bit,
	@UOM			varchar(20)
AS
BEGIN
	DECLARE @Found	INT
	DECLARE @UOMi INT
	SELECT @UOMi = _UOMIndex FROM  [dbo].[BASE_UOM] WHERE [ProdIndex] = @ProdIndex AND [uom] = @uom
	SELECT @Found = COUNT(*) FROM  [dbo].[BASE_ItemPrice] WHERE [_ItemPIndex] = @ItemPIndex
	IF @Found >= 1 
	BEGIN
		UPDATE [dbo].[BASE_ItemPrice]
		SET [ProdIndex] = @ProdIndex
			,[PriceIndex] = @PriceIndex
			,[UOMIndex] = @UOMIndex
			,[UnitPrice] = @UnitPrice
			,[datestamp] = @datestamp
			,[status] = @status
		WHERE [_ItemPIndex] = @ItemPIndex
	END
	ELSE
	BEGIN
		INSERT INTO [dbo].[BASE_ItemPrice]
			([ProdIndex]
			,[PriceIndex]
			,[UOMIndex]
			,[UnitPrice]
			,[datestamp]
			,[status])
		VALUES
			(@ProdIndex
			,@PriceIndex
			,@UOMi
			,@UnitPrice
			,@datestamp
			,@status)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GLOBAL_updateDocType]    Script Date: 3/17/2017 3:27:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Update Document No of the Document Type
-- =============================================
CREATE PROCEDURE [dbo].[sp_GLOBAL_UpdateDocType]
	@DocTypeindex		int,
	@DocNo				nvarchar(10)
AS
BEGIN
	UPDATE [dbo].[GLOBAL_DocType]
	SET [docno] = @DocNo
	WHERE _DocTypeindex = @DocTypeindex
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GLOBAL_InsertProductTrans]    Script Date: 3/16/2017 12:03:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Insert value into the ProductTrans details
-- =============================================				 
CREATE PROCEDURE [dbo].[sp_GLOBAL_InsertProductTrans]
(
	@_ProdIndex			int,
	@ProductCode		nvarchar(50),
	@DocType			int,
	@DocNo				nvarchar(20),
	@DocDate			datetime,
	@SourceIndex		int,
	@Qty				bigint,
	@UOM				nvarchar(15),
	@price				money,
	@discount			decimal(18, 4),
	@amount				money,
	@TotalConv			int,
	@RefName			nvarchar(50),
	@RefNo				nvarchar(20),
	@RefName1			nvarchar(50)=null,
	@RefNo1				nvarchar(20)=null,
	@RefName2			nvarchar(50)=null,
	@RefNo2				nvarchar(20)=null,
	@MonthCycle			int,
	@YearCycle			int,
	@IsSample			bit = 0,
	@Remarks			nvarchar(250)=null,
	@cremarks			nvarchar(250)= NULL,
	@carrier			nvarchar(60)= NULL,
	@carrieradd			nvarchar(150)= NULL,
	@trackingno			nvarchar(50)= NULL,
	@arriveddate		datetime= NULL,
	@receiveddate		datetime= NULL,
	@expirydate			datetime= NULL,
	@reason				nvarchar(100)=null,
	@UserN				nvarchar(30)=null,
	@DateStamp			datetime,
	@Status				bit = 1,
	@isG				bit = 1,
	@discnt1			int,
	@discnt2			int,
	@discnt3			int,
	@discnt4			int,
	@discnt5			int
)
AS
IF @isG = 1
BEGIN
	INSERT INTO [dbo].[GLOBAL_ProductTrans]
	(	 [ProdIndex]
		,[ProductCode]
		,[DocType]
		,[DocNo]
		,[DocDate]
		,[SourceIndex]
		,[Qty]
		,[UOM]
		,[price]
		,[discount]
		,[amount]
		,[TotalConv]
		,[RefName]
		,[RefNo]
		,[RefName1]
		,[RefNo1]
		,[RefName2]
		,[RefNo2]
		,[MonthCycle]
		,[YearCycle]
		,[IsSample]
		,[remarks]
		,[cremarks]
		,[carrier]
		,[carrieradd]
		,[trackingno]
		,[arriveddate]
		,[receiveddate]
		,[expirydate]
		,[reason]
		,[UserN]
		,[DateStamp]
		,[Status]
		,[Qty2]
		,[discnt1]
		,[discnt2]
		,[discnt3]
		,[discnt4]
		,[discnt5]
	)
	VALUES
	(	@_ProdIndex
		,@ProductCode
		,@DocType
		,@DocNo
		,@DocDate
		,@SourceIndex
		,@Qty
		,@UOM
		,@price
		,@discount
		,@amount
		,@TotalConv
		,@RefName
		,@RefNo
		,@RefName1
		,@RefNo1
		,@RefName2
		,@RefNo2
		,@MonthCycle
		,@YearCycle
		,@IsSample
		,@Remarks
		,@cremarks
		,@carrier
		,@carrieradd
		,@trackingno
		,@arriveddate
		,@receiveddate
		,@expirydate
		,@reason
		,@UserN
		,@DateStamp
		,@Status	
		,0
		,@discnt1
		,@discnt2
		,@discnt3
		,@discnt4
		,@discnt5
	)
END
ELSE
BEGIN
	INSERT INTO [dbo].[GLOBAL_DProductTrans]
	(	 [ProdIndex]
		,[ProductCode]
		,[DocType]
		,[DocNo]
		,[DocDate]
		,[SourceIndex]
		,[Qty]
		,[UOM]
		,[price]
		,[discount]
		,[amount]
		,[TotalConv]
		,[RefName]
		,[RefNo]
		,[RefName1]
		,[RefNo1]
		,[RefName2]
		,[RefNo2]
		,[MonthCycle]
		,[YearCycle]
		,[IsSample]
		,[remarks]
		,[cremarks]
		,[carrier]
		,[carrieradd]
		,[trackingno]
		,[arriveddate]
		,[receiveddate]
		,[expirydate]
		,[reason]
		,[UserN]
		,[DateStamp]
		,[Status]
		,[Qty2]
		,[discnt1]
		,[discnt2]
		,[discnt3]
		,[discnt4]
		,[discnt5]
	)
	VALUES
	(	@_ProdIndex
		,@ProductCode
		,@DocType
		,@DocNo
		,@DocDate
		,@SourceIndex
		,@Qty
		,@UOM
		,@price
		,@discount
		,@amount
		,@TotalConv
		,@RefName
		,@RefNo
		,@RefName1
		,@RefNo1
		,@RefName2
		,@RefNo2
		,@MonthCycle
		,@YearCycle
		,@IsSample
		,@Remarks
		,@cremarks
		,@carrier
		,@carrieradd
		,@trackingno
		,@arriveddate
		,@receiveddate
		,@expirydate
		,@reason
		,@UserN
		,@DateStamp
		,@Status	
		,0
		,@discnt1
		,@discnt2
		,@discnt3
		,@discnt4
		,@discnt5
	)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GLOBAL_upsertTabulation]    Script Date: 3/22/2017 12:31:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Update/Insert value into the Product Tabulation
-- =============================================
CREATE PROCEDURE [dbo].[sp_GLOBAL_UpsertTabulation]
(	@_ProdIndex		int
   ,@BIpc			bigint
   ,@STIpc			bigint
   ,@RPpc			bigint
   ,@oWhsepc		bigint
   ,@INVpc			bigint
   ,@INNpc			bigint
   ,@STOpc			bigint
   ,@PhyCntpc		bigint
   ,@iWhsepc		bigint
   ,@ADJINpc		bigint
   ,@ADJOUTpc		bigint
   ,@HasPhyCnt		bit
   ,@isG			bit = 1
)
AS
	DECLARE @Found	INT
IF @isG = 1
BEGIN
	SELECT @Found = COUNT(*) FROM  [dbo].[GLOBAL_Tabulation] WHERE ProdIndex = @_Prodindex
	IF @Found >= 1
		BEGIN
			UPDATE [dbo].[GLOBAL_Tabulation]
			SET 
			  [BIpc] = @BIpc
			  ,[STIpc] = @STIpc
			  ,[RPpc] = @RPpc
			  ,[oWhsepc] = @oWhsepc
			  ,[iWhsepc] = @iWhsepc
			  ,[INVpc] = @INVpc
			  ,[INNpc] = @INNpc
			  ,[STOpc] = @STOpc
			  ,[PhyCntpc] = @PhyCntpc
			  ,[ADJINpc] = @ADJINpc
			  ,[ADJOUTpc] = @ADJOUTpc
			WHERE [ProdIndex] = @_ProdIndex
		END
	ELSE
		BEGIN
			INSERT INTO [dbo].[GLOBAL_Tabulation]
			   ([ProdIndex]
			   ,[BIpc]
			   ,[STIpc]
			   ,[RPpc]
			   ,[oWhsepc]
			   ,[iWhsepc]
			   ,[TotalBalpc]
			   ,[INVpc]
			   ,[INNpc]
			   ,[STOpc]
			   ,[EndBalpc]
			   ,[PhyCntpc]
			   ,[ADJINpc]
			   ,[ADJOUTpc] 
			   ,[HasPhyCnt])
			 VALUES
			   (@_ProdIndex
			   ,@BIpc
			   ,@STIpc
			   ,@RPpc
			   ,@oWhsepc
			   ,@iWhsepc
			   ,0
			   ,@INVpc
			   ,@INNpc
			   ,@STOpc
			   ,0
			   ,@PhyCntpc
			   ,@ADJINpc
			   ,@ADJOUTpc
			   ,@HasPhyCnt)	
		END 
END
ELSE
BEGIN
	SELECT @Found = COUNT(*) FROM  [dbo].[GLOBAL_DTabulation] WHERE ProdIndex = @_Prodindex
	IF @Found >= 1
		BEGIN
			UPDATE [dbo].[GLOBAL_DTabulation]
			SET 
			  [BIpc] = @BIpc
			  ,[STIpc] = @STIpc
			  ,[RPpc] = @RPpc
			  ,[oWhsepc] = @oWhsepc
			  ,[iWhsepc] = @iWhsepc
			  ,[INVpc] = @INVpc
			  ,[INNpc] = @INNpc
			  ,[STOpc] = @STOpc
			  ,[PhyCntpc] = @PhyCntpc
			  ,[ADJINpc] = @ADJINpc
			  ,[ADJOUTpc] = @ADJOUTpc
			WHERE [ProdIndex] = @_ProdIndex
		END
	ELSE
		BEGIN
			INSERT INTO [dbo].[GLOBAL_DTabulation]
			   ([ProdIndex]
			   ,[BIpc]
			   ,[STIpc]
			   ,[RPpc]
			   ,[oWhsepc]
			   ,[iWhsepc]
			   ,[TotalBalpc]
			   ,[INVpc]
			   ,[INNpc]
			   ,[STOpc]
			   ,[EndBalpc]
			   ,[PhyCntpc]
			   ,[ADJINpc]
			   ,[ADJOUTpc]
			   ,[HasPhyCnt])
			 VALUES
			   (@_ProdIndex
			   ,@BIpc
			   ,@STIpc
			   ,@RPpc
			   ,@oWhsepc
			   ,@iWhsepc
			   ,0
			   ,@INVpc
			   ,@INNpc
			   ,@STOpc
			   ,0
			   ,@PhyCntpc
			   ,@ADJINpc
			   ,@ADJOUTpc
			   ,@HasPhyCnt)	
		END 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GLOBAL_updateTotalBal]    Script Date: 03/22/2017 21:04:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Update value TotalBal of Product Tabulation
-- =============================================
CREATE PROCEDURE [dbo].[sp_GLOBAL_UpdateTotalBal]
(	@_ProdIndex		int,
	@isG			bit = 1
)
AS
DECLARE @PC		BIGINT

IF @isG = 1
BEGIN
	SELECT @PC = ([BIpc] + [STIpc] + [RPpc] + [iWhsepc] + [ADJINpc]) FROM  [dbo].[GLOBAL_Tabulation] WHERE prodindex = @_Prodindex
	UPDATE [dbo].[GLOBAL_Tabulation]
	SET 
	  [TotalBalpc] = @PC
	WHERE [prodindex] = @_ProdIndex
END
ELSE
BEGIN
	SELECT @PC = ([BIpc] + [STIpc] + [RPpc] + [iWhsepc] + [ADJINpc]) FROM  [dbo].[GLOBAL_DTabulation] WHERE prodindex = @_Prodindex
	UPDATE [dbo].[GLOBAL_DTabulation]
	SET 
	  [TotalBalpc] = @PC
	WHERE [prodindex] = @_ProdIndex
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GLOBAL_updateEndBal]    Script Date: 03/22/2017 21:05:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Update value EndBal of Product Tabulation
-- =============================================
CREATE PROCEDURE [dbo].[sp_GLOBAL_UpdateEndBal]
(	@_ProdIndex		int,
	@isG			bit = 1
)
AS

DECLARE @TOTALBALpc		bigint
DECLARE @Isspc			bigint
DECLARE @EndBalpc		bigint

IF @isG = 1
BEGIN
	SELECT @Isspc = ([INVpc] + [STOpc] + [INNpc] + [oWhsepc] + [ADJOUTpc]) FROM  [dbo].[GLOBAL_Tabulation] WHERE prodindex = @_Prodindex
	SELECT @TOTALBALpc = ([BIpc] + [STIpc] + [RPpc] + [iWhsepc] + [ADJINpc]) FROM  [dbo].[GLOBAL_Tabulation] WHERE prodindex = @_Prodindex
	SET @EndBalpc = @TOTALBALpc - @Isspc

	BEGIN
		UPDATE [dbo].[GLOBAL_Tabulation]
		SET 
		  [EndBalpc] = @EndBalpc,
		  [todate_issues] = @Isspc		  
		WHERE [prodindex] = @_ProdIndex
	END
END
ELSE
BEGIN
	SELECT @Isspc = ([INVpc] + [STOpc] + [INNpc] + [oWhsepc] + [ADJOUTpc]) FROM  [dbo].[GLOBAL_DTabulation] WHERE prodindex = @_Prodindex
	SELECT @TOTALBALpc = ([BIpc] + [STIpc] + [RPpc] + [iWhsepc] + [ADJINpc]) FROM  [dbo].[GLOBAL_DTabulation] WHERE prodindex = @_Prodindex
	SET @EndBalpc = @TOTALBALpc - @Isspc

	BEGIN
		UPDATE [dbo].[GLOBAL_DTabulation]
		SET 
		  [EndBalpc] = @EndBalpc,
		  [todate_issues] = @Isspc
		WHERE [prodindex] = @_ProdIndex
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GLOBAL_updateHasPhyCnt]    Script Date: 03/22/2017 21:05:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Update value HasPhyCnt of Product Tabulation
-- =============================================
CREATE PROCEDURE [dbo].[sp_GLOBAL_UpdateHasPhyCnt]
(	@_ProdIndex		int,
	@isG			bit = 1
)
AS

IF @isG = 1
BEGIN
	UPDATE [dbo].[GLOBAL_Tabulation]
	SET 
      [HasPhyCnt] = 1
	WHERE [ProdIndex] = @_ProdIndex
END
ELSE
BEGIN
	UPDATE [dbo].[GLOBAL_DTabulation]
	SET 
      [HasPhyCnt] = 1
	WHERE [ProdIndex] = @_ProdIndex
END

GO
/****** Object:  StoredProcedure [dbo].[sp_GLOBAL_InsertProductExpiry]    Script Date: 3/17/2017 3:53:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Update/Insert value into the Product Tabulation
-- =============================================
CREATE PROCEDURE [dbo].[sp_GLOBAL_InsertProductExpiry]
(	@ProdIndex		int
   ,@Qty			bigint
   ,@Expiry			datetime
   ,@DateStamp		datetime
   ,@Status			bit
   ,@PostingNo		bigint
   ,@isG			bit = 1
)
AS
	DECLARE @Found	INT
IF @isG = 1
BEGIN
	SELECT @Found = COUNT(*) FROM  [dbo].[GLOBAL_ProductExpiryTrans] WHERE ProdIndex = @Prodindex AND PostingNo = @PostingNo AND Expiry = @Expiry
	IF @Found >= 1
		BEGIN
			UPDATE [dbo].[GLOBAL_ProductExpiryTrans]
			SET 
				[Qty] = [Qty] + @Qty
			WHERE ProdIndex = @Prodindex AND PostingNo = @PostingNo AND Expiry = @Expiry
		END
	ELSE
		BEGIN
			INSERT INTO [dbo].[GLOBAL_ProductExpiryTrans]
				([ProdIndex]
				,[Qty]
				,[Expiry]
				,[DateStamp]
				,[Status]
				,[PostingNo])
				VALUES
				(@ProdIndex
				,@Qty
				,@Expiry
				,@DateStamp
				,@Status
				,@PostingNo)	
		END
END
ELSE
BEGIN
	SELECT @Found = COUNT(*) FROM  [dbo].[GLOBAL_ProductExpiryTrans] WHERE ProdIndex = @Prodindex AND PostingNo = @PostingNo AND Expiry = @Expiry
	IF @Found >= 1
		BEGIN
			UPDATE [dbo].[GLOBAL_DProductExpiryTrans]
			SET 
				[Qty] = [Qty] + @Qty
			WHERE ProdIndex = @Prodindex AND PostingNo = @PostingNo AND Expiry = @Expiry
		END
	ELSE
		BEGIN
			INSERT INTO [dbo].[GLOBAL_DProductExpiryTrans]
				([ProdIndex]
				,[Qty]
				,[Expiry]
				,[DateStamp]
				,[Status]
				,[PostingNo])
				VALUES
				(@ProdIndex
				,@Qty
				,@Expiry
				,@DateStamp
				,@Status
				,@PostingNo)	
		END

END
GO
/****** Object:  StoredProcedure [dbo].[sp_REPORT_insertElectronicStockard]    Script Date: 3/17/2017 3:53:54 PM ******/
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description: Insert data into EStockard
-- =============================================
CREATE PROCEDURE [dbo].[sp_REPORT_InsertElectronicStockard]
(	@_ProdIndex		int,
	@DocType		int,
	@DocNo			nvarchar(20),
	@MonthCycle		int,
	@YearCycle		int,
	@isG			bit = 1
)
AS


IF @isG = 1
BEGIN
	INSERT INTO REPORT_ElectronicStockard (prodindex, docno, docdate, refname, refno, doctype, QtyPc, BIpc, STIpc, RPpc, oWhsepc, TotalBalpc, INVpc, INNpc, STOpc, EndBalpc, 
                         PhyCntpc, iWhsepc, MonthCycle, YearCycle, Remarks, HasPhyCnt, ADJINpc, ADJOUTpc, [todate_issues])
	SELECT        PR.prodindex, PR.DocNo,  PR.DocDate, PR.RefName, PR.RefNo, PR.doctype, CAST(PR.Qty*PR.TotalConv AS BIGINT), T.BIpc, T.STIpc, T.RPpc, T.oWhsepc, T.TotalBalpc, T.INVpc, T.INNpc, 
				  T.STOpc, T.EndBalpc, T.PhyCntpc, T.iWhsepc, PR.MonthCycle, PR.YearCycle , PR.Remarks, T.HasPhyCnt, T.ADJINpc, T.ADJOUTpc, T.[todate_issues]
	FROM          GLOBAL_ProductTrans AS PR INNER JOIN GLOBAL_Tabulation AS T ON PR.prodindex = T.prodindex
	WHERE (PR.docno = @DocNo AND PR.doctype = @DocType AND PR.prodindex = @_ProdIndex AND PR.MonthCycle = @MonthCycle AND PR.YearCycle = @YearCycle)
END
ELSE
BEGIN
	INSERT INTO REPORT_DElectronicStockard (prodindex, docno, docdate, refname, refno, doctype, QtyPc, BIpc, STIpc, RPpc, oWhsepc, TotalBalpc, INVpc, INNpc, STOpc, EndBalpc, 
                         PhyCntpc, iWhsepc, MonthCycle, YearCycle, Remarks, HasPhyCnt, ADJINpc, ADJOUTpc, [todate_issues])
	SELECT        PR.prodindex, PR.DocNo,  PR.DocDate, PR.RefName, PR.RefNo, PR.doctype, CAST(PR.Qty*PR.TotalConv AS BIGINT), T.BIpc, T.STIpc, T.RPpc, T.oWhsepc, T.TotalBalpc, T.INVpc, T.INNpc, 
				  T.STOpc, T.EndBalpc, T.PhyCntpc, T.iWhsepc, PR.MonthCycle, PR.YearCycle , PR.Remarks, T.HasPhyCnt, T.ADJINpc, T.ADJOUTpc, T.[todate_issues]
	FROM          GLOBAL_DProductTrans AS PR INNER JOIN GLOBAL_DTabulation AS T ON PR.prodindex = T.prodindex
	WHERE (PR.docno = @DocNo AND PR.doctype = @DocType AND PR.prodindex = @_ProdIndex AND PR.MonthCycle = @MonthCycle AND PR.YearCycle = @YearCycle)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DB_initialize]    Script Date: 3/29/2017 2:03:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/29/2017
-- Description:	Initialize database
-- =============================================
CREATE PROCEDURE [dbo].[sp_DB_Initialize]
	@MonthCycle		int,
	@YearCycle		int,
	@isG			bit = 1
AS
	

IF @isG = 1
BEGIN
	DELETE FROM [dbo].[GLOBAL_Tabulation]

	UPDATE [dbo].[GLOBAL_ProductTrans]
	SET Status = 1
	WHERE MonthCycle = @MonthCycle AND YearCycle = @YearCycle
END
ELSE
BEGIN
	DELETE FROM [dbo].[GLOBAL_DTabulation]

	UPDATE [dbo].[GLOBAL_DProductTrans]
	SET Status = 1
	WHERE MonthCycle = @MonthCycle AND YearCycle = @YearCycle
END

UPDATE [dbo].[GLOBAL_System]
SET Status = 0, DateInitialize = GetDate()
WHERE MonthCycle = @MonthCycle AND YearCycle = @YearCycle	


GO
/****** Object:  StoredProcedure [dbo].[sp_DB_CreateBI]    Script Date: 3/29/2017 2:03:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/29/2017
-- Description:	Create or Update new Beginning Balance
-- =============================================
CREATE PROCEDURE [dbo].[sp_DB_RestoreTabulation]
(	@ESIndex		int,
	@isG			bit = 1
)
AS
	

IF @isG = 1
BEGIN
	INSERT INTO GLOBAL_TABULATION (ProdIndex, BIpc, STIpc, RPpc, oWhsepc, TotalBalpc, INVpc, INNpc, STOpc, EndBalpc, PhyCntpc, iWhsepc, [HasPhyCnt], [ADJINpc], [ADJOUTpc], [todate_issues])
	SELECT						   ProdIndex, BIpc, STIpc, RPpc, oWhsepc, TotalBalpc, INVpc, INNpc, STOpc, EndBalpc, PhyCntpc, iWhsepc, [HasPhyCnt], [ADJINpc], [ADJOUTpc], [todate_issues]
	FROM	REPORT_ElectronicStockard
	WHERE (@ESindex = _ESindex)
END
ELSE
BEGIN
	INSERT INTO GLOBAL_DTABULATION (ProdIndex, BIpc, STIpc, RPpc, oWhsepc, TotalBalpc, INVpc, INNpc, STOpc, EndBalpc, PhyCntpc, iWhsepc, [HasPhyCnt], [ADJINpc], [ADJOUTpc], [todate_issues])
	SELECT						   ProdIndex, BIpc, STIpc, RPpc, oWhsepc, TotalBalpc, INVpc, INNpc, STOpc, EndBalpc, PhyCntpc, iWhsepc, [HasPhyCnt], [ADJINpc], [ADJOUTpc], [todate_issues]
	FROM	REPORT_DElectronicStockard
	WHERE (@ESindex = _ESindex)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DB_CreateBI]    Script Date: 3/29/2017 2:03:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/29/2017
-- Description:	Create or Update new Beginning Balance
-- =============================================
CREATE PROCEDURE [dbo].[sp_DB_Restore_ProductAndSystem]
(	@MonthCycle			int,
	@YearCycle			int,
	@isG				bit = 1
)	
AS
	
BEGIN
	IF @isG = 1
	BEGIN
		UPDATE [dbo].[GLOBAL_ProductTrans]
		SET Status = 1
		WHERE MonthCycle = @MonthCycle AND YearCycle = @YearCycle
	END
	ELSE
	BEGIN
		UPDATE [dbo].[GLOBAL_DProductTrans]
		SET Status = 1
		WHERE MonthCycle = @MonthCycle AND YearCycle = @YearCycle
	END

	UPDATE [dbo].[GLOBAL_System]
	SET Status = 1
	WHERE MonthCycle = @MonthCycle AND YearCycle = @YearCycle	
END

GO
/****** Object:  StoredProcedure [dbo].[sp_DB_InsertBI]    Script Date: 6/5/2017 10:11:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/29/2017
-- Description:	Insert Beginning Balance into ProductTrans and Tabulation
-- =============================================
CREATE PROCEDURE [dbo].[sp_DB_InsertBI]
(	@MonthCycle			int,
	@YearCycle			int,
	@ESIndex			int,
	@isBOOK     		bit = 1,
	@UserN				varchar(30),
	@DocNo				int
)
AS
	
BEGIN
	IF @isBOOK = 1
	BEGIN
		INSERT INTO [dbo].[GLOBAL_ProductTrans]	([ProdIndex],ProductCode,[DocType],[DocNo],[DocDate],[SourceIndex],[Qty],[UOM],[price],[discount],[amount],[TotalConv],[RefName],[RefNo],[MonthCycle],[YearCycle],[IsSample],[remarks],[reason],[DateStamp],[Status],[UserN])
		SELECT									 R.[ProdIndex],P.ProductCode,8 ,@DocNo ,GetDate(),1,[EndBalpc],'PCS',0,0,0,1,'','',@MonthCycle,@YearCycle,0,'','',GetDate(),1,@UserN
		FROM REPORT_ElectronicStockard R INNER JOIN BASE_Product P ON R.ProdIndex = P._ProdIndex 
		WHERE  _ESindex = @ESIndex AND [EndBalpc] >= 1
		

		INSERT INTO GLOBAL_TABULATION (ProdIndex, BIpc, STIpc, RPpc, iWhsepc, TotalBalpc, INVpc, INNpc, STOpc, EndBalpc, PhyCntpc,  oWhsepc, [HasPhyCnt], [ADJINpc], [ADJOUTpc], [todate_issues])
		SELECT						   ProdIndex, [EndBalpc],0,   0,       0, [EndBalpc],     0,     0,     0, [EndBalpc],      0,        0,     0		,		0  , 0		   , 0
		FROM	REPORT_ElectronicStockard
		WHERE  _ESindex = @ESIndex

    	INSERT INTO [dbo].[GLOBAL_DProductTrans] ([ProdIndex],ProductCode,[DocType],[DocNo],[DocDate],[SourceIndex],[Qty],[UOM],[price],[discount],[amount],[TotalConv],[RefName],[RefNo],[MonthCycle],[YearCycle],[IsSample],[remarks],[reason],[DateStamp],[Status],[UserN])
		SELECT									 R.[ProdIndex],P.ProductCode,8 ,@DocNo ,GetDate(),1,[EndBalpc],'PCS',0,0,0,1,'','',@MonthCycle,@YearCycle,0,'','',GetDate(),1,@UserN
		FROM REPORT_DElectronicStockard R INNER JOIN BASE_Product P ON R.ProdIndex = P._ProdIndex 
		WHERE  _ESindex = @ESIndex AND [EndBalpc] >= 1
		

		INSERT INTO GLOBAL_DTABULATION (ProdIndex, BIpc, STIpc, RPpc, iWhsepc, TotalBalpc, INVpc, INNpc, STOpc, EndBalpc, PhyCntpc,  oWhsepc, [HasPhyCnt], [ADJINpc], [ADJOUTpc], [todate_issues])
		SELECT						   ProdIndex, [EndBalpc],0,   0,       0, [EndBalpc],     0,     0,     0, [EndBalpc],      0,        0,     0		,		0  , 0		    , 0
		FROM	REPORT_DElectronicStockard
		WHERE  _ESindex = @ESIndex
	END
	ELSE
	BEGIN
		INSERT INTO [dbo].[GLOBAL_ProductTrans]	([ProdIndex],ProductCode,[DocType],[DocNo],[DocDate],[SourceIndex],[Qty],[UOM],[price],[discount],[amount],[TotalConv],[RefName],[RefNo],[MonthCycle],[YearCycle],[IsSample],[remarks],[reason],[DateStamp],[Status],[UserN])
		SELECT									 R.[ProdIndex],P.ProductCode,8 ,@DocNo ,GetDate(),1,[PhyCntpc],'PCS',0,0,0,1,'','',@MonthCycle,@YearCycle,0,'','',GetDate(),1,@UserN
		FROM REPORT_ElectronicStockard R INNER JOIN BASE_Product P ON R.ProdIndex = P._ProdIndex 
		WHERE  _ESindex = @ESIndex 
		

		INSERT INTO GLOBAL_TABULATION (ProdIndex, BIpc, STIpc, RPpc, iWhsepc, TotalBalpc, INVpc, INNpc, STOpc, EndBalpc, PhyCntpc,  oWhsepc, [HasPhyCnt], [ADJINpc], [ADJOUTpc], [todate_issues])
		SELECT						   ProdIndex, [PhyCntpc],0,   0,       0, [PhyCntpc],     0,     0,     0, [PhyCntpc],      0,        0,     0		,	0	   ,	0	   , 0
		FROM	REPORT_ElectronicStockard
		WHERE  _ESindex = @ESIndex

		INSERT INTO [dbo].[GLOBAL_DProductTrans]([ProdIndex],ProductCode,[DocType],[DocNo],[DocDate],[SourceIndex],[Qty],[UOM],[price],[discount],[amount],[TotalConv],[RefName],[RefNo],[MonthCycle],[YearCycle],[IsSample],[remarks],[reason],[DateStamp],[Status],[UserN])
		SELECT									 R.[ProdIndex],P.ProductCode,8 ,@DocNo ,GetDate(),1,[PhyCntpc],'PCS',0,0,0,1,'','',@MonthCycle,@YearCycle,0,'','',GetDate(),1,@UserN
		FROM REPORT_DElectronicStockard R INNER JOIN BASE_Product P ON R.ProdIndex = P._ProdIndex 
		WHERE  _ESindex = @ESIndex 
		

		INSERT INTO GLOBAL_DTABULATION (ProdIndex, BIpc, STIpc, RPpc, iWhsepc, TotalBalpc, INVpc, INNpc, STOpc, EndBalpc, PhyCntpc,  oWhsepc, [HasPhyCnt], [ADJINpc], [ADJOUTpc], [todate_issues])
		SELECT						   ProdIndex, [PhyCntpc],0,   0,       0, [PhyCntpc],     0,     0,     0, [PhyCntpc],      0,        0,     0		,	0	   ,	0		, 0
		FROM	REPORT_DElectronicStockard
		WHERE  _ESindex = @ESIndex
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DB_InsertBI_ES]    Script Date: 05/30/2017 09:54:29 ******/
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/29/2017
-- Description:	Create or Update new Tabulation
-- =============================================
CREATE PROCEDURE [dbo].[sp_DB_InsertBI_ES]
(	@MonthCycle			int,
	@YearCycle			int,
	@DocNo				int=1
)	
AS

	BEGIN
		INSERT INTO REPORT_ElectronicStockard (ProdIndex, docno, docdate, refname, refno, doctype,qtypc, BIpc, STIpc, RPpc, IWhsepc, TotalBalpc, INVpc, INNpc, STOpc, EndBalpc, PhyCntpc, OWhsepc, MonthCycle, YearCycle, Remarks, HasPhyCnt, ADJINpc, ADJOUTpc, [todate_issues])
		SELECT                                 ProdIndex, @DocNo,  GetDate(), '', '',           8, EndBalpc, BIpc, STIpc, RPpc, IWhsepc, TotalBalpc, INVpc, INNpc, STOpc, EndBalpc, PhyCntpc, OWhsepc, @MonthCycle, @YearCycle , '', HasPhyCnt , ADJINpc, ADJOUTpc , [todate_issues]
		FROM   GLOBAL_Tabulation 
		
		INSERT INTO REPORT_DElectronicStockard (ProdIndex, docno, docdate, refname, refno, doctype,qtypc, BIpc, STIpc, RPpc, IWhsepc, TotalBalpc, INVpc, INNpc, STOpc, EndBalpc, PhyCntpc, OWhsepc, MonthCycle, YearCycle, Remarks, HasPhyCnt, ADJINpc, ADJOUTpc, [todate_issues])
		SELECT                                 ProdIndex, @DocNo,  GetDate(), '', '',           8, EndBalpc, BIpc, STIpc, RPpc, IWhsepc, TotalBalpc, INVpc, INNpc, STOpc, EndBalpc, PhyCntpc, OWhsepc, @MonthCycle, @YearCycle , '', HasPhyCnt , ADJINpc, ADJOUTpc, [todate_issues]
		FROM   GLOBAL_DTabulation 

		UPDATE [dbo].[GLOBAL_DocType]
		SET [docno] = @DocNo
		WHERE _DocTypeindex = 8
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_DB_CreateNewCycle]    Script Date: 3/29/2017 2:03:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/29/2017
-- Description:	Create new System Cycle
-- =============================================
CREATE PROCEDURE [dbo].[sp_DB_CreateNewCycle]
(		@MonthCycle		int,
		@YearCycle		int
)
AS
	
BEGIN
	INSERT INTO [dbo].[GLOBAL_System] ([MonthCycle],[YearCycle],[Status],[SysDate],[DateInitialize])
	VALUES							  (@MonthCycle, @YearCycle,1,GETDATE(),'1/1/9999')
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GLOBAL_InsertProductTrans]    Script Date: 7/26/2017 1:18:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Update value into the ProductTrans details
-- =============================================				 
CREATE PROCEDURE [dbo].[sp_GLOBAL_UpdateInventoryCheck]
(
	@_ProdIndex			int,
	@DocNo				nvarchar(20),
	@Qty				bigint,
	@UOM				nvarchar(15),
	@isG				bit
)
AS
IF @isG = 1
BEGIN
	UPDATE [dbo].[GLOBAL_ProductTrans]
		SET [Qty2] = @Qty
		WHERE DocNo = @DocNo AND ProdIndex = @_ProdIndex AND DocType = 16 AND UOM = @UOM
END
ELSE
BEGIN
	UPDATE [dbo].[GLOBAL_DProductTrans]
		SET [Qty2] = @Qty
	WHERE DocNo = @DocNo AND ProdIndex = @_ProdIndex AND DocType = 16 AND UOM = @UOM
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GLOBAL_System]    Script Date: 09/02/2017 03:27:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Update the System Date
-- =============================================
CREATE PROCEDURE [dbo].[sp_GLOBAL_System]
(
	@MonthCycle	int,
	@YearCycle	int,
	@SysDate	datetime
)
AS
BEGIN
	UPDATE [dbo].[GLOBAL_System]
	SET 
	  [SysDate] = @SysDate 
	WHERE MonthCycle = @MonthCycle AND YearCycle = @YearCycle AND DateInitialize = '9999-01-01 00:00:00.000'
END
GO