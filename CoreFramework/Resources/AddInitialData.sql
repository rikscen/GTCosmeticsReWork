/****** Insert PriceType ******/
INSERT INTO [dbo].[BASE_PriceType]([priceType],[datestamp],[status]) VALUES ('LP without VAT','1/30/2017',1)
GO
INSERT INTO [dbo].[BASE_PriceType]([priceType],[datestamp],[status]) VALUES ('LP with VAT','1/30/2017',1)
GO
/****** Insert Route ******/
INSERT INTO [dbo].[BASE_Route] ([name] ,[datestamp] ,[status]) VALUES ('Route1' ,'2/05/2017' ,1)
GO
/****** Insert SalesMan ******/
INSERT INTO [dbo].[BASE_SalesMan] ([name] ,[datestamp] ,[status]) VALUES (' ' ,'2/05/2017' ,1)
GO
/****** Insert Category ******/
INSERT INTO [BASE_Category] ([parentcategoryId],[name],[datestamp],[status]) VALUES (0,N'DongA Pharma Phils Corp','20170314',1);
GO
INSERT INTO [BASE_Category] ([parentcategoryId],[name],[datestamp],[status]) VALUES (0,N'Ecossential Foods','20170314',1);
GO
INSERT INTO [BASE_Category] ([parentcategoryId],[name],[datestamp],[status]) VALUES (0,N'KALBE','20170314',1);
GO
INSERT INTO [BASE_Category] ([parentcategoryId],[name],[datestamp],[status]) VALUES (0,N'Crystal Repacking','20170314',1);
GO
INSERT INTO [BASE_Category] ([parentcategoryId],[name],[datestamp],[status]) VALUES (0,N'GTCosmetics Marketing ','20170314',1);
GO
INSERT INTO [BASE_Category] ([parentcategoryId],[name],[datestamp],[status]) VALUES (0,N'LESLIE','20170314',1);
GO
INSERT INTO [BASE_Category] ([parentcategoryId],[name],[datestamp],[status]) VALUES (0,N'CAMBERT','20170314',1);
GO
INSERT INTO [BASE_Category] ([parentcategoryId],[name],[datestamp],[status]) VALUES (0,N'Gold River','20170314',1);
GO
INSERT INTO [BASE_Category] ([parentcategoryId],[name],[datestamp],[status]) VALUES (0,N'MEIKEN ','20170314',1);
GO
INSERT INTO [BASE_Category] ([parentcategoryId],[name],[datestamp],[status]) VALUES (0,N'KIMBERLY','20170314',1);
GO
INSERT INTO [BASE_Category] ([parentcategoryId],[name],[datestamp],[status]) VALUES (0,N'BROLLEE','20170314',1);
GO
INSERT INTO [BASE_Category] ([parentcategoryId],[name],[datestamp],[status]) VALUES (0,N'MIKEWELL','20170314',1);
GO
INSERT INTO [BASE_Category] ([parentcategoryId],[name],[datestamp],[status]) VALUES (0,N'UNILEVER','20170314',1);
GO
INSERT INTO [BASE_Category] ([parentcategoryId],[name],[datestamp],[status]) VALUES (0,N'SUMMATRADE','20170314',1);
GO
INSERT INTO [BASE_Category] ([parentcategoryId],[name],[datestamp],[status]) VALUES (0,N'MOST HIGH Intertrade Inc.','20170314',1);
GO
INSERT INTO [BASE_Category] ([parentcategoryId],[name],[datestamp],[status]) VALUES (0,N'Kino Consumer Phils Corp.','20170314',1);
GO
INSERT INTO [BASE_Category] ([parentcategoryId],[name],[datestamp],[status]) VALUES (0,N'CSCOR','20170314',1);
GO
INSERT INTO [BASE_Category] ([parentcategoryId],[name],[datestamp],[status]) VALUES (0,N'WRIGLEY PHIL. INC.','20170314',1);
GO

/****** Insert Product ******/
SET IDENTITY_INSERT [GLOBAL_DocType] ON
INSERT INTO [GLOBAL_DocType] ([_DocTypeIndex],[name],[docno],[affix],[datestamp],[status]) VALUES (1,N'INCOMING',N'0',N'INC','20170316',1);
GO
INSERT INTO [GLOBAL_DocType] ([_DocTypeIndex],[name],[docno],[affix],[datestamp],[status]) VALUES (2,N'SALES INVOICE',N'0',N'INV','20170316',1);
GO
INSERT INTO [GLOBAL_DocType] ([_DocTypeIndex],[name],[docno],[affix],[datestamp],[status]) VALUES (3,N'DELIVERY RECIEPTS SALES',N'0',N'DRS','20170316',1);
GO
INSERT INTO [GLOBAL_DocType] ([_DocTypeIndex],[name],[docno],[affix],[datestamp],[status]) VALUES (4,N'INTER WAREHOUSE TRANSFER',N'0',N'IWH','20170316',1);
GO
INSERT INTO [GLOBAL_DocType] ([_DocTypeIndex],[name],[docno],[affix],[datestamp],[status]) VALUES (5,N'LOADING AUTHORITY',N'0',N'LA','20170316',1);
GO
INSERT INTO [GLOBAL_DocType] ([_DocTypeIndex],[name],[docno],[affix],[datestamp],[status]) VALUES (6,N'PHYSICAL COUNT',N'0',N'PHY','20170316',1);
GO
INSERT INTO [GLOBAL_DocType] ([_DocTypeIndex],[name],[docno],[affix],[datestamp],[status]) VALUES (7,N'WITHDRAWAL SLIP',N'0',N'WDS','20170316',1);
GO
INSERT INTO [GLOBAL_DocType] ([_DocTypeIndex],[name],[docno],[affix],[datestamp],[status]) VALUES (8,N'BEGINNING BALANCE',N'0',N'BI','20170316',1);
GO
INSERT INTO [GLOBAL_DocType] ([_DocTypeIndex],[name],[docno],[affix],[datestamp],[status]) VALUES (9,N'DELIVERY RECIEPTS  FREE GOODS',N'0',N'DRF','20170316',1);
GO
INSERT INTO [GLOBAL_DocType] ([_DocTypeIndex],[name],[docno],[affix],[datestamp],[status]) VALUES (10,N'RETURN GOODS STOCK',N'0',N'RGS','20170316',1);
GO
INSERT INTO [GLOBAL_DocType] ([_DocTypeIndex],[name],[docno],[affix],[datestamp],[status]) VALUES (11,N'EXPIRY DATE POSTING',N'0',N'EXP','20170316',1);
GO
INSERT INTO [GLOBAL_DocType] ([_DocTypeIndex],[name],[docno],[affix],[datestamp],[status]) VALUES (12,N'INTER WAREHOUSE TRANSFER - OUT',N'0',N'OWH','20170316',1);
GO
INSERT INTO [GLOBAL_DocType] ([_DocTypeIndex],[name],[docno],[affix],[datestamp],[status]) VALUES (13,N'INCOMING - AJUSTMENT',N'0',N'AJM','20170316',1);
GO
INSERT INTO [GLOBAL_DocType] ([_DocTypeIndex],[name],[docno],[affix],[datestamp],[status]) VALUES (14,N'INCOMING - DISTRIBUTOR',N'0',N'DIS','20170316',1);
GO
INSERT INTO [GLOBAL_DocType] ([_DocTypeIndex],[name],[docno],[affix],[datestamp],[status]) VALUES (15,N'DELIVERY RECIEPTS ADJUSTMENT',N'0',N'DRA','20170316',1);
GO
INSERT INTO [GLOBAL_DocType] ([_DocTypeIndex],[name],[docno],[affix],[datestamp],[status]) VALUES (16,N'INVENTORY CHECKER',N'0',N'IVC','20170316',1);
GO
SET IDENTITY_INSERT [GLOBAL_DocType] OFF
GO

