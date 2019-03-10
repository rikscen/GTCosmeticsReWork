use master 
GO
EXEC xp_instance_regwrite N'HKEY_LOCAL_MACHINE', N'Software\Microsoft\MSSQLServer\MSSQLServer', N'LoginMode', REG_DWORD, 2
GO
ALTER LOGIN [sa] WITH PASSWORD=N'tqbfjotld'
GO
IF NOT EXISTS 
    (SELECT name  
     FROM master.sys.server_principals
     WHERE name = 'vgl_data')
BEGIN
	DECLARE @SQLCommand nvarchar(40)
	CREATE LOGIN [vgl_data] WITH PASSWORD=N'tqbfjotld', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
	EXEC master..sp_addsrvrolemember @loginame = N'vgl_data', @rolename = N'sysadmin'
	SELECT @SQLCommand = 'ALTER LOGIN [' + SUSER_NAME() + '] DISABLE'
	EXEC sp_executesql @SQLCommand 
END
GO