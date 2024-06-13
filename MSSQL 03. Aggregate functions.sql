-- Aggregate functions
-- https://learn.microsoft.com/en-us/sql/t-sql/functions/aggregate-functions-transact-sql?view=sql-server-ver16

SELECT *
FROM Books_En

-- SUM(column_name) - vozvrashyet summu dannix ukazannoqo stolbsa

--SELECT SUM(Pages) AS AllPageSum
--FROM Books_En

--SELECT SUM(Pages) AS TutorialsPageSum
--FROM Books_En
--WHERE Category LIKE N'Tutorials'

-- COUNT(* | column_name) - vozvrashayet kolichestvo strok

--SELECT COUNT(*) AS BookCounts
--FROM Books_En

--SELECT COUNT(Category) AS BookCounts
--FROM Books_En

--SELECT COUNT(DISTINCT Category) AS BookCounts
--FROM Books_En


--SELECT SUM(Price) / COUNT(Price) AS PriceAvg
--FROM Books_En

-- AVG(column_name) - vozvrashayet srednearifmeticheskuyu stolbsa
--SELECT AVG(Price) AS PriceAvg
--FROM Books_En

-- MIN(column_name), MAX(column_name)

--SELECT MIN(Price) AS PriceMinimum
--FROM Books_En

--SELECT MIN([Name]) AS NameMinimum
--FROM Books_En

--SELECT MAX(Price) AS PriceMaximum
--FROM Books_En

--SELECT MAX([Name]) AS NameMinimum
--FROM Books_En