CREATE LOGIN [UserName] WITH PASSWORD = 'Password';
GO

CREATE USER [UserName] FOR LOGIN [UserName];
GO

ALTER ROLE [db_datareader] ADD MEMBER [UserName];
GO

ALTER ROLE [db_datawriter] ADD MEMBER [UserName];
GO
