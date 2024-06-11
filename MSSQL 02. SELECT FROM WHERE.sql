-- SELECT FROM WHERE

/*
SELECT [DISTINCT | ALL] {* | val1, val2, ..., valN}
FROM <table_name>
WHERE <search_condition>
ORDER BY <order_list> [ASC | DESC]
*/

USE Students

-- SELECT - ������� ������
-- FROM - �������� ������ (��� �������)

--SELECT * 
--FROM Students

--SELECT *
--FROM dbo.Students

--SELECT *
--FROM Students.dbo.Students

--SELECT FirstName, LastName, Age, [Group]
--FROM Students

-- Alias - ��������� - atribute AS alias
--SELECT FirstName + N' ' + LastName AS [Full Name], 
--			2024 - Age AS [Born Year], [Group]
--FROM Students

--SELECT [Group]
--FROM Students

-- DISTINCT - ������� ��������� (���������������) ������
--SELECT DISTINCT [Group]
--FROM Students


-- ORDER BY - �� ��������� ASC (�� �����������)

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
--WHERE FirstName = N'�����'

-- AND, OR, NOT

--SELECT FirstName, LastName, Age
--FROM Students
--WHERE FirstName = N'�����' AND Age > 70

--SELECT FirstName, LastName, Age
--FROM Students
--WHERE FirstName = N'�����' OR Age > 70

--SELECT FirstName, LastName, Age
--FROM Students
--WHERE NOT FirstName = N'�����' OR  Age > 70
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
--WHERE FirstName = N'����' OR FirstName = N'��������' OR FirstName = N'������'

--SELECT FirstName, LastName, Age
--FROM Students
--WHERE FirstName IN(N'����', N'��������', N'������')


-- LIKE - ��� ����� ���������� ��������� � �������
-- %		- ����� ���������� ��������
-- _		- ����� ���� ������
-- [abc]	- ����� ���� �� ���� ��������
-- [a-c]	- ����� ������� � ���� ���������
-- [^abc]	- ����� ������� ����� ����

--SELECT FirstName, LastName
--FROM Students
--WHERE FirstName = N'�����'

--SELECT FirstName, LastName
--FROM Students
--WHERE FirstName LIKE N'�����'

--SELECT FirstName, LastName
--FROM Students
--WHERE FirstName LIKE N'�%'

--SELECT FirstName, LastName
--FROM Students
--WHERE LastName LIKE N'%��%' AND LastName NOT LIKE N'%��'

--SELECT FirstName, LastName
--FROM Students
--WHERE LastName LIKE N'_�%'

--SELECT FirstName, LastName
--FROM Students
--WHERE FirstName LIKE N'[��]%'

--SELECT FirstName, LastName
--FROM Students
--WHERE FirstName LIKE N'[^���]%'

--SELECT FirstName, LastName
--FROM Students
--WHERE FirstName LIKE N'[�-�]%'

--SELECT FirstName, LastName
--FROM Students
--WHERE FirstName LIKE N'[^�-�]%'


-- IS NULL, IS NOT NULL - �������� �� NULL
--SELECT FirstName, LastName, [Group]
--FROM Students

--SELECT FirstName, LastName, [Group]
--FROM Students
--WHERE [Group] IS NOT NULL

--SELECT FirstName, LastName, [Group]
--FROM Students
--WHERE [Group] IS NULL

-- TOP (N) - ������� ������ N �����

SELECT TOP(5) FirstName, LastName, Age
FROM Students

SELECT TOP(5) FirstName, LastName, Age
FROM Students
ORDER BY FirstName DESC

-- OFFSET (N) ROWS - ���������� ������ N ������� (�������� ������ � ORDER BY ��� TOP)

SELECT FirstName, LastName, Age
FROM Students
ORDER BY FirstName ASC
OFFSET(6) ROWS


-- FETCH NEXT (N) ROWS ONLY - ������� ��������� N ������� ������ (�������� ������ � OFFSET)

SELECT FirstName, LastName, Age
FROM Students
ORDER BY FirstName ASC
OFFSET(6) ROWS
FETCH NEXT(3) ROWS ONLY