IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'ssbcloud\jbarberio')
CREATE LOGIN [ssbcloud\jbarberio] FROM WINDOWS
GO
CREATE USER [ssbcloud\jbarberio] FOR LOGIN [ssbcloud\jbarberio] WITH DEFAULT_SCHEMA=[ssbcloud\jbarberio]
GO
REVOKE CONNECT TO [ssbcloud\jbarberio]
