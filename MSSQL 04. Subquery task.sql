-- 1. ���������� ������������, � �������� 
-- ���������� ���������� ������� (2 �������)

--SELECT TOP(1) SUM(Pages) AS PageSum, Publisher
--FROM Books_En
--GROUP BY Publisher
--ORDER BY PageSum DESC










--SELECT DISTINCT TOP(1) (SELECT SUM(Pages) AS PagesSum
--		FROM  Books_En AS SB
--		WHERE B.Publisher = SB.Publisher) AS PagesSum, Publisher
--FROM Books_En AS B
--ORDER BY PagesSum DESC










-- 2. ���������� ������������, � �������� 
-- ���������� ���������� ���� �� 
-- ���������������� (2 �������).