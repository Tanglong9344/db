GO 
IF EXISTS(Select 1 From Sysobjects Where Name='tableName') -- 表名：tableName
DROP table tableName
GO
