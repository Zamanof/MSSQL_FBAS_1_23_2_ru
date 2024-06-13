-- GROUP BY

--SELECT Category, SUM(Pages) AS SumPages
--FROM Books_En
--WHERE Category IS NOT NULL
--GROUP BY Category

--SELECT Category, Topic, SUM(Pages) AS SumPages
--FROM Books_En
--WHERE Category IS NOT NULL
--GROUP BY Category, Topic

-- Oshibka: v WHERE ispolzovat aggregate funksii nelzya
--SELECT Category, SUM(Pages) AS SumPages
--FROM Books_En
--WHERE Category IS NOT NULL AND SUM(Pages) != 0
--GROUP BY Category


-- HAVING - napisat oqranicheniya dlya qrupirovki dannix

--SELECT Category, SUM(Pages) AS SumPages
--FROM Books_En
--WHERE Category IS NOT NULL 
--GROUP BY Category
--HAVING SUM(Pages) != 0


--SELECT Publisher, SUM(Pages) AS SumPages
--FROM Books_En
--GROUP BY Publisher
--HAVING SUM(Pages) > 600


--SELECT Publisher, AVG(Price) AS AvgPrice
--FROM Books_En
--GROUP BY Publisher
--HAVING AVG(Price) > 50

-- HAVING-e nelyza ispolzovat te atributu kotoriye ne ukzani v GROUP BY
-- Error
--SELECT COUNT(*) AS BookCount, Topic
--FROM Books_En
--GROUP BY Topic
--HAVING COUNT(*) > 50 AND Price < 20

--SELECT COUNT(*) AS BookCount, Topic
--FROM Books_En
--WHERE Price < 20
--GROUP BY Topic
--HAVING COUNT(*) > 50

-- Dlya aqreqiruyushix funksiy kak parametr nelzya ispolzovat druquyu qreqiruyusuyu funksiyu

-- Error
SELECT Topic, MAX(COUNT(*))
FROM Books_En
GROUP BY Topic

SELECT TOP(1) Topic, COUNT(*) AS BooksCount
FROM Books_En
GROUP BY Topic
ORDER BY BooksCount DESC



