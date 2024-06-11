-- SELECT FROM WHERE

/*
SELECT [DISTINCT | ALL] {* | val1, val2, ..., valN}
FROM <table_name>
WHERE <search_condition>
ORDER BY <order_list> [ASC | DESC]
*/

USE Students

-- SELECT - Выборка данных
-- FROM - источник данных (имя таблицы)

--SELECT * 
--FROM Students

--SELECT *
--FROM dbo.Students

--SELECT *
--FROM Students.dbo.Students

--SELECT FirstName, LastName, Age, [Group]
--FROM Students

-- Alias - псевдоним - atribute AS alias
--SELECT FirstName + N' ' + LastName AS [Full Name], 
--			2024 - Age AS [Born Year], [Group]
--FROM Students

--SELECT [Group]
--FROM Students

-- DISTINCT - выборка уникалных (неповторяющихся) данных
--SELECT DISTINCT [Group]
--FROM Students


-- ORDER BY - по умолчанию ASC (По возрастанию)

--SELECT FirstName, LastName, Age
--FROM Students
--ORDER BY Age ASC

--SELECT FirstName, LastName, Age
--FROM Students
--ORDER BY Age DESC

--SELECT FirstName, LastName, Age
--FROM Students
--ORDER BY FirstName ASC, Age DESC


-- WHERE
-- comparison operators (>, <, >=, <=, =, != (<>))

--SELECT FirstName, LastName, Age
--FROM Students
--WHERE Age > 50

--SELECT FirstName, LastName, Age
--FROM Students
--WHERE FirstName = N'Ольга'

-- AND, OR, NOT

--SELECT FirstName, LastName, Age
--FROM Students
--WHERE FirstName = N'Ольга' AND Age > 70

--SELECT FirstName, LastName, Age
--FROM Students
--WHERE FirstName = N'Ольга' OR Age > 70

--SELECT FirstName, LastName, Age
--FROM Students
--WHERE NOT FirstName = N'Ольга' OR  Age > 70
--ORDER BY FirstName

-- IN, BETWEEN

-- BETWEEN example
--SELECT FirstName, LastName, Age
--FROM Students
--WHERE Age >= 70 AND Age <= 84


--SELECT FirstName, LastName, Age
--FROM Students
--WHERE Age BETWEEN 70 AND 84

-- IN example
--SELECT FirstName, LastName, Age
--FROM Students
--WHERE FirstName = N'Юрий' OR FirstName = N'Вячеслав' OR FirstName = N'Руслан'

--SELECT FirstName, LastName, Age
--FROM Students
--WHERE FirstName IN(N'Юрий', N'Вячеслав', N'Руслан')


-- LIKE - для более подробного сравнения в строках
-- %		- любое количество символов
-- _		- любой один символ
-- [abc]	- любой один из этих символов
-- [a-c]	- любые символы в этом диапазоне
-- [^abc]	- любые символы кроме этих

--SELECT FirstName, LastName
--FROM Students
--WHERE FirstName = N'Ольга'

--SELECT FirstName, LastName
--FROM Students
--WHERE FirstName LIKE N'Ольга'

--SELECT FirstName, LastName
--FROM Students
--WHERE FirstName LIKE N'О%'

--SELECT FirstName, LastName
--FROM Students
--WHERE LastName LIKE N'%ов%' AND LastName NOT LIKE N'%ич'

--SELECT FirstName, LastName
--FROM Students
--WHERE LastName LIKE N'_о%'

--SELECT FirstName, LastName
--FROM Students
--WHERE FirstName LIKE N'[АЮ]%'

--SELECT FirstName, LastName
--FROM Students
--WHERE FirstName LIKE N'[^АЮО]%'

--SELECT FirstName, LastName
--FROM Students
--WHERE FirstName LIKE N'[Д-С]%'

--SELECT FirstName, LastName
--FROM Students
--WHERE FirstName LIKE N'[^Д-С]%'


-- IS NULL, IS NOT NULL - проверка на NULL
--SELECT FirstName, LastName, [Group]
--FROM Students

--SELECT FirstName, LastName, [Group]
--FROM Students
--WHERE [Group] IS NOT NULL

--SELECT FirstName, LastName, [Group]
--FROM Students
--WHERE [Group] IS NULL

-- TOP (N) - Выборка первых N строк

SELECT TOP(5) FirstName, LastName, Age
FROM Students

SELECT TOP(5) FirstName, LastName, Age
FROM Students
ORDER BY FirstName DESC

-- OFFSET (N) ROWS - Пропустить первые N записей (работает только с ORDER BY без TOP)

SELECT FirstName, LastName, Age
FROM Students
ORDER BY FirstName ASC
OFFSET(6) ROWS


-- FETCH NEXT (N) ROWS ONLY - Выборка следующих N записей подряд (работает только с OFFSET)

SELECT FirstName, LastName, Age
FROM Students
ORDER BY FirstName ASC
OFFSET(6) ROWS
FETCH NEXT(3) ROWS ONLY