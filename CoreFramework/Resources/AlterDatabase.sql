/****** Object:  StoredProcedure [dbo].[sp_GLOBAL_UpdateTransaction]    Script Date: 12/1/2017 5:25:05 PM ******/
-- =============================================
-- Author:		Eddie Cabellon
-- ALTER date: 3/15/2017
-- Description:	Update Product Transaction and Adjust the stocks
-- =============================================				 
CREATE PROCEDURE [dbo].[sp_GLOBAL_UpdateTransaction] 
(
	@ProdIndex	int
	,@ProductCode 	nvarchar(50)
	,@DocType 	int
	,@DocNo		nvarchar(20)
	,@DocDate	nvarchar(60) 
	,@SourceIndex	int
	,@Qty		bigint
	,@UOM		nvarchar(15)
	,@TotalConv	int 
	,@RefName	nvarchar(50)
	,@RefNo		nvarchar(250)
	,@RefName1	nvarchar(250)
	,@RefNo1	nvarchar(250)
	,@RefName2	nvarchar(250)
	,@RefNo2	nvarchar(250)
	,@price		money
	,@discount	decimal(18, 4)
	,@amount	money
	,@MonthCycle	int
	,@YearCycle	int
	,@IsSample	bit 
	,@rremarks	nvarchar(250) = null
	,@cremarks	nvarchar(250) = null
	,@carrier	nvarchar(60) = null
	,@carrieradd	nvarchar(150) = null
	,@trackingno	nvarchar(50) = null
	,@arriveddate	datetime = null
	,@receiveddate	datetime = null
	,@expirydate	datetime = null
	,@reason	nvarchar(100) = null
	,@UserN		nvarchar(30)
	,@discnt1 	int
	,@discnt2 	int
	,@discnt3 	int
	,@discnt4 	int
	,@discnt5 	int
	,@row_no	int
	,@prev_qty	int

	,@_RegIndex	bigint
	,@SmanCode	nvarchar(10)
	,@RefDate	nvarchar(60)
	,@PriceType	nvarchar(10)
	,@ApprovedBy	nvarchar(50)
	,@DeliverdBy	nvarchar(50)
	,@CheckBy	nvarchar(50)
	,@GrossAmt	money
	,@DiscAmt	money
	,@VatAmt	money
	,@NetAmt	money
	,@Terms		nvarchar(10)
	,@Zone		int
	,@RetCode	bit
	,@RetRemarks	nvarchar(250)
	,@RetStat	bit
	,@Discnt01	int
	,@Discnt02	int
	,@Discnt03	int
	,@Discnt04	int
	,@Discnt05	int
	,@Remarks	nvarchar
	,@Totalpc	bigint

	,@_ESIndex	bigint
	,@isG		bit
)
AS
IF @isG = 1
BEGIN
	UPDATE [dbo].[REPORT_Register]
	SET [DocNo] = @DocNo
		,[DocDate] = @DocDate
		,[DocType] = @DocType
		,[SourceCode] = @SourceIndex
		,[RefName] = @RefName
		,[RefNo] = @RefNo
		,[RefDate] = @RefDate
		,[SmanCode] = @SmanCode
		,[PriceType] = @PriceType
		,[ApprovedBy] = @ApprovedBy
		,[DeliverdBy] = @DeliverdBy
		,[CheckBy] = @CheckBy
		,[GrossAmt] = @GrossAmt
		,[DiscAmt] = @DiscAmt
		,[VatAmt] = @VatAmt
		,[NetAmt] = @NetAmt
		,[MonthCycle] = @MonthCycle
		,[YearCycle] = @YearCycle
		,[Terms] = @Terms
		,[Zone] = @Zone
		,[RetCode] = @RetCode
		,[RetRemarks] = @RetRemarks
		,[RetStat] = @RetStat
		,[Discnt01] = @Discnt01
		,[Discnt02] = @Discnt02
		,[Discnt03] = @Discnt03
		,[Discnt04] = @Discnt04
		,[Discnt05] = @Discnt05
		,[Remarks] = @Remarks
		,[RefName1] = @RefName
		,[RefName2] = @RefName1
		,[RefName3] = @RefName2
		,[RefNo1] = @RefNo
		,[RefNo2] = @RefNo1
		,[RefNo3] = @RefNo2
		,[Totalpc] = @Totalpc
	WHERE _RegIndex = @_RegIndex

	UPDATE [dbo].[GLOBAL_ProductTrans]
	SET [ProdIndex] = @ProdIndex
		,[ProductCode] = @ProductCode
		,[DocType] = @DocType
		,[DocNo] = @DocNo
		,[DocDate] = @DocDate
		,[SourceIndex] = @SourceIndex
		,[Qty] = @Qty
		,[UOM] = @UOM
		,[TotalConv] = @TotalConv
		,[RefName] = @RefName
		,[RefNo] = @Refno
		,[RefName1] = @RefName1
		,[RefNo1] = @RefNo1
		,[RefName2] = @RefName2
		,[RefNo2] = @RefNo2
		,[price] = @price
		,[discount] = @discount
		,[amount] = @amount
		,[MonthCycle] = @MonthCycle
		,[YearCycle] = @YearCycle
		,[IsSample] = @IsSample
		,[remarks] = @remarks
		,[cremarks] = @cremarks
		,[carrier] = @carrier
		,[carrieradd] = @carrieradd
		,[trackingno] = @trackingno
		,[arriveddate] = @arriveddate
		,[receiveddate] = @receiveddate
		,[expirydate] = @expirydate
		,[reason] = @reason
		,[UserN] = @UserN
		,[discnt1] = @Discnt01
		,[discnt2] = @Discnt02
		,[discnt3] = @Discnt03
		,[discnt4] = @Discnt04
		,[discnt5] = @Discnt05
	WHERE row_no = @row_no

