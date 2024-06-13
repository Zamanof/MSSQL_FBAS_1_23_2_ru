-- Aggregate functions
-- https://learn.microsoft.com/en-us/sql/t-sql/functions/aggregate-functions-transact-sql?view=sql-server-ver16

SELECT *
FROM Books_En

-- SUM(column_name) - возвращает сумму указанного столбца

SELECT SUM(Pages) AS AllPageSum
FROM Books_En

SELECT SUM(Pages) AS TutorialsPageSum
FROM Books_En
WHERE Category LIKE N'Tutorials'