SET IDENTITY_INSERT [BASE_Customer] ON
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (1,1,1,N'VGLCEB',N'',N'VGL INDUSTRIES INC - CEBU WAREHOUSE',N'MC BRIONES ST.,HIWAY ',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (2,1,1,N'DPPI',N'',N'DONGA PHARMA PHILS. INC.',N'UNIT 1205 ATLANTA CENTER, 31 ANNAPOLIS ST. GREENHILLS',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (3,1,1,N'0725',N'',N'MERCURY DRUG CORP-(0725) CALBAYOG MAGSAYSAY',N'MAGSAYSAY BLVD.COR.RUEDA ST.',N'__________',N'000-388-474-000',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (4,1,1,N'0782',N'',N'SANFORD MARKETING CORP.-(0782)ELIZABETH MALL',N'LEON KILAT ST.',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (5,1,1,N'0785',N'',N'MERCURY DRUG CORP.(0785)NAGA POBLACION',N'CEBU SOUTH RD.POBLACION CEBU CITY 6037 PHIL.',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,2,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (6,1,1,N'2035',N'',N'MERCURY DRUG CORP.-(2035)CEBU MABOLO A.SORIANO',N'JUAN LUNA ST. COR.A.SORIANO ST..MABOLO CEBU CITY CEBU 6000 PHIL.',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (7,1,1,N'2044',N'',N'MERCURY DRUG CORP.,(2044)HILONGOS POBLACION',N'Q.V.ALCUINO ST.,CENTRAL POBLACION HILONGOS LEYTE 8524 PHIL.',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (8,1,1,N'0705',N'',N'MERCURY DRUG CORP.-(0705)BAYBAY BONIFACIO',N'A BONIFACIO ST.BAYBAY CITY LEYTE 6521 PHIL.',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (9,1,1,N'2026',N'',N'MERCURY DRUG CORP.-(2026)NAVAL POBLACION',N'P.INOCENTES ST.COR.BALLESTEROS AVE.,POBLACION NAVAL BILIRAN 6543 PHIL.',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (10,1,1,N'2032',N'',N'MERCURY DRUG CORP.-(2032)PALOMPON RIZAL',N'RIZAL ST.,POBLACION CENTRAL 2 PALOMPON LEYTE 3538 PHIL.',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (11,1,1,N'0990',N'',N'MERCURY DRUG CORP.-(0990)BORONGGAN ANACTA',N'F.ANACTA ST.BORONGAN EASTERN SAMAR 6800 PHIL.',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (12,1,1,N'0712',N'',N'MERCURY DRUG.-(0712)MAASIN J JUAN LUNA',N'ENAGE ST. COR. J LUNA.,TUNGA-TUNGA MAASIN CITY LEYTE 6600 PHIL.',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (13,1,1,N'0783',N'',N'MERCURY DRUG.-(0783)ORMOC BURGOS ',N'NORKIS BLDG.,BURGOS ST.ORMOC CITY LEYTE 6541 PHIL',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (14,1,1,N'0992',N'',N'MERCURY DRUG CORP.-(0992)TACLOBAN RIZAL',N'RIZAL AVE.TACLOBAN CITY LEYTE 6500 PHIL.',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (15,1,1,N'0752',N'',N'MERCURY DRUG CORP.-(0752)CATBALOGAN DEL ROSARIO',N'DEL ROSARIO ST.CATBALOGAN CITY WESTERN SAMAR 6700 PHIL.',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (16,1,1,N'0906',N'',N'MERCURY DRUG CORP.-(0906)CEBU LEON KILAT',N'COLON ST.CEBU CITY CEBU 6000 PHIL.',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (17,1,1,N'0765',N'',N'MERCURY DRUG CORP.-(0765)CEBU ASIATOWN IT PARK',N'THE WALK ASIATOWN IT PARK,;AHUG CEBU CITY CEBU 6000 PHIL.',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (18,1,1,N'2025',N'',N'MERCURY DRUG CORP.-(2025)GUADALUPE CEBU',N'M.VELEZ ST.,GUADALUPE CEBU CITY 6000 PHIL.',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (19,1,1,N'0940',N'',N'MERCURY DRUG.-(0940)TAGBILIRAN CITY CP GARCIA',N'B.INTING ST.COR.C.P GARCIA AVE.TAGBILIRAN CITY BOHOL 6300 PHIL.',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (20,1,1,N'0735',N'',N'MERCURY DRUG.-(0735)TACLOBAN REAL',N'REAL ST.COR.VETERANOS AVE.TACLOBAN CITY LEYTE 6500 PHIL',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (21,1,1,N'0928',N'',N'MERCURY DRUG CORP.-(0928)TACLOBAN BURGOS',N'P.BURGOS ST.TACLOBAN CITY LEYTE 6500 PHIL',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (22,1,1,N'PHIL',N'',N'PHILIPPINE SEVEN CORPORATION-CEBU',N'TABOK,MANDAUE CITY',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (23,1,1,N'2005',N'',N'MERCURY DRUG.-(2005)MANDAUE BASAK FATIMA',N'MANDAUE NAT''L ROA H-WAY,BASAK MANDAUE CITY CEBU 6014 PHIL',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (24,1,1,N'FAMI',N'',N'PHILIPPINE FAMILYMART CVS,INC.',N'FAMILY TABLE INC LOT 11 BLK 15 J DE VERA ST.NORTH RECLAMATION AREA,CARETTA CEBU CITY CEBU PHIL.',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (25,1,1,N'0976',N'',N'MERCURY DRUG CORP.-(0976)AYALA CENTER',N'AYALA CENTER ARCH.REYES AVE. CEBU CITY 6000 PHIL.',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (26,1,1,N'2050',N'',N'MERCURY DRUG CORP.-(2050)CEBU CITY OSMEÑA AVILA',N'PRES.SERGIO OSMEÑA BLVD.COR.DON JOSE AVILA ST.,CEBU CITY CEBU 6000 PHIL ',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (27,1,1,N'0719',N'',N'MERCURY DRUG.-(0719)CONSOLACION NAT''L HWAY',N'NAT''L HWAY,CANSAGA CONSOLACION CEBU 6001 PHIL',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,2,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (28,1,1,N'0944',N'',N'MERCURY DRUG CORP.-(0944)CATBALOGAN ALLEN',N'ALLEN AVE. CATBALOGAN CITY WESTERN SAMAR 6700 PHIL.',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (29,1,1,N'0755',N'',N'MERCURY DRUG CORP..-(0755)CARCAR SAN VICENTE',N'SAN VICENTE ST.,POBLACION CARCAR CEBU PHIL.',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,2,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (30,1,1,N'2014',N'',N'MERCURY DRUG CORP.-(2014)TACLOBAN SAGKAHAN',N'REAL ST.COR.KALIPAYAN RD.,SAGKAHAN TACLOBAN CITY LEYTE',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (31,1,1,N'0731',N'',N'MERCURY DRUG CORP.-(0731)LILOAN HIGHWAY',N'LILOAN NAT''L HWAY LILOAN CEBU 6002 PHIL',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,2,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (32,1,1,N'0787',N'',N'SANFORD MARKETING CORP.-(0787) PARKMALL',N'168 QUANO AVENUE,RECELMATION AREA MANDAUE CITY CEBU',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (33,1,1,N'1560',N'',N'SANFORD MARKETING CORP.-(1560) NAGA CEBU',N'NAGA CEBU LEAH''S SQUARE EAST POBLACION NAGA CITY CEBU',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,2,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (34,1,1,N'1339',N'',N'SANFORD MARKETING CORP..-(1339)CARCAR CEBU',N'CARCAR CEBU NATALIO B. BACALSO SOUTH NATIONAL HIGWAY CARCAR CITY CEBU',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,2,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (35,1,1,N'0727',N'',N'MERCURY DRUG CORP.-(0727) TOLEDO KATIPUNAN',N'KATIPUNAN ST.TOLEDO CITY CEBU 3038PHIL',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,2,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (36,1,1,N'0793',N'',N'MERCURY DRUG CORP.-(0793)BALAMBAN SANCHEZ',N'D.C SANCHEZ ST.,POBLACION BALAMBAN CEBU 6041',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,2,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (37,1,1,N'0771',N'',N'MERCURY DRUG CORP.-(0771) TALISAY CITY TABUNOK',N'RALEN BLDG.III,N.BACALSO AVE.,TABUNOK TALISAY CITY CEBU 6045 PHIL.',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,2,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (38,1,1,N'2059',N'',N'MERCURY DRUG CORP.-(2059)MANDAUE MAGUIKAY',N'M.C BRIONES ST. COR.M.L QUEZON ST.,MAGUIKAY MANDAUE CITY CEBU',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (39,1,1,N'2055',N'',N'MERCURY DRUG CORP.-(2055)TAGBILARAN MANGA',N'C.P GARCIA NORTH AVE., PUROK 1 MANGA TAGBILARAN CITY BOHOL',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (40,1,1,N'0420',N'',N'SUPER SHOPPING MARKET,INC.-(0420)JMALL',N'J CENTRE MALL,A.S FORTUNA ST. CORNER V. ALBANO ST,BAKILID EXTENSION MANDAUE CITY CEBU',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (41,1,1,N'0781',N'',N'SANFORD MARKETING CORP.-(0781)MACTAN',N'MACTAN QUEZON NATIONAL HIGHWAY,MEPZA 1 LAPU LAPU CITYC EBU',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (42,1,1,N'0033',N'',N'SUPERVALUE INC.-(0033) CEBU RECLAMATION',N'CEBU RECLAMATION NORTH RECLAMATION AREA, JUAN LUNA EXTENSION CEBU CITY CEBU',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (43,1,1,N'CAMPO',N'',N'CAMPO GENERAL MERCHANDISE',N'BRGY.POOC,TALISAY CITY CEBU',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,2,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (44,1,1,N'SAN',N'',N'SANFORD MARKETING CORP.-MARIBAGO',N'MARIBAGO QUEZON NAT''L HIGHWAY ',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (45,1,1,N'0948',N'',N'MERCURY DRUG CORP.-(0948)',N'MDC-0948 ALLEN AVE.,CATBALOGAN,6700 ',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (46,1,1,N'2095',N'',N'MERCURY DRUG CORP.-(2095) ALLEN RIZAL',N'RIZAL ST.,ZONE 1,BRGY.KINABRANAN ALLEN NORTHERN SAMAR 6405 PHILIPPINES',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (47,1,1,N'0978',N'',N'MERCURY DRUG CORP.-(0978)CATARMAN JACINTO',N'JACINTO ST.COR.MAGSAYSAY ST.CATARMAN NORTHERN SAMAR 6400 PHILIPPIINES',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (48,1,1,N'2092',N'',N'MERCURY DRUG CORP.-(2092) BOHOL JAGNA PAGINA',N'STA CRUZ ST.PAGINA JAGNA BOHOL 6308 PHIL',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (49,1,1,N'0949',N'',N'MERCURY DRUG CORP.-(0949)TALISAY CITY TABUNOK',N'TABUNOK HIWAY TALISAY CITY CEBU 6045 PHIL',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,2,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (50,1,1,N'4080',N'',N'SUPER SHOPPING MARKET INC.',N'SUBANGDAKO MANDAUE CITY 6014',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (51,1,1,N'4142',N'',N'SANFORD MARKETING CORP.',N'RECLEMATION AREA MANDAUE CITY',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (52,1,1,N'1499',N'',N'SUPER SHOPPING MARKET, INC.-(1499)LAPU-LAPU',N'(1499)LAPU-LAPU PUEBLO VERDE, MACTAN ECONOMIC ZONE, KADAUGAN AVE.BASAK LAPU-LAPU CITY CEBU',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,2,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (53,1,1,N'0907',N'',N'MERCURY DRUG CORP.-(0907) CEBU JUAN LUNA',N'COLON ST. COR. JUAN LUNA ST. CEBU CITY 6000 PHILIPPINES',N'__________',N'000-388-474-000',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (54,1,1,N'2303',N'',N'MERCURY DRUG CORP.-(2303) LAPU-LAPU CITY POBLACION',N'LOPEZ JAENA STREET CORNER F MARTER STREET POBLACION LAPU-LAPU CITY',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,2,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (55,1,1,N'0965',N'',N'MERCURY DRUG CORP.-(0965) CALBAYOG CITY NIJAGA',N'CORNER GOMEZ & NIJAGA STREETS CALBAYOG CITY',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (56,1,1,N'0319',N'',N'SUPER SHOPPING MARKET, INC.- (0319)CEBU',N'(0319)CEBU LOGARTA AVENUE, SUBANGDAKU MANDAUE CITY CEBU',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (57,1,1,N'1618',N'',N'SUPERVALUE INC.(1618)',N'SEASIDE CEBU SOUTH ROAD PROPERTIES MAMBALING RD. CEBU CITY',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (58,1,1,N'0969',N'',N'MERCURY DRUG CORP.-(0969) LAPU-LAPU CITY GY DELA S',N'G.Y.DELA SERNA ST.LAPU-LAPU CITY CEBU 6015',N'__________',N'000-388-474-000',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,2,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (59,1,1,N'0784',N'',N'MERCURY DRUG CORP.-(0784) LAPU-LAPU CITY BASAK (OT',N'M.PATALINGHUG JR.AVE.BASAK LAPU-LAPU CITY CEBU 6015',N'__________',N'000-388-474-000',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,2,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (60,1,1,N'VVVE',N'',N'VVVE COOPERATIVE',N'H-WAY MANDAUE CITY',N'___3458450',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:46.340',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (61,1,1,N'2056',N'',N'MERCURY DRUG CORP.-(2056)BANTAYAN BINAOBAO',N'ML QUEZON ST.,BINAOBAO(POB.)BANTAYAN CEBU 6052 PHIL.',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (62,1,1,N'0722',N'',N'MERCURY DRUG CORP.-(0722) BOGO PUBLIC MARKET',N'PUBLIC MARKET BOGO CITY CEBU 0010 PHIL.',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,2,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (63,1,1,N'2078',N'',N'MERCURY DRUG CORP.-(2078)PALO CATHEDRAL',N'PALO COMM''L BLGD.CATHEDRA GROUND PIO PEDROSA AVE. COR.SAN JOSE ST.LUNTAD PALO LEYTE 6501 PHIL.',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (64,1,1,N'0739',N'',N'MERCURY DRUG CORP.-(0739)GUIUAN LUGAY',N'LUGAY ST.GUIUAN EASTERN SAMAR 6809 PHIL.',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (65,1,1,N'0933',N'',N'MERCURY DRUG CORP.-(0933) ORMOC REAL',N'SERAFICA BLDG,.REAL ST.ORMOC CITY LEYTE 6541 PHIL',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (66,1,1,N'2010',N'',N'MERCURY DRUG CORP.-(2010)SOGOD POBLACION',N'L.REGIS ST.SOGOD SOUTHERN LEYTE 6606 PHIL.',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (67,1,1,N'2076',N'',N'MERCURY DRUG CORP.-(2076) MANTUYONG MANDAUE CITY',N'SIR FRANCISCO BLDG.,B CENIZA ST.,MANTUYONG MANDAUE CITY CBU 6014 PHIL',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (68,1,1,N'0914',N'',N'MERCURY DRUG CORP.-(0914)TACLOBAN SALAZAR',N'SALAZAR ST.TACLOBAN CITY LEYTE 6500 PHIL',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (69,1,1,N'0773',N'',N'MERCURY DRUG.-(0773)TACLOBAN ROBINSONS',N'ROBINSONS MALL..MARASBARAS TACLOBAN CITY LEYTE 6500 PHIL',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (70,1,1,N'0746',N'',N'MERCURY DRUG CORP.-(0746)CEBU TALAMBAN',N'TALAMBAN HIGHWAY,TALAMBAN CEBU CITY 6000 PHIL',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (71,1,1,N'2034',N'',N'MERCURY DRUG CORP.-(2034)MANDAUE CENTRO',N'VILLA GARCIA BLDG.,S.B.CABAHUG ST.,CENTRI MANDAUE CITY CEBU 6014 PHIL',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (72,1,1,N'0901',N'',N'MERCURY DRUG CORP.-(0901)LABANGON PUNTA PRINCESA',N'F.LLMAS ST.,PUNTA PRINCESA CEBU CITY CEBU 6000 PHIL',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (73,1,1,N'2036',N'',N'MERCURY DRUG.-(2036)CEBU BSAK PARDO',N'CEBU SOUTH RD.BASAK PARDO CEBU CITY CEBU 6000 PHIL',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (74,1,1,N'0937',N'',N'MERCURY DRUG CORP.-(0937)CEBU FUENTE',N'EL CADO REALITY BLDG.,FUENTE OSMEÑA REOTONDA CEBU CITY CEBU 6000 PHIL',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (75,1,1,N'2027',N'',N'MERCURY DRUG.-(2027)LILOAN NAT''L HWAY YATI',N'NAT''L HIWAY,YATI LILOAN CEBU 6002 PHIL',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,2,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (76,1,1,N'2054',N'',N'MERCURY DRUG CORP.-(2054)TUBIGON POBLACION',N'JESUS VANO BLVD.COR.CABANGBANG ST.,POBLACION TUBIGON BOHOL 6033 PHIL',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (77,1,1,N'2100',N'',N'MERCURY DRUG CORP.-(2100)CEBU ARGAO',N'RM.102,106&108 FOUR ACES BLDG.NATIONAL HIGHWAY ARGAO CEBU',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,2,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (78,1,1,N'2038',N'',N'MERCURY DRUG CORP.-(2038) CEBU PARDO',N'NAT''L,PARDO CEBU CITY CEBU 6000 PHIL',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (79,1,1,N'1072',N'',N'SANFORD MARKETING CORP.-(1072)BASAK MANDAUE CITY',N'BASAK MANDAUE CITY',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (80,1,1,N'1573',N'',N'SANFORD MARKETING CORP.-(1573)CITY MALL CONSOLACIO',N'CONSOLACION CEBU',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,2,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (81,1,1,N'1002',N'',N'SANFORD MARKETING CORP.-(1002)CEBU MAGUIKAY',N'MANUEL L. QUEZON AVENUE MANDAUE CITY CEBU',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (82,1,1,N'2085',N'',N'MERCURY DRUG CORP.-(2085)SANGI TOLEDO',N'DIOSDADO MACAPAGAL ST.SANGI TOLEDO CITY CEBU PHIL',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,2,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (83,1,1,N'2037',N'',N'MERCURY DRUG CORP.-(2037) CEBU BUSAY',N'NIVEL HILLS, BUSAY CEBU CITY CEBU 6000 PHIL. ',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (84,1,1,N'0748',N'',N'MERCURY DRUG CORP.-(0748)MINGLANILLA POBLACION',N'N.B BACALSO SOUTH NAT''L HWAY MINGLANILLA CEBU',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,2,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (85,1,1,N'2109',N'',N'MERCURY DRUG.-(2109)CEBU CITY ACC CORP.CENTER',N'STALL 104 AND 105,GROUND FLOOR,ACC CORP.CENTER BOHOL ST.BRGY LUZ CEBU CITY CEBU PHIL.',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (86,1,1,N'1001',N'',N'SANFORD MARKETING CORP.-(1001)CEBU CANDUMAN',N'CEBU CANDUMAN H.ABELLANA ST. MANDAUE CITY',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (87,1,1,N'2114',N'',N'MERCURY DRUG CORP.-(2114) CEBU CITY BULACAO',N'239 SOUTH ROAD SAN ANTONIO BULACAO, CEBU CITY',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,1,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (88,1,1,N'2099',N'',N'MERCURY DRUG CORP.-(2099) LAPU-LAPU CITY POBLACION',N'LOPEZ JAENA STREET CORNER F MARTER STREET POBLACION LAPU-LAPU CITY',N'__________',N'   -   -   -',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,2,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (89,1,1,N'2116',N'',N'MERCURY DRUG CORP.-(2116) TACLOBAN CITY MAHARLIKA',N'MAHARLIKA HWAY PUROK 4, BRGY. 91 (ABUCAY) TACLOBAN CITY LEYTE',N'__________',N'000-388-474-000',N'-         ',N'SALES INVOICE       ',N'CONSESSION ACCOUNT',0,0,0,0,0,6,'20170404 16:04:13.043',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[postalcode],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (90,1,1,N'GTCMI',N'Default',N'GT COSMETICS MANUFACTURING INC.',N'PUROK GEMILINA, TAYUD LILOAN CEBU PHILIPPINES',N'3017',N'431911816000',N'30 Days   ',N'DELIVERY RECEIPT    ',N'CONCESSION ACCOUNT',0,0,0,0,0,1,'20170620',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[postalcode],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (91,1,1,N'GTCMI',N'Default',N'GT COSMETICS MANUFACTURING INC.',N'PUROK GEMILINA, TAYUD LILOAN CEBU PHILIPPINES',N'3017',N'431911816000',N'30 Days   ',N'DELIVERY RECEIPT    ',N'CONCESSION ACCOUNT',0,0,0,0,0,1,'20170620',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[postalcode],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (92,1,1,N'KCPI',N'Default',N'KIMBERLY CLARK PHILIPPINES INC.',N'23rd Flr The Trade and Financial Tower, 7th Ave. Cor. 32nd St., Bonifacio Global City, Taguig,Philippines',N'0000',N'000162194',N'30 Days   ',N'SALES INVOICE       ',N'CONCESSION ACCOUNT',0,0,0,0,0,6,'20170621',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[contactno],[postalcode],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (93,1,1,N'GRMDC',N'Default',N'GOLD RIVER MANAGEMENT AND DEVT. CORP.',N'Unit 2015 Herrera Tower, 98 Herrera St. Salcedo Village, Makati City',N'753-3435',N'0000',N'000121709',N'30 Days   ',N'DELIVERY RECEIPT    ',N'CONCESSION ACCOUNT',0,0,0,0,0,6,'20170621',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[postalcode],[tinno],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (94,1,1,N'0740',N'Default',N'MERCURY DRUG CORP.-0740 DANAO CITY RALOTA OTC',N'RALOTA ST.DANAO CITY CEBU PHILIPPINES',N'6004',N'000388474000',N'30 Days   ',N'SALES INVOICE       ',N'CONCESSION ACCOUNT',0,0,0,0,0,1,'20170624',1);
GO
INSERT INTO [BASE_Customer] ([_CustIndex],[priceindex],[smanindex],[customercode],[clientcode],[name],[address],[postalcode],[terms],[doctype],[custtype],[discnt1],[discnt2],[discnt3],[discnt4],[discnt5],[zone],[datestamp],[status]) VALUES (95,1,1,N'1468',N'Default',N'SANFORD MARKETING CORP.- 1468 TACLOBAN',N'TACLOBAN JUSTICE ROMUALDEZ ST.,DOWNTOWN TACLOBAN CITY LEYTE Philippines',N'0',N'30 Days   ',N'SALES INVOICE       ',N'CONCESSION ACCOUNT',0,0,0,0,0,6,'20170624',1);
GO
SET IDENTITY_INSERT [BASE_Customer] OFF
SET IDENTITY_INSERT [BASE_Product] ON
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483648,N'3908675',N'BI034154A',N'BIMOLI COOKING PALM OIL 1LX12''S',11,N'1 ltr',595,'20170707',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483647,N'3908676',N'BI036148A',N'BIMOLI COOKING OIL BOTTLE 24X620ML',11,N'620ml',597,'20170707',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483644,N'3908674',N'DA606760A',N'DAISY CONDENSADA 390MLX48',11,N'390ml',596,'20170622',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[datestamp],[status]) VALUES (-2147483643,N'2350006',N'LA320019A',N'LAUAT HERBAL SHAMPOO 250MLX24',7,N'250ml','20170622',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483642,N'2350005',N'LA320026A',N'LAUAT HERBAL SHAMPOO 60MLX72',7,N'60ml',590,'20170622',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483641,N'2350004',N'LA320712A',N'LAUAT HERBAL ROC HAIR FALL DEFENSE 250MLX24',7,N'250ml',589,'20170622',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483640,N'2350003',N'LA320729A',N'LAUAT HERBAL ROC HAIRFALL DEFENSE 60MLX72',7,N'60ml',588,'20170622',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483639,N'2350008',N'LA320163A',N'LAUAT LEAVE-ON CONDTIONER 125GX36',7,N'125g',592,'20170622',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483638,N'2350007',N'LA320149A',N'LAUAT HERBAL LEAVE ON CONDITIONER 50GX48',7,N'50g',606,'20170622',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483637,N'2350001',N'LA320040A',N'LAUAT TAWAS WITH CALAMANSI ROLL-ON DEODORANT 60MLX24',7,N'60ml',600,'20170622',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483636,N'2350002',N'LA320736A',N'LAUAT RAINEIER''S TAWAS W/ CALAMANSI DEOMIST 100MLX48',7,N'100ml',601,'20170622',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483635,N'2350012',N'SA119015A',N'SANSFLOU NATURAL TOOTH & GUM WIPES STRAWBERRY 12X64',7,N'50ml',626,'20170627',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483634,N'2350011',N'SA119060A',N'SANSFLOU NATURAL TEETHING GEL 10GX52',7,N'10g',603,'20170622',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483633,N'2350015',N'SA119077A',N'SANSFLOU NATURAL XYLITOL SWAB 10MLX24',7,N'10ml',37,'20170706',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483632,N'2350013',N'SA119107A',N'SANSFLOU NATURAL TOOTHGEL CLEANSER ORANGE 50MLX72',7,N'50ml',604,'20170622',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483631,N'2350014',N'SA119114A',N'SANSFLOU NATURAL TOOTHGEL CLEANSER STRAWBERRY 50MLX72',7,N'50ml',605,'20170629',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[uomSSU],[datestamp],[status]) VALUES (-2147483630,N'2350010',N'SA119428A',N'SANSFLOU PEN INFANTS DENTAL BRSH W/HYGIENE CASE(BLUE)33',7,614,'20170623',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[uomSSU],[datestamp],[status]) VALUES (-2147483629,N'2350009',N'SA119435A',N'SANSFLOU PEN GRIP TOOTHBRUSH (BLUE) X 36S',7,602,'20170622',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[uomSSU],[datestamp],[status]) VALUES (-2147483628,N'2350018',N'SA119442A',N'SANSFLOU PEN INFANTS DENTAL BRUSH W/HYGIENE(PINK)33',7,40,'20170706',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[uomSSU],[datestamp],[status]) VALUES (-2147483627,N'2350017',N'SA119466A',N'SANSFLOU PEN GRIP TOOTHBRUSH (PINK)X 36S',7,593,'20170622',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483626,N'2350016',N'XY119206A',N'XYWHITE TOOTHPASTE 100MLX60',7,N'100ml',623,'20170623',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483625,N'2350019',N'XY119213A',N'XYWHITE GUM CARE TOOTHPASTE 100MLX60',7,N'100ml',42,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483624,N'2350023',N'SE738122A',N'SELSUN BLUE MEDICATED 120MLX48',7,N'120ml',47,'20170622',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483623,N'2350025',N'SE738115A',N'SELSUN BLUE MEDICATED 6MLX720',7,N'6ml',52,'20170710',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483622,N'2350022',N'SE738221A',N'SELSUN BLUE 2 IN 1 120MLX48',7,N'120ml',46,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483621,N'2350024',N'SE738214A',N'SELSUN BLUE 2 IN 1 6MLX720',7,N'6ml',50,'20170710',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483620,N'2350040',N'SA119091A',N'SANSFLUO KIDS TOOTHPASTE HONEYDEW VANILLA 50MLX72',7,N'50ml',608,'20170623',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483619,N'2350041',N'SA119084A',N'SANSFLUO KIDS TOOTHPASTE STRAWBERRY CREME 50MLX72',7,N'50ml',609,'20170623',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483618,N'2350042',N'SA730112A',N'SANSFLUO NAT GEL CLNSR ORNGE 50MLX24 + PENGRP TBRUSH (BLUE)',7,N'50ml',31,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483617,N'4170006',N'BA010067A',N'BACCHUS ENERGY DRINK REGULAR 250MLX30',1,N'250ml',599,'20170710',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483616,N'4136057',N'QU300024BK',N'QUEEN BAKING SODA 250GX48',1,N'250g',33,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[datestamp],[status]) VALUES (-2147483615,N'4170008',N'BA413158A',N'BACCHUSS ENERGY DRINK SUGAR FREE 250MLX30',1,N'250ml','20170710',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483614,N'4136042',N'GV001299A',N'GV MICHEL OATMEAL OF AUSTRALIA QUICK COOKING OATS 400GX24',1,N'400g',598,'20170622',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483613,N'GV09',N'GV001305A',N'GV MICHEL OATMEAL OF AUSTRALIA QUICK COOKING OATS 800GX12',1,N'800g',478,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483612,N'4136043',N'GV001282A',N'GV MICHEL OATMEAL OF AUSTRALIA QUICK COOKING OATS 48X200G',1,N'200g',615,'20170623',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483611,N'4136044',N'GV001459A',N'GV MICHEL OATMEAL OF AUSTRALIA INSTANT OATS 48X200G',1,N'200g',616,'20170623',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483610,N'4136045',N'GV001466A',N'GV MICHEL OATMEAL OF AUSTRALIA INSTANT OATS 24X400G',1,N'400g',191,'20170710',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483609,N'GV13',N'GV MICHEL OATMEAL OF AUSTRALIA ORGANIC INSTANT OATS 48X200G',1,N'200g',483,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483608,N'GV14',N'GV MICHEL OATMEAL OF AUSTRALIA ORGANIC INSTANT OATS 24X400G',1,N'400g',41,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483607,N'GV18',N'GV001695A',N'GV MICHEL OATMEAL OF AUSTRALIA ROLLED OATS 12X800G',1,N'800g',493,'20170614',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483606,N'4170011',N'BA000020A',N'BACCHUS ENERGY DRINK CARBONATED 250MLX30',1,N'250ml',243,'20170710',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483605,N'GV12',N'GV001473A',N'GV MICHEL OATMEAL OF AUSTRALIA INSTANT OATS 800GX12',1,N'800g',617,'20170623',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483604,N'GV15',N'GV001664A',N'GV MICHEL OATMEAL OF AUSTRALIA ORGANIC INSTANT OATS 800GX12',1,N'800g',487,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483603,N'GV16',N'GV001671A',N'GV MICHEL OATMEAL OF AUSTRALIA ROLLED OATS 200GX48',1,N'200g',488,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483602,N'GV17',N'GV001688A',N'GV MICHEL OATMEAL OF AUSTRALIA ROLLED OATS 400GX24',1,N'400g',491,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483601,N'GV19',N'GV MICHEL OATMEAL OF AUSTRALIA SINGLE SERVE INSTANT 35GX144',1,N'35g',494,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483600,N'GV20',N'GV MICHEL OATMEAL OF AUSTRALIA SINGLE SERVE (CHOCOLATE) 35GX144',1,N'35g',498,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483599,N'WINGS1',N'WINGS ACTIVE POWDER 1KGX12(1+2PROMO)',1,N'1kg',573,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483598,N'WINGS2',N'WINGS ACTIVE GUARD POWDER 40GX90(6+1 PROMO)',1,N'40g',576,'20170713',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483597,N'WINGS3',N'WINGS TOTAL CARE 1KGX12PCS(PROMO PACK)',1,N'1kg',577,'20170713',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483596,N'WINGS4',N'WINGS ACTIVE WHITE 1KG',1,N'1kg',580,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483595,N'GV',N'GV MICHEL QUICK COOKOAT 400G 6',1,N'400g',54,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483594,N'GV2',N'GV MICHEL QUICK COOK OAT 200GX12',1,N'200g',55,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483593,N'GV06',N'GV MICHEL OATMEAL OF AUSTRALIAN INSTANT OATS 800GX12',1,N'800g',56,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483592,N'GV10',N'GV MICHEL INSTANT OAT 200G',1,N'200g',57,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483591,N'GV1',N'GV MICHEL INST. OAT 400GX24',1,N'400g',480,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483589,N'4170011P',N'BA030010A',N'BACCHUS ENERGY DRINK CARBONATED + SF B1T1 PROMO PACK',1,N'250ml',244,'20170710',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483588,N'4136017',N'FRES GRAPES CANDY 3GX24X50''S',2,N'3g',164,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483587,N'4136025',N'FRESH BARLEY CANDY 3GX24X50''S',2,N'3g',169,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483586,N'4136022',N'KOPIKO LA COFFE HANGER 24X10X25G',2,N'25g',166,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483585,N'4136024',N'KOPIKO CAFE BLANCA HANGER 24X10X30G',2,N'30g',167,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483584,N'4136049',N'DIABETAMIL MILK MOCHACCINO 187.5MLX12',2,N'187.5ml',195,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483583,N'3908654',N'DIABETAMIL MILK CHOCO 500GX12',2,N'500g',127,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[datestamp],[status]) VALUES (-2147483582,N'3908651',N'DIABETAMIL NUTTY COOKIES 200GX12',2,N'200g','20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483581,N'3908653',N'DIABETAMIL VANILLA RAISIN 200GX12',2,N'200g',126,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483580,N'4136004',N'ENERGEN VANILLA CEREAL 24X12 30G',2,N'30g',146,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483579,N'4136006',N'KOPIKO BROWN COFFEE HANGER 10X24 25G',2,N'25g',149,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483578,N'4136010',N'KOPIKO ASTIG BLACK 3 IN 1 HANGER 10X24 20G',2,N'20g',152,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483577,N'4136008',N'KOPIKO KOPICCINO COFFEE 25GXX24X10',2,N'25g',151,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483576,N'4136011',N'KOPIKO ASTIG 3 IN 1 (BLACK)20GX24X10',2,N'20g',154,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483575,N'4136015',N'ENEREGEN CHOCOLATE CEREAL 30GX24X12',2,N'30g',73,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483574,N'41360481',N'KOPIKO 78''C COFFEE LATTIE 250MLX24',2,N'250ml',193,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483573,N'4136002',N'BENG BENG CHOCOLATE WAFER 20GX12X12',2,N'20g',75,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483571,N'4136012',N'KOPIKO COFFEESHOT CAPPUCCINO 24X150G',2,N'150g',157,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483570,N'4136014',N'KOPIKO COFFEE EXTRACT CANDY 24X150G',2,N'150g',158,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483569,N'3908648',N'DIABETAMIL MILK CHOCO 187.5GX12',2,N'187.5g',121,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483568,N'3908650',N'DIABETAMIL MILK VANILLA 187.5GX12',2,N'187.5g',122,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483567,N'3908655',N'DIABETAMIL VANILLA 500GX12',2,N'500g',130,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483566,N'4136016',N'FRES CHERRY CANDY 3GX24X50''S',2,N'3g',161,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483565,N'CA013',N'KOPIKO COFFEE SHOT CANDY CLASSIC 24X150G',2,N'150g',472,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483564,N'CA024',N'KOPIKO BLACK 3 IN 1 HANGER 24X10X25G',2,N'25g',473,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483563,N'CA011',N'FRES BARLEY MINT 24X50X3G',2,N'3g',470,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483562,N'4136061',N'KOPIKO DOUBLE CUPS 24X10X33G',2,N'33g',213,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483561,N'4370005',N'MR.BROWN:VANILLA ICED COFFEE IN CAN 240MLX24',8,N'240ml',87,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483560,N'4370003',N'MR. BROWN: BLUE MOUNTAIN BLEND IN CAN 240MLX24',8,N'240ml',88,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483559,N'4370002',N'MR.BROWN: BLACK COFFEE IN CAN 240MLX24',8,N'240ml',89,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483558,N'4370004',N'MR.BROWN:MACADAMIA NUT IN CAN 240MLX24',8,N'240ml',90,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483557,N'4160003',N'MOGU-MOGU COCONUT JUICE WITH NATA DE COCO 1LX12',8,N'1000ml',91,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483556,N'4160004',N'MOGU-MOGU GRAPE JUICE WITH NATA DE COCO 1LX12',8,N'1000ml',92,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483555,N'4160005',N'MOGU-MOGU LYCHEE JUICE WITH NATA DE COCO 1LX12',8,N'1000ml',93,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483554,N'4110016',N'MOGU-MOGU STRAWBERRY JUICE WITH NATA DE COCO 1LX12',8,N'1000ml',94,'20170616',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483553,N'4370006',N'MOGU-MOGU COCONUT JUICE WITH NATA DE COCO 320MLX24',8,N'320ml',95,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483552,N'4370008',N'MOGU-MOGU LYCHEE JUICE WITH NATA DE COCO 320MLX24',8,N'320ml',96,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483551,N'4370009',N'MOGU-MOGU MELON JUICE WITH NATA DE COCO 320MLX24',8,N'320ml',254,'20170710',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483550,N'4370010',N'MOGU-MOGU PINK GUAVA JUICE WITH NATA DE COCO 320MLX24',8,N'320ml',98,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483549,N'4370011',N'MOGU-MOGU STRAWBERRY JUICE WITH NATA DE COCO 320MLX24',8,N'320ml',99,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483548,N'4370012',N'MOGU-MOGU YOGURT JUICE WITH NATA DE COCO 320MLX24',8,N'320ml',100,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483547,N'3959692',N'SAPPE BEAUTI DRINK W/ FIBER AND L- CARNITINE 360MLX24',8,N'360ml',101,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483546,N'4370007',N'MOGU-MOGU GRAPE JUICE WITH NATA DE COCO 320MLX24',8,N'320ml',102,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483545,N'4136060',N'GT193535A',N'GT MOISTURIZING CREAM 15G X 100',5,N'15g',584,'20170712',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[datestamp],[status]) VALUES (-2147483544,N'4136058',N'GT193542A',N'GT BLEACHING CREAM 15G X 100',5,N'15g','20170712',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483543,N'4142007',N'GT193528A',N'GT CARROT SOAP 120G X 100',5,N'120g',581,'20170713',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483542,N'4142012',N'GT193566A',N'GT BLEACHING SOAP 120GX100',5,N'120g',582,'20170623',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483541,N'4142014',N'GT193559A',N'GT CARROT LOTION 100MLX50',5,N'100ml',585,'20170623',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483540,N'4142009',N'GT193382A',N'GT PAPAYA SOAP 120GX100',5,N'120g',583,'20170623',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483539,N'4142017',N'GT193627A',N'GT WHITENING CREAM 20GX100',5,N'20g',607,'20170623',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483538,N'4142016',N'GT193597A',N'GT PAPAYA LOTION 75MLX50',5,N'75ml',586,'20170624',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483537,N'4142018',N'GT193412A',N'GT DEODORANT WOMEN WHITENING & SMOOTHING 50MLX48',5,N'50ml',624,'20170624',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483536,N'4142015',N'GT193429A',N'GT DEODORANT MEN ACTIVE FRESH 50MLX48',5,N'50ml',610,'20170623',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483535,N'4136050',N'MILNA BABY BISCUIT-BANANA 130GX48',3,N'130g',197,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483534,N'4136051',N'BABY BISCUIT-ORANGE 130GX48',3,N'130g',198,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483533,N'4136053',N'BABY CEREAL-CHICKEN SOUP & SWEETCORN 120GX24',3,N'120g',203,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483532,N'4136054',N'PUDDING-CHOCOLATE 100GX24',3,N'100g',204,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483531,N'4136055',N'PUDDING-STRAWBERRY 100GX24',3,N'100g',207,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483530,N'4136027',N'EMESIS PLAIN 400GX12',3,N'400g',173,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483529,N'4136026',N'LACTAMOM VANILLA 400GX12',3,N'400g',172,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483528,N'4136035',N'EMESIS CHOCOLATE 400GX12',3,N'400g',180,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483527,N'4136034',N'LACTAMOM CHOCOLATE 400GX12',3,N'400g',179,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483526,N'4136052',N'MILNA BABY BISCUIT- ORIGINAL 130GX48',3,N'130g',200,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483525,N'4470184',N'80029',N'HU021307A',N'80029 DIAPER HUG DRY NB TRIAL 4SX24',10,N'4s',438,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483524,N'4470185',N'80008',N'HU420403A',N'80008 DIAPER HUG DRY SML TRIAL 4SX24',10,N'4s',439,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483523,N'4470020',N'80009',N'HU420809A',N'80009 DIAPER HUG DRY M TRIAL 4SX24',10,N'4s',288,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483522,N'4470017',N'80010',N'HU421202A',N'80010 DIAPER HUG DRY L TRIAL 4SX24',10,N'4s',285,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483521,N'4470032',N'80011',N'HU421608A',N'80011 DIAPER HUG DRY XL TRIAL 4SX24',10,N'4s',290,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483520,N'4470172',N'80030',N'HU021284A',N'80030 DIAPER HUG DRY NB REG 20SX48',10,N'20s',419,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483519,N'4470173',N'80012',N'HU020935A',N'80012 DIAPER HUG DRY SML REG 18SX8',10,N'18s',422,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483518,N'4470174',N'80013',N'HU020973A',N'80013 DIAPER HUG DRY M REG 16SX8',10,N'16s',423,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483517,N'4470175',N'80014',N'HU020980A',N'80014 DIAPER HUG DRY L REG 14SX8',10,N'14s',426,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483516,N'4470176',N'80015',N'HU020997A',N'80015 DIAPER HUG DRY XL 12SX8',10,N'12s',427,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483515,N'4470177',N'80031',N'HU021291A',N'80031 DIAPER HUG DRY ECO NB 40SX4',10,N'40s',430,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483514,N'4470134',N'80017',N'HU021017A',N'80017 DIAPER HUG DRY SML ECO 38SX4',10,N'38s',388,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483513,N'4470135',N'80018',N'HU021024A',N'80018 DIAPER HUG DRY M EO 34SX4',10,N'34s',391,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483512,N'4470138',N'80019',N'HU021031A',N'80019 DIAPER HUG DRY L ECO 30SX4',10,N'30s',394,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483511,N'4470140',N'80020',N'HU021048A',N'80020 DIAPER HUG DRY XL ECO 26SX4',10,N'26s',399,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483510,N'4470178',N'80021',N'HU021055A',N'80021 DIAPER HUG DRY XXL ECO 22SX4',10,N'22s',431,'20170621',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483509,N'4470136',N'80022',N'HU021062A',N'80022 DIAPER HUG DRY M JMB 52SX4',10,N'52s',393,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483508,N'4470139',N'80023',N'HU021079A',N'80023 DIAPER HUG DRY L JMB 46SX4',10,N'46s',396,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483507,N'4470195',N'80024',N'HU021086A',N'80024 DIAPER HUG DRY XL JMB 40SX4',10,N'40s',453,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483506,N'4470179',N'80025',N'HU021093A',N'80025 DIAPER HUG DRY XXL JMB 34SX4',10,N'34s',433,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483505,N'4470183',N'83156',N'HU020720A',N'83156 DIAPER PANTS HUG DRY M TRL 4SX24',10,N'4s',436,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483504,N'4470105',N'83157',N'HU833418A',N'83157 DIAPER PANTS HUG DRY L TRL 4SX24',10,N'4s',360,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483503,N'4470106',N'83158',N'HU833425A',N'83158 DIAPER PANT HUG DRY XL TRL 4SX24',10,N'4s',363,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483502,N'4470107',N'83159',N'HU833432A',N'83159 DIAPER PANTS HUG DRY XXL TRL 4SX24',10,N'4s',364,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483501,N'4470146',N'83160',N'HU020768A',N'83160F DIAPER PANTS HUG DRY M REG 16SX8',10,N'16s',405,'20170630',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483500,N'4470149',N'83161',N'HU020775A',N'83161F DIAPER PANTS HUG DRY L REG 14SX8',10,N'14s',410,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483499,N'4470151',N'83162',N'HU020782A',N'83162F DIAPER PANTS HUG DRY XL REG 12SX8',10,N'12s',415,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483498,N'4470152',N'83163',N'HU020799A',N'83163 DIAPER PANTS HUG DRY XXL REG 11SX8',10,N'11s',416,'20170627',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483497,N'4470147',N'83164',N'HU020805A',N'83164F DIAPER PANTS HUG DRY MED ECO 34X4S',10,N'34s',407,'20170627',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483496,N'4470150',N'83165',N'HU020713A',N'83165A/83165F DIAPER PANTS HUG DRY LGE ECO 30X4',10,N'30s',412,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483495,N'4470142',N'83166',N'HU020812A',N'83166A/83166F DIAPER PANTS HUG DRY XL ECO 26X4S',10,N'26s',401,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483494,N'4470144',N'83167',N'HU020829A',N'83167A DIAPER PANTS HUG DRY XXL ECO 22X4S',10,N'22s',402,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483493,N'4470148',N'83168',N'HU020836A',N'83168A/83168F DIAPER PANTS HUG DRY L JMB 46X2S',10,N'46s',409,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483492,N'4470194',N'83169',N'HU020843A',N'83169A/83169F DIAPER PANTS HUG DRY XL JMB 40X2S',10,N'40s',450,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483491,N'4470125',N'37028',N'HU020287A',N'37028 HUGGIES DAIPER ULTRA ECONOMY MEDUIM 22X8S',10,N'8s',371,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483490,N'4470127',N'37021',N'HU020232A',N'37021 HUGGIES DIAPER ULTRA ECONOMY LARGE 20X8S',10,N'20s',374,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483489,N'4470133',N'37022',N'HU020249A',N'37022 HUGGIES DIAPER ULTRA ECONOMY EXTRA 20X8S',10,N'8s',387,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483488,N'4470129',N'37026',N'HU020256A',N'37026 HUGGIES DIAPER ULTRA ECONOMY DOUBLE 20X8S',10,N'8s',378,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483487,N'4470131',N'37025W',N'HU020263A',N'37025W HUG ULT S JMB 44X4 FOC HBW16S',10,N'16s',383,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483486,N'4470126',N'36012L',N'HU360129A',N'36012L HUGGIES DIAPER ULTRA MEDUIM JUMBO 40X4S',10,N'4s',372,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483485,N'4470132',N'36013L',N'HU360136A',N'36013L HUGGIES DIAPER ULTRA LARGE JUMBO 34X4S',10,N'4s',385,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483484,N'4470128',N'36014L',N'HU360143A',N'36014L HUGGIES DIAPER ULTRA EXTRA LARGE JUMBO 34X4',10,N'4s',376,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483483,N'4470130',N'36017F',N'HU360174A',N'36017F HUGGIES DIAPER ULTRA DOUBLE EXTRA LARGE 34X4S',10,N'4s',381,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483482,N'4470170',N'32455',N'HU020331A',N'32455 B/WIPES HUGGIES GENTLE CARE 16X24S',10,N'24s',417,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483481,N'4470193',N'86429',N'HU023790A',N'86429 B/WIPES HUG 80SX24',10,N'80s',449,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483480,N'4470010',N'25110',N'KL254107A',N'25110 B/TISS KLX ULT SFT 200S 1RX96',10,N'200s',278,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483479,N'4470011',N'25111',N'KL254206A',N'25111 B/TISS KLX ULT SFT 200S 4RX24',10,N'200s',281,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483478,N'4470012',N'25112',N'KL254305A',N'25112 B/TISS KLX SFT 200S 9RX10',10,N'200s',282,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483477,N'4470003',N'25120',N'JO254503A',N'25120 B/TISS JOY EXTRA 200S 1RX96',10,N'200s',266,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483476,N'4470004',N'25121',N'JO254602A',N'25121 B/TISS JOY EXTRA 200S 4RX24',10,N'200s',267,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483475,N'4470006',N'25504F',N'JO255005A',N'25504F JOY B/TISS HI-SAVE TPR 170 1R 96S',10,N'96s',173,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483474,N'4470007',N'25510G',N'JO255104A',N'25510G JOY B/TISS HI-SAVE TPR 170 4R',10,N'4s',273,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483473,N'4470008',N'25520G',N'JO255302A',N'25520G JOT B/TISS HI-SAVE TPR 170 9R',10,N'170s',274,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483472,N'4470009',N'25571B',N'JO252608A',N'25571B JOY B/TISS POP-UP 40SX96',10,N'40s',277,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483471,N'4470066',N'2021G',N'KL202108A',N'2021G KLX F/TISS M/LIME USC 2P 100S',10,N'100s',314,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483470,N'4470067',N'2023H',N'KL202306A',N'2023H KLX F/TISS M/LINE USC 2-PLY 190S',10,N'190s',317,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483469,N'4470065',N'2015K',N'KL201507A',N'2015K KLX F/TISS TRVL 2P 40S',10,N'40s',312,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483468,N'4470056',N'2017E',N'KL201705A',N'2017E KLX F/TISS EXPRESS 2P 40S',10,N'40s',298,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483467,N'4470057',N'2018E',N'KL201804A',N'2018F KLX F/TISS EXPRESS 2P 60S',10,N'60s',299,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483466,N'4470058',N'PH182',N'KL018204A',N'PH182 KLX MINI-EXP 10 2-PLY/6P/24',10,N'24s',302,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483465,N'4470121',N'2016I',N'KL908758A',N'2016LF/TISS KLX TRVL BUY3SAVE20 60SX32',10,N'60s',366,'20170623',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483464,N'4470055',N'99975B',N'KL904885A',N'99975B WIPES KLX AQUA HND/FCE 10SX80',10,N'10s',184,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483463,N'4470061',N'99978',N'KL999848A',N'99978 KLX MIX DSGN ANTIB 10',10,N'10s',853,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483462,N'4470062',N'99982B',N'KL999824A',N'99982B WIPES KLX M/LINE ANTBAC 40SX32',10,N'40s',186,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483461,N'4470063',N'99974',N'KL999749A',N'99974A WIPES KLX SNSTV ALOE HND/FCE M  WIPE 10SX20',10,N'80s',187,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483460,N'4470084',N'3000Z',N'KO300002A',N'3000Z KSS MAXI NON WING 8S/60',10,N'8s',338,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483459,N'4470085',N'30010Z',N'KO300101A',N'30010Z KSS MAXI WING 8S/48',10,N'8s',341,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483458,N'4470086',N'50506Z',N'KO450503A',N'50506Z KSS OVERNIGHT 28CM 5S/48',10,N'5s',342,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483457,N'4470087',N'80588Z',N'KO009114A',N'80588Z KSS OVERNIGHT 32CM 4S/24',10,N'4s',345,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483456,N'4470088',N'80589Z',N'KO012749A',N'80589Z KSS OVERNIGHT 28CM 8S/48',10,N'8s',346,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483455,N'4470090',N'32402Z',N'KO459018A',N'32402Z KSS ULTRATHIN WING 5S/48',10,N'5s',349,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483454,N'4470082',N'51419K',N'KO514195A',N'51419K/51419L KOTEX LUXE OVERNIGHT UT WING 32CM 8SX48',10,N'8s',334,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483453,N'4470083',N'51418K',N'KO004126A',N'51418K KOTEX LUXE ULTRATHIN WING 24CM 5S/48',10,N'5s',337,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483452,N'4470071',N'80475',N'KO804753A',N'80475 FEM KTX FIT MAXI NWG 8',10,N'8s',196,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483451,N'4470072',N'80525',N'KO011339A',N'80525 KTX FIT WING 8S',10,N'8s',321,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483450,N'4470097',N'90031B',N'KO331501A',N'90031B KTX FEM LNR FRSH 8X48',10,N'8s',355,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483449,N'4470098',N'90032C',N'KO807122A',N'90032C KTX FEM LNR FRSH L+W 16S',10,N'16s',358,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483448,N'4470076',N'90035C',N'KO807115A',N'90035C KTX FEM LNR FRSH SCT 20S',10,N'20s',327,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483447,N'4470074',N'90037B',N'KO330900A',N'90037B KTX FEM LNR FRSH UNSC 8S',10,N'8s',324,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483446,N'4470075',N'90038E',N'KO807108A',N'90038E KTX FEM LNR FRSH UNSC 20S',10,N'20s',325,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483445,N'4470096',N'3340',N'NE334007A',N'PH3340 NEWTEX PANTILINER 20/24',10,N'20s',354,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483444,N'4470095',N'3339',N'NE333901A',N'PH3339 NEWTEX PANTILINER 8/48',10,N'8s',351,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483443,N'4447000',N'90598',N'PU075207A',N'90598 PURITY COTTON ROLL 10G',10,N'10g',260,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483442,N'4470001',N'754',N'PU075405A',N'PH754/90754 PURITY COTTON ROLL 45S/72',10,N'45s',261,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483441,N'4470002',N'755',N'PU075504A',N'PH755/90596A PURITY COTTON ROLLS 90S/48',10,N'90s',264,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483440,N'4470077',N'90034B',N'KO331204A',N'90034B KTX FEM LNR FRSH SCT 8S',10,N'8s',329,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483439,N'4470124',N'36005W',N'HU020324A',N'36005W/36005U HUG ULT NB ECO 24X8 FOC HBW16S',10,N'16s',369,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483438,N'4470005',N'25122',N'JO254800A',N'25122 25122 B/TISS JOY EXTRA 200S 9RX10',10,N'9s',269,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483437,N'4470064',N'2027D',N'KL202702A',N'2027D KLX F/TISS SPACK 2P 100S',10,N'100s',311,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483436,N'4470186',N'83170',N'HU23509A',N'83170 DIAPER PANT HUG DRY XXL JMB 34+2X2',10,N'2s',212,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483435,N'4470192',N'33041',N'HU022458A',N'33041 HUGGIES ULTRA PANTS GIRL JMB XXL 32sX3',10,N'32s',447,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483434,N'4470188',N'33031',N'HU307069A',N'33031 HUGGIES ULTRA PANTS BOY JMB XL 38sX3',10,N'38s',214,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483433,N'4470104',N'90427',N'KO904279A',N'90427 KTX FEM PAD SS OVN 32CM 4S',10,N'4s',215,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483432,N'4470040',N'HUGGIES TOT PROT M 42',10,N'm',216,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483431,N'4470042',N'HUGGIES TOT PROT NEWBORN 4X48',10,N'00:00.0',217,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483430,N'4470053',N'HUGGIES TOT PROT XXL 16X8',10,N'xxl',218,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483429,N'4470068',N'90059',N'KO900592A',N'90059 FEM LINER KTX LONG AND WIDE 2PK 16SX12',10,N'16s',219,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483428,N'4470196',N'99978A',N'KL906518A',N'99978A WIPES KLX MIX DSGN ANTIB 3+1 PK 10SX20',10,N'10s',220,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483427,N'4470191',N'33032',N'HU307076A',N'33032 HUGGIES ULTRA PANTS GIRL JMB XL 38sX3',10,N'38s',445,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483426,N'4470190',N'33030',N'HU307052A',N'33030 HUGGIES ULTRA PANTS GIRL JMB L 44sX3',10,N'44s',222,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483425,N'4470198',N'51420L',N'KO025466A',N'51420L FEM PAD KTX LUXE UT ONW 28CM 8X48',10,N'28cm',457,'20170623',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483424,N'4470091',N'NEWTEX MAXI PADS CC 16',10,N'00:00.0',224,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483423,N'4470197',N'99974B',N'KL906532A',N'99974B KLEENX WIPES SENTIVE 10S 3+1 PROMO',10,N'10s',455,'20170630',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483422,N'4470050',N'HUGGIES TOT PROT XL 10X8',10,N'10s',224,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483421,N'4470073',N'KOTEX FRSHLINERS G-CARE 20X24S',10,N'24s',225,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483420,N'4470078',N'KOTEX FRSHLINERS UIV-CARE 20X24S',10,N'24s',226,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483419,N'4470059',N'KLEENX FCL OIL BLOTTR 50SHT',10,N'',304,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483418,N'4470080',N'KOTEX FRSHLINERS REG SC40 24',10,N'00:00.0',332,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483375,N'4136031',N'SASHA PERMANENT HAIR COLOR NATURAL BLACK #S-1.0 25ML',16,N'25ml',176,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483374,N'KC13',N'MASTER KIDS COLOGNE SPIDERMAN 100MLX36X100ML',16,N'100ml',515,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483373,N'KC96',N'ELLIPS COLOGNE GEL SATURDAY 50MLX36',16,N'50ml',569,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483372,N'KC10',N'ELLIPS COLOGNE-ALLURE 100MLX36X100ML',16,N'100ml',501,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483371,N'KC109',N'MASTER KIDS COLOGNE SPIDERMAN 100MLX36X100ML',16,N'100ml',505,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483370,N'KC12',N'ELLIPS COLOGNE - CUTIE 100MLX36X100ML',16,N'100ml',509,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483369,N'KC124',N'B&B KIDS POWDER GREEN 60GX36X60G',16,N'60g',277,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483368,N'KC29',N'ELLIPS COLOGNE SRNTY-SECRET GARDEN 105ML36X105ML',16,N'105ml',529,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483367,N'KC73',N'B&B KIDS TOOTHPASTE PINK 50GX48X50G',16,N'48g',554,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483364,N'KC08',N'KIDS SHAMPOO & CONDITIONER ORANGE 36X100ML',16,N'100ml',282,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483363,N'KC09',N'KIDS SHAMPOO & CONDITIONER STRAW 36X100ML',16,N'100ml',283,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483362,N'KC119',N'KIDS BODY POWDER TWEETY 36X60G',16,N'60g',284,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483361,N'KC75',N'KIDS TOOTHPASTE TWEETY 48X50G',16,N'50g',558,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483360,N'KC74',N'KIDS TOOTHPASTE TAZ(BLUE) 48X50G',16,N'50g',286,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483359,N'KC98',N'BABY WIPES MICKE 30''S 36X30''S',16,N'30''s',287,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483358,N'KC125',N'KIDS BODY POWDER BARBIE PINK 36X150G',16,N'150g',288,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483357,N'KC130',N'KIDS BARBIE SHAMPOO OLIVE LEAF EXTRACT 36X180ML',16,N'180ml',289,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483356,N'KC131',N'KIDS BARBIE SHAMPOO PEARL EXTRACT 36X180ML',16,N'180ml',290,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483355,N'KC126',N'KIDS SPRAY COLOGNE BARBIE SO-IN-STYLE(PINK)36X125ML',16,N'125ml',291,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483353,N'KC28',N'SERENITY COLOGNE-FRENCH VANILLA 36X105ML',16,N'105ml',527,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483352,N'KC95',N'COLOGNE GEL-FRIDAY 36X50ML',16,N'50ml',294,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483351,N'KC105',N'ULTRA HAIR TREATMENT PUMP BOTTLE 20X34ML',16,N'34ml',295,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483350,N'KC44',N'DISNEY PRINCESS MIST COLOGNE-ARIEL 36X125ML',16,N'125ml',296,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483349,N'KC45',N'DISNEY PRINCESS MIST COLOGNE-CINDERELLA 36X125ML',16,N'125ml',297,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483348,N'KC46',N'DISNEY PRINCESS MIST COLOGNE-MULAN 36X125ML',16,N'125ml',298,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483347,N'KC47',N'DISNEY PRINCESS SHAMPOO-ARIEL 36X200ML',16,N'200ml',299,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483346,N'KC48',N'DISNEY PRINCESS SHAMPOO-CINDERELLA 36X200ML',16,N'200ml',298,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483345,N'KC41',N'DISNEY KIDS COLOGNE-DONALD 36X100ML',16,N'100ml',300,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483344,N'KC42',N'DISNEY KIDS COLOGNE-MICKEY 36X100ML',16,N'100ml',301,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483343,N'KC43',N'DISNEY KIDS COLOGNE-MINNIE 36X100ML',16,N'100ml',302,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483342,N'KC38',N'DISNEY KIDS HAND SANITIZER BLUE 36X50ML',16,N'500ml',303,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483341,N'KC40',N'DISNEY KIDS HAND SANITIZER PINK 36X50ML',16,N'50ml',304,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483340,N'KC138',N'DISNEY KIDS SHAMPOO & CONDITIONER-DONALD 72X45ML',16,N'45ml',305,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483339,N'KC139',N'DISNEY KIDS SHAMPOO & CONDITIONER-MICKEY 72X45ML',16,N'45ml',306,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483338,N'KC140',N'DISNEY SHAMPOO & CONDITIONER-MINNIE 72X45ML',16,N'45ml',307,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483337,N'KC54',N'DISNEY KIDS SHAMPOO & CONDITIONER-MINNIE 36X200ML',16,N'200ml',308,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483336,N'KC49',N'DISNEY KIDS SHAMPOO & CONDITIONER-DONALD 36X100ML',16,N'100ml',309,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483335,N'KC121',N'DISNEY KIDS POWDER-POOH 36X60G',16,N'60g',310,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483334,N'KC58',N'COLOGNE CONFIDENT(ORANGE) 36X75ML',16,N'75ml',311,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483333,N'KC59',N'COLOGNE-POWER(RED) 36X75ML',16,N'75ml',312,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483332,N'KC57',N'COLOGNE-SUCCESS(YELLOW) 36X150ML',16,N'150ml',313,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483331,N'KC55',N'COLOGNE-CONFIDENT(ORANGE) 36X150ML',16,N'150ml',314,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483330,N'KC56',N'COLOGNE-POWER(RED)36X150ML',16,N'150ml',315,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483329,N'KC69',N'BODY POWDER-BATMAN 36X75G',16,N'75g',316,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483328,N'KC70',N'BODY POWDER-SUPERMAN 36X75G',16,N'75g',317,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483327,N'KC85',N'SHAMPOO & CONDITIONER -BATMAN 36X150ML',16,N'150ml',318,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483326,N'KC132',N'SHAMPOO & CONDITIONER-BEN 10 36X150ML',16,N'150ml',319,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483325,N'KC86',N'SHAMPOO & CONDITIONER SUPERMAN 36X150ML',16,N'150ml',320,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483324,N'KC111',N'SHAMPOO & CONDITIONER -SPIDERMAN 36X75ML',16,N'75ml',321,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483323,N'KC72',N'SHAMPOO & CONDITIONER-SUPERMAN 36X75ML',16,N'75ml',322,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483322,N'KC87',N'TOOTHPASTE-BATMAN 48X50G',16,N'50g',323,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483321,N'KC112',N'TOOTHPASTE-SPIDERMAN 48X50G',16,N'50g',324,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483320,N'KC88',N'TOOTHPASTE-SUPERMAN 48X50G',16,N'50g',325,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483319,N'KC136',N'TOOTHPASTE-BEN 10 48X50G',16,N'50g',326,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483318,N'KP02',N'ENERGY DRINK WHITE GRAPE 24X180ML',16,N'180ml',327,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483317,N'KP03',N'ENERGY DRINK GUAVA 24X180ML',16,N'180ml',328,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483316,N'KC78',N'PERMANENT HAIR COLOR-CHOCOLATE BROWN 72X25G',16,N'25g',329,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483315,N'KC76',N'PERMANENT HAIR COLOR-COPPER HAZEL 72X25G',16,N'25g',330,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483314,N'KC65',N'PERMANENT HAIR COLOR-DARK MAHOGANY 72X25G',16,N'25g',331,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483313,N'KC66',N'PERMANENT HAIR COLOR-NATURAL BLACK 72X25G',16,N'25g',550,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483312,N'KC64',N'PERMANENT HAIR COLOR-BRIGHT BROWN RED 72X25G',16,N'25g',333,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483311,N'KC13E',N'MASTER KIDS COLOGNE SPIDERMAN 100MLX36X100ML',16,N'100ml',524,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483310,N'KC93',N'COLOGNE GEL -WEDNESDAY 36X50ML',16,N'50ml',565,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483298,N'4136032',N'SASHA PERMANENT HAIR COLOR CH #S-2.5 25MLX36',16,N'25ml',347,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483295,N'4160024',N'PANTHER ENERGY DR MXFRUIT 180MLX24',16,N'180ml',236,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483293,N'3033594',N'CHEEZY BUFFALO WINGS 1X40X70G',6,N'70g',116,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483292,N'3033595',N'CHEEZY JAPALENO 1X40X70G',6,N'70g',117,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483291,N'3033590',N'CHEEZY 1X20X150G',6,N'150g',110,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483290,N'3033510',N'CLOVER CHIPS CHEESE 1X35X85G',6,N'95g',67,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483289,N'3033513',N'CLOVER CHIPS CHEESE 1X25X145G',6,N'145g',70,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483288,N'3033521',N'CLOVER CHIPS BBQ 1X35X85G',6,N'85g',73,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483287,N'3033529',N'CLOVER CHIPS HAM & CHEESE 1X40X55G',6,N'55g',78,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483286,N'3033531',N'CLOVER CHIPS HAM & CHEESE 1X35X85G',6,N'85g',79,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483285,N'3033533',N'CLOVER CHIPS HAM & CHEESE 1X25X145G',6,N'145g',82,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483284,N'3033580',N'CRISPY SHRIMP 20''S 90G ',6,N'90g',94,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483283,N'3033551',N'NACHO BBQ 40''S 100G',6,N'100g',84,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483282,N'3033508',N'CLOVER CHIPS CHEESE 40''S 55G',6,N'55g',66,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483281,N'3033519',N'CLOVER CHIPS BBQ 40''S 55G',6,N'55g',72,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483280,N'3033523',N'CLOVER CHIPS BBQ 25''S 145G',6,N'145g',75,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483279,N'3033559',N'NACHO CHEESE 40''S 100G',6,N'100g',89,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483278,N'3033577',N'CHEZZY 40''S 70G',6,N'70g',90,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483277,N'3033557',N'NACHO HOT CHILI 40''S 100G',6,N'100g',87,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483276,N'3033578',N'REDHOT CHEEZY 40''S 70G',6,N'70g',92,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483275,N'3033588',N'FARMER JOHN P-MESQUIETE BBQ 12S 90G',6,N'90g',106,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483274,N'3033589',N'FARMER JOHN P-SALTED 12S 90G',6,N'90g',107,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483273,N'3033587',N'FARMER JOHN W/CHEESE+SC 12S 90G',6,N'90g',104,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483272,N'3033593',N'FARMER JOHN-SALTED & VINEGAR 40S',6,N'',113,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483271,N'3033592',N'FARMER JOHN-SC&FRENCH ONION 40S',6,N'',374,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483270,N'3033597',N'LESLIE RED HOT CHZY 150G 20S',6,N'00:00.0',375,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483269,N'3033582',N'LESLIE WILDDW CHICHA H&SP 90G',6,N'90g',376,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483268,N'3033584',N'LESLIE WILDW CHICHA SLTD 90GX20',6,N'90g',377,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483267,N'3033586',N'LESLIE WILDW CHICHA VNGR 90GX20',6,N'90g',378,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483266,N'3033581',N'WILD WILLY''S SALTED 40SX50G',6,N'50g',97,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483265,N'3033583',N'WILD WILLY''S VINEGAR 40SX50G',6,N'50g',99,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483264,N'3033552',N'NACHO HOT CHILLI 40SX100G',6,N'100g',381,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483263,N'3033591',N'FARMER JOHN P-BBQ 12SX90G',6,N'90g',382,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483262,N'3033507',N'CLOVER CHEESE 25S',6,N'',383,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483261,N'5486804',N'N1',N'N1 NATURAL BLACK 1X12',9,N'10ml',462,'20170629',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483260,N'5486801',N'N2',N'N2 DARK BROWN 1X12',9,N'10ml',459,'20170629',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483259,N'5486806',N'N3',N'N3 CHOCOLATE 1X12',9,N'10ml',464,'20170629',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483258,N'5486803',N'N4',N'N4 LIGHT MAHOGANY BROWN 1X12',9,N'10ml',461,'20170629',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483257,N'5486805',N'N5',N'N5  RED BROWN 1X12',9,N'10ml',463,'20170629',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483256,N'5486802',N'N6',N'N6 GOLDEN BROWN 1X12',9,N'10ml',460,'20170629',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483255,N'4160034',N'BU855012A',N'BUBBLE MAN DISHWASHING LIQUID KALAMANSI PROMO 2X880X10',12,N'880ml',238,'20170623',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483254,N'4160036',N'BU855050A',N'BUBBLEMAN DISHWASHING LIQUID LEMON PROMOPACK 2X880MLX10',12,N'880ml',240,'20170623',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483253,N'3969082',N'BU855166A',N'BUBBLEMAN DISHWASHING LIQUID ANTI BAC PROMO 2X880MLX10',12,N'880ml',142,'20170623',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483252,N'4136039',N'BUBBLEMAN DISHWASHING LIQUID ANTIBAC 270MLX10',12,N'270ml',186,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483251,N'3969081',N'BU080130A',N'BUBBLEMAN DISWASHING LIQUID ANTIBAC PROMOPACK2X270MLX10',12,N'270ml',394,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483250,N'4160033',N'BU080116A',N'BUBBLEMAN DISHWASHING LIQUID KALAMANSI PROMOPACK 2X270MLX10',12,N'270ml',395,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483249,N'4160035',N'BU080123A',N'BUBBLEMAN DISHWASHING LIQUID LEMON PROMOPACK 2X270MLX10',12,N'270ml',239,'20170623',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483248,N'4136037',N'BU855081A',N'BUBBLEMAN DISHWASHING LIQUID KALAMANSI SINGLES 20X880ML',12,N'880ml',184,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483247,N'4136036',N'BU855111A',N'BUBBLEMAN DISHWASHING LIQUID ANTI-BACTERIAL SINGLES 20X880ML',12,N'880ml',398,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483246,N'4136062',N'BU855064A',N'BUBBLEMAN DISHWASHING LIQUID ANTIBAC SINGLES 270MLX20',12,N'270ml',216,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483245,N'4136064',N'BU855033A',N'BUBBLEMAN DISHWASHING LIQUID 270MLX20 LEMON SINGLES',12,N'270ml',219,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483244,N'4136063',N'BU855071A',N'BUBBLEMAN DISHWASHING LIQUID 270MLX20 KALAMANSI SINGLES',12,N'270ml',218,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483243,N'4136056',N'BU855040A',N'BUBBLEMAN DISHWASHING LIQUID LEMON SINGLES 20X880ML',12,N'880ml',208,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483242,N'2000001',N'GOLDEN CUP 12G BALM (PROMO) 1X288',15,N'12g',403,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483241,N'2000002',N'GOLDEN CUP 3ML OIL 1X720',15,N'3ml',907,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483240,N'2000003',N'PINK PASSION FACIAL CREAM 4G 1X432',15,N'4g',405,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483239,N'4142019',N'MO112729A',N'MORRISON COLLAGEN WHITENING 2-IN-1 LOTION 100MLX12',14,N'100ml',611,'20170623',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483238,N'4142021',N'MO112736A',N'MORRISON STRETCH MARK COLLAGEN BODY CREAM 100MLX12',14,N'100ml',612,'20170623',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483237,N'4142020',N'MO112743A',N'MORRISON ELBOW AND KNEE COLLAGEN WHITENING LOTION 50MLX12',14,N'50ml',613,'20170623',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483236,N'1384',N'CAMAY BAR DYNAMIQUE 162X55G',13,N'55g',409,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483235,N'1381',N'CAMAY BAR CREME 72X55G',13,N'55g',410,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483234,N'1383',N'CAMAY BAR CREME 72X115G ',13,N'115g',411,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483233,N'1382',N'CAMAY BAR CREME 108X80G',13,N'80g',412,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483232,N'1380',N'CAMAY BAR ROMANTIQUE 72X115G',13,N'115g',413,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483231,N'1379',N'CAMAY BAR ROMANTIQUE 108X80G',13,N'80g',414,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483230,N'1388',N'CAMAY BAR DYNAMIQUE 108X80G',13,N'80g',415,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483229,N'7269',N'CAMAY BAR PAPAYA 72X115G',13,N'115g',416,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483228,N'7266',N'CAMAY BAR PAPAYA 108X80G',13,N'80g',417,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483227,N'1391',N'CAMAY BAR DYNAMIQUE 72X115G',13,N'115g',418,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483226,N'1378',N'CAMAY BAR ROMANTIQUE 72X55G',13,N'55g',2,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483225,N'7265',N'CAMAY BAR PAPAYA 72X55G',13,N'55g',465,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483224,N'1398',N'CAMAY BAR CREME 3PID 36X80G',13,N'80g',15,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483223,N'1396',N'CAMAY BAR ROMANTIQUE 36X3X80G',13,N'80g',11,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483222,N'1397',N'CAMAY BAR ROMANTIQUE 3PID 24X115G',13,N'115g',855,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483221,N'1401',N'CAMAY BAR CREME 24X3X115G',13,N'115g',857,'20170314',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483220,N'3908677',N'BI030131A',N'BIMOLI PALM OIL JERRY CAN 5LX4',11,N'5L',862,'20170614',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483219,N'3908678',N'BI032149A',N'BIMOLI PALM OIL PET 2LX6',1,N'2L',864,'20170614',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483218,N'3908679',N'BI032156A',N'BIMOLI PALM OIL REFILL 2LX6',11,N'2L',866,'20170614',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483217,N'3908680',N'BI034147A',N'BIMOLI PALM OIL PET 1LX12',11,N'1L',868,'20170614',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483216,N'3908681',N'BI038149A',N'BIMOLI PALM OIL PET 250MLX48',11,N'250ML',889,'20170614',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483215,N'4470013',N'25113',N'KL254404A',N'KLEENX BT ULSOFT 3PLY 12PX8',10,N'12P',870,'20170614',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[scode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483214,N'4470201',N'51419L',N'KO025459A',N'KOTEX KUXE OVERNIGHT UT WING 8SX48',10,N'8s',872,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483213,N'2350026',N'SA730129A',N'NAT TGEL CLNSR ORNGE 50MLX24 - PENGRP TBRUSH PINK',7,N'50ML',625,'20170627',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483212,N'2350021',N'LA731317A',N'LAUAT HERBAL SHAMPOO WITH FREE CAPPAIN 250MLX24',7,N'250ML',594,'20170622',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483211,N'2350020',N'KO736104A',N'KORDEL''S CAPPAIN 10GX12',7,N'10G',878,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[datestamp],[status]) VALUES (-2147483210,N'2350027',N'XY739115A',N'XYWHITE GUM CARE TOOTHPASTE 100ML - LAUAT SHAMPOO 30ML',7,N'30ML','20170706',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483209,N'2350037',N'SI007787A',N'SILKYGIRL PERFUME ROLL-ON CONCENTRATE - BFF 9MLX144',7,N'9ML',620,'20170623',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483208,N'2350038',N'SI007794A',N'SILKYGIRL PERFUME ROLL-ON CONCENTRATE - OVERTIME 9MLX144',7,N'9ML',621,'20170623',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483207,N'2350035',N'SI009620A',N'SILKYGIRL PERFUME ROLL-ON CONCENTRATE - BE MINE 9MLX144',7,N'9ML',618,'20170623',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483206,N'2350036',N'SI009637A',N'SILKYGIRL PERFUME ROLL-ON CONCENTRATE - TRUE LOVE 9MLX144',7,N'9ML',619,'20170623',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483205,N'2350039',N'SI009644A',N'SILKYGIRL PERFUME ROLL-ON CONCENTRATE - REST AND RELAX 9MLX144',7,N'9ML',622,'20170623',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[ccode],[description],[category],[uomSSU],[datestamp],[status]) VALUES (-2147483204,N'2350043',N'LA731225A',N'LAUAT TRAVEL PACK -SHAMPOO 60ML,ROC COND 60ML AND CAPPAIN 10G-',7,894,'20170615',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483201,N'3959691',N'SAPPE BEAUTI DRINK COLLAGEN 360MLX24',8,N'360ML',897,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483200,N'4110015',N'SAPPE BEAUTI DRINK GLUTATHIONE 360MLX24',8,N'360ML',899,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483199,N'4370000',N'TASTE NIRVANA THAI TEA 300MLX24',8,N'300ML',901,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483198,N'4370001',N'SAPPE BEAUTI DRINK BERRY BRIGHT 360MLX24',8,N'360ML',903,'20170619',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483197,N'4370010P',N'PINK GUAVA JUICE WITH NATA DE COCO 320MLX24 PROMO B1T1',8,N'320ML',587,'20170629',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483196,N'514101',N'N1 NATURAL BLACK',9,N'10ml',633,'20170706',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483195,N'514102',N'N2 DARK BROWN',9,N'10ml',632,'20170706',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483194,N'514103',N'N3 CHOCOLATE',9,N'10ml',635,'20170706',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483193,N'514104',N'N4 LIGHT MAHOGANY BROWN',9,N'10ml',637,'20170706',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483192,N'514105',N'N5 RED BROWN',9,N'10ml',639,'20170706',1);
GO
INSERT INTO [BASE_Product] ([_ProdIndex],[productcode],[description],[category],[capacity],[uomSSU],[datestamp],[status]) VALUES (-2147483191,N'514106',N'N6 GOLDEN BROWN',9,N'10ml',641,'20170706',1);
GO
SET IDENTITY_INSERT [BASE_Product] OFF
SET IDENTITY_INSERT [BASE_UOM] ON
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (1,-2147483226,N'CASES',72,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (2,-2147483226,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (3,-2147483231,N'CASES',108,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (4,-2147483232,N'CASES',72,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (5,-2147483235,N'CASES',72,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (6,-2147483233,N'CASES',108,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (7,-2147483234,N'CASES',72,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (8,-2147483236,N'CASES',162,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (9,-2147483230,N'CASES',108,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (10,-2147483227,N'CASES',72,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (11,-2147483223,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (12,-2147483223,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (13,-2147483222,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (14,-2147483224,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (15,-2147483224,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (16,-2147483221,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (17,-2147483242,N'CASES',288,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (18,-2147483242,N'IB',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (19,-2147483241,N'IB',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (20,-2147483241,N'CASES',720,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (21,-2147483240,N'CASES',432,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (22,-2147483240,N'IB',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (23,-2147483637,N'CASES',24,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (24,-2147483636,N'CASES',48,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (25,-2147483640,N'CASES',72,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (26,-2147483641,N'CASES',24,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (27,-2147483642,N'CASES',72,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (28,-2147483643,N'CASES',24,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (29,-2147483638,N'CASES',48,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (30,-2147483639,N'CASES',36,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (31,-2147483629,N'CASES',36,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (32,-2147483630,N'CASES',33,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (33,-2147483634,N'CASES',52,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (34,-2147483635,N'CASES',64,N'','20170627',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (35,-2147483632,N'CASES',72,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (36,-2147483631,N'CASES',72,N'','20170629',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (37,-2147483633,N'CASES',24,N'','20170706',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (38,-2147483626,N'CASES',60,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (39,-2147483627,N'CASES',36,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (40,-2147483628,N'CASES',33,N'','20170706',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (41,-2147483625,N'CASES',60,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (42,-2147483625,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (43,-2147483211,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (44,-2147483212,N'CASES',24,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (45,-2147483622,N'CASES',48,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (46,-2147483622,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (47,-2147483624,N'PCS',1,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (48,-2147483624,N'CASES',48,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (49,-2147483621,N'CASES',720,N'','20170710',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (50,-2147483621,N'IB',36,N'','20170710',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (51,-2147483623,N'CASES',720,N'','20170710',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (52,-2147483623,N'IB',36,N'','20170710',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (53,-2147483213,N'CASES',24,N'','20170627',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (54,-2147483210,N'CASES',60,N'','20170706',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (55,-2147483207,N'CASES',144,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (56,-2147483206,N'CASES',144,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (57,-2147483209,N'CASES',144,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (58,-2147483208,N'CASES',144,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (59,-2147483205,N'CASES',144,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (60,-2147483620,N'CASES',72,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (61,-2147483619,N'CASES',72,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (62,-2147483618,N'CASES',48,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (63,-2147483204,N'CASES',3,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (64,-2147483262,N'CASES',25,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (65,-2147483282,N'CASES',40,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (66,-2147483282,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (67,-2147483290,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (68,-2147483290,N'CASES',35,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (69,-2147483289,N'CASES',25,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (70,-2147483289,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (71,-2147483281,N'CASES',40,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (72,-2147483281,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (73,-2147483288,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (74,-2147483288,N'CASES',35,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (75,-2147483280,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (76,-2147483280,N'CASES',25,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (77,-2147483287,N'CASES',40,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (78,-2147483287,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (79,-2147483286,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (80,-2147483286,N'CASES',35,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (81,-2147483285,N'CASES',25,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (82,-2147483285,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (83,-2147483283,N'CASES',40,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (84,-2147483283,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (85,-2147483264,N'CASES',40,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (86,-2147483277,N'CASES',40,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (87,-2147483277,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (88,-2147483279,N'CASES',40,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (89,-2147483279,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (90,-2147483278,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (91,-2147483278,N'CASES',40,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (92,-2147483276,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (93,-2147483276,N'CASES',40,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (94,-2147483284,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (95,-2147483284,N'CASES',20,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (96,-2147483266,N'CASES',40,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (97,-2147483266,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (98,-2147483269,N'CASES',20,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (99,-2147483265,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (100,-2147483265,N'CASES',40,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (101,-2147483268,N'CASES',20,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (102,-2147483267,N'CASES',20,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (103,-2147483273,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (104,-2147483273,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (105,-2147483275,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (106,-2147483275,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (107,-2147483274,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (108,-2147483274,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (109,-2147483291,N'CASES',20,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (110,-2147483291,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (111,-2147483263,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (112,-2147483271,N'CASES',40,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (113,-2147483272,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (114,-2147483272,N'CASES',40,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (115,-2147483293,N'CASES',40,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (116,-2147483293,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (117,-2147483292,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (118,-2147483292,N'CASES',40,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (119,-2147483270,N'CASES',20,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (120,-2147483569,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (121,-2147483569,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (122,-2147483568,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (123,-2147483568,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (124,-2147483582,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (125,-2147483581,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (126,-2147483581,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (127,-2147483583,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (128,-2147483583,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (129,-2147483567,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (130,-2147483567,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (131,-2147483644,N'CASES',48,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (132,-2147483648,N'CASES',12,N'','20170707',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (133,-2147483647,N'CASES',24,N'','20170707',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (134,-2147483220,N'CASES',4,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (135,-2147483219,N'CASES',6,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (136,-2147483218,N'CASES',6,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (137,-2147483217,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (138,-2147483216,N'CASES',48,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (139,-2147483201,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (140,-2147483547,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (141,-2147483251,N'CASES',10,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (142,-2147483253,N'CASES',10,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (143,-2147483200,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (144,-2147483554,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (145,-2147483573,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (146,-2147483580,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (147,-2147483580,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (148,-2147483579,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (149,-2147483579,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (150,-2147483577,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (151,-2147483577,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (152,-2147483578,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (153,-2147483578,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (154,-2147483576,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (155,-2147483576,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (156,-2147483571,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (157,-2147483571,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (158,-2147483570,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (159,-2147483570,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (160,-2147483575,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (161,-2147483566,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (162,-2147483566,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (163,-2147483588,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (164,-2147483588,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (165,-2147483586,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (166,-2147483586,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (167,-2147483585,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (168,-2147483585,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (169,-2147483587,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (170,-2147483587,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (171,-2147483529,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (172,-2147483529,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (173,-2147483530,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (174,-2147483530,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (175,-2147483375,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (176,-2147483375,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (177,-2147483298,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (178,-2147483527,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (179,-2147483527,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (180,-2147483528,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (181,-2147483528,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (182,-2147483247,N'CASES',20,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (183,-2147483248,N'CASES',20,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (184,-2147483248,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (185,-2147483252,N'CASES',10,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (186,-2147483252,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (187,-2147483614,N'CASES',24,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (188,-2147483612,N'CASES',48,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (189,-2147483611,N'CASES',48,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (190,-2147483610,N'CASES',24,N'','20170710',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (191,-2147483610,N'PCS',1,N'','20170710',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (192,-2147483574,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (193,-2147483574,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (194,-2147483584,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (195,-2147483584,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (196,-2147483535,N'CASES',48,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (197,-2147483535,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (198,-2147483534,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (199,-2147483534,N'CASES',48,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (200,-2147483526,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (201,-2147483526,N'CASES',48,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (202,-2147483533,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (203,-2147483533,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (204,-2147483532,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (205,-2147483532,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (206,-2147483531,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (207,-2147483531,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (208,-2147483243,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (209,-2147483243,N'CASES',20,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (210,-2147483616,N'CASES',48,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (211,-2147483544,N'CASES',100,N'','20170712',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (212,-2147483545,N'CASES',100,N'','20170712',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (213,-2147483562,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (214,-2147483562,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (215,-2147483246,N'CASES',20,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (216,-2147483246,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (217,-2147483244,N'CASES',20,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (218,-2147483244,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (219,-2147483245,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (220,-2147483245,N'CASES',20,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (221,-2147483543,N'CASES',100,N'','20170713',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (222,-2147483540,N'CASES',100,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (223,-2147483542,N'CASES',100,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (224,-2147483541,N'CASES',50,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (225,-2147483536,N'CASES',48,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (226,-2147483538,N'CASES',50,N'','20170624',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (227,-2147483539,N'CASES',100,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (228,-2147483537,N'CASES',48,N'','20170624',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (229,-2147483239,N'CASES',12,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (230,-2147483237,N'CASES',12,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (231,-2147483238,N'CASES',12,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (232,-2147483557,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (233,-2147483556,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (234,-2147483555,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (235,-2147483295,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (236,-2147483295,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (237,-2147483250,N'CASES',10,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (238,-2147483255,N'CASES',10,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (239,-2147483249,N'CASES',10,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (240,-2147483254,N'CASES',10,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (241,-2147483617,N'CASES',30,N'','20170710',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (242,-2147483615,N'CASES',30,N'','20170710',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (243,-2147483606,N'CASES',30,N'','20170710',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (244,-2147483589,N'CASES',30,N'','20170710',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (245,-2147483199,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (246,-2147483198,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (247,-2147483559,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (248,-2147483560,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (249,-2147483558,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (250,-2147483561,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (251,-2147483553,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (252,-2147483546,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (253,-2147483552,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (254,-2147483551,N'CASES',24,N'','20170710',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (255,-2147483550,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (256,-2147483197,N'CASES',24,N'','20170629',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (257,-2147483549,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (258,-2147483548,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (259,-2147483443,N'CASES',48,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (260,-2147483443,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (261,-2147483442,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (262,-2147483442,N'CASES',72,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (263,-2147483441,N'CASES',48,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (264,-2147483441,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (265,-2147483477,N'CASES',96,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (266,-2147483477,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (267,-2147483476,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (268,-2147483476,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (269,-2147483438,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (270,-2147483438,N'CASES',10,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (271,-2147483475,N'CASES',96,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (272,-2147483474,N'CASES',96,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (273,-2147483474,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (274,-2147483473,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (275,-2147483473,N'CASES',96,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (276,-2147483472,N'CASES',40,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (277,-2147483472,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (278,-2147483480,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (279,-2147483480,N'CASES',96,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (280,-2147483479,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (281,-2147483479,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (282,-2147483478,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (283,-2147483478,N'CASES',10,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (284,-2147483215,N'CASES',8,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (285,-2147483522,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (286,-2147483522,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (287,-2147483523,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (288,-2147483523,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (289,-2147483521,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (290,-2147483521,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (291,-2147483432,N'CASES',42,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (292,-2147483431,N'CASES',48,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (293,-2147483422,N'CASES',8,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (294,-2147483430,N'CASES',8,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (295,-2147483464,N'CASES',80,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (296,-2147483464,N'IB',20,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (297,-2147483468,N'CASES',40,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (298,-2147483468,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (299,-2147483467,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (300,-2147483467,N'CASES',60,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (301,-2147483466,N'CASES',80,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (302,-2147483466,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (303,-2147483419,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (304,-2147483419,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (305,-2147483463,N'IB',20,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (306,-2147483463,N'CASES',80,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (307,-2147483462,N'CASES',32,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (308,-2147483461,N'CASES',80,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (309,-2147483461,N'IB',20,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (310,-2147483437,N'CASES',3,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (311,-2147483437,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (312,-2147483469,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (313,-2147483469,N'CASES',96,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (314,-2147483471,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (315,-2147483471,N'CASES',96,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (316,-2147483470,N'CASES',96,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (317,-2147483470,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (318,-2147483429,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (319,-2147483452,N'CASES',8,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (320,-2147483451,N'CASES',8,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (321,-2147483451,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (322,-2147483421,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (323,-2147483447,N'CASES',8,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (324,-2147483447,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (325,-2147483446,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (326,-2147483446,N'CASES',20,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (327,-2147483448,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (328,-2147483448,N'CASES',20,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (329,-2147483440,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (330,-2147483440,N'CASES',8,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (331,-2147483420,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (332,-2147483418,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (333,-2147483418,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (334,-2147483454,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (335,-2147483454,N'CASES',48,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (336,-2147483453,N'CASES',48,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (337,-2147483453,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (338,-2147483460,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (339,-2147483460,N'CASES',8,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (340,-2147483459,N'CASES',48,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (341,-2147483459,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (342,-2147483458,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (343,-2147483458,N'CASES',48,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (344,-2147483457,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (345,-2147483457,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (346,-2147483456,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (347,-2147483456,N'CASES',48,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (348,-2147483455,N'CASES',48,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (349,-2147483455,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (350,-2147483424,N'CASES',8,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (351,-2147483444,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (352,-2147483444,N'CASES',48,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (353,-2147483445,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (354,-2147483445,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (355,-2147483450,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (356,-2147483450,N'CASES',48,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (357,-2147483449,N'CASES',16,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (358,-2147483449,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (359,-2147483433,N'CASES',4,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (360,-2147483504,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (361,-2147483504,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (362,-2147483503,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (363,-2147483503,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (364,-2147483502,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (365,-2147483502,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (366,-2147483465,N'PCS',1,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (367,-2147483465,N'CASES',32,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (368,-2147483439,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (369,-2147483439,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (370,-2147483491,N'CASES',22,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (371,-2147483491,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (372,-2147483486,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (373,-2147483486,N'CASES',40,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (374,-2147483490,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (375,-2147483490,N'CASES',20,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (376,-2147483484,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (377,-2147483484,N'CASES',34,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (378,-2147483488,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (379,-2147483488,N'CASES',20,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (380,-2147483483,N'CASES',34,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (381,-2147483483,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (382,-2147483487,N'CASES',44,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (383,-2147483487,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (384,-2147483485,N'CASES',34,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (385,-2147483485,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (386,-2147483489,N'CASES',20,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (387,-2147483489,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (388,-2147483514,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (389,-2147483514,N'CASES',4,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (390,-2147483513,N'CASES',4,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (391,-2147483513,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (392,-2147483509,N'CASES',4,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (393,-2147483509,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (394,-2147483512,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (395,-2147483512,N'CASES',4,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (396,-2147483508,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (397,-2147483508,N'CASES',4,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (398,-2147483511,N'CASES',4,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (399,-2147483511,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (400,-2147483495,N'CASES',26,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (401,-2147483495,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (402,-2147483494,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (403,-2147483494,N'CASES',22,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (404,-2147483501,N'CASES',8,N'','20170630',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (405,-2147483501,N'PCS',1,N'','20170630',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (406,-2147483497,N'CASES',34,N'','20170627',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (407,-2147483497,N'PCS',1,N'','20170627',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (408,-2147483493,N'CASES',46,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (409,-2147483493,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (410,-2147483500,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (411,-2147483500,N'CASES',8,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (412,-2147483496,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (413,-2147483496,N'CASES',4,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (414,-2147483499,N'CASES',8,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (415,-2147483499,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (416,-2147483498,N'CASES',8,N'','20170627',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (417,-2147483482,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (418,-2147483482,N'CASES',16,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (419,-2147483520,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (420,-2147483520,N'CASES',8,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (421,-2147483519,N'CASES',8,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (422,-2147483519,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (423,-2147483518,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (424,-2147483518,N'CASES',8,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (425,-2147483517,N'CASES',8,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (426,-2147483517,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (427,-2147483516,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (428,-2147483516,N'CASES',8,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (429,-2147483515,N'CASES',4,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (430,-2147483515,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (431,-2147483510,N'PCS',1,N'','20170621',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (432,-2147483510,N'CASES',4,N'','20170621',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (433,-2147483506,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (434,-2147483506,N'CASES',4,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (435,-2147483505,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (436,-2147483505,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (437,-2147483525,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (438,-2147483525,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (439,-2147483524,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (440,-2147483524,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (441,-2147483436,N'CASES',2,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (442,-2147483434,N'CASES',3,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (443,-2147483426,N'CASES',3,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (444,-2147483427,N'CASES',3,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (445,-2147483427,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (446,-2147483435,N'CASES',3,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (447,-2147483435,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (448,-2147483481,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (449,-2147483481,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (450,-2147483492,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (451,-2147483492,N'CASES',40,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (452,-2147483507,N'CASES',4,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (453,-2147483507,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (454,-2147483428,N'CASES',20,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (455,-2147483423,N'CASES',20,N'','20170630',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (456,-2147483425,N'CASES',48,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (457,-2147483425,N'PCS',1,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (458,-2147483214,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (459,-2147483260,N'CASES',12,N'','20170629',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (460,-2147483256,N'CASES',12,N'','20170629',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (461,-2147483258,N'CASES',12,N'','20170629',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (462,-2147483261,N'CASES',12,N'','20170629',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (463,-2147483257,N'CASES',12,N'','20170629',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (464,-2147483259,N'CASES',12,N'','20170629',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (465,-2147483225,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (466,-2147483225,N'CASES',72,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (467,-2147483228,N'CASES',108,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (468,-2147483229,N'CASES',72,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (469,-2147483563,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (470,-2147483563,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (471,-2147483565,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (472,-2147483565,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (473,-2147483564,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (474,-2147483564,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (475,-2147483595,N'CASES',6,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (476,-2147483593,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (477,-2147483613,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (478,-2147483613,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (479,-2147483591,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (480,-2147483591,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (481,-2147483592,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (482,-2147483605,N'CASES',12,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (483,-2147483609,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (484,-2147483609,N'CASES',48,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (485,-2147483608,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (486,-2147483604,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (487,-2147483604,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (488,-2147483603,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (489,-2147483603,N'CASES',48,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (490,-2147483602,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (491,-2147483602,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (492,-2147483607,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (493,-2147483607,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (494,-2147483601,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (495,-2147483601,N'CASES',144,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (496,-2147483594,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (497,-2147483600,N'CASES',144,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (498,-2147483600,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (499,-2147483364,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (500,-2147483363,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (501,-2147483372,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (502,-2147483372,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (503,-2147483351,N'CASES',20,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (504,-2147483371,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (505,-2147483371,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (506,-2147483324,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (507,-2147483321,N'CASES',48,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (508,-2147483362,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (509,-2147483370,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (510,-2147483370,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (511,-2147483335,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (512,-2147483369,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (513,-2147483358,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (514,-2147483355,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (515,-2147483374,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (516,-2147483374,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (517,-2147483357,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (518,-2147483356,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (519,-2147483326,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (520,-2147483319,N'CASES',48,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (521,-2147483340,N'CASES',72,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (522,-2147483339,N'CASES',72,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (523,-2147483311,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (524,-2147483311,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (525,-2147483338,N'CASES',72,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (526,-2147483353,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (527,-2147483353,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (528,-2147483368,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (529,-2147483368,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (530,-2147483342,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (531,-2147483341,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (532,-2147483345,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (533,-2147483344,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (534,-2147483343,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (535,-2147483350,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (536,-2147483349,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (537,-2147483348,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (538,-2147483347,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (539,-2147483346,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (540,-2147483336,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (541,-2147483337,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (542,-2147483331,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (543,-2147483330,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (544,-2147483332,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (545,-2147483334,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (546,-2147483333,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (547,-2147483312,N'CASES',72,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (548,-2147483314,N'CASES',72,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (549,-2147483313,N'CASES',72,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (550,-2147483313,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (551,-2147483329,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (552,-2147483328,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (553,-2147483323,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (554,-2147483367,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (555,-2147483367,N'CASES',48,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (556,-2147483360,N'CASES',48,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (557,-2147483361,N'CASES',48,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (558,-2147483361,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (559,-2147483315,N'CASES',72,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (560,-2147483316,N'CASES',72,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (561,-2147483327,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (562,-2147483325,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (563,-2147483322,N'CASES',48,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (564,-2147483320,N'CASES',48,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (565,-2147483310,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (566,-2147483310,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (567,-2147483352,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (568,-2147483373,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (569,-2147483373,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (570,-2147483359,N'CASES',36,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (571,-2147483318,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (572,-2147483317,N'CASES',24,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (573,-2147483599,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (574,-2147483599,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (575,-2147483598,N'CASES',90,N'','20170713',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (576,-2147483598,N'PCS',1,N'','20170713',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (577,-2147483597,N'PCS',1,N'','20170713',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (578,-2147483597,N'CASES',12,N'','20170713',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (579,-2147483596,N'CASES',12,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[datestamp],[status]) VALUES (580,-2147483596,N'PCS',1,'20170620 10:59:20.367',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (581,-2147483543,N'PCS',1,N'','20170713',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (582,-2147483542,N'PCS',1,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (583,-2147483540,N'PCS',1,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (584,-2147483545,N'PCS',1,N'','20170712',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (585,-2147483541,N'PCS',1,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (586,-2147483538,N'PCS',1,N'','20170624',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (587,-2147483197,N'PCS',1,N'','20170629',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (588,-2147483640,N'PCS',1,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (589,-2147483641,N'PCS',1,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (590,-2147483642,N'PCS',1,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (591,-2147483643,N'PCS',1,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (592,-2147483639,N'PCS',1,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (593,-2147483627,N'PCS',1,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (594,-2147483212,N'PCS',1,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (595,-2147483648,N'PCS',1,N'','20170707',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (596,-2147483644,N'PCS',1,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (597,-2147483647,N'PCS',1,N'','20170707',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (598,-2147483614,N'PCS',1,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (599,-2147483617,N'PCS',1,N'','20170710',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (600,-2147483637,N'PCS',1,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (601,-2147483636,N'PCS',1,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (602,-2147483629,N'PCS',1,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (603,-2147483634,N'PCS',1,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (604,-2147483632,N'PCS',1,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (605,-2147483631,N'PCS',1,N'','20170629',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (606,-2147483638,N'PCS',1,N'','20170622',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (607,-2147483539,N'PCS',1,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (608,-2147483620,N'PCS',1,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (609,-2147483619,N'PCS',1,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (610,-2147483536,N'PCS',1,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (611,-2147483239,N'PCS',1,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (612,-2147483238,N'PCS',1,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (613,-2147483237,N'PCS',1,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (614,-2147483630,N'PCS',1,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (615,-2147483612,N'PCS',1,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (616,-2147483611,N'PCS',1,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (617,-2147483605,N'PCS',1,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (618,-2147483207,N'PCS',1,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (619,-2147483206,N'PCS',1,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (620,-2147483209,N'PCS',1,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (621,-2147483208,N'PCS',1,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (622,-2147483205,N'PCS',1,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (623,-2147483626,N'PCS',1,N'','20170623',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (624,-2147483537,N'PCS',1,N'','20170624',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (625,-2147483213,N'PCS',1,N'','20170627',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (626,-2147483635,N'PCS',1,N'','20170627',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (627,-2147483633,N'PCS',1,N'','20170706',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (628,-2147483628,N'PCS',1,N'','20170706',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (629,-2147483210,N'PCS',1,N'','20170706',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (630,-2147483196,N'CASES',12,N'','20170706',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (631,-2147483195,N'CASES',12,N'','20170706',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (632,-2147483195,N'PCS',1,N'','20170706',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (633,-2147483196,N'PCS',1,N'','20170706',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (634,-2147483194,N'CASES',12,N'','20170706',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (635,-2147483194,N'PCS',1,N'','20170706',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (636,-2147483193,N'CASES',12,N'','20170706',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (637,-2147483193,N'PCS',1,N'','20170706',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (638,-2147483192,N'CASES',12,N'','20170706',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (639,-2147483192,N'PCS',1,N'','20170706',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (640,-2147483191,N'CASES',12,N'','20170706',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (641,-2147483191,N'PCS',1,N'','20170706',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (642,-2147483615,N'PCS',1,N'','20170710',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (643,-2147483589,N'PCS',1,N'','20170710',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (644,-2147483606,N'PCS',1,N'','20170710',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (645,-2147483551,N'PCS',1,N'','20170710',1);
GO
INSERT INTO [BASE_UOM] ([_UOMIndex],[ProdIndex],[uom],[qty],[barcode],[datestamp],[status]) VALUES (646,-2147483544,N'PCS',1,N'','20170712',1);
GO
SET IDENTITY_INSERT [BASE_UOM] OFF
SET IDENTITY_INSERT [BASE_ItemPrice] ON
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1,-2147483588,1,163,626.7900,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (2,-2147483587,1,170,626.7900,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (3,-2147483586,1,165,1285.7100,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (4,-2147483585,1,168,1500.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (5,-2147483617,1,241,931.5000,'20170623',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (6,-2147483616,1,210,890.4700,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (7,-2147483255,1,238,1160.7100,'20170620 11:28:42',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (8,-2147483254,1,240,1160.7100,'20170620 11:28:42',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (9,-2147483253,1,142,1160.7100,'20170620 11:28:42',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (10,-2147483643,1,28,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (11,-2147483642,1,27,3921.1200,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (12,-2147483641,1,26,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (13,-2147483640,1,25,5882.4000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (14,-2147483639,1,30,4500.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (15,-2147483638,1,29,3128.6400,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (16,-2147483637,1,23,1392.9600,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (17,-2147483636,1,24,6000.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (18,-2147483584,1,194,2442.8600,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (19,-2147483583,1,128,5742.8400,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (20,-2147483582,1,124,2517.8600,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (21,-2147483581,1,125,2517.8600,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (22,-2147483293,1,115,593.5300,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (23,-2147483292,1,118,593.5300,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (24,-2147483291,1,109,496.4300,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (25,-2147483290,1,68,703.7900,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (26,-2147483289,1,69,773.4400,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (27,-2147483288,1,74,703.7900,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (28,-2147483287,1,77,536.0700,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (29,-2147483286,1,80,703.7900,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (30,-2147483285,1,81,773.4400,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (31,-2147483284,1,95,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (32,-2147483283,1,83,628.5700,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (33,-2147483580,1,147,1542.8600,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (34,-2147483579,1,148,1285.7100,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (35,-2147483578,1,153,1071.4300,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (36,-2147483545,1,212,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (37,-2147483544,1,211,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (38,-2147483543,1,221,7679.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (39,-2147483648,1,132,988.4400,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (40,-2147483252,1,185,491.0700,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (41,-2147483577,1,150,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (42,-2147483576,1,155,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (43,-2147483575,1,160,1542.8600,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (44,-2147483375,1,175,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (45,-2147483251,1,141,491.0700,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (46,-2147483574,1,192,407.1400,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (47,-2147483542,1,223,7857.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (48,-2147483541,1,224,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (49,-2147483250,1,237,491.0700,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (50,-2147483249,1,239,491.0700,'20170620 11:28:42',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (51,-2147483615,1,242,977.6800,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (52,-2147483614,1,187,987.9800,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (53,-2147483613,1,477,922.5900,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (54,-2147483374,1,516,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (55,-2147483373,1,568,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (56,-2147483372,1,502,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (57,-2147483371,1,504,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (58,-2147483370,1,510,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (59,-2147483369,1,512,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (60,-2147483368,1,528,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (61,-2147483367,1,555,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (62,-2147483573,1,145,771.4300,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (63,-2147483540,1,222,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (64,-2147483282,1,65,536.0700,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (65,-2147483281,1,71,536.0700,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (66,-2147483280,1,76,773.4400,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (67,-2147483279,1,88,628.5700,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (68,-2147483278,1,91,593.5300,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (69,-2147483635,1,34,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (70,-2147483634,1,33,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (71,-2147483633,1,37,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (72,-2147483632,1,35,5978.8800,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (73,-2147483631,1,36,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (74,-2147483630,1,32,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (75,-2147483629,1,31,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (76,-2147483628,1,40,2651.8800,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (77,-2147483627,1,39,3214.4400,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (78,-2147483626,1,38,4017.6000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (79,-2147483625,1,41,4714.2000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (80,-2147483277,1,86,628.5700,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (81,-2147483276,1,93,593.5300,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (82,-2147483275,1,105,438.1700,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (83,-2147483274,1,108,438.1700,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (84,-2147483273,1,103,438.1700,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (85,-2147483272,1,114,811.8100,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (86,-2147483271,1,112,811.6100,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (87,-2147483364,1,499,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (88,-2147483363,1,500,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (89,-2147483362,1,508,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (90,-2147483361,1,557,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (91,-2147483360,1,556,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (92,-2147483359,1,570,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (93,-2147483358,1,513,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (94,-2147483357,1,517,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (95,-2147483356,1,518,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (96,-2147483355,1,514,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (97,-2147483353,1,526,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (98,-2147483352,1,567,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (99,-2147483351,1,503,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (100,-2147483350,1,535,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (101,-2147483349,1,536,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (102,-2147483348,1,537,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (103,-2147483347,1,538,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (104,-2147483346,1,539,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (105,-2147483345,1,532,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (106,-2147483344,1,533,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (107,-2147483343,1,534,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (108,-2147483342,1,530,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (109,-2147483341,1,531,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (110,-2147483340,1,521,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (111,-2147483339,1,522,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (112,-2147483338,1,525,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (113,-2147483337,1,541,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (114,-2147483336,1,540,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (115,-2147483335,1,511,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (116,-2147483334,1,545,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (117,-2147483333,1,546,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (118,-2147483332,1,544,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (119,-2147483331,1,542,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (120,-2147483330,1,543,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (121,-2147483329,1,551,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (122,-2147483328,1,552,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (123,-2147483327,1,561,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (124,-2147483326,1,519,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (125,-2147483325,1,562,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (126,-2147483324,1,506,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (127,-2147483323,1,553,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (128,-2147483322,1,563,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (129,-2147483321,1,507,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (130,-2147483320,1,564,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (131,-2147483319,1,520,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (132,-2147483318,1,571,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (133,-2147483317,1,572,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (134,-2147483316,1,560,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (135,-2147483315,1,559,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (136,-2147483314,1,548,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (137,-2147483313,1,549,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (138,-2147483312,1,547,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (139,-2147483248,1,183,1250.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (140,-2147483247,1,182,1250.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (141,-2147483311,1,523,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (142,-2147483310,1,566,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (143,-2147483647,1,133,1128.3800,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (144,-2147483571,1,156,626.7900,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (145,-2147483612,1,188,1056.9500,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (146,-2147483611,1,189,1092.7700,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (147,-2147483610,1,190,1016.6300,'20170620 11:28:42',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (148,-2147483609,1,484,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (149,-2147483608,1,485,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (150,-2147483607,1,492,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (151,-2147483570,1,159,626.7900,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (152,-2147483606,1,243,1090.1300,'20170620 11:28:42',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (153,-2147483535,1,196,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (154,-2147483534,1,199,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (155,-2147483533,1,202,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (156,-2147483532,1,205,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (157,-2147483531,1,206,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (158,-2147483530,1,174,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (159,-2147483529,1,171,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (160,-2147483528,1,181,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (161,-2147483527,1,178,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (162,-2147483526,1,201,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (163,-2147483569,1,120,2442.8600,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (164,-2147483568,1,123,2442.8600,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (165,-2147483567,1,129,478.5700,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (166,-2147483644,1,131,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (167,-2147483605,1,482,936.0200,'20170620 11:28:42',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (168,-2147483604,1,486,1585.4200,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (169,-2147483603,1,489,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (170,-2147483602,1,490,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (171,-2147483601,1,495,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (172,-2147483600,1,497,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (173,-2147483566,1,162,626.7900,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (174,-2147483565,1,471,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (175,-2147483564,1,474,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (176,-2147483563,1,469,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (177,-2147483562,1,214,1714.2900,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (178,-2147483246,1,215,580.3600,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (179,-2147483245,1,220,580.3600,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (180,-2147483244,1,217,580.3600,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (181,-2147483243,1,209,1250.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (182,-2147483561,1,250,816.2400,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (183,-2147483560,1,248,816.2400,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (184,-2147483559,1,247,816.2400,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (185,-2147483558,1,249,816.2400,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (186,-2147483557,1,232,813.1200,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (187,-2147483556,1,233,813.1200,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (188,-2147483555,1,234,813.1200,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (189,-2147483554,1,144,813.1200,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (190,-2147483553,1,251,591.6000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (191,-2147483552,1,253,591.6000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (192,-2147483551,1,254,591.6000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (193,-2147483550,1,255,591.6000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (194,-2147483549,1,257,591.6000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (195,-2147483548,1,258,591.6000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (196,-2147483201,1,139,714.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (197,-2147483547,1,140,714.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (198,-2147483198,1,246,714.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (199,-2147483546,1,252,591.6000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (200,-2147483200,1,143,714.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (201,-2147483199,1,245,612.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (202,-2147483599,1,574,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (203,-2147483598,1,575,240.0000,'20170620 11:28:42',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (204,-2147483597,1,578,670.0000,'20170620 11:28:42',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (205,-2147483596,1,579,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (206,-2147483525,1,437,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (207,-2147483524,1,440,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (208,-2147483523,1,287,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (209,-2147483522,1,286,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (210,-2147483521,1,289,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (211,-2147483520,1,420,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (212,-2147483519,1,421,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (213,-2147483518,1,424,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (214,-2147483517,1,425,952.3800,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (215,-2147483516,1,428,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (216,-2147483515,1,429,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (217,-2147483514,1,389,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (218,-2147483513,1,390,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (219,-2147483512,1,395,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (220,-2147483511,1,398,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (221,-2147483510,1,432,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (222,-2147483509,1,392,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (223,-2147483508,1,397,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (224,-2147483507,1,452,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (225,-2147483506,1,434,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (226,-2147483505,1,435,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (227,-2147483504,1,361,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (228,-2147483503,1,362,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (229,-2147483502,1,365,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (230,-2147483501,1,404,0.0000,'20170620 11:28:42',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (231,-2147483500,1,411,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (232,-2147483499,1,414,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (233,-2147483498,1,416,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (234,-2147483497,1,406,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (235,-2147483496,1,413,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (236,-2147483495,1,400,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (237,-2147483494,1,403,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (238,-2147483493,1,408,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (239,-2147483492,1,451,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (240,-2147483491,1,370,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (241,-2147483490,1,375,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (242,-2147483489,1,386,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (243,-2147483488,1,379,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (244,-2147483487,1,382,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (245,-2147483486,1,373,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (246,-2147483485,1,384,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (247,-2147483484,1,377,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (248,-2147483483,1,380,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (249,-2147483482,1,418,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (250,-2147483481,1,448,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (251,-2147483480,1,279,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (252,-2147483479,1,280,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (253,-2147483478,1,283,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (254,-2147483477,1,265,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (255,-2147483476,1,268,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (256,-2147483475,1,271,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (257,-2147483474,1,272,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (258,-2147483473,1,275,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (259,-2147483472,1,276,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (260,-2147483471,1,315,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (261,-2147483470,1,316,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (262,-2147483469,1,313,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (263,-2147483468,1,297,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (264,-2147483467,1,300,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (265,-2147483466,1,301,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (266,-2147483465,1,367,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (267,-2147483464,1,295,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (268,-2147483463,1,306,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (269,-2147483462,1,307,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (270,-2147483461,1,308,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (271,-2147483460,1,339,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (272,-2147483459,1,340,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (273,-2147483458,1,343,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (274,-2147483457,1,344,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (275,-2147483456,1,347,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (276,-2147483455,1,348,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (277,-2147483214,1,458,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (278,-2147483453,1,336,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (279,-2147483452,1,319,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (280,-2147483451,1,320,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (281,-2147483450,1,356,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (282,-2147483449,1,357,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (283,-2147483448,1,328,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (284,-2147483447,1,323,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (285,-2147483446,1,326,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (286,-2147483445,1,353,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (287,-2147483444,1,352,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (288,-2147483443,1,259,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (289,-2147483442,1,262,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (290,-2147483441,1,263,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (291,-2147483440,1,330,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (292,-2147483439,1,368,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (293,-2147483438,1,270,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (294,-2147483437,1,310,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (295,-2147483436,1,441,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (296,-2147483270,1,119,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (297,-2147483595,1,475,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (298,-2147483594,1,496,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (299,-2147483298,1,177,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (300,-2147483435,1,446,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (301,-2147483539,1,227,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (302,-2147483538,1,226,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (303,-2147483537,1,228,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (304,-2147483536,1,225,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (305,-2147483295,1,235,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (306,-2147483434,1,442,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (307,-2147483433,1,359,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (308,-2147483269,1,98,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (309,-2147483268,1,101,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (310,-2147483267,1,102,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (311,-2147483432,1,291,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (312,-2147483431,1,292,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (313,-2147483430,1,294,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (314,-2147483429,1,318,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (315,-2147483428,1,454,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (316,-2147483427,1,444,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (317,-2147483593,1,476,936.0200,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (318,-2147483592,1,481,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (319,-2147483624,1,48,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (320,-2147483623,1,51,0.0000,'20170620 11:28:42',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (321,-2147483622,1,45,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (322,-2147483621,1,49,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (323,-2147483426,1,443,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (324,-2147483591,1,479,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (325,-2147483266,1,96,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (326,-2147483265,1,100,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (327,-2147483264,1,85,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (328,-2147483263,1,111,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (329,-2147483425,1,456,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (330,-2147483424,1,350,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (331,-2147483423,1,455,0.0000,'20170620 11:28:42',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (332,-2147483422,1,293,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (333,-2147483620,1,60,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (334,-2147483619,1,61,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (335,-2147483262,1,64,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (336,-2147483421,1,322,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (337,-2147483420,1,331,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (338,-2147483419,1,303,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (339,-2147483236,1,8,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (340,-2147483235,1,5,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (341,-2147483234,1,7,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (342,-2147483233,1,6,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (343,-2147483232,1,4,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (344,-2147483231,1,3,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (345,-2147483230,1,9,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (346,-2147483229,1,468,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (347,-2147483228,1,467,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (348,-2147483227,1,10,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (349,-2147483226,1,1,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (350,-2147483225,1,466,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (351,-2147483224,1,14,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (352,-2147483223,1,12,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (353,-2147483222,1,13,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (354,-2147483221,1,16,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (355,-2147483239,1,229,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (356,-2147483238,1,231,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (357,-2147483237,1,230,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (358,-2147483242,1,17,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (359,-2147483241,1,20,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (360,-2147483240,1,21,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (361,-2147483589,1,244,569.2000,'20170620 11:28:42',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (362,-2147483213,1,53,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (363,-2147483418,1,333,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (364,-2147483197,1,256,295.8000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (365,-2147483207,1,55,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (366,-2147483206,1,56,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (367,-2147483209,1,57,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (368,-2147483208,1,58,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (369,-2147483205,1,59,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (370,-2147483210,1,54,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (371,-2147483212,1,44,0.0000,'20170620 11:28:42.707',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (372,-2147483588,1,164,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (373,-2147483587,1,169,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (374,-2147483586,1,166,53.5700,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (375,-2147483585,1,167,62.5000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (376,-2147483584,1,195,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (377,-2147483583,1,127,478.5700,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (378,-2147483581,1,126,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (379,-2147483293,1,116,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (380,-2147483292,1,117,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (381,-2147483291,1,110,24.8500,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (382,-2147483290,1,67,20.1100,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (383,-2147483289,1,70,30.9400,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (384,-2147483288,1,73,20.1100,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (385,-2147483287,1,78,13.4000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (386,-2147483286,1,79,20.1100,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (387,-2147483285,1,82,30.9400,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (388,-2147483284,1,94,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (389,-2147483283,1,84,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (390,-2147483580,1,146,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (391,-2147483579,1,149,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (392,-2147483578,1,152,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (393,-2147483252,1,186,49.1100,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (394,-2147483577,1,151,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (395,-2147483576,1,154,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (396,-2147483375,1,176,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (397,-2147483574,1,193,16.9600,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (398,-2147483613,1,478,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (399,-2147483374,1,515,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (400,-2147483373,1,569,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (401,-2147483372,1,501,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (402,-2147483371,1,505,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (403,-2147483370,1,509,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (404,-2147483368,1,529,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (405,-2147483367,1,554,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (406,-2147483282,1,66,13.4000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (407,-2147483281,1,72,13.4000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (408,-2147483280,1,75,30.9700,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (409,-2147483279,1,89,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (410,-2147483278,1,90,14.8400,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (411,-2147483625,1,42,82.5000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (412,-2147483277,1,87,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (413,-2147483276,1,92,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (414,-2147483275,1,106,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (415,-2147483274,1,107,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (416,-2147483273,1,104,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (417,-2147483272,1,113,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (418,-2147483361,1,558,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (419,-2147483353,1,527,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (420,-2147483313,1,550,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (421,-2147483248,1,184,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (422,-2147483311,1,524,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (423,-2147483310,1,565,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (424,-2147483571,1,157,26.1200,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (425,-2147483610,1,191,50.6700,'20170627',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (426,-2147483609,1,483,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (427,-2147483607,1,493,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (428,-2147483570,1,158,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (429,-2147483535,1,197,49.1100,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (430,-2147483534,1,198,49.1100,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (431,-2147483533,1,203,49.1100,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (432,-2147483532,1,204,53.5700,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (433,-2147483531,1,207,53.5700,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (434,-2147483530,1,173,312.5000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (435,-2147483529,1,172,343.7500,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (436,-2147483528,1,180,312.5000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (437,-2147483527,1,179,343.7500,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (438,-2147483526,1,200,49.1100,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (439,-2147483569,1,121,478.5700,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (440,-2147483568,1,122,203.5700,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (441,-2147483567,1,130,478.5700,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (442,-2147483604,1,487,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (443,-2147483603,1,488,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (444,-2147483602,1,491,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (445,-2147483601,1,494,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (446,-2147483600,1,498,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (447,-2147483566,1,161,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (448,-2147483565,1,472,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (449,-2147483564,1,473,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (450,-2147483563,1,470,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (451,-2147483562,1,213,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (452,-2147483246,1,216,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (453,-2147483245,1,219,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (454,-2147483244,1,218,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (455,-2147483243,1,208,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (456,-2147483599,1,573,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (457,-2147483598,1,576,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (458,-2147483597,1,577,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (459,-2147483596,1,580,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (460,-2147483525,1,438,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (461,-2147483524,1,439,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (462,-2147483523,1,288,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (463,-2147483522,1,285,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (464,-2147483521,1,290,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (465,-2147483520,1,419,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (466,-2147483519,1,422,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (467,-2147483518,1,423,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (468,-2147483517,1,426,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (469,-2147483516,1,427,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (470,-2147483515,1,430,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (471,-2147483514,1,388,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (472,-2147483513,1,391,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (473,-2147483512,1,394,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (474,-2147483511,1,399,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (475,-2147483510,1,431,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (476,-2147483509,1,393,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (477,-2147483508,1,396,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (478,-2147483507,1,453,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (479,-2147483506,1,433,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (480,-2147483505,1,436,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (481,-2147483504,1,360,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (482,-2147483503,1,363,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (483,-2147483502,1,364,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (484,-2147483501,1,405,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (485,-2147483500,1,410,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (486,-2147483499,1,415,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (487,-2147483497,1,407,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (488,-2147483496,1,412,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (489,-2147483495,1,401,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (490,-2147483494,1,402,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (491,-2147483493,1,409,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (492,-2147483492,1,450,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (493,-2147483491,1,371,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (494,-2147483490,1,374,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (495,-2147483489,1,387,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (496,-2147483488,1,378,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (497,-2147483487,1,383,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (498,-2147483486,1,372,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (499,-2147483485,1,385,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (500,-2147483484,1,376,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (501,-2147483483,1,381,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (502,-2147483482,1,417,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (503,-2147483481,1,449,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (504,-2147483480,1,278,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (505,-2147483479,1,281,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (506,-2147483478,1,282,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (507,-2147483477,1,266,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (508,-2147483476,1,267,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (509,-2147483474,1,273,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (510,-2147483473,1,274,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (511,-2147483472,1,277,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (512,-2147483471,1,314,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (513,-2147483470,1,317,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (514,-2147483469,1,312,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (515,-2147483468,1,298,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (516,-2147483467,1,299,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (517,-2147483466,1,302,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (518,-2147483465,1,366,0.0000,'20170620 11:30:08',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (519,-2147483464,1,296,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (520,-2147483463,1,305,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (521,-2147483461,1,309,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (522,-2147483460,1,338,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (523,-2147483459,1,341,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (524,-2147483458,1,342,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (525,-2147483457,1,345,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (526,-2147483456,1,346,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (527,-2147483455,1,349,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (528,-2147483453,1,337,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (529,-2147483451,1,321,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (530,-2147483450,1,355,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (531,-2147483449,1,358,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (532,-2147483448,1,327,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (533,-2147483447,1,324,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (534,-2147483446,1,325,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (535,-2147483445,1,354,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (536,-2147483444,1,351,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (537,-2147483443,1,260,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (538,-2147483442,1,261,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (539,-2147483441,1,264,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (540,-2147483440,1,329,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (541,-2147483439,1,369,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (542,-2147483438,1,269,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (543,-2147483437,1,311,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (544,-2147483435,1,447,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (545,-2147483295,1,236,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (546,-2147483427,1,445,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (547,-2147483624,1,47,299.1100,'20170620 11:30:08',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (548,-2147483623,1,52,1092.6000,'20170623',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (549,-2147483622,1,46,299.1100,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (550,-2147483621,1,50,1092.6000,'20170620 11:30:08',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (551,-2147483591,1,480,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (552,-2147483266,1,97,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (553,-2147483265,1,99,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (554,-2147483425,1,457,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (555,-2147483419,1,304,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (556,-2147483226,1,2,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (557,-2147483225,1,465,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (558,-2147483224,1,15,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (559,-2147483223,1,11,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (560,-2147483242,1,18,391.7400,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (561,-2147483241,1,19,271.2100,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (562,-2147483240,1,22,192.8600,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (563,-2147483418,1,332,0.0000,'20170620 11:30:08.960',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (564,-2147483588,2,164,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (565,-2147483587,2,169,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (566,-2147483586,2,166,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (567,-2147483585,2,167,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (568,-2147483584,2,195,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (569,-2147483583,2,127,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (570,-2147483581,2,126,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (571,-2147483293,2,116,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (572,-2147483292,2,117,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (573,-2147483291,2,110,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (574,-2147483290,2,67,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (575,-2147483289,2,70,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (576,-2147483288,2,73,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (577,-2147483287,2,78,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (578,-2147483286,2,79,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (579,-2147483285,2,82,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (580,-2147483284,2,94,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (581,-2147483283,2,84,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (582,-2147483580,2,146,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (583,-2147483579,2,149,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (584,-2147483578,2,152,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (585,-2147483252,2,186,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (586,-2147483577,2,151,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (587,-2147483576,2,154,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (588,-2147483375,2,176,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (589,-2147483574,2,193,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (590,-2147483613,2,478,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (591,-2147483374,2,515,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (592,-2147483373,2,569,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (593,-2147483372,2,501,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (594,-2147483371,2,505,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (595,-2147483370,2,509,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (596,-2147483368,2,529,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (597,-2147483367,2,554,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (598,-2147483282,2,66,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (599,-2147483281,2,72,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (600,-2147483280,2,75,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (601,-2147483279,2,89,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (602,-2147483278,2,90,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (603,-2147483625,2,42,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (604,-2147483277,2,87,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (605,-2147483276,2,92,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (606,-2147483275,2,106,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (607,-2147483274,2,107,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (608,-2147483273,2,104,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (609,-2147483272,2,113,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (610,-2147483361,2,558,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (611,-2147483353,2,527,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (612,-2147483313,2,550,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (613,-2147483248,2,184,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (614,-2147483311,2,524,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (615,-2147483310,2,565,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (616,-2147483571,2,157,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (617,-2147483610,2,191,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (618,-2147483609,2,483,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (619,-2147483607,2,493,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (620,-2147483570,2,158,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (621,-2147483535,2,197,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (622,-2147483534,2,198,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (623,-2147483533,2,203,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (624,-2147483532,2,204,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (625,-2147483531,2,207,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (626,-2147483530,2,173,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (627,-2147483529,2,172,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (628,-2147483528,2,180,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (629,-2147483527,2,179,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (630,-2147483526,2,200,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (631,-2147483569,2,121,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (632,-2147483568,2,122,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (633,-2147483567,2,130,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (634,-2147483604,2,487,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (635,-2147483603,2,488,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (636,-2147483602,2,491,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (637,-2147483601,2,494,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (638,-2147483600,2,498,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (639,-2147483566,2,161,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (640,-2147483565,2,472,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (641,-2147483564,2,473,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (642,-2147483563,2,470,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (643,-2147483562,2,213,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (644,-2147483246,2,216,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (645,-2147483245,2,219,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (646,-2147483244,2,218,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (647,-2147483243,2,208,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (648,-2147483599,2,573,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (649,-2147483598,2,576,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (650,-2147483597,2,577,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (651,-2147483596,2,580,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (652,-2147483525,2,438,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (653,-2147483524,2,439,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (654,-2147483523,2,288,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (655,-2147483522,2,285,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (656,-2147483521,2,290,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (657,-2147483520,2,419,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (658,-2147483519,2,422,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (659,-2147483518,2,423,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (660,-2147483517,2,426,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (661,-2147483516,2,427,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (662,-2147483515,2,430,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (663,-2147483514,2,388,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (664,-2147483513,2,391,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (665,-2147483512,2,394,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (666,-2147483511,2,399,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (667,-2147483510,2,431,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (668,-2147483509,2,393,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (669,-2147483508,2,396,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (670,-2147483507,2,453,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (671,-2147483506,2,433,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (672,-2147483505,2,436,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (673,-2147483504,2,360,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (674,-2147483503,2,363,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (675,-2147483502,2,364,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (676,-2147483501,2,405,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (677,-2147483500,2,410,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (678,-2147483499,2,415,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (679,-2147483497,2,407,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (680,-2147483496,2,412,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (681,-2147483495,2,401,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (682,-2147483494,2,402,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (683,-2147483493,2,409,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (684,-2147483492,2,450,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (685,-2147483491,2,371,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (686,-2147483490,2,374,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (687,-2147483489,2,387,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (688,-2147483488,2,378,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (689,-2147483487,2,383,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (690,-2147483486,2,372,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (691,-2147483485,2,385,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (692,-2147483484,2,376,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (693,-2147483483,2,381,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (694,-2147483482,2,417,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (695,-2147483481,2,449,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (696,-2147483480,2,278,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (697,-2147483479,2,281,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (698,-2147483478,2,282,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (699,-2147483477,2,266,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (700,-2147483476,2,267,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (701,-2147483474,2,273,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (702,-2147483473,2,274,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (703,-2147483472,2,277,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (704,-2147483471,2,314,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (705,-2147483470,2,317,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (706,-2147483469,2,312,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (707,-2147483468,2,298,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (708,-2147483467,2,299,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (709,-2147483466,2,302,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (710,-2147483465,2,366,1664.5000,'20170620 11:30:48',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (711,-2147483464,2,296,434.7400,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (712,-2147483463,2,305,501.6200,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (713,-2147483461,2,309,468.1800,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (714,-2147483460,2,338,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (715,-2147483459,2,341,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (716,-2147483458,2,342,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (717,-2147483457,2,345,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (718,-2147483456,2,346,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (719,-2147483455,2,349,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (720,-2147483453,2,337,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (721,-2147483451,2,321,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (722,-2147483450,2,355,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (723,-2147483449,2,358,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (724,-2147483448,2,327,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (725,-2147483447,2,324,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (726,-2147483446,2,325,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (727,-2147483445,2,354,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (728,-2147483444,2,351,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (729,-2147483443,2,260,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (730,-2147483442,2,261,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (731,-2147483441,2,264,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (732,-2147483440,2,329,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (733,-2147483439,2,369,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (734,-2147483438,2,269,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (735,-2147483437,2,311,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (736,-2147483435,2,447,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (737,-2147483295,2,236,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (738,-2147483427,2,445,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (739,-2147483624,2,47,0.0000,'20170620 11:30:48',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (740,-2147483623,2,52,0.0000,'20170620 11:30:48',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (741,-2147483622,2,46,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (742,-2147483621,2,50,0.0000,'20170620 11:30:48',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (743,-2147483591,2,480,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (744,-2147483266,2,97,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (745,-2147483265,2,99,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (746,-2147483425,2,457,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (747,-2147483419,2,304,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (748,-2147483226,2,2,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (749,-2147483225,2,465,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (750,-2147483224,2,15,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (751,-2147483223,2,11,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (752,-2147483242,2,18,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (753,-2147483241,2,19,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (754,-2147483240,2,22,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (755,-2147483418,2,332,0.0000,'20170620 11:30:48.213',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (756,-2147483588,2,163,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (757,-2147483587,2,170,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (758,-2147483586,2,165,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (759,-2147483585,2,168,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (760,-2147483617,2,241,924.1100,'20170620 11:31:28',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (761,-2147483616,2,210,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (762,-2147483255,2,238,0.0000,'20170620 11:31:28',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (763,-2147483254,2,240,0.0000,'20170620 11:31:28',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (764,-2147483253,2,142,0.0000,'20170620 11:31:28',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (765,-2147483643,2,28,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (766,-2147483642,2,27,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (767,-2147483641,2,26,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (768,-2147483640,2,25,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (769,-2147483639,2,30,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (770,-2147483638,2,29,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (771,-2147483637,2,23,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (772,-2147483636,2,24,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (773,-2147483584,2,194,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (774,-2147483583,2,128,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (775,-2147483582,2,124,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (776,-2147483581,2,125,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (777,-2147483293,2,115,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (778,-2147483292,2,118,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (779,-2147483291,2,109,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (780,-2147483290,2,68,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (781,-2147483289,2,69,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (782,-2147483288,2,74,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (783,-2147483287,2,77,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (784,-2147483286,2,80,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (785,-2147483285,2,81,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (786,-2147483284,2,95,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (787,-2147483283,2,83,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (788,-2147483580,2,147,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (789,-2147483579,2,148,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (790,-2147483578,2,153,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (791,-2147483545,2,212,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (792,-2147483544,2,211,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (793,-2147483543,2,221,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (794,-2147483648,2,132,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (795,-2147483252,2,185,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (796,-2147483577,2,150,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (797,-2147483576,2,155,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (798,-2147483575,2,160,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (799,-2147483375,2,175,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (800,-2147483251,2,141,1160.7100,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (801,-2147483574,2,192,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (802,-2147483542,2,223,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (803,-2147483541,2,224,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (804,-2147483250,2,237,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (805,-2147483249,2,239,0.0000,'20170620 11:31:28',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (806,-2147483615,2,242,985.5000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (807,-2147483614,2,187,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (808,-2147483613,2,477,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (809,-2147483374,2,516,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (810,-2147483373,2,568,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (811,-2147483372,2,502,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (812,-2147483371,2,504,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (813,-2147483370,2,510,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (814,-2147483369,2,512,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (815,-2147483368,2,528,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (816,-2147483367,2,555,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (817,-2147483573,2,145,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (818,-2147483540,2,222,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (819,-2147483282,2,65,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (820,-2147483281,2,71,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (821,-2147483280,2,76,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (822,-2147483279,2,88,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (823,-2147483278,2,91,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (824,-2147483635,2,34,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (825,-2147483634,2,33,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (826,-2147483633,2,37,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (827,-2147483632,2,35,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (828,-2147483631,2,36,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (829,-2147483630,2,32,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (830,-2147483629,2,31,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (831,-2147483628,2,40,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (832,-2147483627,2,39,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (833,-2147483626,2,38,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (834,-2147483625,2,41,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (835,-2147483277,2,86,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (836,-2147483276,2,93,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (837,-2147483275,2,105,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (838,-2147483274,2,108,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (839,-2147483273,2,103,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (840,-2147483272,2,114,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (841,-2147483271,2,112,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (842,-2147483364,2,499,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (843,-2147483363,2,500,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (844,-2147483362,2,508,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (845,-2147483361,2,557,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (846,-2147483360,2,556,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (847,-2147483359,2,570,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (848,-2147483358,2,513,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (849,-2147483357,2,517,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (850,-2147483356,2,518,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (851,-2147483355,2,514,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (852,-2147483353,2,526,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (853,-2147483352,2,567,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (854,-2147483351,2,503,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (855,-2147483350,2,535,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (856,-2147483349,2,536,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (857,-2147483348,2,537,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (858,-2147483347,2,538,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (859,-2147483346,2,539,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (860,-2147483345,2,532,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (861,-2147483344,2,533,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (862,-2147483343,2,534,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (863,-2147483342,2,530,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (864,-2147483341,2,531,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (865,-2147483340,2,521,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (866,-2147483339,2,522,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (867,-2147483338,2,525,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (868,-2147483337,2,541,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (869,-2147483336,2,540,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (870,-2147483335,2,511,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (871,-2147483334,2,545,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (872,-2147483333,2,546,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (873,-2147483332,2,544,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (874,-2147483331,2,542,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (875,-2147483330,2,543,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (876,-2147483329,2,551,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (877,-2147483328,2,552,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (878,-2147483327,2,561,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (879,-2147483326,2,519,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (880,-2147483325,2,562,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (881,-2147483324,2,506,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (882,-2147483323,2,553,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (883,-2147483322,2,563,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (884,-2147483321,2,507,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (885,-2147483320,2,564,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (886,-2147483319,2,520,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (887,-2147483318,2,571,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (888,-2147483317,2,572,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (889,-2147483316,2,560,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (890,-2147483315,2,559,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (891,-2147483314,2,548,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (892,-2147483313,2,549,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (893,-2147483312,2,547,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (894,-2147483248,2,183,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (895,-2147483247,2,182,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (896,-2147483311,2,523,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (897,-2147483310,2,566,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (898,-2147483647,2,133,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (899,-2147483571,2,156,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (900,-2147483612,2,188,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (901,-2147483611,2,189,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (902,-2147483610,2,190,0.0000,'20170620 11:31:28',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (903,-2147483609,2,484,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (904,-2147483608,2,485,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (905,-2147483607,2,492,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (906,-2147483570,2,159,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (907,-2147483606,2,243,0.0000,'20170620 11:31:28',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (908,-2147483535,2,196,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (909,-2147483534,2,199,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (910,-2147483533,2,202,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (911,-2147483532,2,205,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (912,-2147483531,2,206,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (913,-2147483530,2,174,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (914,-2147483529,2,171,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (915,-2147483528,2,181,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (916,-2147483527,2,178,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (917,-2147483526,2,201,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (918,-2147483569,2,120,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (919,-2147483568,2,123,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (920,-2147483567,2,129,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (921,-2147483644,2,131,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (922,-2147483605,2,482,0.0000,'20170620 11:31:28',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (923,-2147483604,2,486,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (924,-2147483603,2,489,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (925,-2147483602,2,490,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (926,-2147483601,2,495,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (927,-2147483600,2,497,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (928,-2147483566,2,162,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (929,-2147483565,2,471,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (930,-2147483564,2,474,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (931,-2147483563,2,469,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (932,-2147483562,2,214,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (933,-2147483246,2,215,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (934,-2147483245,2,220,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (935,-2147483244,2,217,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (936,-2147483243,2,209,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (937,-2147483561,2,250,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (938,-2147483560,2,248,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (939,-2147483559,2,247,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (940,-2147483558,2,249,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (941,-2147483557,2,232,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (942,-2147483556,2,233,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (943,-2147483555,2,234,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (944,-2147483554,2,144,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (945,-2147483553,2,251,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (946,-2147483552,2,253,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (947,-2147483551,2,254,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (948,-2147483550,2,255,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (949,-2147483549,2,257,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (950,-2147483548,2,258,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (951,-2147483201,2,139,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (952,-2147483547,2,140,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (953,-2147483198,2,246,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (954,-2147483546,2,252,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (955,-2147483200,2,143,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (956,-2147483199,2,245,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (957,-2147483599,2,574,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (958,-2147483598,2,575,0.0000,'20170620 11:31:28',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (959,-2147483597,2,578,0.0000,'20170620 11:31:28',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (960,-2147483596,2,579,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (961,-2147483525,2,437,504.0800,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (962,-2147483524,2,440,542.8600,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (963,-2147483523,2,287,693.8800,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (964,-2147483522,2,286,775.5100,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (965,-2147483521,2,289,918.3700,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (966,-2147483520,2,420,840.1400,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (967,-2147483519,2,421,904.7600,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (968,-2147483518,2,424,952.3800,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (969,-2147483517,2,425,952.3800,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (970,-2147483516,2,428,952.3800,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (971,-2147483515,2,429,807.8200,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (972,-2147483514,2,389,937.0700,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (973,-2147483513,2,390,986.3900,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (974,-2147483512,2,395,986.3900,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (975,-2147483511,2,398,986.3900,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (976,-2147483510,2,432,986.3900,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (977,-2147483509,2,392,1479.5900,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (978,-2147483508,2,397,1479.5900,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (979,-2147483507,2,452,1479.5900,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (980,-2147483506,2,434,1479.5900,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (981,-2147483505,2,435,775.5100,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (982,-2147483504,2,361,877.5500,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (983,-2147483503,2,362,1040.8200,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (984,-2147483502,2,365,1122.4500,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (985,-2147483501,2,404,848.9800,'20170630',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (986,-2147483500,2,411,938.7800,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (987,-2147483499,2,414,1020.4100,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (988,-2147483498,2,416,1115.6500,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (989,-2147483497,2,406,867.3500,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (990,-2147483496,2,413,938.7800,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (991,-2147483495,2,400,1043.5400,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (992,-2147483494,2,403,1088.4400,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (993,-2147483493,2,408,704.0800,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (994,-2147483492,2,451,782.3100,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (995,-2147483491,2,370,1836.7300,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (996,-2147483490,2,375,1836.7300,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (997,-2147483489,2,386,1836.7300,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (998,-2147483488,2,379,1836.7300,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (999,-2147483487,2,382,1632.6500,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1000,-2147483486,2,373,1530.6100,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1001,-2147483485,2,384,1530.6100,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1002,-2147483484,2,377,1530.6100,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1003,-2147483483,2,380,1530.6100,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1004,-2147483482,2,418,979.5900,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1005,-2147483481,2,448,3265.3100,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1006,-2147483480,2,279,1684.6500,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1007,-2147483479,2,280,1642.1400,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1008,-2147483478,2,283,1508.9300,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1009,-2147483477,2,265,1177.6000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1010,-2147483476,2,268,1155.1700,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1011,-2147483475,2,271,860.6300,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1012,-2147483474,2,272,845.0800,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1013,-2147483473,2,275,771.0200,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1014,-2147483472,2,276,657.1200,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1015,-2147483471,2,315,2050.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1016,-2147483470,2,316,2702.0600,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1017,-2147483469,2,313,1116.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1018,-2147483468,2,297,1286.7400,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1019,-2147483467,2,300,2298.6800,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1020,-2147483466,2,301,733.2000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1021,-2147483465,2,367,1664.5000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1022,-2147483464,2,295,1738.9600,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1023,-2147483463,2,306,2006.4900,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1024,-2147483462,2,307,2181.8200,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1025,-2147483461,2,308,1404.5500,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1026,-2147483460,2,339,1417.2000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1027,-2147483459,2,340,1264.3200,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1028,-2147483458,2,343,1682.8800,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1029,-2147483457,2,344,740.2600,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1030,-2147483456,2,347,2457.0500,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1031,-2147483455,2,348,1148.1600,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1032,-2147483214,2,458,3379.5900,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1033,-2147483453,2,336,1572.5800,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1034,-2147483452,2,319,900.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1035,-2147483451,2,320,1232.1400,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1036,-2147483450,2,356,1095.7500,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1037,-2147483449,2,357,1085.6300,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1038,-2147483448,2,328,804.3800,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1039,-2147483447,2,323,702.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1040,-2147483446,2,326,804.3800,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1041,-2147483445,2,353,534.9600,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1042,-2147483444,2,352,505.9200,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1043,-2147483443,2,259,661.8900,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1044,-2147483442,2,262,1664.7100,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1045,-2147483441,2,263,2083.5400,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1046,-2147483440,2,330,702.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1047,-2147483439,2,368,1598.6400,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1048,-2147483438,2,270,1062.5500,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1049,-2147483437,2,310,1818.7500,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1050,-2147483436,2,441,821.0900,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1051,-2147483270,2,119,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1052,-2147483595,2,475,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1053,-2147483594,2,496,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1054,-2147483298,2,177,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1055,-2147483435,2,446,1709.1800,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1056,-2147483539,2,227,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1057,-2147483538,2,226,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1058,-2147483537,2,228,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1059,-2147483536,2,225,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1060,-2147483295,2,235,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1061,-2147483434,2,442,1709.1800,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1062,-2147483433,2,359,555.2000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1063,-2147483269,2,98,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1064,-2147483268,2,101,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1065,-2147483267,2,102,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1066,-2147483432,2,291,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1067,-2147483431,2,292,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1068,-2147483430,2,294,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1069,-2147483429,2,318,866.4000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1070,-2147483428,2,454,1504.8700,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1071,-2147483427,2,444,1709.1800,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1072,-2147483593,2,476,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1073,-2147483592,2,481,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1074,-2147483624,2,48,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1075,-2147483623,2,51,0.0000,'20170620 11:31:28',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1076,-2147483622,2,45,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1077,-2147483621,2,49,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1078,-2147483426,2,443,1709.1800,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1079,-2147483591,2,479,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1080,-2147483266,2,96,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1081,-2147483265,2,100,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1082,-2147483264,2,85,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1083,-2147483263,2,111,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1084,-2147483425,2,456,2591.0200,'20170623',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1085,-2147483424,2,350,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1086,-2147483423,2,455,1404.5500,'20170620 11:31:28',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1087,-2147483422,2,293,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1088,-2147483620,2,60,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1089,-2147483619,2,61,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1090,-2147483262,2,64,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1091,-2147483421,2,322,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1092,-2147483420,2,331,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1093,-2147483419,2,303,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1094,-2147483236,2,8,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1095,-2147483235,2,5,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1096,-2147483234,2,7,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1097,-2147483233,2,6,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1098,-2147483232,2,4,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1099,-2147483231,2,3,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1100,-2147483230,2,9,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1101,-2147483229,2,468,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1102,-2147483228,2,467,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1103,-2147483227,2,10,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1104,-2147483226,2,1,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1105,-2147483225,2,466,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1106,-2147483224,2,14,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1107,-2147483223,2,12,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1108,-2147483222,2,13,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1109,-2147483221,2,16,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1110,-2147483239,2,229,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1111,-2147483238,2,231,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1112,-2147483237,2,230,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1113,-2147483242,2,17,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1114,-2147483241,2,20,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1115,-2147483240,2,21,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1116,-2147483589,2,244,0.0000,'20170620 11:31:28',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1117,-2147483213,2,53,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1118,-2147483418,2,333,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1119,-2147483197,2,256,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1120,-2147483207,2,55,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1121,-2147483206,2,56,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1122,-2147483209,2,57,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1123,-2147483208,2,58,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1124,-2147483205,2,59,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1125,-2147483210,2,54,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1126,-2147483212,2,44,0.0000,'20170620 11:31:28.120',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1127,-2147483640,1,588,81.7000,'20170622',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1128,-2147483641,1,589,243.7500,'20170622',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1129,-2147483642,1,590,54.4600,'20170622',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1130,-2147483639,1,592,125.0000,'20170622',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1131,-2147483627,1,593,93.7500,'20170622',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1132,-2147483212,1,594,195.0900,'20170622',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1133,-2147483644,1,596,32.9000,'20170622',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1134,-2147483648,1,595,82.3700,'20170622',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1135,-2147483647,1,597,55.3100,'20170622',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1136,-2147483614,1,598,49.2400,'20170622',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1137,-2147483637,1,600,58.0400,'20170622',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1138,-2147483636,1,601,125.0000,'20170622',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1139,-2147483629,1,602,93.7500,'20170622',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1140,-2147483634,1,603,139.6900,'20170622',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1141,-2147483632,1,604,87.1900,'20170622',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1142,-2147483631,1,605,87.1900,'20170629',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1143,-2147483638,1,606,65.1800,'20170622',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1144,-2147483540,1,583,66.9600,'20170623',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1145,-2147483539,1,607,78.5700,'20170623',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1146,-2147483545,1,584,172.3200,'20170623',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1147,-2147483541,1,585,191.9600,'20170623',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1148,-2147483620,1,608,78.5700,'20170623',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1149,-2147483619,1,609,78.5700,'20170623',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1150,-2147483536,1,610,87.5000,'20170623',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1151,-2147483239,1,611,133.0400,'20170623',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1152,-2147483238,1,612,266.9600,'20170623',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1153,-2147483630,1,614,84.3800,'20170623',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1154,-2147483612,1,615,26.3400,'20170623',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1155,-2147483611,1,616,27.2300,'20170623',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1156,-2147483542,1,582,78.5700,'20170623',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1157,-2147483605,1,617,936.0200,'20170623',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1158,-2147483237,1,613,115.1800,'20170623',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1159,-2147483207,1,618,115.1800,'20170623',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1160,-2147483206,1,619,115.1800,'20170623',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1161,-2147483209,1,620,115.1800,'20170623',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1162,-2147483208,1,621,115.1800,'20170623',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1163,-2147483205,1,622,115.1800,'20170623',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1164,-2147483626,1,623,70.3100,'20170623',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1165,-2147483543,1,581,76.7900,'20170623',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1166,-2147483538,1,586,129.4600,'20170624',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1167,-2147483537,1,624,87.5000,'20170624',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1168,-2147483213,1,625,166.8800,'20170627',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1169,-2147483635,1,626,130.3100,'20170627',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1170,-2147483261,1,462,814.2800,'20170629',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1171,-2147483260,1,459,814.2900,'20170629',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1172,-2147483259,1,464,814.2800,'20170629',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1173,-2147483258,1,461,814.2900,'20170629',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1174,-2147483257,1,463,814.2900,'20170629',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1175,-2147483256,1,460,814.2900,'20170629',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1176,-2147483196,1,630,814.2800,'20170706',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1177,-2147483196,2,630,0.0000,'20170706',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1178,-2147483195,1,631,814.2900,'20170706',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1179,-2147483194,1,634,814.2800,'20170706',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1180,-2147483193,1,636,814.2900,'20170706',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1181,-2147483192,1,638,814.2900,'20170706',1);
GO
INSERT INTO [BASE_ItemPrice] ([_ItemPIndex],[ProdIndex],[priceindex],[uomindex],[unitprice],[datestamp],[status]) VALUES (1182,-2147483191,1,640,814.2900,'20170706',1);
GO
SET IDENTITY_INSERT [BASE_ItemPrice] OFF
