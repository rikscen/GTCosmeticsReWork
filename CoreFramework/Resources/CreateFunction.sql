/****** Object:  UserDefinedFunction [dbo].[GetPhysicalCountTotalQty]    Script Date: 07/15/2017 01:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 7/14/2017
-- Description:	Function that Return total qty of physical count in pieces
-- =============================================
CREATE FUNCTION [dbo].[GetPhysicalCountTotalQty]
(   @prodindex		int,
	@MonthCycle		int,
	@YearCycle		int,
	@isG			bit,
	@isReport		bit,
	@DocType		int,
	@DocNo			int
)
RETURNS INTEGER
AS
BEGIN
	-- Declare the return variable here
	DECLARE @result		int

	-- Add the T-SQL statements to compute the return value here
	IF @isG = 1
	BEGIN
		IF @isReport = 1
		BEGIN
			SET @result = (SELECT SUM(qty*totalconv) FROM GLOBAL_ProductTrans PT WHERE PT.DocType = @DocType AND MonthCycle = @MonthCycle AND YearCycle = @YearCycle AND PT.ProdIndex =  @Prodindex)
		END
		ELSE
		BEGIN
			SET @result = (SELECT SUM(qty*totalconv) FROM GLOBAL_ProductTrans PT WHERE PT.DocType = @DocType AND PT.DocNo = @DocNo AND PT.ProdIndex =  @Prodindex)
		END
	END
	ELSE
	BEGIN
		IF @isReport = 1
		BEGIN
			SET @result = (SELECT SUM(qty*totalconv) FROM GLOBAL_DProductTrans PT WHERE PT.DocType = @DocType AND MonthCycle = @MonthCycle AND YearCycle = @YearCycle AND PT.ProdIndex =  @Prodindex)
		END
		ELSE
		BEGIN
			SET @result = (SELECT SUM(qty*totalconv) FROM GLOBAL_DProductTrans PT WHERE PT.DocType = @DocType AND PT.DocNo = @DocNo AND PT.ProdIndex =  @Prodindex)
		END
	END

	-- Return the result of the function
	RETURN @result
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetUOMConversion]    Script Date: 07/15/2017 01:28:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 7/14/2017
-- Description:	Function that return uom conversion
-- =============================================
CREATE FUNCTION [dbo].[GetUOMConversion]
(   
	@prodindex		int,
	@uomname		nvarchar(20)
)
RETURNS INTEGER
AS
BEGIN
	-- Declare the return variable here
	DECLARE @result		int

	-- Add the T-SQL statements to compute the return value here
	SET @result = (SELECT qty FROM BASE_UOM WHERE prodindex = @prodindex and uom = @uomname)

	-- Return the result of the function
	RETURN @result

END
GO
/****** Object:  UserDefinedFunction [dbo].[GetUOMStocks]    Script Date: 7/26/2017 3:17:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Eddie Cabellon
-- Create date: 7/14/2017
-- Description:	Function that Return total qty of uom
-- =============================================
CREATE FUNCTION [dbo].[GetUOMStocks]
(   @isG			bit,
	@ProdIndex		int,
	@UOM			nvarchar(20)
)
RETURNS INTEGER
AS
BEGIN
	-- Declare the return variable here
	DECLARE @result		int

	-- Add the T-SQL statements to compute the return value here
	IF @isG = 1
	BEGIN
		IF @UOM = 'CASES' 
		BEGIN
			SELECT 	@result = ROUND((T.EndBalpc/[dbo].[GetUOMConversion](P._ProdIndex,'CASES')),0,1)
			FROM BASE_Product P INNER JOIN 
			GLOBAL_Tabulation T ON P._ProdIndex = T.ProdIndex
			where T.Prodindex = @ProdIndex
		END
		ELSE IF @UOM = 'IB'
		BEGIN
			SELECT 	@result = (CASE WHEN [dbo].[GetUOMConversion](P._ProdIndex,'IB') <> 0 THEN 
				ROUND(((T.EndBalpc % [dbo].[GetUOMConversion](P._ProdIndex,'CASES'))/[dbo].[GetUOMConversion](P._ProdIndex,'IB')) ,0,1)	ELSE 0 END)
			FROM BASE_Product P INNER JOIN 
			GLOBAL_Tabulation T ON P._ProdIndex = T.ProdIndex
			where T.Prodindex = @ProdIndex
		END
		ELSE
		BEGIN
			SELECT 	@result = (CASE WHEN [dbo].[GetUOMConversion](P._ProdIndex,'IB') = 0 OR [dbo].[GetUOMConversion](P._ProdIndex,'IB') IS NULL THEN 
				ROUND(((T.EndBalpc % [dbo].[GetUOMConversion](P._ProdIndex,'CASES'))) ,0,1)
			ELSE
				ROUND(((T.EndBalpc % [dbo].[GetUOMConversion](P._ProdIndex,'CASES'))%[dbo].[GetUOMConversion](P._ProdIndex,'IB')) ,0,1)
			END)
			FROM BASE_Product P INNER JOIN 
			GLOBAL_Tabulation T ON P._ProdIndex = T.ProdIndex
			where T.Prodindex = @ProdIndex
		END
	END
	if @result IS NULL 
	BEGIN
		SET @result = 0
	END
	-- Return the result of the function
	RETURN @result
END
GO
