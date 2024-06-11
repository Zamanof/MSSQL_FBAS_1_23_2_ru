/*
���� ������ � ��� ����� ������, ������� ������ ������� � ���������������.

������� ���������� ������ ������ - ���� (Database management system - DBMS) 
 ����������� �����������, �������� ������ � ���������� �������.

�������� ������� ����:
+ ���������� ������� �� ������� ������ (������);
+ ���������� �������, ������������ � ����������� ������, � ������� ��������� ����;
+ ����������� ���������, ��������� ����������� � �������������� ���� ����� �����������;
+ ��������� ������ �� (���� ����������� ������, ���� ��������������� �������).

������ ����������� ���� ������� �� ��������� �����������:
+ ����, ���������� �� ���������� � ���������������� ������ �� ������� � ����������� ������,
+ ��������� ���� ������, ������� ������������ ������� ��� ���������� 
	� ��������� ������ � ���������� ���������� ���, ������� ������ �� ������� �� ������.
+ ���������� ��������� ������� ����������, ������� �������������� 
	��������� ��������������� �������, ��������� ���������������� ��������� � ����
+ ����� ��������� ��������� (������� �������), 
	��������������� ��� �������������� ������������ �������������� ������� �� �������� �����.

-------------------------------------------------- --- ---------------------------------- ------ ------------------------------


������������� ����
https://ru.wikipedia.org/wiki/management_system_with_database

�������� ������ ������:
+ �������������
+ ����
+ ����������� (SQL)
+ �� ����������� (NOSQL)
+ ��������-���������������

�� ������������:
+ ��������� ���� (��������� ��) � ��� ����� ��������� ���� ��������� �� ����� ����������
+ Distributed �� (�������������� ��) � ����� MB ����� ������������� �� ���� 
	� ����� �����������

� ������� ����� ��:
+ ����-������ (File-server) � ����� ������ ����������� ��������������� 
	�� ����-�������, ���� ��������� �� ������ ���������� ����������
+ ������-������ (������-������) � ���� ����������� �� ������� ������ � �� 
	� ������������ ������ � �� �������� � ����������� ������
+ ���������� (Embedded) � ����, ������� ����� ���������� ��� ����� ��������, 
	�� ������ ��������� ��������� ���������

-------------------------------------------------- --- ---------------------------------- ------ ------------------------------

12 ������ ����� � ��� 13 ������, ������� ������ ��������� 
������ ������� ���������� ������������ ������ ������.
https://ru.wikipedia.org/wiki/Code_12_rule

-------------------------------------------------- --- ---------------------------------- ------ ------------------------------

����������� ��

����������� ������ ������������ �������� ������ � ������, 
������� ����� ���� ������� ���� � ������.

����� ������������ ����� ����� �������� � �����.
������� ��������� �������������� ������, ������� ��������� � �����.
������ ��������� ������������� ����� ������� (�. �. ��������� ������).

��������� ���� � ��� ���������� ������������� ������ � �����. 
��������� ���� ����� ���������������� � ����� ��� ����������� ���������� (���������).
��������� ���� ������ ���� ����������.

-------------------------------------------------- --- ---------------------------------- ------ ------------------------------

MS SQL Server � ��� ����� ��� �������, ���������, ���������� � ����������������� 
���� ����������� SQL Server.

�������:
���� ������ � ��� ��� ���� ������ �������� �������.
master � ��������������� ���������� � �������������, ����������, �������
������ � �������������� ������ ��� ���� ��, ��������� �� ������� �������.
msdb � �������� �� ������� ������ sql-�������, ��������, �������������, 
	�������������� ������� � �. �. 
tempdb � ��������� ���������� ������ ��� ������ ���������, ��������� ��������������� �����
Secuirity  � ������� ������������
Server Objects � ����������� ���������� � ������� ������������� ��������: 
	��� ����������� �������� ���� � �����.
Replication � ��������� ���������� (������)
Managment - ����������� ����������������� ������� sql


-----------------------------------------------------------------------------------------------
SQL � ������������� ���� ��������. �� ������������ ��� ��������, 
��������� � ���������� �������, �������������� � ��������������� ��, 
��� �������� � ��������� ����������� ��, � ����� ��� ����������� ���������� ���.

������ (Query) � ��� �������, ���������� �� ����� SQL.

T-SQL � ��� ������� ����� ����������������� ��������, ������������� � MS SQL Server ����.

� ����������� �� ��������, ������� ��������� ������� T-SQL, 
��� ����� ���� ������ �� ��������� �����:
+ DDL (Data Definition Language). ���� ��� �������� � ���� ��������� �������, 
	������� ��������� ����� ������, �������, ���������, ��������� ����������� � �. �. 
	������ ������, ���������� ������. (CREATE, ALTER, DROP, TRUNCATE)
+ DML (Data Manipulation Language). ����� ������, �� ����������, 
	����������, �������� � ������, ��� �� �������,� ������� ������� �� ����� 
	��������� �������, ��������� � ����� ����. (SELECT, UPDATE, INSERT, DELETE)
+ DCL (Data Control Language). � ����� ���� ��������� �������, 
����������� ������� ������� � ������. (GRANT, REVOKE)

-------------------------------------------------- --- ---------------------------------- ------ ------------------------------

���� ������
https://msdn.microsoft.com/ru-ru/library/ms187752(v=sql.120).aspx
https://metanit.com/sql/sqlserver/3.3.php

*/