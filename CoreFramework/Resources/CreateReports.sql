/****** Object:  StoredProcedure [dbo].[sp_REPORT_StockPosition]    Script Date: 03/19/2017 09:47:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Generate Stock position report
-- =============================================				 
CREATE PROCEDURE [dbo].[sp_REPORT_StockPosition]
(	@isG	bit=1 
)
AS
IF @isG = 1
BEGIN
	SELECT p._prodindex,P.productcode,P.ccode,P.scode, P.description AS [Descp],
	ROUND((T.EndBalpc/[dbo].[GetUOMConversion](P._ProdIndex,'CASES')),0,1) as [Endcs],
	CASE WHEN [dbo].[GetUOMConversion](P._ProdIndex,'IB') <> 0 THEN 
		ROUND(((T.EndBalpc % [dbo].[GetUOMConversion](P._ProdIndex,'CASES'))/[dbo].[GetUOMConversion](P._ProdIndex,'IB')) ,0,1)
	ELSE
		0
	END as [EndIB],
	CASE WHEN [dbo].[GetUOMConversion](P._ProdIndex,'IB') = 0 OR [dbo].[GetUOMConversion](P._ProdIndex,'IB') IS NULL THEN 
		ROUND(((T.EndBalpc % [dbo].[GetUOMConversion](P._ProdIndex,'CASES'))) ,0,1)
	ELSE
		ROUND(((T.EndBalpc % [dbo].[GetUOMConversion](P._ProdIndex,'CASES'))%[dbo].[GetUOMConversion](P._ProdIndex,'IB')) ,0,1)
	END as [Endpcs],
	C.name AS [category] 
	FROM BASE_Product P INNER JOIN 
	BASE_Category C ON P.category = C.categoryid INNER JOIN 
	GLOBAL_Tabulation T ON P._ProdIndex = T.ProdIndex
END
ELSE
BEGIN
	SELECT p._prodindex,P.productcode,P.ccode,P.scode, P.description AS [Descp],
	ROUND((T.EndBalpc/[dbo].[GetUOMConversion](P._ProdIndex,'CASES')),0,1) as [Endcs],
	CASE WHEN [dbo].[GetUOMConversion](P._ProdIndex,'IB') <> 0 THEN 
		ROUND(((T.EndBalpc % [dbo].[GetUOMConversion](P._ProdIndex,'CASES'))/[dbo].[GetUOMConversion](P._ProdIndex,'IB')) ,0,1)
	ELSE
		0
	END as [EndIB],
	CASE WHEN [dbo].[GetUOMConversion](P._ProdIndex,'IB') = 0 OR [dbo].[GetUOMConversion](P._ProdIndex,'IB') IS NULL THEN 
		ROUND(((T.EndBalpc % [dbo].[GetUOMConversion](P._ProdIndex,'CASES'))) ,0,1)
	ELSE
		ROUND(((T.EndBalpc % [dbo].[GetUOMConversion](P._ProdIndex,'CASES'))%[dbo].[GetUOMConversion](P._ProdIndex,'IB')) ,0,1)
	END as [Endpcs],
	C.name AS [category] 
	FROM BASE_Product P INNER JOIN 
	BASE_Category C ON P.category = C.categoryid INNER JOIN 
	GLOBAL_DTabulation T ON P._ProdIndex = T.ProdIndex
END
GO
/****** Object:  StoredProcedure [dbo].[sp_REPORT_PhysicalCount]    Script Date: 7/18/2017 6:25:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 7/14/2017
-- Description:	Physical Count Report
-- =============================================
CREATE PROCEDURE [dbo].[sp_REPORT_PhysicalCount] 
(	@DocNo			int,
	@isG			bit=1,
	@DocType		int
)
AS
BEGIN
	SELECT DISTINCT PT.DocNo, PT.DocDate, C1.CustomerCode, C1.[name], C1.[address], C1.[tinno], P.productcode,P.ccode,P.scode, P.description AS [Descp],
	ROUND((([dbo].[GetPhysicalCountTotalQty](P._ProdIndex,0,0,@isG,0,@DocType,@DocNo))/[dbo].[GetUOMConversion](P._ProdIndex,'CASES')),0,1) as [Endcs],
	CASE WHEN [dbo].[GetUOMConversion](P._ProdIndex,'IB') <> 0 THEN 
		ROUND(((([dbo].[GetPhysicalCountTotalQty](P._ProdIndex,0,0,@isG,0,@DocType,@DocNo)) % [dbo].[GetUOMConversion](P._ProdIndex,'CASES'))/[dbo].[GetUOMConversion](P._ProdIndex,'IB')) ,0,1)
	ELSE
		0
	END as [EndIB],
	CASE WHEN [dbo].[GetUOMConversion](P._ProdIndex,'IB') = 0 OR [dbo].[GetUOMConversion](P._ProdIndex,'IB') IS NULL THEN 
		ROUND(((([dbo].[GetPhysicalCountTotalQty](P._ProdIndex,0,0,@isG,0,@DocType,@DocNo)) % [dbo].[GetUOMConversion](P._ProdIndex,'CASES'))) ,0,1)
	ELSE
		ROUND(((([dbo].[GetPhysicalCountTotalQty](P._ProdIndex,0,0,@isG,0,@DocType,@DocNo)) % [dbo].[GetUOMConversion](P._ProdIndex,'CASES'))%[dbo].[GetUOMConversion](P._ProdIndex,'IB')) ,0,1)
	END as [Endpcs],
	C.name AS [category] 
	FROM GLOBAL_ProductTrans PT INNER JOIN 
	BASE_Customer C1 ON PT.SourceIndex = C1._custindex INNER JOIN
	BASE_Product P ON P._prodindex = PT.prodindex INNER JOIN 
	BASE_Category C ON P.category = C.categoryid 	
	WHERE PT.docno = @DocNo and PT.doctype = @DocType
END
GO
/****** Object:  StoredProcedure [dbo].[sp_REPORT_PhysicalCountReport]    Script Date: 07/15/2017 01:29:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 7/14/2017
-- Description:	Physical Count Report
-- =============================================
CREATE PROCEDURE [dbo].[sp_REPORT_PhysicalCountReport] 
(	@isReport		bit=1,
	@DocNo			int,
	@isG			bit=1,
	@MonthCycle		int,
	@DocType		int,
	@YearCycle		int
)
AS
BEGIN
	SELECT p._prodindex,P.productcode,P.ccode,P.scode, P.description AS [Descp],
	ROUND((([dbo].[GetPhysicalCountTotalQty](P._ProdIndex,@MonthCycle,@YearCycle,@isG,@isReport,@DocType,@DocNo))/[dbo].[GetUOMConversion](P._ProdIndex,'CASES')),0,1) as [Endcs],
	CASE WHEN [dbo].[GetUOMConversion](P._ProdIndex,'IB') <> 0 THEN 
		ROUND(((([dbo].[GetPhysicalCountTotalQty](P._ProdIndex,@MonthCycle,@YearCycle,@isG,@isReport,@DocType,@DocNo)) % [dbo].[GetUOMConversion](P._ProdIndex,'CASES'))/[dbo].[GetUOMConversion](P._ProdIndex,'IB')) ,0,1)
	ELSE
		0
	END as [EndIB],
	CASE WHEN [dbo].[GetUOMConversion](P._ProdIndex,'IB') = 0 OR [dbo].[GetUOMConversion](P._ProdIndex,'IB') IS NULL THEN 
		ROUND(((([dbo].[GetPhysicalCountTotalQty](P._ProdIndex,@MonthCycle,@YearCycle,@isG,@isReport,@DocType,@DocNo)) % [dbo].[GetUOMConversion](P._ProdIndex,'CASES'))) ,0,1)
	ELSE
		ROUND(((([dbo].[GetPhysicalCountTotalQty](P._ProdIndex,@MonthCycle,@YearCycle,@isG,@isReport,@DocType,@DocNo)) % [dbo].[GetUOMConversion](P._ProdIndex,'CASES'))%[dbo].[GetUOMConversion](P._ProdIndex,'IB')) ,0,1)
	END as [Endpcs],
	C.name AS [category] 
	FROM BASE_Product P INNER JOIN 
	BASE_Category C ON P.category = C.categoryid 
	WHERE (([dbo].[GetPhysicalCountTotalQty](P._ProdIndex,@MonthCycle,@YearCycle,@isG,@isReport,@DocType,@DocNo))/[dbo].[GetUOMConversion](P._ProdIndex,'CASES')) IS NOT NULL 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_REPORT_ESsummary]    Script Date: 03/19/2017 16:21:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Generate Electronic Stock Card Summary
-- =============================================				 
CREATE PROCEDURE [dbo].[sp_REPORT_ESsummary]
(	@isG	bit=1 
)
AS
IF @isG = 1
BEGIN
	SELECT DISTINCT P.ProductCode, P.[Description] as [Descp]
		 ,CAST(T.BIpc/U.Qty AS BIGINT) AS [BIcs]
		 ,T.BIpc%U.Qty AS [BIpc]
		 ,CAST((T.STIpc + T.RPpc + T.iWhsepc + T.ADJINpc)/U.Qty AS BIGINT) AS [Receivecs]		
		 ,(T.STIpc + T.RPpc + T.iWhsepc + T.ADJINpc)%U.Qty AS [Receivepc]		
		 ,CAST((T.INVpc + T.STOpc)/U.Qty AS BIGINT) AS [Salescs]		 
		 ,(T.INVpc + T.STOpc)%U.Qty AS [Salespc]		 
		 ,CAST((T.oWhsepc + T.INNpc + T.ADJOUTpc)/U.Qty AS BIGINT) AS [WITHcs]
		 ,(T.oWhsepc + T.INNpc + T.ADJOUTpc)%U.Qty AS [WITHpc]
		 ,CAST([QtyPc]/U.Qty AS BIGINT) AS [TodateIsscs]
		 ,[QtyPc]%U.Qty AS [TodateIsspc]
		 ,CAST(T.EndBalpc / U.Qty AS BIGINT) AS [ENDcs]		 
		 ,T.EndBalpc%U.Qty AS [ENDpc]		 
		 ,CAST(T.PhyCntpc/U.Qty AS BIGINT) AS [PHYcs]		 
		 ,T.PhyCntpc%U.Qty AS [PHYpc]
		 ,C.name AS [category]
	FROM REPORT_ElectronicStockard T 
		INNER JOIN BASE_Product P ON P._prodindex = T.prodindex
		INNER JOIN BASE_UOM U ON P._prodindex = U.prodindex
		INNER JOIN BASE_Category C ON P.category = C.categoryid 
	WHERE U.UOM = 'CASES' AND _ESIndex = 
	( 
		SELECT MAX(_ESIndex) 
		FROM REPORT_ElectronicStockard ST
		WHERE ST.ProdIndex = T.ProdIndex
	)
END
ELSE
BEGIN
	SELECT DISTINCT P.ProductCode, P.[Description] as [Descp]
		 ,CAST(T.BIpc/U.Qty AS BIGINT) AS [BIcs]
		 ,T.BIpc%U.Qty AS [BIpc]
		 ,CAST((T.STIpc + T.RPpc + T.iWhsepc + T.ADJINpc)/U.Qty AS BIGINT) AS [Receivecs]		
		 ,(T.STIpc + T.RPpc + T.iWhsepc + T.ADJINpc)%U.Qty AS [Receivepc]		
		 ,CAST((T.INVpc + T.STOpc)/U.Qty AS BIGINT) AS [Salescs]		 
		 ,(T.INVpc + T.STOpc)%U.Qty AS [Salespc]		 
		 ,CAST((T.oWhsepc + T.INNpc + T.ADJOUTpc)/U.Qty AS BIGINT) AS [WITHcs]
		 ,(T.oWhsepc + T.INNpc + T.ADJOUTpc)%U.Qty AS [WITHpc]
		 ,CAST([QtyPc]/U.Qty AS BIGINT) AS [TodateIsscs]
		 ,[QtyPc]%U.Qty AS [TodateIsspc]
		 ,CAST(T.EndBalpc / U.Qty AS BIGINT) AS [ENDcs]		 
		 ,T.EndBalpc%U.Qty AS [ENDpc]		 
		 ,CAST(T.PhyCntpc/U.Qty AS BIGINT) AS [PHYcs]		 
		 ,T.PhyCntpc%U.Qty AS [PHYpc]	
		 ,C.name AS [category]
	FROM REPORT_DElectronicStockard T 
		INNER JOIN BASE_Product P ON P._prodindex = T.prodindex
		INNER JOIN BASE_UOM U ON P._prodindex = U.prodindex
		INNER JOIN BASE_Category C ON P.category = C.categoryid 
	WHERE U.UOM = 'CASES' AND _ESIndex = 
	( 
		SELECT MAX(_ESIndex) 
		FROM REPORT_ElectronicStockard ST
		WHERE ST.ProdIndex = T.ProdIndex
	)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_REPORT_ESbyProduct]    Script Date: 06/07/2017 19:27:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Insert value into the ProductTrans details
-- =============================================				 
CREATE PROCEDURE [dbo].[sp_REPORT_ESbyProduct]
(
	@prodindex		int,
	@from			datetime,
	@to				datetime,	
	@isG			bit=1
)
AS
IF @isG = 1
BEGIN
	SELECT P.productcode,P.[Description] as [Descp],E.DocDate,(DT.affix + ' ' + E.DocNo) AS [DocNo], E.RefNo,
	CASE   
		WHEN E.DocType = 1 OR E.DocType = 8 OR E.DocType = 10 OR E.DocType = 13 THEN CAST([QtyPc]/U.QTY AS INT)
		ELSE 0
	END AS [Receiptscs],
	CASE   
		WHEN E.DocType = 1 OR E.DocType = 8 OR E.DocType = 10 OR E.DocType = 13 THEN CAST([QtyPc]%U.QTY AS INT)
		ELSE 0
	END AS [ReceiptsPc],
	CASE   
		WHEN E.DocType = 2 OR E.DocType = 3 OR E.DocType = 4 OR E.DocType = 5 OR E.DocType = 7 OR E.DocType = 9 OR E.DocType = 15 THEN CAST([QtyPc]/U.QTY AS INT)
		ELSE 0
	END AS [Issuescs],
	CASE   
		WHEN E.DocType = 2 OR E.DocType = 3 OR E.DocType = 4 OR E.DocType = 5 OR E.DocType = 7 OR E.DocType = 9 OR E.DocType = 15 THEN CAST([QtyPc]%U.QTY AS INT)
		ELSE 0
	END AS [IssuesPc],
	CAST(E.EndBalpc/U.Qty AS INT) AS [balancecs], E.EndBalpc%U.Qty AS [balancepc],CAST([QtyPc]/U.Qty AS INT) AS [TodateIssuescs], [QtyPc]%U.Qty AS [TodateIssuesPc],E.Remarks
	FROM [dbo].[REPORT_ElectronicStockard] E 
	INNER JOIN GLOBAL_DocType DT ON E.DocType = DT._DocTypeIndex 
	INNER JOIN BASE_Product P ON E.ProdIndex = P._ProdIndex	
	INNER JOIN BASE_UOM U ON U.ProdIndex = P._ProdIndex		
	WHERE P._Prodindex = @prodindex AND U.UOM = 'CASES' AND E.DocDate BETWEEN @from AND @to
	ORDER BY E._ESIndex
END
ELSE
BEGIN
	SELECT P.productcode,P.[Description] as [Descp],E.DocDate,(DT.affix + ' ' + E.DocNo) AS [DocNo], E.RefNo,
		CASE   
		WHEN E.DocType = 1 OR E.DocType = 8 OR E.DocType = 10 OR E.DocType = 13 THEN CAST([QtyPc]/U.QTY AS INT)
		ELSE 0
	END AS [Receiptscs],
	CASE   
		WHEN E.DocType = 1 OR E.DocType = 8 OR E.DocType = 10 OR E.DocType = 13 THEN CAST([QtyPc]/U.QTY AS INT)
		ELSE 0
	END AS [ReceiptsPc],
	CASE   
		WHEN E.DocType = 2 OR E.DocType = 3 OR E.DocType = 4 OR E.DocType = 5 OR E.DocType = 7 OR E.DocType = 9  OR E.DocType = 15 THEN CAST([QtyPc]/U.QTY AS INT)
		ELSE 0
	END AS [Issuescs],
	CASE   
		WHEN E.DocType = 2 OR E.DocType = 3 OR E.DocType = 4 OR E.DocType = 5 OR E.DocType = 7 OR E.DocType = 9  OR E.DocType = 15 THEN CAST([QtyPc]%U.QTY AS INT)
		ELSE 0
	END AS [IssuesPc],
	CAST(E.EndBalpc/U.Qty AS INT) AS [balancecs], E.EndBalpc%U.Qty AS [balancepc],CAST([QtyPc]/U.Qty AS INT) AS [TodateIssuescs], [QtyPc]%U.Qty AS [TodateIssuesPc],E.Remarks
	FROM [dbo].[REPORT_ElectronicStockard] E 
	INNER JOIN GLOBAL_DocType DT ON E.DocType = DT._DocTypeIndex 
	INNER JOIN BASE_Product P ON E.ProdIndex = P._ProdIndex	
	INNER JOIN BASE_UOM U ON U.ProdIndex = P._ProdIndex		
	WHERE P._Prodindex = @prodindex AND U.UOM = 'CASES' AND E.DocDate BETWEEN @from AND @to
	ORDER BY E._ESIndex
END
GO
/****** Object:  StoredProcedure [dbo].[sp_REPORT_REGISTER_Return]    Script Date: 7/18/2017 6:14:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Generate Sales Return Register
-- =============================================
CREATE PROCEDURE [dbo].[sp_REPORT_REGISTER_Return]
(	@from			int,
	@to				int,
	@isG			bit = 1
)
AS
IF @isG = 1
BEGIN 
	SELECT [RefNo], PR.DocDate,  C.[Name],PR.Zone, '//' as [DateLoaded], '//' as [DateDel], PR.[NetAmt] AS [Amount], Remarks,PR.DocNo
	FROM [REPORT_Register] PR JOIN BASE_Customer C ON PR.SourceCode= C._custindex WHERE PR.DocType = 10  AND MonthCycle = @from AND YearCycle = @to
END
ELSE
BEGIN
	SELECT [RefNo], PR.DocDate,  C.[Name],PR.Zone, '//' as [DateLoaded], '//' as [DateDel], PR.[NetAmt] AS [Amount], Remarks,PR.DocNo
	FROM [REPORT_DRegister] PR JOIN BASE_Customer C ON PR.SourceCode= C._custindex WHERE PR.DocType = 10 AND MonthCycle = @from AND YearCycle = @to
END
GO
/****** Object:  StoredProcedure [dbo].[sp_REPORT_REGISTER_Return_TotalByZone]    Script Date: 07/23/2017 21:22:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Generate Register Total by Zone
-- =============================================
CREATE PROCEDURE [dbo].[sp_REPORT_REGISTER_Return_TotalByZone]
(	@from			int,
	@to				int,
	@isG			bit = 1	
)
AS
IF @isG = 1
BEGIN 
	SELECT DISTINCT
		ISNULL((SELECT SUM(Z1.NetAmt) FROM REPORT_Register Z1 WHERE M.MonthCycle = Z1.MonthCycle AND M.YearCycle = Z1.YearCycle AND  M.Zone = Z1.Zone AND Z1.Zone = 1 AND Z1.DocType = 10),0)
		AS ZONE1,
		ISNULL((SELECT SUM(Z2.NetAmt) FROM REPORT_Register Z2 WHERE M.MonthCycle = Z2.MonthCycle AND M.YearCycle = Z2.YearCycle AND  M.Zone = Z2.Zone AND Z2.Zone = 2 AND Z2.DocType = 10),0)
		AS ZONE2,
		ISNULL((SELECT SUM(Z3.NetAmt) FROM REPORT_Register Z3 WHERE M.MonthCycle = Z3.MonthCycle AND M.YearCycle = Z3.YearCycle AND  M.Zone = Z3.Zone AND Z3.Zone = 3 AND Z3.DocType = 10),0)
		AS ZONE3,
		ISNULL((SELECT SUM(Z4.NetAmt) FROM REPORT_Register Z4 WHERE M.MonthCycle = Z4.MonthCycle AND M.YearCycle = Z4.YearCycle AND  M.Zone = Z4.Zone AND Z4.Zone = 4 AND Z4.DocType = 10),0)
		AS ZONE4,
		ISNULL((SELECT SUM(Z5.NetAmt) FROM REPORT_Register Z5 WHERE M.MonthCycle = Z5.MonthCycle AND M.YearCycle = Z5.YearCycle AND  M.Zone = Z5.Zone AND Z5.Zone = 5 AND Z5.DocType = 10),0)
		AS ZONE5,
		ISNULL((SELECT SUM(Z6.NetAmt) FROM REPORT_Register Z6 WHERE M.MonthCycle = Z6.MonthCycle AND M.YearCycle = Z6.YearCycle AND  M.Zone = Z6.Zone AND Z6.Zone = 6 AND Z6.DocType = 10),0) 
		AS ZONE6
	FROM REPORT_Register M 
	WHERE 
	M.DocType = 10 AND 
	MonthCycle = @from AND YearCycle = @to
END
ELSE
BEGIN
	SELECT DISTINCT
		ISNULL((SELECT SUM(Z1.NetAmt) FROM REPORT_DRegister Z1 WHERE M.MonthCycle = Z1.MonthCycle AND M.YearCycle = Z1.YearCycle AND M.Zone = Z1.Zone AND Z1.Zone = 1 AND Z1.DocType = 10),0)
		AS ZONE1,
		ISNULL((SELECT SUM(Z2.NetAmt) FROM REPORT_DRegister Z2 WHERE M.MonthCycle = Z2.MonthCycle AND M.YearCycle = Z2.YearCycle AND M.Zone = Z2.Zone AND Z2.Zone = 2 AND Z2.DocType = 10),0)
		AS ZONE2,
		ISNULL((SELECT SUM(Z3.NetAmt) FROM REPORT_DRegister Z3 WHERE M.MonthCycle = Z3.MonthCycle AND M.YearCycle = Z3.YearCycle AND M.Zone = Z3.Zone AND Z3.Zone = 3 AND Z3.DocType = 10),0)
		AS ZONE3,
		ISNULL((SELECT SUM(Z4.NetAmt) FROM REPORT_DRegister Z4 WHERE M.MonthCycle = Z4.MonthCycle AND M.YearCycle = Z4.YearCycle AND  M.Zone = Z4.Zone AND Z4.Zone = 4 AND Z4.DocType = 10),0)
		AS ZONE4,
		ISNULL((SELECT SUM(Z5.NetAmt) FROM REPORT_DRegister Z5 WHERE M.MonthCycle = Z5.MonthCycle AND M.YearCycle = Z5.YearCycle AND  M.Zone = Z5.Zone AND Z5.Zone = 5 AND Z5.DocType = 10),0)
		AS ZONE5,
		ISNULL((SELECT SUM(Z6.NetAmt) FROM REPORT_DRegister Z6 WHERE M.MonthCycle = Z6.MonthCycle AND M.YearCycle = Z6.YearCycle AND  M.Zone = Z6.Zone AND Z6.Zone = 6 AND Z6.DocType = 10),0) 
		AS ZONE6
	FROM REPORT_DRegister M 
	WHERE 
	M.DocType = 10 AND 
	MonthCycle = @from AND YearCycle = @to
END
GO
/****** Object:  StoredProcedure [dbo].[sp_REPORT_REGISTER_SALES]    Script Date: 7/18/2017 6:14:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Generate Sales Register
-- =============================================
CREATE PROCEDURE [dbo].[sp_REPORT_REGISTER_SALES]
(	@from			int,
	@to				int,
	@isG			bit = 1
)
AS
IF @isG = 1
BEGIN 
	SELECT PR.RefNo2 AS [RefNo], PR.DocDate,  C.[Name],PR.Zone, '//' as [DateLoaded], '//' as [DateDel], PR.[NetAmt] AS [Amount], Remarks, PR.DocNo
	FROM [REPORT_Register] PR JOIN BASE_Customer C ON PR.SourceCode= C._custindex WHERE (PR.DocType = 2 OR PR.DocType = 3) AND MonthCycle = @from AND YearCycle = @to
	ORDER BY PR.RefNo2, PR.DocNo
END
ELSE
BEGIN
	SELECT PR.RefNo2 AS [RefNo], PR.DocDate,  C.[Name],PR.Zone, '//' as [DateLoaded], '//' as [DateDel], PR.[NetAmt] AS [Amount], Remarks, PR.DocNo
	FROM [REPORT_DRegister] PR JOIN BASE_Customer C ON PR.SourceCode= C._custindex WHERE (PR.DocType = 2 OR PR.DocType = 3) AND MonthCycle = @from AND YearCycle = @to
	ORDER BY PR.RefNo2, PR.DocNo
END
GO
/****** Object:  StoredProcedure [dbo].[sp_REPORT_REGISTER_TOTALBYZONE]    Script Date: 07/23/2017 20:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Generate Register Total by Zone
-- =============================================
CREATE PROCEDURE [dbo].[sp_REPORT_REGISTER_Sales_TotalByZone]
(	@from			int,
	@to				int,
	@isG			bit = 1	
)
AS
IF @isG = 1
BEGIN 
	SELECT DISTINCT
		(ISNULL((SELECT SUM(Z1.NetAmt) FROM REPORT_Register Z1 WHERE M.MonthCycle = Z1.MonthCycle AND M.YearCycle = Z1.YearCycle AND Z1.Zone = 1 AND Z1.DocType = 2),0) +
		ISNULL((SELECT SUM(Z1.NetAmt) FROM REPORT_Register Z1 WHERE M.MonthCycle = Z1.MonthCycle AND M.YearCycle = Z1.YearCycle AND  Z1.Zone = 1 AND Z1.DocType = 3),0))
		AS ZONE1,
		(ISNULL((SELECT SUM(Z2.NetAmt) FROM REPORT_Register Z2 WHERE M.MonthCycle = Z2.MonthCycle AND M.YearCycle = Z2.YearCycle AND Z2.Zone = 2 AND Z2.DocType = 2),0) +
		ISNULL((SELECT SUM(Z2.NetAmt) FROM REPORT_Register Z2 WHERE M.MonthCycle = Z2.MonthCycle AND M.YearCycle = Z2.YearCycle AND  Z2.Zone = 2 AND Z2.DocType = 3),0))
		AS ZONE2,
		(ISNULL((SELECT SUM(Z3.NetAmt) FROM REPORT_Register Z3 WHERE M.MonthCycle = Z3.MonthCycle AND M.YearCycle = Z3.YearCycle AND Z3.Zone = 3 AND Z3.DocType = 2),0) +
		ISNULL((SELECT SUM(Z3.NetAmt) FROM REPORT_Register Z3 WHERE M.MonthCycle = Z3.MonthCycle AND M.YearCycle = Z3.YearCycle AND  Z3.Zone = 3 AND Z3.DocType = 3),0))
		AS ZONE3,
		(ISNULL((SELECT SUM(Z4.NetAmt) FROM REPORT_Register Z4 WHERE M.MonthCycle = Z4.MonthCycle AND M.YearCycle = Z4.YearCycle AND Z4.Zone = 4 AND Z4.DocType = 2),0) +
		ISNULL((SELECT SUM(Z4.NetAmt) FROM REPORT_Register Z4 WHERE M.MonthCycle = Z4.MonthCycle AND M.YearCycle = Z4.YearCycle AND  Z4.Zone = 4 AND Z4.DocType = 3),0))
		AS ZONE4,
		(ISNULL((SELECT SUM(Z5.NetAmt) FROM REPORT_Register Z5 WHERE M.MonthCycle = Z5.MonthCycle AND M.YearCycle = Z5.YearCycle AND Z5.Zone = 5 AND Z5.DocType = 2),0) +
		ISNULL((SELECT SUM(Z5.NetAmt) FROM REPORT_Register Z5 WHERE M.MonthCycle = Z5.MonthCycle AND M.YearCycle = Z5.YearCycle AND  Z5.Zone = 5 AND Z5.DocType = 3),0))
		AS ZONE5,
		(ISNULL((SELECT SUM(Z6.NetAmt) FROM REPORT_Register Z6 WHERE M.MonthCycle = Z6.MonthCycle AND M.YearCycle = Z6.YearCycle AND Z6.Zone = 6 AND Z6.DocType = 2),0) +
		ISNULL((SELECT SUM(Z6.NetAmt) FROM REPORT_Register Z6 WHERE M.MonthCycle = Z6.MonthCycle AND M.YearCycle = Z6.YearCycle AND  Z6.Zone = 6 AND Z6.DocType = 3),0))
		AS ZONE6

	FROM REPORT_Register M 
	WHERE 
	(M.DocType = 2 OR M.DocType = 3) AND 
	M.MonthCycle = @from AND M.YearCycle = @to
END
ELSE
BEGIN
	SELECT DISTINCT
		(ISNULL((SELECT SUM(Z1.NetAmt) FROM REPORT_DRegister Z1 WHERE M.MonthCycle = Z1.MonthCycle AND M.YearCycle = Z1.YearCycle AND Z1.Zone = 1 AND Z1.DocType = 2),0) +
		ISNULL((SELECT SUM(Z1.NetAmt) FROM REPORT_DRegister Z1 WHERE M.MonthCycle = Z1.MonthCycle AND M.YearCycle = Z1.YearCycle AND  Z1.Zone = 1 AND Z1.DocType = 3),0))
		AS ZONE1,
		(ISNULL((SELECT SUM(Z2.NetAmt) FROM REPORT_DRegister Z2 WHERE M.MonthCycle = Z2.MonthCycle AND M.YearCycle = Z2.YearCycle AND Z2.Zone = 2 AND Z2.DocType = 2),0) +
		ISNULL((SELECT SUM(Z2.NetAmt) FROM REPORT_DRegister Z2 WHERE M.MonthCycle = Z2.MonthCycle AND M.YearCycle = Z2.YearCycle AND  Z2.Zone = 2 AND Z2.DocType = 3),0))
		AS ZONE2,
		(ISNULL((SELECT SUM(Z3.NetAmt) FROM REPORT_DRegister Z3 WHERE M.MonthCycle = Z3.MonthCycle AND M.YearCycle = Z3.YearCycle AND Z3.Zone = 3 AND Z3.DocType = 2),0) +
		ISNULL((SELECT SUM(Z3.NetAmt) FROM REPORT_DRegister Z3 WHERE M.MonthCycle = Z3.MonthCycle AND M.YearCycle = Z3.YearCycle AND  Z3.Zone = 3 AND Z3.DocType = 3),0))
		AS ZONE3,
		(ISNULL((SELECT SUM(Z4.NetAmt) FROM REPORT_DRegister Z4 WHERE M.MonthCycle = Z4.MonthCycle AND M.YearCycle = Z4.YearCycle AND Z4.Zone = 4 AND Z4.DocType = 2),0) +
		ISNULL((SELECT SUM(Z4.NetAmt) FROM REPORT_DRegister Z4 WHERE M.MonthCycle = Z4.MonthCycle AND M.YearCycle = Z4.YearCycle AND  Z4.Zone = 4 AND Z4.DocType = 3),0))
		AS ZONE4,
		(ISNULL((SELECT SUM(Z5.NetAmt) FROM REPORT_DRegister Z5 WHERE M.MonthCycle = Z5.MonthCycle AND M.YearCycle = Z5.YearCycle AND Z5.Zone = 5 AND Z5.DocType = 2),0) +
		ISNULL((SELECT SUM(Z5.NetAmt) FROM REPORT_DRegister Z5 WHERE M.MonthCycle = Z5.MonthCycle AND M.YearCycle = Z5.YearCycle AND  Z5.Zone = 5 AND Z5.DocType = 3),0))
		AS ZONE5,
		(ISNULL((SELECT SUM(Z6.NetAmt) FROM REPORT_DRegister Z6 WHERE M.MonthCycle = Z6.MonthCycle AND M.YearCycle = Z6.YearCycle AND Z6.Zone = 6 AND Z6.DocType = 2),0) +
		ISNULL((SELECT SUM(Z6.NetAmt) FROM REPORT_DRegister Z6 WHERE M.MonthCycle = Z6.MonthCycle AND M.YearCycle = Z6.YearCycle AND  Z6.Zone = 6 AND Z6.DocType = 3),0))
		AS ZONE6


	FROM REPORT_DRegister M 
	WHERE 
	(M.DocType = 2 OR M.DocType = 3) AND 
	MonthCycle = @from AND YearCycle = @to
END
GO
/****** Object:  StoredProcedure [dbo].[sp_REPORT_REGISTER_Recieving]    Script Date: 7/18/2017 6:24:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Generate Receiving Register
-- =============================================
CREATE PROCEDURE [dbo].[sp_REPORT_REGISTER_Recieving]
(	@from			int,
	@to				int,
	@isG			bit = 1
)
AS
IF @isG = 1
BEGIN
	SELECT PR.DocNo, PR.DocDate,(DT.Affix + '  ' + PR.RefNo) as RefNo,  C.[Name], PR.[NetAmt] AS [Amount] ,dt.affix
	FROM [REPORT_Register] PR JOIN BASE_Customer C ON PR.SourceCode= C._custindex JOIN GLOBAL_DocType DT ON PR.DocType = DT._DocTypeIndex WHERE PR.DocType IN (1, 4, 14)  AND MonthCycle = @from AND YearCycle = @to
END
ELSE
BEGIN
	SELECT PR.DocNo, PR.DocDate,(DT.Affix + '  ' + PR.RefNo) as RefNo,  C.[Name], PR.[NetAmt] AS [Amount] ,dt.affix
	FROM [REPORT_DRegister] PR JOIN BASE_Customer C ON PR.SourceCode= C._custindex JOIN GLOBAL_DocType DT ON PR.DocType = DT._DocTypeIndex WHERE PR.DocType IN (1, 4, 14)  AND MonthCycle = @from AND YearCycle = @to
END
GO
/****** Object:  StoredProcedure [dbo].[sp_REPORT_REGISTER_WithDrawal]    Script Date: 7/18/2017 6:24:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Generate Withdrawal Register
-- =============================================
CREATE PROCEDURE [dbo].[sp_REPORT_REGISTER_WithDrawal]
(	@from			int,
	@to				int,
	@isG			bit = 1
)
AS
IF @isG = 1
BEGIN 
	SELECT PR.DocNo, PR.DocDate,(DT.Affix + '  ' + PR.RefNo) as RefNo,  C.[Name], PR.[NetAmt] AS [Amount] ,dt.affix
	FROM [REPORT_Register] PR JOIN BASE_Customer C ON PR.SourceCode= C._custindex JOIN GLOBAL_DocType DT ON PR.DocType = DT._DocTypeIndex WHERE PR.DocType IN (9, 12)  AND MonthCycle = @from AND YearCycle = @to
END
ELSE
BEGIN
	SELECT PR.DocNo, PR.DocDate,(DT.Affix + '  ' + PR.RefNo) as RefNo,  C.[Name], PR.[NetAmt] AS [Amount] ,dt.affix
	FROM [REPORT_DRegister] PR JOIN BASE_Customer C ON PR.SourceCode= C._custindex JOIN GLOBAL_DocType DT ON PR.DocType = DT._DocTypeIndex WHERE PR.DocType IN (9, 12)  AND MonthCycle = @from AND YearCycle = @to
END
GO
/****** Object:  StoredProcedure [dbo].[sp_REPORT_REGISTER_WithDrawal]    Script Date: 7/18/2017 6:24:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 3/15/2017
-- Description:	Generate Adjustment Register
-- =============================================
CREATE PROCEDURE [dbo].[sp_REPORT_REGISTER_Adjustment]
(	@DocType		int,		
	@from			int,
	@to				int,
	@isG			bit = 1
)
AS
IF @isG = 1
BEGIN 
	SELECT PR.DocNo, PR.DocDate,(DT.Affix + '  ' + PR.RefNo) as RefNo,  C.[Name], PR.[NetAmt] AS [Amount] ,dt.affix
	FROM [REPORT_Register] PR JOIN BASE_Customer C ON PR.SourceCode= C._custindex JOIN GLOBAL_DocType DT ON PR.DocType = DT._DocTypeIndex WHERE PR.DocType = @DocType  AND MonthCycle = @from AND YearCycle = @to 			
END
ELSE
BEGIN
	SELECT PR.DocNo, PR.DocDate,(DT.Affix + '  ' + PR.RefNo) as RefNo,  C.[Name], PR.[NetAmt] AS [Amount] ,dt.affix
	FROM [REPORT_DRegister] PR JOIN BASE_Customer C ON PR.SourceCode= C._custindex JOIN GLOBAL_DocType DT ON PR.DocType = DT._DocTypeIndex WHERE PR.DocType = @DocType  AND MonthCycle = @from AND YearCycle = @to 			
END
GO
/****** Object:  StoredProcedure [dbo].[sp_REPORT_InventoryChecker]     Script Date: 7/26/2017 11:22:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 7/14/2017
-- Description:	Inventory Checker
-- =============================================
CREATE PROCEDURE [dbo].[sp_REPORT_InventoryChecker] 
(	@DocNo			int,
	@isG			bit=1,
	@DocType		int
)
AS
BEGIN
	SELECT DISTINCT PT.DocNo, PT.DocDate, C1.CustomerCode, C1.[name], C1.[address], C1.[tinno], P.productcode,P.ccode,P.scode, P.description AS [Descp],
	PT.Qty, PT.UOM, [dbo].[GetUOMStocks](@isG,PT.Prodindex,PT.UOM) [SysQty],PT.Qty2 [PhyCnt],PT.Qty2 - ([dbo].[GetUOMStocks](@isG,PT.Prodindex,PT.UOM)) [Variances],PT.RefName, PT.RefNo,
	C.name AS [category]
	FROM GLOBAL_ProductTrans PT INNER JOIN 
	BASE_Customer C1 ON PT.SourceIndex = C1._custindex INNER JOIN
	BASE_Product P ON P._prodindex = PT.prodindex INNER JOIN 
	BASE_Category C ON P.category = C.categoryid 	
	WHERE PT.docno = @DocNo and PT.doctype = @DocType
END
GO
