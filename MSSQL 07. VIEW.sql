-- VIEW - �������������
/*
	����������� ���������� �������
	-	� �������������� ����� ������������ ������
		�������� �������
	-	�� ������������� ����� ������� �������
		� ������ SELECT

	-	������� ������������� �������������
		-	DML (INSERT, UPDATE, DELETE) ����������
			�� ���� ��� ������ ������������ �� ���� �������
		-	C������ ������������� ������ �������� �����������
			�������� ������ � �� ������ ���� ����������� ���������
		-	� �������� ������� � �������������� ����������� � ������� 
			UNION/UNION ALL, CROSS JOIN, EXCEPT ��� INTERSECT
			���������� ������ �����������
		-	� ��������� ������� ���������� � ������� ����������
			��������: DISTINCT, GROUP BY, HAVING ���� ���������� 
			������ �����������
 */
 /*
 CREATE VIEW view_name
 [WITH SCHEMABINDING]
 AS
 SELECT ...


 ALTER VIEW view_name
 AS
 SELECT ...

 
 DROP VIEW view_name
 */

 USE Library

--CREATE VIEW StudentInfo
--AS
--SELECT S.FirstName, S.LastName, G.[Name] AS GroupName
--FROM Students AS S
--JOIN Groups AS G
--ON S.Id_Group = G.Id


--SELECT *
--FROM StudentInfo
--WHERE GroupName = '18P2'

--ALTER VIEW StudentInfo
--AS
--SELECT S.Id, S.FirstName, S.LastName, 
--		G.[Name] AS GroupName, F.[Name] AS FacultyName
--FROM Students AS S
--JOIN Groups AS G
--ON S.Id_Group = G.Id
--JOIN Faculties AS F
--ON G.Id_Faculty = F.Id

--SELECT *
--FROM StudentInfo

--UPDATE StudentInfo
--SET FirstName = N'Nataliya'
--WHERE Id = 4

--SELECT *
--FROM StudentInfo

--SELECT *
--FROM Students

-- DML (INSERT, UPDATE, DELETE) ����������
-- �� ���� ��� ������ ������������ ������ �� ���� �������
-- Error: View or function 'StudentInfo' is not updatable because the modification affects multiple base tables.
--UPDATE StudentInfo
--SET FirstName = N'Natalya', GroupName = N'FBAS_1_23_2_ru'
--WHERE Id = 4

-- WITH SCHEMABINDING

--EXEC sp_rename 'dbo.Students.FirstName', 'Name', 'COLUMN'

SELECT *
FROM StudentInfo

--ALTER VIEW dbo.StudentInfo
--WITH SCHEMABINDING
--AS
--SELECT S.Id, S.FirstName, S.LastName, 
--		G.[Name] AS GroupName, F.[Name] AS FacultyName
--FROM dbo.Students AS S
--JOIN dbo.Groups AS G
--ON S.Id_Group = G.Id
--JOIN dbo.Faculties AS F
--ON G.Id_Faculty = F.Id

--ALTER TABLE Students
--DROP COLUMN FirstName

--DROP VIEW StudentInfo

-- ��������� �������������

-- ���������� ��� ��� ������� ��
--SELECT *
--FROM INFORMATION_SCHEMA.TABLES

--SELECT *
--FROM sys.tables

-- ���������� ��� ��� ���������������� �������������
--SELECT *
--FROM INFORMATION_SCHEMA.VIEWS

--SELECT *
--FROM sys.views


-- ���������� ��� �����������
--SELECT *
--FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS

--SELECT *
--FROM sys.key_constraints

--SELECT *
--FROM sys.foreign_keys

--SELECT *
--FROM sys.default_constraints

--SELECT *
--FROM sys.check_constraints

-- ���������� ��� �������
--SELECT *
--FROM INFORMATION_SCHEMA.COLUMNS
--WHERE TABLE_NAME = N'Books'


--SELECT *
--FROM sys.columns
--JOIN sys.tables
--ON sys.columns.object_id = sys.tables.object_id
--WHERE sys.tables.[name] = N'Books'
