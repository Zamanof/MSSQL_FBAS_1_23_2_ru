-- EXISTS, ANY, SOME, ALL

--SELECT DISTINCT FirstName, LastName
--FROM Authors AS A
--JOIN Books AS B
--ON A.Id = B.Id_Author

--SELECT FirstName, LastName
--FROM Authors
--WHERE Id IN (SELECT Id_Author FROM Books)

--SELECT FirstName, LastName
--FROM Authors
--WHERE EXISTS(
--				SELECT Id_Author
--				FROM Books
--				WHERE Authors.Id = Books.Id_Author
--			)

-- ANY, SOME
--SELECT FirstName, LastName
--FROM Students
--WHERE Id = ANY(SELECT Id_Student FROM S_Cards)

--SELECT FirstName, LastName
--FROM Students
--WHERE Id = SOME(SELECT Id_Student FROM S_Cards)\

-- ALL
SELECT A.FirstName, A.LastName, B.[Name], B.Pages
FROM Authors AS A
JOIN Books AS B
ON A.Id = B.Id_Author
WHERE B.Pages > ALL(
					SELECT B.Pages
					FROM Books AS B
					JOIN Press AS P
					ON B.Id_Press = P.Id
					WHERE P.[Name] LIKE N'Piter'
)


SELECT A.FirstName, A.LastName, B.[Name], B.Pages
FROM Authors AS A
JOIN Books AS B
ON A.Id = B.Id_Author
WHERE B.Pages > (
					SELECT TOP (1) B.Pages
					FROM Books AS B
					JOIN Press AS P
					ON B.Id_Press = P.Id
					WHERE P.[Name] LIKE N'Piter'
					ORDER BY B.Pages DESC
)