UPDATE [dbo].[REPORT_ElectronicStockard]
	SET [docno] = @docno
		,[docdate] = @docdate
		,[refname] = @refname
		,[refno] = @refno
		,[doctype] = @doctype
		,[qtypc] = (@Qty * @TotalConv)
		,[INVpc] = ([INVpc]-@prev_qty) + (@Qty * @TotalConv)
		,[todate_issues] = ([todate_issues]-@prev_qty) + (@Qty * @TotalConv)
	WHERE _ESIndex = @_ESindex

UPDATE [dbo].[REPORT_ElectronicStockard]
	SET [INVpc] = ([INVpc]-@prev_qty) + (@Qty * @TotalConv)
		,[todate_issues] = ([todate_issues]-@prev_qty) + (@Qty * @TotalConv)
	WHERE _ESIndex > @_ESindex AND [ProdIndex] = @ProdIndex

UPDATE [dbo].[GLOBAL_TABULATION]
	SET [INVpc] = ([INVpc]-@prev_qty) + (@Qty * @TotalConv)
	WHERE [ProdIndex] = @ProdIndex

UPDATE [dbo].[GLOBAL_TABULATION]
	SET  [TotalBalpc] = [BIpc] + [STIpc] + [RPpc] + [iWhsepc] + [ADJINpc]
		,[todate_issues] = [INVpc] + [STOpc] + [INNpc] + [oWhsepc] + [ADJOUTpc]

UPDATE [dbo].[GLOBAL_TABULATION]
	SET [EndBalpc] = ([TotalBalpc]) - ([INVpc] + [STOpc] + [INNpc] + [oWhsepc] + [ADJOUTpc])


UPDATE [dbo].[REPORT_ElectronicStockard]
	SET  [TotalBalpc] = [BIpc] + [STIpc] + [RPpc] + [iWhsepc] + [ADJINpc]

UPDATE [dbo].[REPORT_ElectronicStockard]
	SET [EndBalpc] = ([TotalBalpc]) - ([INVpc] + [STOpc] + [INNpc] + [oWhsepc] + [ADJOUTpc])

