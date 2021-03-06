CREATE DATABASE PerformanceDB
GO

USE PerformanceDB
GO

CREATE TABLE Logs(
  Id int NOT NULL PRIMARY KEY IDENTITY,
  LogText nvarchar(50) NOT NULL,
  LogDate datetime,
)

USE [PerformanceDb]
GO
/****** Object:  StoredProcedure [dbo].[usp_FillLogs]    Script Date: 19.7.2013 г. 18:52:21 ******/
CREATE PROC [dbo].[usp_FillLogs]
@RecordsCount int
AS
DECLARE @RowCount int = @RecordsCount
WHILE @RowCount > 0
BEGIN
   DECLARE @Text nvarchar(100) = 
    'Text ' + CONVERT(nvarchar(100), @RowCount) + ': ' +
    CONVERT(nvarchar(100), newid())
  DECLARE @Date datetime = 
	DATEADD(month, CONVERT(varbinary, newid()) % (50 * 12), getdate())
  INSERT INTO Logs(LogText, LogDate) Values(@Text, @Date)
	SET @RowCount = @RowCount - 1
END

EXEC [dbo].[usp_FillLogs] 100

SELECT LogDate
FROM Logs
WHERE LogDate BETWEEN '1963-01-01' AND '2063-01-01'

CHECKPOINT; DBCC DROPCLEANBUFFERS; -- Empty the SQL Server cache

CREATE INDEX IDX_Logs_LogDate ON Logs(LogDate)

DROP INDEX IDX_Logs_LogDate ON Logs

--DROP FULLTEXT CATALOG MessagesFullTextCatalog
DROP FULLTEXT INDEX ON Logs

CREATE FULLTEXT CATALOG LogsFullTextCatalog
WITH ACCENT_SENSITIVITY = OFF

CREATE FULLTEXT INDEX ON Logs(LogText)
KEY INDEX PK_LogId
ON LogsFullTextCatalog
WITH CHANGE_TRACKING AUTO

SELECT * FROM Logs
WHERE LogText LIKE 'Text%'
