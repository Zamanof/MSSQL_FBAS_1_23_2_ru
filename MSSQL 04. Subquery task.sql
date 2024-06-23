-- 1. ќтобразить издательство, у которого 
-- наибольшее количество страниц (2 способа)

--SELECT TOP(1) SUM(Pages) AS PageSum, Publisher
--FROM Books_En
--GROUP BY Publisher
--ORDER BY PageSum DESC










--SELECT DISTINCT TOP(1) (SELECT SUM(Pages) AS PagesSum
--		FROM  Books_En AS SB
--		WHERE B.Publisher = SB.Publisher) AS PagesSum, Publisher
--FROM Books_En AS B
--ORDER BY PagesSum DESC










-- 2. ќтобразить издательство, у которого 
-- наибольшее количество книг по 
-- программированию (2 способа).--SELECT TOP(1) COUNT(*) AS BooksCount, Publisher--FROM Books_En--WHERE Topic = N'Programming'--GROUP BY Publisher--ORDER BY BooksCount DESC--SELECT TOP(1) (SELECT COUNT(*) AS BooksCount--				FROM Books_En AS SB--				WHERE B.Publisher = SB.Publisher AND Topic = N'Programming') AS BooksCount,--				Publisher--FROM Books_En AS B--ORDER BY BooksCount DESCSELECT Publisher, COUNT(*) AS CountBooksFROM Books_EnWHERE Topic = N'Programming'GROUP BY PublisherHAVING COUNT(*) = (SELECT MAX(CountBooks)					FROM (SELECT COUNT(*) AS CountBooks							FROM Books_En							WHERE Topic = N'Programming'							GROUP BY Publisher) AS CountBooks)-- 3.  ¬ывести книгу, выпущенную наибольшим тиражом (2 способа).SELECT TOP(1) [Name], PressrunFROM Books_EnORDER BY Pressrun DESCSELECT [Name], PressrunFROM Books_EnWHERE Pressrun = (SELECT MAX(Pressrun) FROM Books_En)