END
--ELSE
--BEGIN
--	UPDATE [dbo].[REPORT_DRegister]
--	SET [DocNo] = @DocNo
--		,[DocDate] = @DocDate
--		,[DocType] = @DocType
--		,[SourceCode] = @SourceIndex
--		,[RefName] = @RefName
--		,[RefNo] = @RefNo
--		,[RefDate] = @RefDate
--		,[SmanCode] = @SmanCode
--		,[PriceType] = @PriceType
--		,[ApprovedBy] = @ApprovedBy
--		,[DeliverdBy] = @DeliverdBy
--		,[CheckBy] = @CheckBy
--		,[GrossAmt] = @GrossAmt
--		,[DiscAmt] = @DiscAmt
--		,[VatAmt] = @VatAmt
--		,[NetAmt] = @NetAmt
--		,[MonthCycle] = @MonthCycle
--		,[YearCycle] = @YearCycle
--		,[Terms] = @Terms
--		,[Zone] = @Zone
--		,[RetCode] = @RetCode
--		,[RetRemarks] = @RetRemarks
--		,[RetStat] = @RetStat
--		,[Discnt01] = @Discnt01
--		,[Discnt02] = @Discnt02
--		,[Discnt03] = @Discnt03
--		,[Discnt04] = @Discnt04
--		,[Discnt05] = @Discnt05
--		,[Remarks] = @Remarks
--		,[RefName1] = @RefName
--		,[RefName2] = @RefName1
--		,[RefName3] = @RefName2
--		,[RefNo1] = @RefNo
--		,[RefNo2] = @RefNo1
--		,[RefNo3] = @RefNo2
--		,[Totalpc] = @Totalpc
--	WHERE _RegIndex = @_RegIndex
GO
-- =============================================
-- Author:		Eddie Cabellon
-- ALTER date: 3/15/2017
-- Description: Insert data into EStockard
-- =============================================
ALTER PROCEDURE [dbo].[sp_REPORT_InsertElectronicStockard] 
(	
	@_ProdIndex		int,
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
                         PhyCntpc, iWhsepc, MonthCycle, YearCycle, Remarks, HasPhyCnt, ADJINpc, ADJOUTpc, [todate_issues], DateStamp)
	SELECT TOP 1       PR.prodindex, PR.DocNo,  PR.DocDate, PR.RefName, PR.RefNo, PR.doctype, CAST(PR.Qty*PR.TotalConv AS BIGINT), T.BIpc, T.STIpc, T.RPpc, T.oWhsepc, T.TotalBalpc, T.INVpc, T.INNpc, 
				  T.STOpc, T.EndBalpc, T.PhyCntpc, T.iWhsepc, PR.MonthCycle, PR.YearCycle , PR.Remarks, T.HasPhyCnt, T.ADJINpc, T.ADJOUTpc, T.[todate_issues], PR.DateStamp
	FROM          GLOBAL_ProductTrans AS PR INNER JOIN GLOBAL_Tabulation AS T ON PR.prodindex = T.prodindex
	WHERE (PR.docno = @DocNo AND PR.doctype = @DocType AND PR.prodindex = @_ProdIndex AND PR.MonthCycle = @MonthCycle AND PR.YearCycle = @YearCycle)
	ORDER BY PR.row_no desc

	UPDATE [dbo].[REPORT_ElectronicStockard]
	SET  [TotalBalpc] = [BIpc] + [STIpc] + [RPpc] + [iWhsepc] + [ADJINpc]

	UPDATE [dbo].[REPORT_ElectronicStockard]
	SET [EndBalpc] = ([TotalBalpc]) - ([INVpc] + [STOpc] + [INNpc] + [oWhsepc] + [ADJOUTpc])

END
ELSE
BEGIN
	INSERT INTO REPORT_DElectronicStockard (prodindex, docno, docdate, refname, refno, doctype, QtyPc, BIpc, STIpc, RPpc, oWhsepc, TotalBalpc, INVpc, INNpc, STOpc, EndBalpc, 
                         PhyCntpc, iWhsepc, MonthCycle, YearCycle, Remarks, HasPhyCnt, ADJINpc, ADJOUTpc, [todate_issues], [DateStamp])
	SELECT TOP 1        PR.prodindex, PR.DocNo,  PR.DocDate, PR.RefName, PR.RefNo, PR.doctype, CAST(PR.Qty*PR.TotalConv AS BIGINT), T.BIpc, T.STIpc, T.RPpc, T.oWhsepc, T.TotalBalpc, T.INVpc, T.INNpc, 
				  T.STOpc, T.EndBalpc, T.PhyCntpc, T.iWhsepc, PR.MonthCycle, PR.YearCycle , PR.Remarks, T.HasPhyCnt, T.ADJINpc, T.ADJOUTpc, T.[todate_issues], PR.DateStamp
	FROM          GLOBAL_DProductTrans AS PR INNER JOIN GLOBAL_DTabulation AS T ON PR.prodindex = T.prodindex
	WHERE (PR.docno = @DocNo AND PR.doctype = @DocType AND PR.prodindex = @_ProdIndex AND PR.MonthCycle = @MonthCycle AND PR.YearCycle = @YearCycle)
	ORDER BY PR.row_no desc

	UPDATE [dbo].[REPORT_DElectronicStockard]
	SET  [TotalBalpc] = [BIpc] + [STIpc] + [RPpc] + [iWhsepc] + [ADJINpc]

	UPDATE [dbo].[REPORT_DElectronicStockard]
	SET [EndBalpc] = ([TotalBalpc]) - ([INVpc] + [STOpc] + [INNpc] + [oWhsepc] + [ADJOUTpc])
END
GO