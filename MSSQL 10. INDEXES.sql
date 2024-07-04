-- Indexes

/*
CREATE [CLUSTERED | NONCLUSTERED] INDEX <index_name>
ON <table_name> or <view_name>
Field_name [ASC | DESC],
...

*/

--CREATE DATABASE Test

--GO

--USE [Test]

--GO

CREATE TABLE TableInHeap
(
 Id int NOT NULL,
 Field1 char(36) NOT NULL,
 Field2 char(216) NOT NULL
)

GO

--CREATE PROCEDURE ShowInfo_TableInHeap
--AS
--BEGIN
--	SELECT OBJECT_NAME(object_id) AS table_name,
--			[name] AS index_name, type_desc
--	FROM sys.indexes
--	WHERE object_id = OBJECT_ID(N'TableInHeap')

--	SELECT index_type_desc, page_count, record_count, avg_page_space_used_in_percent
--	FROM sys.dm_db_index_physical_stats(DB_ID(N'Test'),
--				OBJECT_ID(N'TableInHeap'), NULL, NULL, N'DETAILED')

--	EXEC dbo.sp_spaceused N'TableInHeap'
--END

GO

--EXEC ShowInfo_TableInHeap

--INSERT INTO TableInHeap (Id, Field1, Field2)
--VALUES (31, 'a', 'b')

--DECLARE @i int = 2

--WHILE @i < 31
--BEGIN
--	INSERT INTO TableInHeap (Id, Field1, Field2)
--	VALUES (@i, 'a', 'b')
--	SET @i+=1
--END

GO

--DECLARE @i int = 31

--WHILE @i <= 3000000
--BEGIN
--	INSERT INTO TableInHeap (Id, Field1, Field2)
--	VALUES (@i, 'a', 'b')
--	SET @i+=1
--END

--CREATE CLUSTERED INDEX Index1
--ON TableInHeap(Id)

--DECLARE @StartTime AS datetime = SYSDATETIME(), @EndTime datetime

--SELECT * 
--FROM TableInHeap
--WHERE Id = 3000001

--SET @EndTime = SYSDATETIME()

--SELECT DATEDIFF(NANOSECOND, @StartTime, @EndTime) AS [Duration in nanoseconds]

-- without indexes ~ 66666666 nanoseconds
-- with indexes ~ 3333334 nanoseconds