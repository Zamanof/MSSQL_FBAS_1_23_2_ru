-- Subquery (Podzoprosi)

-- Podzapros vipolnyayet komandu SELECT i Zaklyuchayetsya v skobki

-- Podzaprosi bivayut korreliruyushiye i nekorreliruyushiye

-- Korreliruyishiye podzaprosi (primer 3) - 
-- qde rezultat podzaprosa zavisit ot strok
-- kotoriye vibirayutsya v osnovnom zaprose 

-- Nekorreliruyushiye podzaprosi (primeri 1, 2, 4)
-- Esli kommandi SELECT vipolnili fakticheski odin podzapros dlya
-- dlya vseqo zaprosa
-- To est qde rezultat podzaprosa ne zavisit ot strok
-- kotoriye vibirayutsya v osnovnom zaprose 


-- 1.
-- Bez subquery
--SELECT TOP(1) *
--FROM Students
--ORDER BY Age

-- Subquery
--SELECT *
--FROM Students
--WHERE Age = (SELECT MIN(Age) FROM Students)


-- 2.
--SELECT *
--FROM Students
--WHERE Age > (SELECT AVG(Age) FROM Students)
--ORDER BY Age

-- 3.
-- Bez Subquery
--SELECT [Group], AVG(Age)
--FROM Students
--GROUP BY [Group]

-- Subquery
--SELECT DISTINCT [Group],
--				(SELECT AVG(Age) 
--				FROM Students AS SubStud
--				WHERE SubStud.[Group] = Stud.[Group]) AS AvgAge
--FROM Students AS Stud





-- 4. 
--SELECT FirstName + N' ' + LastName AS FullName
--FROM 
--	(SELECT Id, FirstName, LastName 
--	FROM Students
--	WHERE Age > 50) AS Studs
