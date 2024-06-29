-- User Definition Functions (UDF) - 
-- Пользовательские функции

-- Пользовательские функции могут принимать параметры 
-- и могут возвращать скалярные значения или таблицы

-- Пользовательские функции имеют права доступа на SQL Server
-- но не могут делать DDL запросы, и не могут с помощью DML
-- запросов изменять таблицы

/*
CREATE FUNCTION func_name
(
param1 as data_type [= default_value],
...
paramN as data_type [= default_value],
)
RETURNS return_data_type
AS
BEGIN
	function_body
	RETURN value
END
*/

/*
DECLARE @variable_name
field1_name data_type specificators
...
fieldN_name data_type specificators

*/

-- scalar valued functions

--CREATE FUNCTION CountBooksForReturn
--(@stud_id AS int)
--RETURNS int
--AS
--BEGIN
--	DECLARE @books AS int = 0
--	SELECT @books = COUNT(*)
--	FROM S_Cards
--	WHERE S_Cards.Id_Student = @stud_id AND S_Cards.DateIn IS NULL

--	RETURN @books
--END


--SELECT dbo.CountBooksForReturn(1) AS ReturnBooksCount

-- table valued functions

--CREATE FUNCTION BookList()
--RETURNS table
--AS
--RETURN(
--SELECT B.[Name] AS [Book name], A.FirstName + N' ' + A.LastName AS [Author],
--		C.[Name] AS Category, T.[Name] AS Theme
--FROM Books AS B
--JOIN Categories AS C
--ON B.Id_Category = C.Id
--JOIN Themes AS T
--ON B.Id_Themes = T.Id
--JOIN Authors AS A
--ON B.Id_Author = A.Id
--)


--SELECT *
--FROM BookList()



CREATE FUNCTION Books_By_Autor()
RETURNS @BooksAuthors table (Author nvarchar(30), Books int)
AS
BEGIN
	DECLARE @temp_books table (Author nvarchar(30), Books int)

	INSERT @temp_books
	SELECT A.FirstName + N' ' + A.LastName, COUNT(SC.Id_Book)
	FROM Authors AS A
	JOIN Books AS B
	ON B.Id_Author = A.Id
	JOIN S_Cards AS SC
	ON SC.Id_Book = B.Id
	GROUP BY A.FirstName, A.LastName

	INSERT @temp_books
	SELECT A.FirstName + N' ' + A.LastName, COUNT(TC.Id_Book)
	FROM Authors AS A
	JOIN Books AS B
	ON B.Id_Author = A.Id
	JOIN T_Cards AS TC
	ON TC.Id_Book = B.Id
	GROUP BY A.FirstName, A.LastName

	DECLARE @temp_books2 AS table (Author nvarchar(30), Books int)
	INSERT @temp_books2
	SELECT T.Author, SUM(T.Books)
	FROM @temp_books AS T
	GROUP BY T.Author

	INSERT @BooksAuthors
	SELECT T.Author, T.Books
	FROM @temp_books2 AS T

	RETURN

END

SELECT *
FROM dbo.Books_By_Autor()
WHERE Books > 2